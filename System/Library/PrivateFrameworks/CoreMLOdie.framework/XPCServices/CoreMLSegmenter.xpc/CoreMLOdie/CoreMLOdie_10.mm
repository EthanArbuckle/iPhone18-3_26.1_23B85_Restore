uint64_t sub_1000792A8(int32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a2 + 8;
  v7 = sub_100082A8C((*&a1[2] + 88 * a1[3].u32[0] - 88), *(a2 + 8), *(a2 + 16));
  v8 = v7;
  v9 = *(v7 + 8);
  v11 = (a2 + 24);
  v10 = *(a2 + 24);
  v12 = v10 + 1;
  if (v9 > v10 || v9 == v12)
  {
    v14 = *(*v7 + 16 * *(a2 + 24));
    v55 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v9 <= v12)
    {
      if (*(v7 + 12) < v12)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (v7 + 16), v12, 16);
        v9 = *(v8 + 8);
      }

      if (v9 != v12)
      {
        bzero((*v8 + 16 * v9), 16 * (v12 - v9));
      }
    }

    *(v8 + 8) = v12;
    v14 = *(*v8 + 16 * *v11);
    v55 = v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  v15 = a1[44].i32[0];
  if (!v15)
  {
LABEL_39:
    v48 = *a2;
    v54 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v48);
    mlir::emitError(EncodedSourceLocation, v53, &v57);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v57);
    }

    if (v57)
    {
      sub_100084AE8(v58, "redefinition of SSA value '", v6, "'");
    }

    v50 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v58, v50, 1);
  }

  v16 = a1[42];
  v17 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
  v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v17 >> 47) ^ v17);
  v19 = v15 - 1;
  v20 = v19 & (-348639895 * ((v18 >> 47) ^ v18));
  v21 = *(*&v16 + 16 * v20);
  if (v21 != v14)
  {
    v46 = 1;
    while (v21 != -4096)
    {
      v47 = v20 + v46++;
      v20 = v47 & v19;
      v21 = *(*&v16 + 16 * v20);
      if (v21 == v14)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v14 + 8)) >= 8)
  {
    v22 = *a2;
    v54 = 257;
    v23 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v22);
    mlir::emitError(v23, v53, &v57);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v57);
    }

    v56 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v57)
    {
      sub_100084D14(v58, "definition of SSA value '", v6, "#", (a2 + 24), "' has type ", &v56);
    }

    v24 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v8 + 16 * *v11 + 8));
    mlir::Diagnostic::attachNote(v58, v24, 1);
  }

  while (1)
  {
    v25 = *v14;
    if (!*v14)
    {
      break;
    }

    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      *v26 = *v25;
      if (v27)
      {
        *(v27 + 8) = v26;
      }
    }

    v25[3] = a3;
    v25[1] = a3;
    v28 = *a3;
    *v25 = *a3;
    if (v28)
    {
      *(v28 + 8) = v25;
    }

    *a3 = v25;
  }

  DefiningOp = mlir::Value::getDefiningOp(&v55);
  mlir::Operation::destroy(DefiningOp);
  v30 = a1[44].i32[0];
  if (v30)
  {
    v31 = a1[42];
    v32 = 0x9DDFEA08EB382D69 * ((8 * v55 - 0xAE502812AA7333) ^ HIDWORD(v55));
    v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v55) ^ (v32 >> 47) ^ v32);
    LODWORD(v32) = -348639895 * ((v33 >> 47) ^ v33);
    v34 = v30 - 1;
    v35 = v32 & (v30 - 1);
    v36 = *(*&v31 + 16 * v35);
    if (v55 == v36)
    {
LABEL_31:
      *(*&v31 + 16 * v35) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v51 = 1;
      while (v36 != -4096)
      {
        v52 = v35 + v51++;
        v35 = v52 & v34;
        v36 = *(*&v31 + 16 * v35);
        if (v55 == v36)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v37 = *(*&a1[1] + 152);
  if (v37)
  {
    mlir::AsmParserState::refineDefinition(v37, v55, a3);
  }

LABEL_34:
  v38 = *a2;
  v39 = (*v8 + 16 * *(a2 + 24));
  *v39 = a3;
  v39[1] = v38;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  v42 = *&a1[2] + 88 * a1[3].u32[0];
  v43 = (*(v42 - 64) + 24 * *(v42 - 56) - 24);
  v44 = llvm::StringMapImpl::hash(v40, v41);
  sub_1000469B0(v43, v40, v41, v44);
  return 1;
}

BOOL sub_1000799D4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v33 = *(v3 + 56);
  *&v33[16] = *(v3 + 72);
  *&v34 = "expected valid ssa identifier";
  v37 = 259;
  if ((mlir::detail::Parser::parseToken(v2, 6, &v34) & 1) == 0)
  {
    return 0;
  }

  v4 = 1;
  v32 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v34);
  v6 = *(v2 + 1);
  *(v6 + 56) = v34;
  *(v6 + 72) = v35;
  v7 = *(v2 + 1);
  if (*(v7 + 56) == 10)
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v7 + 64), *(v7 + 72));
    if (v9)
    {
      v4 = UInt64IntegerValue;
      if (UInt64IntegerValue)
      {
        v10 = *(v2 + 1);
        *(v10 + 80) = *(v10 + 56);
        *(v10 + 96) = *(v10 + 72);
        mlir::Lexer::lexToken((*(v2 + 1) + 8), &v34);
        v11 = *(v2 + 1);
        *(v11 + 56) = v34;
        *(v11 + 72) = v35;
        v32 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v34 = *&v33[8];
        Loc = mlir::Token::getLoc(v33);
        v30[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          sub_100079DCC(v12, &v34, &v32, v30);
          v4 = v32;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v34;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v30[0] = "expected named operation to have at least 1 result";
    v31 = 259;
    mlir::detail::Parser::emitError(v2, v30, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
      }

      v25 = __p;
      if (__p)
      {
        v26 = v42;
        v27 = __p;
        if (v42 != __p)
        {
          do
          {
            v26 = sub_10005BEF4(v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v42 = v25;
        operator delete(v27);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v28 = v40;
      v23 = v39;
      if (v40 == v39)
      {
LABEL_45:
        v40 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v36 != &v38)
        {
          free(v36);
          return v17;
        }

        return result;
      }

      do
      {
        v29 = *--v28;
        *v28 = 0;
        if (v29)
        {
          operator delete[]();
        }
      }

      while (v28 != v21);
LABEL_44:
      v23 = v39;
      goto LABEL_45;
    }
  }

  else
  {
    v30[0] = "expected integer number of results";
    v31 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v30, &v34);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    v17 = result;
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
      result = v17;
    }

    if (v44[0] == 1)
    {
      if (v43 != v44)
      {
        free(v43);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v42;
        v20 = __p;
        if (v42 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v42 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v39;
      if (!v39)
      {
        goto LABEL_46;
      }

      v22 = v40;
      v23 = v39;
      if (v40 == v39)
      {
        goto LABEL_45;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t sub_100079DCC(uint64_t a1, __int128 *a2, void *a3, uint64_t *a4)
{
  v14 = *a2;
  v15 = *a3;
  v16 = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = &v14;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v14 && v5 + 32 * v4 > &v14)
    {
      v12 = &v14 - v5;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v13;
      v5 = *v13;
      v6 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 32);
      a1 = v11;
      v5 = *v11;
      v6 = &v14;
    }
  }

  v7 = (v5 + 32 * *(a1 + 8));
  v8 = *(v6 + 1);
  *v7 = *v6;
  v7[1] = v8;
  v9 = (*(a1 + 8) + 1);
  *(a1 + 8) = v9;
  return *a1 + 32 * v9 - 32;
}

unint64_t sub_100079EAC(mlir::detail::Parser *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v39 = v3;
  v40 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v35);
    v5 = *(this + 1);
    *(v5 + 56) = v35;
    *(v5 + 72) = v36;
    v6 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1));
    if (v7)
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
      return v8 | v6;
    }

    LOBYTE(v35) = 46;
    v16 = llvm::StringRef::find(&v39, &v35, 1uLL, 0);
    if (v16 == -1)
    {
      v17 = v39;
      v18 = v40;
      v19 = v40;
      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v17 = v39;
      v18 = v40;
      if (v16 >= v40)
      {
        v19 = v40;
      }

      else
      {
        v19 = v16;
      }

      v33[0] = 0;
      v33[1] = 0;
      v34 = 0;
      if (v40 > v16 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v17, v19);
        mlir::OperationName::OperationName(&v35, v39, v40, ***(this + 1));
        LOBYTE(v6) = v35;
        v8 = v35 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v34) < 0)
        {
          v27 = v35;
          operator delete(v33[0]);
          LOBYTE(v6) = v27;
        }

        return v8 | v6;
      }

      v20 = *(this + 1);
      if (*(v20 + 56) != 2)
      {
LABEL_34:
        v23 = *(v20 + 168) + 16 * *(v20 + 176);
        v24 = *(v23 - 16);
        v19 = *(v23 - 8);
        v30 = 773;
        v29[0] = v24;
        v29[1] = v19;
        v29[2] = ".";
        *&v35 = v29;
        v36 = v17;
        v37 = v18;
        v38 = 1282;
        llvm::Twine::str(&v35, &v31);
        v34 = v32;
        *v33 = v31;
        v25 = SHIBYTE(v32);
        v26 = v33;
        if (v32 < 0)
        {
          v26 = v31;
        }

        if (v32 < 0)
        {
          v25 = *(&v31 + 1);
        }

        v39 = v26;
        v40 = v25;
        v17 = v24;
        goto LABEL_39;
      }
    }

    if (v17[v18 - 1] != 46)
    {
      goto LABEL_34;
    }

    if (v19)
    {
      v21 = v17;
      v22 = memchr(v17, 46, v19);
      if (!v22 || v22 - v21 == -1)
      {
        (*(**(v20 + 160) + 24))(*(v20 + 160), v21, v19);
      }
    }

    v8 = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    *&v35 = "empty operation name is invalid";
    v38 = 259;
    mlir::detail::Parser::emitError(this, &v35, v41);
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

      v9 = __p;
      if (__p)
      {
        v10 = v47;
        v11 = __p;
        if (v47 != __p)
        {
          do
          {
            v10 = sub_10005BEF4(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v47 = v9;
        operator delete(v11);
      }

      v12 = v44;
      if (v44)
      {
        v13 = v45;
        v14 = v44;
        if (v45 != v44)
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
          v14 = v44;
        }

        v45 = v12;
        operator delete(v14);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }

    LOBYTE(v6) = 0;
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t sub_10007A26C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) != 65)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v16);
  v5 = *(a1 + 8);
  *(v5 + 56) = v16;
  *(v5 + 72) = v17;
  *&v16 = "expected '(' in location";
  v18 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v16))
  {
    v6 = *(a1 + 8);
    v7 = *(v6 + 56);
    v9 = *(v6 + 64);
    v8 = *(v6 + 72);
    v15 = 0;
    if (v7 == 5 && (!v8 || (v10 = memchr(v9, 46, v8)) == 0 || v10 - v9 == -1))
    {
      if (!sub_10007E6E0(a1, &v15))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v15) & 1) == 0)
    {
      return 0;
    }

    *&v16 = "expected ')' in location";
    v18 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v16))
    {
      v11 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v11) = 1;
      }

      v12 = v11 == 0;
      v13 = 24;
      if (!v12)
      {
        v13 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v13) = v15;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10007A3D8()
{
  {
    sub_1002996F4();
  }

  return llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>(void)::Name;
}

const char *sub_10007A420()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]";
  v6 = 103;
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

uint64_t sub_10007A4A0()
{
  {
    sub_100299748();
  }

  return llvm::getTypeName<mlir::OpAsmOpInterface>(void)::Name;
}

const char *sub_10007A4E8()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpAsmOpInterface]";
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

uint64_t sub_10007A570(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void sub_10007A588(mlir::OpAsmParser *a1)
{
  mlir::OpAsmParser::~OpAsmParser(a1);

  operator delete();
}

void sub_10007A5C8(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v13 = 1283;
  v5 = *(a1 + 72);
  v6 = *(a1 + 80);
  v12[0] = "custom op '";
  v12[2] = v5;
  v12[3] = v6;
  *&v14 = v12;
  *&v15 = "' ";
  LOWORD(v16) = 770;
  v7 = *(a3 + 32);
  if (v7 == 1)
  {
    v17 = v14;
    v18 = v15;
    v19 = v16;
  }

  else if (*(a3 + 32))
  {
    v8 = *a3;
    v9 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v7) = 2;
      v8 = a3;
    }

    *&v17 = &v14;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    LOBYTE(v19) = 2;
    BYTE1(v19) = v7;
  }

  else
  {
    LOWORD(v19) = 256;
  }

  *(a1 + 24) = 1;
  v10 = *(a1 + 16);
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v10 + 8) + 8, a2);
  mlir::emitError(EncodedSourceLocation, &v17, a4);
  if (*(*(v10 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(a4);
  }
}

uint64_t sub_10007A6EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL sub_10007A72C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 13)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 13;
}

uint64_t sub_10007A7A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL sub_10007A7E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 20)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 20;
}

uint64_t sub_10007A85C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL sub_10007A89C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 27)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 27;
}

uint64_t sub_10007A914(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL sub_10007A954(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 15)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 15;
}

uint64_t sub_10007A9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL sub_10007AA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 16)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 16;
}

uint64_t sub_10007AA84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL sub_10007AAC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 18)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 18;
}

uint64_t sub_10007AB3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL sub_10007AB7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 23)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 23;
}

uint64_t sub_10007ABF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL sub_10007AC34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 19)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 19;
}

uint64_t sub_10007ACAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL sub_10007ACEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 26)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 26;
}

uint64_t sub_10007AD64(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL sub_10007ADA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 25)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 25;
}

uint64_t sub_10007AE1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL sub_10007AE5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 24)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 24;
}

uint64_t sub_10007AED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL sub_10007AF14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 30)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 30;
}

uint64_t sub_10007AF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL sub_10007AFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 31)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 31;
}

uint64_t sub_10007B044(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v6);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v6);
  *(*(v2 + 8) + 56) = v6;
  return 1;
}

uint64_t sub_10007B100(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v7 = *(v6 + 72);
      v35 = *(v6 + 64);
      v36 = v7;
      first_not_of = llvm::StringRef::find_first_not_of(&v35, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = first_not_of;
      }

      if (v36 < v9)
      {
        v9 = v36;
      }

      v10 = v36 - v9;
      *&v39 = v35 + v9;
      *(&v39 + 1) = v36 - v9;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      v12 = v10 - (last_not_of + 1);
      if (v10 < last_not_of + 1)
      {
        v12 = 0;
      }

      v13 = *(&v39 + 1) - v12;
      if (*(&v39 + 1) >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v14, a2, &v34);
      if (v34)
      {
        v32 = v34;
        v34 = 0;
        llvm::toString(&v32, &v33);
        v38 = 260;
        v37[0] = &v33;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
        if (v39)
        {
          mlir::InFlightDiagnostic::report(&v39);
        }

        if (v48 == 1)
        {
          if (v47 != &v48)
          {
            free(v47);
          }

          v16 = __p;
          if (__p)
          {
            v17 = v46;
            v18 = __p;
            if (v46 != __p)
            {
              do
              {
                v17 = sub_10005BEF4(v17 - 1);
              }

              while (v17 != v16);
              v18 = __p;
            }

            v46 = v16;
            operator delete(v18);
          }

          v19 = v43;
          if (v43)
          {
            v20 = v44;
            v21 = v43;
            if (v44 != v43)
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
              v21 = v43;
            }

            v44 = v19;
            operator delete(v21);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v33.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          (*(*v32 + 8))(v32);
        }

        if (v34)
        {
          (*(*v34 + 8))(v34);
        }

        return v15;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 8) + 8), &v39);
    v30 = *(v5 + 8);
    *(v30 + 56) = v39;
    *(v30 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
  if (v39)
  {
    mlir::InFlightDiagnostic::report(&v39);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v46;
      v25 = __p;
      if (v46 != __p)
      {
        do
        {
          v24 = sub_10005BEF4(v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v46 = v23;
      operator delete(v25);
    }

    v26 = v43;
    if (v43)
    {
      v27 = v44;
      v28 = v43;
      if (v44 != v43)
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
        v28 = v43;
      }

      v44 = v26;
      operator delete(v28);
    }

    if (v41 != v42)
    {
      free(v41);
    }
  }

  return v15;
}

uint64_t sub_10007B554(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL sub_10007B594(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 21)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 21;
}

uint64_t sub_10007B60C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL sub_10007B64C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 28)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 28;
}

uint64_t sub_10007B6C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL sub_10007B704(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 22)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 22;
}

uint64_t sub_10007B77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL sub_10007B7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 29)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 29;
}

uint64_t sub_10007B834(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL sub_10007B874(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 + 8);
  v3 = *(v2 + 56);
  if (v3 == 17)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v6);
    v4 = *(v1 + 8);
    *(v4 + 56) = v6;
    *(v4 + 72) = v7;
  }

  return v3 == 17;
}

uint64_t sub_10007B8EC(uint64_t a1, double *a2)
{
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v12, 0.0);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(v13, v12, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  v6 = (*(*a1 + 368))(a1, v5, v13);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    v11 = v13[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) != v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_10002B154(v13);
    return v7;
  }

  *a2 = llvm::APFloat::convertToDouble(v13);
  v7 = 1;
  v8 = v13[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v13);
  return v7;
}

