uint64_t mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::ExpandShapeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::tensor::ExpandShapeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v22, a4);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "reassociation", 0xDuLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_output_shape", 0x13uLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v14[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
        {
          a3(&v22, a4);
          if (!v22)
          {
            goto LABEL_4;
          }

          if (!v22)
          {
            goto LABEL_4;
          }

          v20 = 0;
          v21 = v14;
          goto LABEL_23;
        }

        a1[1] = v14;
      }
    }

    result = 1;
    goto LABEL_19;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v22, a4);
  if (!v22)
  {
    goto LABEL_4;
  }

  if (!v22)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = v11;
LABEL_23:
  v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
  v18 = v24 + 24 * v25;
  v19 = *v17;
  *(v18 + 16) = *(v17 + 16);
  *v18 = v19;
  ++v25;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  result = 0;
LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::ExpandShapeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "reassociation";
    v16 = 13;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "static_output_shape";
    v16 = 19;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::tensor::ExpandShapeOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::ExpandShapeOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (a4 == 19)
  {
    if (*a3 != 0x6F5F636974617473 || a3[1] != 0x68735F7475707475 || *(a3 + 11) != 0x65706168735F7475)
    {
      goto LABEL_16;
    }

    v5 = a2[1];
LABEL_18:
    v8 = v5 & 0xFFFFFFFFFFFFFF00;
    return v8 | v5;
  }

  if (a4 == 13 && *a3 == 0x69636F7373616572 && *(a3 + 5) == 0x6E6F69746169636FLL)
  {
    v5 = *a2;
    goto LABEL_18;
  }

LABEL_16:
  LOBYTE(v5) = 0;
  v8 = 0;
  return v8 | v5;
}

void *mlir::tensor::ExpandShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, void *a4)
{
  if (a3 == 19)
  {
    if (*a2 == 0x6F5F636974617473 && a2[1] == 0x68735F7475707475 && *(a2 + 11) == 0x65706168735F7475)
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

      result[1] = v8;
    }
  }

  else if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v9 = a4;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    *result = v9;
  }

  return result;
}

