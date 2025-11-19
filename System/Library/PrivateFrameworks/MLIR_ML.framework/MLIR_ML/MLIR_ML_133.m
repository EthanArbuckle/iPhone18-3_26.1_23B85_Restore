uint64_t mlir::tensor::ExpandShapeOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

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
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
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
      goto LABEL_51;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_50;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_49;
  }

  v8 = mlir::DictionaryAttr::get(&v31, "reassociation", 0xDuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v34, a4);
      if (v34[0])
      {
        LODWORD(v32) = 3;
        v33 = 58;
        if (v36 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v36 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v35 + 24 * v36;
        v11 = v32;
        *(v10 + 2) = v33;
        *v10 = v11;
        ++v36;
        if (v34[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
          if (v36 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v36 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v35 + 24 * v36;
          v13 = v32;
          *(v12 + 2) = v33;
          *v12 = v13;
          ++v36;
          if (v34[0])
          {
            mlir::InFlightDiagnostic::report(v34);
          }
        }
      }

      if ((v44 & 1) == 0)
      {
        return 0;
      }

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
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
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
LABEL_51:
        if (v35 != &v38)
        {
          free(v35);
        }

        return 0;
      }

      v18 = v40;
      v19 = v39;
      if (v40 == v39)
      {
LABEL_50:
        v40 = v17;
        operator delete(v19);
        goto LABEL_51;
      }

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
LABEL_49:
      v19 = v39;
      goto LABEL_50;
    }

    *a1 = v8;
  }

  if (mlir::DictionaryAttr::get(&v31, "static_output_shape", 0x13uLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  return 1;
}

uint64_t mlir::tensor::ExpandShapeOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "reassociation", 0xD, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "static_output_shape", 0x13, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::tensor::ExpandShapeOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::tensor::ExpandShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 19)
  {
    if (a4 == 13 && *a3 == 0x69636F7373616572 && *(a3 + 5) == 0x6E6F69746169636FLL)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x6F5F636974617473 || a3[1] != 0x68735F7475707475 || *(a3 + 11) != 0x65706168735F7475)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::ExpandShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 19)
  {
    if (*a2 == 0x6F5F636974617473 && a2[1] == 0x68735F7475707475 && *(a2 + 11) == 0x65706168735F7475)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      result[1] = 0;
    }
  }

  else if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }

      *result = v7;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

void mlir::tensor::ExpandShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "reassociation", 0xDuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "static_output_shape", 0x13uLL, v5);
  }
}

BOOL mlir::tensor::ExpandShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v8, "reassociation", 13, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v9) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t mlir::tensor::ExpandShapeOp::readProperties(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 256))
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::ArrayAttr>(a1, *(a2 + 256)))
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::ExpandShapeOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::tensor::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v18 = a4;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *v15 = a5;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 8) = a8;
  v17 = *(a2 + 72);
  if (v17 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v17) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v21 = a5;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *v16 = a6;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 8) = a9;
  v18 = *(a2 + 72);
  if (a4 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v19 = 0;
    v20 = *(a2 + 64) + 8 * v18;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v19);
      *(v20 + 8 * v19++) = result;
    }

    while (a4 != v19);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + a4;
  return result;
}

void mlir::tensor::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a6;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::ExpandShapeOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v37[0] = "requires attribute 'reassociation'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v45;
      v21 = __p;
      if (v45 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v45 = v19;
      operator delete(v21);
    }

    v22 = v42;
    if (v42)
    {
      v23 = v43;
      v24 = v42;
      if (v43 != v42)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, 0x1000C8077774924);
          }
        }

        while (v23 != v22);
        v24 = v42;
      }

      v43 = v22;
      operator delete(v24);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

LABEL_57:
    free(v35);
    return v18;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v37[0] = "requires attribute 'static_output_shape'";
    v38 = 259;
    mlir::OpState::emitOpError(this, v37, v39);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v39);
    if (v39[0])
    {
      mlir::InFlightDiagnostic::report(v39);
    }

    if (v47 != 1)
    {
      return v18;
    }

    if (v46 != &v47)
    {
      free(v46);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v45;
      v29 = __p;
      if (v45 != __p)
      {
        do
        {
          v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v45 = v27;
      operator delete(v29);
    }

    v30 = v42;
    if (v42)
    {
      v31 = v43;
      v32 = v42;
      if (v43 != v42)
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
        v32 = v42;
      }

      v43 = v30;
      operator delete(v32);
    }

    v35 = v40;
    if (v40 == v41)
    {
      return v18;
    }

    goto LABEL_57;
  }

  v39[0] = v2;
  if ((mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v4, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v39) & 1) == 0)
  {
    return 0;
  }

  v39[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v7) & 1) == 0 || (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v10 = -1;
    v11 = 32;
LABEL_9:
    v12 = v11 + 24;
    v13 = 1;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v12 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v13) & 1) != 0)
    {
      ++v13;
      v12 += 32;
      if (!--v10)
      {
        v8 = *this;
        goto LABEL_13;
      }
    }

    return 0;
  }

  v9 = *(v8 + 17);
  v10 = v9 - 1;
  if (v9 != 1)
  {
    v11 = *(v8 + 9) + 32;
    goto LABEL_9;
  }

LABEL_13:
  v14 = *(v8 + 9);
  v15 = v8 - 16;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v16, 0);
  return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::tensor::ExpandShapeOp::verifyInvariants(mlir::tensor::ExpandShapeOp *this)
{
  if (mlir::tensor::ExpandShapeOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::ExpandShapeOp::verify(this);
  }

  return 0;
}

uint64_t mlir::tensor::ExpandShapeOp::parse(mlir::tensor::ExpandShapeOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v35[16] = *MEMORY[0x277D85DE8];
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28[0] = v29;
  v28[1] = 1;
  v26 = 0;
  v27 = 0;
  v33 = v35;
  v34 = 0x400000000;
  v24[1] = 1;
  v25 = 0;
  v23 = 0;
  v24[0] = &v25;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 704))(this, v29, 1))
  {
    v6 = (*(*this + 32))(this);
    v8 = mlir::NoneType::get(*v6, v7);
    if (mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(this, &v27, v8))
    {
      if (v27)
      {
        v9 = *(a2 + 32);
        if (!v9)
        {
          operator new();
        }

        *v9 = v27;
      }

      v32 = 257;
      if ((*(*this + 400))(this, "output_shape", 12, v31))
      {
        (*(*this + 40))(this);
        v31[0] = 0;
        if (mlir::parseDynamicIndexList(this, &v33, &v26, v31, 0))
        {
          v10 = *(a2 + 32);
          if (!v10)
          {
            operator new();
          }

          *(v10 + 8) = v26;
          v22 = (*(*this + 40))(this);
          if ((*(*this + 488))(this, a2 + 112))
          {
            v11 = *(a2 + 1);
            v31[0] = this;
            v31[1] = &v22;
            v31[2] = a2;
            v12 = mlir::NamedAttrList::get(a2 + 112, **(v11 + 96));
            if (!v12 || (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v12, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ExpandShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v31) & 1) != 0)
            {
              v13 = mlir::NamedAttrList::get(a2 + 112, *(*(v11 + 96) + 8));
              if (!v13 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v13)) && ((*(*this + 104))(this))
              {
                v31[0] = 0;
                if (mlir::AsmParser::parseType<mlir::TensorType>(this, v31))
                {
                  v25 = v31[0];
                  v32 = 257;
                  if ((*(*this + 400))(this, "into", 4, v31))
                  {
                    v31[0] = 0;
                    if (mlir::AsmParser::parseType<mlir::TensorType>(this, v31))
                    {
                      v23 = v31[0];
                      v14 = (*(*this + 32))(this);
                      IndexType = mlir::Builder::getIndexType(v14, v15);
                      mlir::OperationState::addTypes(a2, &v23, 1);
                      if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v28, v24, v5, a2 + 16))
                      {
                        if (!v34)
                        {
                          v19 = 1;
                          v20 = v33;
                          if (v33 == v35)
                          {
                            return v19;
                          }

                          goto LABEL_28;
                        }

                        v17 = v33;
                        v18 = 32 * v34;
                        while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
                        {
                          v17 += 32;
                          v19 = 1;
                          v18 -= 32;
                          if (!v18)
                          {
                            goto LABEL_27;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = 0;
LABEL_27:
  v20 = v33;
  if (v33 != v35)
  {
LABEL_28:
    free(v20);
  }

  return v19;
}

unint64_t mlir::tensor::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::ExtractOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "_N_120ChainedTensorBitcastE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257389F05 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257389F05 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257389F05 + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v19;
  v18 = 0x200000000;
  mlir::ValueRange::ValueRange(&v16, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v15, *(a2 + 224), *(a2 + 232));
  v20 = v16;
  if (v18 != 1)
  {
    if (!v18)
    {
      if (!HIDWORD(v18))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v18) = 1;
  }

  v14 = *(mlir::ValueRange::dereference_iterator(&v20, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v14);
  v10 = __src;
  *__src = ElementType;
  v11 = v18;
  v12 = *(a2 + 72);
  if (v12 + v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v12), v10, 8 * v18);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v11;
  if (__src != v19)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v13 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  **a11 = mlir::TensorType::getElementType(&v13);
  return 1;
}

unint64_t mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::tensor::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v21;
  v20 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v18, *(a2 + 224), *(a2 + 232));
  v22[0] = a3;
  v22[1] = a4;
  if (v20 != 1)
  {
    if (!v20)
    {
      if (!HIDWORD(v20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v20) = 1;
  }

  v17 = *(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v17);
  v14 = __src;
  *__src = ElementType;
  v15 = v20;
  v16 = *(a2 + 72);
  if (v16 + v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v20)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v20);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v21)
  {
    free(__src);
  }
}

BOOL mlir::tensor::ExtractOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v4 = -1;
    v5 = 32;
LABEL_5:
    v6 = v5 + 24;
    v7 = 1;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v6 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v7) & 1) != 0)
    {
      ++v7;
      v6 += 32;
      if (!--v4)
      {
        v2 = *this;
        goto LABEL_9;
      }
    }

    return 0;
  }

  v3 = *(v2 + 17);
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = *(v2 + 9) + 32;
    goto LABEL_5;
  }

LABEL_9:
  v8 = *(v2 + 9);
  v9 = v2 - 16;
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0);
  v25[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(v25);
  if (*(*this + 9))
  {
    v12 = *this - 16;
  }

  else
  {
    v12 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v23 = "failed to verify that result type matches element type of tensor";
  v24 = 259;
  mlir::OpState::emitOpError(this, &v23, v25);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
  v14 = result;
  if (v25[0])
  {
    mlir::InFlightDiagnostic::report(v25);
    result = v14;
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
      result = v14;
    }

    v15 = __p;
    if (__p)
    {
      v16 = v31;
      v17 = __p;
      if (v31 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v31 = v15;
      operator delete(v17);
      result = v14;
    }

    v18 = v28;
    if (v28)
    {
      v19 = v29;
      v20 = v28;
      if (v29 != v28)
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
        v20 = v28;
      }

      v29 = v18;
      operator delete(v20);
      result = v14;
    }

    if (v26 != &v27)
    {
      free(v26);
      return v14;
    }
  }

  return result;
}

