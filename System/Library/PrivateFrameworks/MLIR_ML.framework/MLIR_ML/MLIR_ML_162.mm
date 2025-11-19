uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumns(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (*result)
    {
      v3 = 0;
      v4 = *(result + 4);
      do
      {
        v5 = v4 - a3;
        for (i = a2; i < v4 - a3; v5 = v4 - a3)
        {
          while (1)
          {
            v7 = i + v3 * *(result + 8);
            v8 = *(result + 16);
            v9 = (v8 + 16 * (v7 + a3));
            v10 = v8 + 16 * v7;
            if (!*(v9 + 2))
            {
              break;
            }

            v12 = result;
            v13 = a2;
            v14 = a3;
            llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v8 + 16 * v7), *(v9 + 2), v9);
            a2 = v13;
            result = v12;
            a3 = v14;
            ++i;
            v4 = *(v12 + 4);
            v5 = v4 - v14;
            if (i >= v4 - v14)
            {
              goto LABEL_14;
            }
          }

          v11 = *v9;
          if (*(v10 + 8) > 0x40u && *v10)
          {
            v15 = result;
            v16 = a2;
            v17 = a3;
            MEMORY[0x259C63150](*v10, 0x1000C8000313F17);
            a2 = v16;
            result = v15;
            a3 = v17;
          }

          *v10 = v11;
          *(v10 + 8) = 0;
          ++i;
          v4 = *(result + 4);
        }

LABEL_14:
        while (v5 < v4)
        {
          v18 = *(result + 16) + 16 * (v5 + v3 * *(result + 8));
          if (*(v18 + 8) > 0x40u)
          {
            if (*v18)
            {
              v19 = result;
              v20 = a2;
              v21 = a3;
              MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
              a2 = v20;
              result = v19;
              a3 = v21;
            }
          }

          *v18 = 0;
          *(v18 + 8) = 0;
          ++v5;
          v4 = *(result + 4);
        }

        ++v3;
      }

      while (v3 < *result);
    }

    else
    {
      v4 = *(result + 4);
    }

    *(result + 4) = v4 - a3;
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumn()
{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumns();
}

{
    ;
  }
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = result;
    if ((a2 + a3) < *result)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::copyRow();
    }

    v4 = *result - a3;
    *result = v4;
    v5 = (*(result + 8) * v4);
    v6 = *(result + 24);
    if (v6 != v5)
    {
      if (v6 <= v5)
      {
        if (*(result + 28) < v5)
        {
          llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
        }

        if (v6 != v5)
        {
          v13 = *(result + 16);
          v14 = v13 + 16 * v6;
          do
          {
            *v14 = 0;
            *(v14 + 8) = 0;
            v14 += 16;
          }

          while (v14 != v13 + 16 * v5);
        }
      }

      else
      {
        v7 = 16 * v6;
        v8 = 16 * v6 + *(result + 16) - 8;
        v9 = 16 * v5 - v7;
        v10 = v8;
        do
        {
          v12 = *v10;
          v10 -= 4;
          v11 = v12;
          if (v12 && v11 >= 0x41)
          {
            result = *(v8 - 8);
            if (result)
            {
              result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
            }
          }

          v8 = v10;
          v9 += 16;
        }

        while (v9);
      }

      *(v3 + 24) = v5;
    }
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRow()
{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::removeRows();
}

{
    ;
  }
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::fillRow(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (*(result + 4))
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(result + 16);
        v5 = v4 + 16 * (v3 + *(result + 8) * a2);
        if (!*(a3 + 2))
        {
          break;
        }

        v7 = result;
        v8 = a2;
        v9 = a3;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v4 + 16 * (v3 + *(result + 8) * a2)), *(a3 + 2), a3);
        result = v7;
        a2 = v8;
        a3 = v9;
        if (++v3 >= *(v7 + 4))
        {
          return result;
        }
      }

      v6 = *a3;
      if (*(v5 + 8) > 0x40u)
      {
        if (*v5)
        {
          v10 = result;
          v11 = a2;
          v12 = a3;
          MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
          result = v10;
          a2 = v11;
          a3 = v12;
        }
      }

      *v5 = v6;
      *(v5 + 8) = 0;
      ++v3;
    }

    while (v3 < *(result + 4));
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::fillRow(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = 0;
  if (*(result + 4))
  {
    v3 = 0;
    do
    {
      while (1)
      {
        v4 = *(result + 16);
        v5 = v4 + 16 * (v3 + *(result + 8) * a2);
        if (!v12)
        {
          break;
        }

        v7 = result;
        v8 = a2;
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v4 + 16 * (v3 + *(result + 8) * a2)), v12, &v11);
        result = v7;
        a2 = v8;
        if (++v3 >= *(v7 + 4))
        {
          goto LABEL_11;
        }
      }

      v6 = v11;
      if (*(v5 + 8) > 0x40u && *v5)
      {
        v9 = result;
        v10 = a2;
        MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
        result = v9;
        a2 = v10;
      }

      *v5 = v6;
      *(v5 + 8) = 0;
      ++v3;
    }

    while (v3 < *(result + 4));
LABEL_11:
    if (v12 > 0x40)
    {
      result = v11;
      if (v11)
      {
        return MEMORY[0x259C63150](v11, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::addToRow()
{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::addToRow();
}

{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::addToRow();
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::addToRow(uint64_t result, uint64_t a2, uint64_t *a3, int a4, llvm::APInt *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a5 + 2))
  {
    v21 = result;
    v22 = a2;
    v23 = a5;
    v24 = a3;
    v25 = llvm::detail::operator==(a5, 0);
    a2 = v22;
    a3 = v24;
    a5 = v23;
    v26 = v25;
    result = v21;
    if (v26)
    {
      return result;
    }
  }

  else if (!*a5)
  {
    return result;
  }

  if (*(result + 4))
  {
    v5 = 0;
    while (1)
    {
      if (*(a5 + 2) || *(a3 + 2) || (*a5 * *a3) >> 64 != (*a5 * *a3) >> 63)
      {
        v7 = result;
        v8 = a2;
        v9 = a5;
        v10 = a3;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a5, &v32);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v10, &v30);
        llvm::detail::SlowDynamicAPInt::operator*(&v32, &v30, &v36);
        v35 = v37;
        if (v37 > 0x40)
        {
          llvm::APInt::initSlowCase(&v34, &v36);
        }

        v34 = v36;
        if (v31 >= 0x41 && v30)
        {
          MEMORY[0x259C63150](v30, 0x1000C8000313F17);
        }

        if (v33 >= 0x41 && v32)
        {
          MEMORY[0x259C63150](v32, 0x1000C8000313F17);
        }

        a5 = v9;
        a3 = v10;
        a2 = v8;
        result = v7;
      }

      else
      {
        v34 = *a5 * *a3;
        v35 = 0;
      }

      v6 = (*(result + 16) + 16 * (v5 + *(result + 8) * a2));
      if (v6[2] | v35)
      {
        break;
      }

      if (__OFADD__(*v6, v34))
      {
        v11 = result;
        v12 = a2;
        v13 = a3;
        v14 = a5;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 16) + 16 * (v5 + *(result + 8) * a2), &v30);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v34, &v28);
        llvm::detail::SlowDynamicAPInt::operator+(&v30, &v28, &v32);
        v15 = v33;
        v37 = v33;
        if (v33 > 0x40)
        {
          llvm::APInt::initSlowCase(&v36, &v32);
        }

        v36 = v32;
        if (v33)
        {
          goto LABEL_41;
        }

LABEL_19:
        a5 = v14;
        a3 = v13;
        a2 = v12;
        result = v11;
        if (v6[2] > 0x40 && *v6)
        {
          v27 = v36;
          MEMORY[0x259C63150](*v6, 0x1000C8000313F17, v13);
          result = v11;
          a2 = v12;
          a3 = v13;
          a5 = v14;
          *v6 = v27;
          v6[2] = 0;
          v16 = v37;
          if (v37)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *v6 = v36;
          v6[2] = 0;
          v16 = v37;
          if (v37)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_21;
      }

      *v6 += v34;
LABEL_12:
      if (v35 > 0x40)
      {
        if (v34)
        {
          v17 = result;
          v18 = a2;
          v19 = a5;
          v20 = a3;
          MEMORY[0x259C63150](v34, 0x1000C8000313F17);
          result = v17;
          a2 = v18;
          a3 = v20;
          a5 = v19;
        }
      }

      ++v5;
      a3 += 2;
      if (v5 >= *(result + 4))
      {
        return result;
      }
    }

    v11 = result;
    v12 = a2;
    v13 = a3;
    v14 = a5;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 16) + 16 * (v5 + *(result + 8) * a2), &v30);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v34, &v28);
    llvm::detail::SlowDynamicAPInt::operator+(&v30, &v28, &v32);
    v15 = v33;
    v37 = v33;
    if (v33 > 0x40)
    {
      llvm::APInt::initSlowCase(&v36, &v32);
    }

    v36 = v32;
    if (!v33)
    {
      goto LABEL_19;
    }

LABEL_41:
    if (v6[2])
    {
      llvm::detail::SlowDynamicAPInt::operator=(v6, &v36);
    }

    else
    {
      v6[2] = v15;
      if (v15 > 0x40)
      {
        llvm::APInt::initSlowCase(v6, &v36);
      }

      *v6 = v36;
    }

    a5 = v14;
    a3 = v13;
    a2 = v12;
    result = v11;
    v16 = v37;
    if (v37)
    {
LABEL_54:
      if (v16 >= 0x41 && v36)
      {
        MEMORY[0x259C63150](v36, 0x1000C8000313F17, a3);
        result = v11;
        a2 = v12;
        a3 = v13;
        a5 = v14;
      }
    }

LABEL_21:
    if (v33 >= 0x41 && v32)
    {
      MEMORY[0x259C63150](v32, 0x1000C8000313F17, a3);
      result = v11;
      a2 = v12;
      a3 = v13;
      a5 = v14;
    }

    if (v29 >= 0x41 && v28)
    {
      MEMORY[0x259C63150](v28, 0x1000C8000313F17, a3);
      result = v11;
      a2 = v12;
      a3 = v13;
      a5 = v14;
    }

    if (v31 >= 0x41 && v30)
    {
      MEMORY[0x259C63150](v30, 0x1000C8000313F17, a3);
      result = v11;
      a2 = v12;
      a3 = v13;
      a5 = v14;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::scaleRow(uint64_t result, uint64_t a2, llvm::APInt *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(result + 4))
  {
    v3 = 0;
    while (1)
    {
      v4 = (*(result + 16) + 16 * (v3 + *(result + 8) * a2));
      v5 = *(v4 + 2);
      if (v5 | *(a3 + 2))
      {
        v7 = result;
        v8 = a2;
        if (v5)
        {
          v40 = *(v4 + 2);
          if (v5 > 0x40)
          {
            llvm::APInt::initSlowCase(&v39, v4);
          }

          v39 = *v4;
        }

        else
        {
          v14 = a3;
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v39, *v4);
          a3 = v14;
        }

        v15 = *(a3 + 2);
        if (v15)
        {
          v38 = *(a3 + 2);
          if (v15 > 0x40)
          {
            llvm::APInt::initSlowCase(&v37, a3);
          }

          v16 = a3;
          v37 = *a3;
        }

        else
        {
          v16 = a3;
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v37, *a3);
        }

        llvm::detail::SlowDynamicAPInt::operator*(&v39, &v37, &v41);
        v17 = v42;
        v44 = v42;
        if (v42 > 0x40)
        {
          llvm::APInt::initSlowCase(&v43, &v41);
        }

        v43 = v41;
        a3 = v16;
        a2 = v8;
        result = v7;
        if (!v42)
        {
          v18 = v43;
          if (*(v4 + 2) > 0x40u && *v4)
          {
            v31 = result;
            v32 = a2;
            v33 = a3;
            MEMORY[0x259C63150](*v4, 0x1000C8000313F17);
            result = v31;
            a2 = v32;
            a3 = v33;
            *v4 = v18;
            *(v4 + 2) = 0;
            v19 = v44;
            if (v44)
            {
              goto LABEL_56;
            }
          }

          else
          {
            *v4 = v43;
            *(v4 + 2) = 0;
            v19 = v44;
            if (v44)
            {
              goto LABEL_56;
            }
          }

LABEL_26:
          if (v42 >= 0x41 && v41)
          {
            v20 = result;
            v21 = a2;
            v22 = a3;
            MEMORY[0x259C63150](v41, 0x1000C8000313F17);
            result = v20;
            a2 = v21;
            a3 = v22;
          }

          if (v38 >= 0x41 && v37)
          {
            v23 = result;
            v24 = a2;
            v25 = a3;
            MEMORY[0x259C63150](v37, 0x1000C8000313F17);
            result = v23;
            a2 = v24;
            a3 = v25;
          }

          if (v40 >= 0x41 && v39)
          {
            v26 = result;
            v27 = a2;
            v28 = a3;
            MEMORY[0x259C63150](v39, 0x1000C8000313F17);
            result = v26;
            a2 = v27;
            a3 = v28;
          }

          goto LABEL_6;
        }

        if (*(v4 + 2))
        {
          llvm::detail::SlowDynamicAPInt::operator=(v4, &v43);
          a3 = v16;
          a2 = v8;
          result = v7;
          v19 = v44;
          if (!v44)
          {
            goto LABEL_26;
          }
        }

        else
        {
          *(v4 + 2) = v42;
          if (v17 > 0x40)
          {
            llvm::APInt::initSlowCase(v4, &v43);
          }

          *v4 = v43;
          v19 = v44;
          if (!v44)
          {
            goto LABEL_26;
          }
        }

LABEL_56:
        if (v19 >= 0x41 && v43)
        {
          v34 = result;
          v35 = a2;
          v36 = a3;
          MEMORY[0x259C63150](v43, 0x1000C8000313F17);
          result = v34;
          a2 = v35;
          a3 = v36;
        }

        goto LABEL_26;
      }

      v6 = *v4 * *a3;
      if ((*v4 * *a3) >> 64 != v6 >> 63)
      {
        break;
      }

      *v4 = v6;
LABEL_6:
      if (++v3 >= *(result + 4))
      {
        return result;
      }
    }

    v9 = result;
    v10 = a2;
    v11 = a3;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 16) + 16 * (v3 + *(result + 8) * a2), &v39);
    v12 = v11;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v11, &v37);
    llvm::detail::SlowDynamicAPInt::operator*(&v39, &v37, &v41);
    v13 = v42;
    v44 = v42;
    if (v42 > 0x40)
    {
      llvm::APInt::initSlowCase(&v43, &v41);
    }

    v43 = v41;
    if (v42)
    {
      if (!*(v4 + 2))
      {
        *(v4 + 2) = v42;
        if (v13 > 0x40)
        {
          llvm::APInt::initSlowCase(v4, &v43);
        }

        *v4 = v43;
        a3 = v11;
        a2 = v10;
        result = v9;
        v30 = v44;
        if (!v44)
        {
          goto LABEL_39;
        }

        goto LABEL_67;
      }

      llvm::detail::SlowDynamicAPInt::operator=(v4, &v43);
      a3 = v11;
      a2 = v10;
      result = v9;
      v30 = v44;
      if (!v44)
      {
        goto LABEL_39;
      }
    }

    else
    {
      a3 = v11;
      a2 = v10;
      result = v9;
      v29 = v43;
      if (*(v4 + 2) > 0x40u && *v4)
      {
        MEMORY[0x259C63150](*v4, 0x1000C8000313F17, a3);
        result = v9;
        a2 = v10;
        a3 = v12;
        *v4 = v29;
        *(v4 + 2) = 0;
        v30 = v44;
        if (v44)
        {
          goto LABEL_67;
        }

LABEL_39:
        if (v42 >= 0x41 && v41)
        {
          MEMORY[0x259C63150](v41, 0x1000C8000313F17, a3);
          result = v9;
          a2 = v10;
          a3 = v12;
        }

        if (v38 >= 0x41 && v37)
        {
          MEMORY[0x259C63150](v37, 0x1000C8000313F17, a3);
          result = v9;
          a2 = v10;
          a3 = v12;
        }

        if (v40 >= 0x41)
        {
          if (v39)
          {
            MEMORY[0x259C63150](v39, 0x1000C8000313F17, a3);
            result = v9;
            a2 = v10;
            a3 = v12;
          }
        }

        goto LABEL_6;
      }

      *v4 = v43;
      *(v4 + 2) = 0;
      v30 = v44;
      if (!v44)
      {
        goto LABEL_39;
      }
    }

LABEL_67:
    if (v30 >= 0x41 && v43)
    {
      MEMORY[0x259C63150](v43, 0x1000C8000313F17, a3);
      result = v9;
      a2 = v10;
      a3 = v12;
    }

    goto LABEL_39;
  }

  return result;
}

int *mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn(int *result, uint64_t a2, uint64_t a3, llvm::APInt *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (*(a4 + 2))
  {
    v22 = result;
    v23 = a2;
    v24 = a4;
    v25 = a3;
    v26 = llvm::detail::operator==(a4, 0);
    a2 = v23;
    a3 = v25;
    a4 = v24;
    v27 = v26;
    result = v22;
    if (v27)
    {
      return result;
    }
  }

  else if (!*a4)
  {
    return result;
  }

  v4 = *result;
  if (*result)
  {
    v5 = 0;
    while (1)
    {
      v6 = (*(result + 2) + 16 * (a2 + result[2] * v5));
      if (*(a4 + 2) || *(v6 + 2) || (*a4 * *v6) >> 64 != (*a4 * *v6) >> 63)
      {
        v8 = result;
        v9 = a2;
        v10 = a3;
        v11 = a4;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(a4, &v33);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6, &v31);
        llvm::detail::SlowDynamicAPInt::operator*(&v33, &v31, &v37);
        v36 = v38;
        if (v38 > 0x40)
        {
          llvm::APInt::initSlowCase(&v35, &v37);
        }

        v35 = v37;
        if (v32 >= 0x41 && v31)
        {
          MEMORY[0x259C63150](v31, 0x1000C8000313F17);
        }

        if (v34 >= 0x41 && v33)
        {
          MEMORY[0x259C63150](v33, 0x1000C8000313F17);
        }

        a4 = v11;
        a3 = v10;
        a2 = v9;
        result = v8;
      }

      else
      {
        v35 = *a4 * *v6;
        v36 = 0;
      }

      v7 = (*(result + 2) + 16 * (a3 + result[2] * v5));
      if (v7[2] | v36)
      {
        break;
      }

      if (__OFADD__(*v7, v35))
      {
        v12 = result;
        v13 = a2;
        v14 = a3;
        v15 = a4;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 2) + 16 * (a3 + result[2] * v5), &v31);
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v35, &v29);
        llvm::detail::SlowDynamicAPInt::operator+(&v31, &v29, &v33);
        v16 = v34;
        v38 = v34;
        if (v34 > 0x40)
        {
          llvm::APInt::initSlowCase(&v37, &v33);
        }

        v37 = v33;
        if (v34)
        {
          goto LABEL_41;
        }

LABEL_19:
        a4 = v15;
        a3 = v14;
        a2 = v13;
        result = v12;
        if (v7[2] > 0x40 && *v7)
        {
          v28 = v37;
          MEMORY[0x259C63150](*v7, 0x1000C8000313F17, v14, v15);
          result = v12;
          a2 = v13;
          a3 = v14;
          a4 = v15;
          *v7 = v28;
          v7[2] = 0;
          v17 = v38;
          if (v38)
          {
            goto LABEL_54;
          }
        }

        else
        {
          *v7 = v37;
          v7[2] = 0;
          v17 = v38;
          if (v38)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_21;
      }

      *v7 += v35;
LABEL_12:
      if (v36 > 0x40)
      {
        if (v35)
        {
          v18 = result;
          v19 = a2;
          v20 = a4;
          v21 = a3;
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
          result = v18;
          a2 = v19;
          a3 = v21;
          a4 = v20;
        }
      }

      if (v4 == ++v5)
      {
        return result;
      }
    }

    v12 = result;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 2) + 16 * (a3 + result[2] * v5), &v31);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v35, &v29);
    llvm::detail::SlowDynamicAPInt::operator+(&v31, &v29, &v33);
    v16 = v34;
    v38 = v34;
    if (v34 > 0x40)
    {
      llvm::APInt::initSlowCase(&v37, &v33);
    }

    v37 = v33;
    if (!v34)
    {
      goto LABEL_19;
    }

LABEL_41:
    if (v7[2])
    {
      llvm::detail::SlowDynamicAPInt::operator=(v7, &v37);
    }

    else
    {
      v7[2] = v16;
      if (v16 > 0x40)
      {
        llvm::APInt::initSlowCase(v7, &v37);
      }

      *v7 = v37;
    }

    a4 = v15;
    a3 = v14;
    a2 = v13;
    result = v12;
    v17 = v38;
    if (v38)
    {
LABEL_54:
      if (v17 >= 0x41 && v37)
      {
        MEMORY[0x259C63150](v37, 0x1000C8000313F17, a3, a4);
        result = v12;
        a2 = v13;
        a3 = v14;
        a4 = v15;
      }
    }

LABEL_21:
    if (v34 >= 0x41 && v33)
    {
      MEMORY[0x259C63150](v33, 0x1000C8000313F17, a3, a4);
      result = v12;
      a2 = v13;
      a3 = v14;
      a4 = v15;
    }

    if (v30 >= 0x41 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17, a3, a4);
      result = v12;
      a2 = v13;
      a3 = v14;
      a4 = v15;
    }

    if (v32 >= 0x41 && v31)
    {
      MEMORY[0x259C63150](v31, 0x1000C8000313F17, a3, a4);
      result = v12;
      a2 = v13;
      a3 = v14;
      a4 = v15;
    }

    goto LABEL_12;
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn()
{
  mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
}

{
    ;
  }
}

