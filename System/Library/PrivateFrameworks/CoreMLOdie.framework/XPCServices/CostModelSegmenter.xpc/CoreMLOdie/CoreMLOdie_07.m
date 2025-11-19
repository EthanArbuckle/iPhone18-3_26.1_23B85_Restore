uint64_t sub_100051C8C(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 8);
  v4 = (v3 + 56);
  v5 = *(v3 + 56);
  if (v5 > 60)
  {
    if (v5 == 61)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
      v9 = *(a1 + 8);
      *(v9 + 56) = v10;
      *(v9 + 72) = v11;
      return 2;
    }

    else if (v5 == 69)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
      v7 = *(a1 + 8);
      *(v7 + 56) = v10;
      *(v7 + 72) = v11;
      return 4;
    }
  }

  else if (v5 == 30)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
    v8 = *(a1 + 8);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  else if (v5 == 39)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v10);
    v6 = *(a1 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 3;
  }

  return result;
}

__n128 sub_100051DFC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    *&v39 = "unexpected ssa identifier";
    v41 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, &v39, v51);
    if (v51[0])
    {
      mlir::InFlightDiagnostic::report(v51);
    }

    if (v59 != 1)
    {
      return result;
    }

    if (v58 != &v59)
    {
      free(v58);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v57;
      v17 = __p;
      if (v57 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v57 = v15;
      operator delete(v17);
    }

    v18 = v54;
    if (v54)
    {
      v19 = v55;
      v20 = v54;
      if (v55 != v54)
      {
        do
        {
          v21 = *--v19;
          *v19 = 0;
          if (v21)
          {
            operator delete[]();
          }
        }

        while (v19 != v18);
        v20 = v54;
      }

      v55 = v18;
      operator delete(v20);
    }

    v32 = v52;
    if (v52 == &v53)
    {
      return result;
    }

LABEL_48:
    free(v32);
    return result;
  }

  v3 = *(a1 + 8);
  if (*(v3 + 56) != 6)
  {
    *&v39 = "expected ssa identifier";
    v41 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, &v39, v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 != 1)
    {
      return result;
    }

    if (v49 != &v50)
    {
      free(v49);
    }

    v22 = v47;
    if (v47)
    {
      v23 = v48;
      v24 = v47;
      if (v48 != v47)
      {
        do
        {
          v23 = sub_100052FFC(v23 - 1);
        }

        while (v23 != v22);
        v24 = v47;
      }

      v48 = v22;
      operator delete(v24);
    }

    v25 = v45;
    if (v45)
    {
      v26 = v46;
      v27 = v45;
      if (v46 != v45)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v45;
      }

      v46 = v25;
      operator delete(v27);
    }

    v32 = v43;
    if (v43 == &v44)
    {
      return result;
    }

    goto LABEL_48;
  }

  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = (v7 + 24 * v8);
    v10 = (v7 + 16);
    while (1)
    {
      v11 = v10 - 2;
      if (*(v10 - 1) == v5 && (!v5 || !memcmp(*(v10 - 2), v6, v5)))
      {
        break;
      }

      v10 += 3;
      if (v11 + 3 == v9)
      {
        goto LABEL_42;
      }
    }

    v12 = *v10;
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v39);
    v13 = *(a1 + 8);
    result.n128_u64[0] = v39;
    *(v13 + 56) = v39;
    *(v13 + 72) = v40;
  }

  else
  {
LABEL_42:
    if ((*(a1 + 24))(*(a1 + 32), a2))
    {
      if (a2)
      {
        v30 = *(a1 + 44);
        *(a1 + 44) = v30 + 1;
        AffineSymbolExpr = mlir::getAffineSymbolExpr(v30, ***(a1 + 8), v29);
      }

      else
      {
        v33 = *(a1 + 40);
        *(a1 + 40) = v33 + 1;
        AffineSymbolExpr = mlir::getAffineDimExpr(v33, ***(a1 + 8), v29);
      }

      *&v39 = v6;
      *(&v39 + 1) = v5;
      v40 = AffineSymbolExpr;
      v34 = *(a1 + 56);
      v35 = *(a1 + 48);
      v36 = &v39;
      if (v34 >= *(a1 + 60))
      {
        if (v35 <= &v39 && v35 + 24 * v34 > &v39)
        {
          v38 = &v39 - v35;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), v34 + 1, 24);
          v35 = *(a1 + 48);
          v36 = &v38[v35];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 48, (a1 + 64), v34 + 1, 24);
          v35 = *(a1 + 48);
          v36 = &v39;
        }
      }

      v37 = (v35 + 24 * *(a1 + 56));
      result = *v36;
      v37[1].n128_u64[0] = v36[1].n128_u64[0];
      *v37 = result;
      ++*(a1 + 56);
    }
  }

  return result;
}

uint64_t sub_10005225C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 3 || v3 == 12)
  {
    v5 = *(a1 + 56);
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (!mlir::Token::isKeyword((v2 + 56)))
    {
      *&v31 = "expected bare identifier";
      v33 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, &v31, v43);
      if (v43[0])
      {
        mlir::InFlightDiagnostic::report(v43);
      }

      if (v51 != 1)
      {
        return 0;
      }

      if (v50 != &v51)
      {
        free(v50);
      }

      v23 = v48;
      if (v48)
      {
        v24 = v49;
        v25 = v48;
        if (v49 != v48)
        {
          do
          {
            v24 = sub_100052FFC(v24 - 1);
          }

          while (v24 != v23);
          v25 = v48;
        }

        v49 = v23;
        operator delete(v25);
      }

      v26 = v46;
      if (v46)
      {
        v27 = v47;
        v28 = v46;
        if (v47 != v46)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v46;
        }

        v47 = v26;
        operator delete(v28);
      }

      v30 = v44;
      if (v44 == &v45)
      {
        return 0;
      }

LABEL_50:
      free(v30);
      return 0;
    }

    v2 = *(a1 + 8);
    v5 = *(a1 + 56);
    if (!v5)
    {
LABEL_15:
      *&v31 = "use of undeclared identifier";
      v33 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, &v31, v34);
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }

      if (v42 != 1)
      {
        return 0;
      }

      if (v41 != &v42)
      {
        free(v41);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v40;
        v18 = __p;
        if (v40 != __p)
        {
          do
          {
            v17 = sub_100052FFC(v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v40 = v16;
        operator delete(v18);
      }

      v19 = v37;
      if (v37)
      {
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

          while (v20 != v19);
          v21 = v37;
        }

        v38 = v19;
        operator delete(v21);
      }

      v30 = v35;
      if (v35 == &v36)
      {
        return 0;
      }

      goto LABEL_50;
    }
  }

  v6 = *(a1 + 48);
  v7 = (v6 + 24 * v5);
  v9 = *(v2 + 64);
  v8 = *(v2 + 72);
  v10 = (v6 + 16);
  while (1)
  {
    v11 = v10 - 2;
    if (*(v10 - 1) == v8 && (!v8 || !memcmp(*(v10 - 2), v9, v8)))
    {
      break;
    }

    v10 += 3;
    if (v11 + 3 == v7)
    {
      goto LABEL_15;
    }
  }

  v12 = *v10;
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v31);
  result = v12;
  v14 = *(a1 + 8);
  *(v14 + 56) = v31;
  *(v14 + 72) = v32;
  return result;
}

uint64_t sub_10005258C(uint64_t a1, int a2, mlir::MLIRContext **a3, uint64_t a4, const char *a5)
{
  v39 = a4;
  v40 = a3;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v40) & 1) != 0 || (mlir::AffineExpr::isSymbolicOrConstant(&v39))
      {
        return mlir::AffineExpr::operator*(&v40, v39);
      }

      v37[0] = "non-affine expression: at least one of the multiply operands has to be either a constant or symbolic";
      v38 = 259;
      mlir::detail::Parser::emitError(a1, a5, v37, v68);
      if (v68[0])
      {
        mlir::InFlightDiagnostic::report(v68);
      }

      if (v76 != 1)
      {
        return 0;
      }

      if (v75 != &v76)
      {
        free(v75);
      }

      v29 = v73;
      if (v73)
      {
        v30 = v74;
        v31 = v73;
        if (v74 != v73)
        {
          do
          {
            v30 = sub_100052FFC(v30 - 1);
          }

          while (v30 != v29);
          v31 = v73;
        }

        v74 = v29;
        operator delete(v31);
      }

      v32 = v71;
      if (v71)
      {
        v33 = v72;
        v34 = v71;
        if (v72 != v71)
        {
          do
          {
            v35 = *--v33;
            *v33 = 0;
            if (v35)
            {
              operator delete[]();
            }
          }

          while (v33 != v32);
          v34 = v71;
        }

        v72 = v32;
        operator delete(v34);
      }

      v36 = v69;
      if (v69 == &v70)
      {
        return 0;
      }
    }

    else
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
      {
        return mlir::AffineExpr::floorDiv(&v40, v39);
      }

      v37[0] = "non-affine expression: right operand of floordiv has to be either a constant or symbolic";
      v38 = 259;
      mlir::detail::Parser::emitError(a1, a5, v37, v59);
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }

      if (v67 != 1)
      {
        return 0;
      }

      if (v66 != &v67)
      {
        free(v66);
      }

      v15 = v64;
      if (v64)
      {
        v16 = v65;
        v17 = v64;
        if (v65 != v64)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = v64;
        }

        v65 = v15;
        operator delete(v17);
      }

      v18 = v62;
      if (v62)
      {
        v19 = v63;
        v20 = v62;
        if (v63 != v62)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v62;
        }

        v63 = v18;
        operator delete(v20);
      }

      v36 = v60;
      if (v60 == &v61)
      {
        return 0;
      }
    }

    goto LABEL_88;
  }

  if (a2 == 3)
  {
    if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
    {
      return mlir::AffineExpr::ceilDiv(&v40, v39);
    }

    v37[0] = "non-affine expression: right operand of ceildiv has to be either a constant or symbolic";
    v38 = 259;
    mlir::detail::Parser::emitError(a1, a5, v37, v50);
    if (v50[0])
    {
      mlir::InFlightDiagnostic::report(v50);
    }

    if (v58 != 1)
    {
      return 0;
    }

    if (v57 != &v58)
    {
      free(v57);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v56;
      v10 = __p;
      if (v56 != __p)
      {
        do
        {
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v56 = v8;
      operator delete(v10);
    }

    v11 = v53;
    if (v53)
    {
      v12 = v54;
      v13 = v53;
      if (v54 != v53)
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
        v13 = v53;
      }

      v54 = v11;
      operator delete(v13);
    }

    v36 = v51;
    if (v51 == &v52)
    {
      return 0;
    }

    goto LABEL_88;
  }

  if (mlir::AffineExpr::isSymbolicOrConstant(&v39))
  {
    return mlir::AffineExpr::operator%(&v40, v39);
  }

  v37[0] = "non-affine expression: right operand of mod has to be either a constant or symbolic";
  v38 = 259;
  mlir::detail::Parser::emitError(a1, a5, v37, v41);
  if (v41[0])
  {
    mlir::InFlightDiagnostic::report(v41);
  }

  if (v49 == 1)
  {
    if (v48 != &v49)
    {
      free(v48);
    }

    v22 = v46;
    if (v46)
    {
      v23 = v47;
      v24 = v46;
      if (v47 != v46)
      {
        do
        {
          v23 = sub_100052FFC(v23 - 1);
        }

        while (v23 != v22);
        v24 = v46;
      }

      v47 = v22;
      operator delete(v24);
    }

    v25 = v44;
    if (v44)
    {
      v26 = v45;
      v27 = v44;
      if (v45 != v44)
      {
        do
        {
          v28 = *--v26;
          *v26 = 0;
          if (v28)
          {
            operator delete[]();
          }
        }

        while (v26 != v25);
        v27 = v44;
      }

      v45 = v25;
      operator delete(v27);
    }

    v36 = v42;
    if (v42 != &v43)
    {
LABEL_88:
      free(v36);
    }
  }

  return 0;
}

uint64_t sub_100052AF0(uint64_t a1)
{
  v2 = *a1;
  v32 = sub_10005131C(*a1, 0, 0);
  if (!v32)
  {
    return 0;
  }

  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 == 19)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v5 = *(v2 + 1);
    *(v5 + 56) = v29;
    *(v5 + 72) = v30;
    v3 = *(v2 + 1);
    v4 = *(v3 + 56);
    if (v4 == 18)
    {
      *(v3 + 80) = *(v3 + 56);
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v6 = *(v2 + 1);
      *(v6 + 56) = v29;
      *(v6 + 72) = v30;
      v7 = sub_10005131C(v2, 0, 0);
      if (v7)
      {
        result = mlir::AffineExpr::operator-(&v32, v7);
        v9 = 0;
        if (!result)
        {
          return result;
        }

        goto LABEL_17;
      }

      return 0;
    }
  }

  if (v4 == 18)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
    v13 = *(v2 + 1);
    *(v13 + 56) = v29;
    *(v13 + 72) = v30;
    v14 = *(v2 + 1);
    if (*(v14 + 56) == 18)
    {
      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
      v15 = *(v2 + 1);
      *(v15 + 56) = v29;
      *(v15 + 72) = v30;
      v16 = sub_10005131C(v2, 0, 0);
      if (!v16)
      {
        return 0;
      }

      result = mlir::AffineExpr::operator-(&v32, v16);
      v9 = 1;
      if (!result)
      {
        return result;
      }

LABEL_17:
      v17 = *(a1 + 8);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 12))
      {
        v28 = result;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v17, (v17 + 16), v18 + 1, 8);
        result = v28;
        LODWORD(v18) = *(v17 + 8);
      }

      *(*v17 + 8 * v18) = result;
      ++*(v17 + 8);
      v19 = *(a1 + 16);
      v20 = v19[1];
      if ((v20 + 1) > v19[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(v19, v19 + 3, v20 + 1, 1);
        v20 = v19[1];
      }

      *(*v19 + v20) = v9;
      ++v19[1];
      return 1;
    }

LABEL_22:
    *&v29 = "expected '== affine-expr' or '>= affine-expr' at end of affine constraint";
    v31 = 259;
    mlir::detail::Parser::emitError(v2, &v29, v33);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v39;
        v23 = __p;
        if (v39 != __p)
        {
          do
          {
            v22 = sub_100052FFC(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v39 = v21;
        operator delete(v23);
      }

      v24 = v36;
      if (v36)
      {
        v25 = v37;
        v26 = v36;
        if (v37 != v36)
        {
          do
          {
            v27 = *--v25;
            *v25 = 0;
            if (v27)
            {
              operator delete[]();
            }
          }

          while (v25 != v24);
          v26 = v36;
        }

        v37 = v24;
        operator delete(v26);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }

    return 0;
  }

  if (v4 != 23)
  {
    goto LABEL_22;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v10 = *(v2 + 1);
  *(v10 + 56) = v29;
  *(v10 + 72) = v30;
  v11 = *(v2 + 1);
  if (*(v11 + 56) != 18)
  {
    goto LABEL_22;
  }

  *(v11 + 80) = *(v11 + 56);
  *(v11 + 96) = *(v11 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v29);
  v12 = *(v2 + 1);
  *(v12 + 56) = v29;
  *(v12 + 72) = v30;
  result = sub_10005131C(v2, 0, 0);
  *&v29 = result;
  if (result)
  {
    result = mlir::AffineExpr::operator-(&v29, v32);
  }

  v9 = 0;
  if (result)
  {
    goto LABEL_17;
  }

  return result;
}

void *sub_100052F18(void *a1)
{
  v2 = a1[22];
  if (v2 != a1 + 24)
  {
    free(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    v4 = a1[20];
    v5 = a1[19];
    if (v4 != v3)
    {
      do
      {
        v4 = sub_100052FFC(v4 - 1);
      }

      while (v4 != v3);
      v5 = a1[19];
    }

    a1[20] = v3;
    operator delete(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    v7 = a1[17];
    v8 = a1[16];
    if (v7 != v6)
    {
      do
      {
        v9 = *--v7;
        *v7 = 0;
        if (v9)
        {
          operator delete[]();
        }
      }

      while (v7 != v6);
      v8 = a1[16];
    }

    a1[17] = v6;
    operator delete(v8);
  }

  v10 = a1[2];
  if (v10 != a1 + 4)
  {
    free(v10);
  }

  return a1;
}

void *sub_100052FFC(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[22];
    if (v2 != v1 + 24)
    {
      free(v2);
    }

    v3 = v1[19];
    if (v3)
    {
      v4 = v1[20];
      v5 = v1[19];
      if (v4 != v3)
      {
        do
        {
          v4 = sub_100052FFC(v4 - 8);
        }

        while (v4 != v3);
        v5 = v1[19];
      }

      v1[20] = v3;
      operator delete(v5);
    }

    v6 = v1[16];
    if (v6)
    {
      v7 = v1[17];
      v8 = v1[16];
      if (v7 != v6)
      {
        do
        {
          v9 = *--v7;
          *v7 = 0;
          if (v9)
          {
            operator delete[]();
          }
        }

        while (v7 != v6);
        v8 = v1[16];
      }

      v1[17] = v6;
      operator delete(v8);
    }

    v10 = v1[2];
    if (v10 != v1 + 4)
    {
      free(v10);
    }

    operator delete();
  }

  return result;
}

BOOL sub_10005310C(uint64_t a1)
{
  v2 = sub_10005131C(*a1, 0, 0);
  v3 = *(a1 + 8);
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v6 = v2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v3, (v3 + 16), v4 + 1, 8);
    v2 = v6;
    LODWORD(v4) = *(v3 + 8);
  }

  *(*v3 + 8 * v4) = v2;
  ++*(v3 + 8);
  return v2 != 0;
}

uint64_t sub_10005318C(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = 8 * v3;
    v5 = v2 - 8;
    do
    {
      v6 = *&v5[v4];
      *&v5[v4] = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      v4 -= 8;
    }

    while (v4);
    v2 = *(a1 + 112);
  }

  if (v2 != (a1 + 128))
  {
    free(v2);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = 8 * v8;
    v10 = v7 - 8;
    do
    {
      v11 = *&v10[v9];
      *&v10[v9] = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      v9 -= 8;
    }

    while (v9);
    v7 = *(a1 + 48);
  }

  if (v7 != (a1 + 64))
  {
    free(v7);
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  if (v12)
  {
    v14 = 24 * v12;
    v15 = (v13 + 16);
    do
    {
      if (*(v15 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = *v15;
        *v15 = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }
      }

      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v13 = *(a1 + 16);
    v17 = 24 * *(a1 + 32);
  }

  else
  {
    v17 = 0;
  }

  llvm::deallocate_buffer(v13, v17, 8uLL);
  return a1;
}

uint64_t sub_100053310(uint64_t a1)
{
  llvm::deallocate_buffer(*(a1 + 72), (16 * *(a1 + 88)), 8uLL);
  sub_10005341C((a1 + 48));
  llvm::deallocate_buffer(*(a1 + 48), (32 * *(a1 + 64)), 8uLL);
  if (*(a1 + 36))
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*(a1 + 24) + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17), 8uLL);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*(a1 + 24));
  if (*(a1 + 12))
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = 0;
      v9 = 8 * v7;
      do
      {
        v10 = *(*a1 + v8);
        if (v10 != -8 && v10 != 0)
        {
          llvm::deallocate_buffer(v10, (*v10 + 17), 8uLL);
        }

        v8 += 8;
      }

      while (v9 != v8);
    }
  }

  free(*a1);
  return a1;
}

void sub_10005341C(uint64_t *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 32 * v1;
    do
    {
      if ((*v2 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*(v2 + 20))
        {
          v4 = *(v2 + 16);
          if (v4)
          {
            v5 = 0;
            v6 = 8 * v4;
            do
            {
              v7 = *(*(v2 + 8) + v5);
              if (v7 != -8 && v7 != 0)
              {
                v9 = *v7;
                if (*(v7 + 31) < 0)
                {
                  operator delete(*(v7 + 1));
                }

                llvm::deallocate_buffer(v7, (v9 + 57), 8uLL);
              }

              v5 += 8;
            }

            while (v6 != v5);
          }
        }

        free(*(v2 + 8));
      }

      v2 += 32;
    }

    while (v2 != v3);
  }
}

