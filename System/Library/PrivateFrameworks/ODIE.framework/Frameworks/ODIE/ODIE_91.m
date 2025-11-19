unint64_t mlir::tensor::ScatterOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v9 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::ScatterOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 6)
  {
    if (*a3 != 1902734965 || *(a3 + 4) != 25973)
    {
      goto LABEL_13;
    }

    v5 = a2[1];
LABEL_15:
    v7 = v5 & 0xFFFFFFFFFFFFFF00;
    return v7 | v5;
  }

  if (a4 == 12 && *a3 == 0x5F72657474616373 && *(a3 + 8) == 1936550244)
  {
    v5 = *a2;
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void *mlir::tensor::ScatterOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 6)
  {
    if (*a2 == 1902734965 && *(a2 + 4) == 25973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
        {
          v6 = a4;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      result[1] = v6;
    }
  }

  else if (a3 == 12 && *a2 == 0x5F72657474616373 && *(a2 + 8) == 1936550244)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a4[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v7[2] == 64)
      {
        v8 = a4;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    *result = v8;
  }

  return result;
}

void mlir::tensor::ScatterOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "scatter_dims";
    v12 = 12;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "unique";
    v12 = 6;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::tensor::ScatterOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "scatter_dims", 12, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v13, "unique", 6, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ScatterOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 1);
    v14[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "scatter_dims", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), 2u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      v9 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v12 = "requires attribute 'scatter_dims'";
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::tensor::ScatterOp::parse(uint64_t *a1, uint64_t a2)
{
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v20[0] = v21;
  v20[1] = 1;
  memset(v18, 0, sizeof(v18));
  v19 = 0;
  v17[0] = v18;
  v17[1] = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v23) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v18, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    return 0;
  }

  v26 = 257;
  if (((*(*a1 + 400))(a1, "scatter_dims", 12, &v23) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2);
    *v4 = v13;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ScatterOpGenericAdaptorBase::Properties>(a2) + 8) = v5;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v23 = a1;
  v24 = &v10;
  v25 = a2;
  if (!mlir::tensor::ScatterOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ScatterOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v23))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v10 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v10))
  {
    return 0;
  }

  v7 = *(v10 + 8);
  v11 = *(v10 + 16);
  v12 = v7;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v11 + 8 * v7), (v11 + 8 * v7 + 8 * *(v10 + 12)));
  v23 = v20;
  v24 = v17;
  v25 = v14;
  v8 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v23, &v11, v8, a2 + 16);
}

void mlir::tensor::ScatterOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if (v7 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 32);
  }

  else
  {
    *(v6 + 4) = v7 + 1;
    *v7 = 32;
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) - v9 > 3uLL)
  {
    *v9 = 1869901417;
    *(v8 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v8, "into", 4uLL);
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if (*(v12 + 3) == v13)
  {
    llvm::raw_ostream::write(v12, "[", 1uLL);
  }

  else
  {
    *v13 = 91;
    ++*(v12 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 88));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "]", 1uLL);
  }

  else
  {
    *v15 = 93;
    ++*(v14 + 4);
  }

  v16 = (*(*a2 + 16))(a2);
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

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) > 0xB)
  {
    *(v19 + 8) = 1936550244;
    *v19 = *"scatter_dims";
    *(v18 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v18, "scatter_dims", 0xCuLL);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, "(", 1uLL);
  }

  else
  {
    *v21 = 40;
    ++*(v20 + 4);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ")", 1uLL);
  }

  else
  {
    *v23 = 41;
    ++*(v22 + 4);
  }

  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = *(v24 + 4);
    if (v25 >= *(v24 + 3))
    {
      llvm::raw_ostream::write(v24, 32);
    }

    else
    {
      *(v24 + 4) = v25 + 1;
      *v25 = 32;
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = *(v26 + 4);
    if ((*(v26 + 3) - v27) > 5)
    {
      *(v27 + 4) = 25973;
      *v27 = 1902734965;
      *(v26 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v26, "unique", 6uLL);
    }
  }

  v43 = v45;
  v44 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "scatter_dims", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v43, "unique", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v43, v44);
  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (*(v31 + 3) == v32)
  {
    llvm::raw_ostream::write(v31, ":", 1uLL);
  }

  else
  {
    *v32 = 58;
    ++*(v31 + 4);
  }

  v33 = (*(*a2 + 16))(a2);
  v34 = *(v33 + 4);
  if (v34 >= *(v33 + 3))
  {
    llvm::raw_ostream::write(v33, 32);
  }

  else
  {
    *(v33 + 4) = v34 + 1;
    *v34 = 32;
  }

  v35 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v36 = *(v35 + 9);
    v37 = *(v35 + 17);
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v42[0] = v36;
  v42[1] = 0;
  v42[2] = v36;
  v42[3] = v37;
  v38 = *(v35 + 9);
  v39 = v35 - 16;
  if (!v38)
  {
    v39 = 0;
  }

  v41[0] = v39;
  v41[1] = 0;
  v41[2] = v39;
  v41[3] = v38;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v42, v41);
  if (v43 != v45)
  {
    free(v43);
  }

  v40 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::tensor::SplatOp::getODSOperandIndexAndLength(mlir::tensor::SplatOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 2) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

BOOL mlir::tensor::SplatOp::verifyInvariantsImpl(mlir::tensor::SplatOp *this)
{
  v38 = *MEMORY[0x277D85DE8];
  ODSOperands = mlir::tensor::SplatOp::getODSOperands(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = ODSOperands + 24;
    do
    {
      v7 = *this;
      v8 = (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      v33 = v5;
      v9 = *v8;
      v10 = *(*v8 + 136);
      if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        if (!(v8[2] >> 30))
        {
          goto LABEL_14;
        }
      }

      else if (v10 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_14;
      }

      v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v9 + 8, v11))
      {
        v32 = 261;
        v31[0] = "operand";
        v31[1] = 7;
        mlir::Operation::emitOpError(v7, v31, &v36);
        if (v36)
        {
          mlir::Diagnostic::operator<<<3ul>(v37, " #");
        }

        v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v36, &v33);
        v13 = v12;
        if (*v12)
        {
          mlir::Diagnostic::operator<<<44ul>((v12 + 1), " must be integer/index/float type, but got ");
          if (*v13)
          {
            v34 = 4;
            v35 = v8;
            v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v34, 1);
            v15 = v13[3] + 24 * *(v13 + 8);
            v16 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v16;
            ++*(v13 + 8);
          }
        }

        v17 = *(v13 + 200);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
        if (v17)
        {
          goto LABEL_28;
        }
      }

LABEL_14:
      ++v5;
      v6 += 32;
    }

    while (v4 != v5);
  }

  v18 = mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      LODWORD(v4) = v4 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_28;
  }

LABEL_19:
  if (*(*this + 36))
  {
    v22 = *this - 16;
  }

  else
  {
    v22 = 0;
  }

  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  v23 = *this - 16;
  if (!*(*this + 36))
  {
    v23 = 0;
  }

  v24 = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(*v24 + 136);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v30 = 24;
  }

  else
  {
    if (v25 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v26 = 0;
      goto LABEL_33;
    }

    v30 = 8;
  }

  v26 = *(v24 + v30);
LABEL_33:
  v27 = 1;
  if (v26 != (*(*(mlir::tensor::SplatOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v31[0] = "failed to verify that operand type matches element type of result";
    v32 = 259;
    mlir::Operation::emitOpError(*this, v31, &v36);
    v27 = (v37[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
  }

LABEL_29:
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::tensor::SplatOp::getODSOperands(mlir::tensor::SplatOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::SplatOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::tensor::SplatOp::parse(uint64_t a1, uint64_t a2)
{
  v27[16] = *MEMORY[0x277D85DE8];
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  v25 = v27;
  v26 = 0x400000000;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v21, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((*(*a1 + 320))(a1))
  {
    (*(*a1 + 40))(a1);
    if (((*(*a1 + 720))(a1, &v25, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 328))(a1) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v23))
  {
    goto LABEL_25;
  }

  v4 = v23;
  v19 = v23;
  __src = v23;
  v5 = *v23;
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v9 = mlir::detail::InterfaceMap::lookup(v5 + 8, v8);
    (*(v9 + 8))(v9, v4);
    v10 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v21);
    v11 = *(*__src + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 24;
    }

    else
    {
      if (v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v12 = 0;
        goto LABEL_19;
      }

      v13 = 8;
    }

    v12 = *(__src + v13);
LABEL_19:
    if ((*(*a1 + 728))(a1, v21, v12, a2 + 16))
    {
      if (!v26)
      {
        v7 = 1;
        goto LABEL_26;
      }

      v14 = v25;
      v15 = 32 * v26;
      while (((*(*a1 + 728))(a1, v14, v10, a2 + 16) & 1) != 0)
      {
        v14 += 32;
        v7 = 1;
        v15 -= 32;
        if (!v15)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v7 = 0;
    goto LABEL_26;
  }

  v6 = (*(*a1 + 16))(a1);
  v18[16] = 257;
  (*(*a1 + 24))(&v23, a1, v6, v18);
  if (v23)
  {
    mlir::Diagnostic::operator<<<63ul>(v24, "'aggregate' must be ranked tensor of any type values, but got ");
    if (v23)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v24, &v19);
    }
  }

  v7 = (v24[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
LABEL_26:
  if (v25 != v27)
  {
    free(v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::tensor::SplatOp::print(mlir::tensor::SplatOp *this, mlir::OpAsmPrinter *a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  ODSOperands = mlir::tensor::SplatOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v7)
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (*(v8 + 3) == v9)
    {
      llvm::raw_ostream::write(v8, "[", 1uLL);
    }

    else
    {
      *v9 = 91;
      ++*(v8 + 4);
    }

    v10 = mlir::tensor::SplatOp::getODSOperands(this, 1u);
    v12 = v11;
    v13 = (*(*a2 + 16))(a2);
    if (v12)
    {
      v14 = v13;
      (*(*a2 + 160))(a2, *(v10 + 24));
      v15 = v12 - 1;
      if (v15)
      {
        v16 = (v10 + 56);
        do
        {
          v17 = *(v14 + 4);
          if (*(v14 + 3) - v17 > 1uLL)
          {
            *v17 = 8236;
            *(v14 + 4) += 2;
          }

          else
          {
            llvm::raw_ostream::write(v14, ", ", 2uLL);
          }

          v18 = *v16;
          v16 += 4;
          (*(*a2 + 160))(a2, v18);
          --v15;
        }

        while (v15);
      }
    }

    v19 = (*(*a2 + 16))(a2);
    v20 = *(v19 + 4);
    if (*(v19 + 3) == v20)
    {
      llvm::raw_ostream::write(v19, "]", 1uLL);
    }

    else
    {
      *v20 = 93;
      ++*(v19 + 4);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v30, 0);
  v22 = (*(*a2 + 16))(a2);
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

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, ":", 1uLL);
  }

  else
  {
    *v25 = 58;
    ++*(v24 + 4);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  v28 = *this - 16;
  if (!*(*this + 36))
  {
    v28 = 0;
  }

  (*(*a2 + 32))(a2, *(v28 + 8) & 0xFFFFFFFFFFFFFFF8);
  v29 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::UnPackOpGenericAdaptorBase::UnPackOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  *(result + 40) = *(v2 + 16);
  *(result + 24) = v3;
  v4 = *(a2 + 44);
  v5 = v4 & 0x7FFFFF;
  if ((v4 & 0x7FFFFF) != 0)
  {
    v6 = ((a2 + 64 + 16 * ((v4 >> 23) & 1) + ((v4 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *(result + 48) = v6;
  *(result + 56) = v5;
  return result;
}

unint64_t mlir::tensor::UnPackOp::getODSOperandIndexAndLength(mlir::tensor::UnPackOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor8UnPackOp27getODSOperandIndexAndLengthEj_isVariadic;
    do
    {
      v5 = *v4++;
      v2 += v5;
      --v3;
    }

    while (v3);
  }

  if ((*(*this + 46) & 0x80) != 0)
  {
    v6 = *(*this + 68);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2 + (v6 - 3) * v2;
  v8 = 0x100000000;
  if (__const__ZN4mlir6tensor8UnPackOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::tensor::UnPackOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v26, a4);
    if (v26)
    {
      mlir::Diagnostic::operator<<<42ul>(v27, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "inner_dims_pos", 0xEuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
      {
        a3(&v26, a4);
        if (!v26)
        {
          goto LABEL_4;
        }

        goto LABEL_29;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "outer_dims_perm", 0xFuLL);
  if ((v15 & 1) == 0 || (v12 = *(v14 + 8)) == 0)
  {
LABEL_18:
    v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_inner_tiles", 0x12uLL);
    if ((v18 & 1) == 0)
    {
      goto LABEL_24;
    }

    v19 = *(v17 + 8);
    if (!v19)
    {
      goto LABEL_24;
    }

    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v20 = v19[1];
      if (*(*v20 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v20[2] == 64)
      {
        a1[2] = v19;
LABEL_24:
        result = 1;
        goto LABEL_5;
      }
    }

    a3(&v26, a4);
    if (v26)
    {
      if (v26)
      {
        v24 = 0;
        v25 = v19;
        goto LABEL_34;
      }
    }

    goto LABEL_4;
  }

  if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v16 = v12[1];
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 64)
    {
      a1[1] = v12;
      goto LABEL_18;
    }
  }

  a3(&v26, a4);
  if (!v26)
  {
    goto LABEL_4;
  }

LABEL_29:
  if (v26)
  {
    v24 = 0;
    v25 = v12;
LABEL_34:
    v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v28, &v24, 1);
    v22 = v28 + 24 * v29;
    v23 = *v21;
    *(v22 + 16) = *(v21 + 16);
    *v22 = v23;
    ++v29;
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
  result = 0;
LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::UnPackOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v21 = v23;
  v22 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v20 = 261;
    v18 = "inner_dims_pos";
    v19 = 14;
    v7 = mlir::StringAttr::get(v6, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v20 = 261;
    v18 = "outer_dims_perm";
    v19 = 15;
    v10 = mlir::StringAttr::get(v9, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v20 = 261;
    v18 = "static_inner_tiles";
    v19 = 18;
    v13 = mlir::StringAttr::get(v12, &v18, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v21, v13, v11);
  }

  v14 = v21;
  if (v22)
  {
    v15 = mlir::DictionaryAttr::get(a1, v21, v22);
    v14 = v21;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v23)
  {
    free(v14);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

unint64_t mlir::tensor::UnPackOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = HIDWORD(a1[1]);
  v4 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v3);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v5 = HIDWORD(a1[2]);
  v6 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v5);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
  memset(v12, 0, sizeof(v12));
  v13 = 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (v2 ^ (v2 >> 47));
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(&v11, 0, v12, &v12[3] + 8, &v10, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::UnPackOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 18)
  {
    if (*a3 != 0x695F636974617473 || *(a3 + 8) != 0x6C69745F72656E6ELL || *(a3 + 16) != 29541)
    {
      goto LABEL_23;
    }

    v5 = a2[2];
    goto LABEL_25;
  }

  if (a4 == 15)
  {
    if (*a3 != 0x69645F726574756FLL || *(a3 + 7) != 0x6D7265705F736D69)
    {
      goto LABEL_23;
    }

    v5 = a2[1];
LABEL_25:
    v9 = v5 & 0xFFFFFFFFFFFFFF00;
    return v9 | v5;
  }

  if (a4 == 14 && *a3 == 0x69645F72656E6E69 && *(a3 + 6) == 0x736F705F736D6964)
  {
    v5 = *a2;
    goto LABEL_25;
  }

LABEL_23:
  LOBYTE(v5) = 0;
  v9 = 0;
  return v9 | v5;
}

void *mlir::tensor::UnPackOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 18)
  {
    if (*a2 == 0x695F636974617473 && *(a2 + 8) == 0x6C69745F72656E6ELL && *(a2 + 16) == 29541)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v10 = a4[1], *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v10[2] == 64)
        {
          v11 = a4;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      result[2] = v11;
    }
  }

  else if (a3 == 15)
  {
    if (*a2 == 0x69645F726574756FLL && *(a2 + 7) == 0x6D7265705F736D69)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = a4[1], *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v6[2] == 64)
        {
          v7 = a4;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      result[1] = v7;
    }
  }

  else if (a3 == 14 && *a2 == 0x69645F72656E6E69 && *(a2 + 6) == 0x736F705F736D6964)
  {
    if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v12 = a4[1], *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
    {
      if (v12[2] == 64)
      {
        v13 = a4;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    *result = v13;
  }

  return result;
}

void mlir::tensor::UnPackOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v16 = 261;
    v14 = "inner_dims_pos";
    v15 = 14;
    v7 = mlir::StringAttr::get(v6, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v16 = 261;
    v14 = "outer_dims_perm";
    v15 = 15;
    v10 = mlir::StringAttr::get(v9, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v16 = 261;
    v14 = "static_inner_tiles";
    v15 = 18;
    v13 = mlir::StringAttr::get(v12, &v14, a3);
    mlir::NamedAttrList::push_back(a3, v13, v11);
  }
}

BOOL mlir::tensor::UnPackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "inner_dims_pos", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "outer_dims_perm", 15, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_inner_tiles", 18, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = (*a1 + 16 * ((*(*a1 + 44) >> 23) & 1));
  (*(*a2 + 16))(a2, v3[8]);
  (*(*a2 + 24))(a2, v3[9]);
  v4 = v3[10];
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::tensor::UnPackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v15[0] = a4;
  v15[1] = a5;
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (a5 >= 2)
  {
    v12 = 1;
    **a11 = *(mlir::ValueRange::dereference_iterator(v15, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::tensor::UnPackOp::verifyInvariantsImpl(unsigned int **this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v26 = "requires attribute 'inner_dims_pos'";
    goto LABEL_30;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v26 = "requires attribute 'static_inner_tiles'";
    goto LABEL_30;
  }

  v8 = *(v4 + 1);
  v31[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "outer_dims_perm", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
  {
    goto LABEL_27;
  }

  v31[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v5, "inner_dims_pos", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
  {
    goto LABEL_27;
  }

  v31[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_inner_tiles", 18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v31))
  {
    goto LABEL_27;
  }

  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
    {
      ++v12;
      v13 += 32;
      if (v11 == v12)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_27;
  }

LABEL_10:
  v14 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = v14 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_27;
  }

LABEL_14:
  v18 = mlir::tensor::UnPackOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_27;
  }

LABEL_18:
  v22 = (*this)[9] ? (*this - 4) : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_27:
    v23 = 0;
    goto LABEL_31;
  }

  v23 = 1;
  v24 = *(*(mlir::tensor::UnPackOp::getODSOperands(this, 1u) + 24) + 8);
  v2 = *this;
  if ((*this)[9])
  {
    v25 = (*this - 4);
  }

  else
  {
    v25 = 0;
  }

  if ((*(v25 + 8) ^ v24) >= 8)
  {
    v26 = "failed to verify that result type matches type of dest";
LABEL_30:
    v29 = v26;
    v30 = 259;
    mlir::Operation::emitOpError(v2, &v29, v31);
    v23 = v32 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
  }

LABEL_31:
  v27 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

uint64_t mlir::tensor::UnPackOp::getODSOperands(mlir::tensor::UnPackOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::UnPackOp::getODSOperandIndexAndLength(this, a2);
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(*this + 72);
  }

  else
  {
    v4 = 0;
  }

  return v4 + 32 * ODSOperandIndexAndLength;
}

BOOL mlir::tensor::UnPackOp::parse(uint64_t a1, uint64_t a2)
{
  v41[16] = *MEMORY[0x277D85DE8];
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v30 = 0;
  v31 = 0;
  v39 = v41;
  v40 = 0x400000000;
  v29 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v26[0] = v27;
  v26[1] = 1;
  v24[1] = 1;
  v25 = 0;
  __src = 0;
  v24[0] = &v25;
  v22[0] = &__src;
  v22[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_35;
  }

  if ((*(*a1 + 408))(a1, "outer_dims_perm", 15))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v31, 0))
    {
      goto LABEL_35;
    }

    if (v31)
    {
      v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
      *(v5 + 8) = v31;
    }
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v35) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v30, 0))
  {
    goto LABEL_35;
  }

  if (v30)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
    *v6 = v30;
  }

  v37 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v35) & 1) == 0)
  {
    goto LABEL_35;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  (*(*a1 + 40))(a1);
  v35 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v39, &v29, &v35, 0))
  {
    goto LABEL_35;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 16) = v29;
  v37 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v35) & 1) == 0)
  {
    goto LABEL_35;
  }

  v8 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v27, 1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v19[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = *(a2 + 8);
  v35 = a1;
  v36[0] = v19;
  v36[1] = a2;
  if (!mlir::tensor::UnPackOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::UnPackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v35))
  {
    goto LABEL_35;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v35 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v35))
  {
    goto LABEL_35;
  }

  v25 = v35;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_35;
  }

  v35 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v35))
  {
    goto LABEL_35;
  }

  __src = v35;
  v21 = v35;
  if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = llvm::cast<mlir::ShapedType,mlir::Type>(&v21);
    (*(v13 + 8))(v13, v12);
    v14 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v24);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v24, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v26, v22, v8, a2 + 16))
    {
      if (!v40)
      {
        v11 = 1;
        goto LABEL_36;
      }

      v15 = v39;
      v16 = 32 * v40;
      while (((*(*a1 + 728))(a1, v15, v14, a2 + 16) & 1) != 0)
      {
        v15 += 32;
        v11 = 1;
        v16 -= 32;
        if (!v16)
        {
          goto LABEL_36;
        }
      }
    }