BOOL mlir::tensor::ExtractOp::parse(mlir::tensor::ExtractOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v40[16] = *MEMORY[0x277D85DE8];
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v38 = v40;
  v39 = 0x400000000;
  v32[1] = 1;
  v33 = 0;
  v32[0] = &v33;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v35, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v38, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  v37[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v37))
  {
    goto LABEL_31;
  }

  v6 = v37[0];
  v33 = v37[0];
  v31 = v37[0];
  v7 = *v37[0];
  if (*(*v37[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = (*(*this + 16))(this);
    v30 = 257;
    (*(*this + 24))(v37, this, v8, v29);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v37, "'tensor' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v9, &v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v37);
    v12 = v38;
    if (v38 == v40)
    {
      return v11;
    }

    goto LABEL_33;
  }

  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    v16 = v14;
    goto LABEL_21;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_13:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
LABEL_21:
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
  }

  else
  {
    v22 = 0;
  }

  v37[0] = v6;
  v37[1] = v22;
  mlir::ShapedType::getElementType(v37);
  v23 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v23, v24);
  v29[0] = *v32[0];
  v37[0] = mlir::TensorType::getElementType(v29);
  mlir::OperationState::addTypes(a2, v37, 1);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v34, v32, v5, a2 + 16))
  {
    if (!v39)
    {
      v11 = 1;
      v12 = v38;
      if (v38 == v40)
      {
        return v11;
      }

      goto LABEL_33;
    }

    v26 = v38;
    v27 = 32 * v39;
    while (((*(*this + 728))(this, v26, IndexType, a2 + 16) & 1) != 0)
    {
      v26 += 4;
      v11 = 1;
      v27 -= 32;
      if (!v27)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  v11 = 0;
LABEL_32:
  v12 = v38;
  if (v38 != v40)
  {
LABEL_33:
    free(v12);
  }

  return v11;
}

void *llvm::cast<mlir::ShapedType,mlir::Type>(void **a1)
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
      v12 = v2;
      v13 = result;
      mlir::tensor::ExpandShapeOp::fold();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
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

uint64_t mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::ExtractSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::tensor::ExtractSliceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        return 1;
      }

      v24[0] = "'tensor.extract_slice' op requires attribute 'static_strides'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
        }

        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'tensor.extract_slice' op requires attribute 'static_sizes'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'tensor.extract_slice' op requires attribute 'static_offsets'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
      }

      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x259C63150](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      goto LABEL_53;
    }
  }

  return v2;
}

unint64_t mlir::tensor::ExtractSliceOp::getODSOperandIndexAndLength(mlir::tensor::ExtractSliceOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::tensor::ExtractSliceOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "static_offsets", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_sizes", 0xCuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_strides", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
        {
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::tensor::ExtractSliceOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "static_offsets", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_sizes", 0xC, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_strides", 0xE, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::tensor::ExtractSliceOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::tensor::ExtractSliceOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::ExtractSliceOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *result = 0;
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  return result;
}

void mlir::tensor::ExtractSliceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::tensor::ExtractSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 4uLL)))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 5)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                MEMORY[0x259C63150](v10, 0x1000C8077774924);
              }
            }

            while (v8 != v7);
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
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
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
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

unint64_t mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  v21[6] = 1;
  v21[7] = a7;
  v21[8] = a10;
  v21[9] = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a13;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a14;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = a15;
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

void mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a6;
  v14[8] = a8;
  v14[9] = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  v14[6] = 1;
  v14[7] = a7;
  v14[8] = a10;
  v14[9] = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::ExtractSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

uint64_t mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v44 = *MEMORY[0x277D85DE8];
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  if (!v4)
  {
    v33[0] = "requires attribute 'static_offsets'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v41;
      v11 = __p;
      if (v41 != __p)
      {
        do
        {
          v10 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v41 = v9;
      operator delete(v11);
    }

    v12 = v38;
    if (v38)
    {
      v13 = v39;
      v14 = v38;
      if (v39 != v38)
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
        goto LABEL_56;
      }

LABEL_57:
      v39 = v12;
      operator delete(v14);
    }

LABEL_58:
    v31 = v36;
    if (v36 == v37)
    {
      return v8;
    }

    goto LABEL_63;
  }

  v5 = *(v3 + 8);
  if (!v5)
  {
    v33[0] = "requires attribute 'static_sizes'";
    v34 = 259;
    mlir::OpState::emitOpError(this, v33, v35);
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 != 1)
    {
      return v8;
    }

    if (v42 != &v43)
    {
      free(v42);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v41;
      v19 = __p;
      if (v41 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v41 = v17;
      operator delete(v19);
    }

    v12 = v38;
    if (v38)
    {
      v20 = v39;
      v14 = v38;
      if (v39 != v38)
      {
        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v12);
LABEL_56:
        v14 = v38;
        goto LABEL_57;
      }

      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v2) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
    {
      return 0;
    }

    v35[0] = *this;
    if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) == 0)
    {
      return 0;
    }

    mlir::tensor::ExtractSliceOp::verifyInvariantsImpl();
    return LOBYTE(v35[0]);
  }

  v33[0] = "requires attribute 'static_strides'";
  v34 = 259;
  mlir::OpState::emitOpError(this, v33, v35);
  v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v35);
  if (v35[0])
  {
    mlir::InFlightDiagnostic::report(v35);
  }

  if (v43 == 1)
  {
    if (v42 != &v43)
    {
      free(v42);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v41;
      v25 = __p;
      if (v41 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v41 = v23;
      operator delete(v25);
    }

    v26 = v38;
    if (v38)
    {
      v27 = v39;
      v28 = v38;
      if (v39 != v38)
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
        v28 = v38;
      }

      v39 = v26;
      operator delete(v28);
    }

    v31 = v36;
    if (v36 != v37)
    {
LABEL_63:
      free(v31);
    }
  }

  return v8;
}

uint64_t mlir::tensor::ExtractSliceOp::verifyInvariants(mlir::tensor::ExtractSliceOp *this)
{
  if (mlir::tensor::ExtractSliceOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::ExtractSliceOp::verify(this);
  }

  return 0;
}