void mlir::tensor::ExpandShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "reassociation";
    v12 = 13;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "static_output_shape";
    v12 = 19;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::tensor::ExpandShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v10, "reassociation", 13, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_output_shape", 19, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
  {
    v8 = 1;
  }

  else
  {
    a4(&v13, a5);
    if (v13)
    {
      mlir::Diagnostic::operator<<<12ul>(v14, "attribute '");
      if (v13)
      {
        v12 = 261;
        v11[0] = a2;
        v11[1] = a3;
        mlir::Diagnostic::operator<<(v14, v11);
        if (v13)
        {
          mlir::Diagnostic::operator<<<58ul>(v14, "' failed to satisfy constraint: i64 dense array attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(mlir::tensor::ExpandShapeOp **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v20 = "requires attribute 'reassociation'";
LABEL_22:
    v23 = v20;
    v24 = 259;
    mlir::Operation::emitOpError(v2, &v23, v25);
    v19 = (v26 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
    goto LABEL_23;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v20 = "requires attribute 'static_output_shape'";
    goto LABEL_22;
  }

  v25[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v4, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25) || (v25[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_output_shape", 19, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v25)))
  {
LABEL_20:
    v19 = 0;
    goto LABEL_23;
  }

  v8 = *this;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
    {
      ++v12;
      v13 += 32;
      if (v11 == v12)
      {
        v8 = *this;
        goto LABEL_10;
      }
    }

    goto LABEL_20;
  }

LABEL_10:
  v14 = mlir::tensor::ExpandShapeOp::getODSOperands(v8, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = v14 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
    {
      LODWORD(v11) = v11 + 1;
      v17 += 32;
      if (!--v16)
      {
        v8 = *this;
        goto LABEL_15;
      }
    }

    goto LABEL_20;
  }

LABEL_15:
  if (*(v8 + 9))
  {
    v18 = v8 - 16;
  }

  else
  {
    v18 = 0;
  }

  v19 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(v8, (*(v18 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t mlir::tensor::ExpandShapeOp::getODSOperands(mlir::tensor::ExpandShapeOp *this, unsigned int a2)
{
  if ((*(this + 46) & 0x80) != 0)
  {
    *(this + 17);
    __const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
    v3 = *(this + 9);
  }

  else
  {
    v3 = 0;
    __const__ZN4mlir6tensor7SplatOp27getODSOperandIndexAndLengthEj_isVariadic[a2];
    v2 = a2;
  }

  return v3 + 32 * v2;
}

uint64_t mlir::tensor::ExpandShapeOp::parse(uint64_t a1, uint64_t a2)
{
  v30[16] = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  v20 = 0;
  v21 = 0;
  v28 = v30;
  v29 = 0x400000000;
  v18[1] = 1;
  v19 = 0;
  v18[0] = &v19;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v23, 1) & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v21, v6))
  {
    goto LABEL_21;
  }

  if (v21)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2);
    *v8 = v21;
  }

  v27 = 257;
  if (((*(*a1 + 400))(a1, "output_shape", 12, &__src) & 1) == 0)
  {
    goto LABEL_21;
  }

  (*(*a1 + 40))(a1);
  __src = 0;
  if (!mlir::parseDynamicIndexList(a1, &v28, &v20, &__src, 0))
  {
    goto LABEL_21;
  }

  v9 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2);
  *(v9 + 8) = v20;
  v17 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_21;
  }

  v10 = *(a2 + 8);
  __src = a1;
  v26[0] = &v17;
  v26[1] = a2;
  if (!mlir::tensor::ExpandShapeOp::verifyInherentAttrs(v10, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) || ((*(*a1 + 104))(a1) & 1) == 0 || (__src = 0, !mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src)) || (v19 = __src, v27 = 257, ((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0) || (v17 = 0, !mlir::AsmParser::parseType<mlir::TensorType>(a1, &v17)) || (__src = v17, v11 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v26), !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v22, v18, v4, a2 + 16)))
  {
LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (v29)
  {
    v12 = v28;
    v13 = 32 * v29;
    while (((*(*a1 + 728))(a1, v12, v11, a2 + 16) & 1) != 0)
    {
      v12 += 32;
      v14 = 1;
      v13 -= 32;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v14 = 1;
LABEL_22:
  if (v28 != v30)
  {
    free(v28);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void mlir::tensor::ExpandShapeOp::print(mlir::tensor::ExpandShapeOp **this, mlir::OpAsmPrinter *a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v9 = (*(*a2 + 16))(a2);
  v10 = *(v9 + 4);
  if (v10 >= *(v9 + 3))
  {
    llvm::raw_ostream::write(v9, 32);
  }

  else
  {
    *(v9 + 4) = v10 + 1;
    *v10 = 32;
  }

  v11 = (*(*a2 + 16))(a2);
  v12 = *(v11 + 4);
  if ((*(v11 + 3) - v12) > 0xB)
  {
    *(v12 + 8) = 1701863784;
    *v12 = *"output_shape";
    *(v11 + 4) += 12;
  }

  else
  {
    llvm::raw_ostream::write(v11, "output_shape", 0xCuLL);
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (v14 >= *(v13 + 3))
  {
    llvm::raw_ostream::write(v13, 32);
  }

  else
  {
    *(v13 + 4) = v14 + 1;
    *v14 = 32;
  }

  v15 = *this;
  v16 = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 1u);
  v17 = *(v15 + 2 * ((*(v15 + 11) >> 23) & 1) + 9);
  mlir::printDynamicIndexList(a2, v15, v16, v18, *(v17 + 24), *(v17 + 32) >> 3, 0, 0, 2, 0, 2);
  v35 = v37;
  v36 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "reassociation", 13);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v35, "static_output_shape", 19);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v35, v36);
  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (*(v22 + 3) == v23)
  {
    llvm::raw_ostream::write(v22, ":", 1uLL);
  }

  else
  {
    *v23 = 58;
    ++*(v22 + 4);
  }

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

  v26 = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  (*(*a2 + 32))(a2, *(*(v26 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (*(v29 + 3) - v30 > 3uLL)
  {
    *v30 = 1869901417;
    *(v29 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v29, "into", 4uLL);
  }

  v31 = (*(*a2 + 16))(a2);
  v32 = *(v31 + 4);
  if (v32 >= *(v31 + 3))
  {
    llvm::raw_ostream::write(v31, 32);
  }

  else
  {
    *(v31 + 4) = v32 + 1;
    *v32 = 32;
  }

  v33 = *this - 16;
  if (!*(*this + 9))
  {
    v33 = 0;
  }

  (*(*a2 + 32))(a2, *(v33 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v35 != v37)
  {
    free(v35);
  }

  v34 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::tensor::ExtractOp::getODSOperandIndexAndLength(mlir::tensor::ExtractOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor9ExtractOp27getODSOperandIndexAndLengthEj_isVariadic;
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
  if (__const__ZN4mlir6tensor9ExtractOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 1) << 32;
  }

  return v8 | v7;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v20 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v20, 0, &v20, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a4, 0, a4, a5);
  __src = v23;
  v22 = 0x200000000;
  v8 = *(a2 + 2);
  v9 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::tensor::ExtractOp::inferReturnTypes(Dictionary, v11, v12, v8 & 0xFFFFFFFFFFFFFFF9, v9, v13, v14, v15, v18, v19, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v16);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v22);
  if (__src != v23)
  {
    free(__src);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  v15 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  v16 = *(*v15 + 136);
  if (v16 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v18 = 24;
LABEL_14:
    v17 = *(v15 + v18);
    goto LABEL_15;
  }

  if (v16 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v18 = 8;
    goto LABEL_14;
  }

  v17 = 0;
LABEL_15:
  **a11 = v17;
  return 1;
}

BOOL mlir::tensor::ExtractOp::verifyInvariantsImpl(mlir::tensor::ExtractOp *this)
{
  v23 = *MEMORY[0x277D85DE8];
  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  v4 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v6 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v5))
    {
      ++v5;
      v6 += 32;
      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_12;
  }

LABEL_5:
  v7 = mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  if (v8)
  {
    v9 = v8;
    v10 = v7 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      LODWORD(v4) = v4 + 1;
      v10 += 32;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v14 = 0;
    goto LABEL_21;
  }

LABEL_9:
  v11 = *(*(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(*v11 + 136);
  if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = 24;
LABEL_15:
    v13 = *(v11 + v15);
    goto LABEL_16;
  }

  if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v15 = 8;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:
  v16 = *this;
  if (*(*this + 36))
  {
    v17 = *this - 16;
  }

  else
  {
    v17 = 0;
  }

  v14 = 1;
  if (v13 != (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v20 = "failed to verify that result type matches element type of tensor";
    v21 = 259;
    mlir::Operation::emitOpError(v16, &v20, v22);
    v14 = (v22[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
  }

LABEL_21:
  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::tensor::ExtractOp::getODSOperands(mlir::tensor::ExtractOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::ExtractOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::tensor::ExtractOp::parse(uint64_t a1, uint64_t a2)
{
  v31[16] = *MEMORY[0x277D85DE8];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v24[0] = v25;
  v24[1] = 1;
  v29 = v31;
  v30 = 0x400000000;
  v22[1] = 1;
  v23 = 0;
  v22[0] = &v23;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v25, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v29, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_25;
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

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    goto LABEL_25;
  }

  v5 = __src;
  v23 = __src;
  v21 = __src;
  v6 = *__src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, v5);
    v11 = (*(*a1 + 32))(a1);
    v12 = *(*v23 + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 24;
    }

    else
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v13 = 0;
        goto LABEL_19;
      }

      v14 = 8;
    }

    v13 = *(v23 + v14);
LABEL_19:
    v15 = *(**v11 + 472);
    __src = v13;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v28);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v24, v22, v4, a2 + 16))
    {
      if (!v30)
      {
        v8 = 1;
        goto LABEL_26;
      }

      v16 = v29;
      v17 = 32 * v30;
      while (((*(*a1 + 728))(a1, v16, v15, a2 + 16) & 1) != 0)
      {
        v16 += 32;
        v8 = 1;
        v17 -= 32;
        if (!v17)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_25:
    v8 = 0;
    goto LABEL_26;
  }

  v7 = (*(*a1 + 16))(a1);
  v20[16] = 257;
  (*(*a1 + 24))(&__src, a1, v7, v20);
  if (__src)
  {
    mlir::Diagnostic::operator<<<60ul>(v28, "'tensor' must be ranked tensor of any type values, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v28, &v21);
    }
  }

  v8 = (v28[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_26:
  if (v29 != v31)
  {
    free(v29);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::tensor::ExtractOp::print(mlir::tensor::ExtractOp *this, mlir::OpAsmPrinter *a2)
{
  v29[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, "[", 1uLL);
  }

  else
  {
    *v8 = 91;
    ++*(v7 + 4);
  }

  v9 = mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  v11 = v10;
  v12 = (*(*a2 + 16))(a2);
  if (v11)
  {
    v13 = v12;
    (*(*a2 + 160))(a2, *(v9 + 24));
    v14 = v11 - 1;
    if (v14)
    {
      v15 = (v9 + 56);
      do
      {
        v16 = *(v13 + 4);
        if (*(v13 + 3) - v16 > 1uLL)
        {
          *v16 = 8236;
          *(v13 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v13, ", ", 2uLL);
        }

        v17 = *v15;
        v15 += 4;
        (*(*a2 + 160))(a2, v17);
        --v14;
      }

      while (v14);
    }
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, "]", 1uLL);
  }

  else
  {
    *v19 = 93;
    ++*(v18 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, 0);
  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (*(v23 + 3) == v24)
  {
    llvm::raw_ostream::write(v23, ":", 1uLL);
  }

  else
  {
    *v24 = 58;
    ++*(v23 + 4);
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = mlir::tensor::ExtractOp::getODSOperands(this, 0);
  (*(*a2 + 32))(a2, *(*(v27 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::ExtractSliceOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v31, a4);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v32, v25);
LABEL_38:
          if (v31)
          {
            v29 = 0;
            v30 = v12;
            v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
            v27 = v33 + 24 * v34;
            v28 = *v26;
            *(v27 + 16) = *(v26 + 16);
            *v27 = v28;
            ++v34;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        goto LABEL_5;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v18)
  {
    v12 = *(v17 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v19 = v12[1];
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 64)
        {
          a1[2] = v12;
          goto LABEL_25;
        }
      }

      a3(&v31, a4);
      if (v31)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0) && ((v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v24 & 1) == 0) || (v22 = *(v23 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 4, v22, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "static_offsets";
    v22 = 14;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "static_sizes";
    v22 = 12;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "static_strides";
    v22 = 14;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::tensor::ExtractSliceOp::computePropertiesHash(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v17 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v15 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = a1[4];
  v11 = __ROR8__(v10 + 16, 16);
  v14 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::ExtractSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 4);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

void *mlir::tensor::ExtractSliceOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 4)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      result[1] = v14;
    }
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
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

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::ExtractSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::ExtractSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 12, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 14, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 4);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 4);
  }

  return result;
}

BOOL mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v28 = "requires attribute 'static_offsets'";
LABEL_32:
    v31 = v28;
    v32 = 259;
    mlir::Operation::emitOpError(v2, &v31, v33);
    v27 = (v34 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
    goto LABEL_33;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v28 = "requires attribute 'static_sizes'";
    goto LABEL_32;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v28 = "requires attribute 'static_strides'";
    goto LABEL_32;
  }

  v33[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33) || (v33[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33)) || (v33[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v33)))
  {
LABEL_29:
    v27 = 0;
    goto LABEL_33;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_29;
  }

LABEL_16:
  v18 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_29;
  }

LABEL_20:
  v22 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_29;
  }

LABEL_24:
  if (*(*this + 9))
  {
    v26 = *this - 16;
  }

  else
  {
    v26 = 0;
  }

  v27 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v26 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
LABEL_33:
  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::tensor::ExtractSliceOp::parse(uint64_t a1, uint64_t a2)
{
  v43[16] = *MEMORY[0x277D85DE8];
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v29[0] = v30;
  v29[1] = 1;
  v41 = v43;
  v42 = 0x400000000;
  v27 = 0;
  v28 = 0;
  v38 = v40;
  v39 = 0x400000000;
  v35 = v37;
  v36 = 0x400000000;
  v25 = 0;
  v26 = 0;
  v24[0] = &v25;
  v24[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v30, 1) & 1) == 0)
  {
    goto LABEL_25;
  }

  (*(*a1 + 40))(a1);
  __src = 0;
  if (!mlir::parseDynamicIndexList(a1, &v41, &v28, &__src, 0))
  {
    goto LABEL_25;
  }

  v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  *v5 = v28;
  (*(*a1 + 40))(a1);
  __src = 0;
  if (!mlir::parseDynamicIndexList(a1, &v38, &v27, &__src, 0))
  {
    goto LABEL_25;
  }

  v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  *(v6 + 8) = v27;
  (*(*a1 + 40))(a1);
  __src = 0;
  if (!mlir::parseDynamicIndexList(a1, &v35, &v26, &__src, 0))
  {
    goto LABEL_25;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 16) = v26;
  v23 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = *(a2 + 8);
  __src = a1;
  v33[0] = &v23;
  v33[1] = a2;
  if (!mlir::tensor::ExtractSliceOp::verifyInherentAttrs(v8, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExtractSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    goto LABEL_25;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_25;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &__src))
  {
    goto LABEL_25;
  }

  v25 = __src;
  v34 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v23))
  {
    goto LABEL_25;
  }

  __src = v23;
  v9 = v42;
  v10 = v39;
  v11 = v36;
  v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  v12[6] = 1;
  v12[7] = v9;
  v12[8] = v10;
  v12[9] = v11;
  v13 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v33);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v29, v24, v4, a2 + 16))
  {
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  if (v42)
  {
    v14 = v41;
    v15 = 32 * v42;
    while (((*(*a1 + 728))(a1, v14, v13, a2 + 16) & 1) != 0)
    {
      v14 += 32;
      v15 -= 32;
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_25;
  }

LABEL_16:
  if (v39)
  {
    v16 = v38;
    v17 = 32 * v39;
    while (((*(*a1 + 728))(a1, v16, v13, a2 + 16) & 1) != 0)
    {
      v16 += 32;
      v17 -= 32;
      if (!v17)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_25;
  }

LABEL_20:
  if (v36)
  {
    v18 = v35;
    v19 = 32 * v36;
    while (((*(*a1 + 728))(a1, v18, v13, a2 + 16) & 1) != 0)
    {
      v18 += 32;
      v20 = 1;
      v19 -= 32;
      if (!v19)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  v20 = 1;
LABEL_26:
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

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

void mlir::tensor::ExtractSliceOp::print(mlir::tensor::ExtractSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  v6 = *this;
  ODSOperands = mlir::tensor::ExtractSliceOp::getODSOperands(this, 1u);
  v8 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v6, ODSOperands, v9, *(v8 + 24), *(v8 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v12 = *this;
  v13 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 2u);
  v14 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v12, v13, v15, *(v14 + 24), *(v14 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v18 = *this;
  v19 = mlir::tensor::ExtractSliceOp::getODSOperands(this, 3u);
  v20 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v18, v19, v21, *(v20 + 24), *(v20 + 32) >> 3, 0, 0, 2, 0, 2);
  v37 = v39;
  v38 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v37, v38);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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
  if (*(v31 + 3) - v32 > 1uLL)
  {
    *v32 = 28532;
    *(v31 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v31, "to", 2uLL);
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

  v35 = *this - 16;
  if (!*(*this + 36))
  {
    v35 = 0;
  }

  (*(*a2 + 32))(a2, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v37 != v39)
  {
    free(v37);
  }

  v36 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::FromElementsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (*(*this + 9))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v44 = 0;
  v5 = *v4;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
    if ((*(v7 + 16))(v7, v4))
    {
      v8 = (*(v7 + 24))(v7, v4);
      if (!v9)
      {
LABEL_10:
        v11 = *v4;
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
        (*(v13 + 8))(v13, v4);
        goto LABEL_18;
      }

      v10 = 8 * v9;
      while (*v8 != 0x8000000000000000)
      {
        ++v8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_10;
        }
      }
    }
  }

  v43 = 261;
  v42[0] = "result";
  v42[1] = 6;
  mlir::Operation::emitOpError(v2, v42, &v47);
  if (v47)
  {
    mlir::Diagnostic::operator<<<3ul>(&v48, " #");
  }

  v14 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v47, &v44);
  v15 = v14;
  if (*v14)
  {
    mlir::Diagnostic::operator<<<63ul>((v14 + 1), " must be statically shaped tensor of any type values, but got ");
    if (*v15)
    {
      v45 = 4;
      v46 = v4;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v15 + 3), &v45, 1);
      v17 = v15[3] + 24 * *(v15 + 8);
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++*(v15 + 8);
    }
  }

  v19 = *(v15 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
  if (v19)
  {
    v20 = 0;
    goto LABEL_42;
  }

LABEL_18:
  v21 = *this - 16;
  if (!*(*this + 9))
  {
    v21 = 0;
  }

  v22 = (*(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v22[2];
  if (v23)
  {
    v24 = v22[1];
    v25 = 8 * v23;
    v26 = 1;
    do
    {
      v27 = *v24++;
      v26 *= v27;
      v25 -= 8;
    }

    while (v25);
  }

  else
  {
    v26 = 1;
  }

  v28 = v22[3];
  v47 = v49;
  v48 = 0x200000000;
  llvm::SmallVectorImpl<mlir::Type>::assign(&v47, v26, v28);
  v29 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v30 = *(v29 + 17);
    v31 = *(v29 + 9);
  }

  else
  {
    v31 = 0;
    v30 = 0;
  }

  if (v30 == v48)
  {
    if (v48)
    {
      v32 = 8 * v30 - 8;
      v33 = (v31 + 24);
      v34 = v47;
      do
      {
        v35 = *v33;
        v33 += 4;
        v36 = *(v35 + 8);
        v37 = *v34++;
        v38 = v37 == (v36 & 0xFFFFFFFFFFFFFFF8);
        v39 = v37 != (v36 & 0xFFFFFFFFFFFFFFF8) || v32 == 0;
        v32 -= 8;
      }

      while (!v39);
    }

    else
    {
      v38 = 1;
    }
  }

  else
  {
    v38 = 0;
  }

  if (v47 != v49)
  {
    free(v47);
  }

  v20 = 1;
  if (!v38)
  {
    v42[0] = "failed to verify that operand types match result element type";
    v43 = 259;
    mlir::Operation::emitOpError(*this, v42, &v47);
    v20 = (v49[184] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
  }

LABEL_42:
  v40 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::tensor::FromElementsOp::parse(uint64_t a1, uint64_t a2)
{
  v34[16] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x400000000;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v32, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v29 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v29)))
  {
    v20 = 0;
    goto LABEL_16;
  }

  v5 = v29;
  v27 = v29;
  __src = v29;
  v6 = *v29;
  if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v8 = mlir::detail::InterfaceMap::lookup(v6 + 8, v7);
    if ((*(v8 + 16))(v8, v5))
    {
      v9 = (*(v8 + 24))(v8, v5);
      if (!v10)
      {
LABEL_11:
        v12 = *v5;
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        (*(v14 + 8))(v14, v5);
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v29);
        v15 = __src[2];
        if (v15)
        {
          v16 = __src[1];
          v17 = 8 * v15;
          v18 = 1;
          do
          {
            v19 = *v16++;
            v18 *= v19;
            v17 -= 8;
          }

          while (v17);
        }

        else
        {
          v18 = 1;
        }

        v24 = __src[3];
        v29 = v31;
        v30 = 0x200000000;
        llvm::SmallVectorImpl<mlir::Type>::assign(&v29, v18, v24);
        v25 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,2u>>(a1, v32, v33, v29, v30, v4, a2 + 16);
        if (v29 != v31)
        {
          free(v29);
        }

        v20 = v25;
        goto LABEL_16;
      }

      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }
  }

  v23 = (*(*a1 + 16))(a1);
  v26[16] = 257;
  (*(*a1 + 24))(&v29, a1, v23, v26);
  if (v29)
  {
    mlir::Diagnostic::operator<<<71ul>(&v30, "'result' must be statically shaped tensor of any type values, but got ");
    if (v29)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(&v30, &v27);
    }
  }

  v20 = (v31[184] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
LABEL_16:
  if (v32 != v34)
  {
    free(v32);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,2u>>(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v20 = a5;
  v21 = a3;
  if (a3 == a5)
  {
    if (a3)
    {
      v11 = 32 * a3;
      while (((*(*a1 + 728))(a1, a2, *a4, a7) & 1) != 0)
      {
        a2 += 32;
        ++a4;
        v11 -= 32;
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v12 = 0;
    }

    else
    {
LABEL_6:
      v12 = 1;
    }
  }

  else
  {
    v19[16] = 257;
    (*(*a1 + 24))(&v22, a1, a6, v19);
    if (v22)
    {
      mlir::Diagnostic::operator<<<48ul>(v23, "number of operands and types do not match: got ");
    }

    v13 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v22, &v21);
    v14 = v13;
    if (*v13)
    {
      mlir::Diagnostic::operator<<<15ul>((v13 + 1), " operands and ");
    }

    v15 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v14, &v20);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<7ul>((v15 + 1), " types");
    }

    v12 = (v16[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void mlir::tensor::FromElementsOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v24[4] = *MEMORY[0x277D85DE8];
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

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v24, 0);
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
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ":", 1uLL);
  }

  else
  {
    *v19 = 58;
    ++*(v18 + 4);
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = *(v20 + 4);
  if (v21 >= *(v20 + 3))
  {
    llvm::raw_ostream::write(v20, 32);
  }

  else
  {
    *(v20 + 4) = v21 + 1;
    *v21 = 32;
  }

  v22 = *this - 16;
  if (!*(*this + 9))
  {
    v22 = 0;
  }

  (*(*a2 + 32))(a2, *(v22 + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::GatherOpGenericAdaptorBase::GatherOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  *(result + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v2 = *(a2 + 44);
  v3 = v2 & 0x7FFFFF;
  if ((v2 & 0x7FFFFF) != 0)
  {
    v4 = ((a2 + 64 + 16 * ((v2 >> 23) & 1) + ((v2 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::tensor::GatherOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v22, a4);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "gather_dims", 0xBuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        a3(&v22, a4);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v11;
        goto LABEL_20;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "unique", 6uLL);
  if ((v14 & 1) == 0 || (v15 = *(v13 + 8)) == 0)
  {
LABEL_22:
    result = 1;
    goto LABEL_23;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v15;
    goto LABEL_22;
  }

  a3(&v22, a4);
  if (!v22)
  {
    goto LABEL_4;
  }

  if (!v22)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = v15;
LABEL_20:
  v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
  v17 = v24 + 24 * v25;
  v18 = *v16;
  *(v17 + 16) = *(v16 + 16);
  *v17 = v18;
  ++v25;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  result = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::GatherOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "gather_dims";
    v16 = 11;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "unique";
    v16 = 6;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::tensor::GatherOp::computePropertiesHash(void *a1)
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

unint64_t mlir::tensor::GatherOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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

  if (a4 == 11 && *a3 == 0x645F726568746167 && *(a3 + 3) == 0x736D69645F726568)
  {
    v5 = *a2;
    goto LABEL_15;
  }

LABEL_13:
  LOBYTE(v5) = 0;
  v7 = 0;
  return v7 | v5;
}

void *mlir::tensor::GatherOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
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

  else if (a3 == 11 && *a2 == 0x645F726568746167 && *(a2 + 3) == 0x736D69645F726568)
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

void mlir::tensor::GatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "gather_dims";
    v12 = 11;
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

BOOL mlir::tensor::GatherOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "gather_dims", 11, a3, a4))
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

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<47ul>(v13, "' failed to satisfy constraint: unit attribute");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::GatherOp::verifyInvariantsImpl(mlir::Operation **this)
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
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "gather_dims", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14) && (v14[0] = *this, mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v14)) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), 1u))
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
    v12 = "requires attribute 'gather_dims'";
    v13 = 259;
    mlir::Operation::emitOpError(v2, &v12, v14);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps11(mlir::Operation *a1, uint64_t *a2, unsigned int a3)
{
  v24[25] = *MEMORY[0x277D85DE8];
  v20 = a3;
  v5 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v5 + 8, v14);
  v16 = (*(v15 + 8))(v15, a2);
  v17 = *(*v16 + 136);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!(v16[2] >> 30))
    {
LABEL_13:
      v11 = 1;
      goto LABEL_8;
    }
  }

  else if (v17 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_13;
  }

