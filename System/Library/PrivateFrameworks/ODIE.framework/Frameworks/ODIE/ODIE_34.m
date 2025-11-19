void mlir::ODIE::Compiler::extract1DFloatVector<float>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3 + 16 * v4 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v9, v6))
  {
LABEL_14:
    *a2 = 0;
    *(a2 + 64) = 0;
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::extract1DFloatVector<float>(v8, &v9);
  *a2 = a2 + 16;
  *(a2 + 8) = 0xC00000000;
  if (v10)
  {
    llvm::SmallVectorImpl<float>::operator=(a2, &v9);
  }

  *(a2 + 64) = 1;
  if (v9 != v11)
  {
    free(v9);
  }

LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::extract1DFloatVector<float>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v10 = a1;
  *a2 = a2 + 2;
  a2[1] = 0xC00000000;
  mlir::DenseElementsAttr::tryGetFloatValues(&v10, v11);
  v7 = v11[0];
  v8 = v11[1];
  v9 = v12;
  mlir::DenseElementsAttr::tryGetFloatValues(&v10, v11);
  v3 = v13;
  v4 = v8;
  while (v4 != v3)
  {
    llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v7, v11);
    v5 = llvm::APFloat::convertToFloat(v11);
    llvm::SmallVectorTemplateBase<float,true>::push_back(a2, v5);
    llvm::APFloat::Storage::~Storage(v11);
    v4 = v8 + 1;
    *&v8 = v8 + 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(void **a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(a2 + 48) + 32))(*(a2 + 48), v4))
  {
    v10[0] = v11;
    v10[1] = 0x100000000;
    mlir::Operation::fold(a2, 0, 0, v10);
    v5 = (*v10[0] & 0xFFFFFFFFFFFFFFF8);
    if (mlir::DenseFPElementsAttr::classof(v5))
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 != 0;
    if (v6 && *a1)
    {
      **a1 = v6;
    }

    if (v10[0] != v11)
    {
      free(v10[0]);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t llvm::SmallVectorImpl<float>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<float>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<float>::assignRemote(uint64_t a1, uint64_t a2)
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

void mlir::ODIE::Compiler::extract1DIntVector<BOOL>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9[0] = &v8;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3 + 16 * v4 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(v9, v6))
  {
LABEL_14:
    *a2 = 0;
    *(a2 + 64) = 0;
    goto LABEL_15;
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(v8, v9);
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A0550;
  if (v9[1])
  {
    llvm::SmallVectorImpl<BOOL>::operator=(a2, v9);
  }

  *(a2 + 64) = 1;
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

LABEL_15:
  v7 = *MEMORY[0x277D85DE8];
}

{
  *a2 = a2 + 24;
  *(a2 + 8) = xmmword_25D0A0550;
  v4 = *(a1 + 24);
  v19[0] = *(a1 + 32);
  v19[1] = v4;
  v20 = 0;
  v5 = *(a1 + 8);
  v6 = (*(*(a1 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v6);
  v7 = *(a1 + 8);
  v8 = (*(*(a1 + 16) + 24))();
  if (v9)
  {
    v10 = 8 * v9;
    v11 = 1;
    do
    {
      v12 = *v8++;
      v11 *= v12;
      v10 -= 8;
    }

    while (v10);
  }

  else
  {
    v11 = 1;
  }

  v13 = *(a1 + 8);
  v14 = (*(*(a1 + 16) + 8))();
  mlir::detail::getDenseElementBitWidth(v14);
  if (v11)
  {
    v15 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v19, &v17);
      v16 = llvm::APInt::getLimitedValue(&v17, 0xFFFFFFFFFFFFFFFFLL) != 0;
      llvm::SmallVectorTemplateBase<BOOL,true>::push_back(a2, v16);
      if (v18 >= 0x41)
      {
        if (v17)
        {
          MEMORY[0x25F891010](v17, 0x1000C8000313F17);
        }
      }

      v20 = v15++;
      --v11;
    }

    while (v11);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = a1;
  if (a1 && *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a1[4];
    if (!v4 || *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TensorEncodingAttr,void>::id)
    {
      v14 = a1[2];
      v31 = v33;
      v32 = 0xC00000000;
      llvm::SmallVectorImpl<int>::resizeImpl<false>(&v31, v14);
      v16 = v32;
      v17 = v31;
      if (v32 >= 1)
      {
        v18 = 0;
        v19 = (v32 + 3) & 0xFFFFFFFC;
        v20 = vdupq_n_s64(v32 - 1);
        v21 = xmmword_25D0A04F0;
        v22 = xmmword_25D0A0500;
        v23 = v31 + 8;
        v24 = vdupq_n_s64(4uLL);
        do
        {
          v25 = vmovn_s64(vcgeq_u64(v20, v22));
          if (vuzp1_s16(v25, *v20.i8).u8[0])
          {
            *(v23 - 2) = v18;
          }

          if (vuzp1_s16(v25, *&v20).i8[2])
          {
            *(v23 - 1) = v18 + 1;
          }

          if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
          {
            *v23 = v18 + 2;
            v23[1] = v18 + 3;
          }

          v18 += 4;
          v21 = vaddq_s64(v21, v24);
          v22 = vaddq_s64(v22, v24);
          v23 += 4;
        }

        while (v19 != v18);
        v16 = v32;
      }

      v4 = mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::get(*(**a1 + 32), v17, v16, v15);
      if (v31 != v33)
      {
        free(v31);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v28 = v4;
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  result = 0;
  if (v4 && v6)
  {
    v8 = v5;
    v9 = (*(v5 + 24))(v5, v6);
    v11 = v10;
    v12 = (*(v8 + 8))(v8, v6);
    v31 = &v29;
    if ((mlir::ODIE::Compiler::CoreML::TensorEncodingAttr::verifyEncoding(&v28, v9, v11, v12, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>, &v31) & 1) == 0)
    {
LABEL_27:
      result = 0;
      goto LABEL_28;
    }

    if (v4[2] >= 1)
    {
      v13 = 0;
      while (v13 == *(v4[1] + 4 * v13))
      {
        if ((v4[2] & 0x7FFFFFFFLL) == ++v13)
        {
          goto LABEL_11;
        }
      }

      v26 = *(a2 + 24);
      v31 = "only contiguous layout is supported";
      v33[8] = 259;
      emitDiag(v26, 2, &v31, v30);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v30);
      goto LABEL_27;
    }

LABEL_11:
    result = 1;
  }

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::hasSupportedEncoding(mlir::Type,mlir::Operation *)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(**(****a1 + 32) + 616);
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<258ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<100ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<129ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<63ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<114ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps6(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps7(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<69ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps8(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps9(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps10(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps11(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<101ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps12(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps13(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps14(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps15(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<133ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps16(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<115ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps17(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps18(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<83ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<131ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps19(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

uint64_t mlir::Diagnostic::operator<<<86ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::__mlir_ods_local_attr_constraint_CoreMLOps20(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>(mlir::Operation **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  mlir::Operation::emitOpError(v2, v3, a2);
}

void std::vector<long long>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t mlir::Diagnostic::operator<<<38ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::Diagnostic::operator<<<mlir::TensorType &>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8 = 4;
  v9 = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v8, 1);
  v5 = *(a1 + 16) + 24 * *(a1 + 24);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  ++*(a1 + 24);
  return a1;
}

void mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::~ReplaceBroadcastToWithBroadcastInDims(mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v4 = *(v3 + 24);
  v5 = (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_17;
  }

  v8 = *(v3 + 56);
  v9 = *(v8 + 8);
  v10 = v5[2];
  if (v10)
  {
    v11 = v5[1];
    v12 = 8 * v10;
    while (*v11 != 0x8000000000000000)
    {
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_17;
  }

LABEL_6:
  v13 = v9 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v9 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_17;
  }

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + 8);
    v16 = 8 * v14;
    while (*v15 != 0x8000000000000000)
    {
      ++v15;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_17;
  }

LABEL_11:
  v104 = 0uLL;
  v100 = &v104;
  v17 = (~v9 & 7) != 0 ? v8 : 0;
  if (!v17)
  {
LABEL_17:
    result = 0;
LABEL_18:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v18 = *(v17 + 8) & 7;
  if (v18 == 6)
  {
    v19 = v17 + 24 * *(v17 + 16);
    v20 = v19 + 120;
    if (v19 == -120)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v17 + 16 * v18 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v100, v20);
  if (!result)
  {
    goto LABEL_18;
  }

  v23 = v5[2];
  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, &v104);
  if (v108)
  {
    v100 = v102;
    v101 = 0xC00000000;
    if (!DWORD2(v104) || (llvm::SmallVectorImpl<int>::operator=(&v100, &v104), (v108 & 1) != 0))
    {
      if (v104 != &v105)
      {
        free(v104);
      }
    }

    v24 = v101;
    v25 = v101 - v23;
    v89 = v101;
    if (v101 <= v23)
    {
LABEL_51:
      __b = v99;
      v98 = 0xC00000000;
      v94 = v96;
      v95 = 0xC00000000;
      v52 = v5[2];
      if (v52)
      {
        v53 = 0;
        v54 = v5[1];
        v55 = 8 * v52;
        do
        {
          if (*(v54 + 8 * v53) != *(v100 + v53))
          {
            llvm::SmallVectorTemplateBase<int,true>::push_back(&__b, v53);
            llvm::SmallVectorTemplateBase<int,true>::push_back(&v94, *(v100 + v53));
          }

          ++v53;
          v55 -= 8;
        }

        while (v55);
        v52 = v98;
      }

      v56 = *(a2 + 24);
      v57 = *(a3 + 8);
      v103 = v52;
      v58 = mlir::IntegerType::get(v57, 32, 1);
      *&v104 = &v103;
      *(&v104 + 1) = 1;
      v90 = 0;
      v91 = v58;
      v59 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v58 + 32), &v104, &v91, &v90);
      v60 = v59;
      if (v59)
      {
        v61 = *v59;
        v62 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v63 = mlir::detail::InterfaceMap::lookup(v61 + 8, v62);
      }

      else
      {
        v63 = 0;
      }

      *&v104 = mlir::DenseIntOrFPElementsAttr::getRaw(v60, v63, v94, 4 * v95);
      v88 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v56, &v104);
      v64 = *(a2 + 24);
      v103 = v98;
      v65 = mlir::IntegerType::get(*(a3 + 8), 32, 1);
      *&v104 = &v103;
      *(&v104 + 1) = 1;
      v90 = 0;
      v91 = v65;
      v66 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v65 + 32), &v104, &v91, &v90);
      v67 = v66;
      if (v66)
      {
        v68 = *v66;
        v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v70 = mlir::detail::InterfaceMap::lookup(v68 + 8, v69);
      }

      else
      {
        v70 = 0;
      }

      *&v104 = mlir::DenseIntOrFPElementsAttr::getRaw(v67, v70, __b, 4 * v98);
      v71 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v64, &v104);
      v91 = v93;
      v92 = 0x600000000;
      llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v91, v89);
      v72 = v91;
      if (v101)
      {
        v73 = v100;
        v74 = 4 * v101;
        v75 = v91;
        do
        {
          v76 = *v73++;
          *v75++ = v76;
          v74 -= 4;
        }

        while (v74);
      }

      v77 = *(*v5 + 136);
      if (v77 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v79 = 3;
      }

      else
      {
        if (v77 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
        {
          v78 = 0;
LABEL_72:
          *&v104 = v72;
          *(&v104 + 1) = v92;
          v90 = v78;
          v103 = 0;
          v80 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v78 + 32), &v104, &v90, &v103);
          v81 = *(a2 + 24);
          v82 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a3 + 8, *(**v81 + 32));
          *&v104 = v81;
          *(&v104 + 1) = v82;
          v105 = v107;
          v106 = 0x400000000;
          v108 = v110;
          v109 = 0x400000000;
          v111 = v113;
          v112 = 0x400000000;
          v114 = 4;
          v115 = &v117;
          v116 = 0x100000000;
          v118 = &v120;
          v119 = 0x100000000;
          v122 = 0;
          v121 = 0;
          v123 = &mlir::detail::TypeIDResolver<void,void>::id;
          v124 = 0;
          v125 = 0;
          mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(v82, &v104, v80, v4, (v88 - 16), (v71 - 16));
          v83 = mlir::Operation::create(&v104);
          mlir::OpBuilder::insert((a3 + 8), v83);
          v84 = *(*(v83 + 6) + 16);
          mlir::OperationState::~OperationState(&v104);
          if (v84 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
          {
            v85 = v83;
          }

          else
          {
            v85 = 0;
          }

          (*(*a3 + 8))(a3, a2, v85);
          if (v91 != v93)
          {
            free(v91);
          }

          if (v94 != v96)
          {
            free(v94);
          }

          if (__b != v99)
          {
            free(__b);
          }

          if (v100 != v102)
          {
            free(v100);
          }

          result = 1;
          goto LABEL_18;
        }

        v79 = 1;
      }

      v78 = v5[v79];
      goto LABEL_72;
    }

    __b = v99;
    v98 = 0xC00000000;
    llvm::SmallVectorImpl<int>::resizeImpl<false>(&__b, v101);
    if (v25 >= 1)
    {
      memset_pattern16(__b, &unk_25D0A0510, 4 * v25);
    }

    if (v23 >= 1)
    {
      v26 = v5[1];
      v27 = -v23;
      v28 = __b + 4 * v24;
      do
      {
        v29 = *v26++;
        *&v28[4 * v27] = v29;
      }

      while (!__CFADD__(v27++, 1));
    }

    v94 = v96;
    v95 = 0x600000000;
    llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v94, v24);
    if (v98)
    {
      v31 = __b;
      v32 = v94;
      v33 = 4 * v98;
      do
      {
        v34 = *v31++;
        *v32++ = v34;
        v33 -= 4;
      }

      while (v33);
    }

    v35 = *(a2 + 24);
    v36 = *(a3 + 8);
    v103 = v24;
    v37 = mlir::IntegerType::get(v36, 32, 1);
    *&v104 = &v103;
    *(&v104 + 1) = 1;
    v90 = 0;
    v91 = v37;
    v38 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), &v104, &v91, &v90);
    v39 = v38;
    if (v38)
    {
      v40 = *v38;
      v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
    }

    else
    {
      v42 = 0;
    }

    *&v104 = mlir::DenseIntOrFPElementsAttr::getRaw(v39, v42, __b, 4 * v98);
    v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v35, &v104);
    v44 = *(a2 + 24);
    v45 = *(*v5 + 136);
    if (v45 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v47 = 3;
    }

    else
    {
      if (v45 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v46 = 0;
LABEL_45:
        *&v104 = v94;
        *(&v104 + 1) = v95;
        v90 = 0;
        v91 = v46;
        v48 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v46 + 32), &v104, &v91, &v90);
        v49 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a3 + 8, *(**v44 + 32));
        *&v104 = v44;
        *(&v104 + 1) = v49;
        v105 = v107;
        v106 = 0x400000000;
        v108 = v110;
        v109 = 0x400000000;
        v111 = v113;
        v112 = 0x400000000;
        v114 = 4;
        v115 = &v117;
        v116 = 0x100000000;
        v118 = &v120;
        v119 = 0x100000000;
        v122 = 0;
        v121 = 0;
        v123 = &mlir::detail::TypeIDResolver<void,void>::id;
        v124 = 0;
        v125 = 0;
        mlir::ODIE::Compiler::CoreML::ReshapeOp::build(v49, &v104, v48, v4, (v43 - 16));
        v50 = mlir::Operation::create(&v104);
        mlir::OpBuilder::insert((a3 + 8), v50);
        v51 = *(*(v50 + 6) + 16);
        mlir::OperationState::~OperationState(&v104);
        if (v51 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
        {
          v50 = 0;
        }

        v5 = (*(v50 - 1) & 0xFFFFFFFFFFFFFFF8);
        if (v94 != v96)
        {
          free(v94);
        }

        v4 = (v50 - 16);
        if (__b != v99)
        {
          free(__b);
        }

        goto LABEL_51;
      }

      v47 = 1;
    }

    v46 = v5[v47];
    goto LABEL_45;
  }

  v86 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(v86, v87);
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.broadcast_in_dims";
    v6[3] = 24;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceBroadcastToWithBroadcastInDims]";
  v6 = 129;
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

void *std::vector<long long>::vector[abi:nn200100]<long long const*,0>(void *result, uint64_t a2, uint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    std::vector<long long>::__vallocate[abi:nn200100](result, (a3 - a2) >> 3);
  }

  return result;
}

uint64_t mlir::Diagnostic::operator<<<68ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock::~ReplaceWithOneBlock(mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

BOOL mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = *(*(a2 + 72) + 24);
  v30 = 0;
  *&v31 = &v30;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  v6 = *(v3 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v3 + 24 * *(v3 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
LABEL_6:
      result = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v8 = v3 + 16 * v6 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v31, v8);
  if (!result)
  {
    goto LABEL_46;
  }

  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v30, &v31);
  *v39 = v31;
  v40[0] = v32;
  v10 = &v31;
  mlir::DenseElementsAttr::IntElementIterator::operator*(v39, &v31);
  v11 = DWORD2(v31);
  if (DWORD2(v31) >= 0x41)
  {
    if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v31) > 0x40)
    {
LABEL_16:
      v14 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      v15 = *(v14 + 24);
      if (v15 == v14 + 24 || v15 == 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = v15 - 8;
      }

      goto LABEL_22;
    }

    v10 = v31;
  }

  if (*v10 != 1)
  {
    goto LABEL_16;
  }

  v12 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v12)
  {
    v13 = v12 - 8;
  }

  else
  {
    v13 = 0;
  }

