BOOL mlir::ODIE::Compiler::CoreML::MemberOp::verify(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
  if (!v2)
  {
    return 1;
  }

  v3 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::TypedAttr const,llvm::CastInfo<mlir::TypedAttr,mlir::TypedAttr const,void>>::doCastIfPossible(v2);
  if (!v3)
  {
    return 1;
  }

  v19[0] = v3;
  v19[1] = v4;
  v20 = 1;
  Type = mlir::TypedAttr::getType(v19);
  v23[0] = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  if (Type == mlir::TypeAttr::getValue(v23))
  {
    return 1;
  }

  v18[16] = 257;
  mlir::OpState::emitError(this, v18, v23);
  if (v23[0])
  {
    LODWORD(v21) = 3;
    *(&v21 + 1) = "default value type and member type must match";
    v22 = 45;
    if (v25 >= v26)
    {
      if (v24 > &v21 || v24 + 24 * v25 <= &v21)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v24 + 24 * v25;
    v9 = v21;
    *(v8 + 2) = v22;
    *v8 = v9;
    ++v25;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
  if (v23[0])
  {
    mlir::InFlightDiagnostic::report(v23);
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
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
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != &v27)
    {
      free(v24);
    }
  }

  return v6;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, size_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = 261;
  v34[0] = a3;
  v34[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v34, a3);
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 56) = StringAttr;
  v20 = mlir::TypeAttr::get(a5);
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = v20;
  v22 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a6, a7);
  v24 = *(a2 + 32);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 32) = v22;
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
    v29 = *(a2 + 32);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 24) = UnitAttr;
    v25 = a10;
    if (!a9)
    {
LABEL_8:
      v26 = a11;
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v25 = a10;
    if (!a9)
    {
      goto LABEL_8;
    }
  }

  v30 = *(a2 + 32);
  if (!v30)
  {
    operator new();
  }

  *(v30 + 8) = a9;
  v26 = a11;
  if (!v25)
  {
LABEL_9:
    v27 = a12;
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_19:
  v31 = *(a2 + 32);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 48) = v25;
  v27 = a12;
  if (!v26)
  {
LABEL_10:
    if (!v27)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_22:
  v32 = *(a2 + 32);
  if (!v32)
  {
    operator new();
  }

  *v32 = v26;
  if (!v27)
  {
LABEL_28:
    mlir::OperationState::addRegion(a2);
  }

LABEL_25:
  v33 = *(a2 + 32);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 40) = v27;
  goto LABEL_28;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = (*(*this + 11) >> 23) & 1;
  Value = *(*this + 2 * v5 + 9);
  LOBYTE(v17) = Value != 0;
  if (Value)
  {
    v6 = (*(*a2 + 16))(a2);
    v7 = v6[4];
    if (v6[3] == v7)
    {
      llvm::raw_ostream::write(v6, " ", 1uLL);
    }

    else
    {
      *v7 = 32;
      ++v6[4];
    }

    v8 = (*(*a2 + 16))(a2);
    v9 = v8[4];
    if ((v8[3] - v9) > 5)
    {
      *(v9 + 4) = 28274;
      *v9 = 1702131813;
      v8[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "extern", 6uLL);
    }

    mlir::ODIE::Compiler::CoreML::ExternAttr::print(&Value, a2);
    v4 = *this;
    v5 = (*(*this + 11) >> 23) & 1;
  }

  if (*(v4 + 2 * v5 + 11))
  {
    v10 = (*(*a2 + 16))(a2);
    v11 = v10[4];
    if ((v10[3] - v11) > 8)
    {
      *(v11 + 8) = 101;
      *v11 = *" noinline";
      v10[4] += 9;
    }

    else
    {
      llvm::raw_ostream::write(v10, " noinline", 9uLL);
    }
  }

  v12 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v15 = *(*(*(*this + 6) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v15);
  v17 = v14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v12, InterfaceFor, &Value, 1uLL, a2);
}

void mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(mlir::Operation *a1, uint64_t a2, const void *a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  v35[6] = *MEMORY[0x277D85DE8];
  v30 = a1;
  v31 = a2;
  v33 = v35;
  v34 = 0x300000000;
  if (a4 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    memcpy(v35, a3, 16 * a4);
    v7 = v34;
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v34) = v7 + v6;
  v8 = (*(*a5 + 16))(a5);
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, " ", 1uLL);
  }

  else
  {
    *v9 = 32;
    ++v8[4];
  }

  NameAttr = mlir::FunctionOpInterface::getNameAttr(&v30);
  Value = mlir::StringAttr::getValue(&NameAttr);
  (*(*a5 + 88))(a5, Value, v11);
  if (v34 >= HIDWORD(v34))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v12 = v33 + 16 * v34;
  *v12 = "sym_name";
  v12[1] = 8;
  LODWORD(v34) = v34 + 1;
  v13 = v30;
  if (mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v30) && v13)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(v13);
    (*(InterfaceFor + 32))(InterfaceFor, v13, a5);
    if (v34 >= HIDWORD(v34))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v33 + 16 * v34;
    *v15 = "param_decls";
    v15[1] = 11;
    LODWORD(v34) = v34 + 1;
  }

  FunctionType = mlir::FunctionOpInterface::getFunctionType(&v30);
  v16 = v30;
  v17 = v31;
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  v20 = v19;
  Results = mlir::FunctionType::getResults(&FunctionType);
  mlir::function_interface_impl::printFunctionSignature(a5, v16, v17, Inputs, v20, 0, Results, v22);
  if (v34 + 3 > HIDWORD(v34))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = v33 + 16 * v34;
  *v23 = xmmword_279839D50;
  v23[1] = *&off_279839D60;
  v23[2] = xmmword_279839D70;
  LODWORD(v34) = v34 + 3;
  NameAttr = mlir::Operation::getAttrDictionary(v30);
  v24 = mlir::DictionaryAttr::getValue(&NameAttr);
  (*(*a5 + 200))(a5, v24, v25, v33, v34);
  v26 = (*(*a5 + 16))(a5);
  v27 = v26[4];
  if (v26[3] == v27)
  {
    llvm::raw_ostream::write(v26, " ", 1uLL);
  }

  else
  {
    *v27 = 32;
    ++v26[4];
  }

  v28 = (((v30 + 16 * ((*(v30 + 11) >> 23) & 1) + ((*(v30 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v30 + 10));
  if (*v28 != v28)
  {
    (*(*a5 + 224))(a5);
  }

  if (v33 != v35)
  {
    free(v33);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::FuncOp::parse(mlir::ODIE::Compiler::CoreML::FuncOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  if ((*(*this + 408))(this, "extern", 6))
  {
    result = mlir::ODIE::Compiler::CoreML::ExternAttr::parse(this);
    if (!result)
    {
      return result;
    }

    mlir::NamedAttribute::NamedAttribute(&v10, *(*(*(a2 + 1) + 96) + 8), result);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  if ((*(*this + 408))(this, "noinline", 8))
  {
    v6 = *(*(*(a2 + 1) + 96) + 24);
    v7 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v7, v8);
    mlir::NamedAttribute::NamedAttribute(&v10, v6, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v10, v11);
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList);
}

BOOL mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(mlir::AsmParser *a1, uint64_t a2, uint64_t (*a3)(uint64_t, mlir::AsmParser *, uint64_t), uint64_t a4)
{
  v126 = *MEMORY[0x277D85DE8];
  v96 = 0;
  v8 = (*(*a1 + 40))(a1);
  if (!mlir::AsmParser::parseSymbolName(a1, &v96))
  {
    v102 = 257;
    (*(*a1 + 24))(&v114, a1, v8, &v99);
    if (v114)
    {
      LODWORD(v112) = 3;
      *(&v112 + 1) = "expected valid symbol name.";
      v113[0] = 27;
      if (v117 >= v118)
      {
        if (v116 > &v112 || v116 + 24 * v117 <= &v112)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v116 + 24 * v117;
      v23 = v112;
      *(v22 + 2) = v113[0];
      *v22 = v23;
      ++v117;
    }

    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v114);
    if (v114)
    {
      mlir::InFlightDiagnostic::report(&v114);
    }

    if (v125 == 1)
    {
      if (v124 != &v125)
      {
        free(v124);
      }

      v25 = __p;
      if (__p)
      {
        v26 = v123;
        v27 = __p;
        if (v123 != __p)
        {
          do
          {
            v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
          }

          while (v26 != v25);
          v27 = __p;
        }

        v123 = v25;
        operator delete(v27);
      }

      v28 = v120;
      if (v120)
      {
        v29 = v121;
        v30 = v120;
        if (v121 != v120)
        {
          do
          {
            v32 = *--v29;
            v31 = v32;
            *v29 = 0;
            if (v32)
            {
              MEMORY[0x259C63150](v31, 0x1000C8077774924);
            }
          }

          while (v29 != v28);
          v30 = v120;
        }

        v121 = v28;
        operator delete(v30);
      }

      v69 = v116;
      if (v116 != v119)
      {
        goto LABEL_134;
      }
    }

    return v24;
  }

  v9 = v96;
  Context = mlir::Attribute::getContext(a2);
  LOWORD(v117) = 261;
  v114 = "sym_name";
  v115 = 8;
  v12 = mlir::StringAttr::get(Context, &v114, v11);
  mlir::NamedAttribute::NamedAttribute(&v99, v12, v9);
  mlir::NamedAttrList::push_back(a2 + 112, v99, v100);
  {
    mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor();
  }

  v13 = *(a2 + 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  if (v15)
  {
    v16 = *(v13 + 32);
    v17 = v15;
    do
    {
      v18 = v17 >> 1;
      v19 = &v16[2 * (v17 >> 1)];
      v21 = *v19;
      v20 = v19 + 2;
      v17 += ~(v17 >> 1);
      if (v21 < mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id)
      {
        v16 = v20;
      }

      else
      {
        v17 = v18;
      }
    }

    while (v17);
    if (v16 != (v14 + 16 * v15) && *v16 == mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,void>::resolveTypeID(void)::id && v16[1] && (a3(a4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  *&v112 = v113;
  *(&v112 + 1) = 0x100000000;
  v95 = 0;
  v109 = v111;
  v110 = 0x600000000;
  v106 = v108;
  v107 = 0x600000000;
  v33 = (*(*a1 + 40))(a1);
  if (mlir::function_interface_impl::parseFunctionSignature(a1, 0, &v112, &v95, &v109, &v106))
  {
    v34 = (*(*a1 + 32))(a1);
    v35 = v112;
    v36 = DWORD2(v112);
    v37 = v106;
    v38 = v107;
    v39 = mlir::AsmParser::getContext(a1);
    LOWORD(v117) = 262;
    v114 = "arg_attrs";
    v115 = 9;
    v41 = mlir::StringAttr::get(v39, &v114, v40);
    v42 = mlir::AsmParser::getContext(a1);
    v102 = 262;
    v99 = "res_attrs";
    v100 = 9;
    v44 = mlir::StringAttr::get(v42, &v99, v43);
    mlir::function_interface_impl::addArgAndResultAttrs(v34, a2, v35, v36, v37, v38, v41, v44);
    *&v104 = v105;
    *(&v104 + 1) = 0x600000000;
    if (DWORD2(v112) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (DWORD2(v112))
    {
      v45 = DWORD2(v104);
      v46 = (v112 + 32);
      v47 = DWORD2(v112) << 6;
      do
      {
        if (v45 >= HIDWORD(v104))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v104 + 8 * v45) = *v46;
        v45 = ++DWORD2(v104);
        v46 += 8;
        v47 -= 64;
      }

      while (v47);
    }

    v58 = (*(*a1 + 32))(a1);
    mlir::TypeRange::TypeRange(&v114, v104, DWORD2(v104));
    mlir::TypeRange::TypeRange(&v99, v109, v110);
    FunctionType = mlir::Builder::getFunctionType(v58, v114, v115, v99, v100);
    if (FunctionType)
    {
      v60 = mlir::TypeAttr::get(FunctionType);
      v61 = mlir::Attribute::getContext(a2);
      LOWORD(v117) = 261;
      v114 = "function_type";
      v115 = 13;
      v63 = mlir::StringAttr::get(v61, &v114, v62);
      mlir::NamedAttribute::NamedAttribute(&v99, v63, v60);
      mlir::NamedAttrList::push_back(a2 + 112, v99, v100);
      v99 = v101;
      v100 = 0x400000000;
      v103 = 4;
      v64 = (*(*a1 + 40))(a1);
      if ((*(*a1 + 496))(a1, &v99))
      {
        Attrs = mlir::NamedAttrList::getAttrs(&v99);
        v67 = v65;
        *(a2 + 192) = 0;
        v68 = *(a2 + 120);
        if (v65 + v68 > *(a2 + 124))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v65)
        {
          memcpy((*(a2 + 112) + 16 * v68), Attrs, 16 * v65);
          LODWORD(v68) = *(a2 + 120);
        }

        *(a2 + 120) = v68 + v67;
        mlir::OperationState::addRegion(a2);
      }

      v94 = 257;
      (*(*a1 + 24))(&v114, a1, v64, &v92);
      if (v114)
      {
        LODWORD(v97) = 3;
        *(&v97 + 1) = "failed to parse the attribute dictionary";
        v98 = 40;
        if (v117 >= v118)
        {
          if (v116 > &v97 || v116 + 24 * v117 <= &v97)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v80 = v116 + 24 * v117;
        v81 = v97;
        *(v80 + 2) = v98;
        *v80 = v81;
        ++v117;
      }

      v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v114);
      if (v114)
      {
        mlir::InFlightDiagnostic::report(&v114);
      }

      if (v125 == 1)
      {
        if (v124 != &v125)
        {
          free(v124);
        }

        v82 = __p;
        if (__p)
        {
          v83 = v123;
          v84 = __p;
          if (v123 != __p)
          {
            do
            {
              v83 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v83 - 1);
            }

            while (v83 != v82);
            v84 = __p;
          }

          v123 = v82;
          operator delete(v84);
        }

        v85 = v120;
        if (v120)
        {
          v86 = v121;
          v87 = v120;
          if (v121 != v120)
          {
            do
            {
              v89 = *--v86;
              v88 = v89;
              *v86 = 0;
              if (v89)
              {
                MEMORY[0x259C63150](v88, 0x1000C8077774924);
              }
            }

            while (v86 != v85);
            v87 = v120;
          }

          v121 = v85;
          operator delete(v87);
        }

        if (v116 != v119)
        {
          free(v116);
        }
      }

      if (v99 != v101)
      {
        free(v99);
      }
    }

    else
    {
      v102 = 257;
      (*(*a1 + 24))(&v114, a1, v33, &v99);
      if (v114)
      {
        LODWORD(v92) = 3;
        *(&v92 + 1) = "failed to construct function type";
        v93 = 33;
        if (v117 >= v118)
        {
          if (v116 > &v92 || v116 + 24 * v117 <= &v92)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v70 = v116 + 24 * v117;
        v71 = v92;
        *(v70 + 2) = v93;
        *v70 = v71;
        ++v117;
      }

      v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v114);
      if (v114)
      {
        mlir::InFlightDiagnostic::report(&v114);
      }

      if (v125 == 1)
      {
        if (v124 != &v125)
        {
          free(v124);
        }

        v72 = __p;
        if (__p)
        {
          v73 = v123;
          v74 = __p;
          if (v123 != __p)
          {
            do
            {
              v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
            }

            while (v73 != v72);
            v74 = __p;
          }

          v123 = v72;
          operator delete(v74);
        }

        v75 = v120;
        if (v120)
        {
          v76 = v121;
          v77 = v120;
          if (v121 != v120)
          {
            do
            {
              v79 = *--v76;
              v78 = v79;
              *v76 = 0;
              if (v79)
              {
                MEMORY[0x259C63150](v78, 0x1000C8077774924);
              }
            }

            while (v76 != v75);
            v77 = v120;
          }

          v121 = v75;
          operator delete(v77);
        }

        if (v116 != v119)
        {
          free(v116);
        }
      }
    }

    v90 = v104;
    if (v104 != v105)
    {
LABEL_128:
      free(v90);
    }
  }

  else
  {
    v102 = 257;
    (*(*a1 + 24))(&v114, a1, v33, &v99);
    if (v114)
    {
      LODWORD(v104) = 3;
      *(&v104 + 1) = "failed to parse the function signature";
      v105[0] = 38;
      if (v117 >= v118)
      {
        if (v116 > &v104 || v116 + 24 * v117 <= &v104)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v48 = v116 + 24 * v117;
      v49 = v104;
      *(v48 + 2) = v105[0];
      *v48 = v49;
      ++v117;
    }

    v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v114);
    if (v114)
    {
      mlir::InFlightDiagnostic::report(&v114);
    }

    if (v125 == 1)
    {
      if (v124 != &v125)
      {
        free(v124);
      }

      v50 = __p;
      if (__p)
      {
        v51 = v123;
        v52 = __p;
        if (v123 != __p)
        {
          do
          {
            v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v51 - 1);
          }

          while (v51 != v50);
          v52 = __p;
        }

        v123 = v50;
        operator delete(v52);
      }

      v53 = v120;
      if (v120)
      {
        v54 = v121;
        v55 = v120;
        if (v121 != v120)
        {
          do
          {
            v57 = *--v54;
            v56 = v57;
            *v54 = 0;
            if (v57)
            {
              MEMORY[0x259C63150](v56, 0x1000C8077774924);
            }
          }

          while (v54 != v53);
          v55 = v120;
        }

        v121 = v53;
        operator delete(v55);
      }

      v90 = v116;
      if (v116 != v119)
      {
        goto LABEL_128;
      }
    }
  }

  if (v106 != v108)
  {
    free(v106);
  }

  if (v109 != v111)
  {
    free(v109);
  }

  v69 = v112;
  if (v112 != v113)
  {
LABEL_134:
    free(v69);
  }

  return v24;
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreML::FuncOp::specialize(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v3, InterfaceFor, a2);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2);
}

BOOL mlir::ODIE::Compiler::CoreML::FuncOp::canDiscardOnUseEmpty(mlir::ODIE::Compiler::CoreML::FuncOp *this)
{
  v1 = *(*this + 44);
  v2 = *this + 64 + 16 * ((v1 >> 23) & 1);
  v3 = (((v2 + ((v1 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40));
  return *v3 != v3 && *(v2 + 8) == 0;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18[8] = *MEMORY[0x277D85DE8];
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 13))
  {
LABEL_4:
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] - v5 <= 7uLL)
  {
    llvm::raw_ostream::write(v4, " private", 8uLL);
    goto LABEL_4;
  }

  *v5 = 0x6574617669727020;
  v4[4] += 8;
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 0xB)
  {
    *(v7 + 8) = 1702521196;
    *v7 = *" externalize";
    v6[4] += 12;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  llvm::raw_ostream::write(v6, " externalize", 0xCuLL);
LABEL_9:
  if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 11))
  {
    goto LABEL_15;
  }

LABEL_12:
  v8 = (*(*a2 + 16))(a2);
  v9 = v8[4];
  if ((v8[3] - v9) > 8)
  {
    *(v9 + 8) = 101;
    *v9 = *" noinline";
    v8[4] += 9;
  }

  else
  {
    llvm::raw_ostream::write(v8, " noinline", 9uLL);
  }

LABEL_15:
  v10 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v17 = *(*(*(*this + 6) + 96) + 40);
  v18[0] = mlir::StringAttr::getValue(&v17);
  v18[1] = v12;
  v16 = *(*(*(*this + 6) + 96) + 8);
  v18[2] = mlir::StringAttr::getValue(&v16);
  v18[3] = v13;
  v15 = *(*(*(*this + 6) + 96) + 24);
  v18[4] = mlir::StringAttr::getValue(&v15);
  v18[5] = v14;
  v18[6] = "sym_visibility";
  v18[7] = 14;
  mlir::ODIE::Compiler::CoreML::printFunctionLikeOp(v10, InterfaceFor, v18, 4uLL, a2);
}

BOOL mlir::ODIE::Compiler::CoreML::GraphOp::parse(mlir::ODIE::Compiler::CoreML::GraphOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v16 = xmmword_279839D20;
  v17 = *&off_279839D30;
  for (i = xmmword_279839D40; ((*(*this + 424))(this, &v14, &v16, 3) & 1) != 0; i = xmmword_279839D40)
  {
    v9 = *(*(a2 + 1) + 96);
    if (v15 == 11)
    {
      if (*v14 == 0x6C616E7265747865 && *(v14 + 3) == 0x657A696C616E7265)
      {
        v11 = v9 + 1;
        goto LABEL_22;
      }
    }

    else if (v15 == 8)
    {
      if (*v14 == 0x656E696C6E696F6ELL)
      {
        v11 = v9 + 3;
        goto LABEL_22;
      }
    }

    else if (v15 == 7 && *v14 == 1986622064 && *(v14 + 3) == 1702125942)
    {
      v11 = v9 + 5;
LABEL_22:
      v5 = *v11;
      goto LABEL_5;
    }

    v5 = 0;
LABEL_5:
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    mlir::NamedAttribute::NamedAttribute(&v16, v5, UnitAttr);
    mlir::NamedAttrList::push_back(a2 + 112, v16, *(&v16 + 1));
    v16 = xmmword_279839D20;
    v17 = *&off_279839D30;
  }

  return mlir::ODIE::Compiler::CoreML::parseFunctionLikeOp(this, a2, llvm::function_ref<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>::callback_fn<llvm::ParseResult ()(mlir::OpAsmParser &,mlir::OperationState &)>, mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::parseParameterList(const char *a1, mlir::Attribute *a2)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v16 = v18;
  v17 = 0x600000000;
  v12 = a1;
  v13 = &v16;
  if ((*(*a1 + 392))(a1, 7))
  {
    v4 = (*(*a1 + 32))(a1);
    v5 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*v4, v16, v17);
    Context = mlir::Attribute::getContext(a2);
    v14 = 261;
    v12 = "param_decls";
    v13 = 11;
    v8 = mlir::StringAttr::get(Context, &v12, v7);
    mlir::NamedAttribute::NamedAttribute(v15, v8, v5);
    mlir::NamedAttrList::push_back(a2 + 112, v15[0], v15[1]);
    v9 = 1;
    v10 = v16;
    if (v16 == v18)
    {
      return v9;
    }

    goto LABEL_5;
  }

  v9 = 0;
  v10 = v16;
  if (v16 != v18)
  {
LABEL_5:
    free(v10);
  }

  return v9;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build(mlir::StringAttr **a1, mlir::OperationState *a2, const llvm::Twine *a3, size_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, int a8, char a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v37 = 261;
  v36[0] = a3;
  v36[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v36, a3);
  v19 = *(a2 + 32);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 56) = StringAttr;
  v20 = mlir::TypeAttr::get(a5);
  v21 = *(a2 + 32);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = v20;
  v22 = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(*a1, a6, a7);
  v24 = *(a2 + 32);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 32) = v22;
  if (a8)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v23);
    v29 = *(a2 + 32);
    if (!v29)
    {
      operator new();
    }

    *(v29 + 40) = UnitAttr;
    v25 = a10;
    if (!a9)
    {
LABEL_8:
      v26 = a11;
      if (!v25)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v25 = a10;
    if (!a9)
    {
      goto LABEL_8;
    }
  }

  v30 = mlir::Builder::getUnitAttr(a1, v23);
  v31 = *(a2 + 32);
  if (!v31)
  {
    operator new();
  }

  *(v31 + 8) = v30;
  v26 = a11;
  if (!v25)
  {
LABEL_9:
    v27 = a12;
    if (!v26)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_21:
  v32 = mlir::Builder::getUnitAttr(a1, v23);
  v33 = *(a2 + 32);
  if (!v33)
  {
    operator new();
  }

  *(v33 + 24) = v32;
  v27 = a12;
  if (!v26)
  {
LABEL_10:
    if (!v27)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_24:
  v34 = *(a2 + 32);
  if (!v34)
  {
    operator new();
  }

  *v34 = v26;
  if (!v27)
  {
LABEL_30:
    mlir::OperationState::addRegion(a2);
  }

LABEL_27:
  v35 = *(a2 + 32);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 48) = v27;
  goto LABEL_30;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getArgumentDefaultValue(mlir::ODIE::Compiler::CoreML::GraphOp *this, unsigned int a2)
{
  v3 = *this;
  if (*this)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
    result = mlir::function_interface_impl::getArgAttrDict(v3, InterfaceFor, a2);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = mlir::function_interface_impl::getArgAttrDict(0, 0, a2);
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  return mlir::DictionaryAttr::get(&v6, "coreml.default_value", 0x14uLL);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setVisibility(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    llvm::report_fatal_error("GraphOp has no concept of 'nested' visibility", 1);
  }

  v2 = *result + 16 * ((*(*result + 44) >> 23) & 1);
  if (a2 == 1)
  {
    Context = mlir::Attribute::getContext((*result + 24));
    result = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = result;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPriv(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 104) = this;
  }

  else
  {
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::setPrivate(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  v1 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  Context = mlir::Attribute::getContext((*this + 24));
  result = mlir::Builder::getUnitAttr(&Context, v2);
  *(v1 + 104) = result;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::verify(mlir::Operation **this)
{
  v167 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 47) && (InherentAttr = mlir::Operation::getInherentAttr(*this, "sym_visibility", 14), (v4 & 1) != 0))
  {
    if (InherentAttr)
    {
LABEL_4:
      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      if (Value)
      {
        LODWORD(v153) = 3;
        *(&v153 + 1) = "graphs do not allow the default symbol visibility attr";
        v154[0] = 54;
        if (v158 >= v159)
        {
          if (v157 > &v153 || v157 + 24 * v158 <= &v153)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v5 = v157 + 24 * v158;
        v6 = v153;
        *(v5 + 2) = v154[0];
        *v5 = v6;
        ++v158;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v166 != 1)
      {
        return Results;
      }

      if (v165 != &v166)
      {
        free(v165);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v164;
        v10 = __p;
        if (v164 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v164 = v8;
        operator delete(v10);
      }

      v11 = v161;
      if (!v161)
      {
        goto LABEL_93;
      }

      v12 = v162;
      v13 = v161;
      if (v162 == v161)
      {
        goto LABEL_92;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          MEMORY[0x259C63150](v14, 0x1000C8077774924);
        }
      }

      while (v12 != v11);
      goto LABEL_91;
    }
  }

  else if (mlir::DictionaryAttr::contains(v2 + 56, "sym_visibility", 0xEuLL))
  {
    goto LABEL_4;
  }

  v16 = *this;
  v17 = *(*this + 11);
  v18 = *this + 16 * ((v17 >> 23) & 1) + 64;
  if (*(v18 + 40))
  {
    if (*(v18 + 8))
    {
      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      if (Value)
      {
        LODWORD(v153) = 3;
        *(&v153 + 1) = "graphs marked 'externalize' must not be private";
        v154[0] = 47;
        if (v158 >= v159)
        {
          if (v157 > &v153 || v157 + 24 * v158 <= &v153)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v19 = v157 + 24 * v158;
        v20 = v153;
        *(v19 + 2) = v154[0];
        *v19 = v20;
        ++v158;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v166 != 1)
      {
        return Results;
      }

      if (v165 != &v166)
      {
        free(v165);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v164;
        v23 = __p;
        if (v164 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v164 = v21;
        operator delete(v23);
      }

      v11 = v161;
      if (!v161)
      {
        goto LABEL_93;
      }

      v24 = v162;
      v13 = v161;
      if (v162 == v161)
      {
        goto LABEL_92;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          MEMORY[0x259C63150](v25, 0x1000C8077774924);
        }
      }

      while (v24 != v11);
      goto LABEL_91;
    }

    v27 = (v17 >> 21) & 0x7F8;
    v28 = 32 * *(v16 + 10);
LABEL_66:
    v37 = (((v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + v28);
    if (*v37 == v37)
    {
      return 1;
    }

    v38 = v37[1];
    if (v38)
    {
      v39 = (v38 - 8);
    }

    else
    {
      v39 = 0;
    }

    if (!mlir::Block::mightHaveTerminator(v39) || *(*(mlir::Block::getTerminator(v39) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OutputOp,void>::id)
    {
      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      if (Value)
      {
        LODWORD(v153) = 3;
        *(&v153 + 1) = "expected the 'coreml.output' terminator";
        v154[0] = 39;
        if (v158 >= v159)
        {
          if (v157 > &v153 || v157 + 24 * v158 <= &v153)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v40 = v157 + 24 * v158;
        v41 = v153;
        *(v40 + 2) = v154[0];
        *v40 = v41;
        ++v158;
      }

      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v166 != 1)
      {
        return Results;
      }

      if (v165 != &v166)
      {
        free(v165);
      }

      v42 = __p;
      if (__p)
      {
        v43 = v164;
        v44 = __p;
        if (v164 != __p)
        {
          do
          {
            v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
          }

          while (v43 != v42);
          v44 = __p;
        }

        v164 = v42;
        operator delete(v44);
      }

      v11 = v161;
      if (!v161)
      {
        goto LABEL_93;
      }

      v45 = v162;
      v13 = v161;
      if (v162 == v161)
      {
        goto LABEL_92;
      }

      do
      {
        v47 = *--v45;
        v46 = v47;
        *v45 = 0;
        if (v47)
        {
          MEMORY[0x259C63150](v46, 0x1000C8077774924);
        }
      }

      while (v45 != v11);
      goto LABEL_91;
    }

    Terminator = mlir::Block::getTerminator(v39);
    v51 = Terminator;
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v52 = *(Terminator + 72);
      v53 = *(Terminator + 68);
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    *&v137 = v52;
    *(&v137 + 1) = v53;
    mlir::OperandRange::getTypes(&v137, &Value);
    *&v153 = v154;
    *(&v153 + 1) = 0x600000000;
    v54 = v157 - v156;
    if (v157 - v156 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v55 = 0;
    if (v157 != v156)
    {
      v56 = v153;
      v57 = (Value + 32 * v156 + 24);
      v58 = v157 - v156;
      do
      {
        v59 = *v57;
        v57 += 4;
        *v56++ = *(v59 + 8) & 0xFFFFFFFFFFFFFFF8;
        --v58;
      }

      while (v58);
      v55 = DWORD2(v153);
    }

    DWORD2(v153) = v55 + v54;
    Value = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 10);
    Value = mlir::TypeAttr::getValue(&Value);
    Results = mlir::FunctionType::getResults(&Value);
    v61 = v60;
    v150 = v152;
    v151 = 0x600000000;
    if (((8 * v60) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v62 = 0;
    v63 = v152;
    if (v60)
    {
      memcpy(v152, Results, 8 * v60);
      v62 = v151;
      v63 = v150;
    }

    v64 = (v62 + v61);
    LODWORD(v151) = v64;
    v65 = DWORD2(v153);
    if (DWORD2(v153) == v64)
    {
      if (v64)
      {
        v66 = v153;
        v67 = (v153 + 8 * DWORD2(v153));
        do
        {
          v136[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v66);
          v136[1] = v68;
          v69 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(*v63);
          v135[0] = v69;
          v135[1] = v70;
          if (v136[0])
          {
            v71 = v69 == 0;
          }

          else
          {
            v71 = 1;
          }

          if (!v71 && *(*v136[0] + 136) == *(*v69 + 136))
          {
            mlir::ShapedType::getShape(v136);
            v73 = v72;
            mlir::ShapedType::getShape(v135);
            if (v73 != v74)
            {
              goto LABEL_156;
            }

            Results = mlir::ShapedType::getShape(v136);
            v76 = v75;
            Shape = mlir::ShapedType::getShape(v135);
            if (v76)
            {
              v78 = 8 * v76;
              while (*Shape == 0x8000000000000000 || *Shape == *Results)
              {
                Results += 8;
                ++Shape;
                v78 -= 8;
                if (!v78)
                {
                  goto LABEL_118;
                }
              }

LABEL_156:
              LOWORD(v139) = 257;
              mlir::OpState::emitError(this, &v137, &Value);
              if (Value)
              {
                LODWORD(v137) = 3;
                *(&v137 + 1) = "expected ";
                *&v138 = 9;
                if (v158 >= v159)
                {
                  if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v98 = v157 + 24 * v158;
                v99 = v137;
                *(v98 + 2) = v138;
                *v98 = v99;
                ++v158;
                if (Value)
                {
                  mlir::DiagnosticArgument::DiagnosticArgument(&v137, v135[0]);
                  if (v158 >= v159)
                  {
                    if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v100 = v157 + 24 * v158;
                  v101 = v137;
                  *(v100 + 2) = v138;
                  *v100 = v101;
                  v102 = ++v158;
                  if (Value)
                  {
                    LODWORD(v137) = 3;
                    *(&v137 + 1) = ", got ";
                    *&v138 = 6;
                    if (v102 >= v159)
                    {
                      if (v157 > &v137 || v157 + 24 * v102 <= &v137)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v103 = v157 + 24 * v158;
                    v104 = v137;
                    *(v103 + 2) = v138;
                    *v103 = v104;
                    ++v158;
                    if (Value)
                    {
                      mlir::DiagnosticArgument::DiagnosticArgument(&v137, v136[0]);
                      if (v158 >= v159)
                      {
                        if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v105 = v157 + 24 * v158;
                      v106 = v137;
                      *(v105 + 2) = v138;
                      *v105 = v106;
                      ++v158;
                    }
                  }
                }
              }

              Results = &Value;
              mlir::InFlightDiagnostic::InFlightDiagnostic(&v137, &Value);
              if (Value)
              {
                mlir::InFlightDiagnostic::report(&Value);
              }

              if (v166 != 1)
              {
                goto LABEL_210;
              }

              if (v165 != &v166)
              {
                free(v165);
              }

              Results = __p;
              if (__p)
              {
                v107 = v164;
                v108 = __p;
                if (v164 != __p)
                {
                  do
                  {
                    v107 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v107 - 1);
                  }

                  while (v107 != Results);
                  v108 = __p;
                }

                v164 = Results;
                operator delete(v108);
              }

              v93 = v161;
              if (!v161)
              {
                goto LABEL_208;
              }

              v109 = v162;
              v95 = v161;
              if (v162 == v161)
              {
                goto LABEL_207;
              }

              Results = 0x1000C8077774924;
              do
              {
                v111 = *--v109;
                v110 = v111;
                *v109 = 0;
                if (v111)
                {
                  MEMORY[0x259C63150](v110, 0x1000C8077774924);
                }
              }

              while (v109 != v93);
LABEL_206:
              v95 = v161;
              goto LABEL_207;
            }
          }

          else if (*v66 != *v63)
          {
            LOWORD(v139) = 257;
            mlir::OpState::emitError(this, &v137, &Value);
            if (Value)
            {
              LODWORD(v137) = 3;
              *(&v137 + 1) = "expected type ";
              *&v138 = 14;
              if (v158 >= v159)
              {
                if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v112 = v157 + 24 * v158;
              v113 = v137;
              *(v112 + 2) = v138;
              *v112 = v113;
              ++v158;
              if (Value)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v137, *v63);
                if (v158 >= v159)
                {
                  if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v114 = v157 + 24 * v158;
                v115 = v137;
                *(v114 + 2) = v138;
                *v114 = v115;
                v116 = ++v158;
                if (Value)
                {
                  LODWORD(v137) = 3;
                  *(&v137 + 1) = ", got ";
                  *&v138 = 6;
                  if (v116 >= v159)
                  {
                    if (v157 > &v137 || v157 + 24 * v116 <= &v137)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v117 = v157 + 24 * v158;
                  v118 = v137;
                  *(v117 + 2) = v138;
                  *v117 = v118;
                  ++v158;
                  if (Value)
                  {
                    mlir::DiagnosticArgument::DiagnosticArgument(&v137, *v66);
                    if (v158 >= v159)
                    {
                      if (v157 > &v137 || v157 + 24 * v158 <= &v137)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v119 = v157 + 24 * v158;
                    v120 = v137;
                    *(v119 + 2) = v138;
                    *v119 = v120;
                    ++v158;
                  }
                }
              }
            }

            Results = &Value;
            mlir::InFlightDiagnostic::InFlightDiagnostic(&v137, &Value);
            if (Value)
            {
              mlir::InFlightDiagnostic::report(&Value);
            }

            if (v166 != 1)
            {
              goto LABEL_210;
            }

            if (v165 != &v166)
            {
              free(v165);
            }

            Results = __p;
            if (__p)
            {
              v121 = v164;
              v122 = __p;
              if (v164 != __p)
              {
                do
                {
                  v121 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v121 - 1);
                }

                while (v121 != Results);
                v122 = __p;
              }

              v164 = Results;
              operator delete(v122);
            }

            v93 = v161;
            if (!v161)
            {
              goto LABEL_208;
            }

            v123 = v162;
            v95 = v161;
            if (v162 == v161)
            {
              goto LABEL_207;
            }

            Results = 0x1000C8077774924;
            do
            {
              v125 = *--v123;
              v124 = v125;
              *v123 = 0;
              if (v125)
              {
                MEMORY[0x259C63150](v124, 0x1000C8077774924);
              }
            }

            while (v123 != v93);
            goto LABEL_206;
          }

LABEL_118:
          ++v66;
          ++v63;
        }

        while (v66 != v67);
      }

      v148 = 0u;
      v149 = 0u;
      v146 = 0u;
      v147 = 0u;
      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v137 = 0u;
    }

    else
    {
      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      if (Value)
      {
        LODWORD(v137) = 3;
        *(&v137 + 1) = "expected ";
        *&v138 = 9;
        if (v158 >= v159)
        {
          if (v157 > &v137 || v157 + 24 * v158 <= &v137)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v80 = v157 + 24 * v158;
        v81 = v137;
        *(v80 + 2) = v138;
        *v80 = v81;
        v82 = ++v158;
        if (Value)
        {
          LODWORD(v137) = 5;
          *(&v137 + 1) = v64;
          if (v82 >= v159)
          {
            if (v157 > &v137 || v157 + 24 * v82 <= &v137)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v83 = v157 + 24 * v158;
          v84 = v137;
          *(v83 + 2) = v138;
          *v83 = v84;
          v85 = ++v158;
          if (Value)
          {
            LODWORD(v137) = 3;
            *(&v137 + 1) = " results, got ";
            *&v138 = 14;
            if (v85 >= v159)
            {
              if (v157 > &v137 || v157 + 24 * v85 <= &v137)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v86 = v157 + 24 * v158;
            v87 = v137;
            *(v86 + 2) = v138;
            *v86 = v87;
            v88 = ++v158;
            if (Value)
            {
              LODWORD(v137) = 5;
              *(&v137 + 1) = v65;
              if (v88 >= v159)
              {
                if (v157 > &v137 || v157 + 24 * v88 <= &v137)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v89 = v157 + 24 * v158;
              v90 = v137;
              *(v89 + 2) = v138;
              *v89 = v90;
              ++v158;
            }
          }
        }
      }

      Results = &Value;
      mlir::InFlightDiagnostic::InFlightDiagnostic(&v137, &Value);
      if (Value)
      {
        mlir::InFlightDiagnostic::report(&Value);
      }

      if (v166 == 1)
      {
        if (v165 != &v166)
        {
          free(v165);
        }

        Results = __p;
        if (__p)
        {
          v91 = v164;
          v92 = __p;
          if (v164 != __p)
          {
            do
            {
              v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
            }

            while (v91 != Results);
            v92 = __p;
          }

          v164 = Results;
          operator delete(v92);
        }

        v93 = v161;
        if (v161)
        {
          v94 = v162;
          v95 = v161;
          if (v162 != v161)
          {
            Results = 0x1000C8077774924;
            do
            {
              v97 = *--v94;
              v96 = v97;
              *v94 = 0;
              if (v97)
              {
                MEMORY[0x259C63150](v96, 0x1000C8077774924);
              }
            }

            while (v94 != v93);
            goto LABEL_206;
          }

LABEL_207:
          v162 = v93;
          operator delete(v95);
        }

LABEL_208:
        if (v157 != v160)
        {
          free(v157);
        }
      }
    }

LABEL_210:
    v126 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v137);
    if (!v126)
    {
      Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v137);
    }

    if (v137)
    {
      mlir::InFlightDiagnostic::report(&v137);
    }

    if (BYTE8(v149) == 1)
    {
      mlir::Diagnostic::~Diagnostic((&v137 + 8));
      if (!v126)
      {
LABEL_216:
        v127 = v150;
        if (v150 == v152)
        {
          goto LABEL_218;
        }

        goto LABEL_217;
      }
    }

    else if (!v126)
    {
      goto LABEL_216;
    }

    ArgumentTypes = mlir::ODIE::Compiler::CoreML::GraphOp::getArgumentTypes(this);
    mlir::TypeRange::TypeRange(&Value, ArgumentTypes, v129);
    ResultTypes = mlir::ODIE::Compiler::CoreML::GraphOp::getResultTypes(this);
    mlir::TypeRange::TypeRange(&v137, ResultTypes, v131);
    if (mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(Value, v156, v137, *(&v137 + 1)))
    {
      Arguments = mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(this);
      mlir::ValueRange::ValueRange(&Value, Arguments, v133);
      if ((*(v51 + 46) & 0x80) != 0)
      {
        mlir::ValueRange::ValueRange(&v137, *(v51 + 72), *(v51 + 68));
        if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Value, v156, v137, *(&v137 + 1)))
        {
          goto LABEL_224;
        }
      }

      else
      {
        mlir::ValueRange::ValueRange(&v137, 0, 0);
        if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(Value, v156, v137, *(&v137 + 1)))
        {
LABEL_224:
          Results = 1;
          v127 = v150;
          if (v150 == v152)
          {
            goto LABEL_218;
          }

          goto LABEL_217;
        }
      }

      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&Value, "order of token outputs does not match order of handle inputs");
    }

    else
    {
      LOWORD(v139) = 257;
      mlir::OpState::emitError(this, &v137, &Value);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&Value, "number of handle inputs must match number of token outputs");
    }

    Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v134);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&Value);
    v127 = v150;
    if (v150 == v152)
    {
LABEL_218:
      v48 = v153;
      if (v153 == v154)
      {
        return Results;
      }

      goto LABEL_94;
    }

LABEL_217:
    free(v127);
    goto LABEL_218;
  }

  v27 = (v17 >> 21) & 0x7F8;
  v28 = 32 * *(v16 + 10);
  if (*(v28 + ((v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) != v28 + ((v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_66;
  }

  LOWORD(v139) = 257;
  mlir::OpState::emitError(this, &v137, &Value);
  if (Value)
  {
    LODWORD(v153) = 3;
    *(&v153 + 1) = "non-private graphs must have a body";
    v154[0] = 35;
    if (v158 >= v159)
    {
      if (v157 > &v153 || v157 + 24 * v158 <= &v153)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v29 = v157 + 24 * v158;
    v30 = v153;
    *(v29 + 2) = v154[0];
    *v29 = v30;
    ++v158;
  }

  Results = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&Value);
  if (Value)
  {
    mlir::InFlightDiagnostic::report(&Value);
  }

  if (v166 != 1)
  {
    return Results;
  }

  if (v165 != &v166)
  {
    free(v165);
  }

  v31 = __p;
  if (__p)
  {
    v32 = v164;
    v33 = __p;
    if (v164 != __p)
    {
      do
      {
        v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
      }

      while (v32 != v31);
      v33 = __p;
    }

    v164 = v31;
    operator delete(v33);
  }

  v11 = v161;
  if (v161)
  {
    v34 = v162;
    v13 = v161;
    if (v162 == v161)
    {
LABEL_92:
      v162 = v11;
      operator delete(v13);
      goto LABEL_93;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        MEMORY[0x259C63150](v35, 0x1000C8077774924);
      }
    }

    while (v34 != v11);
LABEL_91:
    v13 = v161;
    goto LABEL_92;
  }

LABEL_93:
  v48 = v157;
  if (v157 != v160)
  {
LABEL_94:
    free(v48);
  }

  return Results;
}

BOOL mlir::ODIE::Compiler::CoreML::verifyHandlesToTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v8 = 0;
    v10 = 0;
    if (!a4)
    {
      return v8 == v10;
    }

    goto LABEL_9;
  }

  v8 = 0;
  for (i = 0; i != a2; ++i)
  {
    if (*(*mlir::TypeRange::dereference_iterator(a1, i) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
    {
      ++v8;
    }
  }

  v10 = 0;
  if (a4)
  {
LABEL_9:
    v11 = 0;
    do
    {
      if (*(*mlir::TypeRange::dereference_iterator(a3, v11) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        ++v10;
      }

      ++v11;
    }

    while (a4 != v11);
  }

  return v8 == v10;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getArgumentTypes(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getInputs(&Value);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::getResultTypes(mlir::ODIE::Compiler::CoreML::GraphOp *this)
{
  Value = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  return mlir::FunctionType::getResults(&Value);
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = a1;
  *&v22 = a1;
  *(&v22 + 1) = a2;
  if (a2)
  {
    v7 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v7) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id)
      {
        break;
      }

      v7 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v7;
    }

    while (v7 != *(&v22 + 1));
  }

  v17 = v21;
  v18 = v22;
  v19 = v23;
  v21 = a3;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  if (a4)
  {
    v8 = 0;
    do
    {
      if (*(*(*(mlir::ValueRange::dereference_iterator(&v21, v8) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
      {
        break;
      }

      v8 = *(&v21 + 1) + 1;
      *(&v21 + 1) = v8;
    }

    while (v8 != *(&v22 + 1));
  }

  *&v20[24] = v22;
  *&v20[8] = v21;
  v21 = v17;
  v22 = v18;
  v9 = *(&v17 + 1);
  *&v20[40] = v23;
  *v20 = v19;
  v23 = *v20;
  v24 = *&v20[16];
  v25 = *&v20[32];
  if (*(&v17 + 1) != a2)
  {
    while (v24 != a4)
    {
      v11 = mlir::ValueRange::dereference_iterator(&v21, v9);
      v12 = mlir::ValueRange::dereference_iterator(&v23 + 1, v24);
      HandleForToken = mlir::ODIE::Compiler::getHandleForToken(v12);
      if (HandleForToken)
      {
        v14 = HandleForToken == v11;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        return 0;
      }

      do
      {
        v15 = *(&v21 + 1) + 1;
        *(&v21 + 1) = v15;
      }

      while (v15 != *(&v22 + 1) && *(*(*(mlir::ValueRange::dereference_iterator(&v21, v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id);
      do
      {
        v16 = v24 + 1;
        *&v24 = v16;
      }

      while (v16 != v25 && *(*(*(mlir::ValueRange::dereference_iterator(&v23 + 1, v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id);
      v9 = *(&v21 + 1);
      if (*(&v21 + 1) == a2)
      {
        return 1;
      }
    }
  }

  return 1;
}

uint64_t mlir::detail::FunctionOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::GraphOp>::getArguments(uint64_t a1)
{
  v1 = (((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40));
  if (*v1 == v1)
  {
    return 0;
  }

  v2 = v1[1];
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::verify(mlir::Operation **this)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v1 == v1)
  {
    return 1;
  }

  v3 = v1[1];
  v4 = v3 ? (v3 - 8) : 0;
  if (!mlir::Block::mightHaveTerminator(v4))
  {
    return 1;
  }

  v5 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v5)
  {
    v6 = (v5 - 8);
  }

  else
  {
    v6 = 0;
  }

  Terminator = mlir::Block::getTerminator(v6);
  v8 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  if (v8)
  {
    v9 = v8 - 8;
  }

  else
  {
    v9 = 0;
  }

  mlir::ValueRange::ValueRange(&v27, *(v9 + 48), (*(v9 + 56) - *(v9 + 48)) >> 3);
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    mlir::ValueRange::ValueRange(&v24, *(Terminator + 72), *(Terminator + 68));
    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v27, v28, v24, v25))
    {
      return 1;
    }
  }

  else
  {
    mlir::ValueRange::ValueRange(&v24, 0, 0);
    if (mlir::ODIE::Compiler::CoreML::verifyHandleToTokenOrdering(v27, v28, v24, v25))
    {
      return 1;
    }
  }

  v26 = 257;
  mlir::OpState::emitError(this, &v24, &v27);
  if (v27)
  {
    LODWORD(v22) = 3;
    *(&v22 + 1) = "order of token outputs does not match order of handle inputs";
    v23 = 60;
    if (v30 >= v31)
    {
      if (v29 > &v22 || v29 + 24 * v30 <= &v22)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v29 + 24 * v30;
    v12 = v22;
    *(v11 + 2) = v23;
    *v11 = v12;
    ++v30;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v27);
  v13 = result;
  if (v27)
  {
    mlir::InFlightDiagnostic::report(&v27);
    result = v13;
  }

  if (v38 == 1)
  {
    if (v37 != &v38)
    {
      free(v37);
      result = v13;
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
      result = v13;
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
      result = v13;
    }

    if (v29 != &v32)
    {
      free(v29);
      return v13;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::GraphOp::specialize(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::ParamScopeOpInterface,mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
    mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(v3, InterfaceFor, a2);
  }

  mlir::ODIE::Compiler::CoreML::specializeParamScopeOp(0, 0, a2);
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::readProperties(uint64_t a1, uint64_t **a2)
{
  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v7);
  v4 = a2[32];
  if (!v4)
  {
    operator new();
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, a2[32]) || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 1) || (mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v4 + 2) & 1) == 0 || !mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 3))
  {
    return 0;
  }

  if (v7[1])
  {
    if ((mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>(a1, v4 + 4) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    Context = mlir::Attribute::getContext(a2);
    v4[4] = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, 0, 0);
  }

  if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v4 + 5) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v4 + 6))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v4 + 7) & 1;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::GraphOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 24))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  (*(*a2 + 16))(a2, v3[10]);
  (*(*a2 + 24))(a2, v3[11]);
  (*(*a2 + 16))(a2, v3[12]);
  (*(*a2 + 24))(a2, v3[13]);
  (*(*a2 + 24))(a2, v3[14]);
  v4 = v3[15];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

void mlir::ODIE::Compiler::CoreML::CallOp::build(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, unint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  else
  {
    InterfaceFor = 0;
  }

  v13[0] = *&a3[4 * ((a3[11] >> 23) & 1) + 20];
  v13[0] = mlir::TypeAttr::getValue(v13);
  Results = mlir::FunctionType::getResults(v13);
  mlir::TypeRange::TypeRange(v13, Results, v12);
  mlir::ODIE::Compiler::CoreML::buildCallLikeOp<mlir::ODIE::Compiler::CoreML::CallOp>(a1, a2, a3, InterfaceFor, v13[0], v13[1], a4, a5);
}

void mlir::ODIE::Compiler::CoreML::buildCallLikeOp<mlir::ODIE::Compiler::CoreML::CallOp>(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *ParentOp, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v45[6] = *MEMORY[0x277D85DE8];
  v43 = v45;
  v44 = 0x600000000;
  v14 = *(a1 + 24);
  if (!v14 && (v15 = *(a1 + 16), v14 = *(v15 + 4), v14 == (v15 + 32)))
  {
    mlir::Block::getParentOp(v15);
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    if (InterfaceFor)
    {
      goto LABEL_8;
    }
  }

  else
  {
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v14);
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    if (InterfaceFor)
    {
      goto LABEL_8;
    }
  }

LABEL_15:
  ParentOp = 0;
  while (1)
  {
    v39 = ParentOp;
    v40 = InterfaceFor;
    if (!ParentOp)
    {
      break;
    }

    if (!mlir::SymbolOpInterface::getNameAttr(&v39))
    {
      break;
    }

    NameAttr = mlir::SymbolOpInterface::getNameAttr(&v39);
    mlir::StringAttr::getValue(&NameAttr);
    if (!v18)
    {
      break;
    }

    v19 = mlir::SymbolOpInterface::getNameAttr(&v39);
    v20 = mlir::SymbolRefAttr::get(v19);
    if (v44 >= HIDWORD(v44))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v43 + v44) = v20;
    LODWORD(v44) = v44 + 1;
    v21 = *(v39 + 2);
    if (v21)
    {
      ParentOp = mlir::Block::getParentOp(v21);
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      if (!InterfaceFor)
      {
        goto LABEL_15;
      }
    }

    else
    {
      ParentOp = 0;
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(0);
      if (!InterfaceFor)
      {
        goto LABEL_15;
      }
    }

LABEL_8:
    if (*(ParentOp + 47) && (InterfaceFor = mlir::Operation::getInherentAttr(ParentOp, "sym_name", 8), (v17 & 1) != 0))
    {
      if (!InterfaceFor)
      {
        goto LABEL_15;
      }

LABEL_13:
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    else
    {
      if (mlir::DictionaryAttr::contains(ParentOp + 56, "sym_name", 8uLL))
      {
        goto LABEL_13;
      }

      ParentOp = 0;
      InterfaceFor = 0;
    }
  }

  v22 = v43;
  v23 = v44;
  v39 = v41;
  v40 = 0x600000000;
  if (v44 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v44)
  {
    v24 = v43 + 8 * v44;
    v25 = v41;
    v26 = (v44 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v26 < 0x17 || v41 < v24 && v43 < &v41[v44])
    {
      goto LABEL_43;
    }

    v27 = (v26 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v28 = &v24[-8 * v27];
    v29 = &v42;
    v30 = (v24 - 16);
    v31 = v27;
    do
    {
      v32 = vextq_s8(v30[-1], v30[-1], 8uLL);
      v29[-1] = vextq_s8(*v30, *v30, 8uLL);
      *v29 = v32;
      v29 += 2;
      v30 -= 2;
      v31 -= 4;
    }

    while (v31);
    v25 = &v41[v27];
    v24 = v28;
    if (v26 + 1 != v27)
    {
LABEL_43:
      do
      {
        v33 = *(v24 - 1);
        v24 -= 8;
        *v25++ = v33;
      }

      while (v24 != v22);
    }

    v34 = v40;
    v35 = v39;
  }

  else
  {
    v34 = 0;
    v35 = v41;
  }

  LODWORD(v40) = v34 + v23;
  RootReference = mlir::SymbolRefAttr::getRootReference(v35);
  v37 = mlir::SymbolRefAttr::get(RootReference, v39 + 2, v40 - 1);
  mlir::ODIE::Compiler::CoreML::CallOp::build(v37, a2, v37, a5, a6, a7, a8);
  if (v39 != v41)
  {
    free(v39);
  }

  if (v43 != v45)
  {
    free(v43);
  }
}

void mlir::ODIE::Compiler::CoreML::CallOp::build(uint64_t a1, uint64_t a2, mlir::SymbolRefAttr *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3)
  {
    v11 = a1;
    v12 = a3;
    v13 = a2;
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
    a2 = v13;
    a3 = v12;
    v15 = InterfaceFor;
    a1 = v11;
  }

  else
  {
    v15 = 0;
  }

  mlir::ODIE::Compiler::CoreML::buildCallLikeOp<mlir::ODIE::Compiler::CoreML::CallOp>(a1, a2, a3, v15, a4, a5, a6, a7);
}

unint64_t *mlir::TypeRange::TypeRange<mlir::ResultRange>(unint64_t *a1, uint64_t *a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  NextResultAtOffset = *a2;
  v4 = a2[1];
  v5 = a2[3];
  if (v4)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(*a2, a2[1]);
  }

  mlir::ValueRange::ValueRange(v7, NextResultAtOffset, v5 - v4);
  mlir::TypeRange::TypeRange(a1, v7[0], v7[1]);
  return a1;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v30 = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v19[1] = v2;
  if (*(*mlir::TypedAttr::getType(v19) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    return 1;
  }

  v16 = 257;
  mlir::OpState::emitError(this, v15, v19);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    v18 = 45;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v3 = v20 + 24 * v21;
    v4 = v17;
    *(v3 + 2) = v18;
    *v3 = v4;
    ++v21;
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v27;
      v8 = __p;
      if (v27 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v27 = v6;
      operator delete(v8);
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x259C63150](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (v20 != &v23)
    {
      free(v20);
    }
  }

  return v5;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
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
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v47[0] = v5;
  if (v5)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v47);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v47[0] = v8;
  if (v7)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v47);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  v44 = v9;
  if (v9)
  {
    *&v45 = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
    ParentOp = *this;
    if (v45)
    {
      return mlir::ODIE::Compiler::CoreML::FuncOp::verifySufficientMatch(&v45);
    }

    do
    {
      ParentOp = *(ParentOp + 2);
      if (!ParentOp)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(ParentOp);
      if (!ParentOp)
      {
        break;
      }
    }

    while (*(*(ParentOp + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id);
    v11 = ParentOp;
    RootReference = mlir::SymbolRefAttr::getRootReference(&v44);
    v13 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, RootReference);
    if (!v13 || *(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      v43 = 259;
      mlir::OpState::emitOpError(this, v42, v47);
      v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v57 == 1)
      {
        if (v56 != &v57)
        {
          free(v56);
        }

        v15 = __p;
        if (__p)
        {
          v16 = v55;
          v17 = __p;
          if (v55 != __p)
          {
            do
            {
              v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
            }

            while (v16 != v15);
            v17 = __p;
          }

          v55 = v15;
          operator delete(v17);
        }

        v18 = v52;
        if (!v52)
        {
          goto LABEL_72;
        }

        v19 = v53;
        v20 = v52;
        if (v53 == v52)
        {
LABEL_71:
          v53 = v18;
          operator delete(v20);
LABEL_72:
          if (v48 != &v51)
          {
            free(v48);
          }

          return v14;
        }

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
LABEL_70:
        v20 = v52;
        goto LABEL_71;
      }

      return v14;
    }

    return 1;
  }

  v23 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  {
    v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses();
    v24 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    if (!v26)
    {
      goto LABEL_51;
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
  if (v27 != &v25[2 * v26] && *v27 == v24 && v27[1])
  {
    return 1;
  }

LABEL_51:
  v43 = 257;
  mlir::OpState::emitError(this, v42, v47);
  if (v47[0])
  {
    LODWORD(v45) = 3;
    *(&v45 + 1) = "expected a parameter attribute if the callee is not resolved";
    v46 = 60;
    if (v49 >= v50)
    {
      if (v48 > &v45 || v48 + 24 * v49 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v33 = v48 + 24 * v49;
    v34 = v45;
    *(v33 + 2) = v46;
    *v33 = v34;
    ++v49;
  }

  v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
  if (v47[0])
  {
    mlir::InFlightDiagnostic::report(v47);
  }

  if (v57 == 1)
  {
    if (v56 != &v57)
    {
      free(v56);
    }

    v35 = __p;
    if (__p)
    {
      v36 = v55;
      v37 = __p;
      if (v55 != __p)
      {
        do
        {
          v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
        }

        while (v36 != v35);
        v37 = __p;
      }

      v55 = v35;
      operator delete(v37);
    }

    v18 = v52;
    if (!v52)
    {
      goto LABEL_72;
    }

    v38 = v53;
    v20 = v52;
    if (v53 == v52)
    {
      goto LABEL_71;
    }

    do
    {
      v40 = *--v38;
      v39 = v40;
      *v38 = 0;
      if (v40)
      {
        MEMORY[0x259C63150](v39, 0x1000C8077774924);
      }
    }

    while (v38 != v18);
    goto LABEL_70;
  }

  return v14;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *a1, uint64_t a2)
{
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(a1);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *a1;
  if (a2)
  {
    while (1)
    {
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      ParentOp = mlir::Block::getParentOp(v11);
      v10 = ParentOp;
      if (!ParentOp || *(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        result = mlir::SymbolTableCollection::lookupSymbolIn(a2, ParentOp, v9);
        if (result)
        {
          goto LABEL_31;
        }

        return result;
      }
    }

    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, 0, v9);
    if (result)
    {
      goto LABEL_31;
    }
  }

  else
  {
    while (1)
    {
      v14 = *(v10 + 16);
      if (!v14)
      {
        break;
      }

      v15 = mlir::Block::getParentOp(v14);
      v10 = v15;
      if (!v15 || *(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_30;
      }
    }

    v10 = 0;
LABEL_30:
    result = mlir::SymbolTable::lookupSymbolIn(v10, v9);
LABEL_31:
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::parse(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  if ((*(*this + 160))(this, a2, a3))
  {
    v41[0] = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(this, v41, 0) && ((*(*this + 168))(this) & 1) != 0)
    {
      v5 = v41[0];
      if (v41[0])
      {
        v6 = *v41[0];
        {
          v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v8 = *(v6 + 8);
          v9 = *(v6 + 16);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v8 = *(v6 + 8);
          v9 = *(v6 + 16);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        v10 = v8;
        v11 = v9;
        do
        {
          v12 = v11 >> 1;
          v13 = &v10[2 * (v11 >> 1)];
          v15 = *v13;
          v14 = v13 + 2;
          v11 += ~(v11 >> 1);
          if (v15 < v7)
          {
            v10 = v14;
          }

          else
          {
            v11 = v12;
          }
        }

        while (v11);
        if (v10 != &v8[2 * v9] && *v10 == v7)
        {
          v17 = v10[1];
          goto LABEL_20;
        }
      }

LABEL_19:
      v17 = 0;
LABEL_20:
      v36 = v5;
      v37 = v17;
      goto LABEL_21;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v36) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v43 = v45;
  v44 = 0x100000000;
  v41[0] = v42;
  v41[1] = 0x400000000;
  v42[8] = 4;
  v35 = 0;
  if (((*(*this + 720))(this, &v43, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, v41) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::FunctionType>(this, &v35))
  {
    v38 = v40;
    v39 = 0x600000000;
    Inputs = mlir::FunctionType::getInputs(&v35);
    if (v44 && v19)
    {
      v20 = Inputs;
      v21 = v43;
      v22 = 8 * v19 - 8;
      v23 = 32 * v44 - 32;
      while (((*(*this + 728))(this, v21, *v20, &v38) & 1) != 0)
      {
        if (v23)
        {
          v21 += 32;
          ++v20;
          v24 = v22;
          v22 -= 8;
          v23 -= 32;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

      v16 = 0;
      v33 = v38;
      if (v38 == v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
LABEL_30:
      mlir::NamedAttribute::NamedAttribute(&v46, **(*(a2 + 1) + 96), v36);
      mlir::NamedAttrList::push_back(a2 + 112, v46, v47);
      mlir::ValueRange::ValueRange(&v46, v38, v39);
      mlir::OperationState::addOperands(a2, v46, v47);
      Results = mlir::FunctionType::getResults(&v35);
      v27 = 8 * v25;
      v28 = *(a2 + 18);
      if (v28 + ((8 * v25) >> 3) > *(a2 + 19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        memcpy((*(a2 + 8) + 8 * v28), Results, v27);
        LODWORD(v28) = *(a2 + 18);
      }

      *(a2 + 18) = v28 + (v27 >> 3);
      Attrs = mlir::NamedAttrList::getAttrs(v41);
      v31 = v29;
      *(a2 + 24) = 0;
      v32 = *(a2 + 30);
      if (v29 + v32 > *(a2 + 31))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v29)
      {
        memcpy((*(a2 + 14) + 16 * v32), Attrs, 16 * v29);
        LODWORD(v32) = *(a2 + 30);
      }

      *(a2 + 30) = v32 + v31;
      v16 = 1;
      v33 = v38;
      if (v38 == v40)
      {
        goto LABEL_41;
      }
    }

    free(v33);
  }

  else
  {
    v16 = 0;
  }

LABEL_41:
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v16;
}

BOOL mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v20 = 0;
  if (((*(*a1 + 440))(a1, &v20, a3) & 1) == 0)
  {
    return 0;
  }

  v7 = v20;
  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v7 = 0;
  }

  *a2 = v7;
  if (v7)
  {
    return 1;
  }

  v18 = "invalid kind of attribute specified";
  v19 = 259;
  (*(*a1 + 24))(v21, a1, v6, &v18);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v21);
  v9 = result;
  if (v21[0])
  {
    mlir::InFlightDiagnostic::report(v21);
    result = v9;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v9;
    }

    v10 = __p;
    if (__p)
    {
      v11 = v27;
      v12 = __p;
      if (v27 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v27 = v10;
      operator delete(v12);
      result = v9;
    }

    v13 = v24;
    if (v24)
    {
      v14 = v25;
      v15 = v24;
      if (v25 != v24)
      {
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
        v15 = v24;
      }

      v25 = v13;
      operator delete(v15);
      result = v9;
    }

    if (v22 != &v23)
    {
      free(v22);
      return v9;
    }
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  ParentOp = a3;
  v48[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  Value = *(ParentOp + 16 * ((*(ParentOp + 44) >> 23) & 1) + 80);
  Value = mlir::TypeAttr::getValue(&Value);
  Results = mlir::FunctionType::getResults(&Value);
  mlir::TypeRange::TypeRange(v41, Results, v11);
  v12 = v41[0];
  v13 = v41[1];
  Value = v48;
  v47 = 0x600000000;
  v14 = *(a1 + 24);
  if (v14)
  {
LABEL_6:
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v14);
    InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    if (InterfaceFor)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  v15 = *(a1 + 16);
  if (*(v15 + 32) != v15 + 32)
  {
    v14 = *(v15 + 32);
    goto LABEL_6;
  }

  ValuePtr = mlir::Block::getParentOp(*(a1 + 16));
  InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
  if (InterfaceFor)
  {
    goto LABEL_11;
  }

LABEL_18:
  v19 = 0;
  while (1)
  {
    v42 = v19;
    v43 = InterfaceFor;
    if (!v19)
    {
      break;
    }

    if (!mlir::SymbolOpInterface::getNameAttr(&v42))
    {
      break;
    }

    NameAttr = mlir::SymbolOpInterface::getNameAttr(&v42);
    mlir::StringAttr::getValue(&NameAttr);
    if (!v20 || ParentOp == ValuePtr || (mlir::Operation::isProperAncestor(ParentOp, ValuePtr) & 1) != 0)
    {
      break;
    }

    v21 = mlir::SymbolOpInterface::getNameAttr(&v42);
    v22 = mlir::SymbolRefAttr::get(v21);
    if (v47 >= HIDWORD(v47))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(Value + v47) = v22;
    LODWORD(v47) = v47 + 1;
    v23 = *(v42 + 2);
    if (v23)
    {
      ParentOp = mlir::Block::getParentOp(v23);
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      if (!InterfaceFor)
      {
        goto LABEL_18;
      }
    }

    else
    {
      ParentOp = 0;
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(0);
      if (!InterfaceFor)
      {
        goto LABEL_18;
      }
    }

LABEL_11:
    if (*(ParentOp + 47) && (InterfaceFor = mlir::Operation::getInherentAttr(ParentOp, "sym_name", 8), (v18 & 1) != 0))
    {
      if (!InterfaceFor)
      {
        goto LABEL_18;
      }

LABEL_16:
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      v19 = ParentOp;
    }

    else
    {
      if (mlir::DictionaryAttr::contains(ParentOp + 56, "sym_name", 8uLL))
      {
        goto LABEL_16;
      }

      v19 = 0;
      InterfaceFor = 0;
    }
  }

  v24 = Value;
  v25 = v47;
  v42 = v44;
  v43 = 0x600000000;
  if (v47 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v47)
  {
    v26 = Value + 8 * v47;
    v27 = v44;
    v28 = (v47 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v28 < 0x17 || v44 < v26 && Value < &v44[v47])
    {
      goto LABEL_48;
    }

    v29 = (v28 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v30 = &v26[-8 * v29];
    v31 = &v45;
    v32 = (v26 - 16);
    v33 = v29;
    do
    {
      v34 = vextq_s8(v32[-1], v32[-1], 8uLL);
      v31[-1] = vextq_s8(*v32, *v32, 8uLL);
      *v31 = v34;
      v31 += 2;
      v32 -= 2;
      v33 -= 4;
    }

    while (v33);
    v27 = &v44[v29];
    v26 = v30;
    if (v28 + 1 != v29)
    {
LABEL_48:
      do
      {
        v35 = *(v26 - 1);
        v26 -= 8;
        *v27++ = v35;
      }

      while (v26 != v24);
    }

    v36 = v43;
    v37 = v42;
  }

  else
  {
    v36 = 0;
    v37 = v44;
  }

  LODWORD(v43) = v36 + v25;
  RootReference = mlir::SymbolRefAttr::getRootReference(v37);
  v39 = mlir::SymbolRefAttr::get(RootReference, v42 + 2, v43 - 1);
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(v39, a2, v39, v12, v13, a4, a5);
  if (v42 != v44)
  {
    free(v42);
  }

  if (Value != v48)
  {
    free(Value);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v36 = 0;
  v37 = 0;
  if ((*(*this + 160))(this, a2, a3))
  {
    v41[0] = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(this, v41, 0) && ((*(*this + 168))(this) & 1) != 0)
    {
      v5 = v41[0];
      if (v41[0])
      {
        v6 = *v41[0];
        {
          v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v8 = *(v6 + 8);
          v9 = *(v6 + 16);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        else
        {
          mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
          v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
          v8 = *(v6 + 8);
          v9 = *(v6 + 16);
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        v10 = v8;
        v11 = v9;
        do
        {
          v12 = v11 >> 1;
          v13 = &v10[2 * (v11 >> 1)];
          v15 = *v13;
          v14 = v13 + 2;
          v11 += ~(v11 >> 1);
          if (v15 < v7)
          {
            v10 = v14;
          }

          else
          {
            v11 = v12;
          }
        }

        while (v11);
        if (v10 != &v8[2 * v9] && *v10 == v7)
        {
          v17 = v10[1];
          goto LABEL_20;
        }
      }

LABEL_19:
      v17 = 0;
LABEL_20:
      v36 = v5;
      v37 = v17;
      goto LABEL_21;
    }

    return 0;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(this, &v36) & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v43 = v45;
  v44 = 0x100000000;
  v41[0] = v42;
  v41[1] = 0x400000000;
  v42[8] = 4;
  v35 = 0;
  if (((*(*this + 720))(this, &v43, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 488))(this, v41) & 1) != 0 && mlir::AsmParser::parseColonType<mlir::FunctionType>(this, &v35))
  {
    v38 = v40;
    v39 = 0x600000000;
    Inputs = mlir::FunctionType::getInputs(&v35);
    if (v44 && v19)
    {
      v20 = Inputs;
      v21 = v43;
      v22 = 8 * v19 - 8;
      v23 = 32 * v44 - 32;
      while (((*(*this + 728))(this, v21, *v20, &v38) & 1) != 0)
      {
        if (v23)
        {
          v21 += 32;
          ++v20;
          v24 = v22;
          v22 -= 8;
          v23 -= 32;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_30;
      }

      v16 = 0;
      v33 = v38;
      if (v38 == v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
LABEL_30:
      mlir::NamedAttribute::NamedAttribute(&v46, **(*(a2 + 1) + 96), v36);
      mlir::NamedAttrList::push_back(a2 + 112, v46, v47);
      mlir::ValueRange::ValueRange(&v46, v38, v39);
      mlir::OperationState::addOperands(a2, v46, v47);
      Results = mlir::FunctionType::getResults(&v35);
      v27 = 8 * v25;
      v28 = *(a2 + 18);
      if (v28 + ((8 * v25) >> 3) > *(a2 + 19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v25)
      {
        memcpy((*(a2 + 8) + 8 * v28), Results, v27);
        LODWORD(v28) = *(a2 + 18);
      }

      *(a2 + 18) = v28 + (v27 >> 3);
      Attrs = mlir::NamedAttrList::getAttrs(v41);
      v31 = v29;
      *(a2 + 24) = 0;
      v32 = *(a2 + 30);
      if (v29 + v32 > *(a2 + 31))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v29)
      {
        memcpy((*(a2 + 14) + 16 * v32), Attrs, 16 * v29);
        LODWORD(v32) = *(a2 + 30);
      }

      *(a2 + 30) = v32 + v31;
      v16 = 1;
      v33 = v38;
      if (v38 == v40)
      {
        goto LABEL_41;
      }
    }

    free(v33);
  }

  else
  {
    v16 = 0;
  }

LABEL_41:
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  return v16;
}

BOOL mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  mlir::ODIE::Compiler::CoreML::CoreMLDialectVersion::get(a1, v19);
  if (v19[1] >= 3uLL)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, v3);
  }

  v18 = 0;
  if ((mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v18);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *v5;
  {
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = v5;
    mlir::ODIE::Compiler::CoreML::CoreMLDialect::materializeConstant();
    v5 = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 != &v8[2 * v9] && *v10 == v7)
  {
    v17 = v10[1];
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
LABEL_21:
  *v3 = v5;
  v3[1] = v17;
  return 1;
}

void *mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*result + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v6);
  }

  v3 = *(*result + 136);
  v4 = v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v3 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v5 = result;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v4)
  {
    result = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v6);
  }

  if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(Operation **a1, uint64_t a2)
{
  ParentOp = a2;
  v34[6] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x600000000;
  InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (InterfaceFor)
  {
    goto LABEL_2;
  }

LABEL_9:
  v6 = 0;
  while (1)
  {
    v28 = v6;
    v29 = InterfaceFor;
    if (!v6)
    {
      break;
    }

    if (!mlir::SymbolOpInterface::getNameAttr(&v28))
    {
      break;
    }

    NameAttr = mlir::SymbolOpInterface::getNameAttr(&v28);
    mlir::StringAttr::getValue(&NameAttr);
    if (!v7 || ParentOp == *a1 || (mlir::Operation::isProperAncestor(ParentOp, *a1) & 1) != 0)
    {
      break;
    }

    v8 = mlir::SymbolOpInterface::getNameAttr(&v28);
    v9 = mlir::SymbolRefAttr::get(v8);
    if (v33 >= HIDWORD(v33))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v32 + v33) = v9;
    LODWORD(v33) = v33 + 1;
    v10 = *(v28 + 2);
    if (v10)
    {
      ParentOp = mlir::Block::getParentOp(v10);
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      if (!InterfaceFor)
      {
        goto LABEL_9;
      }
    }

    else
    {
      ParentOp = 0;
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(0);
      if (!InterfaceFor)
      {
        goto LABEL_9;
      }
    }

LABEL_2:
    if (*(ParentOp + 47) && (InterfaceFor = mlir::Operation::getInherentAttr(ParentOp, "sym_name", 8), (v5 & 1) != 0))
    {
      if (!InterfaceFor)
      {
        goto LABEL_9;
      }

LABEL_7:
      InterfaceFor = mlir::OpInterface<mlir::SymbolOpInterface,mlir::detail::SymbolOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
      v6 = ParentOp;
    }

    else
    {
      if (mlir::DictionaryAttr::contains(ParentOp + 56, "sym_name", 8uLL))
      {
        goto LABEL_7;
      }

      v6 = 0;
      InterfaceFor = 0;
    }
  }

  v11 = v32;
  v12 = v33;
  v28 = v30;
  v29 = 0x600000000;
  if (v33 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v33)
  {
    v13 = v32 + 8 * v33;
    v14 = v30;
    v15 = (v33 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v15 < 0x17 || v30 < v13 && v32 < &v30[v33])
    {
      goto LABEL_41;
    }

    v16 = (v15 + 1) & 0x3FFFFFFFFFFFFFFCLL;
    v17 = &v13[-8 * v16];
    v18 = &v31;
    v19 = (v13 - 16);
    v20 = v16;
    do
    {
      v21 = vextq_s8(v19[-1], v19[-1], 8uLL);
      v18[-1] = vextq_s8(*v19, *v19, 8uLL);
      *v18 = v21;
      v18 += 2;
      v19 -= 2;
      v20 -= 4;
    }

    while (v20);
    v14 = &v30[v16];
    v13 = v17;
    if (v15 + 1 != v16)
    {
LABEL_41:
      do
      {
        v22 = *(v13 - 1);
        v13 -= 8;
        *v14++ = v22;
      }

      while (v13 != v11);
    }

    v23 = v29;
    v24 = v28;
  }

  else
  {
    v23 = 0;
    v24 = v30;
  }

  LODWORD(v29) = v23 + v12;
  RootReference = mlir::SymbolRefAttr::getRootReference(v24);
  v26 = mlir::SymbolRefAttr::get(RootReference, v28 + 2, v29 - 1);
  mlir::ODIE::Compiler::CoreML::CallOp::setCalleeFromCallable(a1, v26 & 0xFFFFFFFFFFFFFFFBLL);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v32 != v34)
  {
    free(v32);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v16 = v5;
  if (v5)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(&v16);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  if (v7)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(&v16);
  }

  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v9 = CalleeAttr;
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;
  if (!v9)
  {
    return 0;
  }

  v10 = *this;
  while (1)
  {
    v11 = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v10);
    if (!v11)
    {
      break;
    }

    v10 = v11;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v11, v9);
    if (result)
    {
      return result;
    }
  }

  v13 = *this;
  RootReference = mlir::SymbolRefAttr::getRootReference(&v16);
  v15 = mlir::SymbolRefAttr::get(RootReference);
  do
  {
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(v13);
    if (!result)
    {
      break;
    }

    v13 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, result, v15);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v5 = CalleeAttr;
  }

  else
  {
    v5 = 0;
  }

  v42[0] = v5;
  if (v5)
  {
    CalleeAttr = mlir::ODIE::Compiler::CoreML::ParamBindAttr::getRef(v42);
  }

  v6 = *(*CalleeAttr + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v8 = CalleeAttr;
  }

  else
  {
    v8 = 0;
  }

  v42[0] = v8;
  if (v7)
  {
    if (*(*mlir::ODIE::Compiler::CoreML::ParamConstantAttr::getValue(v42) + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      goto LABEL_25;
    }
  }

  else if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    goto LABEL_25;
  }

  v9 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  {
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses();
    v10 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id;
    v11 = *(v9 + 8);
    v12 = *(v9 + 16);
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 != &v11[2 * v12] && *v13 == v10 && v13[1])
  {
    return 1;
  }

LABEL_25:
  v19 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (v19)
  {
    v20 = *(*(v19 + 48) + 16);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      v21 = v19;
    }

    else
    {
      v21 = 0;
    }

    v42[0] = v21;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
    {
      return mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(v42);
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      return 1;
    }
  }

  v38 = "could not resolve the callee ";
  v39 = 259;
  mlir::OpState::emitOpError(this, &v38, v42);
  v22 = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (v42[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v40, v22);
    if (v44 >= v45)
    {
      if (v43 > &v40 || v43 + 24 * v44 <= &v40)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v43 + 24 * v44;
    v24 = v40;
    *(v23 + 2) = v41;
    *v23 = v24;
    v25 = ++v44;
    if (v42[0])
    {
      LODWORD(v40) = 3;
      v41 = 41;
      if (v25 >= v45)
      {
        if (v43 > &v40 || v43 + 24 * v25 <= &v40)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v43 + 24 * v44;
      v27 = v40;
      *(v26 + 2) = v41;
      *v26 = v27;
      ++v44;
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
  if (v42[0])
  {
    mlir::InFlightDiagnostic::report(v42);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v50;
      v31 = __p;
      if (v50 != __p)
      {
        do
        {
          v30 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v50 = v29;
      operator delete(v31);
    }

    v32 = v47;
    if (v47)
    {
      v33 = v48;
      v34 = v47;
      if (v48 != v47)
      {
        do
        {
          v36 = *--v33;
          v35 = v36;
          *v33 = 0;
          if (v36)
          {
            MEMORY[0x259C63150](v35, 0x1000C8077774924);
          }
        }

        while (v33 != v32);
        v34 = v47;
      }

      v48 = v32;
      operator delete(v34);
    }

    if (v43 != &v46)
    {
      free(v43);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::canonicalize(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v28[0] = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  Value = mlir::StringAttr::getValue(v28);
  mlir::OperationName::OperationName(&v26, Value, v5, a2[1]);
  if (*(v26 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v22 = *(a1 + 24);
    DialectNamespace = mlir::OperationName::getDialectNamespace(&v26);
    v41 = 1283;
    AttrDictionary = "dialect ";
    v39 = DialectNamespace;
    v40 = v24;
    v28[0] = &AttrDictionary;
    v28[2] = " is not registered";
    v29 = 770;
    v27[0] = v28;
    v25 = a2[2];
    if (v25 && mlir::RewriterBase::Listener::classof(v25))
    {
      (*(*v25 + 88))(v25, v22, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location>(mlir::Location &&,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, v27);
    }

    return 0;
  }

  else
  {
    mlir::OperationState::OperationState(v28, *(a1 + 24), v26);
    AttrDictionary = mlir::Operation::getAttrDictionary(a1);
    v7 = mlir::DictionaryAttr::getValue(&AttrDictionary);
    v8 = v6;
    v36 = 0;
    v9 = v34;
    if (v6 + v34 > v35)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v6)
    {
      memcpy((v33 + 16 * v34), v7, 16 * v6);
      v9 = v34;
    }

    v34 = v9 + v8;
    if ((*(a1 + 46) & 0x80) != 0)
    {
      v10 = *(a1 + 68);
      v11 = *(a1 + 72);
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    mlir::ValueRange::ValueRange(&AttrDictionary, v11, v10);
    mlir::OperationState::addOperands(v28, AttrDictionary, v38);
    v12 = *(a1 + 36);
    v13 = a1 - 16;
    if (!v12)
    {
      v13 = 0;
    }

    v27[0] = v13;
    v27[1] = v12;
    mlir::ResultRange::getTypes(v27, &AttrDictionary);
    v14 = AttrDictionary;
    v15 = v38;
    v16 = v40;
    v17 = v40 - v38;
    v18 = v31;
    if (v40 - v38 + v31 > v32)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v40 != v38)
    {
      v19 = (v30 + 8 * v31);
      do
      {
        *v19++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, v15++) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (v16 != v15);
      v18 = v31;
    }

    v31 = v18 + v17;
    v20 = mlir::OpBuilder::create((a2 + 1), v28);
    (*(*a2 + 8))(a2, a1, v20);
    mlir::OperationState::~OperationState(v28);
    return 1;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  mlir::NamedAttribute::NamedAttribute(v8, **(*(a2 + 8) + 96), a3);
  mlir::NamedAttrList::push_back(a2 + 112, v8[0], v8[1]);
  result = mlir::TypedAttr::getType(v7);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v6) = result;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x277D85DE8];
  if (a5)
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected no operands");
  }

  else
  {
    if (a7)
    {
      v19 = *a7;
    }

    else
    {
      v19 = 0uLL;
    }

    v20 = a6;
    v21[0] = 0;
    v22 = 0;
    v23 = v19;
    v24 = a9;
    v25 = a10;
    if (a6)
    {
      v14 = a4;
      Context = mlir::Attribute::getContext(&v20);
      if (v22 == 1)
      {
        v22 = 0;
      }

      mlir::OperationName::OperationName(v21, "coreml.constant", 15, Context);
      v22 = 1;
      a4 = v14;
    }

    v26 = a4;
    v27 = 0;
    *&v19 = mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::getCalleeAttr(&v20);
    *(&v19 + 1) = v16;
    if (v19)
    {
      Type = mlir::TypedAttr::getType(&v19);
      v18 = *(a11 + 8);
      if (v18 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v18) = Type;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "no value attribute provided");
    }
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x277D85DE8];
  v62 = a6;
  v63[0] = 0;
  v64 = 0;
  v65 = a9;
  v66 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v62);
    if (v64 == 1)
    {
      v64 = 0;
    }

    mlir::OperationName::OperationName(v63, "coreml.concat", 13, Context);
    v64 = 1;
  }

  v67 = a4;
  v68 = a5;
  v55 = 0;
  __dst[0] = a4;
  __dst[1] = 0;
  v57.n128_u64[0] = &v55;
  __dst[0] = mlir::ValueRange::dereference_iterator(__dst, 0);
  DefiningOp = mlir::Value::getDefiningOp(__dst);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v57, DefiningOp))
  {
    return 0;
  }

  if (mlir::DenseElementsAttr::getNumElements(&v55) != 1)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected a single dimension along which to concat");
  }

  mlir::DenseElementsAttr::tryGetValues<mlir::IntegerAttr,void>(&v55, __dst);
  v54 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(__dst);
  mlir::IntegerAttr::getValue(&v54, __dst);
  if (LODWORD(__dst[1]) > 0x40)
  {
    v17 = *__dst[0];
    MEMORY[0x259C63150]();
  }

  else if (LODWORD(__dst[1]))
  {
    v17 = __dst[0] << -LOBYTE(__dst[1]) >> -LOBYTE(__dst[1]);
  }

  else
  {
    v17 = 0;
  }

  __dst[0] = v61;
  __dst[1] = 0x600000000;
  v20 = v68;
  v57.n128_u64[0] = v67;
  v57.n128_u64[1] = 1;
  v57.n128_u64[0] = mlir::ValueRange::offset_base(&v57, 1);
  v57.n128_u64[1] = v20 - v57.n128_u64[1];
  v21 = mlir::ValueRange::dereference_iterator(&v57, 0);
  v53[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v21 + 8) & 0xFFFFFFFFFFFFFFF8));
  v53[1] = v22;
  if (!v53[0])
  {
    v18 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected a ShapedType for all inputs to concat");
    v25 = __dst[0];
    if (__dst[0] != v61)
    {
      goto LABEL_85;
    }

    return v18;
  }

  Shape = mlir::ShapedType::getShape(v53);
  v18 = v23;
  v57.n128_u64[0] = &v58;
  v57.n128_u64[1] = 0x600000000;
  if (v23 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v23)
  {
    memcpy(&v58, Shape, 8 * v23);
    v26 = v57.n128_u64[0];
    v27 = v57.n128_u32[2] + v18;
    v57.n128_u32[2] += v18;
    if (v57.n128_u64[0] != &v58)
    {
      if (__dst[0] != v61)
      {
        free(__dst[0]);
        v26 = v57.n128_u64[0];
        v27 = v57.n128_u32[2];
      }

      __dst[0] = v26;
      __dst[1] = __PAIR64__(v57.n128_u32[3], v27);
      v57.n128_u64[0] = &v58;
      v57.n128_u32[3] = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v27 = 0;
    v57.n128_u32[2] = 0;
    v26 = &v58;
  }

  v18 = LODWORD(__dst[1]);
  if (LODWORD(__dst[1]) >= v27)
  {
    if (v27)
    {
      memmove(__dst[0], v26, 8 * v27);
    }
  }

  else
  {
    if (HIDWORD(__dst[1]) < v27)
    {
      LODWORD(__dst[1]) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (LODWORD(__dst[1]))
    {
      memmove(__dst[0], v26, 8 * LODWORD(__dst[1]));
    }

    else
    {
      v18 = 0;
    }

    if (v57.n128_u32[2] != v18)
    {
      memcpy(__dst[0] + 8 * v18, (v57.n128_u64[0] + 8 * v18), 8 * (v57.n128_u32[2] - v18));
    }
  }

  LODWORD(__dst[1]) = v27;
LABEL_38:
  v57.n128_u32[2] = 0;
  if (v57.n128_u64[0] != &v58)
  {
    free(v57.n128_u64[0]);
    v27 = __dst[1];
  }

  if (!v27)
  {
    if (!HIDWORD(__dst[1]))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *__dst[0] = 1;
    ++LODWORD(__dst[1]);
  }

  if (v17 < 0)
  {
    mlir::ShapedType::getShape(v53);
    v17 += v28;
  }

  ElementType = mlir::ShapedType::getElementType(v53);
  v30 = v68;
  v57.n128_u64[0] = v67;
  v57.n128_u64[1] = 1;
  *&v56 = mlir::ValueRange::offset_base(&v57, 1);
  *(&v56 + 1) = v30 - v57.n128_u64[1];
  mlir::ValueRange::getTypes(&v56, &v57);
  v31 = v59;
  v32 = v57.n128_u64[1] + 1;
  v56 = *&v57 + __PAIR128__(1, 0);
  if (v57.n128_u64[1] + 1 == v59)
  {
LABEL_46:
    v33 = mlir::RankedTensorType::get(__dst[0], LODWORD(__dst[1]), ElementType, 0);
    v34 = *(a11 + 8);
    if (v34 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v34) = v33;
    ++*(a11 + 8);
    v18 = 1;
    v25 = __dst[0];
    if (__dst[0] != v61)
    {
      goto LABEL_85;
    }

    return v18;
  }

LABEL_49:
  v35 = mlir::ValueRange::dereference_iterator(&v56, v32);
  v52[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v35 + 8) & 0xFFFFFFFFFFFFFFF8));
  v52[1] = v36;
  if (!v52[0])
  {
    v51 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected a ShapedType for all inputs to concat");
    goto LABEL_83;
  }

  if (mlir::ShapedType::getElementType(v52) != ElementType)
  {
    v51 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected the same element type for all inputs to concat");
    goto LABEL_83;
  }

  if (mlir::ShapedType::hasRank(v52) && (mlir::ShapedType::getShape(v52), v37 == LODWORD(__dst[1])) || (mlir::ShapedType::getShape(v52), !v38) && LODWORD(__dst[1]) == 1)
  {
    v40 = mlir::ShapedType::getShape(v52);
    v41 = v39;
    v57.n128_u64[0] = &v58;
    v57.n128_u64[1] = 0x600000000;
    if (v39 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v39)
    {
      memcpy(&v58, v40, 8 * v39);
      v57.n128_u32[2] += v41;
      if (v57.n128_u32[2])
      {
        v42 = LODWORD(__dst[1]);
        if (!LODWORD(__dst[1]))
        {
          goto LABEL_72;
        }

LABEL_64:
        v43 = 0;
        v44 = __dst[0];
        v45 = 1;
        v46 = v57.n128_u64[0];
        while (1)
        {
          if (v17 == v43)
          {
            v47 = v44[v17];
            if (v47 != 0x8000000000000000)
            {
              v48 = *(v46 + 8 * v17);
              v49 = v48 + v47;
              if (v48 == 0x8000000000000000)
              {
                v49 = *(v46 + 8 * v17);
              }

              v44[v17] = v49;
            }
          }

          else if (v44[v43] != *(v46 + 8 * v43))
          {
            v18 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected all input shapes to match along all dimensions other than the concat dimension");
            v50 = v57.n128_u64[0];
            if (v57.n128_u64[0] != &v58)
            {
              goto LABEL_73;
            }

LABEL_74:
            if (v45)
            {
              goto LABEL_84;
            }

            v32 = *(&v56 + 1) + 1;
            *(&v56 + 1) = v32;
            if (v32 == v31)
            {
              goto LABEL_46;
            }

            goto LABEL_49;
          }

          v45 = ++v43 < v42;
          if (v42 == v43)
          {
            goto LABEL_72;
          }
        }
      }
    }

    else
    {
      v57.n128_u32[2] = 0;
    }

    if (!v57.n128_u32[3])
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *v57.n128_u64[0] = 1;
    ++v57.n128_u32[2];
    v42 = LODWORD(__dst[1]);
    if (!LODWORD(__dst[1]))
    {
LABEL_72:
      v45 = 0;
      v50 = v57.n128_u64[0];
      if (v57.n128_u64[0] == &v58)
      {
        goto LABEL_74;
      }

LABEL_73:
      free(v50);
      goto LABEL_74;
    }

    goto LABEL_64;
  }

  v51 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "expected all input tensors to have the same rank");
LABEL_83:
  v18 = v51;
LABEL_84:
  v25 = __dst[0];
  if (__dst[0] != v61)
  {
LABEL_85:
    free(v25);
  }

  return v18;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v46 = *MEMORY[0x277D85DE8];
  v39 = a6;
  v40[0] = 0;
  v41 = 0;
  v42 = a9;
  v43 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v39);
    if (v41 == 1)
    {
      v41 = 0;
    }

    mlir::OperationName::OperationName(v40, "coreml.concat", 13, Context);
    v41 = 1;
  }

  v44 = a4;
  v45 = a5;
  v36 = a4;
  v37 = 0;
  v36 = mlir::ValueRange::dereference_iterator(&v36, 0);
  DefiningOp = mlir::Value::getDefiningOp(&v36);
  if (!DefiningOp)
  {
    return 1;
  }

  {
    v32 = DefiningOp;
    mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes();
    DefiningOp = v32;
  }

  v18 = (*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
  if (!v18)
  {
    return 1;
  }

  v36 = v38;
  v37 = 0x600000000;
  if (!mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v18, a2, a3, a4, a5, a6, v19, v20, a9, a10, &v36))
  {
    result = 0;
    v29 = v36;
    if (v36 == v38)
    {
      return result;
    }

    goto LABEL_19;
  }

  mlir::TypeRange::TypeRange(&v34, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v33, v36, v37);
  v21 = v35;
  if (v35 != v33[1])
  {
    goto LABEL_21;
  }

  if (v35)
  {
    v22 = 0;
    v23 = v34;
    v24 = v33[0];
    while (1)
    {
      v25 = mlir::TypeRange::dereference_iterator(v23, v22);
      if (v25 != mlir::TypeRange::dereference_iterator(v24, v22))
      {
        break;
      }

      if (v21 == ++v22)
      {
        goto LABEL_15;
      }
    }

LABEL_21:
    result = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "inferred return types did not match actual return types");
    v29 = v36;
    if (v36 == v38)
    {
      return result;
    }

LABEL_19:
    v30 = result;
    free(v29);
    return v30;
  }

LABEL_15:
  v26 = v36;
  v27 = v37;
  *(a11 + 8) = 0;
  if (v27 > *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v27)
  {
    memcpy(*a11, v26, 8 * v27);
    v31 = *(a11 + 8);
  }

  else
  {
    v31 = 0;
  }

  *(a11 + 8) = v31 + v27;
  result = 1;
  v29 = v36;
  if (v36 != v38)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::inferReturnTypeComponents(int a1, int a2, int a3, mlir::ValueShapeRange *this, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = mlir::ValueShapeRange::getShape(this, 0);
  v14 = v16;
  v15 = 0x300000000;
  v17 = 0uLL;
  hasRank = 0;
  hasRank = mlir::ShapeAdaptor::hasRank(v19);
  *&v17 = mlir::ShapeAdaptor::getElementType(v19);
  if (hasRank == 1)
  {
    mlir::ShapeAdaptor::getDims(v19, &v14);
  }

  v9 = *(a9 + 8);
  v10 = *a9;
  if (v9 >= *(a9 + 12))
  {
    if (v10 > &v14 || v10 + (v9 << 6) <= &v14)
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
    }

    llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow();
  }

  v11 = v10 + (*(a9 + 8) << 6);
  *v11 = v11 + 16;
  *(v11 + 8) = 0x300000000;
  if (v15)
  {
    llvm::SmallVectorImpl<long long>::operator=(v11, &v14);
  }

  v12 = v17;
  *(v11 + 56) = hasRank;
  *(v11 + 40) = v12;
  ++*(a9 + 8);
  if (v14 != v16)
  {
    free(v14);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verify(mlir::Operation **this)
{
  v137 = *MEMORY[0x277D85DE8];
  v115 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v115);
  v3 = v2;
  *&v125 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = *mlir::RankedTensorType::getShape(&v125);
  if (v3 < v4)
  {
    v124 = 257;
    mlir::OpState::emitError(this, &v121, &v125);
    if (v125)
    {
      LODWORD(__s2[0]) = 3;
      __s2[1] = " number of axes to shrink ";
      *&v118 = 26;
      if (v127 >= v128)
      {
        if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v127 <= __s2)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = *(&v126 + 1) + 24 * v127;
      v6 = *__s2;
      *(v5 + 16) = v118;
      *v5 = v6;
      v7 = ++v127;
      if (v125)
      {
        LODWORD(__s2[0]) = 2;
        __s2[1] = v4;
        if (v7 >= v128)
        {
          if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v7 <= __s2)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v8 = *(&v126 + 1) + 24 * v127;
        v9 = *__s2;
        *(v8 + 16) = v118;
        *v8 = v9;
        v10 = ++v127;
        if (v125)
        {
          LODWORD(__s2[0]) = 3;
          __s2[1] = " is larger than input rank ";
          *&v118 = 27;
          if (v10 >= v128)
          {
            if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v10 <= __s2)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v11 = *(&v126 + 1) + 24 * v127;
          v12 = *__s2;
          *(v11 + 16) = v118;
          *v11 = v12;
          v13 = ++v127;
          if (v125)
          {
            LODWORD(__s2[0]) = 2;
            __s2[1] = v3;
            if (v13 >= v128)
            {
              if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v13 <= __s2)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v14 = *(&v126 + 1) + 24 * v127;
            v15 = *__s2;
            *(v14 + 16) = v118;
            *v14 = v15;
            ++v127;
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
    if (v125)
    {
      mlir::InFlightDiagnostic::report(&v125);
    }

    if (v136 != 1)
    {
      return v16;
    }

    if (v135 != &v136)
    {
      free(v135);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v134;
      v19 = __p;
      if (v134 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v134 = v17;
      operator delete(v19);
    }

    v20 = v131;
    if (!v131)
    {
      goto LABEL_59;
    }

    v21 = v132;
    v22 = v131;
    if (v132 == v131)
    {
      goto LABEL_58;
    }

    do
    {
      v24 = *--v21;
      v23 = v24;
      *v21 = 0;
      if (v24)
      {
        MEMORY[0x259C63150](v23, 0x1000C8077774924);
      }
    }

    while (v21 != v20);
    goto LABEL_57;
  }

  if (*(*this + 9))
  {
    v25 = *this - 16;
  }

  else
  {
    v25 = 0;
  }

  v114 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v114);
  if (v26 == v3 - v4)
  {
    v113 = 0;
    v27 = *(*(*this + 9) + 56);
    v121 = &v113;
    *&v125 = v27;
    DefiningOp = mlir::Value::getDefiningOp(&v125);
    if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v121, DefiningOp))
    {
      return 1;
    }

    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v113, &v125);
    v116 = v125;
    v29 = v130;
    v121 = v123;
    v122 = 0x600000000;
    v30 = v130 - v126;
    if ((v130 - v126) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v44 = 0;
    *__s2 = v116;
    v118 = v126;
    v119 = v3;
    v120 = 1;
    if (v130 != v126)
    {
      v45 = v121;
      do
      {
        mlir::DenseElementsAttr::IntElementIterator::operator*(__s2, &v110);
        if (DWORD2(v110) > 0x40)
        {
          v46 = (v119 & (*v110 >> 63)) + *v110;
          MEMORY[0x259C63150]();
        }

        else if (DWORD2(v110))
        {
          v46 = (v119 & ((v110 << -DWORD2(v110)) >> -DWORD2(v110) >> 63)) + ((v110 << -DWORD2(v110)) >> -DWORD2(v110));
        }

        else
        {
          v46 = 0;
        }

        *v45++ = v46;
        *&v118 = v118 + 1;
      }

      while (v118 != v29);
      v44 = v122;
    }

    LODWORD(v122) = v44 + v30;
    Shape = mlir::TensorType::getShape(&v115);
    if (v122)
    {
      v49 = v121;
      v50 = &v121[v122];
      v51 = 1;
      while (1)
      {
        v52 = *v49;
        if (*v49 >= v3)
        {
          break;
        }

        v53 = Shape[v52];
        if (v53 == 1)
        {
          if (++v49 == v50)
          {
            if (v51)
            {
              goto LABEL_133;
            }

            v16 = 1;
            goto LABEL_158;
          }
        }

        else
        {
          if (v53 != 0x8000000000000000)
          {
            LOWORD(v119) = 257;
            mlir::OpState::emitError(this, __s2, &v125);
            if (v125)
            {
              LODWORD(v110) = 3;
              *(&v110 + 1) = " shrink dimension ";
              v111 = 18;
              if (v127 >= v128)
              {
                if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v127 <= &v110)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v73 = *(&v126 + 1) + 24 * v127;
              v74 = v110;
              *(v73 + 16) = v111;
              *v73 = v74;
              v75 = ++v127;
              if (v125)
              {
                LODWORD(v110) = 2;
                *(&v110 + 1) = v52;
                if (v75 >= v128)
                {
                  if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v75 <= &v110)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v76 = *(&v126 + 1) + 24 * v127;
                v77 = v110;
                *(v76 + 16) = v111;
                *v76 = v77;
                v78 = ++v127;
                if (v125)
                {
                  LODWORD(v110) = 3;
                  *(&v110 + 1) = " has non-unit dimension length ";
                  v111 = 31;
                  if (v78 >= v128)
                  {
                    if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v78 <= &v110)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v79 = *(&v126 + 1) + 24 * v127;
                  v80 = v110;
                  *(v79 + 16) = v111;
                  *v79 = v80;
                  v81 = ++v127;
                  if (v125)
                  {
                    LODWORD(v110) = 2;
                    *(&v110 + 1) = v53;
                    if (v81 >= v128)
                    {
                      if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v81 <= &v110)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v82 = *(&v126 + 1) + 24 * v127;
                    v83 = v110;
                    *(v82 + 16) = v111;
                    *v82 = v83;
                    v84 = ++v127;
                    if (v125)
                    {
                      LODWORD(v110) = 3;
                      *(&v110 + 1) = " in input tensor.";
                      v111 = 17;
                      if (v84 >= v128)
                      {
                        if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v84 <= &v110)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v85 = *(&v126 + 1) + 24 * v127;
                      v86 = v110;
                      *(v85 + 16) = v111;
                      *v85 = v86;
                      ++v127;
                    }
                  }
                }
              }
            }

            v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
            if (v125)
            {
              mlir::InFlightDiagnostic::report(&v125);
            }

            if (v136 != 1)
            {
              goto LABEL_158;
            }

            if (v135 != &v136)
            {
              free(v135);
            }

            v87 = __p;
            if (__p)
            {
              v88 = v134;
              v89 = __p;
              if (v134 != __p)
              {
                do
                {
                  v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
                }

                while (v88 != v87);
                v89 = __p;
              }

              v134 = v87;
              operator delete(v89);
            }

            v68 = v131;
            if (v131)
            {
              v90 = v132;
              v70 = v131;
              if (v132 != v131)
              {
                do
                {
                  v92 = *--v90;
                  v91 = v92;
                  *v90 = 0;
                  if (v92)
                  {
                    MEMORY[0x259C63150](v91, 0x1000C8077774924);
                  }
                }

                while (v90 != v68);
                goto LABEL_154;
              }

              goto LABEL_155;
            }

            goto LABEL_156;
          }

          v51 = 0;
          ++v49;
          v16 = 1;
          if (v49 == v50)
          {
            goto LABEL_158;
          }
        }
      }

      LOWORD(v119) = 257;
      mlir::OpState::emitError(this, __s2, &v125);
      if (v125)
      {
        LODWORD(v110) = 3;
        *(&v110 + 1) = " shrink axes contains ";
        v111 = 22;
        if (v127 >= v128)
        {
          if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v127 <= &v110)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v54 = *(&v126 + 1) + 24 * v127;
        v55 = v110;
        *(v54 + 16) = v111;
        *v54 = v55;
        v56 = ++v127;
        if (v125)
        {
          LODWORD(v110) = 2;
          *(&v110 + 1) = v52;
          if (v56 >= v128)
          {
            if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v56 <= &v110)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v57 = *(&v126 + 1) + 24 * v127;
          v58 = v110;
          *(v57 + 16) = v111;
          *v57 = v58;
          v59 = ++v127;
          if (v125)
          {
            LODWORD(v110) = 3;
            *(&v110 + 1) = " which is higher than input rank ";
            v111 = 33;
            if (v59 >= v128)
            {
              if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v59 <= &v110)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v60 = *(&v126 + 1) + 24 * v127;
            v61 = v110;
            *(v60 + 16) = v111;
            *v60 = v61;
            v62 = ++v127;
            if (v125)
            {
              LODWORD(v110) = 2;
              *(&v110 + 1) = v3;
              if (v62 >= v128)
              {
                if (*(&v126 + 1) > &v110 || *(&v126 + 1) + 24 * v62 <= &v110)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v63 = *(&v126 + 1) + 24 * v127;
              v64 = v110;
              *(v63 + 16) = v111;
              *v63 = v64;
              ++v127;
            }
          }
        }
      }

      v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
      if (v125)
      {
        mlir::InFlightDiagnostic::report(&v125);
      }

      if (v136 != 1)
      {
        goto LABEL_158;
      }

      if (v135 != &v136)
      {
        free(v135);
      }

      v65 = __p;
      if (__p)
      {
        v66 = v134;
        v67 = __p;
        if (v134 != __p)
        {
          do
          {
            v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
          }

          while (v66 != v65);
          v67 = __p;
        }

        v134 = v65;
        operator delete(v67);
      }

      v68 = v131;
      if (v131)
      {
        v69 = v132;
        v70 = v131;
        if (v132 != v131)
        {
          do
          {
            v72 = *--v69;
            v71 = v72;
            *v69 = 0;
            if (v72)
            {
              MEMORY[0x259C63150](v71, 0x1000C8077774924);
            }
          }

          while (v69 != v68);
LABEL_154:
          v70 = v131;
        }

LABEL_155:
        v132 = v68;
        operator delete(v70);
      }

LABEL_156:
      v109 = *(&v126 + 1);
      if (*(&v126 + 1) == &v129)
      {
        goto LABEL_158;
      }
    }

    else
    {
LABEL_133:
      __s2[0] = &v118;
      __s2[1] = 0x600000000;
      if (v48)
      {
        v93 = 0;
        v94 = 0;
        v95 = &Shape[v48];
        do
        {
          if (v122)
          {
            v96 = 8 * v122;
            v97 = v121;
            while (*v97 != v94)
            {
              ++v97;
              v96 -= 8;
              if (!v96)
              {
                goto LABEL_135;
              }
            }
          }

          else
          {
            v97 = v121;
          }

          if (v97 == &v121[v122])
          {
LABEL_135:
            if (v93 >= HIDWORD(__s2[1]))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(__s2[0] + v93) = *Shape;
            v93 = ++LODWORD(__s2[1]);
          }

          ++v94;
          ++Shape;
        }

        while (Shape != v95);
      }

      v98 = mlir::TensorType::getShape(&v114);
      if (v99 == LODWORD(__s2[1]) && (v100 = __s2[0], !memcmp(v98, __s2[0], 8 * LODWORD(__s2[1]))))
      {
        v16 = 1;
        if (v100 == &v118)
        {
LABEL_158:
          v42 = v121;
          if (v121 == v123)
          {
            return v16;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v112 = 257;
        mlir::OpState::emitError(this, &v110, &v125);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v125, " expected output shape mismatch: ");
        v102 = v101;
        *&v116 = mlir::TensorType::getShape(&v114);
        *(&v116 + 1) = v103;
        v104 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v102, &v116);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v104, " vs ");
        v106 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v105, __s2);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v106, " Shrink dims = ");
        v108 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v107, &v121);
        v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v108);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v125);
        v100 = __s2[0];
        if (__s2[0] == &v118)
        {
          goto LABEL_158;
        }
      }

      v109 = v100;
    }

    free(v109);
    goto LABEL_158;
  }

  v124 = 257;
  mlir::OpState::emitError(this, &v121, &v125);
  if (v125)
  {
    LODWORD(__s2[0]) = 3;
    __s2[1] = " expect result rank to be ";
    *&v118 = 26;
    if (v127 >= v128)
    {
      if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v127 <= __s2)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v31 = *(&v126 + 1) + 24 * v127;
    v32 = *__s2;
    *(v31 + 16) = v118;
    *v31 = v32;
    v33 = ++v127;
    if (v125)
    {
      LODWORD(__s2[0]) = 2;
      __s2[1] = (v3 - v4);
      if (v33 >= v128)
      {
        if (*(&v126 + 1) > __s2 || *(&v126 + 1) + 24 * v33 <= __s2)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v34 = *(&v126 + 1) + 24 * v127;
      v35 = *__s2;
      *(v34 + 16) = v118;
      *v34 = v35;
      ++v127;
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v125);
  if (v125)
  {
    mlir::InFlightDiagnostic::report(&v125);
  }

  if (v136 != 1)
  {
    return v16;
  }

  if (v135 != &v136)
  {
    free(v135);
  }

  v36 = __p;
  if (__p)
  {
    v37 = v134;
    v38 = __p;
    if (v134 != __p)
    {
      do
      {
        v37 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v37 - 1);
      }

      while (v37 != v36);
      v38 = __p;
    }

    v134 = v36;
    operator delete(v38);
  }

  v20 = v131;
  if (v131)
  {
    v39 = v132;
    v22 = v131;
    if (v132 == v131)
    {
LABEL_58:
      v132 = v20;
      operator delete(v22);
      goto LABEL_59;
    }

    do
    {
      v41 = *--v39;
      v40 = v41;
      *v39 = 0;
      if (v41)
      {
        MEMORY[0x259C63150](v40, 0x1000C8077774924);
      }
    }

    while (v39 != v20);
LABEL_57:
    v22 = v131;
    goto LABEL_58;
  }

LABEL_59:
  v42 = *(&v126 + 1);
  if (*(&v126 + 1) != &v129)
  {
LABEL_60:
    free(v42);
  }

  return v16;
}

void *mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(void *result, uint64_t a2)
{
  if (*result)
  {
    v3 = ", ";
    v2 = result;
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(*a2, (*a2 + 8 * *(a2 + 8)), (result + 1), (result + 1), &v3);
    return v2;
  }

  return result;
}

void *mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(void *result, uint64_t a2)
{
  if (*result)
  {
    v3 = ", ";
    v2 = result;
    llvm::interleave<long long const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(llvm::SmallVector<long long,6u> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::SmallVector<long long,6u>>(llvm::SmallVector<long long,6u> const&,char const*)::{lambda(void)#1},void>(*a2, (*a2 + 8 * *(a2 + 8)), (result + 1), (result + 1), &v3);
    return v2;
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ScatterNdOp::verify(mlir::Operation **this)
{
  v125 = *MEMORY[0x277D85DE8];
  v111 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::TensorType::getShape(&v111);
  mlir::TensorType::getShape(&v111);
  v4 = v3;
  if (!v3)
  {
    v110 = 257;
    mlir::OpState::emitError(this, v109, v114);
    if (v114[0])
    {
      LODWORD(v112) = 3;
      *(&v112 + 1) = "input/output rank must be >= 1";
      v113 = 30;
      if (v116 >= v117)
      {
        if (v115 > &v112 || v115 + 24 * v116 <= &v112)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v115 + 24 * v116;
      v6 = v112;
      *(v5 + 2) = v113;
      *v5 = v6;
      ++v116;
      if (v114[0])
      {
        mlir::InFlightDiagnostic::report(v114);
      }
    }

    if (v124 == 1)
    {
      if (v123 != &v124)
      {
        free(v123);
      }

      v7 = v121;
      if (v121)
      {
        v8 = v122;
        v9 = v121;
        if (v122 != v121)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = v121;
        }

        v122 = v7;
        operator delete(v9);
      }

      v10 = v119;
      if (v119)
      {
        v11 = v120;
        v12 = v119;
        if (v120 != v119)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v119;
        }

        v120 = v10;
        operator delete(v12);
      }

      if (v115 != v118)
      {
        free(v115);
      }
    }
  }

  v108 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = mlir::TensorType::getShape(&v108);
  v17 = v16;
  mlir::TensorType::getShape(&v108);
  v19 = *(v15 + 8 * v17 - 8);
  v20 = v4 - v19;
  if (v4 < v19)
  {
    v110 = 257;
    mlir::OpState::emitError(this, v109, v114);
    if (v114[0])
    {
      LODWORD(v112) = 3;
      *(&v112 + 1) = "innermost dimension of indices ";
      v113 = 31;
      if (v116 >= v117)
      {
        if (v115 > &v112 || v115 + 24 * v116 <= &v112)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v21 = v115 + 24 * v116;
      v22 = v112;
      *(v21 + 2) = v113;
      *v21 = v22;
      v23 = ++v116;
      if (v114[0])
      {
        LODWORD(v112) = 2;
        *(&v112 + 1) = v19;
        if (v23 >= v117)
        {
          if (v115 > &v112 || v115 + 24 * v23 <= &v112)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v24 = v115 + 24 * v116;
        v25 = v112;
        *(v24 + 2) = v113;
        *v24 = v25;
        v26 = ++v116;
        if (v114[0])
        {
          LODWORD(v112) = 3;
          *(&v112 + 1) = " > output rank ";
          v113 = 15;
          if (v26 >= v117)
          {
            if (v115 > &v112 || v115 + 24 * v26 <= &v112)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v27 = v115 + 24 * v116;
          v28 = v112;
          *(v27 + 2) = v113;
          *v27 = v28;
          v29 = ++v116;
          if (v114[0])
          {
            LODWORD(v112) = 2;
            *(&v112 + 1) = v4;
            if (v29 >= v117)
            {
              if (v115 > &v112 || v115 + 24 * v29 <= &v112)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v30 = v115 + 24 * v116;
            v31 = v112;
            *(v30 + 2) = v113;
            *v30 = v31;
            ++v116;
          }
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
    if (v114[0])
    {
      mlir::InFlightDiagnostic::report(v114);
    }

    if (v124 != 1)
    {
      return v32;
    }

    if (v123 != &v124)
    {
      free(v123);
    }

    v33 = v121;
    if (v121)
    {
      v34 = v122;
      v35 = v121;
      if (v122 != v121)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = v121;
      }

      v122 = v33;
      operator delete(v35);
    }

    v36 = v119;
    if (!v119)
    {
      goto LABEL_120;
    }

    v37 = v120;
    v38 = v119;
    if (v120 == v119)
    {
      goto LABEL_119;
    }

    do
    {
      v40 = *--v37;
      v39 = v40;
      *v37 = 0;
      if (v40)
      {
        MEMORY[0x259C63150](v39, 0x1000C8077774924);
      }
    }

    while (v37 != v36);
    goto LABEL_118;
  }

  v41 = v18;
  v107 = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v108))
  {
    return 1;
  }

  v42 = mlir::TensorType::getShape(&v108);
  if (v43)
  {
    v44 = 8 * v43;
    while (*v42 != 0x8000000000000000)
    {
      ++v42;
      v44 -= 8;
      if (!v44)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

LABEL_55:
  if (!mlir::TensorType::hasRank(&v107))
  {
    return 1;
  }

  v45 = mlir::TensorType::getShape(&v107);
  if (v46)
  {
    v47 = 8 * v46;
    while (*v45 != 0x8000000000000000)
    {
      ++v45;
      v47 -= 8;
      if (!v47)
      {
        goto LABEL_60;
      }
    }

    return 1;
  }

LABEL_60:
  v48 = mlir::TensorType::getShape(&v107);
  mlir::TensorType::getShape(&v107);
  v50 = v49;
  v51 = v41 + v20 - 1;
  if (v49 == v51)
  {
    v106 = 0;
    if (v49 >= 1)
    {
      v52 = 0;
      v53 = Shape - 8 * v41 + 8 * v19;
      while (1)
      {
        if (v41 - 2 >= v52)
        {
          if (*(v48 + 8 * v52) != *(v15 + 8 * v52))
          {
            v106 = v52;
            v110 = 257;
            mlir::OpState::emitError(this, v109, v114);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v114, "updates shape[");
            mlir::InFlightDiagnostic::operator<<<int &>(v100, &v106);
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v101, "] is ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v102, (v48 + 8 * v106));
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v103, " expect it to be ");
            mlir::InFlightDiagnostic::operator<<<long long &>(v104, (v15 + 8 * v106));
            v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v105);
            mlir::InFlightDiagnostic::~InFlightDiagnostic(v114);
            return v32;
          }
        }

        else if (*(v48 + 8 * v52) != *(v53 + 8 + 8 * v52))
        {
          v106 = v52;
          v110 = 257;
          mlir::OpState::emitError(this, v109, v114);
          if (v114[0])
          {
            LODWORD(v112) = 3;
            *(&v112 + 1) = "updates shape[";
            v113 = 14;
            if (v116 >= v117)
            {
              if (v115 > &v112 || v115 + 24 * v116 <= &v112)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v54 = v115 + 24 * v116;
            v55 = v112;
            *(v54 + 2) = v113;
            *v54 = v55;
            v56 = ++v116;
            if (v114[0])
            {
              LODWORD(v112) = 2;
              *(&v112 + 1) = v52;
              if (v56 >= v117)
              {
                if (v115 > &v112 || v115 + 24 * v56 <= &v112)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v57 = v115 + 24 * v116;
              v58 = v112;
              *(v57 + 2) = v113;
              *v57 = v58;
              v59 = ++v116;
              if (v114[0])
              {
                LODWORD(v112) = 3;
                *(&v112 + 1) = "] is ";
                v113 = 5;
                if (v59 >= v117)
                {
                  if (v115 > &v112 || v115 + 24 * v59 <= &v112)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v60 = v115 + 24 * v116;
                v61 = v112;
                *(v60 + 2) = v113;
                *v60 = v61;
                v62 = ++v116;
                if (v114[0])
                {
                  v63 = *(v48 + 8 * v52);
                  LODWORD(v112) = 2;
                  *(&v112 + 1) = v63;
                  if (v62 >= v117)
                  {
                    if (v115 > &v112 || v115 + 24 * v62 <= &v112)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v64 = v115 + 24 * v116;
                  v65 = v112;
                  *(v64 + 2) = v113;
                  *v64 = v65;
                  v66 = ++v116;
                  if (v114[0])
                  {
                    LODWORD(v112) = 3;
                    *(&v112 + 1) = " expect it to be ";
                    v113 = 17;
                    if (v66 >= v117)
                    {
                      if (v115 > &v112 || v115 + 24 * v66 <= &v112)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v67 = v115 + 24 * v116;
                    v68 = v112;
                    *(v67 + 2) = v113;
                    *v67 = v68;
                    v69 = ++v116;
                    if (v114[0])
                    {
                      v70 = *(v53 + 8 + 8 * v52);
                      LODWORD(v112) = 2;
                      *(&v112 + 1) = v70;
                      if (v69 >= v117)
                      {
                        if (v115 > &v112 || v115 + 24 * v69 <= &v112)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v71 = v115 + 24 * v116;
                      v72 = v112;
                      *(v71 + 2) = v113;
                      *v71 = v72;
                      ++v116;
                    }
                  }
                }
              }
            }
          }

          v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
          if (v114[0])
          {
            mlir::InFlightDiagnostic::report(v114);
          }

          if ((v124 & 1) == 0)
          {
            return v32;
          }

          if (v123 != &v124)
          {
            free(v123);
          }

          v73 = v121;
          if (v121)
          {
            v74 = v122;
            v75 = v121;
            if (v122 != v121)
            {
              do
              {
                v74 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v74 - 1);
              }

              while (v74 != v73);
              v75 = v121;
            }

            v122 = v73;
            operator delete(v75);
          }

          v76 = v119;
          if (v119)
          {
            v77 = v120;
            v78 = v119;
            if (v120 != v119)
            {
              do
              {
                v98 = *--v77;
                v97 = v98;
                *v77 = 0;
                if (v98)
                {
                  MEMORY[0x259C63150](v97, 0x1000C8077774924);
                }
              }

              while (v77 != v76);
              v78 = v119;
            }

            v120 = v76;
            operator delete(v78);
          }

          v96 = v115;
          if (v115 == v118)
          {
            return v32;
          }

LABEL_121:
          free(v96);
          return v32;
        }

        if (v49 <= ++v52)
        {
          v106 = v52;
          return 1;
        }
      }
    }

    return 1;
  }

  v110 = 257;
  mlir::OpState::emitError(this, v109, v114);
  if (v114[0])
  {
    LODWORD(v112) = 3;
    *(&v112 + 1) = "updates rank is ";
    v113 = 16;
    if (v116 >= v117)
    {
      if (v115 > &v112 || v115 + 24 * v116 <= &v112)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v79 = v115 + 24 * v116;
    v80 = v112;
    *(v79 + 2) = v113;
    *v79 = v80;
    v81 = ++v116;
    if (v114[0])
    {
      LODWORD(v112) = 2;
      *(&v112 + 1) = v50;
      if (v81 >= v117)
      {
        if (v115 > &v112 || v115 + 24 * v81 <= &v112)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v82 = v115 + 24 * v116;
      v83 = v112;
      *(v82 + 2) = v113;
      *v82 = v83;
      v84 = ++v116;
      if (v114[0])
      {
        LODWORD(v112) = 3;
        *(&v112 + 1) = " expected rank is ";
        v113 = 18;
        if (v84 >= v117)
        {
          if (v115 > &v112 || v115 + 24 * v84 <= &v112)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v85 = v115 + 24 * v116;
        v86 = v112;
        *(v85 + 2) = v113;
        *v85 = v86;
        v87 = ++v116;
        if (v114[0])
        {
          LODWORD(v112) = 2;
          *(&v112 + 1) = v51;
          if (v87 >= v117)
          {
            if (v115 > &v112 || v115 + 24 * v87 <= &v112)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v88 = v115 + 24 * v116;
          v89 = v112;
          *(v88 + 2) = v113;
          *v88 = v89;
          ++v116;
        }
      }
    }
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v114);
  if (v114[0])
  {
    mlir::InFlightDiagnostic::report(v114);
  }

  if (v124 == 1)
  {
    if (v123 != &v124)
    {
      free(v123);
    }

    v90 = v121;
    if (v121)
    {
      v91 = v122;
      v92 = v121;
      if (v122 != v121)
      {
        do
        {
          v91 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v91 - 1);
        }

        while (v91 != v90);
        v92 = v121;
      }

      v122 = v90;
      operator delete(v92);
    }

    v36 = v119;
    if (!v119)
    {
LABEL_120:
      v96 = v115;
      if (v115 == v118)
      {
        return v32;
      }

      goto LABEL_121;
    }

    v93 = v120;
    v38 = v119;
    if (v120 == v119)
    {
LABEL_119:
      v120 = v36;
      operator delete(v38);
      goto LABEL_120;
    }

    do
    {
      v95 = *--v93;
      v94 = v95;
      *v93 = 0;
      if (v95)
      {
        MEMORY[0x259C63150](v94, 0x1000C8077774924);
      }
    }

    while (v93 != v36);
LABEL_118:
    v38 = v119;
    goto LABEL_119;
  }

  return v32;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v2;
  if (!mlir::TensorType::hasRank(&v11))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v11);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  v6 = mlir::TensorType::getShape(&v10);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v11 != v10)
  {
    return 0;
  }

  return *(*(*a1 + 72) + 24) | 4;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verify(mlir::Operation **this)
{
  v133 = *MEMORY[0x277D85DE8];
  v108 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v108);
  v3 = v2;
  if (!v2)
  {
    v118 = 257;
    mlir::OpState::emitError(this, v116, &v119);
    if (v119)
    {
      LODWORD(v114) = 3;
      *(&v114 + 1) = "input/output rank must be >= 1";
      v115[0] = 30;
      if (v123 >= v124)
      {
        if (v122 > &v114 || v122 + 24 * v123 <= &v114)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v4 = v122 + 24 * v123;
      v5 = v114;
      *(v4 + 2) = v115[0];
      *v4 = v5;
      ++v123;
      if (v119)
      {
        mlir::InFlightDiagnostic::report(&v119);
      }
    }

    if (v132 == 1)
    {
      if (v131 != &v132)
      {
        free(v131);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v130;
        v8 = __p;
        if (v130 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v130 = v6;
        operator delete(v8);
      }

      v9 = v127;
      if (v127)
      {
        v10 = v128;
        v11 = v127;
        if (v128 != v127)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v127;
        }

        v128 = v9;
        operator delete(v11);
      }

      if (v122 != v125)
      {
        free(v122);
      }
    }
  }

  v14 = *(*(*this + 9) + 56);
  v107 = v14[1] & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::RankedTensorType::getShape(&v107);
  if (mlir::ShapedType::getNumElements(Shape, v16) != v3)
  {
    v118 = 257;
    mlir::OpState::emitError(this, v116, &v119);
    if (v119)
    {
      LODWORD(v114) = 3;
      *(&v114 + 1) = "input rank is ";
      v115[0] = 14;
      if (v123 >= v124)
      {
        if (v122 > &v114 || v122 + 24 * v123 <= &v114)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = v122 + 24 * v123;
      v18 = v114;
      *(v17 + 2) = v115[0];
      *v17 = v18;
      v19 = ++v123;
      if (v119)
      {
        LODWORD(v114) = 2;
        *(&v114 + 1) = v3;
        if (v19 >= v124)
        {
          if (v122 > &v114 || v122 + 24 * v19 <= &v114)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v122 + 24 * v123;
        v21 = v114;
        *(v20 + 2) = v115[0];
        *v20 = v21;
        v22 = ++v123;
        if (v119)
        {
          LODWORD(v114) = 3;
          *(&v114 + 1) = " but start/end/strides are provided with ";
          v115[0] = 41;
          if (v22 >= v124)
          {
            if (v122 > &v114 || v122 + 24 * v22 <= &v114)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v23 = v122 + 24 * v123;
          v24 = v114;
          *(v23 + 2) = v115[0];
          *v23 = v24;
          ++v123;
        }
      }
    }

    v25 = mlir::RankedTensorType::getShape(&v107);
    NumElements = mlir::ShapedType::getNumElements(v25, v26);
    if (v119)
    {
      LODWORD(v114) = 2;
      *(&v114 + 1) = NumElements;
      if (v123 >= v124)
      {
        if (v122 > &v114 || v122 + 24 * v123 <= &v114)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v28 = v122 + 24 * v123;
      v29 = v114;
      *(v28 + 2) = v115[0];
      *v28 = v29;
      v30 = ++v123;
      if (v119)
      {
        LODWORD(v114) = 3;
        *(&v114 + 1) = " elements";
        v115[0] = 9;
        if (v30 >= v124)
        {
          if (v122 > &v114 || v122 + 24 * v30 <= &v114)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v31 = v122 + 24 * v123;
        v32 = v114;
        *(v31 + 2) = v115[0];
        *v31 = v32;
        ++v123;
        if (v119)
        {
          mlir::InFlightDiagnostic::report(&v119);
        }
      }
    }

    if (v132 == 1)
    {
      if (v131 != &v132)
      {
        free(v131);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v130;
        v35 = __p;
        if (v130 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v130 = v33;
        operator delete(v35);
      }

      v36 = v127;
      if (v127)
      {
        v37 = v128;
        v38 = v127;
        if (v128 != v127)
        {
          do
          {
            v40 = *--v37;
            v39 = v40;
            *v37 = 0;
            if (v40)
            {
              MEMORY[0x259C63150](v39, 0x1000C8077774924);
            }
          }

          while (v37 != v36);
          v38 = v127;
        }

        v128 = v36;
        operator delete(v38);
      }

      if (v122 != v125)
      {
        free(v122);
      }
    }
  }

  v106 = *(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v108))
  {
    return 1;
  }

  v41 = mlir::TensorType::getShape(&v108);
  if (v42)
  {
    v43 = 8 * v42;
    while (*v41 != 0x8000000000000000)
    {
      ++v41;
      v43 -= 8;
      if (!v43)
      {
        goto LABEL_61;
      }
    }

    return 1;
  }

LABEL_61:
  if (!mlir::TensorType::hasRank(&v106))
  {
    return 1;
  }

  v44 = mlir::TensorType::getShape(&v106);
  if (v45)
  {
    v46 = 8 * v45;
    while (*v44 != 0x8000000000000000)
    {
      ++v44;
      v46 -= 8;
      if (!v46)
      {
        goto LABEL_66;
      }
    }

    return 1;
  }

LABEL_66:
  v47 = *(*this + 9);
  v48 = *(v47 + 88);
  v49 = *(v47 + 120);
  v116[0] = 0;
  *&v114 = v116;
  v119 = v14;
  DefiningOp = mlir::Value::getDefiningOp(&v119);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v114, DefiningOp))
  {
    return 1;
  }

  v116[0] = 0;
  *&v114 = v116;
  v119 = v48;
  v51 = mlir::Value::getDefiningOp(&v119);
  if (!v51)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v114, v51))
  {
    return 1;
  }

  v116[0] = 0;
  *&v114 = v116;
  v119 = v49;
  v52 = mlir::Value::getDefiningOp(&v119);
  if (!v52 || !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v114, v52))
  {
    return 1;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v119);
  if ((v126 & 1) == 0)
  {
    goto LABEL_177;
  }

  v116[0] = v117;
  v116[1] = 0xC00000000;
  if (!v120 || (llvm::SmallVectorImpl<int>::operator=(v116, &v119), (v126 & 1) != 0))
  {
    if (v119 != &v121)
    {
      free(v119);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v48, &v119);
  if ((v126 & 1) == 0)
  {
    goto LABEL_177;
  }

  *&v114 = v115;
  *(&v114 + 1) = 0xC00000000;
  if (!v120 || (llvm::SmallVectorImpl<int>::operator=(&v114, &v119), (v126 & 1) != 0))
  {
    if (v119 != &v121)
    {
      free(v119);
    }
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v49, &v119);
  if ((v126 & 1) == 0)
  {
LABEL_177:
    v102 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::isConstantValue(v102);
  }

  v112[0] = v113;
  v112[1] = 0xC00000000;
  if (!v120 || (llvm::SmallVectorImpl<int>::operator=(v112, &v119), (v126 & 1) != 0))
  {
    if (v119 != &v121)
    {
      free(v119);
    }
  }

  v53 = mlir::TensorType::getShape(&v108);
  v103[0] = 0;
  if (v3 <= 0)
  {
    v119 = 0;
    llvm::SmallVector<long long,6u>::SmallVector(&__s1, v3, &v119);
    goto LABEL_139;
  }

  v54 = 0;
  v55 = v112[0];
  v56 = v116[0];
  v57 = v114;
  do
  {
    while (1)
    {
      if (!v55[v54])
      {
        v111[8] = 257;
        mlir::OpState::emitError(this, &__s1, &v119);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v119, "stride[");
        mlir::InFlightDiagnostic::operator<<<long long &>(v98, v103);
        mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v99, "] is 0");
        v97 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v119);
        goto LABEL_144;
      }

      v61 = v56[v54];
      if ((v61 & 0x80000000) == 0)
      {
        break;
      }

      do
      {
        v61 += *(v53 + 8 * v54);
      }

      while (v61 < 0);
      v56[v54] = v61;
      v62 = *(v57 + 4 * v54);
      if (v62 < 0)
      {
        goto LABEL_103;
      }

LABEL_99:
      v63 = *(v53 + 8 * v54);
      if (v55[v54] >= 1)
      {
        goto LABEL_105;
      }

LABEL_91:
      v59 = v63 - 1;
      v60 = v56[v54];
      if (v59 < v60)
      {
        v60 = v59;
      }

      v56[v54] = v60;
      if (v59 >= *(v57 + 4 * v54))
      {
        v59 = *(v57 + 4 * v54);
      }

      *(v57 + 4 * v54++) = v59;
      v103[0] = v54;
      if (v54 == v3)
      {
        goto LABEL_110;
      }
    }

    v62 = *(v57 + 4 * v54);
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_99;
    }

    do
    {
LABEL_103:
      v62 += *(v53 + 8 * v54);
    }

    while (v62 < 0);
    *(v57 + 4 * v54) = v62;
    v63 = *(v53 + 8 * v54);
    if (v55[v54] < 1)
    {
      goto LABEL_91;
    }

LABEL_105:
    v64 = v56[v54];
    if (v64 >= v63)
    {
      v64 = v63;
    }

    v56[v54] = v64;
    if (*(v57 + 4 * v54) < v63)
    {
      LODWORD(v63) = *(v57 + 4 * v54);
    }

    *(v57 + 4 * v54++) = v63;
    v103[0] = v54;
  }

  while (v54 != v3);
LABEL_110:
  v119 = 0;
  llvm::SmallVector<long long,6u>::SmallVector(&__s1, v3, &v119);
  v65 = 0;
  v66 = v112[0];
  v67 = v116[0];
  v68 = v114;
  v69 = __s1;
  do
  {
    v70 = v66[v65];
    v71 = v67[v65];
    v72 = *(v68 + 4 * v65);
    if (v70 < 1)
    {
      if (v71 > v72)
      {
        v87 = v70;
        v88 = v69[v65];
        do
        {
          ++v88;
          v71 += v87;
        }

        while (v71 > v72);
        v69[v65] = v88;
      }
    }

    else if (v71 < v72)
    {
      v73 = v69[v65];
      if ((v71 + v70) <= v72)
      {
        v74 = *(v68 + 4 * v65);
      }

      else
      {
        v74 = v71 + v70;
      }

      if ((v71 + v70) >= v72)
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      v76 = v75 + (v74 - ((v71 + v70) < v72) - (v71 + v70)) / v70;
      if (v76 < 4)
      {
        goto LABEL_125;
      }

      v71 += (v76 & 0xFFFFFFFFFFFFFFFCLL) * v70;
      v77 = 0uLL;
      v78 = v69[v65];
      v79 = v76 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v80 = vdupq_n_s64(1uLL);
        v77 = vaddq_s64(v77, v80);
        v78 = vaddq_s64(v78, v80);
        v79 -= 4;
      }

      while (v79);
      v73 = vaddvq_s64(vpaddq_s64(v78, v77));
      if (v76 != (v76 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_125:
        v81 = v71 + v70;
        if ((v71 + v70) <= v72)
        {
          v82 = *(v68 + 4 * v65);
        }

        else
        {
          v82 = v71 + v70;
        }

        v83 = v82 != v81;
        v84 = v73 + v83;
        v85 = v82 - v83 - v81;
        if (v70 <= 1)
        {
          v86 = 1;
        }

        else
        {
          v86 = v66[v65];
        }

        v73 = v84 + v85 / v86 + 1;
        do
        {
          v71 += v70;
        }

        while (v71 < v72);
      }

      v69[v65] = v73;
    }

    ++v65;
  }

  while (v65 != v3);
LABEL_139:
  v89 = mlir::TensorType::getShape(&v106);
  v105[0] = v89;
  v105[1] = v90;
  if (v90 == v110 && (v91 = __s1, !memcmp(__s1, v89, 8 * v90)))
  {
    result = 1;
    if (v91 != v111)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v104 = 257;
    mlir::OpState::emitError(this, v103, &v119);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v119, "mismatch in slice shape. Expected shape: ");
    v93 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v92, &__s1);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v93, " given shape is ");
    v95 = mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long>>(v94, v105);
    v96 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v119);
    result = v96;
    v91 = __s1;
    if (__s1 != v111)
    {
LABEL_142:
      v97 = result;
      free(v91);
LABEL_144:
      result = v97;
    }
  }

  v101 = result;
  if (v112[0] != v113)
  {
    free(v112[0]);
    result = v101;
  }

  if (v114 != v115)
  {
    free(v114);
    result = v101;
  }

  if (v116[0] != v117)
  {
    free(v116[0]);
    return v101;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::isConstantValue(uint64_t a1)
{
  v2 = &v3;
  v3 = 0;
  v4 = a1;
  result = mlir::Value::getDefiningOp(&v4);
  if (result)
  {
    return mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v2, result);
  }

  return result;
}

void mlir::ODIE::Compiler::extract1DIntVector<int>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v7 = &v8;
  v8 = 0;
  __src = a1;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (DefiningOp && (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v7, DefiningOp) & 1) != 0)
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &__src);
    *a2 = a2 + 16;
    *(a2 + 8) = 0xC00000000;
    v4 = v10;
    v5 = __src;
    if (v10 && &__src != a2)
    {
      if (__src == v12)
      {
        if (v10 >= 0xD)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        memcpy(*a2, __src, 4 * v10);
        v5 = __src;
        *(a2 + 8) = v4;
      }

      else
      {
        *a2 = __src;
        v6 = v11;
        *(a2 + 8) = v4;
        *(a2 + 12) = v6;
        __src = v12;
        v11 = 0;
        v5 = v12;
      }

      v10 = 0;
    }

    *(a2 + 64) = 1;
    if (v5 != v12)
    {
      free(v5);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 64) = 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(uint64_t a1)
{
  v2 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(*(*(*a1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = v2;
  if (!mlir::TensorType::hasRank(&v11))
  {
    return 0;
  }

  Shape = mlir::TensorType::getShape(&v11);
  if (v4)
  {
    v5 = 8 * v4;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  if (!mlir::TensorType::hasRank(&v10))
  {
    return 0;
  }

  v6 = mlir::TensorType::getShape(&v10);
  if (v7)
  {
    v8 = 8 * v7;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v11 != v10)
  {
    return 0;
  }

  return *(*(*a1 + 72) + 152) | 4;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::verify(mlir::Operation **this)
{
  v136 = *MEMORY[0x277D85DE8];
  v122 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::TensorType::getShape(&v122);
  mlir::TensorType::getShape(&v122);
  v4 = v3;
  if (!v3)
  {
    v121 = 257;
    mlir::OpState::emitError(this, v120, v125);
    if (v125[0])
    {
      LODWORD(v123) = 3;
      *(&v123 + 1) = "input rank must be >= 1";
      v124 = 23;
      if (v127 >= v128)
      {
        if (v126 > &v123 || v126 + 24 * v127 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v5 = v126 + 24 * v127;
      v6 = v123;
      *(v5 + 2) = v124;
      *v5 = v6;
      ++v127;
      if (v125[0])
      {
        mlir::InFlightDiagnostic::report(v125);
      }
    }

    if (v135 == 1)
    {
      if (v134 != &v135)
      {
        free(v134);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v133;
        v9 = __p;
        if (v133 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v133 = v7;
        operator delete(v9);
      }

      v10 = v130;
      if (v130)
      {
        v11 = v131;
        v12 = v130;
        if (v131 != v130)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              MEMORY[0x259C63150](v13, 0x1000C8077774924);
            }
          }

          while (v11 != v10);
          v12 = v130;
        }

        v131 = v10;
        operator delete(v12);
      }

      if (v126 != v129)
      {
        free(v126);
      }
    }
  }

  v119 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = mlir::TensorType::getShape(&v119);
  v17 = v16;
  mlir::TensorType::getShape(&v119);
  v19 = *(v15 + 8 * v17 - 8);
  if (v4 < v19)
  {
    v121 = 257;
    mlir::OpState::emitError(this, v120, v125);
    if (v125[0])
    {
      LODWORD(v123) = 3;
      *(&v123 + 1) = "innermost dimension of indices ";
      v124 = 31;
      if (v127 >= v128)
      {
        if (v126 > &v123 || v126 + 24 * v127 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v126 + 24 * v127;
      v21 = v123;
      *(v20 + 2) = v124;
      *v20 = v21;
      v22 = ++v127;
      if (v125[0])
      {
        LODWORD(v123) = 2;
        *(&v123 + 1) = v19;
        if (v22 >= v128)
        {
          if (v126 > &v123 || v126 + 24 * v22 <= &v123)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v23 = v126 + 24 * v127;
        v24 = v123;
        *(v23 + 2) = v124;
        *v23 = v24;
        v25 = ++v127;
        if (v125[0])
        {
          LODWORD(v123) = 3;
          *(&v123 + 1) = " > input rank ";
          v124 = 14;
          if (v25 >= v128)
          {
            if (v126 > &v123 || v126 + 24 * v25 <= &v123)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v26 = v126 + 24 * v127;
          v27 = v123;
          *(v26 + 2) = v124;
          *v26 = v27;
          v28 = ++v127;
          if (v125[0])
          {
            LODWORD(v123) = 2;
            *(&v123 + 1) = v4;
            if (v28 >= v128)
            {
              if (v126 > &v123 || v126 + 24 * v28 <= &v123)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v29 = v126 + 24 * v127;
            v30 = v123;
            *(v29 + 2) = v124;
            *v29 = v30;
            ++v127;
          }
        }
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 != 1)
    {
      return v31;
    }

    if (v134 != &v135)
    {
      free(v134);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v133;
      v34 = __p;
      if (v133 != __p)
      {
        do
        {
          v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v133 = v32;
      operator delete(v34);
    }

    v35 = v130;
    if (v130)
    {
      v36 = v131;
      v37 = v130;
      if (v131 != v130)
      {
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
        goto LABEL_141;
      }

      goto LABEL_142;
    }

LABEL_143:
    v117 = v126;
    if (v126 != v129)
    {
LABEL_144:
      free(v117);
    }

    return v31;
  }

  v40 = v18;
  v125[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(v125);
  v42 = v41;
  v125[0] = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  v43 = mlir::TensorType::getShape(v125);
  if (v42 != v40 + v4 - v19 - 1)
  {
    v121 = 257;
    mlir::OpState::emitError(this, v120, v125);
    if (v125[0])
    {
      LODWORD(v123) = 3;
      *(&v123 + 1) = "output rank is ";
      v124 = 15;
      if (v127 >= v128)
      {
        if (v126 > &v123 || v126 + 24 * v127 <= &v123)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v72 = v126 + 24 * v127;
      v73 = v123;
      *(v72 + 2) = v124;
      *v72 = v73;
      v74 = ++v127;
      if (v125[0])
      {
        LODWORD(v123) = 2;
        *(&v123 + 1) = v42;
        if (v74 >= v128)
        {
          if (v126 > &v123 || v126 + 24 * v74 <= &v123)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v75 = v126 + 24 * v127;
        v76 = v123;
        *(v75 + 2) = v124;
        *v75 = v76;
        v77 = ++v127;
        if (v125[0])
        {
          LODWORD(v123) = 3;
          *(&v123 + 1) = " expected rank is ";
          v124 = 18;
          if (v77 >= v128)
          {
            if (v126 > &v123 || v126 + 24 * v77 <= &v123)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v78 = v126 + 24 * v127;
          v79 = v123;
          *(v78 + 2) = v124;
          *v78 = v79;
          v80 = ++v127;
          if (v125[0])
          {
            LODWORD(v123) = 2;
            *(&v123 + 1) = v40 + v4 - v19 - 1;
            if (v80 >= v128)
            {
              if (v126 > &v123 || v126 + 24 * v80 <= &v123)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v81 = v126 + 24 * v127;
            v82 = v123;
            *(v81 + 2) = v124;
            *v81 = v82;
            ++v127;
          }
        }
      }
    }

    v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
    if (v125[0])
    {
      mlir::InFlightDiagnostic::report(v125);
    }

    if (v135 != 1)
    {
      return v31;
    }

    if (v134 != &v135)
    {
      free(v134);
    }

    v83 = __p;
    if (__p)
    {
      v84 = v133;
      v85 = __p;
      if (v133 != __p)
      {
        do
        {
          v84 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v84 - 1);
        }

        while (v84 != v83);
        v85 = __p;
      }

      v133 = v83;
      operator delete(v85);
    }

    v35 = v130;
    if (v130)
    {
      v86 = v131;
      v37 = v130;
      if (v131 != v130)
      {
        do
        {
          v88 = *--v86;
          v87 = v88;
          *v86 = 0;
          if (v88)
          {
            MEMORY[0x259C63150](v87, 0x1000C8077774924);
          }
        }

        while (v86 != v35);
        goto LABEL_141;
      }

LABEL_142:
      v131 = v35;
      operator delete(v37);
    }

    goto LABEL_143;
  }

  if (v42 >= 1)
  {
    v44 = 0;
    v45 = Shape - 8 * v40 + 8 * v19;
    do
    {
      if (v40 - 2 >= v44)
      {
        if (*(v43 + 8 * v44) != *(v15 + 8 * v44))
        {
          v121 = 257;
          v91 = v43;
          mlir::OpState::emitError(this, v120, v125);
          if (v125[0])
          {
            LODWORD(v123) = 3;
            *(&v123 + 1) = "output shape[";
            v124 = 13;
            if (v127 >= v128)
            {
              if (v126 > &v123 || v126 + 24 * v127 <= &v123)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v92 = v126 + 24 * v127;
            v93 = v123;
            *(v92 + 2) = v124;
            *v92 = v93;
            v94 = ++v127;
            if (v125[0])
            {
              LODWORD(v123) = 2;
              *(&v123 + 1) = v44;
              if (v94 >= v128)
              {
                if (v126 > &v123 || v126 + 24 * v94 <= &v123)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v95 = v126 + 24 * v127;
              v96 = v123;
              *(v95 + 2) = v124;
              *v95 = v96;
              v97 = ++v127;
              if (v125[0])
              {
                LODWORD(v123) = 3;
                *(&v123 + 1) = "] is ";
                v124 = 5;
                if (v97 >= v128)
                {
                  if (v126 > &v123 || v126 + 24 * v97 <= &v123)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v98 = v126 + 24 * v127;
                v99 = v123;
                *(v98 + 2) = v124;
                *v98 = v99;
                v100 = ++v127;
                if (v125[0])
                {
                  v101 = *(v91 + 8 * v44);
                  LODWORD(v123) = 2;
                  *(&v123 + 1) = v101;
                  if (v100 >= v128)
                  {
                    if (v126 > &v123 || v126 + 24 * v100 <= &v123)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v102 = v126 + 24 * v127;
                  v103 = v123;
                  *(v102 + 2) = v124;
                  *v102 = v103;
                  v104 = ++v127;
                  if (v125[0])
                  {
                    LODWORD(v123) = 3;
                    *(&v123 + 1) = " expect it to be ";
                    v124 = 17;
                    if (v104 >= v128)
                    {
                      if (v126 > &v123 || v126 + 24 * v104 <= &v123)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v105 = v126 + 24 * v127;
                    v106 = v123;
                    *(v105 + 2) = v124;
                    *v105 = v106;
                    v107 = ++v127;
                    if (v125[0])
                    {
                      v108 = *(v15 + 8 * v44);
                      LODWORD(v123) = 2;
                      *(&v123 + 1) = v108;
                      if (v107 >= v128)
                      {
                        if (v126 > &v123 || v126 + 24 * v107 <= &v123)
                        {
                          llvm::SmallVectorBase<unsigned int>::grow_pod();
                        }

                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      v109 = v126 + 24 * v127;
                      v110 = v123;
                      *(v109 + 2) = v124;
                      *v109 = v110;
                      ++v127;
                    }
                  }
                }
              }
            }
          }

          v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
          if (v125[0])
          {
            mlir::InFlightDiagnostic::report(v125);
          }

          if (v135 != 1)
          {
            return v31;
          }

          if (v134 != &v135)
          {
            free(v134);
          }

          v111 = __p;
          if (__p)
          {
            v112 = v133;
            v113 = __p;
            if (v133 != __p)
            {
              do
              {
                v112 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v112 - 1);
              }

              while (v112 != v111);
              v113 = __p;
            }

            v133 = v111;
            operator delete(v113);
          }

          v35 = v130;
          if (!v130)
          {
            goto LABEL_143;
          }

          v114 = v131;
          v37 = v130;
          if (v131 == v130)
          {
            goto LABEL_142;
          }

          do
          {
            v116 = *--v114;
            v115 = v116;
            *v114 = 0;
            if (v116)
            {
              MEMORY[0x259C63150](v115, 0x1000C8077774924);
            }
          }

          while (v114 != v35);
LABEL_141:
          v37 = v130;
          goto LABEL_142;
        }
      }

      else if (*(v43 + 8 * v44) != *(v45 + 8 + 8 * v44))
      {
        v121 = 257;
        v46 = v43;
        mlir::OpState::emitError(this, v120, v125);
        if (v125[0])
        {
          LODWORD(v123) = 3;
          *(&v123 + 1) = "output shape[";
          v124 = 13;
          if (v127 >= v128)
          {
            if (v126 > &v123 || v126 + 24 * v127 <= &v123)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v47 = v126 + 24 * v127;
          v48 = v123;
          *(v47 + 2) = v124;
          *v47 = v48;
          v49 = ++v127;
          if (v125[0])
          {
            LODWORD(v123) = 2;
            *(&v123 + 1) = v44;
            if (v49 >= v128)
            {
              if (v126 > &v123 || v126 + 24 * v49 <= &v123)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v50 = v126 + 24 * v127;
            v51 = v123;
            *(v50 + 2) = v124;
            *v50 = v51;
            v52 = ++v127;
            if (v125[0])
            {
              LODWORD(v123) = 3;
              *(&v123 + 1) = "] is ";
              v124 = 5;
              if (v52 >= v128)
              {
                if (v126 > &v123 || v126 + 24 * v52 <= &v123)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v53 = v126 + 24 * v127;
              v54 = v123;
              *(v53 + 2) = v124;
              *v53 = v54;
              v55 = ++v127;
              if (v125[0])
              {
                v56 = *(v46 + 8 * v44);
                LODWORD(v123) = 2;
                *(&v123 + 1) = v56;
                if (v55 >= v128)
                {
                  if (v126 > &v123 || v126 + 24 * v55 <= &v123)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v57 = v126 + 24 * v127;
                v58 = v123;
                *(v57 + 2) = v124;
                *v57 = v58;
                v59 = ++v127;
                if (v125[0])
                {
                  LODWORD(v123) = 3;
                  *(&v123 + 1) = " expect it to be ";
                  v124 = 17;
                  if (v59 >= v128)
                  {
                    if (v126 > &v123 || v126 + 24 * v59 <= &v123)
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  v60 = v126 + 24 * v127;
                  v61 = v123;
                  *(v60 + 2) = v124;
                  *v60 = v61;
                  v62 = ++v127;
                  if (v125[0])
                  {
                    v63 = *(v45 + 8 + 8 * v44);
                    LODWORD(v123) = 2;
                    *(&v123 + 1) = v63;
                    if (v62 >= v128)
                    {
                      if (v126 > &v123 || v126 + 24 * v62 <= &v123)
                      {
                        llvm::SmallVectorBase<unsigned int>::grow_pod();
                      }

                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v64 = v126 + 24 * v127;
                    v65 = v123;
                    *(v64 + 2) = v124;
                    *v64 = v65;
                    ++v127;
                  }
                }
              }
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v125);
        if (v125[0])
        {
          mlir::InFlightDiagnostic::report(v125);
        }

        if (v135)
        {
          if (v134 != &v135)
          {
            free(v134);
          }

          v66 = __p;
          if (__p)
          {
            v67 = v133;
            v68 = __p;
            if (v133 != __p)
            {
              do
              {
                v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
              }

              while (v67 != v66);
              v68 = __p;
            }

            v133 = v66;
            operator delete(v68);
          }

          v69 = v130;
          if (v130)
          {
            v70 = v131;
            v71 = v130;
            if (v131 != v130)
            {
              do
              {
                v90 = *--v70;
                v89 = v90;
                *v70 = 0;
                if (v90)
                {
                  MEMORY[0x259C63150](v89, 0x1000C8077774924);
                }
              }

              while (v70 != v69);
              v71 = v130;
            }

            v131 = v69;
            operator delete(v71);
          }

          v117 = v126;
          if (v126 != v129)
          {
            goto LABEL_144;
          }
        }

        return v31;
      }

      ++v44;
    }

    while (v42 != v44);
  }

  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 56);
  v15 = 0;
  *&v16 = &v15;
  *&v11 = v2;
  result = mlir::Value::getDefiningOp(&v11);
  if (result)
  {
    if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v16, result))
    {
      return 0;
    }

    v14 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v15, &v11);
    mlir::TensorType::getShape(&v14);
    if (v4 < 1)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    v5 = 0;
    while (1)
    {
      v16 = v11;
      v17 = v5 + v12;
      v18 = v13;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v16, &v9);
      if (v10 > 0x40)
      {
        v6 = *v9;
        MEMORY[0x259C63150]();
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        if (v10)
        {
          v8 = (v9 << -v10) >> -v10;
        }

        else
        {
          v8 = 0;
        }

        if (v5 != v8)
        {
          return 0;
        }
      }

      ++v5;
      mlir::TensorType::getShape(&v14);
      if (v7 <= v5)
      {
        return *(*(*a1 + 72) + 24) | 4;
      }
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verify(mlir::Operation **this)
{
  v76[6] = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 9) + 56);
  v74 = 0;
  v54[0] = &v74;
  __src = v2;
  DefiningOp = mlir::Value::getDefiningOp(&__src);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v54, DefiningOp))
  {
    return 1;
  }

  v4 = *this;
  v57 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v56 = *(v4 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v57))
  {
    return 1;
  }

  Shape = mlir::TensorType::getShape(&v57);
  if (v6)
  {
    v7 = 8 * v6;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if (!mlir::TensorType::hasRank(&v56))
  {
    return 1;
  }

  v8 = mlir::TensorType::getShape(&v56);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  mlir::ODIE::Compiler::extract1DIntVector<int>(v2, &__src);
  if ((v67 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
    goto LABEL_102;
  }

  v74 = v76;
  v75 = 0xC00000000;
  v11 = v61;
  if (v61)
  {
    if (__src == &v62)
    {
      if (v61 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v74, __src, 4 * v61);
      LODWORD(v75) = v11;
      LODWORD(v61) = 0;
      if ((v67 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v74 = __src;
      v75 = v61;
      __src = &v62;
      v61 = 0;
    }
  }

  if (__src != &v62)
  {
    free(__src);
  }

LABEL_24:
  v13 = mlir::TensorType::getShape(&v57);
  mlir::TensorType::getShape(&v57);
  v15 = v14;
  v16 = mlir::TensorType::getShape(&v56);
  if (!v75)
  {
LABEL_30:
    result = 1;
    goto LABEL_81;
  }

  v17 = 0;
  v18 = v74;
  v19 = 4 * v75;
  while (1)
  {
    v20 = v74[v17];
    if ((v20 & 0x80000000) != 0 || v15 <= v20)
    {
      break;
    }

    if (*(v13 + 8 * v20) != *(v16 + 8 * v17))
    {
      v55 = 257;
      mlir::OpState::emitError(this, v54, &__src);
      if (__src)
      {
        LODWORD(v58) = 3;
        *(&v58 + 1) = "mismatch in result shape and permutation. resultShape[";
        v59 = 54;
        if (v64 >= v65)
        {
          if (v63 > &v58 || v63 + 24 * v64 <= &v58)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v63 + 24 * v64;
        v36 = v58;
        *(v35 + 2) = v59;
        *v35 = v36;
        v37 = ++v64;
        if (__src)
        {
          LODWORD(v58) = 5;
          *(&v58 + 1) = v17;
          if (v37 >= v65)
          {
            if (v63 > &v58 || v63 + 24 * v37 <= &v58)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v38 = v63 + 24 * v64;
          v39 = v58;
          *(v38 + 2) = v59;
          *v38 = v39;
          v40 = ++v64;
          if (__src)
          {
            LODWORD(v58) = 3;
            *(&v58 + 1) = "] is expected to be ";
            v59 = 20;
            if (v40 >= v65)
            {
              if (v63 > &v58 || v63 + 24 * v40 <= &v58)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v41 = v63 + 24 * v64;
            v42 = v58;
            *(v41 + 2) = v59;
            *v41 = v42;
            v43 = ++v64;
            if (__src)
            {
              v44 = *(v13 + 8 * v18[v17]);
              LODWORD(v58) = 2;
              *(&v58 + 1) = v44;
              if (v43 >= v65)
              {
                if (v63 > &v58 || v63 + 24 * v43 <= &v58)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v45 = v63 + 24 * v64;
              v46 = v58;
              *(v45 + 2) = v59;
              *v45 = v46;
              ++v64;
            }
          }
        }
      }

      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
      v26 = result;
      if (__src)
      {
        mlir::InFlightDiagnostic::report(&__src);
        result = v26;
      }

      if (v73 == 1)
      {
        if (v72 != &v73)
        {
          free(v72);
          result = v26;
        }

        v47 = __p;
        if (__p)
        {
          v48 = v71;
          v49 = __p;
          if (v71 != __p)
          {
            do
            {
              v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
            }

            while (v48 != v47);
            v49 = __p;
          }

          v71 = v47;
          operator delete(v49);
          result = v26;
        }

        v30 = v68;
        if (v68)
        {
          v50 = v69;
          v32 = v68;
          if (v69 != v68)
          {
            do
            {
              v52 = *--v50;
              v51 = v52;
              *v50 = 0;
              if (v52)
              {
                MEMORY[0x259C63150](v51, 0x1000C8077774924);
              }
            }

            while (v50 != v30);
            goto LABEL_77;
          }

          goto LABEL_78;
        }

        goto LABEL_79;
      }

      goto LABEL_81;
    }

    ++v17;
    v19 -= 4;
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  v55 = 257;
  mlir::OpState::emitError(this, v54, &__src);
  if (!__src)
  {
    goto LABEL_36;
  }

  LODWORD(v58) = 3;
  *(&v58 + 1) = "permutation must only hold values between 0 and ";
  v59 = 48;
  if (v64 >= v65)
  {
    if (v63 > &v58 || v63 + 24 * v64 <= &v58)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_102:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v63 + 24 * v64;
  v22 = v58;
  *(v21 + 2) = v59;
  *v21 = v22;
  v23 = ++v64;
  if (__src)
  {
    LODWORD(v58) = 2;
    *(&v58 + 1) = v15 - 1;
    if (v23 >= v65)
    {
      if (v63 > &v58 || v63 + 24 * v23 <= &v58)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = v63 + 24 * v64;
    v25 = v58;
    *(v24 + 2) = v59;
    *v24 = v25;
    ++v64;
  }

LABEL_36:
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
  v26 = result;
  if (__src)
  {
    mlir::InFlightDiagnostic::report(&__src);
    result = v26;
  }

  if (v73 == 1)
  {
    if (v72 != &v73)
    {
      free(v72);
      result = v26;
    }

    v27 = __p;
    if (__p)
    {
      v28 = v71;
      v29 = __p;
      if (v71 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v71 = v27;
      operator delete(v29);
      result = v26;
    }

    v30 = v68;
    if (v68)
    {
      v31 = v69;
      v32 = v68;
      if (v69 != v68)
      {
        do
        {
          v34 = *--v31;
          v33 = v34;
          *v31 = 0;
          if (v34)
          {
            MEMORY[0x259C63150](v33, 0x1000C8077774924);
          }
        }

        while (v31 != v30);
LABEL_77:
        v32 = v68;
      }

LABEL_78:
      v69 = v30;
      operator delete(v32);
      result = v26;
    }

LABEL_79:
    if (v63 != &v66)
    {
      free(v63);
      result = v26;
    }
  }

LABEL_81:
  if (v74 != v76)
  {
    v53 = result;
    free(v74);
    return v53;
  }

  return result;
}