LABEL_2:
  v19 = 261;
  v18[0] = "operand";
  v18[1] = 7;
  mlir::Operation::emitOpError(a1, v18, &v23);
  if (v23)
  {
    mlir::Diagnostic::operator<<<3ul>(v24, " #");
  }

  v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v23, &v20);
  v7 = v6;
  if (*v6)
  {
    mlir::Diagnostic::operator<<<69ul>((v6 + 1), " must be ranked tensor of signless integer or index values, but got ");
    if (*v7)
    {
      v21 = 4;
      v22 = a2;
      v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v21, 1);
      v9 = v7[3] + 24 * *(v7 + 8);
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      ++*(v7 + 8);
    }
  }

  v11 = (v7[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
LABEL_8:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::tensor::GatherOp::parse(uint64_t *a1, uint64_t a2)
{
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

  v23 = 257;
  if (((*(*a1 + 400))(a1, "gather_dims", 11, &v20) & 1) == 0 || ((*(*a1 + 280))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v13, 0))
  {
    return 0;
  }

  if (v13)
  {
    v4 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2);
    *v4 = v13;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "unique", 6))
  {
    v5 = *(**(*(*a1 + 32))(a1) + 608);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2) + 8) = v5;
  }

  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v20 = a1;
  v21 = &v10;
  v22 = a2;
  if (!mlir::tensor::GatherOp::verifyInherentAttrs(v6, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v20))
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
  v20 = v17;
  v21 = v14;
  v8 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, &v20, &v11, v8, a2 + 16);
}

void mlir::tensor::GatherOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v39[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "[", 1uLL);
  }

  else
  {
    *v7 = 91;
    ++*(v6 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "]", 1uLL);
  }

  else
  {
    *v9 = 93;
    ++*(v8 + 4);
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 0xA)
  {
    *(v13 + 7) = 1936550244;
    *v13 = *"gather_dims";
    *(v12 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v12, "gather_dims", 0xBuLL);
  }

  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "(", 1uLL);
  }

  else
  {
    *v15 = 40;
    ++*(v14 + 4);
  }

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if (*(v16 + 3) == v17)
  {
    llvm::raw_ostream::write(v16, ")", 1uLL);
  }

  else
  {
    *v17 = 41;
    ++*(v16 + 4);
  }

  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
  {
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
    if ((*(v20 + 3) - v21) > 5)
    {
      *(v21 + 4) = 25973;
      *v21 = 1902734965;
      *(v20 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v20, "unique", 6uLL);
    }
  }

  v37 = v39;
  v38 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "gather_dims", 11);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v37, "unique", 6);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v37, v38);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v30 = *(v29 + 9);
    v31 = *(v29 + 17);
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v36[0] = v30;
  v36[1] = 0;
  v36[2] = v30;
  v36[3] = v31;
  v32 = *(v29 + 9);
  v33 = v29 - 16;
  if (!v32)
  {
    v33 = 0;
  }

  v35[0] = v33;
  v35[1] = 0;
  v35[2] = v33;
  v35[3] = v32;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v36, v35);
  if (v37 != v39)
  {
    free(v37);
  }

  v34 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::GenerateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  if ((*(v2 + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4))
    {
      ++v4;
      v5 += 32;
      if (v3 == v4)
      {
        v2 = *this;
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (*(v2 + 9))
    {
      v6 = v2 - 16;
    }

    else
    {
      v6 = 0;
    }

    if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v2, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
    {
      return mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0);
    }
  }

  return 0;
}

BOOL mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v24[26] = *MEMORY[0x277D85DE8];
  v23 = a5;
  v24[0] = *(a2 + 8);
  v21[0] = a2;
  v18[0] = _ZZN4llvm9hasNItemsINS_14ilist_iteratorINS_12ilist_detail12node_optionsIN4mlir5BlockELb0ELb0EvLb0EvEELb0ELb0EEEPFbRS5_EEEbOT_SC_jOT0_PNSt3__19enable_ifIXntsr3std10is_base_ofINSF_26random_access_iterator_tagENSF_15iterator_traitsIu20__remove_reference_tIDtfL1p_EEE17iterator_categoryEEE5valueEvE4typeEEN3__08__invokeES8__5;
  v8 = 1;
  if ((llvm::hasNItems<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>,BOOL (*)(mlir::Block&)>(v24, v21, 1, v18) & 1) == 0)
  {
    v21[0] = "region #";
    v22 = 259;
    mlir::Operation::emitOpError(a1, v21, v24);
    v9 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v24, &v23);
    v10 = v9;
    if (a4)
    {
      v17 = 1283;
      v16[0] = " ('";
      v16[2] = a3;
      v16[3] = a4;
      v11 = v16;
      v18[2] = "') ";
      v12 = 2;
      v13 = 3;
    }

    else
    {
      v12 = 3;
      v11 = " ";
      v13 = 1;
    }

    v20 = v13;
    v18[0] = v11;
    v19 = v12;
    if (*v9)
    {
      mlir::Diagnostic::operator<<((v9 + 1), v18);
      if (*v10)
      {
        mlir::Diagnostic::operator<<<50ul>((v10 + 1), "failed to verify constraint: region with 1 blocks");
      }
    }

    v8 = (v10[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v24);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::tensor::GenerateOp::parse()
{
  v2[16] = *MEMORY[0x277D85DE8];
  v0 = v2;
  v1 = 0x400000000;
  operator new();
}

void mlir::tensor::GenerateOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
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

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 17);
    v8 = *(v6 + 9);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v7)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v8 + 24));
    v11 = v7 - 1;
    if (v11)
    {
      v12 = (v8 + 56);
      do
      {
        v13 = *(v10 + 4);
        if (*(v10 + 3) - v13 > 1uLL)
        {
          *v13 = 8236;
          *(v10 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v10, ", ", 2uLL);
        }

        v14 = *v12;
        v12 += 4;
        (*(*a2 + 160))(a2, v14);
        --v11;
      }

      while (v11);
    }
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v21 = *v17 == v17 || ((v18 = v17[1]) != 0 ? (v19 = v18 - 8) : (v19 = 0), (v20 = *(v19 + 32), *(mlir::Operation::getAttrDictionary(v20) + 16)) || (*(v20 + 46) & 0x80) != 0 && *(v20 + 68)) || *(v20 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v21, 0);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v31, 0);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, ":", 1uLL);
  }

  else
  {
    *v26 = 58;
    ++*(v25 + 4);
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = *this - 16;
  if (!*(*this + 9))
  {
    v29 = 0;
  }

  (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::tensor::InsertOp::getODSOperandIndexAndLength(mlir::tensor::InsertOp *this, unsigned int a2)
{
  v2 = 0;
  if (a2)
  {
    v3 = a2;
    v4 = __const__ZN4mlir6tensor8InsertOp27getODSOperandIndexAndLengthEj_isVariadic;
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
  if (__const__ZN4mlir6tensor8InsertOp27getODSOperandIndexAndLengthEj_isVariadic[a2])
  {
    v8 = (v6 - 2) << 32;
  }

  return v8 | v7;
}

uint64_t mlir::tensor::InsertOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

uint64_t mlir::tensor::InsertOp::verifyInvariantsImpl(mlir::tensor::InsertOp *this)
{
  v26 = *MEMORY[0x277D85DE8];
  mlir::tensor::InsertOp::getODSOperands(this, 0);
  v3 = v2;
  ODSOperands = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  if (v5)
  {
    v6 = v5;
    v7 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v3))
    {
      ++v3;
      v7 += 32;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_20;
  }

LABEL_5:
  v8 = mlir::tensor::InsertOp::getODSOperands(this, 2u);
  if (v9)
  {
    v10 = v9;
    v11 = v8 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v3))
    {
      ++v3;
      v11 += 32;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_20;
  }

LABEL_9:
  if (*(*this + 36))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    v13 = *(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8);
    v14 = *this;
    if (*(*this + 36))
    {
      v15 = *this - 16;
    }

    else
    {
      v15 = 0;
    }

    if ((*(v15 + 8) ^ v13) >= 8)
    {
      v23 = "failed to verify that result type matches type of dest";
      v24 = 259;
      goto LABEL_29;
    }

    v16 = *(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v22 = 24;
    }

    else
    {
      if (v17 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v18 = 0;
LABEL_26:
        if (v18 == (*(*(mlir::tensor::InsertOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
        {
          v19 = 1;
          goto LABEL_21;
        }

        v23 = "failed to verify that scalar type matches element type of dest";
        v24 = 259;
        v14 = *this;
LABEL_29:
        mlir::Operation::emitOpError(v14, &v23, v25);
        v19 = v25[200] ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
        goto LABEL_21;
      }

      v22 = 8;
    }

    v18 = *(v16 + v22);
    goto LABEL_26;
  }

LABEL_20:
  v19 = 0;
LABEL_21:
  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

uint64_t mlir::tensor::InsertOp::getODSOperands(mlir::tensor::InsertOp *this, unsigned int a2)
{
  ODSOperandIndexAndLength = mlir::tensor::InsertOp::getODSOperandIndexAndLength(this, a2);
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

BOOL mlir::tensor::InsertOp::parse(uint64_t a1, uint64_t a2)
{
  v33[16] = *MEMORY[0x277D85DE8];
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23[0] = v24;
  v23[1] = 1;
  v31 = v33;
  v32 = 0x400000000;
  v21[1] = 1;
  __src = 0;
  v21[0] = &__src;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v26, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v29[12] = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v28) & 1) == 0)
  {
    goto LABEL_28;
  }

  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v24, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 312))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 720))(a1, &v31, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 328))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v28 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v28))
  {
    goto LABEL_28;
  }

  v5 = v28;
  __src = v28;
  v20 = v28;
  v6 = *v28;
  if (*(*v28 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, v5);
    v11 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v23);
    v12 = *(*__src + 136);
    if (v12 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 24;
    }

    else
    {
      if (v12 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v13 = 0;
LABEL_21:
        if (((*(*a1 + 728))(a1, v26, v13, a2 + 16) & 1) != 0 && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v23, v21, v4, a2 + 16))
        {
          if (!v32)
          {
            v8 = 1;
            goto LABEL_29;
          }

          v15 = v31;
          v16 = 32 * v32;
          while (((*(*a1 + 728))(a1, v15, v11, a2 + 16) & 1) != 0)
          {
            v15 += 32;
            v8 = 1;
            v16 -= 32;
            if (!v16)
            {
              goto LABEL_29;
            }
          }
        }

LABEL_28:
        v8 = 0;
        goto LABEL_29;
      }

      v14 = 8;
    }

    v13 = *(__src + v14);
    goto LABEL_21;
  }

  v7 = (*(*a1 + 16))(a1);
  v19[16] = 257;
  (*(*a1 + 24))(&v28, a1, v7, v19);
  if (v28)
  {
    mlir::Diagnostic::operator<<<58ul>(v29, "'dest' must be ranked tensor of any type values, but got ");
    if (v28)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v29, &v20);
    }
  }

  v8 = (v30 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
LABEL_29:
  if (v31 != v33)
  {
    free(v31);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

void mlir::tensor::InsertOp::print(mlir::tensor::InsertOp *this, mlir::OpAsmPrinter *a2)
{
  v36[4] = *MEMORY[0x277D85DE8];
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

  ODSOperands = mlir::tensor::InsertOp::getODSOperands(this, 0);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
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
  if (*(v9 + 3) - v10 > 3uLL)
  {
    *v10 = 1869901417;
    *(v9 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v9, "into", 4uLL);
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

  v13 = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v13 + 24));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, "[", 1uLL);
  }

  else
  {
    *v15 = 91;
    ++*(v14 + 4);
  }

  v16 = mlir::tensor::InsertOp::getODSOperands(this, 2u);
  v18 = v17;
  v19 = (*(*a2 + 16))(a2);
  if (v18)
  {
    v20 = v19;
    (*(*a2 + 160))(a2, *(v16 + 24));
    v21 = v18 - 1;
    if (v21)
    {
      v22 = (v16 + 56);
      do
      {
        v23 = *(v20 + 4);
        if (*(v20 + 3) - v23 > 1uLL)
        {
          *v23 = 8236;
          *(v20 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v20, ", ", 2uLL);
        }

        v24 = *v22;
        v22 += 4;
        (*(*a2 + 160))(a2, v24);
        --v21;
      }

      while (v21);
    }
  }

  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (*(v25 + 3) == v26)
  {
    llvm::raw_ostream::write(v25, "]", 1uLL);
  }

  else
  {
    *v26 = 93;
    ++*(v25 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v36, 0);
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
  if (*(v30 + 3) == v31)
  {
    llvm::raw_ostream::write(v30, ":", 1uLL);
  }

  else
  {
    *v31 = 58;
    ++*(v30 + 4);
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

  v34 = mlir::tensor::InsertOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v34 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *v2;
  v4 = v2[1];
  *(result + 56) = v2[2];
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 72) = v7;
  *(result + 80) = v6;
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v31, a4);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v32, v25);
LABEL_38:
          if (v31)
          {
            v29 = 0;
            v30 = v12;
            v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
            v27 = v33 + 24 * v34;
            v28 = *v26;
            *(v27 + 16) = *(v26 + 16);
            *v27 = v28;
            ++v34;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        goto LABEL_5;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v18)
  {
    v12 = *(v17 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v19 = v12[1];
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 64)
        {
          a1[2] = v12;
          goto LABEL_25;
        }
      }

      a3(&v31, a4);
      if (v31)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0) && ((v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v24 & 1) == 0) || (v22 = *(v23 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 5, v22, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "static_offsets";
    v22 = 14;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "static_sizes";
    v22 = 12;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "static_strides";
    v22 = 14;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::tensor::InsertSliceOp::computePropertiesHash(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v20 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = 0xB492B66FBE98F273 * v6;
  v10 = a1[4];
  v11 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v12 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v13 = __ROR8__(v9 - v10, 43) - 0x3C5A37A36834CED9 * *(a1 + 28);
  v14 = v9 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 20;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) >> 47));
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v21, 0, v21, v22, &v20, &v19, &v18, &v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::InsertSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 5);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