uint64_t sub_10007BA20(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    v9 = v6;
    mlir::Lexer::lexToken((*(v6 + 8) + 8), &v22);
    v10 = *(v9 + 8);
    *(v10 + 56) = v22;
    *(v10 + 72) = v23;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v18 = *(v7 + 56);
  v19 = *(v7 + 72);
  LOBYTE(v22) = 0;
  v24 = 0;
  v11 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v22, &v18, v8 == 24, a2);
  v12 = 0;
  if (v11)
  {
    v14 = *(a1 + 16);
    v15 = *(v14 + 8);
    *(v15 + 80) = *(v15 + 56);
    *(v15 + 96) = *(v15 + 72);
    mlir::Lexer::lexToken((*(v14 + 8) + 8), &v20);
    v16 = *(v14 + 8);
    *(v16 + 56) = v20;
    *(v16 + 72) = v21;
    v11 = sub_10006E554(a3, &v22);
    v12 = 1;
    if (v24 != 1)
    {
      return v12;
    }
  }

  else if (v24 != 1)
  {
    return v12;
  }

  v17 = v22;
  if (llvm::APFloatBase::PPCDoubleDouble(v11) == v17)
  {
    sub_10002B154(&v22);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v22);
  }

  return v12;
}

uint64_t sub_10007BBF0(void *a1, void **a2, const char *a3, void ***a4)
{
  v26[0] = a2;
  v26[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v26, 1, 0);
    return 0;
  }

  else
  {
    v10 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 408))(a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v24 = "expected '";
      v25 = 259;
      (*(*a1 + 24))(&v31, a1, v10, &v24);
      if (v31)
      {
        v30 = 261;
        v27 = a2;
        v28 = a3;
        mlir::Diagnostic::operator<<(v32, &v27);
        if (v31)
        {
          LODWORD(v27) = 3;
          v28 = "'";
          v29 = 1;
          v11 = &v27;
          v12 = v33;
          if (v34 >= v35)
          {
            if (v33 <= &v27 && v33 + 24 * v34 > &v27)
            {
              v23 = &v27 - v33;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v12 = v33;
              v11 = (v33 + v23);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
              v11 = &v27;
              v12 = v33;
            }
          }

          v13 = &v12[24 * v34];
          v14 = *v11;
          *(v13 + 2) = v11[2];
          *v13 = v14;
          ++v34;
          if (v31)
          {
            mlir::Diagnostic::operator<<(v32, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
      if (v31)
      {
        mlir::InFlightDiagnostic::report(&v31);
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
          v19 = v38;
          v20 = v37;
          if (v38 != v37)
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
            v20 = v37;
          }

          v38 = v18;
          operator delete(v20);
        }

        if (v33 != v36)
        {
          free(v33);
        }
      }
    }
  }

  return v5;
}

BOOL sub_10007BF60(uint64_t a1, const void *a2, size_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v3 = *(a1 + 16);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  if (v5 == 12 || v5 == 3)
  {
    if (*(v4 + 72) != a3)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v5 == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v12, 1, 1);
    return 0;
  }

  v9 = a2;
  v10 = a3;
  result = mlir::Token::isKeyword((v4 + 56));
  if (result)
  {
    v3 = *(a1 + 16);
    v4 = *(v3 + 8);
    a3 = v10;
    a2 = v9;
    if (*(v4 + 72) != v10)
    {
      return 0;
    }

LABEL_7:
    if (!a3 || !memcmp(*(v4 + 64), a2, a3))
    {
      *(v4 + 80) = *(v4 + 56);
      *(v4 + 96) = *(v4 + 72);
      mlir::Lexer::lexToken((*(v3 + 8) + 8), &v13);
      v11 = *(v3 + 8);
      *(v11 + 56) = v13;
      *(v11 + 72) = v14;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10007C0B8(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v7 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v3 = *(v2 + 8);
    a2 = v7;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v9);
    v6 = *(v2 + 8);
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    return 1;
  }

  return result;
}

BOOL sub_10007C150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *(v7 + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
LABEL_17:
      i = a3;
      goto LABEL_18;
    }
  }

  else
  {
    if (v9 == 2)
    {
      (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
      return 0;
    }

    result = mlir::Token::isKeyword((v8 + 56));
    if (!result)
    {
      return result;
    }

    v7 = *(a1 + 16);
    v8 = *(v7 + 8);
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    if (!a4)
    {
      goto LABEL_17;
    }
  }

  if (v11)
  {
    v13 = 16 * a4;
    for (i = a3; *(i + 8) != v11 || memcmp(*i, v12, v11); i += 16)
    {
      v13 -= 16;
      if (!v13)
      {
        return 0;
      }
    }
  }

  else
  {
    v18 = 16 * a4;
    for (i = a3; *(i + 8); i += 16)
    {
      v18 -= 16;
      if (!v18)
      {
        return 0;
      }
    }
  }

LABEL_18:
  if (i != a3 + 16 * a4)
  {
    *a2 = v12;
    a2[1] = v11;
    *(v8 + 80) = *(v8 + 56);
    *(v8 + 96) = *(v8 + 72);
    mlir::Lexer::lexToken((*(v7 + 8) + 8), &v19);
    v17 = *(v7 + 8);
    *(v17 + 56) = v19;
    *(v17 + 72) = v20;
    return 1;
  }

  return 0;
}

BOOL sub_10007C2DC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t sub_10007C314(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v8 = mlir::detail::Parser::parseAttribute(v6, a3);
    *a2 = v8;
    return v8 != 0;
  }

  else
  {

    return a4(a5);
  }
}

uint64_t sub_10007C390(uint64_t a1, mlir::NamedAttrList *a2)
{
  v2 = *(a1 + 16);
  if (*(*(v2 + 1) + 56) == 20)
  {
    return mlir::detail::Parser::parseAttributeDict(v2, a2);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10007C3B0(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t sub_10007C450(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v19 = *(v2 + 56);
  v20 = *(v2 + 72);
  if (v19 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v19, __p);
  v18 = 260;
  *&v16 = __p;
  *a2 = mlir::Builder::getStringAttr(v5, &v16, v6);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(v7 + 8) + 8), &v16);
  v9 = *(v7 + 8);
  *(v9 + 56) = v16;
  *(v9 + 72) = v17;
  v10 = *(*(a1[2] + 8) + 152);
  if (v10)
  {
    v11 = mlir::SymbolRefAttr::get(*a2);
    *&v16 = mlir::Token::getLocRange(&v19);
    *(&v16 + 1) = v12;
    mlir::AsmParserState::addUses(v10, v11, &v16, 1);
  }

  return 1;
}

BOOL sub_10007C5C4(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t sub_10007C5F8(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v7 = mlir::detail::Parser::parseType(v5);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a3(a4);
  }
}

uint64_t sub_10007C658(mlir::detail::Parser **a1, unsigned int *a2)
{
  if ((*(*a1 + 7))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007C6C4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2);
}

BOOL sub_10007C768(uint64_t a1, uint64_t **a2)
{
  v4 = *(a1 + 16);
  v7 = "expected ':'";
  v8 = 259;
  if ((mlir::detail::Parser::parseToken(v4, 15, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_10007C7E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  if (mlir::detail::Parser::parseToken(v4, 15, &v6))
  {
    return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007C858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 15)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v8);
  v6 = *(v2 + 8);
  *(v6 + 56) = v8;
  *(v6 + 72) = v9;
  return mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

void sub_10007C90C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (sub_10006E654(a2))
  {
    v6 = sub_10006E654(a2);
    __p = 0;
    v35 = 0;
    v36 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v29 = 257;
    mlir::detail::Parser::emitError(v7, v28, &__p);
    if (!__p)
    {
      goto LABEL_11;
    }

    LODWORD(v30) = 3;
    v31 = "dialect '";
    v32 = 9;
    v8 = &v30;
    v9 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v30 && v37 + 24 * v38 > &v30)
      {
        v26 = &v30 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v9 = v37;
        v8 = (v37 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v8 = &v30;
        v9 = v37;
      }
    }

    v10 = &v9[24 * v38];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v38;
    if (!__p)
    {
      goto LABEL_11;
    }

    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    v33 = 261;
    v30 = v12;
    v31 = v13;
    mlir::Diagnostic::operator<<(&v35, &v30);
    if (__p)
    {
      LODWORD(v30) = 3;
      v31 = "' does not expect resource handles";
      v32 = 34;
      v14 = &v30;
      v15 = v37;
      if (v38 >= v39)
      {
        if (v37 <= &v30 && v37 + 24 * v38 > &v30)
        {
          v27 = &v30 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v15 = v37;
          v14 = (v37 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
          v14 = &v30;
          v15 = v37;
        }
      }

      v16 = &v15[24 * v38];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v38;
      v18 = __p;
      *a3 = 0;
      a3[24] = 0;
      if (v18)
      {
        mlir::InFlightDiagnostic::report(&__p);
      }
    }

    else
    {
LABEL_11:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v46 == 1)
    {
      if (v45 != &v46)
      {
        free(v45);
      }

      v19 = v43;
      if (v43)
      {
        v20 = v44;
        v21 = v43;
        if (v44 != v43)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = v43;
        }

        v44 = v19;
        operator delete(v21);
      }

      v22 = v41;
      if (v41)
      {
        v23 = v42;
        v24 = v41;
        if (v42 != v41)
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
          v24 = v41;
        }

        v42 = v22;
        operator delete(v24);
      }

      if (v37 != v40)
      {
        free(v37);
      }
    }
  }
}

uint64_t sub_10007CC80(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(*(a1 + 16) + 8);
  sub_10006E7E0(v2 + 112, &v7, v8);
  result = v9;
  if (v9 == 1)
  {
    v4 = v7;
    v5 = *(v2 + 144);
    if (v5 >= *(v2 + 148))
    {
      v6 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v2 + 136, (v2 + 152), v5 + 1, 8);
      result = v6;
      LODWORD(v5) = *(v2 + 144);
    }

    *(*(v2 + 136) + 8 * v5) = v4;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t sub_10007CD18(uint64_t result)
{
  v1 = *(*(result + 16) + 8);
  v2 = v1[16].i32[0];
  if (v2)
  {
    v3 = v1[14];
    v4 = v1[18].u32[0];
    v5 = *(*&v1[17] + 8 * v4 - 8);
    v6 = v2 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v2 - 1);
    v8 = *(*&v3 + 8 * v7);
    if (v5 == v8)
    {
LABEL_3:
      *(*&v3 + 8 * v7) = -8192;
      v1[15] = vadd_s32(v1[15], 0x1FFFFFFFFLL);
    }

    else
    {
      v9 = 1;
      while (v8 != -4096)
      {
        v10 = v7 + v9++;
        v7 = v10 & v6;
        v8 = *(*&v3 + 8 * v7);
        if (v5 == v8)
        {
          goto LABEL_3;
        }
      }
    }

    v1[18].i32[0] = v4 - 1;
  }

  else
  {
    --v1[18].i32[0];
  }

  return result;
}

uint64_t sub_10007CDB8(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 16) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return sub_10006EC0C(a1, a2);
  }

  *a2 = "";
  a2[1] = 0;
  return 1;
}

