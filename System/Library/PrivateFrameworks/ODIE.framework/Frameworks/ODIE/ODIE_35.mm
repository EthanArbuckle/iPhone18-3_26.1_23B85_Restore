void llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (*a1 + (v2 << 6) - 64);
    v4 = -64 * v2;
    do
    {
      if (v3 + 2 != *v3)
      {
        free(*v3);
      }

      v3 -= 8;
      v4 += 64;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x300000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMRange>::operator=(a2, v5);
      }

      a2 += 8;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*a1 + (v7 << 6) - 64);
      v9 = -64 * v7;
      do
      {
        if (v8 + 2 != *v8)
        {
          free(*v8);
        }

        v8 -= 8;
        v9 += 64;
      }

      while (v9);
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::growAndEmplaceBack<llvm::SMRange const*,llvm::SMRange const*>(uint64_t a1, _BYTE **a2, _BYTE **a3)
{
  v14 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 64, &v14);
  v8 = &v7[8 * *(a1 + 8)];
  v9 = *a2;
  v10 = *a3;
  *v8 = v8 + 2;
  v8[1] = 0x300000000;
  llvm::SmallVectorImpl<llvm::SMRange>::append<llvm::SMRange const*,void>(v8, v9, v10);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::moveElementsForGrow(a1, v7);
  v11 = v14;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  v12 = (*(a1 + 8) + 1);
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v7[8 * v12 - 8];
}

void llvm::SmallVectorImpl<llvm::SMRange>::append<llvm::SMRange const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 4);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 16);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 16 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 4);
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::doFind<mlir::Value>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 0;
  }

  v3 = *a1;
  v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = v2 - 1;
  v7 = (-348639895 * ((v5 >> 47) ^ v5)) & v6;
  result = (*a1 + 72 * v7);
  v9 = *result;
  if (*a2 != *result)
  {
    v10 = 1;
    while (v9 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & v6;
      result = (v3 + 72 * v7);
      v9 = *result;
      if (*a2 == *result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t *mlir::detail::Parser::parseAttribute(mlir::MLIRContext ****a1, uint64_t *a2)
{
  Attr = a2;
  v173 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = (v4 + 7);
  v6 = *(v4 + 14);
  if (v6 <= 34)
  {
    if (v6 <= 10)
    {
      if (v6 > 4)
      {
        if (v6 != 5)
        {
          if (v6 != 9)
          {
            if (v6 != 10)
            {
              goto LABEL_108;
            }

            v23 = a1;
            v24 = 0;
LABEL_97:
            v22 = mlir::detail::Parser::parseDecOrHexAttr(v23, a2, v24);
            goto LABEL_125;
          }

          v76 = a1;
          v77 = 0;
          goto LABEL_124;
        }

LABEL_105:
        v22 = mlir::detail::Parser::parseExtendedAttr(a1, a2);
        goto LABEL_125;
      }

      if (v6 == 2)
      {
        if (!v4[9] || *v4[8] != 35)
        {
          (*(*v4[20] + 7))(v4[20], v4[13]);
          goto LABEL_170;
        }

        goto LABEL_105;
      }

      if (v6 != 4)
      {
        goto LABEL_108;
      }

      v166.__r_.__value_.__r.__words[0] = &v166.__r_.__value_.__r.__words[2];
      v166.__r_.__value_.__l.__size_ = 0x300000000;
      if (v4[19])
      {
        llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(&v166, v4[8], v4[9] + v4[8]);
        v4 = a1[1];
      }

      mlir::Token::getSymbolReference((v4 + 7), &v163);
      v39 = a1[1];
      *(v39 + 5) = *(v39 + 7);
      v39[12] = v39[9];
      mlir::Lexer::lexToken((a1[1] + 1), v151);
      v41 = a1[1];
      *(v41 + 7) = *v151;
      v41[9] = v152;
      v42 = a1[1];
      if (*(v42 + 14) == 15)
      {
        *(v42 + 5) = *(v42 + 7);
        v43 = v42[8];
        v42[12] = v42[9];
        mlir::Lexer::lexToken((a1[1] + 1), v151);
        v44 = a1[1];
        *(v44 + 7) = *v151;
        v44[9] = v152;
        v42 = a1[1];
        v45 = v42 + 7;
        v46 = *(v42 + 14);
        if (v46 == 15)
        {
          *(v42 + 5) = *v45;
          v42[12] = v42[9];
          mlir::Lexer::lexToken((a1[1] + 1), v151);
          v47 = a1[1];
          *(v47 + 7) = *v151;
          v47[9] = v152;
          v48 = a1[1];
          if (*(v48 + 14) == 4)
          {
            if (v48[19])
            {
              llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(&v166, v48[8], v48[8] + v48[9]);
              v48 = a1[1];
            }

            mlir::Token::getSymbolReference((v48 + 7), __p);
            v49 = a1[1];
            *(v49 + 5) = *(v49 + 7);
            v49[12] = v49[9];
            mlir::Lexer::lexToken((a1[1] + 1), v151);
            v51 = a1[1];
            *(v51 + 7) = *v151;
            v51[9] = v152;
            v52 = **a1[1];
            v53 = v161;
            v54 = __p[0];
            if (v161 >= 0)
            {
              v54 = __p;
            }

            if (v161 < 0)
            {
              v53 = __p[1];
            }

            v154 = 261;
            v151[0] = v54;
            v151[1] = v53;
            v55 = mlir::StringAttr::get(v52, v151, v50);
            mlir::SymbolRefAttr::get(v55, 0, 0, v56);
            operator new();
          }

          v99 = v48[8];
          v151[0] = "expected nested symbol reference identifier";
          v154 = 259;
          mlir::detail::Parser::emitError(a1, v99, v151, v149);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v149);
          Attr = 0;
          goto LABEL_155;
        }

        if (v46 >= 2)
        {
          v42[5] = v43;
          *(v42 + 5) = *v45;
          v42[12] = v42[9];
          mlir::Lexer::lexToken((a1[1] + 1), v151);
          v98 = a1[1];
          *(v98 + 7) = *v151;
          v98[9] = v152;
          v42 = a1[1];
        }
      }

      v84 = v163.__r_.__value_.__r.__words[0];
      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v163;
      }

      v85 = **v42;
      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v163.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v163.__r_.__value_.__l.__size_;
      }

      v154 = 261;
      v151[0] = v84;
      v151[1] = size;
      v87 = mlir::StringAttr::get(v85, v151, v40);
      Attr = mlir::SymbolRefAttr::get(v87, 0, 0, v88);
      v89 = a1[1][19];
      if (v89)
      {
        mlir::AsmParserState::addUses(v89, Attr, v166.__r_.__value_.__l.__data_, LODWORD(v166.__r_.__value_.__r.__words[1]));
      }

LABEL_155:
      if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v163.__r_.__value_.__l.__data_);
      }

      v91 = v166.__r_.__value_.__r.__words[0];
      if (v166.__r_.__value_.__l.__data_ == &v166.__r_.__value_.__r.__words[2])
      {
        goto LABEL_199;
      }

LABEL_198:
      free(v91);
      goto LABEL_199;
    }

    if (v6 > 21)
    {
      if (v6 != 22)
      {
        if (v6 != 24)
        {
          if (v6 == 34)
          {
            *(v4 + 5) = *v5;
            v4[12] = v4[9];
            mlir::Lexer::lexToken((a1[1] + 1), &v166);
            *(a1[1] + 7) = v166;
            v163.__r_.__value_.__r.__words[0] = 0;
            v166.__r_.__value_.__r.__words[0] = "expected '<' in affine map";
            WORD4(v167[0]) = 259;
            if (mlir::detail::Parser::parseToken(a1, 23, &v166) && mlir::detail::Parser::parseAffineMapReference(a1, &v163))
            {
              v151[0] = "expected '>' in affine map";
              v154 = 259;
              if (mlir::detail::Parser::parseToken(a1, 19, v151))
              {
                v22 = mlir::AffineMapAttr::get(v163.__r_.__value_.__r.__words[0]);
                goto LABEL_125;
              }
            }

            goto LABEL_170;
          }

          goto LABEL_108;
        }

        *(v4 + 5) = *v5;
        v4[12] = v4[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v166);
        *(a1[1] + 7) = v166;
        v78 = *(a1[1] + 14);
        if (v78 != 9)
        {
          if (v78 != 10)
          {
            v166.__r_.__value_.__r.__words[0] = "expected constant integer or floating point value";
            WORD4(v167[0]) = 259;
            mlir::detail::Parser::emitWrongTokenError(a1, &v166, v150);
            v83 = v150;
            goto LABEL_169;
          }

          v23 = a1;
          a2 = Attr;
          v24 = 1;
          goto LABEL_97;
        }

        v76 = a1;
        a2 = Attr;
        v77 = 1;
LABEL_124:
        v22 = mlir::detail::Parser::parseFloatAttr(v76, a2, v77);
        goto LABEL_125;
      }

      *(v4 + 5) = *v5;
      v4[12] = v4[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v166);
      *(a1[1] + 7) = v166;
      v166.__r_.__value_.__r.__words[0] = &v166.__r_.__value_.__r.__words[2];
      v166.__r_.__value_.__l.__size_ = 0x400000000;
      v151[0] = &v166;
      v151[1] = a1;
      if (!mlir::detail::Parser::parseCommaSeparatedListUntil(a1, 29, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>, v151, 1))
      {
        goto LABEL_196;
      }

      Dictionary = mlir::ArrayAttr::get(*a1, v166.__r_.__value_.__l.__data_, LODWORD(v166.__r_.__value_.__r.__words[1]));
LABEL_80:
      Attr = Dictionary;
      goto LABEL_197;
    }

    if (v6 != 11)
    {
      if (v6 != 20)
      {
        goto LABEL_108;
      }

      v166.__r_.__value_.__r.__words[0] = &v166.__r_.__value_.__r.__words[2];
      v166.__r_.__value_.__l.__size_ = 0x400000000;
      v171 = 4;
      if (!mlir::detail::Parser::parseAttributeDict(a1, &v166))
      {
        goto LABEL_196;
      }

      Dictionary = mlir::NamedAttrList::getDictionary(&v166, **a1[1]);
      goto LABEL_80;
    }

    mlir::Token::getStringValue(v5, &v163);
    v79 = a1[1];
    *(v79 + 5) = *(v79 + 7);
    v79[12] = v79[9];
    mlir::Lexer::lexToken((a1[1] + 1), &v166);
    *(a1[1] + 7) = v166;
    if (!Attr)
    {
      v90 = a1[1];
      if (*(v90 + 14) != 15)
      {
        v96 = **v90;
        v154 = 260;
        v151[0] = &v163;
        v81 = mlir::StringAttr::get(v96, v151, v80);
        goto LABEL_148;
      }

      *(v90 + 5) = *(v90 + 7);
      v90[12] = v90[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v166);
      *(a1[1] + 7) = v166;
      Attr = mlir::detail::Parser::parseType(a1);
      if (!Attr)
      {
        goto LABEL_149;
      }
    }

    WORD4(v167[0]) = 260;
    v166.__r_.__value_.__r.__words[0] = &v163;
    v81 = mlir::StringAttr::get(&v166, Attr);
LABEL_148:
    Attr = v81;
LABEL_149:
    if ((SHIBYTE(v163.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

    v97 = v163.__r_.__value_.__r.__words[0];
    goto LABEL_151;
  }

  if (v6 <= 59)
  {
    if (v6 > 40)
    {
      if (v6 != 41)
      {
        if (v6 != 42)
        {
          if (v6 != 43)
          {
            goto LABEL_108;
          }

          v25 = v4[8];
          *(v4 + 5) = *v5;
          v4[12] = v4[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v166);
          *(a1[1] + 7) = v166;
          v166.__r_.__value_.__r.__words[0] = "expected '[' after 'distinct'";
          WORD4(v167[0]) = 259;
          if (!mlir::detail::Parser::parseToken(a1, 22, &v166))
          {
            goto LABEL_170;
          }

          v26 = a1[1];
          v27 = v26[8];
          v28 = v26[9];
          v166.__r_.__value_.__r.__words[0] = "expected distinct ID";
          WORD4(v167[0]) = 259;
          if (!mlir::detail::Parser::parseToken(a1, 10, &v166))
          {
            goto LABEL_170;
          }

          UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v27, v28, v29, v30);
          v163.__r_.__value_.__r.__words[0] = UInt64IntegerValue;
          v163.__r_.__value_.__s.__data_[8] = v32;
          if (v32)
          {
            v33 = UInt64IntegerValue;
            v166.__r_.__value_.__r.__words[0] = "expected ']' to close distinct ID";
            WORD4(v167[0]) = 259;
            if (!mlir::detail::Parser::parseToken(a1, 29, &v166))
            {
              goto LABEL_170;
            }

            v151[0] = "expected '<' after distinct ID";
            v154 = 259;
            if (!mlir::detail::Parser::parseToken(a1, 23, v151))
            {
              goto LABEL_170;
            }

            v34 = a1[1];
            if (*(v34 + 14) == 19)
            {
              *(v34 + 5) = *(v34 + 7);
              v34[12] = v34[9];
              mlir::Lexer::lexToken((a1[1] + 1), &v166);
              *(a1[1] + 7) = v166;
              v35 = (**a1)[76];
LABEL_205:
              v129 = a1[1][13];
              v132 = v129[9];
              v130 = (v129 + 9);
              v131 = v132;
              v133 = *(v130 + 16);
              v134 = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::doFind<unsigned long long>(v132, *(v130 + 16), v33);
              if (!v134 || (v135 = v134, v134 == v131 + 16 * v133))
              {
                v166.__r_.__value_.__r.__words[0] = v35;
                v151[0] = mlir::detail::DistinctAttributeUniquer::get<mlir::DistinctAttr,mlir::Attribute &>(*(**v35 + 32), &v166);
                llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>(&v166, v130, &v163, v151);
                Attr = *(v166.__r_.__value_.__r.__words[0] + 8);
                goto LABEL_199;
              }

              Attr = *(v134 + 8);
              if (v35 == Attr[1])
              {
                goto LABEL_199;
              }

              v151[0] = "referenced attribute does not match previous definition: ";
              v154 = 259;
              mlir::detail::Parser::emitError(a1, v25, v151, &v166);
              __p[0] = *(*(v135 + 8) + 8);
              if (v166.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<mlir::Attribute>(&v166.__r_.__value_.__l.__size_, __p);
              }

              goto LABEL_168;
            }

            v128 = mlir::detail::Parser::parseAttribute(a1, Attr);
            if (v128)
            {
              v35 = v128;
              v166.__r_.__value_.__r.__words[0] = "expected '>' to close distinct attribute";
              WORD4(v167[0]) = 259;
              if (!mlir::detail::Parser::parseToken(a1, 19, &v166))
              {
                goto LABEL_170;
              }

              goto LABEL_205;
            }

            v105 = "expected attribute";
          }

          else
          {
            v105 = "expected an unsigned 64-bit integer";
          }

          v151[0] = v105;
          v154 = 259;
          v104 = a1[1][8] - (*(a1[1] + 14) == 0);
          v103 = a1;
          goto LABEL_167;
        }

        v36 = v4[8];
        *(v4 + 5) = *v5;
        v4[12] = v4[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v166);
        *(a1[1] + 7) = v166;
        v166.__r_.__value_.__r.__words[0] = "expected '<' after 'dense_resource'";
        WORD4(v167[0]) = 259;
        if (!mlir::detail::Parser::parseToken(a1, 23, &v166))
        {
          goto LABEL_170;
        }

        LoadedDialect = mlir::MLIRContext::getLoadedDialect(**a1[1], "builtin", 7, v63);
        mlir::detail::Parser::parseResourceHandle(a1, LoadedDialect, &v163);
        if (v164 != 1)
        {
          goto LABEL_170;
        }

        v166.__r_.__value_.__r.__words[0] = "expected '>'";
        WORD4(v167[0]) = 259;
        if (!mlir::detail::Parser::parseToken(a1, 19, &v166))
        {
          goto LABEL_170;
        }

        v65 = v163.__r_.__value_.__l.__size_;
        if (v65 == mlir::detail::TypeIDResolver<mlir::DialectResourceBlobHandle<mlir::BuiltinDialect>,void>::resolveTypeID())
        {
          if (!Attr)
          {
            v36 = a1[1][8];
            v166.__r_.__value_.__r.__words[0] = "expected ':'";
            WORD4(v167[0]) = 259;
            if (!mlir::detail::Parser::parseToken(a1, 15, &v166))
            {
              goto LABEL_170;
            }

            Attr = mlir::detail::Parser::parseType(a1);
            if (!Attr)
            {
              goto LABEL_199;
            }
          }

          v118 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(Attr);
          if (v118)
          {
            v166 = v163;
            v22 = mlir::DenseResourceElementsAttr::get(v118, v119, &v166);
            goto LABEL_125;
          }
        }

        else
        {
        }

LABEL_164:
        v151[0] = v66;
        v154 = 259;
        v103 = a1;
        v104 = v36;
LABEL_167:
        mlir::detail::Parser::emitError(v103, v104, v151, &v166);
LABEL_168:
        v83 = &v166;
        goto LABEL_169;
      }

      v58 = v4[8];
      *(v4 + 5) = *v5;
      v4[12] = v4[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v166);
      *(a1[1] + 7) = v166;
      v166.__r_.__value_.__r.__words[0] = "expected '<' after 'dense'";
      WORD4(v167[0]) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 23, &v166))
      {
        goto LABEL_170;
      }

      v166.__r_.__value_.__r.__words[0] = a1;
      v166.__r_.__value_.__l.__size_ = v167;
      v166.__r_.__value_.__r.__words[2] = 0x400000000;
      v172 = 0;
      v170 = 0;
      v168 = 0;
      v169 = 0;
      LOBYTE(v171) = 0;
      v59 = a1[1];
      if (*(v59 + 14) == 19)
      {
        *(v59 + 5) = *(v59 + 7);
        v59[12] = v59[9];
        mlir::Lexer::lexToken((a1[1] + 1), v151);
        v60 = a1[1];
        *(v60 + 7) = *v151;
        v60[9] = v152;
      }

      else
      {
        {
          goto LABEL_129;
        }

        v151[0] = "expected '>'";
        v154 = 259;
        if (!mlir::detail::Parser::parseToken(a1, 19, v151))
        {
          goto LABEL_129;
        }
      }

      if (!Attr)
      {
        v58 = a1[1][8];
      }

      v61 = mlir::detail::Parser::parseElementsLiteralType(a1, Attr);
      if (v61)
      {
        goto LABEL_130;
      }

LABEL_129:
      Attr = 0;
LABEL_130:
      if (v168)
      {
        v169 = v168;
        operator delete(v168);
      }

      v91 = v166.__r_.__value_.__l.__size_;
      if (v166.__r_.__value_.__l.__size_ == v167)
      {
        goto LABEL_199;
      }

      goto LABEL_198;
    }

    if (v6 == 35)
    {
      *(v4 + 5) = *v5;
      v4[12] = v4[9];
      mlir::Lexer::lexToken((a1[1] + 1), &v166);
      *(a1[1] + 7) = v166;
      v163.__r_.__value_.__r.__words[0] = 0;
      v166.__r_.__value_.__r.__words[0] = "expected '<' in integer set";
      WORD4(v167[0]) = 259;
      if (mlir::detail::Parser::parseToken(a1, 23, &v166) && mlir::detail::Parser::parseIntegerSetReference(a1, &v163))
      {
        v151[0] = "expected '>' in integer set";
        v154 = 259;
        if (mlir::detail::Parser::parseToken(a1, 19, v151))
        {
          v22 = mlir::IntegerSetAttr::get(v163.__r_.__value_.__r.__words[0]);
          goto LABEL_125;
        }
      }

      goto LABEL_170;
    }

    if (v6 != 36)
    {
      goto LABEL_108;
    }

    *(v4 + 5) = *v5;
    v4[12] = v4[9];
    mlir::Lexer::lexToken((a1[1] + 1), &v166);
    *(a1[1] + 7) = v166;
    v166.__r_.__value_.__r.__words[0] = "expected '<' after 'array'";
    WORD4(v167[0]) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 23, &v166))
    {
      goto LABEL_170;
    }

    v36 = a1[1][8];
    Attr = mlir::detail::Parser::parseType(a1);
    __p[0] = Attr;
    if (!Attr)
    {
      v151[0] = "expected an integer or floating point type";
      v154 = 259;
      mlir::detail::Parser::emitError(a1, v36, v151, &v166);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v166);
      goto LABEL_199;
    }

    isIntOrFloat = mlir::Type::isIntOrFloat(__p);
    v38 = *(*Attr + 136);
    if (isIntOrFloat)
    {
      if (v38 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (Attr[1] & 0x3FFFFFFF) == 1)
      {
LABEL_176:
        v115 = a1[1];
        if (*(v115 + 14) == 19)
        {
          *(v115 + 5) = *(v115 + 7);
          v115[12] = v115[9];
          mlir::Lexer::lexToken((a1[1] + 1), &v166);
          *(a1[1] + 7) = v166;
          v22 = mlir::DenseArrayAttr::get(Attr, 0, 0, 0);
          goto LABEL_125;
        }

        v166.__r_.__value_.__r.__words[0] = "expected ':' after dense array type";
        WORD4(v167[0]) = 259;
        if (!mlir::detail::Parser::parseToken(a1, 15, &v166))
        {
          goto LABEL_170;
        }

        v166.__r_.__value_.__r.__words[0] = Attr;
        *&v166.__r_.__value_.__r.__words[1] = 0u;
        v167[0] = 0u;
        v116 = *(*Attr + 136);
        if (v116 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v116 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
        {
          v151[0] = &v166;
          v151[1] = a1;
          v117 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>;
        }

        else
        {
          v151[0] = &v166;
          v151[1] = a1;
          v117 = llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>;
        }

        if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, v117, v151, 0, 0) && (v151[0] = "expected '>' to close an array attribute", v154 = 259, mlir::detail::Parser::parseToken(a1, 19, v151)))
        {
          Attr = mlir::DenseArrayAttr::get(v166.__r_.__value_.__l.__data_, DWORD2(v167[0]), v166.__r_.__value_.__l.__size_, v166.__r_.__value_.__r.__words[2] - v166.__r_.__value_.__l.__size_);
        }

        else
        {
          Attr = 0;
        }

        v97 = v166.__r_.__value_.__l.__size_;
        if (!v166.__r_.__value_.__l.__size_)
        {
          goto LABEL_199;
        }

        v166.__r_.__value_.__r.__words[2] = v166.__r_.__value_.__l.__size_;
LABEL_151:
        operator delete(v97);
        goto LABEL_199;
      }
    }

    else if (v38 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v151[0] = "expected integer or float type, got: ";
      v154 = 259;
      mlir::detail::Parser::emitError(a1, v36, v151, &v166);
      if (v166.__r_.__value_.__r.__words[0])
      {
        LODWORD(v163.__r_.__value_.__l.__data_) = 4;
        v163.__r_.__value_.__l.__size_ = Attr;
        v100 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(v167, &v163, 1);
        v101 = *&v167[0] + 24 * DWORD2(v167[0]);
        v102 = *v100;
        *(v101 + 16) = *(v100 + 16);
        *v101 = v102;
        ++DWORD2(v167[0]);
      }

      goto LABEL_168;
    }

    if ((mlir::Type::getIntOrFloatBitWidth(__p) & 7) != 0)
    {
      v66 = "element type bitwidth must be a multiple of 8";
      goto LABEL_164;
    }

    goto LABEL_176;
  }

  if (v6 > 74)
  {
    if (v6 != 75)
    {
      if (v6 == 80)
      {
        *(v4 + 5) = *v5;
        v4[12] = v4[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v166);
        *(a1[1] + 7) = v166;
        Attr = (**a1)[75];
        goto LABEL_199;
      }

      if (v6 == 83)
      {
        *(v4 + 5) = *v5;
        v4[12] = v4[9];
        mlir::Lexer::lexToken((a1[1] + 1), &v166);
        *(a1[1] + 7) = v166;
        Attr = (**a1)[76];
        goto LABEL_199;
      }

      goto LABEL_108;
    }

    *(v4 + 5) = *v5;
    v4[12] = v4[9];
    mlir::Lexer::lexToken((a1[1] + 1), &v166);
    *(a1[1] + 7) = v166;
    v166.__r_.__value_.__r.__words[0] = "expected '<' after 'strided'";
    WORD4(v167[0]) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 23, &v166))
    {
      goto LABEL_170;
    }

    v151[0] = "expected '['";
    v154 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 22, v151))
    {
      goto LABEL_170;
    }

    v166.__r_.__value_.__r.__words[0] = &v166.__r_.__value_.__r.__words[2];
    v166.__r_.__value_.__l.__size_ = 0x600000000;
    if (*(a1[1] + 14) != 29)
    {
      v106 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(a1, v67, v68, v69);
      if ((v107 & 1) == 0)
      {
        goto LABEL_196;
      }

      v108 = v106;
      while (1)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v166, v108);
        v109 = a1[1];
        if (*(v109 + 14) != 16)
        {
          break;
        }

        *(v109 + 5) = *(v109 + 7);
        v109[12] = v109[9];
        mlir::Lexer::lexToken((a1[1] + 1), v151);
        v110 = a1[1];
        *(v110 + 7) = *v151;
        v110[9] = v152;
        v108 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(a1, v111, v112, v113);
        if ((v114 & 1) == 0)
        {
          goto LABEL_196;
        }
      }
    }

    v151[0] = "expected ']'";
    v154 = 259;
    if (mlir::detail::Parser::parseToken(a1, 29, v151))
    {
      v70 = a1[1];
      if (*(v70 + 14) == 19)
      {
        *(v70 + 5) = *(v70 + 7);
        v70[12] = v70[9];
        mlir::Lexer::lexToken((a1[1] + 1), v151);
        v71 = a1[1];
        *(v71 + 7) = *v151;
        v71[9] = v152;
        v72 = v166.__r_.__value_.__r.__words[0];
        v73 = LODWORD(v166.__r_.__value_.__r.__words[1]);
        v74 = **a1[1];
        v75 = 0;
LABEL_88:
        Dictionary = mlir::StridedLayoutAttr::get(v74, v75, v72, v73);
        goto LABEL_80;
      }

      v151[0] = "expected ','";
      v154 = 259;
      if (mlir::detail::Parser::parseToken(a1, 16, v151))
      {
        v163.__r_.__value_.__r.__words[0] = "expected 'offset' after comma";
        v165 = 259;
        if (mlir::detail::Parser::parseToken(a1, 71, &v163))
        {
          __p[0] = "expected ':' after 'offset'";
          v162 = 259;
          if (mlir::detail::Parser::parseToken(a1, 15, __p))
          {
            v123 = mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(a1, v120, v121, v122);
            if (v124)
            {
              v125 = v123;
              v151[0] = "expected '>'";
              v154 = 259;
              if (mlir::detail::Parser::parseToken(a1, 19, v151))
              {
                v72 = v166.__r_.__value_.__r.__words[0];
                v73 = LODWORD(v166.__r_.__value_.__r.__words[1]);
                v74 = **a1[1];
                v75 = v125;
                goto LABEL_88;
              }
            }
          }
        }
      }
    }