LABEL_35:
    v11 = 0;
    goto LABEL_36;
  }

  v10 = (*(*a1 + 16))(a1);
  v20 = 257;
  (*(*a1 + 24))(&v35, a1, v10, v19);
  if (v35)
  {
    mlir::Diagnostic::operator<<<58ul>(v36, "'dest' must be ranked tensor of any type values, but got ");
    if (v35)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v36, &v21);
    }
  }

  v11 = (v38 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
LABEL_36:
  if (v39 != v41)
  {
    free(v39);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

void mlir::tensor::UnPackOp::print(mlir::tensor::UnPackOp *this, mlir::OpAsmPrinter *a2)
{
  v68[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v7 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v7 && v7 != mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
    v8 = (*(*a2 + 16))(a2);
    v9 = *(v8 + 4);
    if (v9 >= *(v8 + 3))
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      *(v8 + 4) = v9 + 1;
      *v9 = 32;
    }

    v10 = (*(*a2 + 16))(a2);
    v11 = *(v10 + 4);
    if (*(v10 + 3) - v11 > 0xEuLL)
    {
      qmemcpy(v11, "outer_dims_perm", 15);
      *(v10 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v10, "outer_dims_perm", 0xFuLL);
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (v13 >= *(v12 + 3))
    {
      llvm::raw_ostream::write(v12, 32);
    }

    else
    {
      *(v12 + 4) = v13 + 1;
      *v13 = 32;
    }

    v14 = (*(*a2 + 16))(a2);
    v15 = *(v14 + 4);
    if (*(v14 + 3) == v15)
    {
      llvm::raw_ostream::write(v14, "=", 1uLL);
    }

    else
    {
      *v15 = 61;
      ++*(v14 + 4);
    }

    v16 = (*(*a2 + 16))(a2);
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

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72));
  }

  v18 = (*(*a2 + 16))(a2);
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

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (*(v20 + 3) - v21 > 0xDuLL)
  {
    qmemcpy(v21, "inner_dims_pos", 14);
    *(v20 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v20, "inner_dims_pos", 0xEuLL);
  }

  v22 = (*(*a2 + 16))(a2);
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

  v24 = (*(*a2 + 16))(a2);
  v25 = *(v24 + 4);
  if (*(v24 + 3) == v25)
  {
    llvm::raw_ostream::write(v24, "=", 1uLL);
  }

  else
  {
    *v25 = 61;
    ++*(v24 + 4);
  }

  v26 = (*(*a2 + 16))(a2);
  v27 = *(v26 + 4);
  if (v27 >= *(v26 + 3))
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    *(v26 + 4) = v27 + 1;
    *v27 = 32;
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
  v28 = (*(*a2 + 16))(a2);
  v29 = *(v28 + 4);
  if (v29 >= *(v28 + 3))
  {
    llvm::raw_ostream::write(v28, 32);
  }

  else
  {
    *(v28 + 4) = v29 + 1;
    *v29 = 32;
  }

  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if ((*(v30 + 3) - v31) > 0xA)
  {
    *(v31 + 7) = 1936026729;
    *v31 = *"inner_tiles";
    *(v30 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v30, "inner_tiles", 0xBuLL);
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (v33 >= *(v32 + 3))
  {
    llvm::raw_ostream::write(v32, 32);
  }

  else
  {
    *(v32 + 4) = v33 + 1;
    *v33 = 32;
  }

  v34 = (*(*a2 + 16))(a2);
  v35 = *(v34 + 4);
  if (*(v34 + 3) == v35)
  {
    llvm::raw_ostream::write(v34, "=", 1uLL);
  }

  else
  {
    *v35 = 61;
    ++*(v34 + 4);
  }

  v36 = (*(*a2 + 16))(a2);
  v37 = *(v36 + 4);
  if (v37 >= *(v36 + 3))
  {
    llvm::raw_ostream::write(v36, 32);
  }

  else
  {
    *(v36 + 4) = v37 + 1;
    *v37 = 32;
  }

  v38 = *this;
  v39 = mlir::tensor::UnPackOp::getODSOperands(this, 2u);
  v40 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v38, v39, v41, *(v40 + 24), *(v40 + 32) >> 3, 0, 0, 2, 0, 2);
  v42 = (*(*a2 + 16))(a2);
  v43 = *(v42 + 4);
  if (v43 >= *(v42 + 3))
  {
    llvm::raw_ostream::write(v42, 32);
  }

  else
  {
    *(v42 + 4) = v43 + 1;
    *v43 = 32;
  }

  v44 = (*(*a2 + 16))(a2);
  v45 = *(v44 + 4);
  if (*(v44 + 3) - v45 > 3uLL)
  {
    *v45 = 1869901417;
    *(v44 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v44, "into", 4uLL);
  }

  v46 = (*(*a2 + 16))(a2);
  v47 = *(v46 + 4);
  if (v47 >= *(v46 + 3))
  {
    llvm::raw_ostream::write(v46, 32);
  }

  else
  {
    *(v46 + 4) = v47 + 1;
    *v47 = 32;
  }

  v48 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v48 + 24));
  v66 = v68;
  v67 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "outer_dims_perm", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "inner_dims_pos", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "static_inner_tiles", 18);
  v49 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v49 && v49 == mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v66, "outer_dims_perm", 15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v66, v67);
  v51 = (*(*a2 + 16))(a2);
  v52 = *(v51 + 4);
  if (v52 >= *(v51 + 3))
  {
    llvm::raw_ostream::write(v51, 32);
  }

  else
  {
    *(v51 + 4) = v52 + 1;
    *v52 = 32;
  }

  v53 = (*(*a2 + 16))(a2);
  v54 = *(v53 + 4);
  if (*(v53 + 3) == v54)
  {
    llvm::raw_ostream::write(v53, ":", 1uLL);
  }

  else
  {
    *v54 = 58;
    ++*(v53 + 4);
  }

  v55 = (*(*a2 + 16))(a2);
  v56 = *(v55 + 4);
  if (v56 >= *(v55 + 3))
  {
    llvm::raw_ostream::write(v55, 32);
  }

  else
  {
    *(v55 + 4) = v56 + 1;
    *v56 = 32;
  }

  v57 = mlir::tensor::UnPackOp::getODSOperands(this, 0);
  (*(*a2 + 32))(a2, *(*(v57 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v58 = (*(*a2 + 16))(a2);
  v59 = *(v58 + 4);
  if (v59 >= *(v58 + 3))
  {
    llvm::raw_ostream::write(v58, 32);
  }

  else
  {
    *(v58 + 4) = v59 + 1;
    *v59 = 32;
  }

  v60 = (*(*a2 + 16))(a2);
  v61 = *(v60 + 4);
  if (*(v60 + 3) - v61 > 1uLL)
  {
    *v61 = 15917;
    *(v60 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v60, "->", 2uLL);
  }

  v62 = (*(*a2 + 16))(a2);
  v63 = *(v62 + 4);
  if (v63 >= *(v62 + 3))
  {
    llvm::raw_ostream::write(v62, 32);
  }

  else
  {
    *(v62 + 4) = v63 + 1;
    *v63 = 32;
  }

  v64 = mlir::tensor::UnPackOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v64 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v66 != v68)
  {
    free(v66);
  }

  v65 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::YieldOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9[0] = v10;
  v9[1] = 1;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::YieldOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (v5 >= *(v4 + 3))
  {
    llvm::raw_ostream::write(v4, 32);
  }

  else
  {
    *(v4 + 4) = v5 + 1;
    *v5 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v14, 0);
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (v8 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    *(v7 + 4) = v8 + 1;
    *v8 = 32;
  }

  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (*(v9 + 3) == v10)
  {
    llvm::raw_ostream::write(v9, ":", 1uLL);
  }

  else
  {
    *v10 = 58;
    ++*(v9 + 4);
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if (v12 >= *(v11 + 3))
  {
    llvm::raw_ostream::write(v11, 32);
  }

  else
  {
    *(v11 + 4) = v12 + 1;
    *v12 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpInterface<mlir::ShapedDimOpInterface,mlir::detail::ShapedDimOpInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v11 = *(*(v1 + 8) + 32);
    if (!v11)
    {
      return 0;
    }

    v7 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    v8 = *(*v11 + 104);
    v9 = v11;
    v10 = v1;
  }

  else
  {
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    result = mlir::detail::InterfaceMap::lookup(v1 + 32, v3);
    if (result)
    {
      return result;
    }

    v5 = *(v1 + 24);
    v6 = *(a1 + 48);
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedDimOpInterface,void>::resolveTypeID();
    v8 = *(*v5 + 104);
    v9 = v5;
    v10 = v6;
  }

  return v8(v9, v7, v10);
}

BOOL llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 2))
  {
    v2 = *a1;
    v3 = *(a1 + 4);
    if (v3)
    {
      v4 = (v3 - 1) & (37 * a2);
      v5 = *(v2 + 8 * v4);
      if (v5 == a2)
      {
LABEL_4:
        v6 = v2 + 8 * v4;
        goto LABEL_16;
      }

      v12 = 1;
      while (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v4 + v12++;
        v4 = v13 & (v3 - 1);
        v5 = *(v2 + 8 * v4);
        if (v5 == a2)
        {
          goto LABEL_4;
        }
      }
    }

    v6 = 0;
LABEL_16:
    v14 = v2 + 8 * v3;
    if (v6)
    {
      v11 = v6 == v14;
    }

    else
    {
      v11 = 1;
    }

    return !v11;
  }

  v7 = a1[3];
  v8 = *(a1 + 8);
  v9 = &v7[v8];
  if (v8)
  {
    v10 = 8 * v8;
    while (*v7 != a2)
    {
      ++v7;
      v10 -= 8;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }
  }

  v11 = v7 == v9;
  return !v11;
}

void llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, a2, v12);
    if (v12[16] == 1)
    {
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a1 + 24, *a2);
    }
  }

  else
  {
    v4 = (a1 + 24);
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *a2;
      v7 = 8 * v5;
      v8 = *(a1 + 24);
      while (*v8 != v6)
      {
        ++v8;
        v7 -= 8;
        if (!v7)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v8 = *(a1 + 24);
    }

    if (v8 == (*(a1 + 24) + 8 * v5))
    {
      v6 = *a2;
LABEL_12:
      llvm::SmallVectorTemplateBase<long long,true>::push_back(a1 + 24, v6);
      v9 = *(a1 + 32);
      if (v9 >= 5)
      {
        v10 = *v4;
        v11 = 8 * v9;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>,long long,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<long long,void>,llvm::detail::DenseSetPair<long long>>::try_emplace<llvm::detail::DenseSetEmpty&>(a1, v10++, v12);
          v11 -= 8;
        }

        while (v11);
      }
    }
  }
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::complex::ConstantOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::complex::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "complex.constant";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::OpBuilder::createOrFold<mlir::tensor::DimOp,mlir::Value &,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t a3, uint64_t *a4, mlir::OperationState **a5)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**a3 + 32));
  v25[0] = a3;
  v25[1] = v10;
  v25[2] = v26;
  v25[3] = 0x400000000;
  v26[4] = v27;
  v26[5] = 0x400000000;
  v27[4] = v28;
  v27[5] = 0x400000000;
  v28[8] = 4;
  v28[9] = v29;
  v28[10] = 0x100000000;
  v29[1] = v30;
  v29[2] = 0x100000000;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v30[4] = 0;
  v30[6] = 0;
  v11 = *a4;
  v24 = *a5;
  v12 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a3, &v24);
  mlir::tensor::DimOp::build(a1, v25, v11, (v12 - 16));
  v13 = mlir::Operation::create(v25);
  v14 = v13;
  v15 = *(a1 + 2);
  if (v15)
  {
    v16 = *(a1 + 3);
    *(v13 + 2) = v15;
    *(v13 + 8) = -1;
    v17 = *v16;
    *v13 = *v16;
    *(v13 + 1) = v16;
    *(v17 + 1) = v13;
    *v16 = v13;
  }

  if ((mlir::OpBuilder::tryFold(a1, v13, a2) & 1) != 0 && *(a2 + 8))
  {
    if (*(v14 + 2))
    {
      *(v14 + 2) = 0;
      v19 = *v14;
      v18 = *(v14 + 1);
      *v18 = *v14;
      *(v19 + 8) = v18;
      *v14 = 0;
      *(v14 + 1) = 0;
    }

    mlir::Operation::destroy(v14);
  }

  else
  {
    v20 = *(v14 + 9);
    if (v20)
    {
      v21 = (v14 - 16);
    }

    else
    {
      v21 = 0;
    }

    *(a2 + 8) = 0;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(a2, v21, 0, v21, v20);
    if (*(a1 + 2))
    {
      v22 = *(a1 + 1);
      if (v22)
      {
        (*(*v22 + 16))(v22, v14, 0, 0);
      }
    }
  }

  mlir::OperationState::~OperationState(v25);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.dim";
    v5[3] = 10;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.empty";
    v5[3] = 12;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