uint64_t sub_10007CDEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t sub_10007CE38(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 65)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v18);
  v6 = *(v2 + 8);
  *(v6 + 56) = v18;
  *(v6 + 72) = v19;
  v21 = 0;
  v7 = *(a1 + 88);
  *&v18 = "expected '(' in location";
  v20 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v18))
  {
    v8 = *(a1 + 88);
    v9 = *(v8 + 8);
    if (*(v9 + 56) == 5 && ((v10 = *(v9 + 72)) == 0 || ((v11 = *(v9 + 64), v12 = *(a1 + 88), v13 = memchr(v11, 46, v10), v8 = v12, v13) ? (v14 = v13 - v11 == -1) : (v14 = 1), v14)))
    {
      if (!sub_10007E6E0(v8, &v21))
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v21) & 1) == 0)
    {
      return 0;
    }

    v15 = *(a1 + 88);
    *&v18 = "expected ')' in location";
    v20 = 259;
    if (mlir::detail::Parser::parseToken(v15, 28, &v18))
    {
      v16 = v21;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v16;
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10007CFA4@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(result + 40);
  if (v3)
  {
    v4 = (*(result + 32) + 16);
    v5 = 32 * v3;
    while (1)
    {
      v6 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v6;
      v5 -= 32;
      if (!v5)
      {
        *a3 = "";
        *(a3 + 8) = 0;
        *(a3 + 16) = -1;
        return result;
      }
    }

    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    if (v8)
    {
      ++v7;
    }

    *a3 = v7;
    *(a3 + 8) = v8 - (v8 != 0);
    *(a3 + 16) = a2;
  }

  else
  {
    *a3 = "";
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

uint64_t sub_10007D02C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = (v1 - 1) & 0x7FFFFFFFFFFFFFFLL;
  if (!v3)
  {
    result = 0;
    v8 = v2;
LABEL_9:
    v14 = v2 + 32 * v1;
    do
    {
      result += *(v8 + 16);
      v8 += 32;
    }

    while (v8 != v14);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 + 1;
  v7 = (v3 + 1) & 0xFFFFFFFFFFFFFFELL;
  v8 = v2 + 32 * v7;
  v9 = (v2 + 48);
  v10 = v7;
  do
  {
    v11 = *(v9 - 8);
    v12 = *v9;
    v9 += 16;
    v4 += v11;
    v5 += v12;
    v10 -= 2;
  }

  while (v10);
  result = v5 + v4;
  if (v6 != v7)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10007D0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v11 = *(v4 + 72);
  v9 = *(v3 + 400);
  v10 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  v6 = sub_100078C48(v3);
  if (v6)
  {
    v7 = *(*(v3 + 8) + 152);
    if (v7)
    {
      mlir::Token::getLocRange(&v10);
      mlir::Token::getEndLoc((*(v3 + 8) + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v7, v6);
    }
  }

  if (v9)
  {
    *(v3 + 400) = v9;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v6;
}

BOOL sub_10007D19C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v10 = *(a1 + 88);
  v18 = *a3;
  v19 = *(a3 + 2);
  v16 = *a4;
  v17 = *(a4 + 2);
  v14 = *a5;
  v15 = *(a5 + 2);
  v12 = *a6;
  v13 = *(a6 + 2);
  return sub_10007ED1C(v10, a2, &v18, &v16, &v14, &v12, a7, a8, a9, a10);
}

uint64_t sub_10007D218(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  if (!sub_100080924(*(a1 + 88), &v6, a3))
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t sub_10007D288(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[11] + 8);
  v5 = *(v3 + 56);
  v4 = v3 + 56;
  if (v5 == 6)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  v6 = a1;
  v7 = a2;
  v8 = a3;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v4, 6);
  a2 = v7;
  a3 = v8;
  v10 = isCodeCompletionFor;
  a1 = v6;
  if (v10)
  {
    return (*(*a1 + 704))(a1, a2, a3) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10007D340(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v46 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v47 = *(v9 + 56), v48 = *(v9 + 72), v47 == 6) || mlir::Token::isCodeCompletionFor(&v47, 6))
  {
    v43[0] = a1;
    v43[1] = a2;
    v43[2] = &v46;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    if (((*(*a1 + 392))(a1, a3, sub_100083858, v43, " in operand list", 16) & 1) == 0)
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v44[0] = "expected ";
      v45 = 259;
      (*(*a1 + 24))(v49, a1, Loc, v44);
      if (v49[0])
      {
        LODWORD(v47) = 2;
        *(&v47 + 1) = a5;
        v11 = &v47;
        v12 = v50;
        if (v51 >= v52)
        {
          if (v50 <= &v47 && v50 + 24 * v51 > &v47)
          {
            v41 = &v47 - v50;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v12 = v50;
            v11 = v50 + v41;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
            v11 = &v47;
            v12 = v50;
          }
        }

        v13 = &v12[24 * v51];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        v15 = ++v51;
        if (v49[0])
        {
          LODWORD(v47) = 3;
          *(&v47 + 1) = " operands";
          v48 = 9;
          v16 = &v47;
          v17 = v50;
          if (v15 >= v52)
          {
            if (v50 <= &v47 && v50 + 24 * v15 > &v47)
            {
              v42 = &v47 - v50;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v17 = v50;
              v16 = v50 + v42;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v15 + 1, 24);
              v16 = &v47;
              v17 = v50;
            }
          }

          v18 = &v17[24 * v51];
          v19 = *v16;
          *(v18 + 2) = *(v16 + 2);
          *v18 = v19;
          ++v51;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
      v21 = result;
      if (v49[0])
      {
        mlir::InFlightDiagnostic::report(v49);
        result = v21;
      }

      if (v59 == 1)
      {
        if (v58 != &v59)
        {
          free(v58);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v57;
          v24 = __p;
          if (v57 != __p)
          {
            do
            {
              v23 = sub_10005BEF4(v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v57 = v22;
          operator delete(v24);
        }

        v25 = v54;
        result = v21;
        if (!v54)
        {
          goto LABEL_67;
        }

        v26 = v55;
        v27 = v54;
        if (v55 == v54)
        {
LABEL_66:
          v55 = v25;
          operator delete(v27);
          result = v21;
LABEL_67:
          if (v50 != v53)
          {
            free(v50);
            return v21;
          }

          return result;
        }

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
LABEL_65:
        v27 = v54;
        goto LABEL_66;
      }

      return result;
    }

    return 1;
  }

  if ((a5 + 1) <= 1)
  {
    return 1;
  }

  if ((v47 - 21) > 1)
  {
    v35 = a1[11];
    v44[0] = "expected operand";
    v45 = 259;
    mlir::detail::Parser::emitWrongTokenError(v35, v44, v49);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
      }

      v36 = __p;
      if (__p)
      {
        v37 = v57;
        v38 = __p;
        if (v57 != __p)
        {
          do
          {
            v37 = sub_10005BEF4(v37 - 1);
          }

          while (v37 != v36);
          v38 = __p;
        }

        v57 = v36;
        operator delete(v38);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v39 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
      }

      do
      {
        v40 = *--v39;
        *v39 = 0;
        if (v40)
        {
          operator delete[]();
        }
      }

      while (v39 != v25);
      goto LABEL_65;
    }
  }

  else
  {
    v29 = a1[11];
    v44[0] = "unexpected delimiter";
    v45 = 259;
    mlir::detail::Parser::emitError(v29, v44, v49);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v49);
    v21 = result;
    if (v49[0])
    {
      mlir::InFlightDiagnostic::report(v49);
      result = v21;
    }

    if (v59)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v21;
      }

      v30 = __p;
      if (__p)
      {
        v31 = v57;
        v32 = __p;
        if (v57 != __p)
        {
          do
          {
            v31 = sub_10005BEF4(v31 - 1);
          }

          while (v31 != v30);
          v32 = __p;
        }

        v57 = v30;
        operator delete(v32);
        result = v21;
      }

      v25 = v54;
      if (!v54)
      {
        goto LABEL_67;
      }

      v33 = v55;
      v27 = v54;
      if (v55 == v54)
      {
        goto LABEL_66;
      }

      do
      {
        v34 = *--v33;
        *v33 = 0;
        if (v34)
        {
          operator delete[]();
        }
      }

      while (v33 != v25);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t sub_10007D968(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  result = sub_10008028C(v5, v10, a3);
  if (result)
  {
    v8 = *(a4 + 8);
    if (v8 >= *(a4 + 12))
    {
      v9 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, (a4 + 16), v8 + 1, 8);
      result = v9;
      LODWORD(v8) = *(a4 + 8);
    }

    *(*a4 + 8 * v8) = result;
    ++*(a4 + 8);
    return 1;
  }

  return result;
}

uint64_t sub_10007D9F0(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, const llvm::Twine *a5, uint64_t a6, int a7)
{
  v32 = v34;
  v33 = 0x200000000;
  v28[2] = &v32;
  __src = v31;
  v30 = &_mh_execute_header;
  v28[0] = a1;
  v28[1] = &__src;
  v27 = 0;
  if (mlir::detail::Parser::parseAffineMapOfSSAIds(*(a1 + 88), &v27, sub_1000839E4, v28, a7))
  {
    if (v27)
    {
      v13 = mlir::AffineMapAttr::get(v27);
      *a3 = v13;
      NamedAttr = mlir::Builder::getNamedAttr(*(a1 + 88), a4, a5, v13);
      mlir::NamedAttrList::push_back(a6, NamedAttr, v15);
    }

    v16 = v32;
    v17 = v33;
    *(a2 + 8) = 0;
    if (v17 <= *(a2 + 12))
    {
      if (!v17)
      {
        v21 = 0;
LABEL_11:
        v22 = (v21 + v17);
        *(a2 + 8) = v22;
        v23 = __src;
        v24 = v30;
        v25 = v30 + v22;
        if (v25 > *(a2 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v25, 32);
          LODWORD(v22) = *(a2 + 8);
        }

        if (v24)
        {
          memcpy((*a2 + 32 * v22), v23, 32 * v24);
          LODWORD(v22) = *(a2 + 8);
        }

        *(a2 + 8) = v22 + v24;
        v19 = 1;
        v20 = __src;
        if (__src != v31)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v18 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v17, 32);
      v18 = *(a2 + 8);
    }

    memcpy((*a2 + 32 * v18), v16, 32 * v17);
    v21 = *(a2 + 8);
    goto LABEL_11;
  }

  v19 = 0;
  v20 = __src;
  if (__src != v31)
  {
LABEL_16:
    free(v20);
  }

LABEL_17:
  if (v32 != v34)
  {
    free(v32);
  }

  return v19;
}

BOOL sub_10007DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
  return mlir::detail::Parser::parseAffineExprOfSSAIds(*(a1 + 88), a4, sub_100083B20, v5);
}

uint64_t sub_10007DC50(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
  v12[0] = v13;
  v12[1] = 0x400000000;
  v13[8] = 4;
  if ((*(*a1 + 704))(a1, a2, 0) & 1) != 0 && (!a3 || ((*(*a1 + 576))(a1, a2 + 32)) && (!a4 || ((*(*a1 + 488))(a1, v12)) && ((*(*a1 + 656))(a1, a2 + 48))
  {
    Context = mlir::AsmParser::getContext(a1);
    *(a2 + 40) = mlir::NamedAttrList::getDictionary(v12, Context);
    v9 = 1;
    v10 = v12[0];
    if (v12[0] == v13)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = 0;
  v10 = v12[0];
  if (v12[0] != v13)
  {
LABEL_10:
    free(v10);
  }

  return v9;
}

uint64_t sub_10007DE08(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 6)
  {
    return (*(*a1 + 752))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007DE80(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = a4;
  v7 = a5;
  if (!a3 && *(*(a1[11] + 8) + 56) != 6)
  {
    return 1;
  }

  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v8;
  v6[3] = &v7;
  return (*(*a1 + 392))(a1, a3, sub_100083C5C, v6, " in argument list", 17);
}

uint64_t sub_10007DF50(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 20)
  {
    return (*(*a1 + 776))(a1) | 0x100u;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007DFC8(uint64_t a1)
{
  if (*(*(*(a1 + 88) + 8) + 56) == 20)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_10007E0E8(void *a1, uint64_t a2)
{
  v2 = *(a1[11] + 8);
  v4 = *(v2 + 56);
  v3 = v2 + 56;
  if (v4 == 7)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  v5 = a1;
  v6 = a2;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v3, 7);
  a2 = v6;
  v8 = isCodeCompletionFor;
  a1 = v5;
  if (v8)
  {
    return (*(*a1 + 800))(a1, a2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10007E18C(void *a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 800))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v41 = v43;
  v42 = 0x400000000;
  if (sub_10007F970(v5, &v41))
  {
    if (v42)
    {
      v38 = v40;
      v39 = 0x400000000;
      *&v33 = "expected ':' in operand list";
      LOWORD(v35) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v33) & 1) != 0 && (mlir::detail::Parser::parseTypeListNoParens(v5, &v38))
      {
        v6 = v42;
        if (v42 == v39)
        {
          if (*(a3 + 12) < v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v42, 8);
            v6 = v42;
          }

          if (v6)
          {
            v7 = 0;
            v8 = 0;
            v9 = 32 * v6;
            while (1)
            {
              v10 = *&v41[v8 + 16];
              v33 = *&v41[v8];
              v34 = v10;
              v11 = sub_10008028C(v5, &v33, *(v38 + v7));
              v12 = v11 == 0;
              if (!v11)
              {
                break;
              }

              v13 = *(a3 + 8);
              if (v13 >= *(a3 + 12))
              {
                v14 = v11;
                llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v13 + 1, 8);
                v11 = v14;
                v13 = *(a3 + 8);
              }

              *(*a3 + 8 * v13) = v11;
              ++*(a3 + 8);
              v8 += 32;
              v7 += 8;
              if (v9 == v8)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v12 = 0;
          }
        }

        else
        {
          v28 = "expected ";
          v29 = 259;
          mlir::detail::Parser::emitError(v5, &v28, &v33);
          if (v33)
          {
            v30 = 5;
            v31 = v42;
            v16 = &v30;
            v17 = *(&v34 + 1);
            if (v35 >= v36)
            {
              if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v35 > &v30)
              {
                v26 = &v30 - *(&v34 + 1);
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v17 = *(&v34 + 1);
                v16 = &v26[*(&v34 + 1)];
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v35 + 1, 24);
                v16 = &v30;
                v17 = *(&v34 + 1);
              }
            }

            v18 = v17 + 24 * v35;
            v19 = *v16;
            *(v18 + 16) = *(v16 + 2);
            *v18 = v19;
            v20 = ++v35;
            if (v33)
            {
              v30 = 3;
              v31 = " types to match operand list";
              v32 = 28;
              v21 = &v30;
              v22 = *(&v34 + 1);
              if (v20 >= v36)
              {
                if (*(&v34 + 1) <= &v30 && *(&v34 + 1) + 24 * v20 > &v30)
                {
                  v27 = &v30 - *(&v34 + 1);
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v22 = *(&v34 + 1);
                  v21 = &v27[*(&v34 + 1)];
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v34 + 8, v37, v20 + 1, 24);
                  v21 = &v30;
                  v22 = *(&v34 + 1);
                }
              }

              v23 = v22 + 24 * v35;
              v24 = *v21;
              *(v23 + 16) = *(v21 + 2);
              *v23 = v24;
              ++v35;
            }
          }

          v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v33);
          if (v33)
          {
            mlir::InFlightDiagnostic::report(&v33);
          }

          if (v37[160] == 1)
          {
            sub_10005BE10(&v33 + 1);
          }

          v12 = !v25;
        }
      }

      else
      {
        v12 = 1;
      }

      if (v38 != v40)
      {
        free(v38);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  if (v41 != v43)
  {
    free(v41);
  }

  return (v12 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
}

uint64_t sub_10007E634(mlir::detail::Parser **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 36))(a1))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v6 = 1;
    v7 = mlir::detail::Parser::parseCommaSeparatedListUntil(a1[11], 28, sub_100083DF4, v9, 1);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

BOOL sub_10007E6E0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v61 = *(v4 + 56);
  v62 = *(v4 + 72);
  v5 = v62;
  *(v4 + 80) = v61;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v66);
  v6 = *(a1 + 8);
  *(v6 + 56) = v66;
  *(v6 + 72) = v67;
  if (v62)
  {
    v7 = (*(&v61 + 1) + 1);
  }

  else
  {
    v7 = *(&v61 + 1);
  }

  v8 = v62 - (v62 != 0);
  v9 = *(a1 + 8);
  v10 = *(v9 + 152);
  if (v10)
  {
    LocRange = mlir::Token::getLocRange(&v61);
    mlir::AsmParserState::addAttrAliasUses(v10, v7, v8, LocRange, v12);
    v9 = *(a1 + 8);
  }

  v13 = *(v9 + 104);
  v14 = llvm::StringMapImpl::hash(v7, v8);
  Key = llvm::StringMapImpl::FindKey(v13, v7, v8, v14);
  if (Key == -1 || Key == *(v13 + 8) || (v17 = *(*v13 + 8 * Key), (v18 = *(v17 + 8)) == 0))
  {
    v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v44 = mlir::UnknownLoc::get(***(a1 + 8), v16);
    *a2 = mlir::OpaqueLoc::get(v43, &unk_1002E53C0, v44);
    Loc = mlir::Token::getLoc(&v61);
    v46 = *(a1 + 368);
    v47 = *(a1 + 376);
    if (v46 >= v47)
    {
      v50 = *(a1 + 360);
      v51 = 0xAAAAAAAAAAAAAAABLL * ((v46 - v50) >> 3) + 1;
      if (v51 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100003FC0();
      }

      v52 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v50) >> 3);
      if (2 * v52 > v51)
      {
        v51 = 2 * v52;
      }

      if (v52 >= 0x555555555555555)
      {
        v53 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        if (v53 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_100003FC0();
      }

      v54 = (8 * ((v46 - v50) >> 3));
      *v54 = Loc;
      v54[1] = v7;
      v54[2] = v8;
      v48 = v54 + 3;
      v55 = v54 - (v46 - v50);
      memcpy(v55, v50, v46 - v50);
      *(a1 + 360) = v55;
      *(a1 + 368) = v48;
      *(a1 + 376) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v46 = Loc;
      v46[1] = v7;
      v48 = v46 + 3;
      v46[2] = v8;
    }

    *(a1 + 368) = v48;
    return 1;
  }

  if (mlir::LocationAttr::classof(*(v17 + 8)))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  if (v19)
  {
    return 1;
  }

  v20 = mlir::Token::getLoc(&v61);
  v60 = 257;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v20);
  mlir::emitError(EncodedSourceLocation, v59, &v66);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v66);
  }

  if (v66)
  {
    v63 = 3;
    v64 = "expected location, but found '";
    v65 = 30;
    v22 = &v63;
    v23 = v68;
    if (v69 >= v70)
    {
      if (v68 <= &v63 && v68 + 24 * v69 > &v63)
      {
        v56 = &v63 - v68;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v23 = v68;
        v22 = (v68 + v56);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
        v22 = &v63;
        v23 = v68;
      }
    }

    v24 = &v23[24 * v69];
    v25 = *v22;
    *(v24 + 2) = *(v22 + 2);
    *v24 = v25;
    ++v69;
    if (v66)
    {
      v26 = &v63;
      mlir::DiagnosticArgument::DiagnosticArgument(&v63, v18);
      v27 = v68;
      if (v69 >= v70)
      {
        if (v68 <= &v63 && v68 + 24 * v69 > &v63)
        {
          v57 = &v63 - v68;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v27 = v68;
          v26 = (v68 + v57);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v69 + 1, 24);
          v26 = &v63;
          v27 = v68;
        }
      }

      v28 = &v27[24 * v69];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      v30 = ++v69;
      if (v66)
      {
        v63 = 3;
        v64 = "'";
        v65 = 1;
        v31 = &v63;
        v32 = v68;
        if (v30 >= v70)
        {
          if (v68 <= &v63 && v68 + 24 * v30 > &v63)
          {
            v58 = &v63 - v68;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v32 = v68;
            v31 = (v68 + v58);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v68, v71, v30 + 1, 24);
            v31 = &v63;
            v32 = v68;
          }
        }

        v33 = &v32[24 * v69];
        v34 = *v31;
        *(v33 + 2) = *(v31 + 2);
        *v33 = v34;
        ++v69;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v66);
  v36 = result;
  if (v66)
  {
    mlir::InFlightDiagnostic::report(&v66);
    result = v36;
  }

  if (v77 == 1)
  {
    if (v76 != &v77)
    {
      free(v76);
      result = v36;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v75;
      v39 = __p;
      if (v75 != __p)
      {
        do
        {
          v38 = sub_10005BEF4(v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v75 = v37;
      operator delete(v39);
      result = v36;
    }

    v40 = v72;
    if (v72)
    {
      v41 = v73;
      v42 = v72;
      if (v73 != v72)
      {
        do
        {
          v49 = *--v41;
          *v41 = 0;
          if (v49)
          {
            operator delete[]();
          }
        }

        while (v41 != v40);
        v42 = v72;
      }

      v73 = v40;
      operator delete(v42);
      result = v36;
    }

    if (v68 != v71)
    {
      free(v68);
      return v36;
    }
  }

  return result;
}

BOOL sub_10007ED1C(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v93 = a9;
  v94 = a10;
  v113 = v115;
  v114 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v98, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v98, *(&v98 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v98 = "expected '(' to start operand list";
    LOWORD(v100) = 259;
    if ((mlir::detail::Parser::parseToken(a1, 21, &v98) & 1) == 0)
    {
      goto LABEL_59;
    }

    if ((sub_10007F970(a1, &v113) & 1) == 0)
    {
      goto LABEL_59;
    }

    v109 = "expected ')' to end operand list";
    v112 = 259;
    if ((mlir::detail::Parser::parseToken(a1, 28, &v109) & 1) == 0)
    {
      goto LABEL_59;
    }

    v18 = v113;
    v19 = v114;
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = v18;
    *(a3 + 8) = v19;
    a4 = v17;
    if (*(v17 + 16))
    {
      goto LABEL_3;
    }
  }

  if (*(*(a1 + 1) + 56) == 22)
  {
    {
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10029979C();
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v109 = "successors in non-terminator";
      v112 = 259;
      mlir::detail::Parser::emitError(a1, &v109, &v98);
      v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
      if (v98)
      {
        mlir::InFlightDiagnostic::report(&v98);
      }

      if (v108[0] != 1)
      {
        goto LABEL_60;
      }

      if (v107 != v108)
      {
        free(v107);
      }

      v84 = __p;
      if (__p)
      {
        v85 = v106;
        v86 = __p;
        if (v106 != __p)
        {
          do
          {
            v85 = sub_10005BEF4(v85 - 1);
          }

          while (v85 != v84);
          v86 = __p;
        }

        v106 = v84;
        operator delete(v86);
      }

      v80 = v103;
      if (v103)
      {
        v87 = v104;
        v82 = v103;
        if (v104 != v103)
        {
          do
          {
            v88 = *--v87;
            *v87 = 0;
            if (v88)
            {
              operator delete[]();
            }
          }

          while (v87 != v80);
          goto LABEL_108;
        }

LABEL_109:
        v104 = v80;
        operator delete(v82);
      }

LABEL_110:
      if (v99[1] != v102)
      {
        free(v99[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v109 = v111;
    v110 = 0x200000000;
    *&v98 = "expected '['";
    LOWORD(v100) = 259;
    if (mlir::detail::Parser::parseToken(a1, 22, &v98) & 1) != 0 && (*&v98 = a1, *(&v98 + 1) = &v109, (mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, sub_10008105C, &v98, 0)))
    {
      mlir::BlockRange::BlockRange(&v98, v109, v110);
      mlir::OperationState::addSuccessors(a2, v98, *(&v98 + 1));
      v21 = 0;
      v22 = v109;
      if (v109 == v111)
      {
LABEL_20:
        if (v21)
        {
          goto LABEL_59;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v21 = 1;
      v22 = v109;
      if (v109 == v111)
      {
        goto LABEL_20;
      }
    }

    free(v22);
    goto LABEL_20;
  }

LABEL_21:
  if (a8)
  {
    *(a2 + 248) = a7;
  }

  else
  {
    v23 = *(a1 + 1);
    if (*(v23 + 56) == 23)
    {
      *(v23 + 80) = *(v23 + 56);
      *(v23 + 96) = *(v23 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
      v24 = *(a1 + 1);
      *(v24 + 56) = v98;
      *(v24 + 72) = v99[0];
      v25 = mlir::detail::Parser::parseAttribute(a1, 0);
      *(a2 + 248) = v25;
      if (!v25)
      {
        goto LABEL_59;
      }

      *&v98 = "expected '>' to close properties";
      LOWORD(v100) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v98) & 1) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v26 = *(a1 + 1);
    if (*(v26 + 56) == 21)
    {
      *(v26 + 80) = *(v26 + 56);
      *(v26 + 96) = *(v26 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v98);
      v27 = *(a1 + 1);
      *(v27 + 56) = v98;
      *(v27 + 72) = v99[0];
      operator new();
    }
  }

  if (*(a6 + 16))
  {
    v29 = *a6;
    v28 = *(a6 + 8);
    *(a2 + 192) = 0;
    v30 = *(a2 + 120);
    if (v28 + v30 > *(a2 + 124))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v28 + v30, 16);
      LODWORD(v30) = *(a2 + 120);
    }

    if (v28)
    {
      memcpy((*(a2 + 112) + 16 * v30), v29, 16 * v28);
      LODWORD(v30) = *(a2 + 120);
    }

    *(a2 + 120) = v30 + v28;
  }

  else if (*(*(a1 + 1) + 56) == 20 && (mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)) & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v94)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v98 = "expected ':' followed by operation type";
  LOWORD(v100) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, &v98) & 1) == 0 || (Loc = mlir::Token::getLoc((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc), (v53 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_59:
    v50 = 0;
    goto LABEL_60;
  }

  if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v109 = "expected function type";
    v112 = 259;
    mlir::emitError(EncodedSourceLocation, &v109, &v98);
    v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108[0] == 1)
    {
      sub_10005BE10(&v98 + 1);
    }

    goto LABEL_60;
  }

  if ((v94 & 1) == 0)
  {
    LOBYTE(v94) = 1;
  }

  v93 = v53;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v93);
  v34 = v33;
  v35 = 8 * v33;
  v36 = *(a2 + 72);
  v37 = v36 + ((8 * v33) >> 3);
  if (v37 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v37, 8);
    LODWORD(v36) = *(a2 + 72);
  }

  if (v34)
  {
    memcpy((*(a2 + 64) + 8 * v36), Results, v35);
    LODWORD(v36) = *(a2 + 72);
  }

  *(a2 + 72) = v36 + (v35 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v93);
  v40 = v39;
  v41 = *(a3 + 8);
  if (v39 != v41)
  {
    v55 = v41 == 1;
    v56 = "s";
    if (v55)
    {
      v56 = "";
    }

    v57 = *v56;
    v109 = "expected ";
    v112 = 259;
    mlir::emitError(EncodedSourceLocation, &v109, &v98);
    if (v98)
    {
      v58 = *(a3 + 8);
      v95 = 5;
      v96 = v58;
      v59 = &v95;
      v60 = v99[1];
      if (v100 >= v101)
      {
        if (v99[1] <= &v95 && v99[1] + 24 * v100 > &v95)
        {
          v89 = &v95 - v99[1];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
          v60 = v99[1];
          v59 = (v99[1] + v89);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
          v59 = &v95;
          v60 = v99[1];
        }
      }

      v61 = &v60[24 * v100];
      v62 = *v59;
      *(v61 + 2) = *(v59 + 2);
      *v61 = v62;
      v63 = ++v100;
      if (v98)
      {
        v95 = 3;
        v96 = " operand type";
        v97 = 13;
        v64 = &v95;
        v65 = v99[1];
        if (v63 >= v101)
        {
          if (v99[1] <= &v95 && v99[1] + 24 * v63 > &v95)
          {
            v90 = &v95 - v99[1];
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v63 + 1, 24);
            v65 = v99[1];
            v64 = (v99[1] + v90);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v63 + 1, 24);
            v64 = &v95;
            v65 = v99[1];
          }
        }

        v66 = &v65[24 * v100];
        v67 = *v64;
        *(v66 + 2) = *(v64 + 2);
        *v66 = v67;
        ++v100;
        if (v98)
        {
          mlir::Diagnostic::operator<<(&v98 + 8, v57);
          if (v98)
          {
            v95 = 3;
            v96 = " but had ";
            v97 = 9;
            v68 = &v95;
            v69 = v99[1];
            if (v100 >= v101)
            {
              if (v99[1] <= &v95 && v99[1] + 24 * v100 > &v95)
              {
                v91 = &v95 - v99[1];
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
                v69 = v99[1];
                v68 = (v99[1] + v91);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v100 + 1, 24);
                v68 = &v95;
                v69 = v99[1];
              }
            }

            v70 = &v69[24 * v100];
            v71 = *v68;
            *(v70 + 2) = *(v68 + 2);
            *v70 = v71;
            v72 = ++v100;
            if (v98)
            {
              v95 = 5;
              v96 = v40;
              v73 = &v95;
              v74 = v99[1];
              if (v72 >= v101)
              {
                if (v99[1] <= &v95 && v99[1] + 24 * v72 > &v95)
                {
                  v92 = &v95 - v99[1];
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v72 + 1, 24);
                  v74 = v99[1];
                  v73 = (v99[1] + v92);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v99[1], v102, v72 + 1, 24);
                  v73 = &v95;
                  v74 = v99[1];
                }
              }

              v75 = &v74[24 * v100];
              v76 = *v73;
              *(v75 + 2) = *(v73 + 2);
              *v75 = v76;
              ++v100;
            }
          }
        }
      }
    }

    v50 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v98);
    if (v98)
    {
      mlir::InFlightDiagnostic::report(&v98);
    }

    if (v108[0] != 1)
    {
      goto LABEL_60;
    }

    if (v107 != v108)
    {
      free(v107);
    }

    v77 = __p;
    if (__p)
    {
      v78 = v106;
      v79 = __p;
      if (v106 != __p)
      {
        do
        {
          v78 = sub_10005BEF4(v78 - 1);
        }

        while (v78 != v77);
        v79 = __p;
      }

      v106 = v77;
      operator delete(v79);
    }

    v80 = v103;
    if (v103)
    {
      v81 = v104;
      v82 = v103;
      if (v104 != v103)
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
LABEL_108:
        v82 = v103;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v39)
  {
    v42 = Inputs;
    v43 = 0;
    v44 = 32 * v39;
    while (1)
    {
      v45 = (*a3 + v43);
      v46 = v45[1];
      v98 = *v45;
      *v99 = v46;
      v47 = sub_10008028C(a1, &v98, *v42);
      v48 = *(a2 + 24);
      if (v48 >= *(a2 + 28))
      {
        v51 = v47;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 16, (a2 + 32), v48 + 1, 8);
        v47 = v51;
        v48 = *(a2 + 24);
      }

      *(*(a2 + 16) + 8 * v48) = v47;
      v49 = *(a2 + 24) + 1;
      *(a2 + 24) = v49;
      if (!*(*(a2 + 16) + 8 * v49 - 8))
      {
        goto LABEL_59;
      }

      v43 += 32;
      ++v42;
      v50 = 1;
      if (v44 == v43)
      {
        goto LABEL_60;
      }
    }
  }

  v50 = 1;