void mlir::AsmParserState::Impl::resolveSymbolUses(mlir::AsmParserState::Impl *this)
{
  v31 = v33;
  v32 = 0x600000000;
  v1 = *(this + 96);
  if (v1)
  {
    v3 = *(this + 47);
    v29 = &v3[2 * v1];
    do
    {
      v4 = v3[1];
      if (*(v4 + 8))
      {
        v5 = *v4;
        v6 = *(v4 + 16);
        if (v6)
        {
          v7 = 24 * v6;
          v8 = v5;
          while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v8 += 24;
            v7 -= 24;
            if (!v7)
            {
              goto LABEL_3;
            }
          }
        }

        else
        {
          v8 = v5;
        }

        v9 = v5 + 24 * v6;
        v30 = v3;
        while (v8 != v9)
        {
          LODWORD(v32) = 0;
          if (mlir::SymbolTableCollection::lookupSymbolIn(this + 568, *v3, *v8, &v31))
          {
            v10 = *(v8 + 16);
            if (v10)
            {
              v11 = *(v8 + 8);
              v12 = v11 + (v10 << 6);
              do
              {
                v13 = *(v11 + 8);
                if (v32)
                {
                  v14 = v13 == 0;
                }

                else
                {
                  v14 = 1;
                }

                if (!v14)
                {
                  v15 = *v11;
                  v16 = v31;
                  v17 = v31 + 8 * v32;
                  v18 = *v11 + 16 * v13;
                  do
                  {
                    v19 = *(this + 20);
                    if (v19)
                    {
                      v20 = *(this + 8);
                      v21 = ((*v16 >> 4) ^ (*v16 >> 9)) & (v19 - 1);
                      v22 = *(v20 + 16 * v21);
                      if (v22 == *v16)
                      {
LABEL_26:
                        if (v21 != v19)
                        {
                          v23 = *(*this + 8 * *(v20 + 16 * v21 + 8));
                          v24 = *v15;
                          v25 = *(v23 + 152);
                          if (v25 >= *(v23 + 156))
                          {
                            v28 = *v15;
                            llvm::SmallVectorBase<unsigned int>::grow_pod(v23 + 144, (v23 + 160), v25 + 1, 16);
                            v24 = v28;
                            v25 = *(v23 + 152);
                          }

                          *(*(v23 + 144) + 16 * v25) = v24;
                          ++*(v23 + 152);
                        }
                      }

                      else
                      {
                        v26 = 1;
                        while (v22 != -4096)
                        {
                          v27 = v21 + v26++;
                          v21 = v27 & (v19 - 1);
                          v22 = *(v20 + 16 * v21);
                          if (v22 == *v16)
                          {
                            goto LABEL_26;
                          }
                        }
                      }
                    }

                    if (++v16 == v17)
                    {
                      break;
                    }

                    ++v15;
                  }

                  while (v15 != v18);
                }

                v11 += 64;
              }

              while (v11 != v12);
            }
          }

          v8 += 24;
          if (v8 == v9)
          {
            v3 = v30;
          }

          else
          {
            v3 = v30;
            do
            {
              if ((*v8 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                break;
              }

              v8 += 24;
            }

            while (v8 != v9);
          }
        }
      }

LABEL_3:
      v3 += 2;
    }

    while (v3 != v29);
    if (v31 != v33)
    {
      free(v31);
    }
  }
}

_BYTE *mlir::AsmParserState::convertIdLocToRange(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    return a1;
  }

  if (*a1 != 34)
  {
    v9 = a1 + 1;
    while (1)
    {
      v10 = v9;
      v11 = *v9;
      if (v11 < 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_26;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v11] & 0x500) != 0)
      {
        goto LABEL_26;
      }

      if (v11 - 36 > 0x3B || ((1 << (v11 - 36)) & 0x800000000000601) == 0)
      {
        return a1;
      }

LABEL_26:
      v9 = v10 + 1;
      if (!*v10)
      {
        return a1;
      }
    }
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    do
    {
      v4 = v2 + 1;
      v5 = memchr("\n\v\f", v3, 4uLL);
      if (v5 && v5 - "\n\v\f" != -1)
      {
        break;
      }

      if (v3 == 92)
      {
        v7 = *v4;
        v8 = (v7 - 92) > 0x18 || ((1 << (v7 - 92)) & 0x1040001) == 0;
        if (!v8 || v7 == 34)
        {
          v4 = v2 + 2;
        }

        else
        {
          if (word_10028F7D8[*v4] == -1 || word_10028F7D8[v2[2]] == -1)
          {
            return a1;
          }

          v4 = v2 + 3;
        }
      }

      v3 = *v4;
      v2 = v4;
    }

    while (*v4);
  }

  return a1;
}

void mlir::AsmParserState::initialize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v8 = *(a2 + 6);
  v3 = *this;
  v4 = *(*this + 448);
  if (v4 >= *(*this + 452))
  {
    sub_100055A24(v3 + 440, &v8);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    sub_100055B94((*(v3 + 440) + 8 * v4), &v8);
    ++*(v3 + 448);
    v5 = *this;
    v6 = *(*(v5 + 440) + 8 * *(v5 + 448) - 8);
    if (!v6)
    {
      return;
    }
  }

  v7 = *(v5 + 512);
  if (v7 >= *(v5 + 516))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v5 + 504, (v5 + 520), v7 + 1, 8);
    LODWORD(v7) = *(v5 + 512);
  }

  *(*(v5 + 504) + 8 * v7) = v6;
  ++*(v5 + 512);
}

void *mlir::AsmParserState::startOperationDefinition(mlir::AsmParserState *this, const mlir::OperationName *a2)
{
  v2 = *this;
  v3 = *(*this + 448);
  if (v3 >= *(*this + 452))
  {

    return sub_100055A24(v2 + 440, a2);
  }

  else
  {
    result = sub_100055B94((*(v2 + 440) + 8 * v3), a2);
    ++*(v2 + 448);
  }

  return result;
}

void mlir::AsmParserState::finalize(mlir::AsmParserState::Impl **this, mlir::Operation *a2)
{
  v15 = a2;
  v4 = *this;
  v5 = *(v4 + 55);
  v6 = *(v4 + 112);
  v7 = v5 + 8 * v6;
  v8 = *(v7 - 8);
  *(v7 - 8) = 0;
  v14 = v8;
  LODWORD(v6) = v6 - 1;
  *(v4 + 112) = v6;
  v9 = (v5 + 8 * v6);
  v10 = *v9;
  *v9 = 0;
  if (v10)
  {
    sub_100055604(v9, v10);
    v4 = *this;
  }

  if (!v8)
  {
LABEL_6:
    mlir::AsmParserState::Impl::resolveSymbolUses(v4);
    v13 = v14;
    v14 = 0;
    if (!v13)
    {
      return;
    }

    goto LABEL_7;
  }

  v11 = *(v4 + 96);
  if (v11 < *(v4 + 97))
  {
    v12 = (*(v4 + 47) + 16 * v11);
    v14 = 0;
    *v12 = a2;
    v12[1] = v8;
    *(v4 + 96) = v11 + 1;
    goto LABEL_6;
  }

  sub_10005588C(v4 + 376, &v15, &v14);
  mlir::AsmParserState::Impl::resolveSymbolUses(*this);
  v13 = v14;
  v14 = 0;
  if (!v13)
  {
    return;
  }

LABEL_7:
  sub_100055604(&v14, v13);
}

void mlir::AsmParserState::finalizeOperationDefinition(uint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v2 = *a1;
  v3 = *(*a1 + 440);
  v4 = *(*a1 + 448);
  v5 = v3 + 8 * v4;
  v6 = *(v5 - 8);
  *(v5 - 8) = 0;
  v9 = v6;
  LODWORD(v4) = v4 - 1;
  *(v2 + 448) = v4;
  v7 = (v3 + 8 * v4);
  v8 = *v7;
  *v7 = 0;
  if (v8)
  {
    sub_100055604(v7, v8);
  }

  operator new();
}

uint64_t sub_100053E00@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = *result + 16 * v8;
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
        *(v9 + 8) = *a3;
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
    sub_10003DA78(result, v5);
    sub_10003D9D4(v17, a2, &v20);
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
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

void mlir::AsmParserState::startRegionDefinition(mlir::AsmParserState *this)
{
  v1 = *this;
  v2 = *(*(*this + 440) + 8 * *(*this + 448) - 8);
  if (v2)
  {
    v3 = *(v1 + 512);
    if (v3 >= *(v1 + 516))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v1 + 504, (v1 + 520), v3 + 1, 8);
      LODWORD(v3) = *(v1 + 512);
    }

    *(*(v1 + 504) + 8 * v3) = v2;
    ++*(v1 + 512);
  }
}

uint64_t mlir::AsmParserState::finalizeRegionDefinition(uint64_t this)
{
  if (*(*(*this + 440) + 8 * *(*this + 448) - 8))
  {
    --*(*this + 512);
  }

  return this;
}

_BYTE *mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v13 = a2;
  v5 = *a1;
  v10 = *(*a1 + 96);
  sub_100053E00(v5 + 152, &v13, &v10, &v11);
  if (v12 == 1)
  {
    v6 = *a1;
    mlir::AsmParserState::convertIdLocToRange(a3);
    operator new();
  }

  result = mlir::AsmParserState::convertIdLocToRange(a3);
  v8 = *(*(*a1 + 88) + 8 * *(v11 + 8));
  *(v8 + 8) = result;
  *(v8 + 16) = v9;
  return result;
}

void mlir::AsmParserState::addDefinition(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(*a1 + 152);
  v5 = *(*a1 + 168);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = ((v6 >> 4) ^ (v6 >> 9)) & (v5 - 1);
    v8 = *(v4 + 16 * v7);
    if (v8 == v6)
    {
      goto LABEL_8;
    }

    v9 = 1;
    while (v8 != -4096)
    {
      v10 = v7 + v9++;
      v7 = v10 & (v5 - 1);
      v8 = *(v4 + 16 * v7);
      if (v8 == v6)
      {
        goto LABEL_8;
      }
    }
  }

  v7 = *(*a1 + 168);
LABEL_8:
  v11 = *(*(*a1 + 88) + 8 * *(v4 + 16 * v7 + 8));
  v12 = *(a2 + 24);
  v13 = *(v11 + 96);
  v14 = (v12 + 1);
  if (v12 >= v13 && v13 != v14)
  {
    if (v13 <= v14)
    {
      if (*(v11 + 100) < v14)
      {
        sub_1000562D0(v11 + 88, (v12 + 1));
        v13 = *(v11 + 96);
      }

      if (v13 != v14)
      {
        v19 = *(v11 + 88);
        v20 = v19 + 80 * v13;
        do
        {
          *(v20 + 48) = 0uLL;
          *(v20 + 64) = 0uLL;
          *v20 = 0uLL;
          *(v20 + 16) = 0uLL;
          *(v20 + 32) = 0uLL;
          *(v20 + 16) = v20 + 32;
          *(v20 + 28) = 3;
          v20 += 80;
        }

        while (v20 != v19 + 80 * v14);
      }
    }

    else
    {
      v16 = 80 * v13;
      v17 = (v16 + *(v11 + 88) - 64);
      v18 = 80 * v14 - v16;
      do
      {
        if (v17 + 2 != *v17)
        {
          free(*v17);
        }

        v17 -= 10;
        v18 += 80;
      }

      while (v18);
    }

    *(v11 + 96) = v14;
  }

  *&v28 = mlir::AsmParserState::convertIdLocToRange(a3);
  *(&v28 + 1) = v21;
  __src = v31;
  v30 = 0x300000000;
  v22 = *(v11 + 88) + 80 * v12;
  *v22 = v28;
  v23 = __src;
  if (v22 != &v28)
  {
    if (__src != v31)
    {
      v24 = *(v22 + 16);
      if (v24 != (v22 + 32))
      {
        free(v24);
        v23 = __src;
      }

      *(v22 + 16) = v23;
      *(v22 + 24) = v30;
      __src = v31;
      HIDWORD(v30) = 0;
      goto LABEL_38;
    }

    v25 = v30;
    v26 = *(v22 + 24);
    if (v26 >= v30)
    {
      if (v30)
      {
        memmove(*(v22 + 16), __src, 16 * v30);
      }

      goto LABEL_37;
    }

    if (*(v22 + 28) >= v30)
    {
      if (v26)
      {
        memmove(*(v22 + 16), __src, 16 * v26);
        v27 = v30 - v26;
        if (v30 == v26)
        {
LABEL_37:
          *(v22 + 24) = v25;
LABEL_38:
          LODWORD(v30) = 0;
          v23 = __src;
          goto LABEL_39;
        }
      }

      else
      {
        v26 = 0;
        v27 = v30;
        if (!v30)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      *(v22 + 24) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v22 + 16, (v22 + 32), v25, 16);
      v26 = 0;
      v27 = v30;
      if (!v30)
      {
        goto LABEL_37;
      }
    }

    memcpy((*(v22 + 16) + 16 * v26), __src + 16 * v26, 16 * v27);
    goto LABEL_37;
  }

LABEL_39:
  if (v23 != v31)
  {
    free(v23);
  }
}

uint64_t *mlir::AsmParserState::addAttrAliasDefinition(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v18 = *(*a1 + 184);
  v13 = llvm::StringMapImpl::hash(a2, a3);
  result = sub_100056400((v12 + 304), a2, a3, v13, &v18);
  if (v15)
  {
    v16 = *a1;
    operator new();
  }

  v17 = *(*(*a1 + 176) + 8 * *(*result + 8));
  v17[2] = a4;
  v17[3] = a5;
  v17[12] = a6;
  return result;
}

void mlir::AsmParserState::addTypeAliasDefinition(uint64_t *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *a1;
  v9 = *(*a1 + 248);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  sub_100056400((v6 + 328), a2, a3, v7, &v9);
  v8 = *a1;
  operator new();
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v55 = a2;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v18 = *(*a1 + 152);
    v19 = *(*a1 + 168);
    if (v19)
    {
      v20 = *(a2 + 16);
      v21 = ((v20 >> 4) ^ (v20 >> 9)) & (v19 - 1);
      v22 = *(v18 + 16 * v21);
      if (v22 == v20)
      {
        goto LABEL_22;
      }

      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v21 + v23++;
        v21 = v24 & (v19 - 1);
        v22 = *(v18 + 16 * v21);
        if (v22 == v20)
        {
          goto LABEL_22;
        }
      }
    }

    v21 = *(*a1 + 168);
LABEL_22:
    if (a4)
    {
      v27 = *(*(*(*a1 + 88) + 8 * *(v18 + 16 * v21 + 8)) + 88) + 80 * *(a2 + 24);
      v28 = 8 * a4;
      do
      {
        while (1)
        {
          *&v54 = mlir::AsmParserState::convertIdLocToRange(*a3);
          *(&v54 + 1) = v29;
          v30 = *(v27 + 24);
          if (v30 >= *(v27 + 28))
          {
            break;
          }

          *(*(v27 + 16) + 16 * v30) = v54;
          ++*(v27 + 24);
          ++a3;
          v28 -= 8;
          if (!v28)
          {
            return;
          }
        }

        sub_100056C68(v27 + 16, &v54);
        ++a3;
        v28 -= 8;
      }

      while (v28);
    }

    return;
  }

  Owner = mlir::detail::OpResultImpl::getOwner(v7);
  v9 = *a1;
  v10 = *(*a1 + 80);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = v9[8];
  v12 = (v10 - 1) & ((Owner >> 4) ^ (Owner >> 9));
  v13 = *(v11 + 16 * v12);
  if (v13 != Owner)
  {
    v51 = 1;
    while (v13 != -4096)
    {
      v52 = v12 + v51++;
      v12 = v52 & (v10 - 1);
      v13 = *(v11 + 16 * v12);
      if (v13 == Owner)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_8;
  }

LABEL_7:
  if (v12 == v10)
  {
LABEL_8:
    v14 = sub_100054B8C((v9 + 44), &v55);
    v15 = v14;
    v16 = v14[2];
    v17 = v16 + ((8 * a4) >> 3);
    if (v17 > v14[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v14, v14 + 4, v17, 8);
      LODWORD(v16) = v15[2];
    }

    if (a4)
    {
      memcpy((*v15 + 8 * v16), a3, 8 * a4);
      LODWORD(v16) = v15[2];
    }

    v15[2] = v16 + a4;
    return;
  }

  v25 = *(v7 + 8);
  if ((v25 & 7) == 6)
  {
    v26 = *(v7 + 16) + 6;
  }

  else
  {
    v26 = v25 & 7;
  }

  v31 = 0;
  v32 = *(*v9 + 8 * *(v11 + 16 * v12 + 8));
  v33 = *(v32 + 40);
  v34 = *(v32 + 48);
  v35 = 88 * v34;
  do
  {
    if (v35 == v31)
    {
      return;
    }

    v36 = *(v33 + v35 - 88);
    v33 -= 88;
    v31 += 88;
  }

  while (v26 < v36);
  if (a4)
  {
    v53 = &a3[a4];
    v37 = v33 + 88 * v34;
    do
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = *a3;
        if (*v38)
        {
          if (*v38 == 34)
          {
            v40 = v38 + 1;
            v41 = v38[1];
            if (v41)
            {
              while (1)
              {
                v39 = v40 + 1;
                v42 = memchr("\n\v\f", v41, 4uLL);
                if (v42 && v42 - "\n\v\f" != -1)
                {
                  break;
                }

                if (v41 == 92)
                {
                  v44 = *v39;
                  v45 = (v44 - 92) > 0x18 || ((1 << (v44 - 92)) & 0x1040001) == 0;
                  if (!v45 || v44 == 34)
                  {
                    v39 = v40 + 2;
                  }

                  else
                  {
                    if (word_10028F7D8[*v39] == -1 || word_10028F7D8[v40[2]] == -1)
                    {
                      goto LABEL_58;
                    }

                    v39 = v40 + 3;
                  }
                }

                v41 = *v39;
                v40 = v39;
                if (!*v39)
                {
                  goto LABEL_58;
                }
              }
            }

            else
            {
              v39 = v38 + 1;
            }

            goto LABEL_58;
          }

          v48 = v38 + 1;
          while (2)
          {
            v39 = v48;
            v49 = *v48;
            if (v49 < 0)
            {
              if (!__maskrune(*v48, 0x500uLL))
              {
LABEL_68:
                if (v49 - 36 > 0x3B || ((1 << (v49 - 36)) & 0x800000000000601) == 0)
                {
                  break;
                }
              }
            }

            else if ((_DefaultRuneLocale.__runetype[v49] & 0x500) == 0)
            {
              goto LABEL_68;
            }

            v48 = (v39 + 1);
            if (!*v39)
            {
              break;
            }

            continue;
          }
        }
      }

      else
      {
        v39 = 0;
      }

LABEL_58:
      v46 = *(v37 + 32);
      if (v46 >= *(v37 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v37 + 24, (v37 + 40), v46 + 1, 16);
        v46 = *(v37 + 32);
      }

      v47 = (*(v37 + 24) + 16 * v46);
      *v47 = v38;
      v47[1] = v39;
      ++*(v37 + 32);
      ++a3;
    }

    while (a3 != v53);
  }
}

void *sub_100054B8C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 72 * v6);
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
      v7 = (*a1 + 72 * (v14 & v5));
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
    sub_10005678C(a1, v2);
    sub_100056698(v16, v15, &v17);
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
  v7[1] = v7 + 3;
  v7[2] = 0x600000000;
  return v7 + 1;
}