LABEL_22:
  if (v11 >= 0x41 && v31)
  {
    MEMORY[0x25F891010](v31, 0x1000C8000313F17);
  }

  a3[3] = *(a2 + 16);
  a3[4] = a2;
  v31 = 0uLL;
  LODWORD(v32) = 0;
  v34 = 0;
  *(&v32 + 1) = 0;
  v33 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v19 = *(v13 + 32);
  v17 = *(v13 + 40);
  v18 = (v13 + 32);
  if (v17 != v18 && v17 != v19)
  {
    do
    {
      mlir::OpBuilder::clone((a3 + 1), v17, &v31);
      v17 = *(v17 + 8);
    }

    while (v17 != v19);
    v19 = *v18;
  }

  v39[0] = v40;
  v39[1] = 0x600000000;
  if ((*(v19 + 46) & 0x80) != 0 && (v21 = *(v19 + 68), v21))
  {
    v22 = (*(v19 + 72) + 24);
    do
    {
      v38 = *v22;
      v23 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::doFind<mlir::Value>(&v31, &v38);
      v24 = 0;
      if (v23 && v23 != v31 + 16 * v32)
      {
        v24 = *(v23 + 8);
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v39, v24);
      v22 += 4;
      --v21;
    }

    while (v21);
    v25 = v39[0];
    v26 = LODWORD(v39[1]);
  }

  else
  {
    v26 = 0;
    v25 = v40;
  }

  v27 = *(a2 + 36);
  if (v27)
  {
    v28 = (a2 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  }

  else
  {
    v28 = 4;
  }

  mlir::RewriterBase::replaceAllUsesWith(a3, v28, v27, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  (*(*a3 + 16))(a3, a2);
  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  MEMORY[0x25F891030](v35, 8);
  MEMORY[0x25F891030](*(&v32 + 1), 8);
  MEMORY[0x25F891030](v31, 8);
  result = 1;
LABEL_46:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithOneBlock]";
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

unint64_t llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v5 > *(a1 + 12))
  {
    v7 = *a1 + 24 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v5, 24);
    }
  }

  return v3;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = v3;
  v4 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a1, v9, 1);
  v5 = *a1 + 24 * *(a1 + 8);
  v6 = *v4;
  *(v5 + 16) = *(v4 + 16);
  *v5 = v6;
  LODWORD(v5) = *(a1 + 8) + 1;
  *(a1 + 8) = v5;
  v7 = *MEMORY[0x277D85DE8];
  return *a1 + 24 * v5 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = a2[1];
  v4 = *a2 & 0xFFFFFFFFFFFFFFF9 | 4;
  v10[0] = 0;
  v10[1] = v4;
  v10[2] = v3;
  v5 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a1, v10, 1);
  v6 = *a1 + 24 * *(a1 + 8);
  v7 = *v5;
  *(v6 + 16) = *(v5 + 16);
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  v8 = *MEMORY[0x277D85DE8];
  return *a1 + 24 * v6 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, void *a2, void *a3)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v4 = a3[1];
  v5 = *a3 & 0xFFFFFFFFFFFFFFF9;
  v11[0] = *a2;
  v11[1] = v5;
  v11[2] = v4;
  v6 = llvm::SmallVectorTemplateCommon<mlir::RegionSuccessor,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>>(a1, v11, 1);
  v7 = *a1 + 24 * *(a1 + 8);
  v8 = *v6;
  *(v7 + 16) = *(v6 + 16);
  *v7 = v8;
  LODWORD(v7) = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  v9 = *MEMORY[0x277D85DE8];
  return *a1 + 24 * v7 - 24;
}

unint64_t llvm::SmallVectorTemplateCommon<mlir::ShapedTypeComponents,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + (v4 << 6);
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<mlir::ShapedTypeComponents,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = *a1;
    v6 = v2 << 6;
    do
    {
      *a2 = a2 + 16;
      *(a2 + 8) = 0x300000000;
      if (*(v5 + 8))
      {
        llvm::SmallVectorImpl<long long>::operator=(a2, v5);
      }

      v7 = *(v5 + 40);
      *(a2 + 56) = *(v5 + 56);
      *(a2 + 40) = v7;
      a2 += 64;
      v5 += 64;
      v6 -= 64;
    }

    while (v6);
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = (*a1 + (v8 << 6) - 64);
      v10 = -64 * v8;
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
    }
  }
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.create_complex";
    v6[3] = 21;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void llvm::SmallVectorImpl<int>::append<long long const*,void>(uint64_t a1, char *a2, char *a3)
{
  v4 = a2;
  v6 = a3 - a2;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - a2) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 4);
    v7 = *(a1 + 8);
  }

  if (v4 != a3)
  {
    v9 = (*a1 + 4 * v7);
    do
    {
      v10 = *v4;
      v4 += 8;
      *v9++ = v10;
    }

    while (v4 != a3);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E2F0))
  {
    qword_27FC1E2E0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>();
    *algn_27FC1E2E8 = v1;
    __cxa_guard_release(&qword_27FC1E2F0);
  }

  return qword_27FC1E2E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E330))
  {
    qword_27FC1E320 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>();
    *algn_27FC1E328 = v1;
    __cxa_guard_release(&qword_27FC1E330);
  }

  return qword_27FC1E320;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

uint64_t mlir::AsmParser::parseOptionalIntegerAndCheck<unsigned long long,mlir::OptionalParseResult mlir::AsmParser::parseOptionalInteger<unsigned long long>(unsigned long long &)::{lambda(llvm::APInt &)#1}>(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v17 = 1;
  __s2 = 0;
  v7 = (*(**a3 + 376))();
  if (v7 & (v7 >> 8))
  {
    llvm::APInt::sextOrTrunc(&__s2, 0x40u, &v18);
    LimitedValue = llvm::APInt::getLimitedValue(&v18, 0xFFFFFFFFFFFFFFFFLL);
    *a2 = LimitedValue;
    if (v19 >= 0x41 && v18)
    {
      MEMORY[0x25F891010](v18, 0x1000C8000313F17);
      LimitedValue = *a2;
    }

    if (v17 > 0x40)
    {
      operator new[]();
    }

    if (v17)
    {
      v9 = 0xFFFFFFFFFFFFFFFFLL >> -v17;
    }

    else
    {
      v9 = 0;
    }

    if ((v9 & LimitedValue) == __s2)
    {
      v10 = 1;
    }

    else
    {
      v14 = "integer value too large";
      v15 = 259;
      (*(*a1 + 24))(&v18, a1, v6, &v14);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
      v10 = 0;
    }

    v11 = 1;
  }

  else
  {
    v10 = v7;
    v11 = BYTE1(v7);
  }

  if (v17 >= 0x41 && __s2)
  {
    MEMORY[0x25F891010](__s2, 0x1000C8000313F17);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | (v11 << 8);
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::GetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if ((*(v4 - 1) & 0xFFFFFFFFFFFFFFF8) == a2)
  {
    v5 = 1;
  }

  else
  {
    v17 = 257;
    mlir::Operation::emitError(&v20, v4, v16);
    if (v20)
    {
      mlir::Diagnostic::operator<<<26ul>(v21, "getting a member of type ");
      if (v20)
      {
        v6 = *(*(**(a1 + 8) + 16 * ((*(**(a1 + 8) + 44) >> 23) & 1) + 80) + 8);
        v18 = 4;
        v19 = v6;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v8 = v22 + 24 * v23;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v23;
        if (v20)
        {
          mlir::Diagnostic::operator<<<33ul>(v21, " cannot produce a value of type ");
          if (v20)
          {
            v10 = *(*v3 - 1) & 0xFFFFFFFFFFFFFFF8;
            v18 = 4;
            v19 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
            v12 = v22 + 24 * v23;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v23;
          }
        }
      }
    }

    v5 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<mlir::ODIE::Compiler::CoreML::SetMemberOp::verifySymbolUses(mlir::SymbolTableCollection &)::$_0>(uint64_t **a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = **a1;
  if ((*(*(*(v4 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8) == a2)
  {
    v5 = 1;
  }

  else
  {
    v17 = 257;
    mlir::Operation::emitError(&v20, v4, v16);
    if (v20)
    {
      mlir::Diagnostic::operator<<<26ul>(v21, "getting a member of type ");
      if (v20)
      {
        v6 = *(*(*a1[1] + 16 * ((*(*a1[1] + 44) >> 23) & 1) + 80) + 8);
        v18 = 4;
        v19 = v6;
        v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
        v8 = v22 + 24 * v23;
        v9 = *v7;
        *(v8 + 16) = *(v7 + 16);
        *v8 = v9;
        ++v23;
        if (v20)
        {
          mlir::Diagnostic::operator<<<33ul>(v21, " cannot produce a value of type ");
          if (v20)
          {
            v10 = *(*(*(*v3 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
            v18 = 4;
            v19 = v10;
            v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v22, &v18, 1);
            v12 = v22 + 24 * v23;
            v13 = *v11;
            *(v12 + 16) = *(v11 + 16);
            *v12 = v13;
            ++v23;
          }
        }
      }
    }

    v5 = (v24 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp>(mlir::ODIE::Compiler::CoreML::FuncOp,mlir::ODIE::Compiler::CoreML::CallOp)::{lambda(mlir::Type)#1}>(uint64_t **a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v7 = *(v4 + 68);
    v8 = !v6 || v7 == 0;
    if (!v8)
    {
      v9 = v7 - 1;
      v10 = *(v4 + 72) + 24;
      v11 = 8 * v6 - 8;
      do
      {
        v12 = *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::ODIE::Compiler::areTypesCompatible(*v5, v12))
        {
          v30 = *(**a1 + 24);
          v55 = 257;
          emitDiag(v30, 2, &v53, &v49);
          if (v49)
          {
            mlir::Diagnostic::operator<<<30ul>(v50, "expected an argument of type ");
            if (v49)
            {
              v31 = *v5;
              v53 = 4;
              v54[0] = v31;
              v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
              v33 = v51 + 24 * v52;
              v34 = *v32;
              *(v33 + 16) = *(v32 + 16);
              *v33 = v34;
              ++v52;
              if (v49)
              {
                mlir::Diagnostic::operator<<<10ul>(v50, " but got ");
                if (v49)
                {
                  v53 = 4;
                  v54[0] = v12;
                  v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
                  v36 = v51 + 24 * v52;
                  v37 = *v35;
                  *(v36 + 16) = *(v35 + 16);
                  *v36 = v37;
                  ++v52;
                }
              }
            }
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v49);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
          mlir::Diagnostic::attachNote(v54, *(*a1[1] + 24), 1);
        }

        v14 = v9-- != 0;
        if (!v11)
        {
          break;
        }

        ++v5;
        v10 += 32;
        v11 -= 8;
      }

      while (v14);
      v5 = *(a2 + 16);
      LODWORD(v6) = *(a2 + 8);
      v4 = **a1;
    }
  }

  v15 = *(a2 + 12);
  v16 = *(v4 + 36);
  if (v16)
  {
    v17 = v4 - 16;
  }

  else
  {
    v17 = 0;
  }

  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v48 = a1;
    v19 = 0;
    v20 = v16 - 1;
    v21 = 8 * v15 - 8;
    v22 = v17;
    v23 = &v5[v6];
    while (1)
    {
      v24 = v17;
      if (v19)
      {
        v25 = *(v4 - 8) & 7;
        v26 = v17;
        v27 = v19;
        if (v25 == 6)
        {
          goto LABEL_27;
        }

        v28 = (5 - v25);
        v24 = v22;
        v27 = v19 - v28;
        if (v19 > v28)
        {
          break;
        }
      }

LABEL_28:
      v29 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::ODIE::Compiler::areTypesCompatible(v23[v19], v29))
      {
        v38 = *(**v48 + 24);
        v55 = 257;
        emitDiag(v38, 2, &v53, &v49);
        if (v49)
        {
          mlir::Diagnostic::operator<<<27ul>(v50, "expected a result of type ");
          if (v49)
          {
            v39 = v23[v19];
            v53 = 4;
            v54[0] = v39;
            v40 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
            v41 = v51 + 24 * v52;
            v42 = *v40;
            *(v41 + 16) = *(v40 + 16);
            *v41 = v42;
            ++v52;
            if (v49)
            {
              mlir::Diagnostic::operator<<<10ul>(v50, " but got ");
              if (v49)
              {
                v53 = 4;
                v54[0] = v29;
                v43 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
                v44 = v51 + 24 * v52;
                v45 = *v43;
                *(v44 + 16) = *(v43 + 16);
                *v44 = v45;
                ++v52;
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v49);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
        mlir::Diagnostic::attachNote(v54, *(*v48[1] + 24), 1);
      }

      if (v21)
      {
        v22 -= 16;
        v21 -= 8;
        v8 = v20 == v19++;
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    v26 = v17 - 16 * v28;
LABEL_27:
    v24 = v26 - 24 * v27;
    goto LABEL_28;
  }

LABEL_45:
  v46 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t llvm::function_ref<llvm::LogicalResult ()(mlir::Type)>::callback_fn<llvm::LogicalResult mlir::ODIE::Compiler::CoreML::verifyMatchForParametricOp<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp>(mlir::ODIE::Compiler::CoreML::GraphOp,mlir::ODIE::Compiler::CoreML::InvokeOp)::{lambda(mlir::Type)#1}>(uint64_t **a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = **a1;
  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  if ((*(v4 + 46) & 0x80) != 0)
  {
    v7 = *(v4 + 68);
    v8 = !v6 || v7 == 0;
    if (!v8)
    {
      v9 = v7 - 1;
      v10 = *(v4 + 72) + 24;
      v11 = 8 * v6 - 8;
      do
      {
        v12 = *(*v10 + 8) & 0xFFFFFFFFFFFFFFF8;
        if (!mlir::ODIE::Compiler::areTypesCompatible(*v5, v12))
        {
          v30 = *(**a1 + 24);
          v55 = 257;
          emitDiag(v30, 2, &v53, &v49);
          if (v49)
          {
            mlir::Diagnostic::operator<<<30ul>(v50, "expected an argument of type ");
            if (v49)
            {
              v31 = *v5;
              v53 = 4;
              v54[0] = v31;
              v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
              v33 = v51 + 24 * v52;
              v34 = *v32;
              *(v33 + 16) = *(v32 + 16);
              *v33 = v34;
              ++v52;
              if (v49)
              {
                mlir::Diagnostic::operator<<<10ul>(v50, " but got ");
                if (v49)
                {
                  v53 = 4;
                  v54[0] = v12;
                  v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
                  v36 = v51 + 24 * v52;
                  v37 = *v35;
                  *(v36 + 16) = *(v35 + 16);
                  *v36 = v37;
                  ++v52;
                }
              }
            }
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v49);
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
          mlir::Diagnostic::attachNote(v54, *(*a1[1] + 24), 1);
        }

        v14 = v9-- != 0;
        if (!v11)
        {
          break;
        }

        ++v5;
        v10 += 32;
        v11 -= 8;
      }

      while (v14);
      v5 = *(a2 + 16);
      LODWORD(v6) = *(a2 + 8);
      v4 = **a1;
    }
  }

  v15 = *(a2 + 12);
  v16 = *(v4 + 36);
  if (v16)
  {
    v17 = v4 - 16;
  }

  else
  {
    v17 = 0;
  }

  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v48 = a1;
    v19 = 0;
    v20 = v16 - 1;
    v21 = 8 * v15 - 8;
    v22 = v17;
    v23 = &v5[v6];
    while (1)
    {
      v24 = v17;
      if (v19)
      {
        v25 = *(v4 - 8) & 7;
        v26 = v17;
        v27 = v19;
        if (v25 == 6)
        {
          goto LABEL_27;
        }

        v28 = (5 - v25);
        v24 = v22;
        v27 = v19 - v28;
        if (v19 > v28)
        {
          break;
        }
      }

LABEL_28:
      v29 = *(v24 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::ODIE::Compiler::areTypesCompatible(v23[v19], v29))
      {
        v38 = *(**v48 + 24);
        v55 = 257;
        emitDiag(v38, 2, &v53, &v49);
        if (v49)
        {
          mlir::Diagnostic::operator<<<27ul>(v50, "expected a result of type ");
          if (v49)
          {
            v39 = v23[v19];
            v53 = 4;
            v54[0] = v39;
            v40 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
            v41 = v51 + 24 * v52;
            v42 = *v40;
            *(v41 + 16) = *(v40 + 16);
            *v41 = v42;
            ++v52;
            if (v49)
            {
              mlir::Diagnostic::operator<<<10ul>(v50, " but got ");
              if (v49)
              {
                v53 = 4;
                v54[0] = v29;
                v43 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v51, &v53, 1);
                v44 = v51 + 24 * v52;
                v45 = *v43;
                *(v44 + 16) = *(v43 + 16);
                *v44 = v45;
                ++v52;
              }
            }
          }
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(&v53, &v49);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
        mlir::Diagnostic::attachNote(v54, *(*v48[1] + 24), 1);
      }

      if (v21)
      {
        v22 -= 16;
        v21 -= 8;
        v8 = v20 == v19++;
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    v26 = v17 - 16 * v28;
LABEL_27:
    v24 = v26 - 24 * v27;
    goto LABEL_28;
  }

LABEL_45:
  v46 = *MEMORY[0x277D85DE8];
  return 1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E358))
  {
    qword_27FC1E348 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>();
    unk_27FC1E350 = v1;
    __cxa_guard_release(&qword_27FC1E358);
  }

  return qword_27FC1E348;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::ArrayAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ArrayAttr]";
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

const char *llvm::detail::getTypeNameImpl<mlir::UnitAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::UnitAttr]";
  v6 = 76;
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

const char *llvm::detail::getTypeNameImpl<mlir::TypeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypeAttr]";
  v6 = 76;
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

BOOL llvm::concat_iterator<mlir::DictionaryAttr,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>>::incrementHelper<0ul>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[4];
  if (*a1 != v2)
  {
    *a1 = v1 + 8;
  }

  return v1 != v2;
}

BOOL llvm::concat_iterator<mlir::DictionaryAttr,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>>::incrementHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  if (v1 != v2)
  {
    *(a1 + 16) = v1 + 8;
  }

  return v1 != v2;
}

uint64_t llvm::concat_iterator<mlir::DictionaryAttr,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>>::getHelper<0ul>(void *a1)
{
  if (*a1 == a1[4])
  {
    return 0;
  }

  else
  {
    return **a1;
  }
}

uint64_t llvm::concat_iterator<mlir::DictionaryAttr,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>,mlir::ArrayAttr::attr_value_iterator<mlir::DictionaryAttr>>::getHelper<1ul>(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == *(a1 + 48))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t mlir::Diagnostic::operator<<<90ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E380))
  {
    qword_27FC1E370 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>();
    *algn_27FC1E378 = v1;
    __cxa_guard_release(&qword_27FC1E380);
  }

  return qword_27FC1E370;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties]";
  v6 = 145;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E3A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E3A8))
  {
    qword_27FC1E398 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>();
    unk_27FC1E3A0 = v1;
    __cxa_guard_release(&qword_27FC1E3A8);
  }

  return qword_27FC1E398;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

const char *llvm::detail::getTypeNameImpl<mlir::detail::DenseArrayAttrImpl<signed char>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int8_t>]";
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

uint64_t mlir::Operation::getParentOfType<mlir::SymbolOpInterface>(uint64_t a1, mlir::Operation *a2)
{
  while (1)
  {
    v3 = *(a1 + 16);
    if (!v3)
    {
      break;
    }

    v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8;
    if (!v4)
    {
      break;
    }

    a1 = *(v4 + 16);
    if (!a1)
    {
      break;
    }

    result = llvm::DefaultDoCastIfPossible<mlir::SymbolOpInterface,mlir::Operation *,llvm::CastInfo<mlir::SymbolOpInterface,mlir::Operation *,void>>::doCastIfPossible(*(v4 + 16), a2);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E3E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E3E8))
  {
    qword_27FC1E3D8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>();
    unk_27FC1E3E0 = v1;
    __cxa_guard_release(&qword_27FC1E3E8);
  }

  return qword_27FC1E3D8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ComputeTargetAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ComputeTargetAttr]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E428))
  {
    qword_27FC1E418 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>();
    unk_27FC1E420 = v1;
    __cxa_guard_release(&qword_27FC1E428);
  }

  return qword_27FC1E418;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *llvm::detail::getTypeNameImpl<mlir::SymbolRefAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::SymbolRefAttr]";
  v6 = 81;
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