uint64_t mlir::tensor::ExtractSliceOp::parse(mlir::tensor::ExtractSliceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v46[16] = *MEMORY[0x277D85DE8];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v33[0] = v34;
  v33[1] = 1;
  v44 = v46;
  v45 = 0x400000000;
  v31 = 0;
  v32 = 0;
  v41 = v43;
  v42 = 0x400000000;
  v38 = v40;
  v39 = 0x400000000;
  v29 = 0;
  v30 = 0;
  v28[0] = &v29;
  v28[1] = 1;
  v27 = 0;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v34, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v44, &v32, v36, 0))
  {
    goto LABEL_31;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    operator new();
  }

  *v6 = v32;
  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v41, &v31, v36, 0))
  {
    goto LABEL_31;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 8) = v31;
  (*(*this + 40))(this);
  v36[0] = 0;
  if (!mlir::parseDynamicIndexList(this, &v38, &v30, v36, 0))
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 16) = v30;
  v26 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_31;
  }

  v9 = *(a2 + 1);
  v36[0] = this;
  v36[1] = &v26;
  v36[2] = a2;
  if (!mlir::tensor::ExtractSliceOp::verifyInherentAttrs(v9, a2 + 112))
  {
    goto LABEL_31;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v36))
  {
    goto LABEL_31;
  }

  v29 = v36[0];
  v37 = 257;
  if (((*(*this + 400))(this, "to", 2, v36) & 1) == 0)
  {
    goto LABEL_31;
  }

  v36[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v36))
  {
    goto LABEL_31;
  }

  v27 = v36[0];
  v10 = v45;
  v11 = v42;
  v12 = v39;
  v13 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  v13[6] = 1;
  v13[7] = v10;
  v13[8] = v11;
  v13[9] = v12;
  v14 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v14, v15);
  mlir::OperationState::addTypes(a2, &v27, 1);
  if ((mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v33, v28, v5, a2 + 16) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (v45)
  {
    v17 = v44;
    v18 = 32 * v45;
    while (((*(*this + 728))(this, v17, IndexType, a2 + 16) & 1) != 0)
    {
      v17 += 32;
      v18 -= 32;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    v23 = 0;
LABEL_32:
    v24 = v38;
    if (v38 != v40)
    {
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_22:
  if (v42)
  {
    v19 = v41;
    v20 = 32 * v42;
    while (((*(*this + 728))(this, v19, IndexType, a2 + 16) & 1) != 0)
    {
      v19 += 32;
      v20 -= 32;
      if (!v20)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_31;
  }

LABEL_26:
  if (v39)
  {
    v21 = v38;
    v22 = 32 * v39;
    while (((*(*this + 728))(this, v21, IndexType, a2 + 16) & 1) != 0)
    {
      v21 += 32;
      v23 = 1;
      v22 -= 32;
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v23 = 1;
  v24 = v38;
  if (v38 != v40)
  {
LABEL_33:
    free(v24);
  }

LABEL_34:
  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

  return v23;
}

unint64_t mlir::tensor::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

BOOL mlir::tensor::FromElementsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v99 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  {
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = *(v6 + 8);
    v28 = *(v6 + 16);
    if (!v28)
    {
      goto LABEL_60;
    }
  }

  else
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = *(v6 + 8);
    v28 = *(v6 + 16);
    if (!v28)
    {
      goto LABEL_60;
    }
  }

  v29 = v27;
  v30 = v28;
  do
  {
    v31 = v30 >> 1;
    v32 = &v29[2 * (v30 >> 1)];
    v34 = *v32;
    v33 = v32 + 2;
    v30 += ~(v30 >> 1);
    if (v34 < v26)
    {
      v29 = v33;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30);
  if (v29 == &v27[2 * v28] || *v29 != v26)
  {
LABEL_60:
    v86 = v5;
    v87 = 0;
    if (!mlir::ShapedType::hasRank(&v86))
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  v36 = v29[1];
  v86 = v5;
  v87 = v36;
  if (!mlir::ShapedType::hasRank(&v86))
  {
    goto LABEL_5;
  }

LABEL_63:
  Shape = mlir::ShapedType::getShape(&v86);
  if (!v38)
  {
LABEL_67:
    v40 = *v5;
    {
      v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    v44 = v42;
    v45 = v43;
    do
    {
      v46 = v45 >> 1;
      v47 = &v44[2 * (v45 >> 1)];
      v49 = *v47;
      v48 = v47 + 2;
      v45 += ~(v45 >> 1);
      if (v49 < v41)
      {
        v44 = v48;
      }

      else
      {
        v45 = v46;
      }
    }

    while (v45);
    if (v44 != &v42[2 * v43] && *v44 == v41)
    {
      v50 = v44[1];
      goto LABEL_82;
    }

LABEL_80:
    v50 = 0;
LABEL_82:
    v80 = v5;
    v81 = v50;
    mlir::ShapedType::getElementType(&v80);
    goto LABEL_83;
  }

  v39 = 8 * v38;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v39 -= 8;
    if (!v39)
    {
      goto LABEL_67;
    }
  }

LABEL_5:
  v83 = 261;
  v80 = "result";
  v81 = 6;
  mlir::Operation::emitOpError(&v86, v4, &v80);
  if (v86)
  {
    LODWORD(v84) = 3;
    *(&v84 + 1) = " #";
    v85 = 2;
    if (v90 >= v91)
    {
      if (v89 > &v84 || v89 + 24 * v90 <= &v84)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v89 + 24 * v90;
    v8 = v84;
    *(v7 + 2) = v85;
    *v7 = v8;
    v9 = ++v90;
    if (v86)
    {
      LODWORD(v84) = 5;
      *(&v84 + 1) = 0;
      if (v9 >= v91)
      {
        if (v89 > &v84 || v89 + 24 * v9 <= &v84)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v89 + 24 * v90;
      v11 = v84;
      *(v10 + 2) = v85;
      *v10 = v11;
      v12 = ++v90;
      if (v86)
      {
        LODWORD(v84) = 3;
        *(&v84 + 1) = " must be statically shaped tensor of any type values, but got ";
        v85 = 62;
        if (v12 >= v91)
        {
          if (v89 > &v84 || v89 + 24 * v12 <= &v84)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v89 + 24 * v90;
        v14 = v84;
        *(v13 + 2) = v85;
        *v13 = v14;
        ++v90;
        if (v86)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v84, v5);
          if (v90 >= v91)
          {
            if (v89 > &v84 || v89 + 24 * v90 <= &v84)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v89 + 24 * v90;
          v16 = v84;
          *(v15 + 2) = v85;
          *v15 = v16;
          ++v90;
        }
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v86);
  if (v86)
  {
    mlir::InFlightDiagnostic::report(&v86);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v96;
      v20 = __p;
      if (v96 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v96 = v18;
      operator delete(v20);
    }

    v21 = v93;
    if (v93)
    {
      v22 = v94;
      v23 = v93;
      if (v94 != v93)
      {
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
        v23 = v93;
      }

      v94 = v21;
      operator delete(v23);
    }

    if (v89 != v92)
    {
      free(v89);
    }
  }

  if (!v17)
  {
    return 0;
  }

LABEL_83:
  if (*(*this + 9))
  {
    v51 = *this - 16;
  }

  else
  {
    v51 = 0;
  }

  v79 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  v52 = mlir::RankedTensorType::getShape(&v79);
  NumElements = mlir::ShapedType::getNumElements(v52, v53);
  if (*(*this + 9))
  {
    v55 = *this - 16;
  }

  else
  {
    v55 = 0;
  }

  v78 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v55, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::RankedTensorType::getElementType(&v78);
  v86 = &v88;
  HIDWORD(v87) = 2;
  if (NumElements >= 3)
  {
    LODWORD(v87) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumElements)
  {
    v57 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_2573686A0));
    if (v57.i8[0])
    {
      v88 = ElementType;
    }

    if (v57.i8[4])
    {
      v89 = ElementType;
    }
  }

  LODWORD(v87) = NumElements;
  v58 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v59 = *(v58 + 17);
    v60 = *(v58 + 9);
  }

  else
  {
    v60 = 0;
    v59 = 0;
  }

  *&v84 = v60;
  *(&v84 + 1) = v59;
  mlir::OperandRange::getType(&v84, &v80);
  if (v82 - v81 != v87)
  {
    v67 = 0;
    goto LABEL_108;
  }

  if (v87)
  {
    v61 = 8 * v87 - 8;
    v62 = &v80[4 * v81 + 3];
    v63 = v86;
    do
    {
      v64 = *v62;
      v62 += 4;
      v65 = v64[1];
      v66 = *v63++;
      v67 = v66 == (v65 & 0xFFFFFFFFFFFFFFF8);
      v68 = v66 != (v65 & 0xFFFFFFFFFFFFFFF8) || v61 == 0;
      v61 -= 8;
    }

    while (!v68);
LABEL_108:
    if (v86 == &v88)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

  v67 = 1;
  if (v86 != &v88)
  {
LABEL_109:
    free(v86);
  }

LABEL_110:
  if (v67)
  {
    return 1;
  }

  v80 = "failed to verify that operand types match result element type";
  v83 = 259;
  mlir::OpState::emitOpError(this, &v80, &v86);
  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v86);
  if (v86)
  {
    mlir::InFlightDiagnostic::report(&v86);
  }

  if (v98 == 1)
  {
    if (v97 != &v98)
    {
      free(v97);
    }

    v69 = __p;
    if (__p)
    {
      v70 = v96;
      v71 = __p;
      if (v96 != __p)
      {
        do
        {
          v70 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v70 - 1);
        }

        while (v70 != v69);
        v71 = __p;
      }

      v96 = v69;
      operator delete(v71);
    }

    v72 = v93;
    if (v93)
    {
      v73 = v94;
      v74 = v93;
      if (v94 != v93)
      {
        do
        {
          v76 = *--v73;
          v75 = v76;
          *v73 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v73 != v72);
        v74 = v93;
      }

      v94 = v72;
      operator delete(v74);
    }

    if (v89 != v92)
    {
      free(v89);
    }
  }

  return v35;
}

uint64_t mlir::tensor::FromElementsOp::parse(mlir::tensor::FromElementsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v74[16] = *MEMORY[0x277D85DE8];
  v73[0] = v74;
  v73[1] = 0x400000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, v73, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || ((*(*this + 104))(this) & 1) == 0 || (v60 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v60)))
  {
    v17 = 0;
    goto LABEL_15;
  }

  v6 = v60;
  v7 = *v60;
  if (*(*v60 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_19:
    v10 = 0;
    v11 = v9;
    goto LABEL_20;
  }

  v19 = v7;
  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v19 + 8);
  v10 = *(v19 + 16);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_8:
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
LABEL_20:
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v20 = v11[1];
  }

  else
  {
    v20 = 0;
  }

  v60 = v6;
  v61 = v20;
  if (mlir::ShapedType::hasRank(&v60))
  {
    Shape = mlir::ShapedType::getShape(&v60);
    if (v22)
    {
      v23 = 8 * v22;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

LABEL_29:
    v24 = *v6;
    {
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (v27)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v47 = v24;
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v47 + 8);
      v27 = *(v47 + 16);
      if (v27)
      {
LABEL_31:
        v28 = v26;
        v29 = v27;
        do
        {
          v30 = v29 >> 1;
          v31 = &v28[2 * (v29 >> 1)];
          v33 = *v31;
          v32 = v31 + 2;
          v29 += ~(v29 >> 1);
          if (v33 < v25)
          {
            v28 = v32;
          }

          else
          {
            v29 = v30;
          }
        }

        while (v29);
        goto LABEL_71;
      }
    }

    v27 = 0;
    v28 = v26;
LABEL_71:
    if (v28 != &v26[2 * v27] && *v28 == v25)
    {
      v48 = v28[1];
    }

    else
    {
      v48 = 0;
    }

    v56[0] = v6;
    v56[1] = v48;
    mlir::ShapedType::getElementType(v56);
    v49 = *(a2 + 18);
    if (v49 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v49) = v6;
    ++*(a2 + 18);
    v56[0] = v6;
    v50 = mlir::RankedTensorType::getShape(v56);
    NumElements = mlir::ShapedType::getNumElements(v50, v51);
    *&v58 = v6;
    ElementType = mlir::RankedTensorType::getElementType(&v58);
    v60 = &v62;
    HIDWORD(v61) = 2;
    if (NumElements >= 3)
    {
      LODWORD(v61) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (NumElements)
    {
      v54 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_2573686A0));
      if (v54.i8[0])
      {
        v62 = ElementType;
      }

      if (v54.i8[4])
      {
        v63 = ElementType;
      }
    }

    LODWORD(v61) = NumElements;
    v55 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v73, &v60, v5, a2 + 16);
    if (v60 != &v62)
    {
      free(v60);
    }

    v17 = v55 & 1;
    goto LABEL_15;
  }

LABEL_37:
  v34 = (*(*this + 16))(this);
  v57 = 257;
  (*(*this + 24))(&v60, this, v34, v56);
  if (v60)
  {
    LODWORD(v58) = 3;
    *(&v58 + 1) = "'result' must be statically shaped tensor of any type values, but got ";
    v59 = 70;
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
    ++v64;
    if (v60)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v58, v6);
      if (v64 >= v65)
      {
        if (v63 > &v58 || v63 + 24 * v64 <= &v58)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v37 = v63 + 24 * v64;
      v38 = v58;
      *(v37 + 2) = v59;
      *v37 = v38;
      ++v64;
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v60);
  if (v60)
  {
    mlir::InFlightDiagnostic::report(&v60);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v39 = __p;
    if (__p)
    {
      v40 = v70;
      v41 = __p;
      if (v70 != __p)
      {
        do
        {
          v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
        }

        while (v40 != v39);
        v41 = __p;
      }

      v70 = v39;
      operator delete(v41);
    }

    v42 = v67;
    if (v67)
    {
      v43 = v68;
      v44 = v67;
      if (v68 != v67)
      {
        do
        {
          v46 = *--v43;
          v45 = v46;
          *v43 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v43 != v42);
        v44 = v67;
      }

      v68 = v42;
      operator delete(v44);
    }

    if (v63 != &v66)
    {
      free(v63);
    }
  }

LABEL_15:
  if (v73[0] != v74)
  {
    free(v73[0]);
  }

  return v17;
}

uint64_t mlir::tensor::detail::GatherOpGenericAdaptorBase::GatherOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  *(a1 + 24) = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v3 = *(a2 + 44);
  if ((v3 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 40), ((a2 + 64 + 16 * ((v3 >> 23) & 1) + ((v3 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v3 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 40), 0, 0);
  }

  return a1;
}

uint64_t mlir::tensor::GatherOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    return 1;
  }

  v12 = "'tensor.gather' op requires attribute 'gather_dims'";
  v13 = 259;
  mlir::emitError(a2, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
      {
        do
        {
          v10 = *--v7;
          v9 = v10;
          *v7 = 0;
          if (v10)
          {
            MEMORY[0x259C63150](v9, 0x1000C8077774924);
          }
        }

        while (v7 != v6);
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::tensor::GatherOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v31 = v6;
  if (!v6)
  {
    a3(v34, a4);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "expected DictionaryAttr to set properties";
      v33 = 41;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v22 = v35 + 24 * v36;
      v23 = v32;
      *(v22 + 2) = v33;
      *v22 = v23;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }

    if (v44 != 1)
    {
      return 0;
    }

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
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
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
      goto LABEL_49;
    }

    v27 = v40;
    v19 = v39;
    if (v40 == v39)
    {
      goto LABEL_48;
    }

    do
    {
      v29 = *--v27;
      v28 = v29;
      *v27 = 0;
      if (v29)
      {
        MEMORY[0x259C63150](v28, 0x1000C8077774924);
      }
    }

    while (v27 != v17);
    goto LABEL_47;
  }

  if (mlir::DictionaryAttr::get(&v31, "gather_dims", 0xBuLL))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  v8 = mlir::DictionaryAttr::get(&v31, "unique", 6uLL);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *(a1 + 8) = v8;
    return 1;
  }

  v9 = v8;
  a3(v34, a4);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    v33 = 51;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    ++v36;
    if (v34[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v32, v9);
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v35 + 24 * v36;
      v13 = v32;
      *(v12 + 2) = v33;
      *v12 = v13;
      ++v36;
      if (v34[0])
      {
        mlir::InFlightDiagnostic::report(v34);
      }
    }
  }

  if ((v44 & 1) == 0)
  {
    return 0;
  }

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
        v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
      }

      while (v15 != v14);
      v16 = __p;
    }

    v42 = v14;
    operator delete(v16);
  }

  v17 = v39;
  if (v39)
  {
    v18 = v40;
    v19 = v39;
    if (v40 == v39)
    {
LABEL_48:
      v40 = v17;
      operator delete(v19);
      goto LABEL_49;
    }

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
LABEL_47:
    v19 = v39;
    goto LABEL_48;
  }

LABEL_49:
  if (v35 != &v38)
  {
    free(v35);
  }

  return 0;
}

uint64_t mlir::tensor::GatherOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "gather_dims", 0xB, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    v6 = v16 + 1;
    LODWORD(v16) = v16 + 1;
    v7 = a2[1];
    if (!v7)
    {
LABEL_4:
      v8 = v15;
      if (v6)
      {
        goto LABEL_5;
      }

LABEL_11:
      DictionaryAttr = 0;
      if (v8 == v17)
      {
        return DictionaryAttr;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    v7 = a2[1];
    if (!v7)
    {
      goto LABEL_4;
    }
  }

  v11 = mlir::Builder::getNamedAttr(&v14, "unique", 6, v7);
  if (v16 >= HIDWORD(v16))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v13 = (v15 + 16 * v16);
  *v13 = v11;
  v13[1] = v12;
  v6 = v16 + 1;
  LODWORD(v16) = v6;
  v8 = v15;
  if (!v6)
  {
    goto LABEL_11;
  }

LABEL_5:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v14, v8, v6);
  v8 = v15;
  if (v15 != v17)
  {
LABEL_6:
    free(v8);
  }

  return DictionaryAttr;
}

unint64_t mlir::tensor::GatherOp::computePropertiesHash(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  v7[0] = v3;
  v7[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v7, 0, v8, v9);
}

unint64_t mlir::tensor::GatherOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 6)
  {
    if (a4 == 11 && *a3 == 0x645F726568746167 && *(a3 + 3) == 0x736D69645F726568)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 1902734965 || *(a3 + 4) != 25973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::tensor::GatherOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

        result[1] = v6;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x645F726568746167 && *(a2 + 3) == 0x736D69645F726568)
  {
    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    *result = 0;
  }

  return result;
}

void mlir::tensor::GatherOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "gather_dims", 0xBuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {

    mlir::NamedAttrList::append(a3, "unique", 6uLL, v5);
  }
}

BOOL mlir::tensor::GatherOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v9, "unique", 6, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::tensor::GatherOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  return (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, (v3 + 8));
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

uint64_t mlir::tensor::GatherOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 24);

  return v5(a2, v4);
}