LABEL_60:
  if (v113 != v115)
  {
    free(v113);
  }

  return v50;
}

uint64_t sub_10007F970(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v6 = *(v4 + 56);
  v5 = v4 + 56;
  if (v6 != 6 && !mlir::Token::isCodeCompletionFor(v5, 6))
  {
    return 1;
  }

  v24 = 0uLL;
  v25 = 0;
  if (sub_100080924(a1, &v24, 1))
  {
    v7 = *(a2 + 8);
    v8 = *a2;
    v9 = &v24;
    if (v7 >= *(a2 + 12))
    {
      if (v8 <= &v24 && v8 + 32 * v7 > &v24)
      {
        v23 = &v24 - v8;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v23[*a2];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v7 + 1, 32);
        v8 = *a2;
        v9 = &v24;
      }
    }

    v10 = (v8 + 32 * *(a2 + 8));
    v11 = *(v9 + 1);
    *v10 = *v9;
    v10[1] = v11;
    ++*(a2 + 8);
    v12 = *(a1 + 8);
    v13 = (v12 + 56);
    if (*(v12 + 56) == 16)
    {
      while (1)
      {
        v14 = *v13;
        *(v12 + 96) = *(v13 + 2);
        *(v12 + 80) = v14;
        mlir::Lexer::lexToken((*(a1 + 8) + 8), &v24);
        v15 = *(a1 + 8);
        *(v15 + 56) = v24;
        *(v15 + 72) = v25;
        v24 = 0uLL;
        v25 = 0;
        if (!sub_100080924(a1, &v24, 1))
        {
          return 0;
        }

        v16 = *(a2 + 8);
        v17 = *a2;
        if (v16 >= *(a2 + 12))
        {
          if (v17 <= &v24 && v17 + 32 * v16 > &v24)
          {
            v21 = &v24 - v17;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
            v17 = *a2;
            v18 = &v21[*a2];
            goto LABEL_9;
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 32);
          v17 = *a2;
        }

        v18 = &v24;
LABEL_9:
        v19 = (v17 + 32 * *(a2 + 8));
        v20 = *(v18 + 1);
        *v19 = *v18;
        v19[1] = v20;
        ++*(a2 + 8);
        v12 = *(a1 + 8);
        v13 = (v12 + 56);
        if (*(v12 + 56) != 16)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10007FB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = *(a1 + 8);
  v15 = *(v8 + 56);
  v16 = *(v8 + 72);
  *&v17 = "expected '{' to begin a region";
  v19 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 20, &v17) & 1) == 0)
  {
    return 0;
  }

  v9 = *(*(a1 + 8) + 152);
  if (v9)
  {
    mlir::AsmParserState::startRegionDefinition(v9);
  }

  if (a4 || (v10 = *(a1 + 8), *(v10 + 56) != 27))
  {
    mlir::Token::getLoc(&v15);
    v14 = *(a1 + 400);
    sub_100077C9C(a1, a5);
    operator new();
  }

  *(v10 + 80) = *(v10 + 56);
  *(v10 + 96) = *(v10 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v17);
  v12 = *(a1 + 8);
  *(v12 + 56) = v17;
  *(v12 + 72) = v18[0];
  v13 = *(*(a1 + 8) + 152);
  if (v13)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v13);
  }

  return 1;
}

uint64_t sub_10008028C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v6 = sub_100082A8C((*(a1 + 16) + 88 * *(a1 + 24) - 88), *(a2 + 8), *(a2 + 16));
  v7 = v6;
  v8 = *(a2 + 24);
  v9 = *(v6 + 8);
  if (v9 <= v8)
  {
    v15 = (v8 + 1);
    if (v9 != v15)
    {
      if (v9 <= v15)
      {
        if (*(v6 + 12) < v15)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v15, 16);
          v9 = *(v7 + 8);
        }

        if (v9 != v15)
        {
          bzero((*v7 + 16 * v9), 16 * (v15 - v9));
        }
      }

      *(v7 + 8) = v15;
    }
  }

  else
  {
    v10 = *(*v6 + 16 * v8);
    if (v10)
    {
      if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v11 = *a2;
        v55[0] = "use of value '";
        v56 = 259;
        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v11);
        mlir::emitError(EncodedSourceLocation, v55, &v57);
        if (*(*(a1 + 8) + 56) == 1)
        {
          mlir::InFlightDiagnostic::abandon(&v57);
        }

        v64[0] = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (v57)
        {
          v63 = 261;
          v13 = *(a2 + 16);
          v61 = *(a2 + 8);
          v62 = v13;
          mlir::Diagnostic::operator<<(&v58, &v61);
          sub_100083004(&v58, "' expects different type than prior uses: ", &v43, " vs ", v64);
        }

        v14 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v7 + 16 * *(a2 + 24) + 8));
        mlir::Diagnostic::attachNote(&v58, v14, 1);
      }

LABEL_22:
      v30 = *(*(a1 + 8) + 152);
      if (v30)
      {
        mlir::AsmParserState::addUses(v30, v10, a2, 1);
      }

      return v10;
    }
  }

  v16 = **v7;
  if (!v16)
  {
LABEL_19:
    v24 = *a2;
    v45 = a3;
    mlir::OperationName::OperationName(&v44, "builtin.unrealized_conversion_cast", 34, ***(a1 + 8));
    v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v24);
    v26 = v44;
    mlir::TypeRange::TypeRange(&v61, &v45, 1uLL);
    mlir::ValueRange::ValueRange(v55, 0, 0);
    v57 = v59;
    v58 = 0x400000000;
    v60 = 4;
    mlir::BlockRange::BlockRange(v64, 0, 0);
    v27 = mlir::Operation::create(v25, v26, v61, v62, v55[0], v55[1], &v57, 0, v64[0], v64[1], 0);
    if (v57 != v59)
    {
      free(v57);
    }

    v10 = v27 - 16;
    v57 = (v27 - 16);
    *sub_100083360(a1 + 336, &v57) = v24;
    v28 = *a2;
    v29 = (*v7 + 16 * *(a2 + 24));
    *v29 = v27 - 16;
    v29[1] = v28;
    goto LABEL_22;
  }

  v17 = *(a1 + 352);
  if (v17)
  {
    v18 = *(a1 + 336);
    v19 = 0x9DDFEA08EB382D69 * ((8 * **v7 - 0xAE502812AA7333) ^ HIDWORD(**v7));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v19 >> 47) ^ v19);
    v21 = v17 - 1;
    v22 = v21 & (-348639895 * ((v20 >> 47) ^ v20));
    v23 = *(v18 + 16 * v22);
    if (v23 == v16)
    {
      goto LABEL_19;
    }

    v32 = 1;
    while (v23 != -4096)
    {
      v33 = v22 + v32++;
      v22 = v33 & v21;
      v23 = *(v18 + 16 * v22);
      if (v23 == v16)
      {
        goto LABEL_19;
      }
    }
  }

  v34 = *a2;
  v57 = "reference to invalid result number";
  v59[8] = 259;
  v35 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v34);
  mlir::emitError(v35, &v57, v46);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(v46);
  }

  if (v46[0])
  {
    mlir::InFlightDiagnostic::report(v46);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v36 = v51;
    if (v51)
    {
      v37 = v52;
      v38 = v51;
      if (v52 != v51)
      {
        do
        {
          v37 = sub_10005BEF4(v37 - 1);
        }

        while (v37 != v36);
        v38 = v51;
      }

      v52 = v36;
      operator delete(v38);
    }

    v39 = v49;
    if (v49)
    {
      v40 = v50;
      v41 = v49;
      if (v50 != v49)
      {
        do
        {
          v42 = *--v40;
          *v40 = 0;
          if (v42)
          {
            operator delete[]();
          }
        }

        while (v40 != v39);
        v41 = v49;
      }

      v50 = v39;
      operator delete(v41);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return 0;
}

BOOL sub_100080924(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = mlir::Token::getLoc((v4 + 56));
    *&v63 = "expected SSA operand";
    LOWORD(v66) = 259;
    v38 = mlir::detail::Parser::parseToken(a1, 6, &v63);
    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }

    v40 = *(a1 + 8);
    v42 = *(v40 + 56);
    v41 = (v40 + 56);
    if (v42 == 5)
    {
      if ((a3 & 1) == 0)
      {
        v57[0] = "result number not allowed in argument list";
        v59 = 259;
        mlir::detail::Parser::emitError(a1, v57, &v63);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        v46 = result;
        if (v63)
        {
          mlir::InFlightDiagnostic::report(&v63);
          result = v46;
        }

        if (v75 == 1)
        {
          if (v74 != &v75)
          {
            free(v74);
            result = v46;
          }

          v47 = v72;
          if (v72)
          {
            v48 = v73;
            v49 = v72;
            if (v73 != v72)
            {
              do
              {
                v48 = sub_10005BEF4(v48 - 1);
              }

              while (v48 != v47);
              v49 = v72;
            }

            v73 = v47;
            operator delete(v49);
            result = v46;
          }

          v50 = v70;
          if (v70)
          {
            v51 = v71;
            v52 = v70;
            if (v71 != v70)
            {
              do
              {
                v53 = *--v51;
                *v51 = 0;
                if (v53)
                {
                  operator delete[]();
                }
              }

              while (v51 != v50);
              v52 = v70;
            }

            v71 = v50;
            operator delete(v52);
            result = v46;
          }

          if (v65 != &v67)
          {
            free(v65);
            return v46;
          }
        }

        return result;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber(v41);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v57[0] = "invalid SSA value result number";
        v59 = 259;
        mlir::detail::Parser::emitError(a1, v57, &v63);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
        if (v63)
        {
          v44 = result;
          mlir::InFlightDiagnostic::report(&v63);
          result = v44;
        }

        if (v75 == 1)
        {
          v45 = result;
          sub_10005BE10(&v63 + 1);
          return v45;
        }

        return result;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v54 = *(a1 + 8);
      *(v54 + 80) = *(v54 + 56);
      *(v54 + 96) = *(v54 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v63);
      v55 = *(a1 + 8);
      *(v55 + 56) = v63;
      *(v55 + 72) = v64;
    }

    return 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v56 = v6 + 88 * v5;
    while (1)
    {
      v7 = *v6;
      v8 = *(v6 + 8);
      if (v8)
      {
        break;
      }

      v9 = *v6;
      v14 = &v7[v8];
      if (v7 != v14)
      {
        goto LABEL_18;
      }

LABEL_4:
      v6 += 88;
      if (v6 == v56)
      {
        return 0;
      }
    }

    v9 = *v6;
    if (*v7)
    {
      v10 = *v7 + 1 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      do
      {
        v12 = v9[1];
        ++v9;
        v11 = v12;
        if (v12)
        {
          v13 = v11 + 1 == 0;
        }

        else
        {
          v13 = 1;
        }
      }

      while (v13);
    }

    v14 = &v7[v8];
    if (v9 == v14)
    {
      goto LABEL_4;
    }

LABEL_18:
    v15 = *v9;
    while (1)
    {
      if (!*(v15 + 4))
      {
        goto LABEL_48;
      }

      v16 = *v15[1];
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      DWORD2(v63) = 0;
      v67 = 0;
      v68 = 1;
      v65 = 0;
      v66 = 0;
      v64 = 0;
      *&v63 = &off_1002D49D0;
      v69 = v57;
      llvm::raw_ostream::SetBufferAndMode(&v63, 0, 0, 0);
      if ((~*(v16 + 2) & 7) != 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v17)
      {
        v18 = *(a1 + 352);
        if (v18)
        {
          v19 = *(a1 + 336);
          v20 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ (v17 >> 32));
          v21 = 0x9DDFEA08EB382D69 * ((v17 >> 32) ^ (v20 >> 47) ^ v20);
          v22 = v18 - 1;
          v23 = v22 & (-348639895 * ((v21 >> 47) ^ v21));
          v24 = *(v19 + 16 * v23);
          if (v24 == v17)
          {
            goto LABEL_39;
          }

          v25 = 1;
          while (v24 != -4096)
          {
            v26 = v23 + v25++;
            v23 = v26 & v22;
            v24 = *(v19 + 16 * v23);
            if (v24 == v17)
            {
              goto LABEL_39;
            }
          }
        }

        v62 = *(mlir::detail::OpResultImpl::getOwner(v17) + 48);
        mlir::OperationName::print(&v62, &v63);
        if (v65 - v66 <= 1)
        {
          v29 = &v63;
LABEL_36:
          llvm::raw_ostream::write(v29, ": ", 2uLL);
          goto LABEL_39;
        }

        *v66 = 8250;
        v66 += 2;
      }

      else
      {
        v27 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 35;
          *v27 = 543650401;
          v66 += 5;
          v29 = llvm::raw_ostream::operator<<(&v63, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = llvm::raw_ostream::write(&v63, "arg #", 5uLL);
          v29 = llvm::raw_ostream::operator<<(v28, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        *v30 = 8250;
        *(v29 + 4) += 2;
      }

LABEL_39:
      v62 = *(v16 + 1) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v62, &v63);
      if (*(v15 + 4) >= 2u)
      {
        v31 = v66;
        if (v65 - v66 > 4)
        {
          *(v66 + 4) = 46;
          *v31 = 774774828;
          v66 += 5;
        }

        else
        {
          llvm::raw_ostream::write(&v63, ", ...", 5uLL);
        }
      }

      v32 = *v15;
      v33 = *(*(a1 + 8) + 160);
      *__p = *v57;
      v61 = v58;
      v57[0] = 0;
      v57[1] = 0;
      v58 = 0;
      (*(*v33 + 32))(v33, v15 + 5, v32, __p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
        {
LABEL_47:
          operator delete(v57[0]);
          goto LABEL_48;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v63);
        if (SHIBYTE(v58) < 0)
        {
          goto LABEL_47;
        }
      }

      do
      {
LABEL_48:
        v34 = v9[1];
        ++v9;
        v15 = v34;
        if (v34)
        {
          v35 = v15 + 1 == 0;
        }

        else
        {
          v35 = 1;
        }
      }

      while (v35);
      if (v9 == v14)
      {
        goto LABEL_4;
      }
    }
  }

  return 0;
}

