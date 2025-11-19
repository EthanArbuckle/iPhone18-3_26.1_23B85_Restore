BOOL mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(a2);
  result = 0;
  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1))
  {
    v4 = (*(*a1 + 24))(a1, "coreml", 6);
    if ((v5 & 1) == 0 || *(v4 + 8) < 4uLL || mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getInputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, uint64_t a2@<X8>)
{
  v36[6] = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(*this + 44);
  v7 = *(*this + 16 * ((v6 >> 23) & 1) + 64) != 0;
  v31 = *(*this + 16 * ((v6 >> 23) & 1) + 64);
  LOBYTE(v32) = v7;
  if ((v6 & 0x800000) != 0)
  {
    v8 = *(v5 + 68);
  }

  else
  {
    v8 = 0;
  }

  mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(&v34, &v31, v8);
  v9 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v10 = *(v9 + 72);
    v11 = *(v9 + 68);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v34;
  v13 = v35;
  v31 = v33;
  v32 = 0x600000000;
  if (!v35 || !v11)
  {
    *a2 = a2 + 16;
    *(a2 + 8) = 0x600000000;
    goto LABEL_30;
  }

  v14 = v11 - 1;
  v15 = (v35 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v14 < v15)
  {
    v15 = v14;
  }

  v30 = v15 + 1;
  if (v15 < 6)
  {
    v16 = 0;
    v17 = v33;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v31, v33, v15 + 1, 8);
    v16 = v32;
    v17 = v31;
  }

  v18 = 8 * v13;
  v19 = &v17[8 * v16];
  v20 = v18 - 8;
  v21 = v10 + 24;
  do
  {
    v22 = *(*(*(*v21 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v24 = 1;
    }

    else
    {
      v25 = *v12;
      if (*v12)
      {
        goto LABEL_23;
      }

      v24 = 3;
    }

    v25 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), v24);
LABEL_23:
    *v19++ = v25;
    v27 = v14-- != 0;
    if (!v20)
    {
      break;
    }

    ++v12;
    v20 -= 8;
    v21 += 32;
  }

  while (v27);
  v28 = v32;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  LODWORD(v32) = v28 + v30;
  if (v28 + v30)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v31);
  }

LABEL_30:
  *(a2 + 64) = 1;
  if (v31 != v33)
  {
    free(v31);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(void *a1, _BYTE *a2, unint64_t a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(a1, a3, 0);
  if (a3 && (a2[8] & 1) != 0)
  {
    v6 = 0;
    do
    {
      v7 = *(*(*a2 + 8) + 8 * v6);
      if (v7)
      {
        if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
        {
          v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(v7[1], v7[1] + 16 * v7[2], "coreml.intent", 0xDuLL);
          if (v9)
          {
            v10 = *(v8 + 8);
            if (v10)
            {
              if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::IntentAttr,void>::id)
              {
                *(*a1 + 8 * v6) = v10;
              }
            }
          }
        }
      }

      ++v6;
    }

    while (a3 != v6);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::DelegateOp *this@<X0>, void *a2@<X8>)
{
  v38[6] = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80) != 0;
  v33 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  LOBYTE(v34) = v6;
  mlir::ODIE::Compiler::CoreML::getIntentsFromAttrs(&v36, &v33, *(v5 + 36));
  v7 = *this;
  v8 = *(*this + 36);
  if (v8)
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = v37;
  v11 = v35;
  v32 = v36;
  v33 = v35;
  v34 = 0x600000000;
  if (!v37 || !v8)
  {
    *a2 = a2 + 2;
    a2[1] = 0x600000000;
    goto LABEL_32;
  }

  v12 = v8 - 1;
  v13 = (v37 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v12 < v13)
  {
    v13 = v12;
  }

  v31 = a2;
  v30 = v13 + 1;
  if (v13 < 6)
  {
    v14 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v35, v13 + 1, 8);
    v14 = v34;
    v11 = v33;
  }

  v15 = 0;
  v16 = &v11[8 * v14];
  v17 = 8 * v10 - 8;
  v18 = v9;
  do
  {
    v19 = v9;
    if (!v15)
    {
      goto LABEL_18;
    }

    v20 = *(v7 - 8) & 7;
    v21 = v9;
    v22 = v15;
    if (v20 != 6)
    {
      v23 = (5 - v20);
      v19 = v18;
      v22 = v15 - v23;
      if (v15 <= v23)
      {
        goto LABEL_18;
      }

      v21 = v9 - 16 * v23;
    }

    v19 = v21 - 24 * v22;
LABEL_18:
    v24 = *(*(*(v19 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    v25 = v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::HandleType,void>::id || v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id;
    if (v25)
    {
      v26 = 1;
LABEL_26:
      v27 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), v26);
      goto LABEL_27;
    }

    v27 = v32[v15];
    if (!v27)
    {
      v26 = 0;
      goto LABEL_26;
    }

LABEL_27:
    *&v16[8 * v15] = v27;
    if (!v17)
    {
      break;
    }

    v17 -= 8;
    v18 -= 16;
    v25 = v12 == v15++;
  }

  while (!v25);
  v28 = v34;
  a2 = v31;
  *v31 = v31 + 2;
  v31[1] = 0x600000000;
  LODWORD(v34) = v28 + v30;
  if (v28 + v30)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(v31, &v33);
  }