uint64_t mlir::AsmParserState::addUses(uint64_t *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v20 = a2;
  v7 = *a1;
  v17 = *(*a1 + 96);
  result = sub_100053E00(v7 + 152, &v20, &v17, &v18);
  if (v19 == 1)
  {
    v9 = *a1;
    operator new();
  }

  if (a4)
  {
    v10 = *(*(*a1 + 88) + 8 * *(v18 + 8));
    v11 = 8 * a4;
    do
    {
      result = mlir::AsmParserState::convertIdLocToRange(*a3);
      v13 = *(v10 + 32);
      if (v13 >= *(v10 + 36))
      {
        v15 = result;
        v16 = v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v10 + 24, (v10 + 40), v13 + 1, 16);
        v12 = v16;
        result = v15;
        v13 = *(v10 + 32);
      }

      v14 = (*(v10 + 24) + 16 * v13);
      *v14 = result;
      v14[1] = v12;
      ++*(v10 + 32);
      ++a3;
      v11 -= 8;
    }

    while (v11);
  }

  return result;
}

void mlir::AsmParserState::addUses(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v15 = a2;
  v4 = *(*a1 + 512);
  if (v4)
  {
    v7 = sub_100054FE4(*(*(*a1 + 504) + 8 * v4 - 8), &v15);
    v8 = v7;
    v13 = &a3[16 * a4];
    v14 = a3;
    v9 = *(v7 + 2);
    if (v9 >= *(v7 + 3))
    {
      sub_1000574C8(v7, &v14, &v13);
      return;
    }

    v10 = (*v7 + (v9 << 6));
    *v10 = v10 + 2;
    v10[1] = 0x300000000;
    v11 = (16 * a4) >> 4;
    if (v11 < 4)
    {
      v12 = 0;
      if (!a4)
      {
LABEL_8:
        *(v10 + 2) = v12 + a4;
        ++*(v8 + 2);
        return;
      }
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v10 + 2, v11, 16);
      v12 = *(v10 + 2);
      if (!a4)
      {
        goto LABEL_8;
      }
    }

    memcpy((*v10 + 16 * v12), a3, 16 * a4);
    v12 = *(v10 + 2);
    goto LABEL_8;
  }
}

void *sub_100054FE4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v5 = (*a1 + 24 * v4);
    v6 = *v5;
    if (*a2 == *v5)
    {
      return v5 + 1;
    }

    v9 = 0;
    v10 = 1;
    while (v6 != -4096)
    {
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = v6 == -8192;
      }

      if (v11)
      {
        v9 = v5;
      }

      v12 = v4 + v10++;
      v4 = v12 & v3;
      v5 = (*a1 + 24 * (v12 & v3));
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
    sub_100056D8C(a1, v2);
    sub_100056CE4(v14, v13, &v15);
    a1 = v14;
    a2 = v13;
    v5 = v15;
    ++*(v14 + 8);
    if (*v5 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v8 + 1;
  if (*v5 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v5 = *a2;
  v5[1] = v5 + 3;
  v5[2] = 0;
  return v5 + 1;
}

void mlir::AsmParserState::addAttrAliasUses(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 304), a2, a3, v11);
  if (Key == -1)
  {
    v13 = *(v10 + 312);
  }

  else
  {
    v13 = Key;
  }

  v14 = *(v10 + 304) + 8 * v13;
  v15 = *a1;
  if (v14 == *(*a1 + 304) + 8 * *(*a1 + 312))
  {
    v21 = *(v15 + 184);
    v16 = llvm::StringMapImpl::hash(a2, a3);
    sub_100056400((v15 + 304), a2, a3, v16, &v21);
    v17 = *a1;
    operator new();
  }

  v18 = *(*(v15 + 176) + 8 * *(*v14 + 8));
  v19 = *(v18 + 40);
  if (v19 >= *(v18 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 32, (v18 + 48), v19 + 1, 16);
    LODWORD(v19) = *(v18 + 40);
  }

  v20 = (*(v18 + 32) + 16 * v19);
  *v20 = a4;
  v20[1] = a5;
  ++*(v18 + 40);
}

void mlir::AsmParserState::addTypeAliasUses(uint64_t *a1, int8x16_t *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey((v10 + 328), a2, a3, v11);
  if (Key == -1)
  {
    v13 = *(v10 + 336);
  }

  else
  {
    v13 = Key;
  }

  v14 = *(*(*a1 + 240) + 8 * *(*(*(v10 + 328) + 8 * v13) + 8));
  v15 = *(v14 + 40);
  if (v15 >= *(v14 + 44))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v14 + 32, (v14 + 48), v15 + 1, 16);
    LODWORD(v15) = *(v14 + 40);
  }

  v16 = (*(v14 + 32) + 16 * v15);
  *v16 = a4;
  v16[1] = a5;
  ++*(v14 + 40);
}

void mlir::AsmParserState::refineDefinition(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(*a1 + 352);
  v6 = *(*a1 + 368);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (v6)
  {
    v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
    v11 = (v5 + 72 * v10);
    v12 = *v11;
    if (*v11 == a2)
    {
      goto LABEL_8;
    }

    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 72 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v11 = (v5 + 72 * v6);
LABEL_8:
  mlir::AsmParserState::addUses(a1, a3, v11[1], *(v11 + 4));
  v15 = *a1;
  v16 = v15[46].i32[0];
  if (v16)
  {
    v17 = v15[44];
    v18 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v19 = v16 - 1;
    v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
    v21 = (*&v17 + 72 * v20);
    v22 = *v21;
    if (*v21 == a2)
    {
LABEL_10:
      v23 = v21[1];
      if (v23 != v21 + 3)
      {
        free(v23);
      }

      *v21 = -8192;
      v15[45] = vadd_s32(v15[45], 0x1FFFFFFFFLL);
    }

    else
    {
      v24 = 1;
      while (v22 != -4096)
      {
        v25 = v20 + v24++;
        v20 = v25 & v19;
        v21 = (*&v17 + 72 * v20);
        v22 = *v21;
        if (*v21 == a2)
        {
          goto LABEL_10;
        }
      }
    }
  }
}

void sub_100055604(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *(a2 + 4);
    v4 = *a2;
    if (v3)
    {
      v5 = v4 + 24 * v3;
      do
      {
        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v6 = *(v4 + 8);
          v7 = *(v4 + 16);
          if (v7)
          {
            v8 = v7 << 6;
            v9 = &v6[v8 - 64];
            v10 = -v8;
            do
            {
              if (v9 + 2 != *v9)
              {
                free(*v9);
              }

              v9 -= 8;
              v10 += 64;
            }

            while (v10);
            v6 = *(v4 + 8);
          }

          if (v6 != (v4 + 24))
          {
            free(v6);
          }
        }

        v4 += 24;
      }

      while (v4 != v5);
      v4 = *a2;
      v11 = 24 * *(a2 + 4);
    }

    else
    {
      v11 = 0;
    }

    llvm::deallocate_buffer(v4, v11, 8uLL);

    operator delete();
  }
}

uint64_t sub_100055714(uint64_t result, const void **a2)
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
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 16 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 16 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 16);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 16 * v8), *a2 + 16 * v8, 16 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10005588C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v34 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v34);
  v8 = *(a1 + 8);
  v9 = 16 * v8;
  v10 = &v7[16 * v8];
  v11 = *a2;
  v12 = *a3;
  *a3 = 0;
  *v10 = v11;
  *(v10 + 1) = v12;
  v13 = *a1;
  if (!v8)
  {
    goto LABEL_10;
  }

  v14 = (v8 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v14 < 0xB || (v13 + 8 < &v7[v9] ? (v24 = v7 + 8 >= &v13[v9]) : (v24 = 1), v24 ? (v25 = 0) : (v25 = 1), v13 < &v7[v9 - 8] ? (v26 = v7 >= &v13[v9 - 8]) : (v26 = 1), !v26 || (v25 & 1) != 0))
  {
    v15 = v7;
    v16 = *a1;
    do
    {
LABEL_4:
      v17 = *v16;
      *(v16 + 1) = 0;
      *v15 = v17;
      v15 += 16;
      v16 += 16;
    }

    while (v16 != &v13[v9]);
    goto LABEL_5;
  }

  v27 = v14 + 1;
  v28 = (v14 + 1) & 0x1FFFFFFFFFFFFFFELL;
  v15 = &v7[16 * v28];
  v16 = &v13[16 * v28];
  v29 = v28;
  v30 = v7;
  v31 = *a1;
  do
  {
    v32 = *v31;
    v33 = *(v31 + 1);
    *(v31 + 1) = 0;
    *(v31 + 3) = 0;
    *v30 = v32;
    *(v30 + 1) = v33;
    v30 += 32;
    v31 += 32;
    v29 -= 2;
  }

  while (v29);
  if (v27 != v28)
  {
    goto LABEL_4;
  }

LABEL_5:
  v18 = &v13[v9 - 8];
  v19 = -v9;
  do
  {
    v20 = *v18;
    *v18 = 0;
    if (v20)
    {
      sub_100055604(v18, v20);
    }

    v18 -= 2;
    v19 += 16;
  }

  while (v19);
  v13 = *a1;
LABEL_10:
  v21 = v34;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v7;
  v22 = *(a1 + 8) + 1;
  *(a1 + 8) = v22;
  *(a1 + 12) = v21;
  return &v7[16 * v22 - 16];
}

uint64_t sub_100055A24(uint64_t a1, void *a2)
{
  v28 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v28);
  sub_100055B94(&v5[8 * *(a1 + 8)], a2);
  v6 = *a1;
  v7 = *a1;
  v8 = *(a1 + 8);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 8 * v8;
  if (v9 < 0xB)
  {
    v11 = v5;
LABEL_12:
    v20 = &v6[8 * v8];
    do
    {
      v21 = *v7;
      *v7 = 0;
      v7 += 8;
      *v11 = v21;
      v11 += 8;
    }

    while (v7 != v20);
    goto LABEL_14;
  }

  v12 = v6 >= &v5[v10] || v5 >= &v6[v10];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v9 + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = &v5[v14];
  v7 = &v6[v14];
  v15 = (v6 + 16);
  v16 = v5 + 16;
  v17 = v13 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v18 = *(v15 - 1);
    v19 = *v15;
    *(v15 - 1) = 0uLL;
    *v15 = 0uLL;
    *(v16 - 1) = v18;
    *v16 = v19;
    v15 += 2;
    v16 += 2;
    v17 -= 4;
  }

  while (v17);
  if (v13 != (v13 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v22 = -v10;
  v23 = &v6[v10 - 8];
  do
  {
    v24 = *v23;
    *v23 = 0;
    if (v24)
    {
      sub_100055604(v23, v24);
    }

    --v23;
    v22 += 8;
  }

  while (v22);
  v7 = *a1;
LABEL_19:
  v25 = v28;
  if (v7 != v4)
  {
    free(v7);
  }

  *a1 = v5;
  v26 = *(a1 + 8) + 1;
  *(a1 + 8) = v26;
  *(a1 + 12) = v25;
  return &v5[8 * v26 - 8];
}

void *sub_100055B94(void *a1, void *a2)
{
  *a1 = 0;
  {
    v4 = a2;
    sub_100278E58();
    a2 = v4;
  }

  if ((*(**a2 + 32))(*a2, mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID(void)::id))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_100055C50()
{
  {
    sub_100278EAC();
  }

  return llvm::getTypeName<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>>(void)::Name;
}

const char *sub_100055C98()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::SymbolTable<Empty>]";
  v6 = 95;
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

uint64_t sub_100055D18(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v21 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 88, &v21);
  v8 = &v7[88 * *(a1 + 8)];
  *v8 = *a2;
  *(v8 + 8) = *a3;
  *(v8 + 3) = v8 + 40;
  *(v8 + 4) = 0x300000000;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = &v9[88 * v10];
    v12 = v7 + 24;
    v13 = v9 + 24;
    do
    {
      v14 = v13 - 24;
      *(v12 - 6) = *(v13 - 6);
      *(v12 - 1) = *(v13 - 1);
      *v12 = v12 + 2;
      v12[1] = 0x300000000;
      if (*(v13 + 2))
      {
        sub_100055714(v12, v13);
      }

      v12 += 11;
      v13 += 88;
    }

    while (v14 + 88 != v11);
    v9 = *a1;
    v15 = *(a1 + 8);
    if (v15)
    {
      v16 = &v9[88 * v15 - 64];
      v17 = -88 * v15;
      do
      {
        if (v16 + 2 != *v16)
        {
          free(*v16);
        }

        v16 -= 11;
        v17 += 88;
      }

      while (v17);
      v9 = *a1;
    }
  }

  v18 = v21;
  if (v9 != v6)
  {
    free(v9);
  }

  *a1 = v7;
  v19 = *(a1 + 8) + 1;
  *(a1 + 8) = v19;
  *(a1 + 12) = v18;
  return &v7[88 * v19 - 88];
}

uint64_t sub_100055E98(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  sub_100055F34(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t sub_100055F34(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 144);
      if (v20 != (v18 + 160))
      {
        free(v20);
      }

      v21 = *(v18 + 40);
      v22 = *(v18 + 48);
      if (v22)
      {
        v23 = &v21[88 * v22 - 64];
        v24 = -88 * v22;
        do
        {
          if (v23 + 2 != *v23)
          {
            free(*v23);
          }

          v23 -= 11;
          v24 += 88;
        }

        while (v24);
        v21 = *(v18 + 40);
      }

      if (v21 != (v18 + 56))
      {
        free(v21);
      }

      operator delete();
    }
  }

  while (v4 != v3);
  return result;
}

uint64_t sub_1000560B4(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  sub_100056150(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t sub_100056150(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return result;
  }

  v3 = *result;
  v4 = (*result + 8 * v2);
  v5 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 < 0xB || ((v6 = v2, v3 < a2 + v6 * 8) ? (v7 = &v3[v6] > a2) : (v7 = 0), v7))
  {
    v10 = a2;
    v11 = *result;
    do
    {
LABEL_12:
      v17 = *v11;
      *v11++ = 0;
      *v10++ = v17;
    }

    while (v11 != v4);
    goto LABEL_16;
  }

  v8 = v5 + 1;
  v9 = (v5 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v10 = (a2 + 8 * v9);
  v11 = &v3[v9];
  v12 = (v3 + 2);
  v13 = (a2 + 16);
  v14 = v9;
  do
  {
    v15 = *(v12 - 1);
    v16 = *v12;
    *(v12 - 1) = 0uLL;
    *v12 = 0uLL;
    *(v13 - 1) = v15;
    *v13 = v16;
    v12 += 2;
    v13 += 2;
    v14 -= 4;
  }

  while (v14);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  do
  {
LABEL_16:
    v19 = *--v4;
    v18 = v19;
    *v4 = 0;
    if (v19)
    {
      v20 = *(v18 + 88);
      v21 = *(v18 + 96);
      if (v21)
      {
        v22 = &v20[80 * v21 - 64];
        v23 = -80 * v21;
        do
        {
          if (v22 + 2 != *v22)
          {
            free(*v22);
          }

          v22 -= 10;
          v23 += 80;
        }

        while (v23);
        v20 = *(v18 + 88);
      }

      if (v20 != (v18 + 104))
      {
        free(v20);
      }

      v24 = *(v18 + 24);
      if (v24 != (v18 + 40))
      {
        free(v24);
      }

      operator delete();
    }
  }

  while (v4 != v3);
  return result;
}

void sub_1000562D0(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[80 * v6];
    v8 = v4 + 16;
    v9 = v5 + 16;
    do
    {
      *(v8 - 1) = *(v9 - 1);
      *v8 = v8 + 2;
      v8[1] = 0x300000000;
      if (*(v9 + 2))
      {
        sub_100055714(v8, v9);
      }

      v10 = v9 - 16;
      v8 += 10;
      v9 += 80;
    }

    while (v10 + 80 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v5[80 * v11 - 64];
      v13 = -80 * v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 10;
        v13 += 80;
      }

      while (v13);
      v5 = *a1;
    }
  }

  v14 = v15;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v14;
}

uint64_t *sub_100056400(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
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
  }

  return v10;
}

void sub_100056528(uint64_t a1, unint64_t a2)
{
  v25 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v25);
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
      v23 = *(v22 + 32);
      if (v23 != (v22 + 48))
      {
        free(v23);
      }

      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_21:
  v24 = v25;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v24;
}

uint64_t sub_100056698(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 72 * v8);
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
        v9 = (v4 + 72 * (v15 & v7));
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