LABEL_196:
    Attr = 0;
LABEL_197:
    v91 = v166.__r_.__value_.__r.__words[0];
    if (v166.__r_.__value_.__l.__data_ == &v166.__r_.__value_.__r.__words[2])
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

  if (v6 == 60)
  {
    *(v4 + 5) = *v5;
    v4[12] = v4[9];
    mlir::Lexer::lexToken((a1[1] + 1), &v166);
    *(a1[1] + 7) = v166;
    Attr = (**a1)[74];
    goto LABEL_199;
  }

  if (v6 == 65)
  {
    *(v4 + 5) = *v5;
    v4[12] = v4[9];
    mlir::Lexer::lexToken((a1[1] + 1), &v166);
    *(a1[1] + 7) = v166;
    v163.__r_.__value_.__r.__words[0] = 0;
    v166.__r_.__value_.__r.__words[0] = "expected '(' in inline location";
    WORD4(v167[0]) = 259;
    if (mlir::detail::Parser::parseToken(a1, 21, &v166) && (mlir::detail::Parser::parseLocationInstance(a1, &v163) & 1) != 0)
    {
      v151[0] = "expected ')' in inline location";
      v154 = 259;
      if (mlir::detail::Parser::parseToken(a1, 28, v151))
      {
        Attr = v163.__r_.__value_.__r.__words[0];
        goto LABEL_199;
      }
    }

    goto LABEL_170;
  }

  if (v6 != 73)
  {
LABEL_108:
    v151[0] = 0;
    v82 = mlir::detail::Parser::parseOptionalType(a1, v151);
    if ((v82 & 0x100) == 0)
    {
      v166.__r_.__value_.__r.__words[0] = "expected attribute value";
      WORD4(v167[0]) = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, &v166, v148);
      v83 = v148;
LABEL_169:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v83);
      goto LABEL_170;
    }

    if (v82)
    {
      v22 = mlir::TypeAttr::get(v151[0]);
      goto LABEL_125;
    }

LABEL_170:
    Attr = 0;
    goto LABEL_199;
  }

  v7 = v4[8];
  *(v4 + 5) = *v5;
  v4[12] = v4[9];
  mlir::Lexer::lexToken((a1[1] + 1), &v166);
  *(a1[1] + 7) = v166;
  v166.__r_.__value_.__r.__words[0] = "Expected '<' after 'sparse'";
  WORD4(v167[0]) = 259;
  if (!mlir::detail::Parser::parseToken(a1, 23, &v166))
  {
    goto LABEL_170;
  }

  v8 = mlir::IntegerType::get(*a1, 64, 0);
  v9 = a1[1];
  if (*(v9 + 14) != 19)
  {
    v92 = v9[8];
    v166.__r_.__value_.__r.__words[0] = a1;
    v166.__r_.__value_.__l.__size_ = v167;
    v166.__r_.__value_.__r.__words[2] = 0x400000000;
    v172 = 0;
    v170 = 0;
    v168 = 0;
    v169 = 0;
    LOBYTE(v171) = 0;
    {
      v93 = a1[1][8];
      v151[0] = a1;
      v151[1] = &v153;
      v152 = 0x400000000;
      v159 = 0;
      v157 = 0;
      v155 = 0;
      v156 = 0;
      v158 = 0;
      {
        Attr = mlir::detail::Parser::parseElementsLiteralType(a1, Attr);
        v147 = v94;
        if (Attr)
        {
          if (LODWORD(v166.__r_.__value_.__r.__words[2]))
          {
            v163.__r_.__value_.__r.__words[0] = mlir::RankedTensorType::get(v166.__r_.__value_.__l.__size_, LODWORD(v166.__r_.__value_.__r.__words[2]), v8, 0);
            v95 = &v163;
          }

          else
          {
            v163.__r_.__value_.__r.__words[0] = 1;
            (*(v94 + 24))(v94, Attr);
            v163.__r_.__value_.__l.__size_ = v136;
            __p[0] = mlir::RankedTensorType::get(&v163, 2, v8, 0);
            v95 = __p;
          }

          v137 = mlir::TensorType::operator mlir::ShapedType(v95);
          v139 = v138;
          v141 = (*(v147 + 8))(v147, Attr);
          v142 = v152;
          if (v152)
          {
            v143 = v151[1];
          }

          else
          {
            __p[0] = *(*(v139 + 24))(v139, v137);
            v143 = __p;
            v142 = 1;
          }

          v163.__r_.__value_.__r.__words[0] = mlir::RankedTensorType::get(v143, v142, v141, 0);
          v144 = mlir::TensorType::operator mlir::ShapedType(&v163);
          __p[0] = v7;
          v163.__r_.__value_.__r.__words[0] = a1;
          v163.__r_.__value_.__l.__size_ = __p;
          Attr = mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>, &v163, *(**Attr + 32), Attr, v147, v140, v146);
        }
      }

      else
      {
        Attr = 0;
      }

      if (v155)
      {
        v156 = v155;
        operator delete(v155);
      }

      if (v151[1] != &v153)
      {
        free(v151[1]);
      }
    }

    else
    {
      Attr = 0;
    }

    if (v168)
    {
      v169 = v168;
      operator delete(v168);
    }

    v91 = v166.__r_.__value_.__l.__size_;
    if (v166.__r_.__value_.__l.__size_ == v167)
    {
      goto LABEL_199;
    }

    goto LABEL_198;
  }

  *(v9 + 5) = *(v9 + 7);
  v9[12] = v9[9];
  mlir::Lexer::lexToken((a1[1] + 1), &v166);
  *(a1[1] + 7) = v166;
  Attr = mlir::detail::Parser::parseElementsLiteralType(a1, Attr);
  if (Attr)
  {
    v11 = v10;
    v151[0] = 0;
    (*(v10 + 24))(v10, Attr);
    v151[1] = v12;
    v166.__r_.__value_.__r.__words[0] = v151;
    v166.__r_.__value_.__l.__size_ = 2;
    v163.__r_.__value_.__r.__words[0] = v8;
    __p[0] = 0;
    v166.__r_.__value_.__r.__words[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v166, &v163, __p);
    v13 = mlir::TensorType::operator mlir::ShapedType(&v166);
    v15 = v14;
    __p[0] = 0;
    v16 = (*(v11 + 8))(v11, Attr);
    v166.__r_.__value_.__r.__words[0] = __p;
    v166.__r_.__value_.__l.__size_ = 1;
    v151[0] = v16;
    v163.__r_.__value_.__r.__words[0] = 0;
    v166.__r_.__value_.__r.__words[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v166, v151, &v163);
    v17 = mlir::TensorType::operator mlir::ShapedType(&v166);
    v19 = v18;
    v20 = mlir::DenseElementsAttr::get(v13, v15, 0, 0);
    v21 = mlir::DenseElementsAttr::get(v17, v19, 0, 0);
    v151[0] = v7;
    v166.__r_.__value_.__r.__words[0] = a1;
    v166.__r_.__value_.__l.__size_ = v151;
    v22 = mlir::detail::StorageUserBase<mlir::SparseElementsAttr,mlir::Attribute,mlir::detail::SparseElementsAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait,mlir::ElementsAttr::Trait>::getChecked<mlir::ShapedType,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>, &v166, *(**Attr + 32), Attr, v11, v20, v21);
LABEL_125:
    Attr = v22;
  }

LABEL_199:
  v126 = *MEMORY[0x277D85DE8];
  return Attr;
}

BOOL mlir::detail::Parser::parseAttributeDict(mlir::detail::Parser *this, mlir::NamedAttrList *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = -4096;
  v8 = -4096;
  v9 = -4096;
  v10 = -4096;
  v5[0] = this;
  v5[1] = &v6;
  v5[2] = a2;
  v2 = mlir::detail::Parser::parseCommaSeparatedList(this, 4, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>, v5, " in attribute dictionary", 24);
  if ((v6 & 1) == 0)
  {
    MEMORY[0x25F891030](v7, 8);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::detail::Parser::parseFloatAttr(mlir::detail::Parser *a1, uint64_t *F64Type, int a3)
{
  v22[26] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  *&v18 = 0;
  if (llvm::StringRef::getAsDouble((v6 + 64), &v18, 1))
  {
    *&v18 = "floating point value too large for attribute";
    v20 = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), &v18, v22);
    v7 = v22;
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v7);
    result = 0;
    goto LABEL_14;
  }

  v8 = *&v18;
  v9 = *(a1 + 1);
  *(v9 + 80) = *(v9 + 56);
  *(v9 + 96) = *(v9 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
  v10 = *(a1 + 1);
  *(v10 + 56) = v18;
  *(v10 + 72) = v19;
  if (!F64Type)
  {
    v11 = *(a1 + 1);
    if (*(v11 + 56) == 15)
    {
      *(v11 + 80) = *(v11 + 56);
      *(v11 + 96) = *(v11 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v18);
      v12 = *(a1 + 1);
      *(v12 + 56) = v18;
      *(v12 + 72) = v19;
      result = mlir::detail::Parser::parseType(a1);
      F64Type = result;
      if (!result)
      {
        goto LABEL_14;
      }
    }

    else
    {
      F64Type = mlir::Builder::getF64Type(a1);
    }
  }

  v14 = *F64Type;
  v15 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v14 + 8, v15))
  {
    *&v18 = "floating point value not valid for specified type";
    v20 = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), &v18, v21);
    v7 = v21;
    goto LABEL_13;
  }

  v16 = -v8;
  if (!a3)
  {
    v16 = v8;
  }

  result = mlir::FloatAttr::get(F64Type, v16);
LABEL_14:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::detail::Parser::parseDecOrHexAttr(mlir::detail::Parser *a1, uint64_t a2, int a3)
{
  v34[26] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  v26 = *(v6 + 7);
  v27 = v6[9];
  v7 = v27;
  v8 = *(&v26 + 1);
  *(v6 + 5) = v26;
  v6[12] = v7;
  mlir::Lexer::lexToken((*(a1 + 1) + 8), &v30);
  v9 = *(a1 + 1);
  *(v9 + 7) = v30;
  v9[9] = v31;
  if (!a2)
  {
    v10 = *(a1 + 1);
    if (*(v10 + 14) == 15)
    {
      *(v10 + 5) = *(v10 + 7);
      v10[12] = v10[9];
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v30);
      v11 = *(a1 + 1);
      *(v11 + 7) = v30;
      v11[9] = v31;
      a2 = mlir::detail::Parser::parseType(a1);
      if (!a2)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a2 = mlir::IntegerType::get(*a1, 64, 0);
    }
  }

  v12 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(a2);
  if (v12)
  {
    v14 = v12;
    LOBYTE(v30) = 0;
    v32 = 0;
    v15 = (*v13)(v13, v12);
    if (mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, &v30, &v26, a3, v15))
    {
      v16 = mlir::FloatAttr::get(v14, &v30);
    }

    else
    {
      v16 = 0;
    }

    if (v32 == 1)
    {
      llvm::APFloat::Storage::~Storage(&v30);
    }

    goto LABEL_31;
  }

  v17 = *(*a2 + 136);
  if (v17 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v17 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    *&v30 = "integer literal not valid for specified type";
    v33 = 259;
    mlir::detail::Parser::emitError(a1, v8, &v30, v34);
    v20 = v34;
LABEL_29:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
LABEL_30:
    v16 = 0;
    goto LABEL_31;
  }

  v19 = v17 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || a3 == 0;
  if (!v19 && *(a2 + 8) >> 30 == 2)
  {
    *&v30 = "negative integer literal not valid for unsigned integer type";
    v33 = 259;
    mlir::detail::Parser::emitError(a1, v8, &v30, v29);
    v20 = v29;
    goto LABEL_29;
  }

  buildAttributeAPInt(&v23, a2, a3, v8, v7);
  if ((v25 & 1) == 0)
  {
    *&v30 = "integer constant out of range for attribute";
    v33 = 259;
    mlir::detail::Parser::emitError(a1, v8, &v30, v28);
    v20 = v28;
    goto LABEL_29;
  }

  v16 = mlir::IntegerAttr::get(a2, &v23);
  if ((v25 & 1) != 0 && v24 >= 0x41 && v23)
  {
    MEMORY[0x25F891010](v23, 0x1000C8000313F17);
  }

LABEL_31:
  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t mlir::detail::Parser::parseOptionalAttribute(mlir::detail::Parser *a1, void *a2, uint64_t *a3)
{
  v4 = *(*(a1 + 1) + 56);
  v5 = (v4 - 4) > 0x3D || ((1 << (v4 - 4)) & 0x21000060C01500E3) == 0;
  if (v5 && ((v10 = v4 - 73, v11 = v10 > 0xA, v12 = (1 << v10) & 0x481, !v11) ? (v13 = v12 == 0) : (v13 = 1), v13))
  {
    v15 = 0;
    v14 = mlir::detail::Parser::parseOptionalType(a1, &v15);
    v7 = v14;
    if (v14 & 0x100) != 0 && (v14)
    {
      *a2 = mlir::TypeAttr::get(v15);
    }

    v8 = HIBYTE(v7);
  }

  else
  {
    v6 = mlir::detail::Parser::parseAttribute(a1, a3);
    *a2 = v6;
    LOBYTE(v7) = v6 != 0;
    v8 = 1;
  }

  return v7 | (v8 << 8);
}

uint64_t buildAttributeAPInt(uint64_t a1, uint64_t a2, int a3, unint64_t a4, unint64_t a5)
{
  v18 = a2;
  v17 = 1;
  v16 = 0;
  v8 = 10;
  if (a5 >= 2)
  {
    if (*(a4 + 1) == 120)
    {
      v8 = 0;
    }

    else
    {
      v8 = 10;
    }
  }

  v19 = a4;
  v20 = a5;
  result = llvm::StringRef::consumeInteger(&v19, v8, &v16);
  if ((result & 1) != 0 || v20)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
    v11 = v17;
    goto LABEL_41;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v10 = 64;
  }

  else
  {
    result = mlir::Type::getIntOrFloatBitWidth(&v18);
    v10 = result;
  }

  v11 = v17;
  v12 = v17 - v10;
  if (v17 < v10)
  {
    result = llvm::APInt::zext(&v16, v10, &v19);
    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    v16 = v19;
    v11 = v20;
    v17 = v20;
LABEL_26:
    if (a3)
    {
      llvm::APInt::flipAllBits(&v16);
      result = llvm::APInt::operator++(&v16);
      v11 = v17;
      v13 = (v16 + 8 * ((v17 - 1) >> 6));
      if (v17 < 0x41)
      {
        v13 = &v16;
      }

      if (((*v13 >> (v17 - 1)) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v14 = *(*a2 + 136);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (*(a2 + 8) >> 30 != 1)
        {
          goto LABEL_44;
        }
      }

      else if (v14 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_44;
      }

      v15 = (v16 + 8 * ((v11 - 1) >> 6));
      if (v11 < 0x41)
      {
        v15 = &v16;
      }

      if ((*v15 >> (v11 - 1)))
      {
        goto LABEL_40;
      }
    }

LABEL_44:
    *(a1 + 8) = v11;
    *a1 = v16;
    *(a1 + 16) = 1;
    return result;
  }

  if (v17 > v10)
  {
    if (v17 > 0x40)
    {
      result = llvm::APInt::countLeadingZerosSlowCase(&v16);
    }

    else
    {
      result = v17 + __clz(v16) - 64;
    }

    if (result < v12)
    {
      goto LABEL_40;
    }

    result = llvm::APInt::trunc(&v16, v10, &v19);
    if (v17 >= 0x41)
    {
      result = v16;
      if (v16)
      {
        result = MEMORY[0x25F891010](v16, 0x1000C8000313F17);
      }
    }

    v16 = v19;
    v11 = v20;
    v17 = v20;
  }

  if (v10)
  {
    goto LABEL_26;
  }

  if (!a3)
  {
    goto LABEL_44;
  }

LABEL_40:
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_41:
  if (v11 >= 0x41)
  {
    result = v16;
    if (v16)
    {
      return MEMORY[0x25F891010](v16, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::parse(_anonymous_namespace_::TensorLiteralParser *this, int a2)
{
  v2 = *this;
  v3 = *(*this + 8);
  v6 = *(v3 + 56);
  v4 = v3 + 56;
  v5 = v6;
  if (a2 && v5 == 11)
  {
    v7 = *(this + 104);
    v8 = *(v4 + 16);
    *(this + 5) = *v4;
    *(this + 12) = v8;
    if ((v7 & 1) == 0)
    {
      *(this + 104) = 1;
    }

    v9 = *(v2 + 8);
    *(v9 + 80) = *(v9 + 56);
    *(v9 + 96) = *(v9 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v12);
    v10 = *(v2 + 8);
    *(v10 + 56) = v12;
    *(v10 + 72) = v13;
    return 1;
  }

  else if (v5 == 22)
  {
  }

  else
  {
  }
}

uint64_t *mlir::detail::Parser::parseElementsLiteralType(mlir::detail::Parser *a1, uint64_t *a2)
{
  v14[26] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v11[0] = "expected ':'";
    v12 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 15, v11))
    {
      goto LABEL_13;
    }

    a2 = mlir::detail::Parser::parseType(a1);
    if (!a2)
    {
      goto LABEL_13;
    }
  }

  v4 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a2);
  if (!v4)
  {
    v11[0] = "elements literal must be a shaped type";
    v12 = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), v11, v14);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    goto LABEL_15;
  }

  v5 = v3;
  if (!(*(v3 + 16))(v3, v4))
  {
LABEL_12:
    v11[0] = "elements literal type must have static shape";
    v12 = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), v11, v13);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
LABEL_13:
    v4 = 0;
    goto LABEL_15;
  }

  v6 = (*(v5 + 24))(v5, v4);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_12;
  }

LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t anonymous namespace::TensorLiteralParser::getAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = *MEMORY[0x277D85DE8];
  v110 = a3;
  v111 = a4;
  v8 = (*(a4 + 8))(a4, a3);
  v109 = v8;
  if (*(a1 + 104) == 1)
  {
    if (mlir::Type::isIntOrFloat(&v109) || ((v9 = *(*v8 + 136), v9 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) ? (v10 = v9 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id) : (v10 = 1), v10))
    {
      v11 = (*(a4 + 8))(a4, a3);
      __p.__r_.__value_.__r.__words[0] = v11;
      if (!mlir::Type::isIntOrFloat(&__p))
      {
        v12 = *(*v11 + 136);
        if (v12 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v12 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v46 = *a1;
          v119 = 257;
          mlir::detail::Parser::emitError(v46, a2, v118, &v120);
          if (v120.__first_)
          {
            mlir::Diagnostic::operator<<<64ul>(&v120.__begin_, "expected floating-point, integer, or complex element type, got ");
            if (v120.__first_)
            {
              LODWORD(v116) = 4;
              *(&v116 + 1) = v11;
              v47 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v120.__end_cap_, &v116, 1);
              v48 = &v120.__end_cap_.__value_[LODWORD(v120.__end_cap_.__value_)];
              v49 = *v47;
              v48->__r_.__value_.__r.__words[2] = *(v47 + 16);
              *&v48->__r_.__value_.__l.__data_ = v49;
              ++LODWORD(v120.__end_cap_.__value_);
            }
          }

          goto LABEL_25;
        }
      }

      __src[0] = 0;
      __src[1] = 0;
      end = 0;
      v14 = *a1;
      v116 = *(a1 + 80);
      v117 = *(a1 + 96);
      mlir::Token::getHexStringValue(&v116, &v120);
      if (LOBYTE(v120.__end_cap_.__value_) == 1)
      {
        end = v120.__end_;
        *__src = *&v120.__first_;
        v15 = v120.__end_ >> 56;
        begin = v120.__begin_;
        first = v120.__first_;
      }

      else
      {
        v119 = 259;
        mlir::detail::Parser::emitError(v14, *(&v116 + 1), v118, &v120);
        v31 = v121;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
        if (v31)
        {
          goto LABEL_26;
        }

        begin = 0;
        first = 0;
        LODWORD(v15) = 0;
      }

      if ((v15 & 0x80u) == 0)
      {
        v32 = __src;
      }

      else
      {
        v32 = first;
      }

      if ((v15 & 0x80u) == 0)
      {
        v33 = v15;
      }

      else
      {
        v33 = begin;
      }

      if (mlir::DenseElementsAttr::isValidRawBuffer(a3, a4, v32, v33, &v112))
      {
        Raw = mlir::DenseIntOrFPElementsAttr::getRaw(a3, a4, v32, v33);
      }

      else
      {
        v34 = *a1;
        v119 = 257;
        mlir::detail::Parser::emitError(v34, a2, v118, &v120);
        if (v120.__first_)
        {
          mlir::Diagnostic::operator<<<54ul>(&v120.__begin_, "elements hex data size is invalid for provided type: ");
          if (v120.__first_)
          {
            LODWORD(v116) = 4;
            *(&v116 + 1) = a3;
            v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v120.__end_cap_, &v116, 1);
            v36 = &v120.__end_cap_.__value_[LODWORD(v120.__end_cap_.__value_)];
            v37 = *v35;
            v36->__r_.__value_.__r.__words[2] = *(v35 + 16);
            *&v36->__r_.__value_.__l.__data_ = v37;
            ++LODWORD(v120.__end_cap_.__value_);
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
        Raw = 0;
      }

      if ((SHIBYTE(end) & 0x80000000) == 0)
      {
        goto LABEL_168;
      }

      v38 = __src[0];
LABEL_167:
      operator delete(v38);
      goto LABEL_168;
    }
  }

  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(a1 + 8);
    v20 = (*(a4 + 24))(a4, a3);
    if (v21 != v18 || memcmp(v19, v20, 8 * v18))
    {
      v22 = *a1;
      v119 = 257;
      mlir::detail::Parser::emitError(v22, a2, v118, &v120);
      if (v120.__first_)
      {
        mlir::Diagnostic::operator<<<38ul>(&v120.__begin_, "inferred shape of elements literal ([");
      }

      v23 = *(a1 + 16);
      *&v116 = *(a1 + 8);
      *(&v116 + 1) = v23;
      v24 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(&v120, &v116);
      v25 = v24;
      if (*v24)
      {
        mlir::Diagnostic::operator<<<26ul>((v24 + 1), "]) does not match type ([");
      }

      __src[0] = (*(a4 + 24))(a4, a3);
      __src[1] = v26;
      v27 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v25, __src);
      if (*v27)
      {
        mlir::Diagnostic::operator<<<3ul>((v27 + 1), "])");
      }