LABEL_32:
  *(a2 + 64) = 1;
  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::verify(mlir::ODIE::Compiler::CoreML::DelegateOp *this)
{
  v22[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 44);
  v4 = v2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 80);
  if (v5 && *(v5 + 16) != *(v2 + 36))
  {
    v20 = 257;
    mlir::Operation::emitError(&v21, v2, v19);
    if (v21)
    {
      mlir::Diagnostic::operator<<<34ul>(v22, "expected number of result attrs (");
    }

    v18 = *(v5 + 16);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v21, &v18);
    v10 = v9;
    if (*v9)
    {
      mlir::Diagnostic::operator<<<31ul>((v9 + 1), ") to match number of results (");
    }

    v11 = *(*this + 36);
  }

  else
  {
    v6 = *(v4 + 64);
    if (!v6 || ((v3 & 0x800000) == 0 ? (v7 = 0) : (v7 = *(v2 + 68)), *(v6 + 16) == v7))
    {
      v8 = 1;
      goto LABEL_22;
    }

    v20 = 257;
    mlir::Operation::emitError(&v21, v2, v19);
    if (v21)
    {
      mlir::Diagnostic::operator<<<36ul>(v22, "expected number of argument attrs (");
    }

    v18 = *(v6 + 16);
    v12 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v21, &v18);
    v10 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<32ul>((v12 + 1), ") to match number of operands (");
    }

    if ((*(*this + 46) & 0x80) != 0)
    {
      v11 = *(*this + 68);
    }

    else
    {
      v11 = 0;
    }
  }

  v17 = v11;
  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v10, &v17);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<2ul>((v13 + 1), ")");
  }

  v8 = *(v14 + 200) ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(a2);
  result = 0;
  if (mlir::DialectBytecodeReader::readAttribute<mlir::StringAttr>(a1, v3 + 1) && mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(a1, v3 + 3))
  {
    v4 = (*(*a1 + 24))(a1, "coreml", 6);
    if ((v5 & 1) == 0 || *(v4 + 8) < 4uLL || mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3 + 2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<signed char>>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if ((*(*a1 + 48))(a1, &v13))
  {
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v4 = v13[1], *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v4[2] == 8)
    {
      *a2 = v13;
      v5 = 1;
    }

    else
    {
      *a2 = 0;
      v12[16] = 257;
      (*(*a1 + 16))(&v17, a1, v12);
      if (v17)
      {
        mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1E3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E3C0))
      {
        qword_27FC1E3B0 = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<signed char>>();
        *algn_27FC1E3B8 = v11;
        __cxa_guard_release(&qword_27FC1E3C0);
      }

      if (v17)
      {
        v16 = 261;
        v14 = qword_27FC1E3B0;
        v15 = *algn_27FC1E3B8;
        mlir::Diagnostic::operator<<(v18, &v14);
        if (v17)
        {
          mlir::Diagnostic::operator<<<12ul>(v18, ", but got: ");
          if (v17)
          {
            LODWORD(v14) = 0;
            v15 = v13;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v14, 1);
            v7 = v19 + 24 * v20;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v20;
          }
        }
      }

      v5 = (v21 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::ODIE::Compiler::CoreML::DelegateOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 80);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verify(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v10 = *MEMORY[0x277D85DE8];
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  if (*(*(*v3)(v3, CalleeAttr) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SymbolType,void>::id)
  {
    v4 = 1;
  }

  else
  {
    v7[16] = 257;
    mlir::Operation::emitError(&v8, *this, v7);
    if (v8)
    {
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  v41[6] = *MEMORY[0x277D85DE8];
  ResolvedCallee = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this);
  if (!ResolvedCallee)
  {
    v12 = *mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v12 + 8, v13))
    {
      goto LABEL_10;
    }

    LOWORD(v34) = 257;
    mlir::Operation::emitError(&v35, *this, &v31);
    if (v35)
    {
      mlir::Diagnostic::operator<<<61ul>(v36, "expected a parameter attribute if the callee is not resolved");
    }

LABEL_22:
    v14 = (v38 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    goto LABEL_32;
  }

  v5 = ResolvedCallee;
  v6 = mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(this, a2);
  v7 = *this;
  if (!v6)
  {
    while (1)
    {
      v15 = *(v7 + 16);
      if (!v15)
      {
        break;
      }

      v16 = *(v15 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v16)
      {
        break;
      }

      v7 = *(v16 + 16);
      if (!v7 || *(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_19;
      }
    }

    v7 = 0;
LABEL_19:
    v17 = mlir::SymbolTableCollection::lookupSymbolIn(a2, v7, v5[1]);
    if (v17 && *(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
    {
      goto LABEL_10;
    }

    LOWORD(v34) = 259;
    mlir::Operation::emitOpError(*this, &v31, &v35);
    goto LABEL_22;
  }

  if (*(*(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 88) + 8))
  {
LABEL_10:
    v14 = 1;
    goto LABEL_32;
  }

  v29 = *this;
  v30 = v6;
  v8 = *(v6[2 * ((*(v6 + 11) >> 23) & 1) + 10] + 8);
  mlir::ODIE::Compiler::CoreML::detail::ParamScopeOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::FuncOp>::getAllParamDecls(&v30, &v39);
  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(&v29);
  if (*(*CalleeAttr + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    v18 = CalleeAttr;
    v19 = CalleeAttr[4];
    if (v19 != v40)
    {
      v23 = *(v29 + 24);
      v37 = 257;
      emitDiag(v23, 2, &v35, &v31);
      if (v31)
      {
        mlir::Diagnostic::operator<<<35ul>(v32, "not enough parameters provided by ");
        if (v31)
        {
          LODWORD(v35) = 0;
          v36[0] = v18;
          v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v35, 1);
          v25 = v33 + 24 * v34;
          v26 = *v24;
          *(v25 + 16) = *(v24 + 16);
          *v25 = v26;
          ++v34;
        }
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v35, &v31);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
      mlir::Diagnostic::attachNote(v36, v30[3], 1);
    }

    v20 = CalleeAttr[3];
    v21 = v30[3];
    v22 = *(v29 + 24);
    v35 = &v29;
    v36[0] = &v30;
    v14 = mlir::ODIE::Compiler::CoreML::verifyTypeMatchWithBinding(v21, v22, v39, v19, v20, v19, v8, v10, llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp>(mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp)::{lambda(mlir::Type)#1}>, &v35);
  }

  else
  {
    if (v40)
    {
      v11 = *(v29 + 24);
      v37 = 257;
      emitDiag(v11, 2, &v35, &v31);
      if (v31)
      {
        mlir::Diagnostic::operator<<<21ul>(v32, "no bindings provided");
      }

      mlir::InFlightDiagnostic::InFlightDiagnostic(&v35, &v31);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
      mlir::Diagnostic::attachNote(v36, v30[3], 1);
    }

    v14 = 1;
  }

  if (v39 != v41)
  {
    free(v39);
  }

LABEL_32:
  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t *mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::CallOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v2 = *(*result + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

void *mlir::ODIE::Compiler::CoreML::CallOp::lookupCallee(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::SymbolTableCollection *a2)
{
  result = mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this);
  if (result)
  {
    v5 = *this;
    if (!a2)
    {
      while (1)
      {
        v9 = *(v5 + 16);
        if (!v9)
        {
          break;
        }

        v8 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v8)
        {
          break;
        }

        v5 = *(v8 + 16);
        if (!v5 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
        {
          goto LABEL_13;
        }
      }

      v5 = 0;
LABEL_13:
      result = mlir::SymbolTable::lookupSymbolIn(v5, result);
      goto LABEL_16;
    }

    while (1)
    {
      v6 = *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = *(v6 + 24) & 0xFFFFFFFFFFFFFFF8;
      if (!v7)
      {
        break;
      }

      v5 = *(v7 + 16);
      if (!v5 || *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ModuleOp,void>::id)
      {
        goto LABEL_15;
      }
    }

    v5 = 0;
LABEL_15:
    result = mlir::SymbolTableCollection::lookupSymbolIn(a2, v5, result);
    if (result)
    {
LABEL_16:
      if (*(result[6] + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FuncOp,void>::id)
      {
        return 0;
      }
    }
  }

  return result;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::CallOp::print(mlir::ODIE::Compiler::CoreML::CallOp *this, mlir::OpAsmPrinter *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) + 8);
  if (v6)
  {
    v7 = (*(*a2 + 16))(a2);
    if (v6 > 3)
    {
      v9 = 0;
      v8 = &str_56;
    }

    else
    {
      v8 = off_2799BDB28[v6 - 1];
      v9 = 3;
    }

    llvm::raw_ostream::operator<<(v7, v8, v9);
    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) == v11)
    {
      llvm::raw_ostream::write(v10, " ", 1uLL);
    }

    else
    {
      *v11 = 32;
      ++*(v10 + 4);
    }
  }

  CalleeAttr = mlir::ODIE::Compiler::CoreML::CallOp::getCalleeAttr(this);
  v13 = CalleeAttr;
  v14 = *(*CalleeAttr + 136);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v13 = CalleeAttr[1];
  }

  else if (CalleeAttr && v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, CalleeAttr);
    goto LABEL_17;
  }

  (*(*a2 + 40))(a2, v13);
LABEL_17:
  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, "(", 1uLL);
  }

  else
  {
    *v16 = 40;
    ++*(v15 + 4);
  }

  v17 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v18 = *(v17 + 68);
    v19 = *(v17 + 72);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *&v39 = v19;
  *(&v39 + 1) = v18;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v39);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 1uLL)
  {
    *v21 = 8233;
    *(v20 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v20, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v23 = *(AttrDictionary + 8);
  v24 = *(AttrDictionary + 16);
  v25 = *(*(*this + 48) + 96);
  v26 = *(*(v25 + 16) + 16);
  v39 = *(*(v25 + 8) + 16);
  v40 = v26;
  (*(*a2 + 192))(a2, v23, v24, &v39, 2);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if ((*(v27 + 3) - v28) > 2)
  {
    *(v28 + 2) = 32;
    *v28 = 14880;
    *(v27 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v27, " : ", 3uLL);
  }

  v29 = *this;
  v30 = *(*this + 44);
  if ((v30 & 0x800000) != 0 && (v31 = *(v29 + 68), v31))
  {
    if ((*(v29 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v32 = *(v29 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v33 = *(v29 + 16 * ((v30 >> 23) & 1) + 64);
  v34 = *(v29 + 36);
  v35 = v29 - 16;
  if (!v34)
  {
    v35 = 0;
  }

  v39 = v35;
  *&v40 = v35;
  *(&v40 + 1) = v34;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v38, &v39);
  result = mlir::call_interface_impl::printFunctionSignature(a2, v32, v31, v33, 0, v38[0], v38[1], *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 96), 0, 1u);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = (*(*a1 + 16))(a1);
  if (v4)
  {
    v6 = result;
    result = (*(*a1 + 160))(a1, *(v3 + 24));
    v7 = v4 - 1;
    if (v7)
    {
      v8 = (v3 + 56);
      do
      {
        v9 = *(v6 + 4);
        if (*(v6 + 3) - v9 > 1uLL)
        {
          *v9 = 8236;
          *(v6 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v6, ", ", 2uLL);
        }

        v10 = *v8;
        v8 += 4;
        result = (*(*a1 + 160))(a1, v10);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::parse(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v31 = 0;
  v4 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 416))(a1, &v30))
  {
    v5 = mlir::ODIE::Compiler::CoreML::symbolizeComputeTarget(v30, v31);
    if ((v5 & 0x100000000) == 0)
    {
      v44 = 257;
      (*(*a1 + 24))(&__src, a1, v4, &v41);
      if (!__src)
      {
        goto LABEL_48;
      }

      mlir::Diagnostic::operator<<<40ul>(&v53, "could not symbolize the compute target ");
      if (!__src)
      {
        goto LABEL_48;
      }

      v48 = 261;
      v45 = v30;
      v46 = v31;
LABEL_47:
      mlir::Diagnostic::operator<<(&v53, &v45);
LABEL_48:
      v14 = (v55 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_49;
    }

    v6 = v5;
    if (v5 != 1)
    {
      v44 = 257;
      (*(*a1 + 24))(&__src, a1, v4, &v41);
      if (!__src)
      {
        goto LABEL_48;
      }

      mlir::Diagnostic::operator<<<41ul>(&v53, "cannot currently support compute target ");
      if (!__src)
      {
        goto LABEL_48;
      }

      if (v6 > 3)
      {
        v16 = 0;
        v17 = &str_56;
      }

      else
      {
        v15 = v6 & 3;
        v16 = *(&unk_25D09F698 + v15 * 8);
        v17 = (&off_2799BDB40)[v15];
      }

      v48 = 261;
      v45 = v17;
      v46 = v16;
      goto LABEL_47;
    }

    v7 = *(*(*(a2 + 8) + 96) + 16);
    v8 = (*(*a1 + 32))(a1);
    v9 = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(*v8, 1u);
    mlir::NamedAttrList::push_back(a2 + 112, v7, v9);
  }

  v28 = 0;
  v29 = 0;
  if ((*(*a1 + 160))(a1))
  {
    __src = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &__src) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v10 = __src;
      if (__src)
      {
        v11 = *__src;
        v12 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
      }

      else
      {
        v13 = 0;
      }

      v28 = v10;
      v29 = v13;
      goto LABEL_21;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_49;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v28) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v49 = v51;
  v50 = 0x100000000;
  __src = v54;
  v53 = 0x400000000;
  v54[8] = 4;
  v45 = v47;
  v46 = 0x600000000;
  v41 = v43;
  v42 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  v35 = v37;
  v36 = 0x600000000;
  if ((*(*a1 + 720))(a1, &v49, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, &__src) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(a1, &v45, &v38, &v41, &v35, 1))
  {
    v32 = v34;
    v33 = 0x600000000;
    if (v50 && v46)
    {
      v18 = v49;
      v19 = v45;
      v20 = 8 * v46 - 8;
      v21 = 32 * v50 - 32;
      while (((*(*a1 + 728))(a1, v18, *v19, &v32) & 1) != 0)
      {
        if (v21)
        {
          v18 += 32;
          ++v19;
          v22 = v20;
          v20 -= 8;
          v21 -= 32;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

      v14 = 0;
    }

    else
    {
LABEL_31:
      mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v28);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v32 & 0xFFFFFFFFFFFFFFF9, 0, v32 & 0xFFFFFFFFFFFFFFF9, v33);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, v41, v41 + 8 * v42);
      v23 = __src;
      v24 = __src + 16 * v53;
      *(a2 + 192) = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, v23, v24);
      v25 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v25, a2, v38, v39, v35, v36, **(*(a2 + 8) + 96), *(*(*(a2 + 8) + 96) + 24));
      v14 = 1;
    }

    if (v32 != v34)
    {
      free(v32);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (__src != v54)
  {
    free(__src);
  }

  if (v49 != v51)
  {
    free(v49);
  }

LABEL_49:
  v26 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getInputIntents@<X0>(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v10;
  }

  if (mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this) && (v6 = mlir::detail::CallOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallableInTable(this, v5)) != 0)
  {
    v7 = v6;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v6);
    (*InterfaceFor)(InterfaceFor, v7, v5);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v10);
  return MEMORY[0x25F891030](v10[0], 8);
}

void mlir::ODIE::Compiler::CoreML::CallOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::CallOp *this@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (*(*(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88) + 8))
  {
    v5 = *(v4 + 36);
    v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(v4 + 24) + 32), 0);
    v13 = v15;
    v14 = 0x600000000;
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::assign(&v13, v5, v6);
    *a3 = a3 + 16;
    *(a3 + 8) = 0x600000000;
    if (v14)
    {
      llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a3, &v13);
    }

    *(a3 + 64) = 1;
    if (v13 != v15)
    {
      free(v13);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15[0] = 0;
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = &v13;
    }

    if (mlir::ODIE::Compiler::CoreML::CallOp::getResolvedCallee(this) && (v9 = mlir::detail::CallOpInterfaceTrait<mlir::ODIE::Compiler::CoreML::CallOp>::resolveCallableInTable(this, v8)) != 0)
    {
      v10 = v9;
      InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
      (*(InterfaceFor + 8))(InterfaceFor, v10, v8);
    }

    else
    {
      *a3 = 0;
      *(a3 + 64) = 0;
    }

    llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(&v13);
    MEMORY[0x25F891030](v13, 8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(a2);
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if ((v5 & 1) == 0)
  {
    v10 = &unk_286E7A000;
    v11 = 0;
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
  }

  v6 = *(v4 + 8);
  v10 = &unk_286E7A000;
  v11 = v6;
  if (v6 <= 3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
  }

  if (v6 == 4)
  {
    if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)))
    {
      return 0;
    }

    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 32));
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)))
  {
    if (v11 == 6)
    {
      v9 = 0;
      if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, &v9))
      {
        return 0;
      }

      if (v9)
      {
        v8 = (*(*a1 + 32))(a1);
        *(v3 + 24) = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr::get(v8, 1u);
      }
    }

    else if (!mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>(a1, (v3 + 24)))
    {
      return 0;
    }

    if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3))
    {
      return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 32));
    }
  }

  return 0;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(uint64_t a1, uint64_t **a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    *a2 = v4;
    a2[1] = v5;
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::TypedAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypedAttr>();
        *algn_27FC173F8 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::TypedAttr>(void)::Name;
        v16 = *algn_27FC173F8;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr,void>::id)
    {
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1E400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E400))
      {
        qword_27FC1E3F0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>();
        *algn_27FC1E3F8 = v12;
        __cxa_guard_release(&qword_27FC1E400);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1E3F0;
        v16 = *algn_27FC1E3F8;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::writeProperties(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72));
  (*(*a2 + 16))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 88));
  (*(*a2 + 24))(a2, *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64));
  v4 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 96);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v39[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(a3);
  }

  else
  {
    InterfaceFor = 0;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    llvm::report_fatal_error("expected to be inserting into some kind of block", 1);
  }

  v12 = *(*(v7 + 16 * ((*(v7 + 44) >> 23) & 1) + 80) + 8);
  v13 = *(v12 + 12);
  v14 = *(v12 + 16) + 8 * *(v12 + 8);
  v15 = *(v11 + 32);
  if (v15 == v11 + 32)
  {
    v16 = *(v11 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v15 = *(v16 + 16);
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = v14 & 0xFFFFFFFFFFFFFFF9;
  v37 = v39;
  v38 = 0x600000000;
  if (v7)
  {
    v18 = *(InterfaceFor + 40);
    do
    {
      if (!(*v18)(v18, v7))
      {
        break;
      }

      if (!*((*v18)(v18, v7) + 24) || v7 == v15)
      {
        break;
      }

      v20 = v15;
      while (1)
      {
        v21 = *(v20 + 16);
        if (!v21)
        {
          break;
        }

        v22 = *(v21 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v22)
        {
          break;
        }

        v20 = *(v22 + 16);
        if (v20 == v7 || v20 == 0)
        {
          if (v20)
          {
            goto LABEL_26;
          }

          break;
        }
      }

      v24 = (*v18)(v18, v7);
      v26 = mlir::SymbolRefAttr::get(v24, 0, 0, v25);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v37, v26);
      v7 = mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(v7, v27);
      v18 = v28;
    }

    while (v7);
LABEL_26:
    v29 = v37;
    v30 = v38;
  }

  else
  {
    v30 = 0;
    v29 = v39;
  }

  v34 = v36;
  v35 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<std::reverse_iterator<mlir::FlatSymbolRefAttr*>,void>(&v34, &v29[v30], &v29[v30], v29, v29);
  v32 = mlir::SymbolRefAttr::get(*(*v34 + 8), v34 + 2, v35 - 1, v31);
  mlir::ODIE::Compiler::CoreML::InvokeOp::build(v32, a2, v32, v17 | 2, v13, a4, a5);
  if (v34 != v36)
  {
    free(v34);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::parse(uint64_t a1, uint64_t a2)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  if ((*(*a1 + 160))(a1))
  {
    v36 = 0;
    if (mlir::AsmParser::parseAttribute<mlir::ODIE::Compiler::CoreML::ParamBindAttr>(a1, &v36) && ((*(*a1 + 168))(a1) & 1) != 0)
    {
      v4 = v36;
      if (v36)
      {
        v5 = *v36;
        v6 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
      }

      else
      {
        v7 = 0;
      }

      v19 = v4;
      v20 = v7;
      goto LABEL_10;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_34;
  }

  if ((mlir::ODIE::Compiler::CoreML::parsePrettyBindAttr(a1, &v19) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v40 = 0x100000000;
  v36 = v38;
  v37 = 0x400000000;
  v38[8] = 4;
  v39 = v41;
  v33 = v35;
  v34 = 0x600000000;
  __src = v32;
  v31 = 0x600000000;
  v27 = v29;
  v28 = 0x600000000;
  v24 = v26;
  v25 = 0x600000000;
  if ((*(*a1 + 720))(a1, &v39, 1, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*a1 + 488))(a1, &v36) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (mlir::call_interface_impl::parseFunctionSignature(a1, &v33, &v27, &__src, &v24, 1))
  {
    v21 = v23;
    v22 = 0x600000000;
    if (v40 && v34)
    {
      v9 = v39;
      v10 = v33;
      v11 = 8 * v34 - 8;
      v12 = 32 * v40 - 32;
      while (((*(*a1 + 728))(a1, v9, *v10, &v21) & 1) != 0)
      {
        if (v12)
        {
          v9 += 32;
          ++v10;
          v13 = v11;
          v11 -= 8;
          v12 -= 32;
          if (v13)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      v8 = 0;
    }

    else
    {
LABEL_20:
      mlir::NamedAttrList::push_back(a2 + 112, *(*(*(a2 + 8) + 96) + 8), v19);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v21 & 0xFFFFFFFFFFFFFFF9, 0, v21 & 0xFFFFFFFFFFFFFFF9, v22);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v31);
      v14 = v36;
      v15 = &v36[2 * v37];
      *(a2 + 192) = 0;
      llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, v14, v15);
      v16 = (*(*a1 + 32))(a1);
      mlir::call_interface_impl::addArgAndResultAttrs(v16, a2, v27, v28, v24, v25, **(*(a2 + 8) + 96), *(*(*(a2 + 8) + 96) + 16));
      v8 = 1;
    }

    if (v21 != v23)
    {
      free(v21);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (__src != v32)
  {
    free(__src);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v39 != v41)
  {
    free(v39);
  }

LABEL_34:
  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

llvm::raw_ostream *mlir::ODIE::Compiler::CoreML::InvokeOp::print(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::OpAsmPrinter *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
  v7 = CalleeAttr;
  v8 = *(*CalleeAttr + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v7 = CalleeAttr[1];
  }

  else if (CalleeAttr && v8 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    mlir::ODIE::Compiler::CoreML::prettyPrintBindAttr(a2, CalleeAttr);
    goto LABEL_10;
  }

  (*(*a2 + 40))(a2, v7);
LABEL_10:
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, "(", 1uLL);
  }

  else
  {
    *v10 = 40;
    ++*(v9 + 4);
  }

  v11 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v12 = *(v11 + 68);
    v13 = *(v11 + 72);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *&v30 = v13;
  *(&v30 + 1) = v12;
  mlir::OpAsmPrinter::printOperands<mlir::OperandRange>(a2, &v30);
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) - v15 > 1uLL)
  {
    *v15 = 8233;
    *(v14 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, ") ", 2uLL);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v17 = *(AttrDictionary + 8);
  v18 = *(AttrDictionary + 16);
  v30 = *(*(*(*(*this + 48) + 96) + 8) + 16);
  (*(*a2 + 192))(a2, v17, v18, &v30, 1);
  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if ((*(v19 + 3) - v20) > 2)
  {
    *(v20 + 2) = 32;
    *v20 = 14880;
    *(v19 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v19, " : ", 3uLL);
  }

  v21 = *this;
  v22 = *(*this + 44);
  if ((v22 & 0x800000) != 0 && (v23 = *(v21 + 68), v23))
  {
    if ((*(v21 + 72) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v24 = *(v21 + 72) & 0xFFFFFFFFFFFFFFF8 | 4;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v21 + 16 * ((v22 >> 23) & 1) + 64);
  v26 = *(v21 + 36);
  v27 = v21 - 16;
  if (!v26)
  {
    v27 = 0;
  }

  v30 = v27;
  v31 = v27;
  v32 = v26;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v33, &v30);
  result = mlir::call_interface_impl::printFunctionSignature(a2, v24, v23, v25, 0, v33[0], v33[1], *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 88), 0, 1u);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(a2);
  v4 = (*(*a1 + 24))(a1, "coreml", 6);
  if ((v5 & 1) == 0)
  {
    v13 = &unk_286E7A000;
    v14 = 0;
LABEL_8:
    v12 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(a1, &v12))
    {
      v7 = mlir::ODIE::Compiler::CoreML::ParamConstantAttr::get(v12);
      v8 = v7;
      if (v7)
      {
        v9 = *v7;
        v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
        v7 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
      }

      *(v3 + 8) = v8;
      *(v3 + 16) = v7;
      return 1;
    }

    return 0;
  }

  v6 = *(v4 + 8);
  v13 = &unk_286E7A000;
  v14 = v6;
  if (v6 >= 5)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8)) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, v3) && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::ArrayAttr>(a1, (v3 + 24));
  }

  if (v6 - 3 > 1)
  {
    goto LABEL_8;
  }

  return mlir::DialectBytecodeReader::readAttribute<mlir::TypedAttr>(a1, (v3 + 8));
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::SymbolRefAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
    {
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::SymbolRefAttr>();
        unk_27FC18830 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::SymbolRefAttr>(void)::Name;
        v16 = unk_27FC18830;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[9]);
  (*(*a2 + 24))(a2, v3[8]);
  v4 = v3[11];
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t *mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this)
{
  result = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
  v2 = *(*result + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamBindAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    result = result[1];
    v2 = *(*result + 136);
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    return 0;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(mlir::SymbolOpInterface **a1, mlir::SymbolOpInterface *a2)
{
  v2 = a2;
  v27[6] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x600000000;
  v4 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(a2, a2);
  if (v4)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      if (!(*v7)(v7, v6))
      {
        break;
      }

      if (!*((*v7)(v7, v6) + 24))
      {
        break;
      }

      v8 = *a1;
      if (v2 == *a1)
      {
        break;
      }

      while (1)
      {
        v9 = *(v8 + 2);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + 24) & 0xFFFFFFFFFFFFFFF8;
        if (!v10)
        {
          break;
        }

        v8 = *(v10 + 16);
        if (v8 == v2 || v8 == 0)
        {
          if (v8)
          {
            goto LABEL_19;
          }

          break;
        }
      }

      v12 = (*v7)(v7, v6);
      v14 = mlir::SymbolRefAttr::get(v12, 0, 0, v13);
      llvm::SmallVectorTemplateBase<mlir::FlatSymbolRefAttr,true>::push_back(&v25, v14);
      v16 = *(v6 + 16);
      if (v16 && (v17 = *(v16 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v2 = *(v17 + 16);
      }

      else
      {
        v2 = 0;
      }

      v6 = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(v2, v15);
      v7 = v18;
    }

    while (v6);
  }

LABEL_19:
  v22 = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<mlir::FlatSymbolRefAttr>::append<std::reverse_iterator<mlir::FlatSymbolRefAttr*>,void>(&v22, v25 + 8 * v26, v25 + 8 * v26, v25, v25);
  v20 = mlir::SymbolRefAttr::get(*(*v22 + 8), v22 + 2, v23 - 1, v19);
  mlir::ODIE::Compiler::CoreML::InvokeOp::setCalleeFromCallable(a1, v20 & 0xFFFFFFFFFFFFFFFBLL);
  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void *mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  result = mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(this);
  if (result)
  {
    v5 = result;
    result = mlir::ODIE::Compiler::CoreML::resolveSymbol(a2, *this, result);
    if (!result)
    {
      v7 = *this;
      v8 = mlir::SymbolRefAttr::get(v5[1], 0, 0, v6);

      return mlir::ODIE::Compiler::CoreML::resolveSymbol(a2, v7, v8);
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::resolveSymbol(uint64_t a1, uint64_t a2, void *a3)
{
  do
  {
    result = mlir::Operation::getParentWithTrait<mlir::OpTrait::SymbolTable>(a2);
    if (!result)
    {
      break;
    }

    a2 = result;
    result = mlir::SymbolTableCollection::lookupSymbolIn(a1, result, a3);
  }

  while (!result);
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::verifySymbolUses(mlir::ODIE::Compiler::CoreML::InvokeOp *this, mlir::SymbolTableCollection *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!mlir::ODIE::Compiler::CoreML::InvokeOp::getResolvedCallee(this))
  {
    v12 = *mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
    v13 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v12 + 8, v13))
    {
      goto LABEL_13;
    }
  }

  v4 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, a2);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = *(v4[6] + 16);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v20 = v6;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GraphOp,void>::id)
  {
    v11 = mlir::ODIE::Compiler::CoreML::GraphOp::verifySufficientMatch(&v20, *this);
    goto LABEL_15;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ImportOp,void>::id)
  {
LABEL_13:
    v11 = 1;
  }

  else
  {
LABEL_8:
    v16 = "could not resolve the callee ";
    v17 = 259;
    mlir::Operation::emitOpError(*this, &v16, &v20);
    CalleeAttr = mlir::ODIE::Compiler::CoreML::InvokeOp::getCalleeAttr(this);
    if (v20)
    {
      v18 = 0;
      v19 = CalleeAttr;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
      v9 = v22 + 24 * v23;
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++v23;
      if (v20)
      {
      }
    }

    v11 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getInputIntents@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v9;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    (*InterfaceFor)(InterfaceFor, v6, v4);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v9);
  return MEMORY[0x25F891030](v9[0], 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::InvokeOp::getOutputIntents@<X0>(mlir::ODIE::Compiler::CoreML::InvokeOp *this@<X0>, mlir::SymbolTableCollection *a2@<X1>, _BYTE *a3@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v9;
  }

  v5 = mlir::ODIE::Compiler::CoreML::InvokeOp::resolveCallee(this, v4);
  if (v5)
  {
    v6 = v5;
    InterfaceFor = mlir::OpInterface<mlir::ODIE::Compiler::CoreML::IntentProviderOpInterface,mlir::ODIE::Compiler::CoreML::detail::IntentProviderOpInterfaceInterfaceTraits>::getInterfaceFor(v5);
    (*(InterfaceFor + 8))(InterfaceFor, v6, v4);
  }

  else
  {
    *a3 = 0;
    a3[64] = 0;
  }

  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>,mlir::Operation *,std::unique_ptr<mlir::SymbolTable>,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,std::unique_ptr<mlir::SymbolTable>>>::destroyAll(v9);
  return MEMORY[0x25F891030](v9[0], 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v34[8] = *MEMORY[0x277D85DE8];
  Attr = mlir::Operation::getAttr(a1, "coreml.keep_placeholder", 0x17uLL);
  if (Attr && *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v18 = *(a1 + 24);
    v23[0] = "coreml.keep_placeholder requested";
    v25 = 259;
    v20[0] = v23;
    v17 = *(a2 + 16);
    if (!v17 || v17[2] != 1)
    {
      goto LABEL_16;
    }

LABEL_15:
    (*(*v17 + 88))(v17);
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v5 = *(a1 + 16 * ((*(a1 + 44) >> 23) & 1) + 64);
  mlir::OperationName::OperationName(v22, *(v5 + 16), *(v5 + 24), *(a2 + 8));
  if (*(v22[0] + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v15 = *(a1 + 24);
    v21 = 1283;
    v20[0] = "dialect ";
    v20[2] = mlir::OperationName::getDialectNamespace(v22);
    v20[3] = v16;
    v23[0] = v20;
    v24[0] = " is not registered";
    v25 = 770;
    v22[1] = v23;
    v17 = *(a2 + 16);
    if (!v17 || v17[2] != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v23[0] = *(a1 + 24);
  v23[1] = v22[0];
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = &v27;
  v26[1] = 0x400000000;
  v28[0] = &v29;
  v28[1] = 0x400000000;
  v30 = 4;
  v31 = v33;
  v32 = 0x100000000;
  v33[1] = v34;
  v33[2] = 0x100000000;
  v34[1] = 0;
  v34[2] = 0;
  v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v34[4] = 0;
  v34[6] = 0;
  AttrDictionary = mlir::Operation::getAttrDictionary(a1);
  v7 = *(AttrDictionary + 8);
  v8 = &v7[16 * *(AttrDictionary + 16)];
  v30 = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(v28, v7, v8);
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v9 = *(a1 + 68);
    v10 = *(a1 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v9 = 0;
    v10 = 2;
  }

  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v24, v10, 0, v10, v9);
  v11 = *(a1 + 36);
  if (v11)
  {
    v12 = a1 - 16;
  }

  else
  {
    v12 = 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(v26, v12, 0, v12, v11);
  v13 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert((a2 + 8), v13);
  (*(*a2 + 8))(a2, a1, v13);
  mlir::OperationState::~OperationState(v23);
  result = 1;
LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::PointerIndexOp::verify(mlir::ODIE::Compiler::CoreML::PointerIndexOp *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(v2 + 36))
  {
    v3 = v2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if ((*(v3 + 8) ^ *(*(*(v2 + 72) + 24) + 8)) >= 8)
  {
    v17 = 257;
    mlir::Operation::emitError(&v20, v2, v16);
    if (v20)
    {
      mlir::Diagnostic::operator<<<26ul>(v21, "expected pointer operand ");
      if (v20)
      {
        v5 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
        v18 = 4;
        v19 = v5;
        v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v7 = v22 + 24 * v23;
        v8 = *v6;
        *(v7 + 16) = *(v6 + 16);
        *v7 = v8;
        ++v23;
        if (v20)
        {
          mlir::Diagnostic::operator<<<13ul>(v21, " and result ");
          if (v20)
          {
            v9 = *this - 16;
            if (!*(*this + 36))
            {
              v9 = 0;
            }

            v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
            v18 = 4;
            v19 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
            v12 = v22 + 24 * v23;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v23;
            if (v20)
            {
              mlir::Diagnostic::operator<<<23ul>(v21, " to have the same type");
            }
          }
        }
      }
    }

    v4 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  else
  {
    v4 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::PointerIndexOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SplitOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72[2] = *MEMORY[0x277D85DE8];
  v72[0] = a4;
  v72[1] = a5;
  if (a5 != 3)
  {
    v14 = *MEMORY[0x277D85DE8];
    v15 = "expected exactly 2 operands for split op";
    v16 = a2;
    v17 = a3;

    return mlir::emitOptionalError<char const(&)[41]>(v16, v17, v15);
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2 && v13)
    {
      v13 = v13[3];
    }
  }

  else
  {
    v13 = *v13;
  }

  v19 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
  if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v20 = *MEMORY[0x277D85DE8];

    return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
  }

  v21 = v19[1];
  v22 = &v21[8 * v19[2]];
  v70[0] = v71;
  v70[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v70, v21, v22);
  v23 = v19[2];
  v24 = mlir::ValueRange::dereference_iterator(v72, 1);
  v25 = (*(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v27 = v24;
    v28 = v25[2];
    v66 = 0;
    v67 = 0;
    v63 = &v66;
    if ((~*(v24 + 8) & 7) != 0)
    {
      v29 = v24;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16);
      v32 = v31 + 120;
      if (v31 == -120)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v32 = v29 + 16 * v30 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v63, v32))
    {
LABEL_33:
      v26 = mlir::emitOptionalError<char const(&)[43]>(a2, a3, "split_size_or_sections must be a constant.");
      goto LABEL_53;
    }

    v33 = mlir::ValueRange::dereference_iterator(v72, 2);
    v66 = 0;
    v67 = 0;
    v63 = &v66;
    if ((~*(v33 + 8) & 7) != 0)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_52;
    }

    v35 = v33;
    v36 = *(v34 + 8) & 7;
    if (v36 == 6)
    {
      v37 = v34 + 24 * *(v34 + 16);
      v38 = v37 + 120;
      if (v37 == -120)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v38 = v34 + 16 * v36 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v63, v38))
    {
LABEL_52:
      v26 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "dim must be a constant.");
      goto LABEL_53;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v35, &v66);
    if (v69)
    {
      v39 = *v66;
      if (v66 != v68)
      {
        free(v66);
      }

      v40 = (v23 & (v39 >> 31)) + v39;
      if ((v40 & 0x80000000) != 0 || v23 <= v40)
      {
        v26 = mlir::emitOptionalError<char const(&)[12]>(a2, a3);
        goto LABEL_53;
      }

      v41 = *(v70[0] + v40);
      v63 = v65;
      v64 = 0x600000000;
      if (v28 == 1)
      {
        mlir::ODIE::Compiler::extract1DIntVector<int>(v27, &v66);
        if (v69)
        {
          *&v61 = v62;
          *(&v61 + 1) = 0xC00000000;
          if (!v67 || (llvm::SmallVectorImpl<int>::operator=(&v61, &v66), (v69 & 1) != 0))
          {
            if (v66 != v68)
            {
              free(v66);
            }
          }

          if (DWORD2(v61))
          {
            LODWORD(v46) = 0;
            v47 = v61;
            v48 = 4 * DWORD2(v61);
            while (1)
            {
              v49 = *v47;
              if ((v49 & 0x80000000) != 0)
              {
                break;
              }

              v46 = (v49 + v46);
              llvm::SmallVectorTemplateBase<long long,true>::push_back(&v63, v49);
              ++v47;
              v48 -= 4;
              if (!v48)
              {
                goto LABEL_72;
              }
            }

            v44 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "split sections must be positive numbers.");
            v51 = 0;
          }

          else
          {
            v46 = 0;
LABEL_72:
            v44 = 0;
            v51 = v41 == v46;
          }

          if (v61 != v62)
          {
            free(v61);
          }

          if (!v51)
          {
            goto LABEL_83;
          }

          goto LABEL_77;
        }
      }

      else
      {
        if (v28)
        {
          v50 = mlir::emitOptionalError<char const(&)[52]>(a2, a3);
          goto LABEL_70;
        }

        mlir::ODIE::Compiler::extract1DIntVector<int>(v27, &v66);
        if (v69)
        {
          v42 = *v66;
          if (v66 != v68)
          {
            free(v66);
          }

          if (v42 >= 1)
          {
            if (v41 / v42 >= 1)
            {
              v43 = v41 / v42;
              do
              {
                llvm::SmallVectorTemplateBase<long long,true>::push_back(&v63, v42);
                --v43;
              }

              while (v43);
            }

            if (v41 % v42 > 0)
            {
              llvm::SmallVectorTemplateBase<long long,true>::push_back(&v63, v41 % v42);
            }

LABEL_77:
            if (v64)
            {
              v52 = v63;
              v53 = 8 * v64;
              do
              {
                v54 = v19[1];
                v55 = &v54[8 * v19[2]];
                v66 = v68;
                v67 = 0x600000000;
                llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v66, v54, v55);
                v56 = v66;
                *(v66 + v40) = *v52;
                v57 = v19[3];
                *&v61 = v56;
                *(&v61 + 1) = v67;
                v59 = 0;
                v60 = v57;
                v58 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v57 + 32), &v61, &v60, &v59);
                llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v58);
                if (v66 != v68)
                {
                  free(v66);
                }

                ++v52;
                v53 -= 8;
              }

              while (v53);
            }

            v44 = 1;
            goto LABEL_83;
          }

          v50 = mlir::emitOptionalError<char const(&)[24]>(a2, a3, "split size must be >= 1");
LABEL_70:
          v44 = v50;
LABEL_83:
          if (v63 != v65)
          {
            free(v63);
          }

          goto LABEL_54;
        }
      }
    }

    v16 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::emitOptionalError<char const(&)[41]>(v16, v17, v15);
  }

  v26 = mlir::emitOptionalError<char const(&)[47]>(a2, a3, "split_size_or_sections must be a ranked tensor");