void llvm::SmallVectorImpl<mlir::ODIE::Compiler::CoreML::IntentAttr>::append<mlir::ODIE::Compiler::CoreML::IntentAttr const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
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

uint64_t mlir::Diagnostic::operator<<<88ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

void mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::~ReplaceWithReshape(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

BOOL mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v36 = *(v3 + 24);
  v4 = (*(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v5;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_16;
  }

  v8 = v4[2];
  if (v8)
  {
    v9 = v4[1];
    v10 = 8 * v8;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_16;
  }

LABEL_6:
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_16;
  }

  v11 = v5[2];
  if (v11)
  {
    v12 = v5[1];
    v13 = 8 * v11;
    while (*v12 != 0x8000000000000000)
    {
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_16;
  }

LABEL_11:
  v14 = *(v3 + 56);
  v41 = 0;
  v42 = 0;
  *&v39 = &v41;
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v17);
  if (result)
  {
    v20 = v5[2];
    v41 = v43;
    v42 = 0xC00000000;
    llvm::SmallVectorImpl<int>::resizeImpl<false>(&v41, v20);
    v21 = v5[2];
    if (v21)
    {
      v22 = v5[1];
      v23 = v41;
      v24 = 8 * v21;
      do
      {
        v25 = *v22++;
        *v23++ = v25;
        v24 -= 8;
      }

      while (v24);
    }

    v26 = *(a2 + 24);
    v27 = *(a3 + 8);
    v40 = v21;
    v28 = mlir::IntegerType::get(v27, 32, 1);
    *&v39 = &v40;
    *(&v39 + 1) = 1;
    v37 = 0;
    Raw = v28;
    v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v39, &Raw, &v37);
    v30 = v29;
    if (v29)
    {
      v31 = *v29;
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
    }

    else
    {
      v33 = 0;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v30, v33, v41, 4 * v42);
    *&v39 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v26, &Raw);
    v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::TensorType &,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 8), *(a2 + 24), &v35, &v36, &v39);
    (*(*a3 + 8))(a3, a2, v34);
    if (v41 != v43)
    {
      free(v41);
    }

    result = 1;
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::TensorType &,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(v10, v15, *a3, *a4, *a5 - 16);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>]";
  v6 = 154;
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

uint64_t llvm::array_pod_sort_comparator<long long>(void *a1, void *a2)
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

uint64_t mlir::Diagnostic::appendRange<llvm::ArrayRef<long long>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = *a2;
    LODWORD(v17) = 2;
    v18 = v6;
    v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v17, 1);
    v8 = *(a1 + 16) + 24 * *(a1 + 24);
    v9 = *v7;
    *(v8 + 16) = *(v7 + 16);
    *v8 = v9;
    ++*(a1 + 24);
    if (a3 != 1)
    {
      v10 = a2 + 1;
      v11 = 8 * a3 - 8;
      do
      {
        v17 = ", ";
        v19 = 259;
        mlir::Diagnostic::operator<<(a1, &v17);
        v12 = *v10++;
        LODWORD(v17) = 2;
        v18 = v12;
        v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v17, 1);
        v14 = *(a1 + 16) + 24 * *(a1 + 24);
        v15 = *v13;
        *(v14 + 16) = *(v13 + 16);
        *v14 = v15;
        ++*(a1 + 24);
        v11 -= 8;
      }

      while (v11);
    }
  }

  return a1;
}

void mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>::~ReplaceWithReshape(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

BOOL mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[6] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 72);
  v36 = *(v3 + 24);
  v4 = (*(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v35 = v5;
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_16;
  }

  v8 = v4[2];
  if (v8)
  {
    v9 = v4[1];
    v10 = 8 * v8;
    while (*v9 != 0x8000000000000000)
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_16;
  }

LABEL_6:
  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_16;
  }

  v11 = v5[2];
  if (v11)
  {
    v12 = v5[1];
    v13 = 8 * v11;
    while (*v12 != 0x8000000000000000)
    {
      ++v12;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_16;
  }

LABEL_11:
  v14 = *(v3 + 56);
  v41 = 0;
  v42 = 0;
  *&v39 = &v41;
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (!v14)
  {
LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v39, v17);
  if (result)
  {
    v20 = v5[2];
    v41 = v43;
    v42 = 0xC00000000;
    llvm::SmallVectorImpl<int>::resizeImpl<false>(&v41, v20);
    v21 = v5[2];
    if (v21)
    {
      v22 = v5[1];
      v23 = v41;
      v24 = 8 * v21;
      do
      {
        v25 = *v22++;
        *v23++ = v25;
        v24 -= 8;
      }

      while (v24);
    }

    v26 = *(a2 + 24);
    v27 = *(a3 + 8);
    v40 = v21;
    v28 = mlir::IntegerType::get(v27, 32, 1);
    *&v39 = &v40;
    *(&v39 + 1) = 1;
    v37 = 0;
    Raw = v28;
    v29 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v28 + 32), &v39, &Raw, &v37);
    v30 = v29;
    if (v29)
    {
      v31 = *v29;
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
    }

    else
    {
      v33 = 0;
    }

    Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v30, v33, v41, 4 * v42);
    *&v39 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>((a3 + 8), v26, &Raw);
    v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::TensorType &,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>((a3 + 8), *(a2 + 24), &v35, &v36, &v39);
    (*(*a3 + 8))(a3, a2, v34);
    if (v41 != v43)
    {
      free(v41);
    }

    result = 1;
  }

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ReplaceWithReshape<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>]";
  v6 = 154;
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

uint64_t mlir::InFlightDiagnostic::operator<<<int>(uint64_t a1, int *a2)
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

uint64_t mlir::Diagnostic::operator<<<77ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.add";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.mul";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.sub";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BatchMatmulOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.batch_matmul";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::extract1DIntVector<short>(uint64_t a1, uint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v28 = &v22;
  if ((~*(a2 + 8) & 7) != 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 8) & 7;
  if (v4 == 6)
  {
    v5 = v3 + 24 * *(v3 + 16);
    v6 = v5 + 120;
    if (v5 == -120)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v6 = v3 + 16 * v4 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v28, v6))
  {
LABEL_14:
    *a1 = 0;
    *(a1 + 64) = 0;
    goto LABEL_15;
  }

  v7 = v22;
  v28 = v30;
  v29 = xmmword_25D0A07A0;
  v8 = *(v22 + 24);
  v25[0] = *(v22 + 32);
  v25[1] = v8;
  v26 = 0;
  v9 = *(v22 + 8);
  v10 = (*(*(v22 + 16) + 8))();
  DenseElementBitWidth = mlir::detail::getDenseElementBitWidth(v10);
  v11 = *(v7 + 8);
  v12 = (*(*(v7 + 16) + 24))();
  if (v13)
  {
    v14 = 8 * v13;
    v15 = 1;
    do
    {
      v16 = *v12++;
      v15 *= v16;
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v15 = 1;
  }

  v18 = *(v7 + 8);
  v19 = (*(*(v7 + 16) + 8))();
  mlir::detail::getDenseElementBitWidth(v19);
  if (v15)
  {
    v20 = 1;
    do
    {
      mlir::DenseElementsAttr::IntElementIterator::operator*(v25, &v23);
      LimitedValue = llvm::APInt::getLimitedValue(&v23, 0xFFFFFFFFFFFFFFFFLL);
      llvm::SmallVectorTemplateBase<short,true>::push_back(&v28, LimitedValue);
      if (v24 >= 0x41 && v23)
      {
        MEMORY[0x25F891010](v23, 0x1000C8000313F17);
      }

      v26 = v20++;
      --v15;
    }

    while (v15);
  }

  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_25D0A07A0;
  if (v29)
  {
    llvm::SmallVectorImpl<short>::operator=(a1, &v28);
  }

  *(a1 + 64) = 1;
  if (v28 != v30)
  {
    free(v28);
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorImpl<short>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 24);
    v4 = *a2;
    if (v4 == v5)
    {
      v7 = *(a2 + 8);
      v8 = *(a1 + 8);
      if (v8 >= v7)
      {
        if (v7)
        {
          memmove(*a1, v4, 2 * v7);
        }
      }

      else
      {
        if (*(a1 + 16) >= v7)
        {
          if (v8)
          {
            memmove(*a1, v4, 2 * v8);
          }
        }

        else
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, (a1 + 24), v7, 2);
          v8 = 0;
        }

        v9 = *(a2 + 8) - v8;
        if (v9)
        {
          memcpy((*a1 + 2 * v8), (*a2 + 2 * v8), 2 * v9);
        }
      }

      *(a1 + 8) = v7;
    }

    else
    {
      v6 = *a1;
      if (*a1 != a1 + 24)
      {
        free(v6);
        v4 = *a2;
      }

      *a1 = v4;
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 16) = 0;
      *a2 = v5;
    }

    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t mlir::InFlightDiagnostic::operator<<<short &>(uint64_t a1, __int16 a2)
{
  if (*a1)
  {
    v7 = 2;
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

uint64_t llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(uint64_t a1, int a2, unsigned __int16 a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 2 * v5);
    v7 = *v6;
    if (v7 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != 0x7FFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 0x8000;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 2 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (v7 == a3)
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

void llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((2 * v8), 2uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset_pattern16(buffer, &unk_25D0A07C0, 2 * v10);
    }

    if (v3)
    {
      v11 = 2 * v3;
      v12 = v4;
      do
      {
        v13 = *v12;
        if ((*v12 - 0x7FFF) >= 2u)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>,short,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<short,void>,llvm::detail::DenseSetPair<short>>::LookupBucketFor<short>(*a1, *(a1 + 16), v13, &v15);
          *v15 = *v12;
          ++*(a1 + 8);
        }

        ++v12;
        v11 -= 2;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    memset_pattern16(buffer, &unk_25D0A07C0, 2 * v14);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(uint64_t a1, int a2, int a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 4 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != 0x7FFFFFFF)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 0x80000000;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 4 * (v13 & v4));
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

void llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::grow(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((4 * v8), 4uLL);
  *a1 = buffer;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      memset_pattern16(buffer, &unk_25D0A07D0, 4 * v10);
    }

    if (v3)
    {
      v11 = 4 * v3;
      v12 = v4;
      do
      {
        v13 = *v12;
        if ((*v12 - 0x7FFFFFFF) >= 2)
        {
          v15 = 0;
          llvm::DenseMapBase<llvm::DenseMap<int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>,int,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<int,void>,llvm::detail::DenseSetPair<int>>::LookupBucketFor<int>(*a1, *(a1 + 16), v13, &v15);
          *v15 = *v12;
          ++*(a1 + 8);
        }

        ++v12;
        v11 -= 4;
      }

      while (v11);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v14 = *(a1 + 16);
  if (v14)
  {

    memset_pattern16(buffer, &unk_25D0A07D0, 4 * v14);
  }
}

BOOL mlir::AsmParser::parseType<mlir::TensorType>(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 536))(a1, &v13))
  {
    v5 = v13;
    v6 = *(*v13 + 136);
    if (v6 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v6 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v8 = 1;
    if (!v5)
    {
      v11 = "invalid kind of type specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v4, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::AsmParser::parseType<mlir::RankedTensorType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::AsyncValueType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::AsyncValueType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void llvm::map_to_vector<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>,llvm::ParseResult mlir::ODIE::Compiler::CoreML::parseDecomposableOp<mlir::ODIE::Compiler::CoreML::BatchToSpace>(mlir::OpAsmParser&,mlir::OperationState &)::{lambda(llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>)#1}>(void *a1, __int128 *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v7 = 0;
  v8 = (a1 + 2);
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (a3 && a5)
  {
    v11 = a3;
    v12 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v12 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v12 + 1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v8, v12 + 1, 64);
      v12 = *(a1 + 2);
      v8 = *a1;
    }

    else
    {
      v13 = 1;
    }

    v14 = &v8[64 * v12];
    v15 = 32 * v11 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      v14[56] = 0;
      *(v14 + 4) = v18;
      *(v14 + 5) = 0;
      v14[48] = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 64;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v7 = *(a1 + 2) + v13;
  }

  *(a1 + 2) = v7;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v16 = a2;
  v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v16, a3, a4, *a5);
  v17 = v16;
  v14 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v17, v13, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(a1, v17, v14, a4, a7, a8);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E480))
  {
    qword_27FC1E470 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>();
    *algn_27FC1E478 = v1;
    __cxa_guard_release(&qword_27FC1E480);
  }

  return qword_27FC1E470;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E4A8))
  {
    qword_27FC1E498 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>();
    unk_27FC1E4A0 = v1;
    __cxa_guard_release(&qword_27FC1E4A8);
  }

  return qword_27FC1E498;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties]";
  v6 = 140;
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(uint64_t a1, unint64_t a2)
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