void *mlir::tensor::InsertSliceOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 5)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      result[1] = v14;
    }
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
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

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::InsertSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::InsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 12, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 14, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 6)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 5);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 5);
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v27 = a4;
  __src = a3;
  v26 = a5;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v26, 0, &v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a6, 0, a6, a7);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a9, 0, a9, a10);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, a11, 0, a11, a12);
  v22 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v22 + 24) = 0x100000001;
  *(v22 + 32) = a7;
  *(v22 + 36) = a10;
  *(v22 + 40) = a12;
  v23 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a13, a14);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) = v23;
  v24 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a15, a16);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v24;
  v25 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a17, a18);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v25;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v29);
}

uint64_t mlir::tensor::InsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v6 = *(v3 + 8);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v34 = "requires attribute 'static_offsets'";
    goto LABEL_41;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v34 = "requires attribute 'static_sizes'";
    goto LABEL_41;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v34 = "requires attribute 'static_strides'";
    goto LABEL_41;
  }

  v39[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    goto LABEL_38;
  }

  v39[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    goto LABEL_38;
  }

  v39[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39))
  {
    goto LABEL_38;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_38;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_38;
  }

LABEL_16:
  v18 = mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_38;
  }

LABEL_20:
  v22 = mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_38;
  }

LABEL_24:
  v26 = mlir::tensor::InsertSliceOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_38;
  }

LABEL_28:
  v30 = *(*this + 9) ? *this - 16 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v30 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_38:
    v31 = 0;
    goto LABEL_42;
  }

  v31 = 1;
  v32 = *(*(mlir::tensor::InsertSliceOp::getODSOperands(this, 1u) + 24) + 8);
  v2 = *this;
  if (*(*this + 9))
  {
    v33 = *this - 16;
  }

  else
  {
    v33 = 0;
  }

  if ((*(v33 + 8) ^ v32) >= 8)
  {
    v34 = "failed to verify that expected result type to match dest type";
LABEL_41:
    v37 = v34;
    v38 = 259;
    mlir::Operation::emitOpError(v2, &v37, v39);
    v31 = v40 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
  }

LABEL_42:
  v35 = *MEMORY[0x277D85DE8];
  return v31 & 1;
}

BOOL mlir::tensor::InsertSliceOp::parse(uint64_t a1, uint64_t a2)
{
  v55[16] = *MEMORY[0x277D85DE8];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v37[0] = v38;
  v37[1] = 1;
  v53 = v55;
  v54 = 0x400000000;
  v35 = 0;
  v36 = 0;
  v50 = v52;
  v51 = 0x400000000;
  v47 = v49;
  v48 = 0x400000000;
  v33 = 0;
  v34 = 0;
  v32[0] = &v33;
  v32[1] = 1;
  v30[1] = 1;
  __src = 0;
  v30[0] = &__src;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  v45 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v43) & 1) == 0)
  {
    goto LABEL_33;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
    goto LABEL_33;
  }

  (*(*a1 + 40))(a1);
  v43 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v53, &v36, &v43, 0))
  {
    goto LABEL_33;
  }

  v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *v6 = v36;
  (*(*a1 + 40))(a1);
  v43 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v50, &v35, &v43, 0))
  {
    goto LABEL_33;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 8) = v35;
  (*(*a1 + 40))(a1);
  v43 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v47, &v34, &v43, 0))
  {
    goto LABEL_33;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v34;
  v27[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_33;
  }

  v9 = *(a2 + 8);
  v43 = a1;
  v44[0] = v27;
  v44[1] = a2;
  if (!mlir::tensor::InsertSliceOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::InsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v43))
  {
    goto LABEL_33;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_33;
  }

  v33 = v43;
  v45 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v43) & 1) == 0)
  {
    goto LABEL_33;
  }

  v43 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v43))
  {
    goto LABEL_33;
  }

  __src = v43;
  v10 = v54;
  v11 = v51;
  v12 = v48;
  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 24) = 0x100000001;
  *(v13 + 32) = v10;
  *(v13 + 36) = v11;
  *(v13 + 40) = v12;
  v29 = __src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = llvm::cast<mlir::ShapedType,mlir::Type>(&v29);
    (*(v17 + 8))(v17, v16);
    v18 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v32);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v32, v4, a2 + 16) && mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v37, v30, v5, a2 + 16))
    {
      if (v54)
      {
        v19 = v53;
        v20 = 32 * v54;
        while (((*(*a1 + 728))(a1, v19, v18, a2 + 16) & 1) != 0)
        {
          v19 += 32;
          v20 -= 32;
          if (!v20)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_24:
        if (v51)
        {
          v21 = v50;
          v22 = 32 * v51;
          while (((*(*a1 + 728))(a1, v21, v18, a2 + 16) & 1) != 0)
          {
            v21 += 32;
            v22 -= 32;
            if (!v22)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_28:
          if (!v48)
          {
            v15 = 1;
            goto LABEL_34;
          }

          v23 = v47;
          v24 = 32 * v48;
          while (((*(*a1 + 728))(a1, v23, v18, a2 + 16) & 1) != 0)
          {
            v23 += 32;
            v15 = 1;
            v24 -= 32;
            if (!v24)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

LABEL_33:
    v15 = 0;
    goto LABEL_34;
  }

  v14 = (*(*a1 + 16))(a1);
  v28 = 257;
  (*(*a1 + 24))(&v43, a1, v14, v27);
  if (v43)
  {
    mlir::Diagnostic::operator<<<58ul>(v44, "'dest' must be ranked tensor of any type values, but got ");
    if (v43)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v44, &v29);
    }
  }

  v15 = (v46 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_34:
  if (v47 != v49)
  {
    free(v47);
  }

  if (v50 != v52)
  {
    free(v50);
  }

  if (v53 != v55)
  {
    free(v53);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

void mlir::tensor::InsertSliceOp::print(mlir::tensor::InsertSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v46[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
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

  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v13 = *this;
  v14 = mlir::tensor::InsertSliceOp::getODSOperands(this, 2u);
  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v13, v14, v16, *(v15 + 24), *(v15 + 32) >> 3, 0, 0, 2, 0, 2);
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *this;
  v20 = mlir::tensor::InsertSliceOp::getODSOperands(this, 3u);
  v21 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v19, v20, v22, *(v21 + 24), *(v21 + 32) >> 3, 0, 0, 2, 0, 2);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = *this;
  v26 = mlir::tensor::InsertSliceOp::getODSOperands(this, 4u);
  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v25, v26, v28, *(v27 + 24), *(v27 + 32) >> 3, 0, 0, 2, 0, 2);
  v44 = v46;
  v45 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, v45);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 3uLL)
  {
    *v39 = 1869901417;
    *(v38 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v38, "into", 4uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = mlir::tensor::InsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v42 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v44 != v46)
  {
    free(v44);
  }

  v43 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::PackOpGenericAdaptorBase::PackOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

uint64_t mlir::tensor::PackOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v30, a4);
    if (v30)
    {
      mlir::Diagnostic::operator<<<42ul>(v31, "expected DictionaryAttr to set properties");
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
        a3(&v30, a4);
        if (v30)
        {
          goto LABEL_37;
        }

        goto LABEL_4;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "outer_dims_perm", 0xFuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 64)
      {
        a3(&v30, a4);
        if (v30)
        {
          goto LABEL_37;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
        goto LABEL_5;
      }

      a1[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_inner_tiles", 0x12uLL);
  if (v18)
  {
    v12 = *(v17 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v19 = v12[1];
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 64)
        {
          a1[2] = v12;
          goto LABEL_25;
        }
      }

      a3(&v30, a4);
      if (v30)
      {
LABEL_37:
        if (v30)
        {
          v28 = 0;
          v29 = v12;
          v25 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v32, &v28, 1);
          v26 = v32 + 24 * v33;
          v27 = *v25;
          *(v26 + 16) = *(v25 + 16);
          *v26 = v27;
          ++v33;
        }

        goto LABEL_4;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0) && ((v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v24 & 1) == 0) || (v22 = *(v23 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 4, v22, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::PackOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "inner_dims_pos";
    v22 = 14;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "outer_dims_perm";
    v22 = 15;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "static_inner_tiles";
    v22 = 18;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::tensor::PackOp::computePropertiesHash(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v17 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v15 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = a1[4];
  v11 = __ROR8__(v10 + 16, 16);
  v14 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::PackOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 <= 17)
  {
    if (a4 == 14)
    {
      if (*a3 != 0x69645F72656E6E69 || *(a3 + 6) != 0x736F705F736D6964)
      {
        goto LABEL_40;
      }

      a1 = *a2;
    }

    else
    {
      v5 = 0;
      if (a4 != 15)
      {
        return v5 | a1;
      }

      if (*a3 != 0x69645F726574756FLL || *(a3 + 7) != 0x6D7265705F736D69)
      {
        goto LABEL_40;
      }

      a1 = a2[1];
    }

LABEL_42:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
    return v5 | a1;
  }

  if (a4 == 18)
  {
    if (*a3 != 0x695F636974617473 || *(a3 + 8) != 0x6C69745F72656E6ELL || *(a3 + 16) != 29541)
    {
      goto LABEL_40;
    }

    a1 = a2[2];
    goto LABEL_42;
  }

  if (a4 == 19)
  {
    v6 = *(a3 + 11);
    v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
    v8 = 1400139365;
  }

  else
  {
    v5 = 0;
    if (a4 != 21)
    {
      return v5 | a1;
    }

    v6 = *(a3 + 13);
    v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
    v8 = 1935635566;
  }

  v12 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v12)
  {
LABEL_40:
    LOBYTE(a1) = 0;
    v5 = 0;
    return v5 | a1;
  }

  a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 4);
  v5 = a1 & 0xFFFFFFFFFFFFFF00;
  return v5 | a1;
}

void *mlir::tensor::PackOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 17)
  {
    if (a3 == 14)
    {
      if (*a2 == 0x69645F72656E6E69 && *(a2 + 6) == 0x736F705F736D6964)
      {
        if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v19 = *(a4 + 8), *(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
        {
          if (v19[2] == 64)
          {
            v20 = a4;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        *result = v20;
      }
    }

    else if (a3 == 15 && *a2 == 0x69645F726574756FLL && *(a2 + 7) == 0x6D7265705F736D69)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v9[2] == 64)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      result[1] = v10;
    }
  }

  else if (a3 == 18)
  {
    if (*a2 == 0x695F636974617473 && *(a2 + 8) == 0x6C69745F72656E6ELL && *(a2 + 16) == 29541)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      result[2] = v14;
    }
  }

  else
  {
    if (a3 == 19)
    {
      v4 = *a2 ^ 0x53646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x6953746E656D6765;
      v6 = *(a2 + 11);
      v7 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v4 = *a2 ^ 0x5F646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x5F746E656D676573;
      v6 = *(a2 + 13);
      v7 = 1935635566;
    }

    if (v4 | v5 | v6 ^ (v7 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 4)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PackOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "inner_dims_pos";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "outer_dims_perm";
    v20 = 15;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_inner_tiles";
    v20 = 18;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 4);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::PackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
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

uint64_t mlir::tensor::PackOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3))
  {
    goto LABEL_13;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 5)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 4uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v13 = 0;
  if (((*(*a1 + 56))(a1, &v13) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
  {
    v4 = v13[1];
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v4[2] == 64)
    {
      *a2 = v13;
LABEL_7:
      v5 = 1;
      goto LABEL_17;
    }
  }

  *a2 = 0;
  v12[16] = 257;
  (*(*a1 + 16))(&v17, a1, v12);
  if (v17)
  {
    mlir::Diagnostic::operator<<<10ul>(v18, "expected ");
  }

  {
    llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<long long>>();
    unk_27FC1B020 = v11;
  }

  if (v17)
  {
    v16 = 261;
    v14 = llvm::getTypeName<mlir::detail::DenseArrayAttrImpl<long long>>(void)::Name;
    v15 = unk_27FC1B020;
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
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::tensor::PackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 4);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 24))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 4);
  }

  return result;
}