void sub_10005678C(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 72 * v11 - 72;
    if (v12 >= 0x48)
    {
      v14 = v12 / 0x48 + 1;
      v13 = &buffer[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0x7FFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[9] = -4096;
        v15 += 18;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x7FFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[9 * v11];
    do
    {
      *v13 = -4096;
      v13 += 9;
    }

    while (v13 != v17);
    return;
  }

  v10 = 9 * v3;
  sub_1000568D8(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_1000568D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -4096;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[9] = -4096;
      v11 += 18;
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
    do
    {
      v14 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v15 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ HIDWORD(*v4));
        v16 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15);
        LODWORD(v15) = -348639895 * ((v16 >> 47) ^ v16);
        v17 = *(a1 + 16) - 1;
        v18 = v17 & v15;
        v19 = (*a1 + 72 * v18);
        v20 = *v19;
        if (v14 != *v19)
        {
          v22 = 0;
          v23 = 1;
          while (v20 != -4096)
          {
            if (v22)
            {
              v24 = 0;
            }

            else
            {
              v24 = v20 == -8192;
            }

            if (v24)
            {
              v22 = v19;
            }

            v25 = v18 + v23++;
            v18 = v25 & v17;
            v19 = (*a1 + 72 * (v25 & v17));
            v20 = *v19;
            if (v14 == *v19)
            {
              goto LABEL_14;
            }
          }

          if (v22)
          {
            v19 = v22;
          }
        }

LABEL_14:
        *v19 = v14;
        v19[1] = (v19 + 3);
        v19[2] = 0x600000000;
        if (*(v4 + 4))
        {
          sub_100056AF0((v19 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v21 = v4[1];
        if (v21 != v4 + 3)
        {
          free(v21);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t sub_100056AF0(uint64_t result, const void **a2)
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
      goto LABEL_17;
    }

    v6 = a2 + 1;
    v7 = *(a2 + 2);
    v8 = *(result + 8);
    if (v8 >= v7)
    {
      if (v7)
      {
        v12 = result;
        memmove(*result, *a2, 8 * v7);
        result = v12;
      }

      *(result + 8) = v7;
      goto LABEL_17;
    }

    if (*(result + 12) >= v7)
    {
      if (v8)
      {
        v10 = result;
        v13 = a2;
        memmove(*result, *a2, 8 * v8);
        a2 = v13;
        v11 = *v6 - v8;
        if (!v11)
        {
LABEL_16:
          result = v10;
          *(v10 + 8) = v7;
LABEL_17:
          *v6 = 0;
          return result;
        }
      }

      else
      {
        v10 = result;
        v8 = 0;
        v11 = *v6;
        if (!*v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      *(result + 8) = 0;
      v9 = a2;
      v10 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, (result + 16), v7, 8);
      a2 = v9;
      v8 = 0;
      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_16;
      }
    }

    memcpy((*v10 + 8 * v8), *a2 + 8 * v8, 8 * v11);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100056C68(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    v7 = *a2;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 16);
    v2 = v7;
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  *(*a1 + 16 * v3) = v2;
  v4 = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 16 * v4 - 16;
}

uint64_t sub_100056CE4(uint64_t *a1, void *a2, void *a3)
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

void sub_100056D8C(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 24 * v11 - 24;
    if (v12 >= 0x18)
    {
      v14 = v12 / 0x18 + 1;
      v13 = &buffer[3 * (v14 & 0x1FFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -4096;
        v15[3] = -4096;
        v15 += 6;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0x1FFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[3 * v11];
    do
    {
      *v13 = -4096;
      v13 += 3;
    }

    while (v13 != v17);
    return;
  }

  v10 = 3 * v3;
  sub_100056ED0(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_100056ED0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 24 * v6 - 24;
    if (v8 < 0x18)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[3 * v6];
      do
      {
        *v9 = -4096;
        v9 += 3;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x18 + 1;
    v9 = &v7[3 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -4096;
      v11[3] = -4096;
      v11 += 6;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
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
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_11:
      v4 += 3;
      if (v4 == a3)
      {
        return;
      }
    }

    v15 = *(a1 + 16) - 1;
    v16 = v15 & ((v14 >> 4) ^ (v14 >> 9));
    v17 = (*a1 + 24 * v16);
    v18 = *v17;
    if (v14 != *v17)
    {
      v24 = 0;
      v25 = 1;
      while (v18 != -4096)
      {
        if (v24)
        {
          v26 = 0;
        }

        else
        {
          v26 = v18 == -8192;
        }

        if (v26)
        {
          v24 = v17;
        }

        v27 = v16 + v25++;
        v16 = v27 & v15;
        v17 = (*a1 + 24 * (v27 & v15));
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
    v17[1] = v17 + 3;
    v17[2] = 0;
    if (*(v4 + 4))
    {
      sub_1000570D4((v17 + 1), (v4 + 1));
      v19 = *(v4 + 4);
      ++*(a1 + 8);
      v20 = v4[1];
      if (!v19)
      {
        goto LABEL_22;
      }

      v21 = v19 << 6;
      v22 = &v20[v21 - 64];
      v23 = -v21;
      do
      {
        if (v22 + 2 != *v22)
        {
          free(*v22);
        }

        v22 -= 8;
        v23 += 64;
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

uint64_t sub_1000570D4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 16;
    v5 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = v7 << 6;
        v9 = &v6[v8 - 64];
        v10 = -v8;
        do
        {
          if (v9 + 2 != *v9)
          {
            free(*v9);
          }

          v9 -= 8;
          v10 += 64;
        }

        while (v10);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v11 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v4;
      *(a2 + 12) = 0;
LABEL_12:
      *v11 = 0;
      return a1;
    }

    v11 = (a2 + 8);
    v13 = *(a2 + 8);
    v14 = *(a1 + 8);
    if (v14 >= v13)
    {
      v17 = *a1;
      if (v13)
      {
        v18 = v13 << 6;
        do
        {
          sub_100055714(v17, v5);
          v5 += 8;
          v17 += 64;
          v18 -= 64;
        }

        while (v18);
        v19 = *a1;
        v14 = *(a1 + 8);
      }

      else
      {
        v19 = *a1;
      }

      v32 = v19 + (v14 << 6);
      while (v32 != v17)
      {
        v34 = *(v32 - 64);
        v32 -= 64;
        v33 = v34;
        if ((v32 + 16) != v34)
        {
          free(v33);
        }
      }

      *(a1 + 8) = v13;
      v35 = *(a2 + 8);
      if (v35)
      {
        v36 = v35 << 6;
        v37 = (v36 + *a2 - 64);
        v38 = -v36;
        do
        {
          if (v37 + 2 != *v37)
          {
            free(*v37);
          }

          v37 -= 8;
          v38 += 64;
        }

        while (v38);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v13)
    {
      if (!v14)
      {
        v14 = 0;
        v22 = *a2;
        v23 = *(a2 + 8);
        if (*(a2 + 8))
        {
LABEL_31:
          v24 = *a1;
          v25 = v14 << 6;
          v26 = v23 << 6;
          do
          {
            v27 = (v24 + v25);
            *v27 = v24 + v25 + 16;
            v27[1] = 0x300000000;
            if (*(v22 + v25 + 8))
            {
              sub_100055714(v27, (v22 + v25));
            }

            v24 += 64;
            v26 -= 64;
            v22 += 8;
          }

          while (v25 != v26);
          v22 = *a2;
        }

LABEL_36:
        *(a1 + 8) = v13;
        v28 = *v11;
        if (v28)
        {
          v29 = v28 << 6;
          v30 = (v22 + v29 - 64);
          v31 = -v29;
          do
          {
            if (v30 + 2 != *v30)
            {
              free(*v30);
            }

            v30 -= 8;
            v31 += 64;
          }

          while (v31);
        }

        goto LABEL_12;
      }

      v20 = *a1;
      v21 = v14 << 6;
      do
      {
        sub_100055714(v20, v5);
        v5 += 8;
        v20 += 64;
        v21 -= 64;
      }

      while (v21);
    }

    else
    {
      if (v14)
      {
        v15 = ((v14 << 6) + *a1 - 64);
        v16 = -64 * v14;
        do
        {
          if (v15 + 2 != *v15)
          {
            free(*v15);
          }

          v15 -= 8;
          v16 += 64;
        }

        while (v16);
      }

      *(a1 + 8) = 0;
      sub_1000573B0(a1, v13);
      v14 = 0;
    }

    v22 = *a2;
    v23 = *(a2 + 8);
    if (v14 != v23)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  return a1;
}

void sub_1000573B0(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v15);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 << 6;
    v9 = v4;
    do
    {
      *v9 = v9 + 2;
      v9[1] = 0x300000000;
      if (*(v6 + 8))
      {
        sub_100055714(v9, v6);
      }

      v9 += 8;
      v6 += 64;
      v8 -= 64;
    }

    while (v8);
    v6 = *a1;
    v10 = *(a1 + 8);
    if (v10)
    {
      v11 = v10 << 6;
      v12 = (v11 + v6 - 64);
      v13 = -v11;
      do
      {
        if (v12 + 2 != *v12)
        {
          free(*v12);
        }

        v12 -= 8;
        v13 += 64;
      }

      while (v13);
      v6 = *a1;
    }
  }

  v14 = v15;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v14;
}

uint64_t sub_1000574C8(uint64_t a1, const void **a2, const void **a3)
{
  v24 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v24);
  v8 = &v7[8 * *(a1 + 8)];
  v9 = *a2;
  v10 = *a3;
  *v8 = v8 + 2;
  v8[1] = 0x300000000;
  v11 = (v10 - v9) >> 4;
  if (v11 < 4)
  {
    v12 = 0;
    if (v9 == v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(v8, v8 + 2, v11, 16);
  v12 = *(v8 + 2);
  if (v9 != v10)
  {
LABEL_5:
    memcpy((*v8 + 16 * v12), v9, v10 - v9);
    v12 = *(v8 + 2);
  }

LABEL_6:
  *(v8 + 2) = v12 + ((v10 - v9) >> 4);
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {
    v15 = v14 << 6;
    v16 = v7;
    do
    {
      *v16 = v16 + 2;
      v16[1] = 0x300000000;
      if (*(v13 + 8))
      {
        sub_100055714(v16, v13);
      }

      v16 += 8;
      v13 += 64;
      v15 -= 64;
    }

    while (v15);
    v13 = *a1;
    v17 = *(a1 + 8);
    if (v17)
    {
      v18 = v17 << 6;
      v19 = (v18 + v13 - 64);
      v20 = -v18;
      do
      {
        if (v19 + 2 != *v19)
        {
          free(*v19);
        }

        v19 -= 8;
        v20 += 64;
      }

      while (v20);
      v13 = *a1;
    }
  }

  v21 = v24;
  if (v13 != v6)
  {
    free(v13);
  }

  *a1 = v7;
  v22 = (*(a1 + 8) + 1);
  *(a1 + 8) = v22;
  *(a1 + 12) = v21;
  return &v7[8 * v22 - 8];
}

void sub_100057690()
{

  operator delete();
}

uint64_t *mlir::detail::Parser::parseAttribute(mlir::StringAttr ****a1, uint64_t *a2)
{
  v3 = a1[1];
  v4 = (v3 + 7);
  switch(*(v3 + 14))
  {
    case 2:
      if (mlir::Token::isCodeCompletionFor(v4, 5))
      {
        return mlir::detail::Parser::parseExtendedAttr(a1, a2);
      }

      else
      {
        return mlir::detail::Parser::codeCompleteAttribute(a1);
      }

    case 4:
      *&v82 = v83;
      *(&v82 + 1) = 0x300000000;
      if (v3[19])
      {
        LocRange = mlir::Token::getLocRange(v4);
        v16 = (v82 + 16 * DWORD2(v82));
        *v16 = LocRange;
        v16[1] = v17;
        ++DWORD2(v82);
        v3 = a1[1];
      }

      mlir::Token::getSymbolReference((v3 + 7), &v68);
      v18 = a1[1];
      *(v18 + 5) = *(v18 + 7);
      v18[12] = v18[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v86);
      v19 = a1[1];
      *(v19 + 7) = v86;
      v19[9] = v87;
      v20 = a1[1];
      if (*(v20 + 14) != 15)
      {
        goto LABEL_81;
      }

      Loc = mlir::Token::getLoc((v20 + 7));
      v22 = a1[1];
      v22[12] = v22[9];
      *(v22 + 5) = *(v22 + 7);
      mlir::Lexer::lexToken((a1[1] + 1), &v86);
      v23 = a1[1];
      *(v23 + 7) = v86;
      v23[9] = v87;
      v20 = a1[1];
      v24 = v20 + 7;
      v25 = *(v20 + 14);
      if (v25 == 15)
      {
        *(v20 + 5) = *v24;
        v20[12] = v20[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v86);
        v26 = a1[1];
        *(v26 + 7) = v86;
        v26[9] = v87;
        v27 = mlir::Token::getLoc((a1[1] + 7));
        v28 = a1[1];
        if (*(v28 + 14) == 4)
        {
          if (v28[19])
          {
            v29 = mlir::Token::getLocRange((v28 + 7));
            v31 = DWORD2(v82);
            if (DWORD2(v82) >= HIDWORD(v82))
            {
              v37 = v29;
              v38 = v30;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v82, v83, DWORD2(v82) + 1, 16);
              v30 = v38;
              v29 = v37;
              v31 = DWORD2(v82);
            }

            v32 = (v82 + 16 * v31);
            *v32 = v29;
            v32[1] = v30;
            ++DWORD2(v82);
            v28 = a1[1];
          }

          mlir::Token::getSymbolReference((v28 + 7), __p);
          v33 = a1[1];
          *(v33 + 5) = *(v33 + 7);
          v33[12] = v33[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v86);
          v34 = a1[1];
          *(v34 + 7) = v86;
          v34[9] = v87;
          if (v67 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (v67 >= 0)
          {
            v36 = v67;
          }

          else
          {
            v36 = __p[1];
          }

          mlir::SymbolRefAttr::get(**a1[1], v35, v36);
          operator new();
        }

        *&v86 = "expected nested symbol reference identifier";
        LOWORD(v89) = 259;
        mlir::detail::Parser::emitError(a1, v27, &v86, v72);
        if (v72[0])
        {
          mlir::InFlightDiagnostic::report(v72);
        }

        if (v80 == 1)
        {
          if (v79 != &v80)
          {
            free(v79);
          }

          v59 = v77;
          if (v77)
          {
            v60 = v78;
            v61 = v77;
            if (v78 != v77)
            {
              do
              {
                v60 = sub_100052FFC(v60 - 1);
              }

              while (v60 != v59);
              v61 = v77;
            }

            v78 = v59;
            operator delete(v61);
          }

          v62 = v75;
          if (v75)
          {
            v63 = v76;
            v64 = v75;
            if (v76 != v75)
            {
              do
              {
                v65 = *--v63;
                *v63 = 0;
                if (v65)
                {
                  operator delete[]();
                }
              }

              while (v63 != v62);
              v64 = v75;
            }

            v76 = v62;
            operator delete(v64);
          }

          if (v73 != &v74)
          {
            free(v73);
          }
        }

        result = 0;
      }

      else
      {
        if (v25 >= 2)
        {
          v20[5] = Loc;
          *(v20 + 5) = *v24;
          v20[12] = v20[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v86);
          v54 = a1[1];
          *(v54 + 7) = v86;
          v54[9] = v87;
          v20 = a1[1];
        }

LABEL_81:
        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v55 = &v68;
        }

        else
        {
          v55 = v68.__r_.__value_.__r.__words[0];
        }

        if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v68.__r_.__value_.__l.__size_;
        }

        result = mlir::SymbolRefAttr::get(**v20, v55, size, 0, 0);
        v57 = a1[1][19];
        if (v57)
        {
          v58 = result;
          mlir::AsmParserState::addUses(v57, result, v82, DWORD2(v82));
          result = v58;
        }
      }

      v50 = result;
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
        result = v50;
      }

      v49 = v82;
      if (v82 != v83)
      {
        goto LABEL_113;
      }

      return result;
    case 5:
      return mlir::detail::Parser::parseExtendedAttr(a1, a2);
    case 9:
      return mlir::detail::Parser::parseFloatAttr(a1, a2, 0);
    case 0xA:
      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 0);
    case 0xB:
      mlir::Token::getStringValue(v4, &v68);
      v11 = a1[1];
      *(v11 + 5) = *(v11 + 7);
      v11[12] = v11[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v13 = a2;
      v14 = a1[1];
      *(v14 + 7) = v82;
      v14[9] = v83[0];
      if (a2)
      {
        goto LABEL_19;
      }

      v51 = a1[1];
      if (*(v51 + 14) == 15)
      {
        *(v51 + 5) = *(v51 + 7);
        v51[12] = v51[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v82);
        v52 = a1[1];
        *(v52 + 7) = v82;
        v52[9] = v83[0];
        result = mlir::detail::Parser::parseType(a1);
        v13 = result;
        if (result)
        {
LABEL_19:
          v84 = 260;
          *&v82 = &v68;
          result = mlir::StringAttr::get(&v82, v13);
        }
      }

      else
      {
        v53 = **v51;
        LOWORD(v89) = 260;
        *&v86 = &v68;
        result = mlir::StringAttr::get(v53, &v86, v12);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        v50 = result;
        operator delete(v68.__r_.__value_.__l.__data_);
        return v50;
      }

      return result;
    case 0x14:
      *&v82 = v83;
      *(&v82 + 1) = 0x400000000;
      v85 = 4;
      *&v86 = 1;
      *(&v86 + 1) = -4096;
      v87 = -4096;
      v88 = -4096;
      v89 = -4096;
      v68.__r_.__value_.__r.__words[0] = a1;
      v68.__r_.__value_.__l.__size_ = &v86;
      v68.__r_.__value_.__r.__words[2] = &v82;
      v39 = mlir::detail::Parser::parseCommaSeparatedList(a1, 4, sub_10005ECD8, &v68, " in attribute dictionary", 24);
      if ((v86 & 1) == 0)
      {
        llvm::deallocate_buffer(*(&v86 + 1), (8 * v87), 8uLL);
      }

      if (v39)
      {
        result = mlir::NamedAttrList::getDictionary(&v82, **a1[1]);
      }

      else
      {
        result = 0;
      }

      v49 = v82;
      if (v82 != v83)
      {
        goto LABEL_69;
      }

      return result;
    case 0x16:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v40 = a1[1];
      *(v40 + 7) = v82;
      v40[9] = v83[0];
      *&v82 = v83;
      *(&v82 + 1) = 0x400000000;
      *&v86 = &v82;
      *(&v86 + 1) = a1;
      if (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, sub_10005EC40, &v86, 1))
      {
        result = mlir::Builder::getArrayAttr(a1, v82, DWORD2(v82));
      }

      else
      {
        result = 0;
      }

      v49 = v82;
      if (v82 != v83)
      {
LABEL_69:
        v50 = result;
LABEL_113:
        free(v49);
        return v50;
      }

      return result;
    case 0x18:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v44 = a1[1];
      *(v44 + 7) = v82;
      v44[9] = v83[0];
      v45 = *(a1[1] + 14);
      if (v45 == 9)
      {
        return mlir::detail::Parser::parseFloatAttr(a1, a2, 1);
      }

      if (v45 != 10)
      {
        *&v82 = "expected constant integer or floating point value";
        v84 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v82, v81);
        sub_100059A74(v81);
        return 0;
      }

      return mlir::detail::Parser::parseDecOrHexAttr(a1, a2, 1);
    case 0x22:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v42 = a1[1];
      *(v42 + 7) = v82;
      v42[9] = v83[0];
      v68.__r_.__value_.__r.__words[0] = 0;
      *&v82 = "expected '<' in affine map";
      v84 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v82) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseAffineMapReference(a1, &v68))
      {
        return 0;
      }

      *&v86 = "expected '>' in affine map";
      LOWORD(v89) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v86) & 1) == 0)
      {
        return 0;
      }

      return mlir::AffineMapAttr::get(v68.__r_.__value_.__r.__words[0]);
    case 0x23:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v8 = a1[1];
      *(v8 + 7) = v82;
      v8[9] = v83[0];
      v68.__r_.__value_.__r.__words[0] = 0;
      *&v82 = "expected '<' in integer set";
      v84 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 23, &v82) & 1) == 0)
      {
        return 0;
      }

      if (!mlir::detail::Parser::parseIntegerSetReference(a1, &v68))
      {
        return 0;
      }

      *&v86 = "expected '>' in integer set";
      LOWORD(v89) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v86) & 1) == 0)
      {
        return 0;
      }

      return mlir::IntegerSetAttr::get(v68.__r_.__value_.__r.__words[0]);
    case 0x24:
      return mlir::detail::Parser::parseDenseArrayAttr(a1);
    case 0x29:
      return mlir::detail::Parser::parseDenseElementsAttr(a1, a2);
    case 0x2A:
      return mlir::detail::Parser::parseDenseResourceElementsAttr(a1, a2);
    case 0x2B:
      return mlir::detail::Parser::parseDistinctAttr(a1, a2);
    case 0x3C:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v41 = a1[1];
      *(v41 + 7) = v82;
      v41[9] = v83[0];
      return mlir::Builder::getBoolAttr(a1, 0);
    case 0x41:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v46 = a1[1];
      *(v46 + 7) = v82;
      v46[9] = v83[0];
      v68.__r_.__value_.__r.__words[0] = 0;
      *&v82 = "expected '(' in inline location";
      v84 = 259;
      if ((mlir::detail::Parser::parseToken(a1, 21, &v82) & 1) == 0)
      {
        return 0;
      }

      if ((mlir::detail::Parser::parseLocationInstance(a1, &v68) & 1) == 0)
      {
        return 0;
      }

      *&v86 = "expected ')' in inline location";
      LOWORD(v89) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 28, &v86) & 1) == 0)
      {
        return 0;
      }

      return v68.__r_.__value_.__r.__words[0];
    case 0x49:
      return mlir::detail::Parser::parseSparseElementsAttr(a1, a2);
    case 0x4B:
      return mlir::detail::Parser::parseStridedLayoutAttr(a1);
    case 0x50:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v9 = a1[1];
      *(v9 + 7) = v82;
      v9[9] = v83[0];
      return mlir::Builder::getBoolAttr(a1, 1);
    case 0x53:
      *(v3 + 5) = *v4;
      v3[12] = v3[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v82);
      v47 = a1[1];
      *(v47 + 7) = v82;
      v47[9] = v83[0];
      return mlir::Builder::getUnitAttr(a1, v48);
    default:
      *&v86 = 0;
      v7 = mlir::detail::Parser::parseOptionalType(a1, &v86);
      if ((v7 & 0x100) != 0)
      {
        if (v7)
        {
          return mlir::TypeAttr::get(v86);
        }
      }

      else
      {
        *&v82 = "expected attribute value";
        v84 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, &v82, &v69);
        if (v69)
        {
          mlir::InFlightDiagnostic::report(&v69);
        }

        if (v71 == 1)
        {
          sub_100052F18(v70);
        }
      }

      return 0;
  }
}

