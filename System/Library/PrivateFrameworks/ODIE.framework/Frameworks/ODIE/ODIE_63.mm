uint64_t minMaxBy(uint64_t a1, void (*a2)(unint64_t *__return_ptr, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = a4;
  v14 = *(a4 + 8);
  llvm::APInt::getAllOnes(v14, &v39);
  if (!a8)
  {
    v38 = v14;
    if (v14 > 0x40)
    {
      operator new[]();
    }

    v37 = 0;
    if (!a5)
    {
      goto LABEL_50;
    }

    goto LABEL_11;
  }

  if (v40 >= 0x41)
  {
    v15 = (v39 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v15 = &v39;
  }

  *v15 &= ~(1 << (v14 - 1));
  llvm::APInt::getSignedMinValue(v14, &v37);
  if (a5)
  {
LABEL_11:
    v29 = v10 + 16 * a5;
    while (!a7)
    {
LABEL_49:
      v10 += 16;
      if (v10 == v29)
      {
        goto LABEL_50;
      }
    }

    v16 = a6;
    while (1)
    {
      a2(&v34, a3, v10, v16);
      v17 = v36;
      if ((v36 & 1) == 0)
      {
        result = mlir::ConstantIntRanges::maxRange(v14, a1);
        goto LABEL_43;
      }

      v18 = v35;
      v33 = v35;
      v32 = v34;
      v35 = 0;
      if (a8)
      {
        v19 = &v32;
        if (llvm::APInt::compareSigned(&v32, &v39) >= 0)
        {
          v20 = &v39;
        }

        else
        {
          v20 = &v32;
        }

        llvm::APInt::operator=(&v39, v20);
        if (llvm::APInt::compareSigned(&v32, &v37) <= 0)
        {
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (v18 > 0x40)
      {
        v22 = ((v18 + 63) >> 3) & 0x3FFFFFF8;
        while (v22)
        {
          v23 = *(v34 - 8 + v22);
          v24 = *(v39 - 8 + v22);
          v22 -= 8;
          if (v23 != v24)
          {
            if (v23 <= v24)
            {
              goto LABEL_30;
            }

            break;
          }
        }
      }

      else if (v34 < v39)
      {
LABEL_30:
        v25 = &v32;
        goto LABEL_31;
      }

      v25 = &v39;
LABEL_31:
      llvm::APInt::operator=(&v39, v25);
      if (v33 > 0x40)
      {
        v26 = ((v33 + 63) >> 3) & 0x3FFFFFF8;
        while (v26)
        {
          v27 = *(v32 - 8 + v26);
          v28 = *(v37 - 8 + v26);
          v26 -= 8;
          if (v27 != v28)
          {
            if (v27 <= v28)
            {
              break;
            }

            goto LABEL_38;
          }
        }

LABEL_39:
        v19 = &v37;
        goto LABEL_40;
      }

      if (v32 <= v37)
      {
        goto LABEL_39;
      }

LABEL_38:
      v19 = &v32;
LABEL_40:
      result = llvm::APInt::operator=(&v37, v19);
      if (v33 >= 0x41)
      {
        result = v32;
        if (v32)
        {
          result = MEMORY[0x25F891010](v32, 0x1000C8000313F17);
        }
      }

LABEL_43:
      if (v36 == 1 && v35 >= 0x41)
      {
        result = v34;
        if (v34)
        {
          result = MEMORY[0x25F891010](v34, 0x1000C8000313F17);
        }
      }

      if ((v17 & 1) == 0)
      {
        goto LABEL_53;
      }

      v16 += 16;
      if (v16 == a6 + 16 * a7)
      {
        goto LABEL_49;
      }
    }
  }

LABEL_50:
  if (a8)
  {
    result = mlir::ConstantIntRanges::fromSigned(&v39, &v37, a1);
  }

  else
  {
    result = mlir::ConstantIntRanges::fromUnsigned(&v39, &v37, a1);
  }

LABEL_53:
  if (v38 >= 0x41)
  {
    result = v37;
    if (v37)
    {
      result = MEMORY[0x25F891010](v37, 0x1000C8000313F17);
    }
  }

  if (v40 >= 0x41)
  {
    result = v39;
    if (v39)
    {
      return MEMORY[0x25F891010](v39, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t inferDivURange(uint64_t a1, llvm::APInt *this, llvm::APInt *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v16[0] = a4;
  v16[1] = a5;
  v8 = *(a3 + 2);
  if (v8 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(a3) == v8)
    {
      v22 = v8;
      operator new[]();
    }
  }

  else if (!*a3)
  {
    v22 = *(a3 + 2);
    v21 = 0;
    v9 = llvm::APInt::compare(this, (a3 + 16));
    if (v9 < 0)
    {
      goto LABEL_34;
    }

    v10 = *(a3 + 6);
    if (v10 > 0x40)
    {
      if (llvm::APInt::countLeadingZerosSlowCase((a3 + 16)) == v10)
      {
LABEL_34:
        v18 = *(this + 6);
        if (v18 > 0x40)
        {
          operator new[]();
        }

        v17 = *(this + 2);
        result = mlir::ConstantIntRanges::fromUnsigned(&v21, &v17, a1);
        if (v18 >= 0x41)
        {
          result = v17;
          if (v17)
          {
            result = MEMORY[0x25F891010](v17, 0x1000C8000313F17);
          }
        }

        if (v22 >= 0x41)
        {
          result = v21;
          if (v21)
          {
            result = MEMORY[0x25F891010](v21, 0x1000C8000313F17);
          }
        }

        goto LABEL_43;
      }
    }

    else if (!*(a3 + 2))
    {
      goto LABEL_34;
    }

    llvm::APInt::udiv(this, a3 + 2, &v17);
    v21 = v17;
    v22 = v18;
    goto LABEL_34;
  }

  v15 = v16;
  v22 = *(this + 2);
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v21 = *this;
  v24[0] = *(this + 6);
  if (v24[0] > 0x40u)
  {
    operator new[]();
  }

  v23 = *(this + 2);
  v18 = *(a3 + 2);
  if (v18 > 0x40)
  {
    operator new[]();
  }

  v17 = *a3;
  v20[0] = *(a3 + 6);
  if (v20[0] > 0x40u)
  {
    operator new[]();
  }

  v19 = *(a3 + 2);
  result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v15, &v21, 2, &v17, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v20[i] >= 0x41u)
    {
      result = *&v20[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v24[j] >= 0x41u)
    {
      result = *&v24[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

LABEL_43:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t inferDivSRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  v19[0] = a4;
  v19[1] = a5;
  v8 = (a3 + 48);
  if (llvm::APInt::isStrictlyPositive((a3 + 32)) & 1) != 0 || ((v9 = *(a3 + 56), v10 = v9 - 1, v9 >= 0x41) ? (v11 = (*(a3 + 48) + 8 * ((v9 - 1) >> 6))) : (v11 = v8), ((*v11 >> v10)))
  {
    v18 = v19;
    v25 = *(a2 + 40);
    if (v25 > 0x40)
    {
      operator new[]();
    }

    v24 = *(a2 + 32);
    v27[0] = *(a2 + 56);
    if (v27[0] > 0x40u)
    {
      operator new[]();
    }

    v26 = *(a2 + 48);
    v21 = *(a3 + 40);
    if (v21 > 0x40)
    {
      operator new[]();
    }

    v20 = *(a3 + 32);
    v23[0] = *(a3 + 56);
    if (v23[0] > 0x40u)
    {
      operator new[]();
    }

    v22 = *v8;
    result = minMaxBy(a1, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>, &v18, &v24, 2, &v20, 2, 1);
    for (i = 0; i != -8; i -= 4)
    {
      if (v23[i] >= 0x41u)
      {
        result = *&v23[i - 2];
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    for (j = 0; j != -8; j -= 4)
    {
      if (v27[j] >= 0x41u)
      {
        result = *&v27[j - 2];
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }
    }

    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = *(a3 + 40);
    v17 = *MEMORY[0x277D85DE8];

    return mlir::ConstantIntRanges::maxRange(v16, a1);
  }

  return result;
}

uint64_t mlir::intrange::inferCeilDivS@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  inferDivSRange(a2, a1, (a1 + 16), llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v32);
  result = llvm::APInt::isMinSignedValue((a1 + 8));
  if (result)
  {
    result = llvm::APInt::compareSigned((a1 + 12), (a1 + 8));
    if (result >= 1)
    {
      v23 = a1[10];
      if (v23 > 0x40)
      {
        operator new[]();
      }

      v22 = *(a1 + 4);
      llvm::APInt::operator+=(&v22, 1uLL);
      v15 = v23;
      v14 = v22;
      v23 = 0;
      mlir::ConstantIntRanges::fromSigned(&v14, (a1 + 12), &v24);
      if (v15 >= 0x41 && v14)
      {
        MEMORY[0x25F891010](v14, 0x1000C8000313F17);
      }

      if (v23 >= 0x41 && v22)
      {
        MEMORY[0x25F891010](v22, 0x1000C8000313F17);
      }

      inferDivSRange(&v6, &v24, (a1 + 16), llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v32);
      result = mlir::ConstantIntRanges::rangeUnion(a2, &v6, &v14);
      if (*(a2 + 8) >= 0x41u)
      {
        result = *a2;
        if (*a2)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *a2 = v14;
      *(a2 + 8) = v15;
      v15 = 0;
      if (*(a2 + 24) >= 0x41u)
      {
        result = *(a2 + 16);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *(a2 + 16) = v16;
      *(a2 + 24) = v17;
      v17 = 0;
      if (*(a2 + 40) >= 0x41u)
      {
        result = *(a2 + 32);
        if (result)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      *(a2 + 32) = v18;
      *(a2 + 40) = v19;
      v19 = 0;
      if (*(a2 + 56) >= 0x41u && (result = *(a2 + 48)) != 0)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        v5 = v19;
        *(a2 + 48) = v20;
        *(a2 + 56) = v21;
        v21 = 0;
        if (v5 >= 0x41)
        {
          result = v18;
          if (v18)
          {
            result = MEMORY[0x25F891010](v18, 0x1000C8000313F17);
          }
        }
      }

      else
      {
        *(a2 + 48) = v20;
        *(a2 + 56) = v21;
        v21 = 0;
      }

      if (v17 >= 0x41)
      {
        result = v16;
        if (v16)
        {
          result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
        }
      }

      if (v15 >= 0x41)
      {
        result = v14;
        if (v14)
        {
          result = MEMORY[0x25F891010](v14, 0x1000C8000313F17);
        }
      }

      if (v13 >= 0x41)
      {
        result = v12;
        if (v12)
        {
          result = MEMORY[0x25F891010](v12, 0x1000C8000313F17);
        }
      }

      if (v11 >= 0x41)
      {
        result = v10;
        if (v10)
        {
          result = MEMORY[0x25F891010](v10, 0x1000C8000313F17);
        }
      }

      if (v9 >= 0x41)
      {
        result = v8;
        if (v8)
        {
          result = MEMORY[0x25F891010](v8, 0x1000C8000313F17);
        }
      }

      if (v7 >= 0x41)
      {
        result = v6;
        if (v6)
        {
          result = MEMORY[0x25F891010](v6, 0x1000C8000313F17);
        }
      }

      if (v31 >= 0x41)
      {
        result = v30;
        if (v30)
        {
          result = MEMORY[0x25F891010](v30, 0x1000C8000313F17);
        }
      }

      if (v29 >= 0x41)
      {
        result = v28;
        if (v28)
        {
          result = MEMORY[0x25F891010](v28, 0x1000C8000313F17);
        }
      }

      if (v27 >= 0x41)
      {
        result = v26;
        if (v26)
        {
          result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
        }
      }

      if (v25 >= 0x41)
      {
        result = v24;
        if (v24)
        {
          return MEMORY[0x25F891010](v24, 0x1000C8000313F17);
        }
      }
    }
  }

  return result;
}

uint64_t mlir::intrange::inferRemS@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 112);
  v5 = *(a1 + 120);
  llvm::APInt::getSignedMinValue(v5, &v45);
  llvm::APInt::getAllOnes(v5, &v43);
  if (v44 >= 0x41)
  {
    v6 = (v43 + 8 * ((v5 - 1) >> 6));
  }

  else
  {
    v6 = &v43;
  }

  *v6 &= ~(1 << (v5 - 1));
  if ((llvm::APInt::isStrictlyPositive((a1 + 96)) & 1) == 0)
  {
    v7 = *(a1 + 120);
    v8 = v7 - 1;
    v9 = v7 >= 0x41 ? (*(a1 + 112) + 8 * ((v7 - 1) >> 6)) : v4;
    if (((*v9 >> v8) & 1) == 0)
    {
      goto LABEL_70;
    }
  }

  if (llvm::APInt::isStrictlyPositive((a1 + 96)))
  {
    v42 = *(a1 + 120);
    if (v42 > 0x40)
    {
      operator new[]();
    }

    __src = *v4;
  }

  else
  {
    llvm::APInt::abs((a1 + 96), &__src);
  }

  v10 = *(a1 + 40);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*(a1 + 32) + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = (a1 + 32);
  }

  v13 = 1 << v11;
  v14 = *v12;
  isStrictlyPositive = llvm::APInt::isStrictlyPositive((a1 + 48));
  v40 = v42;
  if (v42 > 0x40)
  {
    operator new[]();
  }

  v39 = 0;
  v36 = v42;
  v35 = __src;
  llvm::APInt::operator-=(&v35, 1uLL);
  v38 = v36;
  v37 = v35;
  v36 = 0;
  v32 = v38;
  if (v38 > 0x40)
  {
    operator new[]();
  }

  v31 = v35;
  llvm::APInt::flipAllBits(&v31);
  llvm::APInt::operator++(&v31);
  v34 = v32;
  v33 = v31;
  v32 = 0;
  if ((v13 & v14) != 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = &v39;
  }

  llvm::APInt::operator=(&v45, v16);
  if (isStrictlyPositive)
  {
    v17 = &v37;
  }

  else
  {
    v17 = &v39;
  }

  llvm::APInt::operator=(&v43, v17);
  v18 = *(a1 + 104);
  if (v18 > 0x40)
  {
    if (memcmp(*(a1 + 96), *v4, ((v18 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_58;
    }
  }

  else if (*(a1 + 96) != *v4)
  {
    goto LABEL_58;
  }

  v30 = *(a1 + 56);
  if (v30 > 0x40)
  {
    operator new[]();
  }

  v29 = *(a1 + 48);
  llvm::APInt::operator-=(&v29, (a1 + 32));
  v19 = v30;
  v30 = 0;
  if (v19 > 0x40)
  {
    v20 = ((v19 + 63) >> 3) & 0x3FFFFFF8;
    while (v20)
    {
      v21 = *(v29 + v20 - 8);
      v22 = *(__src + v20 - 8);
      v20 -= 8;
      if (v21 != v22)
      {
        v23 = v21 <= v22;
        if (!v29)
        {
          goto LABEL_49;
        }

        goto LABEL_45;
      }
    }

    v23 = 0;
    if (!v29)
    {
      goto LABEL_49;
    }

LABEL_45:
    MEMORY[0x25F891010](v29, 0x1000C8000313F17);
    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x25F891010](v29, 0x1000C8000313F17);
      if (v23)
      {
        goto LABEL_50;
      }

      goto LABEL_58;
    }

LABEL_49:
    if (!v23)
    {
      goto LABEL_58;
    }

    goto LABEL_50;
  }

  if (v29 < __src)
  {
LABEL_50:
    llvm::APInt::srem((a1 + 32), &__src, &v27);
    llvm::APInt::srem((a1 + 48), &__src, &v25);
    if (llvm::APInt::compareSigned(&v27, &v25) <= 0)
    {
      llvm::APInt::operator=(&v45, &v27);
      llvm::APInt::operator=(&v43, &v25);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }

    if (v28 >= 0x41 && v27)
    {
      MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

LABEL_58:
  if (v34 >= 0x41 && v33)
  {
    MEMORY[0x25F891010](v33, 0x1000C8000313F17);
  }

  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x25F891010](v37, 0x1000C8000313F17);
  }

  if (v40 >= 0x41 && v39)
  {
    MEMORY[0x25F891010](v39, 0x1000C8000313F17);
  }

  if (v42 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

LABEL_70:
  result = mlir::ConstantIntRanges::fromSigned(&v45, &v43, a2);
  if (v44 >= 0x41)
  {
    result = v43;
    if (v43)
    {
      result = MEMORY[0x25F891010](v43, 0x1000C8000313F17);
    }
  }

  if (v46 >= 0x41)
  {
    result = v45;
    if (v45)
    {
      return MEMORY[0x25F891010](v45, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferRemU@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 72);
  if (v30 >= 0x41)
  {
    operator new[]();
  }

  v29 = 0;
  v24 = *(a1 + 88);
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v23 = *(a1 + 80);
  llvm::APInt::operator-=(&v23, 1uLL);
  v4 = v24;
  v26 = v24;
  v5 = v23;
  v25 = v23;
  v24 = 0;
  v6 = &v25;
  v7 = llvm::APInt::compare(&v25, (a1 + 16));
  if (v7 >= 0)
  {
    v6 = (a1 + 16);
  }

  v8 = *(a1 + 24);
  if (v7 < 0)
  {
    v8 = v4;
  }

  v28 = v8;
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v27 = *v6;
  if (v4 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x25F891010](v23, 0x1000C8000313F17);
  }

  v9 = *(a1 + 72);
  if (v9 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase((a1 + 64)) == v9 || memcmp(*(a1 + 64), *(a1 + 80), ((v9 + 63) >> 3) & 0x3FFFFFF8))
    {
      goto LABEL_47;
    }
  }

  else
  {
    v10 = *(a1 + 64);
    if (!v10 || v10 != *(a1 + 80))
    {
      goto LABEL_47;
    }
  }

  v22 = *(a1 + 24);
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v21 = *(a1 + 16);
  llvm::APInt::operator-=(&v21, a1);
  v11 = v22;
  v26 = v22;
  v12 = v21;
  v25 = v21;
  v22 = 0;
  v13 = llvm::APInt::compare(&v25, (a1 + 80));
  if (v11 >= 0x41)
  {
    if (v12)
    {
      MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      if (v22 >= 0x41)
      {
        if (v21)
        {
          MEMORY[0x25F891010](v21, 0x1000C8000313F17);
        }
      }
    }
  }

  if (v13 < 0)
  {
    llvm::APInt::urem(a1, (a1 + 80), &v25);
    llvm::APInt::urem((a1 + 16), (a1 + 80), &v19);
    if (v26 > 0x40)
    {
      v15 = ((v26 + 63) >> 3) & 0x3FFFFFF8;
      while (v15)
      {
        v16 = *(v25 - 8 + v15);
        v17 = *(v19 - 8 + v15);
        v15 -= 8;
        v14 = v16 > v17;
        if (v16 != v17)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = v25 > v19;
LABEL_39:
      if (v14)
      {
        goto LABEL_41;
      }
    }

    llvm::APInt::operator=(&v29, &v25);
    llvm::APInt::operator=(&v27, &v19);
LABEL_41:
    if (v20 >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    if (v26 >= 0x41 && v25)
    {
      MEMORY[0x25F891010](v25, 0x1000C8000313F17);
    }
  }

LABEL_47:
  result = mlir::ConstantIntRanges::fromUnsigned(&v29, &v27, a2);
  if (v28 >= 0x41)
  {
    result = v27;
    if (v27)
    {
      result = MEMORY[0x25F891010](v27, 0x1000C8000313F17);
    }
  }

  if (v30 >= 0x41)
  {
    result = v29;
    if (v29)
    {
      return MEMORY[0x25F891010](v29, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t mlir::intrange::inferMaxS@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 64;
  if (llvm::APInt::compareSigned((a1 + 32), (a1 + 96)) <= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compareSigned((a1 + 48), (a1 + 112)) <= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromSigned((v5 + 32), (v6 + 48), a2);
}

uint64_t mlir::intrange::inferMaxU@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 64);
  if (llvm::APInt::compare(a1, (a1 + 64)) <= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compare((a1 + 16), (a1 + 80)) <= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromUnsigned(v5, (v6 + 16), a2);
}

uint64_t mlir::intrange::inferMinS@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 64;
  if (llvm::APInt::compareSigned((a1 + 32), (a1 + 96)) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compareSigned((a1 + 48), (a1 + 112)) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromSigned((v5 + 32), (v6 + 48), a2);
}

uint64_t mlir::intrange::inferMinU@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 64);
  if (llvm::APInt::compare(a1, (a1 + 64)) >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a1;
  }

  if (llvm::APInt::compare((a1 + 16), (a1 + 80)) >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  return mlir::ConstantIntRanges::fromUnsigned(v5, (v6 + 16), a2);
}

uint64_t mlir::intrange::inferAnd@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&__src, a1);
  widenBitwiseBounds(&v19, a1 + 8);
  v3 = v24;
  v32 = v24;
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v17 = __src;
  v31 = __src;
  v4 = v26;
  v34[0] = v26;
  if (v26 > 0x40)
  {
    operator new[]();
  }

  v5 = v25;
  v33 = v25;
  v6 = v20;
  v28 = v20;
  if (v20 > 0x40)
  {
    operator new[]();
  }

  v7 = v19;
  v27 = v19;
  v8 = v22;
  v30[0] = v22;
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v9 = v21;
  v29 = v21;
  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v18, &v31, 2, &v27, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v30[i] >= 0x41u)
    {
      v11 = *&v30[i - 2];
      if (v11)
      {
        MEMORY[0x25F891010](v11, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v34[j] >= 0x41u)
    {
      v13 = *&v34[j - 2];
      if (v13)
      {
        MEMORY[0x25F891010](v13, 0x1000C8000313F17);
      }
    }
  }

  if (v8 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  if (v6 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  if (v4 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  result = v17;
  if (v3 >= 0x41 && v17)
  {
    result = MEMORY[0x25F891010](v17, 0x1000C8000313F17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *widenBitwiseBounds(const mlir::ConstantIntRanges *a1, uint64_t *a2)
{
  v3 = *(a2 + 2);
  v10 = v3;
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a2;
  v9 = *a2;
  v8 = *(a2 + 6);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v7 = a2[2];
  v5 = v3 + __clz(v7 ^ v4) - 64;
  llvm::APInt::clearLowBits(&v9, v3 - v5);
  result = llvm::APInt::setBits(&v7, 0, v3 - v5);
  *(a1 + 2) = v10;
  *a1 = v9;
  *(a1 + 6) = v8;
  *(a1 + 2) = v7;
  return result;
}

uint64_t mlir::intrange::inferOr@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  widenBitwiseBounds(&__src, a1);
  widenBitwiseBounds(&v19, a1 + 8);
  v3 = v24;
  v32 = v24;
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v17 = __src;
  v31 = __src;
  v4 = v26;
  v34[0] = v26;
  if (v26 > 0x40)
  {
    operator new[]();
  }

  v5 = v25;
  v33 = v25;
  v6 = v20;
  v28 = v20;
  if (v20 > 0x40)
  {
    operator new[]();
  }

  v7 = v19;
  v27 = v19;
  v8 = v22;
  v30[0] = v22;
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v9 = v21;
  v29 = v21;
  minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v18, &v31, 2, &v27, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v30[i] >= 0x41u)
    {
      v11 = *&v30[i - 2];
      if (v11)
      {
        MEMORY[0x25F891010](v11, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v34[j] >= 0x41u)
    {
      v13 = *&v34[j - 2];
      if (v13)
      {
        MEMORY[0x25F891010](v13, 0x1000C8000313F17);
      }
    }
  }

  if (v8 >= 0x41 && v9)
  {
    MEMORY[0x25F891010](v9, 0x1000C8000313F17);
  }

  if (v6 >= 0x41 && v7)
  {
    MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  if (v4 >= 0x41 && v5)
  {
    MEMORY[0x25F891010](v5, 0x1000C8000313F17);
  }

  result = v17;
  if (v3 >= 0x41 && v17)
  {
    result = MEMORY[0x25F891010](v17, 0x1000C8000313F17);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::intrange::inferXor@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  v51 = v2;
  if (v2 > 0x40)
  {
    operator new[]();
  }

  v3 = *a1;
  v50 = *a1;
  v53 = *(a1 + 6);
  v35 = v53;
  if (v53 > 0x40)
  {
    operator new[]();
  }

  v4 = a1[2];
  v52 = a1[2];
  v55 = *(a1 + 10);
  v33 = v55;
  if (v55 > 0x40)
  {
    operator new[]();
  }

  v5 = a1[4];
  v54 = a1[4];
  v57 = *(a1 + 14);
  v31 = v57;
  if (v57 > 0x40)
  {
    operator new[]();
  }

  v6 = a1[6];
  v56 = a1[6];
  v43 = *(a1 + 18);
  v29 = v43;
  if (v43 > 0x40)
  {
    operator new[]();
  }

  v7 = a1[8];
  v42 = a1[8];
  v45 = *(a1 + 22);
  v34 = v4;
  v28 = v45;
  if (v45 > 0x40)
  {
    operator new[]();
  }

  v8 = a1[10];
  v44 = a1[10];
  v47 = *(a1 + 26);
  v27 = v47;
  if (v47 > 0x40)
  {
    operator new[]();
  }

  v9 = a1[12];
  v46 = a1[12];
  v49 = *(a1 + 30);
  v32 = v5;
  v25 = v49;
  v26 = v9;
  if (v49 > 0x40)
  {
    operator new[]();
  }

  v24 = a1[14];
  v48 = v24;
  getVaryingBitsMask(&v40, &v50);
  getVaryingBitsMask(&v38, &v42);
  v10 = v39;
  if (v39 > 0x40)
  {
    v12 = v38;
    v13 = v40;
    v14 = (v39 + 63) >> 6;
    do
    {
      v15 = *v13++;
      *v12++ |= v15;
      --v14;
    }

    while (v14);
    v11 = v38;
  }

  else
  {
    v11 = v38 | v40;
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  v16 = v7 ^ v3;
  v37 = v10;
  if (v10 > 0x40)
  {
    operator new[]();
  }

  v36 = v11;
  llvm::APInt::flipAllBits(&v36);
  v17 = v37;
  v18 = v36;
  v37 = 0;
  if (v17 > 0x40)
  {
    v19 = (v17 + 63) >> 6;
    v20 = (v7 ^ v3);
    v21 = v36;
    do
    {
      v22 = *v20++;
      *v21++ &= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v18 = (v36 & v16);
  }

  v41 = v17;
  v40 = v18;
  v39 = v2;
  v38 = v16 | v11;
  mlir::ConstantIntRanges::fromUnsigned(&v40, &v38, a2);
  if (v39 >= 0x41 && v38)
  {
    MEMORY[0x25F891010](v38, 0x1000C8000313F17);
  }

  if (v41 >= 0x41 && v40)
  {
    MEMORY[0x25F891010](v40, 0x1000C8000313F17);
  }

  result = v24;
  if (v25 >= 0x41 && v24)
  {
    result = MEMORY[0x25F891010](v24, 0x1000C8000313F17);
  }

  if (v27 >= 0x41 && v26)
  {
    result = MEMORY[0x25F891010](v26, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v8)
  {
    result = MEMORY[0x25F891010](v8, 0x1000C8000313F17);
  }

  if (v29 >= 0x41 && v7)
  {
    result = MEMORY[0x25F891010](v7, 0x1000C8000313F17);
  }

  if (v31 >= 0x41 && v6)
  {
    result = MEMORY[0x25F891010](v6, 0x1000C8000313F17);
  }

  if (v33 >= 0x41 && v32)
  {
    result = MEMORY[0x25F891010](v32, 0x1000C8000313F17);
  }

  if (v35 >= 0x41)
  {
    if (v34)
    {
      return MEMORY[0x25F891010](v34, 0x1000C8000313F17);
    }
  }

  return result;
}

void *getVaryingBitsMask(const mlir::ConstantIntRanges *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 > 0x40)
  {
    operator new[]();
  }

  if (*(a2 + 24) > 0x40u)
  {
    operator new[]();
  }

  return llvm::APInt::getLowBitsSet(v2, 64 - __clz(*(a2 + 16) ^ *a2), a1);
}

uint64_t mlir::intrange::inferShl@<X0>(uint64_t *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = &unk_286E8B158;
  v43 = a2;
  v44 = &v42;
  v39 = &unk_286E8B1A0;
  v40 = a2;
  v41 = &v39;
  v28 = *(a1 + 2);
  if (v28 > 0x40)
  {
    operator new[]();
  }

  v27 = *a1;
  v30[0] = *(a1 + 6);
  if (v30[0] > 0x40u)
  {
    operator new[]();
  }

  v29 = a1[2];
  v36 = *(a1 + 18);
  if (v36 > 0x40)
  {
    operator new[]();
  }

  v35 = a1[8];
  v38[0] = *(a1 + 22);
  if (v38[0] > 0x40u)
  {
    operator new[]();
  }

  v37 = a1[10];
  minMaxBy(&v15, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v42, &v27, 2, &v35, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v38[i] >= 0x41u)
    {
      v6 = *&v38[i - 2];
      if (v6)
      {
        MEMORY[0x25F891010](v6, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v30[j] >= 0x41u)
    {
      v8 = *&v30[j - 2];
      if (v8)
      {
        MEMORY[0x25F891010](v8, 0x1000C8000313F17);
      }
    }
  }

  v36 = *(a1 + 10);
  if (v36 > 0x40)
  {
    operator new[]();
  }

  v35 = a1[4];
  v38[0] = *(a1 + 14);
  if (v38[0] > 0x40u)
  {
    operator new[]();
  }

  v37 = a1[6];
  v24 = *(a1 + 18);
  if (v24 > 0x40)
  {
    operator new[]();
  }

  v23 = a1[8];
  v26[0] = *(a1 + 22);
  if (v26[0] > 0x40u)
  {
    operator new[]();
  }

  v25 = a1[10];
  minMaxBy(&v27, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>, &v39, &v35, 2, &v23, 2, 1);
  for (k = 0; k != -8; k -= 4)
  {
    if (v26[k] >= 0x41u)
    {
      v10 = *&v26[k - 2];
      if (v10)
      {
        MEMORY[0x25F891010](v10, 0x1000C8000313F17);
      }
    }
  }

  for (m = 0; m != -8; m -= 4)
  {
    if (v38[m] >= 0x41u)
    {
      v12 = *&v38[m - 2];
      if (v12)
      {
        MEMORY[0x25F891010](v12, 0x1000C8000313F17);
      }
    }
  }

  mlir::ConstantIntRanges::intersection(&v15, &v27, a3);
  if (v34 >= 0x41 && v33)
  {
    MEMORY[0x25F891010](v33, 0x1000C8000313F17);
  }

  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x25F891010](v31, 0x1000C8000313F17);
  }

  if (v30[0] >= 0x41u && v29)
  {
    MEMORY[0x25F891010](v29, 0x1000C8000313F17);
  }

  if (v28 >= 0x41 && v27)
  {
    MEMORY[0x25F891010](v27, 0x1000C8000313F17);
  }

  if (v22 >= 0x41 && v21)
  {
    MEMORY[0x25F891010](v21, 0x1000C8000313F17);
  }

  if (v20 >= 0x41 && v19)
  {
    MEMORY[0x25F891010](v19, 0x1000C8000313F17);
  }

  if (v18 >= 0x41 && v17)
  {
    MEMORY[0x25F891010](v17, 0x1000C8000313F17);
  }

  if (v16 >= 0x41 && v15)
  {
    MEMORY[0x25F891010](v15, 0x1000C8000313F17);
  }

  std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v39);
  result = std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](&v42);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::intrange::inferShrS@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 40);
  if (v12 > 0x40)
  {
    operator new[]();
  }

  v11 = *(a1 + 32);
  v14[0] = *(a1 + 56);
  if (v14[0] > 0x40u)
  {
    operator new[]();
  }

  v13 = *(a1 + 48);
  v8 = *(a1 + 72);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v7 = *(a1 + 64);
  v10[0] = *(a1 + 88);
  if (v10[0] > 0x40u)
  {
    operator new[]();
  }

  v9 = *(a1 + 80);
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v6, &v11, 2, &v7, 2, 1);
  for (i = 0; i != -8; i -= 4)
  {
    if (v10[i] >= 0x41u)
    {
      result = *&v10[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v14[j] >= 0x41u)
    {
      result = *&v14[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::intrange::inferShrU@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 2);
  if (v12 > 0x40)
  {
    operator new[]();
  }

  v11 = *a1;
  v14[0] = *(a1 + 6);
  if (v14[0] > 0x40u)
  {
    operator new[]();
  }

  v13 = a1[2];
  v8 = *(a1 + 18);
  if (v8 > 0x40)
  {
    operator new[]();
  }

  v7 = a1[8];
  v10[0] = *(a1 + 22);
  if (v10[0] > 0x40u)
  {
    operator new[]();
  }

  v9 = a1[10];
  result = minMaxBy(a2, llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>, &v6, &v11, 2, &v7, 2, 0);
  for (i = 0; i != -8; i -= 4)
  {
    if (v10[i] >= 0x41u)
    {
      result = *&v10[i - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  for (j = 0; j != -8; j -= 4)
  {
    if (v14[j] >= 0x41u)
    {
      result = *&v14[j - 2];
      if (result)
      {
        result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::intrange::evaluatePred(uint64_t a1, mlir::ConstantIntRanges *a2, llvm::APInt *a3)
{
  if (isStaticallyTrue(a1, a2, a3))
  {
    v6 = 1;
    v7 = 1;
  }

  else
  {
    v7 = isStaticallyTrue(qword_25D09FB68[a1], a2, a3);
    v6 = 0;
  }

  return v6 | (v7 << 8);
}

BOOL isStaticallyTrue(uint64_t a1, mlir::ConstantIntRanges *this, llvm::APInt *a3)
{
  v5 = 0;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v9 = llvm::APInt::compare((this + 16), a3);
        return v9 >> 31;
      }

      v7 = llvm::APInt::compareSigned((this + 32), (a3 + 48));
    }

    else
    {
      if (a1 == 7)
      {
        v13 = llvm::APInt::compare((this + 16), a3);
        return v13 < 1;
      }

      if (a1 == 8)
      {
        v6 = llvm::APInt::compare(this, (a3 + 16));
        return v6 > 0;
      }

      if (a1 != 9)
      {
        return v5;
      }

      v7 = llvm::APInt::compare(this, (a3 + 16));
    }

    return v7 >= 0;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        v6 = llvm::APInt::compareSigned((this + 32), (a3 + 48));
        return v6 > 0;
      }

      v13 = llvm::APInt::compareSigned((this + 48), (a3 + 32));
      return v13 < 1;
    }

    v9 = llvm::APInt::compareSigned((this + 48), (a3 + 32));
    return v9 >> 31;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v8 = (llvm::APInt::compareSigned((this + 48), (a3 + 32)) & 0x80000000) != 0 || llvm::APInt::compareSigned((this + 32), (a3 + 48)) > 0;
      v14 = (llvm::APInt::compare((this + 16), a3) & 0x80000000) != 0 || llvm::APInt::compare(this, (a3 + 16)) > 0;
      return v8 & v14;
    }
  }

  else
  {
    mlir::ConstantIntRanges::getConstantValue(this, &__s1);
    mlir::ConstantIntRanges::getConstantValue(a3, &__s2);
    v5 = 0;
    v10 = v21;
    v11 = v18;
    if (v21 == 1 && v18 == 1)
    {
      if (v20 > 0x40)
      {
        v12 = memcmp(__s1, __s2, ((v20 + 63) >> 3) & 0x3FFFFFF8) == 0;
      }

      else
      {
        v12 = __s1 == __s2;
      }

      v5 = v12;
      v11 = 1;
    }

    if ((v11 & 1) != 0 && v17 >= 0x41 && __s2)
    {
      MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
      v10 = v21;
    }

    if ((v10 & 1) != 0 && v20 >= 0x41 && __s1)
    {
      MEMORY[0x25F891010](__s1, 0x1000C8000313F17);
    }
  }

  return v5;
}

uint64_t mlir::intrange::inferShapedDimOpInterface@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(void, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  StorageBitwidth = mlir::ConstantIntRanges::getStorageBitwidth((*(a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v51 = StorageBitwidth;
  if (StorageBitwidth >= 0x41)
  {
    operator new[]();
  }

  v50 = 0;
  llvm::APInt::getAllOnes(StorageBitwidth, &v48);
  if (v49 >= 0x41)
  {
    v9 = (v48 + 8 * ((StorageBitwidth - 1) >> 6));
  }

  else
  {
    v9 = &v48;
  }

  *v9 &= ~(1 << (StorageBitwidth - 1));
  v10 = (*((*a2)(a2, a1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10)
  {
    v11 = *v10;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  }

  else
  {
    v13 = 0;
  }

  if ((*(v13 + 16))(v13, v10))
  {
    (*(v13 + 24))(v13, v10);
    v15 = v14 - 1;
    if (*(a3 + 64) == 1)
    {
      v16 = *(a3 + 40);
      if (v16 > 0x40)
      {
        v17 = **(a3 + 32);
      }

      else if (v16)
      {
        v17 = (*(a3 + 32) << -v16) >> -v16;
      }

      else
      {
        v17 = 0;
      }

      v19 = v17 & ~(v17 >> 63);
      v20 = *(a3 + 56);
      if (v20 > 0x40)
      {
        v21 = **(a3 + 48);
      }

      else if (v20)
      {
        v21 = (*(a3 + 48) << -v20) >> -v20;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v15)
      {
        v15 = v21;
      }
    }

    else
    {
      v19 = 0;
    }

    LOBYTE(__src) = 0;
    v47 = 0;
    if (v19 <= v15)
    {
      v22 = v15 + 1;
      do
      {
        v23 = *((*(v13 + 24))(v13, v10) + 8 * v19);
        if (v23 == 0x8000000000000000)
        {
          mlir::ConstantIntRanges::fromSigned(&v50, &v48, &v31);
          if (v47)
          {
            mlir::ConstantIntRanges::rangeUnion(&__src, &v31, &v52);
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(&__src, &v52);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x25F891010](v58, 0x1000C8000313F17);
            }

            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x25F891010](v56, 0x1000C8000313F17);
            }

            if (v55 >= 0x41 && v54)
            {
              MEMORY[0x25F891010](v54, 0x1000C8000313F17);
            }

            if (v53 >= 0x41 && v52)
            {
              MEMORY[0x25F891010](v52, 0x1000C8000313F17);
            }
          }

          else
          {
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(&__src, &v31);
          }

          if (v38 >= 0x41 && v37)
          {
            MEMORY[0x25F891010](v37, 0x1000C8000313F17);
          }

          if (v36 >= 0x41 && v35)
          {
            MEMORY[0x25F891010](v35, 0x1000C8000313F17);
          }

          if (v34 >= 0x41 && v33)
          {
            MEMORY[0x25F891010](v33, 0x1000C8000313F17);
          }

          if (v32 < 0x41)
          {
            goto LABEL_84;
          }

          v24 = v31;
          if (!v31)
          {
            goto LABEL_84;
          }
        }

        else
        {
          v30 = StorageBitwidth;
          v29 = v23;
          mlir::ConstantIntRanges::ConstantIntRanges(&v31, &v29, &v29, &v29, &v29);
          if (v47)
          {
            mlir::ConstantIntRanges::rangeUnion(&__src, &v31, &v52);
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges,void>(&__src, &v52);
            if (v59 >= 0x41 && v58)
            {
              MEMORY[0x25F891010](v58, 0x1000C8000313F17);
            }

            if (v57 >= 0x41 && v56)
            {
              MEMORY[0x25F891010](v56, 0x1000C8000313F17);
            }

            if (v55 >= 0x41 && v54)
            {
              MEMORY[0x25F891010](v54, 0x1000C8000313F17);
            }

            if (v53 >= 0x41 && v52)
            {
              MEMORY[0x25F891010](v52, 0x1000C8000313F17);
            }
          }

          else
          {
            std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(&__src, &v31);
          }

          if (v38 >= 0x41 && v37)
          {
            MEMORY[0x25F891010](v37, 0x1000C8000313F17);
          }

          if (v36 >= 0x41 && v35)
          {
            MEMORY[0x25F891010](v35, 0x1000C8000313F17);
          }

          if (v34 >= 0x41 && v33)
          {
            MEMORY[0x25F891010](v33, 0x1000C8000313F17);
          }

          if (v32 >= 0x41 && v31)
          {
            MEMORY[0x25F891010](v31, 0x1000C8000313F17);
          }

          if (v30 < 0x41)
          {
            goto LABEL_84;
          }

          v24 = v29;
          if (!v29)
          {
            goto LABEL_84;
          }
        }

        MEMORY[0x25F891010](v24, 0x1000C8000313F17);
LABEL_84:
        ++v19;
      }

      while (v22 != v19);
    }

    result = mlir::ConstantIntRanges::fromSigned(&v50, &v48, &v52);
    if (v47 == 1)
    {
      v25 = v40;
      *(a4 + 8) = v40;
      if (v25 > 0x40)
      {
        operator new[]();
      }

      *a4 = __src;
      v26 = v42;
      *(a4 + 24) = v42;
      if (v26 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 16) = v41;
      v27 = v44;
      *(a4 + 40) = v44;
      if (v27 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 32) = v43;
      v28 = v46;
      *(a4 + 56) = v46;
      if (v28 > 0x40)
      {
        operator new[]();
      }

      *(a4 + 48) = v45;
    }

    else
    {
      *(a4 + 8) = v53;
      *a4 = v52;
      *(a4 + 24) = v55;
      *(a4 + 16) = v54;
      v53 = 0;
      v55 = 0;
      *(a4 + 40) = v57;
      *(a4 + 32) = v56;
      *(a4 + 56) = v59;
      *(a4 + 48) = v58;
      v57 = 0;
      v59 = 0;
    }

    if (v59 >= 0x41)
    {
      result = v58;
      if (v58)
      {
        result = MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }
    }

    if (v57 >= 0x41)
    {
      result = v56;
      if (v56)
      {
        result = MEMORY[0x25F891010](v56, 0x1000C8000313F17);
      }
    }

    if (v55 >= 0x41)
    {
      result = v54;
      if (v54)
      {
        result = MEMORY[0x25F891010](v54, 0x1000C8000313F17);
      }
    }

    if (v53 >= 0x41)
    {
      result = v52;
      if (v52)
      {
        result = MEMORY[0x25F891010](v52, 0x1000C8000313F17);
      }
    }

    if (v47 == 1)
    {
      if (v46 >= 0x41)
      {
        result = v45;
        if (v45)
        {
          result = MEMORY[0x25F891010](v45, 0x1000C8000313F17);
        }
      }

      if (v44 >= 0x41)
      {
        result = v43;
        if (v43)
        {
          result = MEMORY[0x25F891010](v43, 0x1000C8000313F17);
        }
      }

      if (v42 >= 0x41)
      {
        result = v41;
        if (v41)
        {
          result = MEMORY[0x25F891010](v41, 0x1000C8000313F17);
        }
      }

      if (v40 >= 0x41)
      {
        result = __src;
        if (__src)
        {
          result = MEMORY[0x25F891010](__src, 0x1000C8000313F17);
        }
      }
    }
  }

  else
  {
    result = mlir::ConstantIntRanges::fromSigned(&v50, &v48, a4);
  }

  if (v49 >= 0x41)
  {
    result = v48;
    if (v48)
    {
      result = MEMORY[0x25F891010](v48, 0x1000C8000313F17);
    }
  }

  if (v51 >= 0x41)
  {
    result = v50;
    if (v50)
    {
      return MEMORY[0x25F891010](v50, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivURange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>(uint64_t *a1, llvm::APInt *this, uint64_t **a3)
{
  v5 = *a1;
  llvm::APInt::udiv(this, a3, &v7);
  result = (*v5)(*(v5 + 8), this, a3, &v7);
  if (v8 >= 0x41)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x25F891010](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

llvm::APInt *llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<inferDivSRange(mlir::ConstantIntRanges const&,mlir::ConstantIntRanges const&,llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>)::$_0>@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, _BYTE *a4@<X8>)
{
  v11 = 0;
  result = llvm::APInt::sdiv_ov(this, a2, &v11, &v9);
  if (v11)
  {
    *a4 = 0;
    a4[16] = 0;
  }

  else
  {
    result = (**a3)(*(*a3 + 8), this, a2, &v9);
  }

  if (v10 >= 0x41)
  {
    result = v9;
    if (v9)
    {
      return MEMORY[0x25F891010](v9, 0x1000C8000313F17);
    }
  }

  return result;
}

llvm::APInt *std::optional<mlir::ConstantIntRanges>::operator=[abi:nn200100]<mlir::ConstantIntRanges const&,void>(llvm::APInt *this, _DWORD *a2)
{
  if (*(this + 64) == 1)
  {
    llvm::APInt::operator=(this, a2);
    llvm::APInt::operator=((this + 16), (a2 + 4));
    llvm::APInt::operator=((this + 32), (a2 + 8));
    llvm::APInt::operator=((this + 48), (a2 + 12));
  }

  else
  {
    v4 = a2[2];
    *(this + 2) = v4;
    if (v4 > 0x40)
    {
      operator new[]();
    }

    *this = *a2;
    v5 = a2[6];
    *(this + 6) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *(this + 2) = *(a2 + 2);
    v6 = a2[10];
    *(this + 10) = v6;
    if (v6 > 0x40)
    {
      operator new[]();
    }

    *(this + 4) = *(a2 + 4);
    v7 = a2[14];
    *(this + 14) = v7;
    if (v7 > 0x40)
    {
      operator new[]();
    }

    *(this + 6) = *(a2 + 6);
    *(this + 64) = 1;
  }

  return this;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8AFA8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    result = llvm::APInt::uadd_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::uadd_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8AFF0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferAdd(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if (*(a3 + 8))
  {
    result = llvm::APInt::sadd_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::sadd_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<std::function<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x25CC8770CLL);
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B038;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    result = llvm::APInt::usub_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::usub_ov(this, a2, &v10, &__src);
    if (v10)
    {
      *a4 = 0;
      v6 = v9;
      *(a4 + 16) = 0;
      if (v6 >= 0x41 && __src)
      {

        JUMPOUT(0x25F891010);
      }

      return result;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  *(a4 + 16) = 1;
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B080;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferSub(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if (*(a3 + 8))
  {
    result = llvm::APInt::ssub_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::ssub_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B0C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if ((*(a3 + 8) & 2) != 0)
  {
    result = llvm::APInt::umul_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::umul_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B110;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferMul(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X8>)
{
  v10 = 0;
  if (*(a3 + 8))
  {
    result = llvm::APInt::smul_sat(this, a2, &__src);
  }

  else
  {
    result = llvm::APInt::smul_ov(this, a2, &v10, &__src);
    if (v10)
    {
      v6 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v7 = v9;
  *(a4 + 8) = v9;
  if (v7 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v6 = 1;
LABEL_8:
  *(a4 + 16) = v6;
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2 >= 0x41)
  {
    operator new[]();
  }

  v3 = *a1;
  *(a2 + 8) = v2;
  *a2 = v3;
  *(a2 + 16) = 1;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  result = llvm::APInt::urem(this, a2, &__src);
  v7 = v16;
  if (v16 <= 0x40)
  {
    if (__src)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *(a3 + 2);
    *(a4 + 8) = v9;
    if (v9 > 0x40)
    {
      operator new[]();
    }

    *a4 = *a3;
    goto LABEL_18;
  }

  v8 = llvm::APInt::countLeadingZerosSlowCase(&__src);
  result = __src;
  if (__src)
  {
    result = MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_3:
  v14 = 0;
  v13 = *(a3 + 2);
  if (v13 > 0x40)
  {
    operator new[]();
  }

  v12 = 1;
  result = llvm::APInt::uadd_ov(a3, &v12, &v14, &__src);
  if (!v14)
  {
    v11 = v16;
    *(a4 + 8) = v16;
    if (v11 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
LABEL_18:
    *(a4 + 16) = 1;
    return result;
  }

  *a4 = 0;
  v10 = v16;
  *(a4 + 16) = 0;
  if (v10 >= 0x41)
  {
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t *a1@<X3>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2);
  if (v2 >= 0x41)
  {
    operator new[]();
  }

  v3 = *a1;
  *(a2 + 8) = v2;
  *a2 = v3;
  *(a2 + 16) = 1;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferCeilDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::APInt::srem(this, a2, &__src);
  v8 = v26;
  if (v26 > 0x40)
  {
    if (llvm::APInt::countLeadingZerosSlowCase(&__src) == v8)
    {
      if (__src)
      {
        MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      goto LABEL_17;
    }
  }

  else if (!__src)
  {
LABEL_17:
    result = llvm::APInt::isMinSignedValue(this);
    if (result && (result = llvm::APInt::sgt(a2, 1), result))
    {
      v26 = *(a3 + 8);
      if (v26 > 0x40)
      {
        operator new[]();
      }

      __src = *a3;
      llvm::APInt::flipAllBits(&__src);
      result = llvm::APInt::operator++(&__src);
      v21 = __src;
      *(a4 + 8) = v26;
      *a4 = v21;
    }

    else
    {
      v18 = *(a3 + 8);
      *(a4 + 8) = v18;
      if (v18 > 0x40)
      {
        operator new[]();
      }

      *a4 = *a3;
    }

LABEL_34:
    *(a4 + 16) = 1;
    return result;
  }

  v9 = *(this + 2);
  v10 = v9 - 1;
  if (v9 >= 0x41)
  {
    v11 = (*this + 8 * ((v9 - 1) >> 6));
  }

  else
  {
    v11 = this;
  }

  v12 = ((*v11 >> v10) & 1) == 0;
  v13 = *(a2 + 2);
  v14 = v13 - 1;
  if (v13 >= 0x41)
  {
    v15 = (*a2 + 8 * ((v13 - 1) >> 6));
  }

  else
  {
    v15 = a2;
  }

  v16 = v12 ^ (((*v15 >> v14) & 1) == 0);
  if (v8 >= 0x41 && __src)
  {
    MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  if (v16)
  {
    goto LABEL_17;
  }

  v24 = 0;
  v23 = *(a3 + 8);
  if (v23 > 0x40)
  {
    operator new[]();
  }

  v22 = 1;
  result = llvm::APInt::sadd_ov(a3, &v22, &v24, &__src);
  if (!v24)
  {
    v20 = v26;
    *(a4 + 8) = v26;
    if (v20 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
    goto LABEL_34;
  }

  *a4 = 0;
  v19 = v26;
  *(a4 + 16) = 0;
  if (v19 >= 0x41 && __src)
  {
    return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  return result;
}

uint64_t llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferFloorDivS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>@<X0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, llvm::APInt *a3@<X3>, uint64_t a4@<X8>)
{
  result = llvm::APInt::srem(this, a2, &__src);
  v9 = v25;
  if (v25 > 0x40)
  {
    result = llvm::APInt::countLeadingZerosSlowCase(&__src);
    if (result == v9)
    {
      result = __src;
      if (__src)
      {
        result = MEMORY[0x25F891010](__src, 0x1000C8000313F17);
      }

      goto LABEL_19;
    }
  }

  else if (!__src)
  {
LABEL_19:
    v18 = *(a3 + 2);
    *(a4 + 8) = v18;
    if (v18 > 0x40)
    {
      operator new[]();
    }

    *a4 = *a3;
LABEL_22:
    *(a4 + 16) = 1;
    return result;
  }

  v10 = *(this + 2);
  v11 = v10 - 1;
  if (v10 >= 0x41)
  {
    v12 = (*this + 8 * ((v10 - 1) >> 6));
  }

  else
  {
    v12 = this;
  }

  v13 = ((*v12 >> v11) & 1) == 0;
  v14 = *(a2 + 2);
  v15 = v14 - 1;
  if (v14 >= 0x41)
  {
    v16 = (*a2 + 8 * ((v14 - 1) >> 6));
  }

  else
  {
    v16 = a2;
  }

  v17 = v13 ^ (((*v16 >> v15) & 1) == 0);
  if (v9 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      result = MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  if (!v17)
  {
    goto LABEL_19;
  }

  v23 = 0;
  v22 = *(a3 + 2);
  if (v22 > 0x40)
  {
    operator new[]();
  }

  v21 = 1;
  result = llvm::APInt::ssub_ov(a3, &v21, &v23, &__src);
  if (!v23)
  {
    v20 = v25;
    *(a4 + 8) = v25;
    if (v20 > 0x40)
    {
      operator new[]();
    }

    *a4 = __src;
    goto LABEL_22;
  }

  *a4 = 0;
  v19 = v25;
  *(a4 + 16) = 0;
  if (v19 >= 0x41 && __src)
  {
    return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferAnd(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a2 & *a1;
  *(a3 + 8) = v3;
  *a3 = v4;
  *(a3 + 16) = 1;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferOr(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 > 0x40)
  {
    operator new[]();
  }

  v4 = *a2 | *a1;
  *(a3 + 8) = v3;
  *a3 = v4;
  *(a3 + 16) = 1;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B158;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_0>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v13 = 0;
  v6 = *(a2 + 8);
  LimitedValue = llvm::APInt::getLimitedValue(this, *(a3 + 8));
  if ((v6 & 2) != 0)
  {
    result = llvm::APInt::ushl_sat(a3, LimitedValue, &__src);
  }

  else
  {
    result = llvm::APInt::ushl_ov(a3, &v13, LimitedValue, &__src);
    if (v13)
    {
      v9 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v10 = v12;
  *(a4 + 8) = v12;
  if (v10 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v9 = 1;
LABEL_8:
  *(a4 + 16) = v9;
  if (v12 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286E8B1A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__func<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1,std::allocator<mlir::intrange::inferShl(llvm::ArrayRef<mlir::ConstantIntRanges>,mlir::intrange::OverflowFlags)::$_1>,std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::operator()@<X0>(uint64_t ***this@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v13 = 0;
  v6 = *(a2 + 8);
  LimitedValue = llvm::APInt::getLimitedValue(this, *(a3 + 8));
  if (v6)
  {
    result = llvm::APInt::sshl_sat(a3, LimitedValue, &__src);
  }

  else
  {
    result = llvm::APInt::sshl_ov(a3, &v13, LimitedValue, &__src);
    if (v13)
    {
      v9 = 0;
      *a4 = 0;
      goto LABEL_8;
    }
  }

  v10 = v12;
  *(a4 + 8) = v12;
  if (v10 > 0x40)
  {
    operator new[]();
  }

  *a4 = __src;
  v9 = 1;
LABEL_8:
  *(a4 + 16) = v9;
  if (v12 >= 0x41)
  {
    result = __src;
    if (__src)
    {
      return MEMORY[0x25F891010](__src, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrS(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
      goto LABEL_6;
    }

    v7 = *a2;
  }

  if (*v7 < v6)
  {
    llvm::APInt::ashr(this, a2, &v8);
    *(a3 + 8) = v9;
    *a3 = v8;
    *(a3 + 16) = 1;
    return;
  }

LABEL_6:
  *a3 = 0;
  *(a3 + 16) = 0;
}

void llvm::function_ref<std::optional<llvm::APInt> ()(llvm::APInt const&,llvm::APInt const&)>::callback_fn<mlir::intrange::inferShrU(llvm::ArrayRef<mlir::ConstantIntRanges>)::$_0>(llvm::APInt *this@<X1>, llvm::APInt *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 2);
  v7 = a2;
  if (v6 >= 0x41)
  {
    if (v6 - llvm::APInt::countLeadingZerosSlowCase(a2) > 0x40)
    {
      goto LABEL_6;
    }

    v7 = *a2;
  }

  if (*v7 < v6)
  {
    llvm::APInt::lshr(this, a2, &v8);
    *(a3 + 8) = v9;
    *a3 = v8;
    *(a3 + 16) = 1;
    return;
  }

LABEL_6:
  *a3 = 0;
  *(a3 + 16) = 0;
}

uint64_t mlir::detail::verifyShapedDimOpInterface(mlir::detail *this, mlir::Operation *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 9) == 1)
  {
    if (*(*(*(this - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v3 = 1;
      goto LABEL_6;
    }

    v2 = "expect index result type";
  }

  else
  {
    v2 = "expected single op result";
  }

  v6 = v2;
  v7 = 259;
  mlir::Operation::emitError(v8, this, &v6);
  v3 = v9 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v8);
LABEL_6:
  v4 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

void mlir::ub::UBDialect::~UBDialect(mlir::ub::UBDialect *this)
{
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

char *mlir::ub::UBDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;
  if (v5)
  {
    return mlir::OpBuilder::create<mlir::ub::PoisonOp,mlir::Type &,mlir::ub::PoisonAttr &>(a2, a5, &v8, &v7);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ub::UBDialect::parseAttribute(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::KeywordSwitch(&v19, a2, 0);
  v16 = "poison";
  v17 = 6;
  if (v23[2])
  {
    goto LABEL_2;
  }

  v5 = v22;
  if (v22 != 6)
  {
    if (!v22)
    {
      (*(*v19 + 648))(v19, &v16, 1);
      if (v23[2])
      {
LABEL_2:
        v5 = 0;
        v6 = 0;
        v7 = 0;
        goto LABEL_12;
      }

      v5 = v22;
    }

    goto LABEL_11;
  }

  if (*v21 != 1936289648 || *(v21 + 4) != 28271)
  {
LABEL_11:
    v7 = 0;
    v6 = v21;
    *v23 = 0;
    v23[2] = 1;
    goto LABEL_12;
  }

  v13 = *(**(*(*a2 + 32))(a2) + 560);
  v14[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  v5 = 0;
  v6 = 0;
  v7 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v13 + 232), v14);
  v23[0] = v7 != 0;
  *&v23[1] = 257;
LABEL_12:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(&v19) & 0x100) == 0)
  {
    v15 = 257;
    (*(*a2 + 24))(&v19, a2, v4, v14);
    if (v19)
    {
      if (v19)
      {
        v18 = 261;
        v16 = v6;
        v17 = v5;
        mlir::Diagnostic::operator<<(&v20, &v16);
        if (v19)
        {
          if (v19)
          {
            v9 = *(a1 + 8);
            v10 = *(a1 + 16);
            v18 = 261;
            v16 = v9;
            v17 = v10;
            mlir::Diagnostic::operator<<(&v20, &v16);
            if (v19)
            {
            }
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ub::UBDialect::printAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = (*(*a3 + 16))(a3);
    v4 = *(v3 + 4);
    if ((*(v3 + 3) - v4) > 5)
    {
      *(v4 + 4) = 28271;
      *v4 = 1936289648;
      *(v3 + 4) += 6;
    }

    else
    {

      llvm::raw_ostream::write(v3, "poison", 6uLL);
    }
  }
}

BOOL mlir::ub::PoisonOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v5 = *a1, v6 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v5 + 8, v6)))
  {
    a2(&v12, a3);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = "value";
        v10[1] = 5;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<61ul>(v13, "' failed to satisfy constraint: PoisonAttrInterface instance");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  else
  {
    v7 = 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t *mlir::ub::PoisonOp::getValueAttr(mlir::ub::PoisonOp *this)
{
  v1 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void mlir::ub::PoisonOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __src = a3;
  if (a4)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
    *v8 = a4;
    v8[1] = a5;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v10);
}

uint64_t mlir::ub::PoisonOp::populateDefaultProperties(uint64_t result, uint64_t **a2)
{
  if (!*a2)
  {
    v9[5] = v2;
    v9[6] = v3;
    v5 = *(**(***(result + 8) + 32) + 560);
    v9[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), v9);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
      result = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      result = 0;
    }

    *a2 = v6;
    a2[1] = result;
  }

  return result;
}

uint64_t mlir::ub::PoisonOp::parse(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = *(a2 + 8);
  v18[0] = a1;
  v18[1] = v15;
  v18[2] = a2;
  if (!mlir::ub::PoisonOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v18))
  {
    goto LABEL_12;
  }

  if ((*(*a1 + 160))(a1))
  {
    v5 = (*(*a1 + 40))(a1);
    v17 = 0;
    if ((*(*a1 + 440))(a1, &v17, 0))
    {
      v6 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v17);
      if (v6)
      {
        v8 = v6;
        v9 = v7;
        v10 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
        *v10 = v8;
        v10[1] = v9;
      }

      else
      {
        v15[0] = "invalid kind of attribute specified";
        v16 = 259;
        (*(*a1 + 24))(v18, a1, v5, v15);
        v11 = v19;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        if (v11)
        {
          goto LABEL_12;
        }
      }

      if ((*(*a1 + 168))(a1))
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_9:
  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v18[0] = 0;
  if (((*(*a1 + 536))(a1, v18) & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = v18[0];
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v14, v15);
  result = 1;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    return 0;
  }

  if (v1)
  {
    v4 = *v1;
    v5 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  }

  return v1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::Model(void *a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x277D85DE8];
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(v6);
  mlir::OperationName::Impl::Impl(a1, "ub.poison", 9, a2, &mlir::detail::TypeIDResolver<mlir::ub::PoisonOp,void>::id, v6);
  mlir::detail::InterfaceMap::~InterfaceMap(v6);
  *a1 = &unk_286E8B268;
  v4 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));
  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::~Model(uint64_t a1)
{
  *a1 = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap((a1 + 32));

  JUMPOUT(0x25F891040);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::foldHook(uint64_t a1, mlir::ub::PoisonOp *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = &llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  v2 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[3] = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  v2 = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void *mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v7[4] = *MEMORY[0x277D85DE8];
  v7[3] = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v7, a2, a3, a4, a5);
  result = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::~UniqueFunctionBase(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyRegionInvariants;
  v5[3] = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2);
  v2 = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v5, a2);
  llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::~UniqueFunctionBase(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    v6 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64) & 0xFFFFFFFFFFFFFF00;
    v5 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a3 + 24) == 5)
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = *(v4 + 4);
    if (v5 == 1970037110 && v6 == 101)
    {
      v8 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
      if (a4)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(a4);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *(v8 + 64) = v9;
      *(v8 + 72) = v10;
    }
  }
}

void mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v3 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return mlir::ub::PoisonOp::populateDefaultProperties(a2, a3);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a4[1], a4[1] + 16 * a4[2], "value", 5uLL);
    if (v11)
    {
      v12 = *(v10 + 8);
      if (v12)
      {
        v13 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(*(v10 + 8));
        if (!v13)
        {
          a5(&v21, a6);
          if (v21)
          {
            if (v21)
            {
              v19 = 0;
              v20 = v12;
              v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
              v17 = v23 + 24 * v24;
              v18 = *v16;
              *(v17 + 16) = *(v16 + 16);
              *v17 = v18;
              ++v24;
            }
          }

          goto LABEL_4;
        }

        *a3 = v13;
        a3[1] = v14;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  a5(&v21, a6);
  if (v21)
  {
    mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  result = 0;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v13 = v15;
  v14 = 0x300000000;
  if (v4)
  {
    v5 = *(**v4 + 32);
    v12 = 261;
    v11[0] = "value";
    v11[1] = 5;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v4);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(v3, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

__n128 mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::ub::PoisonOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = v3 ^ (v3 >> 47);
  v5 = ((0x9DDFEA08EB382D69 * v4) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (((0x759C16B48 * v4) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::ub::PoisonOp>,mlir::OpTrait::OneResult<mlir::ub::PoisonOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroSuccessors<mlir::ub::PoisonOp>,mlir::OpTrait::ZeroOperands<mlir::ub::PoisonOp>,mlir::OpTrait::OpInvariants<mlir::ub::PoisonOp>,mlir::BytecodeOpInterface::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::ConstantLike<mlir::ub::PoisonOp>,mlir::ConditionallySpeculatable::Trait<mlir::ub::PoisonOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::ub::PoisonOp>,mlir::MemoryEffectOpInterface::Trait<mlir::ub::PoisonOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(a1);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::writeProperties;
  v3 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

BOOL mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::readProperties(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(a2);
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    if (v14 && (v4 = llvm::DefaultDoCastIfPossible<mlir::ub::PoisonAttrInterface,mlir::Attribute,llvm::CastInfo<mlir::ub::PoisonAttrInterface,mlir::Attribute,void>>::doCastIfPossible(v14), *v3 = v4, v3[1] = v5, !v4))
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface>();
        *algn_27FC19C98 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::ub::PoisonAttrInterface>(void)::Name;
        v16 = *algn_27FC19C98;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v10 = v20 + 24 * v21;
            v11 = *v9;
            *(v10 + 16) = *(v9 + 16);
            *v10 = v11;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::ub::PoisonOp>::getSpeculatability;
  v3 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>>(uint64_t a1)
{
  v2 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::ub::PoisonOp>::getEffects;
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID();

  mlir::detail::InterfaceMap::insert(a1, v3, v2);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const>(int a1, mlir::ub::PoisonOp *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ValueAttr = mlir::ub::PoisonOp::getValueAttr(this);
  if (ValueAttr < 8)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(a5, ValueAttr & 0xFFFFFFFFFFFFFFFBLL);
  return 1;
}

BOOL llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const>(uint64_t a1, uint64_t a2)
{
  v9[11] = *MEMORY[0x277D85DE8];
  v9[0] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID();
  v9[1] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID();
  v9[2] = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID();
  v9[3] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID();
  v9[4] = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
  v9[5] = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID();
  v9[6] = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[7] = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v9[8] = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID();
  v9[9] = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID();
  v3 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID();
  v4 = 0;
  v9[10] = v3;
  do
  {
    v5 = v9[v4];
    if (v5 == a2)
    {
      break;
    }
  }

  while (v4++ != 10);
  result = v5 == a2;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, uint64_t a2, uint64_t a3, llvm::formatv_object_base *a4, llvm::formatv_object_base *a5)
{
  v29[4] = *MEMORY[0x277D85DE8];
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v27 = v29;
  v28 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "value", 5);
  v7 = *(***(a2 + 24) + 32);
  ValueAttr = mlir::ub::PoisonOp::getValueAttr(a2);
  if (ValueAttr)
  {
    v9 = *(*v7 + 560);
    v26 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
    if (*llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v9 + 232), &v26) == ValueAttr)
    {
      llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v27, "value", 5);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a3 + 192))(a3, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, v28);
  v11 = mlir::ub::PoisonOp::getValueAttr(a2);
  v12 = *(**(***(a2 + 24) + 32) + 560);
  v26 = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
  if (*llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v12 + 232), &v26) != v11)
  {
    v13 = (*(*a3 + 16))(a3);
    v14 = *(v13 + 4);
    if (*(v13 + 3) == v14)
    {
      llvm::raw_ostream::write(v13, "<", 1uLL);
    }

    else
    {
      *v14 = 60;
      ++*(v13 + 4);
    }

    v15 = mlir::ub::PoisonOp::getValueAttr(a2);
    (*(*a3 + 40))(a3, v15);
    v16 = (*(*a3 + 16))(a3);
    v17 = *(v16 + 4);
    if (*(v16 + 3) == v17)
    {
      llvm::raw_ostream::write(v16, ">", 1uLL);
    }

    else
    {
      *v17 = 62;
      ++*(v16 + 4);
    }
  }

  v18 = (*(*a3 + 16))(a3);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a3 + 16))(a3);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
  }

  v22 = (*(*a3 + 16))(a3);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  if (*(a2 + 36))
  {
    v24 = a2 - 16;
  }

  else
  {
    v24 = 0;
  }

  (*(*a3 + 32))(a3, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v27 != v29)
  {
    free(v27);
  }

  v25 = *MEMORY[0x277D85DE8];
}

BOOL mlir::Op<mlir::ub::PoisonOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>::verifyInvariants(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyZeroOperands(a1, v5))
  {
    v6 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
    v9 = a1;
    return mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(v6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::__mlir_ods_local_attr_constraint_UBOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v9);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::Dialect::addAttribute<mlir::ub::PoisonAttr>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::ub::PoisonAttr>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::ub::PoisonAttr>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = v12;
  v11[1] = 0x300000000;
  v4 = malloc_type_malloc(1uLL, 0x400A2AC0F1uLL);
  v5 = mlir::detail::TypeIDResolver<mlir::ub::PoisonAttrInterface,void>::resolveTypeID();
  mlir::detail::InterfaceMap::insert(v11, v5, v4);
  *&v9 = mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v10 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v11, &v9, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSB_16AttributeUniquerEJNSD_19PoisonAttrInterface5TraitEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v8, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_2ub10PoisonAttrES2_NS1_16AttributeStorageENSA_16AttributeUniquerEJNSC_19PoisonAttrInterface5TraitEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v7, &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id, "ub.poison", 9);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v9);
  mlir::detail::InterfaceMap::~InterfaceMap(v11);
  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::ub::PoisonAttr,mlir::Attribute,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::ub::PoisonAttrInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27FC1FDF8, memory_order_acquire) & 1) == 0)
  {
    v7 = a1;
    v4 = __cxa_guard_acquire(&qword_27FC1FDF8);
    a1 = v7;
    if (v4)
    {
      v5 = llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>();
      _MergedGlobals_37 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v5, v6);
      __cxa_guard_release(&qword_27FC1FDF8);
      a1 = v7;
    }
  }

  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && _MergedGlobals_37 != a1);
  return (v2 & 1) == 0;
}

uint64_t llvm::getTypeName<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  if ((atomic_load_explicit(&qword_27FC1FE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE10))
  {
    qword_27FC1FE00 = llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>();
    *algn_27FC1FE08 = v1;
    __cxa_guard_release(&qword_27FC1FE10);
  }

  return qword_27FC1FE00;
}

const char *llvm::detail::getTypeNameImpl<mlir::ub::PoisonAttrInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::ub::PoisonAttrInterface::Trait>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ub::PoisonAttrInterface::Trait<Empty>]";
  v6 = 105;
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

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::ub::PoisonAttr>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_2ub10PoisonAttrEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1FE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FE38))
  {
    qword_27FC1FE28 = llvm::detail::getTypeNameImpl<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>();
    unk_27FC1FE30 = v1;
    __cxa_guard_release(&qword_27FC1FE38);
  }

  return qword_27FC1FE28;
}

const char *llvm::detail::getTypeNameImpl<mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ub::detail::PoisonOpGenericAdaptorBase::Properties]";
  v6 = 118;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ub::PoisonOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

BOOL mlir::LLVM::symbolizeAsmDialect(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 == 5)
  {
    return *a1 == 1702129257 && *(a1 + 4) == 108;
  }

  if (a2 != 3)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = *a1;
  v6 = *(a1 + 2);
  if (v5 == 29793 && v6 == 116)
  {
    return v3;
  }

  return result;
}

BOOL mlir::LLVM::AsmDialectAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v5 = a1;
  if (!mlir::IntegerAttr::getInt(&v5))
  {
    return 1;
  }

  v4 = a1;
  return mlir::IntegerAttr::getInt(&v4) == 1;
}

char *mlir::LLVM::stringifyAtomicBinOp(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return &str_2_25;
  }

  v1 = qword_25D09FBB8[a1];
  return off_2799BE328[a1];
}

uint64_t mlir::LLVM::symbolizeAtomicBinOp(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a2 > 7)
  {
    if (a2 == 8)
    {
      if (*a1 == 0x7461735F62757375)
      {
        return 18;
      }
    }

    else
    {
      if (a2 != 9)
      {
        return v2;
      }

      if (*a1 == 0x6172775F636E6975 && *(a1 + 8) == 112)
      {
        return 15;
      }

      if (*a1 == 0x6172775F63656475 && *(a1 + 8) == 112)
      {
        return 16;
      }

      if (*a1 == 0x6E6F635F62757375 && *(a1 + 8) == 100)
      {
        return 17;
      }
    }

    return 0;
  }

  if (a2 == 3)
  {
    if (*a1 == 25697 && *(a1 + 2) == 100)
    {
      return 1;
    }

    if (*a1 == 30067 && *(a1 + 2) == 98)
    {
      return 2;
    }

    if (*a1 == 28511 && *(a1 + 2) == 114)
    {
      return 5;
    }

    if (*a1 == 24941 && *(a1 + 2) == 120)
    {
      return 7;
    }

    if (*a1 == 26989 && *(a1 + 2) == 110)
    {
      return 8;
    }

    return 0;
  }

  if (a2 == 4)
  {
    switch(*a1)
    {
      case 0x67686378:
        return 0;
      case 0x646E615F:
        return 3;
      case 0x646E616E:
        return 4;
      case 0x726F785F:
        return 6;
      case 0x78616D75:
        return 9;
      case 0x6E696D75:
        return 10;
      case 0x64646166:
        return 11;
      case 0x62757366:
        return 12;
      case 0x78616D66:
        return 13;
      case 0x6E696D66:
        return 14;
    }

    return 0;
  }

  return v2;
}

uint64_t mlir::LLVM::AtomicBinOpAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v22 = a1;
  if (!mlir::IntegerAttr::getInt(&v22))
  {
    return 1;
  }

  v21 = a1;
  result = mlir::IntegerAttr::getInt(&v21);
  if (result != 1)
  {
    v20 = a1;
    if (mlir::IntegerAttr::getInt(&v20) == 2)
    {
      return 1;
    }

    v19 = a1;
    if (mlir::IntegerAttr::getInt(&v19) == 3)
    {
      return 1;
    }

    v18 = a1;
    if (mlir::IntegerAttr::getInt(&v18) == 4)
    {
      return 1;
    }

    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 5)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 6)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 7)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 8)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 9)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 10)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 11)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 12)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 13)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 14)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 15)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 16)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 17)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 18;
  }

  return result;
}

char *mlir::LLVM::stringifyAtomicOrdering(unint64_t a1)
{
  if (a1 > 7)
  {
    return &str_2_25;
  }

  v1 = qword_25D09FC50[a1];
  return off_2799BE3C0[a1];
}

uint64_t mlir::LLVM::symbolizeAtomicOrdering(uint64_t *a1, uint64_t a2)
{
  switch(a2)
  {
    case 7:
      if (*a1 == 1970365281 && *(a1 + 3) == 1701996917)
      {
        return 4;
      }

      else if (*a1 == 1701602674 && *(a1 + 3) == 1702060389)
      {
        return 5;
      }

      else if (*a1 == 1601266529 && *(a1 + 3) == 1818587743)
      {
        return 6;
      }

      else
      {
        if (*a1 != 1601267059 || *(a1 + 3) != 1953719135)
        {
          return 0;
        }

        return 7;
      }

    case 9:
      if (*a1 != 0x65726564726F6E75 || *(a1 + 8) != 100)
      {
        if (*a1 == 0x696E6F746F6E6F6DLL && *(a1 + 8) == 99)
        {
          return 2;
        }

        return 0;
      }

      return 1;
    case 10:
      result = 0;
      v4 = *a1;
      v5 = *(a1 + 4);
      return result;
    default:
      return 0;
  }
}

uint64_t mlir::LLVM::AtomicOrderingAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v10 = a1;
  if (!mlir::IntegerAttr::getInt(&v10))
  {
    return 1;
  }

  v9 = a1;
  result = mlir::IntegerAttr::getInt(&v9);
  if (result != 1)
  {
    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 2)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 4)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 5)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 6)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 7;
  }

  return result;
}

uint64_t mlir::LLVM::AtomicOrderingAttr::get(void *a1, unint64_t a2)
{
  v3 = mlir::IntegerType::get(a1, 64, 0);

  return mlir::IntegerAttr::get(v3, a2);
}

char *mlir::LLVM::cconv::stringifyCConv(unint64_t a1)
{
  if (a1 > 0x65)
  {
    return &str_2_25;
  }

  v1 = qword_25D09FC90[a1];
  return (&off_2799BE400)[a1];
}

uint64_t mlir::LLVM::comdat::symbolizeComdat(unsigned __int16 *a1, uint64_t a2)
{
  result = 0;
  if (a2 <= 7)
  {
    if (a2 == 3)
    {
      result = 0;
      v13 = *a1;
      v14 = *(a1 + 2);
    }

    else if (a2 == 7)
    {
      v7 = *a1;
      v8 = *(a1 + 3);
      if (v7 == 1735549292 && v8 == 1953719655)
      {
        return 2;
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        if (*a1 == 0x657A6973656D6173)
        {
          return 4;
        }

        return 0;
      case 10:
        v10 = *a1;
        v11 = a1[4];
        return v10 == 0x74616D7463617865 && v11 == 26723;
      case 13:
        v4 = *a1;
        v5 = *(a1 + 5);
        if (v4 == 0x6C70756465646F6ELL && v5 == 0x65746163696C7075)
        {
          return 3;
        }

        return 0;
    }
  }

  return result;
}

uint64_t mlir::LLVM::comdat::ComdatAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v8 = a1;
  if (!mlir::IntegerAttr::getInt(&v8))
  {
    return 1;
  }

  v7 = a1;
  result = mlir::IntegerAttr::getInt(&v7);
  if (result != 1)
  {
    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 2)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 3)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 4;
  }

  return result;
}

char *mlir::LLVM::stringifyFCmpPredicate(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return &str_2_25;
  }

  v1 = qword_25D09FFC0[a1];
  return off_2799BE730[a1];
}

uint64_t mlir::LLVM::symbolizeFCmpPredicate(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 25967 && *(a1 + 2) == 113)
    {
      return 1;
    }

    if (*a1 == 26479 && *(a1 + 2) == 116)
    {
      return 2;
    }

    if (*a1 == 26479 && *(a1 + 2) == 101)
    {
      return 3;
    }

    if (*a1 == 27759 && *(a1 + 2) == 116)
    {
      return 4;
    }

    if (*a1 == 27759 && *(a1 + 2) == 101)
    {
      return 5;
    }

    if (*a1 == 28271 && *(a1 + 2) == 101)
    {
      return 6;
    }

    if (*a1 == 29295 && *(a1 + 2) == 100)
    {
      return 7;
    }

    if (*a1 == 25973 && *(a1 + 2) == 113)
    {
      return 8;
    }

    if (*a1 == 26485 && *(a1 + 2) == 116)
    {
      return 9;
    }

    if (*a1 == 26485 && *(a1 + 2) == 101)
    {
      return 10;
    }

    if (*a1 == 27765 && *(a1 + 2) == 116)
    {
      return 11;
    }

    if (*a1 == 27765 && *(a1 + 2) == 101)
    {
      return 12;
    }

    if (*a1 == 28277 && *(a1 + 2) == 101)
    {
      return 13;
    }

    if (*a1 == 28277 && *(a1 + 2) == 111)
    {
      return 14;
    }

    return 0;
  }

  if (a2 == 5)
  {
    v3 = *a1 == 1970435167 && *(a1 + 4) == 101;
    if (v3)
    {
      return 15;
    }

    return 0;
  }

  if (a2 != 6)
  {
    return 0;
  }

  v2 = 0;
  if (*a1 == 1818322527)
  {
    v3 = *(a1 + 4) == 25971;
  }

  return v2;
}

uint64_t mlir::LLVM::FCmpPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v19 = a1;
  if (!mlir::IntegerAttr::getInt(&v19))
  {
    return 1;
  }

  v18 = a1;
  result = mlir::IntegerAttr::getInt(&v18);
  if (result != 1)
  {
    v17 = a1;
    if (mlir::IntegerAttr::getInt(&v17) == 2)
    {
      return 1;
    }

    v16 = a1;
    if (mlir::IntegerAttr::getInt(&v16) == 3)
    {
      return 1;
    }

    v15 = a1;
    if (mlir::IntegerAttr::getInt(&v15) == 4)
    {
      return 1;
    }

    v14 = a1;
    if (mlir::IntegerAttr::getInt(&v14) == 5)
    {
      return 1;
    }

    v13 = a1;
    if (mlir::IntegerAttr::getInt(&v13) == 6)
    {
      return 1;
    }

    v12 = a1;
    if (mlir::IntegerAttr::getInt(&v12) == 7)
    {
      return 1;
    }

    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 8)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 9)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 10)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 11)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 12)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 13)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 14)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 15;
  }

  return result;
}