void anonymous namespace::ChainedTensorBitcast::~ChainedTensorBitcast(_anonymous_namespace_::ChainedTensorBitcast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ChainedTensorBitcast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v11 = *(a2 - 8);
  v12 = *(*(v7 + 72) + 24);
  v13 = *(a2 + 24);
  v14 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id, *(**v13 + 32));
  if ((v15 & 1) == 0)
  {
    v25 = 1283;
    v23 = "tensor.bitcast";
    v24 = 14;
    v20 = 259;
    llvm::operator+(&__src, v19, v26);
    llvm::report_fatal_error(v26, 1);
  }

  v26[0] = v13;
  v26[1] = v14;
  v27[0] = &v28;
  v27[1] = 0x400000000;
  v29[0] = v30;
  v29[1] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[8] = 4;
  v31[9] = v32;
  v31[10] = 0x100000000;
  v32[1] = v33;
  v32[2] = 0x100000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v33[4] = 0;
  v33[6] = 0;
  __src = (v11 & 0xFFFFFFFFFFFFFFF8);
  v19[0] = v12;
  v8 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v27, v19, 0, v19, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v29, &__src, v22);
  v16 = mlir::Operation::create(v26);
  mlir::OpBuilder::insert((a3 + 8), v16);
  v17 = *(*(v16 + 6) + 16);
  mlir::OperationState::~OperationState(v26);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::BitcastOp,void>::id)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  (*(*a3 + 8))(a3, a2, v18);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ChainedTensorBitcast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ChainedTensorBitcast]";
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

void anonymous namespace::ChainedTensorCast::~ChainedTensorCast(_anonymous_namespace_::ChainedTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ChainedTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_9:
      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_9;
  }

  v12 = *(*(*(v8 + 72) + 24) + 8);
  v13 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = joinShapes((v12 & 0xFFFFFFFFFFFFFFF8), (*(v8 - 8) & 0xFFFFFFFFFFFFFFF8));
  v15 = joinShapes(v14, v13);
  if (!v15 || v15 != joinShapes((v12 & 0xFFFFFFFFFFFFFFF8), v13))
  {
    goto LABEL_9;
  }

  v16 = *(*(v8 + 72) + 24);
  v17 = *(a2 + 24);
  v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v17 + 32));
  v24[0] = v17;
  v24[1] = v18;
  v25[0] = &v26;
  v25[1] = 0x400000000;
  v27[0] = v28;
  v27[1] = 0x400000000;
  v28[4] = v29;
  v28[5] = 0x400000000;
  v29[8] = 4;
  v29[9] = v30;
  v29[10] = 0x100000000;
  v30[1] = v31;
  v30[2] = 0x100000000;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v31[4] = 0;
  v31[6] = 0;
  v22 = v16;
  __src = v13;
  v9 = 1;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v25, &v22, 0, &v22, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v27, &__src, v24);
  v19 = mlir::Operation::create(v24);
  mlir::OpBuilder::insert((a3 + 8), v19);
  v20 = *(*(v19 + 6) + 16);
  mlir::OperationState::~OperationState(v24);
  if (v20 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  (*(*a3 + 8))(a3, a2, v21);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t joinShapes(void *a1, void *a2)
{
  v2 = a2;
  v20[4] = *MEMORY[0x277D85DE8];
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_26;
  }

  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v2 = a1;
    goto LABEL_26;
  }

  v4 = a1[2];
  if (v4 != a2[2])
  {
    v2 = 0;
    goto LABEL_26;
  }

  v18 = v20;
  v19 = 0x400000000;
  if (v4 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v18, v20, v4, 8);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = 8 * v5;
      v7 = *(a1[1] + v6);
      v8 = *(*(v2 + 8) + v6);
      if (v7 != 0x8000000000000000)
      {
        v9 = v8 == 0x8000000000000000 || v7 == v8;
        v8 = *(a1[1] + 8 * v5);
        if (!v9)
        {
          break;
        }
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v18, v8);
      if (v4 == ++v5)
      {
        goto LABEL_15;
      }
    }

    v2 = 0;
    goto LABEL_24;
  }

LABEL_15:
  v10 = *(*a1 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = 3;
LABEL_22:
    v11 = a1[v12];
    goto LABEL_23;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = 1;
    goto LABEL_22;
  }

  v11 = 0;
LABEL_23:
  *&v17 = v18;
  *(&v17 + 1) = v19;
  v15 = 0;
  v16 = v11;
  v2 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v17, &v16, &v15);
LABEL_24:
  if (v18 != v20)
  {
    free(v18);
  }

LABEL_26:
  v13 = *MEMORY[0x277D85DE8];
  return v2;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ChainedTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ChainedTensorCast]";
  v6 = 102;
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

void anonymous namespace::TensorCastExtractSlice::~TensorCastExtractSlice(_anonymous_namespace_::TensorCastExtractSlice *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::TensorCastExtractSlice::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45[8] = *MEMORY[0x277D85DE8];
  v5 = *(*(a2 + 72) + 24);
  v6 = v5[1];
  if ((~*(v5 + 2) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v7 = v5[1] & 7;
    if (v7 == 6)
    {
      v5 += 3 * v5[2] + 15;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 += 2 * v7 + 2;
    }

    if (*(v5[6] + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v5 = 0;
    }
  }

LABEL_10:
  v27 = v5;
  v8 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    result = 0;
    if (a2)
    {
      if (v5)
      {
        v11 = v6 & 0xFFFFFFFFFFFFFFF8;
        result = mlir::tensor::preservesStaticInformation((v6 & 0xFFFFFFFFFFFFFFF8), (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8));
        if (result)
        {
          v12 = *(v8 + 16);
          if (v12 != *(v11 + 16) || (result = memcmp(*(v8 + 8), *(v11 + 8), 8 * v12), result))
          {
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v27, &v37);
            v14 = v27 - 2;
            if (!*(v27 + 9))
            {
              v14 = 0;
            }

            v13 = v27[2 * ((*(v27 + 11) >> 23) & 1) + 9];
            mlir::computeRankReductionMask(*(v13 + 24), *(v13 + 32) >> 3, *((v14[1] & 0xFFFFFFFFFFFFFFF8) + 8), *((v14[1] & 0xFFFFFFFFFFFFFFF8) + 16), 0, v34);
            v15 = v38;
            if (v38)
            {
              v16 = 0;
              v17 = 0;
              do
              {
                if (v36 == 1 && (LODWORD(v40[0]) = v17, llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::doFind<unsigned int>(v34, v40)))
                {
                  v18 = v16;
                }

                else
                {
                  v18 = v16 + 1;
                  v19 = *(*(v8 + 8) + 8 * v16);
                  if (v19 != 0x8000000000000000)
                  {
                    IndexAttr = mlir::Builder::getIndexAttr((a3 + 8), v19);
                    *(v37 + v17) = IndexAttr & 0xFFFFFFFFFFFFFFFBLL;
                  }
                }

                ++v17;
                v16 = v18;
              }

              while (v15 != v17);
            }

            v21 = *(v27[9] + 24);
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v27, &v31);
            mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v27, &v28);
            v22 = *(a2 + 24);
            Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v22 + 32));
            v40[0] = v22;
            v40[1] = Slice;
            v40[2] = v41;
            v40[3] = 0x400000000;
            v41[4] = v42;
            v41[5] = 0x400000000;
            v42[4] = v43;
            v42[5] = 0x400000000;
            v43[8] = 4;
            v43[9] = v44;
            v43[10] = 0x100000000;
            v44[1] = v45;
            v44[2] = 0x100000000;
            v45[1] = 0;
            v45[2] = 0;
            v45[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v45[4] = 0;
            v45[6] = 0;
            mlir::tensor::ExtractSliceOp::build((a3 + 8), v40, v8, v21, v31, v32, v37, v38, v28, v29);
            v24 = mlir::Operation::create(v40);
            mlir::OpBuilder::insert((a3 + 8), v24);
            v25 = *(*(v24 + 6) + 16);
            mlir::OperationState::~OperationState(v40);
            if (v25 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
            {
              v26 = v24;
            }

            else
            {
              v26 = 0;
            }

            (*(*a3 + 8))(a3, a2, v26);
            if (v28 != &v30)
            {
              free(v28);
            }

            if (v31 != &v33)
            {
              free(v31);
            }

            if (v36 == 1 && (v34[0] & 1) == 0)
            {
              MEMORY[0x25F891030](v35, 4);
            }

            if (v37 != &v39)
            {
              free(v37);
            }

            result = 1;
          }
        }
      }
    }
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.extract_slice";
    v5[3] = 20;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::TensorCastExtractSlice>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::TensorCastExtractSlice]";
  v6 = 107;
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

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 2;
      a2[1] = 0x600000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(a2, v5);
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

unint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::append(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpFoldResult,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>>(a1, a3, a2);
  if (a2)
  {
    v6 = result;
    v7 = (*a1 + (*(a1 + 8) << 6));
    v8 = a2;
    do
    {
      *v7 = v7 + 2;
      v7[1] = 0x600000000;
      if (*(v6 + 8))
      {
        result = llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(v7, v6);
      }

      v7 += 8;
      --v8;
    }

    while (v8);
  }

  *(a1 + 8) += a2;
  return result;
}

unint64_t llvm::SmallVectorTemplateCommon<llvm::SmallVector<mlir::OpFoldResult,6u>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void anonymous namespace::SingleInputConcatOp::~SingleInputConcatOp(_anonymous_namespace_::SingleInputConcatOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::SingleInputConcatOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 1)
  {
    if (*(a2 + 36))
    {
      v5 = a2 - 16;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    v7 = *(*(a2 + 72) + 24);
    v8 = *(a2 + 24);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v8 + 32));
    v18[0] = v8;
    v18[1] = v9;
    v19[0] = &v20;
    v19[1] = 0x400000000;
    v21[0] = v22;
    v21[1] = 0x400000000;
    v22[4] = v23;
    v22[5] = 0x400000000;
    v23[8] = 4;
    v23[9] = v24;
    v23[10] = 0x100000000;
    v24[1] = v25;
    v24[2] = 0x100000000;
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v25[4] = 0;
    v25[6] = 0;
    v16 = v7;
    __src = v6;
    v10 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v19, &v16, 0, &v16, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v21, &__src, v18);
    v11 = mlir::Operation::create(v18);
    mlir::OpBuilder::insert((a3 + 8), v11);
    v12 = *(*(v11 + 6) + 16);
    mlir::OperationState::~OperationState(v18);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    (*(*a3 + 8))(a3, a2, v13);
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::SingleInputConcatOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::SingleInputConcatOp]";
  v6 = 104;
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantIndexOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "arith.constant";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void anonymous namespace::DimOfCastOp::~DimOfCastOp(_anonymous_namespace_::DimOfCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16) + 120;
    if (!v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v4 + 16 * v7 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  v11 = *(*(v8 + 72) + 24);
  v12 = *(v3 + 56);
  v13 = *(a2 + 24);
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**v13 + 32));
  v18[0] = v13;
  v18[1] = v14;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::tensor::DimOp::build(a3 + 1, v18, v11, v12);
  v15 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert((a3 + 1), v15);
  v16 = *(*(v15 + 6) + 16);
  mlir::OperationState::~OperationState(v18);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  (*(*a3 + 8))(a3, a2, v17);
  result = 1;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfCastOp]";
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

void anonymous namespace::DimOfDestStyleOp::~DimOfDestStyleOp(_anonymous_namespace_::DimOfDestStyleOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfDestStyleOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a2 + 72) + 24);
  if ((~*(v5 + 8) & 7) != 0)
  {
    v6 = *(*(a2 + 72) + 24);
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    result = 0;
LABEL_9:
    v10 = 0;
    goto LABEL_12;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v6 + 24 * *(v6 + 16);
    result = v8 + 120;
    if (v8 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = v6 + 16 * v7 + 16;
  }

  result = llvm::DefaultDoCastIfPossible<mlir::DestinationStyleOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DestinationStyleOpInterface,mlir::Operation *,void>>::doCastIfPossible(result);
LABEL_12:
  v18[0] = result;
  v18[1] = v10;
  if (result)
  {
    v11 = *(v5 + 8) & 7;
    if (v11 == 6)
    {
      LODWORD(v11) = *(v5 + 16) + 6;
    }

    DpsInitOperand = mlir::DestinationStyleOpInterface::getDpsInitOperand(v18, v11);
    (*(*a3 + 40))(a3, a2);
    v13 = *(a2 + 72);
    v14 = *(DpsInitOperand + 24);
    v15 = v13[1];
    if (v15)
    {
      v16 = *v13;
      *v15 = *v13;
      if (v16)
      {
        *(v16 + 8) = v13[1];
      }
    }

    v13[3] = v14;
    v17 = *v14;
    *v13 = *v14;
    v13[1] = v14;
    if (v17)
    {
      *(v17 + 8) = v13;
    }

    *v14 = v13;
    (*(*a3 + 48))(a3, a2);
    return 1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfDestStyleOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfDestStyleOp]";
  v6 = 101;
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

void anonymous namespace::DimOfReshapeOp::~DimOfReshapeOp(_anonymous_namespace_::DimOfReshapeOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::DimOfReshapeOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[8] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  *(a3 + 24) = vextq_s8(*(a2 + 8), *(a2 + 8), 8uLL);
  v11 = *(a2 + 24);
  v12 = *(*(v7 + 72) + 56);
  v19 = *(*(a2 + 72) + 56);
  v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v11 + 32));
  v20[0] = v11;
  v20[1] = v13;
  v20[2] = v21;
  v20[3] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[8] = 4;
  v23[9] = v24;
  v23[10] = 0x100000000;
  v24[1] = v25;
  v24[2] = 0x100000000;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v25[4] = 0;
  v25[6] = 0;
  mlir::tensor::ExtractOp::build(v13, v20, v12, &v19, 1);
  v14 = mlir::Operation::create(v20);
  mlir::OpBuilder::insert((a3 + 8), v14);
  v15 = *(*(v14 + 6) + 16);
  mlir::OperationState::~OperationState(v20);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v20[0] = (v16 - 16);
  v17 = *(v16 - 1);
  v18 = *(a2 - 8);
  if ((v18 ^ v17) >= 8)
  {
    v19 = v18 & 0xFFFFFFFFFFFFFFF8;
    v20[0] = (mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>((a3 + 8), v11, &v19, v20) - 16);
  }

  v8 = 1;
  (**a3)(a3, a2, v20, 1);
LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

char *mlir::OpBuilder::create<mlir::arith::IndexCastOp,mlir::IndexType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::arith::IndexCastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "tensor.extract";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::DimOfReshapeOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::DimOfReshapeOp]";
  v6 = 99;
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