uint64_t sub_100080F94()
{
  {
    sub_1002997DC();
  }

  return llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>(void)::Name;
}

const char *sub_100080FDC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpTrait::IsTerminator<Empty>]";
  v6 = 96;
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

BOOL sub_10008105C(uint64_t a1)
{
  v2 = *a1;
  v8 = 0;
  result = sub_1000810E8(v2, &v8);
  v4 = *(a1 + 8);
  v5 = v8;
  v6 = *(v4 + 8);
  if (v6 >= *(v4 + 12))
  {
    v7 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v4, (v4 + 16), v6 + 1, 8);
    result = v7;
    LODWORD(v6) = *(v4 + 8);
  }

  *(*v4 + 8 * v6) = v5;
  ++*(v4 + 8);
  return result;
}

BOOL sub_1000810E8(mlir::detail::Parser *this, uint64_t *a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v15 = sub_10008149C(*(this + 26), *(this + 54), v13, v14);
    v16 = *v15;
    if (!*v15)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &Loc, 1);
      v16 = *v15;
      v17 = *(this + 1);
    }

    *a2 = v16;
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v34);
    v19 = *(this + 1);
    *(v19 + 56) = v34;
    *(v19 + 72) = v35;
    return 1;
  }

  else if (v4 == 2)
  {
    v5 = v3[9];
    if (!v5 || v5 == 1 && *v3[8] == 94)
    {
      v6 = *(this + 26) + 24 * *(this + 54);
      if (*(v6 - 16))
      {
        v7 = *(v6 - 24);
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = 32 * v8;
          for (i = v7; *i >= 0xFFFFFFFFFFFFFFFELL; i += 4)
          {
            v9 -= 32;
            if (!v9)
            {
              return 0;
            }
          }
        }

        else
        {
          i = v7;
        }

        v27 = &v7[4 * v8];
        if (i == v27)
        {
          return 0;
        }

        while (1)
        {
          v28 = *i;
          v29 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v28, v29);
          if (i == v27)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v27)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v27)
          {
            return v11;
          }
        }
      }
    }

    return 0;
  }

  else
  {
    v31 = "expected block name";
    v32 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v31, &v34);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
    if (v34)
    {
      mlir::InFlightDiagnostic::report(&v34);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v41;
        v22 = __p;
        if (v41 != __p)
        {
          do
          {
            v21 = sub_10005BEF4(v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v41 = v20;
        operator delete(v22);
      }

      v23 = v38;
      if (v38)
      {
        v24 = v39;
        v25 = v38;
        if (v39 != v38)
        {
          do
          {
            v26 = *--v24;
            *v24 = 0;
            if (v26)
            {
              operator delete[]();
            }
          }

          while (v24 != v23);
          v25 = v38;
        }

        v39 = v23;
        operator delete(v25);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }
  }

  return v11;
}

char **sub_10008149C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v6 = sub_100081598(v5, *(v4 - 8), &v11, &v12);
  v7 = v12;
  if ((v6 & 1) == 0)
  {
    v13 = v12;
    v8 = *(v4 - 16);
    v9 = *(v4 - 8);
    if (4 * v8 + 4 >= 3 * v9)
    {
      v9 *= 2;
    }

    else if (v9 + ~v8 - *(v4 - 12) > v9 >> 3)
    {
      *(v4 - 16) = v8 + 1;
      if (*v7 == -1)
      {
LABEL_6:
        *v7 = v11;
        v7[2] = 0;
        v7[3] = 0;
        return v7 + 2;
      }

LABEL_5:
      --*(v4 - 12);
      goto LABEL_6;
    }

    sub_1000817C0(v4 - 24, v9);
    sub_100081598(*(v4 - 24), *(v4 - 8), &v11, &v13);
    v7 = v13;
    ++*(v4 - 16);
    if (*v7 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  return v7 + 2;
}

uint64_t sub_100081598(uint64_t a1, int a2, uint64_t a3, char ***a4)
{
  if (!a2)
  {
    v14 = 0;
    result = 0;
    goto LABEL_44;
  }

  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*a3, *(a3 + 8));
  v9 = a2 - 1;
  v10 = *a3;
  v11 = *(a3 + 8);
  if (!v11)
  {
    if (v10 != -2)
    {
      v22 = 0;
      v30 = 1;
      v31 = HashValue & v9;
      v14 = (a1 + 32 * v31);
      v32 = *v14;
      if (*v14 != -2)
      {
        goto LABEL_41;
      }

      while (1)
      {
        do
        {
          if (v22)
          {
            v33 = 0;
          }

          else
          {
            v33 = v32 + 2 == 0;
          }

          if (v33)
          {
            v22 = v14;
          }

          v34 = v30 + v31;
          ++v30;
          v31 = v34 & v9;
          v14 = (a1 + 32 * v31);
          v32 = *v14;
        }

        while (*v14 == -2);
LABEL_41:
        if (v32 == -1)
        {
          goto LABEL_18;
        }

        if (!v14[1])
        {
          goto LABEL_43;
        }
      }
    }

    v18 = 1;
    v19 = HashValue & v9;
    v14 = (a1 + 32 * v19);
    v20 = *v14;
    if (*v14 != -2)
    {
      while (v20 != -1)
      {
        if (v14[1])
        {
          v21 = v18 + v19;
          ++v18;
          v19 = v21 & v9;
          v14 = (a1 + 32 * v19);
          v20 = *v14;
          if (*v14 != -2)
          {
            continue;
          }
        }

        goto LABEL_43;
      }

      goto LABEL_17;
    }

LABEL_43:
    result = 1;
    goto LABEL_44;
  }

  if (v10 != -2)
  {
    v22 = 0;
    v23 = 1;
    v24 = HashValue & v9;
    v14 = (a1 + 32 * v24);
    v25 = *v14;
    if (*v14 != -2)
    {
      goto LABEL_30;
    }

    while (1)
    {
      do
      {
        if (v22)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25 + 2 == 0;
        }

        if (v26)
        {
          v22 = v14;
        }

        v27 = v23 + v24;
        ++v23;
        v24 = v27 & v9;
        v14 = (a1 + 32 * v24);
        v25 = *v14;
      }

      while (*v14 == -2);
LABEL_30:
      if (v25 == -1)
      {
        goto LABEL_18;
      }

      if (v11 == v14[1])
      {
        v36 = v25;
        v28 = v22;
        v35 = v23;
        v29 = memcmp(v10, v25, v11);
        v23 = v35;
        v22 = v28;
        v25 = v36;
        if (!v29)
        {
          goto LABEL_43;
        }
      }
    }
  }

  v12 = 1;
  v13 = HashValue & v9;
  v14 = (a1 + 32 * v13);
  v15 = *v14;
  if (*v14 == -2)
  {
    goto LABEL_43;
  }

  while (v15 != -1)
  {
    if (v11 != v14[1] || memcmp(0xFFFFFFFFFFFFFFFELL, v15, v11))
    {
      v16 = v12 + v13;
      ++v12;
      v13 = v16 & v9;
      v14 = (a1 + 32 * v13);
      v15 = *v14;
      if (*v14 != -2)
      {
        continue;
      }
    }

    goto LABEL_43;
  }

LABEL_17:
  v22 = 0;
LABEL_18:
  if (!v22)
  {
    v22 = v14;
  }

  if (v10 == -1)
  {
    result = 1;
  }

  else
  {
    v14 = v22;
    result = 0;
  }

LABEL_44:
  *a4 = v14;
  return result;
}

void sub_1000817C0(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((32 * v8), 8uLL);
  v10 = buffer;
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_1002B02F0;
        *v13 = xmmword_1002B02F0;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &buffer[2 * v11];
        do
        {
          *v10 = xmmword_1002B02F0;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    v16 = (32 * v3);
    if (v3)
    {
      v17 = 32 * v3;
      v18 = v4;
      do
      {
        if (*v18 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = 0;
          sub_100081598(*a1, *(a1 + 16), v18, &v25);
          v19 = v25;
          *v25 = *v18;
          *(v19 + 1) = *(v18 + 1);
          ++*(a1 + 8);
        }

        v18 = (v18 + 32);
        v17 -= 32;
      }

      while (v17);
    }

    llvm::deallocate_buffer(v4, v16, 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v20 = *(a1 + 16);
    if (v20)
    {
      if (((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_25;
      }

      v21 = ((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v21 & 0xFFFFFFFFFFFFFFELL)];
      v22 = buffer + 2;
      v23 = v21 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v22 - 2) = xmmword_1002B02F0;
        *v22 = xmmword_1002B02F0;
        v22 += 4;
        v23 -= 2;
      }

      while (v23);
      if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_25:
        v24 = &buffer[2 * v20];
        do
        {
          *v10 = xmmword_1002B02F0;
          v10 += 2;
        }

        while (v10 != v24);
      }
    }
  }
}

uint64_t sub_1000819A8@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
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
  v9 = (*result + 16 * v8);
  v10 = *v9;
  if (*a2 != *v9)
  {
    v14 = 0;
    v15 = 1;
    while (v10 != -4096)
    {
      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v10 == -8192;
      }

      if (v16)
      {
        v14 = v9;
      }

      v17 = v8 + v15++;
      v8 = v17 & v7;
      v9 = (v6 + 16 * (v17 & v7));
      v10 = *v9;
      if (*a2 == *v9)
      {
        goto LABEL_3;
      }
    }

    if (v14)
    {
      v9 = v14;
    }

LABEL_5:
    v21 = v9;
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
        v13 = *a3;
        *v9 = *a2;
        v9[1] = v13;
        v6 = *result;
        v5 = *(result + 16);
        v11 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v18 = result;
    v19 = a4;
    v20 = a3;
    sub_100081B28(result, v5);
    sub_1000414FC(v18, a2, &v21);
    a3 = v20;
    result = v18;
    a4 = v19;
    v9 = v21;
    ++*(v18 + 8);
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

void sub_100081B28(uint64_t a1, int a2)
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
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = ((v25 >> 4) ^ (v25 >> 9)) & v16;
          v23 = &buffer[2 * v26];
          v27 = *v23;
          if (v25 != *v23)
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
              v26 = v31 & v16;
              v23 = &buffer[2 * (v31 & v16)];
              v27 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v28)
            {
              v23 = v28;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_18;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
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
LABEL_18:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

uint64_t sub_100081D2C(uint64_t a1, void *a2)
{
  v26 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v26);
  v6 = *(a1 + 8);
  v7 = 8 * v6;
  *&v5[8 * v6] = *a2;
  v8 = *a1;
  v9 = *a1;
  if (!v6)
  {
    goto LABEL_18;
  }

  v10 = (v6 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v10 < 0xB)
  {
    v11 = v5;
    do
    {
LABEL_12:
      v20 = *v9;
      *v9 = 0;
      v9 += 8;
      *v11 = v20;
      v11 += 8;
    }

    while (v9 != &v8[v7]);
    goto LABEL_13;
  }

  v12 = v8 >= &v5[v7] || v5 >= &v8[v7];
  v11 = v5;
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v10 + 1;
  v14 = 8 * (v13 & 0x3FFFFFFFFFFFFFFCLL);
  v11 = &v5[v14];
  v9 = &v8[v14];
  v15 = (v8 + 16);
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

LABEL_13:
  v21 = v8 - 8;
  do
  {
    v22 = *&v21[v7];
    *&v21[v7] = 0;
    if (v22)
    {
      mlir::Region::~Region(v22);
      operator delete();
    }

    v7 -= 8;
  }

  while (v7);
  v9 = *a1;
LABEL_18:
  v23 = v26;
  if (v9 != v4)
  {
    free(v9);
  }

  *a1 = v5;
  v24 = *(a1 + 8) + 1;
  *(a1 + 8) = v24;
  *(a1 + 12) = v23;
  return &v5[8 * v24 - 8];
}

__n128 sub_100081E9C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = a1;
  v6 = a1 + 16;
  v7 = *(a1 + 16);
  v14 = 3;
  v15 = __s;
  v16 = v4;
  v8 = *(a1 + 24);
  v9 = &v14;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v14 && v7 + 24 * v8 > &v14)
    {
      v12 = &v14 - v7;
      v13 = v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v5 + 32), v8 + 1, 24);
      v5 = v13;
      v7 = *(v13 + 16);
      v9 = &v12[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = a1;
      v7 = *(a1 + 16);
      v9 = &v14;
    }
  }

  v10 = (v7 + 24 * *(v5 + 24));
  result = *v9;
  v10[1].n128_u64[0] = v9[1].n128_u64[0];
  *v10 = result;
  ++*(v5 + 24);
  return result;
}

