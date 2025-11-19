void llvm::SmallVectorTemplateBase<llvm::StringSet<llvm::MallocAllocator>,false>::grow(uint64_t a1, unint64_t a2)
{
  v13 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 24, &v13);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = &v5[24 * v6];
    v8 = v4;
    do
    {
      *v8 = *v5;
      *(v8 + 8) = *(v5 + 8);
      *v5 = 0;
      *(v5 + 1) = 0;
      *(v5 + 4) = 0;
      v8 += 24;
      v5 += 24;
    }

    while (v5 != v7);
    v5 = *a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      v10 = -24 * v9;
      v11 = &v5[24 * v9 - 24];
      do
      {
        v11 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v11) - 24;
        v10 += 24;
      }

      while (v10);
      v5 = *a1;
    }
  }

  v12 = v13;
  if (v5 != v3)
  {
    free(v5);
  }

  *a1 = v4;
  *(a1 + 12) = v12;
}

uint64_t *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *,llvm::StringSet<llvm::MallocAllocator> *>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 4);
      v8 = *(v5 + 5);
      v9 = v5[1];
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 4) = 0;
      v10 = *a3;
      *a3 = v6;
      v13[0] = v10;
      v11 = a3[1];
      a3[1] = v9;
      v13[1] = v11;
      LODWORD(v6) = *(a3 + 4);
      *(a3 + 4) = v7;
      v14 = v6;
      v15 = v8;
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v13);
      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = v2 + 24 * v3 - 24;
    do
    {
      v5 = llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(v5) - 24;
      v4 += 24;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

void llvm::StringMapEntry<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != (a1 + 24))
  {
    free(v2);
  }

  JUMPOUT(0x25F891030);
}

uint64_t anonymous namespace::OperationParser::parseGenericOperation(_anonymous_namespace_::OperationParser *this)
{
  v42[26] = *MEMORY[0x277D85DE8];
  EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(this + 1) + 8, *(*(this + 1) + 64));
  v33 = EncodedSourceLocation;
  mlir::Token::getStringValue((*(this + 1) + 56), &v32);
  size = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v32.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *&v35 = "empty operation name is invalid";
    v37 = 259;
    mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), &v35, v42);
    v4 = v42;
    goto LABEL_7;
  }

  if (std::string::find(&v32, 0, 0) != -1)
  {
    *&v35 = "null character not allowed in operation name";
    v37 = 259;
    mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), &v35, v41);
    v4 = v41;
LABEL_7:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v4);
    v5 = 0;
    goto LABEL_43;
  }

  v6 = *(this + 1);
  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v35);
  v7 = *(this + 1);
  *(v7 + 56) = v35;
  *(v7 + 72) = v36;
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v32;
  }

  else
  {
    v8 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v32.__r_.__value_.__l.__size_;
  }

  mlir::OperationState::OperationState(&v35, EncodedSourceLocation, v8, v9);
  v31 = &v35;
  if (*(*(&v35 + 1) + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
  {
LABEL_28:
    v18 = *(*(this + 1) + 152);
    if (v18)
    {
      llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(*v18 + 440, (&v35 + 8));
    }

    LOBYTE(v27) = 0;
    LOBYTE(v29) = 0;
    LOBYTE(v25[0]) = 0;
    v26 = 0;
    v24[0] = 0;
    v24[16] = 0;
    v23[0] = 0;
    v23[16] = 0;
    v5 = 0;
    {
      goto LABEL_42;
    }

    v19 = v39;
    v25[0] = v39;
    v39 = 0;
    {
      v5 = mlir::Operation::create(&v35);
      mlir::OpBuilder::insert((this + 384), v5);
      {
        if (!v19)
        {
          goto LABEL_42;
        }

        v27 = &v33;
        v28 = v25;
        v29 = &v32;
        {
          goto LABEL_42;
        }
      }
    }

    goto LABEL_41;
  }

  v10 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
  v11 = v32.__r_.__value_.__r.__words[0];
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v32;
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v32.__r_.__value_.__l.__size_;
  }

  v25[0] = v11;
  v25[1] = v10;
  v24[0] = 46;
  llvm::StringRef::split(v25, v24, 1uLL, &v27);
  v12 = v27;
  v13 = v28;
  if (mlir::MLIRContext::getLoadedDialect(***(this + 1), v27, v28, v14) || mlir::MLIRContext::getOrLoadDialect(***(this + 1), v12, v13, v15))
  {
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v32;
    }

    else
    {
      v16 = v32.__r_.__value_.__r.__words[0];
    }

    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = SHIBYTE(v32.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v32.__r_.__value_.__l.__size_;
    }

    mlir::OperationName::OperationName(&v27, v16, v17, ***(this + 1));
    *(&v35 + 1) = v27;
    goto LABEL_28;
  }

  v20 = *(this + 1);
  if (*(***v20 + 40))
  {
    goto LABEL_28;
  }

  v27 = "operation being parsed with an unregistered dialect. If this is intended, please use -allow-unregistered-dialect with the MLIR tool used";
  v30 = 259;
  mlir::detail::Parser::emitError(this, *(v20 + 64) - (*(v20 + 56) == 0), &v27, v34);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v34);
LABEL_41:
  v5 = 0;
LABEL_42:
  mlir::OperationState::~OperationState(&v35);
LABEL_43:
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t anonymous namespace::OperationParser::addDefinition(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = v6;
  v9 = *(a2 + 24);
  if (*(v6 + 8) <= v9)
  {
    v9 = *(a2 + 24);
  }

  v10 = 16 * v9;
  v11 = *(*v8 + v10);
  if (v11)
  {
    if (!llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), *(*v8 + v10)))
    {
      v17 = *a2;
      v44 = 257;
      mlir::detail::Parser::emitError(a1, v17, v43, &v48);
      if (v48)
      {
        mlir::Diagnostic::operator<<<28ul>(v49, "redefinition of SSA value '");
        v47 = 261;
        v18 = *(a2 + 16);
        v45 = *(a2 + 8);
        v46 = v18;
        mlir::Diagnostic::operator<<(v49, &v45);
        mlir::Diagnostic::operator<<<2ul>(v49, "'");
      }

      EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v8 + 16 * *(a2 + 24) + 8));
      mlir::Diagnostic::attachNote(v49, EncodedSourceLocation, 1);
    }

    if ((a3[1] ^ *(v11 + 8)) >= 8)
    {
      v20 = *a2;
      v44 = 257;
      mlir::detail::Parser::emitError(a1, v20, v43, &v48);
      if (v48)
      {
        v21 = a3[1] & 0xFFFFFFFFFFFFFFF8;
        mlir::Diagnostic::operator<<<26ul>(v49, "definition of SSA value '");
        v22 = *(a2 + 8);
        v23 = *(a2 + 16);
        v47 = 261;
        v45 = v22;
        v46 = v23;
        mlir::Diagnostic::operator<<(v49, &v45);
        mlir::Diagnostic::operator<<<2ul>(v49, "#");
        v24 = *(a2 + 24);
        LODWORD(v45) = 5;
        v46 = v24;
        v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v45, 1);
        v26 = v50 + 24 * v51;
        v27 = *v25;
        *(v26 + 16) = *(v25 + 16);
        *v26 = v27;
        ++v51;
        mlir::Diagnostic::operator<<<12ul>(v49, "' has type ");
        LODWORD(v45) = 4;
        v46 = v21;
        v28 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v50, &v45, 1);
        v29 = v50 + 24 * v51;
        v30 = *v28;
        *(v29 + 16) = *(v28 + 16);
        *v29 = v30;
        ++v51;
      }

      v31 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, *(*v8 + 16 * *(a2 + 24) + 8));
      mlir::Diagnostic::attachNote(v49, v31, 1);
    }

    v48 = a3;
    mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(v11, &v48);
    v12 = 0;
    v13 = *(v11 + 8) & 7;
    v14 = v13 == 7;
    if (v13 == 7)
    {
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }

    if (!v14)
    {
      v16 = *(v15 + 8) & 7;
      if (v16 == 6)
      {
        v12 = (v15 + 24 * *(v15 + 16) + 120);
      }

      else
      {
        v12 = (v15 + 16 * v16 + 16);
      }
    }

    mlir::Operation::destroy(v12);
    v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), v11);
    if (v32)
    {
      *v32 = -8192;
      *(a1 + 344) = vadd_s32(*(a1 + 344), 0x1FFFFFFFFLL);
    }

    v33 = *(*(a1 + 8) + 152);
    if (v33)
    {
      mlir::AsmParserState::refineDefinition(v33, v11, a3);
    }
  }

  v34 = *a2;
  v35 = (*v8 + 16 * *(a2 + 24));
  *v35 = a3;
  v35[1] = v34;
  v37 = *(a2 + 8);
  v36 = *(a2 + 16);
  v38 = *(a1 + 16) + 88 * *(a1 + 24);
  v39 = (*(v38 - 64) + 24 * *(v38 - 56) - 24);
  v40 = llvm::xxh3_64bits(v37, v36, v7);
  llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::try_emplace_with_hash<>(v39, v37, v36, v40);
  result = 1;
  v42 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOperation(void)::$_0>(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *&v24 = "expected valid ssa identifier";
  v26 = 259;
  if (!mlir::detail::Parser::parseToken(v2, 6, &v24))
  {
    v16 = 0;
    goto LABEL_15;
  }

  v6 = *(v2 + 1);
  if (*(v6 + 56) != 15)
  {
    v13 = 1;
    goto LABEL_9;
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v24);
  v9 = *(v2 + 1);
  *(v9 + 56) = v24;
  *(v9 + 72) = v25;
  v10 = *(v2 + 1);
  if (*(v10 + 56) != 10)
  {
    v22[0] = "expected integer number of results";
    v23 = 259;
    mlir::detail::Parser::emitWrongTokenError(v2, v22, &v24);
LABEL_14:
    v16 = v27 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_15;
  }

  UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(*(v10 + 64), *(v10 + 72), v7, v8);
  if ((v12 & 1) == 0 || (v13 = UInt64IntegerValue) == 0)
  {
    v22[0] = "expected named operation to have at least 1 result";
    v23 = 259;
    mlir::detail::Parser::emitError(v2, *(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0), v22, &v24);
    goto LABEL_14;
  }

  v14 = *(v2 + 1);
  *(v14 + 80) = *(v14 + 56);
  *(v14 + 96) = *(v14 + 72);
  mlir::Lexer::lexToken((*(v2 + 1) + 8), &v24);
  v15 = *(v2 + 1);
  *(v15 + 56) = v24;
  *(v15 + 72) = v25;
LABEL_9:
  v17 = *(a1 + 8);
  *&v24 = v4;
  *(&v24 + 1) = v5;
  v18 = *(v17 + 8);
  if (v18 >= *(v17 + 12))
  {
    llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(v17, &v24, v13, v4);
  }

  else
  {
    v19 = *v17 + 32 * v18;
    *v19 = v24;
    *(v19 + 16) = v13;
    *(v19 + 24) = v4;
    ++*(v17 + 8);
  }

  **(a1 + 16) += v13;
  v16 = 1;
LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

__n128 llvm::SmallVectorTemplateBase<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>,true>::growAndEmplaceBack<llvm::StringRef,unsigned long &,llvm::SMLoc>(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v12 = *a2;
  v13 = a3;
  v14 = a4;
  v5 = *(a1 + 8);
  v6 = *a1;
  v7 = &v12;
  if (v5 >= *(a1 + 12))
  {
    if (v6 <= &v12 && v6 + 32 * v5 > &v12)
    {
      v11 = &v12 - v6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 32);
      v6 = *a1;
      v7 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5 + 1, 32);
      v6 = *a1;
      v7 = &v12;
    }
  }

  v8 = (v6 + 32 * *(a1 + 8));
  result = *v7;
  v10 = v7[1];
  *v8 = *v7;
  v8[1] = v10;
  ++*(a1 + 8);
  return result;
}

unint64_t anonymous namespace::OperationParser::parseCustomOperationName(_anonymous_namespace_::OperationParser *this)
{
  v1 = this;
  v32[26] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);
  v30 = v3;
  v31 = v4;
  if (v4)
  {
    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
    v5 = *(v1 + 8);
    *(v5 + 56) = v26;
    *(v5 + 72) = v27;
    v6 = ****(v1 + 8);
    v7 = llvm::StringMap<mlir::RegisteredOperationName,llvm::MallocAllocator>::find(v6 + 208, v3, v4);
    if (*(v6 + 208) + 8 * *(v6 + 216) == v7)
    {
      LOBYTE(v26) = 46;
      llvm::StringRef::split(&v30, &v26, 1uLL, &v23);
      v10 = v23;
      v11 = v24;
      __p = 0;
      v21 = 0;
      v22 = 0;
      v12 = *(v1 + 8);
      if (!v25)
      {
        if (*(v12 + 56) == 2 && v31[v30 - 1] == 46)
        {
          mlir::detail::Parser::codeCompleteOperationName(v1, v23, v24);
          v8 = 0;
          LOBYTE(v1) = 0;
          goto LABEL_16;
        }

        v13 = *(v12 + 168) + 16 * *(v12 + 176);
        v10 = *(v13 - 16);
        v11 = *(v13 - 8);
        v19 = 773;
        v18[0] = v10;
        v18[1] = v11;
        v18[2] = ".";
        *&v26 = v18;
        v27 = v30;
        v28 = v31;
        v29 = 1282;
        llvm::Twine::str(&v26, &__p);
        v12 = *(v1 + 8);
        v14 = SHIBYTE(v22);
        p_p = __p;
        if (v22 >= 0)
        {
          p_p = &__p;
        }

        if (v22 < 0)
        {
          v14 = v21;
        }

        v30 = p_p;
        v31 = v14;
      }

      mlir::MLIRContext::getOrLoadDialect(**v12, v10, v11, v9);
      mlir::OperationName::OperationName(&v26, v30, v31, ***(v1 + 8));
      LOBYTE(v1) = v26;
      v8 = v26 & 0xFFFFFFFFFFFFFF00;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v1 = *(*v7 + 8);
      v8 = v1 & 0xFFFFFFFFFFFFFF00;
    }
  }

  else
  {
    *&v26 = "empty operation name is invalid";
    v29 = 259;
    mlir::detail::Parser::emitError(this, &v3[-(*(v2 + 56) == 0)], &v26, v32);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v32);
    LOBYTE(v1) = 0;
    v8 = 0;
  }

LABEL_16:
  v16 = *MEMORY[0x277D85DE8];
  return v8 | v1;
}