LABEL_53:
  v44 = v26;
LABEL_54:
  if (v70[0] != v71)
  {
    free(v70[0]);
  }

  v45 = *MEMORY[0x277D85DE8];
  return v44;
}

BOOL mlir::emitOptionalError<char const(&)[41]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<41ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[24]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<24ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[12]>(void *a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5[16] = 257;
    emitDiag(a1, 2, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<12ul>(v7, "invalid dim");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::emitOptionalError<char const(&)[52]>(void *a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5[16] = 257;
    emitDiag(a1, 2, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<52ul>(v7, "split_size_or_sections must be a 0-D or 1-D tensor.");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t mlir::ODIE::Compiler::CoreML::SplitOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = 0x600000000;
  __src = v19;
  if (mlir::ODIE::Compiler::CoreML::SplitOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, &__src) && !mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v18))
  {
    v11 = __src;
    v12 = __src + 8 * v18;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
  }

  if (__src != v19)
  {
    free(__src);
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::verifyMatchingPointeeAndConcreteTypes(void *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v5 = *(*v4 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefAttr,void>::id)
  {
    if (*(*a3 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamRefType,void>::id)
    {
      if (v4 == a3[1])
      {
        goto LABEL_22;
      }

      v33 = 257;
      emitDiag(a1, 2, &v31, &v34);
      if (!v34)
      {
        goto LABEL_28;
      }

      mlir::Diagnostic::operator<<<64ul>(v35, "expected the parameter reference to match between the pointer: ");
      if (!v34)
      {
        goto LABEL_28;
      }

      v31 = 0;
      v32 = v4;
      v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
      v26 = v36 + 24 * v37;
      v27 = *v25;
      *(v26 + 16) = *(v25 + 16);
      *v26 = v27;
      ++v37;
      if (!v34 || (mlir::Diagnostic::operator<<<17ul>(v35, " and the value: "), !v34))
      {
LABEL_28:
        v24 = v38 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
        goto LABEL_29;
      }

      v28 = a3[1];
      v31 = 0;
      v32 = v28;
    }

    else
    {
      v33 = 257;
      emitDiag(a1, 2, &v31, &v34);
      if (!v34)
      {
        goto LABEL_28;
      }

      mlir::Diagnostic::operator<<<65ul>(v35, "expected a !coreml.param_ref type for a parametric pointer, got ");
      if (!v34)
      {
        goto LABEL_28;
      }

      v31 = 4;
      v32 = a3;
    }

    v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
    v14 = v36 + 24 * v37;
    v15 = *v13;
    *(v14 + 16) = *(v13 + 16);
    *v14 = v15;
    ++v37;
    goto LABEL_28;
  }

  if (v5 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id)
  {
    v33 = 257;
    emitDiag(a1, 2, &v31, &v34);
    if (v34)
    {
      mlir::Diagnostic::operator<<<18ul>(v35, "expected pointer ");
      if (v34)
      {
        v31 = 4;
        v32 = a2;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
        v8 = v36 + 24 * v37;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v37;
        if (v34)
        {
          mlir::Diagnostic::operator<<<12ul>(v35, " and value ");
          if (v34)
          {
            v31 = 4;
            v32 = a3;
            v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
            v11 = v36 + 24 * v37;
            v12 = *v10;
            *(v11 + 16) = *(v10 + 16);
            *v11 = v12;
            ++v37;
            if (v34)
            {
              mlir::Diagnostic::operator<<<24ul>(v35, " to have matching types");
            }
          }
        }
      }
    }

    goto LABEL_28;
  }

  v16 = v4[1];
  if (*(v16 + 8) != a3)
  {
    v33 = 257;
    emitDiag(a1, 2, &v31, &v34);
    if (v34)
    {
      mlir::Diagnostic::operator<<<27ul>(v35, "expected the pointee type ");
      if (v34)
      {
        v17 = *(v16 + 8);
        v31 = 4;
        v32 = v17;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
        v19 = v36 + 24 * v37;
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++v37;
        if (v34)
        {
          mlir::Diagnostic::operator<<<21ul>(v35, " and the value type ");
          if (v34)
          {
            v31 = 4;
            v32 = a3;
            v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v36, &v31, 1);
            v22 = v36 + 24 * v37;
            v23 = *v21;
            *(v22 + 16) = *(v21 + 16);
            *v22 = v23;
            ++v37;
            if (v34)
            {
              mlir::Diagnostic::operator<<<10ul>(v35, " to match");
            }
          }
        }
      }
    }

    goto LABEL_28;
  }

LABEL_22:
  v24 = 1;
LABEL_29:
  v29 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::PointerLoadOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v20[3] = v11;
    v20[4] = v12;
    v15 = v13[1] & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v15 + 8);
    v17 = *(*v16 + 136);
    if (v16)
    {
      v18 = v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamConstantAttr,void>::id;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      v19 = v16[1];
      v17 = *(*v19 + 136);
    }

    else
    {
      v19 = *(v15 + 8);
    }

    if (v17 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && v19[1])
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v19[1]);
    }

    else
    {
      v20[0] = mlir::ODIE::Compiler::CoreML::ParamRefType::get(*(**v16 + 32), v16, *(v15 + 16));
      llvm::SmallVectorImpl<mlir::Type>::emplace_back<mlir::Type>(a11, v20);
    }

    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[27]>(a2, a3, "expected exactly 1 operand");
  }
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t))
{
  mlir::NamedAttrList::push_back(a2 + 112, **(*(a2 + 8) + 96), a3);
  __src = (*a4)(a4, a3);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v8);
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a5)
  {

    return mlir::emitOptionalError<char const(&)[21]>(a2, a3, "expected no operands");
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

    mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(v20, a6, &v19, a9, a10);
    v21 = a4;
    v22 = 0;
    ValueAttr = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::getValueAttr(v20);
    if (ValueAttr)
    {
      v17 = (*v16)(v16, ValueAttr);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v17);
      result = 1;
    }

    else
    {
      result = mlir::emitOptionalError<char const(&)[28]>(a2, a3, "no value attribute provided");
    }

    v18 = *MEMORY[0x277D85DE8];
  }

  return result;
}