BOOL sub_100081F98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(a1 + 400) = v4;
    *(a1 + 408) = v4 + 32;
    while (1)
    {
      v26 = *(*(a1 + 8) + 56);
      if (v26 == 7 || v26 == 27)
      {
        break;
      }

      if ((sub_100075A98(a1) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  Loc = mlir::Token::getLoc((v5 + 56));
  v7 = *(a1 + 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v52 = "expected block name";
  LOWORD(v55) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 7, &v52) & 1) == 0)
  {
    return 0;
  }

  v10 = sub_10008149C(*(a1 + 208), *(a1 + 216), v8, v9);
  v11 = v10;
  v10[1] = Loc;
  v12 = *v10;
  if (!*v10)
  {
    v19 = *a2;
    if (!*a2)
    {
      operator new();
    }

    v20 = 0;
    *v10 = v19;
    v21 = *(a1 + 8);
    v22 = *(v21 + 152);
    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *(a1 + 272) + 24 * *(a1 + 280);
  v14 = *(v13 - 8);
  if (v14)
  {
    v15 = *(v13 - 24);
    v16 = v14 - 1;
    v17 = (v14 - 1) & ((v12 >> 4) ^ (v12 >> 9));
    v18 = *(v15 + 16 * v17);
    if (v18 == v12)
    {
LABEL_7:
      *(v15 + 16 * v17) = -8192;
      *(v13 - 16) = vadd_s32(*(v13 - 16), 0x1FFFFFFFFLL);
      v19 = *v10;
      v20 = *v10;
      v21 = *(a1 + 8);
      v22 = *(v21 + 152);
      if (!v22)
      {
LABEL_9:
        *a2 = v19;
        if (*(v21 + 56) != 21 || (v47 = v19, v51 = ((*(v19 + 56) - *(v19 + 48)) & 0x7FFFFFFF8) != 0, LODWORD(v45[0]) = 0, v52 = a1, v53[0] = &v51, v53[1] = v45, v54 = &v47, (mlir::detail::Parser::parseCommaSeparatedList(a1, 1, sub_100082BB8, &v52, 0, 0) & 1) != 0))
        {
          v52 = "expected ':' after block name";
          LOWORD(v55) = 259;
          if (mlir::detail::Parser::parseToken(a1, 15, &v52))
          {
            v23 = *a2 + 32;
            *(a1 + 400) = *a2;
            *(a1 + 408) = v23;
            do
            {
              v24 = *(*(a1 + 8) + 56);
              if (v24 == 7 || v24 == 27)
              {
                return 1;
              }
            }

            while ((sub_100075A98(a1) & 1) != 0);
          }
        }

        if (v20)
        {
          mlir::Block::dropAllDefinedValueUses(v20);
          mlir::Block::~Block(v20);
          operator delete();
        }

        return 0;
      }

LABEL_8:
      mlir::AsmParserState::addDefinition(v22, v19, Loc);
      v19 = *v11;
      v21 = *(a1 + 8);
      goto LABEL_9;
    }

    v29 = 1;
    while (v18 != -4096)
    {
      v30 = v17 + v29++;
      v17 = v30 & v16;
      v18 = *(v15 + 16 * v17);
      if (v18 == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v45[0] = "redefinition of block '";
  v46 = 259;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v45, &v52);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v52);
  }

  if (v52)
  {
    v50 = 261;
    v47 = v8;
    v48 = v9;
    mlir::Diagnostic::operator<<(v53, &v47);
    if (v52)
    {
      LODWORD(v47) = 3;
      v48 = "'";
      v49 = 1;
      v32 = &v47;
      v33 = v54;
      if (v55 >= v56)
      {
        if (v54 <= &v47 && v54 + 24 * v55 > &v47)
        {
          v44 = &v47 - v54;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v33 = v54;
          v32 = (v54 + v44);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v54, v57, v55 + 1, 24);
          v32 = &v47;
          v33 = v54;
        }
      }

      v34 = &v33[24 * v55];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++v55;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
  v36 = result;
  if (v52)
  {
    mlir::InFlightDiagnostic::report(&v52);
    result = v36;
  }

  if (v63 == 1)
  {
    if (v62 != &v63)
    {
      free(v62);
      result = v36;
    }

    v37 = __p;
    if (__p)
    {
      v38 = v61;
      v39 = __p;
      if (v61 != __p)
      {
        do
        {
          v38 = sub_10005BEF4(v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v61 = v37;
      operator delete(v39);
      result = v36;
    }

    v40 = v58;
    if (v58)
    {
      v41 = v59;
      v42 = v58;
      if (v59 != v58)
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
        v42 = v58;
      }

      v59 = v40;
      operator delete(v42);
      result = v36;
    }

    if (v54 != v57)
    {
      free(v54);
      return v36;
    }
  }

  return result;
}

uint64_t sub_1000824F8(uint64_t a1)
{
  v2 = *(a1 + 272);
  v3 = v2 + 24 * *(a1 + 280);
  v4 = *(v3 - 24);
  v5 = *(v3 - 16);
  *(v3 - 24) = 0;
  *(v3 - 16) = 0;
  v6 = *(v3 - 8);
  *(v3 - 8) = 0;
  LODWORD(v3) = *(a1 + 280) - 1;
  *(a1 + 280) = v3;
  llvm::deallocate_buffer(*(v2 + 24 * v3), (16 * *(v2 + 24 * v3 + 16)), 8uLL);
  v7 = (16 * v6);
  if (v5)
  {
    v81 = v83;
    v82 = 0x400000000;
    v8 = v4;
    if (v6)
    {
      v9 = 16 * v6;
      v8 = v4;
      while ((*v8 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v8 = (v8 + 16);
        v9 -= 16;
        if (!v9)
        {
          goto LABEL_90;
        }
      }
    }

    v15 = (v4 + 16 * v6);
    if (v8 != v15)
    {
      do
      {
        v16 = *v8;
        v17 = v82;
        if (v82 >= HIDWORD(v82))
        {
          v65 = *v8;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v83, v82 + 1, 16);
          v16 = v65;
          v17 = v82;
        }

        v81[v17] = vextq_s8(v16, v16, 8uLL);
        LODWORD(v82) = v82 + 1;
        v18 = (((*(a1 + 416) + 16 * ((*(*(a1 + 416) + 44) >> 23) & 1) + ((*(*(a1 + 416) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(a1 + 416) + 40));
        v19 = v16.i64[0];
        llvm::ilist_traits<mlir::Block>::addNodeToList(v18, v16.i64[0]);
        v20 = *v18;
        *(v19 + 8) = *v18;
        *(v19 + 16) = v18;
        v19 += 8;
        *(v20 + 8) = v19;
        *v18 = v19;
        do
        {
          v8 = (v8 + 16);
        }

        while (v8 != v15 && (*v8 | 0x1000) == 0xFFFFFFFFFFFFF000);
      }

      while (v8 != v15);
      v21 = v82;
      v22 = v81;
      v68 = v4;
      if (v82 >= 2)
      {
        qsort(v81, v82, 0x10uLL, sub_100082FB4);
        v22 = v81;
        v21 = v82;
      }

      if (v21)
      {
        v23 = &v22[2 * v21];
        do
        {
          v24 = *v22;
          v70 = "reference to an undefined block";
          v71 = 259;
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v24);
          mlir::emitError(EncodedSourceLocation, &v70, v72);
          if (*(*(a1 + 8) + 56) == 1)
          {
            mlir::InFlightDiagnostic::abandon(v72);
          }

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

            v26 = __p;
            if (__p)
            {
              v27 = v78;
              v28 = __p;
              if (v78 != __p)
              {
                do
                {
                  v27 = sub_10005BEF4(v27 - 1);
                }

                while (v27 != v26);
                v28 = __p;
              }

              v78 = v26;
              operator delete(v28);
            }

            v29 = v75;
            if (v75)
            {
              v30 = v76;
              v31 = v75;
              if (v76 != v75)
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
                v31 = v75;
              }

              v76 = v29;
              operator delete(v31);
            }

            if (v73 != &v74)
            {
              free(v73);
            }
          }

          v22 += 2;
        }

        while (v22 != v23);
        v22 = v81;
      }

      v4 = v68;
      if (v22 != v83)
      {
        free(v22);
      }
    }

LABEL_90:
    v63 = 0;
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = v10 + 88 * v11;
    v13 = *(v12 - 56);
    if (v13 == 1)
    {
      v14 = v11 - 1;
      *(a1 + 24) = v14;
      sub_1000780C0(v10 + 88 * v14);
    }

    else
    {
      v67 = 16 * v6;
      v69 = v4;
      v33 = *(v12 - 64) + 24 * v13;
      v34 = *(v33 - 24);
      v35 = *(v33 - 16);
      v66 = *(v33 - 12);
      *(v33 - 8) = 0;
      *(v33 - 24) = 0;
      *(v33 - 16) = 0;
      LODWORD(v33) = *(v12 - 56) - 1;
      *(v12 - 56) = v33;
      v36 = *(v12 - 64) + 24 * v33;
      if (*(v36 + 12))
      {
        v37 = *(v36 + 8);
        if (v37)
        {
          v38 = 0;
          v39 = 8 * v37;
          do
          {
            v40 = *(*v36 + v38);
            if (v40 != -8 && v40 != 0)
            {
              llvm::deallocate_buffer(v40, (*v40 + 9), 8uLL);
            }

            v38 += 8;
          }

          while (v39 != v38);
        }
      }

      free(*v36);
      v42 = v34;
      if (v35)
      {
        v42 = v34;
        if (!*v34 || (*v34 + 8) == 0)
        {
          do
          {
            v45 = v42[1];
            ++v42;
            v44 = v45;
            if (v45)
            {
              v46 = (v44 + 8) == 0;
            }

            else
            {
              v46 = 1;
            }
          }

          while (v46);
        }
      }

      v47 = &v34[v35];
      if (v42 != v47)
      {
        v48 = *v42;
        do
        {
          v50 = *v48;
          v49 = (v48 + 1);
          v51 = llvm::StringMapImpl::hash(v49, v50);
          Key = llvm::StringMapImpl::FindKey((v12 - 88), v49, v50, v51);
          if (Key != -1 && Key != *(v12 - 80))
          {
            v53 = *(*(v12 - 88) + 8 * Key);
            llvm::StringMapImpl::RemoveKey(v12 - 88, v53);
            v55 = *v53;
            v54 = v53[1];
            if (v54 != v53 + 3)
            {
              free(v54);
            }

            llvm::deallocate_buffer(v53, (v55 + 41), 8uLL);
          }

          do
          {
            v56 = v42[1];
            ++v42;
            v48 = v56;
            if (v56)
            {
              v57 = v48 + 1 == 0;
            }

            else
            {
              v57 = 1;
            }
          }

          while (v57);
        }

        while (v42 != v47);
      }

      if (v35 && v66)
      {
        v58 = v34;
        do
        {
          v59 = *v58;
          if (*v58 != -8 && v59 != 0)
          {
            llvm::deallocate_buffer(v59, (*v59 + 9), 8uLL);
          }

          ++v58;
          --v35;
        }

        while (v35);
      }

      free(v34);
      v7 = v67;
      v4 = v69;
    }

    v61 = *(a1 + 216) - 1;
    *(a1 + 216) = v61;
    v62 = *(a1 + 208) + 24 * v61;
    llvm::deallocate_buffer(*v62, (32 * *(v62 + 16)), 8uLL);
    v63 = 1;
  }

  llvm::deallocate_buffer(v4, v7, 8uLL);
  return v63;
}

uint64_t sub_100082A8C(llvm::StringMapImpl *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = llvm::StringMapImpl::hash(a2, a3);
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, v6);
  v8 = *a1;
  v9 = v7;
  v10 = *(*a1 + 8 * v7);
  if (v10 == -8)
  {
    --*(a1 + 4);
  }

  else if (v10)
  {
    return v10 + 8;
  }

  buffer = llvm::allocate_buffer((a3 + 41), 8uLL);
  v13 = buffer;
  v14 = (buffer + 5);
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  v14[a3] = 0;
  *v13 = a3;
  v13[1] = (v13 + 3);
  v13[2] = &_mh_execute_header;
  *(v8 + 8 * v9) = v13;
  ++*(a1 + 3);
  v15 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  v10 = *v15;
  if (*v15)
  {
    v16 = v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v17 = v15[1];
      ++v15;
      v10 = v17;
      if (v17)
      {
        v18 = v10 == -8;
      }

      else
      {
        v18 = 1;
      }
    }

    while (v18);
  }

  return v10 + 8;
}

uint64_t *sub_100082BB8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1;
  v8 = 0uLL;
  *&v9 = 0;
  if (!sub_100080924(v1, &v8, 1))
  {
    return 0;
  }

  *&v6[0] = "expected ':' and type for SSA operand";
  v7 = 259;
  if ((mlir::detail::Parser::parseToken(v1, 15, v6) & 1) == 0)
  {
    return 0;
  }

  result = mlir::detail::Parser::parseType(v1);
  if (result)
  {
    v6[0] = v8;
    v6[1] = v9;
    return sub_100082C6C(&v3, v6, result);
  }

  return result;
}

uint64_t sub_100082C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v25 = *(a2 + 8);
  v26 = *(a2 + 24);
  v5 = *(a1 + 24);
  if (**a1 != 1)
  {
    mlir::Lexer::getEncodedSourceLocation(*(v5 + 1) + 8, v4);
    mlir::Block::addArgument(**(a1 + 16));
  }

  v6 = *(a1 + 8);
  v7 = *v6;
  v8 = *(**(a1 + 16) + 48);
  if (v7 >= ((*(**(a1 + 16) + 56) - v8) >> 3))
  {
    v27[0] = "too many arguments specified in argument list";
    v28 = 259;
    mlir::detail::Parser::emitError(v5, v27, &v29);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
    if (v29)
    {
      mlir::InFlightDiagnostic::report(&v29);
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v36;
        v21 = __p;
        if (v36 != __p)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v36 = v19;
        operator delete(v21);
      }

      v14 = v33;
      if (!v33)
      {
        goto LABEL_44;
      }

      v22 = v34;
      v16 = v33;
      if (v34 == v33)
      {
        goto LABEL_43;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v14);
      goto LABEL_42;
    }
  }

  else
  {
    *v6 = v7 + 1;
    v9 = *(v8 + 8 * v7);
    if ((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      if (sub_10007A26C(v5, v9 | 4))
      {
        v18 = *(*(v5 + 1) + 152);
        if (v18)
        {
          mlir::AsmParserState::addDefinition(v18, v9, v4);
        }

        v29 = v4;
        v30 = v25;
        v31 = v26;
        return sub_1000792A8(v5, &v29, v9);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v27[0] = "argument and block argument type mismatch";
      v28 = 259;
      mlir::detail::Parser::emitError(v5, v27, &v29);
      v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v29);
      if (v29)
      {
        mlir::InFlightDiagnostic::report(&v29);
      }

      if (v38 == 1)
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
              v12 = sub_10005BEF4(v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v36 = v11;
          operator delete(v13);
        }

        v14 = v33;
        if (!v33)
        {
          goto LABEL_44;
        }

        v15 = v34;
        v16 = v33;
        if (v34 == v33)
        {
LABEL_43:
          v34 = v14;
          operator delete(v16);
LABEL_44:
          if (v31 != &v32)
          {
            free(v31);
          }

          return v10;
        }

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
LABEL_42:
        v16 = v33;
        goto LABEL_43;
      }
    }
  }

  return v10;
}

uint64_t sub_100082FB4(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  return v4 < v3;
}

uint64_t sub_100083004(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  v25 = 3;
  v26 = __s;
  v27 = v10;
  v12 = *(a1 + 24);
  v13 = &v25;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v25 && v11 + 24 * v12 > &v25)
    {
      v23 = &v25 - v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v11 = *(a1 + 16);
      v13 = &v23[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v11 = *(a1 + 16);
      v13 = &v25;
    }
  }

  v14 = v11 + 24 * *(a1 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(a1 + 24);
  v16 = *a3;
  v17 = &v25;
  mlir::DiagnosticArgument::DiagnosticArgument(&v25, v16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 16);
  if (v18 >= *(a1 + 28))
  {
    if (v19 <= &v25 && v19 + 24 * v18 > &v25)
    {
      v24 = &v25 - v19;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v18 + 1, 24);
      v19 = *(a1 + 16);
      v17 = &v24[v19];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v18 + 1, 24);
      v19 = *(a1 + 16);
      v17 = &v25;
    }
  }

  v20 = v19 + 24 * *(a1 + 24);
  v21 = *v17;
  *(v20 + 16) = *(v17 + 2);
  *v20 = v21;
  ++*(a1 + 24);
  return sub_1000831C0(a1, a4, a5);
}

uint64_t sub_1000831C0(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = *a3;
  v13 = &v21;
  mlir::DiagnosticArgument::DiagnosticArgument(&v21, v12);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  if (v14 >= *(a1 + 28))
  {
    if (v15 <= &v21 && v15 + 24 * v14 > &v21)
    {
      v20 = &v21 - v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v20[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v21;
    }
  }

  v16 = v15 + 24 * *(a1 + 24);
  v17 = *v13;
  *(v16 + 16) = *(v13 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

void *sub_100083360(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
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
      v7 = (*a1 + 16 * (v14 & v5));
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
    sub_100083608(a1, v2);
    sub_100083518(v16, v15, &v17);
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
  v7[1] = 0;
  return v7 + 1;
}

uint64_t sub_100083518(uint64_t *a1, void *a2, void *a3)
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
    v9 = (*a1 + 16 * v8);
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
        v9 = (v4 + 16 * (v15 & v7));
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

void sub_100083608(uint64_t a1, int a2)
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
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = buffer + 2;
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
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &buffer[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v25 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v26 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v27 = 0x9DDFEA08EB382D69 * (HIDWORD(v25) ^ (v26 >> 47) ^ v26);
          v28 = (-348639895 * ((v27 >> 47) ^ v27)) & v16;
          v23 = &buffer[2 * v28];
          v29 = *v23;
          if (v25 != *v23)
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
                v30 = v23;
              }

              v33 = v28 + v31++;
              v28 = v33 & v16;
              v23 = &buffer[2 * (v33 & v16)];
              v29 = *v23;
              if (v25 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v30)
            {
              v23 = v30;
            }
          }

LABEL_23:
          v24 = *(v17 + 1);
          *v23 = v25;
          v23[1] = v24;
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3), 8uLL);
  }

  else
  {
    *(a1 + 8) = 0;
    v18 = *(a1 + 16);
    if (v18)
    {
      if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_18;
      }

      v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &buffer[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
      v20 = buffer + 2;
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
LABEL_18:
        v22 = &buffer[2 * v18];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v22);
      }
    }
  }
}

uint64_t sub_100083858(void *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = v1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v11 = v2;
    v12 = v1;
    sub_100083914(v1[1]);
    v1 = v12;
    v2 = v11;
  }

  else
  {
    v5 = (*v3 + 32 * v4);
    *v5 = 0u;
    v5[1] = 0u;
    v6 = (*(v3 + 8) + 1);
    *(v3 + 8) = v6;
    v7 = *v3 + 32 * v6 - 32;
  }

  v8 = *v1[2];
  v9 = *(*v2 + 704);

  return v9();
}