int *mlir::presburger::Matrix<llvm::DynamicAPInt>::negateColumn(int *result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *result;
  if (*result)
  {
    for (i = 0; v2 != i; ++i)
    {
      v4 = *(result + 2) + 16 * (a2 + result[2] * i);
      if (*(v4 + 8) || *v4 == 0x8000000000000000)
      {
        v7 = result;
        v8 = a2;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 2) + 16 * (a2 + result[2] * i), &v16);
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

        v11 = v21;
        result = v7;
        a2 = v8;
        v5 = (*(v7 + 2) + 16 * (v8 + v7[2] * i));
        if (v21)
        {
          if (v5[2])
          {
            v14 = a2;
            v15 = result;
            llvm::detail::SlowDynamicAPInt::operator=(v5, &v20);
            result = v15;
            a2 = v14;
          }

          else
          {
            v5[2] = v21;
            if (v11 > 0x40)
            {
              llvm::APInt::initSlowCase(v5, &v20);
            }

            *v5 = v20;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v20 = -*v4;
        v21 = 0;
        v5 = (*(result + 2) + 16 * (a2 + result[2] * i));
      }

      v6 = v20;
      if (v5[2] > 0x40 && *v5)
      {
        v12 = result;
        v13 = a2;
        MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
        result = v12;
        a2 = v13;
      }

      *v5 = v6;
      v5[2] = 0;
LABEL_8:
      if (v21 > 0x40)
      {
        if (v20)
        {
          v9 = result;
          v10 = a2;
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
          result = v9;
          a2 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::negateRow(uint64_t result, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(result + 4);
  if (v2)
  {
    for (i = 0; v2 != i; ++i)
    {
      v4 = *(result + 16) + 16 * (i + *(result + 8) * a2);
      if (*(v4 + 8) || *v4 == 0x8000000000000000)
      {
        v7 = result;
        v8 = a2;
        llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(*(result + 16) + 16 * (i + *(result + 8) * a2), &v16);
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

        v11 = v21;
        result = v7;
        a2 = v8;
        v5 = (*(v7 + 16) + 16 * (i + *(v7 + 8) * v8));
        if (v21)
        {
          if (v5[2])
          {
            v14 = a2;
            v15 = result;
            llvm::detail::SlowDynamicAPInt::operator=(v5, &v20);
            result = v15;
            a2 = v14;
          }

          else
          {
            v5[2] = v21;
            if (v11 > 0x40)
            {
              llvm::APInt::initSlowCase(v5, &v20);
            }

            *v5 = v20;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v20 = -*v4;
        v21 = 0;
        v5 = (*(result + 16) + 16 * (i + *(result + 8) * a2));
      }

      v6 = v20;
      if (v5[2] > 0x40 && *v5)
      {
        v12 = result;
        v13 = a2;
        MEMORY[0x259C63150](*v5, 0x1000C8000313F17);
        result = v12;
        a2 = v13;
      }

      *v5 = v6;
      v5[2] = 0;
LABEL_8:
      if (v21 > 0x40)
      {
        if (v20)
        {
          v9 = result;
          v10 = a2;
          MEMORY[0x259C63150](v20, 0x1000C8000313F17);
          result = v9;
          a2 = v10;
        }
      }
    }
  }

  return result;
}

_DWORD *mlir::presburger::Matrix<llvm::DynamicAPInt>::negateMatrix(_DWORD *result)
{
  if (*result)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::negateRow();
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::preMultiplyWithRow@<X0>(unsigned int *a1@<X0>, const llvm::APInt *a2@<X1>, void *a3@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v39 = 0;
  v40 = 0;
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  result = llvm::SmallVectorImpl<llvm::DynamicAPInt>::assign(a3, v6, &v39);
  if (v40 > 0x40)
  {
    result = v39;
    if (v39)
    {
      result = MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    }
  }

  v8 = a1[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a1;
  if (!v9)
  {
    return result;
  }

  v10 = 0;
  v11 = 0x1000C8000313F17;
LABEL_5:
  v12 = 0;
  v13 = a2;
  do
  {
    v14 = *(a1 + 2) + 16 * (v10 + a1[2] * v12);
    v35 = *v14;
    v36 = 0;
    v15 = *(v14 + 8);
    if (v15)
    {
      v36 = *(v14 + 8);
      if (v15 > 0x40)
      {
        llvm::APInt::initSlowCase(&v35, v14);
      }

      v16 = *(v13 + 2);
      if (!v16)
      {
        v17 = *v13;
        goto LABEL_24;
      }
    }

    else
    {
      v16 = *(v13 + 2);
      if (!v16)
      {
        v17 = *v13;
        if ((*v13 * v35) >> 64 == (*v13 * v35) >> 63)
        {
          v37 = *v13 * v35;
          v38 = 0;
          goto LABEL_10;
        }

LABEL_24:
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v33, v17);
        v21 = v36;
        if (v36)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }
    }

    v34 = v16;
    if (v16 > 0x40)
    {
      llvm::APInt::initSlowCase(&v33, v13);
    }

    v33 = *v13;
    v21 = v36;
    if (v36)
    {
LABEL_50:
      v32 = v21;
      if (v21 > 0x40)
      {
        llvm::APInt::initSlowCase(&v31, &v35);
      }

      v31 = v35;
      goto LABEL_55;
    }

LABEL_54:
    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v31, v35);
LABEL_55:
    result = llvm::detail::SlowDynamicAPInt::operator*(&v33, &v31, &v39);
    v38 = v40;
    if (v40 > 0x40)
    {
      llvm::APInt::initSlowCase(&v37, &v39);
    }

    v37 = v39;
    if (v32 >= 0x41)
    {
      result = v31;
      if (v31)
      {
        result = MEMORY[0x259C63150](v31, v11);
      }
    }

    if (v34 >= 0x41)
    {
      result = v33;
      if (v33)
      {
        result = MEMORY[0x259C63150](v33, v11);
      }
    }

LABEL_10:
    v18 = (*a3 + 16 * v10);
    v19 = *(v18 + 2);
    if (v19 | v38)
    {
      if (v19)
      {
        v32 = *(v18 + 2);
        if (v19 > 0x40)
        {
          llvm::APInt::initSlowCase(&v31, v18);
        }

        v31 = *v18;
        v20 = v38;
        if (!v38)
        {
          goto LABEL_37;
        }
      }

      else
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v31, *v18);
        v20 = v38;
        if (!v38)
        {
LABEL_37:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v29, v37);
          goto LABEL_39;
        }
      }

      v30 = v20;
      if (v20 > 0x40)
      {
        llvm::APInt::initSlowCase(&v29, &v37);
      }

      v29 = v37;
LABEL_39:
      result = llvm::detail::SlowDynamicAPInt::operator+(&v31, &v29, &v33);
      v22 = v34;
      v40 = v34;
      if (v34 > 0x40)
      {
        llvm::APInt::initSlowCase(&v39, &v33);
      }

      v39 = v33;
      if (v34)
      {
        if (*(v18 + 2))
        {
          result = llvm::detail::SlowDynamicAPInt::operator=(v18, &v39);
        }

        else
        {
          *(v18 + 2) = v34;
          if (v22 > 0x40)
          {
            llvm::APInt::initSlowCase(v18, &v39);
          }

          *v18 = v39;
        }
      }

      else
      {
        v28 = a2;
        v23 = v11;
        v24 = v39;
        if (*(v18 + 2) > 0x40u)
        {
          result = *v18;
          if (*v18)
          {
            result = MEMORY[0x259C63150](result, v23);
          }
        }

        *v18 = v24;
        *(v18 + 2) = 0;
        v11 = v23;
        a2 = v28;
      }

      v25 = v40;
      if (!v40)
      {
        goto LABEL_73;
      }

LABEL_82:
      if (v25 >= 0x41)
      {
        result = v39;
        if (v39)
        {
          result = MEMORY[0x259C63150](v39, v11);
        }
      }

      goto LABEL_73;
    }

    if (!__OFADD__(*v18, v37))
    {
      *v18 += v37;
      goto LABEL_13;
    }

    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v31, *v18);
    if (v38)
    {
      v30 = v38;
      if (v38 > 0x40)
      {
        llvm::APInt::initSlowCase(&v29, &v37);
      }

      v29 = v37;
    }

    else
    {
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v29, v37);
    }

    result = llvm::detail::SlowDynamicAPInt::operator+(&v31, &v29, &v33);
    v26 = v34;
    v40 = v34;
    if (v34 > 0x40)
    {
      llvm::APInt::initSlowCase(&v39, &v33);
    }

    v39 = v33;
    if (v34)
    {
      if (*(v18 + 2))
      {
        result = llvm::detail::SlowDynamicAPInt::operator=(v18, &v39);
      }

      else
      {
        *(v18 + 2) = v34;
        if (v26 > 0x40)
        {
          llvm::APInt::initSlowCase(v18, &v39);
        }

        *v18 = v39;
      }
    }

    else
    {
      v27 = v39;
      if (*(v18 + 2) > 0x40u)
      {
        result = *v18;
        if (*v18)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      *v18 = v27;
      *(v18 + 2) = 0;
    }

    v25 = v40;
    v11 = 0x1000C8000313F17;
    if (v40)
    {
      goto LABEL_82;
    }

LABEL_73:
    if (v34 >= 0x41)
    {
      result = v33;
      if (v33)
      {
        result = MEMORY[0x259C63150](v33, v11);
      }
    }

    if (v30 >= 0x41)
    {
      result = v29;
      if (v29)
      {
        result = MEMORY[0x259C63150](v29, v11);
      }
    }

    if (v32 >= 0x41)
    {
      result = v31;
      if (v31)
      {
        result = MEMORY[0x259C63150](v31, v11);
      }
    }

LABEL_13:
    if (v38 > 0x40)
    {
      result = v37;
      if (v37)
      {
        result = MEMORY[0x259C63150](v37, v11);
      }
    }

    if (v36 > 0x40)
    {
      result = v35;
      if (v35)
      {
        result = MEMORY[0x259C63150](v35, v11);
      }
    }

    ++v12;
    v13 = (v13 + 16);
  }

  while (v9 != v12);
  while (++v10 != v8)
  {
    v9 = *a1;
    if (*a1)
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::postMultiplyWithColumn@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v36 = 0;
  v37 = 0;
  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  result = llvm::SmallVectorImpl<llvm::DynamicAPInt>::assign(a3, v6, &v36);
  if (v37 > 0x40)
  {
    result = v36;
    if (v36)
    {
      result = MEMORY[0x259C63150](v36, 0x1000C8000313F17);
    }
  }

  v8 = *a1;
  if (!v8)
  {
    return result;
  }

  v9 = a1[1];
  if (!v9)
  {
    return result;
  }

  v10 = 0;
LABEL_5:
  v11 = 0;
  v12 = a2;
  do
  {
    v13 = *(a1 + 2) + 16 * (v11 + v10 * a1[2]);
    v14 = *v13;
    v32 = *v13;
    v33 = 0;
    v15 = *(v13 + 8);
    if (v15)
    {
      v33 = *(v13 + 8);
      if (v15 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v32, v13);
      }

      v16 = (a2 + 16 * v11);
      v31 = v15;
      v30 = v14;
      v20 = *(v16 + 2);
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = (a2 + 16 * v11);
      if (*(v12 + 8))
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v30, v32);
        v20 = *(v16 + 2);
        if (v20)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if ((v32 * *v16) >> 64 == (v32 * *v16) >> 63)
        {
          v34 = v32 * *v16;
          v35 = 0;
          goto LABEL_10;
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v30, v32);
        v20 = *(v12 + 8);
        if (v20)
        {
LABEL_29:
          v29 = v20;
          if (v20 > 0x40)
          {
            llvm::APInt::initSlowCase(&v28, v16);
          }

          v28 = *v16;
          goto LABEL_37;
        }
      }
    }

    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v28, *v16);
LABEL_37:
    result = llvm::detail::SlowDynamicAPInt::operator*(&v30, &v28, &v36);
    v35 = v37;
    if (v37 > 0x40)
    {
      llvm::APInt::initSlowCase(&v34, &v36);
    }

    v34 = v36;
    if (v29 >= 0x41)
    {
      result = v28;
      if (v28)
      {
        result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }
    }

    if (v31 >= 0x41)
    {
      result = v30;
      if (v30)
      {
        result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }
    }

LABEL_10:
    v17 = (*a3 + 16 * v10);
    v18 = *(v17 + 2);
    if (v18 | v35)
    {
      if (v18)
      {
        v29 = *(v17 + 2);
        if (v18 > 0x40)
        {
          llvm::APInt::initSlowCase(&v28, v17);
        }

        v28 = *v17;
        v19 = v35;
        if (!v35)
        {
          goto LABEL_50;
        }
      }

      else
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v28, *v17);
        v19 = v35;
        if (!v35)
        {
LABEL_50:
          llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v26, v34);
          goto LABEL_52;
        }
      }

      v27 = v19;
      if (v19 > 0x40)
      {
        llvm::APInt::initSlowCase(&v26, &v34);
      }

      v26 = v34;
LABEL_52:
      result = llvm::detail::SlowDynamicAPInt::operator+(&v28, &v26, &v30);
      v21 = v31;
      v37 = v31;
      if (v31 > 0x40)
      {
        llvm::APInt::initSlowCase(&v36, &v30);
      }

      v36 = v30;
      if (v31)
      {
        if (*(v17 + 2))
        {
          result = llvm::detail::SlowDynamicAPInt::operator=(v17, &v36);
        }

        else
        {
          *(v17 + 2) = v31;
          if (v21 > 0x40)
          {
            llvm::APInt::initSlowCase(v17, &v36);
          }

          *v17 = v36;
        }
      }

      else
      {
        v22 = v36;
        if (*(v17 + 2) > 0x40u)
        {
          result = *v17;
          if (*v17)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
          }
        }

        *v17 = v22;
        *(v17 + 2) = 0;
      }

      v23 = v37;
      if (!v37)
      {
        goto LABEL_70;
      }

LABEL_79:
      if (v23 >= 0x41)
      {
        result = v36;
        if (v36)
        {
          result = MEMORY[0x259C63150](v36, 0x1000C8000313F17);
        }
      }

      goto LABEL_70;
    }

    if (!__OFADD__(*v17, v34))
    {
      *v17 += v34;
      goto LABEL_13;
    }

    llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v28, *v17);
    if (v35)
    {
      v27 = v35;
      if (v35 > 0x40)
      {
        llvm::APInt::initSlowCase(&v26, &v34);
      }

      v26 = v34;
    }

    else
    {
      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v26, v34);
    }

    result = llvm::detail::SlowDynamicAPInt::operator+(&v28, &v26, &v30);
    v24 = v31;
    v37 = v31;
    if (v31 > 0x40)
    {
      llvm::APInt::initSlowCase(&v36, &v30);
    }

    v36 = v30;
    if (v31)
    {
      if (*(v17 + 2))
      {
        result = llvm::detail::SlowDynamicAPInt::operator=(v17, &v36);
      }

      else
      {
        *(v17 + 2) = v31;
        if (v24 > 0x40)
        {
          llvm::APInt::initSlowCase(v17, &v36);
        }

        *v17 = v36;
      }
    }

    else
    {
      v25 = v36;
      if (*(v17 + 2) > 0x40u)
      {
        result = *v17;
        if (*v17)
        {
          result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
        }
      }

      *v17 = v25;
      *(v17 + 2) = 0;
    }

    v23 = v37;
    if (v37)
    {
      goto LABEL_79;
    }

LABEL_70:
    if (v31 >= 0x41)
    {
      result = v30;
      if (v30)
      {
        result = MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }
    }

    if (v27 >= 0x41)
    {
      result = v26;
      if (v26)
      {
        result = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
      }
    }

    if (v29 >= 0x41)
    {
      result = v28;
      if (v28)
      {
        result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
      }
    }

LABEL_13:
    if (v35 > 0x40)
    {
      result = v34;
      if (v34)
      {
        result = MEMORY[0x259C63150](v34, 0x1000C8000313F17);
      }
    }

    if (v33 > 0x40)
    {
      result = v32;
      if (v32)
      {
        result = MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }
    }

    ++v11;
    v12 += 16;
  }

  while (v9 != v11);
  while (++v10 != v8)
  {
    v9 = a1[1];
    if (a1[1])
    {
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::resize(uint64_t result, int a2, unsigned int a3)
{
  v5 = result;
  v6 = *(result + 4);
  if (v6 > a3)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumns();
  }

  v7 = a3 - v6;
  if (a3 > v6)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns();
  }

  *result = a2;
  v8 = (*(result + 8) * a2);
  v9 = *(result + 24);
  if (v9 != v8)
  {
    if (v9 <= v8)
    {
      if (*(result + 28) < v8)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v9 != v8)
      {
        v16 = *(result + 16);
        v17 = v16 + 16 * v9;
        do
        {
          *v17 = 0;
          *(v17 + 8) = 0;
          v17 += 16;
        }

        while (v17 != v16 + 16 * v8);
      }
    }

    else
    {
      v10 = 16 * v9;
      v11 = 16 * v9 + *(result + 16) - 8;
      v12 = 16 * v8 - v10;
      v13 = v11;
      do
      {
        v15 = *v13;
        v13 -= 4;
        v14 = v15;
        if (v15 && v14 >= 0x41)
        {
          result = *(v11 - 8);
          if (result)
          {
            result = MEMORY[0x259C63150](result, 0x1000C8000313F17, v7);
          }
        }

        v11 = v13;
        v12 += 16;
      }

      while (v12);
    }

    *(v5 + 24) = v8;
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::resizeHorizontally(uint64_t result, unsigned int a2)
{
  v3 = *(result + 4);
  if (v3 > a2)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::removeColumns();
  }

  if (a2 > v3)
  {

    mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns();
  }

  return result;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow(unsigned int *a1)
{
  v1 = *a1;
  *a1 = v1 + 1;
  v2 = a1[2] * (v1 + 1);
  v3 = a1[6];
  if (v3 != v2)
  {
    if (v3 <= v2)
    {
      if (a1[7] < v2)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v3 != v2)
      {
        v12 = *(a1 + 2);
        v13 = v12 + 16 * v3;
        do
        {
          *v13 = 0;
          *(v13 + 8) = 0;
          v13 += 16;
        }

        while (v13 != v12 + 16 * v2);
      }
    }

    else
    {
      v4 = 16 * v3;
      v5 = v4 + *(a1 + 2) - 8;
      v6 = 16 * v2 - v4;
      v7 = v5;
      do
      {
        v9 = *v7;
        v7 -= 4;
        v8 = v9;
        if (v9)
        {
          if (v8 >= 0x41)
          {
            v10 = *(v5 - 8);
            if (v10)
            {
              v11 = a1;
              MEMORY[0x259C63150](v10, 0x1000C8000313F17);
              a1 = v11;
            }
          }
        }

        v5 = v7;
        v6 += 16;
      }

      while (v6);
    }

    a1[6] = v2;
    return *a1 - 1;
  }

  return v1;
}

uint64_t mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = v2 + 1;
  v3 = a1[2] * (v2 + 1);
  v4 = a1[6];
  if (v4 != v3)
  {
    if (v4 <= v3)
    {
      if (a1[7] < v3)
      {
        llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
      }

      if (v4 != v3)
      {
        v14 = *(a1 + 2);
        v15 = v14 + 16 * v4;
        do
        {
          *v15 = 0;
          *(v15 + 8) = 0;
          v15 += 16;
        }

        while (v15 != v14 + 16 * v3);
      }
    }

    else
    {
      v5 = 16 * v4;
      v6 = 16 * v4 + *(a1 + 2) - 8;
      v7 = 16 * v3 - v5;
      v8 = v6;
      do
      {
        v10 = *v8;
        v8 -= 4;
        v9 = v10;
        if (v10)
        {
          if (v9 >= 0x41)
          {
            v11 = *(v6 - 8);
            if (v11)
            {
              v12 = a1;
              v13 = a2;
              MEMORY[0x259C63150](v11, 0x1000C8000313F17);
              a1 = v12;
              a2 = v13;
            }
          }
        }

        v6 = v8;
        v7 += 16;
      }

      while (v7);
    }

    a1[6] = v3;
    v2 = *a1 - 1;
  }

  if (a1[1])
  {
    v16 = 0;
    do
    {
      while (1)
      {
        v17 = *(a1 + 2);
        v18 = v17 + 16 * (v16 + a1[2] * v2);
        if (!*(a2 + 2))
        {
          break;
        }

        v20 = a1;
        v21 = a2;
        llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v17 + 16 * (v16 + a1[2] * v2)), *(a2 + 2), a2);
        a1 = v20;
        ++v16;
        a2 = v21 + 2;
        if (v16 >= v20[1])
        {
          return v2;
        }
      }

      v19 = *a2;
      if (*(v18 + 8) > 0x40u && *v18)
      {
        v22 = a1;
        v23 = a2;
        MEMORY[0x259C63150](*v18, 0x1000C8000313F17);
        a1 = v22;
        a2 = v23;
      }

      *v18 = v19;
      *(v18 + 8) = 0;
      ++v16;
      a2 += 2;
    }

    while (v16 < a1[1]);
  }

  return v2;
}