uint64_t mlir::tensor::PackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
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

BOOL mlir::tensor::PackOp::verifyInvariantsImpl(unsigned int **this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v4 = v3 + 16;
  v5 = v6;
  if (!v6)
  {
    v24 = "requires attribute 'inner_dims_pos'";
LABEL_18:
    v44[0] = v24;
    v45 = 259;
    mlir::Operation::emitOpError(v2, v44, v46);
    v25 = v47;
LABEL_19:
    v26 = (v25 & 1) == 0;
LABEL_20:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v46);
    goto LABEL_40;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v24 = "requires attribute 'static_inner_tiles'";
    goto LABEL_18;
  }

  v8 = *(v4 + 1);
  v46[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "outer_dims_perm", 15, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46))
  {
    goto LABEL_39;
  }

  v46[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v5, "inner_dims_pos", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46))
  {
    goto LABEL_39;
  }

  v46[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_inner_tiles", 18, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v46))
  {
    goto LABEL_39;
  }

  v43 = 0;
  v9 = (*this)[11];
  v10 = (*this)[4 * ((v9 >> 23) & 1) + 22];
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_8:
      v12 = 0;
      v13 = v11 + 24;
      do
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v16 = v12 + 1;
        v43 = v12 + 1;
        if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v14, (v15 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
        {
          goto LABEL_39;
        }

        v13 += 32;
        v12 = v16;
      }

      while (v10 != v16);
    }
  }

  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 1u);
  if (v18)
  {
    v19 = v18;
    v20 = ODSOperands + 24;
    while (1)
    {
      v21 = *this;
      v22 = *(*v20 + 8);
      v23 = v10 + 1;
      v43 = v10 + 1;
      if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v21, (v22 & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
      {
        goto LABEL_39;
      }

      v20 += 32;
      LODWORD(v10) = v10 + 1;
      if (!--v19)
      {
        goto LABEL_22;
      }
    }
  }

  v23 = v10;
LABEL_22:
  mlir::tensor::PackOp::getODSOperands(this, 2u);
  v28 = v27;
  if (v27 > 1)
  {
    v44[0] = "operand group starting at #";
    v45 = 259;
    mlir::Operation::emitOpError(*this, v44, v46);
    v29 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v46, &v43);
    v30 = v29;
    if (*v29)
    {
      mlir::Diagnostic::operator<<<37ul>((v29 + 1), " requires 0 or 1 element, but found ");
    }

    v42 = v28;
    v25 = *(mlir::InFlightDiagnostic::operator<<<unsigned long>(v30, &v42) + 200);
    goto LABEL_19;
  }

  v31 = mlir::tensor::PackOp::getODSOperands(this, 3u);
  if (v32)
  {
    v33 = v32;
    v34 = v23 + v28;
    v35 = v31 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v35 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v34))
    {
      ++v34;
      v35 += 32;
      if (!--v33)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_39;
  }

LABEL_30:
  v36 = (*this)[9] ? (*this - 4) : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(v36 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_39:
    v26 = 0;
    goto LABEL_40;
  }

  v26 = 1;
  v37 = *(*(mlir::tensor::PackOp::getODSOperands(this, 1u) + 24) + 8);
  v38 = *this;
  if ((*this)[9])
  {
    v39 = (*this - 4);
  }

  else
  {
    v39 = 0;
  }

  if ((*(v39 + 8) ^ v37) >= 8)
  {
    v44[0] = "failed to verify that result type matches type of dest";
    v45 = 259;
    mlir::Operation::emitOpError(v38, v44, v46);
    v26 = (v47 & 1) == 0;
    goto LABEL_20;
  }

LABEL_40:
  v40 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t mlir::tensor::PackOp::getODSOperands(mlir::tensor::PackOp *this, unsigned int a2)
{
  v2 = *(*this + 44);
  if (a2)
  {
    LODWORD(v3) = 0;
    v4 = a2;
    v5 = (*this + 16 * ((v2 >> 23) & 1) + 88);
    v6 = a2;
    do
    {
      v7 = *v5++;
      v3 = (v7 + v3);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v8 = *(*this + 16 * ((v2 >> 23) & 1) + 88 + 4 * v4);
  if ((v2 & 0x800000) != 0)
  {
    v9 = *(*this + 72);
  }

  else
  {
    v9 = 0;
  }

  return v9 + 32 * v3;
}

BOOL mlir::tensor::PackOp::parse(uint64_t a1, uint64_t a2)
{
  v56[16] = *MEMORY[0x277D85DE8];
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v41[0] = v42;
  v41[1] = 1;
  v54 = v56;
  v55 = 0x400000000;
  v52[0] = &v53;
  v52[1] = 0x100000000;
  v39 = 0;
  v40 = 0;
  v49 = v51;
  v50 = 0x400000000;
  v38 = 0;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v33[1] = 1;
  v34 = 0;
  __src = 0;
  v33[0] = &v34;
  v31[0] = &__src;
  v31[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v42, 1) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 408))(a1, "padding_value", 13) & 1) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v5 = (*(*a1 + 40))(a1);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v6 = (*(*a1 + 712))(a1, &v44, 1);
  if ((v6 & 0x100) != 0)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_48;
    }

    v7 = llvm::SmallVectorTemplateCommon<mlir::OpAsmParser::UnresolvedOperand,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::OpAsmParser::UnresolvedOperand,true>>(&v54, &v44, 1);
    v8 = &v54[32 * v55];
    v9 = v7[1];
    *v8 = *v7;
    *(v8 + 1) = v9;
    LODWORD(v55) = v55 + 1;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v44 = 0;
  v10 = (*(*a1 + 552))(a1, &v44);
  if ((v10 & 0x100) == 0)
  {
    goto LABEL_11;
  }

  if ((v10 & 1) == 0)
  {
LABEL_48:
    v20 = 0;
    goto LABEL_49;
  }

  llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(v52, v44);
LABEL_11:
  if (((*(*a1 + 296))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_14:
  if ((*(*a1 + 408))(a1, "outer_dims_perm", 15))
  {
    if (((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v40, 0))
    {
      goto LABEL_48;
    }

    if (v40)
    {
      v11 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
      *(v11 + 8) = v40;
    }
  }

  v47 = 257;
  if (((*(*a1 + 400))(a1, "inner_dims_pos", 14, &v44) & 1) == 0 || ((*(*a1 + 136))(a1) & 1) == 0 || !mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(a1, &v39, 0))
  {
    goto LABEL_48;
  }

  if (v39)
  {
    v12 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
    *v12 = v39;
  }

  v47 = 257;
  if (((*(*a1 + 400))(a1, "inner_tiles", 11, &v44) & 1) == 0)
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 136))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  (*(*a1 + 40))(a1);
  v44 = 0;
  if (!mlir::parseDynamicIndexList(a1, &v49, &v38, &v44, 0))
  {
    goto LABEL_48;
  }

  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 16) = v38;
  v47 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &v44) & 1) == 0)
  {
    goto LABEL_48;
  }

  v14 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v28[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = *(a2 + 8);
  v44 = a1;
  v45 = v28;
  v46 = a2;
  if (!mlir::tensor::PackOp::verifyInherentAttrs(v15, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::PackOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v44))
  {
    goto LABEL_48;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v44 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v44))
  {
    goto LABEL_48;
  }

  v34 = v44;
  if (((*(*a1 + 56))(a1) & 1) == 0)
  {
    goto LABEL_48;
  }

  v44 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v44))
  {
    goto LABEL_48;
  }

  __src = v44;
  v16 = v55;
  v17 = v50;
  v18 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PackOpGenericAdaptorBase::Properties>(a2);
  *(v18 + 24) = 0x100000001;
  *(v18 + 32) = v16;
  *(v18 + 36) = v17;
  v30 = __src;
  if (*(*__src + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v30);
    (*(v22 + 8))(v22, v21);
    v23 = *(**(*(*a1 + 32))(a1) + 472);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v33);
    if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v41, v33, v4, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, v31, v14, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(a1, &v54, v52, v5, a2 + 16))
    {
      goto LABEL_48;
    }

    if (v50)
    {
      v24 = v49;
      v25 = 32 * v50;
      while (((*(*a1 + 728))(a1, v24, v23, a2 + 16) & 1) != 0)
      {
        v24 += 32;
        v20 = 1;
        v25 -= 32;
        if (!v25)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_48;
    }

    v20 = 1;
  }

  else
  {
    v19 = (*(*a1 + 16))(a1);
    v29 = 257;
    (*(*a1 + 24))(&v44, a1, v19, v28);
    if (v44)
    {
      mlir::Diagnostic::operator<<<58ul>(&v45, "'dest' must be ranked tensor of any type values, but got ");
      if (v44)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(&v45, &v30);
      }
    }

    v20 = (v48 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v44);
  }