BOOL mlir::AsmParser::parseType<mlir::ODIE::Compiler::CoreML::TokenType>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  if ((*(*a1 + 536))(a1, &v11))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TokenType,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of type specified";
      v10 = 259;
      (*(*a1 + 24))(v12, a1, v4, &v9);
      v6 = (v13 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v12);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::DelegateOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

llvm::raw_ostream *mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 16))(a1);
  v5 = result;
  v6 = *(result + 4);
  if (*(result + 3) - v6 > 3uLL)
  {
    *v6 = 540945696;
    *(result + 4) += 4;
  }

  else
  {
    result = llvm::raw_ostream::write(result, " -> ", 4uLL);
    v5 = result;
  }

  v7 = a2[1];
  v8 = a2[3];
  if (v7 == v8 || v7 + 1 != v8)
  {
    goto LABEL_8;
  }

  v11 = *a2;
  if (!v7)
  {
    if (*(*(*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
    {
      goto LABEL_56;
    }

LABEL_8:
    v10 = *(v5 + 4);
    if (v10 >= *(v5 + 3))
    {
      result = llvm::raw_ostream::write(v5, 40);
    }

    else
    {
      *(v5 + 4) = v10 + 1;
      *v10 = 40;
    }

    v16 = a2[1];
    v17 = a2[3];
    if (v16 == v17)
    {
LABEL_50:
      v36 = *(v5 + 4);
      if (v36 >= *(v5 + 3))
      {

        return llvm::raw_ostream::write(v5, 41);
      }

      else
      {
        *(v5 + 4) = v36 + 1;
        *v36 = 41;
      }

      return result;
    }

    v18 = *a2;
    if (!v16)
    {
      v23 = *a2;
      goto LABEL_37;
    }

    if (v18)
    {
      v19 = *(v18 + 8) & 7;
      v20 = *a2;
      v21 = a2[1];
      if (v19 != 6)
      {
        v22 = (5 - v19);
        v21 = v16 - v22;
        if (v16 <= v22)
        {
          v23 = v18 - 16 * v16;
LABEL_37:
          result = (*(*a1 + 32))(a1, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
          v27 = v16 + 1;
          if (v16 + 1 != v17)
          {
            v28 = v18 - 16 * v16 - 16;
            while (1)
            {
              v29 = (*(*a1 + 16))(a1);
              v30 = *(v29 + 4);
              if (*(v29 + 3) - v30 > 1uLL)
              {
                *v30 = 8236;
                *(v29 + 4) += 2;
                if (!v27)
                {
LABEL_46:
                  v35 = v18;
                  goto LABEL_49;
                }
              }

              else
              {
                llvm::raw_ostream::write(v29, ", ", 2uLL);
                if (!v27)
                {
                  goto LABEL_46;
                }
              }

              if (!v18)
              {
                v32 = 0;
                v33 = v27;
                goto LABEL_48;
              }

              v31 = *(v18 + 8) & 7;
              v32 = v18;
              v33 = v27;
              if (v31 == 6)
              {
                goto LABEL_48;
              }

              v34 = (5 - v31);
              v35 = v28;
              v33 = v27 - v34;
              if (v27 > v34)
              {
                v32 = v18 - 16 * v34;
LABEL_48:
                v35 = v32 - 24 * v33;
              }

LABEL_49:
              result = (*(*a1 + 32))(a1, *(v35 + 8) & 0xFFFFFFFFFFFFFFF8);
              ++v27;
              v28 -= 16;
              if (v17 == v27)
              {
                goto LABEL_50;
              }
            }
          }

          goto LABEL_50;
        }

        v20 = v18 - 16 * v22;
      }
    }

    else
    {
      v20 = 0;
      v21 = a2[1];
    }

    v23 = v20 - 24 * v21;
    goto LABEL_37;
  }

  if (!v11)
  {
    v13 = 0;
    v14 = a2[1];
    goto LABEL_26;
  }

  v12 = *(*a2 + 8) & 7;
  v13 = *a2;
  v14 = a2[1];
  if (v12 == 6)
  {
LABEL_26:
    v24 = v13 - 24 * v14;
    goto LABEL_28;
  }

  v15 = (5 - v12);
  v14 = v7 - v15;
  if (v7 > v15)
  {
    v13 = v11 - 16 * v15;
    goto LABEL_26;
  }

  v24 = v11 - 16 * v7;
LABEL_28:
  if (*(*(*(v24 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    goto LABEL_8;
  }

  if (v11)
  {
    v25 = *(v11 + 8) & 7;
    if (v25 != 6)
    {
      v26 = (5 - v25);
      if (v7 <= v26)
      {
        v11 -= 16 * v7;
        goto LABEL_56;
      }

      v11 -= 16 * v26;
      v7 -= v26;
    }
  }

  v11 -= 24 * v7;
LABEL_56:
  v37 = *(*a1 + 32);
  v38 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;

  return v37(a1, v38);
}

void llvm::map_to_vector<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>,llvm::ParseResult mlir::ODIE::Compiler::CoreML::parseDecomposableOp<mlir::ODIE::Compiler::CoreML::DepthToSpace>(mlir::OpAsmParser&,mlir::OperationState &)::{lambda(llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>)#1}>(void *a1, __int128 *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v7 = 0;
  v8 = (a1 + 2);
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (a3 && a5)
  {
    v11 = a3;
    v12 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v12 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v12 + 1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v8, v12 + 1, 64);
      v12 = *(a1 + 2);
      v8 = *a1;
    }

    else
    {
      v13 = 1;
    }

    v14 = &v8[64 * v12];
    v15 = 32 * v11 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      v14[56] = 0;
      *(v14 + 4) = v18;
      *(v14 + 5) = 0;
      v14[48] = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 64;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v7 = *(a1 + 2) + v13;
  }

  *(a1 + 2) = v7;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E4D0))
  {
    qword_27FC1E4C0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>();
    *algn_27FC1E4C8 = v1;
    __cxa_guard_release(&qword_27FC1E4D0);
  }

  return qword_27FC1E4C0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties]";
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

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ErrorOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  a2[1].n128_u64[0] = a3[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E4F8))
  {
    qword_27FC1E4E8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>();
    unk_27FC1E4F0 = v1;
    __cxa_guard_release(&qword_27FC1E4F8);
  }

  return qword_27FC1E4E8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FFIImportOpGenericAdaptorBase::Properties]";
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

BOOL mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  if ((*(*a1 + 440))(a1, &v13, a3))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v7 = 0;
    }

    *a2 = v7;
    v8 = 1;
    if (!v7)
    {
      v11 = "invalid kind of attribute specified";
      v12 = 259;
      (*(*a1 + 24))(v14, a1, v6, &v11);
      v8 = (v15 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::FFIImportOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v20 = a2;
  v17 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v20, a3, a4, *a5);
  v21 = v20;
  v18 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v21, v17, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(a1, v21, v18, a4, a7, a8, a9, a10, a11, a12);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v18 = a2;
  v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v18, a3, a4, *a5);
  v19 = v18;
  v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v19, v15, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code,llvm::hash_code,llvm::hash_code>(a1, v19, v16, a4, a7, a8, a9, a10);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E520))
  {
    qword_27FC1E510 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>();
    *algn_27FC1E518 = v1;
    __cxa_guard_release(&qword_27FC1E520);
  }

  return qword_27FC1E510;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ExternAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ExternAttr]";
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

const char *llvm::detail::getTypeNameImpl<mlir::DictionaryAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DictionaryAttr]";
  v6 = 82;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E560))
  {
    qword_27FC1E550 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>();
    *algn_27FC1E558 = v1;
    __cxa_guard_release(&qword_27FC1E560);
  }

  return qword_27FC1E550;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties]";
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ApproximateAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ApproximateAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML15ApproximateAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::GELUOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E5A0))
  {
    qword_27FC1E590 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>();
    *algn_27FC1E598 = v1;
    __cxa_guard_release(&qword_27FC1E5A0);
  }

  return qword_27FC1E590;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::GetMemberOpGenericAdaptorBase::Properties]";
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

mlir::Region *std::unique_ptr<mlir::Region>::reset[abi:nn200100](mlir::Region **a1, mlir::Region *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    mlir::Region::~Region(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "coreml.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v6, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

char **llvm::SmallVector<std::unique_ptr<mlir::Region>,2u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = -8 * v3;
    v5 = &v2[8 * v3 - 8];
    do
    {
      std::unique_ptr<mlir::Region>::reset[abi:nn200100](v5--, 0);
      v4 += 8;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::growAndEmplaceBack<std::unique_ptr<mlir::Region>>(unsigned int *a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 4;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, a1 + 4, 0, 8, &v11);
  v6 = a1[2];
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = a1[2] + 1;
  a1[2] = v9;
  a1[3] = v8;
  return &v5[v9 - 1];
}

mlir::Region *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::Region>,false>::moveElementsForGrow(mlir::Region *result, void *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = *result;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a2++ = v6;
      v4 -= 8;
    }

    while (v4);
    v7 = -8 * v2;
    v8 = &v3[v2 - 1];
    do
    {
      result = std::unique_ptr<mlir::Region>::reset[abi:nn200100](v8--, 0);
      v7 += 8;
    }

    while (v7);
  }

  return result;
}

char *mlir::OpTrait::SingleBlockImplicitTerminator<mlir::ODIE::Compiler::CoreML::YieldOp>::Impl<mlir::ODIE::Compiler::CoreML::IsolatedGroupOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v6[36] = *MEMORY[0x277D85DE8];
  mlir::OperationState::OperationState(v5, a2, "coreml.yield", 0xC);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v6, 0, 0, 0, 0);
  v2 = mlir::Operation::create(v5);
  mlir::OperationState::~OperationState(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E5C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E5C8))
  {
    qword_27FC1E5B8 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>();
    unk_27FC1E5C0 = v1;
    __cxa_guard_release(&qword_27FC1E5C8);
  }

  return qword_27FC1E5B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties]";
  v6 = 138;
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

const char *llvm::detail::getTypeNameImpl<mlir::IntegerAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::IntegerAttr]";
  v6 = 79;
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

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E5F0))
  {
    qword_27FC1E5E0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>();
    *algn_27FC1E5E8 = v1;
    __cxa_guard_release(&qword_27FC1E5F0);
  }

  return qword_27FC1E5E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PadOpGenericAdaptorBase::Properties]";
  v6 = 135;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::PaddingModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::PaddingModeAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML15PaddingModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PadOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E630))
  {
    qword_27FC1E620 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>();
    *algn_27FC1E628 = v1;
    __cxa_guard_release(&qword_27FC1E630);
  }

  return qword_27FC1E620;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties]";
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

void mlir::RewritePatternSet::add<mlir::ODIE::Compiler::CoreML::PlaceholderOp>(llvm::LogicalResult (*)(mlir::ODIE::Compiler::CoreML::PlaceholderOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(mlir::RewritePattern *a1)
{
  mlir::RewritePattern::~RewritePattern(a1);

  JUMPOUT(0x25F891040);
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::PlaceholderOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML10HandleTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_(mlir::ODIE::Compiler::CoreML::HandleType **a1, mlir::AsmParser *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::HandleType::parse(*a1, a2);
  *a2 = v3;
  return v3 != 0;
}

void llvm::map_to_vector<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>,llvm::ParseResult mlir::ODIE::Compiler::CoreML::parseDecomposableOp<mlir::ODIE::Compiler::CoreML::ReduceL2Norm>(mlir::OpAsmParser&,mlir::OperationState &)::{lambda(llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>)#1}>(void *a1, __int128 *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v7 = 0;
  v8 = (a1 + 2);
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (a3 && a5)
  {
    v11 = a3;
    v12 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v12 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v12 + 1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v8, v12 + 1, 64);
      v12 = *(a1 + 2);
      v8 = *a1;
    }

    else
    {
      v13 = 1;
    }

    v14 = &v8[64 * v12];
    v15 = 32 * v11 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      v14[56] = 0;
      *(v14 + 4) = v18;
      *(v14 + 5) = 0;
      v14[48] = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 64;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v7 = *(a1 + 2) + v13;
  }

  *(a1 + 2) = v7;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E658))
  {
    qword_27FC1E648 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>();
    unk_27FC1E650 = v1;
    __cxa_guard_release(&qword_27FC1E658);
  }

  return qword_27FC1E648;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ResizeByScaleOpGenericAdaptorBase::Properties]";
  v6 = 145;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::InterpolationModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr]";
  v6 = 113;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::SamplingModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::SamplingModeAttr]";
  v6 = 108;
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML21InterpolationModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML16SamplingModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E6B0))
  {
    qword_27FC1E6A0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>();
    *algn_27FC1E6A8 = v1;
    __cxa_guard_release(&qword_27FC1E6B0);
  }

  return qword_27FC1E6A0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties]";
  v6 = 148;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::ScatterModeAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::ScatterModeAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML15ScatterModeAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E6F0))
  {
    qword_27FC1E6E0 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>();
    *algn_27FC1E6E8 = v1;
    __cxa_guard_release(&qword_27FC1E6F0);
  }

  return qword_27FC1E6E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::SetMemberOpGenericAdaptorBase::Properties]";
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