uint64_t mlir::detail::Parser::parseDenseElementsAttr(mlir::detail::Parser *a1, uint64_t *a2)
{
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v21);
  v6 = *(a1 + 1);
  *(v6 + 56) = *v21;
  *(v6 + 72) = v22;
  v21[0] = "expected '<' after 'dense'";
  v23[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v21) & 1) == 0)
  {
    return 0;
  }

  v21[0] = a1;
  v21[1] = v23;
  v22 = 0x400000000;
  v29 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  LOBYTE(v27) = 0;
  v7 = *(a1 + 1);
  v8 = (v7 + 56);
  v9 = *(v7 + 56);
  switch(v9)
  {
    case 11:
      v12 = *v8;
      v28 = *(v7 + 72);
      v27 = v12;
      v29 = 1;
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
      v13 = *(a1 + 1);
      *(v13 + 56) = v18;
      *(v13 + 72) = v19;
      break;
    case 22:
      if ((sub_10005D56C(v21, &v21[1]) & 1) == 0)
      {
        goto LABEL_17;
      }

      break;
    case 19:
      *(v7 + 80) = *v8;
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
      v10 = *(a1 + 1);
      *(v10 + 56) = v18;
      *(v10 + 72) = v19;
      goto LABEL_12;
    default:
      if ((sub_10005D6DC(v21) & 1) == 0)
      {
        goto LABEL_17;
      }

      break;
  }

  *&v18 = "expected '>'";
  v20 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 19, &v18) & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if (a2)
  {
    v14 = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_17:
    v11 = 0;
    v16 = __p;
    if (!__p)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v14 = mlir::detail::Parser::parseElementsLiteralType(a1, 0);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_14:
  v11 = sub_10005AF9C(v21, Loc, v14, v15);
  v16 = __p;
  if (__p)
  {
LABEL_18:
    v25 = v16;
    operator delete(v16);
  }

LABEL_19:
  if (v21[1] != v23)
  {
    free(v21[1]);
  }

  return v11;
}

uint64_t *mlir::detail::Parser::parseDenseResourceElementsAttr(uint64_t ****a1, void *a2)
{
  Loc = mlir::Token::getLoc((a1[1] + 7));
  v5 = a1[1];
  v5[12] = v5[9];
  *(v5 + 5) = *(v5 + 7);
  mlir::Lexer::lexToken((a1[1] + 1), &v23);
  v6 = a1[1];
  *(v6 + 7) = v23;
  v6[9] = v24;
  *&v23 = "expected '<' after 'dense_resource'";
  v25 = 259;
  if (mlir::detail::Parser::parseToken(a1, 23, &v23))
  {
    LoadedDialect = mlir::MLIRContext::getLoadedDialect(**a1[1], "builtin", 7);
    mlir::detail::Parser::parseResourceHandle(a1, LoadedDialect, &v20);
    if (v22 == 1)
    {
      *&v23 = "expected '>'";
      v25 = 259;
      if (mlir::detail::Parser::parseToken(a1, 19, &v23))
      {
        v8 = *(&v20 + 1);
        {
          if (v8 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
LABEL_6:
            v25 = 259;
            mlir::detail::Parser::emitError(a1, Loc, &v23, v29);
            if (v29[0])
            {
              mlir::InFlightDiagnostic::report(v29);
            }

            if (v37 == 1)
            {
              if (v36 != &v37)
              {
                free(v36);
              }

              v9 = v34;
              if (v34)
              {
                v10 = v35;
                v11 = v34;
                if (v35 != v34)
                {
                  do
                  {
                    v10 = sub_100052FFC(v10 - 1);
                  }

                  while (v10 != v9);
                  v11 = v34;
                }

                v35 = v9;
                operator delete(v11);
              }

              v12 = v32;
              if (v32)
              {
                v13 = v33;
                v14 = v32;
                if (v33 != v32)
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
                  v14 = v32;
                }

                v33 = v12;
                operator delete(v14);
              }

              if (v30 != &v31)
              {
                free(v30);
              }
            }

            return 0;
          }
        }

        else
        {
          v19 = v8;
          sub_100278F00();
          if (v19 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          v16 = sub_10005E890(a2);
          if (v16)
          {
            goto LABEL_29;
          }

          goto LABEL_33;
        }

        Loc = mlir::Token::getLoc((a1[1] + 7));
        *&v23 = "expected ':'";
        v25 = 259;
        if (mlir::detail::Parser::parseToken(a1, 15, &v23))
        {
          result = mlir::detail::Parser::parseType(a1);
          if (!result)
          {
            return result;
          }

          v16 = sub_10005E890(result);
          if (v16)
          {
LABEL_29:
            v23 = v20;
            v24 = v21;
            return mlir::DenseResourceElementsAttr::get(v16, v17, &v23);
          }

LABEL_33:
          v25 = 259;
          mlir::detail::Parser::emitError(a1, Loc, &v23, &v26);
          if (v26)
          {
            mlir::InFlightDiagnostic::report(&v26);
          }

          if (v28 == 1)
          {
            sub_100052F18(v27);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseDenseArrayAttr(mlir::detail::Parser *a1)
{
  v2 = *(a1 + 1);
  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v37);
  v3 = *(a1 + 1);
  *(v3 + 56) = *v37;
  *(v3 + 72) = *&v37[16];
  *v37 = "expected '<' after 'array'";
  WORD4(v38) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, v37) & 1) == 0)
  {
    return 0;
  }

  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v32 = mlir::detail::Parser::parseType(a1);
  if (!v32)
  {
    *v37 = "expected an integer or floating point type";
    WORD4(v38) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v37, v46);
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v5 = v51;
    if (v51)
    {
      v6 = v52;
      v7 = v51;
      if (v52 != v51)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = v51;
      }

      v52 = v5;
      operator delete(v7);
    }

    v8 = v49;
    if (v49)
    {
      v9 = v50;
      v10 = v49;
      if (v50 != v49)
      {
        do
        {
          v11 = *--v9;
          *v9 = 0;
          if (v11)
          {
            operator delete[]();
          }
        }

        while (v9 != v8);
        v10 = v49;
      }

      v50 = v8;
      operator delete(v10);
    }

    v27 = v47;
    if (v47 == &v48)
    {
      return 0;
    }

LABEL_52:
    free(v27);
    return 0;
  }

  if (!mlir::Type::isIntOrIndexOrFloat(&v32))
  {
    v30[0] = "expected integer or float type, got: ";
    v31 = 259;
    mlir::detail::Parser::emitError(a1, Loc, v30, v37);
    if (*v37)
    {
      v12 = v33;
      mlir::DiagnosticArgument::DiagnosticArgument(v33, v32);
      v13 = v38;
      if (DWORD2(v38) >= HIDWORD(v38))
      {
        if (v38 <= v33 && v38 + 24 * DWORD2(v38) > v33)
        {
          v29 = &v33[-v38];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v39, DWORD2(v38) + 1, 24);
          v13 = v38;
          v12 = &v29[v38];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v39, DWORD2(v38) + 1, 24);
          v12 = v33;
          v13 = v38;
        }
      }

      v14 = v13 + 24 * DWORD2(v38);
      v15 = *v12;
      *(v14 + 16) = *(v12 + 2);
      *v14 = v15;
      ++DWORD2(v38);
      if (*v37)
      {
        mlir::InFlightDiagnostic::report(v37);
      }
    }

    if (v45 != 1)
    {
      return 0;
    }

    if (v44 != &v45)
    {
      free(v44);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v43;
      v18 = __p;
      if (v43 != __p)
      {
        do
        {
          v17 = sub_100052FFC(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v43 = v16;
      operator delete(v18);
    }

    v19 = v40;
    if (v40)
    {
      v20 = v41;
      v21 = v40;
      if (v41 != v40)
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

        while (v20 != v19);
        v21 = v40;
      }

      v41 = v19;
      operator delete(v21);
    }

    v27 = v38;
    if (v38 == v39)
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (!mlir::Type::isInteger(&v32, 1) && (mlir::Type::getIntOrFloatBitWidth(&v32) & 7) != 0)
  {
    *v37 = "element type bitwidth must be a multiple of 8";
    WORD4(v38) = 259;
    mlir::detail::Parser::emitError(a1, Loc, v37, &v34);
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
    }

    if (v36 == 1)
    {
      sub_100052F18(v35);
    }

    return 0;
  }

  v23 = *(a1 + 1);
  if (*(v23 + 56) == 19)
  {
    *(v23 + 80) = *(v23 + 56);
    *(v23 + 96) = *(v23 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), v37);
    v24 = *(a1 + 1);
    *(v24 + 56) = *v37;
    *(v24 + 72) = *&v37[16];
    return mlir::DenseArrayAttr::get(v32, 0, 0, 0);
  }

  *v37 = "expected ':' after dense array type";
  WORD4(v38) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v37) & 1) == 0)
  {
    return 0;
  }

  *v37 = v32;
  *&v37[8] = 0u;
  v38 = 0u;
  v30[0] = v37;
  v30[1] = a1;
  if (mlir::Type::isIntOrIndex(&v32))
  {
    v26 = sub_10005FAA0;
  }

  else
  {
    v26 = sub_100060224;
  }

  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, v26, v30, 0, 0) & 1) != 0 && (v30[0] = "expected '>' to close an array attribute", v31 = 259, (mlir::detail::Parser::parseToken(a1, 19, v30)))
  {
    result = mlir::DenseArrayAttr::get(*v37, DWORD2(v38), *&v37[8], *&v37[16] - *&v37[8]);
  }

  else
  {
    result = 0;
  }

  if (*&v37[8])
  {
    *&v37[16] = *&v37[8];
    v28 = result;
    operator delete(*&v37[8]);
    return v28;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseAttributeDict(mlir::detail::Parser *this, mlir::NamedAttrList *a2)
{
  v5 = 1;
  v6 = -4096;
  v7 = -4096;
  v8 = -4096;
  v9 = -4096;
  v4[0] = this;
  v4[1] = &v5;
  v4[2] = a2;
  result = mlir::detail::Parser::parseCommaSeparatedList(this, 4, sub_10005ECD8, v4, " in attribute dictionary", 24);
  if ((v5 & 1) == 0)
  {
    v3 = result;
    llvm::deallocate_buffer(v6, (8 * v7), 8uLL);
    return v3;
  }

  return result;
}

uint64_t *mlir::detail::Parser::parseFloatAttr(mlir::detail::Parser *a1, uint64_t *F64Type, int a3)
{
  FloatingPointValue = mlir::Token::getFloatingPointValue((*(a1 + 1) + 56));
  if ((v7 & 1) == 0)
  {
    *&v42 = "floating point value too large for attribute";
    v44 = 259;
    mlir::detail::Parser::emitError(a1, &v42, v54);
    if (v54[0])
    {
      mlir::InFlightDiagnostic::report(v54);
    }

    if (v62 != 1)
    {
      return 0;
    }

    if (v61 != &v62)
    {
      free(v61);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v60;
      v17 = __p;
      if (v60 != __p)
      {
        do
        {
          v16 = sub_100052FFC(v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v60 = v15;
      operator delete(v17);
    }

    v18 = v57;
    if (v57)
    {
      v19 = v58;
      v20 = v57;
      if (v58 != v57)
      {
        do
        {
          v21 = *--v19;
          *v19 = 0;
          if (v21)
          {
            operator delete[]();
          }
        }

        while (v19 != v18);
        v20 = v57;
      }

      v58 = v18;
      operator delete(v20);
    }

    v22 = v55;
    if (v55 == &v56)
    {
      return 0;
    }

LABEL_62:
    free(v22);
    return 0;
  }

  v8 = *&FloatingPointValue;
  v9 = *(a1 + 1);
  *(v9 + 80) = *(v9 + 56);
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v42);
  v11 = *(a1 + 1);
  *(v11 + 56) = v42;
  *(v11 + 72) = v43;
  if (!F64Type)
  {
    v12 = *(a1 + 1);
    if (*(v12 + 56) == 15)
    {
      *(v12 + 80) = *(v12 + 56);
      *(v12 + 96) = *(v12 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v42);
      v13 = *(a1 + 1);
      *(v13 + 56) = v42;
      *(v13 + 72) = v43;
      result = mlir::detail::Parser::parseType(a1);
      F64Type = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      F64Type = mlir::Builder::getF64Type(a1, v10);
    }
  }

  v23 = *F64Type;
  {
    v24 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (!v26)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v41 = v23;
    sub_100278F40();
    v24 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v25 = *(v41 + 8);
    v26 = *(v41 + 16);
    if (!v26)
    {
      goto LABEL_39;
    }
  }

  v27 = v25;
  v28 = v26;
  do
  {
    v29 = v28 >> 1;
    v30 = &v27[2 * (v28 >> 1)];
    v32 = *v30;
    v31 = v30 + 2;
    v28 += ~(v28 >> 1);
    if (v32 < v24)
    {
      v27 = v31;
    }

    else
    {
      v28 = v29;
    }
  }

  while (v28);
  if (v27 == &v25[2 * v26] || *v27 != v24 || !v27[1])
  {
LABEL_39:
    *&v42 = "floating point value not valid for specified type";
    v44 = 259;
    mlir::detail::Parser::emitError(a1, &v42, v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v53 != 1)
    {
      return 0;
    }

    if (v52 != &v53)
    {
      free(v52);
    }

    v33 = v50;
    if (v50)
    {
      v34 = v51;
      v35 = v50;
      if (v51 != v50)
      {
        do
        {
          v34 = sub_100052FFC(v34 - 1);
        }

        while (v34 != v33);
        v35 = v50;
      }

      v51 = v33;
      operator delete(v35);
    }

    v36 = v48;
    if (v48)
    {
      v37 = v49;
      v38 = v48;
      if (v49 != v48)
      {
        do
        {
          v39 = *--v37;
          *v37 = 0;
          if (v39)
          {
            operator delete[]();
          }
        }

        while (v37 != v36);
        v38 = v48;
      }

      v49 = v36;
      operator delete(v38);
    }

    v22 = v46;
    if (v46 == &v47)
    {
      return 0;
    }

    goto LABEL_62;
  }

  v40 = v8;
  if (a3)
  {
    v40 = -v8;
  }

  return mlir::FloatAttr::get(F64Type, v40);
}

void *mlir::detail::Parser::parseDecOrHexAttr(uint64_t a1, void *a2, int a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v48 = *(v6 + 56);
  v7 = *(v6 + 72);
  v49 = v7;
  IntegerType = a2;
  v8 = *(&v48 + 1);
  Loc = mlir::Token::getLoc(&v48);
  v10 = *(a1 + 8);
  *(v10 + 96) = *(v10 + 72);
  *(v10 + 80) = *(v10 + 56);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v69);
  v11 = *(a1 + 8);
  *(v11 + 56) = v69;
  *(v11 + 72) = v70;
  if (!v4)
  {
    v15 = *(a1 + 8);
    if (*(v15 + 56) != 15)
    {
      IntegerType = mlir::Builder::getIntegerType(a1, 64);
      v45 = sub_10005D310(IntegerType);
      v46 = v19;
      if (v45)
      {
        goto LABEL_3;
      }

LABEL_13:
      v20 = IntegerType;
      v21 = *(*IntegerType + 136);
      if (v21 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v21 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        *&v69 = "integer literal not valid for specified type";
        v72 = 259;
        mlir::detail::Parser::emitError(a1, Loc, &v69, v73);
        if (v73[0])
        {
          mlir::InFlightDiagnostic::report(v73);
        }

        if (v81 != 1)
        {
          return 0;
        }

        if (v80 != &v81)
        {
          free(v80);
        }

        v30 = v78;
        if (v78)
        {
          v31 = v79;
          v32 = v78;
          if (v79 != v78)
          {
            do
            {
              v31 = sub_100052FFC(v31 - 1);
            }

            while (v31 != v30);
            v32 = v78;
          }

          v79 = v30;
          operator delete(v32);
        }

        v33 = v76;
        if (v76)
        {
          v34 = v77;
          v35 = v76;
          if (v77 != v76)
          {
            do
            {
              v36 = *--v34;
              *v34 = 0;
              if (v36)
              {
                operator delete[]();
              }
            }

            while (v34 != v33);
            v35 = v76;
          }

          v77 = v33;
          operator delete(v35);
        }

        v44 = v74;
        if (v74 == &v75)
        {
          return 0;
        }

        goto LABEL_75;
      }

      if (a3)
      {
        if (mlir::Type::isUnsignedInteger(&IntegerType))
        {
          *&v69 = "negative integer literal not valid for unsigned integer type";
          v72 = 259;
          mlir::detail::Parser::emitError(a1, Loc, &v69, v60);
          if (v60[0])
          {
            mlir::InFlightDiagnostic::report(v60);
          }

          if (v68 != 1)
          {
            return 0;
          }

          if (v67 != &v68)
          {
            free(v67);
          }

          v23 = __p;
          if (__p)
          {
            v24 = v66;
            v25 = __p;
            if (v66 != __p)
            {
              do
              {
                v24 = sub_100052FFC(v24 - 1);
              }

              while (v24 != v23);
              v25 = __p;
            }

            v66 = v23;
            operator delete(v25);
          }

          v26 = v63;
          if (v63)
          {
            v27 = v64;
            v28 = v63;
            if (v64 != v63)
            {
              do
              {
                v29 = *--v27;
                *v27 = 0;
                if (v29)
                {
                  operator delete[]();
                }
              }

              while (v27 != v26);
              v28 = v63;
            }

            v64 = v26;
            operator delete(v28);
          }

          v44 = v61;
          if (v61 == &v62)
          {
            return 0;
          }

LABEL_75:
          free(v44);
          return 0;
        }

        v20 = IntegerType;
      }

      sub_10005A9E8(&v45, v20, a3, v8, v7);
      if (v47)
      {
        result = mlir::Builder::getIntegerAttr(a1, IntegerType, &v45);
      }

      else
      {
        *&v69 = "integer constant out of range for attribute";
        v72 = 259;
        mlir::detail::Parser::emitError(a1, Loc, &v69, v51);
        if (v51[0])
        {
          mlir::InFlightDiagnostic::report(v51);
        }

        if (v59 == 1)
        {
          if (v58 != &v59)
          {
            free(v58);
          }

          v37 = v56;
          if (v56)
          {
            v38 = v57;
            v39 = v56;
            if (v57 != v56)
            {
              do
              {
                v38 = sub_100052FFC(v38 - 1);
              }

              while (v38 != v37);
              v39 = v56;
            }

            v57 = v37;
            operator delete(v39);
          }

          v40 = v54;
          if (v54)
          {
            v41 = v55;
            v42 = v54;
            if (v55 != v54)
            {
              do
              {
                v43 = *--v41;
                *v41 = 0;
                if (v43)
                {
                  operator delete[]();
                }
              }

              while (v41 != v40);
              v42 = v54;
            }

            v55 = v40;
            operator delete(v42);
          }

          if (v52 != &v53)
          {
            free(v52);
          }
        }

        result = 0;
      }

      if (v47 == 1 && v46 >= 0x41 && v45)
      {
        operator delete[]();
      }

      return result;
    }

    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v69);
    v16 = *(a1 + 8);
    *(v16 + 56) = v69;
    *(v16 + 72) = v70;
    result = mlir::detail::Parser::parseType(a1);
    v4 = result;
    IntegerType = result;
    if (!result)
    {
      return result;
    }
  }

  v45 = sub_10005D310(v4);
  v46 = v12;
  if (!v45)
  {
    goto LABEL_13;
  }

LABEL_3:
  LOBYTE(v69) = 0;
  v71 = 0;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v45);
  if (mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, &v69, &v48, a3, FloatSemantics))
  {
    result = mlir::FloatAttr::get(v45, &v69);
    if (v71 != 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v71 != 1)
    {
      return result;
    }
  }

  v17 = result;
  v18 = v69;
  if (llvm::APFloatBase::PPCDoubleDouble(result) == v18)
  {
    sub_100029F40(&v69);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v69);
  }

  return v17;
}

uint64_t sub_100059A74(uint64_t a1)
{
  if (*a1)
  {
    mlir::InFlightDiagnostic::report(a1);
  }

  if (*(a1 + 200) == 1)
  {
    sub_100052F18((a1 + 8));
  }

  return a1;
}