uint64_t mlir::LLVM::symbolizeFPExceptionBehavior(uint64_t a1, uint64_t a2)
{
  if (a2 == 7)
  {
    return *a1 == 1954111853 && *(a1 + 3) == 1885434484;
  }

  if (a2 != 6)
  {
    return 0;
  }

  if (*a1 != 1869506409 || *(a1 + 4) != 25970)
  {
    if (*a1 == 1769108595 && *(a1 + 4) == 29795)
    {
      return 2;
    }

    return 0;
  }

  return 0;
}

uint64_t mlir::LLVM::FPExceptionBehaviorAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

char *mlir::LLVM::stringifyICmpPredicate(unint64_t a1)
{
  if (a1 > 9)
  {
    return &str_2_25;
  }

  v1 = qword_25D0A0048[a1];
  return off_2799BE7B0[a1];
}

uint64_t mlir::LLVM::symbolizeICmpPredicate(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    if (*a1 == 27763 && *(a1 + 2) == 116)
    {
      return 2;
    }

    else if (*a1 == 27763 && *(a1 + 2) == 101)
    {
      return 3;
    }

    else if (*a1 == 26483 && *(a1 + 2) == 116)
    {
      return 4;
    }

    else if (*a1 == 26483 && *(a1 + 2) == 101)
    {
      return 5;
    }

    else if (*a1 == 27765 && *(a1 + 2) == 116)
    {
      return 6;
    }

    else if (*a1 == 27765 && *(a1 + 2) == 101)
    {
      return 7;
    }

    else if (*a1 == 26485 && *(a1 + 2) == 116)
    {
      return 8;
    }

    else
    {
      if (*a1 != 26485 || *(a1 + 2) != 101)
      {
        return 0;
      }

      return 9;
    }
  }

  else
  {
    if (a2 != 2)
    {
      return 0;
    }

    return *a1 != 29029 && *a1 == 25966;
  }
}