void llvm::map_to_vector<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>,llvm::ParseResult mlir::ODIE::Compiler::CoreML::parseDecomposableOp<mlir::ODIE::Compiler::CoreML::SpaceToBatch>(mlir::OpAsmParser&,mlir::OperationState &)::{lambda(llvm::detail::zippy<llvm::detail::zip_shortest,llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>)#1}>(void *a1, __int128 *a2, unsigned int a3, uint64_t *a4, uint64_t a5)
{
  v7 = 0;
  v8 = (a1 + 2);
  *a1 = a1 + 2;
  a1[1] = 0x100000000;
  if (a3 && a5)
  {
    v11 = a3;
    v12 = (a5 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v12 >= ((a3 - 1) & 0x7FFFFFFFFFFFFFFuLL))
    {
      v12 = (a3 - 1) & 0x7FFFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = v12 + 1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, v8, v12 + 1, 64);
      v12 = *(a1 + 2);
      v8 = *a1;
    }

    else
    {
      v13 = 1;
    }

    v14 = &v8[64 * v12];
    v15 = 32 * v11 - 32;
    v16 = 8 * a5 - 8;
    do
    {
      v17 = *a2;
      *(v14 + 12) = *(a2 + 12);
      *v14 = v17;
      v18 = *a4++;
      v14[56] = 0;
      *(v14 + 4) = v18;
      *(v14 + 5) = 0;
      v14[48] = 0;
      if (!v15)
      {
        break;
      }

      a2 += 2;
      v14 += 64;
      v15 -= 32;
      v19 = v16;
      v16 -= 8;
    }

    while (v19);
    v7 = *(a1 + 2) + v13;
  }

  *(a1 + 2) = v7;
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>()
{
  if ((atomic_load_explicit(&qword_27FC1E718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1E718))
  {
    qword_27FC1E708 = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>();
    unk_27FC1E710 = v1;
    __cxa_guard_release(&qword_27FC1E718);
  }

  return qword_27FC1E708;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::detail::TargetSpecOpGenericAdaptorBase::Properties]";
  v6 = 142;
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

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::CoreML::TargetSpecAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::CoreML::TargetSpecAttr]";
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

BOOL _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_4ODIE8Compiler6CoreML14TargetSpecAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSH_S5_EUlS4_S5_E_EES1_lS4_S5_(mlir::AsmParser **a1, uint64_t *a2)
{
  v3 = mlir::ODIE::Compiler::CoreML::TargetSpecAttr::parse(*a1);
  *a2 = v3;
  return v3 != 0;
}

void llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::ODIE::Compiler::CoreML::TargetSpecOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[25] = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 8);
  (*(**a1 + 24))(&v10);
  if (v10)
  {
    mlir::Diagnostic::operator<<<2ul>(v11, "'");
    if (v10)
    {
      v5 = *(*(*(*(a1 + 16) + 8) + 8) + 16);
      v6 = *(*(*(*(a1 + 16) + 8) + 8) + 24);
      v9 = 261;
      v8[0] = v5;
      v8[1] = v6;
      mlir::Diagnostic::operator<<(v11, v8);
      if (v10)
      {
        mlir::Diagnostic::operator<<<6ul>(v11, "' op ");
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a2, &v10);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v10);
  v7 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::CoreML::TransformCastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::ODIE::Compiler::CoreML::TransformCastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::__mlir_ods_local_type_constraint_CoreMLTransformOps1(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v10 + 8, v11))
  {
    v12 = *a2;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    (*(v14 + 8))(v14, a2);
    v15 = 1;
  }

  else
  {
    v25 = 261;
    v24[0] = a3;
    v24[1] = a4;
    mlir::Operation::emitOpError(a1, v24, &v28);
    if (v28)
    {
      mlir::Diagnostic::operator<<<3ul>(v29, " #");
      if (v28)
      {
        v26 = 5;
        v27 = a5;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
        v17 = v30 + 24 * v31;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v31;
        if (v28)
        {
          mlir::Diagnostic::operator<<<45ul>(v29, " must be shaped of any type values, but got ");
          if (v28)
          {
            v26 = 4;
            v27 = a2;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v30, &v26, 1);
            v20 = v30 + 24 * v31;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v31;
          }
        }
      }
    }

    v15 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::ODIE::Compiler::CoreML::TransformCastOp::parse(uint64_t a1, uint64_t a2)
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

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseType<mlir::ShapedType>(a1, &v12))
  {
    return 0;
  }

  v8 = v12;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &v12) & 1) == 0)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  if (!mlir::AsmParser::parseType<mlir::ShapedType>(a1, &v12))
  {
    return 0;
  }

  __src = v12;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::ODIE::Compiler::CoreML::TransformCastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
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

  Type = mlir::detail::TypedValue<mlir::ShapedType>::getType(*(*(*(*this + 9) + 24) + 8));
  v13 = Type;
  if (Type)
  {
    v14 = *Type;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  (*(*a2 + 32))(a2, v13);
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
  if (*(v18 + 3) - v19 > 1uLL)
  {
    *v19 = 28532;
    *(v18 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v18, "to", 2uLL);
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

  v23 = mlir::detail::TypedValue<mlir::ShapedType>::getType(*(v22 + 8));
  v24 = v23;
  if (v23)
  {
    v25 = *v23;
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v25 + 8, v26);
  }

  (*(*a2 + 32))(a2, v24);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v29, 0);
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t *mlir::detail::TypedValue<mlir::ShapedType>::getType(uint64_t a1)
{
  v1 = (a1 & 0xFFFFFFFFFFFFFFF8);
  if ((a1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

BOOL mlir::AsmParser::parseType<mlir::ShapedType>(uint64_t a1, uint64_t **a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v12 = 0;
  if ((*(*a1 + 536))(a1, &v12))
  {
    v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
    *a2 = v5;
    a2[1] = v6;
    v7 = 1;
    if (!v5)
    {
      v10 = "invalid kind of type specified";
      v11 = 259;
      (*(*a1 + 24))(v13, a1, v4, &v10);
      v7 = (v14 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::detail::Parser::parseAffineMapOrIntegerSetReference(mlir::detail::Parser *this, mlir::AffineMap *a2, mlir::IntegerSet *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = *(this + 1);
  v26 = **v5;
  v27 = v5;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = v33;
  v32 = 0x400000000;
  v18 = 0;
  v19 = 0;
  *&v34 = &v19;
  *(&v34 + 1) = &v26;
  {
    goto LABEL_13;
  }

  v6 = v27;
  v7 = *(v27 + 14);
  if (v7 == 22)
  {
    *&v34 = &v18;
    *(&v34 + 1) = &v26;
    {
      goto LABEL_13;
    }

    v6 = v27;
    v7 = *(v27 + 14);
  }

  else
  {
    v18 = 0;
  }

  if (v7 == 13)
  {
    *(v6 + 5) = *(v6 + 7);
    v6[12] = v6[9];
    mlir::Lexer::lexToken((v6 + 1), &v34);
    v8 = v27;
    *(v27 + 7) = v34;
    v8[9] = v35[0];
    v10 = v18;
    v9 = v19;
    *&v34 = v35;
    *(&v34 + 1) = 0x400000000;
    v23 = &v26;
    *&v24 = &v34;
    {
      *a2 = mlir::AffineMap::getImpl(v9, v10, v34, DWORD2(v34), **v27);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v17 = v34;
    if (v34 == v35)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  *&v34 = "expected '->' or ':'";
  v36 = 259;
  if (!mlir::detail::Parser::parseToken(&v26, 15, &v34))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v12 = v18;
  v13 = v19;
  *&v34 = v35;
  *(&v34 + 1) = 0x400000000;
  v22[2] = &v23;
  v23 = &v25;
  v24 = xmmword_25D0A0580;
  v22[0] = &v26;
  v22[1] = &v34;
  {
    if (DWORD2(v34))
    {
      *a3 = mlir::IntegerSet::get(v13, v12, v34, DWORD2(v34), v23, v24);
      v11 = 1;
    }

    else
    {
      AffineConstantExpr = mlir::getAffineConstantExpr(0, **v27, v14);
      v11 = 1;
      v20 = 1;
      *a3 = mlir::IntegerSet::get(v13, v12, &AffineConstantExpr, 1, &v20, 1);
    }
  }

  else
  {
    v11 = 0;
  }

  if (v23 != &v25)
  {
    free(v23);
  }

  v17 = v34;
  if (v34 != v35)
  {
LABEL_25:
    free(v17);
  }

LABEL_14:
  if (v31 != v33)
  {
    free(v31);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::detail::Parser::parseAffineMapReference(mlir::detail::Parser *this, mlir::AffineMap *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 1) + 64);
  v9 = 0;
  if (mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, a2, &v9))
  {
    v4 = 1;
    if (v9)
    {
      v7 = "expected AffineMap, but got IntegerSet";
      v8 = 259;
      mlir::detail::Parser::emitError(this, v3, &v7, v10);
      v4 = (v11 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL mlir::detail::Parser::parseAffineExprReference(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4)
{
  v15[12] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v10[0] = **v5;
  v10[1] = v5;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14[0] = v15;
  v14[1] = 0x400000000;
  llvm::SmallVectorImpl<std::pair<llvm::StringRef,mlir::AffineExpr>>::append<std::pair<llvm::StringRef,mlir::AffineExpr> const*,void>(v14, a2, &a2[24 * a3]);
  *a4 = v7;
  if (v14[0] != v15)
  {
    free(v14[0]);
  }

  result = v7 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::detail::Parser::parseIntegerSetReference(mlir::detail::Parser *this, mlir::IntegerSet *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(*(this + 1) + 64);
  v9 = 0;
  if (mlir::detail::Parser::parseAffineMapOrIntegerSetReference(this, &v9, a2))
  {
    v4 = 1;
    if (v9)
    {
      v7 = "expected IntegerSet, but got AffineMap";
      v8 = 259;
      mlir::detail::Parser::emitError(this, v3, &v7, v10);
      v4 = (v11 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::detail::Parser::parseAffineMapOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v11 = **v6;
  v12 = v6;
  v13 = 1;
  v14 = a3;
  v15 = a4;
  v16 = 0;
  v17 = v19;
  v18 = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  v10[0] = &v11;
  v10[1] = &v20;
  v7 = 0;
  {
    *a2 = mlir::AffineMap::getImpl(v16, v18 - v16, v20, v21, **v12);
    v7 = 1;
  }

  if (v20 != v22)
  {
    free(v20);
  }

  if (v17 != v19)
  {
    free(v17);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL mlir::detail::Parser::parseAffineExprOfSSAIds(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v16[12] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 8);
  v9[0] = **v5;
  v9[1] = v5;
  v10 = 1;
  v11 = a3;
  v12 = a4;
  v13 = 0;
  v14 = v16;
  v15 = 0x400000000;
  *a2 = v6;
  if (v14 != v16)
  {
    free(v14);
  }

  result = v6 != 0;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseDimIdList(unsigned int &)::$_0>(unsigned int **a1)
{
  v1 = a1[1];
  v2 = **a1;
  **a1 = v2 + 1;
  AffineDimOrSymbol = getAffineDimOrSymbol(6u, v2, ***(v1 + 8));
}

uint64_t anonymous namespace::AffineParser::parseIdentifierDefinition(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v5 = (v4 + 56);
  v6 = *(v4 + 56);
  v7 = v6 == 3 || v6 == 12;
  if (!v7 && !mlir::Token::isKeyword(v5))
  {
    v22[0] = "expected bare identifier";
    v23 = 259;
    mlir::detail::Parser::emitWrongTokenError(a1, v22, &v24);
LABEL_16:
    v17 = v26 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
    goto LABEL_17;
  }

  v8 = *(v4 + 64);
  v9 = *(v4 + 72);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = v10 + 24 * v11;
    while (*(v10 + 8) != v9 || v9 && memcmp(*v10, v8, v9))
    {
      v10 += 24;
      if (v10 == v12)
      {
        goto LABEL_12;
      }
    }

    v21 = 1283;
    v20[0] = "redefinition of identifier '";
    v20[2] = v8;
    v20[3] = v9;
    v22[0] = v20;
    v22[2] = "'";
    v23 = 770;
    mlir::detail::Parser::emitError(a1, v8 - (v6 == 0), v22, &v24);
    goto LABEL_16;
  }

LABEL_12:
  *(v4 + 80) = *v5;
  *(v4 + 96) = *(v4 + 72);
  mlir::Lexer::lexToken((*(a1 + 8) + 8), &v24);
  v13 = *(a1 + 8);
  *(v13 + 56) = v24;
  *(v13 + 72) = v25;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  v25 = a2;
  v14 = llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,mlir::AffineExpr>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,mlir::AffineExpr>,true>>(a1 + 48, &v24);
  v15 = *(a1 + 48) + 24 * *(a1 + 56);
  v16 = *v14;
  *(v15 + 16) = *(v14 + 16);
  *v15 = v16;
  ++*(a1 + 56);
  v17 = 1;
LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

unint64_t llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,mlir::AffineExpr>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,mlir::AffineExpr>,true>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 24 * v3 > a2)
    {
      v6 = a2 - *a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 24);
      return *a1 + v6;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 24);
    }
  }

  return v2;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseSymbolIdList(unsigned int &)::$_0>(unsigned int **a1)
{
  v1 = a1[1];
  v2 = **a1;
  **a1 = v2 + 1;
  AffineDimOrSymbol = getAffineDimOrSymbol(7u, v2, ***(v1 + 8));
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapRange(unsigned int,unsigned int,mlir::AffineMap &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v6 = v5 != 0;
  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(*(a1 + 8), v5);
  return v6;
}

uint64_t anonymous namespace::AffineParser::parseAffineLowPrecOpExpr(_anonymous_namespace_::AffineParser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = a3;
  v5 = a2;
  if (!AffineBinaryOpExpr)
  {
    return AffineBinaryOpExpr;
  }

  while (1)
  {
    if (v8)
    {
      v11 = v8;
      if (v5)
      {
      }

      goto LABEL_15;
    }

    v12 = *(*(a1 + 1) + 64);
    if (!v13)
    {
      break;
    }

    v16 = v13;
    while (1)
    {
      if (!v17)
      {
        return 0;
      }

      v18 = v17;
      v19 = *(*(a1 + 1) + 64);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v16 = v21;
      v12 = v19;
      if (!AffineBinaryOpExpr)
      {
        return AffineBinaryOpExpr;
      }
    }

    if (!AffineBinaryOpExpr)
    {
      return AffineBinaryOpExpr;
    }

    if (v5)
    {
    }

    if (!v11)
    {
      return AffineBinaryOpExpr;
    }

LABEL_15:
    v5 = AffineBinaryOpExpr;
    v4 = v11;
    if (!AffineBinaryOpExpr)
    {
      return AffineBinaryOpExpr;
    }
  }

  if (!v5)
  {
    return AffineBinaryOpExpr;
  }
}

uint64_t anonymous namespace::AffineParser::parseAffineOperandExpr(_anonymous_namespace_::AffineParser *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 1);
  v7 = *(v6 + 14);
  if (v7 <= 20)
  {
    if (v7 <= 9)
    {
      if (v7 != 3)
      {
        if (v7 == 6)
        {
          goto LABEL_44;
        }

        goto LABEL_27;
      }

LABEL_28:
      goto LABEL_44;
    }

    if (v7 != 10)
    {
      if (v7 == 12)
      {
        goto LABEL_28;
      }

LABEL_27:
      if (mlir::Token::isKeyword((v6 + 7)))
      {
        goto LABEL_28;
      }

      if (v7)
      {
        v26 = 0;
      }

      else
      {
        v26 = -1;
      }

      if (a2)
      {
        v35[0] = "missing right operand of binary operator";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v6[8] + v26, v35, v32);
        v10 = v32;
      }

      else
      {
        v35[0] = "expected affine expression";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v6[8] + v26, v35, v31);
        v10 = v31;
      }

      goto LABEL_42;
    }

    UInt64IntegerValue = mlir::Token::getUInt64IntegerValue(v6[8], v6[9], a3, a4);
    if (v12)
    {
      v13 = UInt64IntegerValue;
      if ((UInt64IntegerValue & 0x8000000000000000) == 0)
      {
        v14 = *(a1 + 1);
        *(v14 + 5) = *(v14 + 7);
        v14[12] = v14[9];
        mlir::Lexer::lexToken((*(a1 + 1) + 8), &v28);
        v15 = *(a1 + 1);
        *(v15 + 7) = v28;
        v15[9] = v29;
        result = mlir::getAffineConstantExpr(v13, *a1, v16);
        goto LABEL_44;
      }
    }

    v25 = "constant too large for index";
    goto LABEL_33;
  }

  v9 = (v7 - 25);
  if (v9 <= 0x33)
  {
    if (((1 << (v7 - 25)) & 0x101000004000) != 0)
    {
      goto LABEL_28;
    }

    if (((1 << (v7 - 25)) & 0x21) != 0)
    {
      if (a2)
      {
        v35[0] = "missing right operand of binary operator";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v6[8], v35, v34);
        v10 = v34;
      }

      else
      {
        v35[0] = "missing left operand of binary operator";
        v36 = 259;
        mlir::detail::Parser::emitError(a1, v6[8], v35, v33);
        v10 = v33;
      }

      goto LABEL_42;
    }

    if (v9 == 51)
    {
      v35[0] = "expected symbol keyword";
      v36 = 259;
      if (!mlir::detail::Parser::parseToken(a1, 76, v35))
      {
        goto LABEL_43;
      }

      *&v28 = "expected '(' at start of SSA symbol";
      v30 = 259;
      if (!mlir::detail::Parser::parseToken(a1, 21, &v28))
      {
        goto LABEL_43;
      }

      if (!result)
      {
        goto LABEL_44;
      }

      v17 = result;
      v18 = "expected ')' at end of SSA symbol";
      goto LABEL_47;
    }
  }

  if (v7 != 21)
  {
    if (v7 != 24)
    {
      goto LABEL_27;
    }

    v35[0] = "expected '-'";
    v36 = 259;
    if (mlir::detail::Parser::parseToken(a1, 24, v35))
    {
      if (v19)
      {
        v35[0] = v19;
        AffineConstantExpr = mlir::getAffineConstantExpr(0xFFFFFFFFFFFFFFFFLL, *v19, v20);
        result = mlir::AffineExpr::operator*(v35, AffineConstantExpr, v22);
        goto LABEL_44;
      }

      v25 = "missing operand of negation";
LABEL_33:
      *&v28 = v25;
      v30 = 259;
      v24 = *(*(a1 + 1) + 64) - (*(*(a1 + 1) + 56) == 0);
      goto LABEL_34;
    }

LABEL_43:
    result = 0;
    goto LABEL_44;
  }

  v35[0] = "expected '('";
  v36 = 259;
  if (!mlir::detail::Parser::parseToken(a1, 21, v35))
  {
    goto LABEL_43;
  }

  v23 = *(a1 + 1);
  if (*(v23 + 14) == 28)
  {
    *&v28 = "no expression inside parentheses";
    v30 = 259;
    v24 = v23[8];
LABEL_34:
    mlir::detail::Parser::emitError(a1, v24, &v28, v35);
    v10 = v35;
LABEL_42:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
    goto LABEL_43;
  }

  if (!result)
  {
    goto LABEL_44;
  }

  v17 = result;
  v18 = "expected ')'";
LABEL_47:
  v35[0] = v18;
  v36 = 259;
  if (mlir::detail::Parser::parseToken(a1, 28, v35))
  {
    result = v17;
  }

  else
  {
    result = 0;
  }

LABEL_44:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t anonymous namespace::AffineParser::consumeIfLowPrecOp(_anonymous_namespace_::AffineParser *this)
{
  v2 = *(this + 1);
  v3 = (v2 + 56);
  v4 = *(v2 + 56);
  if (v4 == 24)
  {
    *(v2 + 80) = *v3;
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v8);
    v7 = *(this + 1);
    *(v7 + 56) = v8;
    *(v7 + 72) = v9;
    return 2;
  }

  else if (v4 == 25)
  {
    *(v2 + 80) = *v3;
    *(v2 + 96) = *(v2 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v8);
    v5 = *(this + 1);
    *(v5 + 56) = v8;
    *(v5 + 72) = v9;
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::AffineParser::getAffineBinaryOpExpr(int a1, unint64_t a2, mlir::MLIRContext *a3)
{
  v4 = a2;
  if (a1 == 1)
  {
    return mlir::AffineExpr::operator+(&v4, a3, a3);
  }

  else
  {
    return mlir::AffineExpr::operator-(&v4, a3, a3);
  }
}

uint64_t anonymous namespace::AffineParser::consumeIfHighPrecOp(_anonymous_namespace_::AffineParser *this)
{
  result = 0;
  v3 = *(this + 1);
  v4 = (v3 + 56);
  v5 = *(v3 + 56);
  if (v5 > 60)
  {
    if (v5 == 61)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v9 = *(this + 1);
      *(v9 + 56) = v10;
      *(v9 + 72) = v11;
      return 2;
    }

    else if (v5 == 69)
    {
      *(v3 + 80) = *v4;
      *(v3 + 96) = *(v3 + 72);
      mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
      v7 = *(this + 1);
      *(v7 + 56) = v10;
      *(v7 + 72) = v11;
      return 4;
    }
  }

  else if (v5 == 30)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v8 = *(this + 1);
    *(v8 + 56) = v10;
    *(v8 + 72) = v11;
    return 1;
  }

  else if (v5 == 39)
  {
    *(v3 + 80) = *v4;
    *(v3 + 96) = *(v3 + 72);
    mlir::Lexer::lexToken((*(this + 1) + 8), &v10);
    v6 = *(this + 1);
    *(v6 + 56) = v10;
    *(v6 + 72) = v11;
    return 3;
  }

  return result;
}

uint64_t anonymous namespace::AffineParser::parseSSAIdExpr(_anonymous_namespace_::AffineParser *this, uint64_t a2)
{
  v27[26] = *MEMORY[0x277D85DE8];
  if ((*(this + 16) & 1) == 0)
  {
    *&v23 = "unexpected ssa identifier";
    v25 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v23, v27);
    v15 = v27;
LABEL_14:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    goto LABEL_15;
  }

  v3 = *(this + 1);
  if (*(v3 + 56) != 6)
  {
    *&v23 = "expected ssa identifier";
    v25 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v23, v26);
    v15 = v26;
    goto LABEL_14;
  }

  v6 = *(v3 + 64);
  v5 = *(v3 + 72);
  v7 = *(this + 6);
  v8 = *(this + 14);
  if (!v8)
  {
LABEL_9:
    if ((*(this + 3))(*(this + 4), a2))
    {
      if (a2)
      {
        v12 = *(this + 11);
        *(this + 11) = v12 + 1;
        v13 = ***(this + 1);
        v14 = 7;
      }

      else
      {
        v12 = *(this + 10);
        *(this + 10) = v12 + 1;
        v13 = ***(this + 1);
        v14 = 6;
      }

      AffineDimOrSymbol = getAffineDimOrSymbol(v14, v12, v13);
      *&v23 = v6;
      *(&v23 + 1) = v5;
      v24 = AffineDimOrSymbol;
      v20 = llvm::SmallVectorTemplateCommon<std::pair<llvm::StringRef,mlir::AffineExpr>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::pair<llvm::StringRef,mlir::AffineExpr>,true>>(this + 48, &v23);
      v21 = *(this + 6) + 24 * *(this + 14);
      v22 = *v20;
      *(v21 + 16) = *(v20 + 16);
      *v21 = v22;
      ++*(this + 14);
      goto LABEL_16;
    }

LABEL_15:
    AffineDimOrSymbol = 0;
    goto LABEL_16;
  }

  v9 = (v7 + 24 * v8);
  v10 = (v7 + 16);
  while (1)
  {
    v11 = v10 - 2;
    if (*(v10 - 1) == v5 && (!v5 || !memcmp(*(v10 - 2), v6, v5)))
    {
      break;
    }

    v10 += 3;
    if (v11 + 3 == v9)
    {
      goto LABEL_9;
    }
  }

  AffineDimOrSymbol = *v10;
  *(v3 + 80) = *(v3 + 56);
  *(v3 + 96) = *(v3 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v23);
  v19 = *(this + 1);
  *(v19 + 56) = v23;
  *(v19 + 72) = v24;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return AffineDimOrSymbol;
}

uint64_t anonymous namespace::AffineParser::parseBareIdExpr(_anonymous_namespace_::AffineParser *this)
{
  v22[26] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v4 = (v2 + 56);
  v3 = *(v2 + 56);
  v5 = v3 == 3 || v3 == 12;
  if (!v5 && !mlir::Token::isKeyword(v4))
  {
    *&v18 = "expected bare identifier";
    v20 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v18, v22);
    v13 = v22;
    goto LABEL_15;
  }

  v6 = *(this + 14);
  if (!v6)
  {
LABEL_12:
    *&v18 = "use of undeclared identifier";
    v20 = 259;
    mlir::detail::Parser::emitWrongTokenError(this, &v18, v21);
    v13 = v21;
LABEL_15:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    v14 = 0;
    goto LABEL_17;
  }

  v7 = *(this + 6);
  v8 = (v7 + 24 * v6);
  v10 = *(v2 + 64);
  v9 = *(v2 + 72);
  v11 = (v7 + 16);
  while (1)
  {
    v12 = v11 - 2;
    if (*(v11 - 1) == v9 && (!v9 || !memcmp(*(v11 - 2), v10, v9)))
    {
      break;
    }

    v11 += 3;
    if (v12 + 3 == v8)
    {
      goto LABEL_12;
    }
  }

  v14 = *v11;
  *(v2 + 80) = *v4;
  *(v2 + 96) = *(v2 + 72);
  mlir::Lexer::lexToken((*(this + 1) + 8), &v18);
  v15 = *(this + 1);
  *(v15 + 56) = v18;
  *(v15 + 72) = v19;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t anonymous namespace::AffineParser::getAffineBinaryOpExpr(uint64_t a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v22[26] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v17))
      {
        result = mlir::AffineExpr::ceilDiv(&v18, a4, v10);
        goto LABEL_18;
      }

      v15[0] = "non-affine expression: right operand of ceildiv has to be either a constant or symbolic";
      v16 = 259;
      mlir::detail::Parser::emitError(a1, a5, v15, v20);
      v13 = v20;
    }

    else
    {
      if (mlir::AffineExpr::isSymbolicOrConstant(&v17))
      {
        result = mlir::AffineExpr::operator%(&v18, a4, v12);
        goto LABEL_18;
      }

      v15[0] = "non-affine expression: right operand of mod has to be either a constant or symbolic";
      v16 = 259;
      mlir::detail::Parser::emitError(a1, a5, v15, v19);
      v13 = v19;
    }

LABEL_17:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    result = 0;
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    if (mlir::AffineExpr::isSymbolicOrConstant(&v17))
    {
      result = mlir::AffineExpr::floorDiv(&v18, a4, v11);
      goto LABEL_18;
    }

    v15[0] = "non-affine expression: right operand of floordiv has to be either a constant or symbolic";
    v16 = 259;
    mlir::detail::Parser::emitError(a1, a5, v15, v21);
    v13 = v21;
    goto LABEL_17;
  }

  if ((mlir::AffineExpr::isSymbolicOrConstant(&v18) & 1) == 0 && (mlir::AffineExpr::isSymbolicOrConstant(&v17) & 1) == 0)
  {
    v15[0] = "non-affine expression: at least one of the multiply operands has to be either a constant or symbolic";
    v16 = 259;
    mlir::detail::Parser::emitError(a1, a5, v15, v22);
    v13 = v22;
    goto LABEL_17;
  }

  result = mlir::AffineExpr::operator*(&v18, a4, v8);
LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseIntegerSetConstraints(unsigned int,unsigned int,mlir::IntegerSet &)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v31[26] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  if (!v30)
  {
    goto LABEL_19;
  }

  v6 = *(v5 + 1);
  v7 = *(v6 + 56);
  if (v7 == 19)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
    v8 = *(v5 + 1);
    *(v8 + 56) = v27;
    *(v8 + 72) = v28;
    v6 = *(v5 + 1);
    v7 = *(v6 + 56);
    if (v7 == 18)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
      v9 = *(v5 + 1);
      *(v9 + 56) = v27;
      *(v9 + 72) = v28;
      if (v11)
      {
        v13 = v11;
        v14 = &v30;
LABEL_11:
        v18 = mlir::AffineExpr::operator-(v14, v13, v12);
        goto LABEL_12;
      }

LABEL_19:
      result = 0;
      goto LABEL_20;
    }
  }

  if (v7 == 18)
  {
    *(v6 + 80) = *(v6 + 56);
    *(v6 + 96) = *(v6 + 72);
    mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
    v20 = *(v5 + 1);
    *(v20 + 56) = v27;
    *(v20 + 72) = v28;
    v6 = *(v5 + 1);
    v7 = *(v6 + 56);
    if (v7 == 18)
    {
      *(v6 + 80) = *(v6 + 56);
      *(v6 + 96) = *(v6 + 72);
      mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
      v21 = *(v5 + 1);
      *(v21 + 56) = v27;
      *(v21 + 72) = v28;
      if (!v23)
      {
        goto LABEL_19;
      }

      v18 = mlir::AffineExpr::operator-(&v30, v23, v24);
      v19 = 1;
      if (!v18)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v7 != 23)
  {
    goto LABEL_18;
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
  v15 = *(v5 + 1);
  *(v15 + 56) = v27;
  *(v15 + 72) = v28;
  v6 = *(v5 + 1);
  v7 = *(v6 + 56);
  if (v7 != 18)
  {
LABEL_18:
    *&v27 = "expected '== affine-expr' or '>= affine-expr' at end of affine constraint";
    v29 = 259;
    mlir::detail::Parser::emitError(v5, *(v6 + 64) - (v7 == 0), &v27, v31);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v31);
    goto LABEL_19;
  }

  *(v6 + 80) = *(v6 + 56);
  *(v6 + 96) = *(v6 + 72);
  mlir::Lexer::lexToken((*(v5 + 1) + 8), &v27);
  v16 = *(v5 + 1);
  *(v16 + 56) = v27;
  *(v16 + 72) = v28;
  if (v27)
  {
    v13 = v30;
    v14 = &v27;
    goto LABEL_11;
  }

  v18 = 0;
LABEL_12:
  v19 = 0;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_17:
  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(*(a1 + 8), v18);
  llvm::SmallVectorTemplateBase<BOOL,true>::push_back(*(a1 + 16), v19);
  result = 1;
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::SmallVectorImpl<std::pair<llvm::StringRef,mlir::AffineExpr>>::append<std::pair<llvm::StringRef,mlir::AffineExpr> const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a3 - __src) >> 3);
  v8 = *(a1 + 8);
  if (v7 + v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v7 + v8, 24);
    LODWORD(v8) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 24 * v8), __src, v6);
    LODWORD(v8) = *(a1 + 8);
  }

  *(a1 + 8) = v8 + v7;
}