void anonymous namespace::FoldEmptyTensorWithCastOp::~FoldEmptyTensorWithCastOp(_anonymous_namespace_::FoldEmptyTensorWithCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldEmptyTensorWithCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v71[6] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    goto LABEL_12;
  }

  v5 = *(*(a2 + 72) + 24);
  v6 = *(v5 + 8);
  v7 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::tensor::preservesStaticInformation((v6 & 0xFFFFFFFFFFFFFFF8), v7))
  {
    goto LABEL_12;
  }

  v8 = (~v6 & 7) != 0 ? v5 : 0;
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = v8 + 16 * v9 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v16 = v7[1];
  v15 = v7[2];
  v53 = v55;
  v54 = 0x600000000;
  v56 = *(***(v11 + 24) + 32);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (*(v11 + 36))
  {
    v17 = v11 - 16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v18 + 16) <= 0)
  {
    v50 = v52;
    v51 = 0x600000000;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(v18 + 8);
      if (*(v21 + 8 * v20) == 0x8000000000000000)
      {
        v22 = v19++;
        v23 = *(*(v11 + 72) + 32 * v22 + 24) | 4;
      }

      else
      {
        v23 = mlir::Builder::getIndexAttr(&v56, *(v21 + 8 * v20)) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v53, v23);
      ++v20;
      if (*(v11 + 36))
      {
        v24 = v11 - 16;
      }

      else
      {
        v24 = 0;
      }

      v18 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v20 < *(v18 + 16));
    v25 = v54;
    v50 = v52;
    v51 = 0x600000000;
    if (v54 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v52, v54, 8);
      v25 = v54;
    }

    if (v15 && v25)
    {
      v26 = v53;
      v27 = 8 * v25 - 8;
      v28 = 8 * v15 - 8;
      while (1)
      {
        v29 = *v16;
        v30 = *v26 & 0xFFFFFFFFFFFFFFF8;
        if ((*v26 & 4) != 0)
        {
          v31 = 0;
        }

        else
        {
          v31 = *v26 & 0xFFFFFFFFFFFFFFF8;
        }

        if (v31)
        {
          if (v29 == 0x8000000000000000 || (v56 = v31, v29 != mlir::IntegerAttr::getInt(&v56)))
          {
            v56 = "mismatch in static value of shape of empty tensor result and cast result";
            v60 = 259;
            v69 = &v56;
            v46 = a3[2];
            if (v46 && v46[2] == 1)
            {
              (*(*v46 + 88))(v46, *(v11 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::tensor::EmptyOp &>(mlir::tensor::EmptyOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v69);
            }

            v12 = 0;
            goto LABEL_57;
          }
        }

        else
        {
          v30 = *v26;
          if (v29 != 0x8000000000000000)
          {
            v30 = mlir::Builder::getIndexAttr((a3 + 1), *v16) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(&v50, v30);
        if (v28)
        {
          ++v16;
          ++v26;
          v32 = v27;
          v27 -= 8;
          v28 -= 8;
          if (v32)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v33 = v7[3];
  v34 = *(a2 + 24);
  v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(*(**v34 + 32));
  v56 = v34;
  v57 = v35;
  v58 = &v60;
  v59 = 0x400000000;
  v61[0] = v62;
  v61[1] = 0x400000000;
  v62[4] = v63;
  v62[5] = 0x400000000;
  v63[8] = 4;
  v63[9] = v64;
  v63[10] = 0x100000000;
  v64[1] = v65;
  v64[2] = 0x100000000;
  v65[1] = 0;
  v65[2] = 0;
  v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v65[4] = 0;
  v65[6] = 0;
  v36 = v50;
  v69 = v71;
  v70 = 0x600000000;
  v66 = v68;
  v67 = 0x600000000;
  if (v51)
  {
    v37 = 8 * v51;
    do
    {
      v38 = *v36++;
      mlir::dispatchIndexOpFoldResult(v38, &v66, &v69);
      v37 -= 8;
    }

    while (v37);
    v39 = v69;
    v40 = v70;
    v41 = v66;
    v42 = v67;
  }

  else
  {
    v42 = 0;
    v40 = 0;
    v41 = v68;
    v39 = v71;
  }

  *&__src = v39;
  *(&__src + 1) = v40;
  v47 = 0;
  v48 = v33;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v33 + 32), &__src, &v48, &v47);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v58, v41 & 0xFFFFFFFFFFFFFFF9, 0, v41 & 0xFFFFFFFFFFFFFFF9, v42);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v61, &__src, &__src + 8);
  if (v66 != v68)
  {
    free(v66);
  }

  if (v69 != v71)
  {
    free(v69);
  }

  v43 = mlir::Operation::create(&v56);
  mlir::OpBuilder::insert((a3 + 1), v43);
  v44 = *(*(v43 + 6) + 16);
  mlir::OperationState::~OperationState(&v56);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0;
  }

  (*(*a3 + 8))(a3, a2, v45);
  v12 = 1;
LABEL_57:
  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldEmptyTensorWithCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithCastOp]";
  v6 = 110;
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

void anonymous namespace::FoldEmptyTensorWithDimOp::~FoldEmptyTensorWithDimOp(_anonymous_namespace_::FoldEmptyTensorWithDimOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldEmptyTensorWithDimOp::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  ConstantIntValue = mlir::getConstantIntValue(*(*(a2 + 72) + 56) | 4);
  v7 = *(*(a2 + 72) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = ConstantIntValue;
  v9 = *(v7 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v7 + 24 * *(v7 + 16);
    v11 = v10 + 120;
    if (v10 == -120)
    {
      return 0;
    }
  }

  else
  {
    v11 = v7 + 16 * v9 + 16;
  }

  v12 = 0;
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id && (v6 & 1) != 0 && (v8 & 0x8000000000000000) == 0)
  {
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v8 >= *(v14 + 16) || *(*(v14 + 8) + 8 * v8) != 0x8000000000000000)
    {
      return 0;
    }

    DynamicSize = mlir::tensor::EmptyOp::getDynamicSize(v11, v8);
    v12 = 1;
    (**a3)(a3, a2, &DynamicSize, 1);
  }

  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldEmptyTensorWithDimOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldEmptyTensorWithDimOp]";
  v6 = 109;
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

void anonymous namespace::ReplaceEmptyTensorStaticShapeDims::~ReplaceEmptyTensorStaticShapeDims(_anonymous_namespace_::ReplaceEmptyTensorStaticShapeDims *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ReplaceEmptyTensorStaticShapeDims::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v29 = v31;
  v30 = 0x600000000;
  v5 = a2 - 16;
  if (*(a2 + 36))
  {
    v6 = a2 - 16;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v6 + 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v8 = *(a2 + 68);
    v9 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v8 = 0;
    v9 = 2;
  }

  v10 = foldDynamicToStaticDimSizes((v7 & 0xFFFFFFFFFFFFFFF8), v9, v8, &v29);
  if (*(a2 + 36))
  {
    v11 = v5;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    v14 = *(a2 + 24);
    v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::EmptyOp>(*(**v14 + 32));
    v32 = v14;
    v33 = v15;
    v34 = v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = 4;
    v44 = &v46;
    v45 = 0x100000000;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = 0;
    v51 = 0;
    v52 = &mlir::detail::TypeIDResolver<void,void>::id;
    v53 = 0;
    v54 = 0;
    __src = v13;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v34, v29 & 0xFFFFFFFFFFFFFFF9, 0, v29 & 0xFFFFFFFFFFFFFFF9, v30);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v37, &__src, &v29);
    v16 = mlir::Operation::create(&v32);
    mlir::OpBuilder::insert((a3 + 8), v16);
    v17 = *(*(v16 + 6) + 16);
    mlir::OperationState::~OperationState(&v32);
    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::EmptyOp,void>::id)
    {
      v16 = 0;
    }

    if (*(a2 + 36))
    {
      v18 = v5;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(a2 + 24);
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v20 + 32));
    v32 = v20;
    v33 = v21;
    v34 = v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = 4;
    v44 = &v46;
    v45 = 0x100000000;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = 0;
    v51 = 0;
    v52 = &mlir::detail::TypeIDResolver<void,void>::id;
    v53 = 0;
    v54 = 0;
    v27 = v16 - 16;
    __src = v19;
    v12 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v34, &v27, 0, &v27, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v37, &__src, &v29);
    v22 = mlir::Operation::create(&v32);
    mlir::OpBuilder::insert((a3 + 8), v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(&v32);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    (*(*a3 + 8))(a3, a2, v24);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t foldDynamicToStaticDimSizes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v26[0] = a2;
  v26[1] = a3;
  v6 = a1[1];
  v7 = a1[2];
  v23 = v25;
  v24 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v23, v6, &v6[8 * v7]);
  v8 = a1[2];
  if (v8 >= 1)
  {
    v9 = 0;
    for (i = 0; i != v8; ++i)
    {
      if (*(a1[1] + 8 * i) == 0x8000000000000000)
      {
        v11 = (v9 + 1);
        v12 = mlir::ValueRange::dereference_iterator(v26, v9);
        ConstantIntValue = mlir::getConstantIntValue(v12 | 4);
        if ((v14 & 1) == 0 || (ConstantIntValue & 0x8000000000000000) != 0)
        {
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(a4, v12);
        }

        else
        {
          *(v23 + i) = ConstantIntValue;
        }
      }

      else
      {
        v11 = v9;
      }

      v9 = v11;
    }
  }

  v15 = a1[3];
  v16 = a1[4];
  *&v22 = v23;
  *(&v22 + 1) = v24;
  v20 = v16;
  v21 = v15;
  v17 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &v22, &v21, &v20);
  if (v23 != v25)
  {
    free(v23);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ReplaceEmptyTensorStaticShapeDims>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ReplaceEmptyTensorStaticShapeDims]";
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

void anonymous namespace::ExtractFromTensorCast::~ExtractFromTensorCast(_anonymous_namespace_::ExtractFromTensorCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractFromTensorCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v20 = a2;
  v4 = *(mlir::tensor::ExtractOp::getODSOperands(&v20, 0) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = *(v4 + 8) & 7;
  if (v5 == 6)
  {
    v6 = v4 + 24 * *(v4 + 16) + 120;
    if (!v6)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = v4 + 16 * v5 + 16;
  }

  if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_10;
  }

  v7 = *(*(v6 + 72) + 24);
  if (*(*(*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_10;
  }

  v11 = v20;
  v8 = 1;
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v20, 1u);
  v14 = v13;
  v15 = *(v11 + 24);
  v16 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v15 + 32));
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = v22;
  v21[3] = 0x400000000;
  v22[4] = v23;
  v22[5] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  mlir::tensor::ExtractOp::build(v16, v21, v7, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v14);
  v17 = mlir::Operation::create(v21);
  mlir::OpBuilder::insert((a3 + 8), v17);
  v18 = *(*(v17 + 6) + 16);
  mlir::OperationState::~OperationState(v21);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  (*(*a3 + 8))(a3, v11, v19);
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractFromTensorCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorCast]";
  v6 = 106;
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

void anonymous namespace::ExtractElementFromIndexCast::~ExtractElementFromIndexCast(_anonymous_namespace_::ExtractElementFromIndexCast *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractElementFromIndexCast::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v4 = *(a2 + 24);
  v5 = *(mlir::tensor::ExtractOp::getODSOperands(&v33, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v12 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
  v15 = v13;
  if (v13)
  {
    v13 = (*(v14 + 8))(v14, v13);
  }

  if (v15)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  v31 = v16;
  v17 = *(*(v8 + 72) + 24);
  v9 = 1;
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v33, 1u);
  v32 = v19;
  v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a3 + 8, *(**v4 + 32));
  v36 = v4;
  v37 = v20;
  v38 = v40;
  v39 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  v47 = 4;
  v48 = &v50;
  v49 = 0x100000000;
  v51 = &v53;
  v52 = 0x100000000;
  v54 = 0;
  v55 = 0;
  v56 = &mlir::detail::TypeIDResolver<void,void>::id;
  v57 = 0;
  v58 = 0;
  v34 = v17;
  __src = v31;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v38, &v34, 0, &v34, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v38, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, 0, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v32);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v41, &__src, &v36);
  v21 = mlir::Operation::create(&v36);
  mlir::OpBuilder::insert((a3 + 8), v21);
  v22 = *(*(v21 + 6) + 16);
  mlir::OperationState::~OperationState(&v36);
  if (v22 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = v33;
  v25 = *(v33 - 8);
  v26 = *(v33 + 24);
  v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::IndexCastOp>(a3 + 8, *(**v26 + 32));
  v36 = v26;
  v37 = v27;
  v38 = v40;
  v39 = 0x400000000;
  v41 = v43;
  v42 = 0x400000000;
  v44 = v46;
  v45 = 0x400000000;
  v47 = 4;
  v48 = &v50;
  v49 = 0x100000000;
  v51 = &v53;
  v52 = 0x100000000;
  v54 = 0;
  v55 = 0;
  v56 = &mlir::detail::TypeIDResolver<void,void>::id;
  v57 = 0;
  v58 = 0;
  mlir::arith::IndexCastOp::build(a3 + 8, &v36, v25 & 0xFFFFFFFFFFFFFFF8, (v23 - 16));
  v28 = mlir::Operation::create(&v36);
  mlir::OpBuilder::insert((a3 + 8), v28);
  v29 = *(*(v28 + 6) + 16);
  mlir::OperationState::~OperationState(&v36);
  if (v29 == &mlir::detail::TypeIDResolver<mlir::arith::IndexCastOp,void>::id)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  (*(*a3 + 8))(a3, v24, v30);
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractElementFromIndexCast>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractElementFromIndexCast]";
  v6 = 112;
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

void anonymous namespace::ExtractFromTensorGenerate::~ExtractFromTensorGenerate(_anonymous_namespace_::ExtractFromTensorGenerate *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractFromTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2, void (***a3)(void, uint64_t, uint64_t *, uint64_t))
{
  v41 = a2;
  v5 = *(mlir::tensor::ExtractOp::getODSOperands(&v41, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id || !mlir::wouldOpBeTriviallyDead(v8, v4))
  {
    return 0;
  }

  v37 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v10 = *(v8 + 40);
  v9 = *(v8 + 44);
  v34 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v35 = 0;
  v36 = 0;
  v11 = *(((v8 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * v10 + 8);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v14 = v12[6];
  v13 = v12[7];
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(&v41, 1u);
  if (v13 != v14 && v16 != 0)
  {
    v18 = v16 - 1;
    v19 = (ODSOperands + 24);
    v20 = v14 + 8;
    do
    {
      v21 = *v19;
      v19 += 4;
      v42 = *(v20 - 8);
      *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v33, &v42) = v21;
      v23 = v18-- != 0;
      if (v20 == v13)
      {
        break;
      }

      v20 += 8;
    }

    while (v23);
  }

  v26 = v12[4];
  v24 = v12[5];
  v25 = v12 + 4;
  if (v24 != v25 && v24 != v26)
  {
    do
    {
      mlir::OpBuilder::clone((a3 + 1), v24, v33);
      v24 = *(v24 + 8);
    }

    while (v24 != v26);
    v26 = *v25;
  }

  v28 = v41;
  v29 = *(*(v26 + 72) + 24);
  v42 = v29;
  v30 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(v33, &v42);
  if (v30 && v30 != v33[0] + 16 * v34)
  {
    v29 = *(v30 + 8);
  }

  v42 = v29;
  v31 = 1;
  (**a3)(a3, v28, &v42, 1);
  MEMORY[0x25F891030](v38, 8);
  MEMORY[0x25F891030](v35, 8);
  MEMORY[0x25F891030](v33[0], 8);
  return v31;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractFromTensorGenerate>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractFromTensorGenerate]";
  v6 = 110;
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

void anonymous namespace::StaticTensorGenerate::~StaticTensorGenerate(_anonymous_namespace_::StaticTensorGenerate *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::StaticTensorGenerate::matchAndRewrite(uint64_t a1, uint64_t a2)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x600000000;
  v3 = *(a2 - 8);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
    v5 = *(a2 + 72) & 0xFFFFFFFFFFFFFFF9 | 2;
  }

  else
  {
    v4 = 0;
    v5 = 2;
  }

  v6 = foldDynamicToStaticDimSizes((v3 & 0xFFFFFFFFFFFFFFF8), v5, v4, &v17);
  if (v6 != (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v7 = v6;
    v8 = *(a2 + 24);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::GenerateOp,void>::id, *(**v8 + 32));
    if (v10)
    {
      v20[0] = v8;
      v20[1] = v9;
      v21[0] = v22;
      v21[1] = 0x400000000;
      v22[4] = v23;
      v22[5] = 0x400000000;
      v23[4] = v24;
      v23[5] = 0x400000000;
      v24[8] = 4;
      v24[9] = v25;
      v24[10] = 0x100000000;
      v25[1] = v26;
      v25[2] = 0x100000000;
      v26[1] = 0;
      v26[2] = 0;
      v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v26[4] = 0;
      v26[6] = 0;
      __src[0] = v7;
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v21, v17 & 0xFFFFFFFFFFFFFFF9, 0, v17 & 0xFFFFFFFFFFFFFFF9, v18);
      mlir::OperationState::addRegion(v20);
    }

    v16 = 1283;
    __src[2] = "tensor.generate";
    __src[3] = 15;
    v14 = 259;
    llvm::operator+(__src, &v13, v20);
    llvm::report_fatal_error(v20, 1);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::StaticTensorGenerate>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::StaticTensorGenerate]";
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

uint64_t llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 + 32 * v3 - 16;
    v5 = -32 * v3;
    do
    {
      v6 = *(v4 - 16);
      if (v4 != v6)
      {
        free(v6);
      }

      v4 -= 32;
      v5 += 32;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a2 != a2 + 16)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::assignRemote(a1, a2);
      return a1;
    }

    v5 = *(a2 + 8);
    v6 = *(a1 + 8);
    if (v6 >= v5)
    {
      v7 = *a1;
      if (v5)
      {
        v8 = 32 * v5;
        do
        {
          llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v7, v4);
          v4 += 32;
          v7 += 32;
          v8 -= 32;
        }

        while (v8);
        v9 = *a1;
        v6 = *(a1 + 8);
      }

      else
      {
        v9 = *a1;
      }

      v18 = v9 + 32 * v6;
      if (v18 != v7)
      {
        v19 = (v18 - 16);
        do
        {
          v20 = *(v19 - 2);
          if (v19 != v20)
          {
            free(v20);
          }

          v21 = v19 - 16;
          v19 -= 32;
        }

        while (v21 != v7);
      }

      goto LABEL_28;
    }

    if (*(a1 + 12) >= v5)
    {
      if (v6)
      {
        v10 = *a1;
        v11 = 32 * v6;
        do
        {
          llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v10, v4);
          v4 += 32;
          v10 += 32;
          v11 -= 32;
        }

        while (v11);
LABEL_16:
        v12 = *(a2 + 8);
        if (v6 != v12)
        {
          v13 = *a2;
          v14 = *a1;
          v15 = 32 * v6;
          v16 = 32 * v12;
          do
          {
            v17 = (v14 + v15);
            *v17 = v14 + v15 + 16;
            v17[1] = 0x200000000;
            if (*(v13 + v15 + 8))
            {
              llvm::SmallVectorImpl<mlir::AffineExpr>::operator=(v17, v13 + v15);
            }

            v14 += 32;
            v16 -= 32;
            v13 += 32;
          }

          while (v15 != v16);
        }

LABEL_28:
        *(a1 + 8) = v5;
        llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(a2);
        return a1;
      }
    }

    else
    {
      llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(a1);
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::AffineExpr,2u>,false>::grow(a1, v5);
    }

    v6 = 0;
    goto LABEL_16;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::assignRemote(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v4 + 32 * v5 - 16;
    v7 = -32 * v5;
    do
    {
      v8 = *(v6 - 16);
      if (v6 != v8)
      {
        free(v8);
      }

      v6 -= 32;
      v7 += 32;
    }

    while (v7);
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

void llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1 + 32 * v2 - 16;
    v4 = -32 * v2;
    do
    {
      v5 = *(v3 - 16);
      if (v3 != v5)
      {
        free(v5);
      }

      v3 -= 32;
      v4 += 32;
    }

    while (v4);
  }

  *(a1 + 8) = 0;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, const llvm::Twine *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(**a1, a2, v5);
  v2 = v5[200];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  v3 = *MEMORY[0x277D85DE8];
  return (v2 & 1) == 0;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>(mlir::Operation ***a1, const llvm::Twine *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  mlir::Operation::emitOpError(**a1, a2, v5);
  v2 = v5[200];
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v5);
  v3 = *MEMORY[0x277D85DE8];
  return (v2 & 1) == 0;
}

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::~ComposeReassociativeReshapeOps(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = (v7 + 120);
    if (v7 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = (v5 + 16 * v6 + 16);
  }

  if (*(*(v8 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (*(this + 9))
  {
    v11 = this - 16;
  }

  else
  {
    v11 = 0;
  }

  v29 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
  v26[0] = mlir::TensorType::operator mlir::ShapedType(&v29);
  v26[1] = v12;
  v13 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v13[5] + 8))(v13[5], v13[4]), result))
  {
    v14 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v14[5] + 8))(v14[5], v14[4]), result))
    {
      v15 = *(this + 9) ? this - 16 : 0;
      v16 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v16[5] + 8))(v16[5], v16[4]), result))
      {
        mlir::tensor::ExpandShapeOp::getReassociationIndices(&v29, v8);
        v17 = v29;
        v18 = v30;
        mlir::tensor::ExpandShapeOp::getReassociationIndices(&v27, this);
        v19 = *(a3 + 8);
        mlir::composeReassociationIndices(v17, v18, v27, v28, v32);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v27);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v29);
        if (v33 != 1)
        {
          goto LABEL_9;
        }

        v20 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
        v21 = *(v20 + 24);
        v22 = *(v20 + 32) >> 3;
        ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(this, 1u);
        mlir::getMixedValues(v21, v22, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v24, *(a3 + 8), &v29);
        v27 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24);
        v25 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a3 + 8), *(this + 3), v26, &v27, v32, &v29);
        (*(*a3 + 8))(a3, this, v25);
        if (v29 != &v31)
        {
          free(v29);
        }

        if (v33)
        {
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v32);
        }

        result = 1;
      }
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v8 = mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>((a1 + 8), *(a2 + 24), a3, a4, a5, a6);
  v9 = *(*a1 + 8);

  return v9(a1, a2, v8);
}

