void *llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + 32 * v3);
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + 32 * v3);
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>,mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *,llvm::DenseMapInfo<mlir::AsmDialectResourceHandle,void>,llvm::detail::DenseMapPair<mlir::AsmDialectResourceHandle,mlir::bytecode::detail::DialectResourceNumbering *>>::LookupBucketFor<mlir::AsmDialectResourceHandle>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = 0x3800000000;
  return v4 + 1;
}

void mlir::detail::Parser::parseResourceHandle(mlir::detail::Parser *this@<X0>, mlir::Dialect *a2@<X1>, _BYTE *a3@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v27 = 0;
    v28 = 0;
    mlir::detail::Parser::parseResourceHandle(this, v6, &v27, a3);
  }

  else
  {
    v23 = 257;
    mlir::detail::Parser::emitError(this, v22, &v27);
    if (!v27)
    {
      goto LABEL_10;
    }

    LODWORD(v24) = 3;
    *(&v24 + 1) = "dialect '";
    v25 = 9;
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v29 + 24 * v30;
    v8 = v24;
    *(v7 + 2) = v25;
    *v7 = v8;
    ++v30;
    if (v27 && (v9 = *(a2 + 1), v10 = *(a2 + 2), v26 = 261, *&v24 = v9, *(&v24 + 1) = v10, mlir::Diagnostic::operator<<(&v28, &v24), v27))
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = "' does not expect resource handles";
      v25 = 34;
      if (v30 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v30 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v29 + 24 * v30;
      v12 = v24;
      *(v11 + 2) = v25;
      *v11 = v12;
      ++v30;
      v13 = v27;
      *a3 = 0;
      a3[24] = 0;
      if (v13)
      {
        mlir::InFlightDiagnostic::report(&v27);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v38 == 1)
    {
      if (v37 != &v38)
      {
        free(v37);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v36;
        v16 = __p;
        if (v36 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v36 = v14;
        operator delete(v16);
      }

      v17 = v33;
      if (v33)
      {
        v18 = v34;
        v19 = v33;
        if (v34 != v33)
        {
          do
          {
            v21 = *--v18;
            v20 = v21;
            *v18 = 0;
            if (v21)
            {
              MEMORY[0x259C63150](v20, 0x1000C8077774924);
            }
          }

          while (v18 != v17);
          v19 = v33;
        }

        v34 = v17;
        operator delete(v19);
      }

      if (v29 != &v32)
      {
        free(v29);
      }
    }
  }
}

uint64_t mlir::detail::Parser::codeCompleteOperationName(uint64_t a1, void *__s, size_t a3)
{
  if (a3)
  {
    v6 = memchr(__s, 46, a3);
    if (!v6 || v6 - __s == -1)
    {
      (*(**(*(a1 + 8) + 160) + 24))(*(*(a1 + 8) + 160), __s, a3);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteDialectOrElidedOpName(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  for (i = (a2 - 1); i > *(v3 + 24); --i)
  {
    v6 = *i;
    if (v6 > 0xC)
    {
      if (v6 != 32 && v6 != 13)
      {
        return 0;
      }
    }

    else if (v6 != 9)
    {
      if (v6 != 10)
      {
        return 0;
      }

      break;
    }
  }

  (*(**(v3 + 160) + 16))(*(v3 + 160), "", 0);
  v7 = *(a1 + 8);
  v8 = *(v7 + 168) + 16 * *(v7 + 176);
  v9 = *(v8 - 8);
  if (v9)
  {
    v10 = *(v8 - 16);
    v11 = memchr(v10, 46, *(v8 - 8));
    if (v11)
    {
      v12 = v11 - v10 == -1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      (*(**(v7 + 160) + 24))(*(v7 + 160), v10, v9);
    }
  }

  return 0;
}

uint64_t mlir::detail::Parser::codeCompleteStringDialectOrOperationName(uint64_t a1, char *__s, uint64_t a3)
{
  if (a3)
  {
    if (__s[a3 - 1] == 46 && (v3 = a3 - 1, a3 != 1) && ((v6 = memchr(__s, 46, a3 - 1)) == 0 || v6 - __s == -1))
    {
      (*(**(*(a1 + 8) + 160) + 24))(*(*(a1 + 8) + 160), __s, v3);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(**(*(a1 + 8) + 160) + 16))(*(*(a1 + 8) + 160), "");
    return 0;
  }
}

uint64_t mlir::detail::Parser::codeCompleteDialectSymbol(uint64_t a1)
{
  (*(**(*(a1 + 8) + 160) + 64))(*(*(a1 + 8) + 160));
  return 0;
}

{
  (*(**(*(a1 + 8) + 160) + 80))(*(*(a1 + 8) + 160));
  return 0;
}

void mlir::parseAsmSourceFile(uint64_t **this, const llvm::SourceMgr *a2, uint64_t ***a3, const mlir::ParserConfig *a4, mlir::AsmParserState *a5, mlir::AsmParserCodeCompleteContext *a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *a3;
  v11 = (*(***this + 16))(**this);
  v13 = mlir::FileLineColLoc::get(v10, v11, v12, 0, 0);
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
  v19 = a3;
  mlir::Lexer::Lexer(v20, this, *a3, a5);
  mlir::Lexer::lexToken(v20, v21);
  v21[6] = 1;
  v22 = "";
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v24 = v14;
  v27 = 0;
  v28 = v30;
  v29 = 0;
  v30[0] = a4;
  v30[1] = a5;
  v31[0] = "builtin";
  v31[1] = 7;
  v30[2] = v31;
  v30[3] = 0x300000001;
  LOBYTE(v32) = 0;
  LOBYTE(v33) = 0;
  mlir::ModuleOp::create(v13, &v32);
}

uint64_t anonymous namespace::OperationParser::parseOperation(int32x2_t *this)
{
  v227 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*&this[1] + 56));
  v3 = v193;
  v191 = v193;
  v192 = 0x100000000;
  v169 = 0;
  v4 = this[1];
  if (*(*&v4 + 56) == 6)
  {
    *&v215 = this;
    *(&v215 + 1) = &v191;
    v216 = &v169;
    {
      goto LABEL_276;
    }

    while (1)
    {
      v5 = this[1];
      if (*(*&v5 + 56) != 16)
      {
        break;
      }

      *(*&v5 + 80) = *(*&v5 + 56);
      *(*&v5 + 96) = *(*&v5 + 72);
      mlir::Lexer::lexToken((*&this[1] + 8), &v194);
      *(*&this[1] + 56) = v194;
      {
        goto LABEL_276;
      }
    }

    v194.__r_.__value_.__r.__words[0] = "expected '=' after SSA name";
    LOWORD(v196) = 259;
    if ((mlir::detail::Parser::parseToken(this, 18, &v194) & 1) == 0)
    {
      goto LABEL_276;
    }

    v4 = this[1];
  }

  v167 = *(*&v4 + 56);
  v168 = *(*&v4 + 72);
  if (v167 != 3)
  {
    if (!mlir::Token::isKeyword(&v167))
    {
      if (v167 != 11)
      {
        if (!mlir::Token::isCodeCompletionFor(&v167, 11))
        {
          if (v167 == 2)
          {
            v38 = mlir::detail::Parser::codeCompleteDialectOrElidedOpName(this, Loc);
          }

          else
          {
            *&v215 = "expected operation name in quotes";
            LOWORD(v218) = 259;
            mlir::detail::Parser::emitWrongTokenError(this, &v215, &v194);
            v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v194);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v194);
          }

          goto LABEL_277;
        }

        v34 = &v194;
        mlir::Token::getStringValue(&v167, &v194);
        size = SHIBYTE(v194.__r_.__value_.__r.__words[2]);
        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v194.__r_.__value_.__r.__words[0];
        }

        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v194.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          if (v34->__r_.__value_.__s.__data_[size - 1] == 46)
          {
            v36 = size - 1;
            if (size != 1)
            {
              v37 = memchr(v34, 46, size - 1);
              if (!v37 || v37 - v34 == -1)
              {
                (*(**(*&this[1] + 160) + 24))(*(*&this[1] + 160), v34, v36);
              }
            }
          }
        }

        else
        {
          (*(**(*&this[1] + 160) + 16))(*(*&this[1] + 160), "", 0);
        }

        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }

LABEL_276:
        v38 = 0;
        goto LABEL_277;
      }

      goto LABEL_269;
    }

    v4 = this[1];
  }

  v6 = v191;
  v7 = v192;
  v8 = mlir::Token::getLoc((*&v4 + 56));
  v9 = this[1];
  v11 = *(*&v9 + 64);
  v10 = *(*&v9 + 72);
  v182 = v12;
  v183 = v13;
  if ((v13 & 1) == 0)
  {
    v29 = 0;
    goto LABEL_269;
  }

  v194.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __s2 = mlir::StringAttr::getValue(&v194);
  v15 = v14;
  v214 = 0;
  v16 = v182;
  if (*(v182 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v194.__r_.__value_.__r.__words[0] = *(v182 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v194);
    if (!ReferencedDialect)
    {
      LOWORD(v173) = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
      mlir::emitError(EncodedSourceLocation, &v170, &v215);
      if (*(*&this[1] + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v215);
      }

      if (v215)
      {
        LODWORD(v194.__r_.__value_.__l.__data_) = 3;
        v194.__r_.__value_.__r.__words[2] = 9;
        if (v218 >= v219)
        {
          if (v217 > &v194 || v217 + 24 * v218 <= &v194)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v217 + 24 * v218;
        v41 = *&v194.__r_.__value_.__l.__data_;
        *(v40 + 2) = *(&v194.__r_.__value_.__l + 2);
        *v40 = v41;
        ++v218;
      }

      DialectNamespace = mlir::OperationName::getDialectNamespace(&v182);
      if (v215)
      {
        LOWORD(v196) = 261;
        v194.__r_.__value_.__r.__words[0] = DialectNamespace;
        v194.__r_.__value_.__l.__size_ = v43;
        mlir::Diagnostic::operator<<(&v215 + 8, &v194);
        if (v215)
        {
          LODWORD(v194.__r_.__value_.__l.__data_) = 3;
          v194.__r_.__value_.__l.__size_ = "' not found for custom op '";
          v194.__r_.__value_.__r.__words[2] = 27;
          if (v218 >= v219)
          {
            if (v217 > &v194 || v217 + 24 * v218 <= &v194)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v44 = v217 + 24 * v218;
          v45 = *&v194.__r_.__value_.__l.__data_;
          *(v44 + 2) = *(&v194.__r_.__value_.__l + 2);
          *v44 = v45;
          ++v218;
          if (v215)
          {
            LOWORD(v196) = 261;
            v194.__r_.__value_.__r.__words[0] = v11;
            v194.__r_.__value_.__l.__size_ = v10;
            mlir::Diagnostic::operator<<(&v215 + 8, &v194);
            if (v215)
            {
              LODWORD(v194.__r_.__value_.__l.__data_) = 3;
              v194.__r_.__value_.__l.__size_ = "' ";
              v194.__r_.__value_.__r.__words[2] = 2;
              if (v218 >= v219)
              {
                if (v217 > &v194 || v217 + 24 * v218 <= &v194)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v46 = v217 + 24 * v218;
              v47 = *&v194.__r_.__value_.__l.__data_;
              *(v46 + 2) = *(&v194.__r_.__value_.__l + 2);
              *v46 = v47;
              ++v218;
            }
          }
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v194, &v215);
      if (v215)
      {
        mlir::InFlightDiagnostic::report(&v215);
      }

      if (v226 == 1)
      {
        if (v225 != &v226)
        {
          free(v225);
        }

        v48 = __p;
        if (__p)
        {
          v49 = v224;
          v50 = __p;
          if (v224 != __p)
          {
            do
            {
              v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
            }

            while (v49 != v48);
            v50 = __p;
          }

          v224 = v48;
          operator delete(v50);
        }

        v51 = v221;
        if (v221)
        {
          v52 = v222;
          v53 = v221;
          if (v222 != v221)
          {
            do
            {
              v55 = *--v52;
              v54 = v55;
              *v52 = 0;
              if (v55)
              {
                MEMORY[0x259C63150](v54, 0x1000C8077774924);
              }
            }

            while (v52 != v51);
            v53 = v221;
          }

          v222 = v51;
          operator delete(v53);
        }

        if (v217 != v220)
        {
          free(v217);
        }
      }

      if ((v10 != v15 || v10 && memcmp(v11, __s2, v10)) && v194.__r_.__value_.__r.__words[0])
      {
        LODWORD(v215) = 3;
        *(&v215 + 1) = " (tried '";
        v216 = 9;
        if (v196 >= v197)
        {
          if (v195 > &v215 || v195 + 24 * v196 <= &v215)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v69 = v195 + 24 * v196;
        v70 = v215;
        *(v69 + 2) = v216;
        *v69 = v70;
        ++v196;
        if (v194.__r_.__value_.__r.__words[0])
        {
          LOWORD(v218) = 261;
          *&v215 = __s2;
          *(&v215 + 1) = v15;
          mlir::Diagnostic::operator<<(&v194.__r_.__value_.__l.__size_, &v215);
          if (v194.__r_.__value_.__r.__words[0])
          {
            LODWORD(v215) = 3;
            *(&v215 + 1) = "' as well)";
            v216 = 10;
            if (v196 >= v197)
            {
              if (v195 > &v215 || v195 + 24 * v196 <= &v215)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v71 = v195 + 24 * v196;
            v72 = v215;
            *(v71 + 2) = v216;
            *v71 = v72;
            ++v196;
          }
        }
      }

      mlir::Diagnostic::attachNote();
    }

    (*(*ReferencedDialect + 64))(&v194);
    if (v194.__r_.__value_.__s.__data_[16])
    {
      v31 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v195 = llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::CallbacksHolder<llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>,void>::Callbacks + 2;
      v32 = v214;
      if (v214 >= 8)
      {
        if ((v214 & 4) != 0)
        {
          if ((v214 & 2) != 0)
          {
            v33 = v212;
          }

          else
          {
            v33 = v212[0];
          }

          (*((v214 & 0xFFFFFFFFFFFFFFF8) + 16))(v33);
        }

        if ((v32 & 2) == 0)
        {
          llvm::deallocate_buffer(v212[0], v212[1]);
        }

        v31 = v195;
      }

      v214 = v31;
      if (v31 >= 8)
      {
        if ((v31 & 2) != 0 && (v31 & 4) != 0)
        {
          (*((v31 & 0xFFFFFFFFFFFFFFF8) + 8))();
          (*((v214 & 0xFFFFFFFFFFFFFFF8) + 16))(&v194, v86);
        }

        else
        {
          *v212 = *&v194.__r_.__value_.__l.__data_;
          v213 = v194.__r_.__value_.__r.__words[2];
        }
      }

      v87 = 0;
      v19 = 0;
LABEL_206:
      v88 = "";
      v89 = this[1];
      v90 = *(*&v89 + 176);
      if (v90 >= *(*&v89 + 180))
      {
        goto LABEL_237;
      }

      goto LABEL_207;
    }

    LOWORD(v173) = 257;
    v56 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
    mlir::emitError(v56, &v170, &v215);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v215);
    }

    if (v215)
    {
      LODWORD(v194.__r_.__value_.__l.__data_) = 3;
      v194.__r_.__value_.__l.__size_ = "custom op '";
      v194.__r_.__value_.__r.__words[2] = 11;
      if (v218 >= v219)
      {
        if (v217 > &v194 || v217 + 24 * v218 <= &v194)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v57 = v217 + 24 * v218;
      v58 = *&v194.__r_.__value_.__l.__data_;
      *(v57 + 2) = *(&v194.__r_.__value_.__l + 2);
      *v57 = v58;
      ++v218;
      if (v215)
      {
        LOWORD(v196) = 261;
        v194.__r_.__value_.__r.__words[0] = v11;
        v194.__r_.__value_.__l.__size_ = v10;
        mlir::Diagnostic::operator<<(&v215 + 8, &v194);
        if (v215)
        {
          LODWORD(v194.__r_.__value_.__l.__data_) = 3;
          v194.__r_.__value_.__l.__size_ = "' is unknown";
          v194.__r_.__value_.__r.__words[2] = 12;
          if (v218 >= v219)
          {
            if (v217 > &v194 || v217 + 24 * v218 <= &v194)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v59 = v217 + 24 * v218;
          v60 = *&v194.__r_.__value_.__l.__data_;
          *(v59 + 2) = *(&v194.__r_.__value_.__l + 2);
          *v59 = v60;
          ++v218;
        }
      }
    }

    mlir::InFlightDiagnostic::InFlightDiagnostic(&v194, &v215);
    if (v215)
    {
      mlir::InFlightDiagnostic::report(&v215);
    }

    if (v226 == 1)
    {
      if (v225 != &v226)
      {
        free(v225);
      }

      v61 = __p;
      if (__p)
      {
        v62 = v224;
        v63 = __p;
        if (v224 != __p)
        {
          do
          {
            v62 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v62 - 1);
          }

          while (v62 != v61);
          v63 = __p;
        }

        v224 = v61;
        operator delete(v63);
      }

      v64 = v221;
      if (v221)
      {
        v65 = v222;
        v66 = v221;
        if (v222 != v221)
        {
          do
          {
            v68 = *--v65;
            v67 = v68;
            *v65 = 0;
            if (v68)
            {
              MEMORY[0x259C63150](v67, 0x1000C8077774924);
            }
          }

          while (v65 != v64);
          v66 = v221;
        }

        v222 = v64;
        operator delete(v66);
      }

      if (v217 != v220)
      {
        free(v217);
      }
    }

    if (v10 != v15 || v10 && memcmp(v11, __s2, v10))
    {
      if (!v194.__r_.__value_.__r.__words[0])
      {
        goto LABEL_153;
      }

      LODWORD(v215) = 3;
      *(&v215 + 1) = " (tried '";
      v216 = 9;
      if (v196 >= v197)
      {
        if (v195 > &v215 || v195 + 24 * v196 <= &v215)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v73 = v195 + 24 * v196;
      v74 = v215;
      *(v73 + 2) = v216;
      *v73 = v74;
      ++v196;
      if (!v194.__r_.__value_.__r.__words[0] || (LOWORD(v218) = 261, *&v215 = __s2, *(&v215 + 1) = v15, mlir::Diagnostic::operator<<(&v194.__r_.__value_.__l.__size_, &v215), !v194.__r_.__value_.__r.__words[0]))
      {
LABEL_153:
        if (v205[0] == 1)
        {
          if (v204 != v205)
          {
            free(v204);
          }

          v77 = v202;
          if (v202)
          {
            v78 = v203;
            v79 = v202;
            if (v203 != v202)
            {
              do
              {
                v78 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v78 - 1);
              }

              while (v78 != v77);
              v79 = v202;
            }

            v203 = v77;
            operator delete(v79);
          }

          v80 = v200;
          if (v200)
          {
            v81 = v201;
            v82 = v200;
            if (v201 != v200)
            {
              do
              {
                v84 = *--v81;
                v83 = v84;
                *v81 = 0;
                if (v84)
                {
                  MEMORY[0x259C63150](v83, 0x1000C8077774924);
                }
              }

              while (v81 != v80);
              v82 = v200;
            }

            v201 = v80;
            operator delete(v82);
          }

          if (v195 != v198)
          {
            free(v195);
          }
        }

        v29 = 0;
        v85 = v214;
        if (v214 >= 8)
        {
          goto LABEL_262;
        }

        goto LABEL_269;
      }

      LODWORD(v215) = 3;
      *(&v215 + 1) = "' as well)";
      v216 = 10;
      if (v196 >= v197)
      {
        if (v195 > &v215 || v195 + 24 * v196 <= &v215)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v75 = v195 + 24 * v196;
      v76 = v215;
      *(v75 + 2) = v216;
      *v75 = v76;
      ++v196;
    }

    if (v194.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v194);
    }

    goto LABEL_153;
  }

  (*(*v182 + 40))(&v194, v182);
  v17 = v214;
  if (v214 >= 8)
  {
    if ((v214 & 4) != 0)
    {
      if ((v214 & 2) != 0)
      {
        v18 = v212;
      }

      else
      {
        v18 = v212[0];
      }

      (*((v214 & 0xFFFFFFFFFFFFFFF8) + 16))(v18);
    }

    if ((v17 & 2) == 0)
    {
      llvm::deallocate_buffer(v212[0], v212[1]);
    }
  }

  v214 = v195;
  if (v195 >= 8)
  {
    if ((v195 & 2) != 0 && (v195 & 4) != 0)
    {
      (*((v195 & 0xFFFFFFFFFFFFFFF8) + 8))(v212, &v194);
      (*((v214 & 0xFFFFFFFFFFFFFFF8) + 16))(&v194);
      {
        goto LABEL_26;
      }

      goto LABEL_120;
    }

    *v212 = *&v194.__r_.__value_.__l.__data_;
    v213 = v194.__r_.__value_.__r.__words[2];
  }

  {
    goto LABEL_26;
  }

LABEL_120:
LABEL_26:
  v19 = (*(*v16 + 32))(v16, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id);
  {
    v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
    v21 = *(v16 + 32);
    v22 = *(v16 + 40);
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_205:
    v87 = 0;
    goto LABEL_206;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id;
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v22)
  {
    goto LABEL_205;
  }

LABEL_28:
  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 == &v21[2 * v22])
  {
    goto LABEL_205;
  }

  if (*v23 != v20)
  {
    goto LABEL_205;
  }

  v110 = v23[1];
  if (!v110)
  {
    goto LABEL_205;
  }

  v111 = (*(v110 + 24))();
  if (!v87)
  {
    goto LABEL_206;
  }

  v88 = (*(v110 + 24))(v111);
  v89 = this[1];
  v90 = *(*&v89 + 176);
  if (v90 >= *(*&v89 + 180))
  {
LABEL_237:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_207:
  v91 = (*(*&v89 + 168) + 16 * v90);
  *v91 = v88;
  v91[1] = v87;
  ++*(*&v89 + 176);
  v194.__r_.__value_.__r.__words[0] = *(v182 + 8);
  Value = mlir::StringAttr::getValue(&v194);
  llvm::PrettyStackTraceFormat::PrettyStackTraceFormat(v209, "MLIR Parser: custom op parser '%s'", Value);
  v181 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, v8);
  v93.n128_f64[0] = mlir::OperationState::OperationState(&v194, v181, v182);
  v94 = *(*&this[1] + 152);
  if (v94)
  {
    mlir::AsmParserState::startOperationDefinition(v94, &v194.__r_.__value_.__r.__words[1]);
  }

  *(&v170 + 1) = v8;
  v171 = this;
  v172 = 0;
  *&v170 = &unk_286894168;
  v173 = v6;
  v174 = v7;
  v175 = llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>;
  v176 = v212;
  v177 = v19;
  v178 = __s2;
  v179 = v15;
  v180 = this;
  if ((v214 & 2) != 0)
  {
    v95 = v212;
  }

  else
  {
    v95 = v212[0];
  }

  if (((*(v214 & 0xFFFFFFFFFFFFFFF8))(v95, &v170, &v194, v93) & 1) == 0)
  {
    goto LABEL_244;
  }

  mlir::NamedAttrList::findDuplicate(&v199, v187);
  if (v187[16])
  {
    v96 = (*(v170 + 16))(&v170);
    v185[0] = "attribute '";
    v186 = 259;
    (*(v170 + 24))(&v215, &v170, v96, v185);
    Name = mlir::NamedAttribute::getName(v187);
    v97 = mlir::StringAttr::getValue(&Name);
    if (v215)
    {
      v190 = 261;
      *&v188 = v97;
      *(&v188 + 1) = v98;
      mlir::Diagnostic::operator<<(&v215 + 8, &v188);
      if (v215)
      {
        LODWORD(v188) = 3;
        *(&v188 + 1) = "' occurs more than once in the attribute list";
        v189 = 45;
        if (v218 >= v219)
        {
          if (v217 > &v188 || v217 + 24 * v218 <= &v188)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v99 = v217 + 24 * v218;
        v100 = v188;
        *(v99 + 2) = v189;
        *v99 = v100;
        ++v218;
      }
    }

    v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v215);
    if (v215)
    {
      mlir::InFlightDiagnostic::report(&v215);
    }

    if (v226 == 1)
    {
      if (v225 != &v226)
      {
        free(v225);
      }

      v102 = __p;
      if (__p)
      {
        v103 = v224;
        v104 = __p;
        if (v224 != __p)
        {
          do
          {
            v103 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v103 - 1);
          }

          while (v103 != v102);
          v104 = __p;
        }

        v224 = v102;
        operator delete(v104);
      }

      v105 = v221;
      if (v221)
      {
        v106 = v222;
        v107 = v221;
        if (v222 != v221)
        {
          do
          {
            v109 = *--v106;
            v108 = v109;
            *v106 = 0;
            if (v109)
            {
              MEMORY[0x259C63150](v108, 0x1000C8077774924);
            }
          }

          while (v106 != v105);
          v107 = v221;
        }

        v222 = v105;
        operator delete(v107);
      }

      if (v217 != v220)
      {
        free(v217);
      }
    }

    if (!v101)
    {
      goto LABEL_244;
    }
  }

  if ((v172 & 1) == 0)
  {
    v149 = v208;
    *&v188 = v208;
    v208 = 0;
    v150 = mlir::OpBuilder::create(&this[48], &v194);
    v185[0] = v150;
    v29 = 0;
    {
      if (v149)
      {
        *&v215 = &v181;
        *(&v215 + 1) = &v188;
        v216 = v185;
        {
          v29 = v185[0];
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = v150;
      }
    }
  }

  else
  {
LABEL_244:
    v29 = 0;
  }

  mlir::OpAsmParser::~OpAsmParser(&v170);
  *&v215 = &v216;
  *(&v215 + 1) = 0x400000000;
  if (v207 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v207)
  {
    v112 = v206;
    v113 = &v206[v207];
    do
    {
      v114 = *v112;
      if (*v112)
      {
        for (i = *(v114 + 8); i != v114; i = *(i + 8))
        {
          if (i)
          {
            v116 = (i - 8);
          }

          else
          {
            v116 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v116);
        }
      }

      ++v112;
    }

    while (v112 != v113);
  }

  if (v215 != &v216)
  {
    free(v215);
  }

  mlir::OperationState::~OperationState(&v194);
  v209[0] = &unk_2868A14C0;
  if (v210 != &v211)
  {
    free(v210);
  }

  llvm::PrettyStackTraceEntry::~PrettyStackTraceEntry(v209);
  --*(*&this[1] + 176);
  v85 = v214;
  if (v214 >= 8)
  {
LABEL_262:
    if ((v85 & 4) != 0)
    {
      if ((v85 & 2) != 0)
      {
        v117 = v212;
      }

      else
      {
        v117 = v212[0];
      }

      (*((v85 & 0xFFFFFFFFFFFFFFF8) + 16))(v117);
    }

    if ((v85 & 2) == 0)
    {
      llvm::deallocate_buffer(v212[0], v212[1]);
    }
  }

LABEL_269:
  if (!v29)
  {
    goto LABEL_276;
  }

  if (!v192)
  {
    v120 = *(*&this[1] + 152);
    if (v120)
    {
      mlir::Token::getLocRange(&v167);
      mlir::Token::getEndLoc((*&this[1] + 80));
      mlir::AsmParserState::finalizeOperationDefinition(v120, v29);
    }

    v38 = 1;
    goto LABEL_277;
  }

  v118 = *(v29 + 36);
  if (!v118)
  {
    *&v215 = "cannot name an operation with no results";
    LOWORD(v218) = 259;
    v121 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, Loc);
    mlir::emitError(v121, &v215, &v194);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v194);
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v194);
    if (v194.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v194);
    }

    if (v205[0] != 1)
    {
      goto LABEL_277;
    }

    if (v204 != v205)
    {
      free(v204);
    }

    v122 = v202;
    if (v202)
    {
      v123 = v203;
      v124 = v202;
      if (v203 != v202)
      {
        do
        {
          v123 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v123 - 1);
        }

        while (v123 != v122);
        v124 = v202;
      }

      v203 = v122;
      operator delete(v124);
    }

    v125 = v200;
    if (v200)
    {
      v126 = v201;
      v127 = v200;
      if (v201 != v200)
      {
        do
        {
          v129 = *--v126;
          v128 = v129;
          *v126 = 0;
          if (v129)
          {
            MEMORY[0x259C63150](v128, 0x1000C8077774924);
          }
        }

        while (v126 != v125);
        goto LABEL_333;
      }

LABEL_334:
      v201 = v125;
      operator delete(v127);
    }

LABEL_335:
    if (v195 != v198)
    {
      free(v195);
    }

    goto LABEL_277;
  }

  if (v169 != v118)
  {
    *&v215 = "operation defines ";
    LOWORD(v218) = 259;
    v130 = mlir::Lexer::getEncodedSourceLocation(*&this[1] + 8, Loc);
    mlir::emitError(v130, &v215, &v194);
    if (*(*&this[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v194);
    }

    if (v194.__r_.__value_.__r.__words[0])
    {
      v131 = *(v29 + 36);
      LODWORD(v170) = 5;
      *(&v170 + 1) = v131;
      if (v196 >= v197)
      {
        if (v195 > &v170 || v195 + 24 * v196 <= &v170)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v132 = v195 + 24 * v196;
      v133 = v170;
      *(v132 + 2) = v171;
      *v132 = v133;
      v134 = ++v196;
      if (v194.__r_.__value_.__r.__words[0])
      {
        LODWORD(v170) = 3;
        *(&v170 + 1) = " results but was provided ";
        v171 = 26;
        if (v134 >= v197)
        {
          if (v195 > &v170 || v195 + 24 * v134 <= &v170)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v135 = v195 + 24 * v196;
        v136 = v170;
        *(v135 + 2) = v171;
        *v135 = v136;
        v137 = ++v196;
        if (v194.__r_.__value_.__r.__words[0])
        {
          LODWORD(v170) = 5;
          *(&v170 + 1) = v169;
          if (v137 >= v197)
          {
            if (v195 > &v170 || v195 + 24 * v137 <= &v170)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v138 = v195 + 24 * v196;
          v139 = v170;
          *(v138 + 2) = v171;
          *v138 = v139;
          v140 = ++v196;
          if (v194.__r_.__value_.__r.__words[0])
          {
            LODWORD(v170) = 3;
            *(&v170 + 1) = " to bind";
            v171 = 8;
            if (v140 >= v197)
            {
              if (v195 > &v170 || v195 + 24 * v140 <= &v170)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v141 = v195 + 24 * v196;
            v142 = v170;
            *(v141 + 2) = v171;
            *v141 = v142;
            ++v196;
          }
        }
      }
    }

    v38 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v194);
    if (v194.__r_.__value_.__r.__words[0])
    {
      mlir::InFlightDiagnostic::report(&v194);
    }

    if (v205[0] != 1)
    {
      goto LABEL_277;
    }

    if (v204 != v205)
    {
      free(v204);
    }

    v143 = v202;
    if (v202)
    {
      v144 = v203;
      v145 = v202;
      if (v203 != v202)
      {
        do
        {
          v144 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v144 - 1);
        }

        while (v144 != v143);
        v145 = v202;
      }

      v203 = v143;
      operator delete(v145);
    }

    v125 = v200;
    if (v200)
    {
      v146 = v201;
      v127 = v200;
      if (v201 != v200)
      {
        do
        {
          v148 = *--v146;
          v147 = v148;
          *v146 = 0;
          if (v148)
          {
            MEMORY[0x259C63150](v147, 0x1000C8077774924);
          }
        }

        while (v146 != v125);
LABEL_333:
        v127 = v200;
        goto LABEL_334;
      }

      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (*(*&this[1] + 152))
  {
    LODWORD(v215) = 0;
    v194.__r_.__value_.__r.__words[0] = &v194.__r_.__value_.__r.__words[2];
    v194.__r_.__value_.__l.__size_ = 0x300000000;
    if (v192 > 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v152 = v191 + 32 * v192;
    v153 = 0;
    v154 = (v191 + 24);
    do
    {
      v155 = v194.__r_.__value_.__r.__words[1];
      if (LODWORD(v194.__r_.__value_.__r.__words[1]) >= HIDWORD(v194.__r_.__value_.__r.__words[1]))
      {
        llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(&v194, &v215, v154);
      }

      else
      {
        v156 = v194.__r_.__value_.__r.__words[0] + 16 * LODWORD(v194.__r_.__value_.__r.__words[1]);
        *v156 = v153;
        *(v156 + 8) = *v154;
        LODWORD(v194.__r_.__value_.__r.__words[1]) = v155 + 1;
      }

      v153 = v215 + *(v154 - 2);
      LODWORD(v215) = v153;
      v157 = (v154 + 1);
      v154 += 4;
    }

    while (v157 != v152);
    v158 = *(*&this[1] + 152);
    mlir::Token::getLocRange(&v167);
    mlir::Token::getEndLoc((*&this[1] + 80));
    mlir::AsmParserState::finalizeOperationDefinition(v158, v29);
  }

  v151 = v191;
  __s2a = v191 + 32 * v192;
  v159 = 0;
  while (1)
  {
    v160 = v3;
    v161 = *(v151 + 4);
    if (v161)
    {
      break;
    }

    v163 = v159;
LABEL_353:
    v151 += 32;
    v38 = 1;
    v159 = v163;
    v3 = v160;
    if (v151 == __s2a)
    {
      goto LABEL_277;
    }
  }

  v162 = 0;
  while (1)
  {
    v194.__r_.__value_.__r.__words[0] = *(v151 + 3);
    *&v194.__r_.__value_.__r.__words[1] = *v151;
    LODWORD(v195) = v162;
    v163 = (v159 + 1);
    v164 = (v159 >= 6 ? v29 - 96 - 24 * (v159 - 5) : v29 - 16 * v163);
    {
      break;
    }

    ++v162;
    LODWORD(v159) = v163;
    if (v161 == v162)
    {
      goto LABEL_353;
    }
  }

  v38 = 0;
  v3 = v160;
LABEL_277:
  if (v191 != v3)
  {
    free(v191);
  }

  return v38;
}

void anonymous namespace::OperationParser::pushSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(this + 26);
  v6[0] = 0;
  v6[1] = 0;
  LODWORD(v7) = 0;
  v2 = *(this + 54);
  if (v2 < *(this + 55))
  {
    v3 = v1 + 24 * *(this + 54);
    *v3 = 0;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = v6[0];
    v6[0] = 0;
    *(v3 + 8) = v6[1];
    LODWORD(v6[1]) = 0;
    v4 = *(v3 + 12);
    *(v3 + 12) = HIDWORD(v6[1]);
    HIDWORD(v6[1]) = v4;
    v5 = *(v3 + 16);
    *(v3 + 16) = v7;
    LODWORD(v7) = v5;
    ++*(this + 54);
    llvm::deallocate_buffer(v6[0], (32 * v7));
  }

  if (v1 <= v6 && v1 + 24 * v2 > v6)
  {
  }
}

void anonymous namespace::OperationParser::IsolatedSSANameScope::~IsolatedSSANameScope(_anonymous_namespace_::OperationParser::IsolatedSSANameScope *this)
{
  v2 = *(this + 3);
  v3 = *(this + 8);
  if (v3)
  {
    v4 = &v2[3 * v3];
    do
    {
      v5 = v4;
      v4 -= 3;
      if (*(v5 - 3))
      {
        v6 = *(v5 - 4);
        if (v6)
        {
          v7 = 0;
          do
          {
            v8 = *(*v4 + v7);
            if (v8 != -8 && v8 != 0)
            {
              llvm::deallocate_buffer(v8, (*v8 + 9));
            }

            v7 += 8;
          }

          while (8 * v6 != v7);
        }
      }

      free(*v4);
    }

    while (v4 != v2);
    v2 = *(this + 3);
  }

  if (v2 != (this + 40))
  {
    free(v2);
  }

  if (*(this + 3))
  {
    v10 = *(this + 2);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = *(*this + v11);
        if (v12 != -8 && v12 != 0)
        {
          v15 = *v12;
          v14 = *(v12 + 1);
          if (v14 != (v12 + 24))
          {
            free(v14);
          }

          llvm::deallocate_buffer(v12, (v15 + 41));
        }

        v11 += 8;
      }

      while (8 * v10 != v11);
    }
  }

  free(*this);
}

uint64_t llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = *a2;
  if (*a2 != a2 + 16)
  {
    llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(a1, a2);
    return a1;
  }

  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  if (v5 < v4)
  {
    if (*(a1 + 12) < v4)
    {
      if (v5)
      {
        v6 = *a1;
        v7 = (*a1 + 24 * v5);
        do
        {
          v8 = v7;
          v7 -= 3;
          if (*(v8 - 3))
          {
            v9 = *(v8 - 4);
            if (v9)
            {
              v10 = 0;
              do
              {
                v11 = *(*v7 + v10);
                if (v11 != -8 && v11 != 0)
                {
                  llvm::deallocate_buffer(v11, (*v11 + 9));
                }

                v10 += 8;
              }

              while (8 * v9 != v10);
            }
          }

          free(*v7);
        }

        while (v7 != v6);
      }

      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::mallocForGrow();
    }

    v25 = *a1;
    if (v5)
    {
      v26 = a2;
      v27 = &v3[3 * v5];
      do
      {
        v28 = *v3;
        v29 = *(v3 + 4);
        v30 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        *(v3 + 4) = 0;
        v31 = *v25;
        *v25 = v28;
        v32 = *(v25 + 2);
        LODWORD(v28) = *(v25 + 3);
        v25[1] = v30;
        *(v25 + 4) = v29;
        if (v28 && v32)
        {
          v33 = v31;
          do
          {
            v34 = *v33;
            if (*v33 != -8 && v34 != 0)
            {
              llvm::deallocate_buffer(v34, (*v34 + 9));
            }

            ++v33;
            --v32;
          }

          while (v32);
        }

        free(v31);
        v3 += 3;
        v25 += 3;
      }

      while (v3 != v27);
      v25 = *a1;
      a2 = v26;
      v50 = *v26;
      v51 = *(v26 + 8);
      if (v5 == v51)
      {
        goto LABEL_76;
      }
    }

    else
    {
      v5 = 0;
      v50 = *a2;
      LODWORD(v51) = *(a2 + 8);
      if (!v51)
      {
LABEL_76:
        *(a1 + 8) = v4;
        v55 = a2;
        v56 = *(a2 + 8);
        if (v56)
        {
          v57 = &v50[3 * v56];
          do
          {
            v58 = v57;
            v57 -= 3;
            if (*(v58 - 3))
            {
              v59 = *(v58 - 4);
              if (v59)
              {
                v60 = 0;
                do
                {
                  v61 = *(*v57 + v60);
                  if (v61 != -8 && v61 != 0)
                  {
                    llvm::deallocate_buffer(v61, (*v61 + 9));
                  }

                  v60 += 8;
                }

                while (8 * v59 != v60);
              }
            }

            free(*v57);
          }

          while (v57 != v50);
        }

        *(v55 + 8) = 0;
        return a1;
      }
    }

    v52 = &v50[3 * v51];
    v53 = &v25[3 * v5];
    v54 = &v50[3 * v5];
    do
    {
      *v53 = *v54;
      *(v53 + 1) = *(v54 + 1);
      *v54 = 0;
      v54[1] = 0;
      *(v54 + 4) = 0;
      v53 += 3;
      v54 += 3;
    }

    while (v54 != v52);
    v50 = *a2;
    goto LABEL_76;
  }

  v13 = *a1;
  v14 = a2;
  if (v4)
  {
    v15 = &v3[3 * v4];
    do
    {
      v16 = *v3;
      v17 = *(v3 + 4);
      v18 = v3[1];
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      v19 = *v13;
      *v13 = v16;
      v20 = *(v13 + 2);
      LODWORD(v16) = *(v13 + 3);
      v13[1] = v18;
      *(v13 + 4) = v17;
      if (v16 && v20)
      {
        v21 = v19;
        do
        {
          v22 = *v21;
          if (*v21 != -8 && v22 != 0)
          {
            llvm::deallocate_buffer(v22, (*v22 + 9));
          }

          ++v21;
          --v20;
        }

        while (v20);
      }

      free(v19);
      v3 += 3;
      v13 += 3;
    }

    while (v3 != v15);
    v24 = *a1;
    LODWORD(v5) = *(a1 + 8);
  }

  else
  {
    v24 = *a1;
  }

  for (i = &v24[3 * v5]; i != v13; free(*i))
  {
    v37 = i;
    i -= 3;
    if (*(v37 - 3))
    {
      v38 = *(v37 - 4);
      if (v38)
      {
        v39 = 0;
        do
        {
          v40 = *(*i + v39);
          if (v40 != -8 && v40 != 0)
          {
            llvm::deallocate_buffer(v40, (*v40 + 9));
          }

          v39 += 8;
        }

        while (8 * v38 != v39);
      }
    }
  }

  *(a1 + 8) = v4;
  v42 = *(v14 + 8);
  if (v42)
  {
    v43 = *v14;
    v44 = (*v14 + 24 * v42);
    do
    {
      v45 = v44;
      v44 -= 3;
      if (*(v45 - 3))
      {
        v46 = *(v45 - 4);
        if (v46)
        {
          v47 = 0;
          do
          {
            v48 = *(*v44 + v47);
            if (v48 != -8 && v48 != 0)
            {
              llvm::deallocate_buffer(v48, (*v48 + 9));
            }

            v47 += 8;
          }

          while (8 * v46 != v47);
        }
      }

      free(*v44);
    }

    while (v44 != v43);
  }

  *(v14 + 8) = 0;
  return a1;
}

double llvm::SmallVectorImpl<llvm::StringSet<llvm::MallocAllocator>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = &v4[3 * v5];
    do
    {
      v7 = v6;
      v6 -= 3;
      if (*(v7 - 3))
      {
        v8 = *(v7 - 4);
        if (v8)
        {
          v9 = 0;
          do
          {
            v10 = *(*v6 + v9);
            if (v10 != -8 && v10 != 0)
            {
              llvm::deallocate_buffer(v10, (*v10 + 9));
            }

            v9 += 8;
          }

          while (8 * v8 != v9);
        }
      }

      free(*v6);
    }

    while (v6 != v4);
    v4 = *a1;
  }

  if (v4 != (a1 + 16))
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = *a1 + 24 * v2;
    do
    {
      *a2 = *v3;
      *(a2 + 8) = *(v3 + 1);
      *v3 = 0;
      v3[1] = 0;
      *(v3 + 4) = 0;
      a2 += 24;
      v3 += 3;
    }

    while (v3 != v4);
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = *a1;
      v7 = (*a1 + 24 * v5);
      do
      {
        v8 = v7;
        v7 -= 3;
        if (*(v8 - 3))
        {
          v9 = *(v8 - 4);
          if (v9)
          {
            v10 = 0;
            do
            {
              v11 = *(*v7 + v10);
              if (v11 != -8 && v11 != 0)
              {
                llvm::deallocate_buffer(v11, (*v11 + 9));
              }

              v10 += 8;
            }

            while (8 * v9 != v10);
          }
        }

        free(*v7);
      }

      while (v7 != v6);
    }
  }
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v79 = *MEMORY[0x277D85DE8];
  Loc = mlir::Token::getLoc((*(this + 1) + 56));
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  v47 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v46);
  size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v46.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v49 = "empty operation name is invalid";
    v51 = 259;
    mlir::detail::Parser::emitError(this, &v49, v66);
    if (v66[0])
    {
      mlir::InFlightDiagnostic::report(v66);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v13 = v71;
      if (v71)
      {
        v14 = v72;
        v15 = v71;
        if (v72 != v71)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = v71;
        }

        v72 = v13;
        operator delete(v15);
      }

      v16 = v69;
      if (v69)
      {
        v17 = v70;
        v18 = v69;
        if (v70 != v69)
        {
          do
          {
            v20 = *--v17;
            v19 = v20;
            *v17 = 0;
            if (v20)
            {
              MEMORY[0x259C63150](v19, 0x1000C8077774924);
            }
          }

          while (v17 != v16);
          v18 = v69;
        }

        v70 = v16;
        operator delete(v18);
      }

      v30 = v67;
      if (v67 != &v68)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_56;
  }

  if (std::string::find(&v46, 0, 0) == -1)
  {
    v21 = *(this + 1);
    *(v21 + 80) = *(v21 + 56);
    *(v21 + 96) = *(v21 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v49);
    v22 = *(this + 1);
    *(v22 + 56) = v49;
    *(v22 + 72) = v50;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v46;
    }

    else
    {
      v23 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v46.__r_.__value_.__l.__size_;
    }

    mlir::OperationState::OperationState(&v49, EncodedSourceLocation, v23, v24);
    if (*(*(&v49 + 1) + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v25 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
      v26 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v46.__r_.__value_.__l.__size_;
      }

      v75 = v26;
      v76 = v25;
      LOBYTE(v44) = 46;
      v27 = llvm::StringRef::find(&v75, &v44, 1uLL, 0);
      if (v27 == -1)
      {
        v28 = v75;
        v29 = v76;
      }

      else
      {
        v28 = v75;
        if (v27 >= v76)
        {
          v29 = v76;
        }

        else
        {
          v29 = v27;
        }
      }

      if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v28, v29) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v28, v29))
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v46;
        }

        else
        {
          v33 = v46.__r_.__value_.__r.__words[0];
        }

        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = v46.__r_.__value_.__l.__size_;
        }

        mlir::OperationName::OperationName(&v75, v33, v34, ***(this + 1));
        *(&v49 + 1) = v75;
      }

      else if ((mlir::MLIRContext::allowsUnregisteredDialects(***(this + 1)) & 1) == 0)
      {
        v75 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
        v78 = 259;
        mlir::detail::Parser::emitError(this, &v75, v48);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v48);
        goto LABEL_86;
      }
    }

    v35 = *(*(this + 1) + 152);
    if (v35)
    {
      mlir::AsmParserState::startOperationDefinition(v35, (&v49 + 8));
    }

    LOBYTE(v75) = 0;
    LOBYTE(v77[0]) = 0;
    LOBYTE(v44) = 0;
    v45 = 0;
    v43[0] = 0;
    v43[16] = 0;
    v42[0] = 0;
    v42[16] = 0;
    v31 = 0;
    {
LABEL_87:
      v75 = v77;
      v76 = 0x400000000;
      if (v54 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v54)
      {
        v37 = v53;
        v38 = &v53[v54];
        do
        {
          v39 = *v37;
          if (*v37)
          {
            for (i = *(v39 + 8); i != v39; i = *(i + 8))
            {
              if (i)
              {
                v41 = (i - 8);
              }

              else
              {
                v41 = 0;
              }

              mlir::Block::dropAllDefinedValueUses(v41);
            }
          }

          ++v37;
        }

        while (v37 != v38);
      }

      if (v75 != v77)
      {
        free(v75);
      }

      mlir::OperationState::~OperationState(&v49);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_57;
      }

      return v31;
    }