LABEL_25:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
LABEL_26:
      Raw = 0;
      goto LABEL_168;
    }
  }

  if ((*(a1 + 104) & 1) == 0 && *(a1 + 56) == *(a1 + 64))
  {
    v50 = (*(a4 + 24))(a4, a3);
    if (!v51)
    {
      goto LABEL_71;
    }

    v52 = 8 * v51;
    v53 = 1;
    do
    {
      v54 = *v50++;
      v53 *= v54;
      v52 -= 8;
    }

    while (v52);
    if (v53)
    {
LABEL_71:
      v55 = *a1;
      v119 = 257;
      mlir::detail::Parser::emitError(v55, a2, v118, &v120);
      if (v120.__first_)
      {
        mlir::Diagnostic::operator<<<33ul>(&v120.__begin_, "parsed zero elements, but type (");
        if (v120.__first_)
        {
          mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v120.__begin_, &v110);
          if (v120.__first_)
          {
            mlir::Diagnostic::operator<<<22ul>(&v120.__begin_, ") expected at least 1");
          }
        }
      }

      goto LABEL_25;
    }
  }

  v29 = *(*v8 + 136);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v8 = v8[1];
    v109 = v8;
  }

  v30 = *(*v8 + 136);
  if (v30 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    __src[0] = 0;
    __src[1] = 0;
    end = 0;
    v40 = *(a1 + 64) - *(a1 + 56);
    if (v40)
    {
      if (!((v40 >> 5) >> 60))
      {
        v120.__end_cap_.__value_ = __src;
        std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::APInt>>(v40 >> 5);
      }

      std::vector<llvm::APInt>::__throw_length_error[abi:nn200100]();
    }

    v108 = v29;
    v41 = *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && *(v8 + 2) >> 30 == 2;
    v59 = *(a1 + 56);
    v58 = *(a1 + 64);
    if (v59 == v58)
    {
      goto LABEL_155;
    }

    while (1)
    {
      v60 = *v59;
      v61 = *(v59 + 2);
      if ((v60 & v41) == 1)
      {
        break;
      }

      v62 = *(v59 + 2);
      if (v62 == 60 || v62 == 80)
      {
        if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v8[1] & 0x3FFFFFFF) != 1)
        {
          v63 = *a1;
          v119 = 257;
          mlir::detail::Parser::emitError(v63, v61, v118, &v120);
          if (v120.__first_)
          {
            mlir::Diagnostic::operator<<<46ul>(&v120.__begin_, "expected i1 type for 'true' or 'false' values");
          }

          goto LABEL_153;
        }

        LODWORD(v120.__begin_) = 1;
        v120.__first_ = (v62 == 80);
        std::vector<llvm::APInt>::push_back[abi:nn200100](__src, &v120);
      }

      else
      {
        if (v62 == 9)
        {
          v98 = *a1;
          v119 = 257;
          mlir::detail::Parser::emitError(v98, v61, v118, &v120);
          if (v120.__first_)
          {
            mlir::Diagnostic::operator<<<53ul>(&v120.__begin_, "expected integer elements, but parsed floating-point");
          }

          goto LABEL_153;
        }

        buildAttributeAPInt(&v116, v8, v60, *(v59 + 2), *(v59 + 3));
        if (v117 != 1)
        {
          v99 = *a1;
          *&v118[0] = "integer constant out of range for type";
          v119 = 259;
          mlir::detail::Parser::emitError(v99, v61, v118, &v120);
          goto LABEL_153;
        }

        std::vector<llvm::APInt>::push_back[abi:nn200100](__src, &v116);
        if (DWORD2(v116) >= 0x41 && v116)
        {
          MEMORY[0x25F891010](v116, 0x1000C8000313F17);
        }
      }

      v59 += 32;
      if (v59 == v58)
      {
        goto LABEL_155;
      }
    }

    v94 = *a1;
    v119 = 257;
    mlir::detail::Parser::emitError(v94, v61, v118, &v120);
    if (v120.__first_)
    {
      mlir::Diagnostic::operator<<<62ul>(&v120.__begin_, "expected unsigned integer elements, but parsed negative value");
    }

LABEL_153:
    v100 = v121;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v120);
    if ((v100 & 1) == 0)
    {
LABEL_155:
      v101 = (__src[1] - __src[0]) >> 4;
      if (v108 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        v102 = mlir::DenseElementsAttr::get(a3, a4, __src[0], v101 >> 1);
      }

      else
      {
        v102 = mlir::DenseElementsAttr::get(a3, a4, __src[0], v101);
      }

      Raw = v102;
    }

    else
    {
      Raw = 0;
    }

    v103 = __src[0];
    if (__src[0])
    {
      v104 = __src[1];
      v38 = __src[0];
      if (__src[1] != __src[0])
      {
        do
        {
          v105 = *(v104 - 2);
          v104 -= 2;
          if (v105 >= 0x41 && *v104)
          {
            MEMORY[0x25F891010](*v104, 0x1000C8000313F17);
          }
        }

        while (v104 != v103);
        v38 = __src[0];
      }

      __src[1] = v103;
      goto LABEL_167;
    }

    goto LABEL_168;
  }

  if (!llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v8))
  {
    (*(a4 + 8))(a4, a3);
    if (*(a1 + 104) != 1)
    {
      v116 = 0uLL;
      v117 = 0;
      __src[0] = 0;
      __src[1] = 0;
      end = 0;
      v64 = *(a1 + 64) - *(a1 + 56);
      v65 = v64 >> 5;
      if (v64)
      {
        if (v65 <= 0xAAAAAAAAAAAAAAALL)
        {
          v120.__end_cap_.__value_ = &v116;
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(&v116, v65);
        }

LABEL_169:
        std::vector<std::string>::__throw_length_error[abi:nn200100]();
      }

      std::vector<llvm::StringRef>::reserve(__src, v65);
      v66 = *(a1 + 56);
      v67 = *(a1 + 64);
      if (v66 == v67)
      {
        v82 = __src[1];
      }

      else
      {
        do
        {
          v118[0] = *v66;
          v118[1] = v66[1];
          mlir::Token::getStringValue((v118 + 8), &__p);
          v68 = *(&v116 + 1);
          if (*(&v116 + 1) >= v117)
          {
            v71 = 0xAAAAAAAAAAAAAAABLL * ((*(&v116 + 1) - v116) >> 3);
            v72 = v71 + 1;
            if (v71 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_169;
            }

            if (0x5555555555555556 * ((v117 - v116) >> 3) > v72)
            {
              v72 = 0x5555555555555556 * ((v117 - v116) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v117 - v116) >> 3) >= 0x555555555555555)
            {
              v73 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v73 = v72;
            }

            v120.__end_cap_.__value_ = &v116;
            if (v73)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(&v116, v73);
            }

            v74 = 8 * ((*(&v116 + 1) - v116) >> 3);
            v75 = *&__p.__r_.__value_.__l.__data_;
            *(v74 + 16) = *(&__p.__r_.__value_.__l + 2);
            *v74 = v75;
            memset(&__p, 0, sizeof(__p));
            v70 = 24 * v71 + 24;
            v76 = 24 * v71 - (*(&v116 + 1) - v116);
            memcpy((v74 - (*(&v116 + 1) - v116)), v116, *(&v116 + 1) - v116);
            v77 = v116;
            v78 = v117;
            *&v116 = v76;
            *(&v116 + 1) = v70;
            v117 = 0;
            v120.__end_ = v77;
            v120.__end_cap_.__value_ = v78;
            v120.__first_ = v77;
            v120.__begin_ = v77;
            std::__split_buffer<std::string>::~__split_buffer(&v120);
            *(&v116 + 1) = v70;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              v70 = *(&v116 + 1);
            }
          }

          else
          {
            v69 = *&__p.__r_.__value_.__l.__data_;
            *(*(&v116 + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
            *v68 = v69;
            v70 = v68 + 24;
            *(&v116 + 1) = v68 + 24;
          }

          v79 = __src[1];
          if (__src[1] >= end)
          {
            v83 = __src[0];
            v84 = __src[1] - __src[0];
            v85 = (__src[1] - __src[0]) >> 4;
            v86 = v85 + 1;
            if ((v85 + 1) >> 60)
            {
              std::vector<llvm::StringRef>::__throw_length_error[abi:nn200100]();
            }

            v87 = end - __src[0];
            if ((end - __src[0]) >> 3 > v86)
            {
              v86 = v87 >> 3;
            }

            if (v87 >= 0x7FFFFFFFFFFFFFF0)
            {
              v86 = 0xFFFFFFFFFFFFFFFLL;
            }

            if (v86)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(__src, v86);
            }

            v88 = (__src[1] - __src[0]) >> 4;
            v89 = (16 * v85);
            if (*(v70 - 1) >= 0)
            {
              v90 = v70 - 24;
            }

            else
            {
              v90 = *(v70 - 24);
            }

            *v89 = v90;
            v91 = *(v70 - 1);
            if ((v91 & 0x80u) != 0)
            {
              v91 = *(v70 - 16);
            }

            *(16 * v85 + 8) = v91;
            v82 = v89 + 2;
            v92 = &v89[-2 * v88];
            memcpy(v92, v83, v84);
            v93 = __src[0];
            __src[0] = v92;
            __src[1] = v82;
            end = 0;
            if (v93)
            {
              operator delete(v93);
            }
          }

          else
          {
            if (*(v70 - 1) >= 0)
            {
              v80 = v70 - 24;
            }

            else
            {
              v80 = *(v70 - 24);
            }

            *__src[1] = v80;
            v81 = *(v70 - 1);
            if ((v81 & 0x80u) != 0)
            {
              v81 = *(v70 - 16);
            }

            v79[1] = v81;
            v82 = v79 + 2;
          }

          __src[1] = v82;
          v66 += 2;
        }

        while (v66 != v67);
      }

      Raw = mlir::DenseStringElementsAttr::get(a3, a4, __src[0], ((v82 - __src[0]) >> 4));
      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      v120.__first_ = &v116;
      std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v120);
      goto LABEL_168;
    }

    mlir::Token::getStringValue((a1 + 80), &v120);
    end_high = SHIBYTE(v120.__end_);
    v57 = v120.__first_;
    if (SHIBYTE(v120.__end_) >= 0)
    {
      v57 = &v120;
    }

    if (SHIBYTE(v120.__end_) < 0)
    {
      end_high = v120.__begin_;
    }

    *&v118[0] = v57;
    *(&v118[0] + 1) = end_high;
    Raw = mlir::DenseStringElementsAttr::get(a3, a4, v118, 1);
    if ((SHIBYTE(v120.__end_) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    v38 = v120.__first_;
    goto LABEL_167;
  }

  v116 = 0uLL;
  v117 = 0;
  v42 = *(a1 + 56);
  v43 = *(a1 + 64);
  v44 = v43 - v42;
  if (v43 != v42)
  {
    if ((v44 >> 5) <= 0xAAAAAAAAAAAAAAALL)
    {
      v120.__end_cap_.__value_ = &v116;
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::APFloat>>(v44 >> 5);
    }

    std::vector<llvm::APFloat>::__throw_length_error[abi:nn200100]();
  }

  if (v29 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v45 = mlir::DenseElementsAttr::get(v110, v111, v116, (0xAAAAAAAAAAAAAAABLL * ((*(&v116 + 1) - v116) >> 3)) >> 1);
  }

  else
  {
    v45 = mlir::DenseElementsAttr::get(v110, v111, v116, 0xAAAAAAAAAAAAAAABLL * ((*(&v116 + 1) - v116) >> 3));
  }

  Raw = v45;
  v95 = v116;
  if (v116)
  {
    v96 = *(&v116 + 1);
    v97 = v116;
    if (*(&v116 + 1) != v116)
    {
      do
      {
        llvm::APFloat::Storage::~Storage((v96 - 24));
      }

      while (v96 != v95);
      v97 = v116;
    }

    *(&v116 + 1) = v95;
    v38 = v97;
    goto LABEL_167;
  }

LABEL_168:
  v106 = *MEMORY[0x277D85DE8];
  return Raw;
}

unint64_t mlir::detail::Parser::parseStridedLayoutAttr(void)::$_1::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 == 26)
  {
    *(v5 + 80) = *v6;
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), &v22);
    v8 = 0;
    v9 = *(a1 + 8);
    *(v9 + 56) = v22;
    *(v9 + 72) = v23;
    v10 = 0x8000000000000000;
  }

  else
  {
    v11 = *(v5 + 64);
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v22);
      v12 = *(a1 + 8);
      *(v12 + 56) = v22;
      *(v12 + 72) = v23;
      v5 = *(a1 + 8);
    }

    if (*(v5 + 56) == 10 && (UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v5 + 64), *(v5 + 72), a3, a4), (v14 & 1) != 0) && (v15 = UInt64IntegerValue, (UInt64IntegerValue & 0x8000000000000000) == 0))
    {
      v16 = *(a1 + 8);
      *(v16 + 80) = *(v16 + 56);
      *(v16 + 96) = *(v16 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v22);
      v17 = *(a1 + 8);
      *(v17 + 56) = v22;
      *(v17 + 72) = v23;
      if (v7 == 24)
      {
        v8 = -v15;
      }

      else
      {
        v8 = v15;
      }

      v10 = v8 & 0xFFFFFFFFFFFFFF00;
      v8 = v8;
    }

    else
    {
      v20 = "expected a 64-bit signed integer or '?'";
      v21 = 259;
      mlir::detail::Parser::emitError(a1, v11, &v20, &v22);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
      v8 = 0;
      v10 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10 | v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::try_emplace<mlir::DistinctAttr&>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v14 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(*a2, *(a2 + 16), *a3, &v14);
  v9 = v14;
  if (result)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v15 = v14;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  if (4 * v11 + 4 >= 3 * v12)
  {
    v12 *= 2;
    goto LABEL_10;
  }

  if (v12 + ~v11 - *(a2 + 12) <= v12 >> 3)
  {
LABEL_10:
    llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(a2, v12);
    result = llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(*a2, *(a2 + 16), *a3, &v15);
    v11 = *(a2 + 8);
    v9 = v15;
  }

  *(a2 + 8) = v11 + 1;
  if (*v9 != -1)
  {
    --*(a2 + 12);
  }

  *v9 = *a3;
  v9[1] = *a4;
  v10 = 1;
LABEL_8:
  v13 = *a2 + 16 * *(a2 + 16);
  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v10;
  return result;
}

uint64_t anonymous namespace::TensorLiteralParser::parseList(mlir::detail::Parser **a1, uint64_t a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v8 = 1;
  v9 = a1;
  __src = v12;
  v11 = 0x400000000;
  v7 = 0;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = &v8;
  v6[3] = &v9;
  v6[4] = &__src;
  v3 = 0;
  {
    *(a2 + 8) = 0;
    llvm::SmallVectorTemplateBase<long long,true>::push_back(a2, v7);
    llvm::SmallVectorImpl<long long>::append<long long *,void>(a2, __src, __src + 8 * v11);
    v3 = 1;
  }

  if (__src != v12)
  {
    free(__src);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t anonymous namespace::TensorLiteralParser::parseElement(_anonymous_namespace_::TensorLiteralParser *this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*this + 8);
  v5 = (v3 + 56);
  v4 = *(v3 + 56);
  if (v4 > 23)
  {
    if (v4 == 24)
    {
      *(v3 + 80) = *v5;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(v2 + 8) + 8), &v46);
      v20 = *(v2 + 8);
      *(v20 + 56) = v46;
      *(v20 + 72) = v47;
      v21 = *this;
      v22 = *(*this + 8);
      v24 = (v22 + 56);
      v23 = *(v22 + 56);
      if ((v23 - 9) >= 2)
      {
        v44[0] = "expected integer or floating point literal";
        v45 = 259;
        v26 = *(v22 + 64) - (v23 == 0);
        goto LABEL_34;
      }

      v10 = *(this + 8);
      v25 = *(this + 9);
      if (v10 < v25)
      {
        *v10 = 1;
        v12 = *v24;
        v13 = *(v24 + 2);
        goto LABEL_15;
      }

      v39 = *(this + 7);
      v40 = (v10 - v39) >> 5;
      v41 = v40 + 1;
      if (!((v40 + 1) >> 59))
      {
        v42 = v25 - v39;
        if (v42 >> 4 > v41)
        {
          v41 = v42 >> 4;
        }

        if (v42 >= 0x7FFFFFFFFFFFFFE0)
        {
          v43 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v41;
        }

        if (v43)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,mlir::Token>>>(v43);
        }

        v27 = 32 * v40;
        *(32 * v40) = 1;
        v28 = *v24;
        v29 = *(v24 + 2);
        goto LABEL_29;
      }

LABEL_45:
      std::vector<std::pair<BOOL,mlir::Token>>::__throw_length_error[abi:nn200100]();
    }

    if (v4 != 80 && v4 != 60)
    {
      goto LABEL_27;
    }

LABEL_13:
    v10 = *(this + 8);
    v11 = *(this + 9);
    if (v10 < v11)
    {
      *v10 = 0;
      v12 = *v5;
      v13 = *(v5 + 2);
LABEL_15:
      *(v10 + 24) = v13;
      *(v10 + 8) = v12;
      v14 = v10 + 32;
LABEL_31:
      *(this + 8) = v14;
      v34 = *this;
      v35 = *(v34 + 8);
      *(v35 + 80) = *(v35 + 56);
      *(v35 + 96) = *(v35 + 72);
      mlir::Lexer::lexToken((*(v34 + 8) + 8), &v46);
      v36 = *(v34 + 8);
      *(v36 + 56) = v46;
      *(v36 + 72) = v47;
LABEL_32:
      v9 = 1;
      goto LABEL_35;
    }

    v15 = *(this + 7);
    v16 = (v10 - v15) >> 5;
    v17 = v16 + 1;
    if (!((v16 + 1) >> 59))
    {
      v18 = v11 - v15;
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
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,mlir::Token>>>(v19);
      }

      v27 = 32 * v16;
      *(32 * v16) = 0;
      v28 = *v5;
      v29 = *(v5 + 2);
LABEL_29:
      *(v27 + 24) = v29;
      *(v27 + 8) = v28;
      v14 = v27 + 32;
      v30 = *(this + 7);
      v31 = *(this + 8) - v30;
      v32 = v27 - v31;
      memcpy((v27 - v31), v30, v31);
      v33 = *(this + 7);
      *(this + 7) = v32;
      *(this + 8) = v14;
      *(this + 9) = 0;
      if (v33)
      {
        operator delete(v33);
      }

      goto LABEL_31;
    }

    goto LABEL_45;
  }

  if ((v4 - 9) < 2 || v4 == 11)
  {
    goto LABEL_13;
  }

  if (v4 != 21)
  {
LABEL_27:
    v44[0] = "expected element literal of primitive type";
    v45 = 259;
    v26 = *(v3 + 64) - (v4 == 0);
    v21 = v2;
LABEL_34:
    mlir::detail::Parser::emitError(v21, v26, v44, &v46);
    v9 = v49 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    goto LABEL_35;
  }

  *(v3 + 80) = *v5;
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v46);
  v6 = *(v2 + 8);
  *(v6 + 56) = v46;
  *(v6 + 72) = v47;
  {
    v7 = *this;
    *&v46 = "expected ',' between complex elements";
    v48 = 259;
    {
      v8 = *this;
      v44[0] = "expected ')' after complex elements";
      v45 = 259;
      if (mlir::detail::Parser::parseToken(v8, 28, v44))
      {
        goto LABEL_32;
      }
    }
  }

  v9 = 0;
