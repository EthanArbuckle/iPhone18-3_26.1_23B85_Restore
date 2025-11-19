uint64_t mlir::tensor::EmptyOp::reifyResultShapes(uint64_t *a1, mlir::Builder *a2, void **a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v6 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v19[0] = v20;
  v19[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v19, v7);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v19);
  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  v8 = *a1;
  if (*(*a1 + 36))
  {
    v9 = *a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v9 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 16) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*(v10 + 8) + 8 * v12);
      if (v13 == 0x8000000000000000)
      {
        v14 = v11++;
        v15 = *(*(v8 + 72) + 32 * v14 + 24) | 4;
      }

      else
      {
        v15 = mlir::Builder::getIndexAttr(a2, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v12++) = v15;
      v8 = *a1;
      if (*(*a1 + 36))
      {
        v16 = *a1 - 16;
      }

      else
      {
        v16 = 0;
      }

      v10 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v12 < *(v10 + 16));
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::tensor::EmptyOp::getDynamicSize(mlir::tensor::EmptyOp *this, unsigned int a2)
{
  if (a2)
  {
    LODWORD(v2) = 0;
    v3 = a2;
    if (*(this + 9))
    {
      v4 = this - 16;
    }

    else
    {
      v4 = 0;
    }

    v5 = *((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 8);
    do
    {
      v6 = *v5++;
      if (v6 == 0x8000000000000000)
      {
        v2 = (v2 + 1);
      }

      else
      {
        v2 = v2;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v2 = 0;
  }

  return *(*(this + 9) + 32 * v2 + 24);
}

BOOL mlir::tensor::ExtractOp::verify(mlir::tensor::ExtractOp *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *((*(*(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v3 = 1;
  mlir::tensor::ExtractOp::getODSOperands(this, 1u);
  if (v2 != v4)
  {
    v7 = "incorrect number of indices for extract_element";
    v8 = 259;
    mlir::Operation::emitOpError(*this, &v7, v9);
    v3 = (v9[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t mlir::tensor::ExtractOp::fold(mlir::tensor::ExtractOp *this, uint64_t a2)
{
  v56[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  v5 = *v4;
  if (*v4)
  {
    v6 = *(*v5 + 136);
    v7 = v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v7 && *(v5 + 24) == 1)
    {
      v8 = v5[1];
      (*(v5[2] + 24))();
      v54 = v5;
      v55 = 0;
      v9 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v54) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_57;
    }

    if (v6 == &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
    {
      v9 = 0;
      goto LABEL_57;
    }
  }

  v54 = v56;
  v55 = 0x800000000;
  v10 = 8 * *(a2 + 48);
  v11 = v10 - 8;
  if (v10 != 8)
  {
    v12 = v4 + 1;
    while (*v12 && *(**v12 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v44 = *v12;
      Int = mlir::IntegerAttr::getInt(&v44);
      llvm::SmallVectorTemplateBase<unsigned long long,true>::push_back(&v54, Int);
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_54;
  }

LABEL_15:
  v14 = *(mlir::tensor::ExtractOp::getODSOperands(this, 0) + 24);
  if ((~*(v14 + 8) & 7) == 0)
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = *(v14 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v14 + 24 * *(v14 + 16);
      v17 = v16 + 120;
      if (v16 == -120)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = v14 + 16 * v15 + 16;
    }

    v18 = *(*(v17 + 48) + 16);
    v19 = v18 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id;
    if (v18 == &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v31 = *(v17 - 8) & 0xFFFFFFFFFFFFFFF8;
      v32 = *(v31 + 16) - 1;
      if (v32 < 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = 0;
        v34 = *(v31 + 8);
        v35 = 8 * v32;
        LODWORD(v36) = 1;
        do
        {
          v33 += *(v54 + v35) * v36;
          v36 = *(v34 + v35) * v36;
          v35 -= 8;
        }

        while (v35 != -8);
      }

      if ((*(v20 + 46) & 0x80) != 0)
      {
        v9 = 0;
        if ((v33 & 0x80000000) == 0 && v33 < *(v20 + 68))
        {
          v9 = *(*(v20 + 72) + 32 * v33 + 24) | 4;
        }

        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

LABEL_27:
  v21 = **(a2 + 40);
  if (v21)
  {
    v22 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(v21);
    v50[0] = v22;
    v50[1] = v23;
    if (v22)
    {
      v24 = v54;
      v25 = v55;
      v26 = (*(v23 + 16))(v23, v22);
      if (mlir::ElementsAttr::isValidIndex(v26, v27, v24, v25))
      {
        mlir::ElementsAttr::getValues<mlir::Attribute>(v50, &v44);
        FlattenedIndex = mlir::ElementsAttr::getFlattenedIndex(v49, v54);
        v29 = FlattenedIndex;
        v51 = v44;
        if (v44 == 1)
        {
          v52 = v45;
          v53 = v46 + FlattenedIndex;
          if (BYTE1(v44))
          {
            v30 = 0;
          }

          else
          {
            v30 = v46 + FlattenedIndex;
          }
        }

        else
        {
          (*(*v45 + 16))(&v52);
          v53 = v46 + v29;
          if ((v51 & 0x100) != 0)
          {
            v30 = 0;
          }

          else
          {
            v30 = v46 + v29;
          }

          if ((v51 & 1) == 0)
          {
            v42 = v52;
            v52 = 0;
            v37 = (*(*v42 + 24))(v42, v30);
            (*(*v42 + 8))(v42);
            if ((v51 & 1) == 0)
            {
              v43 = v52;
              v52 = 0;
              if (v43)
              {
                (*(*v43 + 8))(v43);
              }
            }

            goto LABEL_43;
          }
        }

        v37 = *(v52 + 8 * v30);
LABEL_43:
        if ((v47 & 1) == 0)
        {
          v38 = v48;
          v48 = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }
        }

        v9 = v37 & 0xFFFFFFFFFFFFFFFBLL;
        if ((v44 & 1) == 0)
        {
          v39 = v45;
          v45 = 0;
          if (v39)
          {
            (*(*v39 + 8))(v39);
          }
        }

        goto LABEL_55;
      }
    }
  }

LABEL_54:
  v9 = 0;
LABEL_55:
  if (v54 != v56)
  {
    free(v54);
  }

LABEL_57:
  v40 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t mlir::tensor::FromElementsOp::fold(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (*(a2 + 48))
  {
    v4 = 8 * v3;
    v5 = *(a2 + 40);
    while (*v5)
    {
      ++v5;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v5 = *(a2 + 40);
  }

  if (v5 != (*(a2 + 40) + 8 * v3))
  {
    return 0;
  }

LABEL_9:
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v9);
  return mlir::DenseElementsAttr::get(v7, v8, *(a2 + 40), *(a2 + 48)) & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::tensor::GatherOp::inferResultType(void *a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v35 = v37;
  v36 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v35, v9, &v9[8 * v10 - 8]);
  v11 = a1[2];
  v12 = v11 + v36;
  if (v12 > HIDWORD(v36))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v12, 8);
    v11 = a1[2];
  }

  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v14 = a3;
      if (a4)
      {
        v15 = (8 * a4) >> 3;
        do
        {
          v16 = v15 >> 1;
          v17 = &v14[v15 >> 1];
          v19 = *v17;
          v18 = v17 + 1;
          v15 += ~(v15 >> 1);
          if (v19 < i)
          {
            v14 = v18;
          }

          else
          {
            v15 = v16;
          }
        }

        while (v15);
      }

      if (v14 == &a3[a4] || i < *v14)
      {
        v20 = *(a1[1] + 8 * i);
      }

      else
      {
        if (a5)
        {
          continue;
        }

        v20 = 1;
      }

      llvm::SmallVectorTemplateBase<long long,true>::push_back(&v35, v20);
    }
  }

  v21 = a1[3];
  v34[6] = v21;
  v22 = a1[4];
  v34[7] = v22;
  v23 = v35;
  *(&v29 + 1) = v36;
  v30 = v35;
  v31 = v36;
  v32 = v34;
  v33 = 0x600000000;
  if (!v36)
  {
    v23 = v34;
  }

  v28 = v21;
  *&v29 = v23;
  v27 = v22;
  v24 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v29, &v28, &v27);
  if (v32 != v34)
  {
    free(v32);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

BOOL mlir::tensor::GatherOp::verify(mlir::Operation **this)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 9);
  v4 = *(v2 + 10);
  v5 = *((*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32) >> 3;
  v8 = *(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (verifyGatherOrScatterDims(v2, v6, v7, *(v8 + 8), *(v8 + 16), v5, "gather", 6, "source", 6))
  {
    v9 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 0);
    v10 = 1;
    v11 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 1);
    v12 = *this;
    if (*(*this + 9))
    {
      v13 = *this - 16;
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v13 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v9 != v14 && v11 != v14)
    {
      v29 = "result type mismatch: expected ";
      v30 = 259;
      mlir::Operation::emitOpError(v12, &v29, &v33);
      if (v33)
      {
        v31 = 4;
        v32 = v9;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v31, 1);
        v17 = v35 + 24 * v36;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v36;
        if (v33)
        {
          mlir::Diagnostic::operator<<<30ul>(v34, " or its rank-reduced variant ");
          if (v33)
          {
            v31 = 4;
            v32 = v11;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v31, 1);
            v20 = v35 + 24 * v36;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v36;
            if (v33)
            {
              mlir::Diagnostic::operator<<<8ul>(v34, " (got: ");
              if (v33)
              {
                v22 = *this - 16;
                if (!*(*this + 9))
                {
                  v22 = 0;
                }

                v23 = *(v22 + 8) & 0xFFFFFFFFFFFFFFF8;
                v31 = 4;
                v32 = v23;
                v24 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v35, &v31, 1);
                v25 = v35 + 24 * v36;
                v26 = *v24;
                *(v25 + 16) = *(v24 + 16);
                *v25 = v26;
                ++v36;
                if (v33)
                {
                  mlir::Diagnostic::operator<<<2ul>(v34, ")");
                }
              }
            }
          }
        }
      }

      v10 = (v37 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
    }
  }

  else
  {
    v10 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t verifyGatherOrScatterDims(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 <= a6)
    {
      if (a5 && *(a4 + 8 * a5 - 8) == a3)
      {
        v10 = 8 * a3;
        v11 = a2;
        do
        {
          if (*v11 < 0)
          {
            v22 = 261;
            v20 = a7;
            v21 = a8;
            mlir::Operation::emitOpError(a1, &v20, &v23);
            if (v23)
            {
              mlir::Diagnostic::operator<<<33ul>(v24, "_dims value must be non-negative");
            }

            goto LABEL_23;
          }

          if (*v11 >= a6)
          {
            v19 = 261;
            v17 = a7;
            v18 = a8;
            mlir::Operation::emitOpError(a1, &v17, &v23);
            if (!v23)
            {
              goto LABEL_23;
            }

            mlir::Diagnostic::operator<<<34ul>(v24, "_dims value must be smaller than ");
            goto LABEL_5;
          }

          ++v11;
          v10 -= 8;
        }

        while (v10);
        if (a3 < 2)
        {
          v14 = 1;
          goto LABEL_24;
        }

        v12 = a2 + 1;
        v13 = a3 - 1;
        v14 = 1;
        while (*(v12 - 1) < *v12)
        {
          ++v12;
          if (!--v13)
          {
            goto LABEL_24;
          }
        }

        v22 = 261;
        v20 = a7;
        v21 = a8;
        mlir::Operation::emitOpError(a1, &v20, &v23);
        if (v23)
        {
          mlir::Diagnostic::operator<<<41ul>(v24, "_dims values must be strictly increasing");
        }
      }

      else
      {
        v22 = 261;
        v20 = a7;
        v21 = a8;
        mlir::Operation::emitOpError(a1, &v20, &v23);
        if (v23)
        {
          mlir::Diagnostic::operator<<<62ul>(v24, "_dims length must match the size of last dimension of indices");
        }
      }
    }

    else
    {
      v19 = 261;
      v17 = a7;
      v18 = a8;
      mlir::Operation::emitOpError(a1, &v17, &v23);
      if (v23)
      {
        mlir::Diagnostic::operator<<<16ul>(v24, "_dims overflow ");
LABEL_5:
        if (v23)
        {
          v22 = 261;
          v20 = a9;
          v21 = a10;
          mlir::Diagnostic::operator<<(v24, &v20);
          if (v23)
          {
            mlir::Diagnostic::operator<<<6ul>(v24, " rank");
          }
        }
      }
    }
  }

  else
  {
    v22 = 261;
    v20 = a7;
    v21 = a8;
    mlir::Operation::emitOpError(a1, &v20, &v23);
    if (v23)
    {
      mlir::Diagnostic::operator<<<24ul>(v24, "_dims must be non-empty");
    }
  }

LABEL_23:
  v14 = v24[192] ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v23);
LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return v14 & 1;
}

unint64_t mlir::tensor::GatherOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 56);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v2 = 0;
    }
  }

  v5 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v5 = 0;
  }

  result = reshapeConstantSource(v2, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

unint64_t reshapeConstantSource(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v12 = a2;
  if (result)
  {
    Raw = result;
    if (*(result + 24) != 1 || *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }

    v6 = a2[2];
    if (v6)
    {
      v7 = a2[1];
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      return 0;
    }

LABEL_8:
    if (a4)
    {
      v9 = *(result + 8);
      (*(*(result + 16) + 24))();
      v13[0] = Raw;
      v13[1] = 0;
      if (mlir::DenseElementsAttr::AttributeElementIterator::operator*(v13) != a3)
      {
        return 0;
      }
    }

    v10 = mlir::TensorType::operator mlir::ShapedType(&v12);
    if (*(Raw + 8) != v10)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v11, *(Raw + 32), *(Raw + 40));
    }

    return Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  return result;
}

BOOL mlir::tensor::InsertOp::verify(mlir::tensor::InsertOp *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = 1;
  v3 = *((*(*(mlir::tensor::InsertOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  mlir::tensor::InsertOp::getODSOperands(this, 2u);
  if (v3 != v4)
  {
    v7 = "incorrect number of indices";
    v8 = 259;
    mlir::Operation::emitOpError(*this, &v7, v9);
    v2 = (v9[200] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v9);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::tensor::InsertOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *v2;
  v4 = v2[1];
  if (*v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v6 = *(*v4 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v7 || *(v4 + 24) != 1)
  {
    return 0;
  }

  v8 = *(v4 + 8);
  (*(*(v4 + 16) + 24))();
  v10[0] = v4;
  v10[1] = 0;
  if (v3 == mlir::DenseElementsAttr::AttributeElementIterator::operator*(v10))
  {
    return v4 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::tensor::GenerateOp::reifyResultShapes(uint64_t a1, mlir::Builder *a2, void **a3)
{
  v16[6] = *MEMORY[0x277D85DE8];
  v6 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v15[0] = v16;
  v15[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v15, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v15);
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  v7 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v7)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(*((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 8) + 8 * i);
      if (v10 == 0x8000000000000000)
      {
        v11 = v8++;
        v12 = *(*(*a1 + 72) + 32 * v11 + 24) | 4;
      }

      else
      {
        v12 = mlir::Builder::getIndexAttr(a2, v10) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * i) = v12;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

BOOL mlir::tensor::GenerateOp::verify(mlir::tensor::GenerateOp *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if ((*(v1 + 46) & 0x80) != 0)
  {
    v3 = *(v1 + 68);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 8);
    v7 = 8 * v4;
    do
    {
      v8 = *v6++;
      if (v8 == 0x8000000000000000)
      {
        ++v5;
      }

      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    v5 = 0;
  }

  v9 = 1;
  if (v5 != v3)
  {
    v12 = "must have as many index operands as dynamic extents in the result type";
    v13 = 259;
    mlir::Operation::emitError(v14, v1, &v12);
    v9 = (v15 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v14);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::tensor::GenerateOp::verifyRegions(mlir::tensor::GenerateOp *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (((v1 + 16 * ((*(v1 + 44) >> 23) & 1) + ((*(v1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v1 + 40));
  if (*v2 == v2)
  {
    v9 = 0;
  }

  else
  {
    v3 = v2[1];
    v4 = v3 - 8;
    if (!v3)
    {
      v4 = 0;
    }

    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    if (v6 != v5)
    {
      while (*(*(*(*v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v5 += 8;
        if (v5 == v6)
        {
          goto LABEL_7;
        }
      }

      v14 = "all body arguments must be index";
      goto LABEL_21;
    }

LABEL_7:
    v7 = v2[1];
    if (v7)
    {
      v8 = v7 - 8;
    }

    else
    {
      v8 = 0;
    }

    v9 = ((*(v8 + 56) - *(v8 + 48)) >> 3);
  }

  v10 = *(v1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v10 + 16) != v9)
  {
    v14 = "must have one body argument per input dimension";
LABEL_21:
    v17[0] = v14;
    v18 = 259;
    mlir::Operation::emitError(v19, v1, v17);
    goto LABEL_22;
  }

  v11 = v2[1];
  if (v11)
  {
    v12 = v11 - 8;
  }

  else
  {
    v12 = 0;
  }

  if ((*(*(*(*(v12 + 32) + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != *(v10 + 24))
  {
    v18 = 259;
    mlir::Operation::emitOpError(v1, v17, v19);
LABEL_22:
    v13 = v20 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v19);
    goto LABEL_23;
  }

  v13 = 1;
LABEL_23:
  v15 = *MEMORY[0x277D85DE8];
  return v13 & 1;
}

uint64_t *mlir::tensor::RankOp::fold(uint64_t a1)
{
  result = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (result)
  {
    v4 = result;
    v5 = v3;
    if ((*(v3 + 16))(v3, result))
    {
      v6 = *(**(***(*a1 + 24) + 32) + 472);
      (*(v5 + 24))(v5, v4);
      return (mlir::IntegerAttr::get(v6, v7) & 0xFFFFFFFFFFFFFFFBLL);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::tensor::ReshapeOp::verify(mlir::tensor::ReshapeOp *this)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 72);
  v4 = (*(*(v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(v2 + 36))
  {
    v5 = v2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(*v4 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v9 = 3;
  }

  else
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v9 = 1;
  }

  v8 = v4[v9];
LABEL_10:
  v10 = *(*v6 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v12 = 3;
  }

  else
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v11 = 0;
      goto LABEL_16;
    }

    v12 = 1;
  }

  v11 = v6[v12];
LABEL_16:
  if (v8 != v11)
  {
    v41 = "element types of source and destination tensor types should be the same";
    v42 = 259;
LABEL_31:
    mlir::Operation::emitOpError(v2, &v41, v43);
    v15 = v43[200] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v43);
    goto LABEL_32;
  }

  v13 = **((*(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  if (v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v14 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v14 = 0;
  }

  v39 = v4;
  v40 = v14;
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_23;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v19 = v6[2];
    if (v19)
    {
      v20 = v6[1];
      v21 = 8 * v19;
      while (*v20 != 0x8000000000000000)
      {
        ++v20;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
LABEL_37:
      if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v22 = v4[2];
        if (v22)
        {
          v23 = v4[1];
          v24 = 8 * v22;
          while (*v23 != 0x8000000000000000)
          {
            ++v23;
            v24 -= 8;
            if (!v24)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          v25 = mlir::TensorType::operator mlir::ShapedType(&v39);
          v27 = (*(v26 + 24))(v26, v25);
          if (v28)
          {
            v29 = 8 * v28;
            v30 = 1;
            do
            {
              v31 = *v27++;
              v30 *= v31;
              v29 -= 8;
            }

            while (v29);
          }

          else
          {
            v30 = 1;
          }

          v32 = mlir::TensorType::operator mlir::ShapedType(&v40);
          v34 = (*(v33 + 24))(v33, v32);
          if (v35)
          {
            v36 = 8 * v35;
            v37 = 1;
            do
            {
              v38 = *v34++;
              v37 *= v38;
              v36 -= 8;
            }

            while (v36);
          }

          else
          {
            v37 = 1;
          }

          if (v30 != v37)
          {
            v16 = "source and destination tensor should have the same number of elements";
            goto LABEL_30;
          }
        }
      }
    }
  }

  if (v13 == 0x8000000000000000)
  {
    v16 = "cannot use shape operand with dynamic length to reshape to statically-ranked tensor type";
LABEL_30:
    v41 = v16;
    v42 = 259;
    v2 = *this;
    goto LABEL_31;
  }

  if (v13 != v40[2])
  {
    v16 = "length of shape operand differs from the result's tensor rank";
    goto LABEL_30;
  }

LABEL_23:
  v15 = 1;
LABEL_32:
  v17 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

unint64_t mlir::tensor::ReshapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = **(a2 + 40);
  if (v3)
  {
    v4 = *(*v3 + 136);
    if (v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v6 = **(a2 + 40);
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

  v7 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v7 = 0;
  }

  result = reshapeConstantSource(v6, (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result > 7)
  {
    return result;
  }

  v9 = *a1;
  v10 = *(*a1 + 72);
  v11 = v10[3];
  if ((~*(v11 + 8) & 7) != 0)
  {
    v12 = v10[3];
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v13 = *(v12 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v12 + 24 * *(v12 + 16) + 120;
      if (!v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v12 + 16 * v13 + 16;
    }

    if (*(*(v14 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::ReshapeOp,void>::id)
    {
      v24 = *(*(v14 + 72) + 24);
      v25 = v10[1];
      if (v25)
      {
        v26 = *v10;
        *v25 = *v10;
        if (v26)
        {
          *(v26 + 8) = v10[1];
        }
      }

      v10[3] = v24;
      v27 = *v24;
      *v10 = *v24;
      v10[1] = v24;
      if (v27)
      {
        *(v27 + 8) = v10;
      }

      *v24 = v10;
      if (*(*a1 + 36))
      {
        return (*a1 - 16) | 4;
      }

      else
      {
        return 4;
      }
    }
  }

LABEL_21:
  if (*(*(*(v11 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v15 = *(v11 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v9 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17 || v15 != v16)
  {
    return 0;
  }

  v19 = *(v15 + 16);
  if (v19 == 1)
  {
    return v11 | 4;
  }

  v20 = v10[7];
  if ((~*(v20 + 8) & 7) == 0)
  {
    v20 = 0;
  }

  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + 8) & 7;
  if (v21 == 6)
  {
    v22 = v20 + 24 * *(v20 + 16);
    v23 = v22 + 120;
    if (v22 == -120)
    {
      return 0;
    }
  }

  else
  {
    v23 = v20 + 16 * v21 + 16;
  }

  if (*(*(v23 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::FromElementsOp,void>::id)
  {
    return 0;
  }

  if ((*(v23 + 46) & 0x80) != 0)
  {
    v28 = *(v23 + 68);
    v29 = v19 == v28;
    if (v28 >= 1 && v19 == v28)
    {
      v31 = 0;
      v32 = (*(v23 + 72) + 24);
      while (1)
      {
        v33 = *v32;
        ConstantIntValue = mlir::getConstantIntValue(*v32 | 4);
        if (v35)
        {
          v29 = ConstantIntValue == *(*(v15 + 8) + 8 * v31);
        }

        else
        {
          if ((~*(v33 + 8) & 7) != 0)
          {
            v36 = v33;
          }

          else
          {
            v36 = 0;
          }

          if (!v36)
          {
            return 0;
          }

          v37 = *(v36 + 8) & 7;
          if (v37 == 6)
          {
            v38 = v36 + 24 * *(v36 + 16) + 120;
            if (!v38)
            {
              return 0;
            }
          }

          else
          {
            v38 = v36 + 16 * v37 + 16;
          }

          if (*(*(v38 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::DimOp,void>::id)
          {
            return 0;
          }

          v39 = *(v38 + 72);
          v40 = *(v39 + 24) == v11;
          v41 = mlir::getConstantIntValue(*(v39 + 56) | 4);
          v29 = v40 & v42;
          if (v31 != v41)
          {
            v29 = 0;
          }
        }

        if (++v31 < v19)
        {
          v32 += 4;
          if (v29)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  else
  {
    v29 = v19 == 0;
  }

  if (v29)
  {
    return v11 | 4;
  }

  else
  {
    return 0;
  }
}

void mlir::tensor::ExpandShapeOp::getReassociationIndices(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(v2 + 8);
    v6 = v5 + 8 * v3;
    while (1)
    {
      v8 = *(*v5 + 8);
      v7 = *(*v5 + 16);
      v16 = v18;
      v17 = 0x200000000;
      if (v7 >= 3)
      {
        break;
      }

      if (v7)
      {
        v9 = 0;
LABEL_7:
        v10 = &v8[v7];
        v11 = v16 + 8 * v9;
        do
        {
          v12 = *v8++;
          v15 = v12;
          *v11++ = mlir::IntegerAttr::getInt(&v15);
        }

        while (v8 != v10);
        v13 = v17;
        goto LABEL_10;
      }

      v13 = 0;
LABEL_10:
      LODWORD(v17) = v13 + v7;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(this, &v16);
      if (v16 != v18)
      {
        free(v16);
      }

      v5 += 8;
      if (v5 == v6)
      {
        goto LABEL_15;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v7, 8);
    v9 = v17;
    goto LABEL_7;
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

void mlir::tensor::ExpandShapeOp::build(mlir::Builder *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *__src, uint64_t a8)
{
  v30[6] = *MEMORY[0x277D85DE8];
  __srca = v24;
  v23 = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::append<mlir::OpFoldResult const*,void>(&__srca, __src, &__src[8 * a8]);
  mlir::decomposeMixedValues(&__srca, &v25);
  if (__srca != v24)
  {
    free(__srca);
  }

  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  v15 = v28;
  v16 = v29;
  v17 = v25;
  v18 = v26;
  v21 = a4;
  __srca = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v21, 0, &v21, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v15 & 0xFFFFFFFFFFFFFFF9, 0, v15 & 0xFFFFFFFFFFFFFFF9, v16);
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2) = ReassociationIndicesAttribute;
  v19 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v17, v18);
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExpandShapeOpGenericAdaptorBase::Properties>(a2) + 8) = v19;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__srca, &v23);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v25 != &v27)
  {
    free(v25);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::CollapseShapeOp::getReassociationMaps(mlir::tensor::CollapseShapeOp *this, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  mlir::tensor::CollapseShapeOp::getReassociationIndices(&v9, a2);
  mlir::convertReassociationIndicesToExprs(v3, v9, v10, &v11);
  v6 = &v8;
  v7 = 0x400000000;
  if (v12)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(&v6, &v11);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(&v11);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v9);
  mlir::getSymbolLessAffineMaps(v6, v7, this);
  result = llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::tensor::CollapseShapeOp::getReassociationIndices(mlir::tensor::CollapseShapeOp *this, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  *this = this + 16;
  *(this + 1) = 0x400000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = *(v2 + 8);
    v6 = v5 + 8 * v3;
    while (1)
    {
      v8 = *(*v5 + 8);
      v7 = *(*v5 + 16);
      v16 = v18;
      v17 = 0x200000000;
      if (v7 >= 3)
      {
        break;
      }

      if (v7)
      {
        v9 = 0;
LABEL_7:
        v10 = &v8[v7];
        v11 = v16 + 8 * v9;
        do
        {
          v12 = *v8++;
          v15 = v12;
          *v11++ = mlir::IntegerAttr::getInt(&v15);
        }

        while (v8 != v10);
        v13 = v17;
        goto LABEL_10;
      }

      v13 = 0;
LABEL_10:
      LODWORD(v17) = v13 + v7;
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,2u>,false>::push_back(this, &v16);
      if (v16 != v18)
      {
        free(v16);
      }

      v5 += 8;
      if (v5 == v6)
      {
        goto LABEL_15;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod(&v16, v18, v7, 8);
    v9 = v17;
    goto LABEL_7;
  }

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ExpandShapeOp::getReassociationMaps(mlir::tensor::ExpandShapeOp *this, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(***(a2 + 24) + 32);
  mlir::tensor::ExpandShapeOp::getReassociationIndices(&v9, a2);
  mlir::convertReassociationIndicesToExprs(v3, v9, v10, &v11);
  v6 = &v8;
  v7 = 0x400000000;
  if (v12)
  {
    llvm::SmallVectorImpl<llvm::SmallVector<mlir::AffineExpr,2u>>::operator=(&v6, &v11);
  }

  llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,2u>::~SmallVector(&v11);
  llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v9);
  mlir::getSymbolLessAffineMaps(v6, v7, this);
  result = llvm::SmallVector<llvm::SmallVector<mlir::AffineExpr,2u>,4u>::~SmallVector(&v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::inferCollapsedType(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 8);
  v24 = v26;
  v25 = 0x400000000;
  if (a3 < 5)
  {
    if (!a3)
    {
      v16 = 0;
      v15 = v26;
      goto LABEL_17;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, a3, 8);
  }

  v7 = 0;
  v8 = a2 + 8 * a3;
  do
  {
    v9 = *(*a2 + 8);
    if (v9)
    {
      v10 = 8 * v9;
      v11 = (v6 + 8 * v7);
      while (*v11 != 0x8000000000000000)
      {
        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      if (v10)
      {
        v12 = 0x8000000000000000;
        goto LABEL_15;
      }

LABEL_13:
      v13 = v7;
      v14 = *(*a2 + 8);
      v12 = 1;
      do
      {
        v12 *= *(v6 + 8 * v13++);
        --v14;
      }

      while (v14);
    }

    else
    {
      v12 = 1;
    }

LABEL_15:
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v24, v12);
    v7 += v9;
    a2 += 8;
  }

  while (a2 != v8);
  v15 = v24;
  v16 = v25;
LABEL_17:
  v17 = *(a1 + 24);
  *&v23 = v15;
  *(&v23 + 1) = v16;
  v21 = 0;
  v22 = v17;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v17 + 32), &v23, &v22, &v21);
  if (v24 != v26)
  {
    free(v24);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::tensor::ExpandShapeOp::verify(mlir::tensor::ExpandShapeOp **this)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = *this;
  ODSOperands = mlir::tensor::ExpandShapeOp::getODSOperands(*this, 0);
  if (*(v2 + 9))
  {
    v4 = v2 - 16;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v4 + 1) & 0xFFFFFFFFFFFFFFF8;
  v6 = v2 + 64;
  v7 = (*(v2 + 11) >> 23) & 1;
  v8 = *(v2 + 2 * v7 + 9);
  v9 = *(v8 + 32);
  v10 = v9 >> 3;
  if (v9 >> 3 != *(v5 + 16))
  {
    v79 = "expected number of static shape dims to be equal to the output rank (";
    v82 = 259;
    mlir::Operation::emitOpError(v2, &v79, &v83);
    if (v83)
    {
      v15 = *(v5 + 16);
      LODWORD(v76) = 2;
      v77 = v15;
      v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, &v76, 1);
      v17 = v85 + 24 * v86;
      v18 = *v16;
      *(v17 + 16) = *(v16 + 16);
      *v17 = v18;
      ++v86;
      if (v83)
      {
        mlir::Diagnostic::operator<<<13ul>(v84, ") but found ");
      }
    }

    v76 = (*(*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9) + 32) >> 3);
    v19 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v83, &v76);
    v20 = v19;
    if (*v19)
    {
      mlir::Diagnostic::operator<<<16ul>((v19 + 1), " inputs instead");
    }

    v21 = (v20[25] & 1) == 0;
    goto LABEL_45;
  }

  v11 = *(*(ODSOperands + 24) + 8);
  v12 = *(v8 + 24);
  mlir::tensor::ExpandShapeOp::getODSOperands(v2, 1u);
  if (v9 >= 8)
  {
    v14 = 0;
    v22 = 8 * v10;
    do
    {
      v23 = *v12++;
      if (v23 == 0x8000000000000000)
      {
        ++v14;
      }

      v22 -= 8;
    }

    while (v22);
  }

  else
  {
    v14 = 0;
  }

  if (v13 != v14)
  {
    v79 = "mismatch in dynamic dims in output_shape and static_output_shape: static_output_shape has ";
    v82 = 259;
    mlir::Operation::emitOpError(v2, &v79, &v83);
    v30 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
    v31 = *(v30 + 32);
    if (v31 >= 8)
    {
      v32 = 0;
      v41 = *(v30 + 24);
      v42 = 8 * (v31 >> 3);
      do
      {
        v43 = *v41++;
        if (v43 == 0x8000000000000000)
        {
          ++v32;
        }

        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v32 = 0;
    }

    if (v83)
    {
      LODWORD(v76) = 2;
      v77 = v32;
      v44 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, &v76, 1);
      v45 = v85 + 24 * v86;
      v46 = *v44;
      *(v45 + 16) = *(v44 + 16);
      *v45 = v46;
      ++v86;
      if (v83)
      {
        mlir::Diagnostic::operator<<<38ul>(v84, " dynamic dims while output_shape has ");
      }
    }

    mlir::tensor::ExpandShapeOp::getODSOperands(*this, 1u);
    v76 = v47;
    v48 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v83, &v76);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<8ul>((v48 + 1), " values");
    }

    v21 = (v49[25] & 1) == 0;
LABEL_45:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
    goto LABEL_46;
  }

  v24 = v11 & 0xFFFFFFFFFFFFFFF8;
  v67 = v11 & 0xFFFFFFFFFFFFFFF8;
  v74 = v11 & 0xFFFFFFFFFFFFFFF8;
  v75 = v2;
  v25 = *((v11 & 0xFFFFFFFFFFFFFFF8) + 16);
  v72 = v25;
  v73 = v9 >> 3;
  if (v10 < v25)
  {
    v76 = "expected the expanded type, ";
    v78 = 259;
    mlir::Operation::emitOpError(v2, &v76, &v83);
    if (v83)
    {
      LODWORD(v79) = 4;
      v80 = v5;
      v26 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, &v79, 1);
      v27 = v85 + 24 * v86;
      v28 = *v26;
      *(v27 + 16) = *(v26 + 16);
      *v27 = v28;
      ++v86;
      if (v83)
      {
        mlir::Diagnostic::operator<<<34ul>(v84, " to have a higher (or same) rank ");
        if (v83)
        {
          mlir::Diagnostic::operator<<<26ul>(v84, "than the collapsed type, ");
          if (v83)
          {
            mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v84, &v74);
            if (v83)
            {
              v82 = 264;
              LOBYTE(v79) = 46;
              mlir::Diagnostic::operator<<(v84, &v79);
            }
          }
        }
      }
    }

    v29 = v87;
    goto LABEL_52;
  }

  if (v25 != *(*&v6[16 * v7] + 16))
  {
    v79 = "expected collapsed rank (";
    v82 = 259;
    mlir::Operation::emitOpError(v2, &v79, &v83);
    v52 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v83, &v72);
    v53 = v52;
    if (*v52)
    {
      mlir::Diagnostic::operator<<<46ul>((v52 + 1), ") to equal the number of reassociation maps (");
    }

    v76 = *(*&v6[16 * ((*(v2 + 11) >> 23) & 1)] + 16);
    v54 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v53, &v76);
    v55 = v54;
    if (*v54)
    {
      mlir::Diagnostic::operator<<<3ul>((v54 + 1), ").");
    }

    v29 = *(v55 + 200);
LABEL_52:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
    if (v29)
    {
LABEL_53:
      v21 = 0;
      goto LABEL_46;
    }

    goto LABEL_66;
  }

  mlir::tensor::ExpandShapeOp::getReassociationMaps(&v79, v2);
  v33 = v79;
  if (v80)
  {
    v34 = 0;
    v35 = 8 * v80;
    while (**(v79 + v34) == v10)
    {
      ++v34;
      v35 -= 8;
      if (!v35)
      {
        goto LABEL_33;
      }
    }

    v70[0] = "expected reassociation map #";
    v71 = 259;
    mlir::Operation::emitOpError(v2, v70, &v83);
    v69 = v34;
    v58 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v83, &v69);
    v59 = v58;
    if (*v58)
    {
      mlir::Diagnostic::operator<<<43ul>((v58 + 1), " to have size equal to the expanded rank (");
    }

    v60 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v59, &v73);
    v61 = v60;
    if (*v60)
    {
      mlir::Diagnostic::operator<<<15ul>((v60 + 1), "), but it is  ");
    }

    v68 = *v33[v34];
    v62 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v61, &v68);
    v57 = v62;
    if (*v62)
    {
      v78 = 264;
      LOBYTE(v76) = 46;
      mlir::Diagnostic::operator<<((v62 + 1), &v76);
    }
  }

  else
  {
LABEL_33:
    LODWORD(v70[0]) = 0;
    if (mlir::isReassociationValid(v79, v80, v70))
    {
      v76 = &v75;
      v36 = *(v24 + 8);
      v37 = *(v24 + 16);
      v38 = *(v5 + 8);
      v39 = *(v5 + 16);
      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v83, v2);
      v40 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::ExpandShapeOp,mlir::RankedTensorType>(mlir::tensor::ExpandShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, &v76, v36, v37, v38, v39, v83, v84[0]);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v83);
      goto LABEL_63;
    }

    v76 = "expected reassociation map #";
    v78 = 259;
    mlir::Operation::emitOpError(v2, &v76, &v83);
    v56 = mlir::InFlightDiagnostic::operator<<<int &>(&v83, v70);
    v57 = v56;
    if (*v56)
    {
      mlir::Diagnostic::operator<<<29ul>((v56 + 1), " to be valid and contiguous.");
    }
  }

  v40 = *(v57 + 200) ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
LABEL_63:
  if (v79 != v81)
  {
    free(v79);
  }

  if ((v40 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_66:
  mlir::tensor::ExpandShapeOp::getReassociationMaps(&v79, v2);
  v63 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v5, v79, v80);
  if (mlir::tensor::isSameTypeWithoutEncoding(v24, v63))
  {
    v21 = 1;
  }

  else
  {
    v76 = "expected collapsed type to be ";
    v78 = 259;
    mlir::Operation::emitOpError(v2, &v76, &v83);
    if (v83)
    {
      LODWORD(v70[0]) = 4;
      v70[1] = v63;
      v64 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v85, v70, 1);
      v65 = v85 + 24 * v86;
      v66 = *v64;
      *(v65 + 16) = *(v64 + 16);
      *v65 = v66;
      ++v86;
      if (v83)
      {
        mlir::Diagnostic::operator<<<11ul>(v84, ", but got ");
        if (v83)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v84, &v67);
        }
      }
    }

    v21 = (v87 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v83);
  }

  if (v79 != v81)
  {
    free(v79);
  }

LABEL_46:
  v50 = *MEMORY[0x277D85DE8];
  return v21;
}

BOOL mlir::tensor::CollapseShapeOp::verify(mlir::tensor::CollapseShapeOp *this)
{
  v62 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 36))
  {
    v3 = *this - 16;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v50 = *this;
  v5 = *(v2 + 16);
  v6 = *(v4 + 16);
  v48 = v6;
  v49 = v5;
  if (v5 < v6)
  {
    v51[0] = "expected the expanded type, ";
    v52 = 259;
    mlir::Operation::emitOpError(v1, v51, &v57);
    if (v57)
    {
      LODWORD(v53) = 4;
      v54 = v2;
      v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59, &v53, 1);
      v8 = v59 + 24 * v60;
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      ++v60;
      if (v57)
      {
        mlir::Diagnostic::operator<<<34ul>(v58, " to have a higher (or same) rank ");
        if (v57)
        {
          mlir::Diagnostic::operator<<<26ul>(v58, "than the collapsed type, ");
          if (v57)
          {
            LODWORD(v53) = 4;
            v54 = v4;
            v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59, &v53, 1);
            v11 = v59 + 24 * v60;
            v12 = *v10;
            *(v11 + 16) = *(v10 + 16);
            *v11 = v12;
            ++v60;
            if (v57)
            {
              v56 = 264;
              LOBYTE(v53) = 46;
              mlir::Diagnostic::operator<<(v58, &v53);
            }
          }
        }
      }
    }

    v13 = v61;
    goto LABEL_24;
  }

  if (v6 == *(*(v1 + 80) + 16))
  {
    mlir::tensor::CollapseShapeOp::getReassociationMaps(&v53, v1);
    v14 = v53;
    if (v54)
    {
      v15 = 0;
      v16 = 8 * v54;
      while (**(v53 + v15) == v5)
      {
        ++v15;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v45 = "expected reassociation map #";
      v47 = 259;
      mlir::Operation::emitOpError(v1, &v45, &v57);
      v44 = v15;
      v29 = mlir::InFlightDiagnostic::operator<<<unsigned long>(&v57, &v44);
      v30 = v29;
      if (*v29)
      {
        mlir::Diagnostic::operator<<<43ul>((v29 + 1), " to have size equal to the expanded rank (");
      }

      v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v30, &v49);
      v32 = v31;
      if (*v31)
      {
        mlir::Diagnostic::operator<<<15ul>((v31 + 1), "), but it is  ");
      }

      v43 = *v14[v15];
      v33 = mlir::InFlightDiagnostic::operator<<<unsigned int>(v32, &v43);
      v28 = v33;
      if (*v33)
      {
        v52 = 264;
        LOBYTE(v51[0]) = 46;
        mlir::Diagnostic::operator<<((v33 + 1), v51);
      }
    }

    else
    {
LABEL_17:
      LODWORD(v45) = 0;
      if (mlir::isReassociationValid(v53, v54, &v45))
      {
        v51[0] = &v50;
        v17 = *(v4 + 8);
        v18 = *(v4 + 16);
        v19 = *(v2 + 8);
        v20 = *(v2 + 16);
        mlir::tensor::CollapseShapeOp::getReassociationIndices(&v57, v1);
        v21 = mlir::reshapeLikeShapesAreCompatible(llvm::function_ref<llvm::LogicalResult ()(llvm::Twine const&)>::callback_fn<llvm::LogicalResult mlir::verifyReshapeLikeTypes<mlir::tensor::CollapseShapeOp,mlir::RankedTensorType>(mlir::tensor::CollapseShapeOp,mlir::RankedTensorType,mlir::RankedTensorType,BOOL)::{lambda(llvm::Twine const&)#1}>, v51, v17, v18, v19, v20, v57, v58[0]);
        llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v57);
        goto LABEL_35;
      }

      v51[0] = "expected reassociation map #";
      v52 = 259;
      mlir::Operation::emitOpError(v1, v51, &v57);
      v27 = mlir::InFlightDiagnostic::operator<<<int &>(&v57, &v45);
      v28 = v27;
      if (*v27)
      {
        mlir::Diagnostic::operator<<<29ul>((v27 + 1), " to be valid and contiguous.");
      }
    }

    v21 = *(v28 + 200) ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
LABEL_35:
    if (v53 != v55)
    {
      free(v53);
    }

    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v53 = "expected collapsed rank (";
  v56 = 259;
  mlir::Operation::emitOpError(v1, &v53, &v57);
  v22 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v57, &v48);
  v23 = v22;
  if (*v22)
  {
    mlir::Diagnostic::operator<<<46ul>((v22 + 1), ") to equal the number of reassociation maps (");
  }

  v51[0] = *(*(v1 + 16 * ((*(v1 + 44) >> 23) & 1) + 64) + 16);
  v24 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v23, v51);
  v25 = v24;
  if (*v24)
  {
    mlir::Diagnostic::operator<<<3ul>((v24 + 1), ").");
  }

  v13 = *(v25 + 200);
LABEL_24:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  if (v13)
  {
LABEL_25:
    v26 = 0;
    goto LABEL_47;
  }

LABEL_38:
  mlir::tensor::CollapseShapeOp::getReassociationMaps(&v53, v1);
  v34 = mlir::tensor::CollapseShapeOp::inferCollapsedType(v2, v53, v54);
  if (mlir::tensor::isSameTypeWithoutEncoding(v4, v34))
  {
    v26 = 1;
  }

  else
  {
    v51[0] = "expected collapsed type to be ";
    v52 = 259;
    mlir::Operation::emitOpError(v1, v51, &v57);
    if (v57)
    {
      LODWORD(v45) = 4;
      v46 = v34;
      v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59, &v45, 1);
      v36 = v59 + 24 * v60;
      v37 = *v35;
      *(v36 + 16) = *(v35 + 16);
      *v36 = v37;
      ++v60;
      if (v57)
      {
        mlir::Diagnostic::operator<<<11ul>(v58, ", but got ");
        if (v57)
        {
          LODWORD(v45) = 4;
          v46 = v4;
          v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v59, &v45, 1);
          v39 = v59 + 24 * v60;
          v40 = *v38;
          *(v39 + 16) = *(v38 + 16);
          *v39 = v40;
          ++v60;
        }
      }
    }

    v26 = (v61 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v57);
  }

  if (v53 != v55)
  {
    free(v53);
  }

LABEL_47:
  v41 = *MEMORY[0x277D85DE8];
  return v26;
}

unint64_t mlir::tensor::ExpandShapeOp::fold(mlir::tensor::ExpandShapeOp **a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(mlir::tensor::ExpandShapeOp::getODSOperands(*a1, 0) + 24);
  v5 = *(v4 + 8);
  if ((*(v3 - 1) ^ v5) <= 7)
  {
LABEL_2:
    v6 = v4 | 4;
    goto LABEL_42;
  }

  Raw = **(a2 + 56);
  if (Raw && ((v8 = *(*Raw + 136), v8 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v9 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v9 = 1), v9))
  {
    if (*(v3 + 9))
    {
      v10 = v3 - 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(v10 + 1) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = *v11;
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    }

    else
    {
      v14 = 0;
    }

    if (*(Raw + 8) != v11)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v11, v14, *(Raw + 32), *(Raw + 40));
    }

    v6 = Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if ((~v5 & 7) == 0)
    {
      v4 = 0;
    }

    if (!v4)
    {
      goto LABEL_25;
    }

    v15 = *(v4 + 8) & 7;
    if (v15 == 6)
    {
      v16 = v4 + 24 * *(v4 + 16) + 120;
      if (!v16)
      {
LABEL_25:
        v6 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      v16 = v4 + 16 * v15 + 16;
    }

    v17 = *(*(v16 + 48) + 16);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::CollapseShapeOp,void>::id)
    {
      goto LABEL_25;
    }

    v6 = 0;
    v4 = *(*(v16 + 72) + 24);
    v19 = *(v4 + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = v19;
    if (*(v3 + 9))
    {
      v20 = v3 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 == (*(v20 + 1) & 0xFFFFFFFFFFFFFFF8))
    {
      v21 = *(v19 + 16);
      if (!v21)
      {
        goto LABEL_2;
      }

      v22 = 0;
      v23 = *(v19 + 8);
      v24 = 8 * v21;
      do
      {
        v25 = *v23++;
        if (v25 == 0x8000000000000000)
        {
          ++v22;
        }

        v24 -= 8;
      }

      while (v24);
      if (v22 <= 1)
      {
        goto LABEL_2;
      }

      mlir::tensor::ExpandShapeOp::getReassociationIndices(&v32, v3);
      mlir::tensor::CollapseShapeOp::getReassociationIndices(v31, v18);
      v26 = llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(&v32, v31);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v31);
      if ((v26 & 1) != 0 || (*(v18 + 36) ? (v29 = v18 - 16) : (v29 = 0), *(v19 + 16) >= *((*(v29 + 8) & 0xFFFFFFFFFFFFFFF8) + 16) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::ExpandShapeOp,mlir::tensor::CollapseShapeOp>(mlir::tensor::ExpandShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::ExpandShapeOp)#1}>(v32, v33, &v30)))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(*(v18 + 72) + 24) | 4;
      }

      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v32);
    }
  }

LABEL_42:
  v27 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t mlir::tensor::CollapseShapeOp::fold(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*(*a1 + 72) + 24);
  v4 = *(v3 + 8);
  if ((*(*a1 - 8) ^ v4) <= 7)
  {
    goto LABEL_2;
  }

  Raw = **(a2 + 48);
  if (Raw && ((v7 = *(*Raw + 136), v7 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v8 = v7 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v8 = 1), v8))
  {
    if (*(v2 + 36))
    {
      v9 = v2 - 16;
    }

    else
    {
      v9 = 0;
    }

    v10 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
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

    if (*(Raw + 8) != v10)
    {
      Raw = mlir::DenseIntOrFPElementsAttr::getRaw(v10, v13, *(Raw + 32), *(Raw + 40));
    }

    v5 = Raw & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    if ((~v4 & 7) == 0)
    {
      v3 = 0;
    }

    if (!v3)
    {
      goto LABEL_25;
    }

    v14 = *(v3 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v3 + 24 * *(v3 + 16);
      v16 = (v15 + 120);
      if (v15 == -120)
      {
LABEL_25:
        v5 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v16 = (v3 + 16 * v14 + 16);
    }

    v17 = *(*(v16 + 6) + 16);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v17 != &mlir::detail::TypeIDResolver<mlir::tensor::ExpandShapeOp,void>::id)
    {
      goto LABEL_25;
    }

    v5 = 0;
    v19 = *(*(mlir::tensor::ExpandShapeOp::getODSOperands(v16, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = v19;
    if (*(v2 + 36))
    {
      v20 = v2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19 == (*(v20 + 8) & 0xFFFFFFFFFFFFFFF8))
    {
      v21 = *(v19 + 16);
      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = 0;
      v23 = *(v19 + 8);
      v24 = 8 * v21;
      do
      {
        v25 = *v23++;
        if (v25 == 0x8000000000000000)
        {
          ++v22;
        }

        v24 -= 8;
      }

      while (v24);
      if (v22 <= 1)
      {
LABEL_36:
        v3 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v18, 0) + 24);
LABEL_2:
        v5 = v3 | 4;
        goto LABEL_41;
      }

      mlir::tensor::CollapseShapeOp::getReassociationIndices(&v32, v2);
      mlir::tensor::ExpandShapeOp::getReassociationIndices(v31, v18);
      v28 = llvm::SmallVectorImpl<llvm::SmallVector<long long,2u>>::operator!=(&v32, v31);
      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(v31);
      if ((v28 & 1) != 0 || (*(v18 + 9) ? (v29 = (v18 - 16)) : (v29 = 0), *(v19 + 16) >= *((*(v29 + 1) & 0xFFFFFFFFFFFFFFF8) + 16) && !llvm::all_of<llvm::SmallVector<llvm::SmallVector<long long,2u>,4u> &,mlir::OpFoldResult mlir::foldReshapeOp<mlir::tensor::CollapseShapeOp,mlir::tensor::ExpandShapeOp>(mlir::tensor::CollapseShapeOp,llvm::ArrayRef<mlir::Attribute>)::{lambda(mlir::tensor::CollapseShapeOp)#1}>(v32, v33, &v30)))
      {
        v5 = 0;
      }

      else
      {
        v5 = *(mlir::tensor::ExpandShapeOp::getODSOperands(v18, 0) + 24) | 4;
      }

      llvm::SmallVector<llvm::SmallVector<long long,2u>,4u>::~SmallVector(&v32);
    }
  }

LABEL_41:
  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::tensor::ExtractSliceOp::inferResultType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v39[6] = *MEMORY[0x277D85DE8];
  v38[0] = v39;
  v38[1] = 0x600000000;
  v35 = v37;
  v36 = 0x600000000;
  v33[0] = v34;
  v33[1] = 0x600000000;
  v31[0] = v32;
  v31[1] = 0x600000000;
  v29[0] = v30;
  v29[1] = 0x600000000;
  v27[0] = v28;
  v27[1] = 0x600000000;
  if (a3)
  {
    v13 = 8 * a3;
    do
    {
      v14 = *a2++;
      mlir::dispatchIndexOpFoldResult(v14, v31, v38);
      v13 -= 8;
    }

    while (v13);
  }

  if (a5)
  {
    v15 = 8 * a5;
    do
    {
      v16 = *a4++;
      mlir::dispatchIndexOpFoldResult(v16, v29, &v35);
      v15 -= 8;
    }

    while (v15);
  }

  if (a7)
  {
    v17 = 8 * a7;
    do
    {
      v18 = *a6++;
      mlir::dispatchIndexOpFoldResult(v18, v27, v33);
      v17 -= 8;
    }

    while (v17);
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  *&v26 = v35;
  *(&v26 + 1) = v36;
  v24 = v20;
  v25 = v19;
  v21 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), &v26, &v25, &v24);
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  if (v29[0] != v30)
  {
    free(v29[0]);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33[0] != v34)
  {
    free(v33[0]);
  }

  if (v35 != v37)
  {
    free(v35);
  }

  if (v38[0] != v39)
  {
    free(v38[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void *mlir::tensor::ExtractSliceOp::inferCanonicalRankReducedResultType(int a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v51[6] = *MEMORY[0x277D85DE8];
  v48[0] = v49;
  v48[1] = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  v43[0] = v44;
  v43[1] = 0x600000000;
  v41[0] = v42;
  v41[1] = 0x600000000;
  v39[0] = v40;
  v39[1] = 0x600000000;
  v37[0] = v38;
  v37[1] = 0x600000000;
  if (a4)
  {
    v15 = 8 * a4;
    do
    {
      v16 = *a3++;
      mlir::dispatchIndexOpFoldResult(v16, v41, v48);
      v15 -= 8;
    }

    while (v15);
  }

  if (a6)
  {
    v17 = 8 * a6;
    do
    {
      v18 = *a5++;
      mlir::dispatchIndexOpFoldResult(v18, v39, &v45);
      v17 -= 8;
    }

    while (v17);
  }

  if (a8)
  {
    v19 = 8 * a8;
    do
    {
      v20 = *a7++;
      mlir::dispatchIndexOpFoldResult(v20, v37, v43);
      v19 -= 8;
    }

    while (v19);
  }

  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  *&v50 = v45;
  *(&v50 + 1) = v46;
  v35 = v22;
  *&v36 = v21;
  v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &v50, &v36, &v35);
  v24 = v23[2];
  v25 = v24 - a1;
  if (v24 - a1 >= 1)
  {
    v26 = v23[1];
    mlir::getPositionsOfShapeOne(v25, v26, v24, &v33);
    *&v50 = v51;
    *(&v50 + 1) = 0x600000000;
    if (v24)
    {
      v27 = 0;
      while (1)
      {
        if (v33)
        {
          if (((1 << v27) & (v33 >> 1) & ~(-1 << (v33 >> 58))) == 0)
          {
LABEL_17:
            llvm::SmallVectorTemplateBase<long long,true>::push_back(&v50, *(v26 + 8 * v27));
          }
        }

        else if ((*(*v33 + 8 * (v27 >> 6)) & (1 << v27)) == 0)
        {
          goto LABEL_17;
        }

        if (v24 == ++v27)
        {
          v28 = v50;
          v29 = DWORD2(v50);
          goto LABEL_21;
        }
      }
    }

    v29 = 0;
    v28 = v51;
LABEL_21:
    v30 = v23[3];
    *&v36 = v28;
    *(&v36 + 1) = v29;
    v34 = 0;
    v35 = v30;
    v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), &v36, &v35, &v34);
    if (v50 != v51)
    {
      free(v50);
    }

    llvm::SmallBitVector::~SmallBitVector(&v33);
  }

  if (v37[0] != v38)
  {
    free(v37[0]);
  }

  if (v39[0] != v40)
  {
    free(v39[0]);
  }

  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48[0] != v49)
  {
    free(v48[0]);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v23;
}

void mlir::tensor::ExtractSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v59[6] = *MEMORY[0x277D85DE8];
  v57 = v59;
  v58 = 0x600000000;
  v54 = v56;
  v55 = 0x600000000;
  v51 = v53;
  v52 = 0x600000000;
  v48 = v50;
  v49 = 0x600000000;
  v45 = v47;
  v46 = 0x600000000;
  v42 = v44;
  v43 = 0x600000000;
  if (a6)
  {
    v17 = 8 * a6;
    do
    {
      v18 = *a5++;
      mlir::dispatchIndexOpFoldResult(v18, &v48, &v57);
      v17 -= 8;
    }

    while (v17);
  }

  if (a8)
  {
    v19 = 8 * a8;
    do
    {
      v20 = *a7++;
      mlir::dispatchIndexOpFoldResult(v20, &v45, &v54);
      v19 -= 8;
    }

    while (v19);
  }

  if (a10)
  {
    v22 = 8 * a10;
    do
    {
      v23 = *a9++;
      mlir::dispatchIndexOpFoldResult(v23, &v42, &v51);
      v22 -= 8;
    }

    while (v22);
  }

  if (!a3)
  {
    v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
    v26 = *(v24 + 24);
    v25 = *(v24 + 32);
    *&__src = v54;
    *(&__src + 1) = v55;
    v41 = v26;
    v39 = v25;
    a3 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v26 + 32), &__src, &v41, &v39);
  }

  *(a2 + 192) = 0;
  v27 = *(a2 + 120);
  if (v27 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v27, 16);
    LODWORD(v27) = *(a2 + 120);
  }

  *(a2 + 120) = v27;
  v28 = v48;
  v29 = v49;
  v30 = v45;
  v31 = v46;
  v32 = v42;
  v33 = v43;
  v38 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v57, v58);
  v37 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v54, v55);
  v34 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v51, v52);
  *&__src = a3;
  v41 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v41, 0, &v41, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v28 & 0xFFFFFFFFFFFFFFF9, 0, v28 & 0xFFFFFFFFFFFFFFF9, v29);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v30 & 0xFFFFFFFFFFFFFFF9, 0, v30 & 0xFFFFFFFFFFFFFFF9, v31);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v32 & 0xFFFFFFFFFFFFFFF9, 0, v32 & 0xFFFFFFFFFFFFFFF9, v33);
  v35 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2);
  v35[6] = 1;
  v35[7] = v29;
  v35[8] = v31;
  v35[9] = v33;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) = v38;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v37;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ExtractSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v34;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &__src + 8);
  if (v42 != v44)
  {
    free(v42);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  if (v51 != v53)
  {
    free(v51);
  }

  if (v54 != v56)
  {
    free(v54);
  }

  if (v57 != v59)
  {
    free(v57);
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ExtractSliceOp::verify(mlir::tensor::ExtractSliceOp *this)
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = *(*(*(*this + 72) + 24) + 8);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedOffsets(this, &v22);
  v3 = v22;
  v4 = v23;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(this, &v19);
  v5 = v19;
  v6 = v20;
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedStrides(this, &v16);
  v15 = mlir::tensor::ExtractSliceOp::inferResultType(v2 & 0xFFFFFFFFFFFFFFF8, v3, v4, v5, v6, v16, v17);
  if (v16 != &v18)
  {
    free(v16);
  }

  if (v19 != &v21)
  {
    free(v19);
  }

  if (v22 != v24)
  {
    free(v22);
  }

  v7 = mlir::TensorType::operator mlir::ShapedType(&v15);
  v9 = v8;
  v10 = *this - 16;
  if (!*(*this + 36))
  {
    v10 = 0;
  }

  v22 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v22);
  isRankReducedType = mlir::isRankReducedType(v7, v9, v11);
  result = produceSliceErrorMsg(isRankReducedType, *this, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t produceSliceErrorMsg(int a1, void **this, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v14[0] = "expected type to be ";
      v15 = 259;
      mlir::Operation::emitError(&v18, this, v14);
      if (v18)
      {
        v16 = 4;
        v17 = a3;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
        v6 = v20 + 24 * v21;
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++v21;
        if (v18)
        {
          mlir::Diagnostic::operator<<<45ul>(v19, " or a rank-reduced version. (size mismatch) ");
        }
      }
    }

    else
    {
      v14[0] = "expected element type to be ";
      v15 = 259;
      mlir::Operation::emitError(&v18, this, v14);
      if (v18)
      {
        v8 = *(a3 + 24);
        v16 = 4;
        v17 = v8;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v16, 1);
        v10 = v20 + 24 * v21;
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++v21;
      }
    }

    goto LABEL_12;
  }

  if (a1)
  {
    v14[0] = "expected rank to be smaller or equal to ";
    v15 = 259;
    mlir::Operation::emitError(&v18, this, v14);
    if (v18)
    {
      mlir::Diagnostic::operator<<<17ul>(v19, "the other rank. ");
    }

LABEL_12:
    v3 = v22 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    goto LABEL_13;
  }

  v3 = 1;
LABEL_13:
  v12 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

uint64_t mlir::tensor::ExtractSliceOp::reifyResultShapes(mlir::tensor::ExtractSliceOp *a1, uint64_t a2, uint64_t a3)
{
  v38[4] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  if (!v5)
  {
    if (*(a3 + 12))
    {
      v8 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<mlir::OpFoldResult,6u>,false>::grow(a3, 1uLL);
      v8 = *(a3 + 8);
      if (v8 == 1)
      {
        goto LABEL_13;
      }
    }

    v9 = 64 - (v8 << 6);
    v10 = *a3 + (v8 << 6) + 16;
    do
    {
      *(v10 - 16) = v10;
      *(v10 - 8) = 0x600000000;
      v10 += 64;
      v9 -= 64;
    }

    while (v9);
    goto LABEL_13;
  }

  if (v5 == 1)
  {
    goto LABEL_14;
  }

  v6 = (*a3 + (v5 << 6) - 64);
  v7 = 64 - (v5 << 6);
  do
  {
    if (v6 + 2 != *v6)
    {
      free(*v6);
    }

    v6 -= 8;
    v7 += 64;
  }

  while (v7);
LABEL_13:
  *(a3 + 8) = 1;
LABEL_14:
  v11 = *a3;
  v12 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v12 = 0;
  }

  v13 = *((*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  if (v13 > *(v11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (v11 + 16), v13, 8);
  }

  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(a1, &v36);
  v33 = v35;
  v34 = 0x600000000;
  if (v37)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v33, &v36);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  v14 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v14 = 0;
  }

  v15 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::getMixedSizes(a1, &v36);
  v18 = v36;
  v19 = v37;
  llvm::SmallBitVector::SmallBitVector(&v31, v37, 0);
  if (v19)
  {
    v20 = v17 - 1;
    v21 = 8 * v19;
    v22 = v18 - 8;
    v23 = v19 - 1;
    do
    {
      v24 = *&v22[v21];
      if ((v24 & 4) != 0)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v32 = v24 & 0xFFFFFFFFFFFFFFF8;
        Int = mlir::IntegerAttr::getInt(&v32);
        if ((v20 & 0x8000000000000000) == 0 && (Int != 1 || *(v16 + 8 * v20) == 1))
        {
LABEL_32:
          --v20;
          goto LABEL_33;
        }
      }

      llvm::SmallBitVector::set(&v31, v23);
LABEL_33:
      --v23;
      v21 -= 8;
    }

    while (v21);
  }

  if (v36 != v38)
  {
    free(v36);
  }

  if (v34)
  {
    v26 = 0;
    v27 = v33;
    v28 = 8 * v34;
    while ((v31 & 1) == 0)
    {
      if ((*(*v31 + 8 * (v26 >> 6)) & (1 << v26)) == 0)
      {
        goto LABEL_40;
      }

LABEL_41:
      ++v26;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_45;
      }
    }

    if (((1 << v26) & (v31 >> 1) & ~(-1 << (v31 >> 58))) != 0)
    {
      goto LABEL_41;
    }

LABEL_40:
    llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(*a3, v27[v26]);
    goto LABEL_41;
  }

LABEL_45:
  llvm::SmallBitVector::~SmallBitVector(&v31);
  if (v33 != v35)
  {
    free(v33);
  }

  v29 = *MEMORY[0x277D85DE8];
  return 1;
}

unint64_t mlir::tensor::ExtractSliceOp::fold(uint64_t *a1, uint64_t a2)
{
  v3 = **(a2 + 80);
  if (v3 && ((v4 = *(*v3 + 136), v4 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v5 = v4 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v5 = 1), v5))
  {
    if (v3[24])
    {
      v6 = **(a2 + 80);
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

  v7 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v7 = 0;
  }

  result = reshapeConstantSource(v6, (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    v9 = *a1;
    v10 = *(*(*a1 + 72) + 24);
    v11 = *(v10 + 8);
    if (*(*a1 + 36))
    {
      v12 = *a1 - 16;
    }

    else
    {
      v12 = 0;
    }

    if ((*(v12 + 8) ^ v11) <= 7)
    {
      InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
      v14 = *a1 - 16;
      if (!*(*a1 + 36))
      {
        v14 = 0;
      }

      v28 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
      v15 = mlir::TensorType::operator mlir::ShapedType(&v28);
      v17 = foldIdentityOffsetSizeAndStrideOpInterface(v9, InterfaceFor, v15, v16);
      v9 = *a1;
      if (v17)
      {
        return *(*(v9 + 72) + 24) | 4;
      }

      v10 = *(*(v9 + 72) + 24);
      v11 = *(v10 + 8);
    }

    if ((~v11 & 7) == 0)
    {
      v10 = 0;
    }

    if (!v10)
    {
      return 0;
    }

    v18 = *(v10 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v10 + 24 * *(v10 + 16) + 120;
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v19 = v10 + 16 * v18 + 16;
    }

    v20 = *(*(v19 + 48) + 16);
    v21 = v20 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
    if (v20 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v28 = v22;
    if (!v21)
    {
      return 0;
    }

    v23 = *(*(*(v19 + 72) + 24) + 8);
    v24 = *(v9 + 36) ? v9 - 16 : 0;
    if ((*(v24 + 8) ^ v23) > 7)
    {
      return 0;
    }

    v25 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v9);
    if ((mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(&v28, v9, v25, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldExtractAfterInsertSlice(mlir::tensor::ExtractSliceOp)::$_0>, &v27) & 1) == 0)
    {
      return 0;
    }

    v26 = *(v28[9] + 24);
    if (v26)
    {
      return v26 | 4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t foldIdentityOffsetSizeAndStrideOpInterface(uint64_t a1, void (**a2)(void *__return_ptr, void, void), uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x277D85DE8];
  (a2)[8](&v40, a2, a1);
  v8 = v40;
  if (v41)
  {
    v9 = 8 * v41 - 8;
    do
    {
      v10 = *v8++;
      v11 = mlir::getConstantIntValue(v10) == 0;
      v13 = v12 & v11;
      v14 = (v12 & v11) != 1 || v9 == 0;
      v9 -= 8;
    }

    while (!v14);
    v8 = v40;
  }

  else
  {
    v13 = 1;
  }

  if (v8 != v42)
  {
    free(v8);
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v36[0] = (*(a4 + 24))(a4, a3);
  v36[1] = v15;
  (a2)[9](&v37, a2, a1);
  v40 = v42;
  v41 = 0x400000000;
  if (v38)
  {
    llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(&v40, &v37);
  }

  v16 = v36;
  v43 = v36;
  if (v37 != &v39)
  {
    free(v37);
    v16 = v43;
  }

  v17 = 0;
  v18 = v40;
  if (v41)
  {
    v19 = v16[1];
    if (v19)
    {
      v20 = *v16;
      v21 = 8 * v19 - 8;
      v22 = 8 * v41 - 8;
      do
      {
        v23 = mlir::getConstantIntValue(*v18) == *v20;
        v25 = v24 & v23;
        if (v25 != 1)
        {
          break;
        }

        if (!v22)
        {
          break;
        }

        ++v18;
        ++v20;
        v26 = v21;
        v21 -= 8;
        v22 -= 8;
      }

      while (v26);
      v17 = v25 ^ 1;
      v18 = v40;
    }
  }

  if (v18 != v42)
  {
    free(v18);
  }

  if ((v17 & 1) == 0)
  {
    (a2)[10](&v40, a2, a1);
    v30 = v40;
    if (v41)
    {
      v31 = 8 * v41 - 8;
      do
      {
        v32 = *v30++;
        v33 = mlir::getConstantIntValue(v32) == 1;
        v27 = v34 & v33;
        v35 = v27 != 1 || v31 == 0;
        v31 -= 8;
      }

      while (!v35);
      v30 = v40;
    }

    else
    {
      v27 = 1;
    }

    if (v30 != v42)
    {
      free(v30);
    }
  }

  else
  {
LABEL_27:
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

void mlir::tensor::InsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v57[6] = *MEMORY[0x277D85DE8];
  v55 = v57;
  v56 = 0x600000000;
  v52 = v54;
  v53 = 0x600000000;
  v49 = v51;
  v50 = 0x600000000;
  v46 = v48;
  v47 = 0x600000000;
  v43 = v45;
  v44 = 0x600000000;
  v40 = v42;
  v41 = 0x600000000;
  if (a6)
  {
    v16 = 8 * a6;
    do
    {
      v17 = *a5++;
      mlir::dispatchIndexOpFoldResult(v17, &v46, &v55);
      v16 -= 8;
    }

    while (v16);
  }

  if (a8)
  {
    v18 = 8 * a8;
    do
    {
      v19 = *a7++;
      mlir::dispatchIndexOpFoldResult(v19, &v43, &v52);
      v18 -= 8;
    }

    while (v18);
  }

  if (a10)
  {
    v21 = 8 * a10;
    do
    {
      v22 = *a9++;
      mlir::dispatchIndexOpFoldResult(v22, &v40, &v49);
      v21 -= 8;
    }

    while (v21);
  }

  *(a2 + 192) = 0;
  v23 = *(a2 + 120);
  if (v23 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v23, 16);
    LODWORD(v23) = *(a2 + 120);
  }

  *(a2 + 120) = v23;
  v24 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v25 = v46;
  v26 = v47;
  v27 = v43;
  v28 = v44;
  v29 = v40;
  v30 = v41;
  v35 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v55, v56);
  v34 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v52, v53);
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v49, v50);
  v38 = a3;
  __src = v24;
  v37 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v38, 0, &v38, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v37, 0, &v37, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v25 & 0xFFFFFFFFFFFFFFF9, 0, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v27 & 0xFFFFFFFFFFFFFFF9, 0, v27 & 0xFFFFFFFFFFFFFFF9, v28);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v29 & 0xFFFFFFFFFFFFFFF9, 0, v29 & 0xFFFFFFFFFFFFFFF9, v30);
  v32 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v32 + 24) = 0x100000001;
  *(v32 + 32) = v26;
  *(v32 + 36) = v28;
  *(v32 + 40) = v30;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) = v35;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v34;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::InsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v31;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v40);
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

  if (v49 != v51)
  {
    free(v49);
  }

  if (v52 != v54)
  {
    free(v52);
  }

  if (v55 != v57)
  {
    free(v55);
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::InsertSliceOp::verify(void ***this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*((*this)[9] + 3) + 8);
  if (*(*this + 9))
  {
    v10 = (*this - 2);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 8);
  v12 = (*this)[11];
  v13 = v12[3];
  v14 = v12[4] >> 3;
  v17 = 0;
  inserted = verifyInsertSliceOp((v9 & 0xFFFFFFFFFFFFFFF8), v11 & 0xFFFFFFFFFFFFFFF8, a3, a4, v13, v14, a7, a8, &v17);
  return produceSliceErrorMsg(inserted, *this, v17);
}

uint64_t verifyInsertSliceOp(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  *&v20 = a5;
  *(&v20 + 1) = a6;
  v19 = v9;
  v17 = a1;
  v18 = v10;
  v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v20, &v19, &v18);
  *&v20 = v11;
  if (a9)
  {
    *a9 = v11;
  }

  v12 = mlir::TensorType::operator mlir::ShapedType(&v20);
  v14 = v13;
  v15 = mlir::TensorType::operator mlir::ShapedType(&v17);
  return mlir::isRankReducedType(v12, v14, v15);
}

uint64_t mlir::tensor::InsertSliceOp::fold(uint64_t *a1)
{
  v52[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*(v3 + 24) + 8);
  v5 = v4 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v5 + 8);
      v8 = 8 * v6;
      while (*v7 != 0x8000000000000000)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (*(v2 + 36))
      {
        v9 = v2 - 16;
      }

      else
      {
        v9 = 0;
      }

      v10 = *(v9 + 8);
      v11 = v10 & 0xFFFFFFFFFFFFFFF8;
      if (*(*(v10 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v12 = *(v11 + 16);
        if (v12)
        {
          v13 = *(v11 + 8);
          v14 = 8 * v12;
          while (*v13 != 0x8000000000000000)
          {
            ++v13;
            v14 -= 8;
            if (!v14)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          if ((v10 ^ v4) <= 7)
          {
            InterfaceFor = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(*a1);
            v16 = *a1 - 16;
            if (!*(*a1 + 36))
            {
              v16 = 0;
            }

            v50 = (*(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
            v17 = mlir::TensorType::operator mlir::ShapedType(&v50);
            v19 = foldIdentityOffsetSizeAndStrideOpInterface(v2, InterfaceFor, v17, v18);
            v2 = *a1;
            if (v19)
            {
              v20 = *(*(v2 + 72) + 24);
              goto LABEL_68;
            }

            v3 = *(v2 + 72);
          }
        }
      }
    }
  }

  v21 = *(v3 + 32 * *(v2 + 104) + 24);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (!v21)
  {
LABEL_43:
    v34 = *(v3 + 24);
    if ((~*(v34 + 8) & 7) == 0)
    {
      v34 = 0;
    }

    if (!v34)
    {
      goto LABEL_58;
    }

    v35 = *(v34 + 8) & 7;
    if (v35 == 6)
    {
      v36 = v34 + 24 * *(v34 + 16) + 120;
      if (!v36)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v36 = v34 + 16 * v35 + 16;
    }

    v37 = *(*(v36 + 48) + 16);
    v38 = v37 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id;
    if (v37 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractSliceOp,void>::id)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    if (!v38 || *(*(v36 + 72) + 24) != *(v3 + 32 * *(v2 + 104) + 24) || (v40 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v2), (mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::ExtractSliceOp>::isSameAs(&v50, v2, v40, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterExtractSlice(mlir::tensor::InsertSliceOp)::$_0>, &v49) & 1) == 0) || (v20 = *(*(v50 + 9) + 24)) == 0)
    {
LABEL_58:
      mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::getMixedSizes(a1, &v50);
      v41 = v50;
      if (v51)
      {
        v42 = 8 * v51 - 8;
        do
        {
          v43 = *v41++;
          v44 = mlir::getConstantIntValue(v43) == 0;
          v46 = v45 & v44;
          if (v45 & v44)
          {
            break;
          }

          v47 = v42;
          v42 -= 8;
        }

        while (v47);
        v41 = v50;
      }

      else
      {
        v46 = 0;
      }

      if (v41 != v52)
      {
        free(v41);
      }

      if (!v46)
      {
        result = 0;
        goto LABEL_70;
      }

      v20 = *(mlir::tensor::InsertSliceOp::getODSOperands(a1, 1u) + 24);
    }

LABEL_68:
    result = v20 | 4;
    goto LABEL_70;
  }

  v22 = *(v21 + 8) & 7;
  if (v22 == 6)
  {
    v23 = v21 + 24 * *(v21 + 16) + 120;
    if (!v23)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v23 = v21 + 16 * v22 + 16;
  }

  v24 = *(*(v23 + 48) + 16);
  v25 = v24 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id;
  if (v24 == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0;
  }

  v50 = v26;
  if (!v25 || (*(*(v3 + 24) + 8) ^ *(*(*(v23 + 72) + 24) + 8)) > 7)
  {
    goto LABEL_43;
  }

  v27 = mlir::OpInterface<mlir::OffsetSizeAndStrideOpInterface,mlir::detail::OffsetSizeAndStrideOpInterfaceInterfaceTraits>::getInterfaceFor(v2);
  if ((mlir::detail::OffsetSizeAndStrideOpInterfaceTrait<mlir::tensor::InsertSliceOp>::isSameAs(&v50, v2, v27, llvm::function_ref<BOOL ()(mlir::OpFoldResult,mlir::OpFoldResult)>::callback_fn<foldInsertAfterInsertSlice(mlir::tensor::InsertSliceOp)::$_0>, &v49) & 1) == 0)
  {
    v2 = *a1;
    v3 = *(*a1 + 72);
    goto LABEL_43;
  }

  v28 = (*(v2 + 72) + 32 * *(v2 + 64 + 16 * ((*(v2 + 44) >> 23) & 1) + 24));
  v29 = *(*(v50 + 9) + 32 * *(v50 + 26) + 24);
  v30 = v28[1];
  if (v30)
  {
    v31 = *v28;
    *v30 = *v28;
    if (v31)
    {
      *(v31 + 8) = v28[1];
    }
  }

  v28[3] = v29;
  v28[1] = v29;
  v32 = *v29;
  *v28 = *v29;
  if (v32)
  {
    *(v32 + 8) = v28;
  }

  *v29 = v28;
  if (*(*a1 + 36))
  {
    result = (*a1 - 16) | 4;
  }

  else
  {
    result = 4;
  }

LABEL_70:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::InsertSliceOp::reifyResultShapes(mlir::tensor::InsertSliceOp *a1, mlir::arith::ConstantIndexOp *a2, uint64_t *a3)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v6 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v6 = 0;
  }

  v7 = *((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v12[0] = v13;
  v12[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v12, v7);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v12);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v8 = *(*a1 + 24);
  ODSOperands = mlir::tensor::InsertSliceOp::getODSOperands(a1, 1u);
  mlir::tensor::getMixedSizes(a2, v8, *(ODSOperands + 24), v12);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v12);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t mlir::tensor::PadOp::verify(void ***this)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*this + 9))
  {
    v3 = (*this - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v5 = mlir::tensor::PadOp::inferResultType(*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8, *((*this)[12] + 3), *((*this)[12] + 4) >> 3, *((*this)[11] + 3), *((*this)[11] + 4) >> 3, 0, 0);
  v32 = v5;
  if (!v5)
  {
    v30[0] = "failed to infer expectedType from sourceType ";
    v31 = 259;
    mlir::Operation::emitError(&v35, *this, v30);
    if (!v35)
    {
      goto LABEL_24;
    }

    v33 = 4;
    v34 = v2;
    v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
    v17 = v37 + 24 * v38;
    v18 = *v16;
    *(v17 + 16) = *(v16 + 16);
    *v17 = v18;
    ++v38;
    if (!v35)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<27ul>(v36, ", specified resultType is ");
    if (!v35)
    {
      goto LABEL_24;
    }

    v33 = 4;
    v34 = v4;
    goto LABEL_23;
  }

  v6 = v5;
  if (*(v4 + 16) != *(v5 + 16))
  {
    v30[0] = "specified type ";
    v31 = 259;
    mlir::Operation::emitError(&v35, *this, v30);
    if (!v35)
    {
      goto LABEL_24;
    }

    v33 = 4;
    v34 = v4;
    v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
    v20 = v37 + 24 * v38;
    v21 = *v19;
    *(v20 + 16) = *(v19 + 16);
    *v20 = v21;
    ++v38;
    if (!v35)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<35ul>(v36, " does not match the inferred type ");
    if (!v35)
    {
      goto LABEL_24;
    }

    v33 = 4;
    v34 = v6;
LABEL_23:
    v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
    v23 = v37 + 24 * v38;
    v24 = *v22;
    *(v23 + 16) = *(v22 + 16);
    *v23 = v24;
    ++v38;
LABEL_24:
    v15 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v35);
    goto LABEL_25;
  }

  if (*(v2 + 16) >= 1)
  {
    v7 = *(v4 + 8);
    v8 = *(v5 + 8);
    v9 = *(v2 + 16) & 0x7FFFFFFFLL;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      v13 = *v8++;
      v12 = v13;
      if (v10 != v13 && v12 != 0x8000000000000000)
      {
        break;
      }

      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    v30[0] = "specified type ";
    v31 = 259;
    mlir::Operation::emitError(&v35, *this, v30);
    if (v35)
    {
      v33 = 4;
      v34 = v4;
      v27 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v37, &v33, 1);
      v28 = v37 + 24 * v38;
      v29 = *v27;
      *(v28 + 16) = *(v27 + 16);
      *v28 = v29;
      ++v38;
      if (v35)
      {
        mlir::Diagnostic::operator<<<35ul>(v36, " does not match the inferred type ");
        if (v35)
        {
          mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(v36, &v32);
        }
      }
    }

    goto LABEL_24;
  }

LABEL_14:
  v15 = 1;
LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t mlir::tensor::PadOp::inferResultType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[4] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 16);
  v8 = a3 == v7 && a5 == v7;
  if (v8 && (!a7 || a7 == a5))
  {
    v29 = v31;
    v30 = 0x400000000;
    if (a5)
    {
      for (i = 0; i != a5; ++i)
      {
        v19 = *(*(a1 + 8) + 8 * i);
        if (v19 == 0x8000000000000000 || (v20 = *(a2 + 8 * i), v20 == 0x8000000000000000) || (v21 = *(a4 + 8 * i), v21 == 0x8000000000000000))
        {
          if (a7)
          {
            v22 = *(a6 + 8 * i);
          }

          else
          {
            v22 = 0x8000000000000000;
          }
        }

        else
        {
          v22 = v20 + v19 + v21;
        }

        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v29, v22);
      }

      v23 = v29;
      v24 = v30;
    }

    else
    {
      v24 = 0;
      v23 = v31;
    }

    v25 = *(a1 + 24);
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = 0;
    v27 = v25;
    v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v25 + 32), &v28, &v27, &v26);
    if (v29 != v31)
    {
      free(v29);
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::tensor::PadOp::verifyRegions(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10);
  v4 = v2 - 16;
  if (!*(v2 + 9))
  {
    v4 = 0;
  }

  v5 = *((*(v4 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  v26 = v5;
  v6 = *(v3 + 8);
  if (v6)
  {
    v7 = (v6 - 8);
  }

  else
  {
    v7 = 0;
  }

  v9 = v7[6];
  v8 = v7[7];
  if (((v8 - v9) >> 3) != v5)
  {
    v24[0] = "expected the block to have ";
    v25 = 259;
    mlir::Operation::emitError(v27, v2, v24);
    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(v27, &v26);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<11ul>((v17 + 1), " arguments");
    }

LABEL_18:
    v19 = *(v18 + 200);
    goto LABEL_19;
  }

  if (v9 != v8)
  {
    v10 = 1;
    while (*(*(*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      v9 += 8;
      ++v10;
      if (v9 == v8)
      {
        goto LABEL_11;
      }
    }

    v24[0] = "expected block argument ";
    v25 = 259;
    mlir::Operation::emitOpError(v2, v24, v27);
    v23 = v10;
    v20 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v27, &v23);
    v18 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<16ul>((v20 + 1), " to be an index");
    }

    goto LABEL_18;
  }

LABEL_11:
  v11 = *(*(*(v7[4] + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v11 != (*(v15 + 8))(v15, v12))
  {
    v24[0] = "expected yield type to match shape element type";
    v25 = 259;
    mlir::Operation::emitOpError(*this, v24, v27);
    v19 = v28;
LABEL_19:
    v16 = v19 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v27);
    goto LABEL_20;
  }

  v16 = 1;
LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

void mlir::tensor::PadOp::build(uint64_t **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, _BYTE *a14, uint64_t a15)
{
  v19 = a3;
  if (!a3)
  {
    v19 = mlir::tensor::PadOp::inferResultType(*(a4 + 8) & 0xFFFFFFFFFFFFFFF8, a5, a6, a7, a8, 0, 0);
  }

  *(a2 + 24) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, a14, &a14[16 * a15]);
  v22 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a5, a6);
  v23 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a7, a8);
  v24 = 0;
  if (a13)
  {
    v24 = *(**a1 + 608);
  }

  mlir::tensor::PadOp::build(a2, v19, a4, a9, a10, a11, a12, v22, v23, v24);
}

void mlir::tensor::PadOp::build(mlir::OperationState *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17[0] = a3;
  v17[1] = a2;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 16, v17, 0, v17, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 16, a4, 0, a4, a5);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a1 + 16, a6, 0, a6, a7);
  v16 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1);
  v16[6] = 1;
  v16[7] = a5;
  v16[8] = a7;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) + 16) = a8;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) + 8) = a9;
  if (a10)
  {
    *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::PadOpGenericAdaptorBase::Properties>(a1) = a10;
  }

  mlir::OperationState::addRegion(a1);
}