LABEL_86:
    v31 = 0;
    goto LABEL_87;
  }

  *&v49 = "null character not allowed in operation name";
  v51 = 259;
  mlir::detail::Parser::emitError(this, &v49, v57);
  if (v57[0])
  {
    mlir::InFlightDiagnostic::report(v57);
  }

  if (v65 == 1)
  {
    if (v64 != &v65)
    {
      free(v64);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v63;
      v7 = __p;
      if (v63 != __p)
      {
        do
        {
          v6 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v63 = v5;
      operator delete(v7);
    }

    v8 = v60;
    if (v60)
    {
      v9 = v61;
      v10 = v60;
      if (v61 != v60)
      {
        do
        {
          v12 = *--v9;
          v11 = v12;
          *v9 = 0;
          if (v12)
          {
            MEMORY[0x259C63150](v11, 0x1000C8077774924);
          }
        }

        while (v9 != v8);
        v10 = v60;
      }

      v61 = v8;
      operator delete(v10);
    }

    v30 = v58;
    if (v58 != &v59)
    {
LABEL_55:
      free(v30);
    }
  }

LABEL_56:
  v31 = 0;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  return v31;
}

uint64_t anonymous namespace::OperationParser::addDefinition(int32x2_t *a1, uint64_t a2, uint64_t *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = (a2 + 8);
  v9 = v7;
  v10 = *(v7 + 8);
  v12 = (a2 + 24);
  v11 = *(a2 + 24);
  v13 = v11 + 1;
  if (v10 > v11 || v10 == v13)
  {
    v15 = *(*v7 + 16 * *(a2 + 24));
    v54 = v15;
    if (!v15)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v10 <= v13)
    {
      if (*(v7 + 12) < v13)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v10 != v13)
      {
        bzero((*v7 + 16 * v10), 16 * (v13 - v10));
      }
    }

    *(v9 + 8) = v13;
    v15 = *(*v9 + 16 * *v12);
    v54 = v15;
    if (!v15)
    {
      goto LABEL_34;
    }
  }

  v16 = a1[44].i32[0];
  if (!v16)
  {
LABEL_39:
    v48 = *a2;
    v53 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v48);
    mlir::emitError(EncodedSourceLocation, v52, &v56);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v56);
    }

    if (v56)
    {
      mlir::Diagnostic::append<char const(&)[10],llvm::StringRef &,char const(&)[44]>(v57, "redefinition of SSA value '", v6, "'");
    }

    mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v9 + 16 * *v12 + 8));
    mlir::Diagnostic::attachNote();
  }

  v17 = a1[42];
  v18 = 0x9DDFEA08EB382D69 * ((8 * v15 - 0xAE502812AA7333) ^ HIDWORD(v15));
  v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v18 >> 47) ^ v18);
  v20 = v16 - 1;
  v21 = v20 & (-348639895 * ((v19 >> 47) ^ v19));
  v22 = *(*&v17 + 16 * v21);
  if (v22 != v15)
  {
    v46 = 1;
    while (v22 != -4096)
    {
      v47 = v21 + v46++;
      v21 = v47 & v20;
      v22 = *(*&v17 + 16 * v21);
      if (v22 == v15)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((a3[1] ^ *(v15 + 8)) >= 8)
  {
    v23 = *a2;
    v53 = 257;
    v24 = mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, v23);
    mlir::emitError(v24, v52, &v56);
    if (*(*&a1[1] + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(&v56);
    }

    v55 = a3[1] & 0xFFFFFFFFFFFFFFF8;
    if (v56)
    {
      mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(v57, "definition of SSA value '", v6, "#", (a2 + 24), "' has type ", &v55);
    }

    mlir::Lexer::getEncodedSourceLocation(*&a1[1] + 8, *(*v9 + 16 * *v12 + 8));
    mlir::Diagnostic::attachNote();
  }

  while (1)
  {
    v25 = *v15;
    if (!*v15)
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

  DefiningOp = mlir::Value::getDefiningOp(&v54);
  mlir::Operation::destroy(DefiningOp);
  v30 = a1[44].i32[0];
  if (v30)
  {
    v31 = a1[42];
    v32 = 0x9DDFEA08EB382D69 * ((8 * v54 - 0xAE502812AA7333) ^ HIDWORD(v54));
    v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v54) ^ (v32 >> 47) ^ v32);
    LODWORD(v32) = -348639895 * ((v33 >> 47) ^ v33);
    v34 = v30 - 1;
    v35 = v32 & (v30 - 1);
    v36 = *(*&v31 + 16 * v35);
    if (v54 == v36)
    {
LABEL_31:
      *(*&v31 + 16 * v35) = -8192;
      a1[43] = vadd_s32(a1[43], 0x1FFFFFFFFLL);
    }

    else
    {
      v50 = 1;
      while (v36 != -4096)
      {
        v51 = v35 + v50++;
        v35 = v51 & v34;
        v36 = *(*&v31 + 16 * v35);
        if (v54 == v36)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v37 = *(*&a1[1] + 152);
  if (v37)
  {
    mlir::AsmParserState::refineDefinition(v37, v54, a3);
  }

LABEL_34:
  v38 = *a2;
  v39 = (*v9 + 16 * *(a2 + 24));
  *v39 = a3;
  v39[1] = v38;
  v40 = *(a2 + 8);
  v41 = *(a2 + 16);
  v42 = *&a1[2] + 88 * a1[3].u32[0];
  v43 = (*(v42 - 64) + 24 * *(v42 - 56) - 24);
  v44 = llvm::StringMapImpl::hash(v40, v41, v8);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v43, v40, v41, v44);
  return 1;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 8);
  *v35 = *(v3 + 56);
  *&v35[16] = *(v3 + 72);
  *&v36 = "expected valid ssa identifier";
  v39 = 259;
  if ((mlir::detail::Parser::parseToken(v2, 6, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = 1;
  v34 = 1;
  v5 = *(v2 + 1);
  if (*(v5 + 56) != 15)
  {
    goto LABEL_7;
  }

  *(v5 + 80) = *(v5 + 56);
  *(v5 + 96) = *(v5 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v36);
  v6 = *(v2 + 1);
  *(v6 + 56) = v36;
  *(v6 + 72) = v37;
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
        mlir::Lexer::lexToken((*(v2 + 1) + 8), &v36);
        v11 = *(v2 + 1);
        *(v11 + 56) = v36;
        *(v11 + 72) = v37;
        v34 = v4;
LABEL_7:
        v12 = *(a1 + 8);
        v36 = *&v35[8];
        Loc = mlir::Token::getLoc(v35);
        v32[0] = Loc;
        v14 = *(v12 + 8);
        if (v14 >= *(v12 + 12))
        {
          llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v12, &v36, &v34, v32);
          v4 = v34;
        }

        else
        {
          v15 = *v12 + 32 * v14;
          *v15 = v36;
          *(v15 + 16) = v4;
          *(v15 + 24) = Loc;
          ++*(v12 + 8);
        }

        **(a1 + 16) += v4;
        return 1;
      }
    }

    v32[0] = "expected named operation to have at least 1 result";
    v33 = 259;
    mlir::detail::Parser::emitError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v26 = __p;
      if (__p)
      {
        v27 = v44;
        v28 = __p;
        if (v44 != __p)
        {
          do
          {
            v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
          }

          while (v27 != v26);
          v28 = __p;
        }

        v44 = v26;
        operator delete(v28);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v29 = v42;
      v23 = v41;
      if (v42 == v41)
      {
LABEL_45:
        v42 = v21;
        operator delete(v23);
        result = v17;
LABEL_46:
        if (v38 != &v40)
        {
          free(v38);
          return v17;
        }

        return result;
      }

      do
      {
        v31 = *--v29;
        v30 = v31;
        *v29 = 0;
        if (v31)
        {
          MEMORY[0x259C63150](v30, 0x1000C8077774924);
        }
      }

      while (v29 != v21);
LABEL_44:
      v23 = v41;
      goto LABEL_45;
    }
  }

  else
  {
    v32[0] = "expected integer number of results";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v32, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v17 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v17;
    }

    if (v46[0] == 1)
    {
      if (v45 != v46)
      {
        free(v45);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v44;
        v20 = __p;
        if (v44 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v44 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v41;
      if (!v41)
      {
        goto LABEL_46;
      }

      v22 = v42;
      v23 = v41;
      if (v42 == v41)
      {
        goto LABEL_45;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          MEMORY[0x259C63150](v24, 0x1000C8077774924);
        }
      }

      while (v22 != v21);
      goto LABEL_44;
    }
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(uint64_t a1, __int128 *a2, void *a3, void *a4)
{
  v10 = *a2;
  LODWORD(v11) = *a3;
  *(&v11 + 1) = *a4;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 > &v10 || v5 + 32 * v4 <= &v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = (v5 + 32 * *(a1 + 8));
  v7 = v11;
  *v6 = v10;
  v6[1] = v7;
  v8 = (*(a1 + 8) + 1);
  *(a1 + 8) = v8;
  return *a1 + 32 * v8 - 32;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v40 = v3;
  v41 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v36);
    v5 = *(this + 1);
    *(v5 + 56) = v36;
    *(v5 + 72) = v37;
    v6 = mlir::RegisteredOperationName::lookup(v3, v4, ***(this + 1));
    if (v7)
    {
      v8 = v6 & 0xFFFFFFFFFFFFFF00;
      return v8 | v6;
    }

    LOBYTE(v36) = 46;
    v17 = llvm::StringRef::find(&v40, &v36, 1uLL, 0);
    if (v17 == -1)
    {
      v18 = v40;
      v19 = v41;
      v20 = v41;
      v21 = *(this + 1);
      if (*(v21 + 56) != 2)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = v40;
      v19 = v41;
      if (v17 >= v41)
      {
        v20 = v41;
      }

      else
      {
        v20 = v17;
      }

      v34[0] = 0;
      v34[1] = 0;
      v35 = 0;
      if (v41 > v17 + 1)
      {
LABEL_39:
        mlir::MLIRContext::getOrLoadDialect(***(this + 1), v18, v20);
        mlir::OperationName::OperationName(&v36, v40, v41, ***(this + 1));
        LOBYTE(v6) = v36;
        v8 = v36 & 0xFFFFFFFFFFFFFF00;
        if (SHIBYTE(v35) < 0)
        {
          v28 = v36;
          operator delete(v34[0]);
          LOBYTE(v6) = v28;
        }

        return v8 | v6;
      }

      v21 = *(this + 1);
      if (*(v21 + 56) != 2)
      {
LABEL_34:
        v24 = *(v21 + 168) + 16 * *(v21 + 176);
        v25 = *(v24 - 16);
        v20 = *(v24 - 8);
        v31 = 773;
        v30[0] = v25;
        v30[1] = v20;
        v30[2] = ".";
        *&v36 = v30;
        v37 = v18;
        v38 = v19;
        v39 = 1282;
        llvm::Twine::str(&v36, &v32);
        v35 = v33;
        *v34 = v32;
        v26 = SHIBYTE(v33);
        v27 = v34;
        if (v33 < 0)
        {
          v27 = v32;
        }

        if (v33 < 0)
        {
          v26 = *(&v32 + 1);
        }

        v40 = v27;
        v41 = v26;
        v18 = v25;
        goto LABEL_39;
      }
    }

    if (v18[v19 - 1] != 46)
    {
      goto LABEL_34;
    }

    if (v20)
    {
      v22 = v18;
      v23 = memchr(v18, 46, v20);
      if (!v23 || v23 - v22 == -1)
      {
        (*(**(v21 + 160) + 24))(*(v21 + 160), v22, v20);
      }
    }

    v8 = 0;
    LOBYTE(v6) = 0;
  }

  else
  {
    *&v36 = "empty operation name is invalid";
    v39 = 259;
    mlir::detail::Parser::emitError(this, &v36, v42);
    if (v42[0])
    {
      mlir::InFlightDiagnostic::report(v42);
    }

    if (v50 == 1)
    {
      if (v49 != &v50)
      {
        free(v49);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v48;
        v11 = __p;
        if (v48 != __p)
        {
          do
          {
            v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v48 = v9;
        operator delete(v11);
      }

      v12 = v45;
      if (v45)
      {
        v13 = v46;
        v14 = v45;
        if (v46 != v45)
        {
          do
          {
            v16 = *--v13;
            v15 = v16;
            *v13 = 0;
            if (v16)
            {
              MEMORY[0x259C63150](v15, 0x1000C8077774924);
            }
          }

          while (v13 != v12);
          v14 = v45;
        }

        v46 = v12;
        operator delete(v14);
      }

      if (v43 != &v44)
      {
        free(v43);
      }
    }

    LOBYTE(v6) = 0;
    v8 = 0;
  }

  return v8 | v6;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 56) != 64)
  {
    return 1;
  }

  *(v2 + 80) = *(v2 + 56);
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v12);
  v5 = *(a1 + 8);
  *(v5 + 56) = v12;
  *(v5 + 72) = v13;
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v12))
  {
    v6 = *(*(a1 + 8) + 56);
    v11 = 0;
    if (v6 == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(a1, &v11) & 1) == 0)
    {
      return 0;
    }

    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(a1, 28, &v12))
    {
      v7 = (a2 >> 2) & 1;
      if ((a2 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        LODWORD(v7) = 1;
      }

      v8 = v7 == 0;
      v9 = 24;
      if (!v8)
      {
        v9 = 32;
      }

      *((a2 & 0xFFFFFFFFFFFFFFF8) + v9) = v11;
      return 1;
    }
  }

  return 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::unique_function<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>>(void *a1)
{
  v1 = a1[3];
  if ((v1 & 2) == 0)
  {
    a1 = *a1;
  }

  return (*(v1 & 0xFFFFFFFFFFFFFFF8))(a1);
}