uint64_t mlir::LLVM::ICmpPredicateAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v13 = a1;
  if (!mlir::IntegerAttr::getInt(&v13))
  {
    return 1;
  }

  v12 = a1;
  result = mlir::IntegerAttr::getInt(&v12);
  if (result != 1)
  {
    v11 = a1;
    if (mlir::IntegerAttr::getInt(&v11) == 2)
    {
      return 1;
    }

    v10 = a1;
    if (mlir::IntegerAttr::getInt(&v10) == 3)
    {
      return 1;
    }

    v9 = a1;
    if (mlir::IntegerAttr::getInt(&v9) == 4)
    {
      return 1;
    }

    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 5)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 6)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 7)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 8)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 9;
  }

  return result;
}

uint64_t mlir::LLVM::symbolizeIntegerOverflowFlags(_DWORD *a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  if (a2 == 4 && *a1 == 1701736302)
  {
    result = 0x100000000;
  }

  else
  {
    v16 = v18;
    v17 = 0x200000000;
    llvm::StringRef::split(&v15, &v16, ",", 1uLL, -1, 1);
    if (v17)
    {
      v2 = 0;
      v3 = v16;
      v4 = 16 * v17;
      while (1)
      {
        v14 = *v3;
        v5 = llvm::StringRef::trim(&v14, " \t\n\v\f\r", 6);
        if (v6 != 3)
        {
          break;
        }

        if (*v5 == 29550 && *(v5 + 2) == 119)
        {
          v9 = 1;
        }

        else
        {
          if (*v5 != 30062 || *(v5 + 2) != 119)
          {
            break;
          }

          v9 = 2;
        }

        v2 |= v9;
        ++v3;
        v4 -= 16;
        if (!v4)
        {
          v10 = v2;
          goto LABEL_21;
        }
      }

      v11 = 0;
      v10 = 0;
    }

    else
    {
      v10 = 0;
LABEL_21:
      v11 = 0x100000000;
    }

    if (v16 != v18)
    {
      free(v16);
    }

    result = v10 | v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::LLVM::linkage::stringifyLinkage(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return &str_2_25;
  }

  v1 = qword_25D0A0098[a1];
  return off_2799BE800[a1];
}

char *mlir::LLVM::stringifyRoundingMode(unint64_t a1)
{
  if (a1 > 8)
  {
    return &str_2_25;
  }

  v1 = qword_25D0A00F0[a1];
  return off_2799BE858[a1];
}

uint64_t mlir::LLVM::symbolizeRoundingMode(uint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        v9 = *a1;
        v10 = *(a1 + 8);
        return v9 == 0x73657261656E6F74 && v10 == 116;
      case 13:
        v16 = *a1;
        v17 = *(a1 + 5);
        if (v16 != 0x73657261656E6F74 || v17 != 0x7961776174736572)
        {
          return 0;
        }

        return 4;
      case 10:
        result = 0;
        v4 = *a1;
        v5 = *(a1 + 4);
        break;
    }
  }

  else
  {
    switch(a2)
    {
      case 6:
        v6 = *a1;
        v7 = *(a1 + 2);
        if (v6 == 1635217525 && v7 == 25714)
        {
          return 2;
        }

        return 0;
      case 7:
        if (*a1 != 1634629988 || *(a1 + 3) != 1667853665)
        {
          v13 = *a1;
          v14 = *(a1 + 3);
          if (v13 == 1635151465 && v14 == 1684630625)
          {
            return 8;
          }

          return 0;
        }

        return 7;
      case 8:
        if (*a1 == 0x647261776E776F64)
        {
          return 3;
        }

        return 0;
    }
  }

  return result;
}