void mlir::tensor::PadOp::build(uint64_t **a1, mlir::OperationState *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, char a9, _BYTE *__src, uint64_t a11)
{
  v41[4] = *MEMORY[0x277D85DE8];
  v16 = *(a4 + 8);
  v39 = v41;
  v40 = 0x400000000;
  v36 = &v38;
  v37 = 0x400000000;
  v33 = &v35;
  v34 = 0x400000000;
  v30 = &v32;
  v31 = 0x400000000;
  if (a6)
  {
    v18 = 8 * a6;
    do
    {
      v19 = *a5++;
      mlir::dispatchIndexOpFoldResult(v19, &v39, &v33);
      v18 -= 8;
    }

    while (v18);
  }

  if (a8)
  {
    v20 = 8 * a8;
    do
    {
      v21 = *a7++;
      mlir::dispatchIndexOpFoldResult(v21, &v36, &v30);
      v20 -= 8;
    }

    while (v20);
  }

  if (!a3)
  {
    a3 = mlir::tensor::PadOp::inferResultType(v16 & 0xFFFFFFFFFFFFFFF8, v33, v34, v30, v31, 0, 0);
  }

  *(a2 + 24) = 0;
  llvm::SmallVectorImpl<mlir::NamedAttribute>::append<mlir::NamedAttribute const*,void>(a2 + 112, __src, &__src[16 * a11]);
  v22 = v39;
  v23 = v40;
  v24 = v36;
  v25 = v37;
  v26 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v33, v34);
  v27 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v30, v31);
  v28 = 0;
  if (a9)
  {
    v28 = *(**a1 + 608);
  }

  mlir::tensor::PadOp::build(a2, a3, a4, v22 & 0xFFFFFFFFFFFFFFF9, v23, v24 & 0xFFFFFFFFFFFFFFF9, v25, v26, v27, v28);
}