mlir::detail::Parser *mlir::detail::Parser::parseSparseElementsAttr(mlir::detail::Parser *a1, uint64_t *a2)
{
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
  v6 = *(a1 + 1);
  *(v6 + 56) = v62;
  *(v6 + 72) = v63;
  *&v62 = "Expected '<' after 'sparse'";
  v64[4] = 259;
  if ((mlir::detail::Parser::parseToken(a1, 23, &v62) & 1) == 0)
  {
    return 0;
  }

  IntegerType = mlir::Builder::getIntegerType(a1, 64);
  v8 = *(a1 + 1);
  v9 = (v8 + 56);
  if (*(v8 + 56) == 19)
  {
    *(v8 + 80) = *v9;
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v62);
    v10 = *(a1 + 1);
    *(v10 + 56) = v62;
    *(v10 + 72) = v63;
    result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
    v52 = result;
    v53 = v12;
    if (result)
    {
      *&v62 = 0;
      mlir::ShapedType::getShape(&v52);
      *(&v62 + 1) = v13;
      *&v49 = mlir::RankedTensorType::get(&v62, 2, IntegerType, 0);
      v14 = sub_10005CD80(&v49);
      v16 = v15;
      *&v49 = 0;
      ElementType = mlir::ShapedType::getElementType(&v52);
      *&v62 = mlir::RankedTensorType::get(&v49, 1, ElementType, 0);
      v18 = sub_10005CD80(&v62);
      v20 = v19;
      v21 = mlir::DenseElementsAttr::get(v14, v16, 0, 0);
      v22 = mlir::DenseElementsAttr::get(v18, v20, 0, 0);
      *&v49 = Loc;
      *&v62 = a1;
      *(&v62 + 1) = &v49;
      return mlir::SparseElementsAttr::getChecked(sub_100060520, &v62, v52, v53, v21, v22);
    }

    return result;
  }

  v23 = mlir::Token::getLoc(v9);
  *&v62 = a1;
  *(&v62 + 1) = v64;
  v63 = 0x400000000;
  v69 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v68 = 0;
  if (*(*(a1 + 1) + 56) == 22)
  {
    if ((sub_10005D56C(&v62, &v62 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((sub_10005D6DC(&v62) & 1) == 0)
  {
    goto LABEL_14;
  }

  v52 = "expected ','";
  v55[4] = 259;
  if (mlir::detail::Parser::parseToken(a1, 16, &v52))
  {
    v24 = mlir::Token::getLoc((*(a1 + 1) + 56));
    v52 = a1;
    v53 = v55;
    v54 = 0x400000000;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    LOBYTE(v59) = 0;
    v25 = *(a1 + 1);
    v26 = (v25 + 56);
    v27 = *(v25 + 56);
    if (v27 == 22)
    {
      if ((sub_10005D56C(&v52, &v53) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v27 == 11)
    {
      v28 = *v26;
      v60 = *(v25 + 72);
      v59 = v28;
      v61 = 1;
      *(v25 + 80) = *v26;
      *(v25 + 96) = *(v25 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v49);
      v29 = *(a1 + 1);
      *(v29 + 56) = v49;
      *(v29 + 72) = v50;
    }

    else if ((sub_10005D6DC(&v52) & 1) == 0)
    {
      goto LABEL_27;
    }

    *&v49 = "expected '>'";
    v51 = 259;
    if (mlir::detail::Parser::parseToken(a1, 19, &v49))
    {
      result = mlir::detail::Parser::parseElementsLiteralType(a1, a2);
      v47 = result;
      v48 = v32;
      if (result)
      {
        if (v63)
        {
          *&v49 = mlir::RankedTensorType::get(*(&v62 + 1), v63, IntegerType, 0);
          v33 = &v49;
        }

        else
        {
          *&v49 = 1;
          mlir::ShapedType::getShape(&v47);
          *(&v49 + 1) = v37;
          v46[0] = mlir::RankedTensorType::get(&v49, 2, IntegerType, 0);
          v33 = v46;
        }

        v46[0] = sub_10005CD80(v33);
        v46[1] = v38;
        v39 = sub_10005AF9C(&v62, v23, v46[0], v38);
        v40 = mlir::ShapedType::getElementType(&v47);
        v41 = v54;
        if (v54)
        {
          v42 = v53;
        }

        else
        {
          v70 = *mlir::ShapedType::getShape(v46);
          v42 = &v70;
          v41 = 1;
        }

        *&v49 = mlir::RankedTensorType::get(v42, v41, v40, 0);
        v43 = sub_10005CD80(&v49);
        v45 = sub_10005AF9C(&v52, v24, v43, v44);
        v70 = Loc;
        *&v49 = a1;
        *(&v49 + 1) = &v70;
        result = mlir::SparseElementsAttr::getChecked(sub_100060558, &v49, v47, v48, v39, v45);
        v34 = v56;
        if (!v56)
        {
LABEL_30:
          if (v53 != v55)
          {
            v36 = result;
            free(v53);
            result = v36;
          }

          goto LABEL_15;
        }

LABEL_29:
        v57 = v34;
        v35 = result;
        operator delete(v34);
        result = v35;
        goto LABEL_30;
      }

LABEL_28:
      v34 = v56;
      if (!v56)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_27:
    result = 0;
    goto LABEL_28;
  }

LABEL_14:
  result = 0;
LABEL_15:
  if (__p)
  {
    v66 = __p;
    v30 = result;
    operator delete(__p);
    result = v30;
  }

  if (*(&v62 + 1) != v64)
  {
    v31 = result;
    free(*(&v62 + 1));
    return v31;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseStridedLayoutAttr(mlir::detail::Parser *this)
{
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v29 = this;
  p_Loc = &Loc;
  v2 = *(this + 1);
  *(v2 + 96) = *(v2 + 72);
  *(v2 + 80) = *(v2 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v32);
  v3 = *(this + 1);
  *(v3 + 56) = v32;
  *(v3 + 72) = v33[0];
  *&v32 = "expected '<' after 'strided'";
  v34 = 259;
  if ((mlir::detail::Parser::parseToken(this, 23, &v32) & 1) == 0)
  {
    return 0;
  }

  *&v26 = "expected '['";
  v28 = 259;
  if ((mlir::detail::Parser::parseToken(this, 22, &v26) & 1) == 0)
  {
    return 0;
  }

  *&v32 = v33;
  *(&v32 + 1) = 0x600000000;
  if (*(*(this + 1) + 56) != 29)
  {
    v11 = sub_10005CE7C(this);
    if ((v12 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
      v13 = DWORD2(v32);
      if (DWORD2(v32) >= HIDWORD(v32))
      {
        v17 = v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v33, DWORD2(v32) + 1, 8);
        v11 = v17;
        v13 = DWORD2(v32);
      }

      *(v32 + 8 * v13) = v11;
      ++DWORD2(v32);
      v14 = *(this + 1);
      if (*(v14 + 56) != 16)
      {
        break;
      }

      *(v14 + 80) = *(v14 + 56);
      *(v14 + 96) = *(v14 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v15 = *(this + 1);
      *(v15 + 56) = v26;
      *(v15 + 72) = v27;
      v11 = sub_10005CE7C(this);
      if ((v16 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  *&v26 = "expected ']'";
  v28 = 259;
  if (mlir::detail::Parser::parseToken(this, 29, &v26))
  {
    v4 = *(this + 1);
    if (*(v4 + 56) == 19)
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
      v5 = *(this + 1);
      *(v5 + 56) = v26;
      *(v5 + 72) = v27;
      if (mlir::StridedLayoutAttr::verify())
      {
        v6 = ***(this + 1);
        v7 = v32;
        v8 = DWORD2(v32);
        v9 = 0;
LABEL_8:
        result = mlir::StridedLayoutAttr::get(v6, v9, v7, v8);
        goto LABEL_25;
      }
    }

    else
    {
      *&v26 = "expected ','";
      v28 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v26))
      {
        v24 = "expected 'offset' after comma";
        v25 = 259;
        if (mlir::detail::Parser::parseToken(this, 71, &v24))
        {
          v22 = "expected ':' after 'offset'";
          v23 = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v22))
          {
            v18 = sub_10005CE7C(this);
            if (v19)
            {
              v20 = v18;
              *&v26 = "expected '>'";
              v28 = 259;
              if (mlir::detail::Parser::parseToken(this, 19, &v26) & 1) != 0 && (mlir::StridedLayoutAttr::verify())
              {
                v6 = ***(this + 1);
                v7 = v32;
                v8 = DWORD2(v32);
                v9 = v20;
                goto LABEL_8;
              }
            }
          }
        }
      }
    }
  }

LABEL_24:
  result = 0;
LABEL_25:
  if (v32 != v33)
  {
    v21 = result;
    free(v32);
    return v21;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseDistinctAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v5 = *(a1 + 1);
  *(v5 + 96) = *(v5 + 72);
  *(v5 + 80) = *(v5 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v32);
  v6 = *(a1 + 1);
  *(v6 + 56) = v32;
  *(v6 + 72) = v33;
  *&v32 = "expected '[' after 'distinct'";
  v34 = 259;
  if (mlir::detail::Parser::parseToken(a1, 22, &v32))
  {
    v7 = *(a1 + 1);
    v8 = *(v7 + 64);
    v9 = *(v7 + 72);
    *&v32 = "expected distinct ID";
    v34 = 259;
    if (mlir::detail::Parser::parseToken(a1, 10, &v32))
    {
      UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v8, v9);
      v31 = v10;
      if ((v10 & 1) == 0)
      {
        *&v32 = "expected an unsigned 64-bit integer";
        v34 = 259;
        mlir::detail::Parser::emitError(a1, &v32, v36);
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

          v15 = __p;
          if (__p)
          {
            v16 = v42;
            v17 = __p;
            if (v42 != __p)
            {
              do
              {
                v16 = sub_100052FFC(v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v42 = v15;
            operator delete(v17);
          }

          v18 = v39;
          if (v39)
          {
            v19 = v40;
            v20 = v39;
            if (v40 != v39)
            {
              do
              {
                v21 = *--v19;
                *v19 = 0;
                if (v21)
                {
                  operator delete[]();
                }
              }

              while (v19 != v18);
              v20 = v39;
            }

            v40 = v18;
            operator delete(v20);
          }

          if (v37 != &v38)
          {
            free(v37);
          }
        }

        return 0;
      }

      *&v32 = "expected ']' to close distinct ID";
      v34 = 259;
      if (mlir::detail::Parser::parseToken(a1, 29, &v32))
      {
        v28[0] = "expected '<' after distinct ID";
        v29 = 259;
        if (mlir::detail::Parser::parseToken(a1, 23, v28))
        {
          v11 = *(a1 + 1);
          if (*(v11 + 56) == 19)
          {
            *(v11 + 80) = *(v11 + 56);
            *(v11 + 96) = *(v11 + 72);
            mlir::Lexer::lexToken((*(a1 + 1) + 8), &v32);
            v12 = *(a1 + 1);
            *(v12 + 56) = v32;
            *(v12 + 72) = v33;
            UnitAttr = mlir::Builder::getUnitAttr(a1, v13);
            goto LABEL_32;
          }

          v23 = mlir::detail::Parser::parseAttribute(a1, a2);
          if (!v23)
          {
            *&v32 = "expected attribute";
            v34 = 259;
            mlir::detail::Parser::emitError(a1, &v32, v35);
            sub_100059A74(v35);
            return 0;
          }

          UnitAttr = v23;
          *&v32 = "expected '>' to close distinct attribute";
          v34 = 259;
          if (mlir::detail::Parser::parseToken(a1, 19, &v32))
          {
LABEL_32:
            v24 = *(*(a1 + 1) + 104);
            v25 = sub_10005D004((v24 + 72), &UInt64IntegerValue);
            if (*(v24 + 72) + 16 * *(v24 + 88) == v25)
            {
              v28[0] = mlir::DistinctAttr::create(UnitAttr);
              sub_10005D08C(v24 + 72, &UInt64IntegerValue, v28, &v32);
              v26 = v32;
            }

            else
            {
              v26 = v25;
              if (mlir::DistinctAttr::getReferencedAttr((v25 + 8)) != UnitAttr)
              {
                v28[0] = "referenced attribute does not match previous definition: ";
                v29 = 259;
                mlir::detail::Parser::emitError(a1, Loc, v28, &v32);
                ReferencedAttr = mlir::DistinctAttr::getReferencedAttr((v26 + 8));
                sub_10005D220(&v32, &ReferencedAttr);
                sub_100059A74(&v32);
                return 0;
              }
            }

            return *(v26 + 8);
          }
        }
      }
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a1 + 1) + 56);
  v5 = (v4 - 4) > 0x3D || ((1 << (v4 - 4)) & 0x21000060C01500E3) == 0;
  if (v5 && ((v8 = v4 - 73, v9 = v8 > 0xA, v10 = (1 << v8) & 0x481, !v9) ? (v11 = v10 == 0) : (v11 = 1), v11))
  {
    v15 = 0;
    v12 = mlir::detail::Parser::parseOptionalType(a1, &v15);
    if (v12 & 0x100) != 0 && (v12)
    {
      v13 = v12;
      v14 = mlir::TypeAttr::get(v15);
      v12 = v13;
      *a2 = v14;
    }

    return v12 | (HIBYTE(v12) << 8);
  }

  else
  {
    v6 = mlir::detail::Parser::parseAttribute(a1, a3);
    *a2 = v6;
    return (v6 != 0) | 0x100u;
  }
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  if (*(*(a1 + 8) + 56) != 22)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 11)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

{
  if (*(*(a1 + 8) + 56) != 4)
  {
    return 0;
  }

  v4 = mlir::detail::Parser::parseAttribute(a1, a3);
  if (!v4)
  {
    return 256;
  }

  *a2 = v4;
  return 257;
}

uint64_t sub_10005A9E8(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, unint64_t a5)
{
  v20[1] = a5;
  v21 = a2;
  v20[0] = a4;
  v19 = 1;
  v7 = 10;
  v18 = 0;
  if (a5 >= 2)
  {
    if (*(a4 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  result = llvm::StringRef::getAsInteger(v20, v7, &v18);
  if (!result)
  {
    result = mlir::Type::isIndex(&v21);
    if (result)
    {
      v9 = 64;
      v10 = v19;
      v12 = v19 - 64;
      v11 = v19 > 0x40;
      if (v19 >= 0x40)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = mlir::Type::getIntOrFloatBitWidth(&v21);
      v9 = result;
      v10 = v19;
      v12 = v19 - result;
      v11 = v19 > result;
      if (v19 >= result)
      {
LABEL_10:
        if (v11)
        {
          if (v10 > 0x40)
          {
            result = llvm::APInt::countLeadingZerosSlowCase(&v18);
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          else
          {
            result = v10 + __clz(v18) - 64;
            if (result < v12)
            {
              goto LABEL_43;
            }
          }

          result = llvm::APInt::trunc(&v18, v9, &v16);
          if (v19 >= 0x41)
          {
            result = v18;
            if (v18)
            {
              operator delete[]();
            }
          }

          v18 = v16;
          v10 = v17;
          v19 = v17;
        }

        if (!v9)
        {
          if (a3)
          {
            goto LABEL_43;
          }

          goto LABEL_47;
        }

LABEL_26:
        if (a3)
        {
          if (v10 > 0x40)
          {
            llvm::APInt::flipAllBitsSlowCase(&v18);
          }

          else
          {
            v13 = 0xFFFFFFFFFFFFFFFFLL >> -v10;
            if (!v10)
            {
              v13 = 0;
            }

            v18 = v13 & ~v18;
          }

          result = llvm::APInt::operator++(&v18);
          v10 = v19;
          v15 = (v18 + 8 * ((v19 - 1) >> 6));
          if (v19 < 0x41)
          {
            v15 = &v18;
          }

          if (((*v15 >> (v19 - 1)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          result = mlir::Type::isSignedInteger(&v21);
          if (result & 1) != 0 || (result = mlir::Type::isIndex(&v21), (result))
          {
            v10 = v19;
            v14 = (v18 + 8 * ((v19 - 1) >> 6));
            if (v19 < 0x41)
            {
              v14 = &v18;
            }

            if ((*v14 >> (v19 - 1)))
            {
LABEL_43:
              *a1 = 0;
              *(a1 + 16) = 0;
              if (v10 < 0x41)
              {
                return result;
              }

              goto LABEL_44;
            }
          }

          else
          {
            v10 = v19;
          }
        }

LABEL_47:
        *(a1 + 8) = v10;
        *a1 = v18;
        *(a1 + 16) = 1;
        return result;
      }
    }

    llvm::APInt::zext(&v18, v9, &v16);
    if (v19 >= 0x41 && v18)
    {
      operator delete[]();
    }

    v18 = v16;
    v10 = v17;
    v19 = v17;
    goto LABEL_26;
  }

  *a1 = 0;
  *(a1 + 16) = 0;
  if (v19 < 0x41)
  {
    return result;
  }

LABEL_44:
  result = v18;
  if (v18)
  {
    operator delete[]();
  }

  return result;
}

uint64_t *mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, uint64_t *a2)
{
  if (a2)
  {
    goto LABEL_2;
  }

  v24[0] = "expected ':'";
  v25 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, v24) & 1) == 0)
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(a1);
  a2 = result;
  if (result)
  {
LABEL_2:
    v23[0] = sub_10005E890(a2);
    v23[1] = v3;
    if (v23[0])
    {
      if (mlir::ShapedType::hasRank(v23))
      {
        Shape = mlir::ShapedType::getShape(v23);
        if (!v5)
        {
          return v23[0];
        }

        v6 = 8 * v5;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v6 -= 8;
          if (!v6)
          {
            return v23[0];
          }
        }
      }

      v24[0] = "elements literal type must have static shape";
      v25 = 259;
      mlir::detail::Parser::emitError(a1, v24, v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 != 1)
      {
        return 0;
      }

      if (v33 != &v34)
      {
        free(v33);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v32;
        v10 = __p;
        if (v32 != __p)
        {
          do
          {
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v32 = v8;
        operator delete(v10);
      }

      v11 = v29;
      if (v29)
      {
        v12 = v30;
        v13 = v29;
        if (v30 != v29)
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
          v13 = v29;
        }

        v30 = v11;
        operator delete(v13);
      }

      v22 = v27;
      if (v27 == &v28)
      {
        return 0;
      }
    }

    else
    {
      v24[0] = "elements literal must be a shaped type";
      v25 = 259;
      mlir::detail::Parser::emitError(a1, v24, v35);
      if (v35[0])
      {
        mlir::InFlightDiagnostic::report(v35);
      }

      if (v43 != 1)
      {
        return 0;
      }

      if (v42 != &v43)
      {
        free(v42);
      }

      v15 = v40;
      if (v40)
      {
        v16 = v41;
        v17 = v40;
        if (v41 != v40)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = v40;
        }

        v41 = v15;
        operator delete(v17);
      }

      v18 = v38;
      if (v38)
      {
        v19 = v39;
        v20 = v38;
        if (v39 != v38)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v38;
        }

        v39 = v18;
        operator delete(v20);
      }

      v22 = v36;
      if (v36 == &v37)
      {
        return 0;
      }
    }

    free(v22);
    return 0;
  }

  return result;
}

uint64_t sub_10005AF9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *&v203 = a3;
  *(&v203 + 1) = a4;
  ElementType = mlir::ShapedType::getElementType(&v203);
  if (*(a1 + 104) == 1 && (mlir::Type::isIntOrIndexOrFloat(&ElementType) || *(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id))
  {
    v207 = v203;
    v206 = mlir::ShapedType::getElementType(&v207);
    if (!mlir::Type::isIntOrIndexOrFloat(&v206) && *(*v206 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v34 = *a1;
      v212 = 257;
      mlir::detail::Parser::emitError(v34, a2, v210, &v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        LODWORD(v208) = 3;
        *(&v208 + 1) = "expected floating-point, integer, or complex element type, got ";
        v209 = 63;
        v35 = &v208;
        v36 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v191 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v36 = v214;
            v35 = v214 + v191;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v35 = &v208;
            v36 = v214;
          }
        }

        v37 = &v36[24 * v215];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v215;
        if (v213.__r_.__value_.__r.__words[0])
        {
          v39 = &v208;
          mlir::DiagnosticArgument::DiagnosticArgument(&v208, v206);
          v40 = v214;
          if (v215 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v215 > &v208)
            {
              v193 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v40 = v214;
              v39 = v214 + v193;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v39 = &v208;
              v40 = v214;
            }
          }

          v41 = &v40[24 * v215];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v215;
          if (v213.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v213);
          }
        }
      }

      if (v223[0] != 1)
      {
        return 0;
      }

      if (v222 != v223)
      {
        free(v222);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v221;
        v45 = __p;
        if (v221 != __p)
        {
          do
          {
            v44 = sub_100052FFC(v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v221 = v43;
        operator delete(v45);
      }

      v30 = v218;
      if (!v218)
      {
        goto LABEL_174;
      }

      v46 = v219;
      v32 = v218;
      if (v219 == v218)
      {
        goto LABEL_173;
      }

      do
      {
        v47 = *--v46;
        *v46 = 0;
        if (v47)
        {
          operator delete[]();
        }
      }

      while (v46 != v30);
      goto LABEL_172;
    }

    memset(&v205, 0, sizeof(v205));
    v72 = *a1;
    v208 = *(a1 + 80);
    v209 = *(a1 + 96);
    mlir::Token::getHexStringValue(&v208, &v213);
    if (v214 == 1)
    {
      if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v205.__r_.__value_.__l.__data_);
      }

      v205 = v213;
    }

    else
    {
      Loc = mlir::Token::getLoc(&v208);
      v212 = 259;
      mlir::detail::Parser::emitError(v72, Loc, v210, &v213);
      v74 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v213);
      }

      if (v223[0] == 1)
      {
        if (v222 != v223)
        {
          free(v222);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v221;
          v77 = __p;
          if (v221 != __p)
          {
            do
            {
              v76 = sub_100052FFC(v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v221 = v75;
          operator delete(v77);
        }

        v78 = v218;
        if (v218)
        {
          v79 = v219;
          v80 = v218;
          if (v219 != v218)
          {
            do
            {
              v81 = *--v79;
              *v79 = 0;
              if (v81)
              {
                operator delete[]();
              }
            }

            while (v79 != v78);
            v80 = v218;
          }

          v219 = v78;
          operator delete(v80);
        }

        if (v214 != v217)
        {
          free(v214);
        }
      }

      if (!v74)
      {
        goto LABEL_274;
      }
    }

    if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = &v205;
    }

    else
    {
      v136 = v205.__r_.__value_.__r.__words[0];
    }

    if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v205.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v205.__r_.__value_.__l.__size_;
    }

    v204 = 0;
    if (mlir::DenseElementsAttr::isValidRawBuffer(v207, *(&v207 + 1), v136, size, &v204))
    {
      result = mlir::DenseElementsAttr::getFromRawBuffer(v207, *(&v207 + 1), v136, size);
      if ((SHIBYTE(v205.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_275:
      v120 = v205.__r_.__value_.__r.__words[0];
      goto LABEL_276;
    }

    v138 = *a1;
    v212 = 257;
    mlir::detail::Parser::emitError(v138, a2, v210, &v213);
    if (v213.__r_.__value_.__r.__words[0])
    {
      LODWORD(v208) = 3;
      *(&v208 + 1) = "elements hex data size is invalid for provided type: ";
      v209 = 53;
      v139 = &v208;
      v140 = v214;
      if (v215 >= v216)
      {
        if (v214 <= &v208 && v214 + 24 * v215 > &v208)
        {
          v192 = &v208 - v214;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v140 = v214;
          v139 = v214 + v192;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v139 = &v208;
          v140 = v214;
        }
      }

      v141 = &v140[24 * v215];
      v142 = *v139;
      *(v141 + 2) = *(v139 + 2);
      *v141 = v142;
      ++v215;
      if (v213.__r_.__value_.__r.__words[0])
      {
        v143 = &v208;
        mlir::DiagnosticArgument::DiagnosticArgument(&v208, v207);
        v144 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v194 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v144 = v214;
            v143 = v214 + v194;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v143 = &v208;
            v144 = v214;
          }
        }

        v145 = &v144[24 * v215];
        v146 = *v143;
        *(v145 + 2) = *(v143 + 2);
        *v145 = v146;
        ++v215;
        if (v213.__r_.__value_.__r.__words[0])
        {
          mlir::InFlightDiagnostic::report(&v213);
        }
      }
    }

    if (v223[0] == 1)
    {
      if (v222 != v223)
      {
        free(v222);
      }

      v147 = __p;
      if (__p)
      {
        v148 = v221;
        v149 = __p;
        if (v221 != __p)
        {
          do
          {
            v148 = sub_100052FFC(v148 - 1);
          }

          while (v148 != v147);
          v149 = __p;
        }

        v221 = v147;
        operator delete(v149);
      }

      v150 = v218;
      if (v218)
      {
        v151 = v219;
        v152 = v218;
        if (v219 != v218)
        {
          do
          {
            v153 = *--v151;
            *v151 = 0;
            if (v153)
            {
              operator delete[]();
            }
          }

          while (v151 != v150);
          v152 = v218;
        }

        v219 = v150;
        operator delete(v152);
      }

      if (v214 != v217)
      {
        free(v214);
      }
    }

LABEL_274:
    result = 0;
    if ((SHIBYTE(v205.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_275;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 8);
    Shape = mlir::ShapedType::getShape(&v203);
    if (v9 != v6 || memcmp(v7, Shape, 8 * v6))
    {
      v10 = *a1;
      v212 = 257;
      mlir::detail::Parser::emitError(v10, a2, v210, &v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        LODWORD(v208) = 3;
        *(&v208 + 1) = "inferred shape of elements literal ([";
        v209 = 37;
        v11 = &v208;
        v12 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v188 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v12 = v214;
            v11 = v214 + v188;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v11 = &v208;
            v12 = v214;
          }
        }

        v13 = &v12[24 * v215];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v215;
        if (v213.__r_.__value_.__r.__words[0])
        {
          v15 = *(a1 + 16);
          v16 = *(a1 + 8);
          *&v208 = ", ";
          sub_10005DF34(v16, &v16[v15], &v213.__r_.__value_.__l.__size_, &v213.__r_.__value_.__l.__size_, &v208);
          if (v213.__r_.__value_.__r.__words[0])
          {
            LODWORD(v208) = 3;
            *(&v208 + 1) = "]) does not match type ([";
            v209 = 25;
            v17 = &v208;
            v18 = v214;
            if (v215 >= v216)
            {
              if (v214 <= &v208 && v214 + 24 * v215 > &v208)
              {
                v190 = &v208 - v214;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
                v18 = v214;
                v17 = v214 + v190;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
                v17 = &v208;
                v18 = v214;
              }
            }

            v19 = &v18[24 * v215];
            v20 = *v17;
            *(v19 + 2) = *(v17 + 2);
            *v19 = v20;
            ++v215;
          }
        }
      }

      v21 = mlir::ShapedType::getShape(&v203);
      if (v213.__r_.__value_.__r.__words[0])
      {
        *&v208 = ", ";
        sub_10005DF34(v21, &v21[v22], &v213.__r_.__value_.__l.__size_, &v213.__r_.__value_.__l.__size_, &v208);
        if (v213.__r_.__value_.__r.__words[0])
        {
          LODWORD(v208) = 3;
          *(&v208 + 1) = "])";
          v209 = 2;
          v23 = &v208;
          v24 = v214;
          if (v215 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v215 > &v208)
            {
              v189 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v24 = v214;
              v23 = v214 + v189;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v23 = &v208;
              v24 = v214;
            }
          }

          v25 = &v24[24 * v215];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          ++v215;
          if (v213.__r_.__value_.__r.__words[0])
          {
            mlir::InFlightDiagnostic::report(&v213);
          }
        }
      }

      if (v223[0] != 1)
      {
        return 0;
      }

      if (v222 != v223)
      {
        free(v222);
      }

      v27 = __p;
      if (__p)
      {
        v28 = v221;
        v29 = __p;
        if (v221 != __p)
        {
          do
          {
            v28 = sub_100052FFC(v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v221 = v27;
        operator delete(v29);
      }

      v30 = v218;
      if (!v218)
      {
LABEL_174:
        if (v214 != v217)
        {
          free(v214);
        }

        return 0;
      }

      v31 = v219;
      v32 = v218;
      if (v219 == v218)
      {
LABEL_173:
        v219 = v30;
        operator delete(v32);
        goto LABEL_174;
      }

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
LABEL_172:
      v32 = v218;
      goto LABEL_173;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v96 = mlir::ShapedType::getShape(&v203);
    if (mlir::ShapedType::getNumElements(v96, v97))
    {
      v98 = *a1;
      v212 = 257;
      mlir::detail::Parser::emitError(v98, a2, v210, &v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        LODWORD(v208) = 3;
        *(&v208 + 1) = "parsed zero elements, but type (";
        v209 = 32;
        v99 = &v208;
        v100 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v195 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v100 = v214;
            v99 = v214 + v195;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v99 = &v208;
            v100 = v214;
          }
        }

        v101 = &v100[24 * v215];
        v102 = *v99;
        *(v101 + 2) = *(v99 + 2);
        *v101 = v102;
        ++v215;
        if (v213.__r_.__value_.__r.__words[0])
        {
          v103 = &v208;
          mlir::DiagnosticArgument::DiagnosticArgument(&v208, v203);
          v104 = v214;
          if (v215 >= v216)
          {
            if (v214 <= &v208 && v214 + 24 * v215 > &v208)
            {
              v197 = &v208 - v214;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v104 = v214;
              v103 = v214 + v197;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
              v103 = &v208;
              v104 = v214;
            }
          }

          v105 = &v104[24 * v215];
          v106 = *v103;
          *(v105 + 2) = *(v103 + 2);
          *v105 = v106;
          v107 = ++v215;
          if (v213.__r_.__value_.__r.__words[0])
          {
            LODWORD(v208) = 3;
            *(&v208 + 1) = ") expected at least 1";
            v209 = 21;
            v108 = &v208;
            v109 = v214;
            if (v107 >= v216)
            {
              if (v214 <= &v208 && v214 + 24 * v107 > &v208)
              {
                v199 = &v208 - v214;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v107 + 1, 24);
                v109 = v214;
                v108 = v214 + v199;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v107 + 1, 24);
                v108 = &v208;
                v109 = v214;
              }
            }

            v110 = &v109[24 * v215];
            v111 = *v108;
            *(v110 + 2) = *(v108 + 2);
            *v110 = v111;
            ++v215;
            if (v213.__r_.__value_.__r.__words[0])
            {
              mlir::InFlightDiagnostic::report(&v213);
            }
          }
        }
      }

      if (v223[0] != 1)
      {
        return 0;
      }

      if (v222 != v223)
      {
        free(v222);
      }

      v112 = __p;
      if (__p)
      {
        v113 = v221;
        v114 = __p;
        if (v221 != __p)
        {
          do
          {
            v113 = sub_100052FFC(v113 - 1);
          }

          while (v113 != v112);
          v114 = __p;
        }

        v221 = v112;
        operator delete(v114);
      }

      v30 = v218;
      if (!v218)
      {
        goto LABEL_174;
      }

      v115 = v219;
      v32 = v218;
      if (v219 == v218)
      {
        goto LABEL_173;
      }

      do
      {
        v116 = *--v115;
        *v115 = 0;
        if (v116)
        {
          operator delete[]();
        }
      }

      while (v115 != v30);
      goto LABEL_172;
    }
  }

  v48 = ElementType;
  v49 = *(*ElementType + 136);
  if (v49 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v48 = 0;
  }

  v213.__r_.__value_.__r.__words[0] = v48;
  if (v49 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    ElementType = mlir::ComplexType::getElementType(&v213);
    if (mlir::Type::isIntOrIndex(&ElementType))
    {
      goto LABEL_60;
    }

    goto LABEL_127;
  }

  if (!mlir::Type::isIntOrIndex(&ElementType))
  {
LABEL_127:
    v82 = sub_10005D310(ElementType);
    if (v82)
    {
      v210[0] = 0;
      v210[1] = 0;
      v211 = 0;
      *&v208 = v82;
      *(&v208 + 1) = v83;
      sub_10005E430(v210, (*(a1 + 64) - *(a1 + 56)) >> 5);
      v84 = *(a1 + 56);
      v85 = *(a1 + 64);
      if (v84 == v85)
      {
LABEL_147:
        if (v49 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          result = mlir::DenseElementsAttr::get(v203, *(&v203 + 1), v210[0], (0xAAAAAAAAAAAAAAABLL * ((v210[1] - v210[0]) >> 3)) >> 1);
        }

        else
        {
          result = mlir::DenseElementsAttr::get(v203, *(&v203 + 1), v210[0], 0xAAAAAAAAAAAAAAABLL * ((v210[1] - v210[0]) >> 3));
        }

LABEL_242:
        v154 = v210[0];
        if (!v210[0])
        {
          return result;
        }

        v155 = result;
        v156 = v210[1];
        v157 = v210[0];
        if (v210[1] != v210[0])
        {
          v158 = llvm::APFloatBase::PPCDoubleDouble(v210[0]);
          v159 = (v156 - 24);
          do
          {
            while (v158 == *v159)
            {
              v160 = sub_100029F40(v159);
              v161 = v160 == v154;
              v159 = (v160 - 24);
              if (v161)
              {
                goto LABEL_249;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v159);
            v161 = v162 == v154;
            v159 = (v162 - 24);
          }

          while (!v161);
LABEL_249:
          v157 = v210[0];
        }

        v210[1] = v154;
        operator delete(v157);
        return v155;
      }

      while (1)
      {
        v87 = *v84;
        v86 = (v84 + 8);
        v213.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v214) = 0;
        v88 = *a1;
        FloatSemantics = mlir::FloatType::getFloatSemantics(&v208);
        v90 = mlir::detail::Parser::parseFloatFromLiteral(v88, &v213, v86, v87, FloatSemantics);
        v91 = v90;
        if (v90)
        {
          v92 = v210[1];
          if (v210[1] >= v211)
          {
            v90 = sub_10005E648(v210, &v213);
            v210[1] = v90;
            if (v214 != 1)
            {
              goto LABEL_139;
            }
          }

          else
          {
            v93 = v213.__r_.__value_.__r.__words[0];
            if (llvm::APFloatBase::PPCDoubleDouble(v90) == v93)
            {
              llvm::detail::DoubleAPFloat::DoubleAPFloat(v92, &v213);
              v90 = v92 + 24;
              v210[1] = (v92 + 24);
              if (v214 != 1)
              {
LABEL_139:
                if ((v91 & 1) == 0)
                {
                  goto LABEL_184;
                }

                goto LABEL_140;
              }
            }

            else
            {
              llvm::detail::IEEEFloat::IEEEFloat(v92, &v213);
              v90 = v92 + 24;
              v210[1] = (v92 + 24);
              if (v214 != 1)
              {
                goto LABEL_139;
              }
            }
          }
        }

        else if (v214 != 1)
        {
          goto LABEL_139;
        }

        v94 = v213.__r_.__value_.__r.__words[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v90) == v94)
        {
          sub_100029F40(&v213);
          if ((v91 & 1) == 0)
          {
LABEL_184:
            result = 0;
            goto LABEL_242;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v213);
          if ((v91 & 1) == 0)
          {
            goto LABEL_184;
          }
        }

LABEL_140:
        v84 = v86 + 24;
        if (v84 == v85)
        {
          goto LABEL_147;
        }
      }
    }

    v117 = v203;
    mlir::ShapedType::getElementType(&v203);
    if (*(a1 + 104) != 1)
    {
      v135 = *(a1 + 56);
      v134 = *(a1 + 64);
      if (v134 != v135)
      {
        if (((v134 - v135) >> 5) <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_10002BC08();
      }

      return mlir::DenseStringElementsAttr::get(v117, *(&v117 + 1), 0, 0);
    }

    mlir::Token::getStringValue((a1 + 80), &v213);
    v118 = SHIBYTE(v213.__r_.__value_.__r.__words[2]);
    v119 = v213.__r_.__value_.__r.__words[0];
    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v119 = &v213;
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v118 = v213.__r_.__value_.__l.__size_;
    }

    v210[0] = v119;
    v210[1] = v118;
    result = mlir::DenseStringElementsAttr::get(v117, *(&v117 + 1), v210, 1);
    if ((SHIBYTE(v213.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    v120 = v213.__r_.__value_.__r.__words[0];
LABEL_276:
    v173 = result;
    v174 = v120;
    goto LABEL_317;
  }

LABEL_60:
  memset(&v205, 0, sizeof(v205));
  *&v207 = ElementType;
  sub_10005E140(&v205, (*(a1 + 64) - *(a1 + 56)) >> 5);
  isUnsignedInteger = mlir::Type::isUnsignedInteger(&v207);
  v52 = *(a1 + 56);
  v51 = *(a1 + 64);
  if (v52 == v51)
  {
LABEL_302:
    if (v49 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      result = mlir::DenseElementsAttr::get(v203, *(&v203 + 1), v205.__r_.__value_.__l.__data_, ((v205.__r_.__value_.__l.__size_ - v205.__r_.__value_.__r.__words[0]) >> 4) >> 1);
      v185 = v205.__r_.__value_.__r.__words[0];
      if (v205.__r_.__value_.__r.__words[0])
      {
        goto LABEL_309;
      }
    }

    else
    {
      result = mlir::DenseElementsAttr::get(v203, *(&v203 + 1), v205.__r_.__value_.__l.__data_, (v205.__r_.__value_.__l.__size_ - v205.__r_.__value_.__r.__words[0]) >> 4);
      v185 = v205.__r_.__value_.__r.__words[0];
      if (v205.__r_.__value_.__r.__words[0])
      {
        goto LABEL_309;
      }
    }

    return result;
  }

  v53 = isUnsignedInteger;
  while (1)
  {
    v55 = (v52 + 8);
    v54 = *v52;
    v56 = mlir::Token::getLoc((v52 + 8));
    if ((v54 & v53) == 1)
    {
      v121 = *a1;
      v212 = 257;
      mlir::detail::Parser::emitError(v121, v56, v210, &v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        LODWORD(v208) = 3;
        *(&v208 + 1) = "expected unsigned integer elements, but parsed negative value";
        v209 = 61;
        v122 = &v208;
        v123 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v196 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v123 = v214;
            v122 = v214 + v196;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v122 = &v208;
            v123 = v214;
          }
        }

        v124 = &v123[24 * v215];
        v125 = *v122;
        *(v124 + 2) = *(v122 + 2);
        *v124 = v125;
        ++v215;
      }

      v126 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v213);
      }

      if (v223[0] == 1)
      {
        if (v222 != v223)
        {
          free(v222);
        }

        v127 = __p;
        if (__p)
        {
          v128 = v221;
          v129 = __p;
          if (v221 != __p)
          {
            do
            {
              v128 = sub_100052FFC(v128 - 1);
            }

            while (v128 != v127);
            v129 = __p;
          }

          v221 = v127;
          operator delete(v129);
        }

        v130 = v218;
        if (!v218)
        {
          goto LABEL_299;
        }

        v131 = v219;
        v132 = v218;
        if (v219 == v218)
        {
          goto LABEL_298;
        }

        do
        {
          v133 = *--v131;
          *v131 = 0;
          if (v133)
          {
            operator delete[]();
          }
        }

        while (v131 != v130);
        goto LABEL_297;
      }

      goto LABEL_301;
    }

    v57 = *v55;
    if (*v55 != 60 && v57 != 80)
    {
      break;
    }

    if (!mlir::Type::isInteger(&v207, 1))
    {
      v163 = *a1;
      v212 = 257;
      mlir::detail::Parser::emitError(v163, v56, v210, &v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        LODWORD(v208) = 3;
        *(&v208 + 1) = "expected i1 type for 'true' or 'false' values";
        v209 = 45;
        v164 = &v208;
        v165 = v214;
        if (v215 >= v216)
        {
          if (v214 <= &v208 && v214 + 24 * v215 > &v208)
          {
            v198 = &v208 - v214;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v165 = v214;
            v164 = v214 + v198;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
            v164 = &v208;
            v165 = v214;
          }
        }

        v166 = &v165[24 * v215];
        v167 = *v164;
        *(v166 + 2) = *(v164 + 2);
        *v166 = v167;
        ++v215;
      }

      v126 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v213);
      if (v213.__r_.__value_.__r.__words[0])
      {
        mlir::InFlightDiagnostic::report(&v213);
      }

      if (v223[0] == 1)
      {
        if (v222 != v223)
        {
          free(v222);
        }

        v168 = __p;
        if (__p)
        {
          v169 = v221;
          v170 = __p;
          if (v221 != __p)
          {
            do
            {
              v169 = sub_100052FFC(v169 - 1);
            }

            while (v169 != v168);
            v170 = __p;
          }

          v221 = v168;
          operator delete(v170);
        }

        v130 = v218;
        if (!v218)
        {
          goto LABEL_299;
        }

        v171 = v219;
        v132 = v218;
        if (v219 == v218)
        {
          goto LABEL_298;
        }

        do
        {
          v172 = *--v171;
          *v171 = 0;
          if (v172)
          {
            operator delete[]();
          }
        }

        while (v171 != v130);
        goto LABEL_297;
      }

LABEL_301:
      if (v126)
      {
        goto LABEL_302;
      }

      goto LABEL_308;
    }

    v61 = *v55 == 80;
    LODWORD(v213.__r_.__value_.__r.__words[1]) = 1;
    v213.__r_.__value_.__r.__words[0] = v61;
    v62 = v205.__r_.__value_.__l.__size_;
    if (v205.__r_.__value_.__l.__size_ >= v205.__r_.__value_.__r.__words[2])
    {
      v205.__r_.__value_.__l.__size_ = sub_10005E28C(&v205, &v213);
      if (LODWORD(v213.__r_.__value_.__r.__words[1]) >= 0x41)
      {
LABEL_77:
        if (v213.__r_.__value_.__r.__words[0])
        {
          operator delete[]();
        }
      }
    }

    else
    {
      *(v205.__r_.__value_.__l.__size_ + 8) = 1;
      *v62 = v61;
      v205.__r_.__value_.__l.__size_ = (v62 + 2);
      if (LODWORD(v213.__r_.__value_.__r.__words[1]) >= 0x41)
      {
        goto LABEL_77;
      }
    }

LABEL_63:
    v52 += 32;
    if (v52 == v51)
    {
      goto LABEL_302;
    }
  }

  if (v57 == 9)
  {
    v175 = *a1;
    v212 = 257;
    mlir::detail::Parser::emitError(v175, v56, v210, &v213);
    if (v213.__r_.__value_.__r.__words[0])
    {
      LODWORD(v208) = 3;
      *(&v208 + 1) = "expected integer elements, but parsed floating-point";
      v209 = 52;
      v176 = &v208;
      v177 = v214;
      if (v215 >= v216)
      {
        if (v214 <= &v208 && v214 + 24 * v215 > &v208)
        {
          v200 = &v208 - v214;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v177 = v214;
          v176 = v214 + v200;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v217, v215 + 1, 24);
          v176 = &v208;
          v177 = v214;
        }
      }

      v178 = &v177[24 * v215];
      v179 = *v176;
      *(v178 + 2) = *(v176 + 2);
      *v178 = v179;
      ++v215;
    }

    v126 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v213);
    if (v213.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v213);
    }

    if (v223[0] == 1)
    {
      if (v222 != v223)
      {
        free(v222);
      }

      v180 = __p;
      if (__p)
      {
        v181 = v221;
        v182 = __p;
        if (v221 != __p)
        {
          do
          {
            v181 = sub_100052FFC(v181 - 1);
          }

          while (v181 != v180);
          v182 = __p;
        }

        v221 = v180;
        operator delete(v182);
      }

      v130 = v218;
      if (!v218)
      {
        goto LABEL_299;
      }

      v183 = v219;
      v132 = v218;
      if (v219 == v218)
      {
LABEL_298:
        v219 = v130;
        operator delete(v132);
LABEL_299:
        if (v214 != v217)
        {
          free(v214);
        }

        goto LABEL_301;
      }

      do
      {
        v184 = *--v183;
        *v183 = 0;
        if (v184)
        {
          operator delete[]();
        }
      }

      while (v183 != v130);
LABEL_297:
      v132 = v218;
      goto LABEL_298;
    }

    goto LABEL_301;
  }

  sub_10005A9E8(&v208, v207, v54 & 1, *(v52 + 2), *(v52 + 3));
  v58 = v209;
  if (v209)
  {
    v59 = v205.__r_.__value_.__l.__size_;
    if (v205.__r_.__value_.__l.__size_ >= v205.__r_.__value_.__r.__words[2])
    {
      v71 = sub_10005E28C(&v205, &v208);
    }

    else
    {
      v60 = DWORD2(v208);
      *(v205.__r_.__value_.__l.__size_ + 8) = DWORD2(v208);
      if (v60 > 0x40)
      {
        llvm::APInt::initSlowCase(v59, &v208);
      }

      *v59 = v208;
      v71 = v59 + 16;
    }

    v205.__r_.__value_.__l.__size_ = v71;
  }

  else
  {
    v63 = *a1;
    v210[0] = "integer constant out of range for type";
    v212 = 259;
    mlir::detail::Parser::emitError(v63, v56, v210, &v213);
    v201 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v213);
    if (v213.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v213);
    }

    if (v223[0] == 1)
    {
      if (v222 != v223)
      {
        free(v222);
      }

      v64 = __p;
      if (__p)
      {
        v65 = v221;
        v66 = __p;
        if (v221 != __p)
        {
          do
          {
            v65 = sub_100052FFC(v65 - 1);
          }

          while (v65 != v64);
          v66 = __p;
        }

        v221 = v64;
        operator delete(v66);
      }

      v67 = v218;
      if (v218)
      {
        v68 = v219;
        v69 = v218;
        if (v219 != v218)
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
          v69 = v218;
        }

        v219 = v67;
        operator delete(v69);
      }

      if (v214 != v217)
      {
        free(v214);
      }
    }
  }

  if (v209 == 1 && DWORD2(v208) >= 0x41 && v208)
  {
    operator delete[]();
  }

  if (v58)
  {
    goto LABEL_63;
  }

  if (v201)
  {
    goto LABEL_302;
  }