unsigned int *mlir::presburger::Matrix<llvm::DynamicAPInt>::transpose@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v20 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v5;
  v6 = a2 + 32;
  *(a2 + 16) = v6;
  v7 = v5 * v4;
  *(a2 + 24) = 0x1000000000;
  if (v7)
  {
    if (v7 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v8 = v6 + 16 * v7;
    do
    {
      *v6 = 0;
      *(v6 + 8) = 0;
      v6 += 16;
    }

    while (v6 != v8);
    *(a2 + 24) = v7;
    if (*(a2 + 28) < (*a2 * *(a2 + 8)))
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  v9 = *result;
  if (*result && result[1])
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (v11)
      {
        for (i = 0; i < v11; ++i)
        {
          v13 = (*(v2 + 2) + 16 * (i + v10 * v2[2]));
          v14 = *v13;
          v18 = *v13;
          v19 = 0;
          v15 = *(v13 + 2);
          if (v15)
          {
            v19 = *(v13 + 2);
            if (v15 > 0x40)
            {
              llvm::APInt::initSlowCase(&v18, v13);
            }

            v17 = (*(a2 + 16) + 16 * (v10 + *(a2 + 8) * i));
            if (v17[2])
            {
              result = llvm::detail::SlowDynamicAPInt::operator=(v17, &v18);
            }

            else
            {
              v17[2] = v15;
              *v17 = v18;
            }
          }

          else
          {
            v16 = *(a2 + 16) + 16 * (v10 + *(a2 + 8) * i);
            if (*(v16 + 8) > 0x40u)
            {
              result = *v16;
              if (*v16)
              {
                result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
              }
            }

            *v16 = v14;
            *(v16 + 8) = 0;
          }

          if (v19 > 0x40)
          {
            result = v18;
            if (v18)
            {
              result = MEMORY[0x259C63150](v18, 0x1000C8000313F17);
            }
          }

          v11 = v2[1];
        }

        v9 = *v2;
      }

      ++v10;
    }

    while (v10 < v9);
  }

  return result;
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::getSubMatrix(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v24 = *MEMORY[0x277D85DE8];
  v12 = a3 - a2 + 1;
  v13 = a5 - a4 + 1;
  *a6 = v12;
  *(a6 + 4) = v13;
  *(a6 + 8) = v13;
  v14 = a6 + 32;
  *(a6 + 16) = v14;
  v15 = (v13 * v12);
  *(a6 + 24) = 0x1000000000;
  if (v15)
  {
    if (v15 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v16 = v14 + 16 * v15;
    do
    {
      *v14 = 0;
      *(v14 + 8) = 0;
      v14 += 16;
    }

    while (v14 != v16);
    *(a6 + 24) = v15;
    if (*(a6 + 28) < (*a6 * *(a6 + 8)))
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  if (a3 >= a2 && a5 >= a4)
  {
    v17 = 0;
    do
    {
      v18 = 0;
      do
      {
        v19 = (*(a1 + 16) + 16 * (a4 + v18 + v9 * *(a1 + 8)));
        v22 = *v19;
        v23 = 0;
        v20 = *(v19 + 2);
        if (v20)
        {
          v23 = *(v19 + 2);
          if (v20 > 0x40)
          {
            llvm::APInt::initSlowCase(&v22, v19);
          }

          v21 = (*(a6 + 16) + 16 * (v18 + v17 * *(a6 + 8)));
          if (v21[2])
          {
            llvm::detail::SlowDynamicAPInt::operator=(v21, &v22);
          }

          else
          {
            v21[2] = v20;
            *v21 = v22;
          }
        }

        else
        {
          mlir::presburger::IntegerRelation::getBoundedDirections(*(a6 + 16) + 16 * (v18 + v17 * *(a6 + 8)), &v22);
        }

        if (v23 > 0x40)
        {
          if (v22)
          {
            MEMORY[0x259C63150](v22, 0x1000C8000313F17);
          }
        }

        ++v18;
      }

      while (a4 + v18 <= a5);
      ++v9;
      ++v17;
    }

    while (v9 <= a3);
  }
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::splitByBitset(int *a1@<X0>, uint64_t a2@<X8>)
{
  v28[32] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  LODWORD(v24) = 0;
  HIDWORD(v24) = v3;
  v25 = v3;
  v26 = v28;
  v27 = 0x1000000000;
  LODWORD(v20) = 0;
  HIDWORD(v20) = v3;
  v21 = v23;
  v22 = 0x1000000000;
  if (v4)
  {
    mlir::presburger::Matrix<llvm::DynamicAPInt>::appendExtraRow();
  }

  *a2 = v24;
  *(a2 + 8) = v25;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x1000000000;
  *(a2 + 288) = v20;
  v5 = v22;
  *(a2 + 296) = v3;
  *(a2 + 304) = a2 + 320;
  *(a2 + 312) = 0x1000000000;
  if (v5)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a2 + 304), &v21);
    v6 = v21;
    if (!v22)
    {
      goto LABEL_13;
    }

    v7 = (v21 + 16 * v22 - 8);
    v8 = -16 * v22;
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
  }

  v6 = v21;
LABEL_13:
  if (v6 != v23)
  {
    free(v6);
  }

  v13 = v26;
  if (v27)
  {
    v14 = (v26 + 16 * v27 - 8);
    v15 = -16 * v27;
    v16 = v14;
    do
    {
      v18 = *v16;
      v16 -= 4;
      v17 = v18;
      if (v18)
      {
        if (v17 >= 0x41)
        {
          v19 = *(v14 - 1);
          if (v19)
          {
            MEMORY[0x259C63150](v19, 0x1000C8000313F17);
          }
        }
      }

      v14 = v16;
      v15 += 16;
    }

    while (v15);
    v13 = v26;
  }

  if (v13 != v28)
  {
    free(v13);
  }
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::print(unsigned int *a1, llvm::raw_ostream *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v32 = 1;
  LOWORD(__p) = 45;
  v2 = *a1;
  if (!*a1)
  {
    return;
  }

  v3 = this;
  if (!a1[1])
  {
    goto LABEL_41;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 1;
  while (2)
  {
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = 0;
    v29 = v7;
    do
    {
      v10 = (*(a1 + 2) + 16 * (v9 + a1[2] * v7));
      v46 = *v10;
      v47 = 0;
      v11 = *(v10 + 2);
      if (v11)
      {
        v47 = *(v10 + 2);
        if (v11 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v46, v10);
        }
      }

      __s = 0;
      v42 = 0;
      v43 = 0;
      v34 = 0;
      v38 = 0;
      v39 = 1;
      v36 = 0;
      v37 = 0;
      v35 = 0;
      v33 = &unk_2868A3EF8;
      p_s = &__s;
      llvm::raw_ostream::SetBufferAndMode(&v33, 0, 0, 0);
      llvm::DynamicAPInt::print(&v46, &v33);
      llvm::raw_ostream::~raw_ostream(&v33);
      v12 = SHIBYTE(v43);
      if ((SHIBYTE(v43) & 0x8000000000000000) != 0)
      {
        v14 = __s;
        v16 = v42;
        if (!v42)
        {
          goto LABEL_31;
        }

        v15 = __s + v42;
        if (v42 < 1)
        {
          v19 = __s + v42;
          goto LABEL_20;
        }

        v13 = __p;
      }

      else
      {
        if (!HIBYTE(v43))
        {
          goto LABEL_32;
        }

        v13 = __p;
        v14 = &__s;
        v15 = &__s + SHIBYTE(v43);
        v16 = SHIBYTE(v43);
      }

      v17 = v13;
      v18 = v14;
      do
      {
        v19 = memchr(v18, v17, v16);
        if (!v19)
        {
          break;
        }

        if (*v19 == __p)
        {
          goto LABEL_19;
        }

        v18 = v19 + 1;
        v16 = v15 - v18;
      }

      while (v15 - v18 > 0);
      v19 = v15;
LABEL_19:
      v7 = v29;
LABEL_20:
      if (v19 == v15)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 - v14 + 1;
      }

      if (v6 <= v20)
      {
        v6 = v20;
      }

      v21 = v42;
      if (v12 >= 0)
      {
        v21 = v12;
      }

      v22 = v21 - v20;
      if (v5 <= v22)
      {
        v5 = v22;
      }

      v30 = __PAIR64__(v5, v6);
      if (v12 < 0)
      {
        v14 = __s;
LABEL_31:
        operator delete(v14);
      }

LABEL_32:
      if (v47 > 0x40 && v46)
      {
        MEMORY[0x259C63150](v46, 0x1000C8000313F17);
      }

      ++v9;
      v8 = a1[1];
    }

    while (v9 < v8);
    v2 = *a1;
LABEL_4:
    if (++v7 < v2)
    {
      continue;
    }

    break;
  }

  v3 = this;
  if (v2)
  {
LABEL_41:
    v23 = 0;
    do
    {
      while (1)
      {
        if (a1[1])
        {
          v25 = 0;
          do
          {
            v26 = (*(a1 + 2) + 16 * (v25 + v23 * a1[2]));
            v44 = *v26;
            v45 = 0;
            v27 = *(v26 + 2);
            if (v27)
            {
              v45 = *(v26 + 2);
              if (v27 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v44, v26);
              }
            }

            mlir::presburger::printWithPrintMetrics<llvm::DynamicAPInt>(v3, &v44, 1, &v30);
            if (v45 > 0x40 && v44)
            {
              MEMORY[0x259C63150](v44, 0x1000C8000313F17);
            }

            ++v25;
          }

          while (v25 < a1[1]);
        }

        v24 = *(v3 + 4);
        if (*(v3 + 3) == v24)
        {
          break;
        }

        *v24 = 10;
        ++*(v3 + 4);
        if (++v23 >= *a1)
        {
          goto LABEL_56;
        }
      }

      llvm::raw_ostream::write(v3, "\n", 1uLL);
      ++v23;
    }

    while (v23 < *a1);
LABEL_56:
    if (v32 < 0)
    {
      operator delete(__p);
    }
  }
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::dump(llvm *a1)
{
  llvm::errs(a1);

  mlir::presburger::Matrix<llvm::DynamicAPInt>::print();
}

void mlir::presburger::Matrix<llvm::DynamicAPInt>::moveColumns(uint64_t a1, int a2, int a3, int a4)
{
  if (a3)
  {
    if (a4 != a2)
    {
      mlir::presburger::Matrix<llvm::DynamicAPInt>::insertColumns();
    }
  }
}

unsigned int *mlir::presburger::Matrix<mlir::presburger::Fraction>::Matrix(unsigned int *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  *a1 = a2;
  a1[1] = a3;
  if (a3 <= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a3;
  }

  a1[2] = v7;
  *(a1 + 2) = a1 + 8;
  *(a1 + 3) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(a1 + 2, v7 * a2);
  v8 = *a1;
  if (*a1 <= a4)
  {
    v8 = a4;
  }

  if (a1[7] < v8 * a1[2])
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return a1;
}

{
  *a1 = a2;
  a1[1] = a3;
  if (a3 <= a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = a3;
  }

  a1[2] = v7;
  *(a1 + 2) = a1 + 8;
  *(a1 + 3) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(a1 + 2, v7 * a2);
  v8 = *a1;
  if (*a1 <= a4)
  {
    v8 = a4;
  }

  if (a1[7] < v8 * a1[2])
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return a1;
}

uint64_t *mlir::presburger::Matrix<mlir::presburger::Fraction>::identity@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  *a2 = a1;
  *(a2 + 4) = a1;
  *(a2 + 8) = a1;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x1000000000;
  result = llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a2 + 16), (a1 * a1));
  if (*(a2 + 28) < (*(a2 + 8) * *a2))
  {
    v8 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a1)
  {
    v5 = 0;
    do
    {
      v6 = 1;
      v7 = 0;
      v12 = 1;
      v13 = 0;
      mlir::presburger::Fraction::Fraction(&v8, &v12, &v6);
      if (v13 > 0x40 && v12)
      {
        MEMORY[0x259C63150](v12, 0x1000C8000313F17);
      }

      result = mlir::presburger::Fraction::operator=((*(a2 + 16) + 32 * (v5 + v5 * *(a2 + 8))), &v8);
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
          result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
        }
      }

      if (v7 > 0x40)
      {
        result = v6;
        if (v6)
        {
          result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
        }
      }

      ++v5;
    }

    while (a1 != v5);
  }

  return result;
}

llvm::APInt *mlir::presburger::Matrix<mlir::presburger::Fraction>::at@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v4 = *(a1 + 16) + 32 * (a3 + *(a1 + 8) * a2);
  *a4 = *v4;
  a4[2] = 0;
  v5 = *(v4 + 8);
  if (v5)
  {
    a4[2] = v5;
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(a4, v4);
    }
  }

  v7 = *(v4 + 16);
  v6 = (v4 + 16);
  *(a4 + 2) = v7;
  result = (a4 + 4);
  a4[6] = 0;
  v9 = *(v6 + 2);
  if (v9)
  {
    a4[6] = v9;
    if (v9 >= 0x41)
    {

      llvm::APInt::initSlowCase(result, v6);
    }
  }

  return result;
}

llvm::APInt *mlir::presburger::Matrix<mlir::presburger::Fraction>::operator()@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  v4 = *(a1 + 16) + 32 * (a3 + *(a1 + 8) * a2);
  *a4 = *v4;
  a4[2] = 0;
  v5 = *(v4 + 8);
  if (v5)
  {
    a4[2] = v5;
    if (v5 >= 0x41)
    {
      llvm::APInt::initSlowCase(a4, v4);
    }
  }

  v7 = *(v4 + 16);
  v6 = (v4 + 16);
  *(a4 + 2) = v7;
  result = (a4 + 4);
  a4[6] = 0;
  v9 = *(v6 + 2);
  if (v9)
  {
    a4[6] = v9;
    if (v9 >= 0x41)
    {

      llvm::APInt::initSlowCase(result, v6);
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::operator==(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2 || a1[1] != *(a2 + 4))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  for (i = 0; i < v2; ++i)
  {
    v6 = a1[1];
    v5 = v6 == *(a2 + 4);
    if (v6 != *(a2 + 4))
    {
      break;
    }

    if (v6)
    {
      v7 = a1;
      v8 = (*(a1 + 2) + 32 * a1[2] * i);
      v9 = a2;
      v10 = (*(a2 + 16) + 32 * *(a2 + 8) * i);
      v11 = 32 * v6;
      while (!mlir::presburger::compare(v8, v10))
      {
        v8 += 4;
        v10 = (v10 + 32);
        v11 -= 32;
        if (!v11)
        {
          a1 = v7;
          v2 = *v7;
          a2 = v9;
          goto LABEL_6;
        }
      }

      return 0;
    }

LABEL_6:
    v5 = 1;
  }

  return v5;
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::getRow(uint64_t a1, int a2)
{
  return *(a1 + 16) + 32 * (*(a1 + 8) * a2);
}

{
  return *(a1 + 16) + 32 * (*(a1 + 8) * a2);
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::swapColumns(void *result, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if (*result)
    {
      v6 = 0;
      do
      {
        result = std::swap[abi:nn200100]<mlir::presburger::Fraction>((v3[2] + 32 * (*(v3 + 2) * v6 + a2)), (v3[2] + 32 * (*(v3 + 2) * v6 + a3)));
        ++v6;
      }

      while (v6 < *v3);
    }
  }

  return result;
}

void *std::swap[abi:nn200100]<mlir::presburger::Fraction>(_DWORD *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = 0;
  v3 = a1[2];
  if (v3)
  {
    v7 = a1[2];
    if (v3 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v6, a1);
    }
  }

  v8 = *(a1 + 2);
  v9 = 0;
  v4 = a1[6];
  if (v4)
  {
    v9 = a1[6];
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v8, (a1 + 4));
    }
  }

  mlir::presburger::Fraction::operator=(a1, a2);
  result = mlir::presburger::Fraction::operator=(a2, &v6);
  if (v9 > 0x40)
  {
    result = v8;
    if (v8)
    {
      result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
    }
  }

  if (v7 > 0x40)
  {
    result = v6;
    if (v6)
    {
      return MEMORY[0x259C63150](v6, 0x1000C8000313F17);
    }
  }

  return result;
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::swapRows(void *result, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if (*(result + 1))
    {
      v6 = 0;
      do
      {
        result = std::swap[abi:nn200100]<mlir::presburger::Fraction>((v3[2] + 32 * (v6 + *(v3 + 2) * a2)), (v3[2] + 32 * (v6 + *(v3 + 2) * a3)));
        ++v6;
      }

      while (v6 < *(v3 + 1));
    }
  }

  return result;
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::reserveRows(uint64_t result, int a2)
{
  if (*(result + 28) < (*(result + 8) * a2))
  {
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  return result;
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::setRow(void *result, int a2, uint64_t *a3)
{
  v3 = *(result + 1);
  if (v3)
  {
    v6 = result;
    for (i = 0; i != v3; ++i)
    {
      result = mlir::presburger::Fraction::operator=((v6[2] + 32 * (i + *(v6 + 2) * a2)), a3);
      a3 += 4;
    }
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(uint64_t a1, unsigned int a2, int a3)
{
  v47 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = (*(a1 + 4) + a3);
    v37 = *(a1 + 8);
    if (v4 > v37)
    {
      v5 = v4 | (v4 >> 1) | ((v4 | (v4 >> 1)) >> 2);
      v6 = v5 | (v5 >> 4) | ((v5 | (v5 >> 4)) >> 8);
      LODWORD(v6) = ((v6 >> 16) | v6) + 1;
      *(a1 + 8) = v6;
      v7 = a2;
      v8 = a3;
      llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (*a1 * v6));
      a2 = v7;
      a3 = v8;
      LODWORD(v4) = *(a1 + 4) + v8;
    }

    *(a1 + 4) = v4;
    v9 = *a1 - 1;
    if (v9 >= 0)
    {
      v10 = a3 + a2;
      v38 = a2;
      v11 = v37 * v9;
      v12 = v37 * v9 - a3;
      while (1)
      {
        v14 = (*(a1 + 8) - 1);
        if (v14 >= 0)
        {
          break;
        }

LABEL_6:
        v11 -= v37;
        v12 -= v37;
        if (v9-- <= 0)
        {
          return;
        }
      }

      v15 = v14 + 1;
      while (1)
      {
        v17 = v15 - 1;
        v18 = *(a1 + 8);
        v19 = *(a1 + 16);
        v20 = (v19 + 32 * (v15 + v9 * v18 - 1));
        if (v15 - 1 >= *(a1 + 4))
        {
          v39 = 1;
          v40 = 0;
          v45 = 0;
          v46 = 0;
          mlir::presburger::Fraction::Fraction(&v41, &v45, &v39);
          if (v46 > 0x40 && v45)
          {
            MEMORY[0x259C63150](v45, 0x1000C8000313F17);
          }

          if (v42)
          {
            mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v20, v42, &v41);
            v27 = v44;
            if (!v44)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v26 = v41;
            if (*(v20 + 2) > 0x40u && *v20)
            {
              MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
              *v20 = v26;
              *(v20 + 2) = 0;
              v27 = v44;
              if (!v44)
              {
                goto LABEL_34;
              }
            }

            else
            {
              *v20 = v41;
              *(v20 + 2) = 0;
              v27 = v44;
              if (!v44)
              {
                goto LABEL_34;
              }
            }
          }

          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v20, v27, &v43, (v20 + 2));
          v28 = v44;
          if (!v44)
          {
            goto LABEL_36;
          }

          goto LABEL_66;
        }

        if (v17 >= v10)
        {
          v29 = (v12 + v15 - 1);
          v22 = v19 + 32 * v29;
          v30 = *(v22 + 8);
          if (v30)
          {
            mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v20, v30, (v19 + 32 * v29));
            v25 = *(v22 + 24);
            if (!v25)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v31 = *v22;
            if (*(v20 + 2) > 0x40u && *v20)
            {
              MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
              *v20 = v31;
              *(v20 + 2) = 0;
              v25 = *(v22 + 24);
              if (!v25)
              {
                goto LABEL_9;
              }
            }

            else
            {
              *v20 = v31;
              *(v20 + 2) = 0;
              v25 = *(v22 + 24);
              if (!v25)
              {
                goto LABEL_9;
              }
            }
          }
        }

        else
        {
          if (v17 >= v38)
          {
            v39 = 1;
            v40 = 0;
            v45 = 0;
            v46 = 0;
            mlir::presburger::Fraction::Fraction(&v41, &v45, &v39);
            if (v46 > 0x40 && v45)
            {
              MEMORY[0x259C63150](v45, 0x1000C8000313F17);
            }

            if (!v42)
            {
              v32 = v41;
              if (*(v20 + 2) > 0x40u && *v20)
              {
                MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
                *v20 = v32;
                *(v20 + 2) = 0;
                v33 = v44;
                if (v44)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                *v20 = v41;
                *(v20 + 2) = 0;
                v33 = v44;
                if (v44)
                {
                  goto LABEL_65;
                }
              }

LABEL_34:
              v34 = v43;
              if (*(v20 + 6) > 0x40u && (v35 = v20[2]) != 0)
              {
                MEMORY[0x259C63150](v35, 0x1000C8000313F17);
                v20[2] = v34;
                *(v20 + 6) = 0;
                v28 = v44;
                if (v44)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                v20[2] = v43;
                *(v20 + 6) = 0;
                v28 = v44;
                if (v44)
                {
                  goto LABEL_66;
                }
              }

LABEL_36:
              if (v42 > 0x40 && v41)
              {
                MEMORY[0x259C63150](v41, 0x1000C8000313F17);
              }

              if (v40 > 0x40 && v39)
              {
                MEMORY[0x259C63150](v39, 0x1000C8000313F17);
              }

              goto LABEL_11;
            }

            mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v20, v42, &v41);
            v33 = v44;
            if (!v44)
            {
              goto LABEL_34;
            }

LABEL_65:
            mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v20, v33, &v43, (v20 + 2));
            v28 = v44;
            if (!v44)
            {
              goto LABEL_36;
            }

LABEL_66:
            if (v28 >= 0x41 && v43)
            {
              MEMORY[0x259C63150](v43, 0x1000C8000313F17);
            }

            goto LABEL_36;
          }

          if (v18 == v37)
          {
            goto LABEL_6;
          }

          v21 = (v11 + v15 - 1);
          v22 = v19 + 32 * v21;
          v23 = *(v22 + 8);
          if (v23)
          {
            mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v20, v23, (v19 + 32 * v21));
            v25 = *(v22 + 24);
            if (!v25)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v24 = *v22;
            if (*(v20 + 2) > 0x40u && *v20)
            {
              MEMORY[0x259C63150](*v20, 0x1000C8000313F17);
              *v20 = v24;
              *(v20 + 2) = 0;
              v25 = *(v22 + 24);
              if (!v25)
              {
LABEL_9:
                v16 = *(v22 + 16);
                if (*(v20 + 6) > 0x40u)
                {
                  v36 = v20[2];
                  if (v36)
                  {
                    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
                  }
                }

                v20[2] = v16;
                *(v20 + 6) = 0;
                goto LABEL_11;
              }
            }

            else
            {
              *v20 = v24;
              *(v20 + 2) = 0;
              v25 = *(v22 + 24);
              if (!v25)
              {
                goto LABEL_9;
              }
            }
          }
        }

        mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v20, v25, v22 + 16, (v20 + 2));