uint64_t sub_100083914(uint64_t a1)
{
  memset(v11, 0, sizeof(v11));
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v11;
  if (v1 >= *(a1 + 12))
  {
    if (v2 <= v11 && v2 + 32 * v1 > v11)
    {
      v9 = v11 - v2;
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 32);
      a1 = v10;
      v2 = *v10;
      v3 = &v9[*v10];
    }

    else
    {
      v8 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 32);
      a1 = v8;
      v2 = *v8;
      v3 = v11;
    }
  }

  v4 = (v2 + 32 * *(a1 + 8));
  v5 = *(v3 + 1);
  *v4 = *v3;
  v4[1] = v5;
  v6 = (*(a1 + 8) + 1);
  *(a1 + 8) = v6;
  return *a1 + 32 * v6 - 32;
}

uint64_t sub_1000839E4(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v14, 0, 24);
  if (((*(*v4 + 704))(v4, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[2];
  }

  v8 = (v5 + 8);
  v7 = *(v5 + 8);
  v9 = *v5;
  v10 = v14;
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= v14 && v9 + 32 * v7 > v14)
    {
      v13 = v14 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = &v13[*v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = v14;
    }
  }

  v11 = (v9 + 32 * *v8);
  v12 = *(v10 + 1);
  *v11 = *v10;
  v11[1] = v12;
  ++*v8;
  return 1;
}

uint64_t sub_100083B20(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v14, 0, 24);
  if (((*(*v4 + 704))(v4, v14, 1) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = a1[1];
  }

  else
  {
    v5 = a1[2];
  }

  v8 = (v5 + 8);
  v7 = *(v5 + 8);
  v9 = *v5;
  v10 = v14;
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= v14 && v9 + 32 * v7 > v14)
    {
      v13 = v14 - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = &v13[*v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v5, (v5 + 16), v7 + 1, 32);
      v9 = *v5;
      v10 = v14;
    }
  }

  v11 = (v9 + 32 * *v8);
  v12 = *(v10 + 1);
  *v11 = *v10;
  v11[1] = v12;
  ++*v8;
  return 1;
}

uint64_t sub_100083C5C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v12 = v2;
    sub_100083D18(a1[1]);
    v2 = v12;
  }

  else
  {
    v5 = (*v3 + (v4 << 6));
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    v6 = (*(v3 + 8) + 1);
    *(v3 + 8) = v6;
    v7 = *v3 + (v6 << 6) - 64;
  }

  v8 = *a1[2];
  v9 = *a1[3];
  v10 = *(*v2 + 752);

  return v10();
}

uint64_t sub_100083D18(uint64_t a1)
{
  memset(v13, 0, sizeof(v13));
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v13;
  if (v1 >= *(a1 + 12))
  {
    if (v2 <= v13 && v2 + (v1 << 6) > v13)
    {
      v11 = v13 - v2;
      v12 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 64);
      a1 = v12;
      v2 = *v12;
      v3 = &v11[*v12];
    }

    else
    {
      v10 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v1 + 1, 64);
      a1 = v10;
      v2 = *v10;
      v3 = v13;
    }
  }

  v4 = (v2 + (*(a1 + 8) << 6));
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(v3 + 3);
  v4[2] = *(v3 + 2);
  v4[3] = v7;
  *v4 = v5;
  v4[1] = v6;
  v8 = (*(a1 + 8) + 1);
  *(a1 + 8) = v8;
  return *a1 + (v8 << 6) - 64;
}

uint64_t sub_100083DF4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v7 = sub_100083D18(v2);
  }

  else
  {
    v5 = (*v2 + (v4 << 6));
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    v6 = (*(v2 + 8) + 1);
    *(v2 + 8) = v6;
    v7 = *v2 + (v6 << 6) - 64;
  }

  if (((*(*v3 + 752))(v3, v7, 0, 0) & 1) == 0 || ((*(*v3 + 136))(v3) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = *(v8 + 8);
  if (v9 >= *(v8 + 12))
  {
    v12 = sub_100083914(v8);
  }

  else
  {
    v10 = (*v8 + 32 * v9);
    *v10 = 0u;
    v10[1] = 0u;
    v11 = (*(v8 + 8) + 1);
    *(v8 + 8) = v11;
    v12 = *v8 + 32 * v11 - 32;
  }

  return (*(*v3 + 704))(v3, v12, 1) & 1;
}

void sub_100083F50(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v30 = "invalid properties ";
  v31 = 259;
  mlir::emitError(v4, &v30, &v36);
  if (v36)
  {
    v5 = &v32;
    mlir::DiagnosticArgument::DiagnosticArgument(&v32, *a1[1]);
    v6 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v27 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v6 = v38;
        v5 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v5 = &v32;
        v6 = v38;
      }
    }

    v7 = &v6[24 * v39];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v39;
    if (v36)
    {
      LODWORD(v32) = 3;
      v33 = " for op ";
      v34 = 8;
      v10 = &v32;
      v11 = v38;
      if (v9 >= v40)
      {
        if (v38 <= &v32 && v38 + 24 * v9 > &v32)
        {
          v28 = &v32 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v11 = v38;
          v10 = (v38 + v28);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v9 + 1, 24);
          v10 = &v32;
          v11 = v38;
        }
      }

      v12 = &v11[24 * v39];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v39;
    }
  }

  v32 = *(*(*a1[2] + 48) + 8);
  Value = mlir::StringAttr::getValue(&v32);
  if (v36)
  {
    v35 = 261;
    v32 = Value;
    v33 = v15;
    mlir::Diagnostic::operator<<(&v37, &v32);
    if (v36)
    {
      LODWORD(v32) = 3;
      v33 = ": ";
      v34 = 2;
      v16 = &v32;
      v17 = v38;
      if (v39 >= v40)
      {
        if (v38 <= &v32 && v38 + 24 * v39 > &v32)
        {
          v29 = &v32 - v38;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v17 = v38;
          v16 = (v38 + v29);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
          v16 = &v32;
          v17 = v38;
        }
      }

      v18 = &v17[24 * v39];
      v19 = *v16;
      *(v18 + 2) = v16[2];
      *v18 = v19;
      ++v39;
    }
  }

  sub_10006BAFC(a2, &v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v45;
      v22 = __p;
      if (v45 != __p)
      {
        do
        {
          v21 = sub_10005BEF4(v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v45 = v20;
      operator delete(v22);
    }

    v23 = v42;
    if (v42)
    {
      v24 = v43;
      v25 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v24;
          *v24 = 0;
          if (v26)
          {
            operator delete[]();
          }
        }

        while (v24 != v23);
        v25 = v42;
      }

      v43 = v23;
      operator delete(v25);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }
}

void sub_10008435C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  mlir::emitError(**a1, &v26);
  if (v26)
  {
    LODWORD(v22) = 3;
    v23 = "'";
    v24 = 1;
    v4 = &v22;
    v5 = v28;
    if (v29 >= v30)
    {
      if (v28 <= &v22 && v28 + 24 * v29 > &v22)
      {
        v20 = &v22 - v28;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
        v5 = v28;
        v4 = (v28 + v20);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
        v4 = &v22;
        v5 = v28;
      }
    }

    v6 = &v5[24 * v29];
    v7 = *v4;
    *(v6 + 2) = v4[2];
    *v6 = v7;
    ++v29;
    if (v26)
    {
      v8 = *(a1 + 8);
      v25 = 260;
      v22 = v8;
      mlir::Diagnostic::operator<<(&v27, &v22);
      if (v26)
      {
        LODWORD(v22) = 3;
        v23 = "' op ";
        v24 = 5;
        v9 = &v22;
        v10 = v28;
        if (v29 >= v30)
        {
          if (v28 <= &v22 && v28 + 24 * v29 > &v22)
          {
            v21 = &v22 - v28;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
            v10 = v28;
            v9 = (v28 + v21);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v28, v31, v29 + 1, 24);
            v9 = &v22;
            v10 = v28;
          }
        }

        v11 = &v10[24 * v29];
        v12 = *v9;
        *(v11 + 2) = v9[2];
        *v11 = v12;
        ++v29;
      }
    }
  }

  sub_10006BAFC(a2, &v26);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v37 == 1)
  {
    if (v36 != &v37)
    {
      free(v36);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v35;
      v15 = __p;
      if (v35 != __p)
      {
        do
        {
          v14 = sub_10005BEF4(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v35 = v13;
      operator delete(v15);
    }

    v16 = v32;
    if (v32)
    {
      v17 = v33;
      v18 = v32;
      if (v33 != v32)
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
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != v31)
    {
      free(v28);
    }
  }
}

void sub_100084678(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = **a1;
  v29 = "invalid properties ";
  v30 = 259;
  mlir::emitError(v4, &v29, &v35);
  if (v35)
  {
    v5 = &v31;
    mlir::DiagnosticArgument::DiagnosticArgument(&v31, **(a1 + 8));
    v6 = v37;
    if (v38 >= v39)
    {
      if (v37 <= &v31 && v37 + 24 * v38 > &v31)
      {
        v26 = &v31 - v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v6 = v37;
        v5 = (v37 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
        v5 = &v31;
        v6 = v37;
      }
    }

    v7 = &v6[24 * v38];
    v8 = *v5;
    *(v7 + 2) = v5[2];
    *v7 = v8;
    v9 = ++v38;
    if (v35)
    {
      LODWORD(v31) = 3;
      v32 = " for op ";
      v33 = 8;
      v10 = &v31;
      v11 = v37;
      if (v9 >= v39)
      {
        if (v37 <= &v31 && v37 + 24 * v9 > &v31)
        {
          v27 = &v31 - v37;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v11 = v37;
          v10 = (v37 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v9 + 1, 24);
          v10 = &v31;
          v11 = v37;
        }
      }

      v12 = &v11[24 * v38];
      v13 = *v10;
      *(v12 + 2) = v10[2];
      *v12 = v13;
      ++v38;
      if (v35)
      {
        v14 = *(a1 + 16);
        v34 = 260;
        v31 = v14;
        mlir::Diagnostic::operator<<(&v36, &v31);
        if (v35)
        {
          LODWORD(v31) = 3;
          v32 = ": ";
          v33 = 2;
          v15 = &v31;
          v16 = v37;
          if (v38 >= v39)
          {
            if (v37 <= &v31 && v37 + 24 * v38 > &v31)
            {
              v28 = &v31 - v37;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
              v16 = v37;
              v15 = (v37 + v28);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v37, v40, v38 + 1, 24);
              v15 = &v31;
              v16 = v37;
            }
          }

          v17 = &v16[24 * v38];
          v18 = *v15;
          *(v17 + 2) = v15[2];
          *v17 = v18;
          ++v38;
        }
      }
    }
  }

  sub_10006BAFC(a2, &v35);
  if (v35)
  {
    mlir::InFlightDiagnostic::report(&v35);
  }

  if (v46 == 1)
  {
    if (v45 != &v46)
    {
      free(v45);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v44;
      v21 = __p;
      if (v44 != __p)
      {
        do
        {
          v20 = sub_10005BEF4(v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v44 = v19;
      operator delete(v21);
    }

    v22 = v41;
    if (v41)
    {
      v23 = v42;
      v24 = v41;
      if (v42 != v41)
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
        v24 = v41;
      }

      v42 = v22;
      operator delete(v24);
    }

    if (v37 != v40)
    {
      free(v37);
    }
  }
}

uint64_t sub_100084A6C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 12))
  {
    v8 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 16);
    a1 = v8;
    LODWORD(v5) = *(v8 + 8);
  }

  v6 = (*a1 + 16 * v5);
  *v6 = v3;
  v6[1] = v4;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 16 * v6 - 16;
}

double sub_100084AE8(uint64_t a1, char *__s, uint64_t a3, const char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  *&result = sub_100084C00(v9, a3, a4).n128_u64[0];
  return result;
}

__n128 sub_100084C00(uint64_t a1, uint64_t a2, const char *a3)
{
  v19 = 261;
  v5 = *(a2 + 8);
  v16 = *a2;
  v17 = v5;
  mlir::Diagnostic::operator<<(a1, &v16);
  v6 = strlen(a3);
  v7 = a1;
  v8 = a1 + 16;
  v9 = *(a1 + 16);
  LODWORD(v16) = 3;
  v17 = a3;
  v18 = v6;
  v10 = *(a1 + 24);
  v11 = &v16;
  if (v10 >= *(a1 + 28))
  {
    if (v9 <= &v16 && v9 + 24 * v10 > &v16)
    {
      v14 = &v16 - v9;
      v15 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v8, (v7 + 32), v10 + 1, 24);
      v7 = v15;
      v9 = *(v15 + 16);
      v11 = &v14[v9];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v10 + 1, 24);
      v7 = a1;
      v9 = *(a1 + 16);
      v11 = &v16;
    }
  }

  v12 = (v9 + 24 * *(v7 + 24));
  result = *v11;
  v12[1].n128_u64[0] = v11[1].n128_u64[0];
  *v12 = result;
  ++*(v7 + 24);
  return result;
}

uint64_t sub_100084D14(uint64_t a1, char *__s, uint64_t a3, char *a4, unsigned int *a5, char *a6, uint64_t *a7)
{
  v14 = strlen(__s);
  v15 = a1 + 16;
  v16 = *(a1 + 16);
  LODWORD(v24) = 3;
  v25 = __s;
  v26 = v14;
  v17 = *(a1 + 24);
  v18 = &v24;
  if (v17 >= *(a1 + 28))
  {
    if (v16 <= &v24 && v16 + 24 * v17 > &v24)
    {
      v23 = &v24 - v16;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (a1 + 32), v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v23[v16];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (a1 + 32), v17 + 1, 24);
      v16 = *(a1 + 16);
      v18 = &v24;
    }
  }

  v19 = v16 + 24 * *(a1 + 24);
  v20 = *v18;
  *(v19 + 16) = v18[2];
  *v19 = v20;
  ++*(a1 + 24);
  v27 = 261;
  v21 = *(a3 + 8);
  v24 = *a3;
  v25 = v21;
  mlir::Diagnostic::operator<<(a1, &v24);
  return sub_100084E54(a1, a4, a5, a6, a7);
}

uint64_t sub_100084E54(uint64_t a1, char *__s, unsigned int *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  return sub_1000831C0(v11, a4, a5);
}