uint64_t mlir::tensor::GatherOp::setUnique(uint64_t this, int a2)
{
  v2 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  if (a2)
  {
    Context = mlir::Attribute::getContext((*this + 24));
    this = mlir::Builder::getUnitAttr(&Context, v3);
    *(v2 + 72) = this;
  }

  else
  {
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t mlir::tensor::GatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a5;
  v16 = a4;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v15, 1uLL);
  v12 = *(a2 + 256);
  if (!v12)
  {
    operator new();
  }

  *v12 = a6;
  if (a7)
  {
    v13 = *(a2 + 256);
    if (!v13)
    {
      operator new();
    }

    *(v13 + 8) = a7;
  }

  v14 = *(a2 + 72);
  if (v14 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v14) = a3;
  ++*(a2 + 72);
  return result;
}

unint64_t mlir::tensor::GatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a6;
  v20 = a5;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  result = mlir::OperationState::addOperands(a2, &v19, 1uLL);
  v14 = *(a2 + 256);
  if (!v14)
  {
    operator new();
  }

  *v14 = a7;
  if (a8)
  {
    v15 = *(a2 + 256);
    if (!v15)
    {
      operator new();
    }

    *(v15 + 8) = a8;
  }

  v16 = *(a2 + 72);
  if (a4 + v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v17 = 0;
    v18 = *(a2 + 64) + 8 * v16;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v17);
      *(v18 + 8 * v17++) = result;
    }

    while (a4 != v17);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + a4;
  return result;
}

void mlir::tensor::GatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  mlir::OperationState::addOperands(a2, &v6, 1uLL);
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::GatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a6;
  v8 = a5;
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::GatherOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

BOOL mlir::tensor::GatherOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (v6)
  {
    v7 = *(v5 + 8);
    v22[0] = v2;
    if (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0 && (v22[0] = *this, (mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(v7, "unique", 6, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v22)) && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) != 0 && (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
    {
      if (*(*this + 9))
      {
        v8 = *this - 16;
      }

      else
      {
        v8 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
      return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = "requires attribute 'gather_dims'";
    v21 = 259;
    mlir::OpState::emitOpError(this, &v20, v22);
    v10 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      v14 = v25;
      if (v25)
      {
        v15 = v26;
        v16 = v25;
        if (v26 != v25)
        {
          do
          {
            v18 = *--v15;
            v17 = v18;
            *v15 = 0;
            if (v18)
            {
              MEMORY[0x259C63150](v17, 0x1000C8077774924);
            }
          }

          while (v15 != v14);
          v16 = v25;
        }

        v26 = v14;
        operator delete(v16);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v10;
}

uint64_t mlir::tensor::__mlir_ods_local_type_constraint_TensorOps10(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_18;
  }

  v10 = a1;
  {
    v42 = v9;
    mlir::tensor::ExpandShapeOp::fold();
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v42 + 8);
    v13 = *(v42 + 16);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_14:
    v20 = 0;
    goto LABEL_16;
  }

  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_4:
  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 == &v12[2 * v13] || *v14 != v11)
  {
    goto LABEL_14;
  }

  v20 = v14[1];
LABEL_16:
  v47[0] = a2;
  v47[1] = v20;
  v43[0] = mlir::ShapedType::getElementType(v47);
  isSignlessIntOrIndex = mlir::Type::isSignlessIntOrIndex(v43);
  a1 = v10;
  if (isSignlessIntOrIndex)
  {
    return 1;
  }

LABEL_18:
  v44 = 261;
  v43[0] = a3;
  v43[1] = a4;
  mlir::Operation::emitOpError(v47, a1, v43);
  if (v47[0])
  {
    LODWORD(v45) = 3;
    *(&v45 + 1) = " #";
    v46 = 2;
    if (v49 >= v50)
    {
      if (v48 > &v45 || v48 + 24 * v49 <= &v45)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v23 = v48 + 24 * v49;
    v24 = v45;
    *(v23 + 2) = v46;
    *v23 = v24;
    v25 = ++v49;
    if (v47[0])
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = a5;
      if (v25 >= v50)
      {
        if (v48 > &v45 || v48 + 24 * v25 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v26 = v48 + 24 * v49;
      v27 = v45;
      *(v26 + 2) = v46;
      *v26 = v27;
      v28 = ++v49;
      if (v47[0])
      {
        LODWORD(v45) = 3;
        *(&v45 + 1) = " must be ranked tensor of signless integer or index values, but got ";
        v46 = 68;
        if (v28 >= v50)
        {
          if (v48 > &v45 || v48 + 24 * v28 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v29 = v48 + 24 * v49;
        v30 = v45;
        *(v29 + 2) = v46;
        *v29 = v30;
        ++v49;
        if (v47[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v45, a2);
          if (v49 >= v50)
          {
            if (v48 > &v45 || v48 + 24 * v49 <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v31 = v48 + 24 * v49;
          v32 = v45;
          *(v31 + 2) = v46;
          *v31 = v32;
          ++v49;
        }
      }
    }
  }

  v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
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

    v33 = __p;
    if (__p)
    {
      v34 = v55;
      v35 = __p;
      if (v55 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v55 = v33;
      operator delete(v35);
    }

    v36 = v52;
    if (v52)
    {
      v37 = v53;
      v38 = v52;
      if (v53 != v52)
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
        v38 = v52;
      }

      v53 = v36;
      operator delete(v38);
    }

    if (v48 != &v51)
    {
      free(v48);
    }
  }

  return v22;
}

uint64_t mlir::tensor::GatherOp::verifyInvariants(mlir::tensor::GatherOp *this)
{
  if (mlir::tensor::GatherOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::GatherOp::verify(this);
  }

  return 0;
}

uint64_t mlir::tensor::GatherOp::parse(mlir::tensor::GatherOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v23, 0, sizeof(v23));
  v24 = 0;
  v22[0] = v23;
  v22[1] = 1;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v19[0] = v20;
  v19[1] = 1;
  v17 = 0;
  v18 = 0;
  Inputs = 0;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v23, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    return 0;
  }

  (*(*this + 40))(this);
  if (((*(*this + 704))(this, v20, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    return 0;
  }

  v28 = 257;
  if (((*(*this + 400))(this, "gather_dims", 11, &v25) & 1) == 0 || ((*(*this + 280))(this) & 1) == 0 || (mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(this, &v18, 0) & 1) == 0)
  {
    return 0;
  }

  if (v18)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2);
    *v5 = v18;
  }

  if (((*(*this + 296))(this) & 1) == 0)
  {
    return 0;
  }

  if ((*(*this + 408))(this, "unique", 6))
  {
    v6 = (*(*this + 32))(this);
    UnitAttr = mlir::Builder::getUnitAttr(v6, v7);
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::GatherOpGenericAdaptorBase::Properties>(a2) + 8) = UnitAttr;
  }

  v15 = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 1);
  v25 = this;
  v26 = &v15;
  v27 = a2;
  if (!mlir::tensor::GatherOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::GatherOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v25))
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v15 = 0;
  if (!mlir::AsmParser::parseType<mlir::FunctionType>(this, &v15))
  {
    return 0;
  }

  Inputs = mlir::FunctionType::getInputs(&v15);
  v17 = v10;
  Results = mlir::FunctionType::getResults(&v15);
  mlir::OperationState::addTypes(a2, Results, v12);
  v25 = v22;
  v26 = v19;
  v13 = (*(*this + 16))(this);
  return mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(this, &v25, &Inputs, v13, a2 + 16) & 1;
}

uint64_t mlir::AsmParser::parseCustomAttributeWithFallback<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[26] = *MEMORY[0x277D85DE8];
  (*(*a1 + 40))(a1);
  v6 = 0;
  v7[0] = a1;
  if ((*(*a1 + 448))(a1, &v6, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_6detail18DenseArrayAttrImplIxEEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSG_S5_EUlS4_S5_E_EES1_lS4_S5_, v7))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  return 0;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::detail::concat_range<mlir::OpAsmParser::UnresolvedOperand const,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &>,llvm::ArrayRef<mlir::Type> &>(uint64_t a1, uint64_t **a2, void *a3, uint64_t a4, uint64_t a5)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = a2[1];
  v8 = **a2;
  v9 = (*a2)[1];
  v10 = v8 + 32 * v9;
  v11 = *v7;
  v12 = v7[1];
  v13 = &v11[32 * v12];
  v14 = 0;
  if (v9 | v12)
  {
    v15 = **a2;
    v16 = v11;
    do
    {
      v17 = v15 == v10;
      v15 += 32;
      if (v17)
      {
        v16 += 32;
        v15 = v10;
      }

      ++v14;
    }

    while (v15 != v10 || v16 != v13);
  }

  v18 = a3[1];
  if (v14 == v18)
  {
    v19 = *a3;
    v47 = **a2;
    v48 = v11;
    v49 = v10;
    v50 = v13;
    v51 = v19;
    v20 = v10;
    while (v8 != v10 || v11 != v13 || v20 != v10 || v50 != v13)
    {
      v21 = &unk_28688C320;
      do
      {
        while (1)
        {
          v23 = *(v21 - 1);
          v24 = (&v47 + (*v21 >> 1));
          if (*v21)
          {
            break;
          }

          v21 += 2;
          v22 = v23(v24);
          if (v22)
          {
            goto LABEL_19;
          }
        }

        v21 += 2;
        v22 = (*(*v24 + v23))();
      }

      while (!v22);
LABEL_19:
      if (((*(*a1 + 728))(a1, v22, *v51, a5) & 1) == 0)
      {
        return 0;
      }

      v8 = v47;
      v20 = v49;
      if (v47 == v49)
      {
        v11 = v48;
        if (v48 != v50)
        {
          v11 = v48 + 32;
          v48 += 32;
        }
      }

      else
      {
        v8 = v47 + 32;
        v47 += 32;
        v11 = v48;
      }

      ++v51;
    }

    return 1;
  }

  else
  {
    v44 = 257;
    (*(*a1 + 24))(&v47, a1, a4, v43);
    if (v47)
    {
      LODWORD(v45) = 5;
      *(&v45 + 1) = v14;
      if (v51 >= HIDWORD(v51))
      {
        if (v50 > &v45 || v50 + 24 * v51 <= &v45)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v25 = v50 + 24 * v51;
      v26 = v45;
      *(v25 + 2) = v46;
      *v25 = v26;
      v27 = v51 + 1;
      LODWORD(v51) = v51 + 1;
      if (v47)
      {
        LODWORD(v45) = 3;
        *(&v45 + 1) = " operands present, but expected ";
        v46 = 32;
        if (v27 >= HIDWORD(v51))
        {
          if (v50 > &v45 || v50 + 24 * v27 <= &v45)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v50 + 24 * v51;
        v29 = v45;
        *(v28 + 2) = v46;
        *v28 = v29;
        v30 = v51 + 1;
        LODWORD(v51) = v51 + 1;
        if (v47)
        {
          LODWORD(v45) = 5;
          *(&v45 + 1) = v18;
          if (v30 >= HIDWORD(v51))
          {
            if (v50 > &v45 || v50 + 24 * v30 <= &v45)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v31 = v50 + 24 * v51;
          v32 = v45;
          *(v31 + 2) = v46;
          *v31 = v32;
          LODWORD(v51) = v51 + 1;
        }
      }
    }

    v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v47);
    if (v47)
    {
      mlir::InFlightDiagnostic::report(&v47);
    }

    if (v58 == 1)
    {
      if (v57 != &v58)
      {
        free(v57);
      }

      v34 = __p;
      if (__p)
      {
        v35 = v56;
        v36 = __p;
        if (v56 != __p)
        {
          do
          {
            v35 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v56 = v34;
        operator delete(v36);
      }

      v37 = v53;
      if (v53)
      {
        v38 = v54;
        v39 = v53;
        if (v54 != v53)
        {
          do
          {
            v41 = *--v38;
            v40 = v41;
            *v38 = 0;
            if (v41)
            {
              MEMORY[0x259C63150](v40, 0x1000C8077774924);
            }
          }

          while (v38 != v37);
          v39 = v53;
        }

        v54 = v37;
        operator delete(v39);
      }

      if (v50 != &v52)
      {
        free(v50);
      }
    }
  }

  return v33;
}

void mlir::tensor::GenerateOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a8 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v11), a7, 16 * a8);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a8;
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::tensor::GenerateOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0 && (v3 = *(v2 + 17), v3))
  {
    v4 = 0;
    v5 = *(v2 + 9) + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v5 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v4) & 1) != 0)
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
    v6 = *(v2 + 9);
    v7 = v2 - 16;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v8, 0);
    if (mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0))
    {
      return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "body", 4, 0) & 1;
    }
  }

  return 0;
}