BOOL mlir::emitOptionalError<char const(&)[21]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<21ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::getOutputIntents(mlir::ODIE::Compiler::CoreML::ConstantOp *this@<X0>, uint64_t a2@<X8>)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(*(***(*this + 24) + 32), 2uLL);
  v6 = v8;
  v7 = 0x600000000;
  llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(&v6, &v5, &v6);
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  if (v7)
  {
    llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::operator=(a2, &v6);
  }

  *(a2 + 64) = 1;
  if (v6 != v8)
  {
    free(v6);
  }

  v4 = *MEMORY[0x277D85DE8];
}

mlir::Operation *mlir::ODIE::Compiler::CoreML::ConstantOp::walkAttrsToHash(mlir::Operation **a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  result = *a1;
  v7 = *(result + 6);
  if (*(v7 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v8 = *(v7 + 8) + 32;
  }

  else
  {
    v8 = v7 + 24;
  }

  v9 = *(*v8 + 128);
  if (v9 != 2)
  {
    if (v9 != 1)
    {
      if (!v9)
      {
        result = mlir::Operation::getAttrDictionary(result);
        v10 = *(result + 2);
        if (v10)
        {
          v11 = *(result + 1);
          v12 = &v11[2 * v10];
          do
          {
            v13 = *v11;
            v14 = v11[1];
            v11 += 2;
            result = a2(a3, v13, v14);
          }

          while (v11 != v12);
        }
      }

      return result;
    }

    AttrDictionary = mlir::Operation::getAttrDictionary(result);
    v16 = *(AttrDictionary + 16);
    if (v16)
    {
      v17 = 16 * v16;
      v18 = *(AttrDictionary + 8) + 8;
      do
      {
        if (*(**v18 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
        {
          (a2)(a3, *(v18 - 8));
        }

        v18 += 16;
        v17 -= 16;
      }

      while (v17);
    }
  }

  result = mlir::Operation::getAttrDictionary(*a1);
  v19 = *(result + 2);
  if (v19)
  {
    v20 = (*(result + 1) + 8);
    v21 = 16 * v19;
    do
    {
      v22 = *(v20 - 1);
      if (v22 != **(*(*a1 + 6) + 96))
      {
        result = a2(a3, v22, *v20);
      }

      v20 += 2;
      v21 -= 16;
    }

    while (v21);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v85 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v79, a6, a9, a10);
  v80 = a4;
  v81 = a5;
  v15 = a4 & 0xFFFFFFFFFFFFFFF8;
  v68 = 0;
  if ((a4 & 6) != 0 || !v15)
  {
    if ((a4 & 6) == 2 && v15)
    {
      v15 = *(v15 + 24);
    }
  }

  else
  {
    v15 = *v15;
  }

  *&v82 = &v68;
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_43;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v82, v18))
  {
    goto LABEL_43;
  }

  v19 = *(v68 + 8);
  v20 = (*(*(v68 + 16) + 24))();
  if (v21)
  {
    v22 = 8 * v21;
    v23 = 1;
    do
    {
      v24 = *v20++;
      v23 *= v24;
      v22 -= 8;
    }

    while (v22);
    if (v23 != 1)
    {
      if (a3)
      {
        v78[8] = 257;
        emitDiag(a2, 2, &v76, &v82);
        if (v82)
        {
          mlir::Diagnostic::operator<<<50ul>(&v82 + 8, "expected a single dimension along which to concat");
        }

        v42 = (v84 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
        goto LABEL_44;
      }

LABEL_43:
      v42 = 0;
      goto LABEL_44;
    }
  }

  v25 = v68;
  v26 = *(v68 + 8);
  (*(*(v68 + 16) + 24))();
  v27 = *(v68 + 8);
  (*(*(v68 + 16) + 24))();
  v82 = v25;
  v28 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v82);
  v29 = *(v28 + 24);
  if (v29 > 0x40)
  {
    operator new[]();
  }

  if (v29)
  {
    v30 = (*(v28 + 16) << -v29) >> -v29;
  }

  else
  {
    v30 = 0;
  }

  v76 = v78;
  v77 = 0x600000000;
  *&v82 = v80;
  *(&v82 + 1) = 1;
  v31 = mlir::ValueRange::offset_base(&v82, 1);
  v32 = (v31 & 0xFFFFFFFFFFFFFFF8);
  if ((v31 & 6) != 0 || !v32)
  {
    if ((v31 & 6) == 2 && v32)
    {
      v32 = v32[3];
    }
  }

  else
  {
    v32 = *v32;
  }

  v33 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v32[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v33)
  {
    v42 = mlir::emitOptionalError<char const(&)[47]>(a2, a3, "expected a ShapedType for all inputs to concat");
    goto LABEL_81;
  }

  v35 = v33;
  v36 = v34;
  v37 = (*(v34 + 24))(v34, v33);
  *&v82 = v83;
  *(&v82 + 1) = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v82, v37, &v37[8 * v38]);
  llvm::SmallVectorImpl<long long>::operator=(&v76, &v82);
  if (v82 != v83)
  {
    free(v82);
  }

  if (!v77)
  {
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v76, 1);
  }

  v67 = a2;
  if (v30 < 0)
  {
    (*(v36 + 24))(v36, v35);
    v30 += v39;
  }

  v40 = (*(v36 + 8))(v36, v35);
  v41 = v81;
  v42 = 1;
  *&v82 = v80;
  *(&v82 + 1) = 1;
  v43 = v81 - 1;
  v74 = mlir::ValueRange::offset_base(&v82, 1);
  v75 = 1;
  if (v41 == 2)
  {
LABEL_38:
    *&v82 = v76;
    *(&v82 + 1) = v77;
    v71 = v40;
    v69[0] = 0;
    v44 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v40 + 32), &v82, &v71, v69);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v44);
    v42 = 1;
    goto LABEL_81;
  }

  v47 = 1;
LABEL_47:
  v48 = mlir::ValueRange::dereference_iterator(&v74, v47);
  v49 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(v48 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v49)
  {
    v66 = mlir::emitOptionalError<char const(&)[47]>(v67, a3, "expected a ShapedType for all inputs to concat");
    goto LABEL_80;
  }

  v51 = v49;
  v52 = v50;
  if ((*(v50 + 8))(v50, v49) == v40)
  {
    if (!(*(v52 + 16))(v52, v51) || ((*(v52 + 24))(v52, v51), v53 != v77))
    {
      (*(v52 + 24))(v52, v51);
      if (v54 || v77 != 1)
      {
        v66 = mlir::emitOptionalError<char const(&)[49]>(v67, a3);
        goto LABEL_80;
      }
    }

    v56 = (*(v52 + 24))(v52, v51);
    v71 = v73;
    v72 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v71, v56, &v56[8 * v57]);
    if (!v72)
    {
      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v71, 1);
    }

    v58 = v77;
    if (!v77)
    {
LABEL_67:
      v61 = 0;
      goto LABEL_68;
    }

    v59 = 0;
    v60 = v76;
    v61 = 1;
    v62 = v71;
    while (1)
    {
      if (v30 == v59)
      {
        v63 = v60[v30];
        if (v63 != 0x8000000000000000)
        {
          v64 = v62[v30];
          v65 = v64 + v63;
          if (v64 == 0x8000000000000000)
          {
            v65 = v62[v30];
          }

          v60[v30] = v65;
        }
      }

      else if (v60[v59] != v62[v59])
      {
        if (a3)
        {
          v70 = 257;
          emitDiag(v67, 2, v69, &v82);
          if (v82)
          {
            mlir::Diagnostic::operator<<<88ul>(&v82 + 8, "expected all input shapes to match along all dimensions other than the concat dimension");
          }

          v42 = (v84 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v82);
        }

        else
        {
          v42 = 0;
        }

LABEL_68:
        if (v71 != v73)
        {
          free(v71);
        }

        if (v61)
        {
          goto LABEL_81;
        }

        v75 = ++v47;
        if (v47 == v43)
        {
          goto LABEL_38;
        }

        goto LABEL_47;
      }

      v61 = ++v59 < v58;
      if (v58 == v59)
      {
        goto LABEL_67;
      }
    }
  }

  v66 = mlir::emitOptionalError<char const(&)[56]>(v67, a3, "expected the same element type for all inputs to concat");
LABEL_80:
  v42 = v66;
LABEL_81:
  if (v76 != v78)
  {
    free(v76);
  }

LABEL_44:
  v45 = *MEMORY[0x277D85DE8];
  return v42;
}

BOOL mlir::emitOptionalError<char const(&)[56]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<56ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[49]>(void *a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5[16] = 257;
    emitDiag(a1, 2, v5, &v6);
    if (v6)
    {
      mlir::Diagnostic::operator<<<49ul>(v7, "expected all input tensors to have the same rank");
    }

    v2 = (v7[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v6);
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::CoreML::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(v33, a6, a9, a10);
  v34 = a4;
  v35 = a5;
  v16 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 6) != 0 || !v16)
  {
    if ((a4 & 6) == 2 && v16)
    {
      v16 = *(v16 + 24);
    }
  }

  else
  {
    v16 = *v16;
  }

  if ((~*(v16 + 8) & 7) == 0)
  {
    v16 = 0;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  v20 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  v21 = (*(**(v19 + 48) + 32))(*(v19 + 48), v20);
  if (!v21)
  {
LABEL_18:
    v27 = 1;
    goto LABEL_19;
  }

  __src = v32;
  v31 = 0x600000000;
  if (mlir::ODIE::Compiler::CoreML::ConcatOp::inferReturnTypes(v21, a2, a3, a4, a5, a6, v22, v23, a9, a10, &__src))
  {
    v24 = *(a11 + 8);
    v37[0] = *a11 & 0xFFFFFFFFFFFFFFF9 | 2;
    v37[1] = v24;
    v36[0] = __src & 0xFFFFFFFFFFFFFFF9 | 2;
    v36[1] = v31;
    if (llvm::detail::operator==<mlir::TypeRange,mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>(v37, v36))
    {
      v25 = __src;
      v26 = __src + 8 * v31;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v25, v26);
      v27 = 1;
    }

    else
    {
      v27 = mlir::emitOptionalError<char const(&)[56]>(a2, a3, "inferred return types did not match actual return types");
    }
  }

  else
  {
    v27 = 0;
  }

  if (__src != v32)
  {
    free(__src);
  }

LABEL_19:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

BOOL mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v27[0] = a3;
  v27[1] = a4;
  v12 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if ((a3 & 6) != 0 || !v12)
  {
    if ((a3 & 6) == 2 && v12)
    {
      v12 = v12[3];
    }
  }

  else
  {
    v12 = *v12;
  }

  v13 = (v12[1] & 0xFFFFFFFFFFFFFFF8);
  if (v13)
  {
    v14 = *v13;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(mlir::ValueRange::dereference_iterator(v27, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = *v17;
    v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
  }

  if ((a7 & 1) == 0)
  {
    a6 = (*(v16 + 8))(v16, v13);
  }

  BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v13, v17, a6);
  if (BroadcastedType)
  {
    v21 = BroadcastedType;
    v22 = *BroadcastedType;
    v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v21);
    v24 = *MEMORY[0x277D85DE8];
    return 1;
  }

  else
  {
    v26 = *MEMORY[0x277D85DE8];

    return mlir::emitOptionalError<char const(&)[46]>(a1, a2, "Expected inputs to have broadcastable shapes.");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::DivideOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::FloorDivideOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaximumOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MinimumOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ModuloOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseAndOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseOrOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::BitwiseXorOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 2)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, &__src, 0, 0))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::LogOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::LogOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::LogOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SiluOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SiluOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::SiluOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SinOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::SinOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CosOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CosOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::CosOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::TanOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::TanOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SinhOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SinhOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::SinhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::CoshOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::CoshOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::CoshOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::TanhOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::TanhOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::TanhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AsinOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AcosOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcosOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AcosOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AtanOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AsinhOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AsinhOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AsinhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AcoshOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AcoshOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AcoshOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AtanhOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AtanhOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::RsqrtOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RsqrtOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::RsqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::SqrtOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SqrtOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::SqrtOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ExpOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::ExpOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ErfOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 1)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 1 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ErfOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::ErfOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::EqualOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::GreaterOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::GreaterOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::NotEqualOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::NotEqualOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::AndOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::AndOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::OrOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::OrOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 2)
  {
    v14 = mlir::IntegerType::get(a1, 1, 0);

    return mlir::ODIE::Compiler::CoreML::inferBroadcastableMatchingTypes(a2, a3, a4, 2, a11, v14, 1);
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::XorOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::XorOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = *MEMORY[0x277D85DE8];
  v49[0] = a3;
  v49[1] = a4;
  v39 = 0;
  v40 = 0;
  v9 = mlir::ValueRange::dereference_iterator(v49, 1);
  v50 = &v40;
  if ((~*(v9 + 8) & 7) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = *(v10 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v10 + 24 * *(v10 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = v10 + 16 * v11 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v50, v13) || ((v14 = mlir::ValueRange::dereference_iterator(v49, 2), v47[0] = &v39, (~*(v14 + 8) & 7) != 0) ? (v15 = v14) : (v15 = 0), !v15))
  {
LABEL_22:
    v20 = (a3 & 0xFFFFFFFFFFFFFFF8);
    if ((a3 & 6) != 0 || !v20)
    {
      if ((a3 & 6) == 2 && v20)
      {
        v20 = v20[3];
      }
    }

    else
    {
      v20 = *v20;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v20[1] & 0xFFFFFFFFFFFFFFF8);
    v21 = 1;
    goto LABEL_29;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v47, v18))
  {
    goto LABEL_22;
  }

  v19 = (a3 & 0xFFFFFFFFFFFFFFF8);
  if ((a3 & 6) != 0 || !v19)
  {
    if ((a3 & 6) == 2 && v19)
    {
      v19 = v19[3];
    }
  }

  else
  {
    v19 = *v19;
  }

  v24 = (v19[1] & 0xFFFFFFFFFFFFFFF8);
  v25 = v24[1];
  v26 = v24[2];
  v47[0] = v48;
  v47[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v47, v25, &v25[8 * v26]);
  mlir::ODIE::Compiler::extract1DIntVector<int>(v40, &v44);
  v27 = *(v39 + 8);
  v28 = (*(*(v39 + 16) + 8))();
  v29 = *(v39 + 8);
  v30 = (*(*(v39 + 16) + 24))();
  if (v31)
  {
    v32 = 8 * v31;
    v33 = 1;
    do
    {
      v34 = *v30++;
      v33 *= v34;
      v32 -= 8;
    }

    while (v32);
    if (v33 != 1)
    {
      goto LABEL_41;
    }
  }

  if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v28[2] & 0x3FFFFFFF) == 1)
  {
    mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v39, &v50);
    if (v52 == v53)
    {
      v35 = 0;
    }

    else
    {
      v36 = v53 - 1;
      if (v51)
      {
        v36 = 0;
      }

      v35 = (*(v50 + (v36 >> 3)) >> (v36 & 7)) & 1;
    }

    mlir::ODIE::Compiler::CoreML::getReductionOutputShape(&v50, v47, v44, v45, v35);
    v37 = v24[3];
    *&v43 = v50;
    *(&v43 + 1) = v51;
    v41 = 0;
    v42 = v37;
    v38 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), &v43, &v42, &v41);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a5, v38);
    if (v50 != &v52)
    {
      free(v50);
    }

    v21 = 1;
  }

  else
  {
LABEL_41:
    v21 = mlir::emitOptionalError<char const(&)[48]>(a1, a2, "keep dims argument should contain a single BOOL");
  }

  if (v44 != &v46)
  {
    free(v44);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

LABEL_29:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMinOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[6] = *MEMORY[0x277D85DE8];
  __src = v18;
  v17 = 0x600000000;
  if (a5 == 3)
  {
    if (!mlir::ODIE::Compiler::CoreML::inferReductionReturnTypes(a2, a3, a4, 3, &__src))
    {
LABEL_3:
      v11 = 0;
      goto LABEL_8;
    }
  }

  else if (!mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands"))
  {
    goto LABEL_3;
  }

  if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v17))
  {
    v12 = __src;
    v13 = __src + 8 * v17;
    *(a11 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v12, v13);
  }

  v11 = 1;