LABEL_308:
  result = 0;
  v185 = v205.__r_.__value_.__r.__words[0];
  if (v205.__r_.__value_.__r.__words[0])
  {
LABEL_309:
    v173 = result;
    v186 = v205.__r_.__value_.__l.__size_;
    v174 = v185;
    if (v205.__r_.__value_.__l.__size_ != v185)
    {
      do
      {
        v187 = *(v186 - 2);
        v186 -= 2;
        if (v187 >= 0x41 && *v186)
        {
          operator delete[]();
        }
      }

      while (v186 != v185);
      v174 = v205.__r_.__value_.__r.__words[0];
    }

    v205.__r_.__value_.__l.__size_ = v185;
LABEL_317:
    operator delete(v174);
    return v173;
  }

  return result;
}

void *sub_10005CD80(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_100278F7C();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

unint64_t sub_10005CE7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (v2 + 56);
  if (*(v2 + 56) == 26)
  {
    *(v2 + 80) = *v3;
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
    v4 = 0;
    v5 = *(a1 + 8);
    *(v5 + 56) = v17;
    *(v5 + 72) = v18;
    v6 = 0x8000000000000000;
    return v6 | v4;
  }

  Loc = mlir::Token::getLoc(v3);
  v9 = *(a1 + 8);
  v10 = *(v9 + 56);
  if (v10 == 24)
  {
    *(v9 + 80) = *(v9 + 56);
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
    v11 = *(a1 + 8);
    *(v11 + 56) = v17;
    *(v11 + 72) = v18;
    v9 = *(a1 + 8);
    if (*(v9 + 56) != 10)
    {
      goto LABEL_14;
    }
  }

  else if (v10 != 10)
  {
    goto LABEL_14;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v9 + 64), *(v9 + 72));
  if (v13)
  {
    v14 = UInt64IntegerValue;
    if ((UInt64IntegerValue & 0x8000000000000000) == 0)
    {
      v15 = *(a1 + 8);
      *(v15 + 80) = *(v15 + 56);
      *(v15 + 96) = *(v15 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
      v16 = *(a1 + 8);
      *(v16 + 56) = v17;
      *(v16 + 72) = v18;
      if (v10 == 24)
      {
        v4 = -v14;
      }

      else
      {
        v4 = v14;
      }

      v6 = v4 & 0xFFFFFFFFFFFFFF00;
      v4 = v4;
      return v6 | v4;
    }
  }

LABEL_14:
  sub_10005EAEC(a1, Loc);
  return 0;
}