void mlir::tensor::GenerateOp::parse(mlir::tensor::GenerateOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v5[16] = *MEMORY[0x277D85DE8];
  v3 = v5;
  v4 = 0x400000000;
  operator new();
}

unint64_t mlir::tensor::detail::InsertOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::InsertOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "_120ChainedTensorBitcastE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257389F05 + v6 + 2;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257389F05 + v23 + 2);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257389F05 + v5 + 2))
  {
    v31 = (a3 - 2) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 3));
}

uint64_t mlir::tensor::InsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v13 = a5;
  v14 = a4;
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v12 = *(a2 + 72);
  if (v12 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v12) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::tensor::InsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v22 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a3;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  __src = v20;
  v19 = 0x200000000;
  mlir::ValueRange::ValueRange(&v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v16, *(a2 + 224), *(a2 + 232));
  v21 = v17;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v10 = mlir::ValueRange::dereference_iterator(&v21, 1);
  v11 = __src;
  *__src = *(v10 + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = v19;
  v13 = *(a2 + 72);
  if (v13 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v13), v11, 8 * v19);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + v12;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::InsertOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::tensor::InsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v17 = a6;
  v18 = a5;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  result = mlir::OperationState::addOperands(a2, a7, a8);
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

unint64_t mlir::tensor::InsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::tensor::InsertOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v20;
  v19 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v17, *(a2 + 224), *(a2 + 232));
  v21[0] = a3;
  v21[1] = a4;
  if (v19 != 1)
  {
    if (!v19)
    {
      if (!HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v19) = 1;
  }

  v13 = mlir::ValueRange::dereference_iterator(v21, 1);
  v14 = __src;
  *__src = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
  v15 = v19;
  v16 = *(a2 + 72);
  if (v16 + v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v16), v14, 8 * v19);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v20)
  {
    free(__src);
  }
}

BOOL mlir::tensor::InsertOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 17);
    if (v3 == 2)
    {
      goto LABEL_4;
    }

    if (mlir::tensor::InsertOp::verifyInvariantsImpl(*(v2 + 9) + 64, this, v3, v28))
    {
      return 0;
    }
  }

  else if (mlir::tensor::InsertOp::verifyInvariantsImpl(64, this, 0, v28))
  {
    return 0;
  }

  v2 = v28[0];
LABEL_4:
  v4 = *(v2 + 9);
  v5 = v2 - 16;
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v9 = *this - 16;
  }

  else
  {
    v9 = 0;
  }

  v8 = *(*(*(*this + 9) + 56) + 8);
  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) ^ v8) >= 8)
  {
    v26[0] = "failed to verify that result type matches type of dest";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v12 = __p;
      if (__p)
      {
        v13 = v34;
        v14 = __p;
        if (v34 != __p)
        {
          do
          {
            v13 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v34 = v12;
        operator delete(v14);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_47;
      }

      do
      {
        v19 = *--v16;
        v18 = v19;
        *v16 = 0;
        if (v19)
        {
          MEMORY[0x259C63150](v18, 0x1000C8077774924);
        }
      }

      while (v16 != v15);
      goto LABEL_46;
    }
  }

  else
  {
    v28[0] = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (mlir::TensorType::getElementType(v28) == (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      return 1;
    }

    v26[0] = "failed to verify that scalar type matches element type of dest";
    v27 = 259;
    mlir::OpState::emitOpError(this, v26, v28);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v28);
    v11 = result;
    if (v28[0])
    {
      mlir::InFlightDiagnostic::report(v28);
      result = v11;
    }

    if (v36 == 1)
    {
      if (v35 != &v36)
      {
        free(v35);
        result = v11;
      }

      v20 = __p;
      if (__p)
      {
        v21 = v34;
        v22 = __p;
        if (v34 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v34 = v20;
        operator delete(v22);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_48;
      }

      v23 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_47:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_48:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v25 = *--v23;
        v24 = v25;
        *v23 = 0;
        if (v25)
        {
          MEMORY[0x259C63150](v24, 0x1000C8077774924);
        }
      }

      while (v23 != v15);
LABEL_46:
      v17 = v31;
      goto LABEL_47;
    }
  }

  return result;
}

BOOL mlir::tensor::InsertOp::parse(mlir::tensor::InsertOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v43[16] = *MEMORY[0x277D85DE8];
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v34[0] = v35;
  v34[1] = 1;
  v41 = v43;
  v42 = 0x400000000;
  v32[1] = 1;
  v33 = 0;
  v32[0] = &v33;
  (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v37, 1) & 1) == 0)
  {
    goto LABEL_34;
  }

  v40 = 257;
  if (((*(*this + 400))(this, "into", 4, v39) & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v35, 1) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_34;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v41, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_34;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_34;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_34;
  }

  v39[0] = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, v39))
  {
    goto LABEL_34;
  }

  v6 = v39[0];
  v33 = v39[0];
  v31 = v39[0];
  v7 = *v39[0];
  if (*(*v39[0] + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = (*(*this + 16))(this);
    v30[16] = 257;
    (*(*this + 24))(v39, this, v8, v30);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v39, "'dest' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v9, &v31);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v39);
    v12 = v41;
    if (v41 == v43)
    {
      return v11;
    }

    goto LABEL_36;
  }

  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (v15)
    {
      goto LABEL_15;
    }

LABEL_22:
    v15 = 0;
    v16 = v14;
    goto LABEL_23;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_22;
  }

LABEL_15:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
LABEL_23:
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
  }

  else
  {
    v22 = 0;
  }

  v39[0] = v6;
  v39[1] = v22;
  mlir::ShapedType::getElementType(v39);
  v23 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v23, v24);
  mlir::OperationState::addTypes(a2, v32[0], 1);
  v39[0] = *v32[0];
  ElementType = mlir::TensorType::getElementType(v39);
  if ((*(*this + 728))(this, v37, ElementType, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v34, v32, v5, a2 + 16))
  {
    if (!v42)
    {
      v11 = 1;
      v12 = v41;
      if (v41 == v43)
      {
        return v11;
      }

      goto LABEL_36;
    }

    v27 = v41;
    v28 = 32 * v42;
    while (((*(*this + 728))(this, v27, IndexType, a2 + 16) & 1) != 0)
    {
      v27 += 4;
      v11 = 1;
      v28 -= 32;
      if (!v28)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  v11 = 0;
LABEL_35:
  v12 = v41;
  if (v41 != v43)
  {
LABEL_36:
    free(v12);
  }

  return v11;
}

uint64_t mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::InsertSliceOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = (a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  v4 = *v3;
  v5 = v3[1];
  *(a1 + 56) = v3[2];
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 72), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 72), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::InsertSliceOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::tensor::InsertSliceOpAdaptor::verify(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1[3])
  {
    if (a1[4])
    {
      if (a1[5])
      {
        return 1;
      }

      v24[0] = "'tensor.insert_slice' op requires attribute 'static_strides'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v32;
          v19 = __p;
          if (v32 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v32 = v17;
          operator delete(v19);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v20 = v30;
        v8 = v29;
        if (v30 == v29)
        {
LABEL_54:
          v30 = v6;
          operator delete(v8);
LABEL_55:
          if (v27 != &v28)
          {
            free(v27);
          }

          return v2;
        }

        do
        {
          v22 = *--v20;
          v21 = v22;
          *v20 = 0;
          if (v22)
          {
            MEMORY[0x259C63150](v21, 0x1000C8077774924);
          }
        }

        while (v20 != v6);
LABEL_53:
        v8 = v29;
        goto LABEL_54;
      }
    }

    else
    {
      v24[0] = "'tensor.insert_slice' op requires attribute 'static_sizes'";
      v25 = 259;
      mlir::emitError(a2, v24, v26);
      v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
      if (v26[0])
      {
        mlir::InFlightDiagnostic::report(v26);
      }

      if (v34 == 1)
      {
        if (v33 != &v34)
        {
          free(v33);
        }

        v11 = __p;
        if (__p)
        {
          v12 = v32;
          v13 = __p;
          if (v32 != __p)
          {
            do
            {
              v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
            }

            while (v12 != v11);
            v13 = __p;
          }

          v32 = v11;
          operator delete(v13);
        }

        v6 = v29;
        if (!v29)
        {
          goto LABEL_55;
        }

        v14 = v30;
        v8 = v29;
        if (v30 == v29)
        {
          goto LABEL_54;
        }

        do
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            MEMORY[0x259C63150](v15, 0x1000C8077774924);
          }
        }

        while (v14 != v6);
        goto LABEL_53;
      }
    }
  }

  else
  {
    v24[0] = "'tensor.insert_slice' op requires attribute 'static_offsets'";
    v25 = 259;
    mlir::emitError(a2, v24, v26);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
    if (v26[0])
    {
      mlir::InFlightDiagnostic::report(v26);
    }

    if (v34 == 1)
    {
      if (v33 != &v34)
      {
        free(v33);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v32;
        v5 = __p;
        if (v32 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v32 = v3;
        operator delete(v5);
      }

      v6 = v29;
      if (!v29)
      {
        goto LABEL_55;
      }

      v7 = v30;
      v8 = v29;
      if (v30 == v29)
      {
        goto LABEL_54;
      }

      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x259C63150](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      goto LABEL_53;
    }
  }

  return v2;
}

unint64_t mlir::tensor::InsertSliceOp::getODSOperandIndexAndLength(mlir::tensor::InsertSliceOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::tensor::InsertSliceOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "static_offsets", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_sizes", 0xCuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_strides", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
        {
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::tensor::InsertSliceOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "static_offsets", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "static_sizes", 0xC, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_strides", 0xE, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::tensor::InsertSliceOp::computePropertiesHash(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = 0xB492B66FBE98F273 * a1[3];
  v11 = a1[4];
  v12 = 0x9AE16A3B2F90404FLL * *(a1 + 36);
  v13 = __ROR8__(v10 - v11, 43) - 0x3C5A37A36834CED9 * *(a1 + 28) + __ROR8__(v12 ^ 0xFF51AFD7ED558CCDLL, 30);
  v14 = v10 + __ROR8__(v11 ^ 0xC949D7C7509E6557, 20) - 0xAE502812AA7333 - v12 + 20;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  v24 = 0;
  v25 = 0xFF51AFD7ED558CCDLL;
  v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v14 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) >> 47));
  v21[0] = v3;
  v21[1] = v6;
  v19 = 0;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v19, v22, v23, v9);
  v20 = v19;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v21, &v20, v16, v23, v15);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v21, v20, v17, v23);
}

uint64_t mlir::tensor::InsertSliceOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 18)
  {
    if (__n == 19)
    {
      if (memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        return 0;
      }
    }

    else if (__n != 21 || memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
      return 0;
    }

    mlir::detail::DenseArrayAttrImpl<int>::get();
  }

  if (__n == 12)
  {
    if (!memcmp(__s1, "static_sizes", 0xCuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (__n != 14)
  {
    return 0;
  }

  if (*__s1 != 0x6F5F636974617473 || *(__s1 + 6) != 0x7374657366666F5FLL)
  {
    if (!memcmp(__s1, "static_strides", 0xEuLL))
    {
      return a2[2];
    }

    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::InsertSliceOp::setInherentAttr(uint64_t result, char *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 > 18)
  {
    if (a3 == 19)
    {
      result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3 != 21)
      {
        return result;
      }

      result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
      if (result)
      {
        return result;
      }
    }

    if (a4)
    {
      mlir::detail::DenseArrayAttrImpl<int>::classof();
    }
  }

  else if (a3 == 12)
  {
    result = memcmp(__s1, "static_sizes", 0xCuLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 8) = 0;
    }
  }

  else if (a3 == 14)
  {
    if (*__s1 == 0x6F5F636974617473 && *(__s1 + 6) == 0x7374657366666F5FLL)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *result = 0;
    }

    else
    {
      result = memcmp(__s1, "static_strides", 0xEuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 16) = 0;
      }
    }
  }

  return result;
}