LABEL_11:
        v15 = v17;
        if (v17 <= 0)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::insertRows(uint64_t a1, int a2, int a3)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = *a1 + a3;
    *a1 = v6;
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (*(a1 + 8) * v6));
    v7 = a3 + a2;
    v8 = *a1 - 1;
    if (v8 >= a3 + a2 && *(a1 + 4))
    {
      v9 = ~a3 + *a1;
      v10 = 1;
      while (!v10)
      {
LABEL_5:
        --v8;
        --v9;
        if (v8 < v7)
        {
          goto LABEL_22;
        }
      }

      v11 = 0;
      while (1)
      {
        while (1)
        {
          v12 = *(a1 + 8);
          v13 = v11 + v9 * v12;
          v14 = *(a1 + 16);
          v15 = (v14 + 32 * v13);
          v16 = v11 + v8 * v12;
          v17 = v14 + 32 * v16;
          v18 = *(v15 + 2);
          if (!v18)
          {
            break;
          }

          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v14 + 32 * v16), v18, (v14 + 32 * v13));
          v20 = *(v15 + 6);
          if (!v20)
          {
            goto LABEL_11;
          }

LABEL_15:
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertRows(v17, v20, (v15 + 2), (v17 + 16));
          ++v11;
          v10 = *(a1 + 4);
          if (v11 >= v10)
          {
            goto LABEL_5;
          }
        }

        v19 = *v15;
        if (*(v17 + 8) <= 0x40u || !*v17)
        {
          *v17 = v19;
          *(v17 + 8) = 0;
          v20 = *(v15 + 6);
          if (!v20)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }

        MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
        *v17 = v19;
        *(v17 + 8) = 0;
        v20 = *(v15 + 6);
        if (v20)
        {
          goto LABEL_15;
        }

LABEL_11:
        v21 = v15[2];
        if (*(v17 + 24) > 0x40u)
        {
          v22 = *(v17 + 16);
          if (v22)
          {
            MEMORY[0x259C63150](v22, 0x1000C8000313F17);
          }
        }

        *(v17 + 16) = v21;
        *(v17 + 24) = 0;
        ++v11;
        v10 = *(a1 + 4);
        if (v11 >= v10)
        {
          goto LABEL_5;
        }
      }
    }

LABEL_22:
    v23 = v7 - 1;
    if (v7 - 1 >= a2)
    {
      if (*(a1 + 4))
      {
        v24 = 1;
        while (!v24)
        {
LABEL_25:
          if (--v23 < a2)
          {
            return;
          }
        }

        v25 = 0;
        while (1)
        {
          v34 = 1;
          v35 = 0;
          v40 = 0;
          v41 = 0;
          mlir::presburger::Fraction::Fraction(&v36, &v40, &v34);
          if (v41 > 0x40 && v40)
          {
            MEMORY[0x259C63150](v40, 0x1000C8000313F17);
          }

          v26 = v25 + v23 * *(a1 + 8);
          v27 = *(a1 + 16);
          v28 = v27 + 32 * v26;
          if (v37)
          {
            mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v27 + 32 * v26), v37, &v36);
            v30 = v39;
            if (v39)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v29 = v36;
            if (*(v28 + 8) > 0x40u && *v28)
            {
              MEMORY[0x259C63150](*v28, 0x1000C8000313F17);
              *v28 = v29;
              *(v28 + 8) = 0;
              v30 = v39;
              if (v39)
              {
LABEL_41:
                mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v28, v30, &v38, v28 + 16);
                v32 = v39;
                if (v39)
                {
                  goto LABEL_52;
                }

                goto LABEL_34;
              }
            }

            else
            {
              *v28 = v36;
              *(v28 + 8) = 0;
              v30 = v39;
              if (v39)
              {
                goto LABEL_41;
              }
            }
          }

          v31 = v38;
          if (*(v28 + 24) > 0x40u && (v33 = *(v28 + 16)) != 0)
          {
            MEMORY[0x259C63150](v33, 0x1000C8000313F17);
            *(v28 + 16) = v31;
            *(v28 + 24) = 0;
            v32 = v39;
            if (v39)
            {
LABEL_52:
              if (v32 >= 0x41 && v38)
              {
                MEMORY[0x259C63150](v38, 0x1000C8000313F17);
              }
            }
          }

          else
          {
            *(v28 + 16) = v38;
            *(v28 + 24) = 0;
            v32 = v39;
            if (v39)
            {
              goto LABEL_52;
            }
          }

LABEL_34:
          if (v37 > 0x40 && v36)
          {
            MEMORY[0x259C63150](v36, 0x1000C8000313F17);
          }

          if (v35 > 0x40)
          {
            if (v34)
            {
              MEMORY[0x259C63150](v34, 0x1000C8000313F17);
            }
          }

          ++v25;
          v24 = *(a1 + 4);
          if (v25 >= v24)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::copyRow(void *result, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = result;
    if (*(result + 1))
    {
      v6 = 0;
      do
      {
        result = mlir::presburger::Fraction::operator=((v3[2] + 32 * (v6 + *(v3 + 2) * a3)), (v3[2] + 32 * (v6 + *(v3 + 2) * a2)));
        ++v6;
      }

      while (v6 < *(v3 + 1));
    }
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::removeColumns(uint64_t a1, unsigned int a2, int a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return;
  }

  if (!*a1)
  {
    v7 = *(a1 + 4);
    goto LABEL_48;
  }

  v6 = 0;
  v7 = *(a1 + 4);
  while (2)
  {
    v8 = v7 - a3;
    v9 = a2;
    if (v7 - a3 <= a2)
    {
      goto LABEL_20;
    }

    do
    {
      while (1)
      {
        v10 = v9 + v6 * *(a1 + 8);
        v11 = (v10 + a3);
        v12 = *(a1 + 16);
        v13 = (v12 + 32 * v11);
        v14 = v12 + 32 * v10;
        v15 = *(v13 + 2);
        if (v15)
        {
          mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v12 + 32 * v10), v15, (v12 + 32 * v11));
          v17 = *(v13 + 6);
          if (!v17)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }

        v16 = *v13;
        if (*(v14 + 8) > 0x40u)
        {
          if (*v14)
          {
            break;
          }
        }

        *v14 = v16;
        *(v14 + 8) = 0;
        v17 = *(v13 + 6);
        if (!v17)
        {
          goto LABEL_9;
        }

LABEL_13:
        mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v14, v17, (v13 + 2), v14 + 16);
        ++v9;
        v7 = *(a1 + 4);
        v8 = v7 - a3;
        if (v9 >= v7 - a3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x259C63150](*v14, 0x1000C8000313F17);
      *v14 = v16;
      *(v14 + 8) = 0;
      v17 = *(v13 + 6);
      if (v17)
      {
        goto LABEL_13;
      }

LABEL_9:
      v18 = v13[2];
      if (*(v14 + 24) > 0x40u)
      {
        v19 = *(v14 + 16);
        if (v19)
        {
          MEMORY[0x259C63150](v19, 0x1000C8000313F17);
        }
      }

      *(v14 + 16) = v18;
      *(v14 + 24) = 0;
      ++v9;
      v7 = *(a1 + 4);
      v8 = v7 - a3;
    }

    while (v9 < v7 - a3);
LABEL_20:
    while (v8 < v7)
    {
      v28 = 1;
      v29 = 0;
      v34 = 0;
      v35 = 0;
      mlir::presburger::Fraction::Fraction(&v30, &v34, &v28);
      if (v35 > 0x40 && v34)
      {
        MEMORY[0x259C63150](v34, 0x1000C8000313F17);
      }

      v20 = v8 + v6 * *(a1 + 8);
      v21 = *(a1 + 16);
      v22 = v21 + 32 * v20;
      if (v31)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v21 + 32 * v20), v31, &v30);
        v24 = v33;
        if (v33)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v23 = v30;
        if (*(v22 + 8) > 0x40u && *v22)
        {
          MEMORY[0x259C63150](*v22, 0x1000C8000313F17);
          *v22 = v23;
          *(v22 + 8) = 0;
          v24 = v33;
          if (v33)
          {
LABEL_33:
            mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v22, v24, &v32, v22 + 16);
            v26 = v33;
            if (!v33)
            {
              goto LABEL_27;
            }

            goto LABEL_44;
          }
        }

        else
        {
          *v22 = v30;
          *(v22 + 8) = 0;
          v24 = v33;
          if (v33)
          {
            goto LABEL_33;
          }
        }
      }

      v25 = v32;
      if (*(v22 + 24) > 0x40u && (v27 = *(v22 + 16)) != 0)
      {
        MEMORY[0x259C63150](v27, 0x1000C8000313F17);
        *(v22 + 16) = v25;
        *(v22 + 24) = 0;
        v26 = v33;
        if (!v33)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *(v22 + 16) = v32;
        *(v22 + 24) = 0;
        v26 = v33;
        if (!v33)
        {
          goto LABEL_27;
        }
      }

LABEL_44:
      if (v26 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

LABEL_27:
      if (v31 > 0x40 && v30)
      {
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }

      if (v29 > 0x40)
      {
        if (v28)
        {
          MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        }
      }

      ++v8;
      v7 = *(a1 + 4);
    }

    if (++v6 < *a1)
    {
      continue;
    }

    break;
  }

LABEL_48:
  *(a1 + 4) = v7 - a3;
}

uint64_t *mlir::presburger::Matrix<mlir::presburger::Fraction>::removeRows(uint64_t *result, int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a2;
    v4 = a2 + a3;
    v5 = *result;
    if ((a2 + a3) < *result && *(result + 1))
    {
      v6 = 1;
      while (!v6)
      {
LABEL_6:
        ++v3;
        ++v4;
        if (v3 + a3 >= v5)
        {
          goto LABEL_23;
        }
      }

      v7 = 0;
      while (1)
      {
        while (1)
        {
          v8 = *(result + 2);
          v9 = v7 + v4 * v8;
          v10 = result[2];
          v11 = v10 + 32 * v9;
          v12 = v7 + v3 * v8;
          v13 = v10 + 32 * v12;
          v14 = *(v11 + 8);
          if (!v14)
          {
            break;
          }

          v18 = result;
          v19 = a3;
          llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v10 + 32 * v12), v14, (v10 + 32 * v9));
          a3 = v19;
          result = v18;
          v16 = *(v11 + 24);
          if (!v16)
          {
            goto LABEL_12;
          }

LABEL_16:
          v20 = a3;
          v21 = (v11 + 16);
          v22 = result;
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertRows(v13, v16, v21, (v13 + 16));
          a3 = v20;
          result = v22;
          ++v7;
          v6 = *(v22 + 1);
          if (v7 >= v6)
          {
            goto LABEL_5;
          }
        }

        v15 = *v11;
        if (*(v13 + 8) <= 0x40u || !*v13)
        {
          *v13 = v15;
          *(v13 + 8) = 0;
          v16 = *(v11 + 24);
          if (!v16)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        v23 = result;
        v24 = a3;
        MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
        a3 = v24;
        result = v23;
        *v13 = v15;
        *(v13 + 8) = 0;
        v16 = *(v11 + 24);
        if (v16)
        {
          goto LABEL_16;
        }

LABEL_12:
        v17 = *(v11 + 16);
        if (*(v13 + 24) > 0x40u && *(v13 + 16))
        {
          v25 = result;
          v26 = a3;
          MEMORY[0x259C63150](*(v13 + 16), 0x1000C8000313F17);
          a3 = v26;
          result = v25;
        }

        *(v13 + 16) = v17;
        *(v13 + 24) = 0;
        ++v7;
        v6 = *(result + 1);
        if (v7 >= v6)
        {
LABEL_5:
          v5 = *result;
          goto LABEL_6;
        }
      }
    }

LABEL_23:
    v27 = v5 - a3;
    *result = v27;
    v28 = (*(result + 2) * v27);
    v29 = result + 2;

    return llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(v29, v28);
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::removeRow()
{
  mlir::presburger::Matrix<mlir::presburger::Fraction>::removeRows();
}

{
    ;
  }
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::fillRow(void *result, int a2, uint64_t *a3)
{
  if (*(result + 1))
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = mlir::presburger::Fraction::operator=((v5[2] + 32 * (v6 + *(v5 + 2) * a2)), a3);
      ++v6;
    }

    while (v6 < *(v5 + 1));
  }

  return result;
}

uint64_t *mlir::presburger::Matrix<mlir::presburger::Fraction>::fillRow(uint64_t a1, int a2, uint64_t *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 1;
  v8 = 0;
  v13 = a3;
  v14 = 0;
  result = mlir::presburger::Fraction::Fraction(&v9, &v13, &v7);
  if (v14 > 0x40)
  {
    result = v13;
    if (v13)
    {
      result = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  if (*(a1 + 4))
  {
    v6 = 0;
    do
    {
      result = mlir::presburger::Fraction::operator=((*(a1 + 16) + 32 * (v6 + *(a1 + 8) * a2)), &v9);
      ++v6;
    }

    while (v6 < *(a1 + 4));
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
      result = MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  if (v8 > 0x40)
  {
    result = v7;
    if (v7)
    {
      return MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow()
{
  mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow();
}

{
    ;
  }
}

{
    ;
  }
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  mlir::presburger::Fraction::Fraction(&v21, &v15, &v19);
  if (v16 > 0x40 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  result = mlir::presburger::compare(a5, &v21);
  if (v24 > 0x40 && v23)
  {
    v12 = result;
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    result = v12;
  }

  if (v22 > 0x40 && v21)
  {
    v13 = result;
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    result = v13;
  }

  if (v20 > 0x40 && v19)
  {
    v14 = result;
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    result = v14;
  }

  if (result && *(a1 + 4))
  {
    v10 = 0;
    do
    {
      mlir::presburger::operator*(a5, a3, &v15);
      v11 = (*(a1 + 16) + 32 * (v10 + *(a1 + 8) * a2));
      mlir::presburger::operator+(v11, &v15, &v21);
      result = mlir::presburger::Fraction::operator=(v11, &v21);
      if (v24 > 0x40)
      {
        result = v23;
        if (v23)
        {
          result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
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

      if (v18 > 0x40)
      {
        result = v17;
        if (v17)
        {
          result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
        }
      }

      if (v16 > 0x40)
      {
        result = v15;
        if (v15)
        {
          result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
        }
      }

      ++v10;
      a3 += 4;
    }

    while (v10 < *(a1 + 4));
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5 = 0;
  v7 = a4;
  v8 = 0;
  mlir::presburger::Fraction::Fraction(&v6, &v7, &v4);
  if (v8 > 0x40)
  {
    if (v7)
    {
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow();
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::scaleRow(void *result, int a2, uint64_t *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(result + 1))
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (v5[2] + 32 * (v6 + *(v5 + 2) * a2));
      mlir::presburger::operator*(v7, a3, &v8);
      result = mlir::presburger::Fraction::operator=(v7, &v8);
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
          result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
        }
      }

      ++v6;
    }

    while (v6 < *(v5 + 1));
  }

  return result;
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::addToColumn(int *a1, int a2, int a3, uint64_t *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 1;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  mlir::presburger::Fraction::Fraction(&v21, &v15, &v19);
  if (v16 > 0x40 && v15)
  {
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
  }

  result = mlir::presburger::compare(a4, &v21);
  if (v24 > 0x40 && v23)
  {
    v12 = result;
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    result = v12;
  }

  if (v22 > 0x40 && v21)
  {
    v13 = result;
    MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    result = v13;
  }

  if (v20 > 0x40 && v19)
  {
    v14 = result;
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    result = v14;
  }

  if (result)
  {
    v9 = *a1;
    if (*a1)
    {
      v10 = 0;
      do
      {
        mlir::presburger::operator*(a4, (*(a1 + 2) + 32 * (a2 + a1[2] * v10)), &v15);
        v11 = (*(a1 + 2) + 32 * (a3 + a1[2] * v10));
        mlir::presburger::operator+(v11, &v15, &v21);
        result = mlir::presburger::Fraction::operator=(v11, &v21);
        if (v24 > 0x40)
        {
          result = v23;
          if (v23)
          {
            result = MEMORY[0x259C63150](v23, 0x1000C8000313F17);
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

        if (v18 > 0x40)
        {
          result = v17;
          if (v17)
          {
            result = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
          }
        }

        if (v16 > 0x40)
        {
          result = v15;
          if (v15)
          {
            result = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
          }
        }

        ++v10;
      }

      while (v9 != v10);
    }
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::addToColumn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5 = 0;
  v7 = a4;
  v8 = 0;
  mlir::presburger::Fraction::Fraction(&v6, &v7, &v4);
  if (v8 > 0x40)
  {
    if (v7)
    {
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }
  }

  mlir::presburger::Matrix<mlir::presburger::Fraction>::addToColumn();
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::negateColumn(void *result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      mlir::presburger::operator-(v4[2] + 32 * (a2 + *(v4 + 2) * v5), &v6);
      result = mlir::presburger::Fraction::operator=((v4[2] + 32 * (a2 + *(v4 + 2) * v5)), &v6);
      if (v9 > 0x40)
      {
        result = v8;
        if (v8)
        {
          result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
        }
      }

      if (v7 > 0x40)
      {
        result = v6;
        if (v6)
        {
          result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
        }
      }

      ++v5;
    }

    while (v2 != v5);
  }

  return result;
}

void *mlir::presburger::Matrix<mlir::presburger::Fraction>::negateRow(void *result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(result + 1);
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      mlir::presburger::operator-(v4[2] + 32 * (i + *(v4 + 2) * a2), &v6);
      result = mlir::presburger::Fraction::operator=((v4[2] + 32 * (i + *(v4 + 2) * a2)), &v6);
      if (v9 > 0x40)
      {
        result = v8;
        if (v8)
        {
          result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
        }
      }

      if (v7 > 0x40)
      {
        result = v6;
        if (v6)
        {
          result = MEMORY[0x259C63150](v6, 0x1000C8000313F17);
        }
      }
    }
  }

  return result;
}

_DWORD *mlir::presburger::Matrix<mlir::presburger::Fraction>::negateMatrix(_DWORD *result)
{
  if (*result)
  {
    mlir::presburger::Matrix<mlir::presburger::Fraction>::negateRow();
  }

  return result;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::preMultiplyWithRow(unsigned int *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a1[1];
  v23 = 1;
  v24 = 0;
  v27 = 0;
  v28 = 0;
  mlir::presburger::Fraction::Fraction(&v31, &v27, &v23);
  if (v28 > 0x40 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::assign(a3, v6, &v31);
  if (v34 > 0x40 && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  if (v32 > 0x40 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v24 > 0x40 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  v7 = a1[1];
  if (!v7)
  {
    return;
  }

  v8 = *a1;
  if (!v8)
  {
    return;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = a2;
  do
  {
    v12 = *(a1 + 2) + 32 * (v9 + a1[2] * v10);
    v23 = *v12;
    v24 = 0;
    v13 = *(v12 + 8);
    if (v13)
    {
      v24 = *(v12 + 8);
      if (v13 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v23, v12);
      }
    }

    v15 = *(v12 + 16);
    v14 = (v12 + 16);
    v25 = v15;
    v26 = 0;
    v16 = *(v14 + 2);
    if (v16)
    {
      v26 = *(v14 + 2);
      if (v16 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v25, v14);
      }
    }

    mlir::presburger::operator*(v11, &v23, &v27);
    v17 = (*a3 + 32 * v9);
    mlir::presburger::operator+(v17, &v27, &v31);
    if (v32)
    {
      mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v17, v32, &v31);
      v19 = v34;
      if (v34)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = v31;
      if (*(v17 + 2) > 0x40u && *v17)
      {
        MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
        *v17 = v18;
        *(v17 + 2) = 0;
        v19 = v34;
        if (v34)
        {
LABEL_28:
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v17, v19, &v33, (v17 + 2));
          v21 = v34;
          if (!v34)
          {
            goto LABEL_16;
          }

          goto LABEL_45;
        }
      }

      else
      {
        *v17 = v31;
        *(v17 + 2) = 0;
        v19 = v34;
        if (v34)
        {
          goto LABEL_28;
        }
      }
    }

    v20 = v33;
    if (*(v17 + 6) > 0x40u && (v22 = v17[2]) != 0)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      v17[2] = v20;
      *(v17 + 6) = 0;
      v21 = v34;
      if (!v34)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17[2] = v33;
      *(v17 + 6) = 0;
      v21 = v34;
      if (!v34)
      {
        goto LABEL_16;
      }
    }

LABEL_45:
    if (v21 >= 0x41 && v33)
    {
      MEMORY[0x259C63150](v33, 0x1000C8000313F17);
    }

LABEL_16:
    if (v32 > 0x40 && v31)
    {
      MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }

    if (v30 > 0x40 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }

    if (v28 > 0x40 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }

    if (v26 > 0x40 && v25)
    {
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }

    if (v24 > 0x40)
    {
      if (v23)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }
    }

    ++v10;
    v11 += 4;
  }

  while (v8 != v10);
  while (++v9 != v7)
  {
    v8 = *a1;
    if (*a1)
    {
      goto LABEL_8;
    }
  }
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::postMultiplyWithColumn(unsigned int *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v23 = 1;
  v24 = 0;
  v27 = 0;
  v28 = 0;
  mlir::presburger::Fraction::Fraction(&v31, &v27, &v23);
  if (v28 > 0x40 && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  *a3 = a3 + 2;
  a3[1] = 0x800000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::assign(a3, v6, &v31);
  if (v34 > 0x40 && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  if (v32 > 0x40 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v24 > 0x40 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  v7 = *a1;
  if (!v7)
  {
    return;
  }

  v8 = a1[1];
  if (!v8)
  {
    return;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = a2;
  do
  {
    v12 = *(a1 + 2) + 32 * (v10 + v9 * a1[2]);
    v23 = *v12;
    v24 = 0;
    v13 = *(v12 + 8);
    if (v13)
    {
      v24 = *(v12 + 8);
      if (v13 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v23, v12);
      }
    }

    v15 = *(v12 + 16);
    v14 = (v12 + 16);
    v25 = v15;
    v26 = 0;
    v16 = *(v14 + 2);
    if (v16)
    {
      v26 = *(v14 + 2);
      if (v16 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v25, v14);
      }
    }

    mlir::presburger::operator*(&v23, v11, &v27);
    v17 = (*a3 + 32 * v9);
    mlir::presburger::operator+(v17, &v27, &v31);
    if (v32)
    {
      mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v17, v32, &v31);
      v19 = v34;
      if (v34)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = v31;
      if (*(v17 + 2) > 0x40u && *v17)
      {
        MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
        *v17 = v18;
        *(v17 + 2) = 0;
        v19 = v34;
        if (v34)
        {
LABEL_28:
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v17, v19, &v33, (v17 + 2));
          v21 = v34;
          if (!v34)
          {
            goto LABEL_16;
          }

          goto LABEL_45;
        }
      }

      else
      {
        *v17 = v31;
        *(v17 + 2) = 0;
        v19 = v34;
        if (v34)
        {
          goto LABEL_28;
        }
      }
    }

    v20 = v33;
    if (*(v17 + 6) > 0x40u && (v22 = v17[2]) != 0)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
      v17[2] = v20;
      *(v17 + 6) = 0;
      v21 = v34;
      if (!v34)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v17[2] = v33;
      *(v17 + 6) = 0;
      v21 = v34;
      if (!v34)
      {
        goto LABEL_16;
      }
    }

LABEL_45:
    if (v21 >= 0x41 && v33)
    {
      MEMORY[0x259C63150](v33, 0x1000C8000313F17);
    }

LABEL_16:
    if (v32 > 0x40 && v31)
    {
      MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }

    if (v30 > 0x40 && v29)
    {
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }

    if (v28 > 0x40 && v27)
    {
      MEMORY[0x259C63150](v27, 0x1000C8000313F17);
    }

    if (v26 > 0x40 && v25)
    {
      MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }

    if (v24 > 0x40)
    {
      if (v23)
      {
        MEMORY[0x259C63150](v23, 0x1000C8000313F17);
      }
    }

    ++v10;
    v11 += 4;
  }

  while (v8 != v10);
  while (++v9 != v7)
  {
    v8 = a1[1];
    if (a1[1])
    {
      goto LABEL_8;
    }
  }
}

uint64_t *mlir::presburger::Matrix<mlir::presburger::Fraction>::resize(_DWORD *a1, int a2, unsigned int a3)
{
  v4 = a1[1];
  if (v4 > a3)
  {
    mlir::presburger::Matrix<mlir::presburger::Fraction>::removeColumns();
  }

  if (a3 > v4)
  {
    mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns();
  }

  *a1 = a2;
  v5 = (a1[2] * a2);
  v6 = (a1 + 4);

  return llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(v6, v5);
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::resizeHorizontally(uint64_t result, unsigned int a2)
{
  v3 = *(result + 4);
  if (v3 > a2)
  {
    mlir::presburger::Matrix<mlir::presburger::Fraction>::removeColumns();
  }

  if (a2 > v3)
  {

    mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns();
  }

  return result;
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::appendExtraRow(uint64_t a1)
{
  v2 = *a1 + 1;
  *a1 = v2;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (*(a1 + 8) * v2));
  return (*a1 - 1);
}

uint64_t mlir::presburger::Matrix<mlir::presburger::Fraction>::appendExtraRow(uint64_t a1, uint64_t *a2)
{
  v4 = *a1 + 1;
  *a1 = v4;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (*(a1 + 8) * v4));
  v5 = (*a1 - 1);
  if (*(a1 + 4))
  {
    v6 = 0;
    do
    {
      mlir::presburger::Fraction::operator=((*(a1 + 16) + 32 * (v6++ + *(a1 + 8) * v5)), a2);
      a2 += 4;
    }

    while (v6 < *(a1 + 4));
  }

  return v5;
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::transpose(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = a1[1];
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v5;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a2 + 16), v5 * v4);
  if (*(a2 + 28) < (*(a2 + 8) * *a2))
  {
    v23 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v6 = *a1;
  if (!*a1 || !a1[1])
  {
    return;
  }

  v7 = 0;
  v8 = 1;
  while (2)
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    for (i = 0; i < v8; ++i)
    {
      v10 = *(a1 + 2) + 32 * (i + v7 * a1[2]);
      v23 = *v10;
      v24 = 0;
      v11 = *(v10 + 8);
      if (v11)
      {
        v24 = *(v10 + 8);
        if (v11 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v23, v10);
        }
      }

      v13 = *(v10 + 16);
      v12 = (v10 + 16);
      v25 = v13;
      v26 = 0;
      v14 = *(v12 + 2);
      if (v14)
      {
        v26 = *(v12 + 2);
        if (v14 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v25, v12);
        }
      }

      v15 = v7 + *(a2 + 8) * i;
      v16 = *(a2 + 16);
      v17 = v16 + 32 * v15;
      if (v24)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v16 + 32 * v15), v24, &v23);
        v19 = v26;
        if (v26)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v18 = v23;
        if (*(v17 + 8) > 0x40u && *v17)
        {
          MEMORY[0x259C63150](*v17, 0x1000C8000313F17);
          *v17 = v18;
          *(v17 + 8) = 0;
          v19 = v26;
          if (v26)
          {
LABEL_24:
            mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v17, v19, &v25, v17 + 16);
            v21 = v26;
            if (!v26)
            {
              goto LABEL_16;
            }

            goto LABEL_33;
          }
        }

        else
        {
          *v17 = v23;
          *(v17 + 8) = 0;
          v19 = v26;
          if (v26)
          {
            goto LABEL_24;
          }
        }
      }

      v20 = v25;
      if (*(v17 + 24) > 0x40u && (v22 = *(v17 + 16)) != 0)
      {
        MEMORY[0x259C63150](v22, 0x1000C8000313F17);
        *(v17 + 16) = v20;
        *(v17 + 24) = 0;
        v21 = v26;
        if (!v26)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(v17 + 16) = v25;
        *(v17 + 24) = 0;
        v21 = v26;
        if (!v26)
        {
          goto LABEL_16;
        }
      }

LABEL_33:
      if (v21 >= 0x41 && v25)
      {
        MEMORY[0x259C63150](v25, 0x1000C8000313F17);
      }

LABEL_16:
      if (v24 > 0x40)
      {
        if (v23)
        {
          MEMORY[0x259C63150](v23, 0x1000C8000313F17);
        }
      }

      v8 = a1[1];
    }

    v6 = *a1;
LABEL_6:
    if (++v7 < v6)
    {
      continue;
    }

    break;
  }
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::getSubMatrix(uint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3 - a2 + 1;
  v13 = a5 - a4 + 1;
  *a6 = v12;
  *(a6 + 4) = v13;
  *(a6 + 8) = v13;
  *(a6 + 16) = a6 + 32;
  *(a6 + 24) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a6 + 16), (v13 * v12));
  if (*(a6 + 28) < (*(a6 + 8) * *a6))
  {
    v29 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a3 >= v9 && a5 >= a4)
  {
    v14 = 0;
    do
    {
      v15 = 0;
      do
      {
        v16 = *(a1 + 16) + 32 * (a4 + v15 + v9 * *(a1 + 8));
        v29 = *v16;
        v30 = 0;
        v17 = *(v16 + 8);
        if (v17)
        {
          v30 = *(v16 + 8);
          if (v17 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v29, v16);
          }
        }

        v19 = *(v16 + 16);
        v18 = (v16 + 16);
        v31 = v19;
        v32 = 0;
        v20 = *(v18 + 2);
        if (v20)
        {
          v32 = *(v18 + 2);
          if (v20 >= 0x41)
          {
            llvm::APInt::initSlowCase(&v31, v18);
          }
        }

        v21 = (v15 + v14 * *(a6 + 8));
        v22 = *(a6 + 16);
        v23 = v22 + 32 * v21;
        if (v30)
        {
          mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v22 + 32 * v21), v30, &v29);
          v25 = v32;
          if (v32)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v24 = v29;
          if (*(v23 + 8) > 0x40u && *v23)
          {
            MEMORY[0x259C63150](*v23, 0x1000C8000313F17);
            *v23 = v24;
            *(v23 + 8) = 0;
            v25 = v32;
            if (v32)
            {
LABEL_24:
              mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v23, v25, &v31, v23 + 16);
              v27 = v32;
              if (!v32)
              {
                goto LABEL_16;
              }

              goto LABEL_33;
            }
          }

          else
          {
            *v23 = v29;
            *(v23 + 8) = 0;
            v25 = v32;
            if (v32)
            {
              goto LABEL_24;
            }
          }
        }

        v26 = v31;
        if (*(v23 + 24) > 0x40u && (v28 = *(v23 + 16)) != 0)
        {
          MEMORY[0x259C63150](v28, 0x1000C8000313F17);
          *(v23 + 16) = v26;
          *(v23 + 24) = 0;
          v27 = v32;
          if (!v32)
          {
            goto LABEL_16;
          }
        }

        else
        {
          *(v23 + 16) = v31;
          *(v23 + 24) = 0;
          v27 = v32;
          if (!v32)
          {
            goto LABEL_16;
          }
        }