uint64_t sub_10005D004(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v5 = *(v2 + 16 * v4);
    if (*a2 == v5)
    {
      return v2 + 16 * v4;
    }

    v7 = 1;
    while (v5 != -1)
    {
      v8 = v4 + v7++;
      v4 = v8 & (v3 - 1);
      v5 = *(v2 + 16 * v4);
      if (*a2 == v5)
      {
        return v2 + 16 * v4;
      }
    }
  }

  return v2 + 16 * v3;
}

uint64_t sub_10005D08C@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = v5 - 1;
  v8 = (v5 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v13 = 0;
    v14 = 1;
    while (v10 != -1)
    {
      if (v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = v10 == -2;
      }

      if (v15)
      {
        v13 = v9;
      }

      v16 = v8 + v14++;
      v8 = v16 & v7;
      v9 = (v6 + 16 * (v16 & v7));
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
      if (*v9 == -1)
      {
LABEL_9:
        *v9 = *a2;
        v9[1] = *a3;
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
    sub_10006067C(result, v5);
    sub_1000605C8(v17, a2, &v20);
    a3 = v19;
    result = v17;
    a4 = v18;
    v9 = v20;
    ++*(v17 + 8);
    if (*v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v11 = 0;
LABEL_10:
  *a4 = v9;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v11;
  return result;
}

__n128 sub_10005D220(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = v10;
    mlir::DiagnosticArgument::DiagnosticArgument(v10, *a2);
    v4 = a1;
    v5 = *(a1 + 24);
    v6 = *(a1 + 32);
    if (v6 >= *(a1 + 36))
    {
      if (v5 <= v10 && v5 + 24 * v6 > v10)
      {
        v9 = &v10[-v5];
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = &v9[v5];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v6 + 1, 24);
        v4 = a1;
        v5 = *(a1 + 24);
        v2 = v10;
      }
    }

    v7 = (v5 + 24 * *(v4 + 32));
    result = *v2;
    v7[1].n128_u64[0] = v2[1].n128_u64[0];
    *v7 = result;
    ++*(v4 + 32);
  }

  return result;
}

void *sub_10005D310(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_100278FD0();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 == &v3[2 * v4] || *v5 != v2 || !v5[1])
  {
    return 0;
  }

  if (result)
  {
    v11 = *result;
    {
      v12 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      if (!v14)
      {
        return result;
      }
    }

    else
    {
      v23 = v11;
      v25 = result;
      sub_100278FD0();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
      v13 = *(v23 + 8);
      v14 = *(v23 + 16);
      if (!v14)
      {
        return result;
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
    }
  }

  return result;
}

uint64_t sub_10005D4A4()
{
  {
    sub_100279020();
  }

  return llvm::getTypeName<mlir::FloatType>(void)::Name;
}

const char *sub_10005D4EC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::FloatType]";
  v6 = 77;
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

uint64_t sub_10005D56C(mlir::detail::Parser **a1, uint64_t a2)
{
  v14 = 1;
  v15 = a1;
  __src = v18;
  v17 = 0x400000000;
  v13 = 0;
  v12[0] = a1;
  v12[1] = &v13;
  v12[2] = &v14;
  v12[3] = &v15;
  v12[4] = &__src;
  v3 = 0;
  if (mlir::detail::Parser::parseCommaSeparatedList(*a1, 2, sub_10005DC68, v12, 0, 0))
  {
    *(a2 + 8) = 0;
    v4 = v13;
    if (*(a2 + 12))
    {
      v5 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), 1uLL, 8);
      v5 = *(a2 + 8);
    }

    *(*a2 + 8 * v5) = v4;
    v6 = *(a2 + 12);
    v7 = (*(a2 + 8) + 1);
    *(a2 + 8) = v7;
    v8 = __src;
    v9 = v17;
    v10 = v17 + v7;
    if (v10 > v6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v10, 8);
      LODWORD(v7) = *(a2 + 8);
    }

    if (v9)
    {
      memcpy((*a2 + 8 * v7), v8, 8 * v9);
      LODWORD(v7) = *(a2 + 8);
    }

    *(a2 + 8) = v7 + v9;
    v3 = 1;
  }

  if (__src != v18)
  {
    free(__src);
  }

  return v3;
}

uint64_t sub_10005D6DC(mlir::detail::Parser **a1)
{
  v2 = *a1;
  v3 = *(*a1 + 1);
  v5 = (v3 + 56);
  v4 = *(v3 + 56);
  if (v4 <= 23)
  {
    if ((v4 - 9) >= 2 && v4 != 11)
    {
      if (v4 == 21)
      {
        *(v3 + 80) = *v5;
        *(v3 + 96) = *(v3 + 72);
        mlir::Lexer::lexToken((*(v2 + 1) + 8), &v51);
        v6 = *(v2 + 1);
        *(v6 + 56) = v51;
        *(v6 + 72) = v52;
        if ((sub_10005D6DC(a1) & 1) == 0)
        {
          return 0;
        }

        v7 = *a1;
        *&v51 = "expected ',' between complex elements";
        v54 = 259;
        if ((mlir::detail::Parser::parseToken(v7, 16, &v51) & 1) == 0)
        {
          return 0;
        }

        if ((sub_10005D6DC(a1) & 1) == 0)
        {
          return 0;
        }

        v8 = *a1;
        v49[0] = "expected ')' after complex elements";
        v50 = 259;
        return (mlir::detail::Parser::parseToken(v8, 28, v49) & 1) != 0;
      }

LABEL_28:
      v49[0] = "expected element literal of primitive type";
      v50 = 259;
      mlir::detail::Parser::emitError(v2, v49, &v51);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
      v25 = result;
      if (v51)
      {
        mlir::InFlightDiagnostic::report(&v51);
        result = v25;
      }

      if (v61 == 1)
      {
        if (v60 != &v61)
        {
          free(v60);
          result = v25;
        }

        v26 = __p;
        if (__p)
        {
          v27 = v59;
          v28 = __p;
          if (v59 != __p)
          {
            do
            {
              v27 = sub_100052FFC(v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v59 = v26;
          operator delete(v28);
          result = v25;
        }

        v29 = v56;
        if (!v56)
        {
          goto LABEL_68;
        }

        v30 = v57;
        v31 = v56;
        if (v57 == v56)
        {
LABEL_67:
          v57 = v29;
          operator delete(v31);
          result = v25;
LABEL_68:
          if (v53 != &v55)
          {
            free(v53);
            return v25;
          }

          return result;
        }

        do
        {
          v32 = *--v30;
          *v30 = 0;
          if (v32)
          {
            operator delete[]();
          }
        }

        while (v30 != v29);
LABEL_66:
        v31 = v56;
        goto LABEL_67;
      }

      return result;
    }

LABEL_13:
    v10 = a1[8];
    v11 = a1[9];
    if (v10 < v11)
    {
      *v10 = 0;
LABEL_15:
      v12 = *v5;
      *(v10 + 3) = *(v5 + 2);
      *(v10 + 8) = v12;
      v13 = v10 + 32;
LABEL_47:
      a1[8] = v13;
      v37 = *a1;
      v38 = *(v37 + 1);
      *(v38 + 80) = *(v38 + 56);
      *(v38 + 96) = *(v38 + 72);
      mlir::Lexer::lexToken((*(v37 + 1) + 8), &v51);
      v39 = *(v37 + 1);
      *(v39 + 56) = v51;
      *(v39 + 72) = v52;
      return 1;
    }

    v14 = a1[7];
    v15 = v10 - v14;
    v16 = (v10 - v14) >> 5;
    v17 = v16 + 1;
    if (!((v16 + 1) >> 59))
    {
      v18 = v11 - v14;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 59))
        {
          operator new();
        }

        goto LABEL_81;
      }

      v33 = v16;
      v34 = 32 * v16;
      *(32 * v16) = 0;
      goto LABEL_45;
    }

    goto LABEL_80;
  }

  if (v4 != 24)
  {
    if (v4 != 80 && v4 != 60)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  *(v3 + 80) = *v5;
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v51);
  v20 = *(v2 + 1);
  *(v20 + 56) = v51;
  *(v20 + 72) = v52;
  v21 = *a1;
  v22 = *(*a1 + 1);
  v23 = *(v22 + 56);
  v5 = (v22 + 56);
  if ((v23 - 9) < 2)
  {
    v10 = a1[8];
    v24 = a1[9];
    if (v10 < v24)
    {
      *v10 = 1;
      goto LABEL_15;
    }

    v14 = a1[7];
    v15 = v10 - v14;
    v45 = (v10 - v14) >> 5;
    v46 = v45 + 1;
    if (!((v45 + 1) >> 59))
    {
      v47 = v24 - v14;
      if (v47 >> 4 > v46)
      {
        v46 = v47 >> 4;
      }

      if (v47 >= 0x7FFFFFFFFFFFFFE0)
      {
        v48 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        if (!(v48 >> 59))
        {
          operator new();
        }

LABEL_81:
        sub_10002BC08();
      }

      v33 = v45;
      v34 = 32 * v45;
      *(32 * v45) = 1;
LABEL_45:
      v35 = *v5;
      *(v34 + 24) = *(v5 + 2);
      *(v34 + 8) = v35;
      v13 = v34 + 32;
      v36 = (v34 - 32 * v33);
      memcpy(v36, v14, v15);
      a1[7] = v36;
      a1[8] = v13;
      a1[9] = 0;
      if (v14)
      {
        operator delete(v14);
      }

      goto LABEL_47;
    }

LABEL_80:
    sub_10002BC08();
  }

  v49[0] = "expected integer or floating point literal";
  v50 = 259;
  mlir::detail::Parser::emitError(v21, v49, &v51);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v51);
  v25 = result;
  if (v51)
  {
    mlir::InFlightDiagnostic::report(&v51);
    result = v25;
  }

  if (v61 == 1)
  {
    if (v60 != &v61)
    {
      free(v60);
      result = v25;
    }

    v40 = __p;
    if (__p)
    {
      v41 = v59;
      v42 = __p;
      if (v59 != __p)
      {
        do
        {
          v41 = sub_100052FFC(v41 - 1);
        }

        while (v41 != v40);
        v42 = __p;
      }

      v59 = v40;
      operator delete(v42);
      result = v25;
    }

    v29 = v56;
    if (!v56)
    {
      goto LABEL_68;
    }

    v43 = v57;
    v31 = v56;
    if (v57 == v56)
    {
      goto LABEL_67;
    }

    do
    {
      v44 = *--v43;
      *v43 = 0;
      if (v44)
      {
        operator delete[]();
      }
    }

    while (v43 != v29);
    goto LABEL_66;
  }

  return result;
}