LABEL_49:
  if (v49 != v51)
  {
    free(v49);
  }

  if (v52[0] != &v53)
  {
    free(v52[0]);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

void mlir::tensor::PackOp::print(mlir::tensor::PackOp *this, mlir::OpAsmPrinter *a2)
{
  v87[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
  if (v7 && *(ODSOperands + 24))
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
    if (*(v10 + 3) - v11 > 0xCuLL)
    {
      qmemcpy(v11, "padding_value", 13);
      *(v10 + 4) += 13;
    }

    else
    {
      llvm::raw_ostream::write(v10, "padding_value", 0xDuLL);
    }

    v12 = (*(*a2 + 16))(a2);
    v13 = *(v12 + 4);
    if (*(v12 + 3) == v13)
    {
      llvm::raw_ostream::write(v12, "(", 1uLL);
    }

    else
    {
      *v13 = 40;
      ++*(v12 + 4);
    }

    v14 = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v15 && *(v14 + 24))
    {
      (*(*a2 + 160))(a2);
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
    if (*(v18 + 3) == v19)
    {
      llvm::raw_ostream::write(v18, ":", 1uLL);
    }

    else
    {
      *v19 = 58;
      ++*(v18 + 4);
    }

    v20 = (*(*a2 + 16))(a2);
    v21 = *(v20 + 4);
    if (v21 >= *(v20 + 3))
    {
      llvm::raw_ostream::write(v20, 32);
    }

    else
    {
      *(v20 + 4) = v21 + 1;
      *v21 = 32;
    }

    v22 = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v23 && *(v22 + 24))
    {
      v24 = mlir::tensor::PackOp::getODSOperands(this, 2u);
      (*(*a2 + 32))(a2, *(*(v24 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    }

    v25 = (*(*a2 + 16))(a2);
    v26 = *(v25 + 4);
    if (*(v25 + 3) == v26)
    {
      llvm::raw_ostream::write(v25, ")", 1uLL);
    }

    else
    {
      *v26 = 41;
      ++*(v25 + 4);
    }
  }

  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v27 && v27 != mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
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
    if (*(v30 + 3) - v31 > 0xEuLL)
    {
      qmemcpy(v31, "outer_dims_perm", 15);
      *(v30 + 4) += 15;
    }

    else
    {
      llvm::raw_ostream::write(v30, "outer_dims_perm", 0xFuLL);
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

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72));
  }

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (v39 >= *(v38 + 3))
  {
    llvm::raw_ostream::write(v38, 32);
  }

  else
  {
    *(v38 + 4) = v39 + 1;
    *v39 = 32;
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (*(v40 + 3) - v41 > 0xDuLL)
  {
    qmemcpy(v41, "inner_dims_pos", 14);
    *(v40 + 4) += 14;
  }

  else
  {
    llvm::raw_ostream::write(v40, "inner_dims_pos", 0xEuLL);
  }

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
  if (*(v44 + 3) == v45)
  {
    llvm::raw_ostream::write(v44, "=", 1uLL);
  }

  else
  {
    *v45 = 61;
    ++*(v44 + 4);
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

  mlir::AsmPrinter::printStrippedAttrOrType<mlir::detail::DenseArrayAttrImpl<long long>,(void *)0>(a2, *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64));
  v48 = (*(*a2 + 16))(a2);
  v49 = *(v48 + 4);
  if (v49 >= *(v48 + 3))
  {
    llvm::raw_ostream::write(v48, 32);
  }

  else
  {
    *(v48 + 4) = v49 + 1;
    *v49 = 32;
  }

  v50 = (*(*a2 + 16))(a2);
  v51 = *(v50 + 4);
  if ((*(v50 + 3) - v51) > 0xA)
  {
    *(v51 + 7) = 1936026729;
    *v51 = *"inner_tiles";
    *(v50 + 4) += 11;
  }

  else
  {
    llvm::raw_ostream::write(v50, "inner_tiles", 0xBuLL);
  }

  v52 = (*(*a2 + 16))(a2);
  v53 = *(v52 + 4);
  if (v53 >= *(v52 + 3))
  {
    llvm::raw_ostream::write(v52, 32);
  }

  else
  {
    *(v52 + 4) = v53 + 1;
    *v53 = 32;
  }

  v54 = (*(*a2 + 16))(a2);
  v55 = *(v54 + 4);
  if (*(v54 + 3) == v55)
  {
    llvm::raw_ostream::write(v54, "=", 1uLL);
  }

  else
  {
    *v55 = 61;
    ++*(v54 + 4);
  }

  v56 = (*(*a2 + 16))(a2);
  v57 = *(v56 + 4);
  if (v57 >= *(v56 + 3))
  {
    llvm::raw_ostream::write(v56, 32);
  }

  else
  {
    *(v56 + 4) = v57 + 1;
    *v57 = 32;
  }

  v58 = *this;
  v59 = mlir::tensor::PackOp::getODSOperands(this, 3u);
  v60 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v58, v59, v61, *(v60 + 24), *(v60 + 32) >> 3, 0, 0, 2, 0, 2);
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

  v64 = (*(*a2 + 16))(a2);
  v65 = *(v64 + 4);
  if (*(v64 + 3) - v65 > 3uLL)
  {
    *v65 = 1869901417;
    *(v64 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v64, "into", 4uLL);
  }

  v66 = (*(*a2 + 16))(a2);
  v67 = *(v66 + 4);
  if (v67 >= *(v66 + 3))
  {
    llvm::raw_ostream::write(v66, 32);
  }

  else
  {
    *(v66 + 4) = v67 + 1;
    *v67 = 32;
  }

  v68 = mlir::tensor::PackOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(v68 + 24));
  v85 = v87;
  v86 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v85, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v85, "outer_dims_perm", 15);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v85, "inner_dims_pos", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v85, "static_inner_tiles", 18);
  v69 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  if (v69 && v69 == mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(*this + 24) + 32), 0, 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v85, "outer_dims_perm", 15);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v85, v86);
  v71 = (*(*a2 + 16))(a2);
  v72 = *(v71 + 4);
  if (v72 >= *(v71 + 3))
  {
    llvm::raw_ostream::write(v71, 32);
  }

  else
  {
    *(v71 + 4) = v72 + 1;
    *v72 = 32;
  }

  v73 = (*(*a2 + 16))(a2);
  v74 = *(v73 + 4);
  if (*(v73 + 3) == v74)
  {
    llvm::raw_ostream::write(v73, ":", 1uLL);
  }

  else
  {
    *v74 = 58;
    ++*(v73 + 4);
  }

  v75 = (*(*a2 + 16))(a2);
  v76 = *(v75 + 4);
  if (v76 >= *(v75 + 3))
  {
    llvm::raw_ostream::write(v75, 32);
  }

  else
  {
    *(v75 + 4) = v76 + 1;
    *v76 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v77 = (*(*a2 + 16))(a2);
  v78 = *(v77 + 4);
  if (v78 >= *(v77 + 3))
  {
    llvm::raw_ostream::write(v77, 32);
  }

  else
  {
    *(v77 + 4) = v78 + 1;
    *v78 = 32;
  }

  v79 = (*(*a2 + 16))(a2);
  v80 = *(v79 + 4);
  if (*(v79 + 3) - v80 > 1uLL)
  {
    *v80 = 15917;
    *(v79 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v79, "->", 2uLL);
  }

  v81 = (*(*a2 + 16))(a2);
  v82 = *(v81 + 4);
  if (v82 >= *(v81 + 3))
  {
    llvm::raw_ostream::write(v81, 32);
  }

  else
  {
    *(v81 + 4) = v82 + 1;
    *v82 = 32;
  }

  v83 = mlir::tensor::PackOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v83 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v85 != v87)
  {
    free(v85);
  }

  v84 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::PadOpGenericAdaptorBase::PadOpGenericAdaptorBase(uint64_t result, uint64_t a2)
{
  *result = *(a2 + 56);
  *(result + 8) = *(a2 + 48);
  *(result + 16) = 1;
  v2 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v3 = *v2;
  v4 = *(v2 + 16);
  *(result + 56) = *(v2 + 32);
  *(result + 40) = v4;
  *(result + 24) = v3;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 64 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(result + 64) = v7;
  *(result + 72) = v6;
  return result;
}

uint64_t mlir::tensor::PadOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v29, a4);
    if (v29)
    {
      mlir::Diagnostic::operator<<<42ul>(v30, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "nofold", 6uLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        a3(&v29, a4);
        if (v29)
        {
          goto LABEL_35;
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
        goto LABEL_5;
      }

      *a1 = v12;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_high", 0xBuLL);
  if (v14)
  {
    v12 = *(v13 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v15 = v12[1], *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v15[2] != 64)
      {
        a3(&v29, a4);
        if (!v29)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      a1[1] = v12;
    }
  }

  v16 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_low", 0xAuLL);
  if (v17)
  {
    v12 = *(v16 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v18 = v12[1];
        if (*(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v18[2] == 64)
        {
          a1[2] = v12;
          goto LABEL_25;
        }
      }

      a3(&v29, a4);
      if (!v29)
      {
        goto LABEL_4;
      }

LABEL_35:
      if (v29)
      {
        v27 = 0;
        v28 = v12;
        v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
        v25 = v31 + 24 * v32;
        v26 = *v24;
        *(v25 + 16) = *(v24 + 16);
        *v25 = v26;
        ++v32;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v19 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v20 & 1) == 0 || (v21 = *(v19 + 8)) == 0) && ((v22 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v23 & 1) == 0) || (v21 = *(v22 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 3, v21, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::PadOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "nofold";
    v22 = 6;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "static_high";
    v22 = 11;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "static_low";
    v22 = 10;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 3);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::tensor::PadOp::computePropertiesHash(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v17 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[2];
  v7 = a1[3];
  v8 = (8 * v6 - 0xAE502812AA7333) ^ HIDWORD(v6);
  v9 = 0x9DDFEA08EB382D69 * (HIDWORD(v6) ^ ((0x9DDFEA08EB382D69 * v8) >> 47) ^ (0x9DDFEA08EB382D69 * v8));
  v15 = 0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47));
  v10 = *(a1 + 28);
  v11 = __ROR8__(v10 + 12, 12);
  v14 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v11 ^ 0xFF51AFD7ED558CCDLL)))) >> 47))) ^ v10;
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v20 = 0;
  v21 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v18, 0, v18, v19, &v17, &v16, &v15, &v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::PadOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 <= 10)
  {
    if (a4 == 6)
    {
      if (*a3 != 1868984174 || *(a3 + 4) != 25708)
      {
        goto LABEL_37;
      }

      a1 = *a2;
    }

    else
    {
      v5 = 0;
      if (a4 != 10)
      {
        return v5 | a1;
      }

      if (*a3 != 0x6C5F636974617473 || *(a3 + 8) != 30575)
      {
        goto LABEL_37;
      }

      a1 = a2[2];
    }

LABEL_39:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
    return v5 | a1;
  }

  if (a4 == 11)
  {
    if (*a3 != 0x685F636974617473 || *(a3 + 3) != 0x686769685F636974)
    {
      goto LABEL_37;
    }

    a1 = a2[1];
    goto LABEL_39;
  }

  if (a4 == 19)
  {
    v6 = *(a3 + 11);
    v7 = *a3 == 0x53646E617265706FLL && *(a3 + 8) == 0x6953746E656D6765;
    v8 = 1400139365;
  }

  else
  {
    v5 = 0;
    if (a4 != 21)
    {
      return v5 | a1;
    }

    v6 = *(a3 + 13);
    v7 = *a3 == 0x5F646E617265706FLL && *(a3 + 8) == 0x5F746E656D676573;
    v8 = 1935635566;
  }

  v11 = v8 | 0x73657A6900000000;
  if (!v7 || v6 != v11)
  {
LABEL_37:
    LOBYTE(a1) = 0;
    v5 = 0;
    return v5 | a1;
  }

  a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 3);
  v5 = a1 & 0xFFFFFFFFFFFFFF00;
  return v5 | a1;
}

void *mlir::tensor::PadOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 10)
  {
    if (a3 == 6)
    {
      if (*a2 == 1868984174 && *(a2 + 4) == 25708)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
          {
            v18 = a4;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        *result = v18;
      }
    }

    else if (a3 == 10 && *a2 == 0x6C5F636974617473 && *(a2 + 8) == 30575)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v9 = *(a4 + 8), *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v9[2] == 64)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      result[2] = v10;
    }
  }

  else if (a3 == 11)
  {
    if (*a2 == 0x685F636974617473 && *(a2 + 3) == 0x686769685F636974)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v12 = *(a4 + 8), *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
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

      result[1] = v13;
    }
  }

  else
  {
    if (a3 == 19)
    {
      v4 = *a2 ^ 0x53646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x6953746E656D6765;
      v6 = *(a2 + 11);
      v7 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v4 = *a2 ^ 0x5F646E617265706FLL;
      v5 = *(a2 + 8) ^ 0x5F746E656D676573;
      v6 = *(a2 + 13);
      v7 = 1935635566;
    }

    if (v4 | v5 | v6 ^ (v7 | 0x73657A6900000000))
    {
      v14 = 1;
    }

    else
    {
      v14 = a4 == 0;
    }

    if (!v14 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v15 = *(a4 + 8);
      if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v15[2] == 32 && *(a4 + 16) == 3)
      {
        v16 = *(a4 + 32);
        if (v16 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v16 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  return result;
}

void mlir::tensor::PadOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "nofold";
    v20 = 6;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_high";
    v20 = 11;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_low";
    v20 = 10;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 3);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::PadOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v10, "nofold", 6, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_high", 11, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_low", 10, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PadOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a2);
  if (!mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3))
  {
    goto LABEL_13;
  }

  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 4)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 3uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::PadOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 24))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v5 + 24, 3);
    (*(*a2 + 16))(a2, v7);
  }

  (*(*a2 + 16))(a2, *(v5 + 8));
  (*(*a2 + 16))(a2, *(v5 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v5 + 24), 3);
  }

  return result;
}

