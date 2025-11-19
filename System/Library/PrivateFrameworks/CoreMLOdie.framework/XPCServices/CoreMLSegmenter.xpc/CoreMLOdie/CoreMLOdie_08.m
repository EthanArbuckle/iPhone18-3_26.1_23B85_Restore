void sub_10005FC84(uint64_t a1, int a2)
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
  sub_10005FDC8(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 8), 8uLL);
}

void sub_10005FDC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
      sub_10005FFCC((v17 + 1), (v4 + 1));
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

uint64_t sub_10005FFCC(uint64_t a1, uint64_t a2)
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
          sub_10005E60C(v17, v5);
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
              sub_10005E60C(v27, (v22 + v25));
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
        sub_10005E60C(v20, v5);
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
      sub_1000602A8(a1, v13);
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

void sub_1000602A8(uint64_t a1, unint64_t a2)
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
        sub_10005E60C(v9, v6);
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

uint64_t sub_1000603C0(uint64_t a1, const void **a2, const void **a3)
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
        sub_10005E60C(v16, v13);
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

void sub_100060588()
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
                v60 = sub_10005BEF4(v60 - 1);
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
      v39 = mlir::detail::Parser::parseCommaSeparatedList(a1, 4, sub_100067BD0, &v68, " in attribute dictionary", 24);
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
      if (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, sub_100067B38, &v86, 1))
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
        sub_10006296C(v81);
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
          sub_10005BE10(v70);
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
      if ((sub_100066464(v21, &v21[1]) & 1) == 0)
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
      if ((sub_1000665D4(v21) & 1) == 0)
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
  v11 = sub_100063E94(v21, Loc, v14, v15);
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
                    v10 = sub_10005BEF4(v10 - 1);
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
          sub_100299308();
          if (v19 != mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID(void)::id)
          {
            goto LABEL_6;
          }
        }

        if (a2)
        {
          v16 = sub_100067788(a2);
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

          v16 = sub_100067788(result);
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
            sub_10005BE10(v27);
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
          v6 = sub_10005BEF4(v6 - 1);
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
          v17 = sub_10005BEF4(v17 - 1);
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
      sub_10005BE10(v35);
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
    v26 = sub_100068998;
  }

  else
  {
    v26 = sub_10006911C;
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
  result = mlir::detail::Parser::parseCommaSeparatedList(this, 4, sub_100067BD0, v4, " in attribute dictionary", 24);
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
          v16 = sub_10005BEF4(v16 - 1);
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
    sub_100299348();
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
          v34 = sub_10005BEF4(v34 - 1);
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
      v45 = sub_100066208(IntegerType);
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
              v31 = sub_10005BEF4(v31 - 1);
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
                v24 = sub_10005BEF4(v24 - 1);
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

      sub_1000638E0(&v45, v20, a3, v8, v7);
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
                v38 = sub_10005BEF4(v38 - 1);
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

  v45 = sub_100066208(v4);
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
    sub_10002B154(&v69);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v69);
  }

  return v17;
}