uint64_t mlir::LLVM::RoundingModeAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v10 = a1;
  if (!mlir::IntegerAttr::getInt(&v10))
  {
    return 1;
  }

  v9 = a1;
  result = mlir::IntegerAttr::getInt(&v9);
  if (result != 1)
  {
    v8 = a1;
    if (mlir::IntegerAttr::getInt(&v8) == 2)
    {
      return 1;
    }

    v7 = a1;
    if (mlir::IntegerAttr::getInt(&v7) == 3)
    {
      return 1;
    }

    v6 = a1;
    if (mlir::IntegerAttr::getInt(&v6) == 4)
    {
      return 1;
    }

    v5 = a1;
    if (mlir::IntegerAttr::getInt(&v5) == 7)
    {
      return 1;
    }

    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == -1;
  }

  return result;
}

uint64_t mlir::LLVM::UnnamedAddrAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

uint64_t mlir::LLVM::VisibilityAttr::classof(void *a1)
{
  if (*(*a1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    return 0;
  }

  v2 = a1[1];
  if (*(*v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v2[2] != 64)
  {
    return 0;
  }

  v6 = a1;
  if (!mlir::IntegerAttr::getInt(&v6))
  {
    return 1;
  }

  v5 = a1;
  result = mlir::IntegerAttr::getInt(&v5);
  if (result != 1)
  {
    v4 = a1;
    return mlir::IntegerAttr::getInt(&v4) == 2;
  }

  return result;
}

uint64_t mlir::LLVM::CConvAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail16CConvAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_9CConvAttrEJNS2_5cconv5CConvEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::CConvAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::CConvAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::CConvAttrStorage,mlir::LLVM::cconv::CConv>(llvm::function_ref<void ()(mlir::LLVM::detail::CConvAttrStorage *)>,mlir::TypeID,mlir::LLVM::cconv::CConv &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::ComdatAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail17ComdatAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_10ComdatAttrEJNS2_6comdat6ComdatEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::ComdatAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::ComdatAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::ComdatAttrStorage,mlir::LLVM::comdat::Comdat>(llvm::function_ref<void ()(mlir::LLVM::detail::ComdatAttrStorage *)>,mlir::TypeID,mlir::LLVM::comdat::Comdat &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::LinkageAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail18LinkageAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_11LinkageAttrEJNS2_7linkage7LinkageEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::LinkageAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LinkageAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LinkageAttrStorage,mlir::LLVM::linkage::Linkage>(llvm::function_ref<void ()(mlir::LLVM::detail::LinkageAttrStorage *)>,mlir::TypeID,mlir::LLVM::linkage::Linkage &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::FramePointerKindAttr::get(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id;
  v7[1] = a1;
  v3 = *(v2 + 560);
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27FramePointerKindAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20FramePointerKindAttrEJNS2_16framePointerKind16FramePointerKindEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v10 = a2;
  v4 = HIDWORD(a2) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * a2 + 8) ^ v4);
  v8[0] = &v10;
  v8[1] = v11;
  v9 = &v10;
  return mlir::detail::StorageUniquerImpl::getOrCreate(v3, &mlir::detail::TypeIDResolver<mlir::LLVM::FramePointerKindAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 32) >> 15) ^ (-348639895 * (v4 ^ (v5 >> 47) ^ v5))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::FramePointerKindAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::FramePointerKindAttrStorage,mlir::LLVM::framePointerKind::FramePointerKind>(llvm::function_ref<void ()(mlir::LLVM::detail::FramePointerKindAttrStorage *)>,mlir::TypeID,mlir::LLVM::framePointerKind::FramePointerKind &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v8);
}

uint64_t mlir::LLVM::LoopVectorizeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v16[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id;
  v16[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail24LoopVectorizeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_17LoopVectorizeAttrEJNS1_8BoolAttrESD_SD_NS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v20[1] = v16;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v18 = a7;
  v19 = a8;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v23 = ((a2 >> 4) ^ (a2 >> 9));
  v24 = ((a3 >> 4) ^ (a3 >> 9));
  v21 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v23, &v21, v25, v26, (a4 >> 4) ^ (a4 >> 9));
  v22 = v21;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v23, &v22, v11, v26, (v9 >> 4) ^ (v9 >> 9));
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v23, v22, v12, v26, v8, &v18, &v19);
  v22 = v17;
  v23 = v17;
  v24 = v20;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopVectorizeAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopVectorizeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopVectorizeAttrStorage,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopVectorizeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v23);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser *a1)
{
  v39[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21[0] = a1;
  v21[1] = &v24 + 3;
  v21[2] = &v37;
  v21[3] = &v24 + 2;
  v21[4] = &v35;
  v21[5] = &v24 + 1;
  v21[6] = &v33;
  v21[7] = &v24;
  v21[8] = &v31;
  v21[9] = &v23 + 1;
  v21[10] = &v29;
  v21[11] = &v23;
  v21[12] = &v27;
  v21[13] = &v22;
  v21[14] = &v25;
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 416))(a1, &v19))
  {
    v2 = v19;
    for (i = v20; mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v21, v2, i); i = v18)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v17))
      {
        v13 = (*(*a1 + 40))(a1);
        v15 = "expected a parameter name in struct";
        v16 = 259;
        (*(*a1 + 24))(v39, a1, v13, &v15);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
        goto LABEL_32;
      }

      v2 = v17;
    }

    goto LABEL_32;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v38)
  {
    v5 = v37;
  }

  else
  {
    v5 = 0;
  }

  if (v36)
  {
    v6 = v35;
  }

  else
  {
    v6 = 0;
  }

  if (v34)
  {
    v7 = v33;
  }

  else
  {
    v7 = 0;
  }

  if (v32)
  {
    v8 = v31;
  }

  else
  {
    v8 = 0;
  }

  if (v30)
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    v10 = v27;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::LLVM::LoopVectorizeAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopVectorizeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v78[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_75;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_71;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v69 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v69);
    v11 = v69;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v71 = 259;
      (*(*v13 + 24))(v78, v13, v14, &v69);
      v15 = v78;