uint64_t sub_100085030(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

uint64_t sub_10008504C(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v4 = *a1;
  v5 = **a1;
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v6 = 0;
  }

  v117 = v6;
  if (!v6 || *v4[1] != mlir::OpaqueLoc::getUnderlyingTypeID(&v117))
  {
    goto LABEL_61;
  }

  v7 = *(v5 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v117);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v4[2];
  v12 = llvm::StringMapImpl::hash(v9, v10);
  Key = llvm::StringMapImpl::FindKey(v11, v9, v10, v12);
  if (Key == -1 || Key == *(v11 + 8) || (v14 = *(*v11 + 8 * Key), (v15 = *(v14 + 8)) == 0))
  {
    v116 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(EncodedSourceLocation, v115, v121);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v121);
    }

    if (v121[0])
    {
      v118 = 3;
      v119 = "operation location alias was never defined";
      v120 = 42;
      v17 = &v118;
      v18 = v122;
      if (v123 >= v124)
      {
        if (v122 <= &v118 && v122 + 24 * v123 > &v118)
        {
          v108 = &v118 - v122;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v18 = v122;
          v17 = (v122 + v108);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v17 = &v118;
          v18 = v122;
        }
      }

      v19 = &v18[24 * v123];
      v20 = *v17;
      *(v19 + 2) = *(v17 + 2);
      *v19 = v20;
      ++v123;
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v121);
    if (v121[0])
    {
      mlir::InFlightDiagnostic::report(v121);
    }

    if (v131 == 1)
    {
      if (v130 != &v131)
      {
        free(v130);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v129;
        v24 = __p;
        if (v129 != __p)
        {
          do
          {
            v23 = sub_10005BEF4(v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v129 = v22;
        operator delete(v24);
      }

      v25 = v126;
      if (!v126)
      {
        goto LABEL_58;
      }

      v26 = v127;
      v27 = v126;
      if (v127 == v126)
      {
        goto LABEL_57;
      }

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
      goto LABEL_56;
    }
  }

  else
  {
    if (mlir::LocationAttr::classof(*(v14 + 8)))
    {
      *(a2 + 24) = v15;
      goto LABEL_61;
    }

    v116 = 257;
    v29 = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(v29, v115, v121);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v121);
    }

    if (v121[0])
    {
      v118 = 3;
      v119 = "expected location, but found '";
      v120 = 30;
      v30 = &v118;
      v31 = v122;
      if (v123 >= v124)
      {
        if (v122 <= &v118 && v122 + 24 * v123 > &v118)
        {
          v109 = &v118 - v122;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v31 = v122;
          v30 = (v122 + v109);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
          v30 = &v118;
          v31 = v122;
        }
      }

      v32 = &v31[24 * v123];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      ++v123;
      if (v121[0])
      {
        v34 = &v118;
        mlir::DiagnosticArgument::DiagnosticArgument(&v118, v15);
        v35 = v122;
        if (v123 >= v124)
        {
          if (v122 <= &v118 && v122 + 24 * v123 > &v118)
          {
            v110 = &v118 - v122;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v35 = v122;
            v34 = (v122 + v110);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v34 = &v118;
            v35 = v122;
          }
        }

        v36 = &v35[24 * v123];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        v38 = ++v123;
        if (v121[0])
        {
          v118 = 3;
          v119 = "'";
          v120 = 1;
          v39 = &v118;
          v40 = v122;
          if (v38 >= v124)
          {
            if (v122 <= &v118 && v122 + 24 * v38 > &v118)
            {
              v111 = &v118 - v122;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v38 + 1, 24);
              v40 = v122;
              v39 = (v122 + v111);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v38 + 1, 24);
              v39 = &v118;
              v40 = v122;
            }
          }

          v41 = &v40[24 * v123];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v123;
        }
      }
    }

    v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v121);
    if (v121[0])
    {
      mlir::InFlightDiagnostic::report(v121);
    }

    if (v131 == 1)
    {
      if (v130 != &v131)
      {
        free(v130);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v129;
        v45 = __p;
        if (v129 != __p)
        {
          do
          {
            v44 = sub_10005BEF4(v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v129 = v43;
        operator delete(v45);
      }

      v25 = v126;
      if (!v126)
      {
        goto LABEL_58;
      }

      v46 = v127;
      v27 = v126;
      if (v127 == v126)
      {
LABEL_57:
        v127 = v25;
        operator delete(v27);
LABEL_58:
        if (v122 != v125)
        {
          free(v122);
        }

        goto LABEL_60;
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

      while (v46 != v25);
LABEL_56:
      v27 = v126;
      goto LABEL_57;
    }
  }

LABEL_60:
  if (!v21)
  {
    return 0;
  }

LABEL_61:
  v48 = *(a2 + 44);
  v49 = v48 & 0x7FFFFF;
  if ((v48 & 0x7FFFFF) != 0)
  {
    v50 = 0x1000C8077774924;
    v51 = ((a2 + 16 * ((v48 >> 23) & 1) + ((v48 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v112 = v51 + 24 * v49;
    while (1)
    {
      v52 = *(v51 + 8);
      if (v52 != v51)
      {
        break;
      }

LABEL_150:
      v51 += 24;
      if (v51 == v112)
      {
        return 1;
      }
    }

    v113 = v51;
LABEL_66:
    v53 = v52 - 8;
    v114 = v52;
    if (!v52)
    {
      v53 = 0;
    }

    v54 = *(v53 + 48);
    v55 = *(v53 + 56);
    while (1)
    {
      if (v54 == v55)
      {
        v52 = *(v114 + 8);
        v51 = v113;
        if (v52 == v113)
        {
          goto LABEL_150;
        }

        goto LABEL_66;
      }

      v56 = *v54;
      v57 = *v3;
      v58 = **v3;
      v59 = *(*v54 + 32);
      if (*(*v59 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v59 = 0;
      }

      v117 = v59;
      if (v59)
      {
        if (*v57[1] == mlir::OpaqueLoc::getUnderlyingTypeID(&v117))
        {
          break;
        }
      }

LABEL_70:
      ++v54;
    }

    v60 = v3;
    v61 = v50;
    v62 = *(v58 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v117);
    v63 = *v62;
    v64 = *(v62 + 8);
    v65 = *(v62 + 16);
    v66 = v57[2];
    v67 = llvm::StringMapImpl::hash(v64, v65);
    v68 = llvm::StringMapImpl::FindKey(v66, v64, v65, v67);
    if (v68 == -1 || v68 == *(v66 + 8) || (v69 = *(*v66 + 8 * v68), (v70 = *(v69 + 8)) == 0))
    {
      v116 = 257;
      v71 = mlir::Lexer::getEncodedSourceLocation(*(v58 + 8) + 8, v63);
      mlir::emitError(v71, v115, v121);
      if (*(*(v58 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v121);
      }

      v50 = v61;
      v3 = v60;
      if (v121[0])
      {
        v118 = 3;
        v119 = "operation location alias was never defined";
        v120 = 42;
        v72 = v122;
        if (v123 >= v124)
        {
          if (v122 <= &v118 && v122 + 24 * v123 > &v118)
          {
            v103 = &v118 - v122;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v72 = v122;
            v73 = (v122 + v103);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v73 = &v118;
            v72 = v122;
          }
        }

        else
        {
          v73 = &v118;
        }

        v74 = &v72[24 * v123];
        v75 = *v73;
        *(v74 + 2) = *(v73 + 2);
        *v74 = v75;
        ++v123;
      }

      v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v121);
      if (v121[0])
      {
        mlir::InFlightDiagnostic::report(v121);
      }

      if (v131 != 1)
      {
LABEL_69:
        if (!v76)
        {
          return 0;
        }

        goto LABEL_70;
      }

      if (v130 != &v131)
      {
        free(v130);
      }

      v77 = __p;
      if (__p)
      {
        v78 = v129;
        v79 = __p;
        if (v129 != __p)
        {
          do
          {
            v78 = sub_10005BEF4(v78 - 1);
          }

          while (v78 != v77);
          v79 = __p;
        }

        v129 = v77;
        operator delete(v79);
      }

      v80 = v126;
      if (!v126)
      {
LABEL_132:
        if (v122 != v125)
        {
          free(v122);
        }

        goto LABEL_69;
      }

      v81 = v127;
      v82 = v126;
      if (v127 == v126)
      {
LABEL_131:
        v127 = v80;
        operator delete(v82);
        goto LABEL_132;
      }

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
    }

    else
    {
      if (mlir::LocationAttr::classof(*(v69 + 8)))
      {
        *(v56 + 32) = v70;
        v50 = v61;
        v3 = v60;
        goto LABEL_70;
      }

      v116 = 257;
      v84 = mlir::Lexer::getEncodedSourceLocation(*(v58 + 8) + 8, v63);
      mlir::emitError(v84, v115, v121);
      v50 = v61;
      if (*(*(v58 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v121);
      }

      v3 = v60;
      if (v121[0])
      {
        v118 = 3;
        v119 = "expected location, but found '";
        v120 = 30;
        v85 = v122;
        if (v123 >= v124)
        {
          if (v122 <= &v118 && v122 + 24 * v123 > &v118)
          {
            v104 = &v118 - v122;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v85 = v122;
            v86 = (v122 + v104);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
            v86 = &v118;
            v85 = v122;
          }
        }

        else
        {
          v86 = &v118;
        }

        v87 = &v85[24 * v123];
        v88 = *v86;
        *(v87 + 2) = *(v86 + 2);
        *v87 = v88;
        ++v123;
        if (v121[0])
        {
          v89 = &v118;
          mlir::DiagnosticArgument::DiagnosticArgument(&v118, v70);
          v90 = v122;
          if (v123 >= v124)
          {
            if (v122 <= &v118 && v122 + 24 * v123 > &v118)
            {
              v105 = &v118 - v122;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
              v90 = v122;
              v89 = (v122 + v105);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v123 + 1, 24);
              v89 = &v118;
              v90 = v122;
            }
          }

          v91 = &v90[24 * v123];
          v92 = *v89;
          *(v91 + 2) = *(v89 + 2);
          *v91 = v92;
          v93 = ++v123;
          if (v121[0])
          {
            v118 = 3;
            v119 = "'";
            v120 = 1;
            v94 = v122;
            if (v93 >= v124)
            {
              if (v122 <= &v118 && v122 + 24 * v93 > &v118)
              {
                v106 = &v118 - v122;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v93 + 1, 24);
                v94 = v122;
                v95 = (v122 + v106);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v125, v93 + 1, 24);
                v95 = &v118;
                v94 = v122;
              }
            }

            else
            {
              v95 = &v118;
            }

            v96 = &v94[24 * v123];
            v97 = *v95;
            *(v96 + 2) = *(v95 + 2);
            *v96 = v97;
            ++v123;
          }
        }
      }

      v76 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v121);
      if (v121[0])
      {
        mlir::InFlightDiagnostic::report(v121);
      }

      if (v131 != 1)
      {
        goto LABEL_69;
      }

      if (v130 != &v131)
      {
        free(v130);
      }

      v98 = __p;
      if (__p)
      {
        v99 = v129;
        v100 = __p;
        if (v129 != __p)
        {
          do
          {
            v99 = sub_10005BEF4(v99 - 1);
          }

          while (v99 != v98);
          v100 = __p;
        }

        v129 = v98;
        operator delete(v100);
      }

      v80 = v126;
      if (!v126)
      {
        goto LABEL_132;
      }

      v101 = v127;
      v82 = v126;
      if (v127 == v126)
      {
        goto LABEL_131;
      }

      do
      {
        v102 = *--v101;
        *v101 = 0;
        if (v102)
        {
          operator delete[]();
        }
      }

      while (v101 != v80);
    }

    v82 = v126;
    goto LABEL_131;
  }

  return 1;
}

uint64_t *sub_100085DC4(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v11 = buffer + 2;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
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

  return v8;
}

uint64_t sub_100085EE0(mlir::detail::Parser **a1)
{
  v1 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v3 = *(v1 + 1);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
LABEL_6:
    v6 = *(v3 + 64);
    v7 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v7;
    mlir::Lexer::lexToken((*(v1 + 1) + 8), &v34);
    v8 = *(v1 + 1);
    *(v8 + 56) = v34;
    *(v8 + 72) = v35;
    *&v34 = "expected ':'";
    v37 = 259;
    if (mlir::detail::Parser::parseToken(v1, 15, &v34))
    {
      if (v7 == 18)
      {
        if (*v6 != 0x6C616E7265747865 || *(v6 + 8) != 0x6372756F7365725FLL || *(v6 + 16) != 29541)
        {
LABEL_43:
          v31 = 1283;
          v30[0] = "unknown key '";
          v30[2] = v6;
          v30[3] = v7;
          v32[0] = v30;
          v32[2] = "' in file metadata dictionary";
          v33 = 770;
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, Loc);
          mlir::emitError(EncodedSourceLocation, v32, &v34);
          if (*(*(v1 + 1) + 56) == 1)
          {
            mlir::InFlightDiagnostic::abandon(&v34);
          }

          v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
          if (v34)
          {
            mlir::InFlightDiagnostic::report(&v34);
          }

          if (v44 == 1)
          {
            if (v43 != &v44)
            {
              free(v43);
            }

            v24 = __p;
            if (__p)
            {
              v25 = v42;
              v26 = __p;
              if (v42 != __p)
              {
                do
                {
                  v25 = sub_10005BEF4(v25 - 1);
                }

                while (v25 != v24);
                v26 = __p;
              }

              v42 = v24;
              operator delete(v26);
            }

            v17 = v39;
            if (!v39)
            {
              goto LABEL_63;
            }

            v27 = v40;
            v19 = v39;
            if (v40 == v39)
            {
LABEL_62:
              v40 = v17;
              operator delete(v19);
LABEL_63:
              if (v36 != &v38)
              {
                free(v36);
              }

              return v13;
            }

            do
            {
              v28 = *--v27;
              *v27 = 0;
              if (v28)
              {
                operator delete[]();
              }
            }

            while (v27 != v17);
LABEL_61:
            v19 = v39;
            goto LABEL_62;
          }

          return v13;
        }

        v30[0] = v1;
        v11 = sub_10008792C;
      }

      else
      {
        if (v7 != 17)
        {
          goto LABEL_43;
        }

        v9 = *v6 == 0x5F7463656C616964 && *(v6 + 8) == 0x656372756F736572;
        if (!v9 || *(v6 + 16) != 115)
        {
          goto LABEL_43;
        }

        v30[0] = v1;
        v11 = sub_1000865CC;
      }

      v32[0] = v11;
      v32[1] = v30;
      *&v34 = "expected '{'";
      v37 = 259;
      if (mlir::detail::Parser::parseToken(v1, 20, &v34))
      {
        *&v34 = v1;
        *(&v34 + 1) = v32;
        return mlir::detail::Parser::parseCommaSeparatedListUntil(v1, 27, sub_100086358, &v34, 1);
      }
    }

    return 0;
  }

  if (mlir::Token::isKeyword((v3 + 56)))
  {
    v3 = *(v1 + 1);
    goto LABEL_6;
  }

  v32[0] = "expected identifier key in file metadata dictionary";
  v33 = 259;
  mlir::detail::Parser::emitError(v1, v32, &v34);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v42;
      v16 = __p;
      if (v42 != __p)
      {
        do
        {
          v15 = sub_10005BEF4(v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v42 = v14;
      operator delete(v16);
    }

    v17 = v39;
    if (!v39)
    {
      goto LABEL_63;
    }

    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_62;
    }

    do
    {
      v20 = *--v18;
      *v18 = 0;
      if (v20)
      {
        operator delete[]();
      }
    }

    while (v18 != v17);
    goto LABEL_61;
  }

  return v13;
}

uint64_t sub_100086358(mlir::detail::Parser **a1)
{
  v2 = *a1;
  Loc = mlir::Token::getLoc((*(*a1 + 1) + 56));
  v4 = *(v2 + 1);
  v5 = *(v4 + 56);
  if (v5 == 3 || v5 == 12)
  {
LABEL_6:
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = v8;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), &v22);
    v9 = *(v2 + 1);
    *(v9 + 56) = v22;
    *(v9 + 72) = v23;
    *&v22 = "expected ':'";
    v25 = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, &v22) & 1) != 0 && (v20[0] = "expected '{'", v21 = 259, (mlir::detail::Parser::parseToken(v2, 20, v20)))
    {
      return (*a1[1])(*(a1[1] + 1), v7, v8, Loc);
    }

    else
    {
      return 0;
    }
  }

  if (mlir::Token::isKeyword((v4 + 56)))
  {
    v4 = *(v2 + 1);
    goto LABEL_6;
  }

  v20[0] = "expected identifier key for 'resource' entry";
  v21 = 259;
  mlir::detail::Parser::emitError(v2, v20, &v22);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v22);
  v12 = result;
  if (v22)
  {
    mlir::InFlightDiagnostic::report(&v22);
    result = v12;
  }

  if (v32 == 1)
  {
    if (v31 != &v32)
    {
      free(v31);
      result = v12;
    }

    v13 = __p;
    if (__p)
    {
      v14 = v30;
      v15 = __p;
      if (v30 != __p)
      {
        do
        {
          v14 = sub_10005BEF4(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
      result = v12;
    }

    v16 = v27;
    if (v27)
    {
      v17 = v28;
      v18 = v27;
      if (v28 != v27)
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
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
      result = v12;
    }

    if (v24 != &v26)
    {
      free(v24);
      return v12;
    }
  }

  return result;
}

uint64_t sub_1000865CC(mlir::detail::Parser **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(***(*a1 + 1), a2, a3);
  if (Dialect)
  {
    v9 = Dialect;
    if (sub_10006E654(Dialect))
    {
      v37 = sub_10006E654(v9);
      v44 = v7;
      v45 = &v37;
      return mlir::detail::Parser::parseCommaSeparatedListUntil(v7, 27, sub_100086A8C, &v44, 1);
    }

    v37 = 0;
    v39 = 257;
    mlir::detail::Parser::emitError(v7, v38, &v44);
    if (v44)
    {
      LODWORD(v40) = 3;
      v41 = "unexpected 'resource' section for dialect '";
      v42 = 43;
      v19 = &v40;
      v20 = v46;
      if (v47 >= v48)
      {
        if (v46 <= &v40 && v46 + 24 * v47 > &v40)
        {
          v35 = &v40 - v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v20 = v46;
          v19 = (v46 + v35);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
          v19 = &v40;
          v20 = v46;
        }
      }

      v21 = &v20[24 * v47];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v47;
      if (v44)
      {
        v23 = *(v9 + 8);
        v24 = *(v9 + 16);
        v43 = 261;
        v40 = v23;
        v41 = v24;
        mlir::Diagnostic::operator<<(&v45, &v40);
        if (v44)
        {
          LODWORD(v40) = 3;
          v41 = "'";
          v42 = 1;
          v25 = &v40;
          v26 = v46;
          if (v47 >= v48)
          {
            if (v46 <= &v40 && v46 + 24 * v47 > &v40)
            {
              v36 = &v40 - v46;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v26 = v46;
              v25 = (v46 + v36);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v46, v49, v47 + 1, 24);
              v25 = &v40;
              v26 = v46;
            }
          }

          v27 = &v26[24 * v47];
          v28 = *v25;
          *(v27 + 2) = v25[2];
          *v27 = v28;
          ++v47;
        }
      }
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v29 = __p;
      if (__p)
      {
        v30 = v53;
        v31 = __p;
        if (v53 != __p)
        {
          do
          {
            v30 = sub_10005BEF4(v30 - 1);
          }

          while (v30 != v29);
          v31 = __p;
        }

        v53 = v29;
        operator delete(v31);
      }

      v15 = v50;
      if (!v50)
      {
        goto LABEL_46;
      }

      v32 = v51;
      v17 = v50;
      if (v51 == v50)
      {
LABEL_45:
        v51 = v15;
        operator delete(v17);
LABEL_46:
        if (v46 != v49)
        {
          free(v46);
        }

        return v10;
      }

      do
      {
        v33 = *--v32;
        *v32 = 0;
        if (v33)
        {
          operator delete[]();
        }
      }

      while (v32 != v15);
LABEL_44:
      v17 = v50;
      goto LABEL_45;
    }
  }

  else
  {
    v39 = 1283;
    v38[0] = "dialect '";
    v38[2] = a2;
    v38[3] = a3;
    v40 = v38;
    v42 = "' is unknown";
    v43 = 770;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
    mlir::emitError(EncodedSourceLocation, &v40, &v44);
    if (*(*(v7 + 1) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v44);
    }

    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
    if (v44)
    {
      mlir::InFlightDiagnostic::report(&v44);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v53;
        v14 = __p;
        if (v53 != __p)
        {
          do
          {
            v13 = sub_10005BEF4(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v53 = v12;
        operator delete(v14);
      }

      v15 = v50;
      if (!v50)
      {
        goto LABEL_46;
      }

      v16 = v51;
      v17 = v50;
      if (v51 == v50)
      {
        goto LABEL_45;
      }

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
      goto LABEL_44;
    }
  }

  return v10;
}