void anonymous namespace::CustomOpAsmParser::~CustomOpAsmParser(_anonymous_namespace_::CustomOpAsmParser *this)
{
  mlir::OpAsmParser::~OpAsmParser(this);

  JUMPOUT(0x259C63180);
}

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrow(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '->'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 13, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrow(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '{'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 20, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLBrace(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRBrace(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '}'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 27, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRBrace(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColon(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ':'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 15, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColon(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseComma(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ','";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 16, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalComma(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEqual(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '='";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 18, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEqual(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLess(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '<'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 23, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLess(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseGreater(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '>'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 19, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalGreater(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseQuestion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '?'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 26, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalQuestion(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parsePlus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '+'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 25, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalPlus(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseMinus(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '-'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 24, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalMinus(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseStar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '*'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 30, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalStar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseVerticalBar(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '|'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 31, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalString(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 11)
  {
    return 0;
  }

  if (a2)
  {
    mlir::Token::getStringValue((v3 + 56), &v7);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v7;
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v7);
  *(*(v2 + 8) + 56) = v7;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v5 = a1[2];
  v6 = *(v5 + 8);
  if (*(v6 + 56) == 11)
  {
    if (a2)
    {
      v36 = *(v6 + 64);
      first_not_of = llvm::StringRef::find_first_not_of(&v36, "  \t\n\v\f\r", 8, 0);
      if (first_not_of >= *(&v36 + 1))
      {
        v8 = *(&v36 + 1);
      }

      else
      {
        v8 = first_not_of;
      }

      v9 = *(&v36 + 1) - v8;
      *&v39 = v36 + v8;
      *(&v39 + 1) = *(&v36 + 1) - v8;
      last_not_of = llvm::StringRef::find_last_not_of(&v39, " \t\n\v\f\r", 7, 0xFFFFFFFFFFFFFFFFLL);
      if ((last_not_of + 1) < *(&v39 + 1))
      {
        v11 = last_not_of + 1;
      }

      else
      {
        v11 = *(&v39 + 1);
      }

      v12 = *(&v39 + 1) - v9 + v11;
      if (*(&v39 + 1) >= v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = *(&v39 + 1);
      }

      llvm::decodeBase64(v39, v13, a2, &v35);
      if (v35)
      {
        v33 = v35;
        v35 = 0;
        llvm::toString(&v33, &v34);
        v38 = 260;
        v37[0] = &v34;
        (*(*a1 + 24))(&v39, a1, v4, v37);
        v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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

          v15 = __p;
          if (__p)
          {
            v16 = v46;
            v17 = __p;
            if (v46 != __p)
            {
              do
              {
                v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
              }

              while (v16 != v15);
              v17 = __p;
            }

            v46 = v15;
            operator delete(v17);
          }

          v18 = v43;
          if (v43)
          {
            v19 = v44;
            v20 = v43;
            if (v44 != v43)
            {
              do
              {
                v22 = *--v19;
                v21 = v22;
                *v19 = 0;
                if (v22)
                {
                  MEMORY[0x259C63150](v21, 0x1000C8077774924);
                }
              }

              while (v19 != v18);
              v20 = v43;
            }

            v44 = v18;
            operator delete(v20);
          }

          if (v41 != v42)
          {
            free(v41);
          }
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        if (v33)
        {
          (*(*v33 + 8))(v33);
        }

        if (v35)
        {
          (*(*v35 + 8))(v35);
        }

        return v14;
      }

      v5 = a1[2];
      v6 = *(v5 + 8);
    }

    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 8) + 8), &v39);
    v31 = *(v5 + 8);
    *(v31 + 56) = v39;
    *(v31 + 72) = v40;
    return 1;
  }

  v37[0] = "expected string";
  v38 = 259;
  (*(*a1 + 24))(&v39, a1, v4, v37);
  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v39);
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
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
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
          v30 = *--v27;
          v29 = v30;
          *v27 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
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

  return v14;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '('";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 21, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLParen(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRParen(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ')'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 28, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRParen(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '['";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 22, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalLSquare(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRSquare(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected ']'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 29, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalRSquare(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEllipsis(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3 = "expected '...'";
  v4 = 259;
  return mlir::detail::Parser::parseToken(v1, 17, &v3);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalEllipsis(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, double *a2)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v4 = llvm::detail::IEEEFloat::IEEEFloat(v12, 0.0);
  v5 = llvm::APFloatBase::IEEEdouble(v4);
  llvm::APFloat::Storage::Storage(v14, v12, v5);
  llvm::detail::IEEEFloat::~IEEEFloat(v12);
  v6 = (*(*a1 + 368))(a1, v5, v13);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
    v11 = v14[0];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) != v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v14);
    return v7;
  }

  *a2 = llvm::APFloat::convertToDouble(v13);
  v7 = 1;
  v8 = v14[0];
  if (llvm::APFloatBase::PPCDoubleDouble(v9) == v8)
  {
    goto LABEL_6;
  }

LABEL_3:
  llvm::detail::IEEEFloat::~IEEEFloat(v14);
  return v7;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(void *a1, void *a2, uint64_t a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v6 = a1[2];
  v7 = *(v6 + 8);
  v8 = *(v7 + 56);
  if (v8 == 24)
  {
    *(v7 + 80) = *(v7 + 56);
    *(v7 + 96) = *(v7 + 72);
    mlir::Lexer::lexToken((*(v6 + 8) + 8), &v52);
    v9 = *(v6 + 8);
    *(v9 + 56) = v52;
    *(v9 + 72) = v53;
    v7 = *(a1[2] + 8);
  }

  v50 = *(v7 + 56);
  v51 = *(v7 + 72);
  Loc = mlir::Token::getLoc(&v50);
  if (v50 == 10)
  {
    v23 = v8 == 24;
    LOBYTE(v52) = 0;
    v55 = 0;
    v24 = a1[2];
    v25 = llvm::APFloatBase::semanticsSizeInBits(a2);
    v26 = mlir::detail::Parser::parseFloatFromIntegerLiteral(v24, &v52, &v50, v23, a2, v25);
    v27 = 0;
    if (v26)
    {
      llvm::APFloat::Storage::operator=((a3 + 8), (&v52 + 8));
      v28 = a1[2];
      v29 = *(v28 + 8);
      *(v29 + 80) = *(v29 + 56);
      *(v29 + 96) = *(v29 + 72);
      mlir::Lexer::lexToken((*(v28 + 8) + 8), &v47);
      v30 = *(v28 + 8);
      *(v30 + 56) = v47;
      *(v30 + 72) = v48;
      v27 = 1;
    }

    if (v55 == 1)
    {
      v31 = *(&v52 + 1);
      if (llvm::APFloatBase::PPCDoubleDouble(v26) == v31)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v52 + 8));
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat((&v52 + 8));
      }
    }
  }

  else
  {
    v11 = Loc;
    if (v50 == 9)
    {
      FloatingPointValue = mlir::Token::getFloatingPointValue(&v50);
      if (v13)
      {
        v14 = *&FloatingPointValue;
        v15 = a1[2];
        v16 = *(v15 + 8);
        *(v16 + 80) = *(v16 + 56);
        *(v16 + 96) = *(v16 + 72);
        mlir::Lexer::lexToken((*(v15 + 8) + 8), &v52);
        v17 = *(v15 + 8);
        *(v17 + 56) = v52;
        *(v17 + 72) = v53;
        v18 = -v14;
        if (v8 != 24)
        {
          v18 = v14;
        }

        v19 = llvm::detail::IEEEFloat::IEEEFloat(&v47, v18);
        v20 = llvm::APFloatBase::IEEEdouble(v19);
        llvm::APFloat::Storage::Storage(&v52 + 8, &v47, v20);
        llvm::detail::IEEEFloat::~IEEEFloat(&v47);
        v21 = llvm::APFloat::Storage::operator=((a3 + 8), (&v52 + 8));
        v22 = *(&v52 + 1);
        if (llvm::APFloatBase::PPCDoubleDouble(v21) == v22)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat((&v52 + 8));
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat((&v52 + 8));
        }

        LOBYTE(v52) = 0;
        v27 = 1;
        llvm::APFloat::convert(a3, a2, 1, &v52);
        return v27;
      }

      *&v47 = "floating point value too large";
      v49 = 259;
      (*(*a1 + 24))(&v52, a1, v11, &v47);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v40 = __p;
        if (__p)
        {
          v41 = v60;
          v42 = __p;
          if (v60 != __p)
          {
            do
            {
              v41 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v41 - 1);
            }

            while (v41 != v40);
            v42 = __p;
          }

          v60 = v40;
          operator delete(v42);
        }

        v35 = v57;
        if (!v57)
        {
          goto LABEL_49;
        }

        v43 = v58;
        v37 = v57;
        if (v58 == v57)
        {
LABEL_48:
          v58 = v35;
          operator delete(v37);
LABEL_49:
          if (v54 != &v56)
          {
            free(v54);
          }

          return v27;
        }

        do
        {
          v45 = *--v43;
          v44 = v45;
          *v43 = 0;
          if (v45)
          {
            MEMORY[0x259C63150](v44, 0x1000C8077774924);
          }
        }

        while (v43 != v35);
LABEL_47:
        v37 = v57;
        goto LABEL_48;
      }
    }

    else
    {
      *&v47 = "expected floating point literal";
      v49 = 259;
      (*(*a1 + 24))(&v52, a1, Loc, &v47);
      v27 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v52);
      if (v52)
      {
        mlir::InFlightDiagnostic::report(&v52);
      }

      if (v62 == 1)
      {
        if (v61 != &v62)
        {
          free(v61);
        }

        v32 = __p;
        if (__p)
        {
          v33 = v60;
          v34 = __p;
          if (v60 != __p)
          {
            do
            {
              v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
            }

            while (v33 != v32);
            v34 = __p;
          }

          v60 = v32;
          operator delete(v34);
        }

        v35 = v57;
        if (!v57)
        {
          goto LABEL_49;
        }

        v36 = v58;
        v37 = v57;
        if (v58 == v57)
        {
          goto LABEL_48;
        }

        do
        {
          v39 = *--v36;
          v38 = v39;
          *v36 = 0;
          if (v39)
          {
            MEMORY[0x259C63150](v38, 0x1000C8077774924);
          }
        }

        while (v36 != v35);
        goto LABEL_47;
      }
    }
  }

  return v27;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, uint64_t a2, uint64_t a3, void ***a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v24[0] = a2;
  v24[1] = a3;
  v4 = *(a1[2] + 8);
  if (*(v4 + 56) == 2)
  {
    (*(**(v4 + 160) + 48))(*(v4 + 160), v24, 1, 0);
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
      v22 = "expected '";
      v23 = 259;
      (*(*a1 + 24))(&v28, a1, v10, &v22);
      if (v28)
      {
        v27 = 261;
        *&v25 = a2;
        *(&v25 + 1) = a3;
        mlir::Diagnostic::operator<<(v29, &v25);
        if (v28)
        {
          LODWORD(v25) = 3;
          *(&v25 + 1) = "'";
          v26 = 1;
          if (v31 >= v32)
          {
            if (v30 > &v25 || v30 + 24 * v31 <= &v25)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v30 + 24 * v31;
          v12 = v25;
          *(v11 + 2) = v26;
          *v11 = v12;
          ++v31;
          if (v28)
          {
            mlir::Diagnostic::operator<<(v29, a4);
          }
        }
      }

      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v28);
      if (v28)
      {
        mlir::InFlightDiagnostic::report(&v28);
      }

      if (v39 == 1)
      {
        if (v38 != &v39)
        {
          free(v38);
        }

        v13 = __p;
        if (__p)
        {
          v14 = v37;
          v15 = __p;
          if (v37 != __p)
          {
            do
            {
              v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
            }

            while (v14 != v13);
            v15 = __p;
          }

          v37 = v13;
          operator delete(v15);
        }

        v16 = v34;
        if (v34)
        {
          v17 = v35;
          v18 = v34;
          if (v35 != v34)
          {
            do
            {
              v20 = *--v17;
              v19 = v20;
              *v17 = 0;
              if (v20)
              {
                MEMORY[0x259C63150](v19, 0x1000C8077774924);
              }
            }

            while (v17 != v16);
            v18 = v34;
          }

          v35 = v16;
          operator delete(v18);
        }

        if (v30 != &v33)
        {
          free(v30);
        }
      }
    }
  }

  return v5;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, const void *a2, size_t a3)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v3 + 56);
  if (v4 == 3 || v4 == 12)
  {
    goto LABEL_6;
  }

  v8 = a2;
  result = mlir::Token::isKeyword((v3 + 56));
  if (result)
  {
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
    a2 = v8;
LABEL_6:
    *a2 = *(v3 + 64);
    *(v3 + 80) = *(v3 + 56);
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(v2 + 8) + 8), &v10);
    v6 = *(v2 + 8);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 1;
  }

  return result;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeywordOrString(uint64_t a1, uint64_t a2)
{
  __src = 0;
  __len = 0;
  if (((*(*a1 + 416))(a1, &__src) & 1) == 0)
  {
    return (*(*a1 + 264))(a1, a2);
  }

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
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  __dst = 0uLL;
  v7 = 0;
  if (*(a2 + 23) < 0)
  {
LABEL_13:
    operator delete(*a2);
  }

LABEL_14:
  *a2 = __dst;
  *(a2 + 16) = v7;
  return 1;
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, mlir::detail::Parser **a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, mlir::detail::Parser **a2, void *a3)
{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

{
  return mlir::detail::Parser::parseOptionalAttribute(*(a1 + 16), a2, a3);
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttrDict(uint64_t a1, mlir::NamedAttrList *a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
{
  if (((*(*a1 + 408))(a1, "attributes", 10) & 1) == 0)
  {
    return 1;
  }

  v4 = a1[2];

  return mlir::detail::Parser::parseAttributeDict(v4, a2);
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalSymbolName(void *a1, uint64_t *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t **a2)
{
  v3 = mlir::detail::Parser::parseType(*(a1 + 16));
  *a2 = v3;
  return v3 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t **a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(mlir::detail::Parser **a1, uint64_t a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalArrowTypeList(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t **a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
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

void mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseResourceHandle(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2))
  {
    v6 = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(a2);
    v28 = 0;
    v29 = 0;
    mlir::detail::Parser::parseResourceHandle(*(a1 + 16), v6, &v28, a3);
  }

  else
  {
    v7 = *(a1 + 16);
    v24 = 257;
    mlir::detail::Parser::emitError(v7, v23, &v28);
    if (!v28)
    {
      goto LABEL_10;
    }

    LODWORD(v25) = 3;
    *(&v25 + 1) = "dialect '";
    v26 = 9;
    if (v31 >= v32)
    {
      if (v30 > &v25 || v30 + 24 * v31 <= &v25)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v30 + 24 * v31;
    v9 = v25;
    *(v8 + 2) = v26;
    *v8 = v9;
    ++v31;
    if (v28 && (v10 = *(a2 + 8), v11 = *(a2 + 16), v27 = 261, *&v25 = v10, *(&v25 + 1) = v11, mlir::Diagnostic::operator<<(&v29, &v25), v28))
    {
      LODWORD(v25) = 3;
      *(&v25 + 1) = "' does not expect resource handles";
      v26 = 34;
      if (v31 >= v32)
      {
        if (v30 > &v25 || v30 + 24 * v31 <= &v25)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v30 + 24 * v31;
      v13 = v25;
      *(v12 + 2) = v26;
      *v12 = v13;
      ++v31;
      v14 = v28;
      *a3 = 0;
      a3[24] = 0;
      if (v14)
      {
        mlir::InFlightDiagnostic::report(&v28);
      }
    }

    else
    {
LABEL_10:
      *a3 = 0;
      a3[24] = 0;
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v37;
        v17 = __p;
        if (v37 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v37 = v15;
        operator delete(v17);
      }

      v18 = v34;
      if (v34)
      {
        v19 = v35;
        v20 = v34;
        if (v35 != v34)
        {
          do
          {
            v22 = *--v19;
            v21 = v22;
            *v19 = 0;
            if (v22)
            {
              MEMORY[0x259C63150](v21, 0x1000C8077774924);
            }
          }

          while (v19 != v18);
          v20 = v34;
        }

        v35 = v18;
        operator delete(v20);
      }

      if (v30 != &v33)
      {
        free(v30);
      }
    }
  }
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::pushCyclicParsing(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(*(a1 + 16) + 8);
  llvm::DenseMapBase<llvm::DenseMap<void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>,void *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<void *,void>,llvm::detail::DenseSetPair<void *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v2 + 112, &v5, v6);
  result = v7;
  if (v7 == 1)
  {
    v4 = *(v2 + 144);
    if (v4 >= *(v2 + 148))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(v2 + 136) + 8 * v4) = v5;
    ++*(v2 + 144);
  }

  return result;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::popCyclicParsing(uint64_t result)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
{
  v2 = *(*(a1 + 2) + 8);
  if (*(v2 + 56) != 2 || *(v2 + 72))
  {
    return mlir::AsmParser::parseKeyword(a1, a2);
  }

  *a2 = "";
  *(a2 + 1) = 0;
  return 1;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::codeCompleteExpectedTokens(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 16) + 8);
  if (*(v3 + 56) == 2 && !*(v3 + 72))
  {
    return (*(**(v3 + 160) + 48))(*(v3 + 160), a2, a3, 0);
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalLocationSpecifier(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 8);
  if (*(v3 + 56) != 64)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v12);
  v6 = *(v2 + 8);
  *(v6 + 56) = v12;
  *(v6 + 72) = v13;
  v15 = 0;
  v7 = *(a1 + 88);
  *&v12 = "expected '(' in location";
  v14 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v12))
  {
    v8 = *(a1 + 88);
    if (*(*(v8 + 8) + 56) == 5)
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v15) & 1) == 0)
    {
      return 0;
    }

    v9 = *(a1 + 88);
    *&v12 = "expected ')' in location";
    v14 = 259;
    if (mlir::detail::Parser::parseToken(v9, 28, &v12))
    {
      v10 = v15;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v10;
      return 1;
    }
  }

  return 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::getResultName@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(this + 40);
  if (v3)
  {
    v4 = (*(this + 32) + 16);
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
        return this;
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

  return this;
}

uint64_t anonymous namespace::CustomOpAsmParser::getNumResults(_anonymous_namespace_::CustomOpAsmParser *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  v2 = *(this + 4);
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

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 56);
  v11 = *(v4 + 72);
  v9 = *(v3 + 400);
  v10 = v5;
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
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

BOOL anonymous namespace::CustomOpAsmParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
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
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOperand(uint64_t a1, uint64_t a2, char a3)
{
  v6 = 0;
  v7 = 0uLL;
  {
    return 0;
  }

  v4 = v8;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 24) = v4;
  return 1;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalOperand(void *a1, uint64_t a2, uint64_t a3)
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

BOOL anonymous namespace::CustomOpAsmParser::parseOperandList(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v43 = a4;
  if (a3 || (v9 = *(a1[11] + 8), v44 = *(v9 + 56), v45 = *(v9 + 72), v44 == 6) || mlir::Token::isCodeCompletionFor(&v44, 6))
  {
    v40[0] = a1;
    v40[1] = a2;
    v40[2] = &v43;
    Loc = mlir::Token::getLoc((*(a1[11] + 8) + 56));
    {
      return 0;
    }

    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v41[0] = "expected ";
      v42 = 259;
      (*(*a1 + 24))(v46, a1, Loc, v41);
      if (v46[0])
      {
        LODWORD(v44) = 2;
        *(&v44 + 1) = a5;
        if (v48 >= v49)
        {
          if (v47 > &v44 || v47 + 24 * v48 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v47 + 24 * v48;
        v12 = v44;
        *(v11 + 2) = v45;
        *v11 = v12;
        v13 = ++v48;
        if (v46[0])
        {
          LODWORD(v44) = 3;
          *(&v44 + 1) = " operands";
          v45 = 9;
          if (v13 >= v49)
          {
            if (v47 > &v44 || v47 + 24 * v13 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v14 = v47 + 24 * v48;
          v15 = v44;
          *(v14 + 2) = v45;
          *v14 = v15;
          ++v48;
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
      v17 = result;
      if (v46[0])
      {
        mlir::InFlightDiagnostic::report(v46);
        result = v17;
      }

      if (v56 == 1)
      {
        if (v55 != &v56)
        {
          free(v55);
        }

        v18 = __p;
        if (__p)
        {
          v19 = v54;
          v20 = __p;
          if (v54 != __p)
          {
            do
            {
              v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
            }

            while (v19 != v18);
            v20 = __p;
          }

          v54 = v18;
          operator delete(v20);
        }

        v21 = v51;
        result = v17;
        if (!v51)
        {
          goto LABEL_67;
        }

        v22 = v52;
        v23 = v51;
        if (v52 == v51)
        {
LABEL_66:
          v52 = v21;
          operator delete(v23);
          result = v17;
LABEL_67:
          if (v47 != &v50)
          {
            free(v47);
            return v17;
          }

          return result;
        }

        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
LABEL_65:
        v23 = v51;
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

  if ((v44 - 21) > 1)
  {
    v33 = a1[11];
    v41[0] = "expected operand";
    v42 = 259;
    mlir::detail::Parser::emitWrongTokenError(v33, v41, v46);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    v17 = result;
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
      result = v17;
    }

    if (v56)
    {
      if (v55 != &v56)
      {
        free(v55);
        result = v17;
      }

      v34 = __p;
      if (__p)
      {
        v35 = v54;
        v36 = __p;
        if (v54 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v54 = v34;
        operator delete(v36);
        result = v17;
      }

      v21 = v51;
      if (!v51)
      {
        goto LABEL_67;
      }

      v37 = v52;
      v23 = v51;
      if (v52 == v51)
      {
        goto LABEL_66;
      }

      do
      {
        v39 = *--v37;
        v38 = v39;
        *v37 = 0;
        if (v39)
        {
          MEMORY[0x259C63150](v38, 0x1000C8077774924);
        }
      }

      while (v37 != v21);
      goto LABEL_65;
    }
  }

  else
  {
    v26 = a1[11];
    v41[0] = "unexpected delimiter";
    v42 = 259;
    mlir::detail::Parser::emitError(v26, v41, v46);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    v17 = result;
    if (v46[0])
    {
      mlir::InFlightDiagnostic::report(v46);
      result = v17;
    }

    if (v56)
    {
      if (v55 != &v56)
      {
        free(v55);
        result = v17;
      }

      v27 = __p;
      if (__p)
      {
        v28 = v54;
        v29 = __p;
        if (v54 != __p)
        {
          do
          {
            v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
          }

          while (v28 != v27);
          v29 = __p;
        }

        v54 = v27;
        operator delete(v29);
        result = v17;
      }

      v21 = v51;
      if (!v51)
      {
        goto LABEL_67;
      }

      v30 = v52;
      v23 = v51;
      if (v52 == v51)
      {
        goto LABEL_66;
      }

      do
      {
        v32 = *--v30;
        v31 = v32;
        *v30 = 0;
        if (v32)
        {
          MEMORY[0x259C63150](v31, 0x1000C8077774924);
        }
      }

      while (v30 != v21);
      goto LABEL_65;
    }
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::resolveOperand(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  if (result)
  {
    v8 = *(a4 + 8);
    if (v8 >= *(a4 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a4 + 8 * v8) = result;
    ++*(a4 + 8);
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t *a3, size_t a4, const llvm::Twine *a5, uint64_t a6, int a7)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x200000000;
  v25[2] = &v29;
  __src = v28;
  v27 = 0x100000000;
  v25[0] = a1;
  v25[1] = &__src;
  v24 = 0;
  {
    if (v24)
    {
      v13 = mlir::AffineMapAttr::get(v24);
      *a3 = v13;
      NamedAttr = mlir::Builder::getNamedAttr(*(a1 + 88), a4, a5, v13);
      mlir::NamedAttrList::push_back(a6, NamedAttr, v15);
    }

    v16 = v29;
    v17 = v30;
    *(a2 + 8) = 0;
    if (v17 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v17)
    {
      memcpy(*a2, v16, 32 * v17);
      v20 = *(a2 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = (v20 + v17);
    *(a2 + 8) = v21;
    v22 = v27;
    if (v27 + v21 > *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v27)
    {
      memcpy((*a2 + 32 * v21), __src, 32 * v27);
      LODWORD(v21) = *(a2 + 8);
    }

    *(a2 + 8) = v21 + v22;
    v18 = 1;
    v19 = __src;
    if (__src != v28)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = 0;
    v19 = __src;
    if (__src != v28)
    {
LABEL_15:
      free(v19);
    }
  }

  if (v29 != v31)
  {
    free(v29);
  }

  return v18;
}

BOOL anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgument(mlir::AsmParser *a1, uint64_t a2, int a3, int a4)
{
  v13[9] = *MEMORY[0x277D85DE8];
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

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalArgument(void *a1)
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

uint64_t anonymous namespace::CustomOpAsmParser::parseArgumentList(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
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
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalRegion(void *a1)
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

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalRegion(uint64_t a1)
{
  if (*(*(*(a1 + 88) + 8) + 56) == 20)
  {
    operator new();
  }

  return 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalSuccessor(_anonymous_namespace_::CustomOpAsmParser *this, mlir::Block **a2)
{
  v2 = *(*(this + 11) + 8);
  v4 = *(v2 + 56);
  v3 = v2 + 56;
  if (v4 == 7)
  {
    return (*(*this + 800))(this, a2) | 0x100u;
  }

  v5 = this;
  v6 = a2;
  isCodeCompletionFor = mlir::Token::isCodeCompletionFor(v3, 7);
  a2 = v6;
  v8 = isCodeCompletionFor;
  this = v5;
  if (v8)
  {
    return (*(*this + 800))(this, a2) | 0x100u;
  }

  else
  {
    return 0;
  }
}

BOOL anonymous namespace::CustomOpAsmParser::parseSuccessorAndUseList(void *a1, uint64_t a2, uint64_t a3)
{
  v34[16] = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 800))(a1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    return 1;
  }

  v5 = a1[11];
  v32 = v34;
  v33 = 0x400000000;
  {
    if (v33)
    {
      v29 = v31;
      v30 = 0x400000000;
      *&v24 = "expected ':' in operand list";
      LOWORD(v26) = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, &v24) & 1) != 0 && (mlir::detail::Parser::parseTypeListNoParens(v5, &v29))
      {
        if (v33 == v30)
        {
          if (*(a3 + 12) < v33)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v33)
          {
            v6 = 0;
            v7 = 0;
            v8 = 32 * v33;
            while (1)
            {
              v9 = *&v32[v7 + 16];
              v24 = *&v32[v7];
              v25 = v9;
              v11 = v10 == 0;
              if (!v10)
              {
                break;
              }

              v12 = *(a3 + 8);
              if (v12 >= *(a3 + 12))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(*a3 + 8 * v12) = v10;
              ++*(a3 + 8);
              v7 += 32;
              v6 += 8;
              if (v8 == v7)
              {
                goto LABEL_38;
              }
            }
          }

          else
          {
LABEL_38:
            v11 = 0;
          }
        }

        else
        {
          v20 = "expected ";
          v21 = 259;
          mlir::detail::Parser::emitError(v5, &v20, &v24);
          if (v24)
          {
            LODWORD(v22) = 5;
            *(&v22 + 1) = v33;
            if (v26 >= v27)
            {
              if (*(&v25 + 1) > &v22 || *(&v25 + 1) + 24 * v26 <= &v22)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v14 = *(&v25 + 1) + 24 * v26;
            v15 = v22;
            *(v14 + 16) = v23;
            *v14 = v15;
            v16 = ++v26;
            if (v24)
            {
              LODWORD(v22) = 3;
              *(&v22 + 1) = " types to match operand list";
              v23 = 28;
              if (v16 >= v27)
              {
                if (*(&v25 + 1) > &v22 || *(&v25 + 1) + 24 * v16 <= &v22)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v17 = *(&v25 + 1) + 24 * v26;
              v18 = v22;
              *(v17 + 16) = v23;
              *v17 = v18;
              ++v26;
            }
          }

          v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v24);
          if (v24)
          {
            mlir::InFlightDiagnostic::report(&v24);
          }

          if (v28 == 1)
          {
            mlir::Diagnostic::~Diagnostic((&v24 + 8));
          }

          v11 = !v19;
        }
      }

      else
      {
        v11 = 1;
      }

      if (v29 != v31)
      {
        free(v29);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  if (v32 != v34)
  {
    free(v32);
  }

  return (v11 & 1) == 0 && ((*(*a1 + 296))(a1) & 1) != 0;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(mlir::detail::Parser **a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 36))(a1))
  {
    v9[0] = a1;
    v9[1] = a2;
    v9[2] = a3;
    v6 = 1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  return v7 | (v6 << 8);
}

uint64_t anonymous namespace::OperationParser::parseLocationAlias(uint64_t a1, uint64_t *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v70 = *(v4 + 56);
  v71 = *(v4 + 72);
  v5 = v71;
  *(v4 + 80) = v70;
  *(v4 + 96) = v5;
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v75);
  v7 = *(a1 + 8);
  *(v7 + 56) = v75;
  *(v7 + 72) = v76;
  if (v71)
  {
    v9 = (*(&v70 + 1) + 1);
  }

  else
  {
    v9 = *(&v70 + 1);
  }

  v8 = v71 != 0;
  v10 = (v71 - v8);
  if (v71 >= 2)
  {
    v11 = memchr(v9, 46, v71 - v8);
    if (v11 && v11 - v9 != -1)
    {
      Loc = mlir::Token::getLoc(&v70);
      v69 = 257;
      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, Loc);
      mlir::emitError(EncodedSourceLocation, &v67, &v75);
      if (*(*(a1 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(&v75);
      }

      if (v75)
      {
        LODWORD(v72) = 3;
        *(&v72 + 1) = "expected location, but found dialect attribute: '#";
        v73 = 50;
        if (v78 >= v79)
        {
          if (v77 > &v72 || v77 + 24 * v78 <= &v72)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = v77 + 24 * v78;
        v55 = v72;
        *(v54 + 2) = v73;
        *v54 = v55;
        ++v78;
        if (v75)
        {
          v74 = 261;
          *&v72 = v9;
          *(&v72 + 1) = v10;
          mlir::Diagnostic::operator<<(&v75 + 8, &v72);
          if (v75)
          {
            LODWORD(v72) = 3;
            *(&v72 + 1) = "'";
            v73 = 1;
            if (v78 >= v79)
            {
              if (v77 > &v72 || v77 + 24 * v78 <= &v72)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v56 = v77 + 24 * v78;
            v57 = v72;
            *(v56 + 2) = v73;
            *v56 = v57;
            ++v78;
          }
        }
      }

      v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }

      if (v86 == 1)
      {
        if (v85 != &v86)
        {
          free(v85);
        }

        v58 = __p;
        if (__p)
        {
          v59 = v84;
          v60 = __p;
          if (v84 != __p)
          {
            do
            {
              v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
            }

            while (v59 != v58);
            v60 = __p;
          }

          v84 = v58;
          operator delete(v60);
        }

        v37 = v81;
        if (!v81)
        {
          goto LABEL_86;
        }

        v61 = v82;
        v39 = v81;
        if (v82 == v81)
        {
LABEL_85:
          v82 = v37;
          operator delete(v39);
LABEL_86:
          if (v77 != &v80)
          {
            free(v77);
          }

          return v33;
        }

        do
        {
          v63 = *--v61;
          v62 = v63;
          *v61 = 0;
          if (v63)
          {
            MEMORY[0x259C63150](v62, 0x1000C8077774924);
          }
        }

        while (v61 != v37);
LABEL_84:
        v39 = v81;
        goto LABEL_85;
      }

      return v33;
    }
  }

  v13 = *(a1 + 8);
  v14 = *(v13 + 152);
  if (v14)
  {
    LocRange = mlir::Token::getLocRange(&v70);
    mlir::AsmParserState::addAttrAliasUses(v14, v9, v10, LocRange, v16);
    v13 = *(a1 + 8);
  }

  v17 = *(v13 + 104);
  v18 = llvm::StringMapImpl::hash(v9, v10, v6);
  Key = llvm::StringMapImpl::FindKey(v17, v9, v10, v18);
  if (Key == -1 || Key == *(v17 + 8) || (v21 = *(*v17 + 8 * Key), (v22 = *(v21 + 8)) == 0))
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 368) - *(a1 + 360)) >> 3);
    v41 = mlir::UnknownLoc::get(***(a1 + 8), v20);
    v42 = mlir::Token::getLoc(&v70);
    v43 = *(a1 + 368);
    v44 = *(a1 + 376);
    if (v43 >= v44)
    {
      v48 = *(a1 + 360);
      v49 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v48) >> 3) + 1;
      if (v49 > 0xAAAAAAAAAAAAAAALL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v50 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v48) >> 3);
      if (2 * v50 > v49)
      {
        v49 = 2 * v50;
      }

      if (v50 >= 0x555555555555555)
      {
        v51 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v51 = v49;
      }

      if (v51)
      {
        if (v51 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v64 = (8 * ((v43 - v48) >> 3));
      *v64 = v42;
      v64[1] = v9;
      v64[2] = v10;
      v45 = v64 + 3;
      v65 = v64 - (v43 - v48);
      memcpy(v65, v48, v43 - v48);
      *(a1 + 360) = v65;
      *(a1 + 368) = v45;
      *(a1 + 376) = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v43 = v42;
      v43[1] = v9;
      v45 = v43 + 3;
      v43[2] = v10;
    }

    *(a1 + 368) = v45;
    return 1;
  }

  if (mlir::LocationAttr::classof(*(v21 + 8)))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  *a2 = v23;
  if (v23)
  {
    return 1;
  }

  v24 = mlir::Token::getLoc(&v70);
  v74 = 257;
  v25 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v24);
  mlir::emitError(v25, &v72, &v75);
  if (*(*(a1 + 8) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v75);
  }

  if (v75)
  {
    LODWORD(v67) = 3;
    *(&v67 + 1) = "expected location, but found '";
    v68 = 30;
    if (v78 >= v79)
    {
      if (v77 > &v67 || v77 + 24 * v78 <= &v67)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v26 = v77 + 24 * v78;
    v27 = v67;
    *(v26 + 2) = v68;
    *v26 = v27;
    ++v78;
    if (v75)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v67, v22);
      if (v78 >= v79)
      {
        if (v77 > &v67 || v77 + 24 * v78 <= &v67)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v77 + 24 * v78;
      v29 = v67;
      *(v28 + 2) = v68;
      *v28 = v29;
      v30 = ++v78;
      if (v75)
      {
        LODWORD(v67) = 3;
        *(&v67 + 1) = "'";
        v68 = 1;
        if (v30 >= v79)
        {
          if (v77 > &v67 || v77 + 24 * v30 <= &v67)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v77 + 24 * v78;
        v32 = v67;
        *(v31 + 2) = v68;
        *v31 = v32;
        ++v78;
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v75);
  if (v75)
  {
    mlir::InFlightDiagnostic::report(&v75);
  }

  if (v86 == 1)
  {
    if (v85 != &v86)
    {
      free(v85);
    }

    v34 = __p;
    if (__p)
    {
      v35 = v84;
      v36 = __p;
      if (v84 != __p)
      {
        do
        {
          v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
        }

        while (v35 != v34);
        v36 = __p;
      }

      v84 = v34;
      operator delete(v36);
    }

    v37 = v81;
    if (!v81)
    {
      goto LABEL_86;
    }

    v38 = v82;
    v39 = v81;
    if (v82 == v81)
    {
      goto LABEL_85;
    }

    do
    {
      v47 = *--v38;
      v46 = v47;
      *v38 = 0;
      if (v47)
      {
        MEMORY[0x259C63150](v46, 0x1000C8077774924);
      }
    }

    while (v38 != v37);
    goto LABEL_84;
  }

  return v33;
}

BOOL anonymous namespace::OperationParser::parseGenericOperationAfterOpName(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9, uint64_t a10)
{
  v101[32] = *MEMORY[0x277D85DE8];
  v80 = a9;
  v81 = a10;
  v99 = v101;
  v100 = 0x800000000;
  if (*(a3 + 16))
  {
    if (*(a4 + 16))
    {
LABEL_3:
      mlir::BlockRange::BlockRange(&v84, *a4, *(a4 + 8));
      mlir::OperationState::addSuccessors(a2, v84, *(&v84 + 1));
      goto LABEL_21;
    }
  }

  else
  {
    v17 = a4;
    *&v84 = "expected '(' to start operand list";
    LOWORD(v86) = 259;
    if ((mlir::detail::Parser::parseToken(a1, 21, &v84) & 1) == 0)
    {
      goto LABEL_59;
    }

    {
      goto LABEL_59;
    }

    v95 = "expected ')' to end operand list";
    v98 = 259;
    if ((mlir::detail::Parser::parseToken(a1, 28, &v95) & 1) == 0)
    {
      goto LABEL_59;
    }

    v18 = v99;
    v19 = v100;
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
      v20 = *(a2 + 8);
      if (v20[2] == &mlir::detail::TypeIDResolver<void,void>::id)
      {
        goto LABEL_14;
      }
    }

    if (((*(*v20 + 4))(v20, mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id) & 1) == 0)
    {
      v95 = "successors in non-terminator";
      v98 = 259;
      mlir::detail::Parser::emitError(a1, &v95, &v84);
      v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
      if (v84)
      {
        mlir::InFlightDiagnostic::report(&v84);
      }

      if (v94[0] != 1)
      {
        goto LABEL_60;
      }

      if (v93 != v94)
      {
        free(v93);
      }

      v74 = __p;
      if (__p)
      {
        v75 = v92;
        v76 = __p;
        if (v92 != __p)
        {
          do
          {
            v75 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v75 - 1);
          }

          while (v75 != v74);
          v76 = __p;
        }

        v92 = v74;
        operator delete(v76);
      }

      v69 = v89;
      if (v89)
      {
        v77 = v90;
        v71 = v89;
        if (v90 != v89)
        {
          do
          {
            v79 = *--v77;
            v78 = v79;
            *v77 = 0;
            if (v79)
            {
              MEMORY[0x259C63150](v78, 0x1000C8077774924);
            }
          }

          while (v77 != v69);
          goto LABEL_108;
        }

LABEL_109:
        v90 = v69;
        operator delete(v71);
      }

LABEL_110:
      if (v85[1] != &v88)
      {
        free(v85[1]);
      }

      goto LABEL_60;
    }

LABEL_14:
    v95 = v97;
    v96 = 0x200000000;
    *&v84 = "expected '['";
    LOWORD(v86) = 259;
    {
      mlir::BlockRange::BlockRange(&v84, v95, v96);
      mlir::OperationState::addSuccessors(a2, v84, *(&v84 + 1));
      v21 = 0;
      v22 = v95;
      if (v95 == v97)
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
      v22 = v95;
      if (v95 == v97)
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
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v84);
      v24 = *(a1 + 1);
      *(v24 + 56) = v84;
      *(v24 + 72) = v85[0];
      v25 = mlir::detail::Parser::parseAttribute(a1, 0);
      *(a2 + 248) = v25;
      if (!v25)
      {
        goto LABEL_59;
      }

      *&v84 = "expected '>' to close properties";
      LOWORD(v86) = 259;
      if ((mlir::detail::Parser::parseToken(a1, 19, &v84) & 1) == 0)
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
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v84);
      v27 = *(a1 + 1);
      *(v27 + 56) = v84;
      *(v27 + 72) = v85[0];
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
      llvm::SmallVectorBase<unsigned int>::grow_pod();
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

  if (v81)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_40;
  }

  *&v84 = "expected ':' followed by operation type";
  LOWORD(v86) = 259;
  if ((mlir::detail::Parser::parseToken(a1, 15, &v84) & 1) == 0 || (Loc = mlir::Token::getLoc((*(a1 + 1) + 56)), EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, Loc), (v50 = mlir::detail::Parser::parseType(a1)) == 0))
  {
LABEL_59:
    v48 = 0;
    goto LABEL_60;
  }

  if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v95 = "expected function type";
    v98 = 259;
    mlir::emitError(EncodedSourceLocation, &v95, &v84);
    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
    if (v84)
    {
      mlir::InFlightDiagnostic::report(&v84);
    }

    if (v94[0] == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v84 + 8));
    }

    goto LABEL_60;
  }

  if ((v81 & 1) == 0)
  {
    LOBYTE(v81) = 1;
  }

  v80 = v50;
LABEL_40:
  Results = mlir::FunctionType::getResults(&v80);
  v34 = 8 * v32;
  v35 = *(a2 + 72);
  if (v35 + ((8 * v32) >> 3) > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v32)
  {
    memcpy((*(a2 + 64) + 8 * v35), Results, v34);
    LODWORD(v35) = *(a2 + 72);
  }

  *(a2 + 72) = v35 + (v34 >> 3);
  Inputs = mlir::FunctionType::getInputs(&v80);
  v38 = v37;
  v39 = *(a3 + 8);
  if (v37 != v39)
  {
    v52 = v39 == 1;
    v53 = "s";
    if (v52)
    {
      v53 = "";
    }

    v54 = *v53;
    v95 = "expected ";
    v98 = 259;
    mlir::emitError(EncodedSourceLocation, &v95, &v84);
    if (v84)
    {
      v55 = *(a3 + 8);
      LODWORD(v82) = 5;
      *(&v82 + 1) = v55;
      if (v86 >= v87)
      {
        if (v85[1] > &v82 || v85[1] + 24 * v86 <= &v82)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v56 = v85[1] + 24 * v86;
      v57 = v82;
      *(v56 + 2) = v83;
      *v56 = v57;
      v58 = ++v86;
      if (v84)
      {
        LODWORD(v82) = 3;
        *(&v82 + 1) = " operand type";
        v83 = 13;
        if (v58 >= v87)
        {
          if (v85[1] > &v82 || v85[1] + 24 * v58 <= &v82)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v59 = v85[1] + 24 * v86;
        v60 = v82;
        *(v59 + 2) = v83;
        *v59 = v60;
        ++v86;
        if (v84)
        {
          mlir::Diagnostic::operator<<(&v84 + 8, v54);
          if (v84)
          {
            LODWORD(v82) = 3;
            *(&v82 + 1) = " but had ";
            v83 = 9;
            if (v86 >= v87)
            {
              if (v85[1] > &v82 || v85[1] + 24 * v86 <= &v82)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v61 = v85[1] + 24 * v86;
            v62 = v82;
            *(v61 + 2) = v83;
            *v61 = v62;
            v63 = ++v86;
            if (v84)
            {
              LODWORD(v82) = 5;
              *(&v82 + 1) = v38;
              if (v63 >= v87)
              {
                if (v85[1] > &v82 || v85[1] + 24 * v63 <= &v82)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v64 = v85[1] + 24 * v86;
              v65 = v82;
              *(v64 + 2) = v83;
              *v64 = v65;
              ++v86;
            }
          }
        }
      }
    }

    v48 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v84);
    if (v84)
    {
      mlir::InFlightDiagnostic::report(&v84);
    }

    if (v94[0] != 1)
    {
      goto LABEL_60;
    }

    if (v93 != v94)
    {
      free(v93);
    }

    v66 = __p;
    if (__p)
    {
      v67 = v92;
      v68 = __p;
      if (v92 != __p)
      {
        do
        {
          v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
        }

        while (v67 != v66);
        v68 = __p;
      }

      v92 = v66;
      operator delete(v68);
    }

    v69 = v89;
    if (v89)
    {
      v70 = v90;
      v71 = v89;
      if (v90 != v89)
      {
        do
        {
          v73 = *--v70;
          v72 = v73;
          *v70 = 0;
          if (v73)
          {
            MEMORY[0x259C63150](v72, 0x1000C8077774924);
          }
        }

        while (v70 != v69);
LABEL_108:
        v71 = v89;
        goto LABEL_109;
      }

      goto LABEL_109;
    }

    goto LABEL_110;
  }

  if (v37)
  {
    v40 = Inputs;
    v41 = 0;
    v42 = 32 * v37;
    while (1)
    {
      v43 = (*a3 + v41);
      v44 = v43[1];
      v84 = *v43;
      *v85 = v44;
      v46 = *(a2 + 24);
      if (v46 >= *(a2 + 28))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a2 + 16) + 8 * v46) = v45;
      v47 = *(a2 + 24) + 1;
      *(a2 + 24) = v47;
      if (!*(*(a2 + 16) + 8 * v47 - 8))
      {
        goto LABEL_59;
      }

      v41 += 32;
      ++v40;
      v48 = 1;
      if (v42 == v41)
      {
        goto LABEL_60;
      }
    }
  }

  v48 = 1;
LABEL_60:
  if (v99 != v101)
  {
    free(v99);
  }

  return v48;
}

uint64_t anonymous namespace::OperationParser::parseOptionalSSAUseList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v6 = *(v4 + 56);
  v5 = v4 + 56;
  if (v6 != 6 && !mlir::Token::isCodeCompletionFor(v5, 6))
  {
    return 1;
  }

  v20 = 0uLL;
  *&v21 = 0;
  {
    v7 = *(a2 + 8);
    v8 = *a2;
    if (v7 >= *(a2 + 12))
    {
      if (v8 > &v20 || v8 + 32 * v7 <= &v20)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v8 + 32 * *(a2 + 8));
    v10 = v21;
    *v9 = v20;
    v9[1] = v10;
    ++*(a2 + 8);
    v11 = *(a1 + 8);
    v12 = (v11 + 56);
    if (*(v11 + 56) == 16)
    {
      while (1)
      {
        v13 = *v12;
        *(v11 + 96) = *(v12 + 2);
        *(v11 + 80) = v13;
        mlir::Lexer::lexToken((*(a1 + 8) + 8), &v20);
        v14 = *(a1 + 8);
        *(v14 + 56) = v20;
        *(v14 + 72) = v21;
        v20 = 0uLL;
        *&v21 = 0;
        {
          break;
        }

        v15 = *(a2 + 8);
        v16 = *a2;
        if (v15 >= *(a2 + 12))
        {
          if (v16 <= &v20 && v16 + 32 * v15 > &v20)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v17 = (v16 + 32 * *(a2 + 8));
        v18 = v21;
        *v17 = v20;
        v17[1] = v18;
        ++*(a2 + 8);
        v11 = *(a1 + 8);
        v12 = (v11 + 56);
        if (*(v11 + 56) != 16)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return 0;
}

uint64_t anonymous namespace::OperationParser::parseRegion(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  v12 = *(v6 + 56);
  v13 = *(v6 + 72);
  v14[0] = "expected '{' to begin a region";
  v16 = 259;
  if ((mlir::detail::Parser::parseToken(a1, 20, v14) & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a1 + 1) + 152);
  if (v7)
  {
    mlir::AsmParserState::startRegionDefinition(v7);
  }

  if (a4 || (v8 = *(a1 + 1), *(v8 + 56) != 27))
  {
    mlir::Token::getLoc(&v12);
  }

  *(v8 + 80) = *(v8 + 56);
  *(v8 + 96) = *(v8 + 72);
  mlir::Lexer::lexToken((*(a1 + 1) + 8), v14);
  v10 = *(a1 + 1);
  *(v10 + 56) = *v14;
  *(v10 + 72) = v15[0];
  v11 = *(*(a1 + 1) + 152);
  if (v11)
  {
    mlir::AsmParserState::finalizeRegionDefinition(v11);
  }

  return 1;
}

uint64_t anonymous namespace::OperationParser::resolveSSAUse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64[2] = *MEMORY[0x277D85DE8];
  v43 = a3;
  v7 = v6;
  v8 = *(a2 + 24);
  v9 = *(v6 + 8);
  if (v9 <= v8)
  {
    v14 = (v8 + 1);
    if (v9 != v14)
    {
      if (v9 <= v14)
      {
        if (*(v6 + 12) < v14)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v9 != v14)
        {
          bzero((*v6 + 16 * v9), 16 * (v14 - v9));
        }
      }

      *(v7 + 8) = v14;
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
          mlir::Diagnostic::append<char const(&)[43],mlir::Type &,char const(&)[5],mlir::Type>(&v58, "' expects different type than prior uses: ", &v43, " vs ", v64);
        }

        mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v7 + 16 * *(a2 + 24) + 8));
        mlir::Diagnostic::attachNote();
      }

LABEL_22:
      v29 = *(*(a1 + 8) + 152);
      if (v29)
      {
        mlir::AsmParserState::addUses(v29, v10, a2, 1);
      }

      return v10;
    }
  }

  v15 = **v7;
  if (!v15)
  {
LABEL_19:
    v23 = *a2;
    v45 = a3;
    mlir::OperationName::OperationName(&v44, "builtin.unrealized_conversion_cast", 34, ***(a1 + 8));
    v24 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v23);
    v25 = v44;
    mlir::TypeRange::TypeRange(&v61, &v45, 1uLL);
    mlir::ValueRange::ValueRange(v55, 0, 0);
    v57 = v59;
    v58 = 0x400000000;
    v60 = 4;
    mlir::BlockRange::BlockRange(v64, 0, 0);
    v26 = mlir::Operation::create(v24, v25, v61, v62, v55[0], v55[1], &v57, 0, v64[0], v64[1], 0);
    if (v57 != v59)
    {
      free(v57);
    }

    v10 = v26 - 16;
    v57 = (v26 - 16);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>,mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>>::operator[](a1 + 336, &v57) = v23;
    v27 = *a2;
    v28 = (*v7 + 16 * *(a2 + 24));
    *v28 = v26 - 16;
    v28[1] = v27;
    goto LABEL_22;
  }

  v16 = *(a1 + 352);
  if (v16)
  {
    v17 = *(a1 + 336);
    v18 = 0x9DDFEA08EB382D69 * ((8 * **v7 - 0xAE502812AA7333) ^ HIDWORD(**v7));
    v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v15) ^ (v18 >> 47) ^ v18);
    v20 = v16 - 1;
    v21 = v20 & (-348639895 * ((v19 >> 47) ^ v19));
    v22 = *(v17 + 16 * v21);
    if (v22 == v15)
    {
      goto LABEL_19;
    }

    v31 = 1;
    while (v22 != -4096)
    {
      v32 = v21 + v31++;
      v21 = v32 & v20;
      v22 = *(v17 + 16 * v21);
      if (v22 == v15)
      {
        goto LABEL_19;
      }
    }
  }

  v33 = *a2;
  v57 = "reference to invalid result number";
  v59[8] = 259;
  v34 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v33);
  mlir::emitError(v34, &v57, v46);
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

    v35 = v51;
    if (v51)
    {
      v36 = v52;
      v37 = v51;
      if (v52 != v51)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = v51;
      }

      v52 = v35;
      operator delete(v37);
    }

    v38 = v49;
    if (v49)
    {
      v39 = v50;
      v40 = v49;
      if (v50 != v49)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v49;
      }

      v50 = v38;
      operator delete(v40);
    }

    if (v47 != &v48)
    {
      free(v47);
    }
  }

  return 0;
}

BOOL anonymous namespace::OperationParser::parseSSAUse(uint64_t a1, uint64_t a2, char a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = mlir::Token::getLoc((v4 + 56));
    *&v64 = "expected SSA operand";
    LOWORD(v67) = 259;
    v38 = mlir::detail::Parser::parseToken(a1, 6, &v64);
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
        v58[0] = "result number not allowed in argument list";
        v60 = 259;
        mlir::detail::Parser::emitError(a1, v58, &v64);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
        v46 = result;
        if (v64)
        {
          mlir::InFlightDiagnostic::report(&v64);
          result = v46;
        }

        if (v76 == 1)
        {
          if (v75 != &v76)
          {
            free(v75);
            result = v46;
          }

          v47 = v73;
          if (v73)
          {
            v48 = v74;
            v49 = v73;
            if (v74 != v73)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = v73;
            }

            v74 = v47;
            operator delete(v49);
            result = v46;
          }

          v50 = v71;
          if (v71)
          {
            v51 = v72;
            v52 = v71;
            if (v72 != v71)
            {
              do
              {
                v54 = *--v51;
                v53 = v54;
                *v51 = 0;
                if (v54)
                {
                  MEMORY[0x259C63150](v53, 0x1000C8077774924);
                }
              }

              while (v51 != v50);
              v52 = v71;
            }

            v72 = v50;
            operator delete(v52);
            result = v46;
          }

          if (v66 != &v68)
          {
            free(v66);
            return v46;
          }
        }

        return result;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber(v41);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v58[0] = "invalid SSA value result number";
        v60 = 259;
        mlir::detail::Parser::emitError(a1, v58, &v64);
        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v64);
        if (v64)
        {
          v44 = result;
          mlir::InFlightDiagnostic::report(&v64);
          result = v44;
        }

        if (v76 == 1)
        {
          v45 = result;
          mlir::Diagnostic::~Diagnostic((&v64 + 8));
          return v45;
        }

        return result;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v55 = *(a1 + 8);
      *(v55 + 80) = *(v55 + 56);
      *(v55 + 96) = *(v55 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v64);
      v56 = *(a1 + 8);
      *(v56 + 56) = v64;
      *(v56 + 72) = v65;
    }

    return 1;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v57 = v6 + 88 * v5;
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
      if (v6 == v57)
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
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0;
      DWORD2(v64) = 0;
      v68 = 0;
      v69 = 1;
      v66 = 0;
      v67 = 0;
      v65 = 0;
      *&v64 = &unk_2868A3EF8;
      v70 = v58;
      llvm::raw_ostream::SetBufferAndMode(&v64, 0, 0, 0);
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

        v63 = *(mlir::detail::OpResultImpl::getOwner(v17) + 48);
        mlir::OperationName::print(&v63, &v64);
        if (v66 - v67 <= 1)
        {
          v29 = &v64;
LABEL_36:
          llvm::raw_ostream::write(v29, ": ", 2uLL);
          goto LABEL_39;
        }

        *v67 = 8250;
        v67 += 2;
      }

      else
      {
        v27 = v67;
        if (v66 - v67 > 4)
        {
          *(v67 + 4) = 35;
          *v27 = 543650401;
          v67 += 5;
          v29 = llvm::raw_ostream::operator<<(&v64, *(v16 + 6));
          v30 = *(v29 + 4);
          if (*(v29 + 3) - v30 <= 1uLL)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = llvm::raw_ostream::write(&v64, "arg #", 5uLL);
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
      v63 = *(v16 + 1) & 0xFFFFFFFFFFFFFFF8;
      mlir::Type::print(&v63, &v64);
      if (*(v15 + 4) >= 2u)
      {
        v31 = v67;
        if (v66 - v67 > 4)
        {
          *(v67 + 4) = 46;
          *v31 = 774774828;
          v67 += 5;
        }

        else
        {
          llvm::raw_ostream::write(&v64, ", ...", 5uLL);
        }
      }

      v32 = *v15;
      v33 = *(*(a1 + 8) + 160);
      *__p = *v58;
      v62 = v59;
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0;
      (*(*v33 + 32))(v33, v15 + 5, v32, __p);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
        llvm::raw_ostream::~raw_ostream(&v64);
        if (SHIBYTE(v59) < 0)
        {
LABEL_47:
          operator delete(v58[0]);
          goto LABEL_48;
        }
      }

      else
      {
        llvm::raw_ostream::~raw_ostream(&v64);
        if (SHIBYTE(v59) < 0)
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

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseSuccessors(llvm::SmallVectorImpl<mlir::Block *> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v6 = 0;
  v4 = *(a1 + 8);
  v5 = *(v4 + 8);
  if (v5 >= *(v4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*v4 + 8 * v5) = v6;
  ++*(v4 + 8);
  return result;
}

BOOL anonymous namespace::OperationParser::parseSuccessor(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  v4 = *(v3 + 14);
  if (v4 == 7)
  {
    v13 = v3[8];
    v14 = v3[9];
    Loc = mlir::Token::getLoc((v3 + 7));
    v16 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      operator new();
    }

    v17 = *(this + 1);
    v18 = *(v17 + 152);
    if (v18)
    {
      mlir::AsmParserState::addUses(v18, v16, &Loc, 1);
      v16 = *BlockInfoByName;
      v17 = *(this + 1);
    }

    *a2 = v16;
    *(v17 + 80) = *(v17 + 56);
    *(v17 + 96) = *(v17 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v35);
    v19 = *(this + 1);
    *(v19 + 56) = v35;
    *(v19 + 72) = v36;
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

        v28 = &v7[4 * v8];
        if (i == v28)
        {
          return 0;
        }

        while (1)
        {
          v29 = *i;
          v30 = i[1];
          i += 4;
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v29, v30);
          if (i == v28)
          {
            break;
          }

          while (*i >= 0xFFFFFFFFFFFFFFFELL)
          {
            i += 4;
            if (i == v28)
            {
              return 0;
            }
          }

          v11 = 0;
          if (i == v28)
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
    v32 = "expected block name";
    v33 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v32, &v35);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v35);
    if (v35)
    {
      mlir::InFlightDiagnostic::report(&v35);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v42;
        v22 = __p;
        if (v42 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v42 = v20;
        operator delete(v22);
      }

      v23 = v39;
      if (v39)
      {
        v24 = v40;
        v25 = v39;
        if (v40 != v39)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v39;
        }

        v40 = v23;
        operator delete(v25);
      }

      if (v37 != &v38)
      {
        free(v37);
      }
    }
  }

  return v11;
}