LABEL_74:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_75:
      v8 = 0;
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 15)
  {
    v24 = a1[5];
    if ((*v24 & 1) != 0 || a3 != 14)
    {
      v32 = a1[7];
      if ((*v32 & 1) != 0 || a3 != 5)
      {
        v39 = a1[9];
        if ((*v39 & 1) != 0 || a3 != 18)
        {
          v47 = a1[11];
          if ((*v47 & 1) != 0 || a3 != 16)
          {
            v54 = a1[13];
            if ((*v54 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
            {
              v8 = 1;
              *v54 = 1;
              v60 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
              v61 = a1[14];
              *v61 = v60;
              *(v61 + 8) = v62;
              if (*(a1[14] + 8))
              {
                goto LABEL_76;
              }

              v63 = *a1;
              v64 = (*(*v63 + 40))(v63);
              v71 = 259;
              (*(*v63 + 24))(v72, v63, v64, &v69);
              v15 = v72;
              goto LABEL_74;
            }

            goto LABEL_71;
          }

          if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x6575676F6C697045)
          {
            v8 = 1;
            *v47 = 1;
            v49 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
            v50 = a1[12];
            *v50 = v49;
            *(v50 + 8) = v51;
            if ((*(a1[12] + 8) & 1) == 0)
            {
              v52 = *a1;
              v53 = (*(*v52 + 40))(v52);
              v71 = 259;
              (*(*v52 + 24))(v73, v52, v53, &v69);
              v15 = v73;
              goto LABEL_74;
            }

            goto LABEL_76;
          }
        }

        else if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x7A69726F74636556 && *(a2 + 16) == 25701)
        {
          v8 = 1;
          *v39 = 1;
          v42 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
          v43 = a1[10];
          *v43 = v42;
          *(v43 + 8) = v44;
          if ((*(a1[10] + 8) & 1) == 0)
          {
            v45 = *a1;
            v46 = (*(*v45 + 40))(v45);
            v71 = 259;
            (*(*v45 + 24))(v74, v45, v46, &v69);
            v15 = v74;
            goto LABEL_74;
          }

          goto LABEL_76;
        }
      }

      else if (*a2 == 1952737655 && *(a2 + 4) == 104)
      {
        v8 = 1;
        *v32 = 1;
        v34 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
        v35 = a1[8];
        *v35 = v34;
        *(v35 + 8) = v36;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v37 = *a1;
          v38 = (*(*v37 + 40))(v37);
          v71 = 259;
          (*(*v37 + 24))(v75, v37, v38, &v69);
          v15 = v75;
          goto LABEL_74;
        }

        goto LABEL_76;
      }
    }

    else if (*a2 == 0x656C62616C616373 && *(a2 + 6) == 0x656C62616E45656CLL)
    {
      v8 = 1;
      *v24 = 1;
      v26 = *a1;
      v69 = 0;
      v27 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v26, &v69);
      v28 = v69;
      if (!v27)
      {
        v28 = 0;
      }

      v29 = a1[6];
      *v29 = v28;
      *(v29 + 8) = v27;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v30 = *a1;
        v31 = (*(*v30 + 40))(v30);
        v71 = 259;
        (*(*v30 + 24))(v76, v30, v31, &v69);
        v15 = v76;
        goto LABEL_74;
      }

      goto LABEL_76;
    }

LABEL_71:
    v56 = *a1;
    v57 = (*(*v56 + 40))(v56);
    v65 = "duplicate or unknown struct parameter name: ";
    v66 = 259;
    (*(*v56 + 24))(&v69, v56, v57, &v65);
    if (v69)
    {
      v68 = 261;
      v67[0] = a2;
      v67[1] = a3;
      mlir::Diagnostic::operator<<(&v70, v67);
    }

    v15 = &v69;
    goto LABEL_74;
  }

  if (*a2 != 0x7461636964657270 || *(a2 + 7) != 0x656C62616E456574)
  {
    goto LABEL_71;
  }

  v8 = 1;
  *v16 = 1;
  v18 = *a1;
  v69 = 0;
  v19 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v18, &v69);
  v20 = v69;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = a1[4];
  *v21 = v20;
  *(v21 + 8) = v19;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v22 = *a1;
    v23 = (*(*v22 + 40))(v22);
    v71 = 259;
    (*(*v22 + 24))(v77, v22, v23, &v69);
    v15 = v77;
    goto LABEL_74;
  }

LABEL_76:
  v58 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopVectorizeAttr::print(mlir::LLVM::LoopVectorizeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0x11)
  {
    *(v13 + 16) = 8253;
    *v13 = *"predicateEnable = ";
    *(v12 + 4) += 18;
  }

  else
  {
    llvm::raw_ostream::write(v12, "predicateEnable = ", 0x12uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8236;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ", ", 2uLL);
  }

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0x10)
  {
    *(v17 + 16) = 32;
    *v17 = *"scalableEnable = ";
    *(v16 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v16, "scalableEnable = ", 0x11uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

LABEL_39:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 7uLL)
    {
      *v21 = 0x203D206874646977;
      *(v20 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v20, "width = ", 8uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

LABEL_48:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 0x14uLL)
  {
    qmemcpy(v25, "followupVectorized = ", 21);
    *(v24 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupVectorized = ", 0x15uLL);
  }

  v9 = *this;
  v26 = *(*this + 40);
  if (v26)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v26);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
  {
    v27 = (*(*a2 + 16))(a2);
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 1uLL)
    {
      *v28 = 8236;
      *(v27 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v27, ", ", 2uLL);
    }

LABEL_57:
    v29 = (*(*a2 + 16))(a2);
    v30 = *(v29 + 4);
    if ((*(v29 + 3) - v30) > 0x12)
    {
      *(v30 + 15) = 540876901;
      *v30 = *"followupEpilogue = ";
      *(v29 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v29, "followupEpilogue = ", 0x13uLL);
    }

    v9 = *this;
    v31 = *(*this + 48);
    if (v31)
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v31);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 1uLL)
  {
    *v33 = 8236;
    *(v32 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v32, ", ", 2uLL);
  }