LABEL_8:
  if (__src != v18)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::inferReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v70 = *MEMORY[0x277D85DE8];
  v64[0] = a4;
  v64[1] = a5;
  if (a5 == 3)
  {
    v58 = 0;
    v59 = 0;
    v15 = mlir::ValueRange::dereference_iterator(v64, 1);
    *&__src = &v59;
    if ((~*(v15 + 8) & 7) != 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = *(v16 + 8) & 7;
      if (v17 == 6)
      {
        v18 = v16 + 24 * *(v16 + 16);
        v19 = v18 + 120;
        if (v18 == -120)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v19 = v16 + 16 * v17 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&__src, v19))
      {
        v22 = mlir::ValueRange::dereference_iterator(v64, 2);
        v60[0] = &v58;
        v23 = (~*(v22 + 8) & 7) != 0 ? v22 : 0;
        if (v23)
        {
          v24 = *(v23 + 8) & 7;
          if (v24 == 6)
          {
            v25 = v23 + 24 * *(v23 + 16);
            v26 = v25 + 120;
            if (v25 == -120)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v26 = v23 + 16 * v24 + 16;
          }

          if (mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(v60, v26))
          {
            v27 = (a4 & 0xFFFFFFFFFFFFFFF8);
            if ((a4 & 6) != 0 || !v27)
            {
              if ((a4 & 6) == 2 && v27)
              {
                v27 = v27[3];
              }
            }

            else
            {
              v27 = *v27;
            }

            v34 = v27[1] & 0xFFFFFFFFFFFFFFF8;
            v35 = *(v34 + 8);
            v36 = *(v34 + 16);
            v62[0] = v63;
            v62[1] = 0x600000000;
            llvm::SmallVectorImpl<long long>::append<long long const*,void>(v62, v35, &v35[8 * v36]);
            v37 = *(v59 + 8);
            v38 = (*(*(v59 + 16) + 24))();
            if (!v39)
            {
              goto LABEL_41;
            }

            v40 = 8 * v39;
            v41 = 1;
            do
            {
              v42 = *v38++;
              v41 *= v42;
              v40 -= 8;
            }

            while (v40);
            if (v41 != 1)
            {
              v30 = mlir::emitOptionalError<char const(&)[37]>(a2, a3, "axis should contain a single integer");
            }

            else
            {
LABEL_41:
              mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v59, &__src);
              *v60 = __src;
              v61[0] = v66;
              v61[1] = v67;
              v61[2] = v68;
              v61[3] = v69;
              mlir::DenseElementsAttr::IntElementIterator::operator*(&__src, &v56);
              if (v57 > 0x40)
              {
                v43 = *v56;
                MEMORY[0x25F891010]();
              }

              else if (v57)
              {
                v43 = (v56 << -v57) >> -v57;
              }

              else
              {
                LODWORD(v43) = 0;
              }

              LODWORD(__src) = v43;
              v60[0] = v61;
              v60[1] = 0xC00000000;
              llvm::SmallVectorImpl<int>::append<int const*,void>(v60, &__src, &__src + 4);
              v44 = *(v58 + 8);
              v45 = (*(*(v58 + 16) + 8))();
              v46 = *(v58 + 8);
              v47 = (*(*(v58 + 16) + 24))();
              if (v48)
              {
                v49 = 8 * v48;
                v50 = 1;
                do
                {
                  v51 = *v47++;
                  v50 *= v51;
                  v49 -= 8;
                }

                while (v49);
                if (v50 != 1)
                {
                  goto LABEL_54;
                }
              }

              if (*(*v45 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v45[2] & 0x3FFFFFFF) == 1)
              {
                mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v58, &__src);
                if (v66 == *(&v67 + 1))
                {
                  v52 = 0;
                }

                else
                {
                  v53 = *(&v67 + 1) - 1;
                  if (BYTE8(__src))
                  {
                    v53 = 0;
                  }

                  v52 = (*(__src + (v53 >> 3)) >> (v53 & 7)) & 1;
                }

                mlir::ODIE::Compiler::CoreML::getReductionOutputShape(&__src, v62, v60[0], v60[1], v52);
                v54 = mlir::IntegerType::get(a1, 32, 1);
                v55 = mlir::RankedTensorType::get(__src, DWORD2(__src), v54, 0);
                llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v55);
                if (__src != &v66)
                {
                  free(__src);
                }

                v30 = 1;
              }

              else
              {
LABEL_54:
                v30 = mlir::emitOptionalError<char const(&)[48]>(a2, a3, "keep dims argument should contain a single BOOL");
              }

              if (v60[0] != v61)
              {
                free(v60[0]);
              }
            }

            if (v62[0] != v63)
            {
              free(v62[0]);
            }

            goto LABEL_33;
          }
        }
      }
    }

LABEL_26:
    v28 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v28)
    {
      if ((a4 & 6) == 2)
      {
        if (v28)
        {
          v28 = v28[3];
        }
      }
    }

    else
    {
      v28 = *v28;
    }

    v60[0] = (v28[1] & 0xFFFFFFFFFFFFFFF8);
    v29 = v60[0];
    v30 = 1;
    v31 = mlir::IntegerType::get(a1, 64, 1);
    __src = *(v29 + 8);
    LOBYTE(v66) = 1;
    v32 = mlir::TensorType::cloneWith(v60, &__src, v31);
    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v32);
LABEL_33:
    v33 = *MEMORY[0x277D85DE8];
    return v30;
  }

  v20 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 3 operands");
}

uint64_t mlir::ODIE::Compiler::CoreML::getReductionOutputShape(void *a1, uint64_t a2, int *a3, unsigned int a4, int a5)
{
  v8 = *(a2 + 8);
  v20 = 0;
  v19 = 0u;
  v21[0] = v22;
  v21[1] = 0;
  if (a4)
  {
    v10 = 4 * a4;
    do
    {
      v18 = ((v8 & (*a3 >> 31)) + *a3);
      llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v19, &v18, v22);
      if (v22[16] == 1)
      {
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v21, v18);
      }

      ++a3;
      v10 -= 4;
    }

    while (v10);
  }

  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  if (v8 >= 1)
  {
    v11 = 0;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_11;
      }

      v12 = (v20 - 1) & (37 * v11);
      v13 = *(v19 + 8 * v12);
      if (v11 != v13)
      {
        break;
      }

LABEL_10:
      if (v12 == v20)
      {
        goto LABEL_11;
      }

      if (!a5)
      {
        goto LABEL_13;
      }

      v14 = 1;
LABEL_12:
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a1, v14);
LABEL_13:
      if (++v11 == v8)
      {
        goto LABEL_21;
      }
    }

    v15 = 1;
    while (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v12 + v15++;
      v12 = v16 & (v20 - 1);
      v13 = *(v19 + 8 * v12);
      if (v11 == v13)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    v14 = *(*a2 + 8 * v11);
    goto LABEL_12;
  }

LABEL_21:
  if (v21[0] != v22)
  {
    free(v21[0]);
  }

  return MEMORY[0x25F891030](v19, 8);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::refineReturnTypes(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::ReduceArgmaxOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = *MEMORY[0x277D85DE8];
  v65[0] = a4;
  v65[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = *MEMORY[0x277D85DE8];

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v18 = v16[2];
    v19 = (*(mlir::ValueRange::dereference_iterator(v65, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*v19)[17] != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v20 = *MEMORY[0x277D85DE8];

      return mlir::emitOptionalError<char const(&)[29]>(a2, a3, "axes must be a ranked tensor");
    }

    v21 = *v19[1] + v18;
    v22 = mlir::ValueRange::dereference_iterator(v65, 1);
    __base[0] = 0;
    __base[1] = 0;
    __p[0] = __base;
    if ((~*(v22 + 8) & 7) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_35;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16);
      v26 = v25 + 120;
      if (v25 == -120)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v26 = v23 + 16 * v24 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(__p, v26))
    {
LABEL_35:
      __base[0] = v67;
      __base[1] = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(__base, v21, 0x8000000000000000);
      v32 = v16[3];
      __p[0] = __base[0];
      __p[1] = LODWORD(__base[1]);
      v61.__r_.__value_.__r.__words[0] = v32;
      v60.__r_.__value_.__r.__words[0] = 0;
      v33 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v32 + 32), __p, &v61, &v60);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v33);
      if (__base[0] != v67)
      {
        free(__base[0]);
      }

      v34 = 1;
      goto LABEL_71;
    }

    v62 = 0;
    v27 = mlir::ValueRange::dereference_iterator(v65, 1);
    __base[0] = &v62;
    if ((~*(v27 + 8) & 7) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v29 = *(v28 + 8) & 7;
      if (v29 == 6)
      {
        v30 = v28 + 24 * *(v28 + 16);
        v31 = v30 + 120;
        if (v30 == -120)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v31 = v28 + 16 * v29 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(__base, v31))
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v62, __base);
        *__p = *__base;
        v35 = v67[0];
        v36 = v67[1];
        v37 = v68;
        __base[0] = v67;
        __base[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::resizeImpl<false>(__base, v68 - v67[0]);
        v38 = __base[0];
        v64[0] = v35;
        v64[1] = v36;
        v39 = v37 - v35;
        if (v37 != v35)
        {
          v40 = v35 + 1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(__p, &v61);
            if (LODWORD(v61.__r_.__value_.__r.__words[1]) > 0x40)
            {
              *v38 = *v61.__r_.__value_.__l.__data_;
              MEMORY[0x25F891010]();
            }

            else
            {
              if (LODWORD(v61.__r_.__value_.__r.__words[1]))
              {
                v41 = (v61.__r_.__value_.__r.__words[0] << -v61.__r_.__value_.__s.__data_[8]) >> -v61.__r_.__value_.__s.__data_[8];
              }

              else
              {
                v41 = 0;
              }

              *v38 = v41;
            }

            v64[0] = v40;
            ++v38;
            ++v40;
            --v39;
          }

          while (v39);
          v38 = __base[0];
        }

        v42 = LODWORD(__base[1]);
        if (LODWORD(__base[1]))
        {
          v43 = 0;
          v44 = 8 * LODWORD(__base[1]);
          do
          {
            v45 = v38[v43 / 8];
            if (v45 <= ~v21 || v45 >= v21)
            {
              std::to_string(&v60, v45);
              v55 = std::string::insert(&v60, 0, "invalid axis: ");
              v56 = v55->__r_.__value_.__r.__words[2];
              *&v61.__r_.__value_.__l.__data_ = *&v55->__r_.__value_.__l.__data_;
              v61.__r_.__value_.__r.__words[2] = v56;
              v55->__r_.__value_.__l.__size_ = 0;
              v55->__r_.__value_.__r.__words[2] = 0;
              v55->__r_.__value_.__r.__words[0] = 0;
              v57 = std::string::append(&v61, ".");
              v58 = v57->__r_.__value_.__r.__words[2];
              *__p = *&v57->__r_.__value_.__l.__data_;
              v64[0] = v58;
              v57->__r_.__value_.__l.__size_ = 0;
              v57->__r_.__value_.__r.__words[2] = 0;
              v57->__r_.__value_.__r.__words[0] = 0;
              v59 = mlir::emitOptionalError<std::string>(a2, a3, __p);
              v34 = v59;
              if (SHIBYTE(v64[0]) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v61.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v60.__r_.__value_.__l.__data_);
              }

              goto LABEL_78;
            }

            if (v45 < 0)
            {
              v38[v43 / 8] += v21;
            }

            v43 += 8;
          }

          while (v44 != v43);
          if (v42 != 1)
          {
            qsort(v38, v42, 8uLL, llvm::array_pod_sort_comparator<long long>);
          }
        }

        v47 = v16[1];
        v48 = &v47[8 * v16[2]];
        __p[0] = v64;
        __p[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(__p, v47, v48);
        if (LODWORD(__base[1]))
        {
          v49 = __base[0];
          v50 = 8 * LODWORD(__base[1]);
          do
          {
            v52 = *v49++;
            v51 = v52;
            if (v52 >= LODWORD(__p[1]))
            {
              v51 = LODWORD(__p[1]);
            }

            v61.__r_.__value_.__r.__words[0] = 1;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(__p, __p[0] + 8 * v51, &v61);
            v50 -= 8;
          }

          while (v50);
        }

        v53 = mlir::RankedTensorType::get(__p[0], LODWORD(__p[1]), v16[3], 0);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v53);
        if (__p[0] != v64)
        {
          free(__p[0]);
        }

        v34 = 1;
LABEL_78:
        if (__base[0] != v67)
        {
          free(__base[0]);
        }

        goto LABEL_71;
      }
    }

LABEL_70:
    v34 = mlir::emitOptionalError<char const(&)[29]>(a2, a3, "axes must be a 1D int vector");
LABEL_71:
    v54 = *MEMORY[0x277D85DE8];
    return v34;
  }

  v14 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
}