LABEL_33:
        if (v27 >= 0x41 && v31)
        {
          MEMORY[0x259C63150](v31, 0x1000C8000313F17);
        }

LABEL_16:
        if (v30 > 0x40)
        {
          if (v29)
          {
            MEMORY[0x259C63150](v29, 0x1000C8000313F17);
          }
        }

        ++v15;
      }

      while (a4 + v15 <= a5);
      ++v9;
      ++v14;
    }

    while (v9 <= a3);
  }
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::splitByBitset(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50[64] = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  LODWORD(v46) = 0;
  HIDWORD(v46) = v5;
  v47 = v5;
  v48 = v50;
  v49 = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v48, 0);
  v6 = a1[1];
  LODWORD(v41) = 0;
  HIDWORD(v41) = v6;
  v42 = v6;
  v43 = v45;
  v44 = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v43, 0);
  if (*a1)
  {
    v7 = 0;
    while (1)
    {
      v8 = a1[2];
      v9 = *(a1 + 2);
      if (*(a2 + 4 * v7) != 1)
      {
        break;
      }

      LODWORD(v46) = v46 + 1;
      llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v48, v47 * v46);
      if (HIDWORD(v46))
      {
        v10 = 0;
        v11 = v46 - 1;
        v12 = v9 + 32 * v8 * v7 + 16;
        do
        {
          while (1)
          {
            v13 = v10 + v47 * v11;
            v14 = v48 + 32 * v13;
            v15 = *(v12 - 8);
            if (!v15)
            {
              break;
            }

            mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v48 + 8 * v13, v15, (v12 - 16));
            v17 = *(v12 + 8);
            if (!v17)
            {
              goto LABEL_10;
            }

LABEL_14:
            mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v14, v17, v12, (v14 + 16));
            ++v10;
            v12 += 32;
            if (v10 >= HIDWORD(v46))
            {
              goto LABEL_3;
            }
          }

          v16 = *(v12 - 16);
          if (*(v14 + 2) <= 0x40u || !*v14)
          {
            *v14 = v16;
            *(v14 + 2) = 0;
            v17 = *(v12 + 8);
            if (!v17)
            {
              goto LABEL_10;
            }

            goto LABEL_14;
          }

          MEMORY[0x259C63150](*v14, 0x1000C8000313F17);
          *v14 = v16;
          *(v14 + 2) = 0;
          v17 = *(v12 + 8);
          if (v17)
          {
            goto LABEL_14;
          }

LABEL_10:
          v18 = *v12;
          if (*(v14 + 6) > 0x40u)
          {
            v19 = *(v14 + 2);
            if (v19)
            {
              MEMORY[0x259C63150](v19, 0x1000C8000313F17);
            }
          }

          *(v14 + 2) = v18;
          *(v14 + 6) = 0;
          ++v10;
          v12 += 32;
        }

        while (v10 < HIDWORD(v46));
      }

LABEL_3:
      if (++v7 >= *a1)
      {
        goto LABEL_37;
      }
    }

    LODWORD(v41) = v41 + 1;
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v43, v42 * v41);
    if (!HIDWORD(v41))
    {
      goto LABEL_3;
    }

    v20 = 0;
    v21 = v41 - 1;
    v22 = v9 + 32 * v8 * v7 + 16;
    while (1)
    {
      while (1)
      {
        v23 = v20 + v42 * v21;
        v24 = v43 + 32 * v23;
        v25 = *(v22 - 8);
        if (!v25)
        {
          break;
        }

        mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v43 + 8 * v23, v25, (v22 - 16));
        v27 = *(v22 + 8);
        if (!v27)
        {
          goto LABEL_26;
        }

LABEL_30:
        mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v24, v27, v22, (v24 + 16));
        ++v20;
        v22 += 32;
        if (v20 >= HIDWORD(v41))
        {
          goto LABEL_3;
        }
      }

      v26 = *(v22 - 16);
      if (*(v24 + 2) <= 0x40u || !*v24)
      {
        *v24 = v26;
        *(v24 + 2) = 0;
        v27 = *(v22 + 8);
        if (!v27)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }

      MEMORY[0x259C63150](*v24, 0x1000C8000313F17);
      *v24 = v26;
      *(v24 + 2) = 0;
      v27 = *(v22 + 8);
      if (v27)
      {
        goto LABEL_30;
      }

LABEL_26:
      v28 = *v22;
      if (*(v24 + 6) > 0x40u)
      {
        v29 = *(v24 + 2);
        if (v29)
        {
          MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      *(v24 + 2) = v28;
      *(v24 + 6) = 0;
      ++v20;
      v22 += 32;
      if (v20 >= HIDWORD(v41))
      {
        goto LABEL_3;
      }
    }
  }

LABEL_37:
  *a3 = v46;
  v30 = v49;
  *(a3 + 8) = v47;
  *(a3 + 16) = a3 + 32;
  *(a3 + 24) = 0x1000000000;
  if (v30)
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a3 + 16), &v48);
  }

  *(a3 + 544) = v41;
  v31 = v44;
  *(a3 + 552) = v42;
  *(a3 + 560) = a3 + 576;
  *(a3 + 568) = 0x1000000000;
  if (v31)
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=((a3 + 560), &v43);
    v32 = v43;
    if (v44)
    {
      v33 = v43 + 32 * v44 - 16;
      v34 = -32 * v44;
      do
      {
        if (*(v33 + 2) > 0x40u && *v33)
        {
          MEMORY[0x259C63150](*v33, 0x1000C8000313F17);
        }

        if (*(v33 - 2) > 0x40u)
        {
          v35 = *(v33 - 2);
          if (v35)
          {
            MEMORY[0x259C63150](v35, 0x1000C8000313F17);
          }
        }

        v33 -= 32;
        v34 += 32;
      }

      while (v34);
      v32 = v43;
    }

    if (v32 != v45)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v32 = v43;
    if (v43 != v45)
    {
LABEL_51:
      free(v32);
    }
  }

  v36 = v48;
  if (v49)
  {
    v37 = v48 + 32 * v49 - 16;
    v38 = -32 * v49;
    do
    {
      if (*(v37 + 2) > 0x40u && *v37)
      {
        MEMORY[0x259C63150](*v37, 0x1000C8000313F17);
      }

      if (*(v37 - 2) > 0x40u)
      {
        v39 = *(v37 - 2);
        if (v39)
        {
          MEMORY[0x259C63150](v39, 0x1000C8000313F17);
        }
      }

      v37 -= 32;
      v38 += 32;
    }

    while (v38);
    v36 = v48;
  }

  if (v36 != v50)
  {
    free(v36);
  }
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::print(unsigned int *a1, llvm::raw_ostream *this)
{
  v61 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v41 = 1;
  LOWORD(__p[0]) = 45;
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_77;
  }

  if (!a1[1])
  {
    goto LABEL_57;
  }

  v5 = 0;
  v6 = 1;
  while (2)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

    v7 = 0;
    v38 = v5;
    do
    {
      v8 = *(a1 + 2) + 32 * (v7 + a1[2] * v5);
      v57 = *v8;
      v58 = 0;
      v9 = *(v8 + 8);
      if (v9)
      {
        v58 = *(v8 + 8);
        if (v9 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v57, v8);
        }
      }

      v11 = *(v8 + 16);
      v10 = (v8 + 16);
      v59 = v11;
      v60 = 0;
      v12 = *(v10 + 2);
      if (v12)
      {
        v60 = *(v10 + 2);
        if (v12 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v59, v10);
        }
      }

      __s = 0;
      v51 = 0;
      v52 = 0;
      v43 = 0;
      v47 = 0;
      v48 = 1;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v42 = &unk_2868A3EF8;
      p_s = &__s;
      llvm::raw_ostream::SetBufferAndMode(&v42, 0, 0, 0);
      if (v45 == v46)
      {
        v13 = llvm::raw_ostream::write(&v42, "(", 1uLL);
        llvm::DynamicAPInt::print(&v57, v13);
        v14 = v13[4];
        if (v13[3] != v14)
        {
LABEL_11:
          *v14 = 47;
          v13[4] = v13[4] + 1;
          llvm::DynamicAPInt::print(&v59, v13);
          v15 = v13[4];
          if (v13[3] != v15)
          {
            goto LABEL_12;
          }

          goto LABEL_17;
        }
      }

      else
      {
        *v46++ = 40;
        v13 = &v42;
        llvm::DynamicAPInt::print(&v57, &v42);
        v14 = v46;
        if (v45 != v46)
        {
          goto LABEL_11;
        }
      }

      v13 = llvm::raw_ostream::write(v13, "/", 1uLL);
      llvm::DynamicAPInt::print(&v59, v13);
      v15 = v13[4];
      if (v13[3] != v15)
      {
LABEL_12:
        *v15 = 41;
        v13[4] = v13[4] + 1;
        llvm::raw_ostream::~raw_ostream(&v42);
        v16 = SHIBYTE(v52);
        if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_17:
      llvm::raw_ostream::write(v13, ")", 1uLL);
      llvm::raw_ostream::~raw_ostream(&v42);
      v16 = SHIBYTE(v52);
      if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
      {
LABEL_18:
        v17 = __s;
        v18 = v51;
        if (!v51)
        {
          goto LABEL_43;
        }

        goto LABEL_19;
      }

LABEL_13:
      if (!v16)
      {
        goto LABEL_44;
      }

      v17 = &__s;
      v18 = v16;
LABEL_19:
      if (v41 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v41 >= 0)
      {
        v20 = v41;
      }

      else
      {
        v20 = __p[1];
      }

      if (v20)
      {
        v21 = v17 + v18;
        if (v18 >= v20)
        {
          v24 = this;
          v25 = *v19;
          v26 = v17;
          do
          {
            v27 = v18 - v20;
            if (v27 == -1)
            {
              break;
            }

            v28 = memchr(v26, v25, v27 + 1);
            if (!v28)
            {
              break;
            }

            v22 = v28;
            if (!memcmp(v28, v19, v20))
            {
              goto LABEL_35;
            }

            v26 = v22 + 1;
            v18 = v21 - (v22 + 1);
          }

          while (v18 >= v20);
          v22 = v21;
LABEL_35:
          this = v24;
          v5 = v38;
        }

        else
        {
          v22 = v17 + v18;
        }

        if (v22 == v21)
        {
          v23 = 0;
        }

        else
        {
          v23 = v22 - v17 + 1;
        }
      }

      else
      {
        v23 = 1;
      }

      v29 = v51;
      if (v16 >= 0)
      {
        v29 = v16;
      }

      v39 = vmax_u32(v39, __PAIR64__(v29 - v23, v23));
      if ((v16 & 0x80000000) != 0)
      {
        v17 = __s;
LABEL_43:
        operator delete(v17);
      }

LABEL_44:
      if (v60 > 0x40 && v59)
      {
        MEMORY[0x259C63150](v59, 0x1000C8000313F17);
      }

      if (v58 > 0x40 && v57)
      {
        MEMORY[0x259C63150](v57, 0x1000C8000313F17);
      }

      ++v7;
      v6 = a1[1];
    }

    while (v7 < v6);
    v2 = *a1;
LABEL_4:
    if (++v5 < v2)
    {
      continue;
    }

    break;
  }

  if (v2)
  {
LABEL_57:
    v30 = 0;
    do
    {
      while (1)
      {
        if (a1[1])
        {
          v31 = 0;
          do
          {
            v32 = *(a1 + 2) + 32 * (v31 + v30 * a1[2]);
            v53 = *v32;
            v54 = 0;
            v33 = *(v32 + 8);
            if (v33)
            {
              v54 = *(v32 + 8);
              if (v33 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v53, v32);
              }
            }

            v35 = *(v32 + 16);
            v34 = (v32 + 16);
            v55 = v35;
            v56 = 0;
            v36 = *(v34 + 2);
            if (v36)
            {
              v56 = *(v34 + 2);
              if (v36 >= 0x41)
              {
                llvm::APInt::initSlowCase(&v55, v34);
              }
            }

            mlir::presburger::printWithPrintMetrics<mlir::presburger::Fraction>(this, &v53, 1, &v39);
            if (v56 > 0x40 && v55)
            {
              MEMORY[0x259C63150](v55, 0x1000C8000313F17);
            }

            if (v54 > 0x40 && v53)
            {
              MEMORY[0x259C63150](v53, 0x1000C8000313F17);
            }

            ++v31;
          }

          while (v31 < a1[1]);
        }

        v37 = *(this + 4);
        if (*(this + 3) != v37)
        {
          break;
        }

        llvm::raw_ostream::write(this, "\n", 1uLL);
        if (++v30 >= *a1)
        {
          goto LABEL_77;
        }
      }

      *v37 = 10;
      ++*(this + 4);
      ++v30;
    }

    while (v30 < *a1);
  }

LABEL_77:
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }
}