LABEL_66:
  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) - v35 > 0xDuLL)
  {
    qmemcpy(v35, "followupAll = ", 14);
    *(v34 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v34, "followupAll = ", 0xEuLL);
  }

  v36 = *(*this + 56);
  if (v36)
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2, v36);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v38 = *(result + 4);
  if (*(result + 3) == v38)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v38 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v8 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v5 = (*(*a1 + 16))(a1);
    v6 = (*(*v5 + 80))(v5) + v5[4] - v5[2];
    mlir::LLVM::LoopAnnotationAttr::print(&v8, a1);
    result = (*(*v5 + 80))(v5);
    if (v6 == result + v5[4] - v5[2])
    {
      v7 = *(*a1 + 40);

      return v7(a1, a2);
    }
  }

  return result;
}

uint64_t mlir::LLVM::LoopInterleaveAttr::get(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopInterleaveAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopInterleaveAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8 = a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopInterleaveAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopInterleaveAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopInterleaveAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopInterleaveAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopInterleaveAttr::parse(mlir::AsmParser *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = 0;
  v16 = 0;
  if (!mlir::AsmParser::parseKeyword(a1, &v15))
  {
    v7 = (*(*a1 + 40))(a1);
    v24[0] = "expected a parameter name in struct";
    v25 = 259;
    (*(*a1 + 24))(v21, a1, v7, v24);
    v6 = v21;
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v6);
    goto LABEL_14;
  }

  v2 = v15;
  v3 = v16;
  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v3 != 5 || (*v2 == 1853189987 ? (v4 = *(v2 + 4) == 116) : (v4 = 0), !v4))
  {
    v5 = (*(*a1 + 40))(a1);
    v17 = "duplicate or unknown struct parameter name: ";
    v18 = 259;
    (*(*a1 + 24))(&v22, a1, v5, &v17);
    if (v22)
    {
      v20 = 261;
      v19[0] = v2;
      v19[1] = v3;
      mlir::Diagnostic::operator<<(v23, v19);
    }

    v6 = &v22;
    goto LABEL_13;
  }

  v10 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(a1);
  if ((v11 & 1) == 0)
  {
    v14 = (*(*a1 + 40))(a1);
    v23[12] = 259;
    (*(*a1 + 24))(v24, a1, v14, &v22);
    v6 = v24;
    goto LABEL_13;
  }

  v12 = v10;
  if ((*(*a1 + 168))(a1))
  {
    v13 = (*(*a1 + 32))(a1);
    result = mlir::LLVM::LoopInterleaveAttr::get(*v13, v12);
    goto LABEL_15;
  }

LABEL_14:
  result = 0;
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::raw_ostream *mlir::LLVM::LoopInterleaveAttr::print(mlir::LLVM::LoopInterleaveAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (*(v6 + 3) - v7 > 7uLL)
  {
    *v7 = 0x203D20746E756F63;
    *(v6 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v6, "count = ", 8uLL);
  }

  (*(*a2 + 40))(a2, *(*this + 8));
  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopUnrollAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v29 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v16[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id;
  v16[1] = a1;
  v20[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopUnrollAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopUnrollAttrEJNS1_8BoolAttrENS1_11IntegerAttrESD_SD_NS2_18LoopAnnotationAttrESF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v20[1] = v16;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v18 = a7;
  v19 = a8;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  v27 = 0;
  v28 = 0xFF51AFD7ED558CCDLL;
  v23 = ((a2 >> 4) ^ (a2 >> 9));
  v24 = ((a3 >> 4) ^ (a3 >> 9));
  v21 = 0;
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v23, &v21, v25, v26, (a4 >> 4) ^ (a4 >> 9));
  v22 = v21;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v23, &v22, v11, v26, (v9 >> 4) ^ (v9 >> 9));
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v23, v22, v12, v26, v8, &v18, &v19);
  v22 = v17;
  v23 = v17;
  v24 = v20;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v10 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAttr,void>::id, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v22, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v23);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser *a1)
{
  v39[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21[0] = a1;
  v21[1] = &v24 + 3;
  v21[2] = &v37;
  v21[3] = &v24 + 2;
  v21[4] = &v35;
  v21[5] = &v24 + 1;
  v21[6] = &v33;
  v21[7] = &v24;
  v21[8] = &v31;
  v21[9] = &v23 + 1;
  v21[10] = &v29;
  v21[11] = &v23;
  v21[12] = &v27;
  v21[13] = &v22;
  v21[14] = &v25;
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 416))(a1, &v19))
  {
    v2 = v19;
    for (i = v20; mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v21, v2, i); i = v18)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v17))
      {
        v13 = (*(*a1 + 40))(a1);
        v15 = "expected a parameter name in struct";
        v16 = 259;
        (*(*a1 + 24))(v39, a1, v13, &v15);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
        goto LABEL_32;
      }

      v2 = v17;
    }

    goto LABEL_32;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v38)
  {
    v5 = v37;
  }

  else
  {
    v5 = 0;
  }

  if (v36)
  {
    v6 = v35;
  }

  else
  {
    v6 = 0;
  }

  if (v34)
  {
    v7 = v33;
  }

  else
  {
    v7 = 0;
  }

  if (v32)
  {
    v8 = v31;
  }

  else
  {
    v8 = 0;
  }

  if (v30)
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    v10 = v27;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::LLVM::LoopUnrollAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnrollAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v77[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_71;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_67;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v68 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v68);
    v11 = v68;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v70 = 259;
      (*(*v13 + 24))(v77, v13, v14, &v68);
      v15 = v77;
LABEL_70:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_71:
      v8 = 0;
      goto LABEL_72;
    }

    goto LABEL_72;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 5)
  {
    v23 = a1[5];
    if ((*v23 & 1) != 0 || a3 != 14)
    {
      v31 = a1[7];
      if ((*v31 & 1) == 0 && a3 == 4)
      {
        if (*a2 != 1819047270)
        {
          goto LABEL_67;
        }

        v8 = 1;
        *v31 = 1;
        v32 = *a1;
        v68 = 0;
        v33 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v32, &v68);
        v34 = v68;
        if (!v33)
        {
          v34 = 0;
        }

        v35 = a1[8];
        *v35 = v34;
        *(v35 + 8) = v33;
        if ((*(a1[8] + 8) & 1) == 0)
        {
          v36 = *a1;
          v37 = (*(*v36 + 40))(v36);
          v70 = 259;
          (*(*v36 + 24))(v74, v36, v37, &v68);
          v15 = v74;
          goto LABEL_70;
        }

        goto LABEL_72;
      }

      v38 = a1[9];
      if ((*v38 & 1) != 0 || a3 != 16)
      {
        v45 = a1[11];
        if ((*v45 & 1) != 0 || a3 != 17)
        {
          v53 = a1[13];
          if ((*v53 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
          {
            v8 = 1;
            *v53 = 1;
            v59 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
            v60 = a1[14];
            *v60 = v59;
            *(v60 + 8) = v61;
            if (*(a1[14] + 8))
            {
              goto LABEL_72;
            }

            v62 = *a1;
            v63 = (*(*v62 + 40))(v62);
            v70 = 259;
            (*(*v62 + 24))(v71, v62, v63, &v68);
            v15 = v71;
            goto LABEL_70;
          }

          goto LABEL_67;
        }

        if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 16) == 114)
        {
          v8 = 1;
          *v45 = 1;
          v48 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
          v49 = a1[12];
          *v49 = v48;
          *(v49 + 8) = v50;
          if ((*(a1[12] + 8) & 1) == 0)
          {
            v51 = *a1;
            v52 = (*(*v51 + 40))(v51);
            v70 = 259;
            (*(*v51 + 24))(v72, v51, v52, &v68);
            v15 = v72;
            goto LABEL_70;
          }

          goto LABEL_72;
        }
      }

      else if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x64656C6C6F726E55)
      {
        v8 = 1;
        *v38 = 1;
        v40 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v41 = a1[10];
        *v41 = v40;
        *(v41 + 8) = v42;
        if ((*(a1[10] + 8) & 1) == 0)
        {
          v43 = *a1;
          v44 = (*(*v43 + 40))(v43);
          v70 = 259;
          (*(*v43 + 24))(v73, v43, v44, &v68);
          v15 = v73;
          goto LABEL_70;
        }

        goto LABEL_72;
      }
    }

    else if (*a2 == 0x44656D69746E7572 && *(a2 + 6) == 0x656C626173694465)
    {
      v8 = 1;
      *v23 = 1;
      v25 = *a1;
      v68 = 0;
      v26 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v25, &v68);
      v27 = v68;
      if (!v26)
      {
        v27 = 0;
      }

      v28 = a1[6];
      *v28 = v27;
      *(v28 + 8) = v26;
      if ((*(a1[6] + 8) & 1) == 0)
      {
        v29 = *a1;
        v30 = (*(*v29 + 40))(v29);
        v70 = 259;
        (*(*v29 + 24))(v75, v29, v30, &v68);
        v15 = v75;
        goto LABEL_70;
      }

      goto LABEL_72;
    }

LABEL_67:
    v55 = *a1;
    v56 = (*(*v55 + 40))(v55);
    v64 = "duplicate or unknown struct parameter name: ";
    v65 = 259;
    (*(*v55 + 24))(&v68, v55, v56, &v64);
    if (v68)
    {
      v67 = 261;
      v66[0] = a2;
      v66[1] = a3;
      mlir::Diagnostic::operator<<(&v69, v66);
    }

    v15 = &v68;
    goto LABEL_70;
  }

  if (*a2 != 1853189987 || *(a2 + 4) != 116)
  {
    goto LABEL_67;
  }

  v8 = 1;
  *v16 = 1;
  v18 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v20;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v21 = *a1;
    v22 = (*(*v21 + 40))(v21);
    v70 = 259;
    (*(*v21 + 24))(v76, v21, v22, &v68);
    v15 = v76;
    goto LABEL_70;
  }

LABEL_72:
  v57 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopUnrollAttr::print(mlir::LLVM::LoopUnrollAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 7uLL)
  {
    *v13 = 0x203D20746E756F63;
    *(v12 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v12, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8236;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ", ", 2uLL);
  }

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 0x10)
  {
    *(v17 + 16) = 32;
    *v17 = *"runtimeDisable = ";
    *(v16 + 4) += 17;
  }

  else
  {
    llvm::raw_ostream::write(v16, "runtimeDisable = ", 0x11uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

LABEL_39:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 6uLL)
    {
      *(v21 + 3) = 540876908;
      *v21 = 1819047270;
      *(v20 + 4) += 7;
    }

    else
    {
      llvm::raw_ostream::write(v20, "full = ", 7uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

LABEL_48:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if ((*(v24 + 3) - v25) > 0x12)
  {
    *(v25 + 15) = 540876900;
    *v25 = *"followupUnrolled = ";
    *(v24 + 4) += 19;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupUnrolled = ", 0x13uLL);
  }

  v9 = *this;
  if (*(*this + 40))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
  {
    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if (*(v26 + 3) - v27 > 1uLL)
    {
      *v27 = 8236;
      *(v26 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v26, ", ", 2uLL);
    }

LABEL_57:
    v28 = (*(*a2 + 16))(a2);
    v29 = *(v28 + 4);
    if ((*(v28 + 3) - v29) > 0x13)
    {
      *(v29 + 16) = 540876914;
      *v29 = *"followupRemainder = ";
      *(v28 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v28, "followupRemainder = ", 0x14uLL);
    }

    v9 = *this;
    if (*(*this + 48))
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) - v31 > 1uLL)
  {
    *v31 = 8236;
    *(v30 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v30, ", ", 2uLL);
  }

LABEL_66:
  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 0xDuLL)
  {
    qmemcpy(v33, "followupAll = ", 14);
    *(v32 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v32, "followupAll = ", 0xEuLL);
  }

  if (*(*this + 56))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v35 = *(result + 4);
  if (*(result + 3) == v35)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v35 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v27 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v14[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id;
  v14[1] = a1;
  v19[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail27LoopUnrollAndJamAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20LoopUnrollAndJamAttrEJNS1_8BoolAttrENS1_11IntegerAttrENS2_18LoopAnnotationAttrESF_SF_SF_SF_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS5_;
  v19[1] = v14;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v21 = ((a2 >> 4) ^ (a2 >> 9));
  v22 = ((a3 >> 4) ^ (a3 >> 9));
  v20 = 0;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v21, &v20, v23, v24, (a4 >> 4) ^ (a4 >> 9));
  v11 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v21, v20, v10, v24, v8, &v16, &v17, &v18);
  v20 = v15;
  v21 = v15;
  v22 = v19;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnrollAndJamAttr,void>::id, v11, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnrollAndJamAttrStorage,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnrollAndJamAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v21);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser *a1)
{
  v39[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v37) = 0;
  v38 = 0;
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  LOBYTE(v31) = 0;
  v32 = 0;
  LOBYTE(v29) = 0;
  v30 = 0;
  LOBYTE(v27) = 0;
  v28 = 0;
  LOBYTE(v25) = 0;
  v26 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_32;
  }

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21[0] = a1;
  v21[1] = &v24 + 3;
  v21[2] = &v37;
  v21[3] = &v24 + 2;
  v21[4] = &v35;
  v21[5] = &v24 + 1;
  v21[6] = &v33;
  v21[7] = &v24;
  v21[8] = &v31;
  v21[9] = &v23 + 1;
  v21[10] = &v29;
  v21[11] = &v23;
  v21[12] = &v27;
  v21[13] = &v22;
  v21[14] = &v25;
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 416))(a1, &v19))
  {
    v2 = v19;
    for (i = v20; mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v21, v2, i); i = v18)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v17))
      {
        v13 = (*(*a1 + 40))(a1);
        v15 = "expected a parameter name in struct";
        v16 = 259;
        (*(*a1 + 24))(v39, a1, v13, &v15);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
        goto LABEL_32;
      }

      v2 = v17;
    }

    goto LABEL_32;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v38)
  {
    v5 = v37;
  }

  else
  {
    v5 = 0;
  }

  if (v36)
  {
    v6 = v35;
  }

  else
  {
    v6 = 0;
  }

  if (v34)
  {
    v7 = v33;
  }

  else
  {
    v7 = 0;
  }

  if (v32)
  {
    v8 = v31;
  }

  else
  {
    v8 = 0;
  }

  if (v30)
  {
    v9 = v29;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    v10 = v27;
  }

  else
  {
    v10 = 0;
  }

  if (v26)
  {
    v11 = v25;
  }

  else
  {
    v11 = 0;
  }

  result = mlir::LLVM::LoopUnrollAndJamAttr::get(v4, v5, v6, v7, v8, v9, v10, v11);
LABEL_33:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnrollAndJamAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v79[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_67;
  }

  v6 = a1[1];
  if ((*v6 & 1) == 0 && a3 == 7)
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_63;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v70 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v70);
    v11 = v70;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v72 = 259;
      (*(*v13 + 24))(v79, v13, v14, &v70);
      v15 = v79;
LABEL_66:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_67:
      v8 = 0;
      goto LABEL_68;
    }

    goto LABEL_68;
  }

  v16 = a1[3];
  if ((*v16 & 1) != 0 || a3 != 5)
  {
    v23 = a1[5];
    v24 = a3 != 13;
    if ((*v23 & 1) == 0 && a3 == 13)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 5) == 0x726574754F707577)
      {
        v8 = 1;
        *v23 = 1;
        v46 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v47 = a1[6];
        *v47 = v46;
        *(v47 + 8) = v48;
        if (*(a1[6] + 8))
        {
          goto LABEL_68;
        }

        v49 = *a1;
        v50 = (*(*v49 + 40))(v49);
        v72 = 259;
        (*(*v49 + 24))(v77, v49, v50, &v70);
        v15 = v77;
        goto LABEL_66;
      }

      v24 = 0;
    }

    v26 = a1[7];
    if ((*v26 & 1) == 0 && !v24 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 5) == 0x72656E6E49707577)
    {
      v8 = 1;
      *v26 = 1;
      v51 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
      v52 = a1[8];
      *v52 = v51;
      *(v52 + 8) = v53;
      if (*(a1[8] + 8))
      {
        goto LABEL_68;
      }

      v54 = *a1;
      v55 = (*(*v54 + 40))(v54);
      v72 = 259;
      (*(*v54 + 24))(v76, v54, v55, &v70);
      v15 = v76;
      goto LABEL_66;
    }

    v28 = a1[9];
    v29 = a3 != 22;
    if ((*v28 & 1) == 0 && a3 == 22)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 14) == 0x726574754F726564)
      {
        v8 = 1;
        *v28 = 1;
        v56 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v57 = a1[10];
        *v57 = v56;
        *(v57 + 8) = v58;
        if (*(a1[10] + 8))
        {
          goto LABEL_68;
        }

        v59 = *a1;
        v60 = (*(*v59 + 40))(v59);
        v72 = 259;
        (*(*v59 + 24))(v75, v59, v60, &v70);
        v15 = v75;
        goto LABEL_66;
      }

      v29 = 0;
    }

    v32 = a1[11];
    if ((*v32 & 1) != 0 || v29)
    {
      v40 = a1[13];
      if ((*v40 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
      {
        v8 = 1;
        *v40 = 1;
        v61 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v62 = a1[14];
        *v62 = v61;
        *(v62 + 8) = v63;
        if (*(a1[14] + 8))
        {
          goto LABEL_68;
        }

        v64 = *a1;
        v65 = (*(*v64 + 40))(v64);
        v72 = 259;
        (*(*v64 + 24))(v73, v64, v65, &v70);
        v15 = v73;
        goto LABEL_66;
      }

      goto LABEL_63;
    }

    if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x65646E69616D6552 && *(a2 + 14) == 0x72656E6E49726564)
    {
      v8 = 1;
      *v32 = 1;
      v35 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
      v36 = a1[12];
      *v36 = v35;
      *(v36 + 8) = v37;
      if ((*(a1[12] + 8) & 1) == 0)
      {
        v38 = *a1;
        v39 = (*(*v38 + 40))(v38);
        v72 = 259;
        (*(*v38 + 24))(v74, v38, v39, &v70);
        v15 = v74;
        goto LABEL_66;
      }

      goto LABEL_68;
    }

LABEL_63:
    v42 = *a1;
    v43 = (*(*v42 + 40))(v42);
    v66 = "duplicate or unknown struct parameter name: ";
    v67 = 259;
    (*(*v42 + 24))(&v70, v42, v43, &v66);
    if (v70)
    {
      v69 = 261;
      v68[0] = a2;
      v68[1] = a3;
      mlir::Diagnostic::operator<<(&v71, v68);
    }

    v15 = &v70;
    goto LABEL_66;
  }

  if (*a2 != 1853189987 || *(a2 + 4) != 116)
  {
    goto LABEL_63;
  }

  v8 = 1;
  *v16 = 1;
  v18 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
  v19 = a1[4];
  *v19 = v18;
  *(v19 + 8) = v20;
  if ((*(a1[4] + 8) & 1) == 0)
  {
    v21 = *a1;
    v22 = (*(*v21 + 40))(v21);
    v72 = 259;
    (*(*v21 + 24))(v78, v21, v22, &v70);
    v15 = v78;
    goto LABEL_66;
  }