char *mlir::OpBuilder::create<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(mlir::Builder *a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**a2 + 32));
  v17[0] = a2;
  v17[1] = v12;
  v17[2] = v18;
  v17[3] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[8] = 4;
  v20[9] = v21;
  v20[10] = 0x100000000;
  v21[1] = v22;
  v21[2] = 0x100000000;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v22[4] = 0;
  v22[6] = 0;
  mlir::tensor::ExpandShapeOp::build(a1, v17, *a3, *a4, *a5, *(a5 + 8), *a6, *(a6 + 8));
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.expand_shape";
    v5[3] = 19;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp,(mlir::ReshapeOpKind)0>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::ExpandShapeOp, mlir::ReshapeOpKind::kExpand>]";
  v6 = 157;
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

void mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::~ComposeExpandOfCollapseOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 != 6)
  {
    v8 = v5 + 16 * v6 + 16;
    goto LABEL_8;
  }

  v7 = v5 + 24 * *(v5 + 16);
  v8 = v7 + 120;
  if (v7 != -120)
  {
LABEL_8:
    if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      goto LABEL_9;
    }

    v65 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v12 = mlir::TensorType::operator mlir::ShapedType(&v65);
    v14 = v13;
    v15 = *(this + 9) ? this - 16 : 0;
    v65 = (*(v15 + 1) & 0xFFFFFFFFFFFFFFF8);
    v16 = mlir::TensorType::operator mlir::ShapedType(&v65);
    v18 = v17;
    v57[0] = v16;
    v57[1] = v17;
    v19 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v20 = v19[4];
      if (!(*(v19[5] + 8))())
      {
        goto LABEL_9;
      }
    }

    v21 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v22 = v21[4];
      if (!(*(v21[5] + 8))())
      {
        goto LABEL_9;
      }
    }

    v23 = *(v8 + 36) ? v8 - 16 : 0;
    v24 = (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v25 = v24[4];
      if (!(*(v24[5] + 8))())
      {
        goto LABEL_9;
      }
    }

    (*(v14 + 24))(v14, v12);
    v27 = v26;
    v18[3](v18, v16);
    if (v27 == v28)
    {
      goto LABEL_9;
    }

    v29 = v28;
    mlir::tensor::CollapseShapeOp::getReassociationIndices(&v65, v8);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&v63, this);
    if (v27 <= v29)
    {
      v55 = v63;
      v40 = v64;
      v41 = v65;
      v42 = v66;
      v43 = (v18[3])(v18, v16);
      v45 = v44;
      v46 = (*(v14 + 24))(v14, v12);
      mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v61, v55, v40, v41, v42, v43, v45, v48, v46, v47);
      if (v62 == 1)
      {
        v49 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
        v50 = *(v49 + 24);
        v51 = *(v49 + 32) >> 3;
        ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(this, 1u);
        mlir::getMixedValues(v50, v51, ODSOperands & 0xFFFFFFFFFFFFFFF9 | 2, v53, *(a3 + 8), v58);
        v56 = *(*(v8 + 72) + 24);
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &>(a3, this, v57, &v56, v61, v58);
        if (v58[0] != &v59)
        {
          free(v58[0]);
        }

        if ((v62 & 1) == 0)
        {
          goto LABEL_34;
        }

        v39 = v61;
        goto LABEL_33;
      }
    }

    else
    {
      v54 = v65;
      v30 = v66;
      v31 = v63;
      v32 = v64;
      v33 = (*(v14 + 24))(v14, v12);
      v35 = v34;
      v36 = (v18[3])(v18, v16);
      mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(v58, v54, v30, v31, v32, v33, v35, v38, v36, v37);
      if (v60 == 1)
      {
        v61[0] = *(*(v8 + 72) + 24);
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(a3, this, v57, v61, v58);
        if ((v60 & 1) == 0)
        {
LABEL_34:
          v9 = 1;
LABEL_36:
          llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v63);
          llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v65);
          goto LABEL_10;
        }

        v39 = v58;
LABEL_33:
        llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v39);
        goto LABEL_34;
      }
    }

    v9 = 0;
    goto LABEL_36;
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>::findCollapsingReassociation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9, unint64_t a10)
{
  v10 = a9;
  v40[16] = *MEMORY[0x277D85DE8];
  v38 = v40;
  v39 = 0x400000000;
  if (a3)
  {
    v11 = a4;
    v12 = a2;
    v31 = a2 + 32 * a3;
    v13 = &a4[4 * a5];
    v32 = a6;
    do
    {
      if (v11 == v13)
      {
        break;
      }

      v14 = *(v12 + 8);
      v15 = (a6 + 8 * **v12);
      v16 = **v11;
      v17 = *(v11 + 2);
      if (v14 == v17)
      {
        v18 = 8 * v14;
        if (memcmp((a6 + 8 * **v12), (v10 + 8 * v16), 8 * v14))
        {
          goto LABEL_31;
        }

        if (v14)
        {
          v19 = 0;
          do
          {
            v20 = *v15++;
            if (v20 == 0x8000000000000000)
            {
              ++v19;
            }

            v18 -= 8;
          }

          while (v18);
          if (v19 > 1)
          {
LABEL_31:
            *a1 = 0;
            *(a1 + 48) = 0;
            goto LABEL_32;
          }

          for (i = 0; i != v14; ++i)
          {
            LODWORD(v33[0]) = 1;
            v35 = i + **v12;
            llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::emplace_back<int,long long>(&v38, v33, &v35);
          }
        }
      }

      else
      {
        mlir::getReassociationIndicesForCollapse(a6 + 8 * **v12, *(v12 + 8), v10 + 8 * v16, v17, &v35);
        if ((v37 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (!v36)
        {
          goto LABEL_25;
        }

        v22 = v35;
        v23 = v35 + 32 * v36;
        do
        {
          v33[0] = v34;
          v33[1] = 0x200000000;
          v24 = *(v22 + 8);
          if (v24)
          {
            v25 = *v22;
            v26 = 8 * v24;
            do
            {
              v27 = *v25++;
              llvm::SmallVectorTemplateBase<long long,true>::push_back(v33, **v12 + v27);
              v26 -= 8;
            }

            while (v26);
          }

          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(&v38, v33);
          if (v33[0] != v34)
          {
            free(v33[0]);
          }

          v22 += 32;
        }

        while (v22 != v23);
        if (v37)
        {
LABEL_25:
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(&v35);
        }
      }

      v12 += 32;
      v11 += 4;
      v10 = a9;
      a6 = v32;
    }

    while (v12 != v31);
    *a1 = a1 + 16;
    *(a1 + 8) = 0x100000000;
    if (v39)
    {
      llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(a1, &v38);
    }

    *(a1 + 48) = 1;
  }

  else
  {
    mlir::getReassociationIndicesForCollapse(a6, a7, a9, a10, a1);
  }

LABEL_32:
  result = llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v38);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>((a1 + 8), *(a2 + 24), a3, a4, a5);
  v8 = *(*a1 + 8);

  return v8(a1, a2, v7);
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::emplace_back<int,long long>(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<int,long long>(a1, a2, a3);
  }

  else
  {
    v5 = (*a1 + 32 * v4);
    v6 = *a2;
    *v5 = v5 + 2;
    v5[1] = 0x200000000;
    llvm::SmallVectorImpl<long long>::assign(v5, v6, *a3);
    v7 = (*(a1 + 8) + 1);
    *(a1 + 8) = v7;
    return *a1 + 32 * v7 - 32;
  }
}

uint64_t llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::growAndEmplaceBack<int,long long>(uint64_t a1, int *a2, uint64_t *a3)
{
  v13 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 32, &v13);
  v8 = &v7[4 * *(a1 + 8)];
  v9 = *a2;
  *v8 = v8 + 2;
  v8[1] = 0x200000000;
  llvm::SmallVectorImpl<long long>::assign(v8, v9, *a3);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::moveElementsForGrow(a1, v7);
  v10 = v13;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  v11 = (*(a1 + 8) + 1);
  *(a1 + 8) = v11;
  *(a1 + 12) = v10;
  return &v7[4 * v11 - 4];
}

char *mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>(mlir::Builder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**a2 + 32));
  v15[0] = a2;
  v15[1] = v10;
  v15[2] = v16;
  v15[3] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[8] = 4;
  v18[9] = v19;
  v18[10] = 0x100000000;
  v19[1] = v20;
  v19[2] = 0x100000000;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v20[4] = 0;
  v20[6] = 0;
  mlir::tensor::CollapseShapeOp::build(a1, v15, *a3, *a4, *a5, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(uint64_t *a1)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id, a1);
  if ((v2 & 1) == 0)
  {
    v6 = 1283;
    v5[2] = "tensor.collapse_shape";
    v5[3] = 21;
    v4 = 259;
    llvm::operator+(v5, &v3, v7);
    llvm::report_fatal_error(v7, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeExpandOfCollapseOp<mlir::tensor::ExpandShapeOp, mlir::tensor::CollapseShapeOp>]";
  v6 = 153;
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

void anonymous namespace::ConvertToStaticExpandShape::~ConvertToStaticExpandShape(_anonymous_namespace_::ConvertToStaticExpandShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ConvertToStaticExpandShape::matchAndRewrite(uint64_t a1, mlir::tensor::ExpandShapeOp *a2, uint64_t a3)
{
  v4 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(a2, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_42;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
LABEL_42:
      v31 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_42;
  }

  v8 = (*(*(*(v7 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!mlir::tensor::preservesStaticInformation((*(v7 - 8) & 0xFFFFFFFFFFFFFFF8), v8))
  {
    goto LABEL_42;
  }

  v9 = v8[1];
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v92, v4);
  if (*(v4 + 36))
  {
    v10 = v4 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v89 = v91;
  v90 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v89, v12, &v12[8 * v13]);
  v86 = v88;
  v87 = 0x600000000;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(v4, 1u);
  v75 = a3;
  if (v93)
  {
    v15 = ODSOperands;
    v73 = v4;
    v16 = 0;
    v17 = 0;
    v18 = v92;
    v76 = v92 + 32 * v93;
    while (1)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        break;
      }

LABEL_40:
      ++v17;
      v18 += 32;
      if (v18 == v76)
      {
        v30 = v87;
        v4 = v73;
        a3 = v75;
        goto LABEL_45;
      }
    }

    v20 = *v18;
    v21 = 8 * v19;
    while (1)
    {
      v22 = *v20;
      if (*(v89 + *v20) == 0x8000000000000000)
      {
        v23 = *(v15 + 32 * v16++ + 24);
        if (*(v9 + 8 * v17) != 0x8000000000000000)
        {
          DWORD2(v94) = 1;
          *&v94 = 0;
          __src = &v94;
          if ((~*(v23 + 8) & 7) != 0)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24)
          {
            v25 = *(v24 + 8) & 7;
            if (v25 == 6)
            {
              v26 = v24 + 24 * *(v24 + 16);
              v27 = (v26 + 120);
              if (v26 == -120)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v27 = (v24 + 16 * v25 + 16);
            }

            if (!mlir::detail::constant_int_value_binder::match(&__src, v27))
            {
              goto LABEL_33;
            }

            v28 = DWORD2(v94);
            if (DWORD2(v94) > 0x40)
            {
              v29 = *v94;
            }

            else
            {
              v29 = (v94 << -BYTE8(v94)) >> -BYTE8(v94);
              if (!DWORD2(v94))
              {
                v29 = 0;
              }
            }

            *(v89 + v22) = v29;
          }

          else
          {
LABEL_33:
            llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v86, v23);
            v28 = DWORD2(v94);
          }

          if (v28 >= 0x41 && v94)
          {
            MEMORY[0x25F891010](v94, 0x1000C8000313F17);
          }

          goto LABEL_39;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v86, v23);
      }

LABEL_39:
      ++v20;
      v21 -= 8;
      if (!v21)
      {
        goto LABEL_40;
      }
    }
  }

  v30 = 0;
LABEL_45:
  mlir::tensor::ExpandShapeOp::getODSOperands(v4, 1u);
  if (v34 == v30)
  {
    v31 = 0;
  }

  else
  {
    v35 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v83 = v85;
    v84 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v83, v35, 1);
    v36 = v84;
    v37 = v89;
    if (v84)
    {
      v38 = 0;
      v39 = v92;
      v40 = v83;
      do
      {
        v41 = v39 + 32 * v38;
        v42 = *(v41 + 8);
        if (v42)
        {
          v43 = *v41;
          v44 = v83;
          v45 = 8 * v42;
          while (1)
          {
            v46 = v37[*v43];
            if (v46 == 0x8000000000000000)
            {
              break;
            }

            v44[v38] *= v46;
            ++v43;
            v45 -= 8;
            if (!v45)
            {
              goto LABEL_55;
            }
          }

          v40[v38] = 0x8000000000000000;
        }

LABEL_55:
        ++v38;
      }

      while (v38 != v36);
    }

    v47 = (a3 + 8);
    mlir::getMixedValues(v37, v90, v86 & 0xFFFFFFFFFFFFFFF9, v87, *(a3 + 8), &v80);
    v48 = v83;
    v49 = v84;
    v50 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
    *&v94 = v48;
    *(&v94 + 1) = v49;
    v77 = 0;
    __src = v50;
    v51 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v50 + 32), &v94, &__src, &v77);
    v52 = v89;
    v53 = v90;
    v54 = *((*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
    *&v94 = v52;
    *(&v94 + 1) = v53;
    v77 = 0;
    __src = v54;
    v74 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v54 + 32), &v94, &__src, &v77);
    v55 = *(v4 + 24);
    v56 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v4, 0) + 24);
    v57 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v47, *(**v55 + 32));
    *&v94 = v55;
    *(&v94 + 1) = v57;
    v95 = v97;
    v96 = 0x400000000;
    v98 = v100;
    v99 = 0x400000000;
    v101 = v103;
    v102 = 0x400000000;
    v104 = 4;
    v105 = &v107;
    v106 = 0x100000000;
    v108 = &v110;
    v109 = 0x100000000;
    v112 = 0;
    v111 = 0;
    v113 = &mlir::detail::TypeIDResolver<void,void>::id;
    v114 = 0;
    v115 = 0;
    v77 = v56;
    __src = v51;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v95, &v77, 0, &v77, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v98, &__src, v79);
    v58 = mlir::Operation::create(&v94);
    mlir::OpBuilder::insert(v47, v58);
    v59 = *(*(v58 + 6) + 16);
    mlir::OperationState::~OperationState(&v94);
    if (v59 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v60 = v58;
    }

    else
    {
      v60 = 0;
    }

    v61 = *(v4 + 24);
    v62 = (v60 - 16);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(&__src, v4);
    v63 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**v61 + 32));
    *&v94 = v61;
    *(&v94 + 1) = v63;
    v95 = v97;
    v96 = 0x400000000;
    v98 = v100;
    v99 = 0x400000000;
    v101 = v103;
    v102 = 0x400000000;
    v104 = 4;
    v105 = &v107;
    v106 = 0x100000000;
    v108 = &v110;
    v109 = 0x100000000;
    v112 = 0;
    v111 = 0;
    v113 = &mlir::detail::TypeIDResolver<void,void>::id;
    v114 = 0;
    v115 = 0;
    mlir::tensor::ExpandShapeOp::build(v47, &v94, v74, v62, __src, v79[0], v80, v81);
    v64 = mlir::Operation::create(&v94);
    mlir::OpBuilder::insert(v47, v64);
    v65 = *(*(v64 + 6) + 16);
    mlir::OperationState::~OperationState(&v94);
    if (v65 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v64 = 0;
    }

    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&__src);
    v66 = *(v4 - 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(v64 + 9))
    {
      v67 = (v64 - 16);
    }

    else
    {
      v67 = 0;
    }

    v68 = *(v4 + 24);
    v69 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v47, *(**v68 + 32));
    *&v94 = v68;
    *(&v94 + 1) = v69;
    v95 = v97;
    v96 = 0x400000000;
    v98 = v100;
    v99 = 0x400000000;
    v101 = v103;
    v102 = 0x400000000;
    v104 = 4;
    v105 = &v107;
    v106 = 0x100000000;
    v108 = &v110;
    v109 = 0x100000000;
    v112 = 0;
    v111 = 0;
    v113 = &mlir::detail::TypeIDResolver<void,void>::id;
    v114 = 0;
    v115 = 0;
    v77 = v67;
    __src = v66;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v95, &v77, 0, &v77, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v98, &__src, v79);
    v70 = mlir::Operation::create(&v94);
    mlir::OpBuilder::insert(v47, v70);
    v71 = *(*(v70 + 6) + 16);
    mlir::OperationState::~OperationState(&v94);
    if (v71 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v72 = v70;
    }

    else
    {
      v72 = 0;
    }

    (*(*v75 + 8))(v75, v4, v72);
    if (v80 != &v82)
    {
      free(v80);
    }

    if (v83 != v85)
    {
      free(v83);
    }

    v31 = 1;
  }

  if (v86 != v88)
  {
    free(v86);
  }

  if (v89 != v91)
  {
    free(v89);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v92);