void mlir::presburger::printWithPrintMetrics<mlir::presburger::Fraction>(void *a1, mlir::presburger::Fraction *a2, int a3, uint64_t a4)
{
  __p = 0;
  v39 = 0;
  v40 = 0;
  v31 = 0;
  v35 = 0;
  v36 = 1;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v30 = &unk_2868A3EF8;
  p_p = &__p;
  llvm::raw_ostream::SetBufferAndMode(&v30, 0, 0, 0);
  mlir::presburger::Fraction::print(a2, &v30);
  llvm::raw_ostream::~raw_ostream(&v30);
  v8 = HIBYTE(v40);
  if ((SHIBYTE(v40) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v40))
    {
      v9 = &__p;
      v10 = SHIBYTE(v40);
      goto LABEL_6;
    }

LABEL_20:
    v16 = 0;
    v17 = a3;
    if (!(a3 + *a4))
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v10 = v39;
  if (!v39)
  {
    goto LABEL_20;
  }

  v9 = __p;
LABEL_6:
  v11 = *(a4 + 31);
  if (v11 >= 0)
  {
    v12 = (a4 + 8);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  if (v11 >= 0)
  {
    v13 = *(a4 + 31);
  }

  else
  {
    v13 = *(a4 + 16);
  }

  if (!v13)
  {
    v16 = 1;
    v17 = a3 - 1;
    if (!(a3 - 1 + *a4))
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v14 = &v9[v10];
  if (v10 >= v13)
  {
    v26 = *v12;
    v27 = v9;
    do
    {
      v28 = v10 - v13;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v15 = v29;
      if (!memcmp(v29, v12, v13))
      {
        goto LABEL_15;
      }

      v27 = v15 + 1;
      v10 = v14 - (v15 + 1);
    }

    while (v10 >= v13);
  }

  v15 = v14;
LABEL_15:
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 - v9 + 1;
  }

  v17 = a3 - v16;
  if (a3 - v16 + *a4)
  {
LABEL_23:
    v18 = 0;
    do
    {
      while (1)
      {
        v19 = a1[4];
        if (a1[3] != v19)
        {
          break;
        }

        llvm::raw_ostream::write(a1, " ", 1uLL);
        if (++v18 >= v17 + *a4)
        {
          goto LABEL_27;
        }
      }

      *v19 = 32;
      ++a1[4];
      ++v18;
    }

    while (v18 < v17 + *a4);
LABEL_27:
    v8 = HIBYTE(v40);
  }

LABEL_28:
  if ((v8 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v8 & 0x80u) == 0)
  {
    v21 = v8;
  }

  else
  {
    v21 = v39;
  }

  llvm::raw_ostream::write(a1, v20, v21);
  v22 = 0;
  v23 = SHIBYTE(v40);
  v24 = *(a4 + 4) + v16;
  if ((SHIBYTE(v40) & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (v24 - v39 > v22)
  {
    while (1)
    {
      v25 = a1[4];
      if (a1[3] == v25)
      {
        llvm::raw_ostream::write(a1, " ", 1uLL);
        v22 = (v22 + 1);
        v23 = SHIBYTE(v40);
        v24 = *(a4 + 4) + v16;
        if ((SHIBYTE(v40) & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        *v25 = 32;
        ++a1[4];
        v22 = (v22 + 1);
        v23 = SHIBYTE(v40);
        v24 = *(a4 + 4) + v16;
        if ((SHIBYTE(v40) & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_37:
      if (v24 - v23 <= v22)
      {
        return;
      }
    }
  }

  operator delete(__p);
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::dump(llvm *a1)
{
  llvm::errs(a1);

  mlir::presburger::Matrix<mlir::presburger::Fraction>::print();
}

void mlir::presburger::Matrix<mlir::presburger::Fraction>::moveColumns(uint64_t a1, int a2, int a3, int a4)
{
  if (a3)
  {
    if (a4 != a2)
    {
      mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns();
    }
  }
}

uint64_t mlir::presburger::IntMatrix::identity@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  *a2 = this;
  *(a2 + 4) = this;
  *(a2 + 8) = this;
  v4 = a2 + 32;
  *(a2 + 16) = v4;
  v5 = (this * this);
  *(a2 + 24) = 0x1000000000;
  if (v5)
  {
    if (v5 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    if (this * this)
    {
      v6 = v4 + 16 * v5;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        v4 += 16;
      }

      while (v4 != v6);
    }

    *(a2 + 24) = v5;
    if (*(a2 + 28) < (*a2 * *(a2 + 8)))
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  if (this)
  {
    v7 = 0;
    do
    {
      v8 = *(a2 + 16) + 16 * (v7 + v7 * *(a2 + 8));
      if (*(v8 + 8) > 0x40u)
      {
        this = *v8;
        if (*v8)
        {
          this = MEMORY[0x259C63150](this, 0x1000C8000313F17);
        }
      }

      *v8 = 1;
      *(v8 + 8) = 0;
      ++v7;
    }

    while (v2 != v7);
  }

  return this;
}

void mlir::presburger::IntMatrix::computeHermiteNormalForm(mlir::presburger::IntMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v48[32] = *MEMORY[0x277D85DE8];
  v44 = *this;
  v45 = *(this + 2);
  v46 = v48;
  v47 = 0x1000000000;
  if (*(this + 6))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v46, this + 2);
  }

  mlir::presburger::IntMatrix::identity(HIDWORD(v44), &v39);
  if (v44)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = HIDWORD(v44);
      v6 = v3;
      if (v3 < HIDWORD(v44))
      {
        break;
      }

      if (v3 != HIDWORD(v44))
      {
        goto LABEL_16;
      }

LABEL_6:
      if (++v4 >= v44)
      {
        goto LABEL_61;
      }
    }

    do
    {
      v7 = v46 + 16 * v6 + 16 * v4 * v45;
      if (*(v7 + 2))
      {
        if (!llvm::detail::operator==(v7, 0))
        {
          goto LABEL_15;
        }
      }

      else if (*v7)
      {
        goto LABEL_15;
      }

      ++v6;
    }

    while (v5 != v6);
    v6 = v5;
LABEL_15:
    if (v6 == HIDWORD(v44))
    {
      goto LABEL_6;
    }

LABEL_16:
    if (v6 != v3)
    {
      if (v44)
      {
        v8 = 0;
        do
        {
          std::swap[abi:nn200100]<llvm::DynamicAPInt>((v46 + 16 * v45 * v8 + 16 * v6), v46 + 16 * v45 * v8 + 16 * v3);
          ++v8;
        }

        while (v8 < v44);
      }

      if (v39)
      {
        v9 = 0;
        do
        {
          std::swap[abi:nn200100]<llvm::DynamicAPInt>((v41 + 16 * v40 * v9 + 16 * v6), v41 + 16 * v40 * v9 + 16 * v3);
          ++v9;
        }

        while (v9 < v39);
      }
    }

    v10 = v46 + 16 * v3 + 16 * v45 * v4;
    if (*(v10 + 2))
    {
      if (llvm::detail::operator<(v10, 0))
      {
LABEL_28:
        mlir::presburger::Matrix<llvm::DynamicAPInt>::negateColumn();
      }
    }

    else if ((*v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    v11 = HIDWORD(v44);
    v12 = v3 + 1;
    if (v3 + 1 >= HIDWORD(v44))
    {
LABEL_29:
      if (v3)
      {
        modEntryColumnOperation(&v44, v4, v3, 0);
      }

      v3 = 1;
      goto LABEL_6;
    }

    while (1)
    {
      v13 = v46 + 16 * (v12 + v45 * v4);
      if (*(v13 + 2))
      {
        if (llvm::detail::operator<(v13, 0))
        {
LABEL_34:
          mlir::presburger::Matrix<llvm::DynamicAPInt>::negateColumn();
        }
      }

      else if ((*v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v14 = v45;
      v15 = v46 + 16 * (v45 * v4 + v12);
      if (*(v15 + 2))
      {
        v17 = llvm::detail::operator!=(v15, 0);
        v14 = v45;
        if (!v17)
        {
          goto LABEL_44;
        }

        v16 = v46 + 16 * v45 * v4 + 16 * v3;
        if (!*(v16 + 2))
        {
LABEL_38:
          if (*v16)
          {
            goto LABEL_39;
          }

          goto LABEL_44;
        }
      }

      else
      {
        if (!*v15)
        {
          goto LABEL_44;
        }

        v16 = v46 + 16 * v45 * v4 + 16 * v3;
        if (!*(v16 + 2))
        {
          goto LABEL_38;
        }
      }

      if (llvm::detail::operator!=(v16, 0))
      {
LABEL_39:
        modEntryColumnOperation(&v44, v4, v3, v12);
      }

      v14 = v45;
LABEL_44:
      v18 = v46 + 16 * v3 + 16 * v14 * v4;
      if (*(v18 + 2))
      {
        v22 = llvm::detail::operator==(v18, 0);
        if (v12 != v3 && v22)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (*v18)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 == v3;
        }

        if (!v19)
        {
LABEL_49:
          if (v44)
          {
            v20 = 0;
            do
            {
              std::swap[abi:nn200100]<llvm::DynamicAPInt>((v46 + 16 * v45 * v20 + 16 * v12), v46 + 16 * v45 * v20 + 16 * v3);
              ++v20;
            }

            while (v20 < v44);
          }

          if (v39)
          {
            v21 = 0;
            do
            {
              std::swap[abi:nn200100]<llvm::DynamicAPInt>((v41 + 16 * v40 * v21 + 16 * v12), v41 + 16 * v40 * v21 + 16 * v3);
              ++v21;
            }

            while (v21 < v39);
          }
        }
      }

      if (++v12 == v11)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_61:
  *a2 = v44;
  v23 = v47;
  *(a2 + 8) = v45;
  *(a2 + 16) = a2 + 32;
  *(a2 + 24) = 0x1000000000;
  if (v23)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a2 + 16), &v46);
  }

  *(a2 + 288) = v39;
  v24 = v42;
  *(a2 + 296) = v40;
  *(a2 + 304) = a2 + 320;
  *(a2 + 312) = 0x1000000000;
  if (v24)
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((a2 + 304), &v41);
    v25 = v41;
    if (!v42)
    {
      goto LABEL_73;
    }

    v26 = (v41 + 16 * v42 - 8);
    v27 = -16 * v42;
    v28 = v26;
    do
    {
      v30 = *v28;
      v28 -= 4;
      v29 = v30;
      if (v30)
      {
        if (v29 >= 0x41)
        {
          v31 = *(v26 - 1);
          if (v31)
          {
            MEMORY[0x259C63150](v31, 0x1000C8000313F17);
          }
        }
      }

      v26 = v28;
      v27 += 16;
    }

    while (v27);
  }

  v25 = v41;
LABEL_73:
  if (v25 != &v43)
  {
    free(v25);
  }

  v32 = v46;
  if (v47)
  {
    v33 = (v46 + 16 * v47 - 8);
    v34 = -16 * v47;
    v35 = v33;
    do
    {
      v37 = *v35;
      v35 -= 4;
      v36 = v37;
      if (v37)
      {
        if (v36 >= 0x41)
        {
          v38 = *(v33 - 1);
          if (v38)
          {
            MEMORY[0x259C63150](v38, 0x1000C8000313F17);
          }
        }
      }

      v33 = v35;
      v34 += 16;
    }

    while (v34);
    v32 = v46;
  }

  if (v32 != v48)
  {
    free(v32);
  }
}

void modEntryColumnOperation(uint64_t a1, int a2, int a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8) * a2;
  v5 = *(a1 + 16);
  v6 = v5 + 16 * (v4 + a4);
  v7 = v5 + 16 * (v4 + a3);
  if (*(v6 + 8) || *(v7 + 8))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6, &v13);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v7, &v11);
    llvm::detail::floorDiv(&v13, &v11, &v17);
    v16 = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&v15, &v17);
    }

    v15 = v17;
    if (v12 >= 0x41 && v11)
    {
      MEMORY[0x259C63150](v11, 0x1000C8000313F17);
    }

    if (v14 >= 0x41 && v13)
    {
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
    }
  }

  else
  {
    v8 = *v6;
    v9 = *v7;
    if (*v6 == 0x8000000000000000 && v9 == -1)
    {
      mlir::presburger::operator-(v6);
    }

    else
    {
      if (v8)
      {
        if ((v9 ^ v8) < 0)
        {
          v8 = (((v9 >> 63) | 1) + v8) / v9 - 1;
        }

        else
        {
          v8 /= v9;
        }
      }

      v15 = v8;
      v16 = 0;
    }
  }

  if (v16 || v15 == 0x8000000000000000)
  {
    mlir::presburger::operator-(&v15);
  }

  else
  {
    v17 = -v15;
    v18 = 0;
  }

  if (v16 > 0x40)
  {
    if (v15)
    {
      MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    }
  }

  mlir::presburger::Matrix<llvm::DynamicAPInt>::addToColumn();
}

void mlir::presburger::IntMatrix::determinant(mlir::presburger::IntMatrix *this@<X0>, mlir::presburger::IntMatrix *a2@<X1>, llvm::APInt *a3@<X8>)
{
  v70[64] = *MEMORY[0x277D85DE8];
  v62 = *this;
  v63 = *(this + 2);
  v64 = v66;
  v65 = 0x1000000000;
  if (*(this + 6))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(&v64, this + 2);
  }

  mlir::presburger::FracMatrix::FracMatrix(v67, &v62);
  v6 = v64;
  if (v65)
  {
    v7 = (v64 + 16 * v65 - 8);
    v8 = -16 * v65;
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
    v6 = v64;
  }

  if (v6 != v66)
  {
    free(v6);
  }

  v13 = *(this + 1);
  v57[0] = *this;
  v57[1] = v13;
  v58 = v13;
  v59 = v61;
  v60 = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v59, (v13 * v57[0]));
  if (HIDWORD(v60) < v58 * v57[0])
  {
    v50 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  mlir::presburger::FracMatrix::determinant(v67, v57, &v50);
  mlir::presburger::Fraction::getAsInteger(&v50, &v55);
  if (v53 > 0x40 && v52)
  {
    MEMORY[0x259C63150](v52, 0x1000C8000313F17);
  }

  if (v51 > 0x40 && v50)
  {
    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
  }

  if (!v56)
  {
    if (v55)
    {
      goto LABEL_19;
    }

LABEL_79:
    *a3 = 0;
    *(a3 + 2) = 0;
    goto LABEL_80;
  }

  if (llvm::detail::operator==(&v55, 0))
  {
    goto LABEL_79;
  }

LABEL_19:
  if (!a2)
  {
    goto LABEL_71;
  }

  v14 = *(this + 1);
  LODWORD(v50) = *this;
  HIDWORD(v50) = v14;
  v51 = v14;
  v15 = v14 * v50;
  v52 = v54;
  v53 = 0x1000000000;
  if (v15)
  {
    if (v15 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    v16 = v54;
    do
    {
      *v16 = 0;
      *(v16++ + 2) = 0;
    }

    while (v16 != &v54[v15]);
    LODWORD(v53) = v15;
    if (HIDWORD(v53) < v50 * v51)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  *a2 = v50;
  *(a2 + 2) = v51;
  llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=(a2 + 2, &v52);
  v17 = v52;
  if (v53)
  {
    v18 = (v52 + 16 * v53 - 8);
    v19 = -16 * v53;
    v20 = v18;
    do
    {
      v22 = *v20;
      v20 -= 4;
      v21 = v22;
      if (v22)
      {
        if (v21 >= 0x41)
        {
          v23 = *(v18 - 1);
          if (v23)
          {
            MEMORY[0x259C63150](v23, 0x1000C8000313F17);
          }
        }
      }

      v18 = v20;
      v19 += 16;
    }

    while (v19);
    v17 = v52;
  }

  if (v17 != v54)
  {
    free(v17);
  }

  v24 = *this;
  if (!*this || !*(this + 1))
  {
    goto LABEL_71;
  }

  v25 = 0;
  v26 = 1;
  while (2)
  {
    if (!v26)
    {
      goto LABEL_41;
    }

    for (i = 0; i < v26; ++i)
    {
      v28 = (v59 + 32 * i + 32 * v25 * v58);
      v42 = 1;
      v43 = 0;
      mlir::presburger::Fraction::Fraction(&v44, &v55, &v42);
      mlir::presburger::operator*(v28, &v44, &v50);
      mlir::presburger::Fraction::getAsInteger(&v50, &v48);
      v29 = (*(a2 + 2) + 16 * (i + v25 * *(a2 + 2)));
      if (v49)
      {
        mlir::presburger::detail::computeUnimodularConeGeneratingFunction(v29, v49, &v48);
        v31 = v49;
        if (!v49)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v30 = v48;
        if (v29[2] > 0x40 && *v29)
        {
          v32 = *(a2 + 2) + 16 * (i + v25 * *(a2 + 2));
          MEMORY[0x259C63150](*v29, 0x1000C8000313F17);
          *v32 = v30;
          *(v32 + 8) = 0;
          v31 = v49;
          if (!v49)
          {
            goto LABEL_47;
          }
        }

        else
        {
          *v29 = v48;
          v29[2] = 0;
          v31 = v49;
          if (!v49)
          {
            goto LABEL_47;
          }
        }
      }

      if (v31 >= 0x41 && v48)
      {
        MEMORY[0x259C63150](v48, 0x1000C8000313F17);
      }

LABEL_47:
      if (v53 > 0x40 && v52)
      {
        MEMORY[0x259C63150](v52, 0x1000C8000313F17);
      }

      if (v51 > 0x40 && v50)
      {
        MEMORY[0x259C63150](v50, 0x1000C8000313F17);
      }

      if (v47 > 0x40 && v46)
      {
        MEMORY[0x259C63150](v46, 0x1000C8000313F17);
      }

      if (v45 > 0x40 && v44)
      {
        MEMORY[0x259C63150](v44, 0x1000C8000313F17);
      }

      if (v43 > 0x40 && v42)
      {
        MEMORY[0x259C63150](v42, 0x1000C8000313F17);
      }

      v26 = *(this + 1);
    }

    v24 = *this;
LABEL_41:
    if (++v25 < v24)
    {
      continue;
    }

    break;
  }

LABEL_71:
  *a3 = v55;
  *(a3 + 2) = 0;
  v33 = v56;
  if (v56)
  {
    *(a3 + 2) = v56;
    if (v33 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3, &v55);
    }

LABEL_80:
    if (v56 > 0x40 && v55)
    {
      MEMORY[0x259C63150](v55, 0x1000C8000313F17);
    }
  }

  v34 = v59;
  if (v60)
  {
    v35 = v59 + 32 * v60 - 16;
    v36 = -32 * v60;
    do
    {
      if (*(v35 + 2) > 0x40u && *v35)
      {
        MEMORY[0x259C63150](*v35, 0x1000C8000313F17);
      }

      if (*(v35 - 2) > 0x40u)
      {
        v37 = *(v35 - 2);
        if (v37)
        {
          MEMORY[0x259C63150](v37, 0x1000C8000313F17);
        }
      }

      v35 -= 32;
      v36 += 32;
    }

    while (v36);
    v34 = v59;
  }

  if (v34 != v61)
  {
    free(v34);
  }

  v38 = v68;
  if (v69)
  {
    v39 = v68 + 32 * v69 - 16;
    v40 = -32 * v69;
    do
    {
      if (*(v39 + 2) > 0x40u && *v39)
      {
        MEMORY[0x259C63150](*v39, 0x1000C8000313F17);
      }

      if (*(v39 - 2) > 0x40u)
      {
        v41 = *(v39 - 2);
        if (v41)
        {
          MEMORY[0x259C63150](v41, 0x1000C8000313F17);
        }
      }

      v39 -= 32;
      v40 += 32;
    }

    while (v40);
    v38 = v68;
  }

  if (v38 != v70)
  {
    free(v38);
  }
}

uint64_t mlir::presburger::FracMatrix::FracMatrix(uint64_t a1, int *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v5;
  *(a1 + 8) = v5;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (v5 * v4));
  if (*(a1 + 28) < (*(a1 + 8) * *a1))
  {
    v22 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v6 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v7 = a2[1];
  if (!v7)
  {
    return a1;
  }

  v8 = 0;
LABEL_6:
  for (i = 0; i != v7; ++i)
  {
    v10 = (*(a2 + 2) + 16 * (i + v8 * a2[2]));
    v20 = 1;
    v21 = 0;
    mlir::presburger::Fraction::Fraction(&v22, v10, &v20);
    v11 = (i + v8 * *(a1 + 8));
    v12 = *(a1 + 16);
    v13 = v12 + 32 * v11;
    if (v23)
    {
      mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v12 + 32 * v11), v23, &v22);
      v15 = v25;
      if (v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = v22;
      if (*(v13 + 8) > 0x40u && *v13)
      {
        MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
        *v13 = v14;
        *(v13 + 8) = 0;
        v15 = v25;
        if (v25)
        {
LABEL_17:
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v13, v15, &v24, v13 + 16);
          v17 = v25;
          if (!v25)
          {
            goto LABEL_12;
          }

          goto LABEL_28;
        }
      }

      else
      {
        *v13 = v22;
        *(v13 + 8) = 0;
        v15 = v25;
        if (v25)
        {
          goto LABEL_17;
        }
      }
    }

    v16 = v24;
    if (*(v13 + 24) > 0x40u && (v18 = *(v13 + 16)) != 0)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      *(v13 + 16) = v16;
      *(v13 + 24) = 0;
      v17 = v25;
      if (!v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v13 + 16) = v24;
      *(v13 + 24) = 0;
      v17 = v25;
      if (!v25)
      {
        goto LABEL_12;
      }
    }

LABEL_28:
    if (v17 >= 0x41 && v24)
    {
      MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }

LABEL_12:
    if (v23 > 0x40 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    if (v21 > 0x40 && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  while (++v8 != v6)
  {
    v7 = a2[1];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  return a1;
}

{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = a2[1];
  *a1 = *a2;
  *(a1 + 4) = v5;
  *(a1 + 8) = v5;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>((a1 + 16), (v5 * v4));
  if (*(a1 + 28) < (*(a1 + 8) * *a1))
  {
    v22 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v6 = *a2;
  if (!*a2)
  {
    return a1;
  }

  v7 = a2[1];
  if (!v7)
  {
    return a1;
  }

  v8 = 0;
LABEL_6:
  for (i = 0; i != v7; ++i)
  {
    v10 = (*(a2 + 2) + 16 * (i + v8 * a2[2]));
    v20 = 1;
    v21 = 0;
    mlir::presburger::Fraction::Fraction(&v22, v10, &v20);
    v11 = (i + v8 * *(a1 + 8));
    v12 = *(a1 + 16);
    v13 = v12 + 32 * v11;
    if (v23)
    {
      mlir::presburger::detail::computeUnimodularConeGeneratingFunction((v12 + 32 * v11), v23, &v22);
      v15 = v25;
      if (v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = v22;
      if (*(v13 + 8) > 0x40u && *v13)
      {
        MEMORY[0x259C63150](*v13, 0x1000C8000313F17);
        *v13 = v14;
        *(v13 + 8) = 0;
        v15 = v25;
        if (v25)
        {
LABEL_17:
          mlir::presburger::Matrix<mlir::presburger::Fraction>::insertColumns(v13, v15, &v24, v13 + 16);
          v17 = v25;
          if (!v25)
          {
            goto LABEL_12;
          }

          goto LABEL_28;
        }
      }

      else
      {
        *v13 = v22;
        *(v13 + 8) = 0;
        v15 = v25;
        if (v25)
        {
          goto LABEL_17;
        }
      }
    }

    v16 = v24;
    if (*(v13 + 24) > 0x40u && (v18 = *(v13 + 16)) != 0)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
      *(v13 + 16) = v16;
      *(v13 + 24) = 0;
      v17 = v25;
      if (!v25)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *(v13 + 16) = v24;
      *(v13 + 24) = 0;
      v17 = v25;
      if (!v25)
      {
        goto LABEL_12;
      }
    }

LABEL_28:
    if (v17 >= 0x41 && v24)
    {
      MEMORY[0x259C63150](v24, 0x1000C8000313F17);
    }

LABEL_12:
    if (v23 > 0x40 && v22)
    {
      MEMORY[0x259C63150](v22, 0x1000C8000313F17);
    }

    if (v21 > 0x40 && v20)
    {
      MEMORY[0x259C63150](v20, 0x1000C8000313F17);
    }
  }

  while (++v8 != v6)
  {
    v7 = a2[1];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  return a1;
}

void mlir::presburger::FracMatrix::determinant(mlir::presburger::FracMatrix *this@<X0>, mlir::presburger::FracMatrix *a2@<X1>, uint64_t *a3@<X8>)
{
  v75[64] = *MEMORY[0x277D85DE8];
  v71 = *this;
  v72 = *(this + 2);
  v73 = v75;
  v74 = 0x1000000000;
  if (*(this + 6))
  {
    llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(&v73, this + 16);
  }

  v6 = *(this + 1);
  v65 = *this;
  v66 = v6;
  v67 = v6;
  v68 = v70;
  v69 = 0x1000000000;
  llvm::SmallVectorImpl<mlir::presburger::Fraction>::resizeImpl<false>(&v68, (v6 * v65));
  if (HIDWORD(v69) < v67 * v65)
  {
    v61 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  if (a2)
  {
    mlir::presburger::FracMatrix::identity(*this);
  }

  v57 = 0;
  v58 = 0;
  v59 = 1;
  v60 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 1;
  v56 = 0;
  if (*this)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7;
      v9 = v72;
      v10 = v73;
      v51 = 1;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      mlir::presburger::Fraction::Fraction(&v61, &v49, &v51);
      if (v50 > 0x40 && v49)
      {
        MEMORY[0x259C63150](v49, 0x1000C8000313F17);
      }

      v11 = mlir::presburger::compare(&v10[4 * v7 + 4 * v7 * v9], &v61);
      if (v64 > 0x40 && v63)
      {
        v34 = v11;
        MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        v11 = v34;
      }

      if (v62 > 0x40 && v61)
      {
        v35 = v11;
        MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        v11 = v35;
      }

      if (v52 > 0x40 && v51)
      {
        v36 = v11;
        MEMORY[0x259C63150](v51, 0x1000C8000313F17);
        v11 = v36;
      }

      if (!v11)
      {
        v26 = v7;
        while (v26 + 1 < *this)
        {
          v27 = v72;
          v28 = v73;
          v51 = 1;
          v52 = 0;
          v49 = 0;
          v50 = 0;
          mlir::presburger::Fraction::Fraction(&v61, &v49, &v51);
          if (v50 > 0x40 && v49)
          {
            MEMORY[0x259C63150](v49, 0x1000C8000313F17);
          }

          v29 = mlir::presburger::compare(&v28[4 * v8 + 4 * v27 * (v26 + 1)], &v61);
          if (v64 > 0x40 && v63)
          {
            v30 = v29;
            MEMORY[0x259C63150](v63, 0x1000C8000313F17);
            v29 = v30;
          }

          if (v62 > 0x40 && v61)
          {
            v31 = v29;
            MEMORY[0x259C63150](v61, 0x1000C8000313F17);
            v29 = v31;
          }

          if (v52 > 0x40 && v51)
          {
            v32 = v29;
            MEMORY[0x259C63150](v51, 0x1000C8000313F17);
            v29 = v32;
          }

          ++v26;
          if (v29)
          {
            if (HIDWORD(v71))
            {
              v33 = 0;
              do
              {
                std::swap[abi:nn200100]<mlir::presburger::Fraction>(v73 + 8 * v33 + 8 * v26 * v72, v73 + 4 * v33 + 4 * v8 * v72);
                ++v33;
              }

              while (v33 < HIDWORD(v71));
            }

            break;
          }
        }
      }

      mlir::presburger::Fraction::operator=(&v53, v73 + 4 * v8 + 4 * v8 * v72);
      v51 = 1;
      v52 = 0;
      v49 = 0;
      v50 = 0;
      mlir::presburger::Fraction::Fraction(&v61, &v49, &v51);
      if (v50 > 0x40 && v49)
      {
        MEMORY[0x259C63150](v49, 0x1000C8000313F17);
      }

      v12 = mlir::presburger::compare(&v53, &v61);
      if (v64 > 0x40 && v63)
      {
        v37 = v12;
        MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        v12 = v37;
      }

      if (v62 > 0x40 && v61)
      {
        v38 = v12;
        MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        v12 = v38;
      }

      if (v52 > 0x40 && v51)
      {
        v39 = v12;
        MEMORY[0x259C63150](v51, 0x1000C8000313F17);
        v12 = v39;
      }

      if (!v12)
      {
        break;
      }

      v7 = v8 + 1;
      v13 = *this;
      if (v8 + 1 < *this)
      {
        v14 = v8 + 1;
        while (1)
        {
          v15 = v72;
          v16 = v73;
          v51 = 1;
          v52 = 0;
          v49 = 0;
          v50 = 0;
          mlir::presburger::Fraction::Fraction(&v61, &v49, &v51);
          if (v50 > 0x40 && v49)
          {
            MEMORY[0x259C63150](v49, 0x1000C8000313F17);
          }

          v17 = mlir::presburger::compare(&v16[4 * v8 + 4 * v15 * v14], &v61);
          if (v64 > 0x40 && v63)
          {
            v23 = v17;
            MEMORY[0x259C63150](v63, 0x1000C8000313F17);
            v17 = v23;
          }

          if (v62 > 0x40 && v61)
          {
            v24 = v17;
            MEMORY[0x259C63150](v61, 0x1000C8000313F17);
            v17 = v24;
          }

          if (v52 > 0x40 && v51)
          {
            v25 = v17;
            MEMORY[0x259C63150](v51, 0x1000C8000313F17);
            v17 = v25;
          }

          if (v17)
          {
            break;
          }

          ++v14;
          v13 = *this;
          if (v14 >= *this)
          {
            goto LABEL_9;
          }
        }

        v18 = v73 + 32 * v8 + 32 * v72 * v14;
        v19 = *(v18 + 2);
        if (v19)
        {
          std::swap[abi:nn200100]<llvm::DynamicAPInt>(&v58, v19, v18, &v57);
          v21 = *(v18 + 6);
          if (v21)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v20 = *v18;
          if (v58 > 0x40 && v57)
          {
            MEMORY[0x259C63150](v57, 0x1000C8000313F17);
            v57 = v20;
            v58 = 0;
            v21 = *(v18 + 6);
            if (v21)
            {
LABEL_43:
              std::swap[abi:nn200100]<llvm::DynamicAPInt>(&v60, v21, (v18 + 16), &v59);
              goto LABEL_33;
            }
          }

          else
          {
            v57 = *v18;
            v58 = 0;
            v21 = *(v18 + 6);
            if (v21)
            {
              goto LABEL_43;
            }
          }
        }

        v22 = *(v18 + 2);
        if (v60 > 0x40)
        {
          if (v59)
          {
            MEMORY[0x259C63150](v59, 0x1000C8000313F17);
          }
        }

        v59 = v22;
        v60 = 0;
LABEL_33:
        mlir::presburger::operator-(&v57, &v49);
        mlir::presburger::operator/(&v49, &v53, &v61);
        mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow();
      }

LABEL_9:
      if (v7 >= v13)
      {
        goto LABEL_90;
      }
    }

    v49 = 1;
    v50 = 0;
    v61 = 0;
    v62 = 0;
    mlir::presburger::Fraction::Fraction(a3, &v61, &v49);
    if (v62 > 0x40 && v61)
    {
      MEMORY[0x259C63150](v61, 0x1000C8000313F17);
    }

    if (v50 > 0x40 && v49)
    {
      MEMORY[0x259C63150](v49, 0x1000C8000313F17);
    }
  }

  else
  {
LABEL_90:
    v49 = 1;
    v50 = 0;
    v61 = 1;
    v62 = 0;
    mlir::presburger::Fraction::Fraction(a3, &v61, &v49);
    if (v62 > 0x40 && v61)
    {
      MEMORY[0x259C63150](v61, 0x1000C8000313F17);
    }

    if (v50 > 0x40 && v49)
    {
      MEMORY[0x259C63150](v49, 0x1000C8000313F17);
    }

    if (*this)
    {
      v40 = 0;
      do
      {
        mlir::presburger::operator*(a3, v73 + 4 * v40 + 4 * v40 * v72, &v61);
        mlir::presburger::Fraction::operator=(a3, &v61);
        if (v64 > 0x40 && v63)
        {
          MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        }

        if (v62 > 0x40 && v61)
        {
          MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        }

        ++v40;
      }

      while (v40 < *this);
    }
  }

  if (v56 > 0x40 && v55)
  {
    MEMORY[0x259C63150](v55, 0x1000C8000313F17);
  }

  if (v54 > 0x40 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  if (v60 > 0x40 && v59)
  {
    MEMORY[0x259C63150](v59, 0x1000C8000313F17);
  }

  if (v58 > 0x40 && v57)
  {
    MEMORY[0x259C63150](v57, 0x1000C8000313F17);
  }

  v41 = v68;
  if (v69)
  {
    v42 = v68 + 32 * v69 - 16;
    v43 = -32 * v69;
    do
    {
      if (*(v42 + 2) > 0x40u && *v42)
      {
        MEMORY[0x259C63150](*v42, 0x1000C8000313F17);
      }

      if (*(v42 - 2) > 0x40u)
      {
        v44 = *(v42 - 2);
        if (v44)
        {
          MEMORY[0x259C63150](v44, 0x1000C8000313F17);
        }
      }

      v42 -= 32;
      v43 += 32;
    }

    while (v43);
    v41 = v68;
  }

  if (v41 != v70)
  {
    free(v41);
  }

  v45 = v73;
  if (v74)
  {
    v46 = v73 + 32 * v74 - 16;
    v47 = -32 * v74;
    do
    {
      if (*(v46 + 2) > 0x40u && *v46)
      {
        MEMORY[0x259C63150](*v46, 0x1000C8000313F17);
      }

      if (*(v46 - 2) > 0x40u)
      {
        v48 = *(v46 - 2);
        if (v48)
        {
          MEMORY[0x259C63150](v48, 0x1000C8000313F17);
        }
      }

      v46 -= 32;
      v47 += 32;
    }

    while (v47);
    v45 = v73;
  }

  if (v45 != v75)
  {
    free(v45);
  }
}

void mlir::presburger::Fraction::getAsInteger(mlir::presburger::Fraction *this@<X0>, llvm::APInt *a2@<X8>)
{
  if (*(this + 2) || *(this + 6))
  {
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this, &v9);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this + 16, &v7);
    llvm::detail::SlowDynamicAPInt::operator/(&v9, &v7, &v11);
    v6 = v12;
    *(a2 + 2) = v12;
    if (v6 > 0x40)
    {
      llvm::APInt::initSlowCase(a2, &v11);
    }

    *a2 = v11;
    if (v8 >= 0x41 && v7)
    {
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }

    if (v10 >= 0x41 && v9)
    {
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
    }
  }

  else
  {
    v2 = *(this + 2);
    if (*this == 0x8000000000000000 && v2 == -1)
    {
      mlir::presburger::operator-(this);
    }

    else
    {
      *a2 = *this / v2;
      *(a2 + 2) = 0;
    }
  }
}

void **mlir::presburger::FracMatrix::gramSchmidt@<X0>(mlir::presburger::FracMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v10[4] = *MEMORY[0x277D85DE8];
  *a2 = *this;
  *(a2 + 8) = *(this + 2);
  *(a2 + 16) = a2 + 32;
  result = (a2 + 16);
  *(a2 + 24) = 0x1000000000;
  if (*(this + 6))
  {
    result = llvm::SmallVectorImpl<mlir::presburger::Fraction>::operator=(result, this + 16);
  }

  if (*this >= 2u)
  {
    mlir::presburger::dotProduct(*(a2 + 16), *(a2 + 4), *(a2 + 16), v10);
    mlir::presburger::dotProduct((*(a2 + 16) + 32 * *(a2 + 8)), *(a2 + 4), *(a2 + 16), &v5);
    mlir::presburger::operator/(&v5, v10, &v9);
    if (v8 > 0x40 && v7)
    {
      MEMORY[0x259C63150](v7, 0x1000C8000313F17);
    }

    if (v6 > 0x40)
    {
      if (v5)
      {
        MEMORY[0x259C63150](v5, 0x1000C8000313F17);
      }
    }

    mlir::presburger::operator-(&v9, &v5);
    mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow();
  }

  return result;
}

void mlir::presburger::FracMatrix::LLL(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  v31 = 0;
  mlir::presburger::FracMatrix::gramSchmidt(a1, &v24);
  if (*a1 >= 2u)
  {
    mlir::presburger::dotProduct((*(a1 + 16) + 32 * *(a1 + 8)), *(a1 + 4), v25, &v20);
    mlir::presburger::dotProduct(v25, HIDWORD(v24), v25, &v16);
    mlir::presburger::operator/(&v20, &v16, &v12);
    if (v13)
    {
      std::swap[abi:nn200100]<llvm::DynamicAPInt>(&v29, v13, &v12, &v28);
      v3 = v15;
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v2 = v12;
      if (v29 > 0x40 && v28)
      {
        MEMORY[0x259C63150](v28, 0x1000C8000313F17);
        v28 = v2;
        v29 = 0;
        v3 = v15;
        if (v15)
        {
LABEL_18:
          std::swap[abi:nn200100]<llvm::DynamicAPInt>(&v31, v3, &v14, &v30);
          v6 = v15;
          if (!v15)
          {
            goto LABEL_7;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v28 = v12;
        v29 = 0;
        v3 = v15;
        if (v15)
        {
          goto LABEL_18;
        }
      }
    }

    v4 = v14;
    if (v31 <= 0x40 || !v30)
    {
      v30 = v14;
      v31 = 0;
      goto LABEL_7;
    }

    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
    v30 = v4;
    v31 = 0;
    v6 = v15;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_39:
    if (v6 >= 0x41 && v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

LABEL_7:
    if (v13 > 0x40 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }

    if (v19 > 0x40 && v18)
    {
      MEMORY[0x259C63150](v18, 0x1000C8000313F17);
    }

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

    mlir::presburger::round(&v28, &v12);
    if (v13)
    {
      std::swap[abi:nn200100]<llvm::DynamicAPInt>(&v33, v13, &v12, &v32);
      v7 = v13;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v12;
      if (v33 <= 0x40 || !v32)
      {
        v32 = v12;
        v33 = 0;
        goto LABEL_15;
      }

      MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      v32 = v5;
      v33 = 0;
      v7 = v13;
      if (!v13)
      {
LABEL_15:
        v12 = 1;
        v13 = 0;
        mlir::presburger::Fraction::Fraction(&v20, &v32, &v12);
        if (v13 > 0x40)
        {
          if (v12)
          {
            MEMORY[0x259C63150](v12, 0x1000C8000313F17);
          }
        }

        mlir::presburger::operator-(&v20, &v12);
        mlir::presburger::Matrix<mlir::presburger::Fraction>::addToRow();
      }
    }

    if (v7 >= 0x41 && v12)
    {
      MEMORY[0x259C63150](v12, 0x1000C8000313F17);
    }

    goto LABEL_15;
  }

  v8 = v25;
  if (v26)
  {
    v9 = v25 + 32 * v26 - 16;
    v10 = -32 * v26;
    do
    {
      if (*(v9 + 2) > 0x40u && *v9)
      {
        MEMORY[0x259C63150](*v9, 0x1000C8000313F17);
      }

      if (*(v9 - 2) > 0x40u)
      {
        v11 = *(v9 - 2);
        if (v11)
        {
          MEMORY[0x259C63150](v11, 0x1000C8000313F17);
        }
      }

      v9 -= 32;
      v10 += 32;
    }

    while (v10);
    v8 = v25;
  }

  if (v8 != &v27)
  {
    free(v8);
  }

  if (v31 > 0x40 && v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

  if (v29 > 0x40 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v33 > 0x40 && v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
  }
}

uint64_t mlir::presburger::round@<X0>(uint64_t this@<X0>, llvm::APInt *a2@<X8>)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!(*(this + 8) | *(this + 24)))
  {
    v23 = *this % *(this + 16);
    v24 = 0;
LABEL_3:
    v3 = *(this + 16);
    if (*this == 0x8000000000000000 && v3 == -1)
    {
      v11 = this;
      v12 = a2;
      mlir::presburger::operator-(this);
      this = v11;
      a2 = v12;
    }

    else
    {
      v21 = *this / v3;
      v22 = 0;
    }

    goto LABEL_6;
  }

  v5 = a2;
  v6 = this;
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this, &v15);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6 + 16, &v13);
  llvm::detail::SlowDynamicAPInt::operator%(&v15, &v13, &v17);
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

  this = v6;
  a2 = v5;
  if (!(*(v6 + 8) | *(v6 + 24)))
  {
    goto LABEL_3;
  }

  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6, &v15);
  llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(v6 + 16, &v13);
  llvm::detail::SlowDynamicAPInt::operator/(&v15, &v13, &v17);
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

  a2 = v5;
  this = v6;
LABEL_6:
  v25 = 2;
  v26 = 0;
  if (*(this + 24))
  {
    v10 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(this + 16, &v15);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v25, &v13);
    this = llvm::detail::SlowDynamicAPInt::operator/(&v15, &v13, &v17);
    v20 = v18;
    if (v18 > 0x40)
    {
      llvm::APInt::initSlowCase(&v19, &v17);
    }

    v19 = v17;
    if (v14 >= 0x41)
    {
      this = v13;
      if (v13)
      {
        this = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }
    }

    if (v16 >= 0x41)
    {
      this = v15;
      if (v15)
      {
        this = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }

    a2 = v10;
    if (v26 >= 0x41)
    {
      this = v25;
      if (v25)
      {
        this = MEMORY[0x259C63150](v25, 0x1000C8000313F17);
        a2 = v10;
      }
    }
  }

  else
  {
    v19 = *(this + 16) / 2;
    v20 = 0;
  }

  if (v24 | v20)
  {
    v7 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v23, &v17);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v19, &v15);
    this = llvm::detail::SlowDynamicAPInt::operator>(&v17, &v15);
    v4 = this;
    if (v16 >= 0x41)
    {
      this = v15;
      if (v15)
      {
        this = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }

    a2 = v7;
    if (v18 >= 0x41)
    {
      this = v17;
      if (v17)
      {
        this = MEMORY[0x259C63150](v17, 0x1000C8000313F17);
        a2 = v7;
      }
    }
  }

  else
  {
    v4 = v23 > v19;
  }

  v25 = v4;
  v26 = 0;
  if (v22 || __OFADD__(v21, v4))
  {
    v8 = a2;
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v21, &v15);
    llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v25, &v13);
    llvm::detail::SlowDynamicAPInt::operator+(&v15, &v13, &v17);
    this = v8;
    v9 = v18;
    *(v8 + 2) = v18;
    if (v9 > 0x40)
    {
      llvm::APInt::initSlowCase(v8, &v17);
    }

    *v8 = v17;
    if (v14 >= 0x41)
    {
      this = v13;
      if (v13)
      {
        this = MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }
    }

    if (v16 >= 0x41)
    {
      this = v15;
      if (v15)
      {
        this = MEMORY[0x259C63150](v15, 0x1000C8000313F17);
      }
    }
  }

  else
  {
    *a2 = v21 + v4;
    *(a2 + 2) = 0;
  }

  if (v26 > 0x40)
  {
    this = v25;
    if (v25)
    {
      this = MEMORY[0x259C63150](v25, 0x1000C8000313F17);
    }
  }

  if (v20 > 0x40)
  {
    this = v19;
    if (v19)
    {
      this = MEMORY[0x259C63150](v19, 0x1000C8000313F17);
    }
  }

  if (v22 > 0x40)
  {
    this = v21;
    if (v21)
    {
      this = MEMORY[0x259C63150](v21, 0x1000C8000313F17);
    }
  }

  if (v24 > 0x40)
  {
    this = v23;
    if (v23)
    {
      return MEMORY[0x259C63150](v23, 0x1000C8000313F17);
    }
  }

  return this;
}