BOOL mlir::tensor::PadOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v5 = *(v3 + 8);
  v6 = *(v3 + 9);
  v4 = v3 + 16;
  if (!v6)
  {
    v31 = "requires attribute 'static_high'";
LABEL_32:
    v34 = v31;
    v35 = 259;
    mlir::Operation::emitOpError(v2, &v34, v36);
    v30 = (v37 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    goto LABEL_33;
  }

  v7 = *(v4 + 2);
  if (!v7)
  {
    v31 = "requires attribute 'static_low'";
    goto LABEL_32;
  }

  v36[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_low", 10, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
  {
    goto LABEL_29;
  }

  v36[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v6, "static_high", 11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
  {
    goto LABEL_29;
  }

  v36[0] = *this;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(v5, "nofold", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36))
  {
    goto LABEL_29;
  }

  v8 = *this;
  v9 = *(*this + 11);
  v10 = (v9 >> 23) & 1;
  v11 = *(*this + 4 * v10 + 22);
  if ((v9 & 0x800000) != 0)
  {
    v12 = *(v8 + 9);
    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (v11)
    {
LABEL_8:
      v13 = 0;
      v14 = v12 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v14 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v13))
      {
        ++v13;
        v14 += 32;
        if (v11 == v13)
        {
          v8 = *this;
          v9 = *(*this + 11);
          v10 = (v9 >> 23) & 1;
          goto LABEL_12;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_12:
  v15 = v9 & 0x800000;
  v16 = v8 + 16 * v10;
  v17 = *(v16 + 23);
  if (v15)
  {
    v18 = *(v8 + 9);
    if (v17)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    if (v17)
    {
LABEL_14:
      v19 = *(v16 + 22);
      v20 = (v17 + v19) - v19;
      v21 = v18 + 32 * v19 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
      {
        LODWORD(v11) = v11 + 1;
        v21 += 32;
        if (!--v20)
        {
          v8 = *this;
          v22 = *(*this + 11);
          v10 = (v22 >> 23) & 1;
          v15 = v22 & 0x800000;
          goto LABEL_18;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_18:
  v23 = (v8 + 16 * v10);
  v24 = v23[24];
  if (v15)
  {
    v25 = *(v8 + 9);
    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v25 = 0;
    if (v24)
    {
LABEL_20:
      v26 = (v23[23] + v23[22]);
      v27 = (v24 + v26) - v26;
      v28 = v25 + 32 * v26 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v28 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v11))
      {
        LODWORD(v11) = v11 + 1;
        v28 += 32;
        if (!--v27)
        {
          v8 = *this;
          goto LABEL_24;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_24:
  v29 = *(v8 + 9) ? v8 - 16 : 0;
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v8, (*(v29 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
LABEL_29:
    v30 = 0;
    goto LABEL_33;
  }

  v30 = mlir::tensor::__mlir_ods_local_region_constraint_TensorOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "region", 6, 0);
LABEL_33:
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

void mlir::tensor::PadOp::parse()
{
  v9[16] = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  v2 = v4;
  v3 = 1;
  v8[16] = v9;
  v8[17] = 0x400000000;
  v0 = 0;
  v1 = 0;
  v6 = v8;
  v7 = 0x400000000;
  operator new();
}

void mlir::tensor::PadOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v51[4] = *MEMORY[0x277D85DE8];
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
  if (*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8))
  {
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
    if ((*(v8 + 3) - v9) > 5)
    {
      *(v9 + 4) = 25708;
      *v9 = 1868984174;
      *(v8 + 4) += 6;
    }

    else
    {
      llvm::raw_ostream::write(v8, "nofold", 6uLL);
    }
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

  v12 = (*(*a2 + 16))(a2);
  v13 = *(v12 + 4);
  if ((*(v12 + 3) - v13) > 2)
  {
    *(v13 + 2) = 119;
    *v13 = 28524;
    *(v12 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v12, "low", 3uLL);
  }

  v14 = *this;
  v15 = *(*this + 11);
  v16 = *this + 16 * ((v15 >> 23) & 1);
  if ((v15 & 0x800000) != 0)
  {
    v17 = *(v14 + 72);
  }

  else
  {
    v17 = 0;
  }

  mlir::printDynamicIndexList(a2, v14, v17 + 32 * *(v16 + 88), (*(v16 + 92) + *(v16 + 88)) - *(v16 + 88), *(*(v16 + 80) + 24), *(*(v16 + 80) + 32) >> 3, 0, 0, 2, 0, 2);
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
  if (*(v20 + 3) - v21 > 3uLL)
  {
    *v21 = 1751607656;
    *(v20 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v20, "high", 4uLL);
  }

  v22 = *this;
  v23 = *(*this + 11);
  v24 = *this + 16 * ((v23 >> 23) & 1) + 64;
  if ((v23 & 0x800000) != 0)
  {
    v26 = *(v22 + 72);
  }

  else
  {
    v26 = 0;
  }

  v25 = (*(v24 + 28) + *(v24 + 24));
  mlir::printDynamicIndexList(a2, v22, v26 + 32 * v25, (*(v24 + 32) + v25) - v25, *(*(v24 + 8) + 24), *(*(v24 + 8) + 32) >> 3, 0, 0, 2, 0, 2);
  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (v28 >= *(v27 + 3))
  {
    llvm::raw_ostream::write(v27, 32);
  }

  else
  {
    *(v27 + 4) = v28 + 1;
    *v28 = 32;
  }

  v29 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  v33 = *v29 == v29 || ((v30 = v29[1]) != 0 ? (v31 = v30 - 8) : (v31 = 0), (v32 = *(v31 + 32), *(mlir::Operation::getAttrDictionary(v32) + 16)) || (*(v32 + 46) & 0x80) != 0 && *(v32 + 68)) || *(v32 + 36) != 0;
  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 1, v33, 0);
  v49 = v51;
  v50 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "nofold", 6);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "static_low", 10);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v49, "static_high", 11);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v49, v50);
  v35 = (*(*a2 + 16))(a2);
  v36 = *(v35 + 4);
  if (v36 >= *(v35 + 3))
  {
    llvm::raw_ostream::write(v35, 32);
  }

  else
  {
    *(v35 + 4) = v36 + 1;
    *v36 = 32;
  }

  v37 = (*(*a2 + 16))(a2);
  v38 = *(v37 + 4);
  if (*(v37 + 3) == v38)
  {
    llvm::raw_ostream::write(v37, ":", 1uLL);
  }

  else
  {
    *v38 = 58;
    ++*(v37 + 4);
  }

  v39 = (*(*a2 + 16))(a2);
  v40 = *(v39 + 4);
  if (v40 >= *(v39 + 3))
  {
    llvm::raw_ostream::write(v39, 32);
  }

  else
  {
    *(v39 + 4) = v40 + 1;
    *v40 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v41 = (*(*a2 + 16))(a2);
  v42 = *(v41 + 4);
  if (v42 >= *(v41 + 3))
  {
    llvm::raw_ostream::write(v41, 32);
  }

  else
  {
    *(v41 + 4) = v42 + 1;
    *v42 = 32;
  }

  v43 = (*(*a2 + 16))(a2);
  v44 = *(v43 + 4);
  if (*(v43 + 3) - v44 > 1uLL)
  {
    *v44 = 28532;
    *(v43 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v43, "to", 2uLL);
  }

  v45 = (*(*a2 + 16))(a2);
  v46 = *(v45 + 4);
  if (v46 >= *(v45 + 3))
  {
    llvm::raw_ostream::write(v45, 32);
  }

  else
  {
    *(v45 + 4) = v46 + 1;
    *v46 = 32;
  }

  v47 = *this - 16;
  if (!*(*this + 9))
  {
    v47 = 0;
  }

  (*(*a2 + 32))(a2, *(v47 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v49 != v51)
  {
    free(v49);
  }

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ParallelInsertSliceOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v31, a4);
    if (v31)
    {
      mlir::Diagnostic::operator<<<42ul>(v32, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v10 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_offsets", 0xEuLL);
  if (v11)
  {
    v12 = *(v10 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v13 = v12[1], *(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v13[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
LABEL_37:
          mlir::Diagnostic::operator<<<60ul>(v32, v25);
LABEL_38:
          if (v31)
          {
            v29 = 0;
            v30 = v12;
            v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v33, &v29, 1);
            v27 = v33 + 24 * v34;
            v28 = *v26;
            *(v27 + 16) = *(v26 + 16);
            *v27 = v28;
            ++v34;
          }
        }

LABEL_4:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
        goto LABEL_5;
      }

      *a1 = v12;
    }
  }

  v14 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_sizes", 0xCuLL);
  if (v15)
  {
    v12 = *(v14 + 8);
    if (v12)
    {
      if (*(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v16 = v12[1], *(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v16[2] != 64)
      {
        a3(&v31, a4);
        if (v31)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }

      a1[1] = v12;
    }
  }

  v17 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "static_strides", 0xEuLL);
  if (v18)
  {
    v12 = *(v17 + 8);
    if (v12)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
      {
        v19 = v12[1];
        if (*(*v19 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v19[2] == 64)
        {
          a1[2] = v12;
          goto LABEL_25;
        }
      }

      a3(&v31, a4);
      if (v31)
      {
        goto LABEL_37;
      }

      goto LABEL_4;
    }
  }

LABEL_25:
  v20 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operandSegmentSizes", 0x13uLL);
  if ((v21 & 1) == 0 || (v22 = *(v20 + 8)) == 0) && ((v23 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "operand_segment_sizes", 0x15uLL), (v24 & 1) == 0) || (v22 = *(v23 + 8)) == 0) || (convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(a1 + 3, 5, v22, a3, a4, "DenseI32ArrayAttr", 17))
  {
    result = 1;
    goto LABEL_6;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v23 = 261;
    v21 = "static_offsets";
    v22 = 14;
    v7 = mlir::StringAttr::get(v6, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v23 = 261;
    v21 = "static_sizes";
    v22 = 12;
    v10 = mlir::StringAttr::get(v9, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v10, v8);
  }

  v11 = a2[2];
  if (v11)
  {
    v12 = *(**v11 + 32);
    v23 = 261;
    v21 = "static_strides";
    v22 = 14;
    v13 = mlir::StringAttr::get(v12, &v21, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v13, v11);
  }

  v14 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v15 = *(**v14 + 32);
  v23 = 261;
  v21 = "operandSegmentSizes";
  v22 = 19;
  v17 = mlir::StringAttr::get(v15, &v21, v16);
  llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v24, v17, v14);
  if (v25)
  {
    v18 = mlir::DictionaryAttr::get(a1, v24, v25);
  }

  else
  {
    v18 = 0;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t mlir::tensor::ParallelInsertSliceOp::computePropertiesHash(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v20 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v6 = a1[3];
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v9 = 0xB492B66FBE98F273 * v6;
  v10 = a1[4];
  v11 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v12 = __ROR8__(v11 ^ 0xFF51AFD7ED558CCDLL, 30);
  v13 = __ROR8__(v9 - v10, 43) - 0x3C5A37A36834CED9 * *(a1 + 28);
  v14 = v9 + __ROR8__(v10 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v11 + 20;
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v13 + v12) ^ v14)))) >> 47));
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  v23 = 0;
  v24 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(v21, 0, v21, v22, &v20, &v19, &v18, &v17);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::tensor::ParallelInsertSliceOp::getInherentAttr(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = a1;
  LOBYTE(a1) = 0;
  if (a4 > 18)
  {
    if (a4 == 19)
    {
      v8 = *(a3 + 11);
      v9 = *a3 == 0x53646E617265706FLL && a3[1] == 0x6953746E656D6765;
      v10 = 1400139365;
    }

    else
    {
      v5 = 0;
      if (a4 != 21)
      {
        return v5 | a1;
      }

      v8 = *(a3 + 13);
      v9 = *a3 == 0x5F646E617265706FLL && a3[1] == 0x5F746E656D676573;
      v10 = 1935635566;
    }

    v12 = v10 | 0x73657A6900000000;
    if (v9 && v8 == v12)
    {
      a1 = mlir::detail::DenseArrayAttrImpl<int>::get(v4, (a2 + 3), 5);
      v5 = a1 & 0xFFFFFFFFFFFFFF00;
      return v5 | a1;
    }

    goto LABEL_34;
  }

  if (a4 == 12)
  {
    if (*a3 != 0x735F636974617473 || *(a3 + 2) != 1936030313)
    {
      goto LABEL_34;
    }

    a1 = a2[1];
    goto LABEL_37;
  }

  v5 = 0;
  if (a4 == 14)
  {
    if (*a3 == 0x6F5F636974617473 && *(a3 + 6) == 0x7374657366666F5FLL)
    {
      a1 = *a2;
    }

    else
    {
      if (*a3 != 0x735F636974617473 || *(a3 + 6) != 0x736564697274735FLL)
      {
LABEL_34:
        LOBYTE(a1) = 0;
        v5 = 0;
        return v5 | a1;
      }

      a1 = a2[2];
    }

LABEL_37:
    v5 = a1 & 0xFFFFFFFFFFFFFF00;
  }

  return v5 | a1;
}

void *mlir::tensor::ParallelInsertSliceOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      v8 = *a2 ^ 0x53646E617265706FLL;
      v9 = a2[1] ^ 0x6953746E656D6765;
      v10 = *(a2 + 11);
      v11 = 1400139365;
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      v8 = *a2 ^ 0x5F646E617265706FLL;
      v9 = a2[1] ^ 0x5F746E656D676573;
      v10 = *(a2 + 13);
      v11 = 1935635566;
    }

    if (v8 | v9 | v10 ^ (v11 | 0x73657A6900000000))
    {
      v15 = 1;
    }

    else
    {
      v15 = a4 == 0;
    }

    if (!v15 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v16 = *(a4 + 8);
      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16[2] == 32 && *(a4 + 16) == 5)
      {
        v17 = *(a4 + 32);
        if (v17 >= 4)
        {
          return memmove(result + 3, *(a4 + 24), v17 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }
    }
  }

  else if (a3 == 12)
  {
    if (*a2 == 0x735F636974617473 && *(a2 + 2) == 1936030313)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v13 = *(a4 + 8), *(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v13[2] == 64)
        {
          v14 = a4;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      result[1] = v14;
    }
  }

  else if (a3 == 14)
  {
    if (*a2 == 0x6F5F636974617473 && *(a2 + 6) == 0x7374657366666F5FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v18 = *(a4 + 8), *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
      {
        if (v18[2] == 64)
        {
          v19 = a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      *result = v19;
    }

    else if (*a2 == 0x735F636974617473 && *(a2 + 6) == 0x736564697274735FLL)
    {
      if (a4 && *(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && (v6 = *(a4 + 8), *(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
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

      result[2] = v7;
    }
  }

  return result;
}

void mlir::tensor::ParallelInsertSliceOp::populateInherentAttrs(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = *(**v6 + 32);
    v21 = 261;
    v19 = "static_offsets";
    v20 = 14;
    v8 = mlir::StringAttr::get(v7, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v8, v6);
  }

  v9 = a2[1];
  if (v9)
  {
    v10 = *(**v9 + 32);
    v21 = 261;
    v19 = "static_sizes";
    v20 = 12;
    v11 = mlir::StringAttr::get(v10, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v11, v9);
  }

  v12 = a2[2];
  if (v12)
  {
    v13 = *(**v12 + 32);
    v21 = 261;
    v19 = "static_strides";
    v20 = 14;
    v14 = mlir::StringAttr::get(v13, &v19, a3);
    mlir::NamedAttrList::push_back(a3, v14, v12);
  }

  v15 = mlir::detail::DenseArrayAttrImpl<int>::get(a1, (a2 + 3), 5);
  v16 = *(**v15 + 32);
  v21 = 261;
  v19 = "operandSegmentSizes";
  v20 = 19;
  v18 = mlir::StringAttr::get(v16, &v19, v17);
  mlir::NamedAttrList::push_back(a3, v18, v15);
}

BOOL mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v10, "static_offsets", 14, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0 || (v13 = v11[1]) == 0 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v13, "static_sizes", 12, a3, a4))
    {
      v14 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 16));
      if ((v15 & 1) == 0)
      {
        return 1;
      }

      v16 = v14[1];
      if (!v16 || mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v16, "static_strides", 14, a3, a4))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v10[26] = *MEMORY[0x277D85DE8];
  v3 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  if ((*(*a1 + 40))(a1) <= 5)
  {
    v9 = 0;
    if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1, &v9))
    {
LABEL_13:
      result = 0;
      goto LABEL_14;
    }

    if (*(v9 + 16) >= 6)
    {
      v7 = "size mismatch for operand/result_segment_size";
      v8 = 259;
      (*(*a1 + 16))(v10, a1, &v7);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
      goto LABEL_13;
    }

    v4 = *(v9 + 32);
    if (v4 >= 4)
    {
      memmove(v3 + 3, *(v9 + 24), v4 & 0xFFFFFFFFFFFFFFFCLL);
    }
  }

  if (!mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 1) || !mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1, v3 + 2) || (*(*a1 + 40))(a1) >= 6 && (mlir::DialectBytecodeReader::readSparseArray<int>(a1, v3 + 6, 5uLL) & 1) == 0)
  {
    goto LABEL_13;
  }

  result = 1;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64;
  if ((*(*a2 + 104))(a2) <= 5)
  {
    v5 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(*a1 + 24) + 32), v4 + 24, 5);
    (*(*a2 + 16))(a2, v5);
  }

  (*(*a2 + 16))(a2, *v4);
  (*(*a2 + 16))(a2, *(v4 + 8));
  (*(*a2 + 16))(a2, *(v4 + 16));
  result = (*(*a2 + 104))(a2);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a2, (v4 + 24), 5);
  }

  return result;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = &v2[4 * ((v2[11] >> 23) & 1)];
  v6 = *(v3 + 8);
  v5 = v3 + 16;
  v4 = v6;
  if (!v6)
  {
    v31 = "requires attribute 'static_offsets'";
LABEL_33:
    v34 = v31;
    v35 = 259;
    mlir::Operation::emitOpError(v2, &v34, v36);
    v30 = v37 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v36);
    goto LABEL_34;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    v31 = "requires attribute 'static_sizes'";
    goto LABEL_33;
  }

  v8 = *(v5 + 2);
  if (!v8)
  {
    v31 = "requires attribute 'static_strides'";
    goto LABEL_33;
  }

  v36[0] = v2;
  if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v4, "static_offsets", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36) || (v36[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v7, "static_sizes", 12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36)) || (v36[0] = *this, !mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(v8, "static_strides", 14, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v36)))
  {
LABEL_30:
    v30 = 0;
    goto LABEL_34;
  }

  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
  if ((v9 & 0x800000) != 0)
  {
    v11 = *(*this + 9);
    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    if (v10)
    {
LABEL_9:
      v12 = 0;
      v13 = v11 + 24;
      while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v13 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v12))
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_12:
  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(*this, (*(*v17 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_30;
  }

LABEL_16:
  v18 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_30;
  }

LABEL_20:
  v22 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10))
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_30;
  }