void mlir::tensor::InsertSliceOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "static_offsets", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "static_sizes", 0xCuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_strides", 0xEuLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::tensor::InsertSliceOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::InsertSliceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if ((*(*a1 + 40))(a1) > 5)
  {
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 5uLL)))
    {
      return 1;
    }
  }

  else
  {
    v15 = 0;
    if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
    {
      if (mlir::DenseArrayAttr::getSize(&v15) < 6)
      {
        mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
      }

      v13 = "size mismatch for operand/result_segment_size";
      v14 = 259;
      (*(*a1 + 16))(v16, a1, &v13);
      if (v16[0])
      {
        mlir::InFlightDiagnostic::report(v16);
      }

      if (v24 == 1)
      {
        if (v23 != &v24)
        {
          free(v23);
        }

        v4 = __p;
        if (__p)
        {
          v5 = v22;
          v6 = __p;
          if (v22 != __p)
          {
            do
            {
              v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
            }

            while (v5 != v4);
            v6 = __p;
          }

          v22 = v4;
          operator delete(v6);
        }

        v7 = v19;
        if (v19)
        {
          v8 = v20;
          v9 = v19;
          if (v20 != v19)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                MEMORY[0x259C63150](v10, 0x1000C8077774924);
              }
            }

            while (v8 != v7);
            v9 = v19;
          }

          v20 = v7;
          operator delete(v9);
        }

        if (v17 != &v18)
        {
          free(v17);
        }
      }
    }
  }

  return 0;
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
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
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

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = *MEMORY[0x277D85DE8];
  v27 = a4;
  v28 = a3;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *(v18 + 24) = 0x100000001;
  *(v18 + 32) = a6;
  *(v18 + 36) = a8;
  *(v18 + 40) = a10;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *v19 = a11;
  v20 = *(a2 + 256);
  if (!v20)
  {
    operator new();
  }

  *(v20 + 8) = a12;
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 16) = a13;
  __src = v33;
  v32 = 0x200000000;
  mlir::ValueRange::ValueRange(&v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v29, *(a2 + 224), *(a2 + 232));
  v34 = v30;
  if (v32 != 1)
  {
    if (!v32)
    {
      if (!HIDWORD(v32))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v32) = 1;
  }

  v23 = mlir::ValueRange::dereference_iterator(&v34, 1);
  v24 = __src;
  *__src = *(v23 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = v32;
  v26 = *(a2 + 72);
  if (v26 + v32 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v32)
  {
    memcpy((*(a2 + 64) + 8 * v26), v24, 8 * v32);
    LODWORD(v26) = *(a2 + 72);
  }

  *(a2 + 72) = v26 + v25;
  if (__src != v33)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::InsertSliceOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a6;
  v29 = a5;
  mlir::OperationState::addOperands(a2, &v29, 1uLL);
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  result = mlir::OperationState::addOperands(a2, a11, a12);
  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *(v21 + 24) = 0x100000001;
  *(v21 + 32) = a8;
  *(v21 + 36) = a10;
  *(v21 + 40) = a12;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *v22 = a13;
  v23 = *(a2 + 256);
  if (!v23)
  {
    operator new();
  }

  *(v23 + 8) = a14;
  v24 = *(a2 + 256);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 16) = a15;
  v25 = *(a2 + 72);
  if (a4 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v26 = 0;
    v27 = *(a2 + 64) + 8 * v25;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v26);
      *(v27 + 8 * v26++) = result;
    }

    while (a4 != v26);
    LODWORD(v25) = *(a2 + 72);
  }

  *(a2 + 72) = v25 + a4;
  return result;
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a5;
  v17 = a4;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a6, a7);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = a7;
  *(v15 + 36) = a10;
  *(v15 + 40) = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10)
{
  v17[11] = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17[0] = a3;
  mlir::OperationState::addOperands(a2, v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a5, a6);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = a6;
  *(v15 + 36) = a8;
  *(v15 + 40) = a10;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12)
{
  v16 = a6;
  v17 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::OperationState::addOperands(a2, a9, a10);
  mlir::OperationState::addOperands(a2, a11, a12);
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = a8;
  *(v15 + 36) = a10;
  *(v15 + 40) = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::tensor::InsertSliceOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 1);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::tensor::InsertSliceOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v67 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  if (!v6)
  {
    v56[0] = "requires attribute 'static_offsets'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v33 = __p;
    if (__p)
    {
      v34 = v64;
      v35 = __p;
      if (v64 != __p)
      {
        do
        {
          v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
        }

        while (v34 != v33);
        v35 = __p;
      }

      v64 = v33;
      operator delete(v35);
    }

    v36 = v61;
    if (v61)
    {
      v37 = v62;
      v38 = v61;
      if (v62 != v61)
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
        goto LABEL_81;
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v56[0] = "requires attribute 'static_sizes'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v41 = __p;
    if (__p)
    {
      v42 = v64;
      v43 = __p;
      if (v64 != __p)
      {
        do
        {
          v42 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v42 - 1);
        }

        while (v42 != v41);
        v43 = __p;
      }

      v64 = v41;
      operator delete(v43);
    }

    v36 = v61;
    if (v61)
    {
      v44 = v62;
      v38 = v61;
      if (v62 != v61)
      {
        do
        {
          v46 = *--v44;
          v45 = v46;
          *v44 = 0;
          if (v46)
          {
            MEMORY[0x259C63150](v45, 0x1000C8077774924);
          }
        }

        while (v44 != v36);
        goto LABEL_81;
      }

LABEL_82:
      v62 = v36;
      operator delete(v38);
    }

LABEL_83:
    if (v59 != &v60)
    {
      free(v59);
    }

    return v32;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v56[0] = "requires attribute 'static_strides'";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    if (v58[0])
    {
      mlir::InFlightDiagnostic::report(v58);
    }

    if (v66 != 1)
    {
      return v32;
    }

    if (v65 != &v66)
    {
      free(v65);
    }

    v47 = __p;
    if (__p)
    {
      v48 = v64;
      v49 = __p;
      if (v64 != __p)
      {
        do
        {
          v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
        }

        while (v48 != v47);
        v49 = __p;
      }

      v64 = v47;
      operator delete(v49);
    }

    v36 = v61;
    if (v61)
    {
      v50 = v62;
      v38 = v61;
      if (v62 != v61)
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

        while (v50 != v36);
LABEL_81:
        v38 = v61;
        goto LABEL_82;
      }

      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v58[0] = v2;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) == 0)
  {
    return 0;
  }

  v58[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v7) & 1) == 0)
  {
    return 0;
  }

  v58[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8) & 1) == 0)
  {
    return 0;
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
      while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v13 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) != 0)
      {
        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }
  }

LABEL_12:
  ODSOperands = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 1u);
  if (v15)
  {
    v16 = v15;
    v17 = ODSOperands + 24;
    while ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(*v17 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v17 += 32;
      if (!--v16)
      {
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  v18 = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 2u);
  if (v19)
  {
    v20 = v19;
    v21 = v18 + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v21 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v21 += 32;
      if (!--v20)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

LABEL_20:
  v22 = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 3u);
  if (v23)
  {
    v24 = v23;
    v25 = v22 + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v25 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v25 += 32;
      if (!--v24)
      {
        goto LABEL_24;
      }
    }

    return 0;
  }

LABEL_24:
  v26 = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 4u);
  if (v27)
  {
    v28 = v27;
    v29 = v26 + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v29 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
    {
      LODWORD(v10) = v10 + 1;
      v29 += 32;
      if (!--v28)
      {
        goto LABEL_28;
      }
    }

    return 0;
  }

LABEL_28:
  v30 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v32 = 1;
  v54 = *(*(mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 1u) + 24) + 8);
  if (*(*this + 9))
  {
    v55 = *this - 16;
  }

  else
  {
    v55 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v55, 0) + 8) ^ v54) >= 8)
  {
    v56[0] = "failed to verify that expected result type to match dest type";
    v57 = 259;
    mlir::OpState::emitOpError(this, v56, v58);
    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v58);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v58);
  }

  return v32;
}

uint64_t mlir::tensor::InsertSliceOp::verifyInvariants(mlir::tensor::InsertSliceOp *this)
{
  if (mlir::tensor::InsertSliceOp::verifyInvariantsImpl(this))
  {
    mlir::tensor::InsertSliceOp::verify(this);
  }

  return 0;
}