BOOL llvm::function_ref<llvm::ParseResult ()(void)>::callback_fn<anonymous namespace::AffineParser::parseAffineMapOfSSAIds(mlir::AffineMap &,mlir::AsmParser::Delimiter)::$_0>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(*(a1 + 8), v5);
  return v5 != 0;
}

uint64_t mlir::detail::ParserState::ParserState(uint64_t a1, uint64_t **a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = a3;
  v10 = *a3;
  *(a1 + 8) = a2;
  v11 = (a1 + 8);
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = v10;
  v12 = **a2;
  v13 = *(v12 + 8);
  v14 = *(v12 + 16) - v13;
  *(v11 + 2) = v13;
  *(v11 + 3) = v14;
  *(v11 + 4) = v13;
  *(v11 + 5) = 0;
  if (a6)
  {
    *(a1 + 48) = *(a6 + 8);
  }

  mlir::Lexer::lexToken(v11, (a1 + 56));
  *(a1 + 80) = 1;
  *(a1 + 88) = &byte_25D0A27DF;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = a4;
  *(a1 + 152) = a5;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 152;
  *(a1 + 144) = 0;
  *(a1 + 160) = a6;
  __src[0] = "builtin";
  __src[1] = 7;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x300000000;
  llvm::SmallVectorImpl<llvm::StringRef>::append<llvm::StringRef const*,void>(a1 + 168, __src, &v18);
  v15 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>,mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>,llvm::DenseMapInfo<mlir::OpAsmDialectInterface const*,void>,llvm::detail::DenseMapPair<mlir::OpAsmDialectInterface const*,llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 32 * v1;
    result = *result + 8;
    do
    {
      if ((*(result - 8) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::~StringMap(result);
      }

      result += 32;
      v2 -= 32;
    }

    while (v2);
  }

  return result;
}

uint64_t llvm::StringMap<std::pair<std::string,mlir::AsmDialectResourceHandle>,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          llvm::StringMapEntry<std::pair<std::string,mlir::AsmDialectResourceHandle>>::Destroy<llvm::MallocAllocator>(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void llvm::StringMapEntry<std::pair<std::string,mlir::AsmDialectResourceHandle>>::Destroy<llvm::MallocAllocator>(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x25F891030);
}

uint64_t llvm::StringMap<mlir::Type,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::StringMap<mlir::Attribute,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void mlir::AsmParserState::Impl::resolveSymbolUses(mlir::AsmParserState::Impl *this)
{
  v27[6] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x600000000;
  v1 = *(this + 96);
  if (v1)
  {
    v3 = *(this + 47);
    v4 = &v3[2 * v1];
    v23 = v4;
    do
    {
      v5 = v3[1];
      if (*(v5 + 8))
      {
        v6 = *v5;
        v7 = *(v5 + 16);
        if (v7)
        {
          v8 = 24 * v7;
          v9 = v6;
          while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v9 += 24;
            v8 -= 24;
            if (!v8)
            {
              goto LABEL_29;
            }
          }
        }

        else
        {
          v9 = v6;
        }

        v10 = v6 + 24 * v7;
        while (v9 != v10)
        {
          LODWORD(v26) = 0;
          if (mlir::SymbolTableCollection::lookupSymbolIn(this + 568, *v3, *v9, &v25))
          {
            v11 = *(v9 + 16);
            if (v11)
            {
              v12 = *(v9 + 8);
              v13 = &v12[16 * v11];
              do
              {
                v14 = v12[2];
                if (v26)
                {
                  v15 = v14 == 0;
                }

                else
                {
                  v15 = 1;
                }

                if (!v15)
                {
                  v16 = v25;
                  v17 = 16 * v14 - 16;
                  v18 = (*v12 + 8);
                  v19 = 8 * v26 - 8;
                  do
                  {
                    v24 = *v16;
                    v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>(this + 8, &v24);
                    if (v20 && v20 != *(this + 8) + 16 * *(this + 20))
                    {
                      llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(*(*this + 8 * *(v20 + 8)) + 144, *(v18 - 1), *v18);
                    }

                    if (!v19)
                    {
                      break;
                    }

                    ++v16;
                    v21 = v17;
                    v17 -= 16;
                    v18 += 2;
                    v19 -= 8;
                  }

                  while (v21);
                }

                v12 += 16;
              }

              while (v12 != v13);
            }
          }

          v9 += 24;
          v4 = v23;
          if (v9 == v10)
          {
            break;
          }

          while ((*v9 | 0x1000) == 0xFFFFFFFFFFFFF000)
          {
            v9 += 24;
            if (v9 == v10)
            {
              goto LABEL_29;
            }
          }
        }
      }

LABEL_29:
      v3 += 2;
    }

    while (v3 != v4);
    if (v25 != v27)
    {
      free(v25);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(uint64_t a1, uint64_t a2, uint64_t a3)
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

_BYTE *mlir::AsmParserState::convertIdLocToRange(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    return a1;
  }

  if (*a1 != 34)
  {
    v9 = a1 + 1;
    v10 = MEMORY[0x277D85DE0];
    while (1)
    {
      v11 = v9;
      v12 = *v9;
      if ((v12 & 0x80000000) != 0)
      {
        if (__maskrune(*v9, 0x500uLL))
        {
          goto LABEL_34;
        }
      }

      else if ((*(v10 + 4 * v12 + 60) & 0x500) != 0)
      {
        goto LABEL_34;
      }

      if (v12 - 36 > 0x3B || ((1 << (v12 - 36)) & 0x800000000000601) == 0)
      {
        return a1;
      }

LABEL_34:
      v9 = v11 + 1;
      if (!*v11)
      {
        return a1;
      }
    }
  }

  v2 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    do
    {
      v4 = v2 + 1;
      v5 = memchr("\n\v\f", v3, 4uLL);
      if (v5 && v5 - "\n\v\f" != -1)
      {
        break;
      }

      if (v3 == 92)
      {
        v7 = *v4;
        v8 = (v7 - 92) > 0x18 || ((1 << (v7 - 92)) & 0x1040001) == 0;
        if (v8 && v7 != 34)
        {
          if (llvm::hexDigitValue(char)::LUT[*v4] == -1 || llvm::hexDigitValue(char)::LUT[v2[2]] == -1)
          {
            return a1;
          }

          v4 = v2 + 3;
        }

        else
        {
          v4 = v2 + 2;
        }
      }

      v3 = *v4;
      v2 = v4;
    }

    while (*v4);
  }

  return a1;
}