BOOL mlir::emitOptionalError<char const(&)[29]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<29ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<std::string>(void *a1, char a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = 257;
    emitDiag(a1, 2, v7, &v9);
    if (v9)
    {
      v8 = 260;
      v7[0] = a3;
      mlir::Diagnostic::operator<<(v10, v7);
    }

    v4 = (v10[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v9);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::ExpandDimsOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::ExpandDimsOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[41]>(a2, a3, "fails to infer the type of expandDims op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::verify(void ***this)
{
  v72 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = *(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v4 + 16);
  v5 = v3[7];
  v6 = *(v5 + 8);
  v58 = **((v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v58 > v59)
  {
    v66[8] = 257;
    mlir::Operation::emitError(&v67, v2, &v64);
    if (v67)
    {
      mlir::Diagnostic::operator<<<27ul>(&v67 + 8, " number of axes to shrink ");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<long long &>(&v67, &v58);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<28ul>((v7 + 1), " is larger than input rank ");
    }

    v9 = (*(mlir::InFlightDiagnostic::operator<<<long long &>(v8, &v59) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
    goto LABEL_21;
  }

  if (*(v2 + 9))
  {
    v10 = v2 - 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10[1];
  v57 = 0;
  *&v67 = &v57;
  if ((~v6 & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_20;
  }

  v12 = *(v5 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v5 + 24 * *(v5 + 16);
    v14 = v13 + 120;
    if (v13 == -120)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = v5 + 16 * v12 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&v67, v14))
  {
LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v57, &v67);
  v15 = v68;
  *v54 = v67;
  v16 = v71;
  v17 = v59;
  v64 = v66;
  v65 = 0x600000000;
  v18 = v68;
  v19 = v71 - v68;
  if ((v71 - v68) < 7)
  {
    v20 = 0;
    v21 = v66;
  }

  else
  {
    v53 = v68;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v64, v66, v71 - v68, 8);
    v15 = v53;
    v20 = v65;
    v21 = v64;
  }

  v67 = *v54;
  v68 = v15;
  v69 = v17;
  v70 = 1;
  if (v16 != v18)
  {
    v24 = v18 + 1;
    v25 = v19;
    v26 = &v21[v20];
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &__s2);
      if (v61 > 0x40)
      {
        v27 = (v17 & (*__s2 >> 63)) + *__s2;
        MEMORY[0x25F891010]();
      }

      else if (v61)
      {
        v27 = (v17 & ((__s2 << -v61) >> -v61 >> 63)) + ((__s2 << -v61) >> -v61);
      }

      else
      {
        v27 = 0;
      }

      *v26++ = v27;
      *&v68 = v24++;
      --v25;
    }

    while (v25);
    v20 = v65;
    v21 = v64;
  }

  v29 = (v20 + v19);
  v28 = v20 + v19 == 0;
  LODWORD(v65) = v20 + v19;
  v31 = *(v4 + 8);
  v30 = *(v4 + 16);
  if (v28)
  {
LABEL_37:
    v35 = v11 & 0xFFFFFFFFFFFFFFF8;
    __s2 = v62;
    v61 = 0x600000000;
    if (v30)
    {
      v36 = 0;
      v37 = &v31[v30];
      do
      {
        if (v65)
        {
          v38 = 8 * v65;
          v39 = v64;
          while (*v39 != v36)
          {
            ++v39;
            v38 -= 8;
            if (!v38)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v39 = v64;
        }

        if (v39 == (v64 + 8 * v65))
        {
LABEL_46:
          llvm::SmallVectorTemplateBase<long long,true>::push_back(&__s2, *v31);
        }

        ++v36;
        ++v31;
      }

      while (v31 != v37);
      v40 = v61;
    }

    else
    {
      v40 = 0;
    }

    v43 = *(v35 + 16);
    if (v43 == v40 && (v44 = __s2, !memcmp(*(v35 + 8), __s2, 8 * v43)))
    {
      v9 = 1;
    }

    else
    {
      v55 = 257;
      mlir::Operation::emitError(&v67, *this, v54);
      if (v67)
      {
        mlir::Diagnostic::operator<<<34ul>(&v67 + 8, " expected output shape mismatch: ");
        if (v67)
        {
          mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(&v67 + 8, *(v35 + 8), *(v35 + 16));
          if (v67)
          {
            mlir::Diagnostic::operator<<<5ul>(&v67 + 8, " vs ");
          }
        }
      }

      v45 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(&v67, &__s2);
      v46 = v45;
      if (*v45)
      {
        mlir::Diagnostic::operator<<<16ul>((v45 + 1), " Shrink dims = ");
      }

      v9 = (*(mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(v46, &v64) + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
      v44 = __s2;
    }

    if (v44 != v62)
    {
      free(v44);
    }
  }

  else
  {
    v32 = 8 * v29;
    while (1)
    {
      v33 = *v21;
      v54[0] = v33;
      if (v33 >= v59)
      {
        break;
      }

      v34 = v31[v33];
      v56 = v34;
      if (v34 != 1)
      {
        if (v34 == 0x8000000000000000)
        {
          v63 = 257;
          mlir::Operation::emitError(&v67, *this, &__s2);
          if (v67)
          {
            mlir::Diagnostic::operator<<<19ul>(&v67 + 8, " shrink dimension ");
          }

          v41 = mlir::InFlightDiagnostic::operator<<<long long &>(&v67, v54);
          v42 = v41;
          if (*v41)
          {
            mlir::Diagnostic::operator<<<47ul>((v41 + 1), " has dynamic dimension length in input tensor.");
          }
        }

        else
        {
          v63 = 257;
          mlir::Operation::emitError(&v67, *this, &__s2);
          if (v67)
          {
            mlir::Diagnostic::operator<<<19ul>(&v67 + 8, " shrink dimension ");
          }

          v49 = mlir::InFlightDiagnostic::operator<<<long long &>(&v67, v54);
          v50 = v49;
          if (*v49)
          {
            mlir::Diagnostic::operator<<<32ul>((v49 + 1), " has non-unit dimension length ");
          }

          v51 = mlir::InFlightDiagnostic::operator<<<long long &>(v50, &v56);
          v42 = v51;
          if (*v51)
          {
            mlir::Diagnostic::operator<<<18ul>((v51 + 1), " in input tensor.");
          }
        }

        v52 = *(v42 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
        v9 = (v52 & 1) == 0;
        goto LABEL_78;
      }

      ++v21;
      v32 -= 8;
      if (!v32)
      {
        goto LABEL_37;
      }
    }

    v63 = 257;
    mlir::Operation::emitError(&v67, *this, &__s2);
    if (v67)
    {
      mlir::Diagnostic::operator<<<23ul>(&v67 + 8, " shrink axes contains ");
    }

    v47 = mlir::InFlightDiagnostic::operator<<<long long &>(&v67, v54);
    v48 = v47;
    if (*v47)
    {
      mlir::Diagnostic::operator<<<34ul>((v47 + 1), " which is higher than input rank ");
    }

    v9 = (*(mlir::InFlightDiagnostic::operator<<<long long &>(v48, &v59) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v67);
  }

LABEL_78:
  if (v64 != v66)
  {
    free(v64);
  }

LABEL_21:
  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(uint64_t a1, uint64_t **a2)
{
  if (*a1)
  {
    v3 = *(a2 + 2);
    if (v3)
    {
      v4 = *a2;
      v5 = **a2;
      LODWORD(v17) = 2;
      v18 = v5;
      v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
      v7 = *(a1 + 24) + 24 * *(a1 + 32);
      v8 = *v6;
      *(v7 + 16) = *(v6 + 16);
      *v7 = v8;
      ++*(a1 + 32);
      if (v3 != 1)
      {
        v9 = 8 * v3;
        v10 = v4 + 1;
        v11 = v9 - 8;
        do
        {
          v17 = ", ";
          v19 = 259;
          mlir::Diagnostic::operator<<(a1 + 8, &v17);
          v12 = *v10++;
          LODWORD(v17) = 2;
          v18 = v12;
          v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v17, 1);
          v14 = *(a1 + 24) + 24 * *(a1 + 32);
          v15 = *v13;
          *(v14 + 16) = *(v13 + 16);
          *v14 = v15;
          ++*(a1 + 32);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOp::verify(mlir::ODIE::Compiler::CoreML::ScatterNdOp *this)
{
  v47[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = *(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v45 = v5;
  if (!v5)
  {
    v44 = 257;
    mlir::Operation::emitError(&v46, v2, v43);
    if (v46)
    {
      mlir::Diagnostic::operator<<<31ul>(v47, "input/output rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    v2 = *this;
    v3 = *(*this + 72);
  }

  v7 = (*(v3[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = v7[1];
  v8 = v7[2];
  v10 = v9[v8 - 1];
  v42 = v10;
  v11 = v5 - v10;
  if (v5 < v10)
  {
    v44 = 257;
    mlir::Operation::emitError(&v46, v2, v43);
    if (v46)
    {
      mlir::Diagnostic::operator<<<32ul>(v47, "innermost dimension of indices ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v46, &v42);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<16ul>((v12 + 1), " > output rank ");
    }

    v14 = &v45;
LABEL_11:
    v15 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v13, v14) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
    goto LABEL_31;
  }

  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_30;
  }

  v16 = *(v3[11] + 8);
  if (v8)
  {
    v17 = 8 * v8;
    v18 = v9;
    while (*v18 != 0x8000000000000000)
    {
      ++v18;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_30;
  }

LABEL_17:
  v19 = (v16 & 0xFFFFFFFFFFFFFFF8);
  if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_30;
  }

  v21 = v19[1];
  v20 = v19[2];
  if (v20)
  {
    v22 = 8 * v20;
    v23 = v21;
    while (*v23 != 0x8000000000000000)
    {
      ++v23;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_30;
  }

LABEL_22:
  v40 = v8 + v11 - 1;
  v41 = v20;
  if (v20 != v40)
  {
    v44 = 257;
    mlir::Operation::emitError(&v46, v2, v43);
    if (v46)
    {
      mlir::Diagnostic::operator<<<17ul>(v47, "updates rank is ");
    }

    v29 = mlir::InFlightDiagnostic::operator<<<long long &>(&v46, &v41);
    v13 = v29;
    if (*v29)
    {
      mlir::Diagnostic::operator<<<19ul>((v29 + 1), " expected rank is ");
    }

    v14 = &v40;
    goto LABEL_11;
  }

  if (v20 < 1)
  {
LABEL_30:
    v15 = 1;
    goto LABEL_31;
  }

  v24 = 0;
  v25 = 0;
  v26 = v6 - 8 * v8 + 8 * v10;
  while (v8 - 2 < v25)
  {
    if (v21[v25] != *(v26 + 8 + 8 * v25))
    {
      v39 = v25;
      v44 = 257;
      mlir::Operation::emitError(&v46, v2, v43);
      if (v46)
      {
        mlir::Diagnostic::operator<<<15ul>(v47, "updates shape[");
      }

      v35 = mlir::InFlightDiagnostic::operator<<<int &>(&v46, &v39);
      v36 = v35;
      if (*v35)
      {
        mlir::Diagnostic::operator<<<6ul>((v35 + 1), "] is ");
      }

      v37 = mlir::InFlightDiagnostic::operator<<<long long const&>(v36, &v21[v39]);
      v33 = v37;
      if (*v37)
      {
        mlir::Diagnostic::operator<<<18ul>((v37 + 1), " expect it to be ");
      }

      v34 = (v26 - v24 + 8);
      goto LABEL_51;
    }

LABEL_29:
    ++v25;
    v24 -= 8;
    if (v20 == v25)
    {
      goto LABEL_30;
    }
  }

  if (v21[v25] == v9[v25])
  {
    goto LABEL_29;
  }

  v39 = v25;
  v44 = 257;
  mlir::Operation::emitError(&v46, v2, v43);
  if (v46)
  {
    mlir::Diagnostic::operator<<<15ul>(v47, "updates shape[");
  }

  v30 = mlir::InFlightDiagnostic::operator<<<int &>(&v46, &v39);
  v31 = v30;
  if (*v30)
  {
    mlir::Diagnostic::operator<<<6ul>((v30 + 1), "] is ");
  }

  v32 = mlir::InFlightDiagnostic::operator<<<long long const&>(v31, &v21[v39]);
  v33 = v32;
  if (*v32)
  {
    mlir::Diagnostic::operator<<<18ul>((v32 + 1), " expect it to be ");
  }

  v34 = &v9[v39];
LABEL_51:
  v38 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v33, v34) + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  v15 = v38 ^ 1;
LABEL_31:
  v27 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<int &>(uint64_t a1, int *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<long long const&>(uint64_t a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = *a2;
    v8 = 2;
    v9 = v3;
    v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v8, 1);
    v5 = *(a1 + 24) + 24 * *(a1 + 32);
    v6 = *v4;
    *(v5 + 16) = *(v4 + 16);
    *v5 = v6;
    ++*(a1 + 32);
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::verify(void ***this)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    result = 1;
LABEL_38:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v5 = (*(v3[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v38 = v4[2];
  if (!v38)
  {
    v37 = 257;
    mlir::Operation::emitError(&v39, v2, v36);
    if (v39)
    {
      mlir::Diagnostic::operator<<<34ul>(&v40, "input rank must be >= 1, but got ");
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v39, &v38);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_36;
  }

  v7 = v4[1];
  v6 = v4[2];
  if (v6)
  {
    v8 = 8 * v6;
    v9 = v4[1];
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_36;
  }

LABEL_12:
  v11 = v5[1];
  v10 = v5[2];
  if (v10)
  {
    v12 = 8 * v10;
    v13 = v5[1];
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_36;
  }

LABEL_16:
  v14 = *((*this)[9] + 15);
  v39 = 0;
  v40 = 0;
  v36[0] = &v39;
  if ((~*(v14 + 8) & 7) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_36;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v36, v18))
  {
    goto LABEL_36;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v39);
  if (v41[48])
  {
    v20 = *v39;
    if (v39 != v41)
    {
      free(v39);
    }

    v35 = v20;
    if (v20 < -v38 || v38 <= v20)
    {
      v37 = 257;
      mlir::Operation::emitError(&v39, *this, v36);
      if (v39)
      {
        mlir::Diagnostic::operator<<<14ul>(&v40, "Invalid axis ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v39, &v35);
      v25 = v24;
      if (*v24)
      {
        mlir::Diagnostic::operator<<<26ul>((v24 + 1), " when the input has rank ");
      }

      v26 = mlir::InFlightDiagnostic::operator<<<long long &>(v25, &v38);
LABEL_44:
      v22 = *(v26 + 200) ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
      goto LABEL_37;
    }

    if (v38 >= 1)
    {
      v21 = 0;
      while ((v38 & (v20 >> 31)) + v20 == v21 || *(v7 + 8 * v21) == *(v11 + 8 * v21))
      {
        if (v38 == ++v21)
        {
          goto LABEL_36;
        }
      }

      v34 = v21;
      v37 = 257;
      mlir::Operation::emitError(&v39, *this, v36);
      if (v39)
      {
        mlir::Diagnostic::operator<<<13ul>(&v40, "Input shape[");
      }

      v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v39, &v34);
      v28 = v27;
      if (*v27)
      {
        mlir::Diagnostic::operator<<<6ul>((v27 + 1), "] is ");
      }

      v29 = mlir::InFlightDiagnostic::operator<<<long long const&>(v28, (v7 + 8 * v34));
      v30 = v29;
      if (*v29)
      {
        mlir::Diagnostic::operator<<<22ul>((v29 + 1), ", but indices shape [");
      }

      v31 = mlir::InFlightDiagnostic::operator<<<int &>(v30, &v34);
      v32 = v31;
      if (*v31)
      {
        mlir::Diagnostic::operator<<<6ul>((v31 + 1), "] is ");
      }

      v26 = mlir::InFlightDiagnostic::operator<<<long long const&>(v32, (v11 + 8 * v34));
      goto LABEL_44;
    }

LABEL_36:
    v22 = 1;
LABEL_37:
    result = v22 & 1;
    goto LABEL_38;
  }

  v33 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::SliceOp::fold(v33);
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = *(*(*a1 + 72) + 24);
  v3 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::ODIE::Compiler::CoreML::canCompareTensorTypes(v1, v3) && v1 == v3)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::verify(void ***this)
{
  v100 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  v85 = v4[2];
  if (!v85)
  {
    v95 = 257;
    mlir::Operation::emitError(&v96, v2, v93);
    if (v96)
    {
      mlir::Diagnostic::operator<<<31ul>(&v97, "input/output rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v96);
    v2 = *this;
    v3 = (*this)[9];
  }

  v5 = v3[7];
  v6 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v6 + 8);
    v9 = 8 * v7;
    v10 = 1;
    do
    {
      v11 = *v8++;
      v10 *= v11;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v10 = 1;
  }

  if (v10 != v85)
  {
    v95 = 257;
    mlir::Operation::emitError(&v96, v2, v93);
    if (v96)
    {
      mlir::Diagnostic::operator<<<15ul>(&v97, "input rank is ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v96, &v85);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<42ul>((v12 + 1), " but start/end/strides are provided with ");
    }

    v14 = *(v6 + 16);
    if (v14)
    {
      v15 = *(v6 + 8);
      v16 = 8 * v14;
      v17 = 1;
      do
      {
        v18 = *v15++;
        v17 *= v18;
        v16 -= 8;
      }

      while (v16);
    }

    else
    {
      v17 = 1;
    }

    v91[0] = v17;
    v19 = mlir::InFlightDiagnostic::operator<<<long long>(v13, v91);
    if (*v19)
    {
      mlir::Diagnostic::operator<<<10ul>((v19 + 1), " elements");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v96);
    v3 = (*this)[9];
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_122;
  }

  v20 = *(v3[19] + 8);
  v21 = v4[2];
  if (v21)
  {
    v22 = v4[1];
    v23 = 8 * v21;
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_122;
  }

LABEL_28:
  v24 = v20 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v20 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_122;
  }

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = *(v24 + 8);
    v27 = 8 * v25;
    while (*v26 != 0x8000000000000000)
    {
      ++v26;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_122;
  }

LABEL_33:
  v28 = v3[11];
  v29 = v3[15];
  v96 = 0;
  v97 = 0;
  v93[0] = &v96;
  v30 = (~*(v5 + 8) & 7) != 0 ? v5 : 0;
  if (!v30)
  {
    goto LABEL_122;
  }

  v31 = *(v30 + 8) & 7;
  if (v31 == 6)
  {
    v32 = v30 + 24 * *(v30 + 16);
    v33 = v32 + 120;
    if (v32 == -120)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v33 = v30 + 16 * v31 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v93, v33))
  {
    goto LABEL_122;
  }

  v96 = 0;
  v97 = 0;
  v93[0] = &v96;
  v34 = (~*(v28 + 8) & 7) != 0 ? v28 : 0;
  if (!v34)
  {
    goto LABEL_122;
  }

  v35 = *(v34 + 8) & 7;
  if (v35 == 6)
  {
    v36 = v34 + 24 * *(v34 + 16);
    v37 = v36 + 120;
    if (v36 == -120)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v37 = v34 + 16 * v35 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v93, v37))
  {
    goto LABEL_122;
  }

  v96 = 0;
  v97 = 0;
  v93[0] = &v96;
  v38 = (~*(v29 + 8) & 7) != 0 ? v29 : 0;
  if (!v38)
  {
    goto LABEL_122;
  }

  v39 = *(v38 + 8) & 7;
  if (v39 == 6)
  {
    v40 = v38 + 24 * *(v38 + 16);
    v41 = v40 + 120;
    if (v40 == -120)
    {
      goto LABEL_122;
    }
  }

  else
  {
    v41 = v38 + 16 * v39 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v93, v41))
  {
LABEL_122:
    v77 = 1;
LABEL_123:
    v78 = *MEMORY[0x277D85DE8];
    return v77;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v96);
  if (v99)
  {
    v93[0] = v94;
    v93[1] = 0xC00000000;
    if (!v97 || (llvm::SmallVectorImpl<int>::operator=(v93, &v96), (v99 & 1) != 0))
    {
      if (v96 != v98)
      {
        free(v96);
      }
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v28, &v96);
    if (v99)
    {
      v91[0] = v92;
      v91[1] = 0xC00000000;
      if (!v97 || (llvm::SmallVectorImpl<int>::operator=(v91, &v96), (v99 & 1) != 0))
      {
        if (v96 != v98)
        {
          free(v96);
        }
      }

      mlir::ODIE::Compiler::extract1DIntVector<int>(v29, &v96);
      if (v99)
      {
        v89[0] = v90;
        v89[1] = 0xC00000000;
        if (!v97 || (llvm::SmallVectorImpl<int>::operator=(v89, &v96), (v99 & 1) != 0))
        {
          if (v96 != v98)
          {
            free(v96);
          }
        }

        v42 = v4[1];
        v43 = v85;
        v83[0] = 0;
        if (v85 < 1)
        {
LABEL_95:
          __s1 = v88;
          v87 = 0x600000000;
          llvm::SmallVectorImpl<long long>::assign(&__s1, v43, 0);
          if (v85 >= 1)
          {
            v54 = 0;
            v55 = v89[0];
            v56 = v93[0];
            v57 = v91[0];
            v58 = __s1;
            do
            {
              v59 = v55[v54];
              v60 = v56[v54];
              v61 = v57[v54];
              if (v59 < 1)
              {
                if (v60 > v61)
                {
                  v70 = v59;
                  v71 = v58[v54];
                  do
                  {
                    ++v71;
                    v60 += v70;
                  }

                  while (v60 > v61);
                  v58[v54] = v71;
                }
              }

              else if (v60 < v61)
              {
                v62 = v60 + v59;
                v63 = v62 < v61;
                if (v62 >= v61)
                {
                  v64 = 1;
                }

                else
                {
                  v64 = 2;
                }

                if (v62 >= v61)
                {
                  v61 = v62;
                }

                v65 = v64 + (v61 - v63 - v62) / v59;
                v66 = (v65 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v53.i64[0] = v58[v54];
                v67 = vdupq_n_s64(v65 - 1);
                v68 = 2;
                do
                {
                  v69 = v53;
                  v53 = vaddq_s64(v53, vdupq_n_s64(1uLL));
                  v68 -= 2;
                }

                while (v66 + v68 != 2);
                v58[v54] = vaddvq_s64(vbslq_s8(vcgtq_u64(vorrq_s8(vdupq_n_s64(-v68), xmmword_25D0A0500), v67), v69, v53));
              }

              ++v54;
            }

            while (v54 < v85);
          }

          v72 = *(v24 + 8);
          v73 = *(v24 + 16);
          if (v73 == v87 && (v74 = __s1, !memcmp(__s1, *(v24 + 8), 8 * v73)))
          {
            v77 = 1;
          }

          else
          {
            v84 = 257;
            mlir::Operation::emitError(&v96, *this, v83);
            if (v96)
            {
              mlir::Diagnostic::operator<<<42ul>(&v97, "mismatch in slice shape. Expected shape: ");
            }

            v75 = mlir::InFlightDiagnostic::operator<<<llvm::SmallVector<long long,6u> &>(&v96, &__s1);
            v76 = v75;
            if (*v75)
            {
              mlir::Diagnostic::operator<<<17ul>((v75 + 1), " given shape is ");
              if (*v76)
              {
                mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>((v76 + 1), v72, v73);
              }
            }

            v77 = (v76[25] & 1) == 0;
            mlir::InFlightDiagnostic::~InFlightDiagnostic(&v96);
            v74 = __s1;
          }

          if (v74 != v88)
          {
            free(v74);
          }
        }

        else
        {
          v44 = 0;
          v45 = v89[0];
          v46 = v93[0];
          v47 = v91[0];
          while (v45[v44])
          {
            v48 = v46[v44];
            if (v48 < 0)
            {
              do
              {
                v48 += *(v42 + 8 * v44);
              }

              while (v48 < 0);
              v46[v44] = v48;
            }

            v49 = v47[v44];
            v50 = *(v42 + 8 * v44);
            if (v49 < 0)
            {
              do
              {
                v49 += v50;
              }

              while (v49 < 0);
              v47[v44] = v49;
            }

            if (v45[v44] < 1)
            {
              LODWORD(v50) = v50 - 1;
              v52 = v46[v44];
              if (v50 < v52)
              {
                v52 = v50;
              }

              v46[v44] = v52;
              if (v50 >= v47[v44])
              {
                LODWORD(v50) = v47[v44];
              }
            }

            else
            {
              v51 = v46[v44];
              if (v51 >= v50)
              {
                v51 = v50;
              }

              v46[v44] = v51;
              if (v47[v44] < v50)
              {
                LODWORD(v50) = v47[v44];
              }
            }

            v47[v44++] = v50;
            v83[0] = v44;
            if (v44 == v43)
            {
              goto LABEL_95;
            }
          }

          v88[8] = 257;
          mlir::Operation::emitError(&v96, *this, &__s1);
          if (v96)
          {
            mlir::Diagnostic::operator<<<8ul>(&v97, "stride[");
          }

          v80 = mlir::InFlightDiagnostic::operator<<<long long &>(&v96, v83);
          v81 = v80;
          if (*v80)
          {
            mlir::Diagnostic::operator<<<7ul>((v80 + 1), "] is 0");
          }

          v77 = (v81[25] & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v96);
        }

        if (v89[0] != v90)
        {
          free(v89[0]);
        }

        if (v91[0] != v92)
        {
          free(v91[0]);
        }

        if (v93[0] != v94)
        {
          free(v93[0]);
        }

        goto LABEL_123;
      }
    }
  }

  v82 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(v82);
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::fold(uint64_t a1)
{
  v1 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v2 = *(*(*a1 + 72) + 152);
  v3 = v1[2];
  if (v3)
  {
    v4 = v1[1];
    v5 = 8 * v3;
    while (*v4 != 0x8000000000000000)
    {
      ++v4;
      v5 -= 8;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

LABEL_6:
  v6 = (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v7 = v6[2];
  if (v7)
  {
    v8 = v6[1];
    v9 = 8 * v7;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    return 0;
  }

LABEL_11:
  if (v1 == v6)
  {
    return v2 | 4;
  }

  else
  {
    return 0;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::SliceUpdateOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 == 5)
  {
    v12 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v12)
    {
      if ((a4 & 6) == 2)
      {
        if (v12)
        {
          v12 = v12[3];
        }
      }
    }

    else
    {
      v12 = *v12;
    }

    llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v12[1] & 0xFFFFFFFFFFFFFFF8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 5 operands");
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19 = 0x600000000;
  __src = v20;
  if (mlir::ODIE::Compiler::CoreML::SliceUpdateOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v16, v17, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v19))
    {
      v11 = __src;
      v12 = __src + 8 * v19;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v11, v12);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (__src != v20)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::verify(mlir::ODIE::Compiler::CoreML::GatherNdOp *this)
{
  v42[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = *(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  v40 = v5;
  if (!v5)
  {
    v39 = 257;
    mlir::Operation::emitError(&v41, v2, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<24ul>(v42, "input rank must be >= 1");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    v2 = *this;
    v3 = *(*this + 72);
  }

  v7 = *(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  v10 = *(v9 + 8 * v8 - 8);
  v37 = v10;
  v11 = v5 - v10;
  if (v5 < v10)
  {
    v39 = 257;
    mlir::Operation::emitError(&v41, v2, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<32ul>(v42, "innermost dimension of indices ");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<long long &>(&v41, &v37);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<15ul>((v12 + 1), " > input rank ");
    }

    v14 = &v40;
LABEL_25:
    v21 = *(mlir::InFlightDiagnostic::operator<<<long long &>(v13, v14) + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    goto LABEL_26;
  }

  v15 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 8);
  v16 = *(v15 + 16);
  v35 = v8 + v11 - 1;
  v36 = v16;
  if (v16 != v35)
  {
    v39 = 257;
    mlir::Operation::emitError(&v41, v2, v38);
    if (v41)
    {
      mlir::Diagnostic::operator<<<16ul>(v42, "output rank is ");
    }

    v22 = mlir::InFlightDiagnostic::operator<<<long long &>(&v41, &v36);
    v13 = v22;
    if (*v22)
    {
      mlir::Diagnostic::operator<<<19ul>((v22 + 1), " expected rank is ");
    }

    v14 = &v35;
    goto LABEL_25;
  }

  if (v16 < 1)
  {
LABEL_19:
    v21 = 1;
    goto LABEL_26;
  }

  v18 = 0;
  v19 = 0;
  v20 = v6 - 8 * v8 + 8 * v10;
  while (v8 - 2 < v19)
  {
    if (*(v17 + 8 * v19) != *(v20 + 8 + 8 * v19))
    {
      v34 = v19;
      v39 = 257;
      mlir::Operation::emitError(&v41, v2, v38);
      if (v41)
      {
        mlir::Diagnostic::operator<<<14ul>(v42, "output shape[");
      }

      v30 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v34);
      v31 = v30;
      if (*v30)
      {
        mlir::Diagnostic::operator<<<6ul>((v30 + 1), "] is ");
      }

      v32 = mlir::InFlightDiagnostic::operator<<<long long const&>(v31, (v17 + 8 * v34));
      v28 = v32;
      if (*v32)
      {
        mlir::Diagnostic::operator<<<18ul>((v32 + 1), " expect it to be ");
      }

      v29 = (v20 - v18 + 8);
      goto LABEL_41;
    }

LABEL_18:
    ++v19;
    v18 -= 8;
    if (v16 == v19)
    {
      goto LABEL_19;
    }
  }

  if (*(v17 + 8 * v19) == *(v9 + 8 * v19))
  {
    goto LABEL_18;
  }

  v34 = v19;
  v39 = 257;
  mlir::Operation::emitError(&v41, v2, v38);
  if (v41)
  {
    mlir::Diagnostic::operator<<<14ul>(v42, "output shape[");
  }

  v25 = mlir::InFlightDiagnostic::operator<<<int &>(&v41, &v34);
  v26 = v25;
  if (*v25)
  {
    mlir::Diagnostic::operator<<<6ul>((v25 + 1), "] is ");
  }

  v27 = mlir::InFlightDiagnostic::operator<<<long long const&>(v26, (v17 + 8 * v34));
  v28 = v27;
  if (*v27)
  {
    mlir::Diagnostic::operator<<<18ul>((v27 + 1), " expect it to be ");
  }

  v29 = (v9 + 8 * v34);
LABEL_41:
  v33 = *(mlir::InFlightDiagnostic::operator<<<long long const&>(v28, v29) + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
  v21 = v33 ^ 1;
LABEL_26:
  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherNdOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v37[0] = a4;
  v37[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v18 = v16[1];
      v19 = v16[2];
      v20 = (*(mlir::ValueRange::dereference_iterator(v37, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v22 = v20[1];
        v23 = &v22[8 * v20[2]];
        v26 = *(v23 - 1);
        v24 = v23 - 8;
        v25 = v26;
        if (v26 <= v19)
        {
          v34 = v36;
          v35 = 0x600000000;
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v34, v22, v24);
          llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v34, (v18 + 8 * v25), (v18 + 8 * v19));
          v28 = v16[3];
          *&v33 = v34;
          *(&v33 + 1) = v35;
          v31 = 0;
          v32 = v28;
          v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v33, &v32, &v31);
          llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v29);
          if (v34 != v36)
          {
            free(v34);
          }

          v30 = *MEMORY[0x277D85DE8];
          return 1;
        }

        else
        {
          v27 = *MEMORY[0x277D85DE8];

          return mlir::emitOptionalError<char const(&)[45]>(a2, a3, "last dimension of indices must <= input.rank");
        }
      }

      else
      {
        v21 = *MEMORY[0x277D85DE8];

        return mlir::emitOptionalError<char const(&)[32]>(a2, a3, "indices must be a ranked tensor");
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DE8];

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];

    return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[32]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<32ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::emitOptionalError<char const(&)[45]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<45ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::ODIE::Compiler::CoreML::GatherNdOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::GatherNdOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[40]>(a2, a3, "fails to infer the type of gather_nd op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::emitOptionalError<char const(&)[40]>(void *a1, char a2, char *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v7[16] = 257;
    emitDiag(a1, 2, v7, &v8);
    if (v8)
    {
      mlir::Diagnostic::operator<<<40ul>(v9, a3);
    }

    v4 = (v9[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v8);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::verify(void ***this)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2[9];
  v4 = (*(v3[3] + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v5 = (*(v3[7] + 8) & 0xFFFFFFFFFFFFFFF8);
  v41 = v4[2];
  if (!v41)
  {
    v40 = 257;
    mlir::Operation::emitError(&v42, v2, v39);
    if (v42)
    {
      mlir::Diagnostic::operator<<<34ul>(&v43, "input rank must be >= 1, but got ");
    }

    mlir::InFlightDiagnostic::operator<<<long long &>(&v42, &v41);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_24:
    result = 1;
LABEL_46:
    v27 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = v5[1];
  v6 = v5[2];
  v38 = v6;
  if (v41 != v6)
  {
    v40 = 257;
    mlir::Operation::emitError(&v42, *this, v39);
    if (v42)
    {
      mlir::Diagnostic::operator<<<67ul>(&v43, "input must have the same rank as indices, but got input with rank ");
    }

    v20 = mlir::InFlightDiagnostic::operator<<<long long &>(&v42, &v41);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<24ul>((v20 + 1), " and indices with rank ");
    }

    v22 = &v38;
    goto LABEL_30;
  }

  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_44;
  }

  v9 = v4[1];
  v8 = v4[2];
  if (v8)
  {
    v10 = 8 * v8;
    v11 = v4[1];
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_44;
  }

LABEL_13:
  if (v6)
  {
    v12 = 8 * v6;
    v13 = v7;
    while (*v13 != 0x8000000000000000)
    {
      ++v13;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_44;
  }

LABEL_17:
  v14 = *((*this)[9] + 11);
  v42 = 0;
  v43 = 0;
  v39[0] = &v42;
  v15 = (~*(v14 + 8) & 7) != 0 ? v14 : 0;
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = *(v15 + 8) & 7;
  if (v16 == 6)
  {
    v17 = v15 + 24 * *(v15 + 16);
    v18 = v17 + 120;
    if (v17 == -120)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v18 = v15 + 16 * v16 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v39, v18))
  {
    goto LABEL_44;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v14, &v42);
  if (v44[48])
  {
    v25 = *v42;
    if (v42 != v44)
    {
      free(v42);
    }

    v37 = v25;
    if (v25 >= -v41 && v41 > v25)
    {
      if (v41 >= 1)
      {
        v26 = 0;
        while ((v41 & (v25 >> 31)) + v25 == v26 || *(v9 + 8 * v26) == v7[v26])
        {
          if (v41 == ++v26)
          {
            goto LABEL_44;
          }
        }

        v36 = v26;
        v40 = 257;
        mlir::Operation::emitError(&v42, *this, v39);
        if (v42)
        {
          mlir::Diagnostic::operator<<<13ul>(&v43, "Input shape[");
        }

        v29 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v36);
        v30 = v29;
        if (*v29)
        {
          mlir::Diagnostic::operator<<<6ul>((v29 + 1), "] is ");
        }

        v31 = mlir::InFlightDiagnostic::operator<<<long long const&>(v30, (v9 + 8 * v36));
        v32 = v31;
        if (*v31)
        {
          mlir::Diagnostic::operator<<<22ul>((v31 + 1), ", but indices shape [");
        }

        v33 = mlir::InFlightDiagnostic::operator<<<int &>(v32, &v36);
        v34 = v33;
        if (*v33)
        {
          mlir::Diagnostic::operator<<<6ul>((v33 + 1), "] is ");
        }

        v23 = mlir::InFlightDiagnostic::operator<<<long long const&>(v34, &v7[v36]);
        goto LABEL_31;
      }

LABEL_44:
      v24 = 1;
      goto LABEL_45;
    }

    v40 = 257;
    mlir::Operation::emitError(&v42, *this, v39);
    if (v42)
    {
      mlir::Diagnostic::operator<<<14ul>(&v43, "Invalid axis ");
    }

    v28 = mlir::InFlightDiagnostic::operator<<<int &>(&v42, &v37);
    v21 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<<26ul>((v28 + 1), " when the input has rank ");
    }

    v22 = &v41;
LABEL_30:
    v23 = mlir::InFlightDiagnostic::operator<<<long long &>(v21, v22);
LABEL_31:
    v24 = *(v23 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
LABEL_45:
    result = v24 & 1;
    goto LABEL_46;
  }

  v35 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::TransposeOp::fold(v35);
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::fold(uint64_t a1)
{
  v1 = *(*(*a1 + 72) + 56);
  v16 = 0;
  *&v17 = &v16;
  if ((~*(v1 + 8) & 7) == 0)
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v1 + 24 * *(v1 + 16);
    v5 = v4 + 120;
    if (v4 == -120)
    {
      return 0;
    }
  }

  else
  {
    v5 = v1 + 16 * v3 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v17, v5))
  {
    return 0;
  }

  v6 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v16, &v17);
  v15 = v17;
  if (*(v6 + 16) >= 1)
  {
    v7 = 0;
    v8 = v18;
    v9 = v19;
    do
    {
      v17 = v15;
      v18 = v8 + v7;
      v19 = v9;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v17, &v13);
      if (v14 > 0x40)
      {
        v11 = *v13;
        MEMORY[0x25F891010]();
        if (v7 != v11)
        {
          return 0;
        }
      }

      else
      {
        if (v14)
        {
          v10 = (v13 << -v14) >> -v14;
        }

        else
        {
          v10 = 0;
        }

        if (v7 != v10)
        {
          return 0;
        }
      }

      ++v7;
    }

    while (*(v6 + 16) > v7);
  }

  return *(*(*a1 + 72) + 24) | 4;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verify(void ***this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v11 = *((*this)[9] + 7);
  v52 = 0;
  v53 = 0;
  v56 = &v52;
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_32;
  }

  v14 = *(v12 + 8) & 7;
  if (v14 == 6)
  {
    v15 = v12 + 24 * *(v12 + 16);
    v16 = v15 + 120;
    if (v15 == -120)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v16 = v12 + 16 * v14 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v56, v16))
  {
    goto LABEL_32;
  }

  v17 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_32;
  }

  v18 = *(*this - 1);
  v19 = v17[2];
  if (v19)
  {
    v20 = v17[1];
    v21 = 8 * v19;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_32;
  }

LABEL_15:
  v22 = v18 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v18 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
LABEL_32:
    v33 = 1;
LABEL_33:
    v34 = *MEMORY[0x277D85DE8];
    return v33;
  }

  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 8);
    v25 = 8 * v23;
    while (*v24 != 0x8000000000000000)
    {
      ++v24;
      v25 -= 8;
      if (!v25)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_32;
  }

LABEL_20:
  mlir::ODIE::Compiler::extract1DIntVector<int>(v11, &v52);
  if (v55)
  {
    v56 = v58;
    v57 = 0xC00000000;
    if (!v53 || (llvm::SmallVectorImpl<int>::operator=(&v56, &v52), (v55 & 1) != 0))
    {
      if (v52 != &v54)
      {
        free(v52);
      }
    }

    v26 = v56;
    if (v57)
    {
      v27 = 0;
      v29 = v17[1];
      v28 = v17[2];
      v30 = 4 * v57;
      v31 = *(v22 + 8);
      while (1)
      {
        v51 = v27;
        v32 = *(v56 + v27);
        if ((v32 & 0x80000000) != 0 || v28 <= v32)
        {
          break;
        }

        if (*(v29 + 8 * v32) != *(v31 + 8 * v27))
        {
          v50 = 257;
          mlir::Operation::emitError(&v52, *this, v49);
          if (v52)
          {
            mlir::Diagnostic::operator<<<55ul>(&v53, "mismatch in result shape and permutation. resultShape[");
          }

          v37 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v52, &v51);
          v38 = v37;
          if (*v37)
          {
            mlir::Diagnostic::operator<<<21ul>((v37 + 1), "] is expected to be ");
          }

          v36 = mlir::InFlightDiagnostic::operator<<<long long const&>(v38, (v29 + 8 * *(v26 + v27)));
          goto LABEL_42;
        }

        ++v27;
        v30 -= 4;
        if (!v30)
        {
          goto LABEL_31;
        }
      }

      v50 = 257;
      mlir::Operation::emitError(&v52, *this, v49);
      if (v52)
      {
        mlir::Diagnostic::operator<<<49ul>(&v53, "permutation must only hold values between 0 and ");
      }

      v48 = v28 - 1;
      v36 = mlir::InFlightDiagnostic::operator<<<long long>(&v52, &v48);
LABEL_42:
      v39 = *(v36 + 200);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v52);
      v33 = (v39 & 1) == 0;
      v26 = v56;
    }

    else
    {
LABEL_31:
      v33 = 1;
    }

    if (v26 != v58)
    {
      free(v26);
    }

    goto LABEL_33;
  }

  v40 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11);
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = *MEMORY[0x277D85DE8];
  v49[0] = a4;
  v49[1] = a5;
  if (a5 == 2)
  {
    v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
    if ((a4 & 6) != 0 || !v13)
    {
      if ((a4 & 6) == 2 && v13)
      {
        v13 = v13[3];
      }
    }

    else
    {
      v13 = *v13;
    }

    v16 = (v13[1] & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = *MEMORY[0x277D85DE8];

      return mlir::emitOptionalError<char const(&)[30]>(a2, a3, "input must be a ranked tensor");
    }

    v18 = v16[2];
    v19 = mlir::ValueRange::dereference_iterator(v49, 1);
    v50[0] = 0;
    v50[1] = 0;
    *&v44 = v50;
    if ((~*(v19 + 8) & 7) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (!v20)
    {
LABEL_31:
      v50[0] = v51;
      v50[1] = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(v50, v18, 0x8000000000000000);
      v30 = v16[3];
      *&v44 = v50[0];
      *(&v44 + 1) = LODWORD(v50[1]);
      v47 = v30;
      *&v42 = 0;
      v31 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), &v44, &v47, &v42);
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v31);
      v32 = v50[0];
      if (v50[0] == v51)
      {
LABEL_33:
        result = 1;
LABEL_34:
        v33 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_32:
      free(v32);
      goto LABEL_33;
    }

    v21 = *(v20 + 8) & 7;
    if (v21 == 6)
    {
      v22 = v20 + 24 * *(v20 + 16);
      v23 = v22 + 120;
      if (v22 == -120)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v23 = v20 + 16 * v21 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v44, v23))
    {
      goto LABEL_31;
    }

    v24 = v16[1];
    v43 = 0;
    v25 = mlir::ValueRange::dereference_iterator(v49, 1);
    v50[0] = &v43;
    if ((~*(v25 + 8) & 7) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v27 = *(v26 + 8) & 7;
      if (v27 == 6)
      {
        v28 = v26 + 24 * *(v26 + 16);
        v29 = v28 + 120;
        if (v28 == -120)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v29 = v26 + 16 * v27 + 16;
      }

      if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v50, v29))
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v43, v50);
        v42 = *v50;
        v34 = v51[0];
        v35 = v52;
        v36 = v52 - v51[0];
        if (v52 - v51[0] != v18)
        {
          result = mlir::emitOptionalError<char const(&)[48]>(a2, a3, "length of permutation must match the input rank");
          goto LABEL_34;
        }

        v37 = v51[1];
        v50[0] = v51;
        v50[1] = 0x600000000;
        llvm::SmallVectorImpl<long long>::resizeImpl<false>(v50, v18);
        v38 = v50[0];
        v44 = v42;
        v45 = v34;
        v46 = v37;
        if (v35 != v34)
        {
          v39 = v34 + 1;
          do
          {
            mlir::DenseElementsAttr::IntElementIterator::operator*(&v44, &v47);
            if (v48 > 0x40)
            {
              *v38 = *(v24 + 8 * *v47);
              MEMORY[0x25F891010]();
            }

            else
            {
              if (v48)
              {
                v40 = v47 << -v48 >> -v48;
              }

              else
              {
                v40 = 0;
              }

              *v38 = *(v24 + 8 * v40);
            }

            v45 = v39;
            ++v38;
            ++v39;
            --v36;
          }

          while (v36);
          v38 = v50[0];
        }

        v41 = mlir::RankedTensorType::get(v38, LODWORD(v50[1]), v16[3], 0);
        llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a11, v41);
        v32 = v50[0];
        if (v50[0] == v51)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

LABEL_50:
    result = mlir::emitOptionalError<char const(&)[36]>(a2, a3, "permutation must be a 1D int vector");
    goto LABEL_34;
  }

  v14 = *MEMORY[0x277D85DE8];

  return mlir::emitOptionalError<char const(&)[28]>(a2, a3, "expected exactly 2 operands");
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::refineReturnTypes(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v21 = 0x600000000;
  __src = v22;
  if (mlir::ODIE::Compiler::CoreML::TransposeOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &__src))
  {
    if (!mlir::ODIE::Compiler::areTypesCompatible(*a11 & 0xFFFFFFFFFFFFFFF9 | 2, *(a11 + 8), __src & 0xFFFFFFFFFFFFFFF9 | 2, v21))
    {
      v13 = __src;
      v14 = __src + 8 * v21;
      *(a11 + 8) = 0;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a11, v13, v14);
    }

    v15 = 1;
  }

  else
  {
    v15 = mlir::emitOptionalError<char const(&)[40]>(a2, a3, "fails to infer the type of transpose op");
  }

  if (__src != v22)
  {
    free(__src);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(mlir::ODIE::Compiler::CoreML::MaxPool2dOp *this)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v51 = 2;
  v3 = *(v2 + 72);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  v7 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v8 = v7[2];
    if (!v8)
    {
LABEL_29:
      v58 = 257;
      mlir::Operation::emitError(&v59, v2, &v55);
      if (v59)
      {
        mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
      }

      v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
      if (!*v24)
      {
        goto LABEL_38;
      }

      v25 = " elements in strides";
LABEL_37:
      mlir::Diagnostic::operator<<<21ul>(v24 + 8, v25);
LABEL_38:
      v1 = (*(v24 + 200) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
LABEL_39:
      v26 = *MEMORY[0x277D85DE8];
      return v1;
    }

    v9 = 0;
    v10 = v7[1];
    while (v10[v9] != 0x8000000000000000)
    {
      if (v8 == ++v9)
      {
        if (v8 != 1 || *v10 != 2)
        {
          goto LABEL_29;
        }

        break;
      }
    }
  }

  v11 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_15;
  }

  v12 = v11[2];
  if (!v12)
  {
LABEL_33:
    v58 = 257;
    mlir::Operation::emitError(&v59, v2, &v55);
    if (v59)
    {
      mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
    }

    v24 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
    if (!*v24)
    {
      goto LABEL_38;
    }

    v25 = " elements in padding";
    goto LABEL_37;
  }

  v13 = 0;
  v14 = v11[1];
  while (v14[v13] != 0x8000000000000000)
  {
    if (v12 == ++v13)
    {
      if (v12 != 1 || *v14 != 2)
      {
        goto LABEL_33;
      }

      break;
    }
  }

LABEL_15:
  v15 = *(v6 + 8);
  v16 = v15 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v15 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_40:
    v58 = 257;
    mlir::Operation::emitError(&v59, v2, &v55);
    if (v59)
    {
      mlir::Diagnostic::operator<<<8ul>(&v60, "expect ");
    }

    v28 = mlir::InFlightDiagnostic::operator<<<int &>(&v59, &v51);
    v24 = v28;
    if (*v28)
    {
      mlir::Diagnostic::operator<<<22ul>((v28 + 1), " elements in dilation");
    }

    goto LABEL_38;
  }

  v18 = 0;
  v19 = *(v16 + 8);
  while (v19[v18] != 0x8000000000000000)
  {
    if (v17 == ++v18)
    {
      if (v17 != 1 || *v19 != 2)
      {
        goto LABEL_40;
      }

      break;
    }
  }

LABEL_22:
  v59 = 0;
  v60 = 0;
  v55 = &v59;
  if ((~v15 & 7) != 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_60;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v23))
  {
    mlir::ODIE::Compiler::extract1DIntVector<int>(v6, &v59);
    if ((v62 & 1) == 0)
    {
      goto LABEL_112;
    }

    v55 = v57;
    v56 = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(&v55, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v29 = v55;
    if (*v55 < 1 || *(v55 + 1) <= 0)
    {
      v54 = 257;
      mlir::Operation::emitError(&v59, v2, v52);
      if (v59)
      {
        mlir::Diagnostic::operator<<<21ul>(&v60, "dilation must be > 0");
      }

      v1 = (v63 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
      v30 = 0;
      v29 = v55;
    }

    else
    {
      v30 = 1;
    }

    if (v29 != v57)
    {
      free(v29);
    }

    if (!v30)
    {
      goto LABEL_39;
    }
  }

LABEL_60:
  v59 = 0;
  v60 = 0;
  v55 = &v59;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v31 = v5;
  }

  else
  {
    v31 = 0;
  }

  if (!v31)
  {
    goto LABEL_111;
  }

  v32 = *(v31 + 8) & 7;
  if (v32 == 6)
  {
    v33 = v31 + 24 * *(v31 + 16);
    v34 = v33 + 120;
    if (v33 == -120)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v34 = v31 + 16 * v32 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v55, v34))
  {
LABEL_111:
    v1 = 1;
    goto LABEL_39;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v5, &v59);
  if (v62)
  {
    v55 = v57;
    v56 = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(&v55, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v35 = v51;
    v36 = v55;
    do
    {
      v37 = *v36++;
      if (v37 < 0)
      {
        v54 = 257;
        mlir::Operation::emitError(&v59, v2, v52);
        if (v59)
        {
          mlir::Diagnostic::operator<<<21ul>(&v60, "padding must be >= 0");
        }

        v42 = 1;
        v1 = (v63 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
        goto LABEL_108;
      }

      --v35;
    }

    while (v35);
    v59 = 0;
    v60 = 0;
    v52[0] = &v59;
    if ((~*(v4 + 8) & 7) != 0)
    {
      v38 = v4;
    }

    else
    {
      v38 = 0;
    }

    if (!v38)
    {
      goto LABEL_107;
    }

    v39 = *(v38 + 8) & 7;
    if (v39 == 6)
    {
      v40 = v38 + 24 * *(v38 + 16);
      v41 = v40 + 120;
      if (v40 == -120)
      {
LABEL_107:
        v42 = 0;
        goto LABEL_108;
      }
    }

    else
    {
      v41 = v38 + 16 * v39 + 16;
    }

    if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v52, v41))
    {
      goto LABEL_107;
    }

    mlir::ODIE::Compiler::extract1DIntVector<int>(v4, &v59);
    if ((v62 & 1) == 0)
    {
      goto LABEL_112;
    }

    v52[0] = v53;
    v52[1] = 0xC00000000;
    if (!v60 || (llvm::SmallVectorImpl<int>::operator=(v52, &v59), (v62 & 1) != 0))
    {
      if (v59 != v61)
      {
        free(v59);
      }
    }

    v43 = v52[0];
    if (*v55 <= *v52[0] / 2)
    {
      v45 = 1;
      while (v51 != v45)
      {
        v46 = *(v55 + v45);
        v47 = *(v52[0] + v45++);
        if (v46 > v47 / 2)
        {
          v44 = v45 - 1 < v51;
          goto LABEL_100;
        }
      }

      v44 = 0;
      v42 = 0;
    }

    else
    {
      v44 = 1;
LABEL_100:
      v50 = 257;
      mlir::Operation::emitError(&v59, v2, v49);
      if (v59)
      {
        mlir::Diagnostic::operator<<<35ul>(&v60, "padding must be <= kernel_size / 2");
      }

      v42 = 1;
      v1 = (v63 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
      v43 = v52[0];
    }

    if (v43 != v53)
    {
      free(v43);
    }

    if (!v44)
    {
      goto LABEL_107;
    }

LABEL_108:
    if (v55 != v57)
    {
      free(v55);
    }

    if (v42)
    {
      goto LABEL_39;
    }

    goto LABEL_111;
  }

LABEL_112:
  v48 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verify(v48);
}