LABEL_24:
  v26 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    do
    {
      v30 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10);
      if ((v30 & 1) == 0)
      {
        break;
      }

      LODWORD(v10) = v10 + 1;
      v29 += 32;
      --v28;
    }

    while (v28);
  }

  else
  {
    v30 = 1;
  }

LABEL_34:
  v32 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

uint64_t mlir::tensor::ParallelInsertSliceOp::parse(uint64_t a1, uint64_t a2)
{
  v48[16] = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  memset(v33, 0, sizeof(v33));
  v34 = 0;
  v32[0] = v33;
  v32[1] = 1;
  v46 = v48;
  v47 = 0x400000000;
  v30 = 0;
  v31 = 0;
  v43 = v45;
  v44 = 0x400000000;
  v40 = v42;
  v41 = 0x400000000;
  v28 = 0;
  v29 = 0;
  v27[0] = &v28;
  v27[1] = 1;
  v25[1] = 1;
  v26 = 0;
  v25[0] = &v26;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v36, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v39 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v38) & 1) == 0)
  {
    goto LABEL_28;
  }

  v5 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v33, 1) & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v46, &v31, v38, 0))
  {
    goto LABEL_28;
  }

  v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *v6 = v31;
  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v43, &v30, v38, 0))
  {
    goto LABEL_28;
  }

  v7 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v7 + 8) = v30;
  (*(*a1 + 40))(a1);
  v38[0] = 0;
  if (!mlir::parseDynamicIndexList(a1, &v40, &v29, v38, 0))
  {
    goto LABEL_28;
  }

  v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v8 + 16) = v29;
  v24 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_28;
  }

  v9 = *(a2 + 8);
  v38[0] = a1;
  v38[1] = &v24;
  v38[2] = a2;
  if (!mlir::tensor::ParallelInsertSliceOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ParallelInsertSliceOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v38))
  {
    goto LABEL_28;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_28;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v38))
  {
    goto LABEL_28;
  }

  v28 = v38[0];
  v39 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, v38) & 1) == 0)
  {
    goto LABEL_28;
  }

  v38[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, v38))
  {
    goto LABEL_28;
  }

  v26 = v38[0];
  v10 = v47;
  v11 = v44;
  v12 = v41;
  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v13 + 24) = 0x100000001;
  *(v13 + 32) = v10;
  *(v13 + 36) = v11;
  *(v13 + 40) = v12;
  v14 = *(**(*(*a1 + 32))(a1) + 472);
  if (!mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v35, v27, v4, a2 + 16) || !mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v32, v25, v5, a2 + 16))
  {
LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  if (v47)
  {
    v15 = v46;
    v16 = 32 * v47;
    while (((*(*a1 + 728))(a1, v15, v14, a2 + 16) & 1) != 0)
    {
      v15 += 32;
      v16 -= 32;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_28;
  }

LABEL_19:
  if (v44)
  {
    v17 = v43;
    v18 = 32 * v44;
    while (((*(*a1 + 728))(a1, v17, v14, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_28;
  }

LABEL_23:
  if (v41)
  {
    v19 = v40;
    v20 = 32 * v41;
    while (((*(*a1 + 728))(a1, v19, v14, a2 + 16) & 1) != 0)
    {
      v19 += 32;
      v21 = 1;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v21 = 1;
LABEL_29:
  if (v40 != v42)
  {
    free(v40);
  }

  if (v43 != v45)
  {
    free(v43);
  }

  if (v46 != v48)
  {
    free(v46);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void mlir::tensor::ParallelInsertSliceOp::print(mlir::tensor::ParallelInsertSliceOp *this, mlir::OpAsmPrinter *a2)
{
  v46[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 160))(a2, *(*(*this + 72) + 24));
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

  ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 160))(a2, *(ODSOperands + 24));
  v13 = *this;
  v14 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 2u);
  v15 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  mlir::printDynamicIndexList(a2, v13, v14, v16, *(v15 + 24), *(v15 + 32) >> 3, 0, 0, 2, 0, 2);
  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (v18 >= *(v17 + 3))
  {
    llvm::raw_ostream::write(v17, 32);
  }

  else
  {
    *(v17 + 4) = v18 + 1;
    *v18 = 32;
  }

  v19 = *this;
  v20 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 3u);
  v21 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  mlir::printDynamicIndexList(a2, v19, v20, v22, *(v21 + 24), *(v21 + 32) >> 3, 0, 0, 2, 0, 2);
  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  v25 = *this;
  v26 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 4u);
  v27 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 80);
  mlir::printDynamicIndexList(a2, v25, v26, v28, *(v27 + 24), *(v27 + 32) >> 3, 0, 0, 2, 0, 2);
  v44 = v46;
  v45 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "operandSegmentSizes", 19);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_offsets", 14);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_sizes", 12);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v44, "static_strides", 14);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v44, v45);
  v30 = (*(*a2 + 16))(a2);
  v31 = *(v30 + 4);
  if (v31 >= *(v30 + 3))
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    *(v30 + 4) = v31 + 1;
    *v31 = 32;
  }

  v32 = (*(*a2 + 16))(a2);
  v33 = *(v32 + 4);
  if (*(v32 + 3) == v33)
  {
    llvm::raw_ostream::write(v32, ":", 1uLL);
  }

  else
  {
    *v33 = 58;
    ++*(v32 + 4);
  }

  v34 = (*(*a2 + 16))(a2);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v38 = (*(*a2 + 16))(a2);
  v39 = *(v38 + 4);
  if (*(v38 + 3) - v39 > 3uLL)
  {
    *v39 = 1869901417;
    *(v38 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v38, "into", 4uLL);
  }

  v40 = (*(*a2 + 16))(a2);
  v41 = *(v40 + 4);
  if (v41 >= *(v40 + 3))
  {
    llvm::raw_ostream::write(v40, 32);
  }

  else
  {
    *(v40 + 4) = v41 + 1;
    *v41 = 32;
  }

  v42 = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
  (*(*a2 + 32))(a2, *(*(v42 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v44 != v46)
  {
    free(v44);
  }

  v43 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::RankOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
  result = 0;
  if (v2)
  {
    if (*(*this + 9))
    {
      v4 = *this - 16;
    }

    else
    {
      v4 = 0;
    }

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(v4 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::RankOp::parse(uint64_t a1, uint64_t a2)
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
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  v8 = v6;
  v6 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::RankOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

BOOL mlir::tensor::ReshapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31[25] = *MEMORY[0x277D85DE8];
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    goto LABEL_15;
  }

  v2 = *this;
  v3 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v27 = 1;
  v4 = *v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_9;
  }

  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  if (!(*(v6 + 16))(v6, v3))
  {
    goto LABEL_9;
  }

  v7 = *v3;
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
  (*(v9 + 24))(v9, v3);
  if (v10 != 1)
  {
    goto LABEL_9;
  }

  v11 = *v3;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 8))(v13, v3);
  v15 = *(*v14 + 136);
  if (v15 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v15 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v14[2] >> 30)
  {
LABEL_9:
    v26 = 261;
    v25[0] = "operand";
    v25[1] = 7;
    mlir::Operation::emitOpError(v2, v25, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<3ul>(v31, " #");
    }

    v16 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v27);
    v17 = v16;
    if (*v16)
    {
      mlir::Diagnostic::operator<<<65ul>((v16 + 1), " must be 1D tensor of signless integer or index values, but got ");
      if (*v17)
      {
        v28 = 4;
        v29 = v3;
        v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v17 + 3), &v28, 1);
        v19 = v17[3] + 24 * *(v17 + 8);
        v20 = *v18;
        *(v19 + 16) = *(v18 + 16);
        *v19 = v20;
        ++*(v17 + 8);
      }
    }

    v21 = *(v17 + 200);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
    goto LABEL_20;
  }

LABEL_16:
  if (*(*this + 9))
  {
    v23 = *this - 16;
  }

  else
  {
    v23 = 0;
  }

  result = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v23 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
LABEL_20:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::tensor::ReshapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v14[0] = v15;
  v14[1] = 1;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v15, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v12, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 296))(a1) & 1) == 0)
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

  v9 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(a1, &v9))
  {
    return 0;
  }

  v5 = *(v9 + 8);
  v4 = *(v9 + 12);
  v10[0] = *(v9 + 16);
  v10[1] = v5;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v10[0] + 8 * v5), (v10[0] + 8 * v5 + 8 * v4));
  v8[0] = v14;
  v8[1] = v11;
  v6 = (*(*a1 + 16))(a1);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(a1, v8, v10, v6, a2 + 16);
}

void mlir::tensor::ReshapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, "(", 1uLL);
  }

  else
  {
    *v7 = 40;
    ++*(v6 + 4);
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ")", 1uLL);
  }

  else
  {
    *v9 = 41;
    ++*(v8 + 4);
  }

  v25 = v27;
  v26 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v27, 0);
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

  v13 = (*(*a2 + 16))(a2);
  v14 = *(v13 + 4);
  if (*(v13 + 3) == v14)
  {
    llvm::raw_ostream::write(v13, ":", 1uLL);
  }

  else
  {
    *v14 = 58;
    ++*(v13 + 4);
  }

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (v16 >= *(v15 + 3))
  {
    llvm::raw_ostream::write(v15, 32);
  }

  else
  {
    *(v15 + 4) = v16 + 1;
    *v16 = 32;
  }

  v17 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v18 = *(v17 + 9);
    v19 = *(v17 + 17);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  v24[0] = v18;
  v24[1] = 0;
  v24[2] = v18;
  v24[3] = v19;
  v20 = *(v17 + 9);
  v21 = v17 - 16;
  if (!v20)
  {
    v21 = 0;
  }

  v23[0] = v21;
  v23[1] = 0;
  v23[2] = v21;
  v23[3] = v20;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v24, v23);
  if (v25 != v27)
  {
    free(v25);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ScatterOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v22, a4);
    if (v22)
    {
      mlir::Diagnostic::operator<<<42ul>(v23, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "scatter_dims", 0xCuLL);
  if (v10)
  {
    v11 = *(v9 + 8);
    if (v11)
    {
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v12 = v11[1], *(*v12 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v12[2] != 64)
      {
        a3(&v22, a4);
        if (!v22)
        {
          goto LABEL_4;
        }

        if (!v22)
        {
          goto LABEL_4;
        }

        v20 = 0;
        v21 = v11;
        goto LABEL_20;
      }

      *a1 = v11;
    }
  }

  v13 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "unique", 6uLL);
  if ((v14 & 1) == 0 || (v15 = *(v13 + 8)) == 0)
  {
LABEL_22:
    result = 1;
    goto LABEL_23;
  }

  if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    a1[1] = v15;
    goto LABEL_22;
  }

  a3(&v22, a4);
  if (!v22)
  {
    goto LABEL_4;
  }

  if (!v22)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = v15;
LABEL_20:
  v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
  v17 = v24 + 24 * v25;
  v18 = *v16;
  *(v17 + 16) = *(v16 + 16);
  *v17 = v18;
  ++v25;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  result = 0;
LABEL_23:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::ScatterOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "scatter_dims";
    v16 = 12;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "unique";
    v16 = 6;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}