void mlir::AsmParserState::initialize(mlir::AsmParserState *this, mlir::Operation *a2)
{
  v4 = *(a2 + 6);
  llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(*this + 440, &v4);
  v3 = *(*(*this + 440) + 8 * *(*this + 448) - 8);
  if (v3)
  {
    llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>> *,true>::push_back(*this + 504, v3);
  }
}

void llvm::SmallVectorTemplateBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>> *,true>::push_back(uint64_t a1, uint64_t a2)
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

char ***mlir::AsmParserState::finalize(mlir::AsmParserState::Impl **this, mlir::Operation *a2)
{
  v10 = a2;
  v3 = *this;
  v4 = *(*this + 55);
  v5 = *(*this + 112);
  v6 = v4 + 8 * v5;
  v7 = *(v6 - 8);
  *(v6 - 8) = 0;
  v9 = v7;
  LODWORD(v5) = v5 - 1;
  *(v3 + 112) = v5;
  std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100]((v4 + 8 * v5), 0);
  if (v7)
  {
    llvm::SmallVectorImpl<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>>::emplace_back<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(*this + 376, &v10, &v9);
  }

  mlir::AsmParserState::Impl::resolveSymbolUses(*this);
  return std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100](&v9, 0);
}

uint64_t llvm::SmallVectorImpl<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>>::emplace_back<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(a1, a2, a3);
  }

  v4 = *a1;
  v5 = (*a1 + 16 * v3);
  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  *v5 = v6;
  v5[1] = v7;
  v8 = v3 + 1;
  *(a1 + 8) = v8;
  return v4 + 16 * v8 - 16;
}

uint64_t llvm::SmallVectorImpl<mlir::AsmParserState::Impl::PartialOpDef>::emplace_back<mlir::OperationName const&>(uint64_t a1, const mlir::OperationName *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>(a1, a2);
  }

  else
  {
    mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef((*a1 + 8 * v3), a2);
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
    return *a1 + 8 * v4 - 8;
  }
}

void mlir::AsmParserState::finalizeOperationDefinition(uint64_t *a1, uint64_t a2)
{
  v8 = a2;
  v2 = *a1;
  v3 = *(*a1 + 440);
  v4 = *(*a1 + 448);
  v5 = v3 + 8 * v4;
  v6 = *(v5 - 8);
  *(v5 - 8) = 0;
  v7 = v6;
  LODWORD(v4) = v4 - 1;
  *(v2 + 448) = v4;
  std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100]((v3 + 8 * v4), 0);
  operator new();
}

uint64_t *std::unique_ptr<mlir::AsmParserState::OperationDefinition>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 144);
    if (v3 != (v2 + 160))
    {
      free(v3);
    }

    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
    if (v5)
    {
      v6 = &v4[88 * v5 - 64];
      v7 = -88 * v5;
      do
      {
        if (v6 + 2 != *v6)
        {
          free(*v6);
        }

        v6 -= 11;
        v7 += 88;
      }

      while (v7);
      v4 = *(v2 + 40);
    }

    if (v4 != (v2 + 56))
    {
      free(v4);
    }

    MEMORY[0x25F891040](v2, 0x10F0C401650C48ELL);
  }

  return a1;
}

_BYTE *mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v13 = a2;
  v5 = *a1;
  v10 = *(*a1 + 96);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v5 + 152, &v13, &v10, &v11);
  if (v12 == 1)
  {
    v6 = *a1;
    mlir::AsmParserState::convertIdLocToRange(a3);
    operator new();
  }

  result = mlir::AsmParserState::convertIdLocToRange(a3);
  v8 = *(*(*a1 + 88) + 8 * *(v11 + 8));
  *(v8 + 8) = result;
  *(v8 + 16) = v9;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::InsertIntoBucketImpl<mlir::Block *>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::SmallVectorImpl<std::unique_ptr<mlir::AsmParserState::BlockDefinition>>::emplace_back<std::unique_ptr<mlir::AsmParserState::BlockDefinition>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= *(a1 + 12))
  {
    return llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::BlockDefinition>>(a1, a2);
  }

  v3 = *a1;
  v4 = *a2;
  *a2 = 0;
  *(v3 + 8 * v2) = v4;
  v5 = v2 + 1;
  *(a1 + 8) = v5;
  return v3 + 8 * v5 - 8;
}

uint64_t *std::unique_ptr<mlir::AsmParserState::BlockDefinition>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    llvm::SmallVector<mlir::AsmParserState::SMDefinition,1u>::~SmallVector((v2 + 88));
    v3 = *(v2 + 24);
    if (v3 != (v2 + 40))
    {
      free(v3);
    }

    MEMORY[0x25F891040](v2, 0x10F0C400A026A70);
  }

  return a1;
}

void mlir::AsmParserState::addDefinition(uint64_t *a1, uint64_t a2, _BYTE *a3)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  *&v15 = *(a2 + 16);
  v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::doFind<mlir::Block const*>((v6 + 152), &v15);
  v8 = *(v6 + 152) + 16 * *(v6 + 168);
  if (v7)
  {
    v8 = v7;
  }

  v9 = *(*(*a1 + 88) + 8 * *(v8 + 8));
  v10 = *(a2 + 24);
  v11 = v10;
  if (v10 >= *(v9 + 96))
  {
    llvm::SmallVectorImpl<mlir::AsmParserState::SMDefinition>::resizeImpl<false>(v9 + 88, (v10 + 1));
  }

  *&v15 = mlir::AsmParserState::convertIdLocToRange(a3);
  *(&v15 + 1) = v12;
  v16[0] = v17;
  v16[1] = 0x300000000;
  v13 = (*(v9 + 88) + 80 * v11);
  *v13 = v15;
  llvm::SmallVectorImpl<llvm::SMRange>::operator=((v13 + 1), v16);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t *mlir::AsmParserState::addAttrAliasDefinition(uint64_t *a1, unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v18 = *(*a1 + 184);
  v13 = llvm::xxh3_64bits(a2, a3, a3);
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v12 + 304), a2, a3, v13, &v18);
  if (v15)
  {
    v16 = *a1;
    operator new();
  }

  v17 = *(*(*a1 + 176) + 8 * *(*result + 8));
  v17[2] = a4;
  v17[3] = a5;
  v17[12] = a6;
  return result;
}

void mlir::AsmParserState::addTypeAliasDefinition(uint64_t *a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = *a1;
  v9 = *(*a1 + 248);
  v7 = llvm::xxh3_64bits(a2, a3, a3);
  llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v6 + 328), a2, a3, v7, &v9);
  v8 = *a1;
  operator new();
}

void mlir::AsmParserState::addUses(uint64_t *a1, unint64_t a2, _BYTE **a3, uint64_t a4)
{
  if ((~*(a2 + 8) & 7) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v11 = *a1;
    v44 = *(a2 + 16);
    v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::doFind<mlir::Block const*>((v11 + 152), &v44);
    if (a4)
    {
      v13 = *(v11 + 152) + 16 * *(v11 + 168);
      if (v12)
      {
        v13 = v12;
      }

      v14 = *(*(*(*a1 + 88) + 8 * *(v13 + 8)) + 88) + 80 * *(a2 + 24);
      v15 = 8 * a4;
      do
      {
        v16 = mlir::AsmParserState::convertIdLocToRange(*a3);
        v18 = *(v14 + 24);
        if (v18 >= *(v14 + 28))
        {
          llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(v14 + 16, v16, v17);
        }

        else
        {
          v19 = (*(v14 + 16) + 16 * v18);
          *v19 = v16;
          v19[1] = v17;
          *(v14 + 24) = v18 + 1;
        }

        ++a3;
        v15 -= 8;
      }

      while (v15);
    }

    return;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16) + 120;
  }

  else
  {
    v10 = v8 + 16 * v9 + 16;
  }

  v20 = *a1;
  v44 = v10;
  v21 = llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::doFind<mlir::Operation const*>((v20 + 64), &v44);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(v20 + 64) + 16 * *(v20 + 80);
  }

  v23 = *a1;
  if (v22 == *(v23 + 64) + 16 * *(v23 + 80))
  {
    v43 = 0;
    v26 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(*(v23 + 352), *(v23 + 368), a2, &v43);
    v27 = v43;
    if (v26)
    {
      v28 = *(v43 + 16);
      v29 = *(v43 + 20);
LABEL_38:
      v42 = ((8 * a4) >> 3) + v28;
      if (v42 > v29)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v27 + 8, (v27 + 24), v42, 8);
        v28 = *(v27 + 16);
      }

      if (a4)
      {
        memcpy((*(v27 + 8) + 8 * v28), a3, 8 * a4);
        v28 = *(v27 + 16);
      }

      *(v27 + 16) = v28 + a4;
      return;
    }

    v44 = v43;
    v40 = *(v23 + 360);
    v41 = *(v23 + 368);
    if (4 * v40 + 4 >= 3 * v41)
    {
      v41 *= 2;
    }

    else if (v41 + ~v40 - *(v23 + 364) > v41 >> 3)
    {
LABEL_35:
      *(v23 + 360) = v40 + 1;
      if (*v27 != -4096)
      {
        --*(v23 + 364);
      }

      v28 = 0;
      *v27 = a2;
      *(v27 + 8) = v27 + 24;
      *(v27 + 16) = 0x600000000;
      v29 = 6;
      goto LABEL_38;
    }

    llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(v23 + 352, v41);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(*(v23 + 352), *(v23 + 368), a2, &v44);
    v40 = *(v23 + 360);
    v27 = v44;
    goto LABEL_35;
  }

  v24 = *(v8 + 8);
  if ((v24 & 7) == 6)
  {
    v25 = *(v8 + 16) + 6;
  }

  else
  {
    v25 = v24 & 7;
  }

  v30 = *(*v23 + 8 * *(v22 + 8));
  v31 = *(v30 + 40);
  v32 = *(v30 + 48);
  v33 = v31 + 88 * v32 + 24;
  for (i = -88 * v32; i; i += 88)
  {
    v35 = *(v33 - 112);
    v33 -= 88;
    if (v25 >= v35)
    {
      if (a4)
      {
        v36 = 8 * a4;
        do
        {
          v37 = *a3++;
          v38 = mlir::AsmParserState::convertIdLocToRange(v37);
          llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(v33, v38, v39);
          v36 -= 8;
        }

        while (v36);
      }

      return;
    }
  }
}

void mlir::AsmParserState::addUses(uint64_t *a1, uint64_t a2, _BYTE **a3, uint64_t a4)
{
  v17 = a2;
  v7 = *a1;
  v14 = *(*a1 + 96);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(v7 + 152, &v17, &v14, &v15);
  if (v16 == 1)
  {
    v8 = *a1;
    operator new();
  }

  if (a4)
  {
    v9 = *(*(*a1 + 88) + 8 * *(v15 + 8));
    v10 = 8 * a4;
    do
    {
      v11 = *a3++;
      v12 = mlir::AsmParserState::convertIdLocToRange(v11);
      llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(v9 + 24, v12, v13);
      v10 -= 8;
    }

    while (v10);
  }
}

uint64_t mlir::AsmParserState::addUses(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v10 = a2;
  v4 = *(*result + 512);
  if (v4)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](*(*(*result + 504) + 8 * v4 - 8), &v10);
    v8 = &a3[16 * a4];
    v9 = a3;
    return llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::emplace_back<llvm::SMRange const*,llvm::SMRange const*>(v7, &v9, &v8);
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::operator[](uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::InsertIntoBucketImpl<mlir::Attribute>(a1, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0;
  }

  return v5 + 1;
}

uint64_t llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::emplace_back<llvm::SMRange const*,llvm::SMRange const*>(uint64_t a1, _BYTE **a2, _BYTE **a3)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {

    return llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::growAndEmplaceBack<llvm::SMRange const*,llvm::SMRange const*>(a1, a2, a3);
  }

  else
  {
    v5 = (*a1 + (v4 << 6));
    v6 = *a2;
    v7 = *a3;
    *v5 = v5 + 2;
    v5[1] = 0x300000000;
    llvm::SmallVectorImpl<llvm::SMRange>::append<llvm::SMRange const*,void>(v5, v6, v7);
    v8 = (*(a1 + 8) + 1);
    *(a1 + 8) = v8;
    return *a1 + (v8 << 6) - 64;
  }
}

void mlir::AsmParserState::addAttrAliasUses(uint64_t *a1, unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = llvm::StringMap<unsigned int,llvm::MallocAllocator>::find(*a1 + 304, a2, a3);
  v12 = *a1;
  if (*(*a1 + 304) + 8 * *(*a1 + 312) == v10)
  {
    v15 = *(v12 + 184);
    v13 = llvm::xxh3_64bits(a2, a3, v11);
    llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>((v12 + 304), a2, a3, v13, &v15);
    v14 = *a1;
    operator new();
  }

  llvm::SmallVectorTemplateBase<llvm::SMRange,true>::push_back(*(*(v12 + 176) + 8 * *(*v10 + 8)) + 32, a4, a5);
}

BOOL mlir::AsmParserState::refineDefinition(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v9 = a2;
  v5 = *a1;
  v6 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::doFind<mlir::Value>((*a1 + 352), &v9);
  v7 = *(v5 + 352) + 72 * *(v5 + 368);
  if (v6)
  {
    v7 = v6;
  }

  mlir::AsmParserState::addUses(a1, a3, *(v7 + 8), *(v7 + 16));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::erase(*a1 + 352, &v9);
}

BOOL llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::erase(uint64_t a1, void *a2)
{
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::doFind<mlir::Value>(a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = v3[1];
    if (v5 != v4 + 3)
    {
      free(v5);
    }

    *v4 = -8192;
    *(a1 + 8) = vadd_s32(*(a1 + 8), 0x1FFFFFFFFLL);
  }

  return v4 != 0;
}

char ***std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100](char ***result, char **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::destroyAll(v2);
    MEMORY[0x25F891030](*v2, 8);

    JUMPOUT(0x25F891040);
  }

  return result;
}

char **llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::destroyAll(char **result)
{
  v1 = *(result + 4);
  if (v1)
  {
    v2 = 24 * v1;
    result = (*result + 8);
    do
    {
      if ((*(result - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        result = llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>::~SmallVector(result);
      }

      result += 3;
      v2 -= 24;
    }

    while (v2);
  }

  return result;
}

char **llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[64 * v3 - 64];
    v5 = -64 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 8;
      v5 += 64;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorImpl<llvm::SMRange>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<llvm::SMRange>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 16 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 16 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 16);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 16 * v7), (*a2 + 16 * v7), 16 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::SMRange>::assignRemote(uint64_t a1, uint64_t a2)
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

uint64_t llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::growAndEmplaceBack<mlir::Operation *&,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v14 = 0;
  v6 = a1 + 16;
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 16, &v14);
  v8 = &v7[*(a1 + 8)];
  v9 = *a2;
  v10 = *a3;
  *a3 = 0;
  *v8 = v9;
  v8[1] = v10;
  llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::moveElementsForGrow(a1, v7);
  v11 = v14;
  if (*a1 != v6)
  {
    free(*a1);
  }

  *a1 = v7;
  v12 = *(a1 + 8) + 1;
  *(a1 + 8) = v12;
  *(a1 + 12) = v11;
  return &v7[v12 - 1];
}