LABEL_35:
  v37 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void llvm::SmallVectorImpl<long long>::append<long long *,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TensorLiteralParser::parseList(llvm::SmallVectorImpl<long long> &)::$_0>(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  __s2 = v15;
  v14 = 0x400000000;
  if (*(*(*v2 + 8) + 56) == 22)
  {
    {
LABEL_3:
      v3 = 0;
      goto LABEL_11;
    }
  }

  {
    goto LABEL_3;
  }

  v4 = *(a1 + 16);
  ++**(a1 + 8);
  if (*v4)
  {
    llvm::SmallVectorImpl<long long>::operator=(*(a1 + 32), &__s2);
    **(a1 + 16) = 0;
LABEL_7:
    v3 = 1;
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  v6 = **(a1 + 24);
  v7 = *(v5 + 8);
  if (v7 == v14 && !memcmp(*v5, __s2, 8 * v7))
  {
    goto LABEL_7;
  }

  v8 = *v6;
  v11 = "tensor literal is invalid; ranks are not consistent between elements";
  v12 = 259;
  mlir::detail::Parser::emitError(v8, *(*(v8 + 8) + 64) - (*(*(v8 + 8) + 56) == 0), &v11, v16);
  v3 = (v17 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
LABEL_11:
  if (__s2 != v15)
  {
    free(__s2);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<BOOL,mlir::Token>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t *std::vector<llvm::APInt>::push_back[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 4;
    if ((v6 + 1) >> 60)
    {
      std::vector<llvm::APInt>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v17[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::APInt>>(v9);
    }

    v11 = 16 * v6;
    v12 = *(a2 + 8);
    *(v11 + 8) = v12;
    if (v12 > 0x40)
    {
      operator new[]();
    }

    *v11 = *a2;
    v10 = v11 + 16;
    v13 = v2[1];
    v14 = v11 + *v2 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::APInt>,llvm::APInt*>(*v2, v13, v14);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v11 + 16;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<llvm::APInt>::~__split_buffer(v17);
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 8) = v5;
    if (v5 > 0x40)
    {
      operator new[]();
    }

    *v4 = *a2;
    v10 = v4 + 16;
  }

  v2[1] = v10;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::APInt>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::APInt>,llvm::APInt*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (a3 + 8);
    v6 = result;
    do
    {
      *v5 = *(v6 + 8);
      *(v5 - 1) = *v6;
      *(v6 + 8) = 0;
      v6 += 16;
      v5 += 4;
    }

    while (v6 != a2);
    do
    {
      if (*(v4 + 8) >= 0x41u)
      {
        result = *v4;
        if (*v4)
        {
          result = MEMORY[0x25F891010](result, 0x1000C8000313F17);
        }
      }

      v4 += 16;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<llvm::APInt>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 2);
    v2 -= 2;
    *(a1 + 16) = v2;
    if (v4 >= 0x41 && *v2)
    {
      MEMORY[0x25F891010](*v2, 0x1000C8000313F17);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::APFloat>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<llvm::APFloat>,llvm::APFloat*>(llvm::APFloat::Storage *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      if (*v6 == &llvm::semPPCDoubleDouble)
      {
        *a3 = &llvm::semPPCDoubleDouble;
        v7 = v6[1];
        v6[1] = 0;
        a3[1] = v7;
        *v6 = &llvm::semBogus;
      }

      else
      {
        *a3 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(a3, v6);
      }

      v6 += 3;
      a3 += 3;
    }

    while (v6 != a2);
    do
    {
      llvm::APFloat::Storage::~Storage(v5);
      v5 = (v5 + 24);
    }

    while (v5 != a2);
  }
}

uint64_t std::__split_buffer<llvm::APFloat>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    llvm::APFloat::Storage::~Storage((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttribute(mlir::Type)::$_0>(void *a1)
{
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(a1[1], 0);
  llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(v2, v3);
  return *(**a1 + 8 * *(*a1 + 8) - 8) != 0;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseAttributeDict(mlir::NamedAttrList &)::$_0>(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = (v5 + 7);
  v7 = *(v5 + 14);
  if (v7 == 3 || v7 == 12)
  {
LABEL_6:
    v9 = v5[8];
    v10 = v5[9];
    v37 = 261;
    *&v34 = v9;
    *(&v34 + 1) = v10;
    v11 = mlir::StringAttr::get(*v4, &v34, a3);
    goto LABEL_7;
  }

  if (v7 != 11)
  {
    if (!mlir::Token::isKeyword(v6))
    {
      __p.__r_.__value_.__r.__words[0] = "expected attribute name";
      v33 = 259;
      mlir::detail::Parser::emitWrongTokenError(v4, &__p, &v34);
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  mlir::Token::getStringValue(v6, &__p);
  v37 = 260;
  *&v34 = &__p;
  v11 = mlir::StringAttr::get(*v4, &v34, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_7:
  if (!*(v11 + 24))
  {
    __p.__r_.__value_.__r.__words[0] = "expected valid attribute name";
    v33 = 259;
    mlir::detail::Parser::emitError(v4, *(*(v4 + 8) + 64) - (*(*(v4 + 8) + 56) == 0), &__p, &v34);
LABEL_20:
    v20 = (v38 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    goto LABEL_33;
  }

  v12 = a1[1];
  __p.__r_.__value_.__r.__words[0] = 0;
  if (llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v12, v11, &__p))
  {
    *v30 = "duplicate key '";
    v31 = 259;
    mlir::detail::Parser::emitError(v4, *(*(v4 + 8) + 64) - (*(*(v4 + 8) + 56) == 0), v30, &v34);
    if (v34)
    {
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      v33 = 261;
      __p.__r_.__value_.__r.__words[0] = v13;
      __p.__r_.__value_.__l.__size_ = v14;
      mlir::Diagnostic::operator<<(&v34 + 8, &__p);
      if (v34)
      {
        mlir::Diagnostic::operator<<<26ul>(&v34 + 8, "' in dictionary attribute");
      }
    }

    goto LABEL_20;
  }

  v16 = __p.__r_.__value_.__r.__words[0];
  *&v34 = __p.__r_.__value_.__r.__words[0];
  v17 = *v12;
  v18 = *v12 >> 1;
  if (*v12)
  {
    v19 = 4;
  }

  else
  {
    v19 = v12[4];
  }

  if (4 * v18 + 4 >= 3 * v19)
  {
    v19 *= 2;
    goto LABEL_36;
  }

  if (v19 + ~v18 - v12[1] <= v19 >> 3)
  {
LABEL_36:
    llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(v12, v19);
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v12, v11, &v34);
    v17 = *v12;
    v16 = v34;
  }

  *v12 = v17 + 2;
  if (*v16 != -4096)
  {
    --v12[1];
  }

  *v16 = v11;
  v21 = *(v4 + 8);
  *(v21 + 80) = *(v21 + 56);
  *(v21 + 96) = *(v21 + 72);
  mlir::Lexer::lexToken((*(v4 + 8) + 8), &v34);
  v22 = *(v4 + 8);
  *(v22 + 56) = v34;
  *(v22 + 72) = v35;
  *&__p.__r_.__value_.__l.__data_ = *(v11 + 16);
  v30[0] = 46;
  llvm::StringRef::split(&__p, v30, 1uLL, &v34);
  if (v36)
  {
    mlir::MLIRContext::getOrLoadDialect(***(v4 + 8), v34, *(&v34 + 1), v23);
  }

  v24 = *(v4 + 8);
  if (*(v24 + 56) == 18)
  {
    *(v24 + 80) = *(v24 + 56);
    *(v24 + 96) = *(v24 + 72);
    mlir::Lexer::lexToken((*(v4 + 8) + 8), &__p);
    *(*(v4 + 8) + 56) = __p;
    v25 = mlir::detail::Parser::parseAttribute(v4, 0);
    if (!v25)
    {
      v20 = 0;
      goto LABEL_33;
    }

    v26 = v25;
    v27 = a1[2];
  }

  else
  {
    v27 = a1[2];
    v26 = *(**v4 + 608);
  }

  mlir::NamedAttrList::push_back(v27, v11, v26);
  v20 = 1;
LABEL_33:
  v28 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = (v3 + 8 * v6);
  v8 = *v7;
  if (*v7 == a2)
  {
    result = 1;
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
      if (*v7 == a2)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::grow(uint64_t a1, unsigned int a2)
{
  v16[4] = *MEMORY[0x277D85DE8];
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
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::moveFromOldBuckets(a1, v6, &v6[v7]);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = v16;
  for (i = 8; i != 40; i += 8)
  {
    v10 = *(a1 + i);
    if ((v10 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v8++ = v10;
    }
  }

  if (a2 > 4)
  {
    *a1 &= ~1u;
    v11 = a2;
    *(a1 + 8) = llvm::allocate_buffer((8 * a2), 8uLL);
    *(a1 + 16) = v11;
  }

  result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::moveFromOldBuckets(a1, v16, v8);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::moveFromOldBuckets(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *result;
  *result = *result & 1;
  if (v6)
  {
    v8 = result + 8;
    v9 = result + 40;
  }

  else
  {
    v7 = *(result + 16);
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = *(result + 8);
    v9 = v8 + 8 * v7;
  }

  v10 = 0;
  v11 = (v9 - v8 - 8) >> 3;
  v12 = vdupq_n_s64(v11);
  v13 = (v8 + 8);
  do
  {
    v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v14.i8[0])
    {
      *(v13 - 1) = -4096;
    }

    if (v14.i8[4])
    {
      *v13 = -4096;
    }

    v10 += 2;
    v13 += 2;
  }

  while (((v11 + 2) & 0x3FFFFFFFFFFFFFFELL) != v10);
LABEL_15:
  while (a2 != a3)
  {
    v15 = *a2;
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v16 = 0;
      result = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::StringAttr,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>,mlir::StringAttr,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseSetPair<mlir::StringAttr>>::LookupBucketFor<mlir::StringAttr>(v5, v15, &v16);
      *v16 = *a2;
      *v5 += 2;
    }

    ++a2;
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_0>(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(v1 + 8);
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v20);
    v5 = *(v1 + 8);
    *(v5 + 56) = v20;
    *(v5 + 72) = v21;
    v3 = *(v1 + 8);
  }

  v6 = *(v3 + 56);
  LOBYTE(v17) = 0;
  v19 = 0;
  if (v6 == 10)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 72);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = v10;
    mlir::Lexer::lexToken((*(v1 + 8) + 8), &v20);
    v11 = *(v1 + 8);
    *(v11 + 56) = v20;
    *(v11 + 72) = v21;
    buildAttributeAPInt(&v20, *v2, v4 == 24, v9, v10);
    std::__optional_storage_base<llvm::APInt,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::APInt,false>>(&v17, &v20);
    if (v21 == 1 && DWORD2(v20) >= 0x41 && v20)
    {
      MEMORY[0x25F891010](v20, 0x1000C8000313F17);
    }

    if (v19)
    {
      goto LABEL_15;
    }

    v15 = "integer constant out of range";
    v16 = 259;
    v8 = *(*(v1 + 8) + 64) - (*(*(v1 + 8) + 56) == 0);
LABEL_18:
    mlir::detail::Parser::emitError(v1, v8, &v15, &v20);
    v12 = v22 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    goto LABEL_19;
  }

  if (v6 != 80 && v6 != 60)
  {
    v15 = "expected integer literal";
    v16 = 259;
    v8 = *(v3 + 64) - (v6 == 0);
    goto LABEL_18;
  }

  if (*(**v2 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (*(*v2 + 8) & 0x3FFFFFFF) != 1)
  {
    v15 = "expected i1 type for 'true' or 'false' values";
    v16 = 259;
    v8 = *(v3 + 64);
    goto LABEL_18;
  }

  v18 = 8;
  v17 = v6 == 80;
  v19 = 1;
  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v1 + 8) + 8), &v20);
  v7 = *(v1 + 8);
  *(v7 + 56) = v20;
  *(v7 + 72) = v21;
LABEL_15:
  v12 = 1;
LABEL_19:
  if (v19 == 1 && v18 >= 0x41 && v17)
  {
    MEMORY[0x25F891010](v17, 0x1000C8000313F17);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void *anonymous namespace::DenseArrayElementParser::append(void *this, const llvm::APInt **a2)
{
  v2 = this;
  v3 = *(a2 + 2);
  if (v3)
  {
    v5 = v3 >> 3;
    v7 = *(this + 1);
    v6 = *(this + 2);
    v8 = (v6 - v7);
    if (v3 >= 8)
    {
      v9 = *(this + 3);
      if (v9 - v6 >= v5)
      {
        bzero(*(this + 2), v5);
        v2[2] = v6 + v5;
      }

      else
      {
        v10 = &v8[v5];
        if (&v8[v5] < 0)
        {
          std::vector<char>::__throw_length_error[abi:nn200100]();
        }

        v11 = v9 - v7;
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          operator new();
        }

        bzero(v8, v5);
        v2[2] = v6;
        memcpy(0, v7, v6 - v7);
        v2[1] = 0;
        v2[2] = &v8[v5];
        v2[3] = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }
    }

    if (*(a2 + 2) >= 0x41u)
    {
      v13 = *a2;
    }

    else
    {
      v13 = a2;
    }

    this = memcpy(&v8[v2[1]], v13, v5);
  }

  ++v2[4];
  return this;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseDenseArrayAttr(mlir::Type)::$_1>(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 24)
  {
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v21);
    v5 = *(v2 + 8);
    *(v5 + 56) = v21;
    *(v5 + 72) = v22;
    v3 = *(v2 + 8);
  }

  v17 = *(v3 + 56);
  v18 = *(v3 + 72);
  LOBYTE(v21) = 0;
  v23 = 0;
  v6 = *v1;
  v7 = **v1;
  v8 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  v10 = (*v9)(v9, v6);
  v11 = mlir::detail::Parser::parseFloatFromLiteral(v2, &v21, &v17, v4 == 24, v10);
  v12 = 0;
  if (v11)
  {
    v13 = *(v2 + 8);
    *(v13 + 80) = *(v13 + 56);
    *(v13 + 96) = *(v13 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v19);
    v14 = *(v2 + 8);
    *(v14 + 56) = v19;
    *(v14 + 72) = v20;
    llvm::APFloat::bitcastToAPInt(&v21, &v19);
    if (DWORD2(v19) >= 0x41 && v19)
    {
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }

    v12 = 1;
  }

  if (v23 == 1)
  {
    llvm::APFloat::Storage::~Storage(&v21);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr,mlir::DenseElementsAttr &&)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::SparseElementsAttr mlir::detail::Parser::getChecked<mlir::SparseElementsAttr,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &>(llvm::SMLoc,mlir::ShapedType &,mlir::DenseElementsAttr &,mlir::DenseElementsAttr &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::doFind<unsigned long long>(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v3 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v4 = *(a1 + 16 * v3);
    if (v4 == a3)
    {
      return a1 + 16 * v3;
    }

    v6 = 1;
    while (v4 != -1)
    {
      v7 = v3 + v6++;
      v3 = v7 & (a2 - 1);
      v4 = *(a1 + 16 * v3);
      if (v4 == a3)
      {
        return a1 + 16 * v3;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (a2 - 1) & (((0xBF58476D1CE4E5B9 * a3) >> 31) ^ (484763065 * a3));
    v6 = (a1 + 16 * v5);
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
        v6 = (a1 + 16 * (v13 & v4));
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

char *llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -1;
        }

        if (v17.i8[4])
        {
          *v16 = -1;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if (*v19 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>,unsigned long long,mlir::DistinctAttr,llvm::DenseMapInfo<unsigned long long,void>,llvm::detail::DenseMapPair<unsigned long long,mlir::DistinctAttr>>::LookupBucketFor<unsigned long long>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -1;
      }

      if (v29.i8[4])
      {
        *v28 = -1;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::detail::Parser::parseDialectSymbolBody(mlir::detail::Parser *this, llvm::StringRef *a2, BOOL *a3)
{
  v6 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v29 = &v31;
  v30 = xmmword_25D0A0590;
  v9 = *(v7 + 48);
  while (1)
  {
    if (v8 == v9)
    {
      v11 = v8;
      goto LABEL_42;
    }

    v11 = v8 + 1;
    v10 = *v8;
    if (v10 <= 0x3D)
    {
      break;
    }

    if (*v8 <= 0x5Cu)
    {
      if (v10 == 62)
      {
        if (*(v29 + v6 - 1) == 60)
        {
          goto LABEL_31;
        }

        goto LABEL_14;
      }

      if (v10 == 91)
      {
        goto LABEL_26;
      }
    }

    else
    {
      switch(v10)
      {
        case ']':
          if (*(v29 + v6 - 1) == 91)
          {
LABEL_31:
            *&v30 = --v6;
            goto LABEL_28;
          }

          goto LABEL_14;
        case '{':
          goto LABEL_26;
        case '}':
          if (*(v29 + v6 - 1) == 123)
          {
            goto LABEL_31;
          }

LABEL_14:
          v28 = 257;
          mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), v27, &v35);
          if (v35)
          {
            mlir::Diagnostic::operator<<<13ul>(&v35 + 8, "unbalanced '");
            if (v35)
            {
              v12 = *(v29 + v30 - 1);
              v33 = 264;
              LOBYTE(v32[0]) = v12;
              mlir::Diagnostic::operator<<(&v35 + 8, v32);
              if (v35)
              {
                mlir::Diagnostic::operator<<<35ul>(&v35 + 8, "' character in pretty dialect name");
              }
            }
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(v32, &v35);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
          v13 = v34;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
          if (v13)
          {
            goto LABEL_48;
          }

          break;
      }
    }

LABEL_27:
    v6 = v30;
LABEL_28:
    v8 = v11;
    if (!v6)
    {
      goto LABEL_43;
    }
  }

  if (*v8 > 0x28u)
  {
    switch(v10)
    {
      case ')':
        if (*(v29 + v6 - 1) == 40)
        {
          goto LABEL_31;
        }

        goto LABEL_14;
      case '-':
        v14 = v8[1];
        v15 = v8 + 2;
        if (v14 == 62)
        {
          v11 = v15;
        }

        goto LABEL_27;
      case '<':
LABEL_26:
        llvm::SmallVectorTemplateBase<char,true>::push_back(&v29, v10);
        goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (v10 == 34)
  {
    v16 = *(this + 1);
    *(v16 + 40) = v8;
    mlir::Lexer::lexToken((v16 + 8), &v35);
    v17 = *(this + 1);
    *(v17 + 56) = v35;
    *(v17 + 72) = v36;
    v18 = *(this + 1);
    v11 = (*(v18 + 64) + *(v18 + 72));
    v19 = *(v18 + 56);
    if (v19 != 11)
    {
      if (v19 != 2)
      {
LABEL_48:
        v22 = 0;
        goto LABEL_44;
      }

LABEL_42:
      *a3 = 1;
      *&v30 = 0;
LABEL_43:
      v20 = *(this + 1);
      *(v20 + 40) = v11;
      mlir::Lexer::lexToken((v20 + 8), &v35);
      v21 = *(this + 1);
      *(v21 + 56) = v35;
      *(v21 + 72) = v36;
      *(a2 + 1) = (v11 - *a2);
      v22 = 1;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v10 == 40)
  {
    goto LABEL_26;
  }

  if (*v8)
  {
    goto LABEL_27;
  }

  if (v6)
  {
    v28 = 257;
    mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), v27, &v35);
    if (v35)
    {
      mlir::Diagnostic::operator<<<13ul>(&v35 + 8, "unbalanced '");
      if (v35)
      {
        v25 = *(v29 + v30 - 1);
        v33 = 264;
        LOBYTE(v32[0]) = v25;
        mlir::Diagnostic::operator<<(&v35 + 8, v32);
        if (v35)
        {
          mlir::Diagnostic::operator<<<35ul>(&v35 + 8, "' character in pretty dialect name");
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(v32, &v35);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    v22 = v34 ^ 1;
    v26 = v32;
  }

  else
  {
    v32[0] = "unexpected nul or EOF in pretty dialect name";
    v33 = 259;
    mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), v32, &v35);
    v22 = v37 ^ 1;
    v26 = &v35;
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
LABEL_44:
  if (v29 != &v31)
  {
    free(v29);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

uint64_t *mlir::detail::Parser::parseExtendedAttr(mlir::detail::Parser *a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  v5 = **v4;
  v6 = *(v4 + 152);
  v7 = *(v4 + 104);
  v8 = *(v4 + 56);
  v9 = *(v4 + 64);
  v10 = *(v4 + 72);
  if (v10)
  {
    v11 = (v9 + 1);
  }

  else
  {
    v11 = *(v4 + 64);
  }

  v64 = v11;
  v65 = (v10 - (v10 != 0));
  if (v8 == 2 && v10 <= 1)
  {
    (*(**(v4 + 160) + 64))(*(v4 + 160), v7);
LABEL_30:
    v27 = 0;
    goto LABEL_31;
  }

  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v66);
  v13 = *(a1 + 1);
  *(v13 + 56) = *v66;
  *(v13 + 72) = v67;
  v66[0] = 46;
  v14 = 1;
  llvm::StringRef::split(&v64, v66, 1uLL, &v60);
  v17 = v63;
  if (!v63)
  {
    v14 = v65[v64 - 1] == 46;
  }

  v18 = *(a1 + 1);
  v19 = *(v18 + 56) == 23 && &v65[v64] == *(v18 + 64);
  if (v19 || v14)
  {
    if (v14)
    {
      v9 = v62;
      if (v19)
      {
        if ((mlir::detail::Parser::parseDialectSymbolBody(a1, &v62, v66) & 1) == 0)
        {
          goto LABEL_30;
        }

        v20 = v62;
        v17 = v63;
      }

      else
      {
        v20 = v62;
      }
    }

    else
    {
      v62 = v60 + v61;
      v63 = 0;
      v66[0] = 0;
      if ((mlir::detail::Parser::parseDialectSymbolBody(a1, &v62, v66) & 1) == 0)
      {
        goto LABEL_30;
      }

      v26 = v63 != 0;
      if (v63)
      {
        v20 = v62 + 1;
      }

      else
      {
        v20 = v62;
      }

      v17 = v63 - v26;
      v62 = v20;
      v63 -= v26;
      if (!v66[0])
      {
        if (v17 >= v17 - 1)
        {
          --v17;
        }

        v63 = v17;
      }
    }

    v40 = v60;
    v41 = v61;
    v71 = v9;
    v42 = *(a1 + 1);
    v43 = a2;
    if (*(v42 + 56) == 15)
    {
      *(v42 + 80) = *(v42 + 56);
      *(v42 + 96) = *(v42 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), v66);
      v44 = *(a1 + 1);
      *(v44 + 56) = *v66;
      *(v44 + 72) = v67;
      v43 = mlir::detail::Parser::parseType(a1);
      if (!v43)
      {
        v27 = 0;
        goto LABEL_31;
      }
    }

    Dialect = mlir::MLIRContext::getOrLoadDialect(*a1, v40, v41, v16);
    if (!Dialect)
    {
      *&v56 = a1;
      *(&v56 + 1) = &v71;
      LOWORD(v69) = 261;
      *v66 = v40;
      *&v66[8] = v41;
      v54 = mlir::StringAttr::get(v5, v66, v46);
      if (!v43)
      {
        v43 = mlir::NoneType::get(v5, v53);
      }

      mlir::detail::StorageUserBase<mlir::OpaqueAttr,mlir::Attribute,mlir::detail::OpaqueAttrStorage,mlir::detail::AttributeUniquer,mlir::TypedAttr::Trait>::getChecked<mlir::StringAttr,llvm::StringRef,mlir::Type>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v56, *(**v54 + 32), v54, v20, v17, v43);
    }

    v47 = Dialect;
    v48 = *(a1 + 1);
    v49 = v48[8];
    v48[5] = v20;
    mlir::Lexer::lexToken((v48 + 1), v66);
    v50 = *(a1 + 1);
    *(v50 + 56) = *v66;
    *(v50 + 72) = v67;
    *&v66[8] = *(*(a1 + 1) + 64);
    v67 = a1;
    v68 = 0;
    *v66 = &unk_286E80808;
    v69 = v20;
    v70 = v17;
    v27 = (*(*v47 + 32))(v47, v66, v43);
    v51 = *(a1 + 1);
    *(v51 + 40) = v49;
    mlir::Lexer::lexToken((v51 + 8), &v56);
    v52 = *(a1 + 1);
    *(v52 + 56) = v56;
    *(v52 + 72) = v57;
    if (!v27)
    {
LABEL_31:
      v28 = 0;
      v29 = 0;
      if (!a2)
      {
        goto LABEL_40;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v21 = v64;
    v22 = v65;
    v23 = llvm::xxh3_64bits(v64, v65, v15);
    Key = llvm::StringMapImpl::FindKey(v7, v21, v22, v23);
    if (Key == -1 || (v25 = Key, Key == *(v7 + 8)))
    {
      v59 = 1283;
      *&v56 = "undefined symbol alias id '";
      v57 = v64;
      v58 = v65;
      *v66 = &v56;
      v67 = "'";
      LOWORD(v69) = 770;
      mlir::detail::Parser::emitWrongTokenError(a1, v66, &v72);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
      goto LABEL_30;
    }

    v39 = *v7;
    if (v6)
    {
      mlir::AsmParserState::addAttrAliasUses(v6, v64, v65, v9, v9 + v10);
    }

    v27 = *(*(v39 + 8 * v25) + 8);
    if (!v27)
    {
      goto LABEL_31;
    }
  }

  v28 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v27);
  v29 = v55;
  if (!a2)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v28 && (*v29)(v29, v28) != a2)
  {
    *v66 = "attribute type different than expected: expected ";
    LOWORD(v69) = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), v66, &v72);
    if (v72)
    {
      LODWORD(v56) = 4;
      *(&v56 + 1) = a2;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v74, &v56, 1);
      v31 = v74 + 24 * v75;
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++v75;
      if (v72)
      {
        mlir::Diagnostic::operator<<<11ul>(&v73, ", but got ");
      }
    }

    v33 = (*v29)(v29, v28);
    if (v72)
    {
      LODWORD(v56) = 4;
      *(&v56 + 1) = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v74, &v56, 1);
      v35 = v74 + 24 * v75;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v75;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v72);
    v27 = 0;
  }

LABEL_40:
  v37 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::detail::Parser::parseExtendedType(mlir::detail::Parser *this)
{
  v57 = *MEMORY[0x277D85DE8];
  v1 = *(this + 1);
  v2 = **v1;
  v3 = *(v1 + 152);
  v4 = *(v1 + 104);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  if (v7)
  {
    v8 = (v6 + 1);
  }

  else
  {
    v8 = *(v1 + 64);
  }

  v50 = v8;
  v51 = (v7 - (v7 != 0));
  if (v5 == 2 && v7 <= 1)
  {
    (*(**(v1 + 160) + 80))(*(v1 + 160), v4 + 24);
LABEL_30:
    v25 = 0;
    goto LABEL_31;
  }

  *(v1 + 80) = *(v1 + 56);
  *(v1 + 96) = *(v1 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), v52);
  v11 = *(this + 1);
  *(v11 + 56) = *v52;
  *(v11 + 72) = v53;
  v52[0] = 46;
  v12 = 1;
  llvm::StringRef::split(&v50, v52, 1uLL, &v46);
  v15 = v49;
  if (!v49)
  {
    v12 = v51[v50 - 1] == 46;
  }

  v16 = *(this + 1);
  v17 = *(v16 + 56) == 23 && &v51[v50] == *(v16 + 64);
  if (v17 || v12)
  {
    if (v12)
    {
      v6 = v48;
      if (v17)
      {
        if ((mlir::detail::Parser::parseDialectSymbolBody(this, &v48, v52) & 1) == 0)
        {
          goto LABEL_30;
        }

        v18 = v48;
        v15 = v49;
      }

      else
      {
        v18 = v48;
      }
    }

    else
    {
      v48 = &v46[v47];
      v49 = 0;
      v52[0] = 0;
      if ((mlir::detail::Parser::parseDialectSymbolBody(this, &v48, v52) & 1) == 0)
      {
        goto LABEL_30;
      }

      v24 = v49 != 0;
      if (v49)
      {
        v18 = (v48 + 1);
      }

      else
      {
        v18 = v48;
      }

      v15 = v49 - v24;
      v48 = v18;
      v49 -= v24;
      if (!v52[0])
      {
        if (v15 >= v15 - 1)
        {
          --v15;
        }

        v49 = v15;
      }
    }

    v30 = v46;
    v31 = v47;
    v41[0] = v6;
    Dialect = mlir::MLIRContext::getOrLoadDialect(v2, v46, v47, v14);
    if (!Dialect)
    {
      *&v43 = this;
      *(&v43 + 1) = v41;
      LOWORD(v55) = 261;
      *v52 = v30;
      *&v52[8] = v31;
      v40 = mlir::StringAttr::get(v2, v52, v33);
      mlir::detail::StorageUserBase<mlir::OpaqueType,mlir::Type,mlir::detail::OpaqueTypeStorage,mlir::detail::TypeUniquer>::getChecked<mlir::StringAttr,llvm::StringRef>(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>, &v43, *(**v40 + 32), v40, v18, v15);
    }

    v34 = Dialect;
    v35 = *(this + 1);
    v36 = v35[8];
    v35[5] = v18;
    mlir::Lexer::lexToken((v35 + 1), v52);
    v37 = *(this + 1);
    *(v37 + 56) = *v52;
    *(v37 + 72) = v53;
    *&v52[8] = *(*(this + 1) + 64);
    v53 = this;
    v54 = 0;
    *v52 = &unk_286E80808;
    v55 = v18;
    v56 = v15;
    v25 = (*(*v34 + 48))(v34, v52);
    v38 = *(this + 1);
    *(v38 + 40) = v36;
    mlir::Lexer::lexToken((v38 + 8), &v43);
    v39 = *(this + 1);
    *(v39 + 56) = v43;
    *(v39 + 72) = v44;
  }

  else
  {
    v19 = v50;
    v20 = v51;
    v21 = llvm::xxh3_64bits(v50, v51, v13);
    Key = llvm::StringMapImpl::FindKey((v4 + 24), v19, v20, v21);
    if (Key == -1 || (v23 = Key, Key == *(v4 + 32)))
    {
      v42 = 1283;
      v41[0] = "undefined symbol alias id '";
      v41[2] = v50;
      v41[3] = v51;
      *&v43 = v41;
      v44 = "'";
      v45 = 770;
      mlir::detail::Parser::emitWrongTokenError(this, &v43, v52);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v52);
      goto LABEL_30;
    }

    v28 = *(v4 + 24);
    if (v3)
    {
      v29 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::find(*v3 + 328, v50, v51);
      llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(*(*(*v3 + 240) + 8 * *(*v29 + 8)) + 32, v6, v6 + v7);
    }

    v25 = *(*(v28 + 8 * v23) + 8);
  }

LABEL_31:
  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t *mlir::parseAttribute(mlir::MLIRContext ****a1, size_t a2, uint64_t a3, uint64_t *a4, size_t *a5, int a6)
{
  v53[6] = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v38 = 261;
    v35 = a1;
    v36 = a2;
    v33 = &v35;
    v11 = operator new(24, &v33);
    *v11 = &unk_286E796E0;
    *(v11 + 1) = a1;
    *(v11 + 2) = a1 + a2;
  }

  else
  {
    v38 = 261;
    v35 = a1;
    v36 = a2;
    getMemBufferCopyImpl(a1, a2, &v35, &v33);
    if (v34[8])
    {
      v11 = 0;
    }

    else
    {
      v11 = v33;
    }
  }

  memset(v30, 0, sizeof(v30));
  v36 = 0;
  v37 = 0;
  v35 = v11;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v30, &v35);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v35);
  v23[0] = 0;
  v23[1] = 0;
  v23[2] = 0x1000000000;
  v24[0] = 0;
  v24[1] = 0;
  v24[2] = 0x1000000000;
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v45 = a3;
  v46 = 1;
  v47[1] = 0;
  v47[0] = 0;
  v48 = 0;
  v49 = 0;
  v50[0] = &v51;
  v50[1] = 0x600000000;
  v52[0] = v53;
  v52[1] = 0x600000000;
  mlir::detail::ParserState::ParserState(&v35, v30, &v45, v23, 0, 0);
  v12 = v39;
  v21 = *v35;
  v22 = &v35;
  v13 = mlir::detail::Parser::parseAttribute(&v21, a4);
  if (v13)
  {
    v14 = v22[8];
    v15 = v14 - v12;
    if (a5)
    {
      *a5 = v15;
    }

    else if (v15 != a2)
    {
      v20 = 257;
      mlir::detail::Parser::emitError(&v21, v14, v19, &v33);
      if (v33)
      {
        mlir::Diagnostic::operator<<<29ul>(v34, "found trailing characters: '");
        if (v33)
        {
          v16 = a2 >= v15 ? v15 : a2;
          v32 = 261;
          v31[0] = a1 + v16;
          v31[1] = a2 - v16;
          mlir::Diagnostic::operator<<(v34, v31);
          if (v33)
          {
            mlir::Diagnostic::operator<<<2ul>(v34, "'");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
      v13 = 0;
    }
  }

  if (v43 != &v44)
  {
    free(v43);
  }

  if (v41 != &v42)
  {
    free(v41);
  }

  MEMORY[0x25F891030](v40, 8);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(v52);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(v50);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(v47);
  MEMORY[0x25F891030](v47[0], 8);
  MEMORY[0x25F891030](v27, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::destroyAll(v25);
  MEMORY[0x25F891030](v25[0], 8);
  llvm::StringMap<mlir::Type,llvm::MallocAllocator>::~StringMap(v24);
  llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::~StringMap(v23);
  llvm::SourceMgr::~SourceMgr(v30);
  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::parseType(char *a1, size_t a2, uint64_t a3, size_t *a4, int a5)
{
  v54[6] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v39 = 261;
    v36 = a1;
    v37 = a2;
    v34 = &v36;
    v9 = operator new(24, &v34);
    *v9 = &unk_286E796E0;
    *(v9 + 1) = a1;
    *(v9 + 2) = &a1[a2];
  }

  else
  {
    v39 = 261;
    v36 = a1;
    v37 = a2;
    getMemBufferCopyImpl(a1, a2, &v36, &v34);
    if (v35[8])
    {
      v9 = 0;
    }

    else
    {
      v9 = v34;
    }
  }

  memset(v31, 0, sizeof(v31));
  v37 = 0;
  v38 = 0;
  v36 = v9;
  std::vector<llvm::SourceMgr::SrcBuffer>::push_back[abi:nn200100](v31, &v36);
  llvm::SourceMgr::SrcBuffer::~SrcBuffer(&v36);
  v24[0] = 0;
  v24[1] = 0;
  v24[2] = 0x1000000000;
  v25[0] = 0;
  v25[1] = 0;
  v25[2] = 0x1000000000;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v46 = a3;
  v47 = 1;
  v48[1] = 0;
  v48[0] = 0;
  v49 = 0;
  v50 = 0;
  v51[0] = &v52;
  v51[1] = 0x600000000;
  v53[0] = v54;
  v53[1] = 0x600000000;
  mlir::detail::ParserState::ParserState(&v36, v31, &v46, v24, 0, 0);
  v10 = v40;
  v22 = *v36;
  v23 = &v36;
  v14 = mlir::detail::Parser::parseType(&v22, v11, v12, v13);
  if (v14)
  {
    v15 = v23[8];
    v16 = v15 - v10;
    if (a4)
    {
      *a4 = v16;
    }

    else if (v16 != a2)
    {
      v21 = 257;
      mlir::detail::Parser::emitError(&v22, v15, v20, &v34);
      if (v34)
      {
        mlir::Diagnostic::operator<<<29ul>(v35, "found trailing characters: '");
        if (v34)
        {
          v17 = a2 >= v16 ? v16 : a2;
          v33 = 261;
          v32[0] = &a1[v17];
          v32[1] = a2 - v17;
          mlir::Diagnostic::operator<<(v35, v32);
          if (v34)
          {
            mlir::Diagnostic::operator<<<2ul>(v35, "'");
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
      v14 = 0;
    }
  }

  if (v44 != &v45)
  {
    free(v44);
  }

  if (v42 != &v43)
  {
    free(v42);
  }

  MEMORY[0x25F891030](v41, 8);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Type>>,6u>::~SmallVector(v53);
  llvm::SmallVector<std::unique_ptr<mlir::AttrTypeBytecodeReader<mlir::Attribute>>,6u>::~SmallVector(v51);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::destroyAll(v48);
  MEMORY[0x25F891030](v48[0], 8);
  MEMORY[0x25F891030](v28, 8);
  llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::destroyAll(v26);
  MEMORY[0x25F891030](v26[0], 8);
  llvm::StringMap<mlir::Type,llvm::MallocAllocator>::~StringMap(v25);
  llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::~StringMap(v24);
  llvm::SourceMgr::~SourceMgr(v31);
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrow(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColon(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalComma(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEqual(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLess(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalGreater(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalQuestion(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalPlus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalMinus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalStar(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseBase64Bytes(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) != 11)
  {
    v24[0] = "expected string";
    v25 = 259;
    (*(*a1 + 24))(&v26, a1, v4, v24);
    v16 = v28 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
    goto LABEL_19;
  }

  if (!a2)
  {
LABEL_18:
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 8) + 8), &v26);
    v17 = *(v5 + 8);
    *(v17 + 56) = v26;
    *(v17 + 72) = v27;
    v16 = 1;
    goto LABEL_19;
  }

  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  v23[0] = v7;
  v23[1] = v8;
  first_not_of = llvm::StringRef::find_first_not_of(v23, "  \t\n\v\f\r", 8, 0);
  if (first_not_of >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = first_not_of;
  }

  v11 = v8 - v10;
  v12 = v10 + v7;
  *&v26 = v12;
  *(&v26 + 1) = v11;
  last_not_of = llvm::StringRef::find_last_not_of(&v26, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
  if (v11 >= last_not_of + 1)
  {
    v14 = last_not_of + 1;
  }

  else
  {
    v14 = v11;
  }

  llvm::decodeBase64(v12, v14, a2, &v22);
  if (!v22)
  {
    v5 = a1[2];
    v6 = *(v5 + 8);
    goto LABEL_18;
  }

  v20 = v22;
  v22 = 0;
  llvm::toString(&v20, &__p);
  v25 = 260;
  v24[0] = &__p;
  (*(*a1 + 24))(&v26, a1, v4, v24);
  v15 = v28;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v16 = v15 ^ 1;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

LABEL_19:
  v18 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalLSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalRSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalEllipsis(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(uint64_t a1, double *a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  llvm::APFloat::APFloat(v7, 0.0);
  if ((*(*a1 + 368))(a1, &llvm::semIEEEdouble, v7))
  {
    *a2 = llvm::APFloat::convertToDouble(v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  llvm::APFloat::Storage::~Storage(v7);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseFloat(uint64_t a1, _DWORD *a2, llvm::detail::IEEEFloat *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken((*(v6 + 8) + 8), &v21);
    v9 = *(v6 + 8);
    *(v9 + 56) = v21;
    *(v9 + 72) = v22;
    v6 = *(a1 + 16);
    v7 = *(v6 + 8);
  }

  v17 = *(v7 + 56);
  v18 = *(v7 + 72);
  LOBYTE(v21) = 0;
  v23 = 0;
  v10 = mlir::detail::Parser::parseFloatFromLiteral(v6, &v21, &v17, v8 == 24, a2);
  v11 = 0;
  if (v10)
  {
    v12 = *(a1 + 16);
    v13 = *(v12 + 8);
    *(v13 + 80) = *(v13 + 56);
    *(v13 + 96) = *(v13 + 72);
    mlir::Lexer::lexToken((*(v12 + 8) + 8), &v19);
    v14 = *(v12 + 8);
    *(v14 + 56) = v19;
    *(v14 + 72) = v20;
    llvm::APFloat::Storage::operator=(a3, &v21);
    v11 = 1;
  }

  if (v23 == 1)
  {
    llvm::APFloat::Storage::~Storage(&v21);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeyword(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v15[0] = a2;
  v15[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v15, 1, 0);
    v5 = 0;
  }

  else
  {
    v10 = (*(*a1 + 40))(a1);
    if ((*(*a1 + 408))(a1, a2, a3))
    {
      v5 = 1;
    }

    else
    {
      v13 = "expected '";
      v14 = 259;
      (*(*a1 + 24))(&v18, a1, v10, &v13);
      if (v18)
      {
        v17 = 261;
        v16[0] = a2;
        v16[1] = a3;
        mlir::Diagnostic::operator<<(v19, v16);
        if (v18)
        {
          mlir::Diagnostic::operator<<<2ul>(v19, "'");
          if (v18)
          {
            mlir::Diagnostic::operator<<(v19, a4);
          }
        }
      }

      v5 = (v19[192] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, void *__s2, size_t __n)
{
  v12[0] = __s2;
  v12[1] = __n;
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  v8 = (v6 + 56);
  v7 = *(v6 + 56);
  if (v7 == 12 || v7 == 3)
  {
    goto LABEL_16;
  }

  if (v7 == 2)
  {
    (*(**(v6 + 160) + 48))(*(v6 + 160), v12, 1, 1);
    return 0;
  }

  result = mlir::Token::isKeyword(v8);
  if (result)
  {
LABEL_16:
    if (*(v6 + 72) == __n && (!__n || !memcmp(*(v6 + 64), __s2, __n)))
    {
      *(v6 + 80) = *v8;
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(v5 + 8) + 8), &v13);
      v10 = *(v5 + 8);
      *(v10 + 56) = v13;
      *(v10 + 72) = v14;
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a1 + 16) + 8);
  v9 = *(v8 + 56);
  if (v9 == 12 || v9 == 3)
  {
    goto LABEL_6;
  }

  if (v9 == 2)
  {
    (*(**(v8 + 160) + 48))(*(v8 + 160), a3, a4, 1);
    return 0;
  }

  result = mlir::Token::isKeyword((v8 + 56));
  if (result)
  {
LABEL_6:
    v15 = *(v8 + 64);
    if (std::__find[abi:nn200100]<llvm::StringRef const*,llvm::StringRef const*,llvm::StringRef,std::__identity>(a3, a3 + 16 * a4, &v15) != a3 + 16 * a4)
    {
      *a2 = v15;
      v11 = *(a1 + 16);
      v12 = *(v11 + 8);
      *(v12 + 96) = *(v12 + 72);
      *(v12 + 80) = *(v12 + 56);
      mlir::Lexer::lexToken((*(v11 + 8) + 8), &v16);
      v13 = *(v11 + 8);
      *(v13 + 56) = v16;
      *(v13 + 72) = v17;
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = *(a1 + 16);
  if (*(*(v6 + 8) + 56) == 5)
  {
    v7 = mlir::detail::Parser::parseAttribute(v6, a3);
    *a2 = v7;
    return v7 != 0;
  }

  else
  {

    return a4(a5);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 22)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 11)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

{
  v3 = *(a1 + 16);
  if (*(*(v3 + 8) + 56) == 4)
  {
    v5 = mlir::detail::Parser::parseAttribute(v3, a3);
    if (v5)
    {
      *a2 = v5;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = 1;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6 | (v7 << 8);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
{
  v2 = *(a1[2] + 8);
  v20 = *(v2 + 56);
  v21 = *(v2 + 72);
  if (v20 != 4)
  {
    return 0;
  }

  v5 = (*(*a1 + 32))(a1);
  mlir::Token::getSymbolReference(&v20, __p);
  v19 = 260;
  *&v17 = __p;
  *a2 = mlir::StringAttr::get(*v5, &v17, v6);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = a1[2];
  v8 = *(v7 + 8);
  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(v7 + 8) + 8), &v17);
  v10 = *(v7 + 8);
  *(v10 + 56) = v17;
  *(v10 + 72) = v18;
  v11 = *(*(a1[2] + 8) + 152);
  if (!v11)
  {
    return 1;
  }

  v12 = mlir::SymbolRefAttr::get(*a2, 0, 0, v9);
  *&v17 = *(&v20 + 1);
  *(&v17 + 1) = *(&v20 + 1) + v21;
  v13 = 1;
  mlir::AsmParserState::addUses(v11, v12, &v17, 1);
  return v13;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseType(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = mlir::detail::Parser::parseType(*(a1 + 16), a2, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t *a2, uint64_t (*a3)(unint64_t *), unint64_t *a4)
{
  v5 = *(a1 + 16);
  if (*(*(v5 + 1) + 56) == 8)
  {
    v6 = mlir::detail::Parser::parseType(v5, a2, a3, a4);
    *a2 = v6;
    return v6 != 0;
  }

  else
  {

    return a3(a4);
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseArrowTypeList(mlir::detail::Parser **a1, uint64_t a2)
{
  if ((*(*a1 + 7))(a1))
  {
    return mlir::detail::Parser::parseFunctionResultTypes(a1[2], a2, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 13)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v10);
  v6 = *(v2 + 8);
  *(v6 + 56) = v10;
  *(v6 + 72) = v11;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2, v7, v8);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonType(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  v10 = "expected ':'";
  v11 = 259;
  if (!mlir::detail::Parser::parseToken(v4, 15, &v10))
  {
    return 0;
  }

  v8 = mlir::detail::Parser::parseType(*(a1 + 16), v5, v6, v7);
  *a2 = v8;
  return v8 != 0;
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
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

void mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    __p = 0;
    v16 = 0;
    v17 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &__p, a3);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v12 = 257;
    mlir::detail::Parser::emitError(v7, *(*(v7 + 8) + 64) - (*(*(v7 + 8) + 56) == 0), v11, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<10ul>(&v16, "dialect '");
      if (__p)
      {
        v8 = *(a2 + 8);
        v9 = *(a2 + 16);
        v14 = 261;
        v13[0] = v8;
        v13[1] = v9;
        mlir::Diagnostic::operator<<(&v16, v13);
        if (__p)
        {
          mlir::Diagnostic::operator<<<35ul>(&v16, "' does not expect resource handles");
        }
      }
    }

    *a3 = 0;
    a3[24] = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
  }

  v10 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = &byte_25D0A27DF;
  *(a2 + 1) = 0;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::DialectAsmParser>::codeCompleteExpectedTokens(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(uint64_t a1)
{
  v4 = mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID();
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>,mlir::TypeID,std::unique_ptr<mlir::DialectInterface>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DialectInterface>>>::doFind<mlir::TypeID>((a1 + 48), &v4);
  result = 0;
  if (v2)
  {
    if (v2 != *(a1 + 48) + 16 * *(a1 + 64))
    {
      return *(v2 + 8);
    }
  }

  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedAttr(mlir::Type)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseExtendedType(void)::$_0::operator() const(llvm::StringRef,llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t mlir::Lexer::getEncodedSourceLocation(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = **a1;
  LineNumber = llvm::SourceMgr::SrcBuffer::getLineNumber(v5, a2);
  v7 = v2 - llvm::SourceMgr::SrcBuffer::getPointerForLineNumber(v5, LineNumber);
  v8 = *(a1 + 8);
  v10 = (*(***v4 + 16))(**v4);

  return mlir::FileLineColRange::get(v8, v10, v9, LineNumber, v7 + 1);
}

void mlir::Lexer::emitError(mlir::Lexer *this, const char *a2, const llvm::Twine *a3, uint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(a2, a3);
  emitDiag(EncodedSourceLocation, 2, a4, v11);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  v9 = *(a2 + 4) - a3;
  *this = 1;
  *(this + 1) = a3;
  *(this + 2) = v9;
  v10 = *MEMORY[0x277D85DE8];
}

void mlir::Lexer::lexToken(mlir::Lexer *this@<X0>, mlir::Lexer *a2@<X8>)
{
  v4 = *(this + 4);
  v3 = *(this + 5);
  if (v4 == v3)
  {
LABEL_24:
    *a2 = 2;
    *(a2 + 1) = v3;
    *(a2 + 2) = 0;
    return;
  }

  while (2)
  {
    v6 = v4 + 1;
    *(this + 4) = v4 + 1;
    v7 = *v4;
    v8 = v7;
    if (v7 <= 0x7A)
    {
      switch(*v4)
      {
        case 9:
        case 10:
        case 13:
        case 32:
          goto LABEL_4;
        case 11:
        case 12:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
        case 31:
        case 36:
        case 38:
        case 39:
        case 59:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 92:
          goto LABEL_34;
        case 33:
        case 37:
        case 94:
          if (v7 > 0x24u)
          {
            if (v7 == 94)
            {
              v28 = 7;
              v27 = "invalid block name";
              v26 = 18;
            }

            else
            {
              v28 = 6;
              v27 = "invalid SSA name";
              v26 = 16;
            }
          }

          else
          {
            if (v7 == 33)
            {
              v26 = 23;
            }

            else
            {
              v26 = 22;
            }

            if (v7 == 33)
            {
              v27 = "invalid type identifier";
            }

            else
            {
              v27 = "invalid attribute name";
            }

            if (v7 == 33)
            {
              v28 = 8;
            }

            else
            {
              v28 = 5;
            }
          }

          goto LABEL_116;
        case 34:

          mlir::Lexer::lexString(a2, this, v4);
          return;
        case 35:
          v36 = *v6;
          if (v36 == 45)
          {
            if (v4[2] == 125)
            {
              *(this + 4) = v4 + 3;
              v13 = 33;
              goto LABEL_28;
            }

            v28 = 5;
            v27 = "invalid attribute name";
            v26 = 22;
LABEL_116:
            LOBYTE(v36) = *v6;
          }

          else
          {
            v28 = 5;
            v27 = "invalid attribute name";
            v26 = 22;
          }

          if ((v36 & 0x80) != 0)
          {
            v38 = __maskrune(v36, 0x100uLL);
          }

          else
          {
            v37 = MEMORY[0x277D85DE0];
            if ((*(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x400) != 0)
            {
              v52 = v4 + 2;
              do
              {
                if ((*(v37 + 4 * v36 + 60) & 0x400) == 0)
                {
                  break;
                }

                *(this + 4) = v52;
                v53 = *v52++;
                LOBYTE(v36) = v53;
              }

              while ((v53 & 0x80000000) == 0);
              v47 = (v52 - 1);
              goto LABEL_143;
            }

            v38 = *(MEMORY[0x277D85DE0] + 4 * v36 + 60) & 0x100;
          }

          if (v38 || ((v39 = *(this + 4), v40 = *v39 - 36, v41 = v40 > 0x3B, v42 = (1 << v40) & 0x800000000000601, !v41) ? (v43 = v42 == 0) : (v43 = 1), !v43))
          {
            v44 = MEMORY[0x277D85DE0];
            while (1)
            {
              while (1)
              {
                v45 = (*(this + 4) + 1);
                *(this + 4) = v45;
                v46 = *v45;
                if ((v46 & 0x80000000) != 0)
                {
                  break;
                }

                if ((*(v44 + 4 * v46 + 60) & 0x100) == 0)
                {
                  goto LABEL_131;
                }
              }

              if (!__maskrune(v46, 0x100uLL))
              {
LABEL_131:
                v47 = *(this + 4);
                v48 = *v47;
                if (v48 < 0 || (*(v44 + 4 * v48 + 60) & 0x400) == 0)
                {
                  v49 = *v47 - 36;
                  v41 = v49 > 0x3B;
                  v50 = (1 << v49) & 0x800000000000601;
                  if (v41 || v50 == 0)
                  {
                    v3 = *(this + 5);
LABEL_143:
                    if (v3 >= v4 && v3 <= v47)
                    {
                      *a2 = 2;
                      *(a2 + 1) = v4;
                      *(a2 + 2) = v3 - v4;
                      return;
                    }

                    v14 = v47 - v4;
                    *a2 = v28;
                    goto LABEL_33;
                  }
                }
              }
            }
          }

          if (v39 != *(this + 5))
          {
            v55 = 261;
            v17 = (v39 - 1);
            v54[0] = v27;
            v54[1] = v26;
            v15 = a2;
            v16 = this;
            goto LABEL_41;
          }

          *a2 = 2;
          v14 = v39 - v4;
          goto LABEL_33;
        case 40:
          v12 = 21;
          goto LABEL_31;
        case 41:
          v12 = 28;
          goto LABEL_31;
        case 42:
          v12 = 30;
          goto LABEL_31;
        case 43:
          v12 = 25;
          goto LABEL_31;
        case 44:
          v12 = 16;
          goto LABEL_31;
        case 45:
          if (*v6 == 62)
          {
            *(this + 4) = v4 + 2;
            *a2 = 13;
            v14 = 2;
            goto LABEL_33;
          }

          v12 = 24;
          goto LABEL_31;
        case 46:

          mlir::Lexer::lexEllipsis(a2, this, v4);
          return;
        case 47:
          if (*v6 != 47)
          {
            goto LABEL_40;
          }

          v9 = (v4 + 2);
          do
          {
            while (1)
            {
              v6 = v9++;
              *(this + 4) = v9;
              v10 = *v6;
              if (!*v6)
              {
                break;
              }

              if (v10 == 10 || v10 == 13)
              {
                ++v6;
                goto LABEL_4;
              }
            }
          }

          while (v6 != (*(this + 2) + *(this + 3)));
          *(this + 4) = v6;
LABEL_4:
          v4 = v6;
          if (v6 == v3)
          {
            goto LABEL_24;
          }

          continue;
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
          v18 = *v6;
          if (v8 == 48 && v18 == 120)
          {
            v19 = v4[2];
            if (v19 < 0)
            {
              goto LABEL_82;
            }

            v20 = MEMORY[0x277D85DE0];
            if ((*(MEMORY[0x277D85DE0] + 4 * v19 + 60) & 0x10000) == 0)
            {
              goto LABEL_82;
            }

            v6 = v4 + 3;
            *(this + 4) = v4 + 3;
            if (v4[3] < 0)
            {
              goto LABEL_82;
            }

            v21 = v4[3];
            v22 = v4 + 4;
            do
            {
              if ((*(v20 + 4 * v21 + 60) & 0x10000) == 0)
              {
                break;
              }

              *(this + 4) = v22;
              v23 = *v22++;
              v21 = v23;
            }

            while ((v23 & 0x80000000) == 0);
            goto LABEL_81;
          }

          if ((v18 & 0x80) != 0)
          {
LABEL_82:
            v35 = 10;
            goto LABEL_83;
          }

          v22 = v4 + 2;
          v24 = MEMORY[0x277D85DE0];
          while ((*(v24 + 4 * v18 + 60) & 0x400) != 0)
          {
            *(this + 4) = v22;
            v25 = *v22++;
            v18 = v25;
            if (v25 < 0)
            {
              goto LABEL_81;
            }
          }

          if (v18 != 46)
          {
LABEL_81:
            v6 = v22 - 1;
            goto LABEL_82;
          }

          v29 = v22 + 3;
          do
          {
            v30 = v29;
            v6 = v29 - 3;
            *(this + 4) = v29 - 3;
            v31 = *(v29 - 3);
            if (v31 < 0)
            {
              break;
            }

            ++v29;
          }

          while ((*(v24 + 4 * v31 + 60) & 0x400) != 0);
          if ((v31 | 0x20) == 0x65)
          {
            v32 = *(v30 - 2);
            if ((*(v24 + 4 * v32 + 60) & 0x400) != 0 || (v32 == 43 || v32 == 45) && (*(v24 + 4 * *(v30 - 1) + 60) & 0x400) != 0)
            {
              v6 = v30 - 1;
              *(this + 4) = v30 - 1;
              if ((*(v30 - 1) & 0x80000000) == 0)
              {
                v33 = *(v30 - 1);
                do
                {
                  if ((*(v24 + 4 * v33 + 60) & 0x400) == 0)
                  {
                    break;
                  }

                  *(this + 4) = v30;
                  v34 = *v30++;
                  v33 = v34;
                }

                while ((v34 & 0x80000000) == 0);
                v6 = v30 - 1;
              }
            }
          }

          v35 = 9;
LABEL_83:
          v14 = v6 - v4;
          *a2 = v35;
          break;
        case 58:
          v12 = 15;
          goto LABEL_31;
        case 60:
          v12 = 23;
          goto LABEL_31;
        case 61:
          v12 = 18;
          goto LABEL_31;
        case 62:
          v12 = 19;
          goto LABEL_31;
        case 63:
          v12 = 26;
          goto LABEL_31;
        case 64:

          mlir::Lexer::lexAtIdentifier(a2, this, v4);
          return;
        case 91:
          v12 = 22;
          goto LABEL_31;
        case 93:
          v12 = 29;
          goto LABEL_31;
        case 95:
          goto LABEL_36;
        default:
          if (*v4)
          {
            goto LABEL_34;
          }

          if (v4 != (*(this + 2) + *(this + 3)))
          {
            goto LABEL_4;
          }

          *a2 = 0;
          goto LABEL_32;
      }

      goto LABEL_33;
    }

    break;
  }

  switch(v7)
  {
    case '{':
      if (*v6 == 45 && v4[2] == 35)
      {
        *(this + 4) = v4 + 3;
        v13 = 32;
LABEL_28:
        *a2 = v13;
        v14 = 3;
        goto LABEL_33;
      }

      v12 = 20;
LABEL_31:
      *a2 = v12;
LABEL_32:
      v14 = 1;
LABEL_33:
      *(a2 + 1) = v4;
      *(a2 + 2) = v14;
      return;
    case '|':
      v12 = 31;
      goto LABEL_31;
    case '}':
      v12 = 27;
      goto LABEL_31;
  }

LABEL_34:
  if (v7 < 0)
  {
    if (__maskrune(v7, 0x100uLL))
    {
      goto LABEL_36;
    }
  }

  else if ((*(MEMORY[0x277D85DE0] + 4 * v7 + 60) & 0x100) != 0)
  {
LABEL_36:

    mlir::Lexer::lexBareIdentifierOrKeyword(a2, this, v4);
    return;
  }

LABEL_40:
  v54[0] = "unexpected character";
  v55 = 259;
  v15 = a2;
  v16 = this;
  v17 = v4;
LABEL_41:
  mlir::Lexer::emitError(v15, v16, v17, v54);
}

uint64_t mlir::Lexer::lexBareIdentifierOrKeyword(mlir::Lexer *this, const char *a2, unsigned __int8 *a3)
{
  v6 = *(a2 + 4);
  v7 = MEMORY[0x277D85DE0];
  while (1)
  {
    v8 = *v6;
    if ((v8 & 0x80000000) != 0)
    {
      result = __maskrune(v8, 0x100uLL);
      v6 = *(a2 + 4);
      if (result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = *(v7 + 4 * v8 + 60) & 0x100;
      if (result)
      {
        goto LABEL_12;
      }
    }

    v10 = *v6;
    if (v10 < 0 || (*(v7 + 4 * v10 + 60) & 0x400) == 0)
    {
      v11 = *v6 - 36;
      v12 = v11 > 0x3B;
      v13 = (1 << v11) & 0x800000000000401;
      if (v12 || v13 == 0)
      {
        break;
      }
    }

LABEL_12:
    *(a2 + 4) = ++v6;
  }

  v15 = v6 - a3;
  if ((v6 - a3) < 2)
  {
    goto LABEL_21;
  }

  v16 = *a3;
  if (v16 == 105)
  {
    v17 = a3 + 1;
    while (*v17 - 48 < 0xA)
    {
      if (++v17 == v6)
      {
LABEL_29:
        v18 = 12;
        goto LABEL_22;
      }
    }
  }

  if (v15 == 2)
  {
    if (*a3 != 28532)
    {
      goto LABEL_21;
    }

    v18 = 79;
  }

  else
  {
    if (a3[1] == 105 && (v16 == 117 || v16 == 115))
    {
      v19 = a3 + 2;
      while (*v19 - 48 < 0xA)
      {
        if (++v19 == v6)
        {
          goto LABEL_29;
        }
      }
    }

    if (v15 > 7)
    {
      if (v15 <= 9)
      {
        if (v15 == 8)
        {
          switch(*a3)
          {
            case 0x74636E6974736964:
              v18 = 43;
              goto LABEL_22;
            case 0x4E46334D34453866:
              v18 = 50;
              goto LABEL_22;
            case 0x4E46314D32453466:
              v18 = 55;
              goto LABEL_22;
            case 0x4E46334D32453666:
              v18 = 56;
              goto LABEL_22;
            case 0x4E46324D33453666:
              v18 = 57;
              goto LABEL_22;
            case 0x766964726F6F6C66:
              v18 = 61;
              goto LABEL_22;
          }
        }

        else if (*a3 == 0x4E46304D38453866 && a3[8] == 85)
        {
          v18 = 58;
          goto LABEL_22;
        }
      }

      else
      {
        switch(v15)
        {
          case 14:
            if (*a3 == 0x65725F65736E6564 && *(a3 + 6) == 0x656372756F736572)
            {
              v18 = 42;
              goto LABEL_22;
            }

            break;
          case 13:
            if (*a3 == 0x3142334D34453866 && *(a3 + 5) == 0x5A554E4631314233)
            {
              v18 = 53;
              goto LABEL_22;
            }

            break;
          case 10:
            if (*a3 == 0x6D5F656E69666661 && *(a3 + 4) == 28769)
            {
              v18 = 34;
              goto LABEL_22;
            }

            if (*a3 == 0x735F656E69666661 && *(a3 + 4) == 29797)
            {
              v18 = 35;
              goto LABEL_22;
            }

            if (*a3 == 0x7475626972747461 && *(a3 + 4) == 29541)
            {
              v18 = 37;
              goto LABEL_22;
            }

            if (*a3 == 0x4E46324D35453866 && *(a3 + 4) == 23125)
            {
              v18 = 51;
              goto LABEL_22;
            }

            if (*a3 == 0x4E46334D34453866 && *(a3 + 4) == 23125)
            {
              v18 = 52;
              goto LABEL_22;
            }

            break;
        }
      }
    }

    else if (v15 <= 4)
    {
      if (v15 == 3)
      {
        if (*a3 == 12646 && a3[2] == 54)
        {
          v18 = 44;
          goto LABEL_22;
        }

        if (*a3 == 13158 && a3[2] == 50)
        {
          v18 = 45;
          goto LABEL_22;
        }

        if (*a3 == 13926 && a3[2] == 52)
        {
          v18 = 46;
          goto LABEL_22;
        }

        if (*a3 == 14438 && a3[2] == 48)
        {
          v18 = 47;
          goto LABEL_22;
        }

        if (*a3 == 28518 && a3[2] == 114)
        {
          v18 = 62;
          goto LABEL_22;
        }

        if (*a3 == 28524 && a3[2] == 99)
        {
          v18 = 65;
          goto LABEL_22;
        }

        if (*a3 == 24941 && a3[2] == 120)
        {
          v18 = 66;
          goto LABEL_22;
        }

        if (*a3 == 26989 && a3[2] == 110)
        {
          v18 = 68;
          goto LABEL_22;
        }

        if (*a3 == 28525 && a3[2] == 100)
        {
          v18 = 69;
          goto LABEL_22;
        }
      }

      else if (v15 == 4)
      {
        switch(*a3)
        {
          case 0x36316662:
            v18 = 38;
            goto LABEL_22;
          case 0x38323166:
            v18 = 59;
            goto LABEL_22;
          case 0x636E7566:
            v18 = 63;
            goto LABEL_22;
          case 0x656E6F6E:
            v18 = 70;
            goto LABEL_22;
          case 0x657A6973:
            v18 = 72;
            goto LABEL_22;
          case 0x70657473:
            v18 = 74;
            goto LABEL_22;
          case 0x32336674:
            v18 = 78;
            goto LABEL_22;
          case 0x65757274:
            v18 = 80;
            goto LABEL_22;
          case 0x65707974:
            v18 = 82;
            goto LABEL_22;
          case 0x74696E75:
            v18 = 83;
            goto LABEL_22;
        }
      }
    }

    else if (v15 == 5)
    {
      if (*a3 == 1634890337 && a3[4] == 121)
      {
        v18 = 36;
        goto LABEL_22;
      }

      if (*a3 == 1936614756 && a3[4] == 101)
      {
        v18 = 41;
        goto LABEL_22;
      }

      if (*a3 == 1936482662 && a3[4] == 101)
      {
        v18 = 60;
        goto LABEL_22;
      }

      if (*a3 == 1701080681 && a3[4] == 120)
      {
        v18 = 64;
        goto LABEL_22;
      }

      if (*a3 == 1819309428 && a3[4] == 101)
      {
        v18 = 81;
        goto LABEL_22;
      }
    }

    else if (v15 == 6)
    {
      if (*a3 == 893728870 && *(a3 + 2) == 12877)
      {
        v18 = 48;
        goto LABEL_22;
      }

      if (*a3 == 876951654 && *(a3 + 2) == 13133)
      {
        v18 = 49;
        goto LABEL_22;
      }

      if (*a3 == 860174438 && *(a3 + 2) == 13389)
      {
        v18 = 54;
        goto LABEL_22;
      }

      if (*a3 == 1919772013 && *(a3 + 2) == 26213)
      {
        v18 = 67;
        goto LABEL_22;
      }

      if (*a3 == 1936090735 && *(a3 + 2) == 29797)
      {
        v18 = 71;
        goto LABEL_22;
      }

      if (*a3 == 1918988403 && *(a3 + 2) == 25971)
      {
        v18 = 73;
        goto LABEL_22;
      }

      if (*a3 == 1651341683 && *(a3 + 2) == 27759)
      {
        v18 = 76;
        goto LABEL_22;
      }

      if (*a3 == 1936614772 && *(a3 + 2) == 29295)
      {
        v18 = 77;
        goto LABEL_22;
      }

      if (*a3 == 1952671094 && *(a3 + 2) == 29295)
      {
        v18 = 84;
        goto LABEL_22;
      }
    }

    else
    {
      if (*a3 == 1818846563 && *(a3 + 3) == 1986618476)
      {
        v18 = 39;
        goto LABEL_22;
      }

      if (*a3 == 1886220131 && *(a3 + 3) == 2019912816)
      {
        v18 = 40;
        goto LABEL_22;
      }

      if (*a3 == 1769108595 && *(a3 + 3) == 1684366441)
      {
        v18 = 75;
        goto LABEL_22;
      }
    }

LABEL_21:
    v18 = 3;
  }

LABEL_22:
  *this = v18;
  *(this + 1) = a3;
  *(this + 2) = v15;
  return result;
}

void mlir::Lexer::lexEllipsis(mlir::Lexer *this, const char *a2, uint64_t a3)
{
  v6 = *(a2 + 4);
  if (v6 != (*(a2 + 2) + *(a2 + 3)) && *v6 == 46 && *(v6 + 1) == 46)
  {
    *(a2 + 4) = v6 + 2;
    *this = 17;
    *(this + 1) = a3;
    *(this + 2) = v6 - a3 + 2;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    v7 = "expected three consecutive dots for an ellipsis";
    v8 = 259;
    mlir::Lexer::emitError(this, a2, v6, &v7);
  }
}

void mlir::Lexer::lexAtIdentifier(mlir::Lexer *this, const char *a2, uint64_t a3)
{
  v6 = *(a2 + 4);
  v7 = (v6 + 1);
  *(a2 + 4) = v6 + 1;
  v8 = *v6;
  if (v8 != 34)
  {
    if ((v8 & 0x80000000) != 0)
    {
      v10 = __maskrune(*v6, 0x100uLL);
      v7 = *(a2 + 4);
    }

    else
    {
      v10 = *(MEMORY[0x277D85DE0] + 4 * v8 + 60) & 0x100;
    }

    if (v8 != 95 && v10 == 0)
    {
      *&v20 = "@ identifier expected to start with letter or '_'";
      v22 = 259;
      mlir::Lexer::emitError(this, a2, (v7 - 1), &v20);
      return;
    }

    v12 = MEMORY[0x277D85DE0];
    while (1)
    {
      v13 = *v7;
      if ((v13 & 0x80000000) != 0)
      {
        v14 = __maskrune(v13, 0x100uLL);
        v7 = *(a2 + 4);
        if (v14)
        {
          goto LABEL_23;
        }
      }

      else if ((*(v12 + 4 * v13 + 60) & 0x100) != 0)
      {
        goto LABEL_23;
      }

      v15 = *v7;
      if (v15 < 0 || (*(v12 + 4 * v15 + 60) & 0x400) == 0)
      {
        v16 = *v7 - 36;
        v17 = v16 > 0x3B;
        v18 = (1 << v16) & 0x800000000000401;
        if (v17 || v18 == 0)
        {
          *this = 4;
          v9 = &v7[-a3];
LABEL_26:
          *(this + 1) = a3;
          goto LABEL_27;
        }
      }

LABEL_23:
      *(a2 + 4) = ++v7;
    }
  }

  mlir::Lexer::lexString(&v20, a2, v7);
  if (v20 != 1)
  {
    v9 = (*(a2 + 4) - a3);
    *this = 4;
    goto LABEL_26;
  }

  *this = v20;
  v9 = v21;
LABEL_27:
  *(this + 2) = v9;
}

void mlir::Lexer::lexString(mlir::Lexer *this, const char *a2, uint64_t a3)
{
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  if (v4 == v5)
  {
LABEL_22:
    *this = 2;
    v12 = &v5[-a3];
LABEL_23:
    *(this + 1) = a3;
    *(this + 2) = v12;
    return;
  }

  while (1)
  {
    v6 = v4 + 1;
    *(a2 + 4) = v4 + 1;
    v7 = *v4;
    if (v7 > 0x21)
    {
      break;
    }

    if (*v4)
    {
      if (v7 - 10 < 3)
      {
LABEL_24:
        v11 = "expected '' in string literal";
        goto LABEL_25;
      }
    }

    else if (v4 == (*(a2 + 2) + *(a2 + 3)))
    {
      goto LABEL_24;
    }

LABEL_21:
    v4 = v6;
    if (v6 == v5)
    {
      goto LABEL_22;
    }
  }

  if (v7 != 92)
  {
    if (v7 == 34)
    {
      *this = 11;
      v12 = &v6[-a3];
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v8 = *v6;
  if ((v8 - 92) <= 0x18 && ((1 << (v8 - 92)) & 0x1040001) != 0)
  {
    v10 = 2;
LABEL_20:
    v6 = &v4[v10];
    *(a2 + 4) = &v4[v10];
    goto LABEL_21;
  }

  v10 = 2;
  if (v8 == 34)
  {
    goto LABEL_20;
  }

  if (llvm::hexDigitValue(char)::LUT[v8] != -1 && llvm::hexDigitValue(char)::LUT[v4[2]] != -1)
  {
    v10 = 3;
    goto LABEL_20;
  }

  v11 = "unknown escape in string literal";
LABEL_25:
  v13 = v11;
  v14 = 259;
  mlir::Lexer::emitError(this, a2, v4, &v13);
}

uint64_t mlir::detail::Parser::parseLocationInstance(uint64_t ****a1, uint64_t *a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = (v4 + 7);
  v6 = *(v4 + 14);
  if (v6 != 3)
  {
    if (v6 != 11)
    {
      if (v6 == 5)
      {
        v7 = mlir::detail::Parser::parseExtendedAttr(a1, 0);
        if (v7)
        {
          v8 = v7;
          v105[0] = v7;
          if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(v105))
          {
            v9 = v8;
          }

          else
          {
            v9 = 0;
          }

          *a2 = v9;
          if (v9)
          {
            goto LABEL_9;
          }

          v103[0] = "expected location attribute, but got";
          v104 = 259;
          mlir::detail::Parser::emitError(a1, a1[1][8] - (*(a1[1] + 14) == 0), v103, v105);
          if (v105[0])
          {
            LODWORD(__p.__r_.__value_.__l.__data_) = 0;
            __p.__r_.__value_.__l.__size_ = v8;
            v47 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v107, &__p, 1);
            v48 = v107 + 24 * v108;
            v49 = *v47;
            *(v48 + 16) = *(v47 + 16);
            *v48 = v49;
            ++v108;
          }

LABEL_47:
          v10 = (v109 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v105);
          goto LABEL_48;
        }

LABEL_54:
        v10 = 0;
        goto LABEL_48;
      }

      goto LABEL_45;
    }

    v11 = **v4;
    mlir::Token::getStringValue(v5, &__p);
    v12 = a1[1];
    *(v12 + 5) = *(v12 + 7);
    v12[12] = v12[9];
    mlir::Lexer::lexToken((a1[1] + 1), v105);
    v14 = a1[1];
    *(v14 + 7) = *v105;
    v14[9] = v106;
    v15 = a1[1];
    v16 = v15 + 7;
    v17 = *(v15 + 14);
    if (v17 == 21)
    {
      *(v15 + 5) = *v16;
      v15[12] = v15[9];
      mlir::Lexer::lexToken((a1[1] + 1), v105);
      v33 = a1[1];
      *(v33 + 7) = *v105;
      v33[9] = v106;
      v103[0] = 0;
      if ((mlir::detail::Parser::parseLocationInstance(a1, v103) & 1) == 0 || (LOWORD(v108) = 260, v105[0] = &__p, v35 = mlir::StringAttr::get(v11, v105, v34), *a2 = mlir::NameLoc::get(v35, v103[0]), v105[0] = "expected ')' after child location of NameLoc", LOWORD(v108) = 259, !mlir::detail::Parser::parseToken(a1, 28, v105)))
      {
        v27 = 0;
        goto LABEL_33;
      }

LABEL_32:
      v27 = 1;
LABEL_33:
      v10 = v27 & 1;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_48;
    }

    if (v17 == 15)
    {
      *(v15 + 5) = *v16;
      v15[12] = v15[9];
      mlir::Lexer::lexToken((a1[1] + 1), v105);
      v21 = a1[1];
      *(v21 + 7) = *v105;
      v21[9] = v106;
      v22 = a1[1];
      v24 = *(v22 + 14);
      v23 = (v22 + 7);
      if (v24 != 10)
      {
        goto LABEL_14;
      }

      UnsignedIntegerValue = mlir::Token::getUnsignedIntegerValue(v23, v18, v19, v20);
      if ((UnsignedIntegerValue & 0x100000000) == 0)
      {
        goto LABEL_14;
      }

      v55 = UnsignedIntegerValue;
      v56 = a1[1];
      *(v56 + 5) = *(v56 + 7);
      v56[12] = v56[9];
      mlir::Lexer::lexToken((a1[1] + 1), v105);
      v58 = a1[1];
      *(v58 + 7) = *v105;
      v58[9] = v106;
      v59 = a1[1];
      if (*(v59 + 14) == 15)
      {
        *(v59 + 5) = *(v59 + 7);
        v59[12] = v59[9];
        mlir::Lexer::lexToken((a1[1] + 1), v105);
        v63 = a1[1];
        *(v63 + 7) = *v105;
        v63[9] = v106;
        v64 = a1[1];
        v66 = *(v64 + 14);
        v65 = (v64 + 7);
        if (v66 == 10)
        {
          v67 = mlir::Token::getUnsignedIntegerValue(v65, v60, v61, v62);
          if ((v67 & 0x100000000) == 0)
          {
LABEL_58:
            v103[0] = "expected integer column number in FileLineColRange";
            v104 = 259;
            mlir::detail::Parser::emitError(a1, a1[1][8] - (*(a1[1] + 14) == 0), v103, v105);
            goto LABEL_16;
          }

          v69 = v67;
          v70 = a1[1];
          *(v70 + 5) = *(v70 + 7);
          v70[12] = v70[9];
          mlir::Lexer::lexToken((a1[1] + 1), v105);
          v71 = a1[1];
          *(v71 + 7) = *v105;
          v71[9] = v106;
          v72 = a1[1];
          v74 = (v72 + 7);
          v73 = *(v72 + 14);
          if (v73 != 3 && v73 != 12 && !mlir::Token::isKeyword(v74) || v72[9] != 2 || *v72[8] != 28532)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            v37 = mlir::FileLineColRange::get(v11, p_p, size, v55, v69);
            goto LABEL_31;
          }

          *(v72 + 5) = *v74;
          v72[12] = v72[9];
          mlir::Lexer::lexToken((a1[1] + 1), v105);
          v81 = a1[1];
          *(v81 + 7) = *v105;
          v81[9] = v106;
          v82 = a1[1];
          v83 = *(v82 + 14);
          if (v83 == 10)
          {
            v84 = mlir::Token::getUnsignedIntegerValue((v82 + 7), v78, v79, v80);
            if ((v84 & 0x100000000) == 0)
            {
LABEL_14:
              v26 = "expected integer line number in FileLineColRange";
LABEL_15:
              v103[0] = v26;
              v104 = 259;
              mlir::detail::Parser::emitWrongTokenError(a1, v103, v105);
LABEL_16:
              v27 = v109 ^ 1;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(v105);
              goto LABEL_33;
            }

            v85 = v84;
            v86 = a1[1];
            *(v86 + 5) = *(v86 + 7);
            v86[12] = v86[9];
            mlir::Lexer::lexToken((a1[1] + 1), v105);
            v87 = a1[1];
            *(v87 + 7) = *v105;
            v87[9] = v106;
            v82 = a1[1];
            v88 = *(v82 + 14);
          }

          else
          {
            v85 = 0;
            v88 = *(v82 + 14);
          }

          if (v88 != 15)
          {
            goto LABEL_15;
          }

          *(v82 + 5) = *(v82 + 7);
          v82[12] = v82[9];
          mlir::Lexer::lexToken((a1[1] + 1), v105);
          v92 = a1[1];
          *(v92 + 7) = *v105;
          v92[9] = v106;
          v93 = a1[1];
          v95 = *(v93 + 14);
          v94 = (v93 + 7);
          if (v95 == 10)
          {
            v96 = mlir::Token::getUnsignedIntegerValue(v94, v89, v90, v91);
            if ((v96 & 0x100000000) == 0)
            {
              goto LABEL_58;
            }

            v97 = v96;
            v98 = a1[1];
            *(v98 + 5) = *(v98 + 7);
            v98[12] = v98[9];
            mlir::Lexer::lexToken((a1[1] + 1), v105);
            v99 = a1[1];
            *(v99 + 7) = *v105;
            v99[9] = v106;
            LOWORD(v108) = 260;
            v105[0] = &__p;
            v101 = mlir::StringAttr::get(v11, v105, v100);
            if (v83 == 10)
            {
              v37 = mlir::FileLineColRange::get(v101, v55, v69, v85, v97);
            }

            else
            {
              v37 = mlir::FileLineColRange::get(v101, v55, v69, v97);
            }

            goto LABEL_31;
          }
        }

        v26 = "expected integer column number in FileLineColRange";
        goto LABEL_15;
      }

      LOWORD(v108) = 260;
      v105[0] = &__p;
      v68 = mlir::StringAttr::get(v11, v105, v57);
      v37 = mlir::FileLineColRange::get(v68, v55);
    }

    else
    {
      LOWORD(v108) = 260;
      v105[0] = &__p;
      v36 = mlir::StringAttr::get(v11, v105, v13);
      v37 = mlir::NameLoc::get(v36);
    }

LABEL_31:
    *a2 = v37;
    goto LABEL_32;
  }

  v28 = v4[8];
  v29 = v4[9];
  if (v29 != 5)
  {
    if (v29 == 7)
    {
      v38 = *v28;
      v39 = *(v28 + 3);
      if (v38 == 1852534389 && v39 == 1853321070)
      {
        *(v4 + 5) = *v5;
        v4[12] = v4[9];
        mlir::Lexer::lexToken((a1[1] + 1), v105);
        v41 = a1[1];
        *(v41 + 7) = *v105;
        v41[9] = v106;
        *a2 = *(***a1[1] + 616);
        goto LABEL_9;
      }
    }

    else if (v29 == 8 && *v28 == 0x657469736C6C6163)
    {
      *(v4 + 5) = *v5;
      v4[12] = v4[9];
      mlir::Lexer::lexToken((a1[1] + 1), v105);
      v30 = a1[1];
      *(v30 + 7) = *v105;
      v30[9] = v106;
      v105[0] = "expected '(' in callsite location";
      LOWORD(v108) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 21, v105))
      {
        goto LABEL_54;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      if ((mlir::detail::Parser::parseLocationInstance(a1, &__p) & 1) == 0)
      {
        goto LABEL_54;
      }

      v31 = a1[1];
      if (*(v31 + 14) != 3 || v31[9] != 2 || *v31[8] != 29793)
      {
        v32 = "expected 'at' in callsite location";
LABEL_46:
        v103[0] = v32;
        v104 = 259;
        mlir::detail::Parser::emitWrongTokenError(a1, v103, v105);
        goto LABEL_47;
      }

      *(v31 + 5) = *(v31 + 7);
      v31[12] = v31[9];
      mlir::Lexer::lexToken((a1[1] + 1), v105);
      v77 = a1[1];
      *(v77 + 7) = *v105;
      v77[9] = v106;
      v103[0] = 0;
      if ((mlir::detail::Parser::parseLocationInstance(a1, v103) & 1) == 0)
      {
        goto LABEL_54;
      }

      v105[0] = "expected ')' in callsite location";
      LOWORD(v108) = 259;
      if (!mlir::detail::Parser::parseToken(a1, 28, v105))
      {
        goto LABEL_54;
      }

      *a2 = mlir::CallSiteLoc::get(__p.__r_.__value_.__l.__data_, v103[0]);
LABEL_9:
      v10 = 1;
      goto LABEL_48;
    }

LABEL_45:
    v32 = "expected location instance";
    goto LABEL_46;
  }

  v42 = *v28;
  v43 = *(v28 + 4);
  if (v42 != 1702065510 || v43 != 100)
  {
    goto LABEL_45;
  }

  *(v4 + 5) = *v5;
  v4[12] = v4[9];
  mlir::Lexer::lexToken((a1[1] + 1), v105);
  v50 = a1[1];
  *(v50 + 7) = *v105;
  v50[9] = v106;
  v51 = a1[1];
  if (*(v51 + 14) == 23)
  {
    *(v51 + 5) = *(v51 + 7);
    v51[12] = v51[9];
    mlir::Lexer::lexToken((a1[1] + 1), v105);
    v52 = a1[1];
    *(v52 + 7) = *v105;
    v52[9] = v106;
    v53 = mlir::detail::Parser::parseAttribute(a1, 0);
    if (!v53)
    {
      goto LABEL_54;
    }

    v54 = v53;
    v105[0] = "expected '>' after fused location metadata";
    LOWORD(v108) = 259;
    if (!mlir::detail::Parser::parseToken(a1, 19, v105))
    {
      goto LABEL_54;
    }
  }

  else
  {
    v54 = 0;
  }

  v105[0] = &v106;
  v105[1] = 0x400000000;
  v103[0] = a1;
  v103[1] = v105;
  if (mlir::detail::Parser::parseCommaSeparatedList(a1, 2, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>, v103, " in fused location", 18))
  {
    *a2 = mlir::FusedLoc::get(v105[0], LODWORD(v105[1]), v54, **a1[1]);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (v105[0] != &v106)
  {
    free(v105[0]);
  }

LABEL_48:
  v45 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseFusedLocation(mlir::LocationAttr &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  v4 = 0;
  if ((mlir::detail::Parser::parseLocationInstance(v2, &v4) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(a1[1], v4);
  return 1;
}

BOOL mlir::detail::Parser::parseCommaSeparatedList(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 != 7)
      {
        if (a2 != 8)
        {
          goto LABEL_31;
        }

        if (*(*(a1 + 1) + 56) != 20)
        {
          return 1;
        }

        goto LABEL_17;
      }

      if (*(*(a1 + 1) + 56) == 23)
      {
        goto LABEL_25;
      }
    }

    else if (a2 == 5)
    {
      if (*(*(a1 + 1) + 56) == 21)
      {
        goto LABEL_21;
      }
    }

    else if (*(*(a1 + 1) + 56) == 22)
    {
      goto LABEL_9;
    }

    return 1;
  }

  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        while (1)
        {
LABEL_31:
          if ((a3(a4) & 1) == 0)
          {
            return 0;
          }

          v16 = *(a1 + 1);
          if (*(v16 + 56) != 16)
          {
            break;
          }

          *(v16 + 80) = *(v16 + 56);
          *(v16 + 96) = *(v16 + 72);
          mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
          v17 = *(a1 + 1);
          *(v17 + 56) = v20;
          *(v17 + 72) = v21;
        }

        if (a2 <= 3)
        {
          if (a2 > 1)
          {
            if (a2 != 2)
            {
LABEL_43:
              v23 = 1283;
              *&v20 = "expected '>'";
              v21 = a5;
              v22 = a6;
              v18 = a1;
              v19 = 19;
              return mlir::detail::Parser::parseToken(v18, v19, &v20);
            }

LABEL_42:
            v23 = 1283;
            *&v20 = "expected ']'";
            v21 = a5;
            v22 = a6;
            v18 = a1;
            v19 = 29;
            return mlir::detail::Parser::parseToken(v18, v19, &v20);
          }

          if (!a2)
          {
            return 1;
          }
        }

        else
        {
          if (a2 > 5)
          {
            if (a2 != 6)
            {
              if (a2 != 7)
              {
                goto LABEL_45;
              }

              goto LABEL_43;
            }

            goto LABEL_42;
          }

          if (a2 == 4)
          {
LABEL_45:
            v23 = 1283;
            *&v20 = "expected '}'";
            v21 = a5;
            v22 = a6;
            v18 = a1;
            v19 = 27;
            return mlir::detail::Parser::parseToken(v18, v19, &v20);
          }
        }

        v23 = 1283;
        *&v20 = "expected ')'";
        v21 = a5;
        v22 = a6;
        v18 = a1;
        v19 = 28;
        return mlir::detail::Parser::parseToken(v18, v19, &v20);
      }

LABEL_9:
      v23 = 1283;
      *&v20 = "expected '['";
      v21 = a5;
      v22 = a6;
      if (mlir::detail::Parser::parseToken(a1, 22, &v20))
      {
        v12 = *(a1 + 1);
        v13 = v12 + 56;
        if (*(v12 + 56) != 29)
        {
          goto LABEL_31;
        }

LABEL_27:
        *(v12 + 80) = *v13;
        *(v12 + 96) = *(v13 + 16);
        mlir::Lexer::lexToken((*(a1 + 1) + 8), &v20);
        v14 = *(a1 + 1);
        *(v14 + 56) = v20;
        *(v14 + 72) = v21;
        return 1;
      }

      return 0;
    }

LABEL_21:
    v23 = 1283;
    *&v20 = "expected '('";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 21, &v20))
    {
      v12 = *(a1 + 1);
      v13 = v12 + 56;
      if (*(v12 + 56) != 28)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    return 0;
  }

  if (a2 == 3)
  {
LABEL_25:
    v23 = 1283;
    *&v20 = "expected '<'";
    v21 = a5;
    v22 = a6;
    if (mlir::detail::Parser::parseToken(a1, 23, &v20))
    {
      v12 = *(a1 + 1);
      v13 = v12 + 56;
      if (*(v12 + 56) != 19)
      {
        goto LABEL_31;
      }

      goto LABEL_27;
    }

    return 1;
  }

LABEL_17:
  v23 = 1283;
  *&v20 = "expected '{'";
  v21 = a5;
  v22 = a6;
  if (mlir::detail::Parser::parseToken(a1, 20, &v20))
  {
    v12 = *(a1 + 1);
    v13 = v12 + 56;
    if (*(v12 + 56) != 27)
    {
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  return 0;
}

BOOL mlir::detail::Parser::parseToken(mlir::detail::Parser *a1, int a2, const llvm::Twine *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (*(v4 + 56) == a2)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v9);
    v5 = *(a1 + 1);
    *(v5 + 56) = v9;
    *(v5 + 72) = v10;
    v6 = 1;
  }

  else
  {
    mlir::detail::Parser::emitWrongTokenError(a1, a3, &v9);
    v6 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::detail::Parser::parseCommaSeparatedListUntil(mlir::detail::Parser *a1, int a2, uint64_t (*a3)(uint64_t), uint64_t a4, char a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  if (*(v6 + 56) == a2)
  {
    if (a5)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v15);
      v7 = *(a1 + 1);
      *(v7 + 56) = v15;
      *(v7 + 72) = v16;
      v8 = 1;
    }

    else
    {
      v13[0] = "expected list element";
      v14 = 259;
      mlir::detail::Parser::emitWrongTokenError(a1, v13, &v15);
      v8 = (v18 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
    }
  }

  else if (mlir::detail::Parser::parseCommaSeparatedList(a1, 0, a3, a4, 0, 0))
  {
    v14 = 1283;
    v13[0] = "expected ',' or '";
    v13[2] = mlir::Token::getTokenSpelling(a2);
    v13[3] = v10;
    *&v15 = v13;
    v16 = "'";
    v17 = 770;
    v8 = mlir::detail::Parser::parseToken(a1, a2, &v15);
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::detail::Parser::emitWrongTokenError(mlir::detail::Parser *this@<X0>, const llvm::Twine *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 1);
  v8 = *(v6 + 64) - (*(v6 + 56) == 0);
  *&v19 = *(v6 + 24);
  v7 = v19;
  *(&v19 + 1) = v8 - v19;
  last_not_of = llvm::StringRef::find_last_not_of(&v19, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
  if (v8 - v7 >= (last_not_of + 1))
  {
    v10 = last_not_of + 1;
  }

  else
  {
    v10 = v8 - v7;
  }

  *&v19 = v7;
  if (v10)
  {
    while (1)
    {
      v11 = *(v7 + v10 - 1);
      if (v11 != 10 && v11 != 13)
      {
        break;
      }

      v13 = v10 - 1;
      *(&v19 + 1) = v10 - 1;
      v18 = v19;
      last_of = llvm::StringRef::find_last_of(&v18, "\n\r", 2, 0xFFFFFFFFFFFFFFFFLL);
      if (last_of != -1)
      {
        if (*(&v18 + 1) >= last_of)
        {
          v15 = last_of;
        }

        else
        {
          v15 = *(&v18 + 1);
        }

        *&v18 = v18 + v15;
        *(&v18 + 1) -= v15;
      }

      v16 = llvm::StringRef::find(&v18, "//", 2uLL, 0);
      if (v16 != -1)
      {
        if (v13 >= v16 + v13 - *(&v18 + 1))
        {
          v13 = v16 + v13 - *(&v18 + 1);
        }

        *&v19 = v7;
        *(&v19 + 1) = v13;
      }

      v17 = llvm::StringRef::find_last_not_of(&v19, " \t", 2, 0xFFFFFFFFFFFFFFFFLL);
      if (v13 >= v17 + 1)
      {
        v10 = v17 + 1;
      }

      else
      {
        v10 = v13;
      }

      *&v19 = v7;
      *(&v19 + 1) = v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }

    v8 = v7 + v10;
  }

LABEL_23:
  mlir::detail::Parser::emitError(this, v8, a2, a3);
}

void mlir::detail::Parser::emitError(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, a2);
  emitDiag(EncodedSourceLocation, 2, a3, a4);
  if (*(*(a1 + 8) + 56) == 1)
  {
    *a4 = 0;
  }
}

uint64_t mlir::detail::Parser::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
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
    v3 = *(a1 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v6);
  *(*(a1 + 8) + 56) = v6;
  return 1;
}

uint64_t mlir::detail::Parser::parseOptionalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v4 = 0;
  v25 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 > 59)
  {
    if (v7 == 80)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
      v17 = *(this + 1);
      *(v17 + 56) = v22;
      *(v17 + 72) = v23;
      v4 = 1;
      llvm::APInt::operator=(a2, 1);
      goto LABEL_32;
    }

    v9 = 0;
    if (v7 != 60)
    {
      goto LABEL_33;
    }

    *(v5 + 80) = *v6;
    *(v5 + 96) = *(v5 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
    v16 = *(this + 1);
    *(v16 + 56) = v22;
    *(v16 + 72) = v23;
    llvm::APInt::operator=(a2, 0);
LABEL_28:
    v4 = 1;
LABEL_32:
    v9 = 1;
    goto LABEL_33;
  }

  v8 = v7 == 10 || v7 == 24;
  v9 = 0;
  if (v8)
  {
    if (v7 == 24)
    {
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
      v10 = *(this + 1);
      *(v10 + 56) = v22;
      *(v10 + 72) = v23;
      v5 = *(this + 1);
    }

    v11 = *(v5 + 64);
    v12 = *(v5 + 72);
    *&v22 = "expected integer value";
    v24 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v22))
    {
      v13 = 10;
      if (v12 >= 2)
      {
        if (*(v11 + 1) == 120)
        {
          v13 = 0;
        }

        else
        {
          v13 = 10;
        }
      }

      *&v22 = v11;
      *(&v22 + 1) = v12;
      if (!llvm::StringRef::consumeInteger(&v22, v13, a2) && !*(&v22 + 1))
      {
        v14 = *(a2 + 2);
        v15 = (*a2 + 8 * ((v14 - 1) >> 6));
        if (v14 < 0x41)
        {
          v15 = a2;
        }

        if ((*v15 >> (v14 - 1)))
        {
          llvm::APInt::zext(a2, v14 + 1, &v22);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            MEMORY[0x25F891010](*a2, 0x1000C8000313F17);
          }

          *a2 = v22;
          *(a2 + 2) = DWORD2(v22);
        }

        if (v7 == 24)
        {
          llvm::APInt::flipAllBits(a2);
          llvm::APInt::operator++(a2);
        }

        goto LABEL_28;
      }

      v20 = "integer value too large";
      v21 = 259;
      mlir::detail::Parser::emitError(this, v11, &v20, &v22);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    }

    v4 = 0;
    goto LABEL_32;
  }

LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return v4 | (v9 << 8);
}

uint64_t mlir::detail::Parser::parseOptionalDecimalInteger(mlir::detail::Parser *this, llvm::APInt *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 56);
  if (v3 == 24 || v3 == 10)
  {
    if (v3 == 24)
    {
      *(v2 + 80) = *(v2 + 56);
      *(v2 + 96) = *(v2 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
      v7 = *(this + 1);
      *(v7 + 56) = v22;
      *(v7 + 72) = v23;
      v2 = *(this + 1);
    }

    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
    *&v22 = "expected integer value";
    v24 = 259;
    if (mlir::detail::Parser::parseToken(this, 10, &v22))
    {
      if (*v8 == 48 && v9 >= 2)
      {
        v11 = v8[1];
        if ((v11 - 65) < 0x1A)
        {
          v11 += 32;
        }

        if (v11 == 120)
        {
          llvm::APInt::operator=(a2, 0);
          v12 = *(this + 1);
          *(v12 + 40) = v8 + 1;
          *(v12 + 96) = *(v12 + 72);
          *(v12 + 80) = *(v12 + 56);
          mlir::Lexer::lexToken((*(this + 1) + 8), &v22);
          v13 = *(this + 1);
          *(v13 + 56) = v22;
          *(v13 + 72) = v23;
LABEL_29:
          v14 = 1;
LABEL_32:
          v15 = 1;
          goto LABEL_33;
        }
      }

      *&v22 = v8;
      *(&v22 + 1) = v9;
      if (!llvm::StringRef::consumeInteger(&v22, 0xAu, a2) && !*(&v22 + 1))
      {
        v16 = *(a2 + 2);
        v17 = (*a2 + 8 * ((v16 - 1) >> 6));
        if (v16 < 0x41)
        {
          v17 = a2;
        }

        if ((*v17 >> (v16 - 1)))
        {
          llvm::APInt::zext(a2, v16 + 1, &v22);
          if (*(a2 + 2) >= 0x41u && *a2)
          {
            MEMORY[0x25F891010](*a2, 0x1000C8000313F17);
          }

          *a2 = v22;
          *(a2 + 2) = DWORD2(v22);
        }

        if (v3 == 24)
        {
          llvm::APInt::flipAllBits(a2);
          llvm::APInt::operator++(a2);
        }

        goto LABEL_29;
      }

      v20 = "integer value too large";
      v21 = 259;
      mlir::detail::Parser::emitError(this, v8, &v20, &v22);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    }

    v14 = 0;
    goto LABEL_32;
  }

  v14 = 0;
  v15 = 0;
LABEL_33:
  v18 = *MEMORY[0x277D85DE8];
  return v14 | (v15 << 8);
}

BOOL mlir::detail::Parser::parseFloatFromLiteral(uint64_t a1, llvm::APFloat::Storage *a2, _DWORD *a3, int a4, _DWORD *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a3 != 10)
  {
    if (*a3 == 9)
    {
      v19 = 0.0;
      if (!llvm::StringRef::getAsDouble((a3 + 2), &v19, 1))
      {
        v15 = v19;
        if (a4)
        {
          v15 = -v19;
        }

        v19 = v15;
        std::optional<llvm::APFloat>::emplace[abi:nn200100]<double,void>(a2, &v19);
        v14 = 1;
        llvm::APFloat::convert(a2, a5, 1, &v19);
        goto LABEL_15;
      }

      v10 = *(a3 + 1);
      v18 = 257;
      mlir::detail::Parser::emitError(a1, v10, v17, &v19);
      if (v19 != 0.0)
      {
        mlir::Diagnostic::operator<<<31ul>(v20, "floating point value too large");
      }
    }

    else
    {
      v13 = *(a3 + 1);
      v18 = 257;
      mlir::detail::Parser::emitError(a1, v13, v17, &v19);
      if (v19 != 0.0)
      {
        mlir::Diagnostic::operator<<<32ul>(v20, "expected floating point literal");
      }
    }

    v14 = (v20[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
LABEL_15:
    v16 = *MEMORY[0x277D85DE8];
    return v14;
  }

  v11 = *MEMORY[0x277D85DE8];

  return mlir::detail::Parser::parseFloatFromIntegerLiteral(a1, a2, a3, a4, a5);
}

llvm::APFloat *std::optional<llvm::APFloat>::emplace[abi:nn200100]<double,void>(llvm::APFloat::Storage *a1, double *a2)
{
  if (*(a1 + 24) == 1)
  {
    llvm::APFloat::Storage::~Storage(a1);
    *(a1 + 24) = 0;
  }

  result = llvm::APFloat::APFloat(a1, *a2);
  *(result + 24) = 1;
  return result;
}

BOOL mlir::detail::Parser::parseFloatFromIntegerLiteral(uint64_t a1, llvm::APFloat::Storage *a2, uint64_t a3, int a4, _DWORD *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  if (v8 < 2 || *(v7 + 1) != 120)
  {
    v20[0] = "unexpected decimal integer literal for a floating point value";
    v21 = 259;
    mlir::detail::Parser::emitError(a1, v7, v20, &v22);
    mlir::Diagnostic::attachNote(v23, 0, 0);
  }

  if (a4)
  {
    v20[0] = "hexadecimal float literal should not have a leading minus";
    v21 = 259;
    mlir::detail::Parser::emitError(a1, v7, v20, &v22);
    v9 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    goto LABEL_6;
  }

  v19 = 1;
  v18 = 0;
  v22 = v7;
  v23[0] = v8;
  llvm::StringRef::consumeInteger(&v22, 0, &v18);
  v14 = a5[3];
  v15 = v19;
  if (v19 > 0x40)
  {
    if (v15 - llvm::APInt::countLeadingZerosSlowCase(&v18) <= v14)
    {
      v16 = v18;
      goto LABEL_13;
    }
  }

  else if (64 - __clz(v18) <= v14)
  {
    v16 = &v18;
LABEL_13:
    LODWORD(v23[0]) = v14;
    llvm::APInt::initFromArray(&v22, v16);
    if (*(a2 + 24) == 1)
    {
      llvm::APFloat::Storage::~Storage(a2);
      *(a2 + 24) = 0;
    }

    llvm::APFloat::Storage::Storage<llvm::APInt const&>(a2, a5, &v22);
    *(a2 + 24) = 1;
    if (LODWORD(v23[0]) >= 0x41 && v22)
    {
      MEMORY[0x25F891010](v22, 0x1000C8000313F17);
    }

    v9 = 1;
    goto LABEL_19;
  }

  v17 = *(a3 + 8);
  v20[0] = "hexadecimal float constant out of range for type";
  v21 = 259;
  mlir::detail::Parser::emitError(a1, v17, v20, &v22);
  v9 = (v24 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
LABEL_19:
  if (v19 >= 0x41 && v18)
  {
    MEMORY[0x25F891010](v18, 0x1000C8000313F17);
  }

LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::detail::Parser::parseOptionalKeyword(mlir::detail::Parser *this, llvm::StringRef *a2)
{
  v4 = *(this + 1);
  v5 = *(v4 + 56);
  v6 = v5 == 3 || v5 == 12;
  if (v6 || (result = mlir::Token::isKeyword((v4 + 56))))
  {
    *a2 = *(v4 + 64);
    v7 = *(this + 1);
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v8 = *(this + 1);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  return result;
}

uint64_t mlir::detail::Parser::parseOptionalKeywordOrString(mlir::detail::Parser *a1, uint64_t a2)
{
  __src = 0;
  __len = 0;
  if (mlir::detail::Parser::parseOptionalKeyword(a1, &__src))
  {
    if (__src)
    {
      v4 = __len;
      if (__len >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (__len >= 0x17)
      {
        operator new();
      }

      HIBYTE(v7) = __len;
      if (__len)
      {
        memmove(&__dst, __src, __len);
      }

      *(&__dst + v4) = 0;
    }

    else
    {
      __dst = 0uLL;
      v7 = 0;
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = __dst;
    *(a2 + 16) = v7;
    return 1;
  }

  else
  {

    return mlir::detail::Parser::parseOptionalString(a1, a2);
  }
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 1) + 64);
  if ((mlir::detail::Parser::parseOptionalKeywordOrString(a1, a3) & 1) == 0)
  {
    v46[0] = "expected identifier key for 'resource' entry";
    v47 = 259;
    mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), v46, &v48);
    goto LABEL_18;
  }

  v9 = *(*(a1 + 1) + 104);
  v10 = *(v9 + 48);
  v46[0] = 0;
  v11 = llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(v10, *(v9 + 64), a2, v46);
  v13 = v46[0];
  v39 = v8;
  if ((v11 & 1) == 0)
  {
    *&v48 = v46[0];
    v14 = *(v9 + 56);
    v15 = *(v9 + 64);
    if (4 * v14 + 4 >= 3 * v15)
    {
      v15 *= 2;
    }

    else if (v15 + ~v14 - *(v9 + 60) > v15 >> 3)
    {
LABEL_5:
      *(v9 + 56) = v14 + 1;
      if (*v13 != -4096)
      {
        --*(v9 + 60);
      }

      *v13 = a2;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0x3800000000;
      goto LABEL_8;
    }

    llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(v9 + 48, v15);
    llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(*(v9 + 48), *(v9 + 64), a2, &v48);
    v14 = *(v9 + 56);
    v13 = v48;
    goto LABEL_5;
  }

LABEL_8:
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = llvm::xxh3_64bits(v17, v18, v12);
  v20 = llvm::StringMapImpl::LookupBucketFor((v13 + 8), v17, v18, v19);
  v21 = *(v13 + 8);
  v22 = v20;
  v23 = *(v21 + 8 * v20);
  if (v23 == -8)
  {
    --*(v13 + 24);
  }

  else if (v23)
  {
    goto LABEL_29;
  }

  v40 = a4;
  v24 = a2;
  buffer = llvm::allocate_buffer((v18 + 57), 8uLL);
  v26 = buffer;
  v27 = buffer + 56;
  if (v18)
  {
    memcpy(buffer + 56, v17, v18);
  }

  v27[v18] = 0;
  *v26 = v18;
  *(v26 + 40) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 8) = 0u;
  *(v26 + 5) = &mlir::detail::TypeIDResolver<void,void>::id;
  *(v21 + 8 * v22) = v26;
  ++*(v13 + 20);
  v28 = (*(v13 + 8) + 8 * llvm::StringMapImpl::RehashTable((v13 + 8), v22));
  a2 = v24;
  a4 = v40;
  while (1)
  {
    v23 = *v28;
    if (*v28 && v23 != -8)
    {
      break;
    }

    ++v28;
  }

LABEL_29:
  if ((*(v23 + 31) & 0x8000000000000000) == 0)
  {
    if (!*(v23 + 31))
    {
      goto LABEL_33;
    }

LABEL_43:
    std::string::operator=(a3, (v23 + 8));
    v34 = *(v23 + 48);
    *a4 = *(v23 + 32);
    *(a4 + 16) = v34;
    *(a4 + 24) = 1;
    goto LABEL_44;
  }

  if (*(v23 + 16))
  {
    goto LABEL_43;
  }

LABEL_33:
  v30 = *(a3 + 23);
  if (v30 >= 0)
  {
    v31 = a3;
  }

  else
  {
    v31 = *a3;
  }

  if (v30 >= 0)
  {
    v32 = *(a3 + 23);
  }

  else
  {
    v32 = *(a3 + 8);
  }

  (*(*a2 + 32))(&v43, a2, v31, v32);
  if (v45)
  {
    (*(*a2 + 40))(&v48, a2, &v43);
    if (*(v23 + 31) < 0)
    {
      operator delete(*(v23 + 8));
    }

    v33 = v48;
    *(v23 + 24) = v49;
    *(v23 + 8) = v33;
    *(v23 + 32) = v43;
    *(v23 + 48) = v44;
    goto LABEL_43;
  }

  v42 = 257;
  mlir::detail::Parser::emitError(a1, v39, v41, &v48);
  if (v48)
  {
    mlir::Diagnostic::operator<<<25ul>(&v48 + 8, "unknown 'resource' key '");
    if (v48)
    {
      v47 = 260;
      v46[0] = a3;
      mlir::Diagnostic::operator<<(&v48 + 8, v46);
      if (v48)
      {
        mlir::Diagnostic::operator<<<16ul>(&v48 + 8, "' for dialect '");
        if (v48)
        {
          v36 = a2[1];
          v38 = *(v36 + 8);
          v37 = *(v36 + 16);
          v47 = 261;
          v46[0] = v38;
          v46[1] = v37;
          mlir::Diagnostic::operator<<(&v48 + 8, v46);
          if (v48)
          {
            mlir::Diagnostic::operator<<<2ul>(&v48 + 8, "'");
          }
        }
      }
    }
  }

LABEL_18:
  *a4 = 0;
  *(a4 + 24) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v48);
LABEL_44:
  v35 = *MEMORY[0x277D85DE8];
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, mlir::Dialect *a2@<X1>, _BYTE *a3@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    __p = 0;
    v15 = 0;
    v16 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &__p, a3);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v11 = 257;
    mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), v10, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<10ul>(&v15, "dialect '");
      if (__p)
      {
        v7 = *(a2 + 1);
        v8 = *(a2 + 2);
        v13 = 261;
        v12[0] = v7;
        v12[1] = v8;
        mlir::Diagnostic::operator<<(&v15, v12);
        if (__p)
        {
          mlir::Diagnostic::operator<<<35ul>(&v15, "' does not expect resource handles");
        }
      }
    }

    *a3 = 0;
    a3[24] = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
  }

  v9 = *MEMORY[0x277D85DE8];
}

_BYTE *mlir::detail::Parser::codeCompleteOperationName(_BYTE *result, void *a2, size_t a3)
{
  if (a3)
  {
    v4 = result;
    result = memchr(a2, 46, a3);
    if (!result || result - a2 == -1)
    {
      v5 = *(**(*(v4 + 1) + 160) + 24);

      return v5();
    }
  }

  return result;
}

_BYTE *mlir::detail::Parser::codeCompleteDialectOrElidedOpName(_BYTE *result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 1);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v5 = *i;
    if (v5 <= 0xC)
    {
      if (v5 != 9)
      {
        if (v5 != 10)
        {
          return result;
        }

        break;
      }
    }

    else if (v5 != 32 && v5 != 13)
    {
      return result;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), &byte_25D0A27DF, 0);
  v7 = *(*(v2 + 1) + 168) + 16 * *(*(v2 + 1) + 176);
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);

  return mlir::detail::Parser::codeCompleteOperationName(v2, v8, v9);
}

void mlir::parseAsmSourceFile(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = *a3;
  v10 = (*(***a1 + 16))(**a1);
  v12 = mlir::FileLineColRange::get(v9, v10, v11, 0, 0);
  v14[0] = 0;
  v14[1] = 0;
  v14[2] = 0x1000000000;
  v14[3] = 0;
  v14[4] = 0;
  v14[5] = 0x1000000000;
  v14[6] = 0;
  v14[7] = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  mlir::detail::ParserState::ParserState(&v19, a1, a3, v14, a4, a5);
  v13 = *v19;
  LOBYTE(v21) = 0;
  LOBYTE(v22) = 0;
  v20[0] = *(**v12 + 32);
  memset(&v20[1], 0, 24);
  mlir::OpBuilder::create<mlir::ModuleOp,std::optional<llvm::StringRef> &>(v20, v12, &v21);
}

uint64_t anonymous namespace::OperationParser::parseOperation(_anonymous_namespace_::OperationParser *this)
{
  v132 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v101 = v103;
  v102 = 0x100000000;
  v78 = 0;
  if (*(v2 + 56) == 6)
  {
    p_EncodedSourceLocation = this;
    v128 = &v101;
    v129 = &v78;
    {
      v26 = 0;
      goto LABEL_130;
    }

    v2 = *(this + 1);
  }

  v76 = *(v2 + 56);
  v77 = *(v2 + 72);
  v4 = v76;
  if (v76 == 3 || mlir::Token::isKeyword(&v76))
  {
    v5 = v101;
    v6 = v102;
    v7 = *(v2 + 64);
    v8 = *(v2 + 72);
    v93 = v9;
    v94 = v10;
    if ((v10 & 1) == 0)
    {
      v27 = 0;
      goto LABEL_70;
    }

    v11 = v9;
    v12 = *(v9 + 8);
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    v126 = 0;
    if (*(v9 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v28 = *(*(v9 + 8) + 32);
      if (!v28)
      {
        v37 = v13;
        LOWORD(v83) = 257;
        mlir::detail::Parser::emitError(this, v7, &__p, &p_EncodedSourceLocation);
        if (p_EncodedSourceLocation)
        {
        }

        DialectNamespace = mlir::OperationName::getDialectNamespace(&v93);
        if (p_EncodedSourceLocation)
        {
          LOWORD(v106) = 261;
          v104.__r_.__value_.__r.__words[0] = DialectNamespace;
          v104.__r_.__value_.__l.__size_ = v39;
          mlir::Diagnostic::operator<<(&v128, &v104);
          if (p_EncodedSourceLocation)
          {
            mlir::Diagnostic::operator<<<28ul>(&v128, "' not found for custom op '");
            if (p_EncodedSourceLocation)
            {
              LOWORD(v106) = 261;
              v104.__r_.__value_.__r.__words[0] = v7;
              v104.__r_.__value_.__l.__size_ = v8;
              mlir::Diagnostic::operator<<(&v128, &v104);
              if (p_EncodedSourceLocation)
              {
                mlir::Diagnostic::operator<<<3ul>(&v128, "' ");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v104, &p_EncodedSourceLocation);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
        if (v8 != v14 || v8 && memcmp(v7, v37, v8))
        {
          if (v104.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<10ul>(&v104.__r_.__value_.__l.__size_, " (tried '");
            if (v104.__r_.__value_.__r.__words[0])
            {
              v130 = 261;
              p_EncodedSourceLocation = v37;
              v128 = v14;
              mlir::Diagnostic::operator<<(&v104.__r_.__value_.__l.__size_, &p_EncodedSourceLocation);
              if (v104.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<11ul>(&v104.__r_.__value_.__l.__size_, "' as well)");
              }
            }
          }
        }

        mlir::Diagnostic::attachNote(&v104.__r_.__value_.__l.__size_, 0, 0);
      }

      __s2 = v13;
      (*(*v28 + 64))(&v104);
      if ((v104.__r_.__value_.__s.__data_[16] & 1) == 0)
      {
        LOWORD(v83) = 257;
        mlir::detail::Parser::emitError(this, v7, &__p, &p_EncodedSourceLocation);
        if (p_EncodedSourceLocation)
        {
          mlir::Diagnostic::operator<<<12ul>(&v128, "custom op '");
          if (p_EncodedSourceLocation)
          {
            LOWORD(v106) = 261;
            v104.__r_.__value_.__r.__words[0] = v7;
            v104.__r_.__value_.__l.__size_ = v8;
            mlir::Diagnostic::operator<<(&v128, &v104);
            if (p_EncodedSourceLocation)
            {
              mlir::Diagnostic::operator<<<13ul>(&v128, "' is unknown");
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v104, &p_EncodedSourceLocation);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
        if (v8 != v14 || v8 && memcmp(v7, __s2, v8))
        {
          if (v104.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<10ul>(&v104.__r_.__value_.__l.__size_, " (tried '");
            if (v104.__r_.__value_.__r.__words[0])
            {
              v130 = 261;
              p_EncodedSourceLocation = __s2;
              v128 = v14;
              mlir::Diagnostic::operator<<(&v104.__r_.__value_.__l.__size_, &p_EncodedSourceLocation);
              if (v104.__r_.__value_.__r.__words[0])
              {
                mlir::Diagnostic::operator<<<11ul>(&v104.__r_.__value_.__l.__size_, "' as well)");
              }
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
        v27 = 0;
        goto LABEL_69;
      }

      v73 = v3;
      v15 = v14;
      v105 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v125);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::UniqueFunctionBase(v125, &v104);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(&v104);
      v25 = 0;
      v17 = 0;
    }

    else
    {
      v73 = v3;
      __s2 = v13;
      v15 = v14;
      (*(*v9 + 40))(&v104, v9);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v125);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::UniqueFunctionBase(v125, &v104);
      llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(&v104);
      v16 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID();
      v17 = (*(*v11 + 32))(v11, v16);
      v18 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID();
      v19 = mlir::detail::InterfaceMap::lookup((v11 + 4), v18);
      if (v19)
      {
        v20 = v19;
        v21 = (*(v19 + 24))();
        if (v22)
        {
          v23 = (*(v20 + 24))(v21);
          v25 = v24;
LABEL_22:
          llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(*(this + 1) + 168, v23, v25);
          llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(&v122, "MLIR Parser: custom op parser '%s'", *(v11[1] + 16));
          EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, v7);
          v104.__r_.__value_.__r.__words[0] = EncodedSourceLocation;
          v104.__r_.__value_.__l.__size_ = v11;
          v104.__r_.__value_.__r.__words[2] = &v106;
          v105 = 0x400000000;
          v107 = &v109;
          v108 = 0x400000000;
          v110[0] = &v111;
          v110[1] = 0x400000000;
          v112 = 4;
          v113 = v115;
          v114 = 0x100000000;
          v115[1] = &v116;
          v115[2] = 0x100000000;
          v118 = 0;
          v117 = 0;
          v119 = &mlir::detail::TypeIDResolver<void,void>::id;
          v120 = 0;
          v121 = 0;
          v29 = *(*(this + 1) + 152);
          if (v29)
          {
            llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(*v29 + 440, &v104.__r_.__value_.__r.__words[1]);
          }

          v90 = this;
          v91 = &v104;
          v80 = v7;
          v81 = this;
          v82 = 0;
          __p = &unk_286E80AB0;
          v83 = v5;
          v84 = v6;
          v85 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
          v86 = v125;
          v87 = v17;
          v88 = __s2;
          v89 = v15;
          if ((v126 & 2) != 0)
          {
            v30 = v125;
          }

          else
          {
            v30 = v125[0];
          }

          if ((*(v126 & 0xFFFFFFFFFFFFFFF8))(v30, &__p, &v104))
          {
            mlir::DictionaryAttr::findDuplicate(v110, (v112 & 4) != 0, &v97);
            v3 = v73;
            if ((v112 & 4) == 0)
            {
              v112 = 4;
            }

            if (v98)
            {
              v31 = (*(__p + 2))(&__p);
              v95[0] = "attribute '";
              v96 = 259;
              (*(__p + 3))(&p_EncodedSourceLocation, &__p, v31, v95);
              if (p_EncodedSourceLocation)
              {
                v33 = *(v97 + 16);
                v32 = *(v97 + 24);
                v100 = 261;
                v99[0] = v33;
                v99[1] = v32;
                mlir::Diagnostic::operator<<(&v128, v99);
                if (p_EncodedSourceLocation)
                {
                  mlir::Diagnostic::operator<<<46ul>(&v128, "' occurs more than once in the attribute list");
                }
              }

              v34 = v131;
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&p_EncodedSourceLocation);
              if (v34)
              {
                goto LABEL_36;
              }
            }

            if (v82)
            {
LABEL_36:
              v27 = 0;
            }

            else
            {
              v55 = v117;
              v99[0] = v117;
              v117 = 0;
              v56 = mlir::Operation::create(&v104);
              mlir::OpBuilder::insert((this + 384), v56);
              v95[0] = v56;
              v27 = 0;
              {
                if (v55)
                {
                  p_EncodedSourceLocation = &EncodedSourceLocation;
                  v128 = v99;
                  v129 = v95;
                  {
                    v27 = v95[0];
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                else
                {
                  v27 = v56;
                }
              }
            }
          }

          else
          {
            v27 = 0;
            v3 = v73;
          }

          mlir::OperationState::~OperationState(&v104);
          v122 = &unk_286E798B0;
          if (v123 != &v124)
          {
            free(v123);
          }

          --*(*(this + 1) + 176);
LABEL_69:
          llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(v125);
          goto LABEL_70;
        }
      }

      v25 = 0;
    }

    v23 = &byte_25D0A27DF;
    goto LABEL_22;
  }

  if (v4 == 2)
  {
    if (v77 && **(&v76 + 1) == 34)
    {
      mlir::Token::getStringValue(&v76, &v104);
      size = SHIBYTE(v104.__r_.__value_.__r.__words[2]);
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = &v104;
      }

      else
      {
        v36 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v104.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (v36->__r_.__value_.__s.__data_[size - 1] == 46)
        {
          mlir::detail::Parser::codeCompleteOperationName(this, v36, size - 1);
        }
      }

      else
      {
        (*(**(*(this + 1) + 160) + 16))(*(*(this + 1) + 160), &byte_25D0A27DF, 0);
      }

      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, v3);
    }

    goto LABEL_128;
  }

  if (v4 != 11)
  {
    p_EncodedSourceLocation = "expected operation name in quotes";
    v130 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &p_EncodedSourceLocation, &v104);
    goto LABEL_87;
  }

LABEL_70:
  if (!v27)
  {
LABEL_128:
    v47 = 0;
    goto LABEL_129;
  }

  if (!v102)
  {
    v43 = *(this + 1);
    v44 = v43[19];
    if (v44)
    {
      v46 = v43[11];
      v45 = v43[12];
      mlir::AsmParserState::finalizeOperationDefinition(v44, v27);
    }

    v47 = 1;
    goto LABEL_129;
  }

  v40 = *(v27 + 36);
  if (v40)
  {
    if (v78 == v40)
    {
      if (*(*(this + 1) + 152))
      {
        v104.__r_.__value_.__r.__words[0] = &v104.__r_.__value_.__r.__words[2];
        v104.__r_.__value_.__l.__size_ = 0x300000000;
        if (v102 <= 3)
        {
          v41 = v101;
          v42 = v101 + 32 * v102;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, &v104.__r_.__value_.__r.__words[2], v102, 16);
          if (!v102)
          {
            goto LABEL_112;
          }

          v41 = v101;
          v42 = v101 + 32 * v102;
        }

        v58 = 0;
        do
        {
          v59 = *(v41 + 3);
          v60 = v104.__r_.__value_.__r.__words[1];
          if (LODWORD(v104.__r_.__value_.__r.__words[1]) >= HIDWORD(v104.__r_.__value_.__r.__words[1]))
          {
            llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::push_back(&v104, v58, v59);
          }

          else
          {
            v61 = v104.__r_.__value_.__r.__words[0] + 16 * LODWORD(v104.__r_.__value_.__r.__words[1]);
            *v61 = v58;
            *(v61 + 8) = v59;
            LODWORD(v104.__r_.__value_.__r.__words[1]) = v60 + 1;
          }

          v58 += *(v41 + 4);
          v41 += 32;
        }

        while (v41 != v42);
LABEL_112:
        v62 = *(this + 1);
        v63 = v62[19];
        v65 = v62[11];
        v64 = v62[12];
        mlir::AsmParserState::finalizeOperationDefinition(v63, v27);
      }

      v57 = v101;
      __s2a = v101 + 32 * v102;
      v66 = 0;
      while (1)
      {
        v67 = *(v57 + 4);
        if (v67)
        {
          break;
        }

        v69 = v66;
LABEL_122:
        v57 += 32;
        v47 = 1;
        v66 = v69;
        if (v57 == __s2a)
        {
          goto LABEL_129;
        }
      }

      v68 = 0;
      while (1)
      {
        v104.__r_.__value_.__r.__words[0] = *(v57 + 3);
        *&v104.__r_.__value_.__r.__words[1] = *v57;
        LODWORD(v105) = v68;
        v69 = (v66 + 1);
        v70 = (v66 >= 6 ? v27 - 96 - 24 * (v66 - 5) : v27 - 16 * v69);
        {
          goto LABEL_128;
        }

        ++v68;
        LODWORD(v66) = v69;
        if (v67 == v68)
        {
          goto LABEL_122;
        }
      }
    }

    p_EncodedSourceLocation = "operation defines ";
    v130 = 259;
    mlir::detail::Parser::emitError(this, v3, &p_EncodedSourceLocation, &v104);
    if (v104.__r_.__value_.__r.__words[0])
    {
      v48 = *(v27 + 36);
      LODWORD(__p) = 5;
      v80 = v48;
      v49 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v105, &__p, 1);
      v50 = v105 + 24 * v106;
      v51 = *v49;
      *(v50 + 16) = *(v49 + 16);
      *v50 = v51;
      ++v106;
      if (v104.__r_.__value_.__r.__words[0])
      {
        mlir::Diagnostic::operator<<<27ul>(&v104.__r_.__value_.__l.__size_, " results but was provided ");
        if (v104.__r_.__value_.__r.__words[0])
        {
          LODWORD(__p) = 5;
          v80 = v78;
          v52 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v105, &__p, 1);
          v53 = v105 + 24 * v106;
          v54 = *v52;
          *(v53 + 16) = *(v52 + 16);
          *v53 = v54;
          ++v106;
          if (v104.__r_.__value_.__r.__words[0])
          {
            mlir::Diagnostic::operator<<<9ul>(&v104.__r_.__value_.__l.__size_, " to bind");
          }
        }
      }
    }
  }

  else
  {
    p_EncodedSourceLocation = "cannot name an operation with no results";
    v130 = 259;
    mlir::detail::Parser::emitError(this, v3, &p_EncodedSourceLocation, &v104);
  }

LABEL_87:
  v47 = v113 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v104);
LABEL_129:
  v26 = v47 & 1;
LABEL_130:
  if (v101 != v103)
  {
    free(v101);
  }

  v71 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this, int a2)
{
  v42[6] = *MEMORY[0x277D85DE8];
  v5 = (this + 208);
  v4 = *(this + 26);
  v39[0] = 0;
  v39[1] = 0;
  LODWORD(v40) = 0;
  v6 = *(this + 54);
  v7 = v39;
  if (v6 >= *(this + 55))
  {
    if (v4 <= v39 && v4 + 24 * v6 > v39)
    {
      v35 = v39 - v4;
      v4 = *v5;
      v7 = &v35[*v5];
    }

    else
    {
      v4 = *v5;
      v7 = v39;
    }
  }

  v8 = v4 + 24 * *(this + 54);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = *v7;
  *v7 = 0;
  *(v8 + 8) = *(v7 + 2);
  *(v7 + 2) = 0;
  v9 = *(v8 + 12);
  *(v8 + 12) = *(v7 + 3);
  *(v7 + 3) = v9;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(v7 + 4);
  *(v7 + 4) = v10;
  ++*(this + 54);
  MEMORY[0x25F891030](v39[0], 8);
  v39[0] = 0;
  v39[1] = 0;
  LODWORD(v40) = 0;
  v11 = *(this + 70);
  v12 = *(this + 34);
  v13 = v39;
  if (v11 >= *(this + 71))
  {
    if (v12 <= v39 && v12 + 24 * v11 > v39)
    {
      v36 = v39 - v12;
      llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(this + 272, v11 + 1);
      v12 = *(this + 34);
      v13 = &v36[v12];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(this + 272, v11 + 1);
      v12 = *(this + 34);
      v13 = v39;
    }
  }

  v14 = v12 + 24 * *(this + 70);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = *v13;
  *v13 = 0;
  *(v14 + 8) = *(v13 + 2);
  *(v13 + 2) = 0;
  v15 = *(v14 + 12);
  *(v14 + 12) = *(v13 + 3);
  *(v13 + 3) = v15;
  v16 = *(v14 + 16);
  *(v14 + 16) = *(v13 + 4);
  *(v13 + 4) = v16;
  ++*(this + 70);
  MEMORY[0x25F891030](v39[0], 8);
  if (a2)
  {
    v18 = (this + 16);
    v17 = *(this + 2);
    *v39 = 0u;
    v40 = 0x2800000000;
    v41[0] = v42;
    v41[1] = 0x200000000;
    v19 = *(this + 6);
    if (v19 >= *(this + 7))
    {
      if (v17 <= v39 && v17 + 88 * v19 > v39)
      {
        v38 = v39 - v17;
        v17 = *v18;
        v20 = &v38[*v18];
        goto LABEL_6;
      }

      v17 = *v18;
    }

    v20 = v39;
LABEL_6:
    v21 = v17 + 88 * *(this + 6);
    *v21 = *v20;
    *(v21 + 8) = *(v20 + 1);
    *v20 = 0;
    v20[1] = 0;
    *(v20 + 4) = 0;
    *(v21 + 24) = v21 + 40;
    v22 = v21 + 24;
    *(v22 + 8) = 0x200000000;
    if (*(v20 + 8))
    {
      llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(v22, (v20 + 3));
    }

    ++*(this + 6);
    llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(v41);
    if (HIDWORD(v39[1]) && LODWORD(v39[1]))
    {
      v23 = 0;
      v24 = 8 * LODWORD(v39[1]);
      do
      {
        v25 = *(v39[0] + v23);
        if (v25 != -8 && v25 != 0)
        {
        }

        v23 += 8;
      }

      while (v24 != v23);
    }

    free(v39[0]);
  }

  v27 = *(this + 2) + 88 * *(this + 6);
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  v29 = (v27 - 64);
  v28 = *(v27 - 64);
  HIDWORD(v40) = 8;
  v30 = *(v27 - 56);
  v31 = v39;
  if (v30 >= *(v27 - 52))
  {
    if (v28 <= v39 && v28 + 24 * v30 > v39)
    {
      v37 = v39 - v28;
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(v27 - 64, v30 + 1);
      v28 = *v29;
      v31 = &v37[*v29];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(v27 - 64, v30 + 1);
      v28 = *v29;
      v31 = v39;
    }
  }

  v32 = v28 + 24 * *(v27 - 56);
  *v32 = *v31;
  *(v32 + 8) = *(v31 + 1);
  *v31 = 0;
  v31[1] = 0;
  *(v31 + 4) = 0;
  ++*(v27 - 56);
  result = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v39);
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = 24 * v11;
      v13 = v5 - 24;
      do
      {
        MEMORY[0x25F891030](*&v13[v12], 8);
        v12 -= 24;
      }

      while (v12);
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

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,false>::grow(uint64_t a1, unint64_t a2)
{
  v15 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v15);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = 0;
      v8[1] = 0;
      *(v8 + 4) = 0;
      *v8 = *v5;
      *v5 = 0;
      *(v8 + 2) = *(v5 + 2);
      *(v5 + 2) = 0;
      v9 = *(v8 + 3);
      *(v8 + 3) = *(v5 + 3);
      *(v5 + 3) = v9;
      v10 = *(v8 + 4);
      *(v8 + 4) = *(v5 + 4);
      *(v5 + 4) = v10;
      v8 += 3;
      v5 += 24;
    }

    while (v5 != v7);
    v11 = *(a1 + 8);
    v5 = *a1;
    if (v11)
    {
      v12 = 24 * v11;
      v13 = v5 - 24;
      do
      {
        MEMORY[0x25F891030](*&v13[v12], 8);
        v12 -= 24;
      }

      while (v12);
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

void llvm::SmallVectorTemplateBase<anonymous namespace::OperationParser::IsolatedSSANameScope,false>::grow(uint64_t a1, unint64_t a2)
{
  v21 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 88, &v21);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[11 * v7];
    v9 = v4 + 24;
    v10 = (v6 + 3);
    do
    {
      v11 = v10 - 24;
      *(v9 - 3) = *(v10 - 24);
      *(v9 - 1) = *(v10 - 16);
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *v9 = v9 + 2;
      v9[1] = 0x200000000;
      if (*(v10 + 8))
      {
        v9 = llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(v9, v10);
      }

      v9 += 11;
      v10 += 88;
    }

    while ((v11 + 88) != v8);
    v6 = *a1;
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = &v6[11 * v12];
      do
      {
        v14 = v13;
        v13 -= 11;
        llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector((v14 - 8));
        if (*(v14 - 19))
        {
          v15 = *(v14 - 20);
          if (v15)
          {
            v16 = 0;
            v17 = 8 * v15;
            do
            {
              v18 = *(*v13 + v16);
              if (v18 != -8 && v18 != 0)
              {
              }

              v16 += 8;
            }

            while (v17 != v16);
          }
        }

        free(*v13);
      }

      while (v13 != v6);
      v6 = *a1;
    }
  }

  v20 = v21;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v20;
}

uint64_t llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = a2 + 16;
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = -24 * v7;
        v9 = &v6[3 * v7 - 3];
        do
        {
          v9 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v9) - 24;
          v8 += 24;
        }

        while (v8);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = (a2 + 8);
      *(a1 + 8) = *(a2 + 8);
      *a2 = v5;
      *(a2 + 12) = 0;
LABEL_10:
      *v10 = 0;
      return a1;
    }

    v10 = (a2 + 8);
    v12 = *(a2 + 8);
    v13 = *(a1 + 8);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(v4, &v4[3 * v12], v16);
        v16 = *a1;
        LODWORD(v13) = *(a1 + 8);
      }

      else
      {
        v17 = *a1;
      }

        ;
      }

      *(a1 + 8) = v12;
      v27 = *(a2 + 8);
      if (v27)
      {
        v28 = *a2;
        v29 = -24 * v27;
        v30 = &v28[3 * v27 - 3];
        do
        {
          v30 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v30) - 24;
          v29 += 24;
        }

        while (v29);
      }

      goto LABEL_10;
    }

    if (*(a1 + 12) >= v12)
    {
      if (v13)
      {
        std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(v4, &v4[3 * v13], *a1);
LABEL_23:
        v18 = *a2;
        v19 = *(a2 + 8);
        if (v13 != v19)
        {
          v20 = &v18[3 * v19];
          v21 = *a1 + 24 * v13;
          v22 = &v18[3 * v13];
          do
          {
            *v21 = *v22;
            *(v21 + 8) = *(v22 + 1);
            *v22 = 0;
            v22[1] = 0;
            *(v22 + 4) = 0;
            v21 += 24;
            v22 += 3;
          }

          while (v22 != v20);
          v18 = *a2;
        }

        *(a1 + 8) = v12;
        v23 = *v10;
        if (v23)
        {
          v24 = -24 * v23;
          v25 = &v18[3 * v23 - 3];
          do
          {
            v25 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v25) - 24;
            v24 += 24;
          }

          while (v24);
        }

        goto LABEL_10;
      }
    }

    else
    {
      if (v13)
      {
        v14 = -24 * v13;
        v15 = *a1 + 24 * v13 - 24;
        do
        {
          v15 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v15) - 24;
          v14 += 24;
        }

        while (v14);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(a1, v12);
    }

    v13 = 0;
    goto LABEL_23;
  }

  return a1;
}