char **anonymous namespace::OperationParser::getBlockInfoByName(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, char ***a4)
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

_OWORD *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
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
      v10 = &result[2 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = xmmword_25736B6D0;
        *v13 = xmmword_25736B6D0;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = xmmword_25736B6D0;
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

    llvm::deallocate_buffer(v4, v16);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    if (((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_25;
    }

    v21 = ((v20 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v21 & 0xFFFFFFFFFFFFFFELL)];
    v22 = result + 2;
    v23 = v21 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v22 - 2) = xmmword_25736B6D0;
      *v22 = xmmword_25736B6D0;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_25:
      v24 = &result[2 * v20];
      do
      {
        *v10 = xmmword_25736B6D0;
        v10 += 2;
      }

      while (v10 != v24);
    }
  }

  return result;
}

BOOL anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(this + 1);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(this + 50) = v4;
    *(this + 51) = v4 + 32;
    while (1)
    {
      v27 = *(*(this + 1) + 56);
      if (v27 == 7 || v27 == 27)
      {
        break;
      }

      {
        return 0;
      }
    }

    return 1;
  }

  Loc = mlir::Token::getLoc((v5 + 56));
  v7 = *(this + 1);
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v49 = "expected block name";
  LOWORD(v52) = 259;
  if ((mlir::detail::Parser::parseToken(this, 7, &v49) & 1) == 0)
  {
    return 0;
  }

  v11 = BlockInfoByName;
  BlockInfoByName[1] = Loc;
  v12 = *BlockInfoByName;
  if (!*BlockInfoByName)
  {
    v19 = *a2;
    if (!*a2)
    {
      operator new();
    }

    v20 = 0;
    *BlockInfoByName = v19;
    v21 = *(this + 1);
    v22 = *(v21 + 152);
    if (!v22)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = *(this + 34) + 24 * *(this + 70);
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
      v19 = *BlockInfoByName;
      v20 = *BlockInfoByName;
      v21 = *(this + 1);
      v22 = *(v21 + 152);
      if (!v22)
      {
LABEL_9:
        *a2 = v19;
        {
          v49 = "expected ':' after block name";
          LOWORD(v52) = 259;
          if (mlir::detail::Parser::parseToken(this, 15, &v49))
          {
            v23 = *a2 + 32;
            *(this + 50) = *a2;
            *(this + 51) = v23;
            do
            {
              v24 = *(*(this + 1) + 56);
              if (v24 == 7 || v24 == 27)
              {
                return 1;
              }
            }
          }
        }

        if (v20)
        {
          mlir::Block::dropAllDefinedValueUses(v20);
          mlir::Block::~Block(v20);
          MEMORY[0x259C63180]();
          return 0;
        }

        return 0;
      }

LABEL_8:
      mlir::AsmParserState::addDefinition(v22, v19, Loc);
      v19 = *v11;
      v21 = *(this + 1);
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

  v43[0] = "redefinition of block '";
  v44 = 259;
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, Loc);
  mlir::emitError(EncodedSourceLocation, v43, &v49);
  if (*(*(this + 1) + 56) == 1)
  {
    mlir::InFlightDiagnostic::abandon(&v49);
  }

  if (v49)
  {
    v47 = 261;
    *&v45 = v8;
    *(&v45 + 1) = v9;
    mlir::Diagnostic::operator<<(v50, &v45);
    if (v49)
    {
      LODWORD(v45) = 3;
      *(&v45 + 1) = "'";
      v46 = 1;
      if (v52 >= v53)
      {
        if (v51 > &v45 || v51 + 24 * v52 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v51 + 24 * v52;
      v33 = v45;
      *(v32 + 2) = v46;
      *v32 = v33;
      ++v52;
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v49);
  v34 = result;
  if (v49)
  {
    mlir::InFlightDiagnostic::report(&v49);
    result = v34;
  }

  if (v60 == 1)
  {
    if (v59 != &v60)
    {
      free(v59);
      result = v34;
    }

    v35 = __p;
    if (__p)
    {
      v36 = v58;
      v37 = __p;
      if (v58 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v58 = v35;
      operator delete(v37);
      result = v34;
    }

    v38 = v55;
    if (v55)
    {
      v39 = v56;
      v40 = v55;
      if (v56 != v55)
      {
        do
        {
          v42 = *--v39;
          v41 = v42;
          *v39 = 0;
          if (v42)
          {
            MEMORY[0x259C63150](v41, 0x1000C8077774924);
          }
        }

        while (v39 != v38);
        v40 = v55;
      }

      v56 = v38;
      operator delete(v40);
      result = v34;
    }

    if (v51 != &v54)
    {
      free(v51);
      return v34;
    }
  }

  return result;
}

void anonymous namespace::OperationParser::popSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v1 = *(this + 34);
  v2 = v1 + 24 * *(this + 70);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  *(v2 - 8) = 0;
  LODWORD(v2) = *(this + 70) - 1;
  *(this + 70) = v2;
  llvm::deallocate_buffer(*(v1 + 24 * v2), (16 * *(v1 + 24 * v2 + 16)));
}

uint64_t llvm::StringMap<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>,llvm::MallocAllocator>::operator[](llvm::StringMapImpl *a1, unsigned int *a2, const unsigned __int8 *a3)
{
  v6 = llvm::StringMapImpl::hash(a2, a3, a3);
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

  a3[v14] = 0;
  *v13 = a3;
  v13[1] = (v13 + 3);
  v13[2] = 0x100000000;
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

uint64_t *llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = v1;
  v8 = 0uLL;
  *&v9 = 0;
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
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0::operator() const(void)::{lambda(mlir::OpAsmParser::UnresolvedOperand,mlir::Type)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v26 = *(a2 + 8);
  v27 = *(a2 + 24);
  v4 = *(a1 + 24);
  if (**a1 != 1)
  {
    mlir::Lexer::getEncodedSourceLocation(*(v4 + 1) + 8, v3);
    mlir::Block::addArgument();
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = *(**(a1 + 16) + 48);
  if (v6 >= ((*(**(a1 + 16) + 56) - v7) >> 3))
  {
    v28[0] = "too many arguments specified in argument list";
    v29 = 259;
    mlir::detail::Parser::emitError(v4, v28, &v30);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
    if (v30)
    {
      mlir::InFlightDiagnostic::report(&v30);
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v19 = __p;
      if (__p)
      {
        v20 = v37;
        v21 = __p;
        if (v37 != __p)
        {
          do
          {
            v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v37 = v19;
        operator delete(v21);
      }

      v13 = v34;
      if (!v34)
      {
        goto LABEL_44;
      }

      v22 = v35;
      v15 = v34;
      if (v35 == v34)
      {
        goto LABEL_43;
      }

      do
      {
        v24 = *--v22;
        v23 = v24;
        *v22 = 0;
        if (v24)
        {
          MEMORY[0x259C63150](v23, 0x1000C8077774924);
        }
      }

      while (v22 != v13);
      goto LABEL_42;
    }
  }

  else
  {
    *v5 = v6 + 1;
    v8 = *(v7 + 8 * v6);
    if ((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8) == a3)
    {
      {
        v18 = *(*(v4 + 1) + 152);
        if (v18)
        {
          mlir::AsmParserState::addDefinition(v18, v8, v3);
        }

        v30 = v3;
        v31 = v26;
        v32 = v27;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v28[0] = "argument and block argument type mismatch";
      v29 = 259;
      mlir::detail::Parser::emitError(v4, v28, &v30);
      v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
      if (v30)
      {
        mlir::InFlightDiagnostic::report(&v30);
      }

      if (v39 == 1)
      {
        if (v38 != &v39)
        {
          free(v38);
        }

        v10 = __p;
        if (__p)
        {
          v11 = v37;
          v12 = __p;
          if (v37 != __p)
          {
            do
            {
              v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v37 = v10;
          operator delete(v12);
        }

        v13 = v34;
        if (!v34)
        {
          goto LABEL_44;
        }

        v14 = v35;
        v15 = v34;
        if (v35 == v34)
        {
LABEL_43:
          v35 = v13;
          operator delete(v15);
LABEL_44:
          if (v32 != &v33)
          {
            free(v32);
          }

          return v9;
        }

        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            MEMORY[0x259C63150](v16, 0x1000C8077774924);
          }
        }

        while (v14 != v13);
LABEL_42:
        v15 = v34;
        goto LABEL_43;
      }
    }
  }

  return v9;
}

uint64_t llvm::array_pod_sort_comparator<std::pair<char const*,mlir::Block *>>(void *a1, void *a2)
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

uint64_t mlir::Diagnostic::append<char const(&)[43],mlir::Type &,char const(&)[5],mlir::Type>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = *(a1 + 16);
  LODWORD(v20) = 3;
  *(&v20 + 1) = __s;
  v21 = v10;
  v12 = *(a1 + 24);
  if (v12 >= *(a1 + 28))
  {
    if (v11 > &v20 || v11 + 24 * v12 <= &v20)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = v11 + 24 * *(a1 + 24);
  v14 = v20;
  *(v13 + 16) = v21;
  *v13 = v14;
  ++*(a1 + 24);
  mlir::DiagnosticArgument::DiagnosticArgument(&v20, *a3);
  v15 = *(a1 + 24);
  v16 = *(a1 + 16);
  if (v15 >= *(a1 + 28))
  {
    if (v16 > &v20 || v16 + 24 * v15 <= &v20)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v16 + 24 * *(a1 + 24);
  v18 = v20;
  *(v17 + 16) = v21;
  *v17 = v18;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(a1, a4, a5);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOperandList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AsmParser::Delimiter,BOOL,int)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v8 = v2;
    llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(a1[1]);
    v2 = v8;
  }

  else
  {
    v5 = (*v3 + 32 * v4);
    *v5 = 0u;
    v5[1] = 0u;
    ++*(v3 + 8);
  }

  v6 = *(*v2 + 704);

  return v6();
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v1 = *(a1 + 8);
  v2 = *a1;
  if (v1 >= *(a1 + 12))
  {
    if (v2 > &v7 || v2 + 32 * v1 <= &v7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = (v2 + 32 * *(a1 + 8));
  v4 = v8;
  *v3 = v7;
  v3[1] = v4;
  v5 = (*(a1 + 8) + 1);
  *(a1 + 8) = v5;
  return *a1 + 32 * v5 - 32;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::Attribute &,llvm::StringRef,mlir::NamedAttrList &,mlir::AsmParser::Delimiter)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  v12 = 0uLL;
  *&v13 = 0;
  if (((*(*v4 + 704))(v4, &v12, 1) & 1) == 0)
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
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= &v12 && v9 + 32 * v7 > &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 32 * *v8);
  v11 = v13;
  *v10 = v12;
  v10[1] = v11;
  ++*v8;
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AffineExpr &)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  v12 = 0uLL;
  *&v13 = 0;
  if (((*(*v4 + 704))(v4, &v12, 1) & 1) == 0)
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
  if (v7 >= *(v5 + 12))
  {
    if (v9 <= &v12 && v9 + 32 * v7 > &v12)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = (v9 + 32 * *v8);
  v11 = v13;
  *v10 = v12;
  v10[1] = v11;
  ++*v8;
  return 1;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseArgumentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,mlir::AsmParser::Delimiter,BOOL,BOOL)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (v4 >= *(v3 + 12))
  {
    v8 = v2;
    llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(a1[1]);
    v2 = v8;
  }

  else
  {
    v5 = (*v3 + (v4 << 6));
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    ++*(v3 + 8);
  }

  v6 = *(*v2 + 752);

  return v6();
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 8);
  v2 = *a1;
  if (v1 >= *(a1 + 12))
  {
    if (v2 > &v9 || v2 + (v1 << 6) <= &v9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = (v2 + (*(a1 + 8) << 6));
  v4 = v9;
  v5 = v10;
  v6 = v12;
  v3[2] = v11;
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + (v7 << 6) - 64;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::{lambda(void)#1}>(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v2 + 8);
  if (v4 >= *(v2 + 12))
  {
    v7 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(v2);
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
    v12 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(v8);
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseCustomOperation(llvm::ArrayRef<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>>)::$_2>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v22 = "invalid properties ";
  v23 = 259;
  mlir::emitError(v4, &v22, &v27);
  if (v27)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, *a1[1]);
    if (v30 >= v31)
    {
      if (v29 > &v24 || v29 + 24 * v30 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v29 + 24 * v30;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v30;
    if (v27)
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " for op ";
      v25 = 8;
      if (v7 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v29 + 24 * v30;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v30;
    }
  }

  *&v24 = *(*(*a1[2] + 48) + 8);
  Value = mlir::StringAttr::getValue(&v24);
  if (v27)
  {
    v26 = 261;
    *&v24 = Value;
    *(&v24 + 1) = v11;
    mlir::Diagnostic::operator<<(&v28, &v24);
    if (v27)
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = ": ";
      v25 = 2;
      if (v30 >= v31)
      {
        if (v29 > &v24 || v29 + 24 * v30 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v29 + 24 * v30;
      v13 = v24;
      *(v12 + 2) = v25;
      *v12 = v13;
      ++v30;
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v27);
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

    v14 = __p;
    if (__p)
    {
      v15 = v36;
      v16 = __p;
      if (v36 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v36 = v14;
      operator delete(v16);
    }

    v17 = v33;
    if (v33)
    {
      v18 = v34;
      v19 = v33;
      if (v34 != v33)
      {
        do
        {
          v21 = *--v18;
          v20 = v21;
          *v18 = 0;
          if (v21)
          {
            MEMORY[0x259C63150](v20, 0x1000C8077774924);
          }
        }

        while (v18 != v17);
        v19 = v33;
      }

      v34 = v17;
      operator delete(v19);
    }

    if (v29 != &v32)
    {
      free(v29);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  mlir::emitError(**a1, &v20);
  if (v20)
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "'";
    v18 = 1;
    if (v23 >= v24)
    {
      if (v22 > &v17 || v22 + 24 * v23 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v22 + 24 * v23;
    v5 = v17;
    *(v4 + 2) = v18;
    *v4 = v5;
    ++v23;
    if (v20)
    {
      v6 = *(a1 + 8);
      v19 = 260;
      *&v17 = v6;
      mlir::Diagnostic::operator<<(&v21, &v17);
      if (v20)
      {
        LODWORD(v17) = 3;
        *(&v17 + 1) = "' op ";
        v18 = 5;
        if (v23 >= v24)
        {
          if (v22 > &v17 || v22 + 24 * v23 <= &v17)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v7 = v22 + 24 * v23;
        v8 = v17;
        *(v7 + 2) = v18;
        *v7 = v8;
        ++v23;
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v20);
  if (v20)
  {
    mlir::InFlightDiagnostic::report(&v20);
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
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
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
          v16 = *--v13;
          v15 = v16;
          *v13 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v13 != v12);
        v14 = v26;
      }

      v27 = v12;
      operator delete(v14);
    }

    if (v22 != &v25)
    {
      free(v22);
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_1>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v21 = "invalid properties ";
  v22 = 259;
  mlir::emitError(v4, &v21, &v26);
  if (v26)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v23, **(a1 + 8));
    if (v29 >= v30)
    {
      if (v28 > &v23 || v28 + 24 * v29 <= &v23)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v28 + 24 * v29;
    v6 = v23;
    *(v5 + 2) = v24;
    *v5 = v6;
    v7 = ++v29;
    if (v26)
    {
      LODWORD(v23) = 3;
      *(&v23 + 1) = " for op ";
      v24 = 8;
      if (v7 >= v30)
      {
        if (v28 > &v23 || v28 + 24 * v7 <= &v23)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v28 + 24 * v29;
      v9 = v23;
      *(v8 + 2) = v24;
      *v8 = v9;
      ++v29;
      if (v26)
      {
        v10 = *(a1 + 16);
        v25 = 260;
        *&v23 = v10;
        mlir::Diagnostic::operator<<(&v27, &v23);
        if (v26)
        {
          LODWORD(v23) = 3;
          *(&v23 + 1) = ": ";
          v24 = 2;
          if (v29 >= v30)
          {
            if (v28 > &v23 || v28 + 24 * v29 <= &v23)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = v28 + 24 * v29;
          v12 = v23;
          *(v11 + 2) = v24;
          *v11 = v12;
          ++v29;
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v26);
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
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
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
          v20 = *--v17;
          v19 = v20;
          *v17 = 0;
          if (v20)
          {
            MEMORY[0x259C63150](v19, 0x1000C8077774924);
          }
        }

        while (v17 != v16);
        v18 = v32;
      }

      v33 = v16;
      operator delete(v18);
    }

    if (v28 != &v31)
    {
      free(v28);
    }
  }
}

uint64_t llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<unsigned int &,llvm::SMLoc&>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = (*a1 + 16 * v4);
  *v5 = *a2;
  v5[1] = v3;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  return *a1 + 16 * v5 - 16;
}

uint64_t mlir::Diagnostic::append<char const(&)[26],llvm::StringRef &,char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, void *a3, char *a4, unsigned int *a5, char *a6, uint64_t *a7)
{
  v14 = strlen(__s);
  v15 = *(a1 + 16);
  LODWORD(v21) = 3;
  *(&v21 + 1) = __s;
  v22 = v14;
  v16 = *(a1 + 24);
  if (v16 >= *(a1 + 28))
  {
    if (v15 > &v21 || v15 + 24 * v16 <= &v21)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v15 + 24 * *(a1 + 24);
  v18 = v21;
  *(v17 + 16) = v22;
  *v17 = v18;
  ++*(a1 + 24);
  v23 = 261;
  v19 = a3[1];
  *&v21 = *a3;
  *(&v21 + 1) = v19;
  mlir::Diagnostic::operator<<(a1, &v21);
  return mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(a1, a4, a5, a6, a7);
}

uint64_t mlir::Diagnostic::append<char const(&)[2],unsigned int &,char const(&)[12],mlir::Type>(uint64_t a1, char *__s, unsigned int *a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v13 = *(a1 + 16);
  a1 += 16;
  v12 = v13;
  LODWORD(v24) = 3;
  *(&v24 + 1) = __s;
  v25 = v10;
  v14 = *(a1 + 8);
  if (v14 >= *(a1 + 12))
  {
    if (v12 > &v24 || v12 + 24 * v14 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = v12 + 24 * *(v11 + 24);
  v16 = v24;
  *(v15 + 16) = v25;
  *v15 = v16;
  v17 = *(v11 + 28);
  v18 = *(v11 + 24) + 1;
  *(v11 + 24) = v18;
  v19 = *a3;
  LODWORD(v24) = 5;
  *(&v24 + 1) = v19;
  v20 = *(v11 + 16);
  if (v18 >= v17)
  {
    if (v20 > &v24 || v20 + 24 * v18 <= &v24)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v20 + 24 * *(v11 + 24);
  v22 = v24;
  *(v21 + 16) = v25;
  *v21 = v22;
  ++*(v11 + 24);
  return mlir::Diagnostic::append<char const(&)[3],mlir::ShapedType &>(v11, a4, a5);
}

uint64_t llvm::array_pod_sort_comparator<char const*>(void *a1, void *a2)
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

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<anonymous namespace::OperationParser::finalize(void)::$_1>(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v113 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = **a1;
  v6 = *(a2 + 24);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    v6 = 0;
  }

  v99 = v6;
  if (!v6 || *v4[1] != mlir::OpaqueLoc::getUnderlyingTypeID(&v99))
  {
    goto LABEL_61;
  }

  v7 = *(v5 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v99);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = v4[2];
  v13 = llvm::StringMapImpl::hash(v9, v10, v12);
  Key = llvm::StringMapImpl::FindKey(v11, v9, v10, v13);
  if (Key == -1 || Key == *(v11 + 8) || (v15 = *(*v11 + 8 * Key), (v16 = *(v15 + 8)) == 0))
  {
    v98 = 257;
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(EncodedSourceLocation, v97, v102);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v102);
    }

    if (v102[0])
    {
      LODWORD(v100) = 3;
      *(&v100 + 1) = "operation location alias was never defined";
      v101 = 42;
      if (v104 >= v105)
      {
        if (v103 > &v100 || v103 + 24 * v104 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v103 + 24 * v104;
      v19 = v100;
      *(v18 + 2) = v101;
      *v18 = v19;
      ++v104;
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
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

      v21 = __p;
      if (__p)
      {
        v22 = v110;
        v23 = __p;
        if (v110 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v110 = v21;
        operator delete(v23);
      }

      v24 = v107;
      if (!v107)
      {
        goto LABEL_58;
      }

      v25 = v108;
      v26 = v107;
      if (v108 == v107)
      {
        goto LABEL_57;
      }

      do
      {
        v28 = *--v25;
        v27 = v28;
        *v25 = 0;
        if (v28)
        {
          MEMORY[0x259C63150](v27, 0x1000C8077774924);
        }
      }

      while (v25 != v24);
      goto LABEL_56;
    }
  }

  else
  {
    if (mlir::LocationAttr::classof(*(v15 + 8)))
    {
      *(a2 + 24) = v16;
      goto LABEL_61;
    }

    v98 = 257;
    v29 = mlir::Lexer::getEncodedSourceLocation(*(v5 + 8) + 8, v8);
    mlir::emitError(v29, v97, v102);
    if (*(*(v5 + 8) + 56) == 1)
    {
      mlir::InFlightDiagnostic::abandon(v102);
    }

    if (v102[0])
    {
      LODWORD(v100) = 3;
      *(&v100 + 1) = "expected location, but found '";
      v101 = 30;
      if (v104 >= v105)
      {
        if (v103 > &v100 || v103 + 24 * v104 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v30 = v103 + 24 * v104;
      v31 = v100;
      *(v30 + 2) = v101;
      *v30 = v31;
      ++v104;
      if (v102[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v100, v16);
        if (v104 >= v105)
        {
          if (v103 > &v100 || v103 + 24 * v104 <= &v100)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v32 = v103 + 24 * v104;
        v33 = v100;
        *(v32 + 2) = v101;
        *v32 = v33;
        v34 = ++v104;
        if (v102[0])
        {
          LODWORD(v100) = 3;
          *(&v100 + 1) = "'";
          v101 = 1;
          if (v34 >= v105)
          {
            if (v103 > &v100 || v103 + 24 * v34 <= &v100)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v35 = v103 + 24 * v104;
          v36 = v100;
          *(v35 + 2) = v101;
          *v35 = v36;
          ++v104;
        }
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
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

      v37 = __p;
      if (__p)
      {
        v38 = v110;
        v39 = __p;
        if (v110 != __p)
        {
          do
          {
            v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v110 = v37;
        operator delete(v39);
      }

      v24 = v107;
      if (!v107)
      {
        goto LABEL_58;
      }

      v40 = v108;
      v26 = v107;
      if (v108 == v107)
      {
LABEL_57:
        v108 = v24;
        operator delete(v26);
LABEL_58:
        if (v103 != v106)
        {
          free(v103);
        }

        goto LABEL_60;
      }

      do
      {
        v42 = *--v40;
        v41 = v42;
        *v40 = 0;
        if (v42)
        {
          MEMORY[0x259C63150](v41, 0x1000C8077774924);
        }
      }

      while (v40 != v24);
LABEL_56:
      v26 = v107;
      goto LABEL_57;
    }
  }

LABEL_60:
  if (!v20)
  {
    return 0;
  }

LABEL_61:
  v43 = *(a2 + 44);
  v44 = v43 & 0x7FFFFF;
  if ((v43 & 0x7FFFFF) != 0)
  {
    v45 = 0x1000C8077774924;
    v46 = ((a2 + 16 * ((v43 >> 23) & 1) + ((v43 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
    v94 = v46 + 24 * v44;
    while (1)
    {
      v47 = *(v46 + 8);
      if (v47 != v46)
      {
        break;
      }

LABEL_147:
      v46 += 24;
      if (v46 == v94)
      {
        return 1;
      }
    }

    v95 = v46;
LABEL_66:
    v48 = v47 - 8;
    v96 = v47;
    if (!v47)
    {
      v48 = 0;
    }

    v49 = *(v48 + 48);
    v50 = *(v48 + 56);
    while (1)
    {
      if (v49 == v50)
      {
        v47 = *(v96 + 8);
        v46 = v95;
        if (v47 == v95)
        {
          goto LABEL_147;
        }

        goto LABEL_66;
      }

      v51 = *v49;
      v52 = *v3;
      v53 = **v3;
      v54 = *(*v49 + 32);
      if (*(*v54 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
      {
        v54 = 0;
      }

      v99 = v54;
      if (v54)
      {
        if (*v52[1] == mlir::OpaqueLoc::getUnderlyingTypeID(&v99))
        {
          break;
        }
      }

LABEL_70:
      ++v49;
    }

    v55 = v3;
    v56 = v45;
    v57 = *(v53 + 360) + 24 * mlir::OpaqueLoc::getUnderlyingLocation(&v99);
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 16);
    v61 = v52[2];
    v63 = llvm::StringMapImpl::hash(v59, v60, v62);
    v64 = llvm::StringMapImpl::FindKey(v61, v59, v60, v63);
    if (v64 == -1 || v64 == *(v61 + 8) || (v65 = *(*v61 + 8 * v64), (v66 = *(v65 + 8)) == 0))
    {
      v98 = 257;
      v67 = mlir::Lexer::getEncodedSourceLocation(*(v53 + 8) + 8, v58);
      mlir::emitError(v67, v97, v102);
      if (*(*(v53 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v102);
      }

      v45 = v56;
      v3 = v55;
      if (v102[0])
      {
        LODWORD(v100) = 3;
        *(&v100 + 1) = "operation location alias was never defined";
        v101 = 42;
        if (v104 >= v105)
        {
          if (v103 > &v100 || v103 + 24 * v104 <= &v100)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v68 = v103 + 24 * v104;
        v69 = v100;
        *(v68 + 2) = v101;
        *v68 = v69;
        ++v104;
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
      if (v102[0])
      {
        mlir::InFlightDiagnostic::report(v102);
      }

      if (v112 != 1)
      {
LABEL_69:
        if (!v70)
        {
          return 0;
        }

        goto LABEL_70;
      }

      if (v111 != &v112)
      {
        free(v111);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v110;
        v73 = __p;
        if (v110 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v110 = v71;
        operator delete(v73);
      }

      v74 = v107;
      if (!v107)
      {
LABEL_129:
        if (v103 != v106)
        {
          free(v103);
        }

        goto LABEL_69;
      }

      v75 = v108;
      v76 = v107;
      if (v108 == v107)
      {
LABEL_128:
        v108 = v74;
        operator delete(v76);
        goto LABEL_129;
      }

      do
      {
        v78 = *--v75;
        v77 = v78;
        *v75 = 0;
        if (v78)
        {
          MEMORY[0x259C63150](v77, v45);
        }
      }

      while (v75 != v74);
    }

    else
    {
      if (mlir::LocationAttr::classof(*(v65 + 8)))
      {
        *(v51 + 32) = v66;
        v45 = v56;
        v3 = v55;
        goto LABEL_70;
      }

      v98 = 257;
      v79 = mlir::Lexer::getEncodedSourceLocation(*(v53 + 8) + 8, v58);
      mlir::emitError(v79, v97, v102);
      v45 = v56;
      if (*(*(v53 + 8) + 56) == 1)
      {
        mlir::InFlightDiagnostic::abandon(v102);
      }

      v3 = v55;
      if (v102[0])
      {
        LODWORD(v100) = 3;
        *(&v100 + 1) = "expected location, but found '";
        v101 = 30;
        if (v104 >= v105)
        {
          if (v103 > &v100 || v103 + 24 * v104 <= &v100)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v80 = v103 + 24 * v104;
        v81 = v100;
        *(v80 + 2) = v101;
        *v80 = v81;
        ++v104;
        if (v102[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v100, v66);
          if (v104 >= v105)
          {
            if (v103 > &v100 || v103 + 24 * v104 <= &v100)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v82 = v103 + 24 * v104;
          v83 = v100;
          *(v82 + 2) = v101;
          *v82 = v83;
          v84 = ++v104;
          if (v102[0])
          {
            LODWORD(v100) = 3;
            *(&v100 + 1) = "'";
            v101 = 1;
            if (v84 >= v105)
            {
              if (v103 > &v100 || v103 + 24 * v84 <= &v100)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v85 = v103 + 24 * v104;
            v86 = v100;
            *(v85 + 2) = v101;
            *v85 = v86;
            ++v104;
          }
        }
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v102);
      if (v102[0])
      {
        mlir::InFlightDiagnostic::report(v102);
      }

      if (v112 != 1)
      {
        goto LABEL_69;
      }

      if (v111 != &v112)
      {
        free(v111);
      }

      v87 = __p;
      if (__p)
      {
        v88 = v110;
        v89 = __p;
        if (v110 != __p)
        {
          do
          {
            v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
          }

          while (v88 != v87);
          v89 = __p;
        }

        v110 = v87;
        operator delete(v89);
      }

      v74 = v107;
      if (!v107)
      {
        goto LABEL_129;
      }

      v90 = v108;
      v76 = v107;
      if (v108 == v107)
      {
        goto LABEL_128;
      }

      do
      {
        v92 = *--v90;
        v91 = v92;
        *v90 = 0;
        if (v92)
        {
          MEMORY[0x259C63150](v91, v45);
        }
      }

      while (v90 != v74);
    }

    v76 = v107;
    goto LABEL_128;
  }

  return 1;
}