uint64_t anonymous namespace::OperationParser::parseTrailingLocationSpecifier(uint64_t ****a1, unint64_t a2)
{
  v2 = a1[1];
  if (*(v2 + 14) != 65)
  {
    return 1;
  }

  *(v2 + 5) = *(v2 + 7);
  v2[12] = v2[9];
  mlir::Lexer::lexToken((a1[1] + 1), &v16);
  v5 = a1[1];
  *(v5 + 7) = v16;
  v5[9] = v17;
  *&v16 = "expected '(' in location";
  v18 = 259;
  if (mlir::detail::Parser::parseToken(a1, 21, &v16))
  {
    v6 = a1[1];
    v7 = *(v6 + 14);
    v9 = v6[8];
    v8 = v6[9];
    v15 = 0;
    if (v7 == 5 && (!v8 || (v10 = memchr(v9, 46, v8)) == 0 || v10 - v9 == -1))
    {
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

void anonymous namespace::CleanupOpStateRegions::~CleanupOpStateRegions(_anonymous_namespace_::CleanupOpStateRegions *this)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v2 = *this;
  v3 = *(*this + 232);
  if (v3 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v10, v11, v3, 8);
    v2 = *this;
    LODWORD(v3) = *(*this + 232);
  }

  if (v3)
  {
    v4 = *(v2 + 224);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      if (*v4)
      {
        for (i = *(v6 + 8); i != v6; i = *(i + 8))
        {
          if (i)
          {
            v8 = (i - 8);
          }

          else
          {
            v8 = 0;
          }

          mlir::Block::dropAllDefinedValueUses(v8);
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
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

void anonymous namespace::CustomOpAsmParser::emitError(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v10 = 1283;
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v9[0] = "custom op '";
  v9[2] = v4;
  v9[3] = v5;
  *&v11 = v9;
  *&v12 = "' ";
  LOWORD(v13) = 770;
  v6 = *(a3 + 32);
  if (v6 == 1)
  {
    v14 = v11;
    v15 = v12;
    v16 = v13;
  }

  else if (*(a3 + 32))
  {
    v7 = *a3;
    v8 = a3[1];
    if (*(a3 + 33) != 1)
    {
      LOBYTE(v6) = 2;
      v7 = a3;
    }

    *&v14 = &v11;
    *&v15 = v7;
    *(&v15 + 1) = v8;
    LOBYTE(v16) = 2;
    BYTE1(v16) = v6;
  }

  else
  {
    LOWORD(v16) = 256;
  }

  *(a1 + 24) = 1;
  mlir::detail::Parser::emitError(*(a1 + 16), a2, &v14, a4);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrow(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRBrace(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColon(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseComma(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEqual(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLess(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseGreater(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseQuestion(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parsePlus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseMinus(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseStar(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseVerticalBar(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseBase64Bytes(void *a1, void *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRParen(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseLSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseRSquare(uint64_t a1)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseEllipsis(uint64_t a1)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseFloat(uint64_t a1, _DWORD *a2, llvm::detail::IEEEFloat *a3)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeyword(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, void *__s2, size_t __n)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalKeyword(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = mlir::detail::Parser::parseAttribute(*(a1 + 16), a3);
  *a2 = v4;
  return v4 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomAttributeWithFallback(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttribute(uint64_t a1, uint64_t **a2, uint64_t *a3)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalAttrDictWithKeyword(void *a1, mlir::NamedAttrList *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseType(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = mlir::detail::Parser::parseType(*(a1 + 16), a2, a3, a4);
  *a2 = v5;
  return v5 != 0;
}

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseCustomTypeWithFallback(uint64_t a1, uint64_t *a2, uint64_t (*a3)(unint64_t *), unint64_t *a4)
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

uint64_t mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseArrowTypeList(mlir::detail::Parser **a1, uint64_t a2)
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
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v10);
  v6 = *(v2 + 8);
  *(v6 + 56) = v10;
  *(v6 + 72) = v11;
  return mlir::detail::Parser::parseFunctionResultTypes(*(a1 + 16), a2, v7, v8);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonType(uint64_t a1, uint64_t *a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseColonTypeList(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v6 = "expected ':'";
  v7 = 259;
  return mlir::detail::Parser::parseToken(v4, 15, &v6) && mlir::detail::Parser::parseTypeListNoParens(*(a1 + 16), a2);
}

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseOptionalColonTypeList(uint64_t a1, uint64_t a2)
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

BOOL mlir::detail::AsmParserImpl<mlir::OpAsmParser>::parseKeywordOrCompletion(mlir::AsmParser *a1, llvm::StringRef *a2)
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
  if (*(v3 + 56) != 65)
  {
    return 1;
  }

  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(v2 + 8) + 8), &v17);
  v6 = *(v2 + 8);
  *(v6 + 56) = v17;
  *(v6 + 72) = v18;
  v20 = 0;
  v7 = *(a1 + 88);
  *&v17 = "expected '(' in location";
  v19 = 259;
  if (mlir::detail::Parser::parseToken(v7, 21, &v17))
  {
    v8 = *(a1 + 88);
    v9 = v8[1];
    if (*(v9 + 14) == 5 && ((v10 = v9[9]) == 0 || ((v11 = v9[8], (v12 = memchr(v11, 46, v10)) != 0) ? (v13 = v12 - v11 == -1) : (v13 = 1), v13)))
    {
      {
        return 0;
      }
    }

    else if ((mlir::detail::Parser::parseLocationInstance(v8, &v20) & 1) == 0)
    {
      return 0;
    }

    v14 = *(a1 + 88);
    *&v17 = "expected ')' in location";
    v19 = 259;
    if (mlir::detail::Parser::parseToken(v14, 28, &v17))
    {
      v15 = v20;
      if ((*(a2 + 8) & 1) == 0)
      {
        *(a2 + 8) = 1;
      }

      *a2 = v15;
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
    v6 = &byte_25D0A27DF;
    while (1)
    {
      v7 = a2 - *v4;
      if (a2 < *v4)
      {
        break;
      }

      v4 += 8;
      a2 = v7;
      v5 -= 32;
      if (!v5)
      {
        v8 = 0;
        a2 = -1;
        goto LABEL_10;
      }
    }

    v6 = *(v4 - 2);
    v9 = *(v4 - 1);
    if (v9)
    {
      ++v6;
    }

    v8 = v9 - (v9 != 0);
  }

  else
  {
    v8 = 0;
    a2 = -1;
    v6 = &byte_25D0A27DF;
  }

LABEL_10:
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = a2;
  return this;
}

uint64_t anonymous namespace::CustomOpAsmParser::getNumResults(_anonymous_namespace_::CustomOpAsmParser *this)
{
  v1 = *(this + 5);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 4);
  v5 = 32 * v1;
  v6 = (v4 + 16);
  do
  {
    v7 = *v6;
    v6 += 8;
    result += v7;
    v5 -= 32;
  }

  while (v5);
  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  v13 = *(v3 + 400);
  *(v3 + 400) = a2;
  *(v3 + 408) = a3;
  if (v7)
  {
    v8 = *(v3 + 8);
    v9 = v8[19];
    if (v9)
    {
      v11 = v8[11];
      v10 = v8[12];
      mlir::AsmParserState::finalizeOperationDefinition(v9, v7);
    }
  }

  if (v13)
  {
    *(v3 + 400) = v13;
  }

  else
  {
    *(v3 + 400) = 0;
    *(v3 + 408) = 0;
  }

  return v7;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseGenericOperationAfterOpName(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, char a8, uint64_t a9, char a10)
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

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalOperand(void *a1)
{
  v1 = *(a1[11] + 8);
  v2 = *(v1 + 56);
  if (v2 == 6 || v2 == 2 && *(v1 + 72) && **(v1 + 64) == 37)
  {
    v3 = (*(*a1 + 704))(a1);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | (v4 << 8);
}

BOOL anonymous namespace::CustomOpAsmParser::parseOperandList(void *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v21 = a4;
  v8 = a1[11];
  v9 = *(v8 + 1);
  if (a3)
  {
    v10 = *(v9 + 64);
  }

  else
  {
    v15 = *(v9 + 56);
    v10 = *(v9 + 64);
    if (v15 != 6 && (v15 != 2 || !*(v9 + 72) || *v10 != 37))
    {
      if ((a5 + 1) >= 2)
      {
        if ((v15 - 21) > 1)
        {
          v19[0] = "expected operand";
          v20 = 259;
          mlir::detail::Parser::emitWrongTokenError(v8, v19, &v24);
        }

        else
        {
          v19[0] = "unexpected delimiter";
          v20 = 259;
          mlir::detail::Parser::emitError(v8, v10, v19, &v24);
        }

LABEL_19:
        v14 = (v28 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  v18[0] = a1;
  v18[1] = a2;
  v18[2] = &v21;
  {
    if (a5 != -1 && *(a2 + 8) != a5)
    {
      v19[0] = "expected ";
      v20 = 259;
      (*(*a1 + 24))(&v24, a1, v10, v19);
      if (v24)
      {
        v22 = 2;
        v23 = a5;
        v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v26, &v22, 1);
        v12 = v26 + 24 * v27;
        v13 = *v11;
        *(v12 + 16) = *(v11 + 16);
        *v12 = v13;
        ++v27;
        if (v24)
        {
          mlir::Diagnostic::operator<<<10ul>(&v25, " operands");
        }
      }

      goto LABEL_19;
    }

LABEL_15:
    v14 = 1;
    goto LABEL_20;
  }

  v14 = 0;
LABEL_20:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

unint64_t anonymous namespace::CustomOpAsmParser::resolveOperand(uint64_t a1, _OWORD *a2, unint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 88);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  if (result)
  {
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, result);
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v30[8] = *MEMORY[0x277D85DE8];
  __src = v30;
  v29 = 0x200000000;
  v25 = v27;
  v26 = 0x100000000;
  v22[0] = a1;
  v22[1] = &v25;
  v22[2] = &__src;
  v21 = 0;
  {
    if (v21)
    {
      v12 = mlir::AffineMapAttr::get(v21);
      *a3 = v12;
      v13 = *(**v12 + 32);
      v24 = 261;
      v23[0] = a4;
      v23[1] = a5;
      v15 = mlir::StringAttr::get(v13, v23, v14);
      mlir::NamedAttrList::push_back(a6, v15, v12);
    }

    v16 = __src;
    v17 = __src + 32 * v29;
    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(a2, v16, v17);
    llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(a2, v25, v25 + 32 * v26);
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (__src != v30)
  {
    free(__src);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseArgument(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v13[9] = *MEMORY[0x277D85DE8];
  v12[0] = v13;
  v12[1] = 0x400000000;
  v13[8] = 4;
  if ((*(*a1 + 704))(a1, a2, 0) & 1) != 0 && (!a3 || ((*(*a1 + 576))(a1, a2 + 32)) && (!a4 || ((*(*a1 + 488))(a1, v12)) && ((*(*a1 + 656))(a1, a2 + 48))
  {
    v8 = (*(*a1 + 32))(a1);
    *(a2 + 40) = mlir::NamedAttrList::getDictionary(v12, *v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t anonymous namespace::CustomOpAsmParser::parseOptionalArgument(void *a1)
{
  if (*(*(a1[11] + 8) + 56) == 6)
  {
    v1 = (*(*a1 + 752))(a1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  return v1 | (v2 << 8);
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
    v1 = (*(*a1 + 776))(a1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  return v1 | (v2 << 8);
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
  v3 = *(v2 + 56);
  if (v3 == 7 || v3 == 2 && *(v2 + 72) && **(v2 + 64) == 94)
  {
    v4 = (*(*this + 800))(this, a2);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v4 | (v5 << 8);
}

uint64_t anonymous namespace::CustomOpAsmParser::parseSuccessorAndUseList(void *a1, uint64_t a2, uint64_t a3)
{
  v27[16] = *MEMORY[0x277D85DE8];
  if (((*(*a1 + 800))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 288))(a1) & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = a1[11];
  v25 = v27;
  v26 = 0x400000000;
  {
    if (v26)
    {
      v22 = v24;
      v23 = 0x400000000;
      *&v20[0] = "expected ':' in operand list";
      v21 = 259;
      if (mlir::detail::Parser::parseToken(v5, 15, v20) && mlir::detail::Parser::parseTypeListNoParens(v5, &v22))
      {
        v6 = v26;
        if (v26 == v23)
        {
          if (*(a3 + 12) < v26)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v26, 8);
            v6 = v26;
          }

          if (v6)
          {
            v7 = 0;
            v8 = 0;
            v9 = 32 * v6;
            do
            {
              v10 = *&v25[v8 + 16];
              v20[0] = *&v25[v8];
              v20[1] = v10;
              v12 = v11 == 0;
              if (!v11)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a3, v11);
              v8 += 32;
              v7 += 8;
            }

            while (v9 != v8);
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v18 = "expected ";
          v19 = 259;
          mlir::detail::Parser::emitError(v5, *(*(v5 + 1) + 64) - (*(*(v5 + 1) + 56) == 0), &v18, v20);
          v17 = v26;
          v15 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v20, &v17);
          v16 = v15;
          if (*v15)
          {
            mlir::Diagnostic::operator<<<29ul>((v15 + 1), " types to match operand list");
          }

          v12 = *(v16 + 200);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
        }
      }

      else
      {
        v12 = 1;
      }

      if (v22 != v24)
      {
        free(v22);
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

  if (v25 != v27)
  {
    free(v25);
  }

  if ((v12 & 1) != 0 || ((*(*a1 + 296))(a1) & 1) == 0)
  {
LABEL_25:
    result = 0;
  }

  else
  {
LABEL_24:
    result = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
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

BOOL anonymous namespace::OperationParser::parseLocationAlias(void *a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v5 = *(v4 + 64);
  v6 = *(v4 + 72);
  *(v4 + 80) = *(v4 + 56);
  *(v4 + 96) = v6;
  mlir::Lexer::lexToken((a1[1] + 8), &v35);
  v7 = a1[1];
  *(v7 + 56) = v35;
  *(v7 + 72) = v36;
  if (v6)
  {
    v8 = (v5 + 1);
  }

  else
  {
    v8 = v5;
  }

  v9 = (v6 - (v6 != 0));
  v10 = a1[1];
  v11 = *(v10 + 152);
  if (v11)
  {
    mlir::AsmParserState::addAttrAliasUses(v11, v8, (v6 - (v6 != 0)), v5, v5 + v6);
    v10 = a1[1];
  }

  v12 = *(v10 + 104);
  v13 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v12, v8, v9);
  if (*v12 + 8 * *(v12 + 8) == v13 || (v14 = *(*v13 + 8)) == 0)
  {
    v20 = a1[46];
    v21 = a1[47];
    if (v20 >= v21)
    {
      v23 = a1[45];
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v23) >> 3) + 1;
      if (v24 > 0xAAAAAAAAAAAAAAALL)
      {
      }

      v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v23) >> 3);
      if (2 * v25 > v24)
      {
        v24 = 2 * v25;
      }

      if (v25 >= 0x555555555555555)
      {
        v26 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v26 = v24;
      }

      if (v26)
      {
        if (v26 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v27 = (8 * ((v20 - v23) >> 3));
      *v27 = v5;
      v27[1] = v8;
      v27[2] = v9;
      v22 = v27 + 3;
      v28 = v27 - (v20 - v23);
      memcpy(v28, v23, v20 - v23);
      a1[45] = v28;
      a1[46] = v22;
      a1[47] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v20 = v5;
      v20[1] = v8;
      v22 = v20 + 3;
      v20[2] = v9;
    }

    a1[46] = v22;
    goto LABEL_31;
  }

  *&v35 = *(*v13 + 8);
  if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v35))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  *a2 = v15;
  if (v15)
  {
LABEL_31:
    v19 = 1;
    goto LABEL_32;
  }

  v32 = 257;
  mlir::detail::Parser::emitError(a1, v5, v31, &v35);
  if (v35)
  {
    mlir::Diagnostic::operator<<<31ul>(&v35 + 8, "expected location, but found '");
    if (v35)
    {
      v33 = 0;
      v34 = v14;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
      v17 = v37 + 24 * v38;
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++v38;
      if (v35)
      {
        mlir::Diagnostic::operator<<<2ul>(&v35 + 8, "'");
      }
    }
  }

  v19 = (v39 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_32:
  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t anonymous namespace::OperationParser::parseGenericOperationAfterOpName(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v72 = *MEMORY[0x277D85DE8];
  v65 = v67;
  v66 = 0x800000000;
  if ((*(a3 + 16) & 1) == 0)
  {
    *&v61 = "expected '(' to start operand list";
    v63 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 21, &v61))
    {
      goto LABEL_55;
    }

    {
      goto LABEL_55;
    }

    v68 = "expected ')' to end operand list";
    v71 = 259;
    if (!mlir::detail::Parser::parseToken(a1, 28, &v68))
    {
      goto LABEL_55;
    }

    v21 = v65;
    v22 = v66;
    if ((*(a3 + 16) & 1) == 0)
    {
      *(a3 + 16) = 1;
    }

    *a3 = v21;
    *(a3 + 8) = v22;
  }

  if (*(a4 + 16))
  {
    v18 = *(a4 + 8);
    v19 = *a4 | 4;
    if (v18)
    {
      v20 = *a4 | 4;
    }

    else
    {
      v20 = 0;
    }

    llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v20, 0, v20, v18);
  }

  else if (*(*(a1 + 1) + 56) == 22)
  {
    if ((mlir::OperationName::mightHaveTrait<mlir::OpTrait::IsTerminator>(a2 + 8) & 1) == 0)
    {
      v68 = "successors in non-terminator";
      v71 = 259;
      mlir::detail::Parser::emitError(a1, *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0), &v68, &v61);
LABEL_54:
      v51 = v64;
LABEL_66:
      v45 = v51 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v61);
      goto LABEL_56;
    }

    v68 = v70;
    v69 = 0x200000000;
    *&v61 = "expected '['";
    v63 = 259;
    {
      if (v69)
      {
        v23 = v68 | 4;
      }

      else
      {
        v23 = 0;
      }

      llvm::SmallVectorImpl<mlir::Block *>::append<llvm::detail::indexed_accessor_range_base<mlir::BlockRange,llvm::PointerUnion<mlir::BlockOperand *,mlir::Block * const*>,mlir::Block *,mlir::Block *,mlir::Block *>::iterator,void>(a2 + 200, v23, 0, v23, v69);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    if (v68 != v70)
    {
      free(v68);
    }

    if (v24)
    {
      goto LABEL_55;
    }
  }

  if (a8)
  {
    *(a2 + 248) = a7;
  }

  else
  {
    v25 = *(a1 + 1);
    if (*(v25 + 56) == 23)
    {
      *(v25 + 80) = *(v25 + 56);
      *(v25 + 96) = *(v25 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v61);
      v26 = *(a1 + 1);
      *(v26 + 56) = v61;
      *(v26 + 72) = v62;
      v27 = mlir::detail::Parser::parseAttribute(a1, 0);
      *(a2 + 248) = v27;
      if (!v27)
      {
        goto LABEL_55;
      }

      *&v61 = "expected '>' to close properties";
      v63 = 259;
      if (!mlir::detail::Parser::parseToken(a1, 19, &v61))
      {
        goto LABEL_55;
      }
    }
  }

  if (*(a5 + 16))
  {
    mlir::OperationState::addRegions(a2, *a5, *(a5 + 8));
  }

  else
  {
    v28 = *(a1 + 1);
    if (*(v28 + 56) == 21)
    {
      *(v28 + 80) = *(v28 + 56);
      *(v28 + 96) = *(v28 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v61);
      v29 = *(a1 + 1);
      *(v29 + 56) = v61;
      *(v29 + 72) = v62;
      operator new();
    }
  }

  if (*(a6 + 16))
  {
    v30 = *a6;
    v31 = (*a6 + 16 * *(a6 + 8));
    *(a2 + 192) = 0;
    llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, v30, v31);
  }

  else if (*(*(a1 + 1) + 56) == 20 && !mlir::detail::Parser::parseAttributeDict(a1, (a2 + 112)))
  {
    goto LABEL_55;
  }

  if (a10)
  {
    EncodedSourceLocation = *a2;
    goto LABEL_41;
  }

  *&v61 = "expected ':' followed by operation type";
  v63 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 15, &v61) || (EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 1) + 8, *(*(a1 + 1) + 64)), (v50 = mlir::detail::Parser::parseType(a1, v47, v48, v49)) == 0))
  {
LABEL_55:
    v45 = 0;
    goto LABEL_56;
  }

  a9 = v50;
  if (*(*v50 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v68 = "expected function type";
    v71 = 259;
    emitDiag(EncodedSourceLocation, 2, &v68, &v61);
    goto LABEL_54;
  }

LABEL_41:
  v34 = (*(a9 + 16) + 8 * *(a9 + 8));
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v34, &v34[8 * *(a9 + 12)]);
  v35 = *(a9 + 8);
  v36 = *(a3 + 8);
  if (v36 != v35)
  {
    v46 = v36 == 1;
    v54 = "s";
    if (v46)
    {
      v54 = "";
    }

    v55 = *v54;
    v59 = "expected ";
    v60 = 259;
    emitDiag(EncodedSourceLocation, 2, &v59, &v61);
    v58 = *(a3 + 8);
    v56 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v61, &v58);
    v57 = v56;
    if (*v56)
    {
      mlir::Diagnostic::operator<<<14ul>((v56 + 1), " operand type");
      if (*v57)
      {
        v71 = 264;
        LOBYTE(v68) = v55;
        mlir::Diagnostic::operator<<((v57 + 1), &v68);
        if (*v57)
        {
          mlir::Diagnostic::operator<<<10ul>((v57 + 1), " but had ");
        }
      }
    }

    v68 = v35;
    v51 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v57, &v68) + 200);
    goto LABEL_66;
  }

  if (v35)
  {
    v37 = 0;
    v38 = *(a9 + 16);
    v39 = 32 * v35 - 32;
    do
    {
      v40 = (*a3 + v37);
      v41 = v40[1];
      v61 = *v40;
      v62 = v41;
      v42 = *v38++;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a2 + 16, v43);
      v44 = *(*(a2 + 16) + 8 * *(a2 + 24) - 8);
      v45 = v44 != 0;
      if (v44)
      {
        v46 = v39 == v37;
      }

      else
      {
        v46 = 1;
      }

      v37 += 32;
    }

    while (!v46);
  }

  else
  {
    v45 = 1;
  }

LABEL_56:
  if (v65 != v67)
  {
    free(v65);
  }

  v52 = *MEMORY[0x277D85DE8];
  return v45 & 1;
}

BOOL anonymous namespace::OperationParser::parseOptionalSSAUseList(mlir::detail::Parser *a1, uint64_t a2)
{
  v4 = *(a1 + 1);
  v5 = *(v4 + 56);
  if (v5 != 6 && (v5 != 2 || !*(v4 + 72) || **(v4 + 64) != 37))
  {
    return 1;
  }

  v7[2] = v2;
  v7[3] = v3;
  v7[0] = a1;
  v7[1] = a2;
}

uint64_t anonymous namespace::OperationParser::parseRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 8) + 64);
  v19[0] = "expected '{' to begin a region";
  v21 = 259;
  if (mlir::detail::Parser::parseToken(a1, 20, v19))
  {
    v9 = *(*(a1 + 8) + 152);
    if (v9)
    {
      v10 = *v9;
      v11 = *(*(v10 + 440) + 8 * *(v10 + 448) - 8);
      if (v11)
      {
        llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>> *,true>::push_back(v10 + 504, v11);
      }
    }

    if (a4 || (v12 = *(a1 + 8), *(v12 + 56) != 27))
    {
      v18 = *(a1 + 400);
      operator new();
    }

    *(v12 + 80) = *(v12 + 56);
    *(v12 + 96) = *(v12 + 72);
    mlir::Lexer::lexToken((*(a1 + 8) + 8), v19);
    v13 = *(a1 + 8);
    *(v13 + 56) = *v19;
    *(v13 + 72) = v20;
    v14 = *(*(a1 + 8) + 152);
    if (v14)
    {
      v15 = *v14;
      if (*(*(v15 + 440) + 8 * *(v15 + 448) - 8))
      {
        --*(v15 + 512);
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t anonymous namespace::OperationParser::resolveSSAUse(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = v6;
  v8 = *(a2 + 24);
  if (*(v6 + 8) <= v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = *v6;
    v10 = *(*v6 + 16 * v8);
    if (v10)
    {
      if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFF8) != a3)
      {
        v11 = *a2;
        v35[0] = "use of value '";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v11, v35, &v42);
        if (v42)
        {
          v12 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
          v13 = *(a2 + 8);
          v14 = *(a2 + 16);
          v40 = 261;
          v38 = v13;
          v39 = v14;
          mlir::Diagnostic::operator<<(&v43, &v38);
          mlir::Diagnostic::operator<<<43ul>(&v43, "' expects different type than prior uses: ");
          LODWORD(v38) = 4;
          v39 = a3;
          v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v38, 1);
          v16 = v45 + 24 * v46;
          v17 = *v15;
          *(v16 + 16) = *(v15 + 16);
          *v16 = v17;
          ++v46;
          mlir::Diagnostic::operator<<<5ul>(&v43, " vs ");
          LODWORD(v38) = 4;
          v39 = v12;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v45, &v38, 1);
          v19 = v45 + 24 * v46;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v46;
        }

        EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, (*v7)[2 * *(a2 + 24) + 1]);
        mlir::Diagnostic::attachNote(&v43, EncodedSourceLocation, 1);
      }

      goto LABEL_19;
    }
  }

  if (*v9 && !llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), *v9))
  {
    v32 = *a2;
    v42 = "reference to invalid result number";
    LOWORD(v46) = 259;
    mlir::detail::Parser::emitError(a1, v32, &v42, v41);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v41);
    v10 = 0;
    goto LABEL_22;
  }

  v22 = *a2;
  v35[0] = a3;
  mlir::OperationName::OperationName(&v37, "builtin.unrealized_conversion_cast", 0x22, ***(a1 + 8));
  v23 = mlir::Lexer::getEncodedSourceLocation(*(a1 + 8) + 8, v22);
  v42 = &v44;
  v43 = 0x400000000;
  v47 = 4;
  v24 = mlir::Operation::create(v23, v37, v35 + 2, 1u, 0, 0, &v42, 0, 0, 0, 0, 0);
  if (v42 != &v44)
  {
    free(v42);
  }

  v10 = (v24 - 16);
  v38 = 0;
  v25 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*(a1 + 336), *(a1 + 352), v10, &v38);
  v26 = v38;
  if ((v25 & 1) == 0)
  {
    v42 = v38;
    v27 = *(a1 + 344);
    v28 = *(a1 + 352);
    if (4 * v27 + 4 >= 3 * v28)
    {
      v28 *= 2;
    }

    else if (v28 + ~v27 - *(a1 + 348) > v28 >> 3)
    {
LABEL_15:
      *(a1 + 344) = v27 + 1;
      if (*v26 != -4096)
      {
        --*(a1 + 348);
      }

      *v26 = v10;
      v26[1] = 0;
      goto LABEL_18;
    }

    llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::grow(a1 + 336, v28);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*(a1 + 336), *(a1 + 352), v10, &v42);
    v27 = *(a1 + 344);
    v26 = v42;
    goto LABEL_15;
  }

LABEL_18:
  v26[1] = v22;
  v29 = *a2;
  v30 = &(*v7)[2 * *(a2 + 24)];
  *v30 = v10;
  v30[1] = v29;
LABEL_19:
  v31 = *(*(a1 + 8) + 152);
  if (v31)
  {
    mlir::AsmParserState::addUses(v31, v10, a2, 1);
  }

LABEL_22:
  v33 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalSSAUseList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::$_0>(uint64_t *a1)
{
  v2 = *a1;
  memset(v9, 0, 24);
  {
    return 0;
  }

  v3 = a1[1];
  v4 = 1;
  v5 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v3, v9, 1);
  v6 = (*v3 + 32 * *(v3 + 8));
  v7 = v5[1];
  *v6 = *v5;
  v6[1] = v7;
  ++*(v3 + 8);
  return v4;
}

uint64_t anonymous namespace::OperationParser::parseSSAUse(uint64_t a1, uint64_t a2, char a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  if (*(v4 + 56) != 2)
  {
    *(a2 + 8) = *(v4 + 64);
    *(a2 + 24) = 0;
    *a2 = *(*(a1 + 8) + 64);
    *&v44 = "expected SSA operand";
    LOWORD(v47) = 259;
    v24 = 0;
    if (!mlir::detail::Parser::parseToken(a1, 6, &v44))
    {
      goto LABEL_56;
    }

    v30 = *(a1 + 8);
    if (*(v30 + 56) == 5)
    {
      if ((a3 & 1) == 0)
      {
        v38[0] = "result number not allowed in argument list";
        v40 = 259;
        v32 = *(v30 + 64);
        goto LABEL_53;
      }

      HashIdentifierNumber = mlir::Token::getHashIdentifierNumber((v30 + 56), v27, v28, v29);
      if ((HashIdentifierNumber & 0x100000000) == 0)
      {
        v38[0] = "invalid SSA value result number";
        v40 = 259;
        v32 = *(*(a1 + 8) + 64) - (*(*(a1 + 8) + 56) == 0);
LABEL_53:
        mlir::detail::Parser::emitError(a1, v32, v38, &v44);
        v24 = v51 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
        goto LABEL_56;
      }

      *(a2 + 24) = HashIdentifierNumber;
      v33 = *(a1 + 8);
      *(v33 + 80) = *(v33 + 56);
      *(v33 + 96) = *(v33 + 72);
      mlir::Lexer::lexToken((*(a1 + 8) + 8), &v44);
      v34 = *(a1 + 8);
      *(v34 + 56) = v44;
      *(v34 + 72) = v45;
    }

    v24 = 1;
    goto LABEL_56;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v37 = v6 + 88 * v5;
    while (1)
    {
      v7 = *(v6 + 8);
      if (v7)
      {
          ;
        }
      }

      else
      {
        i = *v6;
      }

      v10 = *v6 + 8 * v7;
      if (i != v10)
      {
        break;
      }

LABEL_45:
      v6 += 88;
      if (v6 == v37)
      {
        goto LABEL_46;
      }
    }

    v11 = *i;
    while (!*(v11 + 4))
    {
      do
      {
LABEL_40:
        v22 = i[1];
        ++i;
        v11 = v22;
        if (v22)
        {
          v23 = v11 + 1 == 0;
        }

        else
        {
          v23 = 1;
        }
      }

      while (v23);
      if (i == v10)
      {
        goto LABEL_45;
      }
    }

    v12 = *v11[1];
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    DWORD2(v44) = 0;
    v48 = 0;
    v49 = 1;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    *&v44 = &unk_286E79D28;
    v50 = v38;
    llvm::raw_ostream::SetUnbuffered(&v44);
    if ((~*(v12 + 8) & 7) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      if (llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(*(a1 + 336), *(a1 + 352), v13))
      {
LABEL_32:
        v43 = *(v12 + 8) & 0xFFFFFFFFFFFFFFF8;
        mlir::Type::print(&v43, &v44);
        if (*(v11 + 4) >= 2u)
        {
          v19 = v47;
          if ((v46 - v47) > 4)
          {
            *(v47 + 4) = 46;
            *v19 = 774774828;
            v47 += 5;
          }

          else
          {
            llvm::raw_ostream::write(&v44, ", ...", 5uLL);
          }
        }

        v20 = *v11;
        v21 = *(*(a1 + 8) + 160);
        *__p = *v38;
        v42 = v39;
        v38[0] = 0;
        v38[1] = 0;
        v39 = 0;
        (*(*v21 + 32))(v21, v11 + 5, v20, __p);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        llvm::raw_ostream::~raw_ostream(&v44);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38[0]);
        }

        goto LABEL_40;
      }

      v14 = *(v13 + 8) & 7;
      if (v14 == 6)
      {
        v15 = v13 + 24 * *(v13 + 16) + 120;
      }

      else
      {
        v15 = v13 + 16 * v14 + 16;
      }

      v17 = &v44;
      llvm::raw_ostream::operator<<(&v44, *(*(*(v15 + 48) + 8) + 16), *(*(*(v15 + 48) + 8) + 24));
    }

    else
    {
      v16 = v47;
      if ((v46 - v47) > 4)
      {
        *(v47 + 4) = 35;
        *v16 = 543650401;
        v47 += 5;
        v17 = &v44;
      }

      else
      {
        v17 = llvm::raw_ostream::write(&v44, "arg #", 5uLL);
      }

      write_unsigned<unsigned long long>(v17, *(v12 + 24), 0, 0, 0);
    }

    v18 = *(v17 + 4);
    if (*(v17 + 3) - v18 > 1uLL)
    {
      *v18 = 8250;
      *(v17 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v17, ": ", 2uLL);
    }

    goto LABEL_32;
  }

LABEL_46:
  v24 = 0;
LABEL_56:
  v35 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::doFind<mlir::Value>(uint64_t a1, int a2, unint64_t a3)
{
  if (a2)
  {
    v3 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
    v5 = (-348639895 * ((v4 >> 47) ^ v4)) & (a2 - 1);
    v6 = *(a1 + 16 * v5);
    if (v6 == a3)
    {
      return a1 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & (a2 - 1);
      v6 = *(a1 + 16 * v5);
      if (v6 == a3)
      {
        return a1 + 16 * v5;
      }
    }
  }

  return 0;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 32 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 32);
    }
  }

  return v3;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseSuccessors(llvm::SmallVectorImpl<mlir::Block *> &)::$_0>(uint64_t a1)
{
  v2 = *a1;
  v5 = 0;
  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(*(a1 + 8), v5);
  return v3;
}

BOOL anonymous namespace::OperationParser::parseSuccessor(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  v4 = *(v3 + 56);
  if (v4 == 7)
  {
    v12 = *(v3 + 72);
    v25 = *(v3 + 64);
    v14 = *BlockInfoByName;
    if (!*BlockInfoByName)
    {
      operator new();
    }

    v15 = *(*(this + 1) + 152);
    if (v15)
    {
      mlir::AsmParserState::addUses(v15, v14, &v25, 1);
      v14 = *BlockInfoByName;
    }

    *a2 = v14;
    v16 = *(this + 1);
    *(v16 + 80) = *(v16 + 56);
    *(v16 + 96) = *(v16 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v26);
    v17 = *(this + 1);
    *(v17 + 56) = v26;
    *(v17 + 72) = v27;
    v18 = 1;
  }

  else if (v4 == 2)
  {
    v5 = *(v3 + 72);
    if (!v5 || v5 == 1 && **(v3 + 64) == 94)
    {
      v6 = *(this + 26) + 24 * *(this + 54);
      if (*(v6 - 16))
      {
        v7 = *(v6 - 24);
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = 32 * v8;
          v10 = v7;
          while (*v10 >= 0xFFFFFFFFFFFFFFFELL)
          {
            v10 += 4;
            v9 -= 32;
            if (!v9)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v10 = v7;
        }

        v19 = &v7[4 * v8];
        if (v10 != v19)
        {
          v20 = *v10;
LABEL_21:
          (*(**(*(this + 1) + 160) + 40))(*(*(this + 1) + 160), v20, v10[1]);
          while (1)
          {
            v10 += 4;
            if (v10 == v19)
            {
              break;
            }

            v20 = *v10;
            if (*v10 < 0xFFFFFFFFFFFFFFFELL)
            {
              v18 = 0;
              if (v10 != v19)
              {
                goto LABEL_21;
              }

              goto LABEL_27;
            }
          }
        }
      }
    }

LABEL_26:
    v18 = 0;
  }

  else
  {
    v23 = "expected block name";
    v24 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v23, &v26);
    v18 = (v28 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  }

LABEL_27:
  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

void *anonymous namespace::OperationParser::getBlockInfoByName(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *&v11 = a3;
  *(&v11 + 1) = a4;
  v4 = a1 + 24 * a2;
  v5 = *(v4 - 24);
  v12 = 0;
  v7 = v12;
  if (v6)
  {
    return v7 + 2;
  }

  v13 = v12;
  v8 = *(v4 - 16);
  v9 = *(v4 - 8);
  if (4 * v8 + 4 >= 3 * v9)
  {
    v9 *= 2;
    goto LABEL_9;
  }

  if (v9 + ~v8 - *(v4 - 12) <= v9 >> 3)
  {
LABEL_9:
    v8 = *(v4 - 16);
    v7 = v13;
  }

  *(v4 - 16) = v8 + 1;
  if (*v7 != -1)
  {
    --*(v4 - 12);
  }

  *v7 = v11;
  v7[2] = 0;
  v7[3] = 0;
  return v7 + 2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>,llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,anonymous namespace::OperationParser::BlockDefinition>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 32 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = v8;
      while (*v9 != -1)
      {
        if (v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v9 == -2;
        }

        if (v14)
        {
          v15 = v9;
        }

        else
        {
          v15 = v11;
        }

        v16 = v12 + 1;
        v17 = (v13 + v12) & v7;
        v9 = a1 + 32 * v17;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v13 = v17;
        v11 = v15;
        v19 = isEqual;
        result = 1;
        v12 = v16;
        if (v19)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 32 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 2;
        v11 -= 32;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 32 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = 0;
          v14 = v17;
          *v17 = *v13;
          v14[1] = v13[1];
          ++*(a1 + 8);
        }

        v13 += 2;
        v12 -= 32;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 32 * v15;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 2;
      v16 -= 32;
    }

    while (v16);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
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
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
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

char *llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
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
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>,mlir::Block *,llvm::SMLoc,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SMLoc>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v20, &v30);
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
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

BOOL anonymous namespace::OperationParser::parseBlock(_anonymous_namespace_::OperationParser *this, mlir::Block **a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(this + 1);
  if (*a2 && *(v5 + 56) != 7)
  {
    *(this + 50) = v4;
    *(this + 51) = v4 + 32;
    while (1)
    {
      v19 = *(*(this + 1) + 56);
      if (v19 == 7 || v19 == 27)
      {
        goto LABEL_32;
      }

      {
        goto LABEL_31;
      }
    }
  }

  v6 = *(v5 + 64);
  v7 = *(v5 + 72);
  v35 = "expected block name";
  v37 = 259;
  if (!mlir::detail::Parser::parseToken(this, 7, &v35))
  {
    goto LABEL_31;
  }

  v9 = BlockInfoByName;
  BlockInfoByName[1] = v6;
  v10 = *BlockInfoByName;
  if (!*BlockInfoByName)
  {
    v17 = *a2;
    if (!*a2)
    {
      operator new();
    }

    v18 = 0;
    *BlockInfoByName = v17;
    goto LABEL_18;
  }

  v11 = *(this + 34) + 24 * *(this + 70);
  v12 = *(v11 - 8);
  if (v12)
  {
    v13 = *(v11 - 24);
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v10 >> 4) ^ (v10 >> 9));
    v16 = *(v13 + 16 * v15);
    if (v16 == v10)
    {
LABEL_7:
      *(v13 + 16 * v15) = -8192;
      *(v11 - 16) = vadd_s32(*(v11 - 16), 0x1FFFFFFFFLL);
      v17 = *BlockInfoByName;
      v18 = *BlockInfoByName;
LABEL_18:
      v21 = *(*(this + 1) + 152);
      if (v21)
      {
        mlir::AsmParserState::addDefinition(v21, v17, v6);
        v17 = *v9;
      }

      *a2 = v17;
      {
        v35 = "expected ':' after block name";
        v37 = 259;
        if (mlir::detail::Parser::parseToken(this, 15, &v35))
        {
          v22 = *a2 + 32;
          *(this + 50) = *a2;
          *(this + 51) = v22;
          while (1)
          {
            v23 = *(*(this + 1) + 56);
            if (v23 == 7 || v23 == 27)
            {
              break;
            }

            {
              goto LABEL_29;
            }
          }

LABEL_32:
          v25 = 1;
          goto LABEL_41;
        }
      }

LABEL_29:
      if (v18)
      {
        mlir::Block::dropAllDefinedValueUses(v18);
        mlir::Block::~Block(v18);
        MEMORY[0x25F891040]();
      }

LABEL_31:
      v25 = 0;
      goto LABEL_41;
    }

    v26 = 1;
    while (v16 != -4096)
    {
      v27 = v15 + v26++;
      v15 = v27 & v14;
      v16 = *(v13 + 16 * v15);
      if (v16 == v10)
      {
        goto LABEL_7;
      }
    }
  }

  v30[0] = "redefinition of block '";
  v31 = 259;
  mlir::detail::Parser::emitError(this, v6, v30, &v35);
  if (v35)
  {
    v34 = 261;
    v33[0] = v6;
    v33[1] = v7;
    mlir::Diagnostic::operator<<(v36, v33);
    if (v35)
    {
      mlir::Diagnostic::operator<<<2ul>(v36, "'");
    }
  }

  v25 = (v38 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t anonymous namespace::OperationParser::popSSANameScope(_anonymous_namespace_::OperationParser *this)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(this + 34) + 24 * *(this + 70);
  v3 = *(v2 - 24);
  v4 = *(v2 - 16);
  *(v2 - 24) = 0;
  *(v2 - 16) = 0;
  v5 = *(v2 - 8);
  *(v2 - 8) = 0;
  LODWORD(v2) = *(this + 70) - 1;
  *(this + 70) = v2;
  MEMORY[0x25F891030](*(*(this + 34) + 24 * v2), 8);
  if (v4)
  {
    v50 = (v51 + 8);
    *&v51[0] = 0x400000000;
    v6 = v3;
    if (v5)
    {
      v7 = 16 * v5;
      v6 = v3;
      while ((v6->i64[0] | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        ++v6;
        v7 -= 16;
        if (!v7)
        {
          goto LABEL_34;
        }
      }
    }

    v19 = &v3[v5];
    if (v6 != v19)
    {
      LODWORD(v20) = 0;
LABEL_20:
      v21 = *v6;
      if (v20 >= DWORD1(v51[0]))
      {
        v45 = *v6;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v51 + 8, v20 + 1, 16);
        v21 = v45;
        LODWORD(v20) = v51[0];
      }

      v50[v20] = vextq_s8(v21, v21, 8uLL);
      v20 = ++LODWORD(v51[0]);
      v22 = ((*(this + 52) + 16 * ((*(*(this + 52) + 44) >> 23) & 1) + ((*(*(this + 52) + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*(this + 52) + 40);
      *(v21.i64[0] + 24) = v22 & 0xFFFFFFFFFFFFFFF8 | *(v21.i64[0] + 24) & 7;
      v23 = *v22;
      *(v21.i64[0] + 8) = *v22;
      *(v21.i64[0] + 16) = v22;
      *(v23 + 8) = v21.i64[0] + 8;
      *v22 = v21.i64[0] + 8;
      while (++v6 != v19)
      {
        if ((v6->i64[0] | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          if (v6 != v19)
          {
            goto LABEL_20;
          }

          break;
        }
      }

      v24 = v50;
      if (v20 >= 2)
      {
        qsort(v50, v20, 0x10uLL, llvm::array_pod_sort_comparator<std::pair<char const*,mlir::Block *>>);
        v24 = v50;
        LODWORD(v20) = v51[0];
      }

      if (v20)
      {
        v25 = 16 * v20;
        do
        {
          v26 = *v24;
          v24 += 2;
          v47 = "reference to an undefined block";
          v48 = 259;
          mlir::detail::Parser::emitError(this, v26, &v47, v49);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v49);
          v25 -= 16;
        }

        while (v25);
        v24 = v50;
      }

      if (v24 != (v51 + 8))
      {
        free(v24);
      }
    }

LABEL_34:
    v27 = 0;
  }

  else
  {
    v8 = *(this + 2);
    v9 = *(this + 6);
    v10 = v8 + 88 * v9;
    v11 = *(v10 - 56);
    if (v11 == 1)
    {
      v12 = v9 - 1;
      *(this + 6) = v12;
      v13 = v8 + 88 * v12;
      llvm::SmallVector<llvm::StringSet<llvm::MallocAllocator>,2u>::~SmallVector(v13 + 24);
      if (*(v13 + 12))
      {
        v14 = *(v13 + 8);
        if (v14)
        {
          v15 = 0;
          v16 = 8 * v14;
          do
          {
            v17 = *(*v13 + v15);
            if (v17 != -8 && v17 != 0)
            {
            }

            v15 += 8;
          }

          while (v16 != v15);
        }
      }

      free(*v13);
    }

    else
    {
      v28 = *(v10 - 64) + 24 * v11;
      v50 = *(v28 - 24);
      v29 = v50;
      v51[0] = *(v28 - 16);
      v46 = v51[0];
      *(v28 - 8) = 0;
      *(v28 - 24) = 0;
      *(v28 - 16) = 0;
      LODWORD(v28) = *(v10 - 56) - 1;
      *(v10 - 56) = v28;
      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(*(v10 - 64) + 24 * v28);
      v31 = v29;
      if (v46)
      {
        while (!*v31 || *v31 == -8)
        {
          ++v31;
        }
      }

      v33 = &v29->i64[v46];
      if (v31 != v33)
      {
        v34 = *v31;
        do
        {
          v36 = *v34;
          v35 = (v34 + 1);
          v37 = llvm::xxh3_64bits(v35, v36, v30);
          Key = llvm::StringMapImpl::FindKey((v10 - 88), v35, v36, v37);
          if (Key != -1 && Key != *(v10 - 80))
          {
            v39 = *(*(v10 - 88) + 8 * Key);
            llvm::StringMapImpl::RemoveKey(v10 - 88, v39 + *(v10 - 68), *v39);
          }

          do
          {
            v40 = v31[1];
            ++v31;
            v34 = v40;
            if (v40)
            {
              v41 = v34 + 1 == 0;
            }

            else
            {
              v41 = 1;
            }
          }

          while (v41);
        }

        while (v31 != v33);
      }

      llvm::StringMap<std::nullopt_t,llvm::MallocAllocator>::~StringMap(&v50);
    }

    v42 = *(this + 54) - 1;
    *(this + 54) = v42;
    MEMORY[0x25F891030](*(*(this + 26) + 24 * v42), 8);
    v27 = 1;
  }

  MEMORY[0x25F891030](v3, 8);
  v43 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t llvm::StringMap<llvm::SmallVector<anonymous namespace::OperationParser::ValueDefinition,1u>,llvm::MallocAllocator>::operator[](llvm::StringMapImpl *a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
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
  v12 = buffer;
  v13 = (buffer + 5);
  if (a3)
  {
    memcpy(buffer + 5, a2, a3);
  }

  a3[v13] = 0;
  *v12 = a3;
  v12[1] = (v12 + 3);
  v12[2] = 0x100000000;
  *(v8 + 8 * v9) = v12;
  ++*(a1 + 3);
  for (i = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9)); ; ++i)
  {
    v10 = *i;
    if (*i && v10 != -8)
    {
      break;
    }
  }

  return v10 + 8;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::OperationParser::parseOptionalBlockArgList(mlir::Block *)::$_0>(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v18 = 0;
  v19 = 0uLL;
  {
    goto LABEL_13;
  }

  v23 = "expected ':' and type for SSA operand";
  v26 = 259;
  if (!mlir::detail::Parser::parseToken(v1, 15, &v23))
  {
    goto LABEL_13;
  }

  v8 = mlir::detail::Parser::parseType(v1, v5, v6, v7);
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v18;
  if (*v2 != 1)
  {
    mlir::Lexer::getEncodedSourceLocation(*(v1 + 1) + 8, v18);
    mlir::Block::addArgument(*v4);
  }

  v10 = *v3;
  v11 = *(*v4 + 48);
  if (v10 >= ((*(*v4 + 56) - v11) >> 3))
  {
    v13 = "too many arguments specified in argument list";
    goto LABEL_16;
  }

  *v3 = v10 + 1;
  v12 = *(v11 + 8 * v10);
  if ((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) != v8)
  {
    v13 = "argument and block argument type mismatch";
LABEL_16:
    v21 = v13;
    v22 = 259;
    mlir::detail::Parser::emitError(v1, *(*(v1 + 1) + 64) - (*(*(v1 + 1) + 56) == 0), &v21, &v23);
    v15 = (v27 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
    goto LABEL_14;
  }

  {
    v14 = *(*(v1 + 1) + 152);
    if (v14)
    {
      mlir::AsmParserState::addDefinition(v14, v12, v9);
    }

    v23 = v9;
    v24 = v19;
    v25 = v20;
  }

  else
  {
LABEL_13:
    v15 = 0;
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
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

void llvm::SmallVectorImpl<anonymous namespace::OperationParser::ValueDefinition>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 16);
        v2 = *(a1 + 8);
      }

      if (a2 != v2)
      {
        bzero((*a1 + 16 * v2), 16 * (a2 - v2));
      }
    }

    *(a1 + 8) = a2;
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = (a1 + 16 * (v15 & v6));
        v9 = *v8;
        v10 = 1;
        if (*v8 == a3)
        {
          goto LABEL_5;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_5:
  *a4 = v8;
  return v10;
}

char *llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::grow(uint64_t a1, int a2)
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
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
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
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>,mlir::Value,llvm::SMLoc,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SMLoc>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v20, &v30);
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
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOperandList(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AsmParser::Delimiter,BOOL,int)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[1]);
  v4 = *a1[2];
  v5 = *(*v2 + 704);

  return v5(v2, v3, v4);
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + 32 * v1);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (*(a1 + 8) + 1);
  *(a1 + 8) = v3;
  return *a1 + 32 * v3 - 32;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>::growAndEmplaceBack<>(uint64_t a1)
{
  memset(v7, 0, sizeof(v7));
  v2 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(a1, v7, 1);
  v3 = (*a1 + 32 * *(a1 + 8));
  v4 = v2[1];
  *v3 = *v2;
  v3[1] = v4;
  v5 = (*(a1 + 8) + 1);
  *(a1 + 8) = v5;
  return *a1 + 32 * v5 - 32;
}

void llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::append<mlir::OpAsmParser::UnresolvedOperand*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 5);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 32);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 32 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 5);
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineMapOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::Attribute &,llvm::StringRef,mlir::NamedAttrList &,mlir::AsmParser::Delimiter)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v12, 0, 24);
  if (((*(*v4 + 704))(v4, v12, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = 2;
  if (a2)
  {
    v5 = 1;
  }

  v6 = a1[v5];
  v7 = 1;
  v8 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v6, v12, 1);
  v9 = (*v6 + 32 * *(v6 + 8));
  v10 = v8[1];
  *v9 = *v8;
  v9[1] = v10;
  ++*(v6 + 8);
  return v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(BOOL)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseAffineExprOfSSAIds(llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &,mlir::AffineExpr &)::{lambda(BOOL)#1}>(uint64_t *a1, int a2)
{
  v4 = *a1;
  memset(v12, 0, 24);
  if (((*(*v4 + 704))(v4, v12, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = 2;
  if (a2)
  {
    v5 = 1;
  }

  v6 = a1[v5];
  v7 = 1;
  v8 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(v6, v12, 1);
  v9 = (*v6 + 32 * *(v6 + 8));
  v10 = v8[1];
  *v9 = *v8;
  v9[1] = v10;
  ++*(v6 + 8);
  return v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseArgumentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,mlir::AsmParser::Delimiter,BOOL,BOOL)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(a1[1]);
  v4 = *a1[2];
  v5 = *a1[3];
  v6 = *(*v2 + 752);

  return v6(v2, v3, v4, v5);
}

uint64_t llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(a1);
  }

  v2 = (*a1 + (v1 << 6));
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (*(a1 + 8) + 1);
  *(a1 + 8) = v3;
  return *a1 + (v3 << 6) - 64;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::growAndEmplaceBack<>(uint64_t a1)
{
  memset(v9, 0, sizeof(v9));
  v2 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(a1, v9, 1);
  v3 = (*a1 + (*(a1 + 8) << 6));
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[3];
  v3[2] = v2[2];
  v3[3] = v6;
  *v3 = v4;
  v3[1] = v5;
  v7 = (*(a1 + 8) + 1);
  *(a1 + 8) = v7;
  return *a1 + (v7 << 6) - 64;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 64);
    }
  }

  return v3;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::CustomOpAsmParser::parseOptionalAssignmentList(llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand> &)::{lambda(void)#1}>(uint64_t *a1)
{
  v2 = *a1;
  v3 = llvm::SmallVectorImpl<mlir::OpAsmParser::Argument>::emplace_back<>(a1[1]);
  if (((*(*v2 + 752))(v2, v3, 0, 0) & 1) == 0 || ((*(*v2 + 136))(v2) & 1) == 0)
  {
    return 0;
  }

  v4 = llvm::SmallVectorImpl<mlir::OpAsmParser::UnresolvedOperand>::emplace_back<>(a1[2]);
  return (*(*v2 + 704))(v2, v4, 1) & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseCustomOperation(llvm::ArrayRef<std::tuple<llvm::StringRef,unsigned int,llvm::SMLoc>>)::$_2>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v12 = "invalid properties ";
  v13 = 259;
  emitDiag(v4, 2, &v12, &v17);
  if (v17)
  {
    v5 = **(a1 + 8);
    LODWORD(v14) = 0;
    v15 = v5;
    v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
    v7 = v19 + 24 * v20;
    v8 = *v6;
    *(v7 + 16) = *(v6 + 16);
    *v7 = v8;
    ++v20;
    if (v17)
    {
      mlir::Diagnostic::operator<<<9ul>(v18, " for op ");
      if (v17)
      {
        v9 = *(*(*(**(a1 + 16) + 48) + 8) + 16);
        v10 = *(*(*(**(a1 + 16) + 48) + 8) + 24);
        v16 = 261;
        v14 = v9;
        v15 = v10;
        mlir::Diagnostic::operator<<(v18, &v14);
        if (v17)
        {
          mlir::Diagnostic::operator<<<3ul>(v18, ": ");
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v17);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  v11 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[25] = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v8 = 257;
  emitDiag(v4, 2, v7, &v9);
  if (v9)
  {
    mlir::Diagnostic::operator<<<2ul>(v10, "'");
    if (v9)
    {
      v5 = *(a1 + 8);
      v8 = 260;
      v7[0] = v5;
      mlir::Diagnostic::operator<<(v10, v7);
      if (v9)
      {
        mlir::Diagnostic::operator<<<6ul>(v10, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v9);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  v6 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<anonymous namespace::OperationParser::parseGenericOperation(void)::$_1>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v11 = "invalid properties ";
  v12 = 259;
  emitDiag(v4, 2, &v11, &v15);
  if (v15)
  {
    v5 = **(a1 + 8);
    LODWORD(v13[0]) = 0;
    v13[1] = v5;
    v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v17, v13, 1);
    v7 = v17 + 24 * v18;
    v8 = *v6;
    *(v7 + 16) = *(v6 + 16);
    *v7 = v8;
    ++v18;
    if (v15)
    {
      mlir::Diagnostic::operator<<<9ul>(v16, " for op ");
      if (v15)
      {
        v9 = *(a1 + 16);
        v14 = 260;
        v13[0] = v9;
        mlir::Diagnostic::operator<<(v16, v13);
        if (v15)
        {
          mlir::Diagnostic::operator<<<3ul>(v16, ": ");
        }
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v15);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v15);
  v10 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::SMLoc>,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + 1, 16);
    LODWORD(v6) = *(a1 + 8);
  }

  v7 = (*a1 + 16 * v6);
  *v7 = a2;
  v7[1] = a3;
  ++*(a1 + 8);
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
  v43 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 24);
  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
  {
    goto LABEL_3;
  }

  v5 = *a1;
  if (*(*a1)[1] != v4[2])
  {
    goto LABEL_3;
  }

  v26 = *v5;
  v27 = *(*v5 + 360) + 24 * v4[1];
  v28 = *v27;
  v29 = v5[2];
  v30 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v29, *(v27 + 8), *(v27 + 16));
  if (*v29 + 8 * *(v29 + 8) == v30 || (v31 = *(*v30 + 8), (v37[0] = v31) == 0))
  {
    v36 = 257;
    mlir::detail::Parser::emitError(v26, v28, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<43ul>(v39, "operation location alias was never defined");
    }

LABEL_34:
    v32 = v42;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    if (v32)
    {
LABEL_35:
      result = 0;
      goto LABEL_36;
    }

    goto LABEL_3;
  }

  v38 = v31;
  if ((mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v38) & 1) == 0)
  {
    v36 = 257;
    mlir::detail::Parser::emitError(v26, v28, v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<31ul>(v39, "expected location, but found '");
      if (v38)
      {
        mlir::Diagnostic::operator<<<mlir::Attribute &>(v39, v37);
        if (v38)
        {
          mlir::Diagnostic::operator<<<2ul>(v39, "'");
        }
      }
    }

    goto LABEL_34;
  }

  *(a2 + 24) = v31;
LABEL_3:
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) == 0)
  {
    goto LABEL_27;
  }

  v7 = ((a2 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v34 = v7 + 24 * (v6 & 0x7FFFFF);
  do
  {
    for (i = *(v7 + 8); i != v7; i = *(i + 8))
    {
      v9 = i - 8;
      if (!i)
      {
        v9 = 0;
      }

      v11 = *(v9 + 48);
      v10 = *(v9 + 56);
      while (v11 != v10)
      {
        v12 = *v11;
        v13 = *(*v11 + 32);
        if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id)
        {
          v14 = *a1;
          if (*(*a1)[1] == v13[2])
          {
            v15 = *v14;
            v16 = *(*v14 + 360) + 24 * v13[1];
            v17 = *v16;
            v18 = v14[2];
            v19 = llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::find(v18, *(v16 + 8), *(v16 + 16));
            if (*v18 + 8 * *(v18 + 8) == v19 || (v20 = *(*v19 + 8)) == 0)
            {
              v36 = 257;
              mlir::detail::Parser::emitError(v15, v17, v35, &v38);
              if (v38)
              {
                mlir::Diagnostic::operator<<<43ul>(v39, "operation location alias was never defined");
              }
            }

            else
            {
              v38 = *(*v19 + 8);
              if (mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v38))
              {
                *(v12 + 32) = v20;
                goto LABEL_20;
              }

              v36 = 257;
              mlir::detail::Parser::emitError(v15, v17, v35, &v38);
              if (v38)
              {
                mlir::Diagnostic::operator<<<31ul>(v39, "expected location, but found '");
                if (v38)
                {
                  LODWORD(v37[0]) = 0;
                  v37[1] = v20;
                  v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, v37, 1);
                  v23 = v40 + 24 * v41;
                  v24 = *v22;
                  *(v23 + 16) = *(v22 + 16);
                  *v23 = v24;
                  ++v41;
                  if (v38)
                  {
                    mlir::Diagnostic::operator<<<2ul>(v39, "'");
                  }
                }
              }
            }

            v21 = v42;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
            if (v21)
            {
              goto LABEL_35;
            }
          }
        }

LABEL_20:
        ++v11;
      }
    }

    v7 += 24;
  }

  while (v7 != v34);
LABEL_27:
  result = 1;
LABEL_36:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

size_t **llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v7);
  v9 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = i[1];
      ++i;
      v9 = v10;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v12 = buffer;
  v13 = (buffer + 2);
  if (a3)
  {
    memcpy(buffer + 2, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  *i = v12;
  ++*(a1 + 3);
    ;
  }

  return i;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseFileMetadataDictionary(void)::$_0>(mlir::detail::Parser **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*(*a1 + 1) + 64);
  v17 = 0;
  v18 = 0;
  if (!mlir::detail::Parser::parseOptionalKeyword(v1, &v17))
  {
    v15[0] = "expected identifier key in file metadata dictionary";
    v16 = 259;
    v6 = *(*(v1 + 1) + 64) - (*(*(v1 + 1) + 56) == 0);
    v7 = v1;
LABEL_24:
    mlir::detail::Parser::emitError(v7, v6, v15, v19);
    v8 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    goto LABEL_25;
  }

  v19[0] = "expected ':'";
  v20 = 259;
  if (mlir::detail::Parser::parseToken(v1, 15, v19))
  {
    if (v18 == 18)
    {
      if (*v17 != 0x6C616E7265747865 || *(v17 + 8) != 0x6372756F7365725FLL || *(v17 + 16) != 29541)
      {
        goto LABEL_23;
      }

      v19[0] = v1;
    }

    else
    {
      if (v18 != 17 || (*v17 == 0x5F7463656C616964 ? (v3 = *(v17 + 8) == 0x656372756F736572) : (v3 = 0), v3 ? (v4 = *(v17 + 16) == 115) : (v4 = 0), !v4))
      {
LABEL_23:
        v14 = 1283;
        v13[0] = "unknown key '";
        v13[2] = v17;
        v13[3] = v18;
        v15[0] = v13;
        v15[2] = "' in file metadata dictionary";
        v16 = 770;
        v7 = v1;
        v6 = v2;
        goto LABEL_24;
      }

      v19[0] = v1;
    }

    goto LABEL_25;
  }

  v8 = 0;
LABEL_25:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v5[0] = "expected '{'";
  v6 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 20, v5))
  {
    return 0;
  }

  v5[0] = a1;
  v5[1] = v7;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseResourceFileMetadata(llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>)::$_0>(mlir::detail::Parser **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  v9 = 0;
  v10 = 0;
  if (mlir::detail::Parser::parseOptionalKeyword(v2, &v9))
  {
    v11[0] = "expected ':'";
    v12 = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, v11) && (v7[0] = "expected '{'", v8 = 259, mlir::detail::Parser::parseToken(v2, 20, v7)))
    {
      v4 = (*a1[1])(*(a1[1] + 1), v9, v10, v3);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v7[0] = "expected identifier key for 'resource' entry";
    v8 = 259;
    mlir::detail::Parser::emitError(v2, *(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0), v7, v11);
    v4 = (v13 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, const void *a2, size_t a3, unint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  Dialect = mlir::MLIRContext::getOrLoadDialect(***(*a1 + 1), a2, a3, a4);
  if (!Dialect)
  {
    v16 = 1283;
    v15[0] = "dialect '";
    v15[2] = a2;
    v15[3] = a3;
    v17[0] = v15;
    v17[2] = "' is unknown";
    v18 = 770;
    mlir::detail::Parser::emitError(v7, a4, v17, &v19);
LABEL_5:
    v10 = (v21 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
    goto LABEL_6;
  }

  v9 = Dialect;
  if (!mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(Dialect))
  {
    v16 = 257;
    mlir::detail::Parser::emitError(v7, *(*(v7 + 1) + 64) - (*(*(v7 + 1) + 56) == 0), v15, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<44ul>(v20, "unexpected 'resource' section for dialect '");
      if (v19)
      {
        v13 = *(v9 + 8);
        v14 = *(v9 + 16);
        v18 = 261;
        v17[0] = v13;
        v17[1] = v14;
        mlir::Diagnostic::operator<<(v20, v17);
        if (v19)
        {
          mlir::Diagnostic::operator<<<2ul>(v20, "'");
        }
      }
    }

    goto LABEL_5;
  }

  v17[0] = mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>(v9);
  v19 = v7;
  v20[0] = v17;
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseDialectResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  memset(&v20, 0, sizeof(v20));
  mlir::detail::Parser::parseResourceHandle(v2, *a1[1], &v20, &v17);
  if (v19 == 1 && (*__p = "expected ':'", LOWORD(v13) = 259, mlir::detail::Parser::parseToken(v2, 15, __p)))
  {
    v4 = *(v2 + 1);
    v17 = *(v4 + 56);
    v18 = *(v4 + 72);
    v5 = v18;
    *(v4 + 80) = v17;
    *(v4 + 96) = v5;
    mlir::Lexer::lexToken((*(v2 + 1) + 8), __p);
    v6 = *(v2 + 1);
    *(v6 + 56) = *__p;
    *(v6 + 72) = *&__p[16];
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v10, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v10 = v20;
    }

    *&__p[8] = *&v10.__r_.__value_.__l.__data_;
    v9 = v10.__r_.__value_.__r.__words[2];
    *__p = &unk_286E80E00;
    memset(&v10, 0, sizeof(v10));
    v12 = v9;
    v13 = v3;
    v14 = v17;
    v15 = v18;
    v16 = v2;
    v7 = (*(**a1[1] + 48))(*a1[1], __p);
    *__p = &unk_286E80E00;
    if (SHIBYTE(v12) < 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v7;
}

void anonymous namespace::ParsedResourceEntry::~ParsedResourceEntry(void **this)
{
  *this = &unk_286E80E00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_286E80E00;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x25F891040);
}

char *anonymous namespace::ParsedResourceEntry::getKey(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v3 = *(this + 1);
  v1 = this + 8;
  v2 = v3;
  v4 = v1[23];
  if (v4 >= 0)
  {
    v2 = v1;
  }

  if (v4 >= 0)
  {
    v5 = v1[23];
  }

  else
  {
    v5 = *(v1 + 1);
  }

  return v2;
}

void anonymous namespace::ParsedResourceEntry::emitError(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 8);
  v3 = *(this + 4);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t anonymous namespace::ParsedResourceEntry::getKind(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v2 = *(this + 10);
  result = 1;
  if (v2 != 60 && v2 != 80)
  {
    if (*(this + 7) >= 3uLL)
    {
      v4 = bswap32(**(this + 6) | (*(*(this + 6) + 2) << 16));
      v5 = v4 >= 0x22307800;
      v6 = v4 > 0x22307800;
      v7 = !v5;
      return 2 * (v6 != v7);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

{
  return *(this + 6);
}

uint64_t anonymous namespace::ParsedResourceEntry::parseAsBool(_anonymous_namespace_::ParsedResourceEntry *this)
{
  v15[26] = *MEMORY[0x277D85DE8];
  v1 = *(this + 10);
  if (v1 == 60)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 80)
  {
    v2 = 1;
LABEL_5:
    v3 = 1;
    goto LABEL_11;
  }

  v4 = *(this + 8);
  v5 = *(this + 6);
  std::operator+<char>();
  v6 = std::string::append(&v10, "'");
  v7 = v6->__r_.__value_.__r.__words[2];
  *__p = *&v6->__r_.__value_.__l.__data_;
  v12 = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v14 = 260;
  v13 = __p;
  mlir::detail::Parser::emitError(v4, v5, &v13, v15);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v2 = 0;
  v3 = 0;
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v2 | (v3 << 8);
}

{
  v13[25] = *MEMORY[0x277D85DE8];
  if (*(this + 6) == 1)
  {
    LOBYTE(v12) = 0;
    if (v2)
    {
      v3 = v12;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = *(*(this + 4) + 24);
    v11 = 257;
    emitDiag(v4, 2, v10, &v12);
    if (v12)
    {
      mlir::Diagnostic::operator<<<45ul>(v13, "expected a BOOL resource entry, but found a ");
      if (v12)
      {
        v5 = *(this + 6);
        v6 = qword_25D0A02C0[v5];
        v7 = (&off_2799BECA0)[v5];
        v11 = 261;
        v10[0] = v7;
        v10[1] = v6;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<15ul>(v13, " entry instead");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
    v3 = 0;
    v2 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3 | (v2 << 8);
}

void anonymous namespace::ParsedResourceEntry::parseAsString(_anonymous_namespace_::ParsedResourceEntry *this@<X0>, std::string *a2@<X8>)
{
  v13[26] = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 11)
  {
    mlir::Token::getStringValue((this + 40), a2);
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v3 = *(this + 8);
    v4 = *(this + 6);
    std::operator+<char>();
    v5 = std::string::append(&v8, "'");
    v6 = v5->__r_.__value_.__r.__words[2];
    *__p = *&v5->__r_.__value_.__l.__data_;
    v10 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v12 = 260;
    v11 = __p;
    mlir::detail::Parser::emitError(v3, v4, &v11, v13);
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void anonymous namespace::ParsedResourceEntry::parseAsBlob(uint64_t *a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, size_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 10);
  v6 = (a1 + 5);
  if (v7 == 11)
  {
    mlir::Token::getHexStringValue(v6, &v34);
    v10 = v35;
    if (v35)
    {
      v11 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v34.__r_.__value_.__l.__size_ >= 4)
        {
          v12 = v34.__r_.__value_.__r.__words[0];
          goto LABEL_19;
        }
      }

      else if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) > 3)
      {
        v12 = &v34;
LABEL_19:
        data_low = LODWORD(v12->__r_.__value_.__l.__data_);
        if ((data_low & (data_low - 1)) == 0)
        {
          size = v34.__r_.__value_.__l.__size_;
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
          }

          v24 = size - 4;
          if (size > 4)
          {
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &v34;
            }

            else
            {
              v28 = v34.__r_.__value_.__r.__words[0];
            }

            a2(__dst, a3, v24, data_low);
            memcpy(__dst[0], v28->__r_.__value_.__r.__words + 4, v24);
            *a4 = *__dst;
            *(a4 + 16) = v37[0];
            v25 = a4 + 24;
          }

          else
          {
            v38 = 0u;
            memset(v37, 0, sizeof(v37));
            *__dst = 0u;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
            *a4 = 0;
            v25 = a4 + 24;
          }

          llvm::detail::UniqueFunctionBase<void,void *,unsigned long,unsigned long>::UniqueFunctionBase(v25, &v37[1]);
          *(a4 + 56) = BYTE8(v38);
          v10 = 1;
          *(a4 + 64) = 1;
          mlir::AsmResourceBlob::~AsmResourceBlob(__dst);
          goto LABEL_12;
        }

        v18 = a1[8];
        v19 = a1[6];
        std::operator+<char>();
        v26 = std::string::append(&v29, "' to encode alignment in first 4 bytes, but got non-power-of-2 value: ");
        v27 = v26->__r_.__value_.__r.__words[2];
        *__p = *&v26->__r_.__value_.__l.__data_;
        v31 = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v32[0] = __p;
        v32[2] = data_low;
        v33 = 2308;
        goto LABEL_25;
      }

      v18 = a1[8];
      v19 = a1[6];
      std::operator+<char>();
      v20 = std::string::append(&v29, "' to encode alignment in first 4 bytes");
      v21 = v20->__r_.__value_.__r.__words[2];
      *__p = *&v20->__r_.__value_.__l.__data_;
      v31 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v33 = 260;
      v32[0] = __p;
LABEL_25:
      mlir::detail::Parser::emitError(v18, v19, v32, __dst);
      *a4 = 0;
      *(a4 + 64) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v10 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
    v34.__r_.__value_.__s.__data_[0] = 0;
  }

  v13 = a1[8];
  v14 = a1[6];
  std::operator+<char>();
  v15 = std::string::append(&v29, "'");
  v16 = v15->__r_.__value_.__r.__words[2];
  *__p = *&v15->__r_.__value_.__l.__data_;
  v31 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v33 = 260;
  v32[0] = __p;
  mlir::detail::Parser::emitError(v13, v14, v32, __dst);
  *a4 = 0;
  *(a4 + 64) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(__dst);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v11 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
LABEL_12:
  if ((v10 & 1) != 0 && v11 < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  v17 = *MEMORY[0x277D85DE8];
}

BOOL llvm::function_ref<llvm::ParseResult ()(llvm::StringRef,llvm::SMLoc)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0>(mlir::detail::Parser **a1, void *a2, const unsigned __int8 *a3, unint64_t *a4)
{
  v15[25] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  ResourceParser = mlir::ParserConfig::getResourceParser(**(*a1 + 1), a2, a3, a4);
  if (!ResourceParser)
  {
    EncodedSourceLocation = mlir::Lexer::getEncodedSourceLocation(*(v7 + 1) + 8, a4);
    v13 = 257;
    emitDiag(EncodedSourceLocation, 1, v12, &v14);
    if (v14)
    {
      mlir::Diagnostic::operator<<<42ul>(v15, "ignoring unknown external resources for '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<2ul>(v15, "'");
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  v14 = v7;
  v15[0] = &ResourceParser;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ParserConfig::getResourceParser(uint64_t a1, void *a2, const unsigned __int8 *a3, unint64_t *a4)
{
  v7 = a2;
  v8 = a3;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>((a1 + 16), &v7, a3, a4);
  if (v5 && v5 != *(a1 + 16) + 24 * *(a1 + 32))
  {
    return *(v5 + 16);
  }

  result = *(a1 + 40);
  if (result)
  {
    return mlir::FallbackAsmResourceMap::getParserFor(result, v7, v8);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>,llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::AsmResourceParser>>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = v4 - 1;
  v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v9 = v6 + 24 * v8;
  if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8)))
  {
    v10 = 1;
    while (*v9 != -1)
    {
      v11 = v10 + 1;
      v8 = (v8 + v10) & v7;
      v9 = v6 + 24 * v8;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8));
      v10 = v11;
      if (isEqual)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::TopLevelOperationParser::parseExternalResourceFileMetadata(void)::$_0::operator() const(llvm::StringRef,llvm::SMLoc)::{lambda(void)#1}>(mlir::detail::Parser **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 1) + 64);
  memset(&v16, 0, sizeof(v16));
  if (mlir::detail::Parser::parseOptionalKeywordOrString(v2, &v16))
  {
    *__p = "expected ':'";
    LOWORD(v19) = 259;
    if (mlir::detail::Parser::parseToken(v2, 15, __p))
    {
      v4 = *(v2 + 1);
      v13 = *(v4 + 56);
      v14 = *(v4 + 72);
      v5 = v14;
      *(v4 + 80) = v13;
      *(v4 + 96) = v5;
      mlir::Lexer::lexToken((*(v2 + 1) + 8), __p);
      v6 = *(v2 + 1);
      *(v6 + 56) = *__p;
      *(v6 + 72) = *&__p[16];
      v7 = a1[1];
      if (*v7)
      {
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v12, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
          v7 = a1[1];
        }

        else
        {
          v12 = v16;
        }

        v20 = v13;
        v21 = v14;
        v22 = v2;
        *__p = &unk_286E80E00;
        v9 = v12.__r_.__value_.__r.__words[2];
        *&__p[8] = *&v12.__r_.__value_.__l.__data_;
        memset(&v12, 0, sizeof(v12));
        v18 = v9;
        v19 = v3;
        v8 = (*(**v7 + 16))(*v7, __p);
        *__p = &unk_286E80E00;
        if (SHIBYTE(v18) < 0)
        {
          operator delete(*&__p[8]);
        }
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *&v13 = "expected identifier key for 'external_resources' entry";
    v15 = 259;
    mlir::detail::Parser::emitError(v2, *(*(v2 + 1) + 64) - (*(*(v2 + 1) + 56) == 0), &v13, __p);
    v8 = (v23 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
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
        v4 = v12 & (a2 - 1);
        v5 = (a1 + 32 * v4);
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

char *llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((32 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x7FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x7FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x7FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 32;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 4) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 8;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = v4 + 8;
      v19 = 32 * v3;
      do
      {
        v20 = *(v18 - 8);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::LookupBucketFor<mlir::OpAsmDialectInterface const*>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *(v18 - 8);
          v21[1] = *v18;
          *(v21 + 1) = *(v18 + 8);
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          ++*(a1 + 8);
          llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::~StringMap(v18);
        }

        v18 += 32;
        v19 -= 32;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0x7FFFFFFFFFFFFFFLL;
    v25 = v24 & 0x7FFFFFFFFFFFFFFLL;
    v26 = (v24 & 0x7FFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 32;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 4) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 8;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::Token::getUnsignedIntegerValue(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = 10;
  if (*(this + 2) >= 2uLL)
  {
    if (*(*(this + 1) + 1) == 120)
    {
      v6 = 0;
    }

    else
    {
      v6 = 10;
    }
  }

  v9 = v4;
  v10 = v5;
  v8 = 0;
  if (llvm::StringRef::getAsInteger<unsigned int>((this + 8), v6, &v8, a4))
  {
    return 0;
  }

  else
  {
    return v8 | 0x100000000;
  }
}

uint64_t llvm::StringRef::getAsInteger<unsigned int>(__int128 *a1, llvm::StringRef *a2, _DWORD *a3, unint64_t *a4)
{
  v7 = 0;
  v8 = *a1;
  v5 = llvm::consumeUnsignedInteger(&v8, a2, &v7, a4);
  result = 1;
  if ((v5 & 1) == 0 && !*(&v8 + 1) && !HIDWORD(v7))
  {
    result = 0;
    *a3 = v7;
  }

  return result;
}

unint64_t mlir::Token::getUInt64IntegerValue(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = 10;
  if (a2 >= 2)
  {
    if (*(a1 + 1) == 120)
    {
      v7 = 0;
    }

    else
    {
      v7 = 10;
    }
  }

  v12 = v4;
  v13 = v5;
  v9 = 0;
  v10 = a1;
  v11 = a2;
  if ((llvm::consumeUnsignedInteger(&v10, v7, &v9, a4) & 1) != 0 || v11)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

unint64_t mlir::Token::getIntTypeBitwidth(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = 1;
  if (*v4 != 105)
  {
    v6 = 2;
  }

  if (v5 < v6)
  {
    v6 = *(this + 2);
  }

  v8 = 0;
  v9 = &v4[v6];
  v10 = v5 - v6;
  if ((llvm::consumeUnsignedInteger(&v9, 0xA, &v8, a4) & 1) != 0 || v10 || HIDWORD(v8))
  {
    return 0;
  }

  else
  {
    return v8 | 0x100000000;
  }
}

void mlir::Token::getStringValue(mlir::Token *this@<X0>, std::string *a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(this + 1) + 1;
  }

  else
  {
    v4 = *(this + 1);
  }

  v5 = v3 - (v3 != 0);
  if (*this != 2)
  {
    if (v5 >= v5 - 1)
    {
      --v5;
    }

    if (*this == 4)
    {
      if (v5)
      {
        ++v4;
      }

      v5 -= v5 != 0;
    }
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a2, v5);
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      LODWORD(v8) = *(v4 + v6);
      if (v8 == 92)
      {
        v9 = v6 + 2;
        v8 = *(v4 + v7);
        if (*(v4 + v7) <= 0x6Du)
        {
          if (v8 == 34 || v8 == 92)
          {
            goto LABEL_19;
          }

LABEL_24:
          v10 = *(v4 + v9);
          v9 = v6 + 3;
          LOWORD(v8) = llvm::hexDigitValue(char)::LUT[v10] | (16 * llvm::hexDigitValue(char)::LUT[v8]);
          goto LABEL_19;
        }

        if (v8 == 116)
        {
          LOBYTE(v8) = 9;
          goto LABEL_19;
        }

        if (v8 != 110)
        {
          goto LABEL_24;
        }

        LOBYTE(v8) = 10;
      }

      else
      {
        v9 = v6 + 1;
      }

LABEL_19:
      std::string::push_back(a2, v8);
      v6 = v9;
    }

    while (v9 != v5);
  }
}

void mlir::Token::getHexStringValue(mlir::Token *this@<X0>, std::string *a2@<X8>)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  v5 = v3 != 0;
  v6 = v3 - v5;
  if (v6 >= v6 - 1)
  {
    --v6;
  }

  memset(&v16, 0, sizeof(v16));
  v7 = v6 - 2;
  if (v6 < 2 || *(v4 + v5) != 30768 || (v6 & 1) != 0)
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else if (v6 == 2 || ((std::string::resize(&v16, (v6 - 1) >> 1, 0), (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v8 = &v16) : (v8 = v16.__r_.__value_.__r.__words[0]), v7 == 1))
  {
LABEL_18:
    *a2 = v16;
    a2[1].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    v9 = -(v7 >> 1);
    v10 = (v5 + v4 + 3);
    while (1)
    {
      v11 = llvm::hexDigitValue(char)::LUT[*(v10 - 1)];
      v12 = llvm::hexDigitValue(char)::LUT[*v10];
      if (v11 == 0xFFFF || v12 == 0xFFFF)
      {
        break;
      }

      v10 += 2;
      v8->__r_.__value_.__s.__data_[0] = v12 | (16 * v11);
      v8 = (v8 + 1);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_18;
      }
    }

    v15 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
    a2->__r_.__value_.__s.__data_[0] = 0;
    a2[1].__r_.__value_.__s.__data_[0] = 0;
    if (v15 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void mlir::Token::getSymbolReference(mlir::Token *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {
    v4 = (*(this + 1) + 1);
  }

  else
  {
    v4 = *(this + 1);
  }

  if (*v4 == 34)
  {

    mlir::Token::getStringValue(this, a2);
  }

  else
  {
    v5 = v3 - (v3 != 0);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v5;
    if (v3 >= 2)
    {
      memmove(a2, v4, v5);
    }

    *(a2 + v5) = 0;
  }
}

unint64_t mlir::Token::getHashIdentifierNumber(mlir::Token *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4)
  {
    ++v5;
  }

  v7 = 0;
  v8 = v5;
  v9 = v4 - (v4 != 0);
  if ((llvm::consumeUnsignedInteger(&v8, 0xA, &v7, a4) & 1) != 0 || v9 || HIDWORD(v7))
  {
    return 0;
  }

  else
  {
    return v7 | 0x100000000;
  }
}

char *mlir::Token::getTokenSpelling(int a1)
{
  v1 = a1 - 13;
  v2 = qword_25D09F6E0[v1];
  return off_2799BDB88[v1];
}

uint64_t mlir::detail::Parser::parseOptionalType(mlir::detail::Parser *this, mlir::Type *a2)
{
  v3 = *(*(this + 1) + 56);
  v4 = (v3 - 8) > 0x3E || ((1 << (v3 - 8)) & 0x490FFFF140002011) == 0;
  if (v4 && ((v9 = v3 - 77, v10 = v9 > 7, v11 = (1 << v9) & 0x93, !v10) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v5 = mlir::detail::Parser::parseType(this);
    *a2 = v5;
    v6 = v5 != 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t mlir::detail::Parser::parseType(mlir::detail::Parser *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(*(this + 1) + 56) == 21)
  {
    return mlir::detail::Parser::parseFunctionType(this);
  }

  else
  {
    return mlir::detail::Parser::parseNonFunctionType(this, a2, a3, a4);
  }
}

uint64_t mlir::detail::Parser::parseFunctionType(mlir::detail::Parser *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x400000000;
  v10 = v12;
  v11 = 0x400000000;
  if (mlir::detail::Parser::parseTypeListParens(this, &v13) && (*&v8[0] = "expected '->' in function type", v9 = 259, mlir::detail::Parser::parseToken(this, 13, v8)) && (mlir::detail::Parser::parseFunctionResultTypes(this, &v10, v2, v3) & 1) != 0)
  {
    v4 = *this;
    *&v8[0] = v13 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v8[0] + 1) = v14;
    *&v16 = v10 & 0xFFFFFFFFFFFFFFF9 | 2;
    *(&v16 + 1) = v11;
    v5 = mlir::detail::TypeUniquer::get<mlir::FunctionType,mlir::TypeRange &,mlir::TypeRange &>(v4, v8, &v16);
  }

  else
  {
    v5 = 0;
  }

  if (v10 != v12)
  {
    free(v10);
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::detail::Parser::parseNonFunctionType(mlir::detail::Parser *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v6 = (v5 + 56);
  v7 = *(v5 + 56);
  if (v7 <= 37)
  {
    switch(v7)
    {
      case 2:
        if (!*(v5 + 72) || **(v5 + 64) != 33)
        {
          (*(**(v5 + 160) + 72))(*(v5 + 160), *(v5 + 104) + 24);
LABEL_110:
          v9 = 0;
          goto LABEL_111;
        }

        break;
      case 8:
        break;
      case 12:
        IntTypeBitwidth = mlir::Token::getIntTypeBitwidth(v6, a2, a3, a4);
        if ((IntTypeBitwidth & 0x100000000) == 0)
        {
          *&v105 = "invalid integer width";
          v107 = 259;
          mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), &v105, v99);
          v11 = v99;
LABEL_109:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
          goto LABEL_110;
        }

        v59 = IntTypeBitwidth;
        if (BYTE3(IntTypeBitwidth))
        {
          v60 = *(*(this + 1) + 64);
          v101 = "integer bitwidth is limited to ";
          v104 = 259;
          mlir::detail::Parser::emitError(this, v60, &v101, &v105);
          if (v105)
          {
            mlir::Diagnostic::append<unsigned int const&>(&v105 + 8);
            if (v105)
            {
              mlir::Diagnostic::operator<<<6ul>(&v105 + 8, " bits");
            }
          }

LABEL_108:
          v11 = &v105;
          goto LABEL_109;
        }

        v79 = *(this + 1);
        v80 = *(v79 + 72);
        v81 = **(v79 + 64);
        if (v81 == 115)
        {
          v82 = 1;
        }

        else
        {
          v82 = 2;
        }

        if (v81 == 105)
        {
          v83 = 0;
        }

        else
        {
          v83 = v82;
        }

        *(v79 + 80) = *(v79 + 56);
        *(v79 + 96) = v80;
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v84 = *(this + 1);
        *(v84 + 56) = v105;
        *(v84 + 72) = v106[0];
        NoneType = mlir::IntegerType::get(***(this + 1), v59, v83);
LABEL_53:
        v9 = NoneType;
        goto LABEL_111;
      default:
LABEL_54:
        *&v105 = "expected non-function type";
        v107 = 259;
        mlir::detail::Parser::emitWrongTokenError(this, &v105, v100);
        v11 = v100;
        goto LABEL_109;
    }

    NoneType = mlir::detail::Parser::parseExtendedType(this);
    goto LABEL_53;
  }

  switch(v7)
  {
    case '&':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v8 = *(this + 1);
      *(v8 + 56) = v105;
      *(v8 + 72) = v106[0];
      v9 = *(**this + 416);
      break;
    case '(':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v23 = *(this + 1);
      *(v23 + 56) = v105;
      *(v23 + 72) = v106[0];
      *&v105 = "expected '<' in complex type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v105))
      {
        goto LABEL_110;
      }

      v24 = *(*(this + 1) + 64);
      v25 = mlir::detail::Parser::parseType(this);
      if (!v25)
      {
        goto LABEL_110;
      }

      v26 = v25;
      *&v105 = "expected '>' in complex type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 19, &v105))
      {
        goto LABEL_110;
      }

      v27 = *v26;
      v28 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      v29 = mlir::detail::InterfaceMap::lookup((v27 + 1), v28);
      v30 = *v26;
      if (v29 || v30[17] == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        *&v105 = v26;
        NoneType = mlir::detail::TypeUniquer::get<mlir::ComplexType,mlir::Type &>(*(*v30 + 4), &v105);
        goto LABEL_53;
      }

      v101 = "invalid element type for complex";
      v104 = 259;
      mlir::detail::Parser::emitError(this, v24, &v101, &v105);
      goto LABEL_108;
    case ',':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v33 = *(this + 1);
      *(v33 + 56) = v105;
      *(v33 + 72) = v106[0];
      v9 = *(**this + 424);
      break;
    case '-':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v18 = *(this + 1);
      *(v18 + 56) = v105;
      *(v18 + 72) = v106[0];
      v9 = *(**this + 440);
      break;
    case '.':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v19 = *(this + 1);
      *(v19 + 56) = v105;
      *(v19 + 72) = v106[0];
      v9 = *(**this + 448);
      break;
    case '/':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v37 = *(this + 1);
      *(v37 + 56) = v105;
      *(v37 + 72) = v106[0];
      v9 = *(**this + 456);
      break;
    case '0':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v41 = *(this + 1);
      *(v41 + 56) = v105;
      *(v41 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
      goto LABEL_47;
    case '1':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v20 = *(this + 1);
      *(v20 + 56) = v105;
      *(v20 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
      goto LABEL_47;
    case '2':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v39 = *(this + 1);
      *(v39 + 56) = v105;
      *(v39 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      goto LABEL_47;
    case '3':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v34 = *(this + 1);
      *(v34 + 56) = v105;
      *(v34 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
      goto LABEL_47;
    case '4':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v36 = *(this + 1);
      *(v36 + 56) = v105;
      *(v36 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
      goto LABEL_47;
    case '5':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v38 = *(this + 1);
      *(v38 + 56) = v105;
      *(v38 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
      goto LABEL_47;
    case '6':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v56 = *(this + 1);
      *(v56 + 56) = v105;
      *(v56 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
      goto LABEL_47;
    case '7':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v32 = *(this + 1);
      *(v32 + 56) = v105;
      *(v32 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id;
      goto LABEL_47;
    case '8':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v35 = *(this + 1);
      *(v35 + 56) = v105;
      *(v35 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
      goto LABEL_47;
    case '9':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v31 = *(this + 1);
      *(v31 + 56) = v105;
      *(v31 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
      goto LABEL_47;
    case ':':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v55 = *(this + 1);
      *(v55 + 56) = v105;
      *(v55 + 72) = v106[0];
      v21 = *(**this + 384);
      v22 = &mlir::detail::TypeIDResolver<mlir::Float8E8M0FNUType,void>::id;
LABEL_47:
      *&v105 = v22;
      v9 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v21 + 232), &v105);
      break;
    case ';':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v40 = *(this + 1);
      *(v40 + 56) = v105;
      *(v40 + 72) = v106[0];
      v9 = *(**this + 464);
      break;
    case '@':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v17 = *(this + 1);
      *(v17 + 56) = v105;
      *(v17 + 72) = v106[0];
      v9 = *(**this + 472);
      break;
    case 'C':
      v51 = *(v5 + 64);
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v52 = *(this + 1);
      *(v52 + 56) = v105;
      *(v52 + 72) = v106[0];
      *&v105 = "expected '<' in memref type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v105))
      {
        goto LABEL_110;
      }

      v101 = v103;
      v102 = 0x400000000;
      v53 = *(this + 1);
      if (*(v53 + 56) == 30)
      {
        *(v53 + 80) = *(v53 + 56);
        *(v53 + 96) = *(v53 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v54 = *(this + 1);
        *(v54 + 56) = v105;
        *(v54 + 72) = v106[0];
        v93 = 1;
        if (!mlir::detail::Parser::parseXInDimensionList(this))
        {
          goto LABEL_115;
        }
      }

      else
      {
        v93 = 0;
        if (!mlir::detail::Parser::parseDimensionListRanked(this, &v101, 1, 1))
        {
          goto LABEL_115;
        }
      }

      v70 = *(*(this + 1) + 64);
      v71 = mlir::detail::Parser::parseType(this);
      if (!v71)
      {
        goto LABEL_115;
      }

      v72 = v71;
      *&v105 = v71;
      if (!mlir::Type::isIntOrFloat(&v105))
      {
        v73 = *v72;
        v74 = *(*v72 + 136);
        if (v74 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v74 != &mlir::detail::TypeIDResolver<mlir::UnrankedMemRefType,void>::id)
        {
          v75 = mlir::detail::TypeIDResolver<mlir::MemRefElementTypeInterface,void>::resolveTypeID();
          if (!mlir::detail::InterfaceMap::lookup(v73 + 8, v75))
          {
            v94 = "invalid memref element type";
            v97 = 259;
            v69 = this;
            v68 = v70;
            goto LABEL_114;
          }
        }
      }

      v91 = 0;
      v92 = 0;
      v90 = 0;
      v94 = this;
      *&v95 = &v91;
      *(&v95 + 1) = &v90;
      v96 = &v93;
      v76 = *(this + 1);
      if (*(v76 + 56) == 19)
      {
        *(v76 + 80) = *(v76 + 56);
        *(v76 + 96) = *(v76 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v77 = *(this + 1);
        *(v77 + 56) = v105;
        *(v77 + 72) = v106[0];
LABEL_88:
        v98 = v51;
        *&v105 = this;
        *(&v105 + 1) = &v98;
        if (v93 == 1)
        {
          Checked = mlir::UnrankedMemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>, &v105, v72, v90);
        }

        else
        {
          Checked = mlir::MemRefType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>, &v105, v101, v102, v72, v91, v92, v90);
        }

        goto LABEL_124;
      }

      *&v105 = "expected ',' or '>' in memref type";
      v107 = 259;
      if (mlir::detail::Parser::parseToken(this, 16, &v105) && mlir::detail::Parser::parseCommaSeparatedListUntil(this, 19, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>, &v94, 0))
      {
        goto LABEL_88;
      }

LABEL_115:
      v9 = 0;
      goto LABEL_116;
    case 'F':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v58 = *(this + 1);
      *(v58 + 56) = v105;
      *(v58 + 72) = v106[0];
      NoneType = mlir::Builder::getNoneType(this);
      goto LABEL_53;
    case 'M':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v42 = *(this + 1);
      *(v42 + 56) = v105;
      *(v42 + 72) = v106[0];
      *&v105 = "expected '<' in tensor type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v105))
      {
        goto LABEL_110;
      }

      v101 = v103;
      v102 = 0x400000000;
      v43 = *(this + 1);
      v44 = *(v43 + 56);
      if (v44 == 30)
      {
        *(v43 + 80) = *(v43 + 56);
        *(v43 + 96) = *(v43 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v45 = *(this + 1);
        *(v45 + 56) = v105;
        *(v45 + 72) = v106[0];
        if (!mlir::detail::Parser::parseXInDimensionList(this))
        {
          goto LABEL_115;
        }
      }

      else if (!mlir::detail::Parser::parseDimensionListRanked(this, &v101, 1, 1))
      {
        goto LABEL_115;
      }

      v63 = *(*(this + 1) + 64);
      v64 = mlir::detail::Parser::parseType(this);
      v91 = 0;
      v65 = *(this + 1);
      if (*(v65 + 56) == 16)
      {
        *(v65 + 80) = *(v65 + 56);
        *(v65 + 96) = *(v65 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v66 = *(this + 1);
        *(v66 + 56) = v105;
        *(v66 + 72) = v106[0];
        v67 = mlir::detail::Parser::parseOptionalAttribute(this, &v91, 0);
        if ((v67 & 0x100) != 0)
        {
          if ((v67 & 1) == 0)
          {
            goto LABEL_115;
          }

          v85 = v91;
          if (v91)
          {
            v86 = llvm::DefaultDoCastIfPossible<mlir::VerifiableTensorEncoding,mlir::Attribute,llvm::CastInfo<mlir::VerifiableTensorEncoding,mlir::Attribute,void>>::doCastIfPossible(v91);
            v85 = v87;
          }

          else
          {
            v86 = 0;
          }

          if (v86)
          {
            *&v105 = this;
            if (((*v85)(v85, v86, v101, v102, v64, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>, &v105) & 1) == 0)
            {
              goto LABEL_115;
            }
          }
        }
      }

      if (!v64)
      {
        goto LABEL_115;
      }

      *&v105 = "expected '>' in tensor type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 19, &v105))
      {
        goto LABEL_115;
      }

      if (!mlir::TensorType::isValidElementType(v64))
      {
        v94 = "invalid tensor element type";
        v97 = 259;
        v69 = this;
        v68 = v63;
        goto LABEL_114;
      }

      if (v44 == 30)
      {
        if (v91)
        {
          v94 = "cannot apply encoding to unranked tensor";
          v97 = 259;
          v68 = *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0);
          v69 = this;
LABEL_114:
          mlir::detail::Parser::emitError(v69, v68, &v94, &v105);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v105);
          goto LABEL_115;
        }

        *&v105 = v64;
        Checked = mlir::detail::TypeUniquer::get<mlir::UnrankedTensorType,mlir::Type &>(*(**v64 + 32), &v105);
      }

      else
      {
        Checked = mlir::RankedTensorType::get(v101, v102, v64, v91);
      }

LABEL_124:
      v9 = Checked;
LABEL_116:
      v61 = v101;
      if (v101 != v103)
      {
LABEL_117:
        free(v61);
      }

      break;
    case 'N':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v57 = *(this + 1);
      *(v57 + 56) = v105;
      *(v57 + 72) = v106[0];
      v9 = *(**this + 432);
      break;
    case 'Q':
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v12 = *(this + 1);
      *(v12 + 56) = v105;
      *(v12 + 72) = v106[0];
      *&v105 = "expected '<' in tuple type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v105))
      {
        goto LABEL_110;
      }

      v13 = *(this + 1);
      if (*(v13 + 56) == 19)
      {
        *(v13 + 80) = *(v13 + 56);
        *(v13 + 96) = *(v13 + 72);
        mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
        v14 = *(this + 1);
        *(v14 + 56) = v105;
        *(v14 + 72) = v106[0];
        v15 = ***(this + 1);
        v105 = xmmword_25D0A0640;
        NoneType = mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange>(v15, &v105);
        goto LABEL_53;
      }

      *&v105 = v106;
      *(&v105 + 1) = 0x400000000;
      v101 = this;
      v102 = &v105;
      if (mlir::detail::Parser::parseCommaSeparatedList(this, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v101, 0, 0) && (v101 = "expected '>' in tuple type", v104 = 259, mlir::detail::Parser::parseToken(this, 19, &v101)))
      {
        v62 = ***(this + 1);
        v101 = (v105 & 0xFFFFFFFFFFFFFFF9 | 2);
        v102 = DWORD2(v105);
        v9 = mlir::detail::TypeUniquer::get<mlir::TupleType,mlir::TypeRange &>(v62, &v101);
      }

      else
      {
        v9 = 0;
      }

      v61 = v105;
      if (v105 == v106)
      {
        break;
      }

      goto LABEL_117;
    case 'T':
      v46 = *(v5 + 64);
      *(v5 + 80) = *v6;
      *(v5 + 96) = *(v5 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v105);
      v47 = *(this + 1);
      *(v47 + 56) = v105;
      *(v47 + 72) = v106[0];
      *&v105 = "expected '<' in vector type";
      v107 = 259;
      if (!mlir::detail::Parser::parseToken(this, 23, &v105))
      {
        goto LABEL_110;
      }

      *&v105 = v106;
      *(&v105 + 1) = 0x400000000;
      v94 = &v96;
      v95 = xmmword_25D0A0580;
      if (mlir::detail::Parser::parseVectorDimensionList(this, &v105, &v94, v48) && (v49 = mlir::detail::Parser::parseType(this)) != 0 && (v50 = v49, v101 = "expected '>' in vector type", v104 = 259, mlir::detail::Parser::parseToken(this, 19, &v101)))
      {
        v91 = v46;
        v101 = this;
        v102 = &v91;
        v9 = mlir::VectorType::getChecked(llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>, &v101, v105, DWORD2(v105), v50, v94, v95);
      }

      else
      {
        v9 = 0;
      }

      if (v94 != &v96)
      {
        free(v94);
      }

      v61 = v105;
      if (v105 == v106)
      {
        break;
      }

      goto LABEL_117;
    default:
      goto LABEL_54;
  }

LABEL_111:
  v88 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::detail::Parser::parseFunctionResultTypes(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(*(a1 + 1) + 56) == 21)
  {

    return mlir::detail::Parser::parseTypeListParens(a1, a2);
  }

  else
  {
    result = mlir::detail::Parser::parseNonFunctionType(a1, a2, a3, a4);
    if (result)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a2, result);
      return 1;
    }
  }

  return result;
}

BOOL mlir::detail::Parser::parseTypeListParens(mlir::detail::Parser *a1, uint64_t a2)
{
  *&v7 = "expected '('";
  v9 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, &v7))
  {
    return 0;
  }

  v4 = *(a1 + 1);
  if (*(v4 + 56) == 28)
  {
    *(v4 + 80) = *(v4 + 56);
    *(v4 + 96) = *(v4 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v7);
    v5 = *(a1 + 1);
    *(v5 + 56) = v7;
    *(v5 + 72) = v8;
    return 1;
  }

  *&v7 = a1;
  *(&v7 + 1) = a2;
  if (!mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, &v7, 0, 0))
  {
    return 0;
  }

  *&v7 = "expected ')'";
  v9 = 259;
  return mlir::detail::Parser::parseToken(a1, 28, &v7);
}

BOOL mlir::detail::Parser::parseTypeListNoParens(mlir::detail::Parser *a1, uint64_t a2)
{
  v3[0] = a1;
  v3[1] = a2;
  return mlir::detail::Parser::parseCommaSeparatedList(a1, 0, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>, v3, 0, 0);
}

BOOL mlir::detail::Parser::parseXInDimensionList(mlir::detail::Parser *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (*(v2 + 56) == 3 && (v3 = *(v2 + 64), *v3 == 120))
  {
    if (*(v2 + 72) != 1)
    {
      *(v2 + 40) = v3 + 1;
    }

    *(v2 + 80) = *(v2 + 56);
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v4 = *(this + 1);
    *(v4 + 56) = v10;
    *(v4 + 72) = v11;
    v5 = 1;
  }

  else
  {
    v8 = "expected 'x' in dimension list";
    v9 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v8, &v10);
    v5 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::detail::Parser::parseDimensionListRanked(mlir::detail::Parser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = &v8;
  v7[2] = a2;
  if (a4)
  {
    while ((*(*(a1 + 1) + 56) | 0x10) == 0x1A)
    {
      if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7, a2, a3, a4) || !mlir::detail::Parser::parseXInDimensionList(a1))
      {
        return 0;
      }
    }

    return 1;
  }

  if ((*(*(a1 + 1) + 56) | 0x10) != 0x1A)
  {
    return 1;
  }

  do
  {
    if (!mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(v7, a2, a3, a4))
    {
      break;
    }

    v6 = *(a1 + 1);
    if (*(v6 + 56) != 3 || **(v6 + 64) != 120)
    {
      return 1;
    }
  }

  while (mlir::detail::Parser::parseXInDimensionList(a1));
  return 0;
}

BOOL mlir::detail::Parser::parseVectorDimensionList(mlir::detail::Parser *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  while (1)
  {
    v7 = *(a1 + 1);
    v8 = *(v7 + 56);
    if (v8 == 22)
    {
      v18 = 0;
      *(v7 + 80) = *(v7 + 56);
      *(v7 + 96) = *(v7 + 72);
      mlir::Lexer::lexToken((*(a1 + 1) + 8), &v19);
      v10 = *(a1 + 1);
      *(v10 + 56) = v19;
      *(v10 + 72) = v20;
      v9 = 1;
    }

    else
    {
      if (v8 != 10)
      {
        v13 = 1;
        goto LABEL_14;
      }

      v9 = 0;
      v18 = 0;
    }

    if (!mlir::detail::Parser::parseIntegerInDimensionList(a1, &v18, a3, a4))
    {
      goto LABEL_11;
    }

    llvm::SmallVectorTemplateBase<long long,true>::push_back(a2, v18);
    if (v9)
    {
      break;
    }

LABEL_10:
    llvm::SmallVectorTemplateBase<BOOL,true>::push_back(a3, v9);
    if (!mlir::detail::Parser::parseXInDimensionList(a1))
    {
LABEL_11:
      v13 = 0;
      goto LABEL_14;
    }
  }

  v11 = *(a1 + 1);
  if (*(v11 + 56) == 29)
  {
    *(v11 + 80) = *(v11 + 56);
    *(v11 + 96) = *(v11 + 72);
    mlir::Lexer::lexToken((*(a1 + 1) + 8), &v19);
    v12 = *(a1 + 1);
    *(v12 + 56) = v19;
    *(v12 + 72) = v20;
    goto LABEL_10;
  }

  v16 = "missing ']' closing scalable dimension";
  v17 = 259;
  mlir::detail::Parser::emitWrongTokenError(a1, &v16, &v19);
  v13 = (v21 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::detail::Parser::parseIntegerInDimensionList(mlir::detail::Parser *this, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v7 = *(v6 + 64);
  v8 = *(v6 + 72);
  if (v8 >= 2 && *(v7 + 1) == 120)
  {
    *a2 = 0;
    *(v6 + 40) = v7 + 1;
  }

  else
  {
    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v7, v8, a3, a4);
    if ((v10 & 1) == 0 || (UInt64IntegerValue & 0x8000000000000000) != 0)
    {
      v15 = "invalid dimension";
      v16 = 259;
      mlir::detail::Parser::emitError(this, *(*(this + 1) + 64) - (*(*(this + 1) + 56) == 0), &v15, &v17);
      v12 = (v19 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
      goto LABEL_9;
    }

    *a2 = UInt64IntegerValue;
    v6 = *(this + 1);
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v17);
  v11 = *(this + 1);
  *(v11 + 56) = v17;
  *(v11 + 72) = v18;
  v12 = 1;
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::detail::Parser::parseDimensionListRanked(llvm::SmallVectorImpl<long long> &,BOOL,BOOL)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 8);
  if (*(v6 + 56) == 26)
  {
    v7 = *(v6 + 64);
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 1) + 8), v16);
    v8 = *(v5 + 1);
    *(v8 + 56) = *v16;
    *(v8 + 72) = v17;
    if ((**(a1 + 8) & 1) == 0)
    {
      v14 = "expected static shape";
      v15 = 259;
      mlir::detail::Parser::emitError(v5, v7, &v14, v16);
      v11 = (v18 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = 0x8000000000000000;
  }

  else
  {
    v16[0] = 0;
    if (!mlir::detail::Parser::parseIntegerInDimensionList(v5, v16, a3, a4))
    {
      v11 = 0;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = v16[0];
  }

  llvm::SmallVectorTemplateBase<long long,true>::push_back(v9, v10);
  v11 = 1;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseTypeListNoParens(llvm::SmallVectorImpl<mlir::Type> &)::$_0>(uint64_t a1)
{
  v2 = mlir::detail::Parser::parseType(*a1);
  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(*(a1 + 8), v2);
  return v2 != 0;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<mlir::detail::Parser::parseMemRefType(void)::$_0>(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = mlir::detail::Parser::parseAttribute(*a1, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *v3;
    v6 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v5 + 8, v6))
    {
      v7 = *v4;
      v8 = mlir::detail::TypeIDResolver<mlir::MemRefLayoutAttrInterface,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
      v10 = *(a1 + 8);
      *v10 = v4;
      v10[1] = v9;
      if (**(a1 + 24))
      {
        v11 = "cannot have affine map for unranked memref type";
LABEL_10:
        v16 = v11;
        v17 = 259;
        mlir::detail::Parser::emitError(v2, v2[1][8] - (*(v2[1] + 14) == 0), &v16, v18);
        v12 = v19 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
        goto LABEL_13;
      }

      if (**(a1 + 16))
      {
        v11 = "expected memory space to be last in memref type";
        goto LABEL_10;
      }
    }

    else
    {
      v13 = *(a1 + 16);
      if (*v13)
      {
        v11 = "multiple memory spaces specified in memref type";
        goto LABEL_10;
      }

      *v13 = v4;
    }

    v12 = 1;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::UnrankedMemRefType mlir::detail::Parser::getChecked<mlir::UnrankedMemRefType,mlir::Type &,mlir::Attribute &>(llvm::SMLoc,mlir::Type &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::MemRefType mlir::detail::Parser::getChecked<mlir::MemRefType,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,mlir::MemRefLayoutAttrInterface &,mlir::Attribute &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

uint64_t mlir::Diagnostic::append<unsigned int const&>(uint64_t a1)
{
  v6 = 5;
  v7 = 0xFFFFFFLL;
  v2 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v6, 1);
  v3 = *(a1 + 16) + 24 * *(a1 + 24);
  v4 = *v2;
  *(v3 + 16) = *(v2 + 16);
  *v3 = v4;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::detail::Parser::parseTensorType(void)::$_0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::detail::Parser::emitError(v2, *(*(v2 + 8) + 64) - (*(*(v2 + 8) + 56) == 0), v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::VectorType mlir::detail::Parser::getChecked<mlir::VectorType,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &>(llvm::SMLoc,llvm::SmallVector<long long,4u> &,mlir::Type &,llvm::SmallVector<BOOL,4u> &)::{lambda(void)#1}>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = **(a1 + 8);
  v5 = 257;
  mlir::detail::Parser::emitError(v2, v3, v4, a2);
}

unint64_t mlir::detail::getBranchSuccessorArgument(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if ((*(v3 + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 20);
  if (v5 && ((v6 = v4 + 32 * *(a1 + 16), v7 = *(v6 + 16), (*(v7 + 46) & 0x80) == 0) ? (v8 = 0) : (v8 = *(v7 + 72)), (v9 = (v6 - v8) >> 5, a2 >= v9) ? (v10 = v5 + v9 > a2) : (v10 = 0), v10))
  {
    v11 = *(*(a3 + 48) + 8 * (a2 - v9 + *a1));
    v12 = v11 & 0xFFFFFFFFFFFFFF00;
    v11 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  return v12 | v11;
}

uint64_t mlir::detail::verifyBranchSuccessorOperands(void **this, unsigned int a2, uint64_t a3)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = *(a3 + 20);
  v22 = v5 + v4;
  v23 = a2;
  v6 = *(((&this[2 * ((*(this + 11) >> 23) & 1) + 8] + ((*(this + 11) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * a2 + 24);
  if (v5 + v4 != ((*(v6 + 56) - *(v6 + 48)) >> 3))
  {
    v21 = 257;
    mlir::Operation::emitError(&v24, this, v20);
    if (v24)
    {
      mlir::Diagnostic::operator<<<12ul>(v25, "branch has ");
    }

    v10 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v22);
    v11 = v10;
    if (*v10)
    {
      mlir::Diagnostic::operator<<<26ul>((v10 + 1), " operands for successor #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v11, &v23);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<24ul>((v12 + 1), ", but target block has ");
    }

    mlir::InFlightDiagnostic::append<unsigned int>(v13, (*(v6 + 56) - *(v6 + 48)) >> 3);
    v14 = *(v13 + 200);
LABEL_18:
    v9 = v14 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_19;
  }

  if (v5)
  {
    while (1)
    {
      InterfaceFor = mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
      if (((*(InterfaceFor + 24))(InterfaceFor, this, *(*(*(*(a3 + 8) + 72) + 32 * (v4 + *(a3 + 16) - *a3) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, *(*(*(v6 + 48) + 8 * v4) + 8) & 0xFFFFFFFFFFFFFFF8) & 1) == 0)
      {
        break;
      }

      ++v4;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    v19 = v4;
    v21 = 257;
    mlir::Operation::emitError(&v24, this, v20);
    if (v24)
    {
      mlir::Diagnostic::operator<<<32ul>(v25, "type mismatch for bb argument #");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v19);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<16ul>((v15 + 1), " of successor #");
    }

    v14 = *(mlir::InFlightDiagnostic::operator<<<unsigned int &>(v16, &v23) + 200);
    goto LABEL_18;
  }

LABEL_5:
  v9 = 1;
LABEL_19:
  v17 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t mlir::detail::verifyTypesAlongControlFlowEdges(mlir::detail *this, mlir::Operation *a2)
{
  v2 = this;
  v23[6] = *MEMORY[0x277D85DE8];
  v20 = this;
  if (this)
  {
    this = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(this);
  }

  v19[0] = v2;
  v19[1] = this;
  v18 = v19;
  if ((verifyTypesAlongAllEdges(v2, 0, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>, &v18) & 1) == 0)
  {
LABEL_27:
    v4 = 0;
    goto LABEL_28;
  }

  v17 = v19;
  v3 = v2[11];
  v4 = 1;
  if ((v3 & 0x7FFFFF) != 0)
  {
    v5 = ((&v2[4 * ((v3 >> 23) & 1) + 17] + ((v3 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10];
    v6 = v5 + 24 * (v3 & 0x7FFFFF);
    while (1)
    {
      v21 = v23;
      v22 = 0x300000000;
      v7 = *(v5 + 8);
      if (v7 == v5)
      {
        goto LABEL_20;
      }

      do
      {
        v8 = v7 - 8;
        if (!v7)
        {
          v8 = 0;
        }

        v9 = *(v8 + 32);
        if (v9 != v8 + 32)
        {
          if (mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v9))
          {
            InterfaceFor = mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
            if (v9)
            {
              v11 = v22;
              if (v22 >= HIDWORD(v22))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
                v11 = v22;
              }

              v12 = (v21 + 16 * v11);
              *v12 = v9;
              v12[1] = InterfaceFor;
              LODWORD(v22) = v22 + 1;
            }
          }
        }

        v7 = *(v7 + 8);
      }

      while (v7 != v5);
      if (!v22)
      {
LABEL_20:
        v13 = 3;
      }

      else
      {
        v16[0] = &v21;
        v16[1] = &v17;
        v16[2] = &v20;
        v16[3] = v5;
        v13 = (verifyTypesAlongAllEdges(v20, v5, llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>, v16) & 1) == 0;
      }

      if (v21 != v23)
      {
        free(v21);
      }

      if (v13 != 3 && v13)
      {
        goto LABEL_27;
      }

      v5 += 24;
      if (v5 == v6)
      {
        v4 = 1;
        break;
      }
    }
  }

LABEL_28:
  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t verifyTypesAlongAllEdges(mlir::Operation *a1, uint64_t a2, void (*a3)(void *__return_ptr, void, void), uint64_t a4)
{
  v45[6] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1);
  }

  else
  {
    InterfaceFor = 0;
  }

  v43 = v45;
  v44 = 0x200000000;
  (*(InterfaceFor + 16))(InterfaceFor, a1, a2, &v43);
  if (v44)
  {
    v27 = a2;
    v9 = v43;
    v28 = &v43[3 * v44];
    v29 = a3;
    while (1)
    {
      a3(&v40, a4, *v9);
      if ((v42 & 1) == 0)
      {
        v18 = 0;
        goto LABEL_30;
      }

      v10 = *(v9 + 1);
      v33 = v9[1];
      v34 = 0;
      v35 = v10;
      mlir::TypeRange::TypeRange<mlir::ValueRange>(&v38, &v33);
      v11 = v41;
      if (v41 != v39)
      {
        v30 = " region control flow edge ";
        v32 = 259;
        mlir::Operation::emitOpError(a1, &v30, &v33);
        printRegionEdgeName(&v33, v27, *v9);
        if (v33)
        {
          mlir::Diagnostic::operator<<<14ul>(&v34, ": source has ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v33, v41);
        if (v33)
        {
          mlir::Diagnostic::operator<<<39ul>(&v34, " operands, but target successor needs ");
        }

        mlir::InFlightDiagnostic::operator<<<unsigned long>(&v33, v39);
        goto LABEL_29;
      }

      v12 = a4;
      if (v41)
      {
        break;
      }

LABEL_12:
      v9 += 3;
      a4 = v12;
      a3 = v29;
      if (v9 == v28)
      {
        goto LABEL_13;
      }
    }

    v13 = 0;
    v14 = v40;
    v15 = v38;
    while (1)
    {
      v16 = mlir::TypeRange::dereference_iterator(v14, v13);
      v17 = mlir::TypeRange::dereference_iterator(v15, v13);
      if (((*(InterfaceFor + 32))(InterfaceFor, a1, v16, v17) & 1) == 0)
      {
        break;
      }

      if (v11 == ++v13)
      {
        goto LABEL_12;
      }
    }

    v30 = " along control flow edge ";
    v32 = 259;
    mlir::Operation::emitOpError(a1, &v30, &v33);
    printRegionEdgeName(&v33, v27, *v9);
    if (v33)
    {
      mlir::Diagnostic::operator<<<16ul>(&v34, ": source type #");
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v33, v13);
    if (v33)
    {
      mlir::Diagnostic::operator<<<2ul>(&v34, " ");
      if (v33)
      {
        LODWORD(v30) = 4;
        v31 = v16;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35 + 8, &v30, 1);
        v20 = *(&v35 + 1) + 24 * v36;
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
        *v20 = v21;
        ++v36;
        if (v33)
        {
          mlir::Diagnostic::operator<<<27ul>(&v34, " should match input type #");
        }
      }
    }

    mlir::InFlightDiagnostic::operator<<<unsigned long>(&v33, v13);
    if (v33)
    {
      mlir::Diagnostic::operator<<<2ul>(&v34, " ");
      if (v33)
      {
        LODWORD(v30) = 4;
        v31 = v17;
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35 + 8, &v30, 1);
        v23 = *(&v35 + 1) + 24 * v36;
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++v36;
      }
    }

LABEL_29:
    v18 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  else
  {
LABEL_13:
    v18 = 1;
  }

LABEL_30:
  if (v43 != v45)
  {
    free(v43);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      if (v5)
      {
        v7 = *a1;
        v8 = v4 + 24 * v5;
        do
        {
          *v7 = *v4;
          *(v7 + 8) = *(v4 + 8);
          v4 += 24;
          v7 += 24;
        }

        while (v4 != v8);
      }

      goto LABEL_18;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v9 = v4 + 24 * v6;
        v10 = *a1;
        do
        {
          *v10 = *v4;
          *(v10 + 8) = *(v4 + 8);
          v4 += 24;
          v10 += 24;
        }

        while (v4 != v9);
LABEL_16:
        v11 = *(a2 + 8) - v6;
        if (v11)
        {
          memcpy((*a1 + 24 * v6), (*a2 + 24 * v6), 24 * v11);
        }

LABEL_18:
        *(a1 + 8) = v5;
        *(a2 + 8) = 0;
        return a1;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
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

uint64_t mlir::OpInterface<mlir::BranchOpInterface,mlir::detail::BranchOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID()
{
  v0 = &unk_27FC18000;
  {
    v0 = &unk_27FC18000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::BranchOpInterface>();
      mlir::detail::TypeIDResolver<mlir::BranchOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &unk_27FC18000;
    }
  }

  return v0[270];
}

uint64_t llvm::getTypeName<mlir::BranchOpInterface>()
{
  {
    llvm::getTypeName<mlir::BranchOpInterface>(void)::Name = llvm::detail::getTypeNameImpl<mlir::BranchOpInterface>();
    *algn_27FC18888 = v1;
  }

  return llvm::getTypeName<mlir::BranchOpInterface>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::BranchOpInterface>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::BranchOpInterface]";
  v6 = 85;
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

uint64_t *mlir::TypeRange::TypeRange<mlir::ValueRange>(uint64_t *a1, uint64_t *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v14[0] = *a2;
  v14[1] = v4;
  if (v4)
  {
    v3 = mlir::ValueRange::offset_base(v14, v4);
  }

  *a1 = 0;
  a1[1] = v5 - v4;
  if (v5 != v4)
  {
    v6 = v3 & 6;
    v7 = v3 & 0xFFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFFF8) != 0 && v6 == 2;
    v9 = v7 | 4;
    if (!v8)
    {
      v9 = v3 & 0xFFFFFFFFFFFFFFF8;
    }

    if (v6 != 4 || v7 == 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7 | 6;
    }

    *a1 = v11;
  }

  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *printRegionEdgeName(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    mlir::Diagnostic::operator<<<6ul>((a1 + 1), "from ");
    v6 = *a1;
    if (a2)
    {
      if (v6)
      {
        mlir::Diagnostic::operator<<<9ul>((a1 + 1), "Region #");
      }

      goto LABEL_6;
    }

    if (v6)
    {
      mlir::Diagnostic::operator<<<16ul>((a1 + 1), "parent operands");
      goto LABEL_12;
    }

LABEL_22:
    v10 = 1;
    if (a3)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_6:
  v7 = *(a2 + 16);
  v8 = *(v7 + 44);
  if ((v8 & 0x7FFFFF) != 0)
  {
    v9 = ((v7 + 16 * ((v8 >> 23) & 1) + ((v8 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v7 + 40);
  }

  else
  {
    v9 = 0;
  }

  mlir::InFlightDiagnostic::append<unsigned int>(a1, -1431655765 * ((a2 - v9) >> 3));
LABEL_12:
  if (!*a1)
  {
    if (!a3)
    {
      return a1;
    }

    goto LABEL_17;
  }

  mlir::Diagnostic::operator<<<5ul>((a1 + 1), " to ");
  v10 = *a1 == 0;
  if (a3)
  {
LABEL_14:
    if (!v10)
    {
      mlir::Diagnostic::operator<<<9ul>((a1 + 1), "Region #");
    }

LABEL_17:
    v11 = *(a3 + 16);
    v12 = *(v11 + 44);
    if ((v12 & 0x7FFFFF) != 0)
    {
      v13 = ((v11 + 16 * ((v12 >> 23) & 1) + ((v12 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v11 + 40);
    }

    else
    {
      v13 = 0;
    }

    mlir::InFlightDiagnostic::append<unsigned int>(a1, -1431655765 * ((a3 - v13) >> 3));
    return a1;
  }

LABEL_23:
  if (!v10)
  {
    mlir::Diagnostic::operator<<<15ul>((a1 + 1), "parent results");
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<unsigned long>(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::append<unsigned int>(uint64_t a1, unsigned int a2)
{
  if (*a1)
  {
    v7 = 5;
    v8 = a2;
    v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v7, 1);
    v4 = *(a1 + 24) + 24 * *(a1 + 32);
    v5 = *v3;
    *(v4 + 16) = *(v3 + 16);
    *v4 = v5;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

uint64_t llvm::DefaultDoCastIfPossible<mlir::RegionBranchOpInterface,mlir::Operation *,llvm::CastInfo<mlir::RegionBranchOpInterface,mlir::Operation *,void>>::doCastIfPossible(uint64_t a1)
{
  v1 = a1;
  if (!mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if (v1)
  {
    mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(v1);
  }

  return v1;
}

uint64_t llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_0>@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **a1;
  result = (*(*a1)[1])();
  v6 = (result & 0xFFFFFFFFFFFFFFF8) == 0 || v5 == 0;
  v7 = result & 0xFFFFFFFFFFFFFFF8 | 4;
  if (v6)
  {
    v7 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 16) = 1;
  return result;
}

void llvm::function_ref<llvm::FailureOr<mlir::TypeRange> ()(mlir::RegionBranchPoint)>::callback_fn<mlir::detail::verifyTypesAlongControlFlowEdges(mlir::Operation *)::$_2>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 8);
  if (v5)
  {
    v24 = 0;
    v25 = a3;
    v8 = 0;
    v9 = *v4;
    v10 = &(*v4)[v5];
    do
    {
      while (1)
      {
        v28 = *v9;
        SuccessorOperands = mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(&v28, a2);
        if ((v8 & 1) == 0)
        {
          break;
        }

        if (v3 != v12)
        {
          goto LABEL_23;
        }

        if (v3)
        {
          v13 = 0;
          v14 = *(a1 + 8);
          if ((v24 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v15 = v24 & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          else
          {
            v15 = 0;
          }

          v16 = (SuccessorOperands & 0xFFFFFFFFFFFFFFF8) == 0 || v12 == 0;
          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = SuccessorOperands & 0xFFFFFFFFFFFFFFF8 | 4;
          }

          while (1)
          {
            mlir::TypeRange::dereference_iterator(v15, v13);
            mlir::TypeRange::dereference_iterator(v17, v13);
            v18 = **v14;
            if (!(*((*v14)[1] + 32))())
            {
              break;
            }

            if (v3 == ++v13)
            {
              goto LABEL_20;
            }
          }

LABEL_23:
          v20 = **(a1 + 16);
          v26 = " along control flow edge";
          v27 = 259;
          mlir::Operation::emitOpError(v20, &v26, &v29);
          printRegionEdgeName(&v29, *(a1 + 24), a2);
          if (v29)
          {
            mlir::Diagnostic::operator<<<51ul>(v30, " operands mismatch between return-like terminators");
          }

          *v25 = 0;
          *(v25 + 16) = 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
          goto LABEL_31;
        }

        ++v9;
        v8 = 1;
        if (v9 == v10)
        {
          a3 = v25;
          *v25 = 0;
          *(v25 + 8) = 0;
          goto LABEL_30;
        }
      }

      v24 = SuccessorOperands;
      v3 = v12;
LABEL_20:
      ++v9;
      v8 = 1;
    }

    while (v9 != v10);
    v19 = v24;
    a3 = v25;
    *v25 = 0;
    *(v25 + 8) = v3;
    if (v3)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v19 = 0;
LABEL_27:
    v21 = v19 & 0xFFFFFFFFFFFFFFF8;
    v16 = v21 == 0;
    v22 = v21 | 4;
    if (v16)
    {
      v22 = 0;
    }

    *a3 = v22;
  }

LABEL_30:
  *(a3 + 16) = 1;
LABEL_31:
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::RegionBranchTerminatorOpInterface::getSuccessorOperands(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  (**(a1 + 8))(&v6, *(a1 + 8), *a1, a2);
  if ((*(v6 + 46) & 0x80) != 0)
  {
    v2 = *(v6 + 72);
  }

  else
  {
    v2 = 0;
  }

  v3 = v7;
  if (v8 != v9)
  {
    free(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2 + 32 * v3;
}

void mlir::function_interface_impl::setAllArgAttrDicts(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x800000000;
  v8 = (8 * a4) >> 3;
  if (v8 < 9)
  {
    v9 = 0;
    v10 = v18;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v8, 8);
    v9 = v17;
    v10 = v16;
  }

  v11 = 8 * a4;
  if (a4)
  {
    v12 = &v10[v9];
    v13 = v11;
    do
    {
      v14 = *a3;
      if (!*a3)
      {
        v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
      }

      *v12++ = v14;
      ++a3;
      v13 -= 8;
    }

    while (v13);
    v9 = v17;
    v10 = v16;
  }

  LODWORD(v17) = v9 + (v11 >> 3);
  setAllArgResAttrDicts<true>(a1, a2, v10, v17);
  if (v16 != v18)
  {
    free(v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t setAllArgResAttrDicts<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    v6 = a3;
    while (!*(*v6 + 16))
    {
      v6 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), a3, a4);
    v9 = *(*(a2 + 48) + 40);

    return v9();
  }

  else
  {
LABEL_5:
    v7 = *(*(a2 + 48) + 56);

    return v7();
  }
}

uint64_t setAllArgResAttrDicts<false>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    v6 = a3;
    while (!*(*v6 + 16))
    {
      v6 += 8;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), a3, a4);
    v9 = *(*(a2 + 48) + 48);

    return v9();
  }

  else
  {
LABEL_5:
    v7 = *(*(a2 + 48) + 64);

    return v7();
  }
}

void setArgResAttrDict<true>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v10 = (*(*(a2 + 48) + 24))();
  if (!v10)
  {
    if (!*(a5 + 16))
    {
      goto LABEL_9;
    }

    v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
    v24 = v26;
    v25 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::assign(&v24, a3, v14);
    *(v24 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v24, v25);
    (*(*(a2 + 48) + 40))();
    v13 = v24;
    if (v24 == v26)
    {
      goto LABEL_9;
    }

LABEL_8:
    free(v13);
    goto LABEL_9;
  }

  v11 = *(v10 + 8);
  if (*&v11[8 * a4] == a5)
  {
LABEL_9:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *(v10 + 16);
  if (*(a5 + 16))
  {
LABEL_4:
    v24 = v26;
    v25 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v24, v11, &v11[8 * v12]);
    *(v24 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v24, v25);
    (*(*(a2 + 48) + 40))();
    v13 = v24;
    if (v24 == v26)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12 >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = *(v10 + 16);
  }

  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(v10 + 8);
    while (!*(*v18 + 16))
    {
      v18 += 8;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

LABEL_17:
  v19 = a4 + 1;
  if (v12 != v19)
  {
    v20 = &v11[8 * v19];
    v21 = 8 * v12 - 8 * v19;
    while (!*(*v20 + 16))
    {
      v20 += 8;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_4;
  }

LABEL_21:
  v22 = *(*(a2 + 48) + 56);
  v23 = *MEMORY[0x277D85DE8];

  v22();
}

void mlir::function_interface_impl::setArgAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 8))();
  v9 = v8;
  if (!a4)
  {
    a4 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  }

  setArgResAttrDict<true>(a1, a2, v9, a3, a4);
}

void setArgResAttrDict<false>(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v10 = (*(*(a2 + 48) + 32))();
  if (!v10)
  {
    if (!*(a5 + 16))
    {
      goto LABEL_9;
    }

    v14 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
    v24 = v26;
    v25 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::assign(&v24, a3, v14);
    *(v24 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v24, v25);
    (*(*(a2 + 48) + 48))();
    v13 = v24;
    if (v24 == v26)
    {
      goto LABEL_9;
    }

LABEL_8:
    free(v13);
    goto LABEL_9;
  }

  v11 = *(v10 + 8);
  if (*&v11[8 * a4] == a5)
  {
LABEL_9:
    v15 = *MEMORY[0x277D85DE8];
    return;
  }

  v12 = *(v10 + 16);
  if (*(a5 + 16))
  {
LABEL_4:
    v24 = v26;
    v25 = 0x800000000;
    llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v24, v11, &v11[8 * v12]);
    *(v24 + a4) = a5;
    mlir::ArrayAttr::get(*(***(a1 + 24) + 32), v24, v25);
    (*(*(a2 + 48) + 48))();
    v13 = v24;
    if (v24 == v26)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12 >= a4)
  {
    v16 = a4;
  }

  else
  {
    v16 = *(v10 + 16);
  }

  if (v16)
  {
    v17 = 8 * v16;
    v18 = *(v10 + 8);
    while (!*(*v18 + 16))
    {
      v18 += 8;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_4;
  }

LABEL_17:
  v19 = a4 + 1;
  if (v12 != v19)
  {
    v20 = &v11[8 * v19];
    v21 = 8 * v12 - 8 * v19;
    while (!*(*v20 + 16))
    {
      v20 += 8;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_4;
  }

LABEL_21:
  v22 = *(*(a2 + 48) + 64);
  v23 = *MEMORY[0x277D85DE8];

  v22();
}

void mlir::function_interface_impl::setResultAttrs(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  if (!a4)
  {
    a4 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  }

  setArgResAttrDict<false>(a1, a2, v9, a3, a4);
}

uint64_t mlir::function_interface_impl::insertFunctionArguments(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10, unsigned int a11, uint64_t a12)
{
  v36[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v15 = a4;
    v17 = a2;
    v18 = result;
    v19 = a12;
    *(((result + 16 * ((*(result + 44) >> 23) & 1) + ((*(result + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(result + 40) + 8);
    v20 = (*(*(a2 + 48) + 24))();
    if (v20 | a8)
    {
      v21 = v20;
      v34 = v36;
      v35 = 0x400000000;
      v22 = v15 + a11;
      if (v22 >= 5)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v34, v36, v22, 8);
      }

      if (v15)
      {
        v32 = v17;
        v33 = v15;
        v23 = 0;
        v15 = v15;
        v24 = a3;
        while (1)
        {
          v26 = *v24++;
          v25 = v26;
          if (v21)
          {
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(&v34, (*(v21 + 8) + 8 * v23), mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke, (*(v21 + 8) + 8 * v25));
            if (!a8)
            {
              goto LABEL_11;
            }
          }

          else
          {
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(&v34, v25 - v23 + v35);
            if (!a8)
            {
LABEL_11:
              v27 = 0;
              goto LABEL_12;
            }
          }

          v27 = *a7;
LABEL_12:
          llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(&v34, v27);
          ++a7;
          v23 = v25;
          if (!--v15)
          {
            v17 = v32;
            LODWORD(v15) = v33;
            if (v21)
            {
              goto LABEL_14;
            }

LABEL_16:
            llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(&v34, a11 - v25 + v35);
            goto LABEL_17;
          }
        }
      }

      v25 = 0;
      if (!v21)
      {
        goto LABEL_16;
      }

LABEL_14:
      llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(&v34, (*(v21 + 8) + 8 * v25), mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>::attr_value_iterator(mlir::Attribute const*)::{lambda(mlir::Attribute)#1}::__invoke, (*(v21 + 8) + 8 * a11));
LABEL_17:
      mlir::function_interface_impl::setAllArgAttrDicts(v18, v17, v34, v35);
      v19 = a12;
      if (v34 != v36)
      {
        free(v34);
      }
    }

    v28 = mlir::TypeAttr::get(v19);
    result = (*(v17 + 8))(v17, v18, v28);
    if (v15)
    {
      v29 = *a3;
      mlir::TypeRange::dereference_iterator(a5, 0);
      v30 = *a9;
      mlir::Block::insertArgument();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t mlir::function_interface_impl::eraseFunctionArguments(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v21[4] = *MEMORY[0x277D85DE8];
  v8 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
  v9 = (*(*(a2 + 48) + 24))();
  if (v9)
  {
    v10 = v9;
    v19 = v21;
    v20 = 0x400000000;
    v11 = *(v9 + 16);
    if (v11 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v19, v21, v11, 8);
    }

    v12 = a3[16];
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        if (((*(*a3 + 8 * (i >> 6)) >> i) & 1) == 0)
        {
          v14 = *(*(v10 + 8) + 8 * i);
          if (v20 >= HIDWORD(v20))
          {
            llvm::SmallVectorTemplateBase<mlir::DictionaryAttr,true>::push_back(&v19, v14);
          }

          else
          {
            *(v19 + v20) = v14;
            LODWORD(v20) = v20 + 1;
          }
        }
      }
    }

    mlir::function_interface_impl::setAllArgAttrDicts(a1, a2, v19, v20);
    if (v19 != v21)
    {
      free(v19);
    }
  }

  if (v8)
  {
    v15 = (v8 - 8);
  }

  else
  {
    v15 = 0;
  }

  v16 = mlir::TypeAttr::get(a4);
  (*(a2 + 8))(a2, a1, v16);
  result = mlir::Block::eraseArguments(v15, a3);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::function_interface_impl::setFunctionType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[6] = *MEMORY[0x277D85DE8];
  (*(*(a2 + 48) + 8))();
  v7 = v6;
  (*(*(a2 + 48) + 16))();
  v9 = v8;
  v10 = mlir::TypeAttr::get(a3);
  (*(a2 + 8))(a2, a1, v10);
  (*(*(a2 + 48) + 8))();
  v12 = v11;
  (*(*(a2 + 48) + 16))();
  v14 = v13;
  v15 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), 0, 0);
  if (v7 != v12)
  {
    v16 = *(a2 + 48);
    if (v12)
    {
      v17 = (*(v16 + 24))(v16, a1);
      if (v17)
      {
        if (v12 >= v7)
        {
          v19 = *(v17 + 8);
          v20 = &v19[8 * *(v17 + 16)];
          v29 = v31;
          v30 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v29, v19, v20);
          v21 = v12;
          if (v30 != v12)
          {
            if (v30 <= v12)
            {
              llvm::SmallVectorImpl<mlir::Attribute>::append(&v29, v12 - v30, v15);
              v21 = v30;
            }

            else
            {
              LODWORD(v30) = v12;
            }
          }

          setAllArgResAttrDicts<true>(a1, a2, v29, v21);
          if (v29 != v31)
          {
            free(v29);
          }
        }

        else
        {
          if (*(v17 + 16) >= v12)
          {
            v18 = v12;
          }

          else
          {
            v18 = *(v17 + 16);
          }

          setAllArgResAttrDicts<true>(a1, a2, *(v17 + 8), v18);
        }
      }
    }

    else
    {
      (*(v16 + 56))(v16, a1);
    }
  }

  if (v9 != v14)
  {
    v22 = *(a2 + 48);
    if (v14)
    {
      v23 = (*(v22 + 32))(v22, a1);
      if (v23)
      {
        if (v14 >= v9)
        {
          v25 = *(v23 + 8);
          v26 = &v25[8 * *(v23 + 16)];
          v29 = v31;
          v30 = 0x600000000;
          llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(&v29, v25, v26);
          v27 = v14;
          if (v30 != v14)
          {
            if (v30 <= v14)
            {
              llvm::SmallVectorImpl<mlir::Attribute>::append(&v29, v14 - v30, v15);
              v27 = v30;
            }

            else
            {
              LODWORD(v30) = v14;
            }
          }

          setAllArgResAttrDicts<false>(a1, a2, v29, v27);
          if (v29 != v31)
          {
            free(v29);
          }
        }

        else
        {
          if (*(v23 + 16) >= v14)
          {
            v24 = v14;
          }

          else
          {
            v24 = *(v23 + 16);
          }

          setAllArgResAttrDicts<false>(a1, a2, *(v23 + 8), v24);
        }
      }
    }

    else
    {
      (*(v22 + 64))(v22, a1);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::append<llvm::mapped_iterator<mlir::Attribute const*,mlir::DictionaryAttr (*)(mlir::Attribute),mlir::DictionaryAttr>,void>(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t), char *a4)
{
  v6 = a2;
  v8 = a4 - a2;
  v9 = *(a1 + 8);
  v10 = v9 + ((a4 - a2) >> 3);
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    LODWORD(v9) = *(a1 + 8);
  }

  if (a4 != v6)
  {
    v11 = (*a1 + 8 * v9);
    do
    {
      v12 = *v6;
      v6 += 8;
      *v11++ = a3(v12);
    }

    while (v6 != a4);
    LODWORD(v9) = *(a1 + 8);
  }

  *(a1 + 8) = v9 + (v8 >> 3);
}

void llvm::SmallVectorImpl<mlir::DictionaryAttr>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), a2, 8);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        bzero((*a1 + 8 * v2), 8 * a2 - 8 * v2);
      }
    }

    *(a1 + 8) = a2;
  }
}

void llvm::SmallVectorImpl<mlir::Attribute>::append<mlir::Attribute const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

void llvm::SmallVectorImpl<mlir::Attribute>::append(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6 + a2 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6 + a2, 8);
    v6 = *(a1 + 8);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = vdupq_n_s64(a2 - 1);
  v9 = (*a1 + 8 * v6 + 8);
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
    if (v10.i8[0])
    {
      *(v9 - 1) = a3;
    }

    if (v10.i8[4])
    {
      *v9 = a3;
    }

    v7 += 2;
    v9 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v7);
LABEL_9:
  *(a1 + 8) = v6 + a2;
}

uint64_t mlir::function_interface_impl::parseFunctionSignatureWithArguments(uint64_t a1, char a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  *a4 = 0;
  v11[0] = a4;
  v11[1] = a1;
  v11[2] = &v12;
  v11[3] = a3;
  v9 = (*(*a1 + 392))(a1, 1, llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>, v11, 0, 0);
  result = 0;
  if (v9)
  {
    if ((*(*a1 + 64))(a1))
    {
      return mlir::call_interface_impl::parseFunctionResultList(a1, a5, a6);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::function_interface_impl::parseFunctionOp(mlir::AsmParser *a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t **, void *, void, void *, void, void, void **), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71[8] = *MEMORY[0x277D85DE8];
  v69 = v71;
  v70 = 0x100000000;
  v66 = v68;
  v67 = 0x600000000;
  v63 = v65;
  v64 = 0x600000000;
  v40 = (*(*a1 + 32))(a1);
  mlir::impl::parseOptionalVisibilityKeyword(a1, a2 + 112);
  v47 = 0;
  if (mlir::AsmParser::parseSymbolName(a1, &v47, "sym_name", 8, a2 + 112))
  {
    v37 = (*(*a1 + 40))(a1);
    v46 = 0;
    v14 = mlir::function_interface_impl::parseFunctionSignatureWithArguments(a1, a3, &v69, &v46, &v63, &v66);
    v15 = 0;
    if (v14)
    {
      __p = 0;
      v44 = 0;
      v45 = 0;
      v60 = v62;
      v61 = 0x600000000;
      v16 = v70;
      if (v70 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v62, v70, 8);
        v16 = v70;
      }

      if (v16)
      {
        v17 = v16 << 6;
        v18 = v69 + 4;
        do
        {
          v19 = *v18;
          v18 += 8;
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(&v60, v19);
          v17 -= 64;
        }

        while (v17);
      }

      v20 = a5(a6, v40, v60, v61, v63, v64, v46, &__p);
      if (v20)
      {
        v21 = mlir::TypeAttr::get(v20);
        mlir::NamedAttrList::push_back(a2 + 112, a4, v21);
        __src = v54;
        v53 = 0x400000000;
        v56 = 4;
        v22 = (*(*a1 + 40))(a1);
        if ((*(*a1 + 496))(a1, &__src))
        {
          v23 = 0;
          v50[0] = "sym_visibility";
          v50[1] = 14;
          v50[2] = "sym_name";
          v50[3] = 8;
          v51 = *(a4 + 16);
          while (1)
          {
            v24 = v50[v23];
            v25 = v50[v23 + 1];
            v26 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(&__src, v24, v25);
            if (v27)
            {
              if (*(v26 + 8))
              {
                break;
              }
            }

            v23 += 2;
            if (v23 == 6)
            {
              v28 = __src;
              v29 = v53;
              *(a2 + 192) = 0;
              v30 = *(a2 + 120);
              if (v30 + v29 > *(a2 + 124))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v30 + v29, 16);
                LODWORD(v30) = *(a2 + 120);
              }

              if (v29)
              {
                memcpy((*(a2 + 112) + 16 * v30), v28, 16 * v29);
                LODWORD(v30) = *(a2 + 120);
              }

              *(a2 + 120) = v30 + v29;
              mlir::call_interface_impl::addArgAndResultAttrs(v40, a2, v69, v70, v66, v67, a7, a8);
              mlir::OperationState::addRegion(a2);
            }
          }

          v41 = "'";
          v42 = 259;
          (*(*a1 + 24))(&v57, a1, v22, &v41);
          if (v57)
          {
            v49 = 261;
            v48[0] = v24;
            v48[1] = v25;
            mlir::Diagnostic::operator<<(v58, v48);
            if (v57)
            {
              mlir::Diagnostic::operator<<<92ul>(v58, "' is an inferred attribute and should not be specified in the explicit attribute dictionary");
            }
          }

          v34 = v59 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
        }

        else
        {
          v34 = 0;
        }

        if (__src != v54)
        {
          free(__src);
        }
      }

      else
      {
        LOWORD(v51) = 257;
        (*(*a1 + 24))(&v57, a1, v37, v50);
        if (v57)
        {
          mlir::Diagnostic::operator<<<34ul>(v58, "failed to construct function type");
          v31 = HIBYTE(v45);
          if (v45 < 0)
          {
            v31 = v44;
          }

          if (v31)
          {
            v32 = ": ";
          }

          else
          {
            v32 = &byte_25D0A27DF;
          }

          if (v57)
          {
            v33 = 1;
            HIBYTE(v55) = 1;
            if (*v32)
            {
              __src = v32;
              v33 = 3;
            }

            LOBYTE(v55) = v33;
            mlir::Diagnostic::operator<<(v58, &__src);
            if (v57)
            {
              v55 = 260;
              __src = &__p;
              mlir::Diagnostic::operator<<(v58, &__src);
            }
          }
        }

        v34 = v59 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
      }

      if (v60 != v62)
      {
        free(v60);
      }

      v15 = v34 & 1;
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (v63 != v65)
  {
    free(v63);
  }

  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v35 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::AsmParser::parseSymbolName(mlir::AsmParser *a1, mlir::StringAttr *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!mlir::AsmParser::parseSymbolName(a1, a2))
  {
    return 0;
  }

  v10 = *a2;
  v11 = *(**v10 + 32);
  v15 = 261;
  v14[0] = a3;
  v14[1] = a4;
  v12 = mlir::StringAttr::get(v11, v14, v9);
  mlir::NamedAttrList::push_back(a5, v12, v10);
  return 1;
}

void mlir::function_interface_impl::printFunctionAttributes(uint64_t a1, mlir::Operation *a2, _BYTE *a3, uint64_t a4)
{
  v13[16] = *MEMORY[0x277D85DE8];
  __src[0] = "sym_name";
  __src[1] = 8;
  v11 = v13;
  v12 = 0x800000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v11, __src, &v11);
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(&v11, a3, &a3[16 * a4]);
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  (*(*a1 + 200))(a1, *(AttrDictionary + 8), *(AttrDictionary + 16), v11, v12);
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::function_interface_impl::printFunctionOp(uint64_t a1, unsigned int *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a2, "sym_name", 8uLL);
  if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v13 = Attr;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = (*(*a1 + 16))(a1);
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

  v18 = mlir::Operation::getAttr(a2, "sym_visibility", 0xEuLL);
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    v19 = v18[2];
    v20 = v18[3];
    v21 = (*(*a1 + 16))(a1);
    llvm::raw_ostream::operator<<(v21, v19, v20);
    v22 = (*(*a1 + 16))(a1);
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
  }

  (*(*a1 + 88))(a1, v15, v14);
  v24 = (*(*(a3 + 48) + 8))();
  v26 = v25;
  v27 = (*(*(a3 + 48) + 16))();
  v29 = v28;
  v30 = v24 & 0xFFFFFFFFFFFFFFF9;
  v31 = (*(*(a3 + 48) + 24))();
  v32 = (*(*(a3 + 48) + 32))();
  mlir::call_interface_impl::printFunctionSignature(a1, v30 | 2, v26, v31, a4, v27 & 0xFFFFFFFFFFFFFFF9 | 2, v29, v32, (((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10]), 0);
  v41[0] = "sym_visibility";
  v41[1] = 14;
  v41[2] = a5;
  v41[3] = a6;
  v42 = *(a7 + 16);
  v43 = *(a8 + 16);
  mlir::function_interface_impl::printFunctionAttributes(a1, a2, v41, 4);
  v33 = (((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10]);
  if (*v33 != v33)
  {
    v34 = (*(*a1 + 16))(a1);
    v35 = *(v34 + 4);
    if (v35 >= *(v34 + 3))
    {
      llvm::raw_ostream::write(v34, 32);
    }

    else
    {
      *(v34 + 4) = v35 + 1;
      *v35 = 32;
    }

    (*(*a1 + 224))(a1, v33, 0, 1, 0);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<parseFunctionArgumentList(mlir::OpAsmParser &,BOOL,llvm::SmallVectorImpl<mlir::OpAsmParser::Argument> &,BOOL &)::$_0>(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  if (**a1 != 1)
  {
    if (**(a1 + 16) == 1 && ((*(**(a1 + 8) + 352))(*(a1 + 8)) & 1) != 0)
    {
      v5 = *a1;
      v4 = 1;
      *v5 = 1;
      goto LABEL_26;
    }

    memset(v25, 0, 24);
    v28[8] = 0;
    v26 = 0;
    Dictionary = 0;
    v28[0] = 0;
    v6 = (*(**(a1 + 8) + 760))();
    if ((v6 & 0x100) != 0)
    {
      if (v6)
      {
        v13 = *(a1 + 24);
        v14 = *(v13 + 8);
        if (v14 && !*(*v13 + (v14 << 6) - 48))
        {
          v11 = *(a1 + 8);
          v10 = v25[0];
          v12 = "expected type instead of SSA identifier";
          goto LABEL_15;
        }

LABEL_22:
        v4 = 1;
        v16 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::Argument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>>(v13, v25, 1);
        v17 = (*v13 + (*(v13 + 8) << 6));
        v18 = *v16;
        v19 = v16[1];
        v20 = v16[3];
        v17[2] = v16[2];
        v17[3] = v20;
        *v17 = v18;
        v17[1] = v19;
        ++*(v13 + 8);
        goto LABEL_26;
      }
    }

    else
    {
      v7 = (*(**(a1 + 8) + 40))(*(a1 + 8));
      v25[0] = v7;
      v8 = *(a1 + 24);
      v9 = *(v8 + 8);
      if (v9 && *(*v8 + (v9 << 6) - 48))
      {
        v10 = v7;
        v11 = *(a1 + 8);
        v12 = "expected SSA identifier";
LABEL_15:
        v23 = v12;
        v24 = 259;
        (*(*v11 + 24))(v29, v11, v10, &v23);
        goto LABEL_3;
      }

      v29[0] = v30;
      v29[1] = 0x400000000;
      v30[8] = 4;
      if ((*(**(a1 + 8) + 536))(*(a1 + 8), &v26) & 1) != 0 && ((*(**(a1 + 8) + 488))(*(a1 + 8), v29) & 1) != 0 && ((*(**(a1 + 8) + 656))(*(a1 + 8), v28))
      {
        v15 = (*(**(a1 + 8) + 32))(*(a1 + 8));
        Dictionary = mlir::NamedAttrList::getDictionary(v29, *v15);
        if (v29[0] != v30)
        {
          free(v29[0]);
        }

        v13 = *(a1 + 24);
        goto LABEL_22;
      }

      if (v29[0] != v30)
      {
        free(v29[0]);
      }
    }

    v4 = 0;
    goto LABEL_26;
  }

  v2 = *(a1 + 8);
  v3 = (*(*v2 + 40))(v2);
  v25[0] = "variadic arguments must be in the end of the argument list";
  LOWORD(v26) = 259;
  (*(*v2 + 24))(v29, v2, v3, v25);
LABEL_3:
  v4 = v31 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
LABEL_26:
  v21 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}