LABEL_68:
  v44 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopUnrollAndJamAttr::print(mlir::LLVM::LoopUnrollAndJamAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_26;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          if (!v6[6])
          {
            if (!v6[7])
            {
              goto LABEL_71;
            }

            goto LABEL_66;
          }

          goto LABEL_57;
        }

        goto LABEL_48;
      }

      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 7uLL)
  {
    *v13 = 0x203D20746E756F63;
    *(v12 + 4) += 8;
  }

  else
  {
    llvm::raw_ostream::write(v12, "count = ", 8uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    (*(*a2 + 40))(a2);
    v9 = *this;
  }

LABEL_26:
  if (!v9[3])
  {
    goto LABEL_35;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8236;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ", ", 2uLL);
  }

LABEL_30:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 0xFuLL)
  {
    *v17 = *"followupOuter = ";
    *(v16 + 4) += 16;
  }

  else
  {
    llvm::raw_ostream::write(v16, "followupOuter = ", 0x10uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
    v9 = *this;
  }

LABEL_35:
  if (v9[4])
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

LABEL_39:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (*(v20 + 3) - v21 > 0xFuLL)
    {
      *v21 = *"followupInner = ";
      *(v20 + 4) += 16;
    }

    else
    {
      llvm::raw_ostream::write(v20, "followupInner = ", 0x10uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_53;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

LABEL_48:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 0x18uLL)
  {
    qmemcpy(v25, "followupRemainderOuter = ", 25);
    *(v24 + 4) += 25;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupRemainderOuter = ", 0x19uLL);
  }

  v9 = *this;
  if (*(*this + 40))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
    v9 = *this;
  }

LABEL_53:
  if (v9[6])
  {
    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if (*(v26 + 3) - v27 > 1uLL)
    {
      *v27 = 8236;
      *(v26 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v26, ", ", 2uLL);
    }

LABEL_57:
    v28 = (*(*a2 + 16))(a2);
    v29 = *(v28 + 4);
    if (*(v28 + 3) - v29 > 0x18uLL)
    {
      qmemcpy(v29, "followupRemainderInner = ", 25);
      *(v28 + 4) += 25;
    }

    else
    {
      llvm::raw_ostream::write(v28, "followupRemainderInner = ", 0x19uLL);
    }

    v9 = *this;
    if (*(*this + 48))
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
      v9 = *this;
    }
  }

  if (!v9[7])
  {
    goto LABEL_71;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (*(v30 + 3) - v31 > 1uLL)
  {
    *v31 = 8236;
    *(v30 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v30, ", ", 2uLL);
  }

LABEL_66:
  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) - v33 > 0xDuLL)
  {
    qmemcpy(v33, "followupAll = ", 14);
    *(v32 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v32, "followupAll = ", 0xEuLL);
  }

  if (*(*this + 56))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
  }

LABEL_71:
  result = (*(*a2 + 16))(a2);
  v35 = *(result + 4);
  if (*(result + 3) == v35)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v35 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopLICMAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id;
  v7[1] = a1;
  v10[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail19LoopLICMAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_12LoopLICMAttrEJNS1_8BoolAttrESD_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v10[1] = v7;
  v9[0] = a2;
  v9[1] = a3;
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(&v11, 0, v12, &v12[3] + 8, a3);
  v8 = v9;
  v11 = v9;
  *&v12[0] = v10;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopLICMAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopLICMAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopLICMAttrStorage,mlir::BoolAttr,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopLICMAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v11);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser *a1)
{
  v22[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v20) = 0;
  v21 = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = 0;
  v16[0] = a1;
  v16[1] = &v17 + 1;
  v16[2] = &v20;
  v16[3] = &v17;
  v16[4] = &v18;
  v14 = 0;
  v15 = 0;
  if ((*(*a1 + 416))(a1, &v14))
  {
    v2 = v14;
    for (i = v15; mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v16, v2, i); i = v13)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v12 = 0;
      v13 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v12))
      {
        v8 = (*(*a1 + 40))(a1);
        v10 = "expected a parameter name in struct";
        v11 = 259;
        (*(*a1 + 24))(v22, a1, v8, &v10);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
        goto LABEL_17;
      }

      v2 = v12;
    }

    goto LABEL_17;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v21)
  {
    v5 = v20;
  }

  else
  {
    v5 = 0;
  }

  if (v19)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  result = mlir::LLVM::LoopLICMAttr::get(v4, v5, v6);
LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopLICMAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    if ((*v16 & 1) != 0 || a3 != 17 || (*a2 == 0x696E6F6973726576 ? (v17 = *(a2 + 8) == 0x6C6261736944676ELL) : (v17 = 0), v17 ? (v18 = *(a2 + 16) == 101) : (v18 = 0), !v18))
    {
LABEL_22:
      v19 = *a1;
      v20 = (*(*v19 + 40))(v19);
      v29 = "duplicate or unknown struct parameter name: ";
      v30 = 259;
      (*(*v19 + 24))(&v33, v19, v20, &v29);
      if (v33)
      {
        v32 = 261;
        v31[0] = a2;
        v31[1] = a3;
        mlir::Diagnostic::operator<<(&v34, v31);
      }

      v15 = &v33;
      goto LABEL_25;
    }

    v8 = 1;
    *v16 = 1;
    v23 = *a1;
    v33 = 0;
    v24 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v23, &v33);
    v25 = v33;
    if (!v24)
    {
      v25 = 0;
    }

    v26 = a1[4];
    *v26 = v25;
    *(v26 + 8) = v24;
    if ((*(a1[4] + 8) & 1) == 0)
    {
      v27 = *a1;
      v28 = (*(*v27 + 40))(v27);
      v35 = 259;
      (*(*v27 + 24))(v36, v27, v28, &v33);
      v15 = v36;
      goto LABEL_25;
    }
  }

  else
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_22;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v33 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v33);
    v11 = v33;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v35 = 259;
      (*(*v13 + 24))(v37, v13, v14, &v33);
      v15 = v37;
LABEL_25:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_26:
      v8 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopLICMAttr::print(mlir::LLVM::LoopLICMAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (!*(*this + 8))
  {
    if (!*(*this + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 9)
  {
    *(v7 + 8) = 8253;
    *v7 = *"disable = ";
    *(v6 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "disable = ", 0xAuLL);
  }

  v8 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v8 = *this;
  }

  if (*(v8 + 16))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if ((*(v11 + 3) - v12) > 0x13)
    {
      *(v12 + 16) = 540876901;
      *v12 = *"versioningDisable = ";
      *(v11 + 4) += 20;
    }

    else
    {
      llvm::raw_ostream::write(v11, "versioningDisable = ", 0x14uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

LABEL_21:
  result = (*(*a2 + 16))(a2);
  v14 = *(result + 4);
  if (*(result + 3) == v14)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v14 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopDistributeAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id;
  v10[1] = a1;
  v16[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopDistributeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopDistributeAttrEJNS1_8BoolAttrENS2_18LoopAnnotationAttrESE_SE_SE_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v16[1] = v10;
  v12[0] = a2;
  v12[1] = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  memset(v18, 0, sizeof(v18));
  v19 = 0xFF51AFD7ED558CCDLL;
  v17 = ((a2 >> 4) ^ (a2 >> 9));
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(&v17, 0, v18, &v18[3] + 8, a3, &v13, &v14, &v15);
  v11 = v12;
  v17 = v12;
  *&v18[0] = v16;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v6 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopDistributeAttr,void>::id, v7, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopDistributeAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopDistributeAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopDistributeAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v17);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser *a1)
{
  v32[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v30) = 0;
  v31 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_26;
  }

  v21 = 0;
  v20 = 0;
  v19[0] = a1;
  v19[1] = &v21 + 3;
  v19[2] = &v30;
  v19[3] = &v21 + 2;
  v19[4] = &v28;
  v19[5] = &v21 + 1;
  v19[6] = &v26;
  v19[7] = &v21;
  v19[8] = &v24;
  v19[9] = &v20;
  v19[10] = &v22;
  v17 = 0;
  v18 = 0;
  if ((*(*a1 + 416))(a1, &v17))
  {
    v2 = v17;
    for (i = v18; mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v19, v2, i); i = v16)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v15 = 0;
      v16 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v15))
      {
        v11 = (*(*a1 + 40))(a1);
        v13 = "expected a parameter name in struct";
        v14 = 259;
        (*(*a1 + 24))(v32, a1, v11, &v13);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
        goto LABEL_26;
      }

      v2 = v15;
    }

    goto LABEL_26;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_26:
    result = 0;
    goto LABEL_27;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v31)
  {
    v5 = v30;
  }

  else
  {
    v5 = 0;
  }

  if (v29)
  {
    v6 = v28;
  }

  else
  {
    v6 = 0;
  }

  if (v27)
  {
    v7 = v26;
  }

  else
  {
    v7 = 0;
  }

  if (v25)
  {
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  if (v23)
  {
    v9 = v22;
  }

  else
  {
    v9 = 0;
  }

  result = mlir::LLVM::LoopDistributeAttr::get(v4, v5, v6, v7, v8, v9);
LABEL_27:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopDistributeAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v62[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_51;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    v17 = a3 != 18;
    if ((*v16 & 1) == 0 && a3 == 18)
    {
      if (*a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x656469636E696F43 && *(a2 + 16) == 29806)
      {
        v8 = 1;
        *v16 = 1;
        v36 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v37 = a1[4];
        *v37 = v36;
        *(v37 + 8) = v38;
        if (*(a1[4] + 8))
        {
          goto LABEL_52;
        }

        v39 = *a1;
        v40 = (*(*v39 + 40))(v39);
        v57 = 259;
        (*(*v39 + 24))(v61, v39, v40, &v55);
        v15 = v61;
        goto LABEL_50;
      }

      v17 = 0;
    }

    v20 = a1[5];
    if ((*v20 & 1) == 0 && !v17)
    {
      v21 = *a2 == 0x7075776F6C6C6F66 && *(a2 + 8) == 0x69746E6575716553;
      if (v21 && *(a2 + 16) == 27745)
      {
        v8 = 1;
        *v20 = 1;
        v41 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v42 = a1[6];
        *v42 = v41;
        *(v42 + 8) = v43;
        if (*(a1[6] + 8))
        {
          goto LABEL_52;
        }

        v44 = *a1;
        v45 = (*(*v44 + 40))(v44);
        v57 = 259;
        (*(*v44 + 24))(v60, v44, v45, &v55);
        v15 = v60;
        goto LABEL_50;
      }
    }

    v23 = a1[7];
    if ((*v23 & 1) != 0 || a3 != 16)
    {
      v30 = a1[9];
      if ((*v30 & 1) == 0 && a3 == 11 && *a2 == 0x7075776F6C6C6F66 && *(a2 + 3) == 0x6C6C417075776F6CLL)
      {
        v8 = 1;
        *v30 = 1;
        v46 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
        v47 = a1[10];
        *v47 = v46;
        *(v47 + 8) = v48;
        if (*(a1[10] + 8))
        {
          goto LABEL_52;
        }

        v49 = *a1;
        v50 = (*(*v49 + 40))(v49);
        v57 = 259;
        (*(*v49 + 24))(v58, v49, v50, &v55);
        v15 = v58;
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    if (*a2 != 0x7075776F6C6C6F66 || *(a2 + 8) != 0x6B6361626C6C6146)
    {
LABEL_47:
      v32 = *a1;
      v33 = (*(*v32 + 40))(v32);
      v51 = "duplicate or unknown struct parameter name: ";
      v52 = 259;
      (*(*v32 + 24))(&v55, v32, v33, &v51);
      if (v55)
      {
        v54 = 261;
        v53[0] = a2;
        v53[1] = a3;
        mlir::Diagnostic::operator<<(&v56, v53);
      }

      v15 = &v55;
      goto LABEL_50;
    }

    v8 = 1;
    *v23 = 1;
    v25 = mlir::FieldParser<mlir::LLVM::LoopAnnotationAttr,mlir::LLVM::LoopAnnotationAttr>::parse(*a1);
    v26 = a1[8];
    *v26 = v25;
    *(v26 + 8) = v27;
    if ((*(a1[8] + 8) & 1) == 0)
    {
      v28 = *a1;
      v29 = (*(*v28 + 40))(v28);
      v57 = 259;
      (*(*v28 + 24))(v59, v28, v29, &v55);
      v15 = v59;
      goto LABEL_50;
    }
  }

  else
  {
    if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
    {
      goto LABEL_47;
    }

    v8 = 1;
    *v6 = 1;
    v9 = *a1;
    v55 = 0;
    v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v55);
    v11 = v55;
    if (!v10)
    {
      v11 = 0;
    }

    v12 = a1[2];
    *v12 = v11;
    *(v12 + 8) = v10;
    if ((*(a1[2] + 8) & 1) == 0)
    {
      v13 = *a1;
      v14 = (*(*v13 + 40))(v13);
      v57 = 259;
      (*(*v13 + 24))(v62, v13, v14, &v55);
      v15 = v62;
LABEL_50:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_51:
      v8 = 0;
    }
  }

LABEL_52:
  v34 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopDistributeAttr::print(mlir::LLVM::LoopDistributeAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  v6 = *this;
  if (*(*this + 8))
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = *(v7 + 4);
    if ((*(v7 + 3) - v8) > 9)
    {
      *(v8 + 8) = 8253;
      *v8 = *"disable = ";
      *(v7 + 4) += 10;
    }

    else
    {
      llvm::raw_ostream::write(v7, "disable = ", 0xAuLL);
    }

    v9 = *this;
    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
      v9 = *this;
    }

    if (!v9[2])
    {
      goto LABEL_24;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 1uLL)
    {
      *v11 = 8236;
      *(v10 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v10, ", ", 2uLL);
    }
  }

  else if (!v6[2])
  {
    if (!v6[3])
    {
      if (!v6[4])
      {
        if (!v6[5])
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }

      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) - v13 > 0x14uLL)
  {
    qmemcpy(v13, "followupCoincident = ", 21);
    *(v12 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v12, "followupCoincident = ", 0x15uLL);
  }

  v9 = *this;
  if (*(*this + 16))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
    v9 = *this;
  }

LABEL_24:
  if (!v9[3])
  {
    goto LABEL_33;
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8236;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ", ", 2uLL);
  }

LABEL_28:
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) - v17 > 0x14uLL)
  {
    qmemcpy(v17, "followupSequential = ", 21);
    *(v16 + 4) += 21;
  }

  else
  {
    llvm::raw_ostream::write(v16, "followupSequential = ", 0x15uLL);
  }

  v9 = *this;
  if (*(*this + 24))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
    v9 = *this;
  }

LABEL_33:
  if (v9[4])
  {
    v18 = (*(*a2 + 16))(a2);
    v19 = *(v18 + 4);
    if (*(v18 + 3) - v19 > 1uLL)
    {
      *v19 = 8236;
      *(v18 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v18, ", ", 2uLL);
    }

LABEL_37:
    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if ((*(v20 + 3) - v21) > 0x12)
    {
      *(v21 + 15) = 540876907;
      *v21 = *"followupFallback = ";
      *(v20 + 4) += 19;
    }

    else
    {
      llvm::raw_ostream::write(v20, "followupFallback = ", 0x13uLL);
    }

    v9 = *this;
    if (*(*this + 32))
    {
      mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
      v9 = *this;
    }
  }

  if (!v9[5])
  {
    goto LABEL_51;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) - v23 > 1uLL)
  {
    *v23 = 8236;
    *(v22 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v22, ", ", 2uLL);
  }

LABEL_46:
  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) - v25 > 0xDuLL)
  {
    qmemcpy(v25, "followupAll = ", 14);
    *(v24 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v24, "followupAll = ", 0xEuLL);
  }

  if (*(*this + 40))
  {
    mlir::AsmPrinter::printStrippedAttrOrType<mlir::LLVM::LoopAnnotationAttr,(void *)0>(a2);
  }

LABEL_51:
  result = (*(*a2 + 16))(a2);
  v27 = *(result + 4);
  if (*(result + 3) == v27)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v27 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopPipelineAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id;
  v7[1] = a1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopPipelineAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopPipelineAttrEJNS1_8BoolAttrENS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v11[1] = v7;
  v9 = a2;
  v10 = a3;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = ((a2 >> 4) ^ (a2 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(&v12, 0, v13, &v13[3] + 8, &v10);
  v8 = &v9;
  v12 = &v9;
  *&v13[0] = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPipelineAttr,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPipelineAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPipelineAttrStorage,mlir::BoolAttr,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPipelineAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser *a1)
{
  v22[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v20) = 0;
  v21 = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = 0;
  v16[0] = a1;
  v16[1] = &v17 + 1;
  v16[2] = &v20;
  v16[3] = &v17;
  v16[4] = &v18;
  v14 = 0;
  v15 = 0;
  if ((*(*a1 + 416))(a1, &v14))
  {
    v2 = v14;
    for (i = v15; mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v16, v2, i); i = v13)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v12 = 0;
      v13 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v12))
      {
        v8 = (*(*a1 + 40))(a1);
        v10 = "expected a parameter name in struct";
        v11 = 259;
        (*(*a1 + 24))(v22, a1, v8, &v10);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
        goto LABEL_17;
      }

      v2 = v12;
    }

    goto LABEL_17;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v21)
  {
    v5 = v20;
  }

  else
  {
    v5 = 0;
  }

  if (v19)
  {
    v6 = v18;
  }

  else
  {
    v6 = 0;
  }

  result = mlir::LLVM::LoopPipelineAttr::get(v4, v5, v6);