BOOL mlir::tensor::InsertSliceOp::parse(mlir::tensor::InsertSliceOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v62[16] = *MEMORY[0x277D85DE8];
  memset(v48, 0, sizeof(v48));
  v49 = 0;
  v47[0] = v48;
  v47[1] = 1;
  memset(v45, 0, sizeof(v45));
  v46 = 0;
  v44[0] = v45;
  v44[1] = 1;
  v60 = v62;
  v61 = 0x400000000;
  v42 = 0;
  v43 = 0;
  v57 = v59;
  v58 = 0x400000000;
  v54 = v56;
  v55 = 0x400000000;
  v40 = 0;
  v41 = 0;
  v39[0] = &v40;
  v39[1] = 1;
  v37 = 1;
  v38 = 0;
  v36 = &v38;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v48, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  v53 = 257;
  if (((*(*this + 400))(this, "into", 4, &v50) & 1) == 0)
  {
    goto LABEL_36;
  }

  v6 = (*(*this + 40))(this);
  if (((*(*this + 704))(this, v45, 1) & 1) == 0)
  {
    goto LABEL_36;
  }

  (*(*this + 40))(this);
  v50 = 0;
  if (!mlir::parseDynamicIndexList(this, &v60, &v43, &v50, 0))
  {
    goto LABEL_36;
  }

  v7 = *(a2 + 32);
  if (!v7)
  {
    operator new();
  }

  *v7 = v43;
  (*(*this + 40))(this);
  v50 = 0;
  if (!mlir::parseDynamicIndexList(this, &v57, &v42, &v50, 0))
  {
    goto LABEL_36;
  }

  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 8) = v42;
  (*(*this + 40))(this);
  v50 = 0;
  if (!mlir::parseDynamicIndexList(this, &v54, &v41, &v50, 0))
  {
    goto LABEL_36;
  }

  v9 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v9 + 16) = v41;
  v33[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_36;
  }

  v10 = *(a2 + 1);
  v50 = this;
  v51 = v33;
  v52 = a2;
  if (!mlir::tensor::InsertSliceOp::verifyInherentAttrs(v10, a2 + 112))
  {
    goto LABEL_36;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_36;
  }

  v50 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v50))
  {
    goto LABEL_36;
  }

  v40 = v50;
  v53 = 257;
  if (((*(*this + 400))(this, "into", 4, &v50) & 1) == 0)
  {
    goto LABEL_36;
  }

  v50 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v50))
  {
    goto LABEL_36;
  }

  v38 = v50;
  v11 = v61;
  v12 = v58;
  v13 = v55;
  v14 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v14 + 24) = 0x100000001;
  *(v14 + 32) = v11;
  *(v14 + 36) = v12;
  *(v14 + 40) = v13;
  v32 = v36;
  if (!v37)
  {
LABEL_21:
    v18 = (*(*this + 32))(this);
    IndexType = mlir::Builder::getIndexType(v18, v19);
    mlir::OperationState::addTypes(a2, v32, 1);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v47, v39, v5, a2 + 16) & 1) != 0 && (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v44, &v36, v6, a2 + 16))
    {
      if (v61)
      {
        v20 = v60;
        v21 = 32 * v61;
        while (((*(*this + 728))(this, v20, IndexType, a2 + 16) & 1) != 0)
        {
          v20 += 32;
          v21 -= 32;
          if (!v21)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        if (v58)
        {
          v22 = v57;
          v23 = 32 * v58;
          while (((*(*this + 728))(this, v22, IndexType, a2 + 16) & 1) != 0)
          {
            v22 += 32;
            v23 -= 32;
            if (!v23)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          if (!v55)
          {
            v26 = 1;
            goto LABEL_37;
          }

          v24 = v54;
          v25 = 32 * v55;
          while (((*(*this + 728))(this, v24, IndexType, a2 + 16) & 1) != 0)
          {
            v24 += 32;
            v26 = 1;
            v25 -= 32;
            if (!v25)
            {
              goto LABEL_37;
            }
          }
        }
      }
    }

LABEL_36:
    v26 = 0;
    goto LABEL_37;
  }

  v15 = 8 * v37;
  v16 = v36;
  while (1)
  {
    v35 = *v16;
    if (*(*v35 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      break;
    }

    v50 = llvm::cast<mlir::ShapedType,mlir::Type>(&v35);
    v51 = v17;
    mlir::ShapedType::getElementType(&v50);
    ++v16;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v28 = (*(*this + 16))(this);
  v34 = 257;
  (*(*this + 24))(&v50, this, v28, v33);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v50, "'dest' must be ranked tensor of any type values, but got ");
  mlir::InFlightDiagnostic::append<mlir::Type const&>(v29, &v35);
  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
LABEL_37:
  if (v54 != v56)
  {
    free(v54);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  if (v60 != v62)
  {
    free(v60);
  }

  return v26;
}

uint64_t mlir::tensor::detail::PackOpGenericAdaptorBase::PackOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

{
  *a1 = *(a2 + 56);
  *(a1 + 8) = *(a2 + 48);
  *(a1 + 16) = 1;
  v3 = a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1);
  v4 = *v3;
  v5 = *(v3 + 16);
  *(a1 + 56) = *(v3 + 32);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    mlir::RegionRange::RegionRange((a1 + 64), ((a2 + 64 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40), v6 & 0x7FFFFF);
  }

  else
  {
    mlir::RegionRange::RegionRange((a1 + 64), 0, 0);
  }

  return a1;
}

unint64_t mlir::tensor::detail::PackOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::tensor::detail::PackOpGenericAdaptorBase *this, unsigned int a2)
{
  v2 = (this + 48);
  if (!a2)
  {
    return *v2 << 32;
  }

  if (a2 > 7)
  {
    v3 = a2 & 0xFFFFFFF8;
    v6 = (this + 64);
    v7 = 0uLL;
    v8 = v3;
    v9 = 0uLL;
    do
    {
      v7 = vaddq_s32(v6[-1], v7);
      v9 = vaddq_s32(*v6, v9);
      v6 += 2;
      v8 -= 8;
    }

    while (v8);
    v4 = vaddvq_s32(vaddq_s32(v9, v7));
    if (v3 == a2)
    {
      return v4 | (v2[a2] << 32);
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v10 = (this + 4 * v3 + 48);
  v11 = a2 - v3;
  do
  {
    v12 = *v10++;
    v4 += v12;
    --v11;
  }

  while (v11);
  return v4 | (v2[a2] << 32);
}

uint64_t mlir::tensor::detail::PackOpGenericAdaptorBase::getOuterDimsPermAttr(mlir::tensor::detail::PackOpGenericAdaptorBase *this)
{
  result = *(this + 4);
  if (!result)
  {
    mlir::Attribute::getContext(this);
    mlir::Builder::getDenseI64ArrayAttr();
  }

  return result;
}

void mlir::tensor::detail::PackOpGenericAdaptorBase::getOuterDimsPerm(mlir::tensor::detail::PackOpGenericAdaptorBase *this)
{
  if (*(this + 4))
  {
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>();
  }

  mlir::Attribute::getContext(this);
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::PackOpAdaptor::verify(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24))
  {
    if (*(a1 + 40))
    {
      return 1;
    }

    v18[0] = "'tensor.pack' op requires attribute 'static_inner_tiles'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v11 = __p;
      if (__p)
      {
        v12 = v26;
        v13 = __p;
        if (v26 != __p)
        {
          do
          {
            v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
          }

          while (v12 != v11);
          v13 = __p;
        }

        v26 = v11;
        operator delete(v13);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v14 = v24;
      v8 = v23;
      if (v24 == v23)
      {
LABEL_37:
        v24 = v6;
        operator delete(v8);
LABEL_38:
        if (v21 != &v22)
        {
          free(v21);
        }

        return v2;
      }

      do
      {
        v16 = *--v14;
        v15 = v16;
        *v14 = 0;
        if (v16)
        {
          MEMORY[0x259C63150](v15, 0x1000C8077774924);
        }
      }

      while (v14 != v6);
LABEL_36:
      v8 = v23;
      goto LABEL_37;
    }
  }

  else
  {
    v18[0] = "'tensor.pack' op requires attribute 'inner_dims_pos'";
    v19 = 259;
    mlir::emitError(a2, v18, v20);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v3 = __p;
      if (__p)
      {
        v4 = v26;
        v5 = __p;
        if (v26 != __p)
        {
          do
          {
            v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
          }

          while (v4 != v3);
          v5 = __p;
        }

        v26 = v3;
        operator delete(v5);
      }

      v6 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }

      v7 = v24;
      v8 = v23;
      if (v24 == v23)
      {
        goto LABEL_37;
      }

      do
      {
        v10 = *--v7;
        v9 = v10;
        *v7 = 0;
        if (v10)
        {
          MEMORY[0x259C63150](v9, 0x1000C8077774924);
        }
      }

      while (v7 != v6);
      goto LABEL_36;
    }
  }

  return v2;
}

unint64_t mlir::tensor::PackOp::getODSOperandIndexAndLength(mlir::tensor::PackOp *this, unsigned int a2)
{
  v2 = (*(*this + 44) >> 23) & 1;
  v3 = *this + 16 * v2;
  v4 = (v3 + 88);
  if (!a2)
  {
    return *v4 << 32;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (v3 + 104);
    v9 = 0uLL;
    v10 = v5;
    v11 = 0uLL;
    do
    {
      v9 = vaddq_s32(v8[-1], v9);
      v11 = vaddq_s32(*v8, v11);
      v8 += 2;
      v10 -= 8;
    }

    while (v10);
    v6 = vaddvq_s32(vaddq_s32(v11, v9));
    if (v5 == a2)
    {
      return v6 | (v4[a2] << 32);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = (16 * v2 + 4 * v5 + *this + 88);
  v13 = a2 - v5;
  do
  {
    v14 = *v12++;
    v6 += v14;
    --v13;
  }

  while (v13);
  return v6 | (v4[a2] << 32);
}

uint64_t mlir::tensor::PackOp::setPropertiesFromAttr(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v16 = v4;
  if (v4)
  {
    if (mlir::DictionaryAttr::get(&v16, "inner_dims_pos", 0xEuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "outer_dims_perm", 0xFuLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "static_inner_tiles", 0x12uLL))
    {
      mlir::detail::DenseArrayAttrImpl<long long>::classof();
    }

    if (mlir::DictionaryAttr::get(&v16, "operandSegmentSizes", 0x13uLL) || mlir::DictionaryAttr::get(&v16, "operand_segment_sizes", 0x15uLL))
    {
      mlir::convertFromAttribute();
    }

    return 1;
  }

  else
  {
    a3(v19, a4);
    if (v19[0])
    {
      LODWORD(v17) = 3;
      *(&v17 + 1) = "expected DictionaryAttr to set properties";
      v18 = 41;
      if (v21 >= v22)
      {
        if (v20 > &v17 || v20 + 24 * v21 <= &v17)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v6 = v20 + 24 * v21;
      v7 = v17;
      *(v6 + 2) = v18;
      *v6 = v7;
      ++v21;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
      }
    }

    if (v29 == 1)
    {
      if (v28 != &v29)
      {
        free(v28);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v27;
        v10 = __p;
        if (v27 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v27 = v8;
        operator delete(v10);
      }

      v11 = v24;
      if (v24)
      {
        v12 = v25;
        v13 = v24;
        if (v25 != v24)
        {
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
          v13 = v24;
        }

        v25 = v11;
        operator delete(v13);
      }

      if (v20 != &v23)
      {
        free(v20);
      }
    }

    return 0;
  }
}

void mlir::tensor::PackOp::getPropertiesAsAttr(mlir::StringAttr *a1, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v14 = a1;
  v15 = v17;
  v16 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v14, "inner_dims_pos", 0xE, *a2);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = (v15 + 16 * v16);
    *v5 = NamedAttr;
    v5[1] = v4;
    LODWORD(v16) = v16 + 1;
  }

  v6 = a2[1];
  if (v6)
  {
    v7 = mlir::Builder::getNamedAttr(&v14, "outer_dims_perm", 0xF, v6);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v9 = (v15 + 16 * v16);
    *v9 = v7;
    v9[1] = v8;
    LODWORD(v16) = v16 + 1;
  }

  v10 = a2[2];
  if (v10)
  {
    v11 = mlir::Builder::getNamedAttr(&v14, "static_inner_tiles", 0x12, v10);
    if (v16 >= HIDWORD(v16))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v13 = (v15 + 16 * v16);
    *v13 = v11;
    v13[1] = v12;
    LODWORD(v16) = v16 + 1;
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

unint64_t mlir::tensor::PackOp::computePropertiesHash(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = a1[4];
  v10 = __ROR8__(v9 + 16, 16);
  v11 = 0x9DDFEA08EB382D69 * (a1[3] ^ 0xFF51AFD7ED558CCDLL ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  v18[0] = v3;
  v18[1] = v6;
  v16 = 0;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v16, v19, v20, 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47)));
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(v18, &v17, v13, v20, v12 ^ v9);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(v18, v17, v14, v20);
}

uint64_t mlir::tensor::PackOp::getInherentAttr(int a1, void *a2, char *__s1, uint64_t __n)
{
  if (__n > 17)
  {
    if (__n == 18)
    {
      if (!memcmp(__s1, "static_inner_tiles", 0x12uLL))
      {
        return a2[2];
      }
    }

    else if (__n == 19)
    {
      if (!memcmp(__s1, "operandSegmentSizes", 0x13uLL))
      {
        goto LABEL_14;
      }
    }

    else if (__n == 21 && !memcmp(__s1, "operand_segment_sizes", 0x15uLL))
    {
LABEL_14:
      mlir::detail::DenseArrayAttrImpl<int>::get();
    }

    return 0;
  }

  if (__n != 14)
  {
    if (__n == 15 && !memcmp(__s1, "outer_dims_perm", 0xFuLL))
    {
      return a2[1];
    }

    return 0;
  }

  if (*__s1 != 0x69645F72656E6E69 || *(__s1 + 6) != 0x736F705F736D6964)
  {
    return 0;
  }

  return *a2;
}

uint64_t mlir::tensor::PackOp::setInherentAttr(uint64_t result, void *__s1, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 <= 17)
  {
    if (a3 == 14)
    {
      if (*__s1 == 0x69645F72656E6E69 && *(__s1 + 6) == 0x736F705F736D6964)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *result = 0;
      }
    }

    else if (a3 == 15)
    {
      result = memcmp(__s1, "outer_dims_perm", 0xFuLL);
      if (!result)
      {
        if (a4)
        {
          mlir::detail::DenseArrayAttrImpl<long long>::classof();
        }

        *(v5 + 8) = 0;
      }
    }
  }

  else
  {
    if (a3 != 18)
    {
      if (a3 == 19)
      {
        result = memcmp(__s1, "operandSegmentSizes", 0x13uLL);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (a3 != 21)
        {
          return result;
        }

        result = memcmp(__s1, "operand_segment_sizes", 0x15uLL);
        if (result)
        {
          return result;
        }
      }

      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<int>::classof();
      }

      return result;
    }

    result = memcmp(__s1, "static_inner_tiles", 0x12uLL);
    if (!result)
    {
      if (a4)
      {
        mlir::detail::DenseArrayAttrImpl<long long>::classof();
      }

      *(v5 + 16) = 0;
    }
  }

  return result;
}

void mlir::tensor::PackOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttrList::append(a3, "inner_dims_pos", 0xEuLL, *a2);
  }

  v5 = a2[1];
  if (v5)
  {
    mlir::NamedAttrList::append(a3, "outer_dims_perm", 0xFuLL, v5);
  }

  v6 = a2[2];
  if (v6)
  {
    mlir::NamedAttrList::append(a3, "static_inner_tiles", 0x12uLL, v6);
  }

  mlir::detail::DenseArrayAttrImpl<int>::get();
}