uint64_t sub_10006296C(uint64_t a1)
{
  if (*a1)
  {
    mlir::InFlightDiagnostic::report(a1);
  }

  if (*(a1 + 200) == 1)
  {
    sub_10005BE10((a1 + 8));
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
      v14 = sub_100065C78(&v49);
      v16 = v15;
      *&v49 = 0;
      ElementType = mlir::ShapedType::getElementType(&v52);
      *&v62 = mlir::RankedTensorType::get(&v49, 1, ElementType, 0);
      v18 = sub_100065C78(&v62);
      v20 = v19;
      v21 = mlir::DenseElementsAttr::get(v14, v16, 0, 0);
      v22 = mlir::DenseElementsAttr::get(v18, v20, 0, 0);
      *&v49 = Loc;
      *&v62 = a1;
      *(&v62 + 1) = &v49;
      return mlir::SparseElementsAttr::getChecked(sub_100069418, &v62, v52, v53, v21, v22);
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
    if ((sub_100066464(&v62, &v62 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((sub_1000665D4(&v62) & 1) == 0)
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
      if ((sub_100066464(&v52, &v53) & 1) == 0)
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

    else if ((sub_1000665D4(&v52) & 1) == 0)
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

        v46[0] = sub_100065C78(v33);
        v46[1] = v38;
        v39 = sub_100063E94(&v62, v23, v46[0], v38);
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
        v43 = sub_100065C78(&v49);
        v45 = sub_100063E94(&v52, v24, v43, v44);
        v70 = Loc;
        *&v49 = a1;
        *(&v49 + 1) = &v70;
        result = mlir::SparseElementsAttr::getChecked(sub_100069450, &v49, v47, v48, v39, v45);
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
    v11 = sub_100065D74(this);
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
      v11 = sub_100065D74(this);
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
            v18 = sub_100065D74(this);
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
                v16 = sub_10005BEF4(v16 - 1);
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
            sub_10006296C(v35);
            return 0;
          }

          UnitAttr = v23;
          *&v32 = "expected '>' to close distinct attribute";
          v34 = 259;
          if (mlir::detail::Parser::parseToken(a1, 19, &v32))
          {
LABEL_32:
            v24 = *(*(a1 + 1) + 104);
            v25 = sub_100065EFC((v24 + 72), &UInt64IntegerValue);
            if (*(v24 + 72) + 16 * *(v24 + 88) == v25)
            {
              v28[0] = mlir::DistinctAttr::create(UnitAttr);
              sub_100065F84(v24 + 72, &UInt64IntegerValue, v28, &v32);
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
                sub_100066118(&v32, &ReferencedAttr);
                sub_10006296C(&v32);
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

uint64_t sub_1000638E0(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, unint64_t a5)
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
    v23[0] = sub_100067788(a2);
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
            v9 = sub_10005BEF4(v9 - 1);
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
            v16 = sub_10005BEF4(v16 - 1);
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

uint64_t sub_100063E94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
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
            v44 = sub_10005BEF4(v44 - 1);
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
              v76 = sub_10005BEF4(v76 - 1);
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
            v148 = sub_10005BEF4(v148 - 1);
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
          sub_100066E2C(v16, &v16[v15], &v213.__r_.__value_.__l.__size_, &v213.__r_.__value_.__l.__size_, &v208);
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
        sub_100066E2C(v21, &v21[v22], &v213.__r_.__value_.__l.__size_, &v213.__r_.__value_.__l.__size_, &v208);
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
            v28 = sub_10005BEF4(v28 - 1);
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
            v113 = sub_10005BEF4(v113 - 1);
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
    v82 = sub_100066208(ElementType);
    if (v82)
    {
      v210[0] = 0;
      v210[1] = 0;
      v211 = 0;
      *&v208 = v82;
      *(&v208 + 1) = v83;
      sub_100067328(v210, (*(a1 + 64) - *(a1 + 56)) >> 5);
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
              v160 = sub_10002B154(v159);
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
            v90 = sub_100067540(v210, &v213);
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
          sub_10002B154(&v213);
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

        sub_100003FC0();
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
  sub_100067038(&v205, (*(a1 + 64) - *(a1 + 56)) >> 5);
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
              v128 = sub_10005BEF4(v128 - 1);
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
              v169 = sub_10005BEF4(v169 - 1);
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
      v205.__r_.__value_.__l.__size_ = sub_100067184(&v205, &v213);
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
            v181 = sub_10005BEF4(v181 - 1);
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

  sub_1000638E0(&v208, v207, v54 & 1, *(v52 + 2), *(v52 + 3));
  v58 = v209;
  if (v209)
  {
    v59 = v205.__r_.__value_.__l.__size_;
    if (v205.__r_.__value_.__l.__size_ >= v205.__r_.__value_.__r.__words[2])
    {
      v71 = sub_100067184(&v205, &v208);
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
            v65 = sub_10005BEF4(v65 - 1);
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

void *sub_100065C78(void **a1)
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
      sub_100299384();
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

unint64_t sub_100065D74(uint64_t a1)
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
  sub_1000679E4(a1, Loc);
  return 0;
}

uint64_t sub_100065EFC(uint64_t *a1, void *a2)
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

uint64_t sub_100065F84@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
    sub_100069574(result, v5);
    sub_1000694C0(v17, a2, &v20);
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

__n128 sub_100066118(uint64_t a1, uint64_t *a2)
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

void *sub_100066208(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_1002993D8();
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
      sub_1002993D8();
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

uint64_t sub_10006639C()
{
  {
    sub_100299428();
  }

  return llvm::getTypeName<mlir::FloatType>(void)::Name;
}

const char *sub_1000663E4()
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

uint64_t sub_100066464(mlir::detail::Parser **a1, uint64_t a2)
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
  if (mlir::detail::Parser::parseCommaSeparatedList(*a1, 2, sub_100066B60, v12, 0, 0))
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

uint64_t sub_1000665D4(mlir::detail::Parser **a1)
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
        if ((sub_1000665D4(a1) & 1) == 0)
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

        if ((sub_1000665D4(a1) & 1) == 0)
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
              v27 = sub_10005BEF4(v27 - 1);
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
        sub_100003FC0();
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
    sub_100003FC0();
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
          v41 = sub_10005BEF4(v41 - 1);
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

BOOL sub_100066B60(uint64_t a1)
{
  v2 = *a1;
  __s2 = v24;
  v23 = 0x400000000;
  if (*(*(*v2 + 1) + 56) == 22)
  {
    if ((sub_100066464() & 1) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_42;
    }
  }

  else if ((sub_1000665D4(v2) & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (*v4)
  {
    v5 = *(a1 + 32);
    if (v5 == &__s2)
    {
LABEL_40:
      *v4 = 0;
LABEL_41:
      v3 = 1;
      goto LABEL_42;
    }

    v6 = v23;
    v7 = *(v5 + 8);
    if (v7 >= v23)
    {
      if (v23)
      {
        memmove(*v5, __s2, 8 * v23);
      }

      goto LABEL_39;
    }

    if (*(v5 + 12) >= v23)
    {
      if (v7)
      {
        memmove(*v5, __s2, 8 * v7);
        goto LABEL_37;
      }
    }

    else
    {
      *(v5 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v6, 8);
    }

    v7 = 0;
LABEL_37:
    if (v23 != v7)
    {
      memcpy((*v5 + 8 * v7), __s2 + 8 * v7, 8 * (v23 - v7));
    }

LABEL_39:
    *(v5 + 8) = v6;
    v4 = *(a1 + 16);
    goto LABEL_40;
  }

  v8 = *(a1 + 32);
  v9 = **(a1 + 24);
  v10 = *(v8 + 8);
  if (v10 == v23 && !memcmp(*v8, __s2, 8 * v10))
  {
    goto LABEL_41;
  }

  v11 = *v9;
  v20 = "tensor literal is invalid; ranks are not consistent between elements";
  v21 = 259;
  mlir::detail::Parser::emitError(v11, &v20, v25);
  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v12 = __p;
    if (__p)
    {
      v13 = v31;
      v14 = __p;
      if (v31 != __p)
      {
        do
        {
          v13 = sub_10005BEF4(v13 - 1);
        }

        while (v13 != v12);
        v14 = __p;
      }

      v31 = v12;
      operator delete(v14);
    }

    v15 = v28;
    if (v28)
    {
      v16 = v29;
      v17 = v28;
      if (v29 != v28)
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
        v17 = v28;
      }

      v29 = v15;
      operator delete(v17);
    }

    if (v26 != &v27)
    {
      free(v26);
    }
  }

LABEL_42:
  if (__s2 != v24)
  {
    free(__s2);
  }

  return v3;
}

__n128 sub_100066E2C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void ***a5)
{
  if (a1 != a2)
  {
    v33 = v5;
    v34 = v6;
    v12 = (a3 + 16);
    v11 = *(a3 + 16);
    v13 = *a1;
    LODWORD(v29) = 2;
    v30 = v13;
    v14 = *(a3 + 24);
    v15 = &v29;
    if (v14 >= *(a3 + 28))
    {
      v27 = a1;
      if (v11 <= &v29 && v11 + 24 * v14 > &v29)
      {
        v28 = &v29 - v11;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v28[v11];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v14 + 1, 24);
        v11 = *(a3 + 16);
        v15 = &v29;
      }

      a1 = v27;
    }

    v16 = (v11 + 24 * *(a3 + 24));
    result = *v15;
    v16[1].n128_u64[0] = v15[1].n128_u64[0];
    *v16 = result;
    ++*(a3 + 24);
    for (i = a1 + 1; i != a2; ++i)
    {
      v19 = *a5;
      v20 = 1;
      v32 = 1;
      if (*v19)
      {
        v29 = v19;
        v20 = 3;
      }

      v31 = v20;
      mlir::Diagnostic::operator<<(a4, &v29);
      v21 = *i;
      LODWORD(v29) = 2;
      v30 = v21;
      v22 = *(a3 + 24);
      v23 = *(a3 + 16);
      if (v22 >= *(a3 + 28))
      {
        if (v23 <= &v29 && v23 + 24 * v22 > &v29)
        {
          v26 = &v29 - v23;
          llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
          v23 = *v12;
          v24 = &v26[*v12];
          goto LABEL_8;
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod(v12, (a3 + 32), v22 + 1, 24);
        v23 = *v12;
      }

      v24 = &v29;
LABEL_8:
      v25 = (v23 + 24 * *(a3 + 24));
      result = *v24;
      v25[1].n128_u64[0] = v24[1].n128_u64[0];
      *v25 = result;
      ++*(a3 + 24);
    }
  }

  return result;
}

void *sub_100067038(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_100003FC0();
  }

  return result;
}

char *sub_100067184(void *a1, const llvm::APInt *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100003FC0();
  }

  v4 = a1[2] - *a1;
  if (v4 >> 3 > v3)
  {
    v3 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (!(v5 >> 60))
    {
      operator new();
    }

    sub_100003FC0();
  }

  v6 = (16 * v2);
  v7 = *(a2 + 2);
  *(16 * v2 + 8) = v7;
  if (v7 > 0x40)
  {
    llvm::APInt::initSlowCase(v6, a2);
  }

  *v6 = *a2;
  v8 = *a1;
  v9 = a1[1];
  v10 = (v6 - (v9 - *a1));
  if (v9 != *a1)
  {
    v11 = (-16 * ((v9 - *a1) >> 4) + 16 * v2 + 8);
    v12 = *a1;
    do
    {
      *v11 = v12[2];
      *(v11 - 1) = *v12;
      v12[2] = 0;
      v12 += 4;
      v11 += 4;
    }

    while (v12 != v9);
    do
    {
      if (v8[2] >= 0x41u && *v8)
      {
        operator delete[]();
      }

      v8 += 4;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v6 + 16;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v6 + 16;
}

void *sub_100067328(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      operator new();
    }

    sub_100003FC0();
  }

  return result;
}

void sub_100067434(llvm::detail::IEEEFloat **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v8 = v4;
    v9 = v6;
    do
    {
      while (1)
      {
        v11 = v8;
        if (v7 != v8->n128_u64[0])
        {
          break;
        }

        llvm::detail::DoubleAPFloat::DoubleAPFloat(v9, v8);
        v8 = (v8 + 24);
        v9 = (v10 + 24);
        if (v8 == v5)
        {
          goto LABEL_8;
        }
      }

      v8 = (v8 + 24);
      v9 = (llvm::detail::IEEEFloat::IEEEFloat(v9, v11) + 24);
    }

    while (v8 != v5);
    do
    {
LABEL_8:
      while (v7 == *v4)
      {
        sub_10002B154(v4);
        v4 = (v4 + 24);
        if (v4 == v5)
        {
          goto LABEL_10;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v4);
      v4 = (v4 + 24);
    }

    while (v4 != v5);
LABEL_10:
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t sub_100067540(uint64_t a1, const llvm::detail::IEEEFloat *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100003FC0();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_100003FC0();
  }

  v7 = 24 * v2;
  __p = 0;
  v16 = 24 * v2;
  v18 = 0;
  v8 = *a2;
  v9 = llvm::APFloatBase::PPCDoubleDouble(0);
  if (v9 == v8)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v7, a2);
  }

  else
  {
    llvm::detail::IEEEFloat::IEEEFloat(v7, a2);
  }

  v17 = v7 + 24;
  sub_100067434(a1, &__p);
  v10 = *(a1 + 8);
  v12 = v16;
  for (i = v17; v17 != v12; i = v17)
  {
    while (1)
    {
      v13 = (i - 24);
      v17 = i - 24;
      if (v9 == *(i - 24))
      {
        break;
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v13);
      i = v17;
      if (v17 == v12)
      {
        goto LABEL_18;
      }
    }

    sub_10002B154(v13);
  }

LABEL_18:
  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

uint64_t sub_1000676C0()
{
  {
    sub_10029947C();
  }

  return llvm::getTypeName<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>>(void)::Name;
}

const char *sub_100067708()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>]";
  v6 = 115;
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

void *sub_100067788(void *result)
{
  v1 = *result;
  {
    v22 = v1;
    v24 = result;
    sub_100299384();
    result = v24;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v22 + 8);
    v4 = *(v22 + 16);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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
      sub_100299384();
      result = v25;
      v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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

uint64_t sub_10006791C()
{
  {
    sub_1002994D0();
  }

  return llvm::getTypeName<mlir::ShapedType>(void)::Name;
}

const char *sub_100067964()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ShapedType]";
  v6 = 78;
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

void sub_1000679E4(uint64_t a1, const char *a2)
{
  v9 = "expected a 64-bit signed integer or '?'";
  v10 = 259;
  mlir::detail::Parser::emitError(a1, a2, &v9, v11);
  if (v11[0])
  {
    mlir::InFlightDiagnostic::report(v11);
  }

  if (v19 == 1)
  {
    if (v18 != &v19)
    {
      free(v18);
    }

    v2 = __p;
    if (__p)
    {
      v3 = v17;
      v4 = __p;
      if (v17 != __p)
      {
        do
        {
          v3 = sub_10005BEF4(v3 - 1);
        }

        while (v3 != v2);
        v4 = __p;
      }

      v17 = v2;
      operator delete(v4);
    }

    v5 = v14;
    if (v14)
    {
      v6 = v15;
      v7 = v14;
      if (v15 != v14)
      {
        do
        {
          v8 = *--v6;
          *v6 = 0;
          if (v8)
          {
            operator delete[]();
          }
        }

        while (v6 != v5);
        v7 = v14;
      }

      v15 = v5;
      operator delete(v7);
    }

    if (v12 != &v13)
    {
      free(v12);
    }
  }
}

BOOL sub_100067B38(void *a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(a1[1], 0);
  v4 = *(v2 + 2);
  if (v4 >= *(v2 + 3))
  {
    v6 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v2, v2 + 2, v4 + 1, 8);
    v3 = v6;
    LODWORD(v4) = *(v2 + 2);
  }

  *(*v2 + 8 * v4) = v3;
  ++*(v2 + 2);
  return *(**a1 + 8 * *(*a1 + 8) - 8) != 0;
}

uint64_t sub_100067BD0(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *a1;
  LOBYTE(StringAttr) = 0;
  v57 = 0;
  v5 = *(v4 + 8);
  v6 = (v5 + 7);
  v7 = *(v5 + 14);
  if (v7 == 3 || v7 == 12)
  {
LABEL_6:
    v10 = v5[8];
    v9 = v5[9];
    LOWORD(v63) = 261;
    *&v60 = v10;
    *(&v60 + 1) = v9;
    v57 = 1;
    StringAttr = mlir::Builder::getStringAttr(v4, &v60, a3);
    goto LABEL_7;
  }

  if (v7 != 11)
  {
    if (!mlir::Token::isKeyword(v6))
    {
      v58.__r_.__value_.__r.__words[0] = "expected attribute name";
      v59 = 259;
      mlir::detail::Parser::emitWrongTokenError(v4, &v58, &v60);
      v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
      if (v60)
      {
        mlir::InFlightDiagnostic::report(&v60);
      }

      if (v71 != 1)
      {
        return v25;
      }

      if (v70 != &v71)
      {
        free(v70);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v69;
        v49 = __p;
        if (v69 != __p)
        {
          do
          {
            v48 = sub_10005BEF4(v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v69 = v47;
        operator delete(v49);
      }

      v29 = v66;
      if (v66)
      {
        v50 = v67;
        v31 = v66;
        if (v67 != v66)
        {
          do
          {
            v51 = *--v50;
            *v50 = 0;
            if (v51)
            {
              operator delete[]();
            }
          }

          while (v50 != v29);
          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    }

    v5 = *(v4 + 8);
    goto LABEL_6;
  }

  mlir::Token::getStringValue(v6, &v58);
  LOWORD(v63) = 260;
  *&v60 = &v58;
  v57 = 1;
  StringAttr = mlir::Builder::getStringAttr(v4, &v60, v24);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

LABEL_7:
  mlir::StringAttr::getValue(&StringAttr);
  if (!v11)
  {
    v58.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v59 = 259;
    mlir::detail::Parser::emitError(v4, &v58, &v60);
    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v25;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v26 = __p;
    if (__p)
    {
      v27 = v69;
      v28 = __p;
      if (v69 != __p)
      {
        do
        {
          v27 = sub_10005BEF4(v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v69 = v26;
      operator delete(v28);
    }

    v29 = v66;
    if (v66)
    {
      v30 = v67;
      v31 = v66;
      if (v67 != v66)
      {
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
        goto LABEL_75;
      }

LABEL_76:
      v67 = v29;
      operator delete(v31);
    }

LABEL_77:
    if (v62 != v65)
    {
      free(v62);
    }

    return v25;
  }

  sub_10006826C(a1[1], &StringAttr, &v60);
  if ((v61 & 1) == 0)
  {
    v54 = "duplicate key '";
    v55 = 259;
    mlir::detail::Parser::emitError(v4, &v54, &v60);
    Value = mlir::StringAttr::getValue(&StringAttr);
    if (v60)
    {
      v59 = 261;
      v58.__r_.__value_.__r.__words[0] = Value;
      v58.__r_.__value_.__l.__size_ = v34;
      mlir::Diagnostic::operator<<(&v60 + 8, &v58);
      if (v60)
      {
        LODWORD(v58.__r_.__value_.__l.__data_) = 3;
        v58.__r_.__value_.__l.__size_ = "' in dictionary attribute";
        v58.__r_.__value_.__r.__words[2] = 25;
        v35 = &v58;
        v36 = v62;
        if (v63 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v63 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v36 = v62;
            v35 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
            v35 = &v58;
            v36 = v62;
          }
        }

        v37 = &v36[24 * v63];
        v38 = *&v35->__r_.__value_.__l.__data_;
        *(v37 + 2) = *(&v35->__r_.__value_.__l + 2);
        *v37 = v38;
        ++v63;
      }
    }

    v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
    if (v60)
    {
      mlir::InFlightDiagnostic::report(&v60);
    }

    if (v71 != 1)
    {
      return v25;
    }

    if (v70 != &v71)
    {
      free(v70);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v69;
      v41 = __p;
      if (v69 != __p)
      {
        do
        {
          v40 = sub_10005BEF4(v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v69 = v39;
      operator delete(v41);
    }

    v29 = v66;
    if (v66)
    {
      v42 = v67;
      v31 = v66;
      if (v67 != v66)
      {
        do
        {
          v43 = *--v42;
          *v42 = 0;
          if (v43)
          {
            operator delete[]();
          }
        }

        while (v42 != v29);
LABEL_75:
        v31 = v66;
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v12 = *(v4 + 8);
  *(v12 + 80) = *(v12 + 56);
  *(v12 + 96) = *(v12 + 72);
  mlir::Lexer::lexToken((*(v4 + 8) + 8), &v60);
  v13 = *(v4 + 8);
  *(v13 + 56) = v60;
  *(v13 + 72) = v61;
  *&v60 = mlir::StringAttr::getValue(&StringAttr);
  *(&v60 + 1) = v14;
  v58.__r_.__value_.__s.__data_[0] = 46;
  v15 = llvm::StringRef::find(&v60, &v58, 1uLL, 0);
  if (v15 != -1 && *(&v60 + 1) > (v15 + 1))
  {
    mlir::MLIRContext::getOrLoadDialect(***(v4 + 8), v60, v15);
  }

  v17 = *(v4 + 8);
  if (*(v17 + 56) == 18)
  {
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken((*(v4 + 8) + 8), &v60);
    v18 = *(v4 + 8);
    *(v18 + 56) = v60;
    *(v18 + 72) = v61;
    v19 = mlir::detail::Parser::parseAttribute(v4, 0);
    if (!v19)
    {
      return 0;
    }

    v20 = a1[2];
    mlir::NamedAttribute::NamedAttribute(&v60, StringAttr, v19);
    v22 = *(&v60 + 1);
    v21 = v60;
    v23 = v20;
  }

  else
  {
    v44 = a1[2];
    v45 = StringAttr;
    UnitAttr = mlir::Builder::getUnitAttr(v4, v16);
    mlir::NamedAttribute::NamedAttribute(&v60, v45, UnitAttr);
    v22 = *(&v60 + 1);
    v21 = v60;
    v23 = v44;
  }

  mlir::NamedAttrList::push_back(v23, v21, v22);
  return 1;
}

unsigned int *sub_10006826C@<X0>(unsigned int *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 2;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 4;
    v7 = result + 2;
  }

  else
  {
    v6 = result[4];
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 1);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = &v7[2 * v9];
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 4;
    }

    else
    {
      v4 = *(result + 1);
      v12 = result[4];
    }

    *a3 = v10;
    *(a3 + 8) = &v4[2 * v12];
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = &v7[2 * (v18 & v8)];
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 4;
  }

  else
  {
    v13 = result[4];
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - result[1] <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    sub_1000684F4(result, v13);
    sub_10006843C(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --result[1];
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 4;
  }

  else
  {
    v4 = *(result + 1);
    v14 = result[4];
  }

  *a3 = v10;
  *(a3 + 8) = &v4[2 * v14];
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_10006843C(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

void sub_1000684F4(unsigned int *a1, unsigned int a2)
{
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 1);
    v7 = a1[4];
    if (a2 > 4)
    {
      v23 = a2;
      buffer = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 1) = buffer;
      *(a1 + 2) = v23;
      v25 = *a1;
      v8 = (v6 + 8 * v7);
      *a1 = *a1 & 1;
      if ((v25 & 1) == 0)
      {
        v26 = &buffer->i8[8 * v23];
        v27 = 8 * v23 - 8;
        if (v27 < 0x18)
        {
          v29 = buffer;
          do
          {
LABEL_28:
            *v29 = -4096;
            v29 += 8;
          }

          while (v29 != v26);
LABEL_29:
          if (v7)
          {
            v33 = v6;
            do
            {
              v39 = *v33;
              if ((*v33 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*a1)
                {
                  v35 = 3;
                  v34 = (a1 + 2);
                }

                else
                {
                  v34 = *(a1 + 1);
                  v35 = a1[4] - 1;
                }

                v36 = v35 & ((v39 >> 4) ^ (v39 >> 9));
                v37 = &v34[2 * v36];
                v38 = *v37;
                if (v39 != *v37)
                {
                  v40 = 0;
                  v41 = 1;
                  while (v38 != -4096)
                  {
                    if (v40)
                    {
                      v42 = 0;
                    }

                    else
                    {
                      v42 = v38 == -8192;
                    }

                    if (v42)
                    {
                      v40 = v37;
                    }

                    v43 = v36 + v41++;
                    v36 = v43 & v35;
                    v37 = &v34[2 * (v43 & v35)];
                    v38 = *v37;
                    if (v39 == *v37)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v40)
                  {
                    v37 = v40;
                  }
                }

LABEL_33:
                *v37 = v39;
                *a1 += 2;
              }

              v33 = (v33 + 8);
            }

            while (v33 != v8);
          }

          llvm::deallocate_buffer(v6, (8 * v7), 8uLL);
          return;
        }

LABEL_22:
        v28 = (v27 >> 3) + 1;
        v29 = &buffer->i8[8 * (v28 & 0x3FFFFFFFFFFFFFFCLL)];
        v30 = buffer + 1;
        v31 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v32 = v28 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v30[-1] = v31;
          *v30 = v31;
          v30 += 2;
          v32 -= 4;
        }

        while (v32);
        if (v28 == (v28 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v8 = (v6 + 8 * v7);
      *a1 = 1;
    }

    v26 = (a1 + 10);
    buffer = (a1 + 2);
    v27 = 24;
    goto LABEL_22;
  }

  v9 = &v57;
  if ((*(a1 + 1) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v10 = *(a1 + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v57 = *(a1 + 1);
    v9 = &v58;
    v10 = *(a1 + 2);
    if ((v10 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v11 = *(a1 + 3);
      if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v9++ = v10;
  v11 = *(a1 + 3);
  if ((v11 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v12 = *(a1 + 4);
    if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v9++ = v11;
  v12 = *(a1 + 4);
  if ((v12 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v13 = *a1;
    if (a2 < 5)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v9++ = v12;
  v13 = *a1;
  if (a2 < 5)
  {
LABEL_13:
    *a1 = v13 & 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_58:
    v16 = (a1 + 10);
    v15 = (a1 + 2);
    v17 = 24;
    goto LABEL_16;
  }

LABEL_57:
  *a1 = v13 & 0xFFFFFFFE;
  v44 = a2;
  *(a1 + 1) = llvm::allocate_buffer((8 * a2), 8uLL);
  *(a1 + 2) = v44;
  v45 = *a1;
  *a1 = *a1 & 1;
  if (v45)
  {
    goto LABEL_58;
  }

LABEL_14:
  v14 = a1[4];
  if (!v14)
  {
    goto LABEL_61;
  }

  v15 = *(a1 + 1);
  v16 = &v15->i64[v14];
  v17 = v16 - v15 - 8;
  if (v17 < 0x18)
  {
    v19 = *(a1 + 1);
    do
    {
LABEL_60:
      *v19++ = -4096;
    }

    while (v19 != v16);
    goto LABEL_61;
  }

LABEL_16:
  v18 = (v17 >> 3) + 1;
  v19 = &v15->i64[v18 & 0x3FFFFFFFFFFFFFFCLL];
  v20 = v15 + 1;
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v22 = v18 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v20[-1] = v21;
    *v20 = v21;
    v20 += 2;
    v22 -= 4;
  }

  while (v22);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_60;
  }

LABEL_61:
  if (&v57 != v9)
  {
    v46 = &v57;
    do
    {
      v52 = *v46;
      if ((*v46 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*a1)
        {
          v48 = 3;
          v47 = (a1 + 2);
        }

        else
        {
          v47 = *(a1 + 1);
          v48 = a1[4] - 1;
        }

        v49 = v48 & ((v52 >> 4) ^ (v52 >> 9));
        v50 = &v47[2 * v49];
        v51 = *v50;
        if (v52 != *v50)
        {
          v53 = 0;
          v54 = 1;
          while (v51 != -4096)
          {
            if (v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v51 == -8192;
            }

            if (v55)
            {
              v53 = v50;
            }

            v56 = v49 + v54++;
            v49 = v56 & v48;
            v50 = &v47[2 * (v56 & v48)];
            v51 = *v50;
            if (v52 == *v50)
            {
              goto LABEL_65;
            }
          }

          if (v53)
          {
            v50 = v53;
          }
        }

LABEL_65:
        *v50 = v52;
        *a1 += 2;
      }

      ++v46;
    }

    while (v46 != v9);
  }
}

BOOL sub_100068998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 1);
  v4 = *(v3 + 56);
  if (v4 != 24)
  {
    v6 = *(v3 + 56);
    LOBYTE(v39) = 0;
    v41 = 0;
    if (v4 != 10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v13;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
    v14 = *(v2 + 1);
    *(v14 + 56) = v42;
    *(v14 + 72) = v43;
    sub_1000638E0(&v42, *v1, v4 == 24, v12, v13);
    if (v43)
    {
      v9 = DWORD2(v42);
      v40 = DWORD2(v42);
      v39 = v42;
      v41 = 1;
      if (!DWORD2(v42))
      {
LABEL_11:
        ++*(v1 + 32);
        v18 = 1;
        goto LABEL_64;
      }

LABEL_10:
      v15 = v9 >> 3;
      v16 = *(v1 + 16);
      v17 = &v16[-*(v1 + 8)];
      LOBYTE(v42) = 0;
      sub_100068ED0(v1 + 8, v16, v15, &v42);
      llvm::StoreIntToMemory(&v39, &v17[*(v1 + 8)], v15);
      goto LABEL_11;
    }

    v37[0] = "integer constant out of range";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_10005BEF4(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v34 = v47;
      v24 = v46;
      if (v47 == v46)
      {
        goto LABEL_61;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v22);
      goto LABEL_60;
    }

    goto LABEL_64;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
  v5 = *(v2 + 1);
  *(v5 + 56) = v42;
  *(v5 + 72) = v43;
  v3 = *(v2 + 1);
  v6 = *(v3 + 56);
  LOBYTE(v39) = 0;
  v41 = 0;
  if (v6 == 10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v6 == 80 || v6 == 60)
  {
    if (mlir::Type::isInteger(v1, 1))
    {
      v7 = *(*(v2 + 1) + 56);
      mlir::Type::isUnsignedInteger(v1);
      v8 = v7 == 80;
      v9 = 8;
      v40 = 8;
      v39 = v8;
      v41 = 1;
      v10 = *(v2 + 1);
      *(v10 + 96) = *(v10 + 72);
      *(v10 + 80) = *(v10 + 56);
      mlir::Lexer::lexToken((*(v2 + 1) + 8), &v42);
      v11 = *(v2 + 1);
      *(v11 + 56) = v42;
      *(v11 + 72) = v43;
      goto LABEL_10;
    }

    v37[0] = "expected i1 type for 'true' or 'false' values";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v49;
        v21 = __p;
        if (v49 != __p)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v49 = v19;
        operator delete(v21);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v23 = v47;
      v24 = v46;
      if (v47 == v46)
      {
LABEL_61:
        v47 = v22;
        operator delete(v24);
LABEL_62:
        if (v44 != &v45)
        {
          free(v44);
        }

        goto LABEL_64;
      }

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
LABEL_60:
      v24 = v46;
      goto LABEL_61;
    }
  }

  else
  {
    v37[0] = "expected integer literal";
    v38 = 259;
    mlir::detail::Parser::emitError(v2, v37, &v42);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v26 = __p;
      if (__p)
      {
        v27 = v49;
        v28 = __p;
        if (v49 != __p)
        {
          do
          {
            v27 = sub_10005BEF4(v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v49 = v26;
        operator delete(v28);
      }

      v22 = v46;
      if (!v46)
      {
        goto LABEL_62;
      }

      v29 = v47;
      v24 = v46;
      if (v47 == v46)
      {
        goto LABEL_61;
      }

      do
      {
        v30 = *--v29;
        *v29 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v29 != v22);
      goto LABEL_60;
    }
  }

LABEL_64:
  if (v41 == 1 && v40 >= 0x41 && v39)
  {
    operator delete[]();
  }

  return v18;
}

char *sub_100068ED0(uint64_t a1, char *a2, size_t a3, char *a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v5 = a4;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 - v9 < a3)
  {
    v10 = *a1;
    v11 = &v9[a3 - *a1];
    if (v11 < 0)
    {
      sub_100003FC0();
    }

    v12 = (a2 - v10);
    v13 = v8 - v10;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      operator new();
    }

    v30 = a2 - v10;
    memset(v12, *a4, a3);
    v31 = &v12[a3];
    v32 = v9 - v4;
    memcpy(v31, v4, v9 - v4);
    *(a1 + 8) = v4;
    v33 = &v12[v10 - v4];
    memcpy(v33, v10, v30);
    *a1 = v33;
    *(a1 + 8) = &v31[v32];
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }

    return v12;
  }

  v15 = v9 - a2;
  if (a3 > v9 - a2)
  {
    memset(*(a1 + 8), *a4, a3 - (v9 - a2));
    v16 = &v4[a3];
    *(a1 + 8) = &v4[a3];
    if (!v15)
    {
      return v4;
    }

    v17 = v9 - v4;
    v18 = &v4[a3];
    v19 = v4;
    v20 = &v4[a3];
    if (v4 >= v9)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v16 = *(a1 + 8);
  v17 = a3;
  v18 = &a2[a3];
  v19 = &v9[-a3];
  v20 = v16;
  if (v9 >= a3)
  {
LABEL_16:
    if (a3 <= v15)
    {
      v21 = v9 - v4;
    }

    else
    {
      v21 = a3;
    }

    v22 = &v9[a3] - v4 - v21;
    v23 = v22 >= 0x20 && a3 > 0x1F;
    v20 = v16;
    if (!v23)
    {
      goto LABEL_43;
    }

    v19 += v22 & 0xFFFFFFFFFFFFFFE0;
    v20 = &v16[v22 & 0xFFFFFFFFFFFFFFE0];
    v24 = &v4[v21 + 16];
    v25 = &v24[-a3];
    v26 = v22 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v27 = *v25;
      *(v24 - 1) = *(v25 - 1);
      *v24 = v27;
      v24 += 32;
      v25 += 32;
      v26 -= 32;
    }

    while (v26);
    if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_43:
      do
      {
        v28 = *v19++;
        *v20++ = v28;
      }

      while (v19 != v9);
    }
  }

LABEL_28:
  *(a1 + 8) = v20;
  if (v16 != v18)
  {
    memmove(v18, v4, v16 - v18);
  }

  if (v4 <= v5)
  {
    if (*(a1 + 8) <= v5)
    {
      v29 = 0;
    }

    else
    {
      v29 = a3;
    }

    v5 += v29;
  }

  memset(v4, *v5, v17);
  return v4;
}

uint64_t sub_10006911C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v41);
    v5 = *(v2 + 8);
    *(v5 + 56) = v41;
    *(v5 + 72) = v42;
    v3 = *(v2 + 8);
  }

  v36 = *(v3 + 56);
  v37 = *(v3 + 72);
  LOBYTE(v41) = 0;
  v43 = 0;
  v6 = *v1;
  if (!*v1)
  {
    goto LABEL_16;
  }

  v7 = *v6;
  {
    v34 = v7;
    v35 = v6;
    sub_100299348();
    v6 = v35;
    v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
    v9 = *(v34 + 8);
    v10 = *(v34 + 16);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_6:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
  if (v11 == &v9[2 * v10] || *v11 != v8)
  {
    goto LABEL_16;
  }

  v17 = v11[1];
LABEL_17:
  *&v38 = v6;
  *(&v38 + 1) = v17;
  FloatSemantics = mlir::FloatType::getFloatSemantics(&v38);
  v19 = mlir::detail::Parser::parseFloatFromLiteral(v2, &v41, &v36, v4 == 24, FloatSemantics);
  if ((v19 & 1) == 0)
  {
    v31 = 0;
    if (v43 != 1)
    {
      return v31;
    }

    goto LABEL_29;
  }

  v20 = *(v2 + 8);
  *(v20 + 80) = *(v20 + 56);
  *(v20 + 96) = *(v20 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v38);
  v21 = *(v2 + 8);
  *(v21 + 56) = v38;
  *(v21 + 72) = v39;
  v22 = v41;
  if (llvm::APFloatBase::PPCDoubleDouble(v23) == v22)
  {
    v19 = llvm::detail::DoubleAPFloat::bitcastToAPInt(&v41, &v38);
    v24 = DWORD2(v38);
    if (DWORD2(v38))
    {
      goto LABEL_20;
    }

LABEL_28:
    ++*(v1 + 32);
    v31 = 1;
    if (v43 != 1)
    {
      return v31;
    }

    goto LABEL_29;
  }

  v19 = llvm::detail::IEEEFloat::bitcastToAPInt(&v41, &v38);
  v24 = DWORD2(v38);
  if (!DWORD2(v38))
  {
    goto LABEL_28;
  }

LABEL_20:
  v25 = v24 >> 3;
  v27 = *(v1 + 8);
  v26 = *(v1 + 16);
  v28 = (v1 + 8);
  v29 = &v26[-v27];
  v40 = 0;
  sub_100068ED0(v28, v26, v25, &v40);
  v19 = llvm::StoreIntToMemory(&v38, &v29[*v28], v25);
  v30 = DWORD2(v38);
  ++v28[3];
  if (v30 >= 0x41)
  {
    v19 = v38;
    if (v38)
    {
      operator delete[]();
    }
  }

  v31 = 1;
  if (v43 == 1)
  {
LABEL_29:
    v32 = v41;
    if (llvm::APFloatBase::PPCDoubleDouble(v19) == v32)
    {
      sub_10002B154(&v41);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v41);
    }
  }

  return v31;
}

void sub_100069418(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_100069450(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void sub_100069488(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t sub_1000694C0(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 16 * v6);
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
        v7 = (v4 + 16 * (v13 & v5));
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

void sub_100069574(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((16 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
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
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if (*v16 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = *(a1 + 16) - 1;
          v25 = v24 & (((0xBF58476D1CE4E5B9 * v23) >> 31) ^ (484763065 * v23));
          v22 = (*a1 + 16 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 16 * (v30 & v24));
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = *(v16 + 1);
          ++*(a1 + 8);
        }

        v16 = (v16 + 16);
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_19;
      }

      v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
      v19 = buffer + 2;
      v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v19 - 2) = -1;
        *v19 = -1;
        v19 += 4;
        v20 -= 2;
      }

      while (v20);
      if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_19:
        v21 = &buffer[2 * v17];
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != v21);
      }
    }
  }
}

BOOL mlir::detail::Parser::parseDialectSymbolBody(mlir::detail::Parser *this, llvm::StringRef *a2, BOOL *a3)
{
  v6 = 0;
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v46 = &v48;
  v47 = xmmword_1002B0250;
  v9 = *(v7 + 48);
  v35[0] = this;
  v35[1] = &v46;
  while (1)
  {
    while (1)
    {
      if (v8 == v9)
      {
        EndLoc = v8;
        goto LABEL_37;
      }

      EndLoc = (v8 + 1);
      v13 = *v8;
      if (v13 > 0x3D)
      {
        if (*v8 <= 0x5Cu)
        {
          if (v13 == 62)
          {
            if ((sub_100069F44(&v46, v35, 0x3Cu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 91)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (v13 == 93)
          {
            if ((sub_100069F44(&v46, v35, 0x5Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }

          if (v13 != 123)
          {
            if (v13 == 125 && (sub_100069F44(&v46, v35, 0x7Bu) & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_4;
          }
        }

        goto LABEL_24;
      }

      if (*v8 <= 0x28u)
      {
        break;
      }

      switch(v13)
      {
        case ')':
          if ((sub_100069F44(&v46, v35, 0x28u) & 1) == 0)
          {
            goto LABEL_43;
          }

          break;
        case '-':
          v10 = v8[1];
          v11 = v8 + 2;
          if (v10 == 62)
          {
            EndLoc = v11;
          }

          break;
        case '<':
          goto LABEL_24;
      }

LABEL_4:
      v6 = v47;
      v8 = EndLoc;
      if (!v47)
      {
        goto LABEL_38;
      }
    }

    if (v13 == 34)
    {
      v14 = *(this + 1);
      *(v14 + 40) = v8;
      mlir::Lexer::lexToken((v14 + 8), &v36);
      v15 = *(this + 1);
      *(v15 + 56) = v36;
      *(v15 + 72) = v37;
      EndLoc = mlir::Token::getEndLoc((*(this + 1) + 56));
      v16 = *(*(this + 1) + 56);
      if (v16 != 11)
      {
        if (v16 != 2)
        {
LABEL_43:
          v19 = 0;
          goto LABEL_39;
        }

LABEL_37:
        *a3 = 1;
        *&v47 = 0;
LABEL_38:
        v17 = *(this + 1);
        *(v17 + 40) = EndLoc;
        mlir::Lexer::lexToken((v17 + 8), &v36);
        v18 = *(this + 1);
        *(v18 + 56) = v36;
        *(v18 + 72) = v37;
        *(a2 + 1) = (EndLoc - *a2);
        v19 = 1;
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    if (v13 != 40)
    {
      break;
    }

LABEL_24:
    if ((v6 + 1) > *(&v47 + 1))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(&v46, &v48, v6 + 1, 1);
      v6 = v47;
    }

    *(v46 + v6) = v13;
    v8 = EndLoc;
    v6 = v47 + 1;
    *&v47 = v6;
    if (!v6)
    {
      goto LABEL_38;
    }
  }

  if (*v8)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    sub_100069C24(&v36, v35);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v43;
        v23 = __p;
        if (v43 != __p)
        {
          do
          {
            v22 = sub_10005BEF4(v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v43 = v21;
        operator delete(v23);
      }

      v24 = v40;
      if (v40)
      {
        v25 = v41;
        v26 = v40;
        if (v41 != v40)
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
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v33 = "unexpected nul or EOF in pretty dialect name";
    v34 = 259;
    mlir::detail::Parser::emitError(this, &v33, &v36);
    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
    }

    if (v45 == 1)
    {
      if (v44 != &v45)
      {
        free(v44);
      }

      v28 = __p;
      if (__p)
      {
        v29 = v43;
        v30 = __p;
        if (v43 != __p)
        {
          do
          {
            v29 = sub_10005BEF4(v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v43 = v28;
        operator delete(v30);
      }

      v24 = v40;
      if (v40)
      {
        v31 = v41;
        v26 = v40;
        if (v41 != v40)
        {
          do
          {
            v32 = *--v31;
            *v31 = 0;
            if (v32)
            {
              operator delete[]();
            }
          }

          while (v31 != v24);
LABEL_77:
          v26 = v40;
        }

LABEL_78:
        v41 = v24;
        operator delete(v26);
      }

LABEL_79:
      if (v38 != &v39)
      {
        free(v38);
      }
    }
  }

LABEL_39:
  if (v46 != &v48)
  {
    free(v46);
  }

  return v19;
}

void sub_100069C24(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v23 = 257;
  mlir::detail::Parser::emitError(v4, v22, &v27);
  if (v27)
  {
    v24 = 3;
    v25 = "unbalanced '";
    v26 = 12;
    v5 = &v24;
    v6 = v29;
    if (v30 >= v31)
    {
      if (v29 <= &v24 && v29 + 24 * v30 > &v24)
      {
        v20 = &v24 - v29;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v6 = v29;
        v5 = (v29 + v20);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
        v5 = &v24;
        v6 = v29;
      }
    }

    v7 = &v6[24 * v30];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v30;
    if (v27)
    {
      mlir::Diagnostic::operator<<(&v28, *(**(a2 + 8) + *(*(a2 + 8) + 8) - 1));
      if (v27)
      {
        v24 = 3;
        v25 = "' character in pretty dialect name";
        v26 = 34;
        v9 = &v24;
        v10 = v29;
        if (v30 >= v31)
        {
          if (v29 <= &v24 && v29 + 24 * v30 > &v24)
          {
            v21 = &v24 - v29;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v10 = v29;
            v9 = (v29 + v21);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v29, v32, v30 + 1, 24);
            v9 = &v24;
            v10 = v29;
          }
        }

        v11 = &v10[24 * v30];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        ++v30;
      }
    }
  }

  sub_10006BAFC(a1, &v27);
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = sub_10005BEF4(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 != v33)
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
        v18 = v33;
      }

      v34 = v16;
      operator delete(v18);
    }

    if (v29 != v32)
    {
      free(v29);
    }
  }
}

uint64_t sub_100069F44(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1[1];
  if (*(*a1 + v3 - 1) == a3)
  {
    a1[1] = v3 - 1;
    return 1;
  }

  else
  {
    sub_100069C24(v13, a2);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
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

      v5 = __p;
      if (__p)
      {
        v6 = v19;
        v7 = __p;
        if (v19 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v19 = v5;
        operator delete(v7);
      }

      v8 = v16;
      if (v16)
      {
        v9 = v17;
        v10 = v16;
        if (v17 != v16)
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
          v10 = v16;
        }

        v17 = v8;
        operator delete(v10);
      }

      if (v14 != &v15)
      {
        free(v14);
      }
    }
  }

  return v4;
}

void *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = **v4;
  v6 = *(v4 + 152);
  v7 = *(v4 + 104);
  v10 = *(v4 + 56);
  v8 = (v4 + 56);
  v9 = v10;
  v11 = *(v8 + 1);
  v12 = *(v8 + 2);
  if (v12)
  {
    ++v11;
  }

  *&v97 = v11;
  *(&v97 + 1) = v12 - (v12 != 0);
  if (v9 == 2 && v12 <= 1)
  {
    v41 = mlir::detail::Parser::codeCompleteDialectSymbol(a1);
    goto LABEL_69;
  }

  v85 = v5;
  LocRange = mlir::Token::getLocRange(v8);
  v86 = v15;
  Loc = mlir::Token::getLoc((*(a1 + 1) + 56));
  v17 = *(a1 + 1);
  *(v17 + 96) = *(v17 + 72);
  *(v17 + 80) = *(v17 + 56);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
  v18 = *(a1 + 1);
  *(v18 + 56) = v98;
  *(v18 + 72) = v99;
  LOBYTE(v98) = 46;
  v19 = llvm::StringRef::find(&v97, &v98, 1uLL, 0);
  v87 = LocRange;
  if (v19 == -1)
  {
    v26 = Loc;
    v24 = 0;
    v95 = 0;
    v96 = 0;
    v94 = v97;
    v20 = *(&v97 + 1);
    v21 = v97;
  }

  else
  {
    v20 = *(&v97 + 1);
    v21 = v97;
    if (v19 >= *(&v97 + 1))
    {
      v22 = *(&v97 + 1);
    }

    else
    {
      v22 = v19;
    }

    if (*(&v97 + 1) >= v19 + 1)
    {
      v23 = v19 + 1;
    }

    else
    {
      v23 = *(&v97 + 1);
    }

    v24 = v97 + v23;
    *&v94 = v97;
    *(&v94 + 1) = v22;
    v25 = *(&v97 + 1) - v23;
    v95 = v97 + v23;
    v96 = *(&v97 + 1) - v23;
    v26 = Loc;
    if (*(&v97 + 1) != v23)
    {
      v27 = 1;
      v28 = v97 + v23;
      v29 = *(a1 + 1);
      if (*(v29 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_40:
      v30 = &v21->i8[v20] == *(v29 + 64);
      if (!v30 && !v27)
      {
        goto LABEL_18;
      }

LABEL_41:
      if (v27)
      {
        if (v30)
        {
          if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v95, &v98))
          {
            goto LABEL_68;
          }

          v28 = v95;
          v25 = v96;
        }
      }

      else
      {
        v95 = v94 + *(&v94 + 1);
        v96 = 0;
        LOBYTE(v98) = 0;
        if (!mlir::detail::Parser::parseDialectSymbolBody(a1, &v95, &v98))
        {
          goto LABEL_68;
        }

        v43 = v96 != 0;
        if (v96)
        {
          v28 = v95 + 1;
        }

        else
        {
          v28 = v95;
        }

        v25 = v96 - v43;
        v95 = v28;
        v96 -= v43;
        if ((v98 & 1) == 0)
        {
          if (v25 >= v25 - 1)
          {
            --v25;
          }

          v96 = v25;
        }

        v24 = v26;
      }

      v44 = v94;
      v88[0] = v24;
      v45 = *(a1 + 1);
      v46 = a2;
      if (*(v45 + 56) != 15 || (*(v45 + 80) = *(v45 + 56), *(v45 + 96) = *(v45 + 72), mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98), v47 = *(a1 + 1), *(v47 + 56) = v98, *(v47 + 72) = v99, (v46 = mlir::detail::Parser::parseType(a1)) != 0))
      {
        Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v44, *(&v44 + 1));
        if (!Dialect)
        {
          *&v91 = a1;
          *(&v91 + 1) = v88;
          LOWORD(v101) = 261;
          v98 = v44;
          v57 = mlir::StringAttr::get(v85, &v98, v49);
          if (!v46)
          {
            mlir::NoneType::get(v85, v56);
          }

          mlir::OpaqueAttr::getChecked(sub_10006EE10, &v91, v57);
        }

        v50 = Dialect;
        v51 = mlir::Token::getLoc((*(a1 + 1) + 56));
        v52 = *(a1 + 1);
        *(v52 + 40) = v28;
        mlir::Lexer::lexToken((v52 + 8), &v98);
        v53 = *(a1 + 1);
        *(v53 + 56) = v98;
        *(v53 + 72) = v99;
        *(&v98 + 1) = mlir::Token::getLoc((*(a1 + 1) + 56));
        v99 = a1;
        LOBYTE(v100) = 0;
        *&v98 = &off_1002D5508;
        v101 = v28;
        v102[0] = v25;
        v41 = (*(*v50 + 32))(v50, &v98, v46);
        v54 = *(a1 + 1);
        *(v54 + 40) = v51;
        mlir::Lexer::lexToken((v54 + 8), &v91);
        v55 = *(a1 + 1);
        *(v55 + 56) = v91;
        *(v55 + 72) = v92;
        mlir::DialectAsmParser::~DialectAsmParser(&v98);
        goto LABEL_69;
      }

LABEL_68:
      v41 = 0;
      goto LABEL_69;
    }
  }

  v25 = 0;
  v27 = v21->u8[v20 - 1] == 46;
  v28 = v24;
  v29 = *(a1 + 1);
  if (*(v29 + 56) == 23)
  {
    goto LABEL_40;
  }

LABEL_17:
  v30 = 0;
  if (v27)
  {
    goto LABEL_41;
  }

LABEL_18:
  v31 = llvm::StringMapImpl::hash(v21, v20);
  Key = llvm::StringMapImpl::FindKey(v7, v21, v20, v31);
  if (Key == -1)
  {
    v33 = *(v7 + 8);
  }

  else
  {
    v33 = Key;
  }

  if (v33 == *(v7 + 8))
  {
    v90 = 1283;
    v88[0] = "undefined symbol alias id '";
    v89 = v97;
    *&v91 = v88;
    v92 = "'";
    v93 = 770;
    mlir::detail::Parser::emitWrongTokenError(a1, &v91, &v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108 == 1)
    {
      if (v107 != &v108)
      {
        free(v107);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v106;
        v36 = __p;
        if (v106 != __p)
        {
          do
          {
            v35 = sub_10005BEF4(v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v106 = v34;
        operator delete(v36);
      }

      v37 = v103;
      if (v103)
      {
        v38 = v104;
        v39 = v103;
        if (v104 != v103)
        {
          do
          {
            v40 = *--v38;
            *v38 = 0;
            if (v40)
            {
              operator delete[]();
            }
          }

          while (v38 != v37);
          v39 = v103;
        }

        v104 = v37;
        operator delete(v39);
      }

      if (v100 != v102)
      {
        free(v100);
      }
    }

    goto LABEL_68;
  }

  v42 = *v7;
  if (v6)
  {
    mlir::AsmParserState::addAttrAliasUses(v6, v97, *(&v97 + 1), v87, v86);
  }

  v41 = *(*(v42 + 8 * v33) + 8);
LABEL_69:
  if (v41)
  {
    v58 = sub_10006BC04(v41);
    *&v94 = v58;
    *(&v94 + 1) = v59;
    if (!a2)
    {
      return v41;
    }
  }

  else
  {
    v58 = 0;
    v94 = 0uLL;
    if (!a2)
    {
      return v41;
    }
  }

  if (v58 && mlir::TypedAttr::getType(&v94) != a2)
  {
    *&v91 = "attribute type different than expected: expected ";
    v93 = 259;
    mlir::detail::Parser::emitError(a1, &v91, &v98);
    if (v98)
    {
      v60 = v88;
      mlir::DiagnosticArgument::DiagnosticArgument(v88, a2);
      v61 = v100;
      if (v101 >= HIDWORD(v101))
      {
        if (v100 <= v88 && v100 + 24 * v101 > v88)
        {
          v82 = v88 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v61 = v100;
          v60 = v100 + v82;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v60 = v88;
          v61 = v100;
        }
      }

      v62 = &v61[24 * v101];
      v63 = *v60;
      *(v62 + 2) = *(v60 + 2);
      *v62 = v63;
      v64 = (v101 + 1);
      LODWORD(v101) = v101 + 1;
      if (v98)
      {
        LODWORD(v88[0]) = 3;
        v88[1] = ", but got ";
        *&v89 = 10;
        v65 = v88;
        v66 = v100;
        if (v64 >= HIDWORD(v101))
        {
          if (v100 <= v88 && v100 + 24 * v64 > v88)
          {
            v84 = v88 - v100;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v64 + 1, 24);
            v66 = v100;
            v65 = v100 + v84;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v64 + 1, 24);
            v65 = v88;
            v66 = v100;
          }
        }

        v67 = &v66[24 * v101];
        v68 = *v65;
        *(v67 + 2) = *(v65 + 2);
        *v67 = v68;
        LODWORD(v101) = v101 + 1;
      }
    }

    Type = mlir::TypedAttr::getType(&v94);
    if (v98)
    {
      v70 = v88;
      mlir::DiagnosticArgument::DiagnosticArgument(v88, Type);
      v71 = v100;
      if (v101 >= HIDWORD(v101))
      {
        if (v100 <= v88 && v100 + 24 * v101 > v88)
        {
          v83 = v88 - v100;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v71 = v100;
          v70 = v100 + v83;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v100, v102, v101 + 1, 24);
          v70 = v88;
          v71 = v100;
        }
      }

      v72 = &v71[24 * v101];
      v73 = *v70;
      *(v72 + 2) = *(v70 + 2);
      *v72 = v73;
      LODWORD(v101) = v101 + 1;
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }
    }

    if (v108 == 1)
    {
      if (v107 != &v108)
      {
        free(v107);
      }

      v74 = __p;
      if (__p)
      {
        v75 = v106;
        v76 = __p;
        if (v106 != __p)
        {
          do
          {
            v75 = sub_10005BEF4(v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v106 = v74;
        operator delete(v76);
      }

      v77 = v103;
      if (v103)
      {
        v78 = v104;
        v79 = v103;
        if (v104 != v103)
        {
          do
          {
            v80 = *--v78;
            *v78 = 0;
            if (v80)
            {
              operator delete[]();
            }
          }

          while (v78 != v77);
          v79 = v103;
        }

        v104 = v77;
        operator delete(v79);
      }

      if (v100 != v102)
      {
        free(v100);
      }
    }

    return 0;
  }

  return v41;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  v3 = **v2;
  v4 = *(v2 + 152);
  v5 = *(v2 + 104);
  v8 = *(v2 + 56);
  v6 = (v2 + 56);
  v7 = v8;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  if (v10)
  {
    ++v9;
  }

  *&v61 = v9;
  *(&v61 + 1) = v10 - (v10 != 0);
  if (v7 == 2 && v10 <= 1)
  {

    return mlir::detail::Parser::codeCompleteDialectSymbol(this);
  }

  LocRange = mlir::Token::getLocRange(v6);
  v51 = v13;
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  v14 = *(this + 1);
  *(v14 + 96) = *(v14 + 72);
  *(v14 + 80) = *(v14 + 56);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v62);
  v15 = *(this + 1);
  *(v15 + 56) = v62;
  *(v15 + 72) = v63;
  LOBYTE(v62) = 46;
  v16 = llvm::StringRef::find(&v61, &v62, 1uLL, 0);
  if (v16 == -1)
  {
    v21 = 0;
    v59 = 0;
    v60 = 0;
    v58 = v61;
    v17 = *(&v61 + 1);
    v18 = v61;
  }

  else
  {
    v17 = *(&v61 + 1);
    v18 = v61;
    if (v16 >= *(&v61 + 1))
    {
      v19 = *(&v61 + 1);
    }

    else
    {
      v19 = v16;
    }

    if (*(&v61 + 1) >= v16 + 1)
    {
      v20 = v16 + 1;
    }

    else
    {
      v20 = *(&v61 + 1);
    }

    v21 = v61 + v20;
    *&v58 = v61;
    *(&v58 + 1) = v19;
    v22 = *(&v61 + 1) - v20;
    v59 = v61 + v20;
    v60 = *(&v61 + 1) - v20;
    if (*(&v61 + 1) != v20)
    {
      v23 = 1;
      v24 = v61 + v20;
      v25 = *(this + 1);
      if (*(v25 + 56) != 23)
      {
        goto LABEL_17;
      }

LABEL_43:
      v26 = &v18->i8[v17] == *(v25 + 64);
      if (!v26 && !v23)
      {
        goto LABEL_18;
      }

LABEL_44:
      if (v23)
      {
        if (!v26)
        {
LABEL_60:
          v52[0] = v21;
          Dialect = mlir::MLIRContext::getOrLoadDialect(v3, v58, *(&v58 + 1));
          if (!Dialect)
          {
            *&v55 = this;
            *(&v55 + 1) = v52;
            LOWORD(v65) = 261;
            v62 = v58;
            v49 = mlir::StringAttr::get(v3, &v62, v41);
            mlir::OpaqueType::getChecked(sub_10006EE48, &v55, v49);
          }

          v42 = Dialect;
          v43 = mlir::Token::getLoc((*(this + 1) + 56));
          v44 = *(this + 1);
          *(v44 + 40) = v24;
          mlir::Lexer::lexToken((v44 + 8), &v62);
          v45 = *(this + 1);
          *(v45 + 56) = v62;
          *(v45 + 72) = v63;
          *(&v62 + 1) = mlir::Token::getLoc((*(this + 1) + 56));
          v63 = this;
          LOBYTE(v64) = 0;
          *&v62 = &off_1002D5508;
          v65 = v24;
          v66 = v22;
          v46 = (*(*v42 + 48))(v42, &v62);
          v47 = *(this + 1);
          *(v47 + 40) = v43;
          mlir::Lexer::lexToken((v47 + 8), &v55);
          v48 = *(this + 1);
          *(v48 + 56) = v55;
          *(v48 + 72) = v56;
          mlir::DialectAsmParser::~DialectAsmParser(&v62);
          return v46;
        }

        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v59, &v62))
        {
          v24 = v59;
          v22 = v60;
          goto LABEL_60;
        }
      }

      else
      {
        v59 = v58 + *(&v58 + 1);
        v60 = 0;
        LOBYTE(v62) = 0;
        if (mlir::detail::Parser::parseDialectSymbolBody(this, &v59, &v62))
        {
          v39 = v60 != 0;
          if (v60)
          {
            v24 = v59 + 1;
          }

          else
          {
            v24 = v59;
          }

          v22 = v60 - v39;
          v59 = v24;
          v60 -= v39;
          if ((v62 & 1) == 0)
          {
            if (v22 >= v22 - 1)
            {
              --v22;
            }

            v60 = v22;
          }

          v21 = Loc;
          goto LABEL_60;
        }
      }

      return 0;
    }
  }

  v22 = 0;
  v23 = v18->u8[v17 - 1] == 46;
  v24 = v21;
  v25 = *(this + 1);
  if (*(v25 + 56) == 23)
  {
    goto LABEL_43;
  }

LABEL_17:
  v26 = 0;
  if (v23)
  {
    goto LABEL_44;
  }

LABEL_18:
  v27 = llvm::StringMapImpl::hash(v18, v17);
  Key = llvm::StringMapImpl::FindKey((v5 + 24), v18, v17, v27);
  if (Key == -1)
  {
    v29 = *(v5 + 32);
  }

  else
  {
    v29 = Key;
  }

  if (v29 == *(v5 + 32))
  {
    v54 = 1283;
    v52[0] = "undefined symbol alias id '";
    v53 = v61;
    *&v55 = v52;
    v56 = "'";
    v57 = 770;
    mlir::detail::Parser::emitWrongTokenError(this, &v55, &v62);
    if (v62)
    {
      mlir::InFlightDiagnostic::report(&v62);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v30 = __p;
      if (__p)
      {
        v31 = v70;
        v32 = __p;
        if (v70 != __p)
        {
          do
          {
            v31 = sub_10005BEF4(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v70 = v30;
        operator delete(v32);
      }

      v33 = v67;
      if (v67)
      {
        v34 = v68;
        v35 = v67;
        if (v68 != v67)
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
          v35 = v67;
        }

        v68 = v33;
        operator delete(v35);
      }

      if (v64 != &v66)
      {
        free(v64);
      }
    }

    return 0;
  }

  v38 = *(v5 + 24);
  if (v4)
  {
    mlir::AsmParserState::addTypeAliasUses(v4, v61, *(&v61 + 1), LocRange, v51);
  }

  return *(*(v38 + 8 * v29) + 8);
}

uint64_t *mlir::parseAttribute(mlir::StringAttr ****a1, uint64_t **a2, uint64_t **a3, uint64_t *a4, uint64_t ***a5, int a6)
{
  if (a6)
  {
    llvm::MemoryBuffer::getMemBuffer(a1, a2, a1, a2, &v53);
  }

  else
  {
    v72 = 261;
    v70 = a1;
    v71[0] = a2;
    llvm::MemoryBuffer::getMemBufferCopy(a1, a2, &v70, &v53);
  }

  llvm::SourceMgr::SourceMgr(&v50);
  v11 = v53;
  v53 = 0;
  v71[1] = 0;
  v71[0] = 0;
  v70 = v11;
  if (v51 >= v52)
  {
    v12 = sub_10003D320(&v50, &v70);
  }

  else
  {
    v12 = llvm::SourceMgr::SrcBuffer::SrcBuffer(v51, &v70) + 3;
  }

  v51 = v12;
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v70);
  v45[0] = 0;
  v45[1] = 0;
  v45[2] = 0x1000000000;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0x1000000000;
  v45[6] = 0;
  v45[7] = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v88 = a3;
  v89 = 1;
  v91 = 0;
  v90 = 0;
  v92 = 0;
  v93 = 0;
  v94 = v96;
  v95 = 0x600000000;
  v96[6] = &v97;
  v96[7] = 0x600000000;
  v70 = &v88;
  mlir::Lexer::Lexer(v71, &v50, a3, 0);
  mlir::Lexer::lexToken(v71, &v73);
  v75 = 1;
  v76 = "";
  v77 = 0;
  v80 = 0;
  v78 = v45;
  v79 = 0;
  v81 = 0;
  v82 = v84;
  v83 = 0;
  v84[1] = 0;
  v84[0] = 0;
  v87[0] = "builtin";
  v87[1] = 7;
  v85 = v87;
  v86 = 0x300000001;
  v43 = *v70;
  v44 = &v70;
  v41 = v73;
  v42 = v74;
  v13 = mlir::detail::Parser::parseAttribute(&v43, a4);
  if (v13)
  {
    v39 = *(v44 + 7);
    v40 = v44[9];
    Loc = mlir::Token::getLoc(&v39);
    v15 = (Loc - mlir::Token::getLoc(&v41));
    if (a5)
    {
      *a5 = v15;
    }

    else if (v15 != a2)
    {
      v16 = mlir::Token::getLoc(&v39);
      v38 = 257;
      mlir::detail::Parser::emitError(&v43, v16, v37, &v58);
      if (v58)
      {
        LODWORD(v54) = 3;
        v55 = "found trailing characters: '";
        v56 = 28;
        v17 = &v54;
        v18 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v54 && v60 + 24 * v61 > &v54)
          {
            v35 = &v54 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v18 = v60;
            v17 = (v60 + v35);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v17 = &v54;
            v18 = v60;
          }
        }

        v19 = &v18[24 * v61];
        v20 = *v17;
        *(v19 + 2) = v17[2];
        *v19 = v20;
        ++v61;
        if (v58)
        {
          v21 = a2 >= v15 ? v15 : a2;
          v57 = 261;
          v54 = (v21 + a1);
          v55 = (a2 - v21);
          mlir::Diagnostic::operator<<(&v59, &v54);
          if (v58)
          {
            LODWORD(v54) = 3;
            v55 = "'";
            v56 = 1;
            v22 = &v54;
            v23 = v60;
            if (v61 >= v62)
            {
              if (v60 <= &v54 && v60 + 24 * v61 > &v54)
              {
                v36 = &v54 - v60;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v23 = v60;
                v22 = (v60 + v36);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
                v22 = &v54;
                v23 = v60;
              }
            }

            v24 = &v23[24 * v61];
            v25 = *v22;
            *(v24 + 2) = v22[2];
            *v24 = v25;
            ++v61;
            if (v58)
            {
              mlir::InFlightDiagnostic::report(&v58);
            }
          }
        }
      }

      if (v69 == 1)
      {
        if (v68 != &v69)
        {
          free(v68);
        }

        v26 = __p;
        if (__p)
        {
          v27 = v67;
          v28 = __p;
          if (v67 != __p)
          {
            do
            {
              v27 = sub_10005BEF4(v27 - 1);
            }

            while (v27 != v26);
            v28 = __p;
          }

          v67 = v26;
          operator delete(v28);
        }

        v29 = v64;
        if (v64)
        {
          v30 = v65;
          v31 = v64;
          if (v65 != v64)
          {
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
            v31 = v64;
          }

          v65 = v29;
          operator delete(v31);
        }

        if (v60 != v63)
        {
          free(v60);
        }
      }

      v13 = 0;
    }
  }

  if (v85 != v87)
  {
    free(v85);
  }

  if (v82 != v84)
  {
    free(v82);
  }

  llvm::deallocate_buffer(v79, (8 * v81), 8uLL);
  sub_10005C084(&v88);
  sub_10005C208(v45);
  llvm::SourceMgr::~SourceMgr(&v50);
  v33 = v53;
  v53 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  return v13;
}