void mlir::tensor::PadOp::getPaddedDims(mlir::tensor::PadOp *this, uint64_t *a2)
{
  v17[6] = *MEMORY[0x277D85DE8];
  llvm::SmallBitVector::SmallBitVector(this, *((*(*(*(*a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0);
  mlir::tensor::PadOp::getMixedLowPad(&v15, *a2);
  v4 = v15;
  if (v16)
  {
    v5 = 0;
    v6 = 8 * v16;
    do
    {
      ConstantIntValue = mlir::getConstantIntValue(v4[v5]);
      if ((v8 & 1) == 0 || ConstantIntValue)
      {
        llvm::SmallBitVector::set(this, v5);
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
    v4 = v15;
  }

  if (v4 != v17)
  {
    free(v4);
  }

  mlir::tensor::PadOp::getMixedHighPad(&v15, *a2);
  v9 = v15;
  if (v16)
  {
    v10 = 0;
    v11 = 8 * v16;
    do
    {
      v12 = mlir::getConstantIntValue(v9[v10]);
      if ((v13 & 1) == 0 || v12)
      {
        llvm::SmallBitVector::set(this, v10);
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
    v9 = v15;
  }

  if (v9 != v17)
  {
    free(v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void mlir::tensor::PadOp::getMixedLowPad(mlir::tensor::PadOp *this, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 80);
  v6 = *(v5 + 32);
  v7 = *(v4 + 88);
  v8 = *(v4 + 92);
  if ((v3 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 24);
  v19[0] = (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2;
  v19[1] = (v8 + v7) - v7;
  v18 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v11 = (v6 >> 3);
  if ((v6 >> 3))
  {
    v12 = 0;
    do
    {
      v14 = *v10++;
      v13 = v14;
      if (v14 == 0x8000000000000000)
      {
        v15 = mlir::ValueRange::dereference_iterator(v19, v12);
        AsOpFoldResult = mlir::getAsOpFoldResult(v15);
        ++v12;
      }

      else
      {
        AsOpFoldResult = mlir::Builder::getI64IntegerAttr(&v18, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, AsOpFoldResult);
      --v11;
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void mlir::tensor::PadOp::getMixedHighPad(mlir::tensor::PadOp *this, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 44);
  v4 = a2 + 16 * ((v3 >> 23) & 1);
  v5 = *(v4 + 72);
  v6 = *(v5 + 32);
  v7 = (*(v4 + 92) + *(v4 + 88));
  v8 = *(v4 + 96);
  if ((v3 & 0x800000) != 0)
  {
    v9 = *(a2 + 72);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 24);
  v19[0] = (v9 + 32 * v7) & 0xFFFFFFFFFFFFFFF9 | 2;
  v19[1] = (v8 + v7) - v7;
  v18 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v11 = (v6 >> 3);
  if ((v6 >> 3))
  {
    v12 = 0;
    do
    {
      v14 = *v10++;
      v13 = v14;
      if (v14 == 0x8000000000000000)
      {
        v15 = mlir::ValueRange::dereference_iterator(v19, v12);
        AsOpFoldResult = mlir::getAsOpFoldResult(v15);
        ++v12;
      }

      else
      {
        AsOpFoldResult = mlir::Builder::getI64IntegerAttr(&v18, v13) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, AsOpFoldResult);
      --v11;
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::PadOp::getConstantPaddingValue(mlir::tensor::PadOp *this)
{
  v1 = 0;
  v2 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 32);
  if (*(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::YieldOp,void>::id)
  {
    return v1;
  }

  v1 = *(*(v4 + 72) + 24);
  v6 = *(v1 + 8) & 7;
  if (v6 == 7)
  {
    v7 = 0;
  }

  else
  {
    v7 = v1;
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 != 6)
  {
    v10 = v7 + 16 * v8 + 16;
    goto LABEL_13;
  }

  v9 = v7 + 24 * *(v7 + 16);
  v10 = v9 + 120;
  if (v9 != -120)
  {
LABEL_13:
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
    if ((*(**(v10 + 48) + 32))(*(v10 + 48), v11))
    {
      return v1;
    }

    v6 = *(v1 + 8) & 7;
  }

LABEL_15:
  if (v6 == 7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v1;
  }

  if (!v12)
  {
    goto LABEL_21;
  }

  v13 = *(v12 + 8) & 7;
  if (v13 != 6)
  {
    v14 = v12 + 16 * v13 + 16;
    goto LABEL_23;
  }

  v14 = v12 + 24 * *(v12 + 16) + 120;
  if (!v14)
  {
LABEL_21:
    v14 = v1;
  }

LABEL_23:
  v15 = *(v14 + 16);
  v16 = *(((*this + 16 * ((*(*this + 44) >> 23) & 1) + ((*(*this + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 40) + 8);
  if (v16)
  {
    v17 = v16 - 8;
  }

  else
  {
    v17 = 0;
  }

  if (v15 == v17)
  {
    return 0;
  }

  return v1;
}

uint64_t mlir::tensor::PadOp::fold(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 36))
  {
    v2 = *a1 - 16;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v2 + 8);
  v4 = v3 & 0xFFFFFFFFFFFFFFF8;
  if (*(*(v3 & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 8);
    v7 = 8 * v5;
    while (*v6 != 0x8000000000000000)
    {
      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  v8 = *(*(v1 + 72) + 24);
  if ((*(v8 + 8) ^ v3) > 7 || *(v1 + 80))
  {
    return 0;
  }

  return v8 | 4;
}

void mlir::tensor::ParallelInsertSliceOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v55[6] = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = 0x600000000;
  v50 = v52;
  v51 = 0x600000000;
  v47 = v49;
  v48 = 0x600000000;
  v44 = v46;
  v45 = 0x600000000;
  v41 = v43;
  v42 = 0x600000000;
  v38 = v40;
  v39 = 0x600000000;
  if (a6)
  {
    v15 = 8 * a6;
    do
    {
      v16 = *a5++;
      mlir::dispatchIndexOpFoldResult(v16, &v44, &v53);
      v15 -= 8;
    }

    while (v15);
  }

  if (a8)
  {
    v17 = 8 * a8;
    do
    {
      v18 = *a7++;
      mlir::dispatchIndexOpFoldResult(v18, &v41, &v50);
      v17 -= 8;
    }

    while (v17);
  }

  if (a10)
  {
    v20 = 8 * a10;
    do
    {
      v21 = *a9++;
      mlir::dispatchIndexOpFoldResult(v21, &v38, &v47);
      v20 -= 8;
    }

    while (v20);
  }

  *(a2 + 192) = 0;
  v22 = *(a2 + 120);
  if (v22 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v22, 16);
    LODWORD(v22) = *(a2 + 120);
  }

  *(a2 + 120) = v22;
  v23 = v44;
  v24 = v45;
  v25 = v41;
  v26 = v42;
  v27 = v38;
  v28 = v39;
  v29 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v53, v54);
  v30 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v50, v51);
  v31 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v47, v48);
  v36 = a4;
  v37 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v37, 0, &v37, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v36, 0, &v36, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v23 & 0xFFFFFFFFFFFFFFF9, 0, v23 & 0xFFFFFFFFFFFFFFF9, v24);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v25 & 0xFFFFFFFFFFFFFFF9, 0, v25 & 0xFFFFFFFFFFFFFFF9, v26);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v27 & 0xFFFFFFFFFFFFFFF9, 0, v27 & 0xFFFFFFFFFFFFFFF9, v28);
  v32 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2);
  *(v32 + 24) = 0x100000001;
  *(v32 + 32) = v24;
  *(v32 + 36) = v26;
  *(v32 + 40) = v28;
  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) = v29;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) + 8) = v30;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ParallelInsertSliceOpGenericAdaptorBase::Properties>(a2) + 16) = v31;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, 2, 0, 2, 0);
  if (v38 != v40)
  {
    free(v38);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v44 != v46)
  {
    free(v44);
  }

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

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::ParallelInsertSliceOp::verify(mlir::tensor::ParallelInsertSliceOp *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 16);
  if (v3 && (v4 = *(v3 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 48);
  if (*(v6 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v12 = *(*(v6 + 8) + 32);
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    v11 = (*(*v12 + 104))(v12, v13, v6);
  }

  else
  {
    v7 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v6 + 32, v7))
    {
LABEL_11:
      v31 = 0;
      v14 = *(*(*(*this + 72) + 24) + 8);
      ODSOperands = mlir::tensor::ParallelInsertSliceOp::getODSOperands(this, 1u);
      v16 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
      inserted = verifyInsertSliceOp((v14 & 0xFFFFFFFFFFFFFFF8), *(*(ODSOperands + 24) + 8) & 0xFFFFFFFFFFFFFFF8, v17, v18, *(v16 + 24), *(v16 + 32) >> 3, v19, v20, &v31);
      v22 = produceSliceErrorMsg(inserted, *this, v31);
      goto LABEL_20;
    }

    v8 = *(v6 + 24);
    v9 = *(v5 + 48);
    v10 = mlir::detail::TypeIDResolver<mlir::ParallelCombiningOpInterface,void>::resolveTypeID();
    v11 = (*(*v8 + 104))(v8, v10, v9);
  }

  if (v11)
  {
    goto LABEL_11;
  }

  v2 = *this;
LABEL_13:
  v28 = "expected ParallelCombiningOpInterface parent, got:";
  v29 = 259;
  mlir::Operation::emitError(&v31, v2, &v28);
  v23 = *(*this + 16);
  if (v23 && (v24 = *(v23 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v25 = *(v24 + 16);
  }

  else
  {
    v25 = 0;
  }

  if (v31)
  {
    mlir::OpPrintingFlags::OpPrintingFlags(v30);
    mlir::Diagnostic::appendOp(v32, v25, v30);
  }

  v22 = (v32[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
LABEL_20:
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::tensor::ScatterOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 9);
  v4 = *(v2 + 10);
  v5 = *((*(*(v3 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32) >> 3;
  v8 = *(*(v3 + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (verifyGatherOrScatterDims(v2, v6, v7, *(v8 + 8), *(v8 + 16), v5, "scatter", 7, "dest", 4))
  {
    v9 = *this;
    if (!*(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9))
    {
      v28[0] = "requires 'unique' attribute to be set";
      v29 = 259;
      mlir::Operation::emitOpError(v9, v28, &v32);
LABEL_16:
      v11 = v36 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
      goto LABEL_17;
    }

    v10 = mlir::tensor::GatherOp::inferResultType((*(*(*(v9 + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(v9 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 0);
    v11 = 1;
    v12 = mlir::tensor::GatherOp::inferResultType((*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, v6, v7, 1);
    v13 = *this;
    v14 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (v10 != v14 && v14 != v12)
    {
      v28[0] = "source type mismatch: expected ";
      v29 = 259;
      mlir::Operation::emitOpError(v13, v28, &v32);
      if (v32)
      {
        v30 = 4;
        v31 = v10;
        v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
        v17 = v34 + 24 * v35;
        v18 = *v16;
        *(v17 + 16) = *(v16 + 16);
        *v17 = v18;
        ++v35;
        if (v32)
        {
          mlir::Diagnostic::operator<<<30ul>(v33, " or its rank-reduced variant ");
          if (v32)
          {
            v30 = 4;
            v31 = v12;
            v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
            v20 = v34 + 24 * v35;
            v21 = *v19;
            *(v20 + 16) = *(v19 + 16);
            *v20 = v21;
            ++v35;
            if (v32)
            {
              mlir::Diagnostic::operator<<<8ul>(v33, " (got: ");
              if (v32)
              {
                v22 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
                v30 = 4;
                v31 = v22;
                v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v34, &v30, 1);
                v24 = v34 + 24 * v35;
                v25 = *v23;
                *(v24 + 16) = *(v23 + 16);
                *v24 = v25;
                ++v35;
                if (v32)
                {
                  mlir::Diagnostic::operator<<<2ul>(v33, ")");
                }
              }
            }
          }
        }
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_17:
  v26 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

BOOL mlir::tensor::SplatOp::verify(mlir::tensor::SplatOp *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = *(v2 + 8);
    v6 = 8 * v3;
    do
    {
      v7 = *v5++;
      if (v7 == 0x8000000000000000)
      {
        ++v4;
      }

      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v4 = 0;
  }

  v8 = 1;
  mlir::tensor::SplatOp::getODSOperands(this, 1u);
  if (v4 != v9)
  {
    v23 = "incorrect number of dynamic sizes, has ";
    v24 = 259;
    mlir::Operation::emitOpError(*this, &v23, v25);
    mlir::tensor::SplatOp::getODSOperands(this, 1u);
    v22 = v10;
    v11 = mlir::InFlightDiagnostic::operator<<<unsigned long>(v25, &v22);
    v12 = v11;
    if (*v11)
    {
      mlir::Diagnostic::operator<<<12ul>((v11 + 1), ", expected ");
    }

    v13 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
      v16 = *(v13 + 8);
      v17 = 8 * v14;
      do
      {
        v18 = *v16++;
        if (v18 == 0x8000000000000000)
        {
          ++v15;
        }

        v17 -= 8;
      }

      while (v17);
    }

    else
    {
      v15 = 0;
    }

    v21 = v15;
    v8 = (*(mlir::InFlightDiagnostic::operator<<<unsigned long>(v12, &v21) + 200) & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::tensor::SplatOp::reifyResultShapes(mlir::tensor::SplatOp *a1, mlir::Builder *a2, void **a3)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v6 = *((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v16[0] = v17;
  v16[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v16, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v16);
  if (v16[0] != v17)
  {
    free(v16[0]);
  }

  v7 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 16) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(*(v7 + 8) + 8 * v9);
      if (v10 == 0x8000000000000000)
      {
        ODSOperands = mlir::tensor::SplatOp::getODSOperands(a1, 1u);
        v12 = v8++;
        v13 = *(ODSOperands + 32 * v12 + 24) | 4;
      }

      else
      {
        v13 = mlir::Builder::getIndexAttr(a2, v10) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(**a3 + 8 * v9++) = v13;
      v7 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v9 < *(v7 + 16));
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

unint64_t mlir::tensor::SplatOp::fold(void *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (!v2 || ((v3 = *(*v2 + 136), v3 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v4 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id) : (v4 = 1), !v4 || (v5 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8), *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)))
  {
LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v6 = v5[2];
  if (v6)
  {
    v7 = v5[1];
    v8 = 8 * v6;
    while (*v7 != 0x8000000000000000)
    {
      ++v7;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

LABEL_12:
  v13 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v13);
  v14[0] = v2;
  result = mlir::DenseElementsAttr::get(v9, v10, v14, 1uLL) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::PackOp::reifyResultShapes(uint64_t *a1, mlir::arith::ConstantIndexOp *a2, uint64_t *a3)
{
  v10[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *((*(*(*(*a1 + 72) + 32 * *(*a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v9[0] = v10;
  v9[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v9, v6);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v9);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  mlir::tensor::getMixedSizes(a2, *(v5 + 24), *(*(v5 + 72) + 32 * *(v5 + 104) + 24), v9);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v9);
  if (v9[0] != v10)
  {
    free(v9[0]);
  }

  v7 = *MEMORY[0x277D85DE8];
  return 1;
}

void mlir::tensor::PackOp::getMixedTiles(mlir::tensor::PackOp *this, uint64_t a2)
{
  v11 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  v3 = *(v2 + 32);
  if (v3 >= 8)
  {
    v6 = 0;
    v7 = *(v2 + 24);
    v8 = 8 * (v3 >> 3);
    do
    {
      if (*v7 == 0x8000000000000000)
      {
        v9 = v6++;
        v10 = *(*(a2 + 72) + 32 * (*(a2 + 108) + *(a2 + 104) + *(a2 + 112)) + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&v11, *v7) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, v10);
      ++v7;
      v8 -= 8;
    }

    while (v8);
  }
}

void mlir::tensor::PackOp::getStaticTiles(mlir::tensor::PackOp *this, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x600000000;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  mlir::tensor::PackOp::getMixedTiles(&v7, a2);
  v3 = v7;
  if (v8)
  {
    v4 = 8 * v8;
    do
    {
      v5 = *v3++;
      mlir::dispatchIndexOpFoldResult(v5, v10, this);
      v4 -= 8;
    }

    while (v4);
    v3 = v7;
  }

  if (v3 != &v9)
  {
    free(v3);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::PackOp::requirePaddingValue(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, _BYTE *__src, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t *a9)
{
  v27[6] = *MEMORY[0x277D85DE8];
  if (a6 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = a6;
  }

  v26[0] = v27;
  v26[1] = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(v26, __src, &__src[8 * v14]);
  if (a8)
  {
    mlir::invertPermutationVector(a7, a8, &v23);
    mlir::applyPermutationToVector<long long,6u>(v26, v23, v24);
    if (v23 != &v25)
    {
      free(v23);
    }
  }

  if (!a4)
  {
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  v16 = 8 * a4;
  while (1)
  {
    if (*(a1 + 8 * *a3) == 0x8000000000000000)
    {
      goto LABEL_15;
    }

    ConstantIntValue = mlir::getConstantIntValue(*a9);
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (*(a1 + 8 * *a3) % ConstantIntValue)
    {
      goto LABEL_20;
    }

LABEL_15:
    ++a3;
    ++a9;
    v16 -= 8;
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v19 = *(v26[0] + *a3);
  if (v19 == 0x8000000000000000 || !(*(a1 + 8 * *a3) % v19))
  {
    goto LABEL_15;
  }

LABEL_20:
  v20 = 1;
LABEL_17:
  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t mlir::tensor::PackOp::verify(mlir::tensor::PackOp *this)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = *this;
  mlir::tensor::PackOp::getMixedTiles(&v80, *this);
  if (v81)
  {
    v3 = v80;
    v4 = 8 * v81;
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v3);
      if ((v6 & 1) != 0 && !ConstantIntValue)
      {
        break;
      }

      ++v3;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v15 = "invalid zero tile factor";
  }

  else
  {
LABEL_6:
    v7 = *(v2 + 80);
    v8 = (*(*(*(v2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = v8[2];
    v10 = *(v7 + 24);
    v11 = *(v7 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(v2);
    v14 = v13;
    if (isInvalidPackingPosSpecification(v10, v11, v9))
    {
      v15 = "invalid inner_dims_pos vector";
    }

    else if (isInvalidPackingPosSpecification(OuterDimsPerm, v14, v9))
    {
      v15 = "invalid outer_dims_perm vector";
    }

    else if (!v14 || v14 == v9)
    {
      if (v9 >= v81)
      {
        if (v11 == v81)
        {
          v74 = (*(*(*(v2 + 72) + 32 * *(v2 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          v16 = mlir::TensorType::operator mlir::ShapedType(&v74);
          v18 = v17;
          v70[0] = v16;
          v70[1] = v17;
          (*(v17 + 24))(v17, v16);
          v68 = v9 + v81;
          v69 = v19;
          if (v68 != v19)
          {
            v71 = "packed rank != (unpacked rank + num tiling factors), got ";
            v73 = 259;
            mlir::Operation::emitError(&v74, v2, &v71);
            v65 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v74, &v69);
            v66 = v65;
            if (*v65)
            {
              mlir::Diagnostic::operator<<<5ul>((v65 + 1), " != ");
            }

            v36 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v66, &v68) + 200);
            goto LABEL_42;
          }

          mlir::tensor::PackOp::getStaticTiles(&v74, v2);
          v20 = mlir::tensor::PackOp::inferPackedType(v8, v74, v75, v10, v11, OuterDimsPerm, v14);
          v67 = v20;
          if (v74 != &v76)
          {
            free(v74);
          }

          v22 = *(v20 + 8);
          v21 = *(v20 + 16);
          v23 = (*(v18 + 24))(v18, v16);
          if (v21)
          {
            v25 = v24 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = 8 * v24 - 8;
            v27 = 8 * v21 - 8;
            while (*v22 == 0x8000000000000000 || *v23 == 0x8000000000000000 || *v22 <= *v23)
            {
              if (v27)
              {
                ++v22;
                ++v23;
                v29 = v26;
                v26 -= 8;
                v27 -= 8;
                if (v29)
                {
                  continue;
                }
              }

              goto LABEL_33;
            }

            v71 = "the shape of output is not large enough to hold the packed data. Expected at least ";
            v73 = 259;
            mlir::Operation::emitError(&v74, v2, &v71);
            if (v74)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v75, &v67);
              if (v74)
              {
                mlir::Diagnostic::operator<<<7ul>(&v75, ", got ");
                if (v74)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v75, v70);
                }
              }
            }

            goto LABEL_41;
          }

LABEL_33:
          v30 = (*(v18 + 24))(v18, v16);
          v32 = v81;
          v33 = 8 * (v31 - v81);
          if (v31 <= v81)
          {
            v33 = 0;
          }

          v34 = (v33 + v30);
          if (v31 < v81)
          {
            v32 = v31;
          }

          v74 = v34;
          v75 = v32;
          v76 = &v80;
          if (llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::PackOp>(mlir::tensor::PackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(&v74))
          {
            v35 = 1;
            goto LABEL_43;
          }

          v15 = "mismatch in inner tile sizes specified and shaped of tiled dimension in the packed type";
        }

        else
        {
          v15 = "tiling factors must equal the number of dimensions to tile";
        }
      }

      else
      {
        v15 = "tiling factors must be less than or equal to the input rank for pack or output rank for unpack";
      }
    }

    else
    {
      v15 = "outer_dims_perm must be a permutation or empty";
    }
  }

  v71 = v15;
  v73 = 259;
  mlir::Operation::emitError(&v74, v2, &v71);
LABEL_41:
  v36 = v79;
LABEL_42:
  v35 = v36 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
LABEL_43:
  if (v80 != &v82)
  {
    free(v80);
  }

  if (v35)
  {
    ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
    if (v38 && (v39 = *(ODSOperands + 24)) != 0)
    {
      v40 = *this;
      if ((*(v39 + 8) & 0xFFFFFFFFFFFFFFF8) != *((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24))
      {
        v80 = "expected padding_value has ";
        v83 = 259;
        mlir::Operation::emitOpError(v40, &v80, &v74);
        if (v74)
        {
          v41 = *((*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
          LODWORD(v71) = 4;
          v72 = v41;
          v42 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v77, &v71, 1);
          v43 = v77 + 24 * v78;
          v44 = *v42;
          *(v43 + 16) = *(v42 + 16);
          *v43 = v44;
          ++v78;
          if (v74)
          {
            mlir::Diagnostic::operator<<<11ul>(&v75, " but got: ");
            if (v74)
            {
              v45 = *(v39 + 8) & 0xFFFFFFFFFFFFFFF8;
              LODWORD(v71) = 4;
              v72 = v45;
              v46 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v77, &v71, 1);
              v47 = v77 + 24 * v78;
              v48 = *v46;
              *(v47 + 16) = *(v46 + 16);
              *v47 = v48;
              ++v78;
            }
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v50 = *(*this + 80);
      v51 = *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v52 = *(v51 + 8);
      v53 = *(v51 + 16);
      v54 = *(v50 + 24);
      v55 = *(v50 + 32) >> 3;
      v56 = *(*(mlir::tensor::PackOp::getODSOperands(this, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v57 = *(v56 + 8);
      v58 = *(v56 + 16);
      v59 = mlir::tensor::PackOp::getOuterDimsPerm(*this);
      v61 = v60;
      mlir::tensor::PackOp::getMixedTiles(&v74, *this);
      v62 = mlir::tensor::PackOp::requirePaddingValue(v52, v53, v54, v55, v57, v58, v59, v61, v74);
      if (v74 != &v76)
      {
        free(v74);
      }

      if (v62)
      {
        v80 = "invalid tile factor or output size provided. Only full tiles are supported when padding_value is not set";
        v83 = 259;
        mlir::Operation::emitOpError(*this, &v80, &v74);
LABEL_58:
        v49 = v79 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v74);
        goto LABEL_60;
      }
    }

    v49 = 1;
    goto LABEL_60;
  }

  v49 = 0;
LABEL_60:
  v63 = *MEMORY[0x277D85DE8];
  return v49 & 1;
}

uint64_t mlir::tensor::PackOp::getOuterDimsPerm(mlir::tensor::PackOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (!v2)
  {
    v2 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(this + 3) + 32), 0, 0);
  }

  v4 = v2 + 24;
  result = *(v2 + 24);
  v5 = *(v4 + 8) >> 3;
  return result;
}

uint64_t mlir::tensor::PackOp::inferPackedType(void *a1, uint64_t *a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v14 = a1[1];
  v15 = &v14[8 * a1[2]];
  v30 = v32;
  v31 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v30, v14, v15);
  v33 = v35;
  v34 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v33, a4, &a4[8 * a5]);
  *&v36 = v37;
  *(&v36 + 1) = 0x600000000;
  if (v34)
  {
    llvm::SmallVectorImpl<long long>::operator=(&v36, &v33);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v16 = v36;
  if (DWORD2(v36))
  {
    v17 = v30;
    v18 = 8 * DWORD2(v36);
    v19 = a2;
    v20 = v36;
    do
    {
      v21 = v17[*v20];
      if (v21 != 0x8000000000000000)
      {
        v22 = *v19;
        v23 = 0x8000000000000000;
        if (*v19 != 0x8000000000000000)
        {
          if (v21)
          {
            if ((v22 ^ v21) < 0)
            {
              v23 = v21 / v22;
            }

            else
            {
              if (v22 < 0)
              {
                v24 = v21 + 1;
              }

              else
              {
                v24 = v21 - 1;
              }

              v23 = v24 / v22 + 1;
            }
          }

          else
          {
            v23 = 0;
          }
        }

        v17[*v20] = v23;
      }

      ++v20;
      ++v19;
      v18 -= 8;
    }

    while (v18);
  }

  if (v16 != v37)
  {
    free(v16);
  }

  if (a7)
  {
    mlir::applyPermutationToVector<long long,6u>(&v30, a6, a7);
  }

  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v30, a2, &a2[a3]);
  v25 = a1[3];
  *&v36 = v30;
  *(&v36 + 1) = v31;
  v33 = v25;
  v29 = 0;
  v26 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v25 + 32), &v36, &v33, &v29);
  if (v30 != v32)
  {
    free(v30);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

uint64_t mlir::tensor::PackOp::getSpeculatability(mlir::tensor::PackOp *this)
{
  ODSOperands = mlir::tensor::PackOp::getODSOperands(this, 2u);
  if (v3 && *(ODSOperands + 24))
  {
    return 1;
  }

  else
  {
    return areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(*this);
  }
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::PackOp>(uint64_t a1)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = (*(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v2 = mlir::TensorType::operator mlir::ShapedType(&v18);
  v4 = v3;
  mlir::tensor::PackOp::getMixedTiles(&v18, a1);
  v5 = (*(v4 + 24))(v4, v2);
  if (v6 <= v19)
  {
    v7 = 0;
  }

  else
  {
    v7 = 8 * (v6 - v19);
  }

  if (v6 >= v19)
  {
    v8 = v19;
  }

  else
  {
    v8 = v6;
  }

  v9 = v18;
  if (v8)
  {
    v10 = (v7 + v5);
    v11 = 8 * v19 - 8;
    v12 = 8 * v8 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v9);
      if ((v13 & 1) == 0 || *v10 == 0x8000000000000000)
      {
        break;
      }

      v14 = 1;
      if (v12)
      {
        ++v10;
        ++v9;
        v15 = v11;
        v11 -= 8;
        v12 -= 8;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v14 = 0;
LABEL_15:
    v9 = v18;
  }

  else
  {
    v14 = 1;
  }

  if (v9 != v20)
  {
    free(v9);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t mlir::tensor::PackOp::canonicalize(uint64_t a1, uint64_t a2)
{
  v108[8] = *MEMORY[0x277D85DE8];
  v85 = a1;
  v4 = *(a1 + 72);
  v5 = *(v4 + 24);
  v6 = *(v5 + 8);
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = *(v4 + 24);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = *(v7 + 8) & 7;
    if (v8 == 6)
    {
      v9 = (v7 + 24 * *(v7 + 16) + 120);
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = (v7 + 16 * v8 + 16);
    }

    v10 = *(v9[6] + 16);
    if (v10 != &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      v9 = 0;
    }

    v99[0] = v9;
    if (v10 == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
    {
      ODSOperands = mlir::tensor::UnPackOp::getODSOperands(v99, 0);
      v63 = *(a1 + 104);
      v64 = *(a1 + 72);
      if ((*(*(v64 + 32 * v63 + 24) + 8) ^ *(*(ODSOperands + 24) + 8)) > 7 || *(a1 + 112) && *(v64 + 32 * (*(a1 + 108) + v63) + 24) || !hasSameInnerOuterAttribute(a1, v99[0]) || !haveSameTiles(a1, v99[0]))
      {
        v61 = 0;
      }

      else
      {
        __src = *(mlir::tensor::UnPackOp::getODSOperands(v99, 0) + 24);
        v61 = 1;
        (**a2)(a2, a1, &__src, 1);
      }

      goto LABEL_74;
    }
  }

LABEL_12:
  v11 = a1 + 64;
  if (!*(a1 + 112))
  {
    goto LABEL_26;
  }

  v12 = *(a1 + 104);
  if (!*(v4 + 32 * (v12 + *(a1 + 108)) + 24))
  {
    goto LABEL_26;
  }

  v13 = v6 & 0xFFFFFFFFFFFFFFF8;
  v14 = *(a1 + 80);
  v16 = *(v14 + 24);
  v15 = *(v14 + 32);
  v17 = v15 >> 3;
  if (v15 >= 8)
  {
    v18 = 8 * v17;
    v19 = v16;
    while (*(*(v13 + 8) + 8 * *v19) != 0x8000000000000000)
    {
      v19 += 2;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

LABEL_26:
    __s1 = v92;
    v91 = 6;
    v86 = v88;
    v87 = 0x600000000;
    v33 = *(v5 + 8) & 0xFFFFFFFFFFFFFFF8;
    v34 = *(v33 + 8);
    v35 = &v34[8 * *(v33 + 16)];
    v90 = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v34, v35);
    v36 = *(*(*(a1 + 72) + 32 * *(a1 + 104) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v86, *(v36 + 8), (*(v36 + 8) + 8 * *(v36 + 16)));
    LODWORD(v100) = 0;
    *v99 = 0u;
    v101 = v103;
    v102 = 0x400000000;
    v37 = *(v11 + 16 * ((*(a1 + 44) >> 23) & 1));
    v38 = *(v37 + 32);
    if (v38 >= 8)
    {
      v39 = *(v37 + 24);
      v40 = 8 * (v38 >> 3);
      do
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(v99, v39++);
        v40 -= 8;
      }

      while (v40);
    }

    __src = &v97;
    v96 = 0x600000000;
    mlir::tensor::PackOp::getOuterDimsPerm(a1);
    if (v41)
    {
      OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a1);
      mlir::invertPermutationVector(OuterDimsPerm, v43, v93);
      llvm::SmallVectorImpl<long long>::operator=(&__src, v93);
      if (v93[0] != &v94)
      {
        free(v93[0]);
      }
    }

    v44 = *((*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v45 = __src;
    v46 = 0;
    if (v44 << 32)
    {
      v47 = 0;
      v48 = v44;
      v49 = v96;
      v50 = __s1;
      v51 = v86;
      do
      {
        if (!llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(v99, v47))
        {
          v52 = v47;
          if (v49)
          {
            v52 = v45[v47];
          }

          v53 = v50[v47];
          if ((v53 == 0x8000000000000000) != (v51[v52] == 0x8000000000000000))
          {
            if (v53 == 0x8000000000000000)
            {
              v53 = v51[v52];
            }

            v50[v47] = v53;
            v51[v52] = v53;
            v46 = 1;
          }
        }

        ++v47;
      }

      while (v48 != v47);
    }

    if (v45 != &v97)
    {
      free(v45);
    }

    if (v101 != v103)
    {
      free(v101);
    }

    MEMORY[0x25F891030](v99[0], 8);
    if ((v46 & 1) == 0)
    {
      v61 = 0;
      goto LABEL_66;
    }

    v54 = *(a1 + 24);
    v55 = *(a1 + 72);
    v84 = *(v55 + 24);
    v56 = *(v84 + 1) & 0xFFFFFFFFFFFFFFF8;
    v57 = *(v56 + 16);
    v58 = v90;
    if (v57 == v90)
    {
      v59 = __s1;
      if (!memcmp(__s1, *(v56 + 8), 8 * v57))
      {
        v60 = a2;
        goto LABEL_59;
      }
    }

    else
    {
      v59 = __s1;
    }

    __src = v56;
    v99[0] = mlir::TensorType::clone(&__src, v59, v58);
    __src = *(*(a1 + 72) + 24);
    v60 = a2;
    v84 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v54, v99, &__src) - 16;
    v55 = *(a1 + 72);
LABEL_59:
    v83 = *(v55 + 32 * *(a1 + 104) + 24);
    v65 = *(v83 + 1) & 0xFFFFFFFFFFFFFFF8;
    v66 = *(v65 + 16);
    v67 = v87;
    v68 = v86;
    if (v66 == v87 && !memcmp(v86, *(v65 + 8), 8 * v66))
    {
      v99[0] = &v85;
      v99[1] = &v84;
      v100 = &v83;
      mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(v60, a1, v99);
    }

    else
    {
      __src = v65;
      v99[0] = mlir::TensorType::clone(&__src, v68, v67);
      __src = *(*(v85 + 72) + 32 * *(v85 + 104) + 24);
      v83 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((v60 + 8), v54, v99, &__src) - 16;
      v99[0] = &v85;
      v99[1] = &v84;
      v100 = &v83;
      mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(v60, v85, v99);
      *(v60 + 24) = vextq_s8(*(v85 + 8), *(v85 + 8), 8uLL);
      v69 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::CastOp>(v60 + 8, *(**v54 + 32));
      v99[0] = v54;
      v99[1] = v69;
      v100 = &v102;
      v101 = 0x400000000;
      v104[0] = v105;
      v104[1] = 0x400000000;
      v105[4] = v106;
      v105[5] = 0x400000000;
      v106[8] = 4;
      v106[9] = v107;
      v106[10] = 0x100000000;
      v107[1] = v108;
      v107[2] = 0x100000000;
      v108[2] = 0;
      v108[1] = 0;
      v108[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v108[4] = 0;
      v108[6] = 0;
      __src = v65;
      v93[0] = (v85 - 16);
      llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v100, v93, 0, v93, 1);
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v104, &__src, &v96);
      v70 = mlir::Operation::create(v99);
      mlir::OpBuilder::insert((v60 + 8), v70);
      v71 = *(*(v70 + 6) + 16);
      mlir::OperationState::~OperationState(v99);
      if (v71 == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0;
      }

      v99[0] = v72;
      __src = v99;
      mlir::RewriterBase::replaceUsesWithIf(v60, (v85 - 16), v72 - 2, llvm::function_ref<BOOL ()(mlir::OpOperand &)>::callback_fn<mlir::RewriterBase::replaceAllUsesExcept(mlir::Value,mlir::Value,mlir::Operation *)::{lambda(mlir::OpOperand &)#1}>, &__src, 0);
    }

    v61 = 1;
LABEL_66:
    if (v86 != v88)
    {
      free(v86);
    }

    if (__s1 != v92)
    {
      free(__s1);
    }

    goto LABEL_74;
  }

LABEL_18:
  v20 = *(a1 + 96);
  v21 = *(v20 + 32);
  if (v21 >= 8)
  {
    v22 = *(v20 + 24);
    v23 = 8 * (v21 >> 3);
    while (*v22 != 0x8000000000000000)
    {
      ++v22;
      v23 -= 8;
      if (!v23)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
  v24 = *(v13 + 8);
  v25 = *(v13 + 16);
  v26 = *(*(v4 + 32 * v12 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 8);
  v28 = *(v26 + 16);
  v29 = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  v31 = v30;
  mlir::tensor::PackOp::getMixedTiles(v99, a1);
  v32 = mlir::tensor::PackOp::requirePaddingValue(v24, v25, v16, v17, v27, v28, v29, v31, v99[0]);
  if (v99[0] != &v100)
  {
    free(v99[0]);
  }

  if (v32)
  {
    v5 = *(*(a1 + 72) + 24);
    goto LABEL_26;
  }

  (*(*a2 + 40))(a2, a1);
  v73 = (v11 + 16 * ((*(a1 + 44) >> 23) & 1));
  v74 = v73[6];
  v75 = v73[7];
  v73 += 6;
  v76 = v73[2];
  v77 = v75 + v74;
  v78 = *(*(*(a1 + 48) + 96) + 8 * *(*(a1 + 48) + 104) - 8);
  v79 = mlir::detail::DenseArrayAttrImpl<int>::get(*(***(a1 + 24) + 32), v73, 4);
  LODWORD(__src) = 2;
  v96 = v78;
  v97 = v79;
  v99[0] = a1;
  v99[1] = __PAIR64__(v76, v77);
  v100 = &v102;
  v101 = 0x100000000;
  llvm::SmallVectorImpl<std::pair<unsigned int,mlir::NamedAttribute>>::append<std::pair<unsigned int,mlir::NamedAttribute> const*,void>(&v100, &__src, v98);
  mlir::MutableOperandRange::clear(v99);
  if (v100 != &v102)
  {
    free(v100);
  }

  (*(*a2 + 48))(a2, a1);
  v61 = 1;
LABEL_74:
  v80 = *MEMORY[0x277D85DE8];
  return v61;
}

BOOL hasSameInnerOuterAttribute(unsigned int *a1, unsigned int *a2)
{
  v2 = *&a1[4 * ((a1[11] >> 23) & 1) + 16];
  v3 = *(v2 + 32);
  v4 = *&a2[4 * ((a2[11] >> 23) & 1) + 16];
  if ((*(v4 + 32) ^ v3) > 7 || memcmp(*(v2 + 24), *(v4 + 24), v3 & 0xFFFFFFFFFFFFFFF8))
  {
    return 0;
  }

  OuterDimsPerm = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  v10 = v9;
  v11 = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
  if (v10 == v12 && !memcmp(OuterDimsPerm, v11, 8 * v10))
  {
    return 1;
  }

  v13 = mlir::tensor::PackOp::getOuterDimsPerm(a1);
  if (v14)
  {
    v15 = 0;
    while (v15 == *(v13 + 8 * v15))
    {
      if (v14 == ++v15)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:
  v16 = mlir::tensor::UnPackOp::getOuterDimsPerm(a2);
  if (!v17)
  {
    return 1;
  }

  v18 = v16;
  v19 = 0;
  do
  {
    v20 = *(v18 + 8 * v19);
    result = v19 == v20;
    v21 = v19 != v20 || v17 - 1 == v19;
    ++v19;
  }

  while (!v21);
  return result;
}

uint64_t haveSameTiles(uint64_t a1, uint64_t a2)
{
  v15[6] = *MEMORY[0x277D85DE8];
  mlir::tensor::PackOp::getMixedTiles(&v13, a1);
  mlir::tensor::UnPackOp::getMixedTiles(&v10, a2);
  if (v14 == v11)
  {
    if (v14)
    {
      v3 = 0;
      v4 = 8 * v14 - 8;
      do
      {
        isEqualConstantIntOrValue = mlir::isEqualConstantIntOrValue(*(v13 + v3), *(v10 + v3));
        if (isEqualConstantIntOrValue)
        {
          v6 = v4 == v3;
        }

        else
        {
          v6 = 1;
        }

        v3 += 8;
      }

      while (!v6);
      v7 = isEqualConstantIntOrValue;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v10 != &v12)
  {
    free(v10);
  }

  if (v13 != v15)
  {
    free(v13);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

char *mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

uint64_t mlir::RewriterBase::modifyOpInPlace<mlir::tensor::PackOp::canonicalize(mlir::tensor::PackOp,mlir::PatternRewriter &)::$_0>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  (*(*a1 + 40))(a1);
  v6 = *(**a3 + 72);
  v7 = *a3[1];
  v8 = v6[1];
  if (v8)
  {
    v9 = *v6;
    *v8 = *v6;
    if (v9)
    {
      *(v9 + 8) = v6[1];
    }
  }

  v6[3] = v7;
  v10 = *v7;
  *v6 = *v7;
  v6[1] = v7;
  if (v10)
  {
    *(v10 + 8) = v6;
  }

  *v7 = v6;
  v11 = (*(**a3 + 72) + 32 * *(**a3 + 16 * ((*(**a3 + 44) >> 23) & 1) + 88));
  v12 = *a3[2];
  v13 = v11[1];
  if (v13)
  {
    v14 = *v11;
    *v13 = *v11;
    if (v14)
    {
      *(v14 + 8) = v11[1];
    }
  }

  v11[3] = v12;
  v15 = *v12;
  *v11 = *v12;
  v11[1] = v12;
  if (v15)
  {
    *(v15 + 8) = v11;
  }

  *v12 = v11;
  v16 = **a3;
  v17 = *(v16 + 36);
  v18 = v16 - 16;
  if (!v17)
  {
    v18 = 0;
  }

  *(v18 + 8) = *(*a3[2] + 8) & 0xFFFFFFFFFFFFFFF8 | *(v18 + 8) & 7;
  v19 = *(*a1 + 48);

  return v19(a1, a2);
}

unint64_t mlir::tensor::PackOp::fold(mlir::tensor::PackOp *a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v2 = *(a2 + 80);
    v3 = v2[*(a2 + 48) + *(a2 + 52)];
    v4 = v3 != 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = *(a2 + 80);
  }

  v5 = *v2;
  if (v5)
  {
    v6 = *(*v5 + 136);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v8 = v5;
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

  ODSOperands = mlir::tensor::PackOp::getODSOperands(a1, 1u);
  result = reshapeConstantSource(v8, (*(*(ODSOperands + 24) + 8) & 0xFFFFFFFFFFFFFFF8), v3, v4);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t mlir::tensor::UnPackOp::reifyResultShapes(uint64_t *a1, mlir::arith::ConstantIndexOp *a2, uint64_t *a3)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v5 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v10, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
  v11[0] = v12;
  v11[1] = 0x600000000;
  llvm::SmallVectorImpl<mlir::OpFoldResult>::resizeImpl<false>(v11, v5);
  llvm::SmallVectorImpl<llvm::SmallVector<mlir::OpFoldResult,6u>>::resize(a3, 1uLL, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v6 = *(v10 + 24);
  ODSOperands = mlir::tensor::UnPackOp::getODSOperands(&v10, 1u);
  mlir::tensor::getMixedSizes(a2, v6, *(ODSOperands + 24), v11);
  llvm::SmallVectorImpl<mlir::OpFoldResult>::operator=(*a3, v11);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

void mlir::tensor::UnPackOp::getMixedTiles(mlir::tensor::UnPackOp *this, uint64_t a2)
{
  v12 = a2;
  v11 = *(***(a2 + 24) + 32);
  *this = this + 16;
  *(this + 1) = 0x600000000;
  v2 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 80);
  v3 = *(v2 + 32);
  if (v3 >= 8)
  {
    v5 = 0;
    v6 = *(v2 + 24);
    v7 = 8 * (v3 >> 3);
    do
    {
      if (*v6 == 0x8000000000000000)
      {
        ODSOperands = mlir::tensor::UnPackOp::getODSOperands(&v12, 2u);
        v9 = v5++;
        v10 = *(ODSOperands + 32 * v9 + 24) | 4;
      }

      else
      {
        v10 = mlir::Builder::getI64IntegerAttr(&v11, *v6) & 0xFFFFFFFFFFFFFFFBLL;
      }

      llvm::SmallVectorTemplateBase<mlir::OpFoldResult,true>::push_back(this, v10);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

void mlir::tensor::UnPackOp::getStaticTiles(mlir::tensor::UnPackOp *this, uint64_t a2)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x600000000;
  *this = this + 16;
  *(this + 1) = 0x600000000;
  mlir::tensor::UnPackOp::getMixedTiles(&v7, a2);
  v3 = v7;
  if (v8)
  {
    v4 = 8 * v8;
    do
    {
      v5 = *v3++;
      mlir::dispatchIndexOpFoldResult(v5, v10, this);
      v4 -= 8;
    }

    while (v4);
    v3 = v7;
  }

  if (v3 != &v9)
  {
    free(v3);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::UnPackOp::verify(mlir::tensor::UnPackOp **this)
{
  v53[6] = *MEMORY[0x277D85DE8];
  v1 = *this;
  v46 = v1;
  mlir::tensor::UnPackOp::getMixedTiles(&v51, v1);
  if (v52)
  {
    v2 = v51;
    v3 = 8 * v52;
    while (1)
    {
      ConstantIntValue = mlir::getConstantIntValue(*v2);
      if ((v5 & 1) != 0 && !ConstantIntValue)
      {
        break;
      }

      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    v14 = "invalid zero tile factor";
  }

  else
  {
LABEL_6:
    v6 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v46, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v7 = v6[2];
    v8 = *(v46 + 2 * ((*(v46 + 11) >> 23) & 1) + 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32) >> 3;
    OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(v46);
    v13 = v12;
    if (isInvalidPackingPosSpecification(v9, v10, v7))
    {
      v14 = "invalid inner_dims_pos vector";
    }

    else if (isInvalidPackingPosSpecification(OuterDimsPerm, v13, v7))
    {
      v14 = "invalid outer_dims_perm vector";
    }

    else if (!v13 || v13 == v7)
    {
      if (v7 >= v52)
      {
        if (v10 == v52)
        {
          v47 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v46, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
          v15 = mlir::TensorType::operator mlir::ShapedType(&v47);
          v17 = v16;
          v43[0] = v15;
          v43[1] = v16;
          (*(v16 + 24))(v16, v15);
          v41 = v7 + v52;
          v42 = v18;
          if (v41 != v18)
          {
            v44[0] = "packed rank != (unpacked rank + num tiling factors), got ";
            v45 = 259;
            mlir::Operation::emitError(&v47, v1, v44);
            v38 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v47, &v42);
            v39 = v38;
            if (*v38)
            {
              mlir::Diagnostic::operator<<<5ul>((v38 + 1), " != ");
            }

            v35 = *(mlir::InFlightDiagnostic::operator<<<unsigned long &>(v39, &v41) + 200);
            goto LABEL_42;
          }

          mlir::tensor::UnPackOp::getStaticTiles(&v47, v46);
          v19 = mlir::tensor::PackOp::inferPackedType(v6, v47, v48, v9, v10, OuterDimsPerm, v13);
          v40 = v19;
          if (v47 != &v49)
          {
            free(v47);
          }

          v21 = *(v19 + 8);
          v20 = *(v19 + 16);
          v22 = (*(v17 + 24))(v17, v15);
          if (v20)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v25 = 8 * v23 - 8;
            v26 = 8 * v20 - 8;
            while (*v21 == 0x8000000000000000 || *v22 == 0x8000000000000000 || *v21 <= *v22)
            {
              if (v26)
              {
                ++v21;
                ++v22;
                v28 = v25;
                v25 -= 8;
                v26 -= 8;
                if (v28)
                {
                  continue;
                }
              }

              goto LABEL_33;
            }

            v44[0] = "the shape of output is not large enough to hold the packed data. Expected at least ";
            v45 = 259;
            mlir::Operation::emitError(&v47, v1, v44);
            if (v47)
            {
              mlir::Diagnostic::operator<<<mlir::RankedTensorType &>(&v48, &v40);
              if (v47)
              {
                mlir::Diagnostic::operator<<<7ul>(&v48, ", got ");
                if (v47)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v48, v43);
                }
              }
            }

            goto LABEL_41;
          }

LABEL_33:
          v29 = (*(v17 + 24))(v17, v15);
          v31 = v52;
          v32 = 8 * (v30 - v52);
          if (v30 <= v52)
          {
            v32 = 0;
          }

          v33 = (v32 + v29);
          if (v30 < v52)
          {
            v31 = v30;
          }

          v47 = v33;
          v48 = v31;
          v49 = &v51;
          if (llvm::all_of<llvm::detail::zippy<llvm::detail::zip_shortest,llvm::ArrayRef<long long>,llvm::SmallVector<mlir::OpFoldResult,6u> &>,llvm::LogicalResult commonVerifierPackAndUnPackOp<mlir::tensor::UnPackOp>(mlir::tensor::UnPackOp)::{lambda(std::tuple<long long,mlir::OpFoldResult>)#1}>(&v47))
          {
            v34 = 1;
            goto LABEL_43;
          }

          v14 = "mismatch in inner tile sizes specified and shaped of tiled dimension in the packed type";
        }

        else
        {
          v14 = "tiling factors must equal the number of dimensions to tile";
        }
      }

      else
      {
        v14 = "tiling factors must be less than or equal to the input rank for pack or output rank for unpack";
      }
    }

    else
    {
      v14 = "outer_dims_perm must be a permutation or empty";
    }
  }

  v44[0] = v14;
  v45 = 259;
  mlir::Operation::emitError(&v47, v1, v44);
LABEL_41:
  v35 = v50;
LABEL_42:
  v34 = v35 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
LABEL_43:
  if (v51 != v53)
  {
    free(v51);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v34 & 1;
}

uint64_t areTilesAndTiledDimsAllConstant<mlir::tensor::UnPackOp>(uint64_t a1)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v17 = a1;
  v18 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v17, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v1 = mlir::TensorType::operator mlir::ShapedType(&v18);
  v3 = v2;
  mlir::tensor::UnPackOp::getMixedTiles(&v18, v17);
  v4 = (*(v3 + 24))(v3, v1);
  if (v5 <= v19)
  {
    v6 = 0;
  }

  else
  {
    v6 = 8 * (v5 - v19);
  }

  if (v5 >= v19)
  {
    v7 = v19;
  }

  else
  {
    v7 = v5;
  }

  v8 = v18;
  if (v7)
  {
    v9 = (v6 + v4);
    v10 = 8 * v19 - 8;
    v11 = 8 * v7 - 8;
    while (1)
    {
      mlir::getConstantIntValue(*v8);
      if ((v12 & 1) == 0 || *v9 == 0x8000000000000000)
      {
        break;
      }

      v13 = 1;
      if (v11)
      {
        ++v9;
        ++v8;
        v14 = v10;
        v10 -= 8;
        v11 -= 8;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    v13 = 0;
LABEL_15:
    v8 = v18;
  }

  else
  {
    v13 = 1;
  }

  if (v8 != v20)
  {
    free(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

void mlir::tensor::UnPackOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a10;
  v34[6] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x600000000;
  v29 = v31;
  v30 = 0x600000000;
  if (a8)
  {
    v18 = 8 * a8;
    do
    {
      v19 = *a7++;
      mlir::dispatchIndexOpFoldResult(v19, &v29, &v32);
      v18 -= 8;
    }

    while (v18);
  }

  v20 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (a10)
  {
    v16 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a9, a10);
  }

  v21 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, a5, a6);
  v22 = v29;
  v23 = v30;
  v24 = mlir::detail::DenseArrayAttrImpl<long long>::get(*a1, v32, v33);
  v27 = a3;
  __src = v20;
  v26 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v27, 0, &v27, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v26, 0, &v26, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, v22 & 0xFFFFFFFFFFFFFFF9, 0, v22 & 0xFFFFFFFFFFFFFFF9, v23);
  if (v16)
  {
    *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) + 8) = v16;
  }

  *mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) = v21;
  *(mlir::OperationState::getOrAddProperties<mlir::tensor::detail::UnPackOpGenericAdaptorBase::Properties>(a2) + 16) = v24;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v29);
  if (v29 != v31)
  {
    free(v29);
  }

  if (v32 != v34)
  {
    free(v32);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::UnPackOp::canonicalize(mlir::tensor::UnPackOp *a1, uint64_t a2)
{
  v100[8] = *MEMORY[0x277D85DE8];
  v79 = a1;
  v3 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24);
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v5 = v3 + 24 * *(v3 + 16);
      v6 = v5 + 120;
      if (v5 == -120)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = v3 + 16 * v4 + 16;
    }

    if (*(*(v6 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::PackOp,void>::id)
    {
      goto LABEL_9;
    }

    v72 = *(*(*(v6 + 72) + 24) + 8);
    if ((*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) ^ v72) > 7)
    {
LABEL_75:
      v27 = 0;
      goto LABEL_81;
    }

    v73 = *(v6 + 44);
    v74 = (v6 + 16 * ((v73 >> 23) & 1));
    v75 = v74[24];
    if ((v73 & 0x800000) != 0)
    {
      v76 = *(v6 + 72);
      if (v75)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v76 = 0;
      if (v75)
      {
LABEL_71:
        if (*(v76 + 32 * (v74[23] + v74[22]) + 24))
        {
          goto LABEL_75;
        }
      }
    }

    if (hasSameInnerOuterAttribute(v6, v79) && haveSameTiles(v6, v79))
    {
      *&v92 = *(*(v6 + 72) + 24);
      v27 = 1;
      (**a2)(a2, v79, &v92, 1);
      goto LABEL_81;
    }

    goto LABEL_75;
  }

LABEL_9:
  v7 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24);
  if ((~*(v7 + 8) & 7) == 0)
  {
    v7 = 0;
  }

  if (!v7)
  {
    v10 = 0;
LABEL_16:
    v11 = 0;
    goto LABEL_19;
  }

  v8 = *(v7 + 8) & 7;
  if (v8 == 6)
  {
    v9 = v7 + 24 * *(v7 + 16);
    v10 = v9 + 120;
    if (v9 == -120)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = v7 + 16 * v8 + 16;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::DestinationStyleOpInterface,mlir::Operation *,llvm::CastInfo<mlir::DestinationStyleOpInterface,mlir::Operation *,void>>::doCastIfPossible(v10);
LABEL_19:
  *&v92 = v10;
  *(&v92 + 1) = v11;
  if (v10)
  {
    v12 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24);
    DpsInits = mlir::DestinationStyleOpInterface::getDpsInits(&v92);
    v14 = *(v12 + 8) & 7;
    if (v12 && v14 == 6)
    {
      v14 = (*(v12 + 16) + 6);
    }

    v15 = *(DpsInits + 32 * v14 + 24);
    v16 = v79;
    (*(*a2 + 40))(a2, v79);
    v17 = v79;
    ODSOperandIndexAndLength = mlir::tensor::UnPackOp::getODSOperandIndexAndLength(&v79, 1u);
    v19 = *(v17 + 9);
    v20 = *(*(v19 + 32 * ODSOperandIndexAndLength + 16) + 72) + ((v19 + 32 * ODSOperandIndexAndLength - *(*(v19 + 32 * ODSOperandIndexAndLength + 16) + 72)) & 0x1FFFFFFFE0);
    v21 = *(v20 + 16);
    if ((*(v21 + 46) & 0x80) != 0)
    {
      v22 = *(v21 + 72);
    }

    else
    {
      v22 = 0;
    }

    v23 = (v19 + ((v20 - v22) & 0x1FFFFFFFE0));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      *v24 = *v23;
      if (v25)
      {
        *(v25 + 8) = v23[1];
      }
    }

    v23[3] = v15;
    v23[1] = v15;
    v26 = *v15;
    *v23 = *v15;
    if (v26)
    {
      *(v26 + 8) = v23;
    }

    *v15 = v23;
    (*(*a2 + 48))(a2, v16);
    v27 = 1;
  }

  else
  {
    __s1 = v86;
    v85 = 0x600000000;
    v82 = 0x600000000;
    v80 = v79;
    v81 = v83;
    v28 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v80, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v29 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v80, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v29 + 8) + 8 * *(v29 + 16));
    LODWORD(v85) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__s1, v28, v30);
    v31 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v80, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
    v32 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v80, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v33 = (*(v32 + 8) + 8 * *(v32 + 16));
    LODWORD(v82) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v81, v31, v33);
    LODWORD(v93) = 0;
    v92 = 0u;
    v94 = v96;
    v95 = 0x400000000;
    v34 = v80;
    v35 = *(v80 + 2 * ((*(v80 + 11) >> 23) & 1) + 8);
    v36 = *(v35 + 32);
    if (v36 >= 8)
    {
      v37 = *(v35 + 24);
      v38 = 8 * (v36 >> 3);
      do
      {
        llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::insert(&v92, v37++);
        v38 -= 8;
      }

      while (v38);
      v34 = v80;
    }

    v89 = v91;
    v90 = 0x600000000;
    mlir::tensor::UnPackOp::getOuterDimsPerm(v34);
    if (v39)
    {
      OuterDimsPerm = mlir::tensor::UnPackOp::getOuterDimsPerm(v80);
      mlir::invertPermutationVector(OuterDimsPerm, v41, v87);
      llvm::SmallVectorImpl<long long>::operator=(&v89, v87);
      if (v87[0] != &v88)
      {
        free(v87[0]);
      }
    }

    v42 = *((*(*(mlir::tensor::UnPackOp::getODSOperands(&v80, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v43 = v89;
    v44 = 0;
    if (v42 << 32)
    {
      v45 = 0;
      v46 = v42;
      v47 = v90;
      v48 = __s1;
      v49 = v81;
      do
      {
        if (!llvm::SetVector<long long,llvm::SmallVector<long long,4u>,llvm::DenseSet<long long,llvm::DenseMapInfo<long long,void>>,4u>::contains(&v92, v45))
        {
          v50 = v45;
          if (v47)
          {
            v50 = v43[v45];
          }

          v51 = v48[v50];
          if ((v51 == 0x8000000000000000) != (v49[v45] == 0x8000000000000000))
          {
            if (v51 == 0x8000000000000000)
            {
              v51 = v49[v45];
            }

            v48[v50] = v51;
            v49[v45] = v51;
            v44 = 1;
          }
        }

        ++v45;
      }

      while (v46 != v45);
    }

    if (v43 != v91)
    {
      free(v43);
    }

    if (v94 != v96)
    {
      free(v94);
    }

    MEMORY[0x25F891030](v92, 8);
    if (v44)
    {
      v52 = *(v79 + 3);
      v53 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24);
      v54 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v55 = *(v54 + 16);
      if (v55 != v85 || memcmp(__s1, *(v54 + 8), 8 * v55))
      {
        v89 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        *&v92 = mlir::TensorType::clone(&v89, __s1, v85);
        v89 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 0) + 24);
        v53 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v52, &v92, &v89) - 16;
      }

      v56 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24);
      v57 = *(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      v58 = *(v57 + 16);
      if (v58 != v82 || memcmp(v81, *(v57 + 8), 8 * v58))
      {
        v89 = (*(*(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
        *&v92 = mlir::TensorType::clone(&v89, v81, v82);
        v89 = *(mlir::tensor::UnPackOp::getODSOperands(&v79, 1u) + 24);
        v56 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType &,mlir::detail::TypedValue<mlir::RankedTensorType>>((a2 + 8), v52, &v92, &v89) - 16;
      }

      v59 = *(v79 + 2 * ((*(v79 + 11) >> 23) & 1) + 8);
      v60 = *(v59 + 24);
      v61 = *(v59 + 32) >> 3;
      mlir::tensor::UnPackOp::getMixedTiles(&v89, v79);
      v62 = mlir::tensor::UnPackOp::getOuterDimsPerm(v79);
      v64 = v63;
      v65 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::UnPackOp>(*(**v52 + 32));
      *&v92 = v52;
      *(&v92 + 1) = v65;
      v93 = &v95;
      v94 = 0x400000000;
      v96[3] = v97;
      v96[4] = 0x400000000;
      v97[4] = v98;
      v97[5] = 0x400000000;
      v98[8] = 4;
      v98[9] = v99;
      v98[10] = 0x100000000;
      v99[1] = v100;
      v99[2] = 0x100000000;
      v100[2] = 0;
      v100[1] = 0;
      v100[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v100[4] = 0;
      v100[6] = 0;
      mlir::tensor::UnPackOp::build((a2 + 8), &v92, v53, v56, v60, v61, v89, v90, v62, v64);
      v66 = mlir::Operation::create(&v92);
      mlir::OpBuilder::insert((a2 + 8), v66);
      v67 = *(*(v66 + 6) + 16);
      mlir::OperationState::~OperationState(&v92);
      if (v67 == &mlir::detail::TypeIDResolver<mlir::tensor::UnPackOp,void>::id)
      {
        v68 = v66;
      }

      else
      {
        v68 = 0;
      }

      *&v92 = v68 - 16;
      if (v89 != v91)
      {
        free(v89);
      }

      v69 = v79;
      if (*(v79 + 9))
      {
        v70 = v79 - 16;
      }

      else
      {
        v70 = 0;
      }

      v89 = (*(v70 + 1) & 0xFFFFFFFFFFFFFFF8);
      v71 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::RankedTensorType,mlir::Value &>((a2 + 8), *(v79 + 3), &v89, &v92);
      (*(*a2 + 8))(a2, v69, v71);
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    if (v81 != v83)
    {
      free(v81);
    }

    if (__s1 != v86)
    {
      free(__s1);
    }
  }

LABEL_81:
  v77 = *MEMORY[0x277D85DE8];
  return v27;
}

uint64_t mlir::tensor::UnPackOp::getOuterDimsPerm(mlir::tensor::UnPackOp *this)
{
  v2 = *(this + 2 * ((*(this + 11) >> 23) & 1) + 9);
  if (!v2)
  {
    v2 = mlir::detail::DenseArrayAttrImpl<long long>::get(*(***(this + 3) + 32), 0, 0);
  }

  v4 = v2 + 24;
  result = *(v2 + 24);
  v5 = *(v4 + 8) >> 3;
  return result;
}

unint64_t mlir::tensor::UnPackOp::fold(uint64_t a1, uint64_t a2)
{
  v2 = **(a2 + 64);
  if (v2)
  {
    v3 = *(*v2 + 136);
    if (v3 != &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v2 = 0;
    }
  }

  v5 = *a1 - 16;
  if (!*(*a1 + 36))
  {
    v5 = 0;
  }

  result = reshapeConstantSource(v2, (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8), 0, 0);
  if (result <= 7)
  {
    return 0;
  }

  return result;
}

uint64_t foldTensorCastPrecondition(uint64_t a1)
{
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::InsertSliceOp,void>::id)
  {
    return 0;
  }

  if (mlir::OpInterface<mlir::LoopLikeOpInterface,mlir::detail::LoopLikeOpInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    return 0;
  }

  if ((*(a1 + 46) & 0x80) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 68);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a1 + 72);
  v4 = 32 * v2;
  for (i = (v3 + 24); ; i += 4)
  {
    v6 = *i;
    v7 = *(*i + 8) & 7;
    if (*i)
    {
      v8 = (*(*i + 8) & 7) == 7;
      v9 = v7 == 7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_16;
    }

    if (v7 != 6)
    {
      break;
    }

    v10 = v6 + 24 * *(v6 + 16) + 120;
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_16:
    v4 -= 32;
    if (!v4)
    {
      return 0;
    }
  }

  v10 = v6 + 16 * v7 + 16;
LABEL_14:
  if (*(*(v10 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id || (mlir::tensor::preservesStaticInformation((*(v10 - 8) & 0xFFFFFFFFFFFFFFF8), (*(*(*(v10 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

BOOL mlir::tensor::BitcastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0);
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

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps1(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v34[25] = *MEMORY[0x277D85DE8];
  v30 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_8;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v9 + 8, v12);
  v14 = (*(v13 + 8))(v13, a2);
  v15 = *v14;
  if (*(*v14 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v23 = v14[2];
    if (!(v23 >> 30))
    {
      goto LABEL_20;
    }

    v24 = v23 & 0xC0000000;
    if (v24 == 0x80000000 || v24 == 0x40000000)
    {
      goto LABEL_20;
    }
  }

  v16 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v15 + 8, v16))
  {
LABEL_20:
    v22 = 1;
  }

  else
  {
LABEL_8:
    v29 = 261;
    v28[0] = a3;
    v28[1] = a4;
    mlir::Operation::emitOpError(a1, v28, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<3ul>(v34, " #");
    }

    v17 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v33, &v30);
    v18 = v17;
    if (*v17)
    {
      mlir::Diagnostic::operator<<<109ul>((v17 + 1), " must be tensor of signless integer or unsigned integer or signed integer or floating-point values, but got ");
      if (*v18)
      {
        v31 = 4;
        v32 = a2;
        v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v18 + 3), &v31, 1);
        v20 = v18[3] + 24 * *(v18 + 8);
        v21 = *v19;
        *(v20 + 16) = *(v19 + 16);
        *v20 = v21;
        ++*(v18 + 8);
      }
    }

    v22 = (v18[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL mlir::tensor::BitcastOp::parse(uint64_t a1, uint64_t a2)
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

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
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

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
  }

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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = *MEMORY[0x277D85DE8];
}

void mlir::tensor::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::tensor::CastOp::verifyInvariantsImpl(mlir::Operation **this)
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

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v25[25] = *MEMORY[0x277D85DE8];
  v21 = a5;
  v6 = *a2;
  v7 = *(*a2 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v6 + 8, v9);
    (*(v10 + 8))(v10, a2);
    v11 = 1;
  }

  else
  {
    v20 = 261;
    v19[0] = a3;
    v19[1] = a4;
    mlir::Operation::emitOpError(a1, v19, &v24);
    if (v24)
    {
      mlir::Diagnostic::operator<<<3ul>(v25, " #");
    }

    v12 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v24, &v21);
    v13 = v12;
    if (*v12)
    {
      mlir::Diagnostic::operator<<<45ul>((v12 + 1), " must be tensor of any type values, but got ");
      if (*v13)
      {
        v22 = 4;
        v23 = a2;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v13 + 3), &v22, 1);
        v15 = v13[3] + 24 * *(v13 + 8);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(v13 + 8);
      }
    }

    v11 = (v13[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::tensor::CastOp::parse(uint64_t a1, uint64_t a2)
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

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v8 = __src;
  v14 = 257;
  if (((*(*a1 + 400))(a1, "to", 2, &__src) & 1) == 0)
  {
    return 0;
  }

  v6 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6))
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::tensor::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v21[4] = *MEMORY[0x277D85DE8];
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
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v21, 0);
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

  v15 = (*(*a2 + 16))(a2);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 1uLL)
  {
    *v16 = 28532;
    *(v15 + 4) += 2;
  }

  else
  {
    llvm::raw_ostream::write(v15, "to", 2uLL);
  }

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

  v19 = *this - 16;
  if (!*(*this + 9))
  {
    v19 = 0;
  }

  (*(*a2 + 32))(a2, *(v19 + 8) & 0xFFFFFFFFFFFFFFF8);
  v20 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::CollapseShapeOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "reassociation", 0xDuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::CollapseShapeOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "reassociation";
    v11[1] = 13;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::tensor::CollapseShapeOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::CollapseShapeOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x69636F7373616572 ? (v4 = *(a3 + 5) == 0x6E6F69746169636FLL) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::tensor::CollapseShapeOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x69636F7373616572 && *(a2 + 5) == 0x6E6F69746169636FLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "reassociation";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::tensor::CollapseShapeOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v8, "reassociation", 13, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_21;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v8 = a1[2];
    if (v8)
    {
      v9 = a1[1];
      v10 = &v9[v8];
      v7 = 1;
      while (1)
      {
        v11 = *v9;
        if (!*v9 || *(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          goto LABEL_3;
        }

        v12 = v11[2];
        if (v12)
        {
          v13 = v11[1];
          v14 = 8 * v12;
          do
          {
            v15 = *v13;
            if (!*v13)
            {
              goto LABEL_3;
            }

            if (*(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              goto LABEL_3;
            }

            v16 = v15[1];
            if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v16[2] != 64)
            {
              goto LABEL_3;
            }

            ++v13;
            v14 -= 8;
          }

          while (v14);
        }

        if (++v9 == v10)
        {
          goto LABEL_22;
        }
      }
    }

LABEL_21:
    v7 = 1;
    goto LABEL_22;
  }

LABEL_3:
  a4(&v21, a5);
  if (v21)
  {
    mlir::Diagnostic::operator<<<12ul>(v22, "attribute '");
    if (v21)
    {
      v20 = 261;
      v19[0] = a2;
      v19[1] = a3;
      mlir::Diagnostic::operator<<(v22, v19);
      if (v21)
      {
        mlir::Diagnostic::operator<<<73ul>(v22, "' failed to satisfy constraint: Array of 64-bit integer array attributes");
      }
    }
  }

  v7 = (v22[192] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
LABEL_22:
  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

void mlir::tensor::CollapseShapeOp::build(mlir::Builder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a4;
  v10 = a3;
  ReassociationIndicesAttribute = mlir::getReassociationIndicesAttribute(a1, a5, a6);
  mlir::OperationState::addAttribute(a2, "reassociation", 0xD, ReassociationIndicesAttribute);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v9, 0, &v9, 1);
  *(a2 + 192) = 0;
  v8 = *(a2 + 120);
  if (v8 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, (a2 + 128), v8, 16);
    LODWORD(v8) = *(a2 + 120);
  }

  *(a2 + 120) = v8;
  llvm::SmallVectorImpl<mlir::Type>::append<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a2 + 64, &v10 + 2, 0, &v10 + 2, 1);
}

BOOL mlir::tensor::CollapseShapeOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v10[0] = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(v3, "reassociation", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v10) && mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 9))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      v5 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v8 = "requires attribute 'reassociation'";
    v9 = 259;
    mlir::Operation::emitOpError(v2, &v8, v10);
    v5 = (v11 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v10);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL mlir::tensor::CollapseShapeOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v15[0] = v16;
  v15[1] = 1;
  v13 = 0;
  v14 = 0;
  v12[0] = &v13;
  v12[1] = 1;
  v4 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v16, 1) & 1) == 0)
  {
    return 0;
  }

  v5 = **(*(*a1 + 32))(a1);
  v6 = *(v5 + 528);
  if (!v6)
  {
    v7 = *(v5 + 384);
    __src = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v7 + 232), &__src);
  }

  if (!mlir::AsmParser::parseAttribute<mlir::ArrayAttr>(a1, &v14, v6))
  {
    return 0;
  }

  if (v14)
  {
    v8 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::CollapseShapeOpGenericAdaptorBase::Properties>(a2);
    *v8 = v14;
  }

  v11 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  __src = a1;
  v19[0] = &v11;
  v19[1] = a2;
  if (!mlir::tensor::CollapseShapeOp::verifyInherentAttrs(v9, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::CollapseShapeOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    return 0;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    return 0;
  }

  __src = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &__src))
  {
    return 0;
  }

  v13 = __src;
  v20 = 257;
  if (((*(*a1 + 400))(a1, "into", 4, &__src) & 1) == 0)
  {
    return 0;
  }

  v11 = 0;
  if (!mlir::AsmParser::parseType<mlir::TensorType>(a1, &v11))
  {
    return 0;
  }

  __src = v11;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v19);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v15, v12, v4, a2 + 16);
}

void mlir::tensor::CollapseShapeOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v25[4] = *MEMORY[0x277D85DE8];
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

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v23 = v25;
  v24 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v23, "reassociation", 13);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v23, v24);
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
  if (*(v11 + 3) == v12)
  {
    llvm::raw_ostream::write(v11, ":", 1uLL);
  }

  else
  {
    *v12 = 58;
    ++*(v11 + 4);
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v17 = (*(*a2 + 16))(a2);
  v18 = *(v17 + 4);
  if (*(v17 + 3) - v18 > 3uLL)
  {
    *v18 = 1869901417;
    *(v17 + 4) += 4;
  }

  else
  {
    llvm::raw_ostream::write(v17, "into", 4uLL);
  }

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (v20 >= *(v19 + 3))
  {
    llvm::raw_ostream::write(v19, 32);
  }

  else
  {
    *(v19 + 4) = v20 + 1;
    *v20 = 32;
  }

  v21 = *this - 16;
  if (!*(*this + 9))
  {
    v21 = 0;
  }

  (*(*a2 + 32))(a2, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v23 != v25)
  {
    free(v23);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::tensor::detail::ConcatOpGenericAdaptorBase::ConcatOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 32) = v4;
  *(result + 40) = v3;
  return result;
}

uint64_t mlir::tensor::ConcatOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "dim", 3uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v11 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v12 = v19 + 24 * v20;
              v13 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *v12 = v13;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_13;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_13:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::tensor::ConcatOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "dim";
    v11[1] = 3;
    v6 = mlir::StringAttr::get(v5, v11, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v6, v3);
    v7 = v13;
    if (v14)
    {
      v8 = mlir::DictionaryAttr::get(a1, v13, v14);
      v7 = v13;
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v15)
    {
      free(v7);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t mlir::tensor::ConcatOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::tensor::ConcatOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 3 && (*a3 == 26980 ? (v4 = *(a3 + 2) == 109) : (v4 = 0), v4))
  {
    v6 = *a2 & 0xFFFFFFFFFFFFFF00;
    v5 = *a2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void *mlir::tensor::ConcatOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 3 && *a2 == 26980 && *(a2 + 2) == 109)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v5 = a4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    *result = v5;
  }

  return result;
}

void mlir::tensor::ConcatOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "dim";
    v7[1] = 3;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::tensor::ConcatOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v8, "dim", 3, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && (v7 = a1[1], *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v7[2] == 64)
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
          mlir::Diagnostic::operator<<<66ul>(v14, "' failed to satisfy constraint: 64-bit signless integer attribute");
        }
      }
    }

    v8 = (v14[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v13);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::tensor::ConcatOp::verifyInvariantsImpl(unsigned int **this)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (v3)
  {
    v28 = v2;
    if (mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(v3, "dim", 3, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::__mlir_ods_local_attr_constraint_TensorOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v28))
    {
      v4 = *this;
      if ((*(*this + 46) & 0x80) != 0)
      {
        v5 = v4[17];
        if (v5)
        {
          v6 = 0;
          v7 = *(v4 + 9) + 24;
          do
          {
            v8 = *this;
            v9 = *(*v7 + 8) & 0xFFFFFFFFFFFFFFF8;
            v25 = v6;
            v10 = *v9;
            if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
            {
              v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v18 = mlir::detail::InterfaceMap::lookup(v10 + 8, v17);
              (*(v18 + 8))(v18, v9);
            }

            else
            {
              v24 = 261;
              v23[0] = "operand";
              v23[1] = 7;
              mlir::Operation::emitOpError(v8, v23, &v28);
              if (v28)
              {
                mlir::Diagnostic::operator<<<3ul>(v29, " #");
              }

              v11 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v28, &v25);
              v12 = v11;
              if (*v11)
              {
                mlir::Diagnostic::operator<<<64ul>((v11 + 1), " must be variadic of ranked tensor of any type values, but got ");
                if (*v12)
                {
                  v26 = 4;
                  v27 = v9;
                  v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v12 + 3), &v26, 1);
                  v14 = v12[3] + 24 * *(v12 + 8);
                  v15 = *v13;
                  *(v14 + 16) = *(v13 + 16);
                  *v14 = v15;
                  ++*(v12 + 8);
                }
              }

              v16 = *(v12 + 200);
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
              if (v16)
              {
                goto LABEL_21;
              }
            }

            ++v6;
            v7 += 32;
          }

          while (v5 != v6);
          v4 = *this;
        }
      }

      if (v4[9])
      {
        v19 = v4 - 4;
      }

      else
      {
        v19 = 0;
      }

      v20 = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v4, (*(v19 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
    }

    else
    {
LABEL_21:
      v20 = 0;
    }
  }

  else
  {
    v23[0] = "requires attribute 'dim'";
    v24 = 259;
    mlir::Operation::emitOpError(v2, v23, &v28);
    v20 = (v29[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v28);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(mlir::Operation *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v19 = a5;
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v6 + 8, v13);
    (*(v14 + 8))(v14, a2);
    v12 = 1;
  }

  else
  {
    v18 = 261;
    v17[0] = a3;
    v17[1] = a4;
    mlir::Operation::emitOpError(a1, v17, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<3ul>(v23, " #");
    }

    v7 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v22, &v19);
    v8 = v7;
    if (*v7)
    {
      mlir::Diagnostic::operator<<<52ul>((v7 + 1), " must be ranked tensor of any type values, but got ");
      if (*v8)
      {
        v20 = 4;
        v21 = a2;
        v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v8 + 3), &v20, 1);
        v10 = v8[3] + 24 * *(v8 + 8);
        v11 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v11;
        ++*(v8 + 8);
      }
    }

    v12 = (v8[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL mlir::tensor::ConcatOp::parse(uint64_t a1, uint64_t a2)
{
  v20[16] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = 0;
  v19[0] = v20;
  v19[1] = 0x400000000;
  v14 = 0;
  v18 = 257;
  if (((*(*a1 + 400))() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (((*(*a1 + 280))(a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = (*(*a1 + 32))(a1);
  v5 = mlir::IntegerType::get(*v4, 64, 0);
  if (!mlir::AsmParser::parseAttribute<mlir::IntegerAttr>(a1, &v16, v5))
  {
    goto LABEL_13;
  }

  if (v16)
  {
    v6 = mlir::OperationState::getOrAddProperties<mlir::tensor::detail::ConcatOpGenericAdaptorBase::Properties>(a2);
    *v6 = v16;
  }

  if ((*(*a1 + 296))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, v19, 0, 1, 0xFFFFFFFFLL)) && (v13 = (*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && (v7 = *(a2 + 8), v17[0] = a1, v17[1] = &v13, v17[2] = a2, mlir::tensor::ConcatOp::verifyInherentAttrs(v7, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::tensor::ConcatOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, v17)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v17[0] = 0, mlir::AsmParser::parseType<mlir::FunctionType>(a1, v17)))
  {
    v8 = *(v17[0] + 8);
    v14 = *(v17[0] + 16);
    v15 = v8;
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, (v14 + 8 * v8), (v14 + 8 * v8 + 8 * *(v17[0] + 12)));
    v9 = (*(*a1 + 16))(a1);
    v10 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type> &>(a1, v19, &v14, v9, a2 + 16);
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  if (v19[0] != v20)
  {
    free(v19[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void mlir::tensor::ConcatOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v40[4] = *MEMORY[0x277D85DE8];
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

  v6 = (*(*a2 + 16))(a2);
  v7 = *(v6 + 4);
  if ((*(v6 + 3) - v7) > 2)
  {
    *(v7 + 2) = 109;
    *v7 = 26980;
    *(v6 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v6, "dim", 3uLL);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (*(v8 + 3) == v9)
  {
    llvm::raw_ostream::write(v8, "(", 1uLL);
  }

  else
  {
    *v9 = 40;
    ++*(v8 + 4);
  }

  (*(*a2 + 48))(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ")", 1uLL);
  }

  else
  {
    *v11 = 41;
    ++*(v10 + 4);
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

  v14 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v15 = *(v14 + 17);
    v16 = *(v14 + 9);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = (*(*a2 + 16))(a2);
  if (v15)
  {
    v18 = v17;
    (*(*a2 + 160))(a2, *(v16 + 24));
    v19 = v15 - 1;
    if (v19)
    {
      v20 = (v16 + 56);
      do
      {
        v21 = *(v18 + 4);
        if (*(v18 + 3) - v21 > 1uLL)
        {
          *v21 = 8236;
          *(v18 + 4) += 2;
        }

        else
        {
          llvm::raw_ostream::write(v18, ", ", 2uLL);
        }

        v22 = *v20;
        v20 += 4;
        (*(*a2 + 160))(a2, v22);
        --v19;
      }

      while (v19);
    }
  }

  v38 = v40;
  v39 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v38, "dim", 3);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v38, v39);
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
  if (*(v26 + 3) == v27)
  {
    llvm::raw_ostream::write(v26, ":", 1uLL);
  }

  else
  {
    *v27 = 58;
    ++*(v26 + 4);
  }

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

  v30 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v31 = *(v30 + 9);
    v32 = *(v30 + 17);
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v37[0] = v31;
  v37[1] = 0;
  v37[2] = v31;
  v37[3] = v32;
  v33 = *(v30 + 9);
  v34 = v30 - 16;
  if (!v33)
  {
    v34 = 0;
  }

  v36[0] = v34;
  v36[1] = 0;
  v36[2] = v34;
  v36[3] = v33;
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(a2, v37, v36);
  if (v38 != v40)
  {
    free(v38);
  }

  v35 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::DimOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v30[25] = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v26 = 0;
  v4 = *v3;
  v5 = *(*v3 + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v12 = &v29;
    goto LABEL_14;
  }

  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v4 + 8, v6);
    if ((*(v7 + 16))(v7, v3))
    {
      v8 = *v3;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
      (*(v10 + 24))(v10, v3);
      if (v11 >= 1)
      {
        v4 = *v3;
        v12 = v24;
LABEL_14:
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v4 + 8, v19);
        *v12 = v20;
        (*(v20 + 8))(v20, v3);
        goto LABEL_15;
      }
    }
  }

  v25 = 261;
  v24[0] = "operand";
  v24[1] = 7;
  mlir::Operation::emitOpError(v2, v24, &v29);
  if (v29)
  {
    mlir::Diagnostic::operator<<<3ul>(v30, " #");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v29, &v26);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<51ul>((v13 + 1), " must be non-0-ranked or unranked tensor, but got ");
    if (*v14)
    {
      v27 = 4;
      v28 = v3;
      v15 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v14 + 3), &v27, 1);
      v16 = v14[3] + 24 * *(v14 + 8);
      v17 = *v15;
      *(v16 + 16) = *(v15 + 16);
      *v16 = v17;
      ++*(v14 + 8);
    }
  }

  v18 = *(v14 + 200);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (!mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u))
  {
LABEL_20:
    result = 0;
    goto LABEL_21;
  }

  if (*(*this + 9))
  {
    v21 = *this - 16;
  }

  else
  {
    v21 = 0;
  }

  result = mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(*this, *(v21 + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0);
LABEL_21:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps6(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<25ul>((v6 + 1), " must be index, but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::tensor::DimOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v11[0] = v12;
  v11[1] = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7[1] = 1;
  v8 = 0;
  v7[0] = &v8;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && (v4 = (*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v12, 1)) && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v9, 1)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, mlir::AsmParser::parseType<mlir::TensorType>(a1, &v6)) && (v8 = v6, v6 = *(**(*(*a1 + 32))(a1) + 472), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, v7), mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v11, v7, v4, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v9, v6, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::tensor::DimOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v18[4] = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v18, 0);
  v5 = (*(*a2 + 16))(a2);
  v6 = *(v5 + 4);
  if (v6 >= *(v5 + 3))
  {
    llvm::raw_ostream::write(v5, 32);
  }

  else
  {
    *(v5 + 4) = v6 + 1;
    *v6 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v7 = (*(*a2 + 16))(a2);
  v8 = *(v7 + 4);
  if (*(v7 + 3) == v8)
  {
    llvm::raw_ostream::write(v7, ",", 1uLL);
  }

  else
  {
    *v8 = 44;
    ++*(v7 + 4);
  }

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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = *MEMORY[0x277D85DE8];
}

BOOL mlir::tensor::EmptyOp::verifyInvariantsImpl(mlir::Operation **this)
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

    return 0;
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

    return mlir::tensor::__mlir_ods_local_type_constraint_TensorOps4(v2, (*(v6 + 1) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
  }
}

BOOL mlir::tensor::__mlir_ods_local_type_constraint_TensorOps7(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v20[25] = *MEMORY[0x277D85DE8];
  v16 = a5;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    v11 = 1;
  }

  else
  {
    v15 = 261;
    v14[0] = a3;
    v14[1] = a4;
    mlir::Operation::emitOpError(a1, v14, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<<3ul>(v20, " #");
    }

    v6 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v19, &v16);
    v7 = v6;
    if (*v6)
    {
      mlir::Diagnostic::operator<<<37ul>((v6 + 1), " must be variadic of index, but got ");
      if (*v7)
      {
        v17 = 4;
        v18 = a2;
        v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v7 + 3), &v17, 1);
        v9 = v7[3] + 24 * *(v7 + 8);
        v10 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v10;
        ++*(v7 + 8);
      }
    }

    v11 = (v7[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::tensor::EmptyOp::parse(uint64_t a1, uint64_t a2)
{
  v14[16] = *MEMORY[0x277D85DE8];
  v12 = v14;
  v13 = 0x400000000;
  if (((*(*a1 + 280))() & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 720))(a1, &v12, 0, 1, 0xFFFFFFFFLL) & 1) == 0) || ((*(*a1 + 296))(a1) & 1) == 0 || ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0) || ((*(*a1 + 104))(a1) & 1) == 0 || (v10 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(a1, &v10)))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  __src = v10;
  v4 = *(**(*(*a1 + 32))(a1) + 472);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v12);
  if (v13)
  {
    v5 = v12;
    v6 = 32 * v13;
    while (((*(*a1 + 728))(a1, v5, v4, a2 + 16) & 1) != 0)
    {
      v5 += 32;
      v7 = 1;
      v6 -= 32;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v7 = 1;
LABEL_13:
  if (v12 != v14)
  {
    free(v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::tensor::EmptyOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++*(v4 + 4);
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
  if (*(v15 + 3) == v16)
  {
    llvm::raw_ostream::write(v15, ")", 1uLL);
  }

  else
  {
    *v16 = 41;
    ++*(v15 + 4);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, 0);
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
  if (*(v20 + 3) == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++*(v20 + 4);
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

  v24 = *this - 16;
  if (!*(*this + 9))
  {
    v24 = 0;
  }

  (*(*a2 + 32))(a2, *(v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  v25 = *MEMORY[0x277D85DE8];
}