void mlir::presburger::FracMatrix::normalizeRows(mlir::presburger::FracMatrix *this@<X0>, uint64_t a2@<X8>)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(this + 1);
  *a2 = *this;
  *(a2 + 4) = v5;
  *(a2 + 8) = v5;
  v6 = a2 + 32;
  *(a2 + 16) = v6;
  v7 = (v5 * v4);
  *(a2 + 24) = 0x1000000000;
  if (v7)
  {
    if (v7 >= 0x11)
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }

    if (v5 * v4)
    {
      v8 = v6 + 16 * v7;
      do
      {
        *v6 = 0;
        *(v6 + 8) = 0;
        v6 += 16;
      }

      while (v6 != v8);
    }

    *(a2 + 24) = v7;
    if (*(a2 + 28) < (*a2 * *(a2 + 8)))
    {
      llvm::SmallVectorTemplateBase<llvm::DynamicAPInt,false>::grow();
    }
  }

  v54 = 1;
  v55 = 0;
  if (!v4)
  {
    return;
  }

  v9 = 0;
  while (2)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    for (i = 0; i != v5; ++i)
    {
      v11 = *(this + 2) + 32 * (i + *(this + 2) * v9);
      v48 = *v11;
      v49 = 0;
      v12 = *(v11 + 8);
      if (v12)
      {
        v49 = *(v11 + 8);
        if (v12 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v48, v11);
        }
      }

      v14 = *(v11 + 16);
      v13 = (v11 + 16);
      v50 = v14;
      v51 = 0;
      v15 = *(v13 + 2);
      if (v15)
      {
        v51 = *(v13 + 2);
        if (v15 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v50, v13);
        }
      }

      if (!v55)
      {
        v16 = v54;
        if ((v54 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        if (v54 != 0x8000000000000000)
        {
LABEL_20:
          v16 = -v16;
LABEL_21:
          v62 = v16;
          v63 = 0;
          goto LABEL_22;
        }

        goto LABEL_176;
      }

      if (!llvm::detail::operator>=(&v54, 0))
      {
        if (v55)
        {
          v41 = v55;
          if (v55 > 0x40)
          {
            llvm::APInt::initSlowCase(&v40, &v54);
          }

          v40 = v54;
          goto LABEL_177;
        }

        v16 = v54;
        if (v54 != 0x8000000000000000)
        {
          goto LABEL_20;
        }

LABEL_176:
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v40, 0x8000000000000000);
LABEL_177:
        llvm::detail::SlowDynamicAPInt::operator-(&v40, &v44);
        v63 = v45;
        if (v45 > 0x40)
        {
          llvm::APInt::initSlowCase(&v62, &v44);
        }

        v62 = v44;
        if (v41 >= 0x41 && v40)
        {
          MEMORY[0x259C63150](v40, 0x1000C8000313F17);
        }

        goto LABEL_22;
      }

      v62 = v54;
      v63 = 0;
      if (v55)
      {
        v63 = v55;
        if (v55 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v62, &v54);
        }
      }

LABEL_22:
      if (!v51)
      {
        v17 = v50;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        if (v50 != 0x8000000000000000)
        {
LABEL_25:
          v17 = -v17;
LABEL_26:
          v60 = v17;
          v61 = 0;
          goto LABEL_27;
        }

        goto LABEL_184;
      }

      if (!llvm::detail::operator>=(&v50, 0))
      {
        if (v51)
        {
          v41 = v51;
          if (v51 > 0x40)
          {
            llvm::APInt::initSlowCase(&v40, &v50);
          }

          v40 = v50;
          goto LABEL_185;
        }

        v17 = v50;
        if (v50 != 0x8000000000000000)
        {
          goto LABEL_25;
        }

LABEL_184:
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v40, 0x8000000000000000);
LABEL_185:
        llvm::detail::SlowDynamicAPInt::operator-(&v40, &v44);
        v61 = v45;
        if (v45 > 0x40)
        {
          llvm::APInt::initSlowCase(&v60, &v44);
        }

        v60 = v44;
        if (v41 >= 0x41 && v40)
        {
          MEMORY[0x259C63150](v40, 0x1000C8000313F17);
        }

        goto LABEL_27;
      }

      v60 = v50;
      v61 = 0;
      if (v51)
      {
        v61 = v51;
        if (v51 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v60, &v50);
        }
      }

LABEL_27:
      if (v63)
      {
        v41 = v63;
        if (v63 > 0x40)
        {
          llvm::APInt::initSlowCase(&v40, &v62);
        }

        v40 = v62;
        v28 = v61;
        if (v61)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v61)
        {
          v18 = v62;
        }

        else
        {
          v18 = v62;
          if ((v62 * v60) >> 64 == (v62 * v60) >> 63)
          {
            v58 = v62 * v60;
            v59 = 0;
            goto LABEL_31;
          }
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v40, v18);
        v28 = v61;
        if (v61)
        {
LABEL_116:
          v65 = v28;
          if (v28 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, &v60);
          }

          v64 = v60;
          goto LABEL_139;
        }
      }

      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v64, v60);
LABEL_139:
      llvm::detail::SlowDynamicAPInt::operator*(&v40, &v64, &v44);
      v59 = v45;
      if (v45 > 0x40)
      {
        llvm::APInt::initSlowCase(&v58, &v44);
      }

      v58 = v44;
      if (v65 >= 0x41 && v64)
      {
        MEMORY[0x259C63150](v64, 0x1000C8000313F17);
      }

      if (v41 >= 0x41 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

LABEL_31:
      if (v63)
      {
        v41 = v63;
        if (v63 > 0x40)
        {
          llvm::APInt::initSlowCase(&v40, &v62);
        }

        v40 = v62;
        v29 = v61;
        if (v61)
        {
          goto LABEL_119;
        }
      }

      else
      {
        if (!v61)
        {
          v19 = v60;
          if (v62 == 0x8000000000000000)
          {
            v20 = 0;
          }

          else
          {
            v20 = -v62;
          }

          if (v62 >= 0)
          {
            v20 = v62;
          }

          if (v60 == 0x8000000000000000)
          {
            v21 = 0;
          }

          else
          {
            v21 = -v60;
          }

          if (v60 < 0)
          {
            v19 = v21;
          }

          if (v20 >= v19)
          {
            v22 = v19;
          }

          else
          {
            v22 = v20;
          }

          if (v20 > v19)
          {
            v19 = v20;
          }

          if (v22)
          {
            v23 = v19 % v22;
            if (v23)
            {
              v24 = v23 >> __clz(__rbit64(v23));
              v25 = v22;
              do
              {
                v26 = v25 >> __clz(__rbit64(v25));
                v25 = v26 - v24;
                if (v24 > v26)
                {
                  v25 = v24 - v26;
                }

                if (v24 >= v26)
                {
                  v24 = v26;
                }
              }

              while (v25);
              v22 = v24 << __clz(__rbit64(v23 | v22));
            }
          }

          else
          {
            v22 = v19;
          }

          v56 = v22;
          v57 = 0;
          goto LABEL_59;
        }

        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v40, v62);
        v29 = v61;
        if (v61)
        {
LABEL_119:
          v65 = v29;
          if (v29 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, &v60);
          }

          v64 = v60;
          goto LABEL_150;
        }
      }

      llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v64, v60);
LABEL_150:
      llvm::detail::gcd(&v40, &v64, &v44);
      v57 = v45;
      if (v45 > 0x40)
      {
        llvm::APInt::initSlowCase(&v56, &v44);
      }

      v56 = v44;
      if (v65 >= 0x41 && v64)
      {
        MEMORY[0x259C63150](v64, 0x1000C8000313F17);
      }

      if (v41 >= 0x41 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

LABEL_59:
      if (v59)
      {
        v41 = v59;
        if (v59 > 0x40)
        {
          llvm::APInt::initSlowCase(&v40, &v58);
        }

        v40 = v58;
        v30 = v57;
        if (v57)
        {
          goto LABEL_122;
        }

        goto LABEL_160;
      }

      if (v57)
      {
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v40, v58);
        v30 = v57;
        if (v57)
        {
LABEL_122:
          v65 = v30;
          if (v30 > 0x40)
          {
            llvm::APInt::initSlowCase(&v64, &v56);
          }

          v64 = v56;
          goto LABEL_161;
        }

LABEL_160:
        llvm::detail::SlowDynamicAPInt::SlowDynamicAPInt(&v64, v56);
LABEL_161:
        llvm::detail::SlowDynamicAPInt::operator/(&v40, &v64, &v44);
        v53 = v45;
        if (v45 > 0x40)
        {
          llvm::APInt::initSlowCase(&v52, &v44);
        }

        v52 = v44;
        if (v65 >= 0x41 && v64)
        {
          MEMORY[0x259C63150](v64, 0x1000C8000313F17);
        }

        goto LABEL_169;
      }

      if (v58 != 0x8000000000000000 || v56 != -1)
      {
        v52 = v58 / v56;
        v53 = 0;
        goto LABEL_64;
      }

      llvm::DynamicAPInt::operator llvm::detail::SlowDynamicAPInt(&v58, &v40);
      llvm::detail::SlowDynamicAPInt::operator-(&v40, &v44);
      v53 = v45;
      if (v45 > 0x40)
      {
        llvm::APInt::initSlowCase(&v52, &v44);
      }

      v52 = v44;
LABEL_169:
      if (v41 >= 0x41 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

LABEL_64:
      if (v57 > 0x40 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v59 > 0x40 && v58)
      {
        MEMORY[0x259C63150](v58, 0x1000C8000313F17);
      }

      if (v61 > 0x40 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v63 > 0x40 && v62)
      {
        MEMORY[0x259C63150](v62, 0x1000C8000313F17);
      }

      if (v53)
      {
        if (v55)
        {
          llvm::detail::SlowDynamicAPInt::operator=(&v54, &v52);
        }

        else
        {
          v55 = v53;
          if (v53 > 0x40)
          {
            llvm::APInt::initSlowCase(&v54, &v52);
          }

          v54 = v52;
        }
      }

      else
      {
        v27 = v52;
        if (v55 > 0x40 && v54)
        {
          MEMORY[0x259C63150](v54, 0x1000C8000313F17);
        }

        v54 = v27;
        v55 = 0;
      }

      if (v53 > 0x40 && v52)
      {
        MEMORY[0x259C63150](v52, 0x1000C8000313F17);
      }

      if (v51 > 0x40 && v50)
      {
        MEMORY[0x259C63150](v50, 0x1000C8000313F17);
      }

      if (v49 > 0x40 && v48)
      {
        MEMORY[0x259C63150](v48, 0x1000C8000313F17);
      }
    }

    for (j = 0; j != v5; ++j)
    {
      v32 = *(this + 2) + 32 * (j + v9 * *(this + 2));
      v44 = *v32;
      v45 = 0;
      v33 = *(v32 + 8);
      if (v33)
      {
        v45 = *(v32 + 8);
        if (v33 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v44, v32);
        }
      }

      v35 = *(v32 + 16);
      v34 = (v32 + 16);
      v46 = v35;
      v47 = 0;
      v36 = *(v34 + 2);
      if (v36)
      {
        v47 = *(v34 + 2);
        if (v36 >= 0x41)
        {
          llvm::APInt::initSlowCase(&v46, v34);
        }
      }

      v62 = 1;
      v63 = 0;
      mlir::presburger::Fraction::Fraction(&v40, &v54, &v62);
      mlir::presburger::operator*(&v44, &v40, &v48);
      mlir::presburger::Fraction::getAsInteger(&v48, &v64);
      v37 = (*(a2 + 16) + 16 * (j + v9 * *(a2 + 8)));
      v38 = v65;
      if (v65)
      {
        if (*(v37 + 2))
        {
          llvm::detail::SlowDynamicAPInt::operator=((*(a2 + 16) + 16 * (j + v9 * *(a2 + 8))), &v64);
        }

        else
        {
          *(v37 + 2) = v65;
          if (v38 > 0x40)
          {
            llvm::APInt::initSlowCase(v37, &v64);
          }

          *v37 = v64;
        }
      }

      else
      {
        v39 = v64;
        if (*(v37 + 2) > 0x40u && *v37)
        {
          MEMORY[0x259C63150](*v37, 0x1000C8000313F17);
        }

        *v37 = v39;
        *(v37 + 2) = 0;
      }

      if (v65 > 0x40 && v64)
      {
        MEMORY[0x259C63150](v64, 0x1000C8000313F17);
      }

      if (v51 > 0x40 && v50)
      {
        MEMORY[0x259C63150](v50, 0x1000C8000313F17);
      }

      if (v49 > 0x40 && v48)
      {
        MEMORY[0x259C63150](v48, 0x1000C8000313F17);
      }

      if (v43 > 0x40 && v42)
      {
        MEMORY[0x259C63150](v42, 0x1000C8000313F17);
      }

      if (v41 > 0x40 && v40)
      {
        MEMORY[0x259C63150](v40, 0x1000C8000313F17);
      }

      if (v63 > 0x40 && v62)
      {
        MEMORY[0x259C63150](v62, 0x1000C8000313F17);
      }

      if (v47 > 0x40 && v46)
      {
        MEMORY[0x259C63150](v46, 0x1000C8000313F17);
      }

      if (v45 > 0x40 && v44)
      {
        MEMORY[0x259C63150](v44, 0x1000C8000313F17);
      }
    }

LABEL_12:
    if (++v9 != v4)
    {
      continue;
    }

    break;
  }

  if (v55 > 0x40)
  {
    if (v54)
    {
      MEMORY[0x259C63150](v54, 0x1000C8000313F17);
    }
  }
}

uint64_t llvm::SmallVectorImpl<mlir::presburger::Fraction>::assign(uint64_t result, unint64_t a2, llvm::APInt *a3)
{
  if (*(result + 12) < a2)
  {

    llvm::SmallVectorTemplateBase<mlir::presburger::Fraction,false>::growAndAssign();
  }

  v4 = *(result + 8);
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = *(result + 8);
  }

  if (v5)
  {
    v6 = a2;
    v7 = result;
    v8 = *result;
    do
    {
      mlir::presburger::Fraction::operator=(v8, a3);
      v8 += 4;
      --v5;
    }

    while (v5);
    result = v7;
    v4 = *(v7 + 8);
    a2 = v6;
  }

  v9 = v4 - a2;
  if (v4 < a2)
  {
    v10 = (*result + 32 * v4 + 16);
    while (1)
    {
      while (1)
      {
        *(v10 - 2) = *a3;
        *(v10 - 2) = 0;
        v11 = *(a3 + 2);
        if (!v11)
        {
          break;
        }

        *(v10 - 2) = v11;
        if (v11 > 0x40)
        {
          llvm::APInt::initSlowCase((v10 - 4), a3);
        }

        *(v10 - 2) = *a3;
        *v10 = *(a3 + 2);
        v10[2] = 0;
        v12 = *(a3 + 6);
        if (!v12)
        {
          goto LABEL_16;
        }

LABEL_23:
        v10[2] = v12;
        if (v12 > 0x40)
        {
          llvm::APInt::initSlowCase(v10, (a3 + 16));
        }

        *v10 = *(a3 + 2);
        v10 += 8;
        v13 = __CFADD__(v9++, 1);
        if (v13)
        {
          goto LABEL_38;
        }
      }

      *v10 = *(a3 + 2);
      v10[2] = 0;
      v12 = *(a3 + 6);
      if (v12)
      {
        goto LABEL_23;
      }

LABEL_16:
      v10 += 8;
      v13 = __CFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_38;
      }
    }
  }

  if (v4 > a2)
  {
    v14 = 32 * v4;
    v15 = v14 + *result - 16;
    v16 = 32 * a2 - v14;
    do
    {
      if (*(v15 + 8) > 0x40u && *v15)
      {
        v17 = result;
        v18 = a2;
        MEMORY[0x259C63150](*v15, 0x1000C8000313F17);
        result = v17;
        a2 = v18;
      }

      if (*(v15 - 8) > 0x40u && *(v15 - 16))
      {
        v19 = result;
        v20 = a2;
        MEMORY[0x259C63150](*(v15 - 16), 0x1000C8000313F17);
        result = v19;
        a2 = v20;
      }

      v15 -= 32;
      v16 += 32;
    }

    while (v16);
  }

LABEL_38:
  *(result + 8) = a2;
  return result;
}

llvm::raw_ostream *mlir::presburger::Fraction::print(mlir::presburger::Fraction *this, llvm::raw_ostream *a2)
{
  v2 = a2;
  v4 = *(a2 + 4);
  if (*(a2 + 3) != v4)
  {
    *v4 = 40;
    ++*(a2 + 4);
    llvm::DynamicAPInt::print(this, a2);
    v5 = *(v2 + 4);
    if (*(v2 + 3) != v5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = llvm::raw_ostream::write(v2, "/", 1uLL);
    llvm::DynamicAPInt::print((this + 16), v2);
    v6 = *(v2 + 4);
    if (*(v2 + 3) != v6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v2 = llvm::raw_ostream::write(a2, "(", 1uLL);
  llvm::DynamicAPInt::print(this, v2);
  v5 = *(v2 + 4);
  if (*(v2 + 3) == v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  *v5 = 47;
  ++*(v2 + 4);
  llvm::DynamicAPInt::print((this + 16), v2);
  v6 = *(v2 + 4);
  if (*(v2 + 3) != v6)
  {
LABEL_4:
    *v6 = 41;
    ++*(v2 + 4);
    return v2;
  }

LABEL_7:

  return llvm::raw_ostream::write(v2, ")", 1uLL);
}

mlir::presburger::PresburgerRelation *mlir::presburger::PresburgerRelation::PresburgerRelation(mlir::presburger::PresburgerRelation *this, const mlir::presburger::IntegerRelation *a2)
{
  v3 = *(a2 + 4);
  *this = *(a2 + 1);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = this + 56;
  v4 = this + 40;
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 6) = 0x200000000;
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, a2);
  return this;
}

{
  v3 = *(a2 + 4);
  *this = *(a2 + 1);
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 16) = 0;
  *(this + 5) = this + 56;
  v4 = this + 40;
  *(this + 3) = v4;
  *(this + 4) = 0;
  *(this + 6) = 0x200000000;
  llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v4, a2);
  return this;
}

void **mlir::presburger::PresburgerRelation::setSpace(void **this, void **a2)
{
  v2 = this;
  v3 = *a2;
  *(this + 16) = *(a2 + 16);
  *this = v3;
  if (this != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(this + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        this = memmove(this[3], a2[3], 24 * v4);
      }

      goto LABEL_10;
    }

    if (*(this + 9) < v4)
    {
      *(this + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      v6 = a2;
      this = memmove(this[3], a2[3], 24 * v5);
      a2 = v6;
      v7 = v6[8] - v5;
      if (!v7)
      {
LABEL_10:
        *(v2 + 8) = v4;
        goto LABEL_11;
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

    this = memcpy(v2[3] + 24 * v5, a2[3] + 24 * v5, 24 * v7);
    goto LABEL_10;
  }

LABEL_11:
  v8 = *(v2 + 12);
  if (v8)
  {
    v9 = v2[5];
    v10 = 624 * v8;
    do
    {
      this = mlir::presburger::IntegerRelation::setSpaceExceptLocals(v9, v2);
      v9 = (v9 + 624);
      v10 -= 624;
    }

    while (v10);
  }

  return this;
}

uint64_t mlir::presburger::PresburgerRelation::insertVarInPlace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = 624 * v8;
    v11 = v9;
    do
    {
      (*(*v11 + 24))(v11, a2, a3, a4);
      v11 += 624;
      v9 += 624;
      v10 -= 624;
    }

    while (v10);
  }

  return mlir::presburger::PresburgerSpace::insertVar(a1, a2, a3, a4);
}

uint64_t mlir::presburger::PresburgerRelation::convertVarKind(uint64_t a1, int a2, unsigned int a3, unsigned int a4, int a5, unsigned int a6)
{
  result = mlir::presburger::PresburgerSpace::convertVarKind(a1, a2, a3, a4, a5, a6);
  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = *(a1 + 40);
    v14 = 624 * v12;
    do
    {
      result = mlir::presburger::IntegerRelation::convertVarKind(v13, a2, a3, a4 + a3, a5);
      v13 += 624;
      v14 -= 624;
    }

    while (v14);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    llvm::SmallVectorTemplateBase<mlir::presburger::IntegerRelation,false>::growAndEmplaceBack<mlir::presburger::IntegerRelation const&>();
  }

  v5 = *a1 + 624 * v4;
  *v5 = &unk_286893110;
  v6 = *(a2 + 8);
  *(v5 + 24) = *(a2 + 24);
  *(v5 + 32) = v5 + 48;
  *(v5 + 8) = v6;
  *(v5 + 40) = 0;
  if (v5 != a2 && *(a2 + 40) != 0)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = *(a2 + 48);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 48) = v8;
  *(v5 + 64) = v5 + 80;
  *(v5 + 72) = 0x1000000000;
  if (*(a2 + 72))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 64), (a2 + 64));
  }

  v9 = *(a2 + 336);
  *(v5 + 344) = *(a2 + 344);
  *(v5 + 336) = v9;
  *(v5 + 352) = v5 + 368;
  *(v5 + 360) = 0x1000000000;
  if (*(a2 + 360))
  {
    llvm::SmallVectorImpl<llvm::DynamicAPInt>::operator=((v5 + 352), (a2 + 352));
  }

  v10 = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 624 * v10 - 624;
}

uint64_t mlir::presburger::PresburgerRelation::unionInPlace(mlir::presburger::PresburgerRelation *this, const mlir::presburger::PresburgerRelation *a2)
{
  result = mlir::presburger::PresburgerSpace::isCompatible(this, a2);
  if (result)
  {
    v5 = *(this + 12);
    if (v5 == *(a2 + 12))
    {
      if (!v5)
      {
        return result;
      }

      v6 = 0;
      v7 = 624 * v5;
      while (1)
      {
        result = mlir::presburger::IntegerRelation::isObviouslyEqual((*(this + 5) + v6), (*(a2 + 5) + v6));
        if ((result & 1) == 0)
        {
          break;
        }

        v6 += 624;
        if (v7 == v6)
        {
          return result;
        }
      }
    }
  }

  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(a2 + 12);
    if (v9)
    {
      v12 = *(this + 5);
      v11 = this + 40;
      v10 = v12;
      v13 = 624 * v8;
      while (*(v10 + 48) + *(v10 + 336))
      {
        v10 += 624;
        v13 -= 624;
        if (!v13)
        {
          v16 = *(a2 + 5);
          v14 = a2 + 40;
          v15 = v16;
          v17 = 624 * v9;
          for (i = v16; *(i + 48) + *(i + 336); i += 624)
          {
            v17 -= 624;
            if (!v17)
            {
              v19 = 624 * v9;
              do
              {
                result = llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::emplace_back<mlir::presburger::IntegerRelation const&>(v11, v15);
                v15 += 624;
                v19 -= 624;
              }

              while (v19);
              return result;
            }
          }

          v20 = v11;
          v21 = v14;

          return llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v20, v21);
        }
      }
    }
  }

  else
  {
    v20 = this + 40;
    v21 = a2 + 40;

    return llvm::SmallVectorImpl<mlir::presburger::IntegerRelation>::operator=(v20, v21);
  }

  return result;
}