LABEL_18:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopPipelineAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v36[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_26;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 7)
  {
    v16 = a1[3];
    if ((*v16 & 1) == 0 && a3 == 18)
    {
      v17 = *a2 == 0x6974616974696E69 && *(a2 + 8) == 0x767265746E696E6FLL;
      if (v17 && *(a2 + 16) == 27745)
      {
        v8 = 1;
        *v16 = 1;
        v23 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
        v24 = a1[4];
        *v24 = v23;
        *(v24 + 8) = v25;
        if (*(a1[4] + 8))
        {
          goto LABEL_27;
        }

        v26 = *a1;
        v27 = (*(*v26 + 40))(v26);
        v34 = 259;
        (*(*v26 + 24))(v35, v26, v27, &v32);
        v15 = v35;
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

  if (*a2 != 1634953572 || *(a2 + 3) != 1701601889)
  {
LABEL_22:
    v19 = *a1;
    v20 = (*(*v19 + 40))(v19);
    v28 = "duplicate or unknown struct parameter name: ";
    v29 = 259;
    (*(*v19 + 24))(&v32, v19, v20, &v28);
    if (v32)
    {
      v31 = 261;
      v30[0] = a2;
      v30[1] = a3;
      mlir::Diagnostic::operator<<(&v33, v30);
    }

    v15 = &v32;
    goto LABEL_25;
  }

  v8 = 1;
  *v6 = 1;
  v9 = *a1;
  v32 = 0;
  v10 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v9, &v32);
  v11 = v32;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = a1[2];
  *v12 = v11;
  *(v12 + 8) = v10;
  if ((*(a1[2] + 8) & 1) == 0)
  {
    v13 = *a1;
    v14 = (*(*v13 + 40))(v13);
    v34 = 259;
    (*(*v13 + 24))(v36, v13, v14, &v32);
    v15 = v36;
LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
LABEL_26:
    v8 = 0;
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::LLVM::LoopPipelineAttr::print(mlir::LLVM::LoopPipelineAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (!*(*this + 8))
  {
    if (!*(*this + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 9)
  {
    *(v7 + 8) = 8253;
    *v7 = *"disable = ";
    *(v6 + 4) += 10;
  }

  else
  {
    llvm::raw_ostream::write(v6, "disable = ", 0xAuLL);
  }

  v8 = *this;
  if (*(*this + 8))
  {
    (*(*a2 + 40))(a2);
    v8 = *this;
  }

  if (*(v8 + 16))
  {
    v9 = (*(*a2 + 16))(a2);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 > 1uLL)
    {
      *v10 = 8236;
      *(v9 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v9, ", ", 2uLL);
    }

LABEL_16:
    v11 = (*(*a2 + 16))(a2);
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 > 0x14uLL)
    {
      qmemcpy(v12, "initiationinterval = ", 21);
      *(v11 + 4) += 21;
    }

    else
    {
      llvm::raw_ostream::write(v11, "initiationinterval = ", 0x15uLL);
    }

    if (*(*this + 16))
    {
      (*(*a2 + 40))(a2);
    }
  }

LABEL_21:
  result = (*(*a2 + 16))(a2);
  v14 = *(result + 4);
  if (*(result + 3) == v14)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v14 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopPeeledAttr::get(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail21LoopPeeledAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14LoopPeeledAttrEJNS1_11IntegerAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8 = a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::IntegerAttr>(v10, 0, v10, v11, &v8);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopPeeledAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopPeeledAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopPeeledAttrStorage,mlir::IntegerAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopPeeledAttrStorage *)>,mlir::TypeID,mlir::IntegerAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser *a1)
{
  v19[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v17) = 0;
  v18 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = 0;
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = &v17;
  v13 = 0;
  v14 = 0;
  if ((*(*a1 + 416))(a1, &v13))
  {
    v2 = v13;
    for (i = v14; mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v15, v2, i); i = v12)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v11 = 0;
      v12 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v11))
      {
        v7 = (*(*a1 + 40))(a1);
        v9 = "expected a parameter name in struct";
        v10 = 259;
        (*(*a1 + 24))(v19, a1, v7, &v9);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
        goto LABEL_14;
      }

      v2 = v11;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v18)
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  result = mlir::LLVM::LoopPeeledAttr::get(v4, v5);
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopPeeledAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v25[26] = *MEMORY[0x277D85DE8];
  if ((*(**a1 + 136))(*a1))
  {
    v6 = a1[1];
    if ((*v6 & 1) == 0 && a3 == 5 && (*a2 == 1853189987 ? (v7 = *(a2 + 4) == 116) : (v7 = 0), v7))
    {
      v11 = 1;
      *v6 = 1;
      v14 = mlir::FieldParser<mlir::IntegerAttr,mlir::IntegerAttr>::parse(*a1);
      v15 = a1[2];
      *v15 = v14;
      *(v15 + 8) = v16;
      if (*(a1[2] + 8))
      {
        goto LABEL_13;
      }

      v17 = *a1;
      v18 = (*(**a1 + 40))(*a1);
      v24[12] = 259;
      (*(*v17 + 24))(v25, v17, v18, &v23);
      v10 = v25;
    }

    else
    {
      v8 = *a1;
      v9 = (*(*v8 + 40))(v8);
      v19 = "duplicate or unknown struct parameter name: ";
      v20 = 259;
      (*(*v8 + 24))(&v23, v8, v9, &v19);
      if (v23)
      {
        v22 = 261;
        v21[0] = a2;
        v21[1] = a3;
        mlir::Diagnostic::operator<<(v24, v21);
      }

      v10 = &v23;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v11 = 0;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::raw_ostream *mlir::LLVM::LoopPeeledAttr::print(mlir::LLVM::LoopPeeledAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if (*(v6 + 3) - v7 > 7uLL)
    {
      *v7 = 0x203D20746E756F63;
      *(v6 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v6, "count = ", 8uLL);
    }

    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
    }
  }

  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopUnswitchAttr::get(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v6[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id;
  v6[1] = a1;
  v9[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail23LoopUnswitchAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_16LoopUnswitchAttrEJNS1_8BoolAttrEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v9[1] = v6;
  v8 = a2;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  v3 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::BoolAttr>(v10, 0, v10, v11, a2);
  v7 = &v8;
  *&v10[0] = &v8;
  *(&v10[0] + 1) = v9;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopUnswitchAttr,void>::id, v3, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v7, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopUnswitchAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopUnswitchAttrStorage,mlir::BoolAttr>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopUnswitchAttrStorage *)>,mlir::TypeID,mlir::BoolAttr &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v10);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser *a1)
{
  v19[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v17) = 0;
  v18 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = 0;
  v15[0] = a1;
  v15[1] = &v16;
  v15[2] = &v17;
  v13 = 0;
  v14 = 0;
  if ((*(*a1 + 416))(a1, &v13))
  {
    v2 = v13;
    for (i = v14; mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(v15, v2, i); i = v12)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_8;
      }

      v11 = 0;
      v12 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v11))
      {
        v7 = (*(*a1 + 40))(a1);
        v9 = "expected a parameter name in struct";
        v10 = 259;
        (*(*a1 + 24))(v19, a1, v7, &v9);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
        goto LABEL_14;
      }

      v2 = v11;
    }

    goto LABEL_14;
  }

LABEL_8:
  if (((*(*a1 + 168))(a1) & 1) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v4 = *(*(*a1 + 32))(a1);
  if (v18)
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  result = mlir::LLVM::LoopUnswitchAttr::get(v4, v5);
LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopUnswitchAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(uint64_t *a1, void *a2, uint64_t a3)
{
  v26[26] = *MEMORY[0x277D85DE8];
  if (((*(**a1 + 136))(*a1) & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = a1[1];
  if ((*v6 & 1) != 0 || a3 != 14 || (*a2 == 0x446C616974726170 ? (v7 = *(a2 + 6) == 0x656C62617369446CLL) : (v7 = 0), !v7))
  {
    v8 = *a1;
    v9 = (*(*v8 + 40))(v8);
    v20 = "duplicate or unknown struct parameter name: ";
    v21 = 259;
    (*(*v8 + 24))(&v24, v8, v9, &v20);
    if (v24)
    {
      v23 = 261;
      v22[0] = a2;
      v22[1] = a3;
      mlir::Diagnostic::operator<<(v25, v22);
    }

    v10 = &v24;
    goto LABEL_11;
  }

  v11 = 1;
  *v6 = 1;
  v14 = *a1;
  v24 = 0;
  v15 = mlir::AsmParser::parseAttribute<mlir::BoolAttr>(v14, &v24);
  v16 = v24;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = a1[2];
  *v17 = v16;
  *(v17 + 8) = v15;
  if ((*(a1[2] + 8) & 1) == 0)
  {
    v18 = *a1;
    v19 = (*(**a1 + 40))(*a1);
    v25[12] = 259;
    (*(*v18 + 24))(v26, v18, v19, &v24);
    v10 = v26;
LABEL_11:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
LABEL_12:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::raw_ostream *mlir::LLVM::LoopUnswitchAttr::print(mlir::LLVM::LoopUnswitchAttr *this, mlir::AsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++*(v4 + 4);
  }

  if (*(*this + 8))
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = *(v6 + 4);
    if ((*(v6 + 3) - v7) > 0x10)
    {
      *(v7 + 16) = 32;
      *v7 = *"partialDisable = ";
      *(v6 + 4) += 17;
    }

    else
    {
      llvm::raw_ostream::write(v6, "partialDisable = ", 0x11uLL);
    }

    if (*(*this + 8))
    {
      (*(*a2 + 40))(a2);
    }
  }

  result = (*(*a2 + 16))(a2);
  v9 = *(result + 4);
  if (*(result + 3) == v9)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v9 = 62;
    ++*(result + 4);
  }

  return result;
}

uint64_t mlir::LLVM::LoopAnnotationAttr::get(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, unsigned int *a14, uint64_t a15)
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v77[0] = *MEMORY[0x277D85DE8];
  v18 = *a1;
  v51[0] = &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id;
  v51[1] = a1;
  v57[0] = _ZN4llvm12function_refIFvPN4mlir4LLVM6detail25LoopAnnotationAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18LoopAnnotationAttrEJNS1_8BoolAttrENS2_17LoopVectorizeAttrENS2_18LoopInterleaveAttrENS2_14LoopUnrollAttrENS2_20LoopUnrollAndJamAttrENS2_12LoopLICMAttrENS2_18LoopDistributeAttrENS2_16LoopPipelineAttrENS2_14LoopPeeledAttrENS2_16LoopUnswitchAttrESD_SD_NS1_8FusedLocESN_NS_8ArrayRefINS2_15AccessGroupAttrEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueEST_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSV_E_EEvlS5_;
  v57[1] = v51;
  v52[0] = a2;
  v52[1] = a3;
  v52[2] = a4;
  v52[3] = a5;
  v52[4] = a6;
  v52[5] = a7;
  v52[6] = a8;
  v52[7] = a9;
  v52[8] = a10;
  v52[9] = a11;
  v53 = a12;
  v54 = a13;
  v55 = a14;
  v56 = a15;
  memset(v75, 0, 96);
  v72 = ((a2 >> 4) ^ (a2 >> 9));
  v73 = ((a3 >> 4) ^ (a3 >> 9));
  v75[12] = 0xFF51AFD7ED558CCDLL;
  v74 = (a4 >> 4) ^ (a4 >> 9);
  v58 = 0;
  v19 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v58, v75, &v75[5], (a5 >> 4) ^ (a5 >> 9));
  v59 = v58;
  v20 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v59, v19, &v75[5], (v17 >> 4) ^ (v17 >> 9));
  v60 = v59;
  v21 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v60, v20, &v75[5], (v16 >> 4) ^ (v16 >> 9));
  v61 = v60;
  v22 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v61, v21, &v75[5], (v15 >> 4) ^ (v15 >> 9));
  v62 = v61;
  v23 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v62, v22, &v75[5], (a9 >> 4) ^ (a9 >> 9));
  v63 = v62;
  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v63, v23, &v75[5], (a10 >> 4) ^ (a10 >> 9));
  v64 = v63;
  v25 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v64, v24, &v75[5], (a11 >> 4) ^ (a11 >> 9));
  v65 = v64;
  v26 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v65, v25, &v75[5], (v53 >> 4) ^ (v53 >> 9));
  v66 = v65;
  v27 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v66, v26, &v75[5], (DWORD2(v53) >> 4) ^ (DWORD2(v53) >> 9));
  v67 = v66;
  v28 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v67, v27, &v75[5], (v54 >> 4) ^ (v54 >> 9));
  v68 = v67;
  v31 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v68, v28, &v75[5], (DWORD2(v54) >> 4) ^ (DWORD2(v54) >> 9));
  v32 = v55;
  v33 = v56;
  v69 = v68;
  if (v56)
  {
    v34 = 0;
    v35 = 8 * v56;
    v36 = &v55[2 * v56];
    while (v34 <= 0x38)
    {
      v37 = v34 + 8;
      v38 = *v32;
      v32 += 2;
      *&__src[v34] = (v38 >> 4) ^ (v38 >> 9);
      v34 = v37;
      if (v35 == v37)
      {
        goto LABEL_7;
      }
    }

    v70[0] = xmmword_25D0A0610;
    v70[1] = xmmword_25D0A0620;
    v70[2] = xmmword_25D0A0630;
    v71 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v70, __src, v29, v30);
    v40 = 64;
    if (v34 != 8 * v33)
    {
      do
      {
        v41 = 0;
        do
        {
          v42 = *v32;
          v32 += 2;
          v43 = v41 + 8;
          *&__src[v41] = (v42 >> 4) ^ (v42 >> 9);
          if (v32 == v36)
          {
            break;
          }

          v44 = v41 >= 0x31;
          v41 += 8;
        }

        while (!v44);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v43], v77);
        llvm::hashing::detail::hash_state::mix(v70, __src, v45, v46);
        v40 += v43;
      }

      while (v32 != v36);
    }

    v39 = llvm::hashing::detail::hash_state::finalize(v70, v40);
  }

  else
  {
    v37 = 0;
LABEL_7:
    v39 = llvm::hashing::detail::hash_short(__src, v37, 0xFF51AFD7ED558CCDLL);
  }

  v47 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v72, &v69, v31, &v75[5], v39);
  v48 = llvm::hashing::detail::hash_combine_recursive_helper::combine(&v72, v69, v47, &v75[5]);
  *__src = v52;
  v72 = v52;
  v73 = v57;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v18 + 560), &mlir::detail::TypeIDResolver<mlir::LLVM::LoopAnnotationAttr,void>::id, v48, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, __src, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::LLVM::detail::LoopAnnotationAttrStorage * mlir::StorageUniquer::get<mlir::LLVM::detail::LoopAnnotationAttrStorage,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr>>(llvm::function_ref<void ()(mlir::LLVM::detail::LoopAnnotationAttrStorage *)>,mlir::TypeID,mlir::BoolAttr,mlir::LLVM::LoopVectorizeAttr,mlir::LLVM::LoopInterleaveAttr,mlir::LLVM::LoopUnrollAttr,mlir::LLVM::LoopUnrollAndJamAttr,mlir::LLVM::LoopLICMAttr,mlir::LLVM::LoopDistributeAttr,mlir::LLVM::LoopPipelineAttr,mlir::LLVM::LoopPeeledAttr,mlir::LLVM::LoopUnswitchAttr,mlir::BoolAttr,mlir::BoolAttr,mlir::FusedLoc,mlir::FusedLoc,llvm::ArrayRef<mlir::LLVM::AccessGroupAttr> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v72);
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LLVM::LoopAnnotationAttr::parse(void *a1)
{
  v84 = *MEMORY[0x277D85DE8];
  (*(*a1 + 32))(a1);
  (*(*a1 + 40))(a1);
  LOBYTE(v72) = 0;
  v73 = 0;
  LOBYTE(v70) = 0;
  v71 = 0;
  LOBYTE(v68) = 0;
  v69 = 0;
  LOBYTE(v66) = 0;
  v67 = 0;
  LOBYTE(v64) = 0;
  v65 = 0;
  LOBYTE(v62) = 0;
  v63 = 0;
  LOBYTE(v60) = 0;
  v61 = 0;
  LOBYTE(v58) = 0;
  v59 = 0;
  LOBYTE(v56) = 0;
  v57 = 0;
  LOBYTE(v54) = 0;
  v55 = 0;
  LOBYTE(v52) = 0;
  v53 = 0;
  LOBYTE(v50) = 0;
  v51 = 0;
  LOBYTE(v48) = 0;
  v49 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  LOBYTE(v80) = 0;
  v83 = 0;
  if (((*(*a1 + 152))(a1) & 1) == 0)
  {
    v4 = 0;
    goto LABEL_70;
  }

  v44 = 0;
  v45 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v77 = a1;
  v78 = &v45 + 3;
  v79[0] = &v72;
  v79[1] = &v45 + 2;
  v79[2] = &v70;
  v79[3] = &v45 + 1;
  v79[4] = &v68;
  v79[5] = &v45;
  v79[6] = &v66;
  v79[7] = &v44 + 3;
  v79[8] = &v64;
  v79[9] = &v44 + 2;
  v79[10] = &v62;
  v79[11] = &v44 + 1;
  v79[12] = &v60;
  v79[13] = &v44;
  v79[14] = &v58;
  v79[15] = &v43 + 3;
  v79[16] = &v56;
  v79[17] = &v43 + 2;
  v79[18] = &v54;
  v79[19] = &v43 + 1;
  v79[20] = &v52;
  v79[21] = &v43;
  v79[22] = &v50;
  v79[23] = &v42 + 1;
  v79[24] = &v48;
  v79[25] = &v42;
  v79[26] = &v46;
  v79[27] = &v41;
  v79[28] = &v80;
  v39 = 0;
  v40 = 0;
  if ((*(*a1 + 416))(a1, &v39))
  {
    v2 = v39;
    for (i = v40; mlir::LLVM::LoopAnnotationAttr::parse(mlir::AsmParser &,mlir::Type)::$_0::operator()(&v77, v2, i); i = v38)
    {
      if (((*(*a1 + 128))(a1) & 1) == 0)
      {
        goto LABEL_9;
      }

      v37 = 0;
      v38 = 0;
      if (!mlir::AsmParser::parseKeyword(a1, &v37))
      {
        v24 = (*(*a1 + 40))(a1);
        v74[0] = "expected a parameter name in struct";
        v75[8] = 259;
        (*(*a1 + 24))(v76, a1, v24, v74);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v76);
        goto LABEL_66;
      }

      v2 = v37;
    }

    goto LABEL_66;
  }

LABEL_9:
  if ((*(*a1 + 168))(a1))
  {
    v5 = *(*(*a1 + 32))(a1);
    if (v73)
    {
      v6 = v72;
    }

    else
    {
      v6 = 0;
    }

    if (v71)
    {
      v7 = v70;
    }

    else
    {
      v7 = 0;
    }

    if (v69)
    {
      v8 = v68;
    }

    else
    {
      v8 = 0;
    }

    if (v67)
    {
      v9 = v66;
    }

    else
    {
      v9 = 0;
    }

    if (v65)
    {
      v10 = v64;
    }

    else
    {
      v10 = 0;
    }

    if (v63)
    {
      v11 = v62;
    }

    else
    {
      v11 = 0;
    }

    if (v61)
    {
      v12 = v60;
    }

    else
    {
      v12 = 0;
    }

    if (v59)
    {
      v13 = v58;
    }

    else
    {
      v13 = 0;
    }

    if (v57)
    {
      v14 = v56;
    }

    else
    {
      v14 = 0;
    }

    if (v55)
    {
      v15 = v54;
    }

    else
    {
      v15 = 0;
    }

    if (v53)
    {
      v16 = v52;
    }

    else
    {
      v16 = 0;
    }

    if (v51)
    {
      v17 = v50;
    }

    else
    {
      v17 = 0;
    }

    if (v49)
    {
      v18 = v48;
    }

    else
    {
      v18 = 0;
    }

    if (v47)
    {
      v19 = v46;
    }

    else
    {
      v19 = 0;
    }

    v74[0] = v75;
    v74[1] = 0x600000000;
    v77 = v79;
    v78 = 0x600000000;
    if (v83 != 1 || (v20 = v81) == 0)
    {
      v20 = 0;
      v23 = v79;
LABEL_61:
      *&v28 = v18;
      *(&v28 + 1) = v19;
      *&v27 = v16;
      *(&v27 + 1) = v17;
      v4 = mlir::LLVM::LoopAnnotationAttr::get(v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v27, v28, v23, v20);
      if (v77 != v79)
      {
        free(v77);
      }

      if (v74[0] != v75)
      {
        free(v74[0]);
      }

      goto LABEL_67;
    }

    v29 = v12;
    v30 = v11;
    v31 = v10;
    v32 = v9;
    v33 = v8;
    v34 = v7;
    v35 = v6;
    v36 = v5;
    if (v81 < 7)
    {
      v22 = v79;
      v21 = v81;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v79, v81, 8);
      v21 = v81;
      if (!v81)
      {
LABEL_60:
        LODWORD(v78) = v20;
        v23 = v77;
        v6 = v35;
        v5 = v36;
        v8 = v33;
        v7 = v34;
        v10 = v31;
        v9 = v32;
        v12 = v29;
        v11 = v30;
        goto LABEL_61;
      }

      v22 = v77;
    }

    memcpy(v22, v80, 8 * v21);
    goto LABEL_60;
  }

LABEL_66:
  v4 = 0;
LABEL_67:
  if ((v83 & 1) != 0 && v80 != &v82)
  {
    free(v80);
  }

LABEL_70:
  v25 = *MEMORY[0x277D85DE8];
  return v4;
}