BOOL mlir::tensor::PackOp::verifyInherentAttrs(uint64_t a1, uint64_t a2)
{
  v4 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v4 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v4) & 1) != 0)
  {
    v5 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v5 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) != 0)
    {
      v6 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v6 || (mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v6) & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t mlir::tensor::PackOp::readProperties(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1))
  {
    if ((*(*a1 + 40))(a1) > 5)
    {
      if (mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(a1) & 1) != 0 && ((*(*a1 + 40))(a1) < 6 || (mlir::DialectBytecodeReader::readSparseArray<int>(a1, (v3 + 24), 4uLL)))
      {
        return 1;
      }
    }

    else
    {
      v15 = 0;
      if (mlir::DialectBytecodeReader::readAttribute<mlir::detail::DenseArrayAttrImpl<int>>(a1))
      {
        if (mlir::DenseArrayAttr::getSize(&v15) < 5)
        {
          mlir::detail::DenseArrayAttrImpl<int>::operator llvm::ArrayRef<int>();
        }

        v13 = "size mismatch for operand/result_segment_size";
        v14 = 259;
        (*(*a1 + 16))(v16, a1, &v13);
        if (v16[0])
        {
          mlir::InFlightDiagnostic::report(v16);
        }

        if (v24 == 1)
        {
          if (v23 != &v24)
          {
            free(v23);
          }

          v4 = __p;
          if (__p)
          {
            v5 = v22;
            v6 = __p;
            if (v22 != __p)
            {
              do
              {
                v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
              }

              while (v5 != v4);
              v6 = __p;
            }

            v22 = v4;
            operator delete(v6);
          }

          v7 = v19;
          if (v19)
          {
            v8 = v20;
            v9 = v19;
            if (v20 != v19)
            {
              do
              {
                v11 = *--v8;
                v10 = v11;
                *v8 = 0;
                if (v11)
                {
                  MEMORY[0x259C63150](v10, 0x1000C8077774924);
                }
              }

              while (v8 != v7);
              v9 = v19;
            }

            v20 = v7;
            operator delete(v9);
          }

          if (v17 != &v18)
          {
            free(v17);
          }
        }
      }
    }
  }

  return 0;
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

uint64_t mlir::DialectBytecodeReader::readOptionalAttribute<mlir::detail::DenseArrayAttrImpl<long long>>(uint64_t a1)
{
  v2[32] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (((*(*a1 + 56))(a1, v2) & 1) == 0)
  {
    return 0;
  }

  if (v2[0])
  {
    mlir::detail::DenseArrayAttrImpl<long long>::classof();
  }

  return 1;
}

uint64_t mlir::tensor::PackOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v4 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  v6 = *(v4 + 64);
  v5 = v4 + 64;
  (*(*a2 + 16))(a2, v6);
  if ((*(*a2 + 104))(a2) <= 5)
  {
    mlir::Attribute::getContext((*a1 + 24));
    mlir::detail::DenseArrayAttrImpl<int>::get();
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

uint64_t mlir::tensor::PackOp::setOuterDimsPerm(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    mlir::Attribute::getContext((*result + 24));
    mlir::Builder::getDenseI64ArrayAttr();
  }

  *(*result + 16 * ((*(*result + 44) >> 23) & 1) + 72) = 0;
  return result;
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v34 = *MEMORY[0x277D85DE8];
  v26 = a4;
  v27 = a3;
  v25 = a5;
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v25, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a9, a10);
  v15 = v25 != 0;
  v16 = *(a2 + 256);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 24) = 0x100000001;
  *(v16 + 32) = v15;
  *(v16 + 36) = a10;
  if (a6)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 8) = a6;
  }

  v18 = *(a2 + 256);
  if (!v18)
  {
    operator new();
  }

  *v18 = a7;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 16) = a11;
  __src = v32;
  v31 = 0x200000000;
  mlir::ValueRange::ValueRange(&v29, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::RegionRange::RegionRange(&v28, *(a2 + 224), *(a2 + 232));
  v33 = v29;
  if (v31 != 1)
  {
    if (!v31)
    {
      if (!HIDWORD(v31))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v31) = 1;
  }

  v21 = mlir::ValueRange::dereference_iterator(&v33, 1);
  v22 = __src;
  *__src = *(v21 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = v31;
  v24 = *(a2 + 72);
  if (v24 + v31 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v31)
  {
    memcpy((*(a2 + 64) + 8 * v24), v22, 8 * v31);
    LODWORD(v24) = *(a2 + 72);
  }

  *(a2 + 72) = v24 + v23;
  if (__src != v32)
  {
    free(__src);
  }
}

uint64_t mlir::tensor::PackOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v13[0] = a4;
  v13[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v13, 1) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

unint64_t mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v27 = a6;
  v28 = a5;
  v26 = a7;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v26, 1uLL);
  }

  result = mlir::OperationState::addOperands(a2, a10, a11);
  v18 = v26 != 0;
  v19 = *(a2 + 256);
  if (!v19)
  {
    operator new();
  }

  *(v19 + 24) = 0x100000001;
  *(v19 + 32) = v18;
  *(v19 + 36) = a11;
  if (a8)
  {
    v20 = *(a2 + 256);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 8) = a8;
  }

  v21 = *(a2 + 256);
  if (!v21)
  {
    operator new();
  }

  *v21 = a9;
  v22 = *(a2 + 256);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 16) = a12;
  v23 = *(a2 + 72);
  if (a4 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v24 = 0;
    v25 = *(a2 + 64) + 8 * v23;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v24);
      *(v25 + 8 * v24++) = result;
    }

    while (a4 != v24);
    LODWORD(v23) = *(a2 + 72);
  }

  *(a2 + 72) = v23 + a4;
  return result;
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v17 = a5;
  v18 = a4;
  v16 = a6;
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a6)
  {
    mlir::OperationState::addOperands(a2, &v16, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a11, a12);
  v14 = v16 != 0;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = v14;
  *(v15 + 36) = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

{
  v18[11] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18[0] = a3;
  v16 = a5;
  mlir::OperationState::addOperands(a2, v18, 1uLL);
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  if (a5)
  {
    mlir::OperationState::addOperands(a2, &v16, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a11, a12);
  v14 = v16 != 0;
  v15 = *(a2 + 256);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 24) = 0x100000001;
  *(v15 + 32) = v14;
  *(v15 + 36) = a12;
  mlir::Builder::getDenseI64ArrayAttr();
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v19 = a6;
  v20 = a5;
  v18 = a7;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  if (a7)
  {
    mlir::OperationState::addOperands(a2, &v18, 1uLL);
  }

  mlir::OperationState::addOperands(a2, a13, a14);
  v16 = v18 != 0;
  v17 = *(a2 + 256);
  if (!v17)
  {
    operator new();
  }

  *(v17 + 24) = 0x100000001;
  *(v17 + 32) = v16;
  *(v17 + 36) = a14;
  mlir::Builder::getDenseI64ArrayAttr();
}

uint64_t mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  if (a8)
  {
    v18 = *(a2 + 256);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    result = (*(*v20 + 144))(v20, v19, v18, Dictionary, 0);
    if ((result & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  return result;
}

void mlir::tensor::PackOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    *(a2 + 120) += a6;
    v12 = *(a2 + 256);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 8);
    if (*(v13 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v14 + 144))(v14, v13, v12, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }

  else
  {
    *(a2 + 120) = v11;
  }

  __src = v25;
  v24 = 0x200000000;
  v17 = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), v17);
  mlir::RegionRange::RegionRange(&v22, *(a2 + 224), *(a2 + 232));
  v26[0] = a3;
  v26[1] = a4;
  if (v24 != 1)
  {
    if (!v24)
    {
      if (!HIDWORD(v24))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(__src, 8uLL);
    }

    LODWORD(v24) = 1;
  }

  v18 = mlir::ValueRange::dereference_iterator(v26, 1);
  v19 = __src;
  *__src = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
  v20 = v24;
  v21 = *(a2 + 72);
  if (v21 + v24 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v24)
  {
    memcpy((*(a2 + 64) + 8 * v21), v19, 8 * v24);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v20;
  if (__src != v25)
  {
    free(__src);
  }
}

BOOL mlir::tensor::PackOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v55[0] = "requires attribute 'inner_dims_pos'";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 != 1)
    {
      return v16;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v63;
      v19 = __p;
      if (v63 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v63 = v17;
      operator delete(v19);
    }

    v20 = v60;
    if (v60)
    {
      v21 = v61;
      v22 = v60;
      if (v61 != v60)
      {
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
        goto LABEL_44;
      }

LABEL_45:
      v61 = v20;
      operator delete(v22);
    }

LABEL_46:
    if (v58 != &v59)
    {
      free(v58);
    }

    return v16;
  }

  v7 = *(v4 + 16);
  if (!v7)
  {
    v55[0] = "requires attribute 'static_inner_tiles'";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v65 != 1)
    {
      return v16;
    }

    if (v64 != &v65)
    {
      free(v64);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v63;
      v27 = __p;
      if (v63 != __p)
      {
        do
        {
          v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v63 = v25;
      operator delete(v27);
    }

    v20 = v60;
    if (v60)
    {
      v28 = v61;
      v22 = v60;
      if (v61 != v60)
      {
        do
        {
          v30 = *--v28;
          v29 = v30;
          *v28 = 0;
          if (v30)
          {
            MEMORY[0x259C63150](v29, 0x1000C8077774924);
          }
        }

        while (v28 != v20);
LABEL_44:
        v22 = v60;
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    goto LABEL_46;
  }

  v8 = *(v4 + 8);
  v57[0] = v2;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v8) & 1) == 0)
  {
    return 0;
  }

  v57[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v5) & 1) == 0)
  {
    return 0;
  }

  v57[0] = *this;
  if ((mlir::scf::__mlir_ods_local_attr_constraint_SCFOps1(v7) & 1) == 0)
  {
    return 0;
  }

  v54 = 0;
  v9 = *(*this + 11);
  v10 = *(*this + 4 * ((v9 >> 23) & 1) + 22);
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
      while (1)
      {
        v14 = *this;
        v15 = *(*v13 + 8);
        v54 = v12 + 1;
        if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(v14, v15 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) == 0)
        {
          return 0;
        }

        ++v12;
        v13 += 32;
        if (v10 == v12)
        {
          goto LABEL_50;
        }
      }
    }
  }

  LODWORD(v12) = 0;
LABEL_50:
  ODSOperands = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 1u);
  if (v32)
  {
    v33 = v32;
    v34 = ODSOperands + 24;
    while (1)
    {
      v35 = *this;
      v36 = *(*v34 + 8);
      v37 = v12 + 1;
      v54 = v12 + 1;
      if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(v35, v36 & 0xFFFFFFFFFFFFFFF8, "operand", 7, v12) & 1) == 0)
      {
        return 0;
      }

      v34 += 32;
      LODWORD(v12) = v12 + 1;
      if (!--v33)
      {
        goto LABEL_56;
      }
    }
  }

  v37 = v12;
LABEL_56:
  mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 2u);
  v39 = v38;
  if (v38 > 1)
  {
    v55[0] = "operand group starting at #";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    mlir::InFlightDiagnostic::operator<<<unsigned int &>(v57, &v54);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v40, " requires 0 or 1 element, but found ");
    v53 = v39;
    mlir::InFlightDiagnostic::operator<<<unsigned long &>(v41, &v53);
LABEL_58:
    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v57);
    return v16;
  }

  v43 = mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 3u);
  if (v44)
  {
    v45 = v44;
    v46 = v37 + v39;
    v47 = v43 + 24;
    while ((mlir::scf::__mlir_ods_local_type_constraint_SCFOps4(*this, *(*v47 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v46) & 1) != 0)
    {
      ++v46;
      v47 += 32;
      if (!--v45)
      {
        goto LABEL_63;
      }
    }

    return 0;
  }

LABEL_63:
  v48 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v48, 0);
  if ((mlir::tensor::__mlir_ods_local_type_constraint_TensorOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  v16 = 1;
  v51 = *(*(mlir::pdl_interp::CreateOperationOp::getODSOperands(this, 1u) + 24) + 8);
  if (*(*this + 9))
  {
    v52 = *this - 16;
  }

  else
  {
    v52 = 0;
  }

  if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v52, 0) + 8) ^ v51) >= 8)
  {
    v55[0] = "failed to verify that result type matches type of dest";
    v56 = 259;
    mlir::OpState::emitOpError(this, v55, v57);
    v42 = v57;
    goto LABEL_58;
  }

  return v16;
}