char ***llvm::SmallVectorTemplateBase<std::pair<mlir::Operation *,std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>>,false>::moveElementsForGrow(char ***result, _OWORD *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = &(*result)[2 * v2];
    do
    {
      v5 = *v3;
      v3[1] = 0;
      *a2++ = v5;
      v3 += 2;
    }

    while (v3 != v4);
    v6 = (v4 - 8);
    v7 = -16 * v2;
    do
    {
      result = std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100](v6, 0);
      v6 -= 2;
      v7 += 16;
    }

    while (v7);
  }

  return result;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::growAndEmplaceBack<mlir::OperationName const&>(uint64_t a1, const mlir::OperationName *a2)
{
  v9 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v9);
  mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef(&v5[*(a1 + 8)], a2);
  llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::moveElementsForGrow(a1, v5);
  v6 = v9;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  return &v5[v7 - 1];
}

char ***llvm::SmallVectorTemplateBase<mlir::AsmParserState::Impl::PartialOpDef,false>::moveElementsForGrow(char ***result, char **a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = *result;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a2++ = v6;
      v4 -= 8;
    }

    while (v4);
    v7 = -8 * v2;
    v8 = &v3[v2 - 1];
    do
    {
      result = std::unique_ptr<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>>::reset[abi:nn200100](v8--, 0);
      v7 += 8;
    }

    while (v7);
  }

  return result;
}

mlir::AsmParserState::Impl::PartialOpDef *mlir::AsmParserState::Impl::PartialOpDef::PartialOpDef(mlir::AsmParserState::Impl::PartialOpDef *this, const mlir::OperationName *a2)
{
  *this = 0;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::SymbolTable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SymbolTable>(void)::Empty>,void>::resolveTypeID();
  if ((*(**a2 + 32))(*a2, v4))
  {
    operator new();
  }

  return this;
}

void llvm::SmallVectorTemplateBase<mlir::AsmParserState::OperationDefinition::ResultGroupDefinition,false>::growAndEmplaceBack<unsigned int const&,llvm::SMRange>(uint64_t a1, _DWORD *a2, _OWORD *a3)
{
  v19 = 0;
  v6 = (a1 + 16);
  v7 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 88, &v19);
  v8 = &v7[88 * *(a1 + 8)];
  *v8 = *a2;
  *(v8 + 8) = *a3;
  *(v8 + 3) = v8 + 40;
  *(v8 + 4) = 0x300000000;
  v9 = *a1;
  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = &v9[88 * v10];
    v12 = v7 + 24;
    v13 = (v9 + 24);
    do
    {
      v14 = v13 - 24;
      *(v12 - 6) = *(v13 - 24);
      *(v12 - 1) = *(v13 - 16);
      *v12 = v12 + 2;
      v12[1] = 0x300000000;
      if (*(v13 + 8))
      {
        llvm::SmallVectorImpl<llvm::SMRange>::operator=(v12, v13);
      }

      v12 += 11;
      v13 += 88;
    }

    while ((v14 + 88) != v11);
    v15 = *(a1 + 8);
    v9 = *a1;
    if (v15)
    {
      v16 = &v9[88 * v15 - 64];
      v17 = -88 * v15;
      do
      {
        if (v16 + 2 != *v16)
        {
          free(*v16);
        }

        v16 -= 11;
        v17 += 88;
      }

      while (v17);
      v9 = *a1;
    }
  }

  v18 = v19;
  if (v9 != v6)
  {
    free(v9);
  }

  *a1 = v7;
  ++*(a1 + 8);
  *(a1 + 12) = v18;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::OperationDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::OperationDefinition>>(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v4 = (a1 + 16);
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v16);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  v8 = *a1;
  if (v6)
  {
    v9 = 8 * v6;
    v10 = v5;
    v11 = *a1;
    do
    {
      v12 = *v11;
      *v11++ = 0;
      *v10++ = v12;
      v9 -= 8;
    }

    while (v9);
    v13 = -8 * v6;
    v14 = &v8[v6 - 1];
    do
    {
      v14 = std::unique_ptr<mlir::AsmParserState::OperationDefinition>::~unique_ptr[abi:nn200100](v14) - 1;
      v13 += 8;
    }

    while (v13);
    v8 = *a1;
  }

  v15 = v16;
  if (v8 != v4)
  {
    free(v8);
  }

  *a1 = v5;
  ++*(a1 + 8);
  *(a1 + 12) = v15;
}

char **llvm::SmallVector<mlir::AsmParserState::SMDefinition,1u>::~SmallVector(char **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  if (v3)
  {
    v4 = &v2[80 * v3 - 64];
    v5 = -80 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 10;
      v5 += 80;
    }

    while (v5);
    v2 = *a1;
  }

  if (v2 != (a1 + 2))
  {
    free(v2);
  }

  return a1;
}

uint64_t llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::growAndEmplaceBack<std::unique_ptr<mlir::AsmParserState::BlockDefinition>>(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = a1 + 16;
  v5 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 8, &v11);
  v6 = *(a1 + 8);
  v7 = *a2;
  *a2 = 0;
  v5[v6] = v7;
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::moveElementsForGrow(a1, v5);
  v8 = v11;
  if (*a1 != v4)
  {
    free(*a1);
  }

  *a1 = v5;
  v9 = *(a1 + 8) + 1;
  *(a1 + 8) = v9;
  *(a1 + 12) = v8;
  return &v5[v9 - 1];
}

uint64_t *llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::BlockDefinition>,false>::moveElementsForGrow(uint64_t *result, void *a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = 8 * v2;
    v5 = *result;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a2++ = v6;
      v4 -= 8;
    }

    while (v4);
    v7 = -8 * v2;
    result = (v3 + 8 * v2 - 8);
    do
    {
      result = std::unique_ptr<mlir::AsmParserState::BlockDefinition>::~unique_ptr[abi:nn200100](result) - 1;
      v7 += 8;
    }

    while (v7);
  }

  return result;
}

void llvm::SmallVectorImpl<mlir::AsmParserState::SMDefinition>::resizeImpl<false>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      if (*(a1 + 12) < a2)
      {
        llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::grow(a1, a2);
        v2 = *(a1 + 8);
      }

      if (v2 != a2)
      {
        v5 = *a1 + 80 * a2;
        v6 = *a1 + 80 * v2;
        do
        {
          *(v6 + 48) = 0uLL;
          *(v6 + 64) = 0uLL;
          *v6 = 0uLL;
          *(v6 + 16) = 0uLL;
          *(v6 + 32) = 0uLL;
          *(v6 + 16) = v6 + 32;
          *(v6 + 28) = 3;
          v6 += 80;
        }

        while (v6 != v5);
      }

      *(a1 + 8) = a2;
    }

    else
    {

      llvm::SmallVectorImpl<mlir::AsmParserState::SMDefinition>::truncate(a1, a2);
    }
  }
}

void llvm::SmallVectorImpl<mlir::AsmParserState::SMDefinition>::truncate(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = 5 * v4;
    v6 = (*a1 + 16 * v5 - 64);
    v7 = 80 * a2 - 16 * v5;
    do
    {
      if (v6 + 2 != *v6)
      {
        free(*v6);
      }

      v6 -= 10;
      v7 += 80;
    }

    while (v7);
  }

  *(a1 + 8) = v2;
}

void llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 80, &v6);
  llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::moveElementsForGrow(uint64_t a1, uint64_t a2)
{
  llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::uninitialized_move<mlir::AsmParserState::SMDefinition*,mlir::AsmParserState::SMDefinition*>(*a1, *a1 + 80 * *(a1 + 8), a2);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = (*a1 + 80 * v3 - 64);
    v5 = -80 * v3;
    do
    {
      if (v4 + 2 != *v4)
      {
        free(*v4);
      }

      v4 -= 10;
      v5 += 80;
    }

    while (v5);
  }
}

uint64_t llvm::SmallVectorTemplateBase<mlir::AsmParserState::SMDefinition,false>::uninitialized_move<mlir::AsmParserState::SMDefinition*,mlir::AsmParserState::SMDefinition*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = (a3 + 16);
    v5 = result + 16;
    do
    {
      *(v4 - 1) = *(v5 - 16);
      *v4 = v4 + 2;
      v4[1] = 0x300000000;
      if (*(v5 + 8))
      {
        result = llvm::SmallVectorImpl<llvm::SMRange>::operator=(v4, v5);
      }

      v6 = v5 - 16;
      v4 += 10;
      v5 += 80;
    }

    while (v6 + 80 != a2);
  }

  return result;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, const void *a2, size_t a3, int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  i = (*a1 + 8 * v9);
  v11 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = i[1];
      ++i;
      v11 = v12;
    }

    return i;
  }

  buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
  v14 = buffer;
  v15 = buffer + 16;
  if (a3)
  {
    memcpy(buffer + 16, a2, a3);
  }

  v15[a3] = 0;
  *v14 = a3;
  *(v14 + 2) = *a5;
  *i = v14;
  ++*(a1 + 3);
    ;
  }

  return i;
}

void std::default_delete<mlir::AsmParserState::AttributeAliasDefinition>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2 != (a2 + 48))
    {
      free(v2);
    }

    JUMPOUT(0x25F891040);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 8 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::AttributeAliasDefinition>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = 8 * v2;
    v5 = *a1;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a2++ = v6;
      v4 -= 8;
    }

    while (v4);
    v7 = -8 * v2;
    v8 = &v3[v2 - 1];
    do
    {
      v9 = *v8;
      *v8 = 0;
      if (v9)
      {
        std::default_delete<mlir::AsmParserState::AttributeAliasDefinition>::operator()[abi:nn200100](v8, v9);
      }

      --v8;
      v7 += 8;
    }

    while (v7);
  }
}

void std::default_delete<mlir::AsmParserState::TypeAliasDefinition>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2 != (a2 + 48))
    {
      free(v2);
    }

    JUMPOUT(0x25F891040);
  }
}

unint64_t llvm::SmallVectorTemplateCommon<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = v4 + a3;
  if (v4 + a3 > *(a1 + 12))
  {
    v7 = *a1 + 8 * v4;
    if (*a1 <= a2 && v7 > a2)
    {
      v9 = a2 - *a1;
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>::grow(a1, v5);
      return *a1 + v9;
    }

    else
    {
      llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>::grow(a1, v5);
    }
  }

  return a2;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v6);
  llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

void llvm::SmallVectorTemplateBase<std::unique_ptr<mlir::AsmParserState::TypeAliasDefinition>,false>::moveElementsForGrow(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *a1;
    v4 = 8 * v2;
    v5 = *a1;
    do
    {
      v6 = *v5;
      *v5++ = 0;
      *a2++ = v6;
      v4 -= 8;
    }

    while (v4);
    v7 = -8 * v2;
    v8 = &v3[v2 - 1];
    do
    {
      v9 = *v8;
      *v8 = 0;
      if (v9)
      {
        std::default_delete<mlir::AsmParserState::TypeAliasDefinition>::operator()[abi:nn200100](v8, v9);
      }

      --v8;
      v7 += 8;
    }

    while (v7);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(uint64_t a1, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (a1 + 72 * v7);
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
        v8 = (a1 + 72 * (v15 & v6));
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

void *llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((72 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 72 * v10 - 72;
      v13 = vdupq_n_s64(v12 / 0x48);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[9] = -4096;
        }

        v11 += 2;
        result += 18;
      }

      while (((v12 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v11);
    }

    if (!v3)
    {
LABEL_29:

      JUMPOUT(0x25F891030);
    }

    v15 = 72 * v3;
    v16 = v4;
    while (1)
    {
      v17 = *v16;
      if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        break;
      }

LABEL_28:
      v16 += 72;
      v15 -= 72;
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    v29 = 0;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>,mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,llvm::SmallVector<llvm::SMLoc,6u>>>::LookupBucketFor<mlir::Value>(*a1, *(a1 + 16), v17, &v29);
    v18 = v29;
    *v29 = *v16;
    v19 = v18 + 3;
    v18[1] = v18 + 3;
    v18[2] = 0x600000000;
    v20 = *(v16 + 8);
    if (v16 == v18 || (v21 = *(v16 + 16)) == 0)
    {
LABEL_26:
      ++*(a1 + 8);
      if ((v16 + 24) != v20)
      {
        free(v20);
      }

      goto LABEL_28;
    }

    if ((v16 + 24) != v20)
    {
      v18[1] = v20;
      v22 = *(v16 + 20);
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
      *(v16 + 8) = v16 + 24;
      *(v16 + 20) = 0;
      v20 = (v16 + 24);
LABEL_25:
      *(v16 + 16) = 0;
      goto LABEL_26;
    }

    if (v21 < 7)
    {
      v23 = *(v16 + 16);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod((v18 + 1), v18 + 3, *(v16 + 16), 8);
      v23 = *(v16 + 16);
      v20 = *(v16 + 8);
      if (!v23)
      {
LABEL_24:
        *(v18 + 4) = v21;
        goto LABEL_25;
      }

      v19 = v18[1];
    }

    memcpy(v19, v20, 8 * v23);
    v20 = *(v16 + 8);
    goto LABEL_24;
  }

  *(a1 + 8) = 0;
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = 72 * v24 - 72;
    v27 = vdupq_n_s64(v26 / 0x48);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v25), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *result = -4096;
      }

      if (v28.i8[4])
      {
        result[9] = -4096;
      }

      v25 += 2;
      result += 18;
    }

    while (((v26 / 0x48 + 2) & 0x7FFFFFFFFFFFFFELL) != v25);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
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
        v7 = (v4 + 24 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::InsertIntoBucketImpl<mlir::Attribute>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = 24 * v10 - 24;
      v13 = vdupq_n_s64(v12 / 0x18);
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v14.i8[0])
        {
          *result = -4096;
        }

        if (v14.i8[4])
        {
          result[3] = -4096;
        }

        v11 += 2;
        result += 6;
      }

      while (((v12 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v11);
    }

    if (v3)
    {
      v15 = v4 + 24 * v3;
      v16 = v4;
      do
      {
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v35 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>,mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>,llvm::DenseMapInfo<mlir::Attribute,void>,llvm::detail::DenseMapPair<mlir::Attribute,llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>>>::LookupBucketFor<mlir::Attribute>(a1, v16, &v35);
          *v35 = *v16;
          v17 = v35;
          v18 = v35 + 3;
          v19 = v35;
          v35[1] = v35 + 3;
          v20 = (v19 + 1);
          v17[2] = 0;
          v21 = *(v16 + 16);
          if (v17 != v16 && v21 != 0)
          {
            v23 = *(v16 + 8);
            if (v23 == v16 + 24)
            {
              llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::clear(v20);
              v36 = 0;
              v25 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(v20, v18, v21, 64, &v36);
              llvm::SmallVectorTemplateBase<llvm::SmallVector<llvm::SMRange,3u>,false>::moveElementsForGrow(v20, v25);
              v26 = v36;
              if (*v20 != v18)
              {
                free(*v20);
              }

              v17[1] = v25;
              *(v17 + 5) = v26;
              v27 = *(v16 + 16);
              if (v27)
              {
                v28 = *(v16 + 8);
                v29 = v27 << 6;
                do
                {
                  *v25 = v25 + 2;
                  v25[1] = 0x300000000;
                  if (*(v28 + 8))
                  {
                    llvm::SmallVectorImpl<llvm::SMRange>::operator=(v25, v28);
                  }

                  v25 += 8;
                  v28 += 64;
                  v29 -= 64;
                }

                while (v29);
              }

              *(v17 + 4) = v21;
              llvm::SmallVectorImpl<llvm::SmallVector<llvm::SMRange,3u>>::clear(v16 + 8);
            }

            else
            {
              v17[1] = v23;
              v24 = *(v16 + 20);
              *(v17 + 4) = v21;
              *(v17 + 5) = v24;
              *(v16 + 8) = v16 + 24;
              *(v16 + 16) = 0;
            }
          }

          ++*(a1 + 8);
          llvm::SmallVector<llvm::SmallVector<llvm::SMRange,3u>,0u>::~SmallVector((v16 + 8));
        }

        v16 += 24;
      }

      while (v16 != v15);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v30 = *(a1 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = 24 * v30 - 24;
    v33 = vdupq_n_s64(v32 / 0x18);
    do
    {
      v34 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(vdupq_n_s64(v31), xmmword_25D0A0500)));
      if (v34.i8[0])
      {
        *result = -4096;
      }

      if (v34.i8[4])
      {
        result[3] = -4096;
      }

      v31 += 2;
      result += 6;
    }

    while (((v32 / 0x18 + 2) & 0x1FFFFFFFFFFFFFFELL) != v31);
  }

  return result;
}