LABEL_43:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ConvertToStaticExpandShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ConvertToStaticExpandShape]";
  v6 = 111;
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, uint64_t ***this, uint64_t a3)
{
  v17 = 0;
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  Raw = &v17;
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  v9 = !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&Raw, v8) || v17 == 0;
  if (v9 || *(v17 + 24) != 1)
  {
    return 0;
  }

  if (*(this + 9))
  {
    v10 = this - 2;
  }

  else
  {
    v10 = 0;
  }

  v15 = (v10[1] & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v12, *(v17 + 32), *(v17 + 40));
  v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), this[3], &Raw);
  (*(*a3 + 8))(a3, this, v13);
  return 1;
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>(mlir::OpBuilder *a1, uint64_t **a2, uint64_t **a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v14[0] = a2;
  v14[1] = v6;
  v14[2] = v15;
  v14[3] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[4] = v17;
  v16[5] = 0x400000000;
  v17[8] = 4;
  v17[9] = v18;
  v17[10] = 0x100000000;
  v18[1] = v19;
  v18[2] = 0x100000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v19[4] = 0;
  v19[6] = 0;
  v8 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(a3);
  if (v8)
  {
    v9 = *(v7 + 24);
  }

  else
  {
    v9 = 0;
  }

  mlir::arith::ConstantOp::build(a1, v14, v8, v9);
  v10 = mlir::Operation::create(v14);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v14);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::ExpandShapeOp>]";
  v6 = 137;
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithSplat(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v22 = v10;
  if (!v9)
  {
    return 0;
  }

  v12 = *(v7 + 36);
  v13 = v7 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v15 = v14[2];
  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(this + 9))
  {
    v18 = this - 16;
  }

  else
  {
    v18 = 0;
  }

  v21 = *(v18 + 1) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(mlir::tensor::SplatOp::getODSOperands(&v22, 0) + 24);
  v19 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(this + 3), &v21, &v20);
  (*(*a3 + 8))(a3, this, v19);
  return 1;
}

char *mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v18 = 1283;
    v17[2] = "tensor.splat";
    v17[3] = 12;
    v16 = 259;
    llvm::operator+(v17, &v15, v19);
    llvm::report_fatal_error(v19, 1);
  }

  v19[0] = a2;
  v19[1] = v8;
  v20[0] = &v21;
  v20[1] = 0x400000000;
  v22[0] = &v23;
  v22[1] = 0x400000000;
  v24 = v26;
  v25 = 0x400000000;
  v27 = 4;
  v28 = v30;
  v29 = 0x100000000;
  v30[1] = v31;
  v30[2] = 0x100000000;
  v31[1] = 0;
  v31[2] = 0;
  v31[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v31[4] = 0;
  v31[6] = 0;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v20, a4, 0, a4, 1);
  v27 = 0;
  v10 = v25;
  if (v25 > HIDWORD(v25))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v25, 16);
    v10 = v25;
  }

  LODWORD(v25) = v10;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(v22, a3 | 2, 0, a3 | 2, 1);
  v11 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::ExpandShapeOp>]";
  v6 = 134;
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::~FoldReshapeWithFromElements(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>::matchAndRewrite(int a1, mlir::tensor::ExpandShapeOp *this, uint64_t a3)
{
  v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(this, 0) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v10 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
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

  result = (*(v13 + 16))(v13, v10);
  if (result)
  {
    v14 = (*(v13 + 24))(v13, v10);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      return 0;
    }

LABEL_19:
    v21 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v17 = *(v8 + 68);
      v18 = *(v8 + 72);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20[0] = v18;
    v20[1] = v17;
    v19 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(this + 3), &v21, v20);
    (*(*a3 + 8))(a3, this, v19);
    return 1;
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>(mlir::OpBuilder *a1, uint64_t a2, const char **a3, void *a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id, *(**a2 + 32));
  if ((v9 & 1) == 0)
  {
    v22 = 1283;
    v20 = "tensor.from_elements";
    v21 = 20;
    v17 = 259;
    llvm::operator+(&__src, &v16, v23);
    llvm::report_fatal_error(v23, 1);
  }

  v23[0] = a2;
  v23[1] = v8;
  v24[0] = &v25;
  v24[1] = 0x400000000;
  v26[0] = v27;
  v26[1] = 0x400000000;
  v27[4] = v28;
  v27[5] = 0x400000000;
  v28[8] = 4;
  v28[9] = v29;
  v28[10] = 0x100000000;
  v29[1] = v30;
  v29[2] = 0x100000000;
  v30[1] = 0;
  v30[2] = 0;
  v30[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v30[4] = 0;
  v30[6] = 0;
  v10 = a4[1];
  v11 = *a4 & 0xFFFFFFFFFFFFFFF9;
  __src = *a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v24, v11 | 2, 0, v11 | 2, v10);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v26, &__src, v19);
  v12 = mlir::Operation::create(v23);
  mlir::OpBuilder::insert(a1, v12);
  if (*(*(v12 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::ExpandShapeOp>]";
  v6 = 141;
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

void anonymous namespace::FoldDimOfExpandShape::~FoldDimOfExpandShape(_anonymous_namespace_::FoldDimOfExpandShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldDimOfExpandShape::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_30;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_30:
      result = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  v10 = *(*(v9 + 48) + 16);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    goto LABEL_30;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(v3 + 56) | 4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

  v14 = ConstantIntValue;
  v15 = *(v9 + 36) ? v9 - 16 : 0;
  v16 = *(v15 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v16 + 8) + 8 * ConstantIntValue) != 0x8000000000000000)
  {
    goto LABEL_30;
  }

  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v41, v9);
  v44 = v46;
  v45 = 0x400000000;
  if (v42)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v44, &v41);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v41);
  if (v45)
  {
    v17 = 0;
    v18 = v44;
    while (1)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        v20 = 8 * v19;
        v21 = *v18;
        while (*v21 != v14)
        {
          ++v21;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
        v21 = *v18;
      }

      if (v21 != (*v18 + 8 * v19))
      {
        break;
      }

LABEL_28:
      v17 = (v17 + 1);
      v18 += 32;
      if (v18 == &v44[4 * v45])
      {
        v17 = (((v45 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1);
        break;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v44);
  v40 = v17;
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v44, v11);
  v24 = &v44[4 * v17];
  v41 = v43;
  v42 = 0x200000000;
  if (*(v24 + 8))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v41, v24);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v44);
  if (v42)
  {
    v25 = v41;
    v26 = 8 * v42;
    v27 = 1;
    do
    {
      if (*v25 != v14)
      {
        v27 *= *(*(v16 + 8) + 8 * *v25);
      }

      ++v25;
      v26 -= 8;
    }

    while (v26);
  }

  else
  {
    v27 = 1;
  }

  v28 = *(a2 + 24);
  v44 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v11, 0) + 24);
  v39 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>((a3 + 8), v28, &v44, &v40) - 16;
  AffineDimOrSymbol = getAffineDimOrSymbol(7u, 0, *(***(a2 + 24) + 32));
  AffineConstantExpr = mlir::getAffineConstantExpr(v27, *AffineDimOrSymbol, v29);
  v37 = mlir::AffineExpr::floorDiv(&AffineDimOrSymbol, AffineConstantExpr, v31);
  v32 = *(a2 + 24);
  v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a3 + 8, *(**v32 + 32));
  v44 = v32;
  v45 = v33;
  v46[0] = v47;
  v46[1] = 0x400000000;
  v47[4] = v48;
  v47[5] = 0x400000000;
  v48[4] = v49;
  v48[5] = 0x400000000;
  v49[8] = 4;
  v49[9] = v50;
  v49[10] = 0x100000000;
  v50[1] = v51;
  v50[2] = 0x100000000;
  v51[1] = 0;
  v51[2] = 0;
  v51[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v51[4] = 0;
  v51[6] = 0;
  mlir::affine::AffineApplyOp::build((a3 + 8), &v44, &v37, 1, &v39, 1);
  v34 = mlir::Operation::create(&v44);
  mlir::OpBuilder::insert((a3 + 8), v34);
  v35 = *(*(v34 + 6) + 16);
  mlir::OperationState::~OperationState(&v44);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  (*(*a3 + 8))(a3, a2, v36);
  if (v41 != v43)
  {
    free(v41);
  }

  result = 1;
LABEL_31:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>(mlir::arith::ConstantIndexOp *a1, uint64_t a2, uint64_t *a3, mlir::OperationState **a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::DimOp>(*(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v16[2] = v17;
  v16[3] = 0x400000000;
  v17[4] = v18;
  v17[5] = 0x400000000;
  v18[4] = v19;
  v18[5] = 0x400000000;
  v19[8] = 4;
  v19[9] = v20;
  v19[10] = 0x100000000;
  v20[1] = v21;
  v20[2] = 0x100000000;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v21[4] = 0;
  v21[6] = 0;
  v9 = *a3;
  v15 = *a4;
  v10 = mlir::OpBuilder::create<mlir::arith::ConstantIndexOp,long long &>(a1, a2, &v15);
  mlir::tensor::DimOp::build(a1, v16, v9, (v10 - 16));
  v11 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "affine.apply";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldDimOfExpandShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldDimOfExpandShape]";
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

void anonymous namespace::FoldDimOfCollapseShape::~FoldDimOfCollapseShape(_anonymous_namespace_::FoldDimOfCollapseShape *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldDimOfCollapseShape::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (!v4)
  {
    goto LABEL_29;
  }

  v7 = *(v4 + 8) & 7;
  if (v7 == 6)
  {
    v8 = v4 + 24 * *(v4 + 16);
    v9 = v8 + 120;
    if (v8 == -120)
    {
LABEL_29:
      result = 0;
      goto LABEL_30;
    }
  }

  else
  {
    v9 = v4 + 16 * v7 + 16;
  }

  if (*(*(v9 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    goto LABEL_29;
  }

  ConstantIntValue = mlir::getConstantIntValue(*(v3 + 56) | 4);
  if ((v11 & 1) == 0)
  {
    goto LABEL_29;
  }

  v12 = ConstantIntValue;
  v13 = *(v9 + 36) ? v9 - 16 : 0;
  v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (ConstantIntValue >= *(v14 + 16) || *(*(v14 + 8) + 8 * ConstantIntValue) != 0x8000000000000000)
  {
    goto LABEL_29;
  }

  mlir::tensor::CollapseShapeOp::getReassociationIndices(v32, v9);
  v15 = v32[0] + 32 * v12;
  v34 = v36;
  v35 = 0x200000000;
  if (*(v15 + 2))
  {
    llvm::SmallVectorImpl<long long>::operator=(&v34, v15);
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v32);
  v32[0] = v33;
  v32[1] = 0x600000000;
  v28 = 0;
  v29 = v31;
  v30 = 0x600000000;
  if (v35)
  {
    v16 = 0;
    v17 = v34;
    v18 = 8 * v35;
    do
    {
      v19 = *(a2 + 24);
      v27 = *(*(v9 + 72) + 24);
      v20 = mlir::OpBuilder::create<mlir::tensor::DimOp,mlir::detail::TypedValue<mlir::TensorType>,long long &>((a3 + 8), v19, &v27, v17);
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v32, (v20 - 16));
      AffineDimOrSymbol = getAffineDimOrSymbol(7u, v16, *(a3 + 8));
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v29, AffineDimOrSymbol);
      v23 = *(v29 + v30 - 1);
      if (v28)
      {
        v23 = mlir::AffineExpr::operator*(&v28, v23, v22);
      }

      v28 = v23;
      v16 = (v16 + 1);
      ++v17;
      v18 -= 8;
    }

    while (v18);
  }

  v24 = mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>((a3 + 8), *(a2 + 24), &v28, v32);
  (*(*a3 + 8))(a3, a2, v24);
  if (v29 != v31)
  {
    free(v29);
  }

  if (v32[0] != v33)
  {
    free(v32[0]);
  }

  if (v34 != v36)
  {
    free(v34);
  }

  result = 1;
LABEL_30:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::affine::AffineApplyOp,mlir::AffineExpr &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::affine::AffineApplyOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v8;
  v13[2] = v14;
  v13[3] = 0x400000000;
  v14[4] = v15;
  v14[5] = 0x400000000;
  v15[4] = v16;
  v15[5] = 0x400000000;
  v16[8] = 4;
  v16[9] = v17;
  v16[10] = 0x100000000;
  v17[1] = v18;
  v17[2] = 0x100000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v18[4] = 0;
  v18[6] = 0;
  mlir::affine::AffineApplyOp::build(a1, v13, a3, 1, *a4 & 0xFFFFFFFFFFFFFFF9, *(a4 + 8));
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::affine::AffineApplyOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldDimOfCollapseShape>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldDimOfCollapseShape]";
  v6 = 107;
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

void mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::~ComposeReassociativeReshapeOps(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v24 = (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21[0] = mlir::TensorType::operator mlir::ShapedType(&v24);
  v21[1] = v12;
  v13 = (*(*(*(v8 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v13[5] + 8))(v13[5], v13[4]), result))
  {
    v14 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v14[5] + 8))(v14[5], v14[4]), result))
    {
      v15 = *(a2 + 36) ? a2 - 16 : 0;
      v16 = (*(v15 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id || (result = (*(v16[5] + 8))(v16[5], v16[4]), result))
      {
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v24, v8);
        v17 = v24;
        v18 = v25;
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v22, a2);
        v19 = *(a3 + 8);
        mlir::composeReassociationIndices(v17, v18, v22, v23, v26);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v22);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v24);
        if (v27 != 1)
        {
          goto LABEL_9;
        }

        v24 = *(*(v8 + 72) + 24);
        v20 = mlir::OpBuilder::create<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,1u> &>((a3 + 8), *(a2 + 24), v21, &v24, v26);
        (*(*a3 + 8))(a3, a2, v20);
        if (v27)
        {
          llvm::SmallVector<llvm::SmallVector<long long,2u>,1u>::~SmallVector(v26);
        }

        result = 1;
      }
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp,(mlir::ReshapeOpKind)1>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeReassociativeReshapeOps<mlir::tensor::CollapseShapeOp, mlir::ReshapeOpKind::kCollapse>]";
  v6 = 161;
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

void mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::~ComposeCollapseOfExpandOp(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50[16] = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  v9 = *(*(v8 + 48) + 16);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    goto LABEL_12;
  }

  v48 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = mlir::TensorType::operator mlir::ShapedType(&v48);
  v16 = v15;
  v17 = *(a2 + 36) ? a2 - 16 : 0;
  v48 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = mlir::TensorType::operator mlir::ShapedType(&v48);
  v20 = v19;
  v40[0] = v18;
  v40[1] = v19;
  v21 = (*(*(*(a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v21 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v22 = v21[4];
    if (!(*(v21[5] + 8))())
    {
      goto LABEL_12;
    }
  }

  v23 = (*(*(mlir::tensor::ExpandShapeOp::getODSOperands(v8, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v23 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v24 = v23[4];
    if (!(*(v23[5] + 8))())
    {
      goto LABEL_12;
    }
  }

  v25 = *(v8 + 36) ? v8 - 16 : 0;
  v26 = (*(v25 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v27 = v26[4];
    if (!(*(v26[5] + 8))())
    {
      goto LABEL_12;
    }
  }

  (*(v16 + 24))(v16, v14);
  v29 = v28;
  (v20[3])(v20, v18);
  if (v18 == v14)
  {
    goto LABEL_12;
  }

  v48 = v50;
  v49 = 0x400000000;
  v45 = &v47;
  v46 = 0x400000000;
  v38 = v30;
  v39 = v29;
  if (v29 <= v30)
  {
    mlir::tensor::CollapseShapeOp::getReassociationIndices(v43, a2);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v48, v43);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v43);
    mlir::tensor::ExpandShapeOp::getReassociationIndices(v43, v8);
  }

  else
  {
    mlir::tensor::ExpandShapeOp::getReassociationIndices(v43, v8);
    llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v48, v43);
    llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v43);
    mlir::tensor::CollapseShapeOp::getReassociationIndices(v43, a2);
  }

  llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator=(&v45, v43);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v43);
  v43[0] = &v44;
  v43[1] = 0x400000000;
  if (v46)
  {
    v31 = 0;
    v32 = v45;
    v33 = &v45[4 * v46];
    while (1)
    {
      v41[0] = v42;
      v41[1] = 0x200000000;
      v34 = 4 * v31;
      while (1)
      {
        if (v31 >= v49)
        {
          v36 = v31;
LABEL_38:
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(v43, v41);
          v37 = 1;
          v31 = v36;
          goto LABEL_40;
        }

        v35 = *(v48[v34] + 8 * LODWORD(v48[v34 + 1]) - 8);
        if (v35 > *(*v32 + 8 * *(v32 + 2) - 8))
        {
          break;
        }

        v36 = v31 + 1;
        llvm::SmallVectorTemplateBase<long long,true>::push_back(v41, v31);
        v34 += 4;
        ++v31;
        if (v35 == *(*v32 + 8 * *(v32 + 2) - 8))
        {
          goto LABEL_38;
        }
      }

      v37 = 0;
LABEL_40:
      if (v41[0] != v42)
      {
        free(v41[0]);
      }

      if ((v37 & 1) == 0)
      {
        break;
      }

      v32 += 4;
      if (v32 == v33)
      {
        goto LABEL_44;
      }
    }

    v11 = 0;
  }

  else
  {
LABEL_44:
    if (v39 <= v38)
    {
      v41[0] = *(mlir::tensor::ExpandShapeOp::getODSOperands(v10, 0) + 24);
      if (v39 < v38)
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, a2, v40, v41, v43);
      }

      else
      {
        mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(a3, a2, v40, v41);
      }
    }

    else
    {
      v41[0] = *(mlir::tensor::ExpandShapeOp::getODSOperands(v10, 0) + 24);
      mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(a3, a2, v40, v41, v43);
    }

    v11 = 1;
  }

  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v43);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v45);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v48);
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CollapseShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**v10 + 32));
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v19;
  v18[3] = 0x400000000;
  v19[4] = v20;
  v19[5] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  mlir::tensor::CollapseShapeOp::build((a1 + 8), v18, *a3, *a4, *a5, *(a5 + 8));
  v12 = mlir::Operation::create(v18);
  mlir::OpBuilder::insert((a1 + 8), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(v18);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*a1 + 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15(a1, a2, v14);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::ExpandShapeOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>,llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &>(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t *a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExpandShapeOp>(*(**v10 + 32));
  v29[0] = v10;
  v29[1] = v11;
  v29[2] = v30;
  v29[3] = 0x400000000;
  v30[4] = v31;
  v30[5] = 0x400000000;
  v31[4] = v32;
  v31[5] = 0x400000000;
  v32[8] = 4;
  v32[9] = v33;
  v32[10] = 0x100000000;
  v33[1] = v34;
  v33[2] = 0x100000000;
  v34[1] = 0;
  v34[2] = 0;
  v34[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v34[4] = 0;
  v34[6] = 0;
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v15 = *(a5 + 8);
  mlir::tensor::getMixedSizes((a1 + 8), v10, v13, &v38);
  v16 = v38;
  v17 = v39;
  v28 = v12;
  v18 = mlir::TensorType::operator mlir::ShapedType(&v28);
  mlir::inferExpandShapeOutputShape((a1 + 8), v10, v18, v19, v14, v15, v16, v17, &v41);
  if (v44 != 1)
  {
    v20 = 0;
    LOBYTE(v35[0]) = 0;
    v37 = 0;
    v41 = v43;
    v42 = 0x600000000;
LABEL_6:
    v21 = v43;
    goto LABEL_13;
  }

  v35[0] = v36;
  v35[1] = 0x600000000;
  if (v42)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(v35, &v41);
    v37 = 1;
    if ((v44 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v37 = 1;
  }

  if (v41 == v43)
  {
LABEL_11:
    v41 = v43;
    v42 = 0x600000000;
    goto LABEL_12;
  }

  free(v41);
  v41 = v43;
  v42 = 0x600000000;
  if ((v37 & 1) == 0)
  {
    v20 = 0;
    goto LABEL_6;
  }

LABEL_12:
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v41, v35);
  v21 = v41;
  v20 = v42;
LABEL_13:
  mlir::tensor::ExpandShapeOp::build((a1 + 8), v29, v12, v13, v14, v15, v21, v20);
  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 == 1 && v35[0] != v36)
  {
    free(v35[0]);
  }

  if (v38 != &v40)
  {
    free(v38);
  }

  v22 = mlir::Operation::create(v29);
  mlir::OpBuilder::insert((a1 + 8), v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(v29);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = *(*a1 + 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25(a1, a2, v24);
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::tensor::CastOp,mlir::ShapedType &,mlir::detail::TypedValue<mlir::TensorType>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1 + 8, *(**v8 + 32));
  v19[0] = v8;
  v19[1] = v9;
  v20[0] = &v21;
  v20[1] = 0x400000000;
  v22[0] = v23;
  v22[1] = 0x400000000;
  v23[4] = v24;
  v23[5] = 0x400000000;
  v24[8] = 4;
  v24[9] = v25;
  v24[10] = 0x100000000;
  v25[1] = v26;
  v25[2] = 0x100000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v26[4] = 0;
  v26[6] = 0;
  v10 = *a3;
  v17 = *a4;
  __src = v10;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v20, &v17, 0, &v17, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v22, &__src, v19);
  v11 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert((a1 + 8), v11);
  v12 = *(*(v11 + 6) + 16);
  mlir::OperationState::~OperationState(v19);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*a1 + 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14(a1, a2, v13);
}

const char *llvm::detail::getTypeNameImpl<mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp,mlir::tensor::CastOp,mlir::tensor::DimOp,mlir::RankedTensorType>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ComposeCollapseOfExpandOp<mlir::tensor::CollapseShapeOp, mlir::tensor::ExpandShapeOp, mlir::tensor::CastOp, mlir::tensor::DimOp, mlir::RankedTensorType>]";
  v6 = 220;
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

void anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithConstant(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  Raw = &v17;
  v17 = 0;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  v9 = !mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(&Raw, v8) || v17 == 0;
  if (v9 || *(v17 + 24) != 1)
  {
    return 0;
  }

  if (*(a2 + 36))
  {
    v10 = a2 - 16;
  }

  else
  {
    v10 = 0;
  }

  v15 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v15);
  Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v12, *(v17 + 32), *(v17 + 40));
  v13 = mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::DenseElementsAttr &>((a3 + 8), *(a2 + 24), &Raw);
  (*(*a3 + 8))(a3, a2, v13);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithConstant<mlir::tensor::CollapseShapeOp>]";
  v6 = 139;
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

void anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithSplat(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16) + 120;
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    v7 = v3 + 16 * v6 + 16;
  }

  v8 = *(*(v7 + 48) + 16);
  v9 = v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id;
  if (v8 == &mlir::detail::TypeIDResolver<mlir::tensor::SplatOp,void>::id)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v22 = v10;
  if (!v9)
  {
    return 0;
  }

  v12 = *(v7 + 36);
  v13 = v7 - 16;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = (*(v13 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v15 = v14[2];
  if (v15)
  {
    v16 = v14[1];
    v17 = 8 * v15;
    while (*v16 != 0x8000000000000000)
    {
      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  if (*(a2 + 36))
  {
    v18 = a2 - 16;
  }

  else
  {
    v18 = 0;
  }

  v21 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(mlir::tensor::SplatOp::getODSOperands(&v22, 0) + 24);
  v19 = mlir::OpBuilder::create<mlir::tensor::SplatOp,mlir::RankedTensorType,mlir::Value>((a3 + 8), *(a2 + 24), &v21, &v20);
  (*(*a3 + 8))(a3, a2, v19);
  return 1;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithSplat<mlir::tensor::CollapseShapeOp>]";
  v6 = 136;
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

void anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::~FoldReshapeWithFromElements(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    return 0;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  v10 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
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

  result = (*(v13 + 16))(v13, v10);
  if (result)
  {
    v14 = (*(v13 + 24))(v13, v10);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_19;
        }
      }

      return 0;
    }

LABEL_19:
    v21 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v8 + 46) & 0x80) != 0)
    {
      v17 = *(v8 + 68);
      v18 = *(v8 + 72);
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20[0] = v18;
    v20[1] = v17;
    v19 = mlir::OpBuilder::create<mlir::tensor::FromElementsOp,mlir::TensorType,mlir::OperandRange>((a3 + 8), *(a2 + 24), &v21, v20);
    (*(*a3 + 8))(a3, a2, v19);
    return 1;
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldReshapeWithFromElements<mlir::tensor::CollapseShapeOp>]";
  v6 = 143;
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

void anonymous namespace::FoldCollapseOfCastOp::~FoldCollapseOfCastOp(_anonymous_namespace_::FoldCollapseOfCastOp *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::FoldCollapseOfCastOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_22;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_22:
      v17 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_22;
  }

  v9 = *(*(*(v8 + 72) + 24) + 8);
  if (!mlir::tensor::preservesStaticInformation((*(v8 - 8) & 0xFFFFFFFFFFFFFFF8), (v9 & 0xFFFFFFFFFFFFFFF8)))
  {
    goto LABEL_22;
  }

  mlir::tensor::CollapseShapeOp::getReassociationMaps(&v35, a2);
  v10 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v9 & 0xFFFFFFFFFFFFFFF8, v35, v36);
  if (v35 != &v37)
  {
    free(v35);
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  if (v10 == (*(v11 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    (*(*a3 + 40))(a3, a2);
    v12 = *(a2 + 72);
    v13 = *(*(v8 + 72) + 24);
    v14 = v12[1];
    if (v14)
    {
      v15 = *v12;
      *v14 = *v12;
      if (v15)
      {
        *(v15 + 8) = v12[1];
      }
    }

    v12[3] = v13;
    v12[1] = v13;
    v16 = *v13;
    *v12 = *v13;
    if (v16)
    {
      *(v16 + 8) = v12;
    }

    *v13 = v12;
    (*(*a3 + 48))(a3, a2);
    v17 = 1;
  }

  else
  {
    v20 = *(a2 + 24);
    v21 = *(*(v8 + 72) + 24);
    v22 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
    v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CollapseShapeOp>(*(**v20 + 32));
    v35 = v20;
    v36 = v23;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = v45;
    v44 = 0x400000000;
    v46 = 4;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = &v52;
    v51 = 0x100000000;
    v53 = 0;
    v54 = 0;
    v55 = &mlir::detail::TypeIDResolver<void,void>::id;
    v56 = 0;
    v57 = 0;
    v33 = v21;
    __src = v10;
    v17 = 1;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v37, &v33, 0, &v33, 1);
    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(&v35) = v22;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v40, &__src, &v35);
    v24 = mlir::Operation::create(&v35);
    mlir::OpBuilder::insert((a3 + 8), v24);
    v25 = *(*(v24 + 6) + 16);
    mlir::OperationState::~OperationState(&v35);
    if (v25 != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v24 = 0;
    }

    if (*(a2 + 36))
    {
      v26 = a2 - 16;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(v26 + 8) & 0xFFFFFFFFFFFFFFF8;
    v28 = *(a2 + 24);
    v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a3 + 8, *(**v28 + 32));
    v35 = v28;
    v36 = v29;
    v37 = v39;
    v38 = 0x400000000;
    v40 = v42;
    v41 = 0x400000000;
    v43 = v45;
    v44 = 0x400000000;
    v46 = 4;
    v47 = &v49;
    v48 = 0x100000000;
    v50 = &v52;
    v51 = 0x100000000;
    v53 = 0;
    v54 = 0;
    v55 = &mlir::detail::TypeIDResolver<void,void>::id;
    v56 = 0;
    v57 = 0;
    v33 = v24 - 16;
    __src = v27;
    llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v37, &v33, 0, &v33, 1);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v40, &__src, &v35);
    v30 = mlir::Operation::create(&v35);
    mlir::OpBuilder::insert((a3 + 8), v30);
    v31 = *(*(v30 + 6) + 16);
    mlir::OperationState::~OperationState(&v35);
    if (v31 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    (*(*a3 + 8))(a3, a2, v32);
  }

LABEL_23:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::FoldCollapseOfCastOp>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::FoldCollapseOfCastOp]";
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

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(unsigned int *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 != a2[2])
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = (*a2 + 8);
  v4 = 32 * v2;
  for (i = (*a1 + 8); ; i += 4)
  {
    v6 = *i;
    if (v6 != *v3 || memcmp(*(i - 1), *(v3 - 1), 8 * v6))
    {
      break;
    }

    v3 += 4;
    v4 -= 32;
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v4 = a1;
  v5 = a1 + 32 * a2;
  while (1)
  {
    v12 = v14;
    v13 = 0x200000000;
    if (*(v4 + 8))
    {
      llvm::SmallVectorImpl<long long>::operator=(&v12, v4);
      if (!v13)
      {
        if (v12 != v14)
        {
          free(v12);
        }

        goto LABEL_15;
      }

      v6 = 0;
      v7 = (*(*a3 + 8) + 8 * *v12);
      v8 = 8 * v13;
      do
      {
        v9 = *v7++;
        if (v9 == 0x8000000000000000)
        {
          ++v6;
        }

        v8 -= 8;
      }

      while (v8);
      if (v12 != v14)
      {
        free(v12);
      }

      if (v6 >= 2)
      {
        break;
      }
    }

LABEL_15:
    v4 += 32;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  result = 0;
LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp>(mlir::tensor::CollapseShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::CollapseShapeOp)#1}>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v4 = a1;
  v5 = a1 + 32 * a2;
  while (1)
  {
    v12 = v14;
    v13 = 0x200000000;
    if (*(v4 + 8))
    {
      llvm::SmallVectorImpl<long long>::operator=(&v12, v4);
      if (!v13)
      {
        if (v12 != v14)
        {
          free(v12);
        }

        goto LABEL_15;
      }

      v6 = 0;
      v7 = (*(*a3 + 8) + 8 * *v12);
      v8 = 8 * v13;
      do
      {
        v9 = *v7++;
        if (v9 == 0x8000000000000000)
        {
          ++v6;
        }

        v8 -= 8;
      }

      while (v8);
      if (v12 != v14)
      {
        free(v12);
      }

      if (v6 >= 2)
      {
        break;
      }
    }

LABEL_15:
    v4 += 32;
    if (v4 == v5)
    {
      goto LABEL_16;
    }
  }

  result = 0;
LABEL_17:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::~OpWithOffsetSizesAndStridesConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39[8] = *MEMORY[0x277D85DE8];
  v21 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(&v21, &v32);
  v29 = v31;
  v30 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v29, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(&v21, &v32);
  v26 = v28;
  v27 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v26, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(&v21, &v32);
  v23 = v25;
  v24 = 0x600000000;
  if (v33)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v23, &v32);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  if (mlir::foldDynamicIndexList(&v29, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v26, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v23, 0, 0))
  {
    if (*(v21 + 36))
    {
      v4 = v21 - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v29, v30, v26, v27, v23, v24);
    if (v5)
    {
      v6 = *(v21 + 24);
      v7 = *(*(v21 + 72) + 24);
      Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v6 + 32));
      v32 = v6;
      v33 = Slice;
      v34[0] = v35;
      v34[1] = 0x400000000;
      v35[4] = v36;
      v35[5] = 0x400000000;
      v36[4] = v37;
      v36[5] = 0x400000000;
      v37[8] = 4;
      v37[9] = v38;
      v37[10] = 0x100000000;
      v38[1] = v39;
      v38[2] = 0x100000000;
      v39[1] = 0;
      v39[2] = 0;
      v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v39[4] = 0;
      v39[6] = 0;
      mlir::tensor::ExtractSliceOp::build((a3 + 8), &v32, v5, v7, v29, v30, v26, v27, v23, v24);
      v9 = mlir::Operation::create(&v32);
      mlir::OpBuilder::insert((a3 + 8), v9);
      v10 = *(*(v9 + 6) + 16);
      mlir::OperationState::~OperationState(&v32);
      v11 = v21;
      if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = *(v12 + 9);
      v14 = v12 - 16;
      if (!v13)
      {
        v14 = 0;
      }

      v32 = v14;
      v15 = *(v14 + 1);
      if (*(v21 + 36))
      {
        v16 = v21 - 16;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v16 + 8);
      if ((v17 ^ v15) >= 8)
      {
        v18 = *(v21 + 24);
        v22 = v17 & 0xFFFFFFFFFFFFFFF8;
        v32 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a3 + 8), v18, &v22, &v32) - 16;
      }

      v5 = 1;
      (**a3)(a3, v11, &v32, 1);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v23 != v25)
  {
    free(v23);
  }

  if (v26 != v28)
  {
    free(v26);
  }

  if (v29 != v31)
  {
    free(v29);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

const char *llvm::detail::getTypeNameImpl<mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp,SliceReturnTypeCanonicalizer,SliceCanonicalizer>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::OpWithOffsetSizesAndStridesConstantArgumentFolder<mlir::tensor::ExtractSliceOp, SliceReturnTypeCanonicalizer, SliceCanonicalizer>]";
  v6 = 197;
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

void anonymous namespace::ExtractSliceOpCastFolder::~ExtractSliceOpCastFolder(_anonymous_namespace_::ExtractSliceOpCastFolder *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::ExtractSliceOpCastFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v8 + 8) & 7;
      if (v9 == 6)
      {
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_33;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) == 0)
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_33;
  }

  v12 = *(v11 + 8) & 7;
  if (v12 == 6)
  {
    v13 = v11 + 24 * *(v11 + 16) + 120;
    if (!v13)
    {
LABEL_33:
      v40 = 0;
      goto LABEL_34;
    }
  }

  else
  {
    v13 = v11 + 16 * v12 + 16;
  }

  if (*(*(v13 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    goto LABEL_33;
  }

  v14 = *(*(v13 + 72) + 24);
  if (!mlir::tensor::preservesStaticInformation((*(v13 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    goto LABEL_33;
  }

  v15 = *(a2 + 24);
  if (*(a2 + 36))
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  v43 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(a2 + 104);
  v18 = (*(a2 + 108) + v17);
  v19 = v5 + 32 * v17;
  v20 = v18 - v17;
  v21 = (*(a2 + 112) + v18);
  v22 = v5 + 32 * v18;
  v23 = v21 - v18;
  v24 = v5 + 32 * v21;
  v25 = (*(a2 + 116) + v21) - v21;
  v26 = *(a2 + 80);
  v27 = *(a2 + 88);
  v46 = *(v26 + 32);
  v47 = *(v26 + 24);
  v28 = *(a2 + 96);
  v48 = *(v27 + 24);
  v49 = *(v28 + 24);
  v44 = *(v28 + 32);
  v45 = *(v27 + 32);
  Slice = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractSliceOp>(*(**v15 + 32));
  v52[0] = v15;
  v52[1] = Slice;
  v53[0] = &v54;
  v53[1] = 0x400000000;
  v55[0] = v56;
  v55[1] = 0x400000000;
  v56[4] = v57;
  v56[5] = 0x400000000;
  v57[8] = 4;
  v57[9] = v58;
  v57[10] = 0x100000000;
  v58[1] = v59;
  v58[2] = 0x100000000;
  v59[1] = 0;
  v59[2] = 0;
  v59[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v59[4] = 0;
  v59[6] = 0;
  v50 = v14;
  __src = v43;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v53, &v50, 0, &v50, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v53, v19 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v19 & 0xFFFFFFFFFFFFFFF9 | 2, v20);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v53, v22 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v22 & 0xFFFFFFFFFFFFFFF9 | 2, v23);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v53, v24 & 0xFFFFFFFFFFFFFFF9 | 2, 0, v24 & 0xFFFFFFFFFFFFFFF9 | 2, v25);
  v30 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v52);
  v30[6] = 1;
  v30[7] = v20;
  v30[8] = v23;
  v30[9] = v25;
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v47, v46 >> 3);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v52) = v31;
  v32 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v48, v45 >> 3);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v52) + 8) = v32;
  v33 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(a3 + 8), v49, v44 >> 3);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(v52) + 16) = v33;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v55, &__src, v52);
  v34 = mlir::Operation::create(v52);
  mlir::OpBuilder::insert((a3 + 8), v34);
  v35 = *(*(v34 + 6) + 16);
  mlir::OperationState::~OperationState(v52);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v52[0] = (v36 - 16);
  v37 = *(v36 - 1);
  v38 = a2 - 16;
  if (!*(a2 + 36))
  {
    v38 = 0;
  }

  v39 = *(v38 + 8);
  if ((v39 ^ v37) >= 8)
  {
    __src = v39 & 0xFFFFFFFFFFFFFFF8;
    v52[0] = (mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a3 + 8), v15, &__src, v52) - 16);
  }

  v40 = 1;
  (**a3)(a3, a2, v52, 1);
LABEL_34:
  v41 = *MEMORY[0x277D85DE8];
  return v40;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::ExtractSliceOpCastFolder>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::ExtractSliceOpCastFolder]";
  v6 = 109;
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

void anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpConstantArgumentFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v21 = a2;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v21, &v31);
  v28 = v30;
  v29 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v28, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v21, &v31);
  v25 = v27;
  v26 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v25, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v21, &v31);
  v22 = v24;
  v23 = 0x600000000;
  if (v32)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v22, &v31);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (mlir::foldDynamicIndexList(&v28, 1, 0) & 1) != 0 || (mlir::foldDynamicIndexList(&v25, 1, 0) & 1) != 0 || (v4 = 0, (mlir::foldDynamicIndexList(&v22, 0, 1)))
  {
    v5 = v21 - 16;
    if (!*(v21 + 36))
    {
      v5 = 0;
    }

    v6 = mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(*((*(*(*(v21 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, v28, v29, v25, v26, v22, v23);
    v7 = *(*(v21 + 72) + 24);
    v19 = v7;
    v20 = v6;
    if (v6 != (*(v7 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v8 = (a3 + 24);
      v18 = *(a3 + 24);
      v7 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>((a3 + 8), *(v21 + 24), &v20, &v19) - 16;
      if (v18)
      {
        *v8 = v18;
      }

      else
      {
        *v8 = 0;
        *(a3 + 32) = 0;
      }
    }

    v9 = v21;
    v10 = *(*(v21 + 72) + 32 * *(v21 + 104) + 24);
    v11 = *(v21 + 24);
    inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v11 + 32));
    v31 = v11;
    v32 = inserted;
    v33[0] = v34;
    v33[1] = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[4] = v36;
    v35[5] = 0x400000000;
    v36[8] = 4;
    v36[9] = v37;
    v36[10] = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    mlir::tensor::InsertSliceOp::build((a3 + 8), &v31, v7, v10, v28, v29, v25, v26, v22, v23);
    v13 = mlir::Operation::create(&v31);
    mlir::OpBuilder::insert((a3 + 8), v13);
    v14 = *(*(v13 + 6) + 16);
    mlir::OperationState::~OperationState(&v31);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    (*(*a3 + 8))(a3, v9, v15);
    v4 = 1;
  }

  if (v22 != v24)
  {
    free(v22);
  }

  if (v25 != v27)
  {
    free(v25);
  }

  if (v28 != v30)
  {
    free(v28);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpConstantArgumentFolder<mlir::tensor::InsertSliceOp>]";
  v6 = 149;
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

void anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::~InsertSliceOpCastFolder(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

uint64_t anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80[8] = *MEMORY[0x277D85DE8];
  v56 = a2;
  v5 = *(a2 + 72);
  v6 = *(a2 + 68);
  if (v6)
  {
    v7 = (v5 + 24);
    do
    {
      v8 = *v7;
      if ((~*(*v7 + 8) & 7) == 0)
      {
        v8 = 0;
      }

      if (!v8)
      {
        goto LABEL_12;
      }

      v9 = *(v8 + 8) & 7;
      if (v9 == 6)
      {
        v10 = v8 + 24 * *(v8 + 16) + 120;
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10 = v8 + 16 * v9 + 16;
      }

      if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id && *(*(*(v10 - 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        goto LABEL_52;
      }

LABEL_12:
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  v11 = *(v5 + 24);
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = *(v5 + 24);
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 == 6)
  {
    v12 += 24 * *(v12 + 16) + 120;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 += 16 * v13 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v14 = *(*(v12 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v12 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF00;
      v12 = v14;
      v16 = 1;
      goto LABEL_26;
    }
  }

  v12 = 0;
LABEL_25:
  v16 = 0;
  v15 = 0;
LABEL_26:
  v17 = v15 | v12;
  v18 = *(v5 + 32 * *(a2 + 104) + 24);
  if ((~*(v18 + 8) & 7) != 0)
  {
    v19 = *(v5 + 32 * *(a2 + 104) + 24);
  }

  else
  {
    v19 = 0;
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  v20 = *(v19 + 8) & 7;
  if (v20 == 6)
  {
    v21 = v19 + 24 * *(v19 + 16) + 120;
    if (!v21)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v21 = v19 + 16 * v20 + 16;
  }

  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v22 = *(*(v21 + 72) + 24);
    if (mlir::tensor::preservesStaticInformation((*(v21 - 8) & 0xFFFFFFFFFFFFFFF8), (*(v22 + 8) & 0xFFFFFFFFFFFFFFF8)))
    {
      if (!v16)
      {
        v17 = v11;
      }

      goto LABEL_41;
    }
  }

LABEL_39:
  if ((v16 & 1) == 0)
  {
LABEL_52:
    v26 = 0;
    goto LABEL_53;
  }

  v22 = v18;
LABEL_41:
  if (*(*(*(v17 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v23 = *(v17 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v23 = 0;
  }

  if (*(*(*(v22 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v24 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    goto LABEL_52;
  }

  v29 = *(a2 + 88);
  v30 = *(v29 + 24);
  v31 = *(v29 + 32);
  v70 = v72;
  v71 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v70, v30, &v30[v31 & 0xFFFFFFFFFFFFFFF8]);
  mlir::computeRankReductionMask(v70, v71, *(v23 + 8), *(v23 + 16), 1, v66);
  if (v69 == 1)
  {
    mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(&v56, &v73);
    v63 = v65;
    v64 = 0x600000000;
    if (v74)
    {
      llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v63, &v73);
    }

    if (v73 != v75)
    {
      free(v73);
    }

    v36 = v70;
    if (v71)
    {
      v55 = v22;
      v37 = 0;
      v38 = 0;
      v39 = 8 * v71;
      do
      {
        if ((v69 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:nn200100]();
        }

        LODWORD(v73) = v38;
        v40 = llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,llvm::detail::DenseSetEmpty,4u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>,unsigned int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseSetPair<unsigned int>>::find(v66, &v73);
        v41 = (v67 + 4 * v68);
        if (v66[0])
        {
          v41 = &v69;
        }

        if (v41 == v40)
        {
          v42 = *(*(v23 + 8) + 8 * v37);
          if (v42 != 0x8000000000000000)
          {
            v43 = v37;
            v44 = mlir::IntegerAttr::get(*(**(a3 + 8) + 472), v42);
            *(v63 + v38) = v44 & 0xFFFFFFFFFFFFFFFBLL;
            ++v37;
            v36[v38] = *(*(v23 + 8) + 8 * v43);
          }
        }

        ++v38;
        v39 -= 8;
      }

      while (v39);
      v36 = v70;
      v45 = v71;
      v22 = v55;
    }

    else
    {
      v45 = 0;
    }

    if (verifyInsertSliceOp(v23, v24, v32, v33, v36, v45, v34, v35, 0))
    {
      v26 = 0;
    }

    else
    {
      v46 = *(v56 + 24);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedOffsets(&v56, &v60);
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedStrides(&v56, &v57);
      inserted = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::InsertSliceOp>(a3 + 8, *(**v46 + 32));
      v73 = v46;
      v74 = inserted;
      v75[0] = v76;
      v75[1] = 0x400000000;
      v76[4] = v77;
      v76[5] = 0x400000000;
      v77[4] = v78;
      v77[5] = 0x400000000;
      v78[8] = 4;
      v78[9] = v79;
      v78[10] = 0x100000000;
      v79[1] = v80;
      v79[2] = 0x100000000;
      v80[2] = 0;
      v80[1] = 0;
      v80[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v80[4] = 0;
      v80[6] = 0;
      mlir::tensor::InsertSliceOp::build((a3 + 8), &v73, v17, v22, v60, v61, v63, v64, v57, v58);
      v48 = mlir::Operation::create(&v73);
      mlir::OpBuilder::insert((a3 + 8), v48);
      v49 = *(*(v48 + 6) + 16);
      mlir::OperationState::~OperationState(&v73);
      if (v49 != &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
      {
        v48 = 0;
      }

      if (v57 != &v59)
      {
        free(v57);
      }

      if (v60 != &v62)
      {
        free(v60);
      }

      v50 = v56;
      if (*(v56 + 36))
      {
        v51 = v56 - 16;
      }

      else
      {
        v51 = 0;
      }

      v52 = *(v51 + 8);
      if ((v52 ^ *(v22 + 8)) >= 8)
      {
        v53 = *(v56 + 24);
        v73 = (v52 & 0xFFFFFFFFFFFFFFF8);
        v60 = v48 - 16;
        v48 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::OpResult>((a3 + 8), v53, &v73, &v60);
        v50 = v56;
      }

      if (*(v48 + 9))
      {
        v54 = (v48 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
      }

      else
      {
        v54 = 4;
      }

      (**a3)(a3, v50, v54);
      v26 = 1;
    }

    if (v63 != v65)
    {
      free(v63);
    }

    if ((v69 & 1) != 0 && (v66[0] & 1) == 0)
    {
      MEMORY[0x25F891030](v67, 4);
    }
  }

  else
  {
    v26 = 0;
  }

  if (v70 != v72)
  {
    free(v70);
  }

LABEL_53:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::OpResult>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(a1, *(**a2 + 32));
  v16[0] = a2;
  v16[1] = v8;
  v17[0] = &v18;
  v17[1] = 0x400000000;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[8] = 4;
  v21[9] = v22;
  v21[10] = 0x100000000;
  v22[1] = v23;
  v22[2] = 0x100000000;
  v23[1] = 0;
  v23[2] = 0;
  v23[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v23[4] = 0;
  v23[6] = 0;
  v9 = *a3;
  v14 = *a4;
  __src = v9;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v17, &v14, 0, &v14, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v19, &__src, v16);
  v10 = mlir::Operation::create(v16);
  mlir::OpBuilder::insert(a1, v10);
  if (*(*(v10 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

const char *llvm::detail::getTypeNameImpl<anonymous namespace::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = (anonymous namespace)::InsertSliceOpCastFolder<mlir::tensor::InsertSliceOp>]";
  v6 = 137;
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