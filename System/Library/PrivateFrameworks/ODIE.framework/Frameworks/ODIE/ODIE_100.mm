uint64_t mlir::ODIE::Compiler::broadcastValueTo(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v55[8] = *MEMORY[0x277D85DE8];
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  if (!(*(v11 + 16))(v11, v8) || ((*(v11 + 24))(v11, v8), v13 = v12, (*(a4 + 24))(a4, a3), v13 != v14))
  {
    if ((~*(v6 + 8) & 7) != 0)
    {
      v29 = v6;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_30;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_30:
        v32 = (v6 + 32);
LABEL_33:
        v33 = *v32;
        v48 = 257;
        emitDiag(v33, 2, &v45, &v49);
        if (!v49)
        {
LABEL_36:
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
          v6 = 0;
          goto LABEL_37;
        }

        v34 = "expected the value to be of the same rank as the target shape";
LABEL_35:
        mlir::Diagnostic::operator<<<62ul>(v50, v34);
        goto LABEL_36;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
    goto LABEL_33;
  }

  if (!(*(a4 + 16))(a4, a3))
  {
    goto LABEL_38;
  }

  v15 = (*(a4 + 24))(a4, a3);
  if (v16)
  {
    v17 = 8 * v16;
    while (*v15 != 0x8000000000000000)
    {
      ++v15;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_11;
      }
    }

LABEL_38:
    if ((~*(v6 + 8) & 7) != 0)
    {
      v37 = v6;
    }

    else
    {
      v37 = 0;
    }

    if (!v37)
    {
      goto LABEL_44;
    }

    v38 = *(v37 + 8) & 7;
    if (v38 == 6)
    {
      v39 = v37 + 24 * *(v37 + 16) + 120;
      if (!v39)
      {
LABEL_44:
        v40 = (v6 + 32);
LABEL_47:
        v41 = *v40;
        v48 = 257;
        emitDiag(v41, 2, &v45, &v49);
        if (!v49)
        {
          goto LABEL_36;
        }

        v34 = " cannot emit broadcast_in_dims op if target shape is dynamic.";
        goto LABEL_35;
      }
    }

    else
    {
      v39 = v37 + 16 * v38 + 16;
    }

    v40 = (v39 + 24);
    goto LABEL_47;
  }

LABEL_11:
  if (v8 != a3)
  {
    v45 = v47;
    v46 = 0xC00000000;
    v42 = v44;
    v43 = 0xC00000000;
    (*(a4 + 24))(a4, a3);
    if (v18 >= 1)
    {
      v19 = v18;
      for (i = 0; i != v19; ++i)
      {
        v21 = *((*(v11 + 24))(v11, v8) + 8 * i);
        if (v21 != *((*(a4 + 24))(a4, a3) + 8 * i))
        {
          v22 = (*(a4 + 24))(a4, a3);
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v45, *(v22 + 8 * i));
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v42, i);
        }
      }
    }

    v23 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v45, v46);
    v24 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v42, v43);
    v25 = a1[4];
    v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp>(a1, *(**v25 + 32));
    v49 = v25;
    v50[0] = v26;
    v50[1] = v51;
    v50[2] = 0x400000000;
    v51[4] = v52;
    v51[5] = 0x400000000;
    v52[4] = v53;
    v52[5] = 0x400000000;
    v53[8] = 4;
    v53[9] = v54;
    v53[10] = 0x100000000;
    v54[1] = v55;
    v54[2] = 0x100000000;
    v55[1] = 0;
    v55[2] = 0;
    v55[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v55[4] = 0;
    v55[6] = 0;
    mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::build(a1, &v49, a3, v6, v23, v24);
    v27 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v27);
    v28 = *(*(v27 + 6) + 16);
    v6 = (v27 - 16);
    mlir::OperationState::~OperationState(&v49);
    if (v28 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,void>::id)
    {
      v6 = -16;
    }

    if (v42 != v44)
    {
      free(v42);
    }

    if (v45 != v47)
    {
      free(v45);
    }
  }

LABEL_37:
  v35 = *MEMORY[0x277D85DE8];
  return v6;
}

char *mlir::ODIE::Compiler::create1DTensorConstant<int>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v14 = v15;
  *(&v14 + 1) = 1;
  v12 = 0;
  v13 = v6;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v14, &v13, &v12);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v14);
  v10 = *MEMORY[0x277D85DE8];
  return v9 - 16;
}

{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v14 = v15;
  *(&v14 + 1) = 1;
  v12 = 0;
  v13 = v6;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v14, &v13, &v12);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v14);
  v10 = *MEMORY[0x277D85DE8];
  return v9 - 16;
}

{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = a3;
  v6 = mlir::IntegerType::get(*a1, 32, 1);
  *&v14 = v15;
  *(&v14 + 1) = 1;
  v12 = 0;
  v13 = v6;
  v13 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v14, &v13, &v12);
  v7 = mlir::TensorType::operator mlir::ShapedType(&v13);
  *&v14 = mlir::DenseIntOrFPElementsAttr::getRaw(v7, v8, a2, 4 * a3);
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v14);
  v10 = *MEMORY[0x277D85DE8];
  return v9 - 16;
}

uint64_t mlir::ODIE::Compiler::broadcastIfNeeded(uint64_t a1, uint64_t *__s2, unint64_t a3, uint64_t *a4)
{
  v7 = a1;
  v31[6] = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = 0;
  }

  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v9 != a3 || memcmp(*(v8 + 8), __s2, 8 * a3))
  {
    v30[0] = v31;
    v30[1] = 0x600000000;
    if (mlir::OpTrait::util::getBroadcastedShape(v10, v9, __s2, a3, v30))
    {
      if (v9 >= a3 || (v7 = mlir::ODIE::Compiler::reshapeWithOnesForBroadcast(a4, v7, __s2, a3), (v11 & 1) != 0))
      {
        v12 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
        v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v12);
        v15 = v13;
        if (v13)
        {
          v13 = (*(v14 + 8))(v14, v13);
        }

        if (v15)
        {
          v21 = v13;
        }

        else
        {
          v21 = v12;
        }

        *&v29[0] = __s2;
        *(&v29[0] + 1) = a3;
        v26[0] = v21;
        v28 = 0;
        *&v29[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), v29, v26, &v28);
        v22 = mlir::TensorType::operator mlir::ShapedType(v29);
        v7 = mlir::ODIE::Compiler::broadcastValueTo(a4, v7, v22, v23);
      }

      goto LABEL_25;
    }

    if ((~*(v7 + 8) & 7) != 0)
    {
      v16 = v7;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = *(v16 + 8) & 7;
    if (v17 == 6)
    {
      v18 = v16 + 24 * *(v16 + 16) + 120;
      if (!v18)
      {
LABEL_16:
        v19 = (v7 + 32);
LABEL_20:
        v20 = *v19;
        v26[0] = "Can't broadcast incompatible shapes";
        v27 = 259;
        emitDiag(v20, 2, v26, v29);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v29);
        v7 = 0;
LABEL_25:
        if (v30[0] != v31)
        {
          free(v30[0]);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v18 = v16 + 16 * v17 + 16;
    }

    v19 = (v18 + 24);
    goto LABEL_20;
  }

LABEL_27:
  v24 = *MEMORY[0x277D85DE8];
  return v7;
}

void mlir::ODIE::Compiler::createGraphOpFromFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2;
  v6 = *(a2 + 24);
  v12 = (**(a3 + 40))();
  v7 = (*a3)(a3, a2);
  if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v10 = (*(*(a3 + 48) + 24))();
  v9 = (*(*(a3 + 48) + 32))();
  mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::ArrayAttr>(a1, v6, &v12, &v11, &v10, &v9);
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GraphOp,mlir::StringAttr,mlir::FunctionType,mlir::ArrayAttr,mlir::ArrayAttr>(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GraphOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = v12;
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
  mlir::ODIE::Compiler::CoreML::GraphOp::build(a1, v13, *(*a3 + 16), *(*a3 + 24), *a4, 0, 0, 0, 0, 0, *a5, *a6);
}

uint64_t mlir::Operation::removeAttr(uint64_t a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *(***(a1 + 24) + 32);
  v8 = 261;
  v7[0] = a2;
  v7[1] = a3;
  v5 = mlir::StringAttr::get(v4, v7, a3);
  return mlir::Operation::removeAttr(a1, v5);
}

uint64_t mlir::ODIE::Compiler::copyAttributeInto(void *a1, uint64_t *a2, void *__dst, size_t a4)
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = *(*a2 + 136);
  v10 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!a2 || !v10)
  {
    if (v8 == &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id)
    {
      v23 = a2[4];
      if (a4 < v23)
      {
        v69 = 257;
        emitDiag(a1, 2, v68, &v71);
        if (v71)
        {
          mlir::Diagnostic::operator<<<61ul>(v72, "The dest size is not large enough for copying DenseArrayAttr");
        }

        goto LABEL_74;
      }

      if (!v23)
      {
        goto LABEL_71;
      }

      v25 = a2[3];
    }

    else
    {
      if (v8 != &mlir::detail::TypeIDResolver<mlir::DenseResourceElementsAttr,void>::id)
      {
        v66 = "Unsupported attribute type: ";
        v67 = 259;
        emitDiag(a1, 2, &v66, &v71);
        if (v71)
        {
          LODWORD(v68[0]) = 0;
          v68[1] = a2;
          v18 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v73, v68, 1);
          v19 = v73 + 24 * v74;
          v20 = *v18;
          *(v19 + 16) = *(v18 + 16);
          *v19 = v20;
          ++v74;
        }

        mlir::InFlightDiagnostic::InFlightDiagnostic(v68, &v71);
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v71);
        v21 = v70 ^ 1;
        v22 = v68;
        goto LABEL_75;
      }

      v71 = a2;
      v68[0] = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v71);
      if (mlir::Type::isIntOrFloat(v68))
      {
        NumElements = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getNumElements(&v71);
        v68[0] = mlir::detail::ElementsAttrTrait<mlir::DenseResourceElementsAttr>::getElementType(&v71);
        if (NumElements * mlir::Type::getIntOrFloatBitWidth(v68) > (8 * a4))
        {
          v69 = 257;
          emitDiag(a1, 2, v68, &v71);
          if (v71)
          {
            mlir::Diagnostic::operator<<<72ul>(v72, "The dest size is not large enough for copying DenseResourceElementsAttr");
          }

          goto LABEL_74;
        }
      }

      v60 = a2[3];
      if ((*(v60 + 80) & 1) == 0)
      {
        v69 = 257;
        emitDiag(a1, 2, v68, &v71);
        if (v71)
        {
          mlir::Diagnostic::operator<<<19ul>(v72, "no blob on this op");
        }

        goto LABEL_74;
      }

      v23 = *(v60 + 24);
      if (!v23)
      {
        goto LABEL_71;
      }

      v25 = *(v60 + 16);
    }

    v48 = __dst;
    goto LABEL_70;
  }

  v11 = a2[1];
  v71 = (*(a2[2] + 8))();
  if (mlir::Type::isIntOrFloat(&v71))
  {
    v12 = a2[1];
    v13 = (*(a2[2] + 24))();
    if (v14)
    {
      v15 = 8 * v14;
      v16 = 1;
      do
      {
        v17 = *v13++;
        v16 *= v17;
        v15 -= 8;
      }

      while (v15);
    }

    else
    {
      v16 = 1;
    }

    v26 = a2[1];
    v71 = (*(a2[2] + 8))();
    if (v16 * mlir::Type::getIntOrFloatBitWidth(&v71) > (8 * a4))
    {
      v69 = 257;
      emitDiag(a1, 2, v68, &v71);
      if (v71)
      {
        mlir::Diagnostic::operator<<<64ul>(v72, "The dest size is not large enough for copying DenseElementsAttr");
      }

LABEL_74:
      v21 = v75 ^ 1;
      v22 = &v71;
LABEL_75:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v22);
      goto LABEL_76;
    }
  }

  v63 = a2[4];
  v27 = a2[1];
  v71 = (*(a2[2] + 8))();
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v71);
  v29 = a2[1];
  v71 = (*(a2[2] + 8))();
  v30 = mlir::Type::getIntOrFloatBitWidth(&v71);
  v31 = a2[1];
  v71 = (*(a2[2] + 8))();
  v32 = mlir::Type::getIntOrFloatBitWidth(&v71);
  v33 = a2[1];
  v34 = (*(a2[2] + 24))();
  if (v35)
  {
    v36 = 8 * v35;
    v37 = 1;
    v38 = __dst;
    do
    {
      v39 = *v34++;
      v37 *= v39;
      v36 -= 8;
    }

    while (v36);
  }

  else
  {
    v37 = 1;
    v38 = __dst;
  }

  v40 = v32 - (v32 != 0);
  v41 = 3;
  if (v30 == 1)
  {
    v42 = 3;
  }

  else
  {
    v42 = 0;
  }

  v43 = v40 >> v42;
  if (v32)
  {
    ++v43;
  }

  v44 = IntOrFloatBitWidth != 1;
  if (IntOrFloatBitWidth == 1)
  {
    v41 = 0;
  }

  v45 = *(a2 + 24);
  v46 = v40 >> v41;
  if (v32)
  {
    ++v46;
  }

  v65 = v46 << v41;
  v25 = v63;
  if (((v44 ^ (v30 == 1)) & 1) != 0 || *(a2 + 24))
  {
    if (!v37)
    {
      goto LABEL_71;
    }

    v49 = 0;
    v50 = 0;
    v51 = v43 << v42;
    while (1)
    {
      v52 = v49 & 7;
      v53 = (v50 * v51) >> 3;
      if (v45)
      {
        v54 = 0;
      }

      else
      {
        v54 = (v50 * v65) >> 3;
        v55 = (v50 * v65) & 7;
        if (v55)
        {
          v56 = 0;
          goto LABEL_61;
        }
      }

      v55 = 0;
      if (v32 < 8 || ((v50 * v51) & 7) != 0)
      {
        break;
      }

      memmove(&v38[v53], &v25[v54], v32 >> 3);
      v25 = v63;
      v38 = __dst;
      if ((v32 & 7) != 0)
      {
        v55 = 0;
        v56 = v32 & 7;
        goto LABEL_61;
      }

LABEL_64:
      ++v50;
      v49 = v52 + v51;
      if (v50 == v37)
      {
        goto LABEL_71;
      }
    }

    v56 = 0;
LABEL_61:
    v57 = v32 - v56;
    if (v32 > v56)
    {
      v58 = v56 + v52;
      v59 = v55 + v56;
      do
      {
        v38[v53 + (v58 >> 3)] = v38[v53 + (v58 >> 3)] & ~(1 << (v58 & 7)) | (((v25[v54 + (v59 >> 3)] >> (v59 & 7)) & 1) << (v58 & 7));
        ++v58;
        ++v59;
        --v57;
      }

      while (v57);
    }

    goto LABEL_64;
  }

  v47 = v37 * v65 - (v37 * v65 != 0) + 8 * (v37 * v65 != 0);
  if (v47 >= 8)
  {
    v23 = v47 >> 3;
    v48 = v38;
LABEL_70:
    memmove(v48, v25, v23);
  }

LABEL_71:
  v21 = 1;
LABEL_76:
  v61 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

char **mlir::ODIE::Compiler::getBroadcastedShape(char **result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  v36[6] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = v27;
    v25 = v27;
    v26 = 0x100000000;
    if (a3 == 1)
    {
      v7 = 0;
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v25, a3);
      v7 = v26;
      v6 = v25;
    }

    if (v7 != a3)
    {
      v8 = (a3 << 6) - (v7 << 6);
      v9 = &v6[64 * v7 + 16];
      do
      {
        *(v9 - 16) = v9;
        *(v9 - 8) = 0x600000000;
        v9 += 64;
        v8 -= 64;
      }

      while (v8);
    }

    LODWORD(v26) = a3;
    v10 = 8 * a3;
    do
    {
      v11 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
      v12 = *(v11 + 8);
      v13 = &v12[8 * *(v11 + 16)];
      v34 = v36;
      v35 = 0x600000000;
      v14 = &v34;
      llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v34, v12, v13);
      v15 = v25;
      if (v26 >= HIDWORD(v26))
      {
        if (v25 <= &v34 && &v25[64 * v26] > &v34)
        {
          v17 = &v34 - v25;
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v25, v26 + 1);
          v15 = v25;
          v14 = &v25[v17];
        }

        else
        {
          llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(&v25, v26 + 1);
          v15 = v25;
        }
      }

      v16 = &v15[64 * v26];
      *v16 = v16 + 16;
      *(v16 + 1) = 0x600000000;
      if (*(v14 + 2))
      {
        llvm::SmallVectorImpl<long long>::operator=(v16, v14);
      }

      LODWORD(v26) = v26 + 1;
      if (v34 != v36)
      {
        free(v34);
      }

      a2 += 8;
      v10 -= 8;
    }

    while (v10);
    v18 = v26;
    if (v26)
    {
      v19 = v25;
      v34 = v36;
      v35 = 0x600000000;
      if (*(v25 + 2))
      {
        llvm::SmallVectorImpl<long long>::operator=(&v34, v25);
      }

      if (v18 == 1)
      {
LABEL_37:
        *v3 = v3 + 16;
        *(v3 + 8) = 0x600000000;
        if (v35)
        {
          llvm::SmallVectorImpl<long long>::operator=(v3, &v34);
        }

        *(v3 + 64) = 1;
      }

      else
      {
        v20 = (v19 + 64);
        v21 = (v18 << 6) - 64;
        while (1)
        {
          v31 = v33;
          v32 = 0x600000000;
          if (*(v20 + 8))
          {
            llvm::SmallVectorImpl<long long>::operator=(&v31, v20);
          }

          v28 = v30;
          v29 = 0x600000000;
          if (v35)
          {
            llvm::SmallVectorImpl<long long>::operator=(&v28, &v34);
            v22 = v28;
            v23 = v29;
          }

          else
          {
            v23 = 0;
            v22 = v30;
          }

          if ((mlir::OpTrait::util::getBroadcastedShape(v22, v23, v31, v32, &v34) & 1) == 0)
          {
            break;
          }

          if (v28 != v30)
          {
            free(v28);
          }

          if (v31 != v33)
          {
            free(v31);
          }

          v20 += 64;
          v21 -= 64;
          if (!v21)
          {
            goto LABEL_37;
          }
        }

        *v3 = 0;
        *(v3 + 64) = 0;
        if (v28 != v30)
        {
          free(v28);
        }

        if (v31 != v33)
        {
          free(v31);
        }
      }

      if (v34 != v36)
      {
        free(v34);
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 64) = 0;
    }

    result = llvm::SmallVector<llvm::SmallVector<long long,6u>,1u>::~SmallVector(&v25);
  }

  else
  {
    *result = 0;
    *(result + 64) = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::getBroadcastedValues(uint64_t *__src@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v97 = *MEMORY[0x277D85DE8];
  v7 = &__src[a2];
  if (a2 < 2)
  {
LABEL_5:
    *&__s2 = &v76;
    *(&__s2 + 1) = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&__s2, __src, v7);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (DWORD2(__s2))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a4, &__s2);
    }

    *(a4 + 64) = 1;
    v13 = __s2;
    if (__s2 != &v76)
    {
LABEL_8:
      free(v13);
    }
  }

  else
  {
    v9 = __src + 1;
    v61 = 8 * a2;
    v10 = 8 * a2 - 8;
    v11 = v10;
    v12 = __src + 1;
    while (*v12 == *(v12 - 1))
    {
      ++v12;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    v15 = __src;
    do
    {
      v16 = (*(*v15 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        v16 = 0;
      }

      if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        goto LABEL_20;
      }

      v17 = v16[2];
      if (v17)
      {
        v18 = v16[1];
        v19 = 8 * v17;
        while (*v18 != 0x8000000000000000)
        {
          ++v18;
          v19 -= 8;
          if (!v19)
          {
            goto LABEL_18;
          }
        }

LABEL_20:
        v59 = a4;
        if (*(*(*(*__src + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v20 = *(*__src + 8) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          v20 = 0;
        }

        v63 = *(v20 + 16);
        v21 = mlir::IntegerType::get(*a3, 32, 1);
        *&__s2 = &v63;
        *(&__s2 + 1) = 1;
        v70 = v21;
        v66 = 0;
        v22 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &__s2, &v70, &v66);
        v23 = a3[4];
        Shape = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a3, *(**v23 + 32));
        *&__s2 = v23;
        *(&__s2 + 1) = Shape;
        v76 = v78;
        v77 = 0x400000000;
        v79 = v81;
        v80 = 0x400000000;
        v82 = v84;
        v83 = 0x400000000;
        v85 = 4;
        v86 = &v88;
        v87 = 0x100000000;
        v89 = &v91;
        v90 = 0x100000000;
        v93 = 0;
        v92 = 0;
        v94 = &mlir::detail::TypeIDResolver<void,void>::id;
        v95 = 0;
        v96 = 0;
        v60 = __src;
        mlir::ODIE::Compiler::CoreML::GetShapeOp::build(a3, &__s2, v22, *__src);
        v25 = mlir::Operation::create(&__s2);
        mlir::OpBuilder::insert(a3, v25);
        v26 = *(*(v25 + 6) + 16);
        v27 = (v25 - 16);
        mlir::OperationState::~OperationState(&__s2);
        if (v26 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
        {
          v27 = -16;
        }

        do
        {
          v62 = *v9;
          if (**((*(v27 + 8) & 0xFFFFFFFFFFFFFFF8) + 8) <= *((*(v62 + 8) & 0xFFFFFFFFFFFFFFF8) + 16))
          {
            v28 = *((*(v62 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v28 = **((*(v27 + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
          }

          v63 = *((*(v62 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
          v29 = mlir::IntegerType::get(*a3, 32, 1);
          *&__s2 = &v63;
          *(&__s2 + 1) = 1;
          v70 = v29;
          v66 = 0;
          *&__s2 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), &__s2, &v70, &v66);
          v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a3, a3[4], &__s2, &v62);
          v74 = v28;
          v31 = mlir::IntegerType::get(*a3, 32, 1);
          *&__s2 = &v74;
          *(&__s2 + 1) = 1;
          v70 = v31;
          v66 = 0;
          v32 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v31 + 32), &__s2, &v70, &v66);
          v33 = a3[4];
          v34 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,void>::id, *(**v33 + 32));
          if ((v35 & 1) == 0)
          {
            v69 = 1283;
            v68[0] = "coreml.broadcast_shapes";
            v68[1] = 23;
            v65[8] = 259;
            llvm::operator+(&v66, &v63, &v70);
            llvm::report_fatal_error(&v70, 1);
          }

          *&__s2 = v33;
          *(&__s2 + 1) = v34;
          v76 = v78;
          v77 = 0x400000000;
          v79 = v81;
          v80 = 0x400000000;
          v82 = v84;
          v83 = 0x400000000;
          v85 = 4;
          v86 = &v88;
          v87 = 0x100000000;
          v89 = &v91;
          v90 = 0x100000000;
          v92 = 0;
          v93 = 0;
          v94 = &mlir::detail::TypeIDResolver<void,void>::id;
          v95 = 0;
          v96 = 0;
          mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::build(a3, &__s2, v32, v27, (v30 - 16));
          v36 = mlir::Operation::create(&__s2);
          mlir::OpBuilder::insert(a3, v36);
          v37 = *(*(v36 + 6) + 16);
          v27 = (v36 - 16);
          mlir::OperationState::~OperationState(&__s2);
          if (v37 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastShapesOp,void>::id)
          {
            v27 = -16;
          }

          ++v9;
          v10 -= 8;
        }

        while (v10);
        v38 = v60;
        mlir::ODIE::Compiler::getBroadcastedShape(&v70, v60, a2);
        if ((v73 & 1) == 0)
        {
          *a4 = 0;
          *(a4 + 64) = 0;
          goto LABEL_9;
        }

        v66 = v68;
        v67 = 0x600000000;
        if (v71)
        {
          llvm::SmallVectorImpl<long long>::operator=(&v66, &v70);
        }

        v63 = v65;
        v64 = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v63, a2);
        v39 = 0;
        do
        {
          v40 = v66;
          v41 = v67;
          v42 = (*(v38[v39 / 8] + 8) & 0xFFFFFFFFFFFFFFF8);
          v43 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v42);
          v45 = v43;
          if (v43)
          {
            v43 = (*(v44 + 8))(v44, v43);
          }

          if (v45)
          {
            v46 = v43;
          }

          else
          {
            v46 = v42;
          }

          *&__s2 = v40;
          *(&__s2 + 1) = v41;
          v62 = v46;
          v74 = 0;
          v47 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v46 + 32), &__s2, &v62, &v74);
          v48 = a3[4];
          v49 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a3, *(**v48 + 32));
          *&__s2 = v48;
          *(&__s2 + 1) = v49;
          v76 = v78;
          v77 = 0x400000000;
          v79 = v81;
          v80 = 0x400000000;
          v82 = v84;
          v83 = 0x400000000;
          v85 = 4;
          v86 = &v88;
          v87 = 0x100000000;
          v89 = &v91;
          v90 = 0x100000000;
          v92 = 0;
          v93 = 0;
          v94 = &mlir::detail::TypeIDResolver<void,void>::id;
          v95 = 0;
          v96 = 0;
          v38 = v60;
          mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a3, &__s2, v47, v60[v39 / 8], v27);
          v50 = mlir::Operation::create(&__s2);
          mlir::OpBuilder::insert(a3, v50);
          v51 = *(*(v50 + 6) + 16);
          mlir::OperationState::~OperationState(&__s2);
          if (v51 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
          {
            v52 = v50;
          }

          else
          {
            v52 = 0;
          }

          *(v63 + v39) = v52 - 16;
          v39 += 8;
        }

        while (v61 != v39);
        *v59 = v59 + 16;
        *(v59 + 8) = 0x600000000;
        if (v64)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(v59, &v63);
        }

        *(v59 + 64) = 1;
        if (v63 != v65)
        {
          free(v63);
        }

        if (v66 != v68)
        {
          free(v66);
        }

        if (v73)
        {
          v13 = v70;
          p_s2 = &v70;
          goto LABEL_53;
        }

        goto LABEL_9;
      }

LABEL_18:
      ++v15;
    }

    while (v15 != v7);
    while (*v9 == *(v9 - 1))
    {
      ++v9;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    mlir::ODIE::Compiler::getBroadcastedShape(&__s2, __src, a2);
    if (v79 != 1)
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      goto LABEL_9;
    }

    v70 = v72;
    v71 = 0x600000000;
    llvm::SmallVectorImpl<mlir::Value>::resizeImpl<false>(&v70, a2);
    v54 = 0;
    do
    {
      v55 = mlir::ODIE::Compiler::broadcastIfNeeded(__src[v54 / 8], __s2, DWORD2(__s2), a3);
      if ((v56 & 1) == 0)
      {
        v57 = 0;
        *a4 = 0;
        goto LABEL_68;
      }

      *(v70 + v54) = v55;
      v54 += 8;
    }

    while (v61 != v54);
    *a4 = a4 + 16;
    *(a4 + 8) = 0x600000000;
    if (v71)
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a4, &v70);
    }

    v57 = 1;
LABEL_68:
    *(a4 + 64) = v57;
    if (v70 != v72)
    {
      free(v70);
    }

    if (v79)
    {
      v13 = __s2;
      p_s2 = &__s2;
LABEL_53:
      if (v13 != p_s2 + 16)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v14 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::castValueToElementType(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v26 = *MEMORY[0x277D85DE8];
  v21 = a2;
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v10 != a3)
  {
    v11 = *(v4 + 1);
    v12 = v11 & 0xFFFFFFFFFFFFFFF8;
    if (*(*(v11 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v12 = 0;
    }

    v20 = v12;
    if (v12)
    {
      LOBYTE(v24) = 0;
      v25[8] = 0;
      v22[0] = mlir::TensorType::cloneWith(&v20, &v24, a3);
      v4 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::TensorType,mlir::Value &>(a1, a1[4], v22, &v21) - 16;
      goto LABEL_11;
    }

    if ((~v11 & 7) != 0)
    {
      v15 = v4;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    v16 = *(v15 + 1) & 7;
    if (v16 == 6)
    {
      v17 = &v15[24 * *(v15 + 2) + 120];
      if (!v17)
      {
LABEL_18:
        v18 = (v4 + 32);
LABEL_21:
        v19 = *v18;
        v23 = 257;
        emitDiag(v19, 2, v22, &v24);
        if (v24)
        {
          mlir::Diagnostic::operator<<<46ul>(v25, "expecting RankedTensorType for value to cast.");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
        v4 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v17 = &v15[16 * v16 + 16];
    }

    v18 = (v17 + 24);
    goto LABEL_21;
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

char *mlir::ODIE::Compiler::castValueToElementTypeOfOther(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v5);
  v8 = v6;
  if (v6)
  {
    v6 = (*(v7 + 8))(v7, v6);
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  return mlir::ODIE::Compiler::castValueToElementType(a1, a2, v9);
}

char *mlir::ODIE::Compiler::getMultiplyWithScalar(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42[25] = *MEMORY[0x277D85DE8];
  v34 = a2;
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
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
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v39 = 257;
        emitDiag(v9, 2, v37, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v42, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v42, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v15 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
  v18 = v16;
  if (v16)
  {
    v16 = (*(v17 + 8))(v17, v16);
  }

  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v19);
  if ((v21 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16) + 120;
      if (!v25)
      {
LABEL_31:
        v26 = (a2 + 32);
LABEL_41:
        v31 = *v26;
        v39 = 257;
        emitDiag(v31, 2, v37, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v42, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v42, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v42, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v42, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v25 = v23 + 16 * v24 + 16;
    }

    v26 = (v25 + 24);
    goto LABEL_41;
  }

  v22 = v20;
  v33 = v20;
  __src = v20;
  v42[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v37);
  if ((v40 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_38;
    }

    v28 = *(v27 + 8) & 7;
    if (v28 == 6)
    {
      v29 = v27 + 24 * *(v27 + 16) + 120;
      if (!v29)
      {
LABEL_38:
        v30 = (a2 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v29 = v27 + 16 * v28 + 16;
    }

    v30 = (v29 + 24);
LABEL_48:
    v32 = *v30;
    v36 = 257;
    emitDiag(v32, 2, v35, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v42, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v42, v22);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v42, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v42, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_54;
  }

  v33 = *v37[0];
  __src = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v34, &v33) - 16;
LABEL_54:
  if (v40 == 1 && v37[0] != &v38)
  {
    free(v37[0]);
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t mlir::ODIE::Compiler::getDivideWithScalar(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v51[8] = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
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
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v43 = 257;
        emitDiag(v9, 2, v41, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v46, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v46, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v15 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
  v18 = v16;
  if (v16)
  {
    v16 = (*(v17 + 8))(v17, v16);
  }

  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v19);
  if ((v21 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v29 = a2;
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
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_33:
        v32 = (a2 + 32);
LABEL_43:
        v37 = *v32;
        v43 = 257;
        emitDiag(v37, 2, v41, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v46, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v46, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v46, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v46, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
    goto LABEL_43;
  }

  v22 = v20;
  __src = v20;
  v46[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v41);
  if ((v44 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = 0;
    }

    if (!v33)
    {
      goto LABEL_40;
    }

    v34 = *(v33 + 8) & 7;
    if (v34 == 6)
    {
      v35 = v33 + 24 * *(v33 + 16) + 120;
      if (!v35)
      {
LABEL_40:
        v36 = (a2 + 32);
        goto LABEL_50;
      }
    }

    else
    {
      v35 = v33 + 16 * v34 + 16;
    }

    v36 = (v35 + 24);
LABEL_50:
    v38 = *v36;
    v40 = 257;
    emitDiag(v38, 2, v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v46, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v46, v22);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v46, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v46, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_56;
  }

  v23 = *v41[0];
  v24 = *(a2 + 8);
  v25 = a1[4];
  v26 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**v25 + 32));
  __src = v25;
  v46[0] = v26;
  v46[1] = v47;
  v46[2] = 0x400000000;
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, &__src, v24 & 0xFFFFFFFFFFFFFFF8, a2, v23);
  v27 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v27);
  v28 = *(*(v27 + 6) + 16);
  v10 = (v27 - 16);
  mlir::OperationState::~OperationState(&__src);
  if (v28 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
  {
    v10 = -16;
  }

LABEL_56:
  if (v44 == 1 && v41[0] != &v42)
  {
    free(v41[0]);
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::ODIE::Compiler::getAddWithScalar(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v41[25] = *MEMORY[0x277D85DE8];
  v33 = a2;
  v4 = *(a3 + 8);
  if (*(*(v4 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v4 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v4 & 7) != 0)
    {
      v5 = a3;
    }

    else
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
      v7 = v5 + 24 * *(v5 + 16) + 120;
      if (!v7)
      {
LABEL_9:
        v8 = (a3 + 32);
LABEL_12:
        v9 = *v8;
        v38 = 257;
        emitDiag(v9, 2, v36, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v41, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v41, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v10 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }

    v8 = (v7 + 24);
    goto LABEL_12;
  }

  v15 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v15);
  v18 = v16;
  if (v16)
  {
    v16 = (*(v17 + 8))(v17, v16);
  }

  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  v20 = mlir::ODIE::Compiler::castValueToElementType(a1, a3, v19);
  if ((v21 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }

    if (!v23)
    {
      goto LABEL_31;
    }

    v24 = *(v23 + 8) & 7;
    if (v24 == 6)
    {
      v25 = v23 + 24 * *(v23 + 16) + 120;
      if (!v25)
      {
LABEL_31:
        v26 = (a2 + 32);
LABEL_41:
        v31 = *v26;
        v38 = 257;
        emitDiag(v31, 2, v36, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v41, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v41, a3);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v41, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v41, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v25 = v23 + 16 * v24 + 16;
    }

    v26 = (v25 + 24);
    goto LABEL_41;
  }

  v22 = v20;
  __src = v20;
  v41[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v36);
  if ((v39 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_38;
    }

    v28 = *(v27 + 8) & 7;
    if (v28 == 6)
    {
      v29 = v27 + 24 * *(v27 + 16) + 120;
      if (!v29)
      {
LABEL_38:
        v30 = (a2 + 32);
        goto LABEL_48;
      }
    }

    else
    {
      v29 = v27 + 16 * v28 + 16;
    }

    v30 = (v29 + 24);
LABEL_48:
    v32 = *v30;
    v35 = 257;
    emitDiag(v32, 2, v34, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v41, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v41, v22);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v41, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v41, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v10 = 0;
    goto LABEL_54;
  }

  __src = *v36[0];
  v34[0] = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], v34, &v33, &__src) - 16;
LABEL_54:
  if (v39 == 1 && v36[0] != &v37)
  {
    free(v36[0]);
  }

LABEL_16:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

char *mlir::ODIE::Compiler::getCoreMLLeakyRelu(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v85[25] = *MEMORY[0x277D85DE8];
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  v7 = Tensor;
  v73 = a2;
  v8 = *(Tensor + 1);
  if (*(*(v8 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v8 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v8 & 7) != 0)
    {
      v9 = Tensor;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *(v9 + 1) & 7;
    if (v10 == 6)
    {
      v11 = &v9[24 * *(v9 + 2) + 120];
      if (!v11)
      {
LABEL_9:
        v12 = (Tensor + 32);
LABEL_12:
        v13 = *v12;
        v82 = 257;
        emitDiag(v13, 2, v80, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v85, v7);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v85, " is not a scalar tensor");
          }
        }

LABEL_15:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v14 = 0;
        v15 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = &v9[16 * v10 + 16];
    }

    v12 = (v11 + 24);
    goto LABEL_12;
  }

  v29 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v30 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v29);
  v32 = v30;
  if (v30)
  {
    v30 = (*(v31 + 8))(v31, v30);
  }

  if (v32)
  {
    v37 = v30;
  }

  else
  {
    v37 = v29;
  }

  v38 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v37);
  if ((v39 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v41 = a2;
    }

    else
    {
      v41 = 0;
    }

    if (!v41)
    {
      goto LABEL_63;
    }

    v42 = *(v41 + 8) & 7;
    if (v42 == 6)
    {
      v43 = v41 + 24 * *(v41 + 16) + 120;
      if (!v43)
      {
LABEL_63:
        v44 = (a2 + 32);
LABEL_93:
        v63 = *v44;
        v82 = 257;
        emitDiag(v63, 2, v80, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v85, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v85, v7);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v85, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v85, a2);
              }
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v43 = v41 + 16 * v42 + 16;
    }

    v44 = (v43 + 24);
    goto LABEL_93;
  }

  v40 = v38;
  v76 = v38;
  __src = v38;
  v85[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v80);
  if ((v83 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v55 = a2;
    }

    else
    {
      v55 = 0;
    }

    if (!v55)
    {
      goto LABEL_83;
    }

    v56 = *(v55 + 8) & 7;
    if (v56 == 6)
    {
      v57 = v55 + 24 * *(v55 + 16) + 120;
      if (!v57)
      {
LABEL_83:
        v58 = (a2 + 32);
        goto LABEL_107;
      }
    }

    else
    {
      v57 = v55 + 16 * v56 + 16;
    }

    v58 = (v57 + 24);
LABEL_107:
    v65 = *v58;
    v79 = 257;
    emitDiag(v65, 2, &MultiplyWithScalar, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<23ul>(v85, "failed to broadcast - ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v85, v40);
        if (__src)
        {
          mlir::Diagnostic::operator<<<6ul>(v85, " and ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v85, a2);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v14 = 0;
    v15 = 0;
    goto LABEL_113;
  }

  v76 = *v80[0];
  __src = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v76, &v73) - 16;
  v15 = 1;
LABEL_113:
  if (v83 == 1 && v80[0] != v81)
  {
    free(v80[0]);
  }

LABEL_16:
  v73 = v14;
  v74 = v15;
  v76 = a2;
  v16 = *(v7 + 8);
  if (*(*(v16 & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || *((v16 & 0xFFFFFFFFFFFFFFF8) + 16))
  {
    if ((~v16 & 7) != 0)
    {
      v17 = v7;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *(v17 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v17 + 24 * *(v17 + 16) + 120;
      if (!v19)
      {
LABEL_24:
        v20 = (v7 + 32);
LABEL_27:
        v21 = *v20;
        v82 = 257;
        emitDiag(v21, 2, v80, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<(v85, v7);
          if (__src)
          {
            mlir::Diagnostic::operator<<<24ul>(v85, " is not a scalar tensor");
          }
        }

LABEL_30:
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        goto LABEL_31;
      }
    }

    else
    {
      v19 = v17 + 16 * v18 + 16;
    }

    v20 = (v19 + 24);
    goto LABEL_27;
  }

  v33 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v34 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v33);
  v36 = v34;
  if (v34)
  {
    v34 = (*(v35 + 8))(v35, v34);
  }

  if (v36)
  {
    v45 = v34;
  }

  else
  {
    v45 = v33;
  }

  v46 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v45);
  if ((v47 & 1) == 0)
  {
    if ((~*(a2 + 8) & 7) != 0)
    {
      v51 = a2;
    }

    else
    {
      v51 = 0;
    }

    if (!v51)
    {
      goto LABEL_76;
    }

    v52 = *(v51 + 8) & 7;
    if (v52 == 6)
    {
      v53 = v51 + 24 * *(v51 + 16) + 120;
      if (!v53)
      {
LABEL_76:
        v54 = (a2 + 32);
LABEL_100:
        v64 = *v54;
        v82 = 257;
        emitDiag(v64, 2, v80, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<23ul>(v85, "failed to cast scalar ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v85, v7);
            if (__src)
            {
              mlir::Diagnostic::operator<<<19ul>(v85, " to dtype of input");
              if (__src)
              {
                mlir::Diagnostic::operator<<(v85, a2);
              }
            }
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      v53 = v51 + 16 * v52 + 16;
    }

    v54 = (v53 + 24);
    goto LABEL_100;
  }

  v48 = v46;
  v75 = v46;
  __src = v46;
  v85[0] = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v80);
  v49 = v83;
  if (v83)
  {
    v75 = *v80[0];
    __src = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    v50 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v75, &v76) - 16;
    goto LABEL_124;
  }

  if ((~*(a2 + 8) & 7) != 0)
  {
    v59 = a2;
  }

  else
  {
    v59 = 0;
  }

  if (!v59)
  {
    goto LABEL_90;
  }

  v60 = *(v59 + 8) & 7;
  if (v60 == 6)
  {
    v61 = v59 + 24 * *(v59 + 16) + 120;
    if (!v61)
    {
LABEL_90:
      v62 = (a2 + 32);
      goto LABEL_118;
    }
  }

  else
  {
    v61 = v59 + 16 * v60 + 16;
  }

  v62 = (v61 + 24);
LABEL_118:
  v66 = *v62;
  v79 = 257;
  emitDiag(v66, 2, &MultiplyWithScalar, &__src);
  if (__src)
  {
    mlir::Diagnostic::operator<<<23ul>(v85, "failed to broadcast - ");
    if (__src)
    {
      mlir::Diagnostic::operator<<(v85, v48);
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v85, " and ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v85, a2);
        }
      }
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v50 = 0;
LABEL_124:
  if (v83 == 1 && v80[0] != v81)
  {
    free(v80[0]);
  }

  if (!v15 || (v49 & 1) == 0)
  {
LABEL_31:
    if ((~*(a2 + 8) & 7) != 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0;
    }

    if (!v22)
    {
      goto LABEL_37;
    }

    v23 = *(v22 + 8) & 7;
    if (v23 == 6)
    {
      v24 = v22 + 24 * *(v22 + 16) + 120;
      if (!v24)
      {
LABEL_37:
        v25 = (a2 + 32);
LABEL_40:
        v26 = *v25;
        v82 = 257;
        emitDiag(v26, 2, v80, &__src);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<42ul>(v85, "failed to compute maximum and minimum of ");
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<(v85, a2);
        if (!__src)
        {
          goto LABEL_45;
        }

        mlir::Diagnostic::operator<<<6ul>(v85, " and ");
        if (!__src)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v24 = v22 + 16 * v23 + 16;
    }

    v25 = (v24 + 24);
    goto LABEL_40;
  }

  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v50, a3);
  v78 = v67;
  if (v67)
  {
    __src = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    result = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v73, &MultiplyWithScalar) - 16;
    goto LABEL_46;
  }

  if ((~*(a2 + 8) & 7) != 0)
  {
    v68 = a2;
  }

  else
  {
    v68 = 0;
  }

  if (!v68)
  {
    goto LABEL_137;
  }

  v69 = *(v68 + 8) & 7;
  if (v69 != 6)
  {
    v70 = v68 + 16 * v69 + 16;
    goto LABEL_139;
  }

  v70 = v68 + 24 * *(v68 + 16) + 120;
  if (v70)
  {
LABEL_139:
    v71 = (v70 + 24);
    goto LABEL_140;
  }

LABEL_137:
  v71 = (a2 + 32);
LABEL_140:
  v72 = *v71;
  v82 = 257;
  emitDiag(v72, 2, v80, &__src);
  if (!__src)
  {
    goto LABEL_45;
  }

  mlir::Diagnostic::operator<<<20ul>(v85, "failed to multiply ");
  if (!__src)
  {
    goto LABEL_45;
  }

  mlir::Diagnostic::operator<<(v85, v50);
  if (!__src)
  {
    goto LABEL_45;
  }

  mlir::Diagnostic::operator<<<6ul>(v85, " and ");
  if (!__src)
  {
    goto LABEL_45;
  }

LABEL_44:
  mlir::Diagnostic::operator<<(v85, a3);
LABEL_45:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  result = 0;
LABEL_46:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::ODIE::Compiler::wrapAroundDimension(uint64_t *a1, uint64_t a2, int a3)
{
  Tensor = a2;
  v13 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v10);
  if (v12 == 1)
  {
    v6 = v10;
    if ((*v10 & 0x80000000) != 0)
    {
      v9 = *v10 + a3;
      Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v9, 1, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_7;
      }

      v6 = v10;
    }

    if (v6 != &v11)
    {
      free(v6);
    }
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return Tensor;
}

char *mlir::ODIE::Compiler::wrapAroundDimensions(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v16 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::extract1DIntVector<int>(a2, &v12);
  if (v15 != 1)
  {
    goto LABEL_14;
  }

  v6 = v12;
  if (!v13)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = v12 + 4 * v13;
  v9 = v12;
  do
  {
    while ((*v9 & 0x80000000) != 0)
    {
      *v9 += a3;
      v9 += 4;
      v7 = 1;
      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }

    v9 += 4;
  }

  while (v9 != v8);
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v4 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v6, v13);
  if (v15)
  {
    v6 = v12;
LABEL_12:
    if (v6 != &v14)
    {
      free(v6);
    }
  }

LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return v4;
}

void mlir::ODIE::Compiler::castAndBroadcast(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26[25] = *MEMORY[0x277D85DE8];
  v8 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  v11 = v9;
  if (v9)
  {
    v9 = (*(v10 + 8))(v10, v9);
  }

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  v13 = mlir::ODIE::Compiler::castValueToElementType(a2, a4, v12);
  if (v14)
  {
    v15 = v13;
    __src = a3;
    v26[0] = v13;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a2, &v21);
    if (v24)
    {
      *(a1 + 64) = 0;
      *a1 = a1 + 16;
      *(a1 + 8) = 0x600000000;
      if (v22)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a1, &v21);
      }

      *(a1 + 64) = 1;
    }

    else
    {
      v17 = a2[4];
      v20 = 257;
      emitDiag(v17, 2, v19, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<26ul>(v26, " Unable to broadcast LHS ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v26, a3);
          if (__src)
          {
            mlir::Diagnostic::operator<<<10ul>(v26, " and RHS ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(v26, v15);
            }
          }
        }
      }

      *a1 = 0;
      *(a1 + 64) = 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v24 == 1 && v21 != v23)
    {
      free(v21);
    }
  }

  else
  {
    v16 = a2[4];
    v23[8] = 257;
    emitDiag(v16, 2, &v21, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<16ul>(v26, "failed to cast ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v26, a3);
        if (__src)
        {
          mlir::Diagnostic::operator<<<19ul>(v26, " to same dtype as ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(v26, a4);
          }
        }
      }
    }

    *a1 = 0;
    *(a1 + 64) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  v18 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::getGreaterOps(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::castAndBroadcast(&v25, a1, a2, a3);
  if (v27)
  {
    v6 = *v25;
    v18 = v25[1];
    v19 = v6;
    v7 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v7)
    {
      v8 = *v7;
      v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    }

    else
    {
      v10 = 0;
    }

    v13 = mlir::IntegerType::get(*a1, 1, 0);
    v14 = *v10;
    LOBYTE(v22) = 0;
    v24 = 0;
    v22 = v14(v10, v7, &v22, v13);
    v23 = v15;
    v12 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v22, &v19, &v18) - 16;
  }

  else
  {
    v11 = a1[4];
    v21 = 257;
    emitDiag(v11, 2, v20, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<26ul>(&v23, " Unable to broadcast LHS ");
      if (v22)
      {
        mlir::Diagnostic::operator<<(&v23, a2);
        if (v22)
        {
          mlir::Diagnostic::operator<<<10ul>(&v23, " and RHS ");
          if (v22)
          {
            mlir::Diagnostic::operator<<(&v23, a3);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    v12 = 0;
  }

  if (v27 == 1 && v25 != &v26)
  {
    free(v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::ODIE::Compiler::getGreaterOrEqualOps(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  mlir::ODIE::Compiler::castAndBroadcast(&v35, a1, a2, a3);
  if (v37)
  {
    v6 = *v35;
    v7 = *(v35 + 1);
    v31 = v7;
    v32 = v6;
    v8 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8)
    {
      v9 = *v8;
      v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
    }

    else
    {
      v11 = 0;
    }

    v14 = mlir::IntegerType::get(*a1, 1, 0);
    v15 = *v11;
    LOBYTE(v38) = 0;
    LOBYTE(v40) = 0;
    v16 = v15(v11, v8, &v38, v14);
    v33[0] = v16;
    v33[1] = v17;
    v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v33, &v32, &v31);
    v18 = a1[4];
    v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(a1, *(**v18 + 32));
    v38 = v18;
    v39 = v19;
    v40 = v42;
    v41 = 0x400000000;
    v43 = v45;
    v44 = 0x400000000;
    v46 = v48;
    v47 = 0x400000000;
    v49 = 4;
    v50 = &v52;
    v51 = 0x100000000;
    v53 = &v55;
    v54 = 0x100000000;
    v56 = 0;
    v57 = 0;
    v58 = &mlir::detail::TypeIDResolver<void,void>::id;
    v59 = 0;
    v60 = 0;
    mlir::ODIE::Compiler::CoreML::EqualOp::build(a1, &v38, v16, v6, v7);
    v20 = mlir::Operation::create(&v38);
    mlir::OpBuilder::insert(a1, v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(&v38);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = a1[4];
    v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(a1, *(**v23 + 32));
    v38 = v23;
    v39 = v24;
    v40 = v42;
    v41 = 0x400000000;
    v43 = v45;
    v44 = 0x400000000;
    v46 = v48;
    v47 = 0x400000000;
    v49 = 4;
    v50 = &v52;
    v51 = 0x100000000;
    v53 = &v55;
    v54 = 0x100000000;
    v56 = 0;
    v57 = 0;
    v58 = &mlir::detail::TypeIDResolver<void,void>::id;
    v59 = 0;
    v60 = 0;
    mlir::ODIE::Compiler::CoreML::OrOp::build(a1, &v38, v16, (v30 - 16), (v22 - 16));
    v25 = mlir::Operation::create(&v38);
    mlir::OpBuilder::insert(a1, v25);
    v26 = *(*(v25 + 6) + 16);
    v27 = v25 - 16;
    mlir::OperationState::~OperationState(&v38);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id)
    {
      v13 = v27;
    }

    else
    {
      v13 = -16;
    }
  }

  else
  {
    v12 = a1[4];
    v34 = 257;
    emitDiag(v12, 2, v33, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<26ul>(&v39, " Unable to broadcast LHS ");
      if (v38)
      {
        mlir::Diagnostic::operator<<(&v39, a2);
        if (v38)
        {
          mlir::Diagnostic::operator<<<10ul>(&v39, " and RHS ");
          if (v38)
          {
            mlir::Diagnostic::operator<<(&v39, a3);
          }
        }
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    v13 = 0;
  }

  if (v37 == 1 && v35 != &v36)
  {
    free(v35);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t mlir::ODIE::Compiler::getComparisonWithZero(uint64_t *a1, uint64_t a2)
{
  v50[8] = *MEMORY[0x277D85DE8];
  v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = *v4;
    v6 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v7 = mlir::detail::InterfaceMap::lookup(v5 + 8, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(v7 + 8))(v7, v4);
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  v10 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v8);
  if (v11)
  {
    *&__src = a2;
    *(&__src + 1) = v10;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v40);
    if (v42)
    {
      v12 = *v40[0];
      v13 = *(v40[0] + 1);
      v14 = (*(v7 + 24))(v7, v4);
      v16 = v15;
      v17 = mlir::IntegerType::get(*(**(*(v12 + 8) & 0xFFFFFFFFFFFFFFF8) + 32), 1, 0);
      *&__src = v14;
      *(&__src + 1) = v16;
      v37[0] = v17;
      v39 = 0;
      v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v17 + 32), &__src, v37, &v39);
      v19 = a1[4];
      v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, *(**v19 + 32));
      *&__src = v19;
      *(&__src + 1) = v20;
      v44 = v46;
      v45 = 0x400000000;
      v46[4] = v47;
      v46[5] = 0x400000000;
      v47[4] = v48;
      v47[5] = 0x400000000;
      v48[8] = 4;
      v48[9] = v49;
      v48[10] = 0x100000000;
      v49[1] = v50;
      v49[2] = 0x100000000;
      v50[1] = 0;
      v50[2] = 0;
      v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v50[4] = 0;
      v50[6] = 0;
      mlir::ODIE::Compiler::CoreML::NotEqualOp::build(a1, &__src, v18, v12, v13);
      v21 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v21);
      v22 = *(*(v21 + 6) + 16);
      v23 = v21 - 16;
      mlir::OperationState::~OperationState(&__src);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id)
      {
        v24 = v23;
      }

      else
      {
        v24 = -16;
      }

LABEL_33:
      if (v42 == 1 && v40[0] != v41)
      {
        free(v40[0]);
      }

      goto LABEL_36;
    }

    if ((~*(a2 + 8) & 7) != 0)
    {
      v29 = a2;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_22;
    }

    v30 = *(v29 + 8) & 7;
    if (v30 == 6)
    {
      v31 = v29 + 24 * *(v29 + 16) + 120;
      if (!v31)
      {
LABEL_22:
        v32 = (a2 + 32);
LABEL_30:
        v34 = *v32;
        v38 = 257;
        emitDiag(v34, 2, v37, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&__src + 8, "Unable to broadcast input and zero to same shape");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v24 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v31 = v29 + 16 * v30 + 16;
    }

    v32 = (v31 + 24);
    goto LABEL_30;
  }

  if ((~*(a2 + 8) & 7) != 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = *(v25 + 8) & 7;
  if (v26 != 6)
  {
    v27 = v25 + 16 * v26 + 16;
    goto LABEL_24;
  }

  v27 = v25 + 24 * *(v25 + 16) + 120;
  if (v27)
  {
LABEL_24:
    v28 = (v27 + 24);
    goto LABEL_25;
  }

LABEL_15:
  v28 = (a2 + 32);
LABEL_25:
  v33 = *v28;
  v41[8] = 257;
  emitDiag(v33, 2, v40, &__src);
  if (__src)
  {
    mlir::Diagnostic::operator<<<41ul>(&__src + 8, "Unable to cast zero scalar to input type");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v24 = 0;
LABEL_36:
  v35 = *MEMORY[0x277D85DE8];
  return v24;
}

char *mlir::ODIE::Compiler::negateValue(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = v3[3];
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v4[2] & 0x3FFFFFFF) == 1)
  {
    goto LABEL_5;
  }

  ComparisonWithZero = mlir::ODIE::Compiler::getComparisonWithZero(a1, a2);
  if (v6)
  {
    v14 = ComparisonWithZero;
LABEL_5:
    v7 = v3[1];
    v8 = v3[2];
    v9 = mlir::IntegerType::get(*a1, 1, 0);
    v10 = v3[4];
    *&v18[0] = v7;
    *(&v18[0] + 1) = v8;
    v15[0] = v9;
    v17 = v10;
    *&v18[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), v18, v15, &v17);
    result = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::NotOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], v18, &v14) - 16;
    goto LABEL_9;
  }

  v12 = a1[4];
  v16 = 257;
  emitDiag(v12, 2, v15, v18);
  if (*&v18[0])
  {
    mlir::Diagnostic::operator<<<41ul>(v18 + 8, "unable to compare input tensor with zero");
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(v18);
  result = 0;
LABEL_9:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::ODIE::Compiler::getShapedRankedType(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  if ((~*(a1 + 8) & 7) != 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 8) & 7;
  if (v7 != 6)
  {
    v8 = v6 + 16 * v7 + 16;
    goto LABEL_9;
  }

  v8 = v6 + 24 * *(v6 + 16) + 120;
  if (v8)
  {
LABEL_9:
    v9 = (v8 + 24);
    goto LABEL_10;
  }

LABEL_7:
  v9 = (a1 + 32);
LABEL_10:
  v14 = v3;
  v15 = v4;
  v10 = *v9;
  v11 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v11;
  v13 = *(a2 + 32);
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v10, v12, a3);
}

void mlir::ODIE::Compiler::getShapedRankedType(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a1);
  if (v8 && (v10 = v8, v11 = v9, ((*(v9 + 16))(v9, v8) & 1) != 0))
  {
    *a4 = v10;
    *(a4 + 8) = v11;
    *(a4 + 16) = 1;
  }

  else
  {
    v18 = 257;
    emitDiag(a2, 2, &v16, &v19);
    if (v19)
    {
      mlir::Diagnostic::operator<<(&v20, a3);
      if (v19)
      {
        v16 = 4;
        v17 = a1;
        v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v16, 1);
        v13 = v21 + 24 * v22;
        v14 = *v12;
        *(v13 + 16) = *(v12 + 16);
        *v13 = v14;
        ++v22;
      }
    }

    *a4 = 0;
    *(a4 + 16) = 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  }

  v15 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::getSingleElementConstantWithDtype(uint64_t *a1, uint64_t a2, float a3)
{
  v11 = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v11, 1);
  result = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, a2);
  if ((v7 & 1) == 0)
  {
    v8 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::ODIE::Compiler::createTensorConstant<float>(v8, v9, v10);
  }

  return result;
}

char *mlir::ODIE::Compiler::createTensorConstant<float>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v17[0] = a3;
    v7 = v17;
    v6 = 1;
  }

  v8 = *(**a1 + 440);
  *&v16 = v7;
  *(&v16 + 1) = v6;
  v14 = 0;
  v15 = v8;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v16, &v15, &v14);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
  *&v16 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11 - 16;
}

{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v17[0] = a3;
    v7 = v17;
    v6 = 1;
  }

  v8 = *(**a1 + 440);
  *&v16 = v7;
  *(&v16 + 1) = v6;
  v14 = 0;
  v15 = v8;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v16, &v15, &v14);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
  *&v16 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11 - 16;
}

char *mlir::ODIE::Compiler::getSignOfTensor(uint64_t *a1, char *a2, uint64_t *a3, uint64_t *a4)
{
  v52[25] = *MEMORY[0x277D85DE8];
  v48[0] = a3;
  v48[1] = a4;
  LODWORD(v51) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v51, 1);
  v7 = (*(a2 + 1) & 0xFFFFFFFFFFFFFFF8);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
  v10 = v8;
  if (v8)
  {
    v8 = (*(v9 + 8))(v9, v8);
  }

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  v12 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v11);
  if ((v13 & 1) == 0)
  {
    v34 = a1[4];
    v50 = 257;
    emitDiag(v34, 2, v49, &v51);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v52, "Unable to cast ");
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<(v52, Tensor);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<19ul>(v52, " to same dtype as ");
LABEL_21:
    if (!v51)
    {
LABEL_42:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
      result = 0;
      goto LABEL_43;
    }

    v35 = a2;
LABEL_28:
    mlir::Diagnostic::operator<<(v52, v35);
    goto LABEL_42;
  }

  v14 = v12;
  GreaterOps = mlir::ODIE::Compiler::getGreaterOps(a1, a2, v12);
  if ((v16 & 1) == 0)
  {
    goto LABEL_23;
  }

  v17 = GreaterOps;
  v18 = v48[0];
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v48[0]);
  if (v19)
  {
    v18 = (*(v20 + 8))(v20, v19);
  }

  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v17, v18);
  v46 = v21;
  v47 = v22;
  if ((v22 & 1) == 0)
  {
    v37 = v21;
    v38 = a1[4];
    v50 = 257;
    emitDiag(v38, 2, v49, &v51);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v52, "Unable to cast ");
    if (!v51)
    {
      goto LABEL_42;
    }

    v39 = v37;
    goto LABEL_32;
  }

  v23 = mlir::ODIE::Compiler::getGreaterOps(a1, v14, a2);
  if ((v24 & 1) == 0)
  {
LABEL_23:
    v36 = a1[4];
    v50 = 257;
    emitDiag(v36, 2, v49, &v51);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<21ul>(v52, "Unable to construct ");
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<(v52, a2);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<4ul>(v52, " > ");
    if (!v51)
    {
      goto LABEL_42;
    }

    v35 = v14;
    goto LABEL_28;
  }

  v25 = v23;
  v26 = v48[0];
  v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v48[0]);
  if (v27)
  {
    v26 = (*(v28 + 8))(v28, v27);
  }

  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v25, v26);
  if ((v30 & 1) == 0)
  {
    v40 = a1[4];
    v50 = 257;
    emitDiag(v40, 2, v49, &v51);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<16ul>(v52, "Unable to cast ");
    if (!v51)
    {
      goto LABEL_42;
    }

    v39 = v29;
LABEL_32:
    mlir::Diagnostic::operator<<(v52, v39);
    if (v51)
    {
      mlir::Diagnostic::operator<<<19ul>(v52, " to same dtype as ");
      if (v51)
      {
        mlir::Diagnostic::operator<<<mlir::ShapedType &>(v52, v48);
      }
    }

    goto LABEL_42;
  }

  LODWORD(v51) = -1082130432;
  a2 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v51, 1);
  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v29, a2);
  v44 = MultiplyWithScalar;
  v45 = v32;
  if ((v32 & 1) == 0)
  {
    v41 = MultiplyWithScalar;
    v42 = a1[4];
    v50 = 257;
    emitDiag(v42, 2, v49, &v51);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<20ul>(v52, "Unable to multiply ");
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<(v52, v41);
    if (!v51)
    {
      goto LABEL_42;
    }

    mlir::Diagnostic::operator<<<7ul>(v52, " with ");
    goto LABEL_21;
  }

  result = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v48, &v46, &v44) - 16;
LABEL_43:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::ODIE::Compiler::getCeilOfTensor(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v44[0] = a3;
  v44[1] = a4;
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(a1, a2, 1.0);
  if ((v8 & 1) == 0)
  {
    v24 = a1[4];
    v46 = 257;
    emitDiag(v24, 2, v45, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<50ul>(&v48, "unable to create constant of 1 with same type as ");
      goto LABEL_10;
    }

LABEL_39:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
    result = 0;
    goto LABEL_40;
  }

  v9 = TensorConstantWithSameTypeAs;
  v10 = *(a2 + 8);
  v11 = a1[4];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**v11 + 32));
  v47 = v11;
  v48 = v12;
  v49 = v51;
  v50 = 0x400000000;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = 4;
  v59 = &v61;
  v60 = 0x100000000;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = 0;
  v66 = 0;
  v67 = &mlir::detail::TypeIDResolver<void,void>::id;
  v68 = 0;
  v69 = 0;
  mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, &v47, v10 & 0xFFFFFFFFFFFFFFF8, a2, v9);
  v13 = mlir::Operation::create(&v47);
  mlir::OpBuilder::insert(a1, v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(&v47);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = (v15 - 16);
  GreaterOps = mlir::ODIE::Compiler::getGreaterOps(a1, a2, (v15 - 16));
  if ((v18 & 1) == 0)
  {
    v25 = a1[4];
    v46 = 257;
    emitDiag(v25, 2, v45, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<34ul>(&v48, "unable to create compute greater(");
      if (v47)
      {
        mlir::Diagnostic::operator<<(&v48, a2);
        if (v47)
        {
          mlir::Diagnostic::operator<<<4ul>(&v48, " , ");
          if (v47)
          {
            mlir::Diagnostic::operator<<(&v48, v16);
            if (v47)
            {
              mlir::Diagnostic::operator<<<2ul>(&v48, ")");
            }
          }
        }
      }
    }

    goto LABEL_39;
  }

  v19 = GreaterOps;
  v20 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
  v23 = v21;
  if (v21)
  {
    v21 = (*(v22 + 8))(v22, v21);
  }

  if (v23)
  {
    v26 = v21;
  }

  else
  {
    v26 = v20;
  }

  v27 = mlir::ODIE::Compiler::castValueToElementType(a1, v19, v26);
  if ((v28 & 1) == 0)
  {
    v38 = a1[4];
    v46 = 257;
    emitDiag(v38, 2, v45, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<16ul>(&v48, "unable to cast ");
      if (v47)
      {
        mlir::Diagnostic::operator<<(&v48, v19);
        if (v47)
        {
          mlir::Diagnostic::operator<<<19ul>(&v48, " to same dtype as ");
LABEL_10:
          if (v47)
          {
            mlir::Diagnostic::operator<<(&v48, a2);
          }

          goto LABEL_39;
        }
      }
    }

    goto LABEL_39;
  }

  v29 = v27;
  v30 = a1[4];
  v31 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**v30 + 32));
  v47 = v30;
  v48 = v31;
  v49 = v51;
  v50 = 0x400000000;
  v52 = v54;
  v53 = 0x400000000;
  v55 = v57;
  v56 = 0x400000000;
  v58 = 4;
  v59 = &v61;
  v60 = 0x100000000;
  v62 = &v64;
  v63 = 0x100000000;
  v65 = 0;
  v66 = 0;
  v67 = &mlir::detail::TypeIDResolver<void,void>::id;
  v68 = 0;
  v69 = 0;
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, &v47, v10 & 0xFFFFFFFFFFFFFFF8, v16, v29);
  v32 = mlir::Operation::create(&v47);
  mlir::OpBuilder::insert(a1, v32);
  v33 = *(*(v32 + 6) + 16);
  v34 = (v32 - 16);
  mlir::OperationState::~OperationState(&v47);
  if (v33 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v34 = -16;
  }

  v35 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(a3);
  v37 = v35;
  if (v35)
  {
    v35 = (*(v36 + 8))(v36, v35);
  }

  if (v37)
  {
    v39 = v35;
  }

  else
  {
    v39 = a3;
  }

  result = mlir::ODIE::Compiler::castValueToElementType(a1, v34, v39);
  if ((v41 & 1) == 0)
  {
    v42 = a1[4];
    v46 = 257;
    emitDiag(v42, 2, v45, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<16ul>(&v48, "unable to cast ");
      if (v47)
      {
        mlir::Diagnostic::operator<<(&v48, v34);
        if (v47)
        {
          mlir::Diagnostic::operator<<<19ul>(&v48, " to same dtype as ");
          if (v47)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v48, v44);
          }
        }
      }
    }

    goto LABEL_39;
  }

LABEL_40:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(uint64_t *a1, uint64_t a2, float a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *v18 = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, v18, 1);
  v6 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v10);
  if (v12)
  {
    v17[0] = v11;
    v17[1] = a2;
    mlir::ODIE::Compiler::getBroadcastedValues(v17, 2uLL, a1, v18);
    if (v19[48] == 1)
    {
      v13 = *v18[0] & 0xFFFFFFFFFFFFFF00;
      v14 = *v18[0];
      if (v18[0] != v19)
      {
        free(v18[0]);
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    result = v14 | v13;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::ODIE::Compiler::getShapeAsValue(uint64_t *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v3 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v6 = mlir::detail::InterfaceMap::lookup(v4 + 8, v5);
  (*(v6 + 24))(v6, v3);
  v16[0] = v7;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v15 = v16;
  *(&v15 + 1) = 1;
  v13 = 0;
  v14 = v8;
  *&v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v15, &v14, &v13);
  v9 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], &v15, &v12);
  v10 = *MEMORY[0x277D85DE8];
  return v9 - 16;
}

char *mlir::ODIE::Compiler::getSliceOfTensorShape(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  ShapeAsValue = mlir::ODIE::Compiler::getShapeAsValue(a1, a2);
  v19 = ShapeAsValue;
  LODWORD(v22) = a3;
  v18 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v22, 1);
  LODWORD(v22) = a4;
  v17 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v22, 1);
  LODWORD(v22) = 1;
  v16 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v22, 1);
  v23[0] = a4 - a3;
  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v22 = v23;
  *(&v22 + 1) = 1;
  v20 = 0;
  v21 = v8;
  *&v22 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v22, &v21, &v20);
  if ((~*(ShapeAsValue + 2) & 7) != 0)
  {
    v9 = ShapeAsValue;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *(v9 + 1) & 7;
  if (v10 != 6)
  {
    v11 = &v9[16 * v10 + 16];
    goto LABEL_9;
  }

  v11 = &v9[24 * *(v9 + 2) + 120];
  if (v11)
  {
LABEL_9:
    v12 = (v11 + 24);
    goto LABEL_10;
  }

LABEL_7:
  v12 = (ShapeAsValue + 32);
LABEL_10:
  v13 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *v12, &v22, &v19, &v18, &v17, &v16);
  v14 = *MEMORY[0x277D85DE8];
  return v13 - 16;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v24[8] = *MEMORY[0x277D85DE8];
  v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**a2 + 32));
  v19[0] = a2;
  v19[1] = v14;
  v19[2] = v20;
  v19[3] = 0x400000000;
  v20[4] = v21;
  v20[5] = 0x400000000;
  v21[4] = v22;
  v21[5] = 0x400000000;
  v22[8] = 4;
  v22[9] = v23;
  v22[10] = 0x100000000;
  v23[1] = v24;
  v23[2] = 0x100000000;
  v24[1] = 0;
  v24[2] = 0;
  v24[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v24[4] = 0;
  v24[6] = 0;
  mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, v19, *a3, *a4, *a5, *a6, *a7);
  v15 = mlir::Operation::create(v19);
  mlir::OpBuilder::insert(a1, v15);
  if (*(*(v15 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

char *mlir::ODIE::Compiler::getDimensionLengthOfTensor(uint64_t *a1, uint64_t a2, int a3)
{
  ShapeAsValue = mlir::ODIE::Compiler::getShapeAsValue(a1, a2);
  LODWORD(v11) = a3;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v11, 1, 0);
  v5 = mlir::IntegerType::get(*a1, 32, 1);
  v11 = 0uLL;
  v9 = 0;
  v10 = v5;
  *&v11 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v5 + 32), &v11, &v10, &v9);
  LODWORD(v9) = 0;
  v10 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v9, 1, 0);
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], &v11, &ShapeAsValue, &v10, &Tensor) - 16;
}

BOOL mlir::ODIE::Compiler::isConstFalse(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  if ((~*(a1 + 8) & 7) != 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8) & 7;
  if (v2 == 6)
  {
    v3 = v1 + 24 * *(v1 + 16);
    v4 = v3 + 120;
    if (v3 == -120)
    {
      return 0;
    }
  }

  else
  {
    v4 = v1 + 16 * v2 + 16;
  }

  result = mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v8, v4);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 24) != 1)
  {
    return 0;
  }

  mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v7, &v8);
  if (v9)
  {
    v6 = 0;
  }

  else
  {
    v6 = v10;
  }

  return ((*(v8 + (v6 >> 3)) >> (v6 & 7)) & 1) == 0;
}

void llvm::SmallVectorImpl<int>::append<long long *,void>(uint64_t a1, char *a2, char *a3)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
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
  mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, v15, *a3, *a4, *a5);
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

void llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::grow(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 64, &v6);
  llvm::SmallVectorTemplateBase<llvm::SmallVector<long long,6u>,false>::moveElementsForGrow(a1, v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  Shape = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GetShapeOp>(a1, *(**a2 + 32));
  v13[0] = a2;
  v13[1] = Shape;
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
  mlir::ODIE::Compiler::CoreML::GetShapeOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GetShapeOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.broadcast_to";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::TensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::CastOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.divide";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MaximumOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MaximumOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MaximumOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.maximum";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MinimumOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MinimumOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MinimumOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.minimum";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::Type,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GreaterOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::GreaterOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.greater";
    v6[3] = 14;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::OrOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::OrOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.or";
    v6[3] = 9;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotEqualOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotEqualOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.not_equal";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::NotOp,mlir::RankedTensorType,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::NotOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NotOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NotOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.not";
    v6[3] = 10;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::AddOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.floor_divide";
    v6[3] = 19;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.slice";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v22[8] = *MEMORY[0x277D85DE8];
  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, v17, *a3, *a4, *a5, *a6);
  v13 = mlir::Operation::create(v17);
  mlir::OpBuilder::insert(a1, v13);
  if (*(*(v13 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.select";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::ODIE::Compiler::replaceLayerNormImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v91 = a4;
  v8 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v8)
  {
    v9 = *v8;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v11 = mlir::detail::InterfaceMap::lookup(v9 + 8, v10);
  }

  else
  {
    v11 = 0;
  }

  v90[0] = v8;
  v90[1] = v11;
  v12 = (*(v11 + 8))(v11, v8);
  v13 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  v17 = (*(v16 + 24))(v16, v13);
  if (v18)
  {
    v19 = 8 * v18;
    v20 = 1;
    do
    {
      v21 = *v17++;
      v20 *= v21;
      v19 -= 8;
    }

    while (v19);
  }

  else
  {
    v20 = 1;
  }

  (*(v11 + 24))(v11, v8);
  v23 = v22;
  v99 = v101;
  v100 = 0xC00000000;
  llvm::SmallVectorImpl<int>::resizeImpl<false>(&v99, v20);
  v24 = v99;
  if (v20 >= 1)
  {
    v25 = v23 - v20;
    v26 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = vdupq_n_s64(v20 - 1);
    v28 = xmmword_25D0A04F0;
    v29 = xmmword_25D0A0500;
    v30 = v99 + 8;
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v27, v29));
      if (vuzp1_s16(v32, *v27.i8).u8[0])
      {
        *(v30 - 2) = v25;
      }

      if (vuzp1_s16(v32, *&v27).i8[2])
      {
        *(v30 - 1) = v25 + 1;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v28))).i32[1])
      {
        *v30 = v25 + 2;
        v30[1] = v25 + 3;
      }

      v28 = vaddq_s64(v28, v31);
      v29 = vaddq_s64(v29, v31);
      v25 += 4;
      v30 += 4;
      v26 -= 4;
    }

    while (v26);
  }

  v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v24, v100);
  *&__src = a2;
  *(&__src + 1) = a4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v96);
  if ((v98 & 1) == 0)
  {
    v79 = a1[4];
    v95[8] = 257;
    emitDiag(v79, 2, &v93, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<56ul>(&__src + 8, "unable to broadcast the eps operand to normalized shape");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v78 = 0;
    goto LABEL_61;
  }

  v89 = v33;
  v91 = *(v96[0] + 1);
  v34 = (*(v11 + 24))(v11, v8);
  v93 = v95;
  v94 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v93, v34, &v34[8 * v35]);
  v36 = v93;
  if (v23 - v20 < v23)
  {
    memset_pattern16(v93 + 8 * (v23 - v20), &unk_25D0A0900, ((8 * v20 + 0x7FFFFFFF8) & 0x7FFFFFFF8) + 8);
  }

  *&__src = v36;
  *(&__src + 1) = v94;
  v102 = v12;
  v92 = 0;
  v37 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v12 + 32), &__src, &v102, &v92);
  LOBYTE(__src) = 1;
  v38 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &__src, 1);
  v39 = a1[4];
  v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v39 + 32));
  *&__src = v39;
  *(&__src + 1) = v40;
  v106 = v108;
  v107 = 0x400000000;
  v109 = v111;
  v110 = 0x400000000;
  v112 = v114;
  v113 = 0x400000000;
  v115 = 4;
  v116 = &v118;
  v117 = 0x100000000;
  v119 = &v121;
  v120 = 0x100000000;
  v123 = 0;
  v122 = 0;
  v124 = &mlir::detail::TypeIDResolver<void,void>::id;
  v125 = 0;
  v126 = 0;
  mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &__src, v37, a2, v89, v38);
  v41 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v41);
  v42 = *(*(v41 + 6) + 16);
  v43 = v41 - 16;
  mlir::OperationState::~OperationState(&__src);
  v44 = -16;
  if (v42 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
  {
    v44 = v43;
  }

  v102 = a2;
  v103 = v44;
  mlir::ODIE::Compiler::getBroadcastedValues(&v102, 2uLL, a1, &__src);
  std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v96, &__src);
  if (v109 == 1 && __src != &v106)
  {
    free(__src);
  }

  if (v98)
  {
    v45 = *(v96[0] + 1);
    v46 = a1[4];
    v47 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v46 + 32));
    *&__src = v46;
    *(&__src + 1) = v47;
    v106 = v108;
    v107 = 0x400000000;
    v109 = v111;
    v110 = 0x400000000;
    v112 = v114;
    v113 = 0x400000000;
    v115 = 4;
    v116 = &v118;
    v117 = 0x100000000;
    v119 = &v121;
    v120 = 0x100000000;
    v123 = 0;
    v122 = 0;
    v124 = &mlir::detail::TypeIDResolver<void,void>::id;
    v125 = 0;
    v126 = 0;
    mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v90[0], a2, v45);
    v48 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v48);
    v49 = *(*(v48 + 6) + 16);
    v88 = a2;
    mlir::OperationState::~OperationState(&__src);
    if (v49 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    v51 = a1[4];
    v52 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v51 + 32));
    *&__src = v51;
    *(&__src + 1) = v52;
    v106 = v108;
    v107 = 0x400000000;
    v109 = v111;
    v110 = 0x400000000;
    v112 = v114;
    v113 = 0x400000000;
    v115 = 4;
    v116 = &v118;
    v117 = 0x100000000;
    v119 = &v121;
    v120 = 0x100000000;
    v123 = 0;
    v122 = 0;
    v124 = &mlir::detail::TypeIDResolver<void,void>::id;
    v125 = 0;
    v126 = 0;
    v87 = (v50 - 16);
    mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v90[0], (v50 - 16), (v50 - 16));
    v53 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v53);
    v54 = *(*(v53 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    if (v54 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0;
    }

    v56 = a1[4];
    v57 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v56 + 32));
    *&__src = v56;
    *(&__src + 1) = v57;
    v106 = v108;
    v107 = 0x400000000;
    v109 = v111;
    v110 = 0x400000000;
    v112 = v114;
    v113 = 0x400000000;
    v115 = 4;
    v116 = &v118;
    v117 = 0x100000000;
    v119 = &v121;
    v120 = 0x100000000;
    v123 = 0;
    v122 = 0;
    v124 = &mlir::detail::TypeIDResolver<void,void>::id;
    v125 = 0;
    v126 = 0;
    mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &__src, v37, (v55 - 16), v89, v38);
    v58 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v58);
    v59 = *(*(v58 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    v60 = -16;
    if (v59 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
    {
      v60 = (v58 - 16);
    }

    v102 = v88;
    v103 = v60;
    mlir::ODIE::Compiler::getBroadcastedValues(&v102, 2uLL, a1, &__src);
    std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v96, &__src);
    if (v109 == 1 && __src != &v106)
    {
      free(__src);
    }

    if (v98)
    {
      v92 = *(v96[0] + 1);
      v61 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v90, &v92, &v91);
      v62 = a1[4];
      v63 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(a1, *(**v62 + 32));
      *&__src = v62;
      *(&__src + 1) = v63;
      v106 = v108;
      v107 = 0x400000000;
      v109 = v111;
      v110 = 0x400000000;
      v112 = v114;
      v113 = 0x400000000;
      v115 = 4;
      v116 = &v118;
      v117 = 0x100000000;
      v119 = &v121;
      v120 = 0x100000000;
      v123 = 0;
      v122 = 0;
      v124 = &mlir::detail::TypeIDResolver<void,void>::id;
      v125 = 0;
      v126 = 0;
      mlir::ODIE::Compiler::CoreML::SqrtOp::build(a1, &__src, v90[0], (v61 - 16));
      v64 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v64);
      v65 = *(*(v64 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v65 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id)
      {
        v66 = v64;
      }

      else
      {
        v66 = 0;
      }

      SingleElementConstantWithDtype = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v12, 1.0);
      v102 = v88;
      v103 = SingleElementConstantWithDtype;
      mlir::ODIE::Compiler::getBroadcastedValues(&v102, 2uLL, a1, &__src);
      std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v96, &__src);
      if (v109 == 1 && __src != &v106)
      {
        free(__src);
      }

      if ((v98 & 1) == 0)
      {
        v84 = std::__throw_bad_optional_access[abi:nn200100]();
        return mlir::ODIE::Compiler::create1DTensorConstant<int>(v84, v85, v86);
      }

      v68 = *(v96[0] + 1);
      v69 = a1[4];
      v70 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**v69 + 32));
      *&__src = v69;
      *(&__src + 1) = v70;
      v106 = v108;
      v107 = 0x400000000;
      v109 = v111;
      v110 = 0x400000000;
      v112 = v114;
      v113 = 0x400000000;
      v115 = 4;
      v116 = &v118;
      v117 = 0x100000000;
      v119 = &v121;
      v120 = 0x100000000;
      v123 = 0;
      v122 = 0;
      v124 = &mlir::detail::TypeIDResolver<void,void>::id;
      v125 = 0;
      v126 = 0;
      mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, &__src, v90[0], v68, (v66 - 16));
      v71 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v71);
      v72 = *(*(v71 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v72 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
      {
        v71 = 0;
      }

      v73 = a1[4];
      v74 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v73 + 32));
      *&__src = v73;
      *(&__src + 1) = v74;
      v106 = v108;
      v107 = 0x400000000;
      v109 = v111;
      v110 = 0x400000000;
      v112 = v114;
      v113 = 0x400000000;
      v115 = 4;
      v116 = &v118;
      v117 = 0x100000000;
      v119 = &v121;
      v120 = 0x100000000;
      v123 = 0;
      v122 = 0;
      v124 = &mlir::detail::TypeIDResolver<void,void>::id;
      v125 = 0;
      v126 = 0;
      mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v90[0], v87, (v71 - 16));
      v75 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v75);
      v76 = *(*(v75 + 6) + 16);
      v77 = v75 - 16;
      mlir::OperationState::~OperationState(&__src);
      if (v76 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
      {
        v78 = v77;
      }

      else
      {
        v78 = -16;
      }

      goto LABEL_59;
    }

    v81 = a1[4];
    v104 = 257;
    emitDiag(v81, 2, &v102, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<66ul>(&__src + 8, "unable to get broadcast the input variance to same shape as input");
    }
  }

  else
  {
    v80 = a1[4];
    v104 = 257;
    emitDiag(v80, 2, &v102, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<58ul>(&__src + 8, "unable to broadcast the input mean to same shape as input");
    }
  }

  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  v78 = 0;
LABEL_59:
  if (v93 != v95)
  {
    free(v93);
  }

LABEL_61:
  if (v98 == 1 && v96[0] != &v97)
  {
    free(v96[0]);
  }

  if (v99 != v101)
  {
    free(v99);
  }

  v82 = *MEMORY[0x277D85DE8];
  return v78;
}

char *mlir::ODIE::Compiler::createTensorConstant<BOOL>(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v17[0] = a3;
    v7 = v17;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 1, 0);
  *&v16 = v7;
  *(&v16 + 1) = v6;
  v14 = 0;
  v15 = v8;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v16, &v15, &v14);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
  *&v16 = mlir::DenseElementsAttr::get(v9, v10, a2, a3);
  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11 - 16;
}

{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v17[0] = a3;
    v7 = v17;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 1, 0);
  *&v16 = v7;
  *(&v16 + 1) = v6;
  v14 = 0;
  v15 = v8;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v16, &v15, &v14);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
  *&v16 = mlir::DenseElementsAttr::get(v9, v10, a2, a3);
  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11 - 16;
}

unint64_t mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v59[8] = *MEMORY[0x277D85DE8];
  v43 = a3;
  v44 = a2;
  v42 = a4;
  v6 = (a2[1] & 0xFFFFFFFFFFFFFFF8);
  if (v6)
  {
    v8 = a3;
    v10 = *v6;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    v41[0] = v6;
    v41[1] = v12;
    if (!a5)
    {
      goto LABEL_6;
    }

    v8 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(a1, &v43, v41);
    v14 = v13;
    v15 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(a1, &v42, v41);
    v17 = 0;
    if ((v14 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_32;
    }

    v18 = 0;
    if (v16)
    {
      v42 = v15;
      v43 = v8;
LABEL_6:
      __src = a2;
      v51 = v8;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v45);
      if (v47)
      {
        v43 = *(v45[0] + 1);
        v19 = v43;
        v20 = (*(v12 + 8))(v12, v6);
        v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v19, v20);
        if (v22)
        {
          v43 = v21;
          v48[0] = a2;
          v48[1] = v42;
          mlir::ODIE::Compiler::getBroadcastedValues(v48, 2uLL, a1, &__src);
          std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(v45, &__src);
          if (v54 == 1 && __src != v52)
          {
            free(__src);
          }

          if (v47)
          {
            v42 = *(v45[0] + 1);
            v23 = v42;
            v24 = (*(v12 + 8))(v12, v6);
            v25 = mlir::ODIE::Compiler::castValueToElementType(a1, v23, v24);
            if (v26)
            {
              v42 = v25;
              v27 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v41, &v44, &v43);
              v28 = a1[4];
              v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::AddOp>(a1, *(**v28 + 32));
              __src = v28;
              v51 = v29;
              v52[0] = &v53;
              v52[1] = 0x400000000;
              v54 = v56;
              v55 = 0x400000000;
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
              mlir::ODIE::Compiler::CoreML::AddOp::build(a1, &__src, v41[0], (v27 - 16), v42);
              v30 = mlir::Operation::create(&__src);
              mlir::OpBuilder::insert(a1, v30);
              v31 = *(*(v30 + 6) + 16);
              v32 = v30 - 16;
              mlir::OperationState::~OperationState(&__src);
              v33 = -16;
              if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
              {
                v33 = v32;
              }

              v18 = v33 & 0xFFFFFFFFFFFFFF00;
              v17 = v33;
              goto LABEL_29;
            }

            v38 = a1[4];
            v49 = 257;
            emitDiag(v38, 2, v48, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<67ul>(&v51, "unable to cast the bias operand to same element type as normalized");
            }
          }

          else
          {
            v37 = a1[4];
            v49 = 257;
            emitDiag(v37, 2, v48, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<57ul>(&v51, "unable to broadcast the bias operand to normalized shape");
            }
          }
        }

        else
        {
          v36 = a1[4];
          v49 = 257;
          emitDiag(v36, 2, v48, &__src);
          if (__src)
          {
            mlir::Diagnostic::operator<<<69ul>(&v51, "unable to cast the weight operand to same element type as normalized");
          }
        }
      }

      else
      {
        v35 = a1[4];
        v49 = 257;
        emitDiag(v35, 2, v48, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<59ul>(&v51, "unable to broadcast the weight operand to normalized shape");
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v17 = 0;
      v18 = 0;
LABEL_29:
      if (v47 == 1 && v45[0] != v46)
      {
        free(v45[0]);
      }
    }
  }

  else
  {
    v34 = a1[4];
    v46[8] = 257;
    emitDiag(v34, 2, v45, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<41ul>(&v51, "Normalized input must be a ranked tensor");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v17 = 0;
    v18 = 0;
  }

LABEL_32:
  v39 = *MEMORY[0x277D85DE8];
  return v18 | v17;
}

char *mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(mlir::ImplicitLocOpBuilder &,mlir::Value,mlir::Value,mlir::Value,BOOL)::$_0::operator()(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 16) == 1)
  {
    v8 = *a3;
    (*(a3[1] + 24))();
    if (v9 == 1)
    {
      v3 = *a2;
    }

    else
    {
      v10 = *a3;
      (*(a3[1] + 24))();
      v21 = v23;
      v22 = 0x600000000;
      llvm::SmallVectorImpl<long long>::assign(&v21, v11, 1);
      v12 = v21;
      *(v21 + 1) = **(v4 + 8);
      *&v19 = v20;
      *(&v19 + 1) = 0xC00000000;
      llvm::SmallVectorImpl<int>::append<long long *,void>(&v19, v12, &v12[8 * v22]);
      v16 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v19, DWORD2(v19));
      if (v19 != v20)
      {
        free(v19);
      }

      v13 = *(v4 + 24);
      *&v19 = v21;
      *(&v19 + 1) = v22;
      v17 = 0;
      v18 = v13;
      *&v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v13 + 32), &v19, &v18, &v17);
      v3 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &v19, a2, &v16) - 16;
      if (v21 != v23)
      {
        free(v21);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

void mlir::ODIE::Compiler::getStackedInfoFromSanitizedIndices(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v7 = a2;
  v8 = a1;
  v71 = *MEMORY[0x277D85DE8];
  v10 = a1[4];
  v62 = v64;
  v63 = 0x600000000;
  v59 = v61;
  v60 = 0x600000000;
  v11 = *(a3 + 2);
  if (v11)
  {
    v14 = a5;
    v16 = 0;
    v17 = *a3;
    v18 = 8 * v11;
    do
    {
      v19 = *(v17 + 8 * v16);
      if (v19)
      {
        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v59, v19);
        llvm::SmallVectorTemplateBase<unsigned long,true>::push_back(&v62, v16);
      }

      ++v16;
      v18 -= 8;
    }

    while (v18);
    v20 = v59;
    v21 = v60;
    v7 = a2;
    a5 = v14;
    v5 = a4;
    v8 = a1;
  }

  else
  {
    v21 = 0;
    v20 = v61;
  }

  mlir::ODIE::Compiler::getBroadcastedValues(v20, v21, v8, v56);
  if (v58)
  {
    llvm::SmallVectorImpl<mlir::Value>::operator=(&v59, v56);
    if (v63 && v60)
    {
      v22 = v62;
      v23 = v59;
      v24 = 8 * v60 - 8;
      v25 = 8 * v63 - 8;
      do
      {
        v27 = *v22++;
        v26 = v27;
        v28 = *v23++;
        *(*a3 + 8 * v26) = v28;
        if (!v25)
        {
          break;
        }

        v29 = v24;
        v24 -= 8;
        v25 -= 8;
      }

      while (v29);
    }

    v30 = *a3;
    v31 = *(a3 + 2);
    v52 = v7;
    v53 = v55;
    v54 = 0x600000000;
    v32 = *((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v68 = v70;
    v69 = 0xC00000000;
    if (v31)
    {
      v33 = 0;
      v34 = 8 * v31;
      v35 = 8 * v31;
      do
      {
        if (*(v30 + 8 * v33))
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v68, v33);
          llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(&v53, *(v30 + 8 * v33));
        }

        ++v33;
        v35 -= 8;
      }

      while (v35);
      if (v5)
      {
        v36 = 0;
        do
        {
          if (!*(v30 + 8 * v36))
          {
            llvm::SmallVectorTemplateBase<int,true>::push_back(&v68, v36);
          }

          ++v36;
          v34 -= 8;
        }

        while (v34);
LABEL_29:
        if (v32 > v31)
        {
          do
          {
            llvm::SmallVectorTemplateBase<int,true>::push_back(&v68, v31++);
          }

          while (v32 != v31);
        }

        v51 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v68, v69);
        v65 = v67;
        v66 = 0xC00000000;
        llvm::SmallVectorImpl<int>::resizeImpl<false>(&v65, v69);
        if (v69)
        {
          v37 = 0;
          v38 = v68;
          v39 = v65;
          v40 = 4 * v69;
          do
          {
            *&v39[4 * *&v38[4 * v37]] = v37;
            ++v37;
            v40 -= 4;
          }

          while (v40);
        }

        if ((~*(v7 + 8) & 7) != 0)
        {
          v41 = v7;
        }

        else
        {
          v41 = 0;
        }

        if (!v41)
        {
          goto LABEL_40;
        }

        v42 = *(v41 + 8) & 7;
        if (v42 == 6)
        {
          v43 = v41 + 24 * *(v41 + 16) + 120;
          if (!v43)
          {
LABEL_40:
            v44 = (v7 + 32);
            goto LABEL_46;
          }
        }

        else
        {
          v43 = v41 + 16 * v42 + 16;
        }

        v44 = (v43 + 24);
LABEL_46:
        v49 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(v8, *v44, &v52, &v51);
        v48 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v65, v66);
        v7 = (v49 - 16);
        v47 = mlir::ODIE::Compiler::stackIndices(v8, v53, v54);
        if (v65 != v67)
        {
          free(v65);
        }

        goto LABEL_48;
      }

      v45 = v53;
      v46 = v54;
    }

    else
    {
      if (v5)
      {
        goto LABEL_29;
      }

      v46 = 0;
      v45 = v55;
    }

    v47 = mlir::ODIE::Compiler::stackIndices(v8, v45, v46);
    v48 = 0;
LABEL_48:
    if (v68 != v70)
    {
      free(v68);
    }

    if (v53 != v55)
    {
      free(v53);
    }

    *a5 = v7;
    *(a5 + 8) = v47;
    *(a5 + 16) = v48;
    *(a5 + 24) = 1;
    goto LABEL_53;
  }

  v70[8] = 257;
  emitDiag(v10, 2, &v68, &v53);
  if (v53)
  {
    mlir::Diagnostic::operator<<<43ul>(&v54, "unable to broadcast non-null index tensors");
  }

  *a5 = 0;
  *(a5 + 24) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v53);
LABEL_53:
  if (v58 == 1 && v56[0] != &v57)
  {
    free(v56[0]);
  }

  if (v59 != v61)
  {
    free(v59);
  }

  if (v62 != v64)
  {
    free(v62);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::getSanitizedIndices(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v8 = a1;
  v160 = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 8) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v10 + 8);
  v116 = *(v10 + 16);
  LODWORD(v138) = 1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v138, 1);
  v123 = mlir::IntegerType::get(*v8, 32, 1);
  v135[0] = v136;
  v135[1] = 0x600000000;
  v12 = *(a2 + 8);
  if (!v12)
  {
    v13 = 0;
    v16 = -1;
LABEL_46:
    llvm::SmallVectorImpl<mlir::Value>::operator=(a2, v135);
    v46 = *(a2 + 8);
    if (v116 < v46)
    {
      v47 = v8[4];
      v134 = 257;
      emitDiag(v47, 2, &v131, &v138);
      if (v138)
      {
        mlir::Diagnostic::operator<<<17ul>(&v138 + 8, "require at most ");
        if (v138)
        {
          LODWORD(v131) = 2;
          v132 = v116;
          v48 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v140, &v131, 1);
          v49 = v140 + 24 * v141[0];
          v50 = *v48;
          *(v49 + 16) = *(v48 + 16);
          *v49 = v50;
          ++v141[0];
          if (v138)
          {
            mlir::Diagnostic::operator<<<32ul>(&v138 + 8, " elements in indices, but have ");
            if (v138)
            {
              v51 = *(a2 + 8);
              LODWORD(v131) = 5;
              v132 = v51;
              v52 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v140, &v131, 1);
              v53 = v140 + 24 * v141[0];
              v54 = *v52;
              *(v53 + 16) = *(v52 + 16);
              *v53 = v54;
              ++v141[0];
            }
          }
        }
      }

      goto LABEL_101;
    }

    if (!v46)
    {
      LOBYTE(v59) = 0;
      *&v138 = &v139;
      *(&v138 + 1) = 0x600000000;
      LOBYTE(v142) = 0;
      *a6 = a6 + 16;
      *(a6 + 8) = 0x600000000;
      goto LABEL_66;
    }

    v55 = 0;
    v56 = *a2;
    v57 = *a2 + 8 * v46;
    v58 = 8 * v46;
    while (!v56[v55 / 8])
    {
      v55 += 8;
      if (v58 == v55)
      {
        *&v138 = &v139;
        *(&v138 + 1) = 0x600000000;
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v138, a2);
        v59 = DWORD2(v138);
        LOBYTE(v142) = 0;
        *a6 = a6 + 16;
        *(a6 + 8) = 0x600000000;
        if (v59)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v138);
          LOBYTE(v59) = v142;
        }

        goto LABEL_66;
      }
    }

    v72 = v58;
    v73 = *a2;
    do
    {
      if (*v73)
      {
        goto LABEL_86;
      }

      ++v73;
      v72 -= 8;
    }

    while (v72);
    v73 = v57;
LABEL_86:
    while (v58)
    {
      v74 = v56[v58 / 8 - 1];
      v58 -= 8;
      if (v74)
      {
        v56 = (v56 + v58 + 8);
        break;
      }
    }

    if (v73 != v56)
    {
      while (*v73)
      {
        if (++v73 == v56)
        {
          goto LABEL_108;
        }
      }
    }

    if (v73 != v56)
    {
      *&v138 = &v139;
      *(&v138 + 1) = 0x600000000;
      llvm::SmallVectorImpl<mlir::Value>::operator=(&v138, a2);
      LOBYTE(v142) = 1;
      *a6 = a6 + 16;
      *(a6 + 8) = 0x600000000;
      if (DWORD2(v138))
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v138);
        v80 = v142;
      }

      else
      {
        v80 = 1;
      }

      *(a6 + 64) = v80;
      *(a6 + 72) = 1;
LABEL_67:
      if (v138 != &v139)
      {
        free(v138);
      }

      goto LABEL_102;
    }

LABEL_108:
    LODWORD(v138) = 0;
    v129 = mlir::ODIE::Compiler::createTensorConstant<int>(v8, &v138, 1);
    LODWORD(v138) = 1;
    v117 = v8;
    v128 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, &v138, 1);
    v137 = 0x8000000000000000;
    *&v138 = &v137;
    *(&v138 + 1) = 1;
    v130 = 0;
    v131 = v123;
    v121 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v123 + 32), &v138, &v131, &v130);
    v137 = 1;
    *&v138 = &v137;
    *(&v138 + 1) = 1;
    v130 = 0;
    v131 = v123;
    v127 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v123 + 32), &v138, &v131, &v130);
    v81 = *(a2 + 8);
    if (v81)
    {
      v82 = 0;
      v113 = a2;
      v83 = *a2;
      v84 = ((v81 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      v85 = 8 * v81;
      v86 = 8 * v81;
      while (!v83[v82])
      {
        ++v82;
        v86 -= 8;
        if (!v86)
        {
          v82 = v84;
          break;
        }
      }

      v87 = 0;
      if (v13 <= v16)
      {
        v88 = v16;
      }

      else
      {
        v88 = v13;
      }

      v89 = v82 + v88;
      v111 = v82 + v88;
      v90 = Tensor;
      v120 = v83;
      do
      {
        if (v83[v87])
        {
          break;
        }

        DimensionLengthOfTensor = mlir::ODIE::Compiler::getDimensionLengthOfTensor(v8, a4, v87);
        v91 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(v8, v8[4], &v127, &DimensionLengthOfTensor, &v128) - 16;
        v92 = v8[4];
        v93 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(v8, *(**v92 + 32));
        *&v138 = v92;
        *(&v138 + 1) = v93;
        v139 = v141;
        v140 = 0x400000000;
        v142 = v144;
        v143 = 0x400000000;
        v145 = v147;
        v146 = 0x400000000;
        v148 = 4;
        v149 = &v151;
        v150 = 0x100000000;
        v152 = &v154;
        v153 = 0x100000000;
        v155 = 0;
        v156 = 0;
        v157 = &mlir::detail::TypeIDResolver<void,void>::id;
        v158 = 0;
        v159 = 0;
        mlir::ODIE::Compiler::CoreML::RangeOp::build(v8, &v138, v121, v129, DimensionLengthOfTensor, v90);
        v94 = mlir::Operation::create(&v138);
        mlir::OpBuilder::insert(v8, v94);
        v95 = *(*(v94 + 6) + 16);
        mlir::OperationState::~OperationState(&v138);
        v96 = v95 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id ? v94 : 0;
        v97 = v89 - 1;
        if ((v89 - 1) <= 0)
        {
          v89 = v111 - v87;
          v99 = v123;
        }

        else
        {
          *&v138 = &v139;
          *(&v138 + 1) = 0xC00000000;
          llvm::SmallVectorImpl<int>::assign(&v138, v89 - 1, 1);
          v98 = mlir::ODIE::Compiler::create1DTensorConstant<int>(v8, v138, DWORD2(v138));
          if (v138 != &v139)
          {
            free(v138);
          }

          v137 = v89;
          *&v138 = &v137;
          *(&v138 + 1) = 1;
          v99 = v123;
          v130 = 0;
          v131 = v123;
          v130 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v123 + 32), &v138, &v131, &v130);
          v131 = v91;
          v132 = v98;
          *&v138 = &v131;
          *(&v138 + 1) = 2;
          v8 = v117;
          v91 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(v117, v117[4], &v130, &v129, &v138) - 16;
        }

        v131 = v133;
        v132 = 0x600000000;
        llvm::SmallVectorImpl<long long>::assign(&v131, v89, 1);
        v100 = v131;
        *v131 = 0x8000000000000000;
        *&v138 = v100;
        *(&v138 + 1) = v132;
        v130 = v99;
        v137 = 0;
        v101 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v99 + 32), &v138, &v130, &v137);
        v102 = v8[4];
        v103 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(v8, *(**v102 + 32));
        *&v138 = v102;
        *(&v138 + 1) = v103;
        v139 = v141;
        v140 = 0x400000000;
        v142 = v144;
        v143 = 0x400000000;
        v145 = v147;
        v146 = 0x400000000;
        v148 = 4;
        v149 = &v151;
        v150 = 0x100000000;
        v152 = &v154;
        v153 = 0x100000000;
        v155 = 0;
        v156 = 0;
        v157 = &mlir::detail::TypeIDResolver<void,void>::id;
        v158 = 0;
        v159 = 0;
        mlir::ODIE::Compiler::CoreML::ReshapeOp::build(v8, &v138, v101, (v96 - 16), v91);
        v104 = mlir::Operation::create(&v138);
        mlir::OpBuilder::insert(v8, v104);
        v105 = *(*(v104 + 6) + 16);
        mlir::OperationState::~OperationState(&v138);
        if (v105 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
        {
          v106 = v104;
        }

        else
        {
          v106 = 0;
        }

        *(*v113 + 8 * v87) = v106 - 16;
        if (v131 != v133)
        {
          free(v131);
        }

        ++v87;
        v89 = v97;
        v85 -= 8;
        v90 = Tensor;
        v83 = v120;
      }

      while (v85);
      v107 = *(v113 + 8);
      *&v138 = &v139;
      *(&v138 + 1) = 0x600000000;
      if (v107)
      {
        llvm::SmallVectorImpl<mlir::Value>::operator=(&v138, v113);
        v59 = DWORD2(v138);
        LOBYTE(v142) = 0;
        *a6 = a6 + 16;
        *(a6 + 8) = 0x600000000;
        if (v59)
        {
          llvm::SmallVectorImpl<mlir::Value>::operator=(a6, &v138);
          LOBYTE(v59) = v142;
        }

LABEL_66:
        *(a6 + 64) = v59;
        *(a6 + 72) = 1;
        goto LABEL_67;
      }
    }

    else
    {
      *&v138 = &v139;
      *(&v138 + 1) = 0x600000000;
    }

    LOBYTE(v59) = 0;
    LOBYTE(v142) = 0;
    *a6 = a6 + 16;
    *(a6 + 8) = 0x600000000;
    goto LABEL_66;
  }

  v114 = a5;
  v13 = 0;
  v14 = 0;
  v15 = *a2;
  v125 = *a2 + 8 * v12;
  v16 = -1;
  v110 = v11;
  while (1)
  {
    v129 = v14;
    v17 = *v15;
    if (!*v15)
    {
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v135, 0);
      goto LABEL_21;
    }

    if (*(a3 + 8) != *(a2 + 8))
    {
      break;
    }

    v18 = v16;
    v19 = (*(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v66 = *(*a3 + 8 * v14);
      v134 = 257;
      emitDiag(v66, 2, &v131, &v138);
      if (v138)
      {
        mlir::Diagnostic::operator<<<28ul>(&v138 + 8, "index argument at position ");
      }

      v67 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v138, &v129);
      if (*v67)
      {
        v68 = v67;
        mlir::Diagnostic::operator<<<41ul>((v67 + 1), " is not None or RankedTensorType. It is ");
        if (*v68)
        {
          LODWORD(v131) = 4;
          v132 = v19;
          v69 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v68 + 3), &v131, 1);
          v70 = v68[3] + 24 * *(v68 + 8);
          v71 = *v69;
          *(v70 + 16) = *(v69 + 16);
          *v70 = v71;
          ++*(v68 + 8);
        }
      }

      goto LABEL_101;
    }

    v20 = v19[3];
    if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      goto LABEL_69;
    }

    v21 = v20[2];
    if (v21 - 1073741832 <= 0x18 && ((1 << (v21 - 8)) & 0x1000101) != 0 || v21 == -2147483632)
    {
      goto LABEL_15;
    }

    if (v21 >> 30 == 2)
    {
      if ((v21 & 0x3FFFFFFF) != 8)
      {
LABEL_69:
        if ((v114 & 1) == 0)
        {
LABEL_97:
          v77 = *(*a3 + 8 * v14);
          v134 = 257;
          emitDiag(v77, 2, &v131, &v138);
          if (v138)
          {
            mlir::Diagnostic::operator<<<28ul>(&v138 + 8, "index argument at position ");
          }

          v78 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v138, &v129);
          if (*v78)
          {
            mlir::Diagnostic::operator<<<59ul>((v78 + 1), " is not int32. Currently only support indexing using int32");
          }

          goto LABEL_101;
        }

LABEL_70:
        v63 = *(*a3 + 8 * v14);
        v134 = 257;
        emitDiag(v63, 2, &v131, &v138);
        if (v138)
        {
          mlir::Diagnostic::operator<<<28ul>(&v138 + 8, "index argument at position ");
        }

        v64 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v138, &v129);
        if (*v64)
        {
          mlir::Diagnostic::operator<<<75ul>((v64 + 1), " is not int32 or BOOL. Currently only support indexing using int32 or BOOL");
        }

        goto LABEL_101;
      }

LABEL_15:
      v24 = mlir::IntegerType::get(*v8, 32, 1);
      v25 = mlir::ODIE::Compiler::castValueToElementType(v8, v17, v24);
      if ((v26 & 1) == 0)
      {
        v75 = *(*a3 + 8 * v129);
        v134 = 257;
        emitDiag(v75, 2, &v131, &v138);
        if (v138)
        {
          mlir::Diagnostic::operator<<<34ul>(&v138 + 8, "Failed to cast index at position ");
        }

        v76 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v138, &v129);
        if (*v76)
        {
          mlir::Diagnostic::operator<<<10ul>((v76 + 1), " to int32");
        }

        goto LABEL_101;
      }

      *v15 = v25;
      if (v18 <= v19[2])
      {
        v16 = v19[2];
      }

      else
      {
        v16 = v18;
      }

      ++v13;
      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v135, v25);
      goto LABEL_21;
    }

    if ((v114 & 1) == 0)
    {
      goto LABEL_97;
    }

    if (v21 != 1)
    {
      goto LABEL_70;
    }

    v112 = a2;
    v27 = 0;
    v28 = v19[1];
    v29 = v19[2];
    while ((v29 & ~(v29 >> 63)) != v27)
    {
      v30 = v11[v27];
      v31 = v28[v27++];
      if (v30 != v31)
      {
        v60 = *(*a3 + 8 * v14);
        v134 = 257;
        emitDiag(v60, 2, &v131, &v138);
        if (v138)
        {
          mlir::Diagnostic::operator<<<19ul>(&v138 + 8, "index at position ");
        }

        v61 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v138, &v129);
        v62 = v61;
        if (*v61)
        {
          mlir::Diagnostic::operator<<<47ul>((v61 + 1), " is a BOOLean index tensor. The shape of mask ");
        }

        mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(v62, v28, v29);
        if (*v62)
        {
          mlir::Diagnostic::operator<<<46ul>((v62 + 1), " does not match the shape of the base tensor ");
        }

        mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(v62, v110, v116);
        goto LABEL_101;
      }
    }

    v109 = a6;
    v131 = 0x8000000000000000;
    v132 = v29;
    v137 = 0;
    *&v138 = &v131;
    *(&v138 + 1) = 2;
    v130 = v123;
    v118 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v123 + 32), &v138, &v130, &v137);
    v32 = v8[4];
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(v8, *(**v32 + 32));
    *&v138 = v32;
    *(&v138 + 1) = v33;
    v139 = v141;
    v140 = 0x400000000;
    v142 = v144;
    v143 = 0x400000000;
    v145 = v147;
    v146 = 0x400000000;
    v148 = 4;
    v149 = &v151;
    v150 = 0x100000000;
    v152 = &v154;
    v153 = 0x100000000;
    v155 = 0;
    v156 = 0;
    v157 = &mlir::detail::TypeIDResolver<void,void>::id;
    v158 = 0;
    v159 = 0;
    mlir::ODIE::Compiler::CoreML::NonZeroOp::build(v8, &v138, v118, *v15);
    v34 = mlir::Operation::create(&v138);
    mlir::OpBuilder::insert(v8, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v138);
    if (v19[2] >= 1)
    {
      v108 = v13;
      v36 = 0;
      if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id)
      {
        v37 = v34;
      }

      else
      {
        v37 = 0;
      }

      v119 = (v37 - 16);
      do
      {
        LODWORD(v138) = v36;
        v38 = mlir::ODIE::Compiler::createTensorConstant<int>(v8, &v138, 1);
        v137 = 0x8000000000000000;
        *&v138 = &v137;
        *(&v138 + 1) = 1;
        v130 = 0;
        v131 = v123;
        v39 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v123 + 32), &v138, &v131, &v130);
        v40 = v8[4];
        v41 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(v8, *(**v40 + 32));
        *&v138 = v40;
        *(&v138 + 1) = v41;
        v139 = v141;
        v140 = 0x400000000;
        v142 = v144;
        v143 = 0x400000000;
        v145 = v147;
        v146 = 0x400000000;
        v148 = 4;
        v149 = &v151;
        v150 = 0x100000000;
        v152 = &v154;
        v153 = 0x100000000;
        v155 = 0;
        v156 = 0;
        v157 = &mlir::detail::TypeIDResolver<void,void>::id;
        v158 = 0;
        v159 = 0;
        mlir::ODIE::Compiler::CoreML::SelectOp::build(v8, &v138, v39, v119, Tensor, v38);
        v42 = mlir::Operation::create(&v138);
        mlir::OpBuilder::insert(v8, v42);
        v43 = *(*(v42 + 6) + 16);
        v44 = v42 - 16;
        mlir::OperationState::~OperationState(&v138);
        if (v18 <= 1)
        {
          v18 = 1;
        }

        if (v43 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
        {
          v45 = v44;
        }

        else
        {
          v45 = -16;
        }

        llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v135, v45);
        ++v36;
      }

      while (v36 < v19[2]);
      v13 = v108 + v36;
    }

    a6 = v109;
    a2 = v112;
    v16 = v18;
LABEL_21:
    ++v14;
    ++v15;
    ++v11;
    if (v15 == v125)
    {
      goto LABEL_46;
    }
  }

  v65 = v8[4];
  v134 = 257;
  emitDiag(v65, 2, &v131, &v138);
  if (v138)
  {
    mlir::Diagnostic::operator<<<74ul>(&v138 + 8, "Provide loc info for each index arg, or fill with operation loc otherwise");
  }

LABEL_101:
  *a6 = 0;
  *(a6 + 72) = 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v138);
LABEL_102:
  if (v135[0] != v136)
  {
    free(v135[0]);
  }

  v79 = *MEMORY[0x277D85DE8];
}

char *mlir::ODIE::Compiler::createTensorConstant<int>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v17[0] = a3;
    v7 = v17;
    v6 = 1;
  }

  v8 = mlir::IntegerType::get(*a1, 32, 1);
  *&v16 = v7;
  *(&v16 + 1) = v6;
  v14 = 0;
  v15 = v8;
  v15 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v8 + 32), &v16, &v15, &v14);
  v9 = mlir::TensorType::operator mlir::ShapedType(&v15);
  *&v16 = mlir::DenseIntOrFPElementsAttr::getRaw(v9, v10, a2, 4 * a3);
  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v16);
  v12 = *MEMORY[0x277D85DE8];
  return v11 - 16;
}

uint64_t mlir::InFlightDiagnostic::operator<<<llvm::ArrayRef<long long> &>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v7 = *a2;
    LODWORD(v18) = 2;
    v19 = v7;
    v8 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v18, 1);
    v9 = *(a1 + 24) + 24 * *(a1 + 32);
    v10 = *v8;
    *(v9 + 16) = *(v8 + 16);
    *v9 = v10;
    ++*(a1 + 32);
    if (a3 != 1)
    {
      v11 = a2 + 1;
      v12 = 8 * a3 - 8;
      do
      {
        v18 = ", ";
        v20 = 259;
        mlir::Diagnostic::operator<<(a1 + 8, &v18);
        v13 = *v11++;
        LODWORD(v18) = 2;
        v19 = v13;
        v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 24, &v18, 1);
        v15 = *(a1 + 24) + 24 * *(a1 + 32);
        v16 = *v14;
        *(v15 + 16) = *(v14 + 16);
        *v15 = v16;
        ++*(a1 + 32);
        v12 -= 8;
      }

      while (v12);
    }
  }

  return a1;
}

uint64_t mlir::ODIE::Compiler::buildGatherNdFromStackedIndices(mlir::OpBuilder *a1, uint64_t *a2, uint64_t *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  *&__src = 0;
  v48 = v50;
  v49 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v48, &__src, &__src + 8);
  if (v7)
  {
    v9 = a3;
    v10 = (*(a2[1] + 8) & 0xFFFFFFFFFFFFFFF8);
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

    v15 = (*(v13 + 24))(v13, v10);
    *&__src = &v52;
    *(&__src + 1) = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&__src, v15, &v15[8 * v16]);
    llvm::SmallVectorImpl<long long>::operator=(&v48, &__src);
    if (__src != &v52)
    {
      free(__src);
    }

    (*(v13 + 24))(v13, v10);
    v14 = v17 - 1;
    a3 = v9;
  }

  else
  {
    v14 = 0;
  }

  v18 = *(v48 + v49 - 1);
  v19 = *(v8 + 8);
  v20 = *(v8 + 16) - v18 + v14;
  v45 = v47;
  v46 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v45, v20);
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = v45;
    v23 = v48;
    v24 = v19 - 8 * v14 + 8 * v18;
    do
    {
      if (v21 >= v14)
      {
        v25 = v24;
      }

      else
      {
        v25 = v23;
      }

      v22[v21++] = *v25;
      v24 += 8;
      ++v23;
    }

    while (v20 != v21);
  }

  if (v7)
  {
    v26 = v45;
    v27 = v46;
    v28 = *a3;
    v29 = (*(a3[1] + 8))();
    *&__src = v26;
    *(&__src + 1) = v27;
    v43 = 0;
    v44 = v29;
    v30 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v29 + 32), &__src, &v44, &v43);
    v31 = *(a1 + 4);
    v32 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(a1, *(**v31 + 32));
    *&__src = v31;
    *(&__src + 1) = v32;
    v52 = v54;
    v53 = 0x400000000;
    v55 = v57;
    v56 = 0x400000000;
    v58 = v60;
    v59 = 0x400000000;
    v61 = 4;
    v62 = &v64;
    v63 = 0x100000000;
    v65 = &v67;
    v66 = 0x100000000;
    v68 = 0;
    v69 = 0;
    v70 = &mlir::detail::TypeIDResolver<void,void>::id;
    v71 = 0;
    v72 = 0;
    mlir::ODIE::Compiler::CoreML::GatherNdOp::build(a1, &__src, v30, v6, v7);
    v33 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v33);
    v34 = *(*(v33 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    v35 = v34 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id ? v33 : 0;
    v6 = (v35 - 16);
    if (*a3 != v30)
    {
      v36 = *(a1 + 4);
      v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CastOp>(a1, *(**v36 + 32));
      *&__src = v36;
      *(&__src + 1) = v37;
      v52 = v54;
      v53 = 0x400000000;
      v55 = v57;
      v56 = 0x400000000;
      v58 = v60;
      v59 = 0x400000000;
      v61 = 4;
      v62 = &v64;
      v63 = 0x100000000;
      v65 = &v67;
      v66 = 0x100000000;
      v68 = 0;
      v69 = 0;
      v70 = &mlir::detail::TypeIDResolver<void,void>::id;
      v71 = 0;
      v72 = 0;
      mlir::ODIE::Compiler::CoreML::CastOp::build(a1, &__src, *a3, v6);
      v38 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v38);
      v39 = *(*(v38 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CastOp,void>::id)
      {
        v40 = v38;
      }

      else
      {
        v40 = 0;
      }

      v6 = (v40 - 16);
    }
  }

  if (v45 != v47)
  {
    free(v45);
  }

  if (v48 != v50)
  {
    free(v48);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v6;
}

char *mlir::ODIE::Compiler::buildScatterNdFromStackedIndices(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v5 = a2[1];
  v7 = *(*a2 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 16);
  v53 = *(v7 + 8);
  *&__src = 0;
  v63 = v65;
  v64 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v63, &__src, &__src + 8);
  if (v5)
  {
    v9 = (*(v5 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = *v9;
      v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
    }

    else
    {
      v12 = 0;
    }

    v14 = (*(v12 + 24))(v12, v9);
    LODWORD(v64) = 0;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v63, v14, &v14[8 * v15]);
    (*(v12 + 24))(v12, v9);
    v13 = v16 - 1;
  }

  else
  {
    v13 = 0;
  }

  v17 = *(v63 + v64 - 1);
  v18 = v8 - v17 + v13;
  v61[0] = v62;
  v61[1] = 0x600000000;
  if (v5)
  {
    SliceOfTensorShape = mlir::ODIE::Compiler::getSliceOfTensorShape(a1, v5, 0, v13);
    llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v61, SliceOfTensorShape);
  }

  v52 = v6;
  v20 = mlir::ODIE::Compiler::getSliceOfTensorShape(a1, v6, v17, v8);
  llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v61, v20);
  LODWORD(__src) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1);
  v88[0] = v8 - v17 + v13;
  v21 = mlir::IntegerType::get(*a1, 32, 1);
  *&__src = v88;
  *(&__src + 1) = 1;
  v58 = v21;
  v56[0] = 0;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v21 + 32), &__src, &v58, v56);
  v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, a1[4], &__src, &Tensor, v61);
  v58 = v60;
  v59 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v58, v18);
  if (v18 >= 1)
  {
    v23 = 0;
    v24 = v58;
    v25 = v63;
    v26 = v53 - 8 * v13 + 8 * v17;
    do
    {
      if (v23 >= v13)
      {
        v27 = v26;
      }

      else
      {
        v27 = v25;
      }

      v24[v23++] = *v27;
      v26 += 8;
      ++v25;
    }

    while (v18 != v23);
  }

  v28 = v58;
  v29 = v59;
  v30 = (*(*a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v31 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v30);
  v33 = v31;
  if (v31)
  {
    v31 = (*(v32 + 8))(v32, v31);
  }

  if (v33)
  {
    v34 = v31;
  }

  else
  {
    v34 = v30;
  }

  *&__src = v28;
  *(&__src + 1) = v29;
  v56[0] = v34;
  v88[0] = 0;
  v35 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v34 + 32), &__src, v56, v88);
  v36 = a1[4];
  v37 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a1, *(**v36 + 32));
  *&__src = v36;
  *(&__src + 1) = v37;
  v67 = v69;
  v68 = 0x400000000;
  v70 = v72;
  v71 = 0x400000000;
  v73 = v75;
  v74 = 0x400000000;
  v76 = 4;
  v77 = &v79;
  v78 = 0x100000000;
  v80 = &v82;
  v81 = 0x100000000;
  v84 = 0;
  v83 = 0;
  v85 = &mlir::detail::TypeIDResolver<void,void>::id;
  v86 = 0;
  v87 = 0;
  mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a1, &__src, v35, *a3, (v22 - 16));
  v38 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(&__src);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (v5)
  {
    v41 = a1[4];
    v42 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id, *(**v41 + 32));
    if ((v43 & 1) == 0)
    {
      v57 = 1283;
      v56[2] = "coreml.scatter_nd";
      v56[3] = 17;
      v89 = 259;
      llvm::operator+(v56, v88, &__src);
      llvm::report_fatal_error(&__src, 1);
    }

    *&__src = v41;
    *(&__src + 1) = v42;
    v67 = v69;
    v68 = 0x400000000;
    v70 = v72;
    v71 = 0x400000000;
    v73 = v75;
    v74 = 0x400000000;
    v76 = 4;
    v77 = &v79;
    v78 = 0x100000000;
    v80 = &v82;
    v81 = 0x100000000;
    v84 = 0;
    v83 = 0;
    v85 = &mlir::detail::TypeIDResolver<void,void>::id;
    v86 = 0;
    v87 = 0;
    mlir::ODIE::Compiler::CoreML::ScatterNdOp::build(a1, &__src, v7, v52, v5, (v40 - 16));
    v44 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v44);
    v45 = *(*(v44 + 6) + 16);
    mlir::OperationState::~OperationState(&__src);
    if (v45 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterNdOp,void>::id)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46 - 16;
    *&__src = v46 - 16;
    v49 = a2[2];
    v48 = a2 + 2;
    if (v49)
    {
      v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, v48) - 16;
    }
  }

  else
  {
    v47 = v40 - 16;
  }

  if (v58 != v60)
  {
    free(v58);
  }

  if (v61[0] != v62)
  {
    free(v61[0]);
  }

  if (v63 != v65)
  {
    free(v63);
  }

  v50 = *MEMORY[0x277D85DE8];
  return v47;
}

char *mlir::ODIE::Compiler::makeNElementTensor(uint64_t *a1, int a2, uint64_t a3, int a4)
{
  v4 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 8);
  v6 = (v5 & 0xFFFFFFFFFFFFFFF8);
  if (*((v5 & 0xFFFFFFFFFFFFFFF8) + 16) != 1)
  {
    if ((~v5 & 7) != 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
      if (!v15)
      {
LABEL_17:
        v16 = (a3 + 32);
        goto LABEL_33;
      }
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }

    v16 = (v15 + 24);
LABEL_33:
    v23 = *v16;
    v37 = 257;
    emitDiag(v23, 2, v36, &v41);
    if (v41)
    {
      mlir::Diagnostic::operator<<<16ul>(&v42, "expect 1D input");
    }

    goto LABEL_39;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id || (v7 = v6[1], v8 = *v7, *v7 == 0x8000000000000000))
  {
    if ((~v5 & 7) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
      if (!v11)
      {
LABEL_10:
        v12 = (a3 + 32);
        goto LABEL_37;
      }
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }

    v12 = (v11 + 24);
LABEL_37:
    v24 = *v12;
    v37 = 257;
    emitDiag(v24, 2, v36, &v41);
    if (v41)
    {
      mlir::Diagnostic::operator<<<20ul>(&v42, "expect static input");
    }

LABEL_39:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
    v4 = 0;
    goto LABEL_40;
  }

  if (v8 == a2)
  {
    goto LABEL_40;
  }

  v17 = a2;
  if (v8 > a2 || v8 <= 0)
  {
    if ((~v5 & 7) != 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
      goto LABEL_30;
    }

    v20 = *(v19 + 8) & 7;
    if (v20 == 6)
    {
      v21 = v19 + 24 * *(v19 + 16) + 120;
      if (!v21)
      {
LABEL_30:
        v22 = (a3 + 32);
LABEL_46:
        v31 = *v22;
        v37 = 257;
        emitDiag(v31, 2, v36, &v41);
        if (v41)
        {
          mlir::Diagnostic::operator<<<53ul>(&v42, "expect input to have at least 1 element and at most ");
          if (v41)
          {
            LODWORD(v36[0]) = 2;
            *(&v36[0] + 1) = v17;
            v32 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v44, v36, 1);
            v33 = v44 + 24 * v45;
            v34 = *v32;
            *(v33 + 16) = *(v32 + 16);
            *v33 = v34;
            ++v45;
            if (v41)
            {
              mlir::Diagnostic::operator<<<10ul>(&v42, " elements");
            }
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v21 = v19 + 16 * v20 + 16;
    }

    v22 = (v21 + 24);
    goto LABEL_46;
  }

  v28 = a2 - *v7;
  v41 = &v43;
  v42 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v41, v28, a4);
  v29 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v41, v42);
  LODWORD(v36[0]) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v36, 1);
  v40 = v17;
  v30 = mlir::IntegerType::get(*a1, 32, 1);
  *&v36[0] = &v40;
  *(&v36[0] + 1) = 1;
  v38 = 0;
  v39[0] = v30;
  v38 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), v36, v39, &v38);
  v39[0] = v4;
  v39[1] = v29;
  *&v36[0] = v39;
  *(&v36[0] + 1) = 2;
  v4 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, a1[4], &v38, &Tensor, v36) - 16;
  if (v41 != &v43)
  {
    free(v41);
  }

LABEL_40:
  v25 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::ODIE::Compiler::replaceConv1dImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v74 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v50 = a2;
  v51 = "expects shaped type for convolution input";
  v55[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a2, &v51, v48);
  v51 = "expects shaped type for convolution input";
  v55[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(a3, &v51, v47);
  v16 = a1[4];
  TensorTypeByExpandingLastDim = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(v48[0], v48[1]);
  LODWORD(v51) = -1;
  v17 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v51, 1);
  v45 = v17;
  v18 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, a1[4], &TensorTypeByExpandingLastDim, &v50, &v45);
  v44 = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(v47[0], v47[1]);
  v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v44, &v49, &v45);
  NElementTensor = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a4, 1);
  if ((v21 & 1) == 0)
  {
    v42 = "failed to append 1 to strides";
    v43 = 259;
LABEL_14:
    emitDiag(v16, 2, &v42, &v51);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    result = 0;
    goto LABEL_15;
  }

  v22 = NElementTensor;
  v23 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a5, 0);
  if ((v24 & 1) == 0)
  {
    v38 = "failed to append 0 to padding";
LABEL_13:
    v42 = v38;
    v43 = 259;
    goto LABEL_14;
  }

  v25 = v23;
  v26 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, a6, 1);
  if ((v27 & 1) == 0)
  {
    v38 = "failed to append 1 to dilation";
    goto LABEL_13;
  }

  v41 = v26;
  v40 = mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(a9, a10);
  v28 = a1[4];
  v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(a1, *(**v28 + 32));
  v51 = v28;
  v52 = v29;
  v53 = v55;
  v54 = 0x400000000;
  v56 = v58;
  v57 = 0x400000000;
  v59 = v61;
  v60 = 0x400000000;
  v62 = 4;
  v63 = &v65;
  v64 = 0x100000000;
  v66 = &v68;
  v67 = 0x100000000;
  v69 = 0;
  v70 = 0;
  v71 = &mlir::detail::TypeIDResolver<void,void>::id;
  v72 = 0;
  v73 = 0;
  mlir::ODIE::Compiler::CoreML::Conv2dOp::build(a1, &v51, v40, (v18 - 16), (v19 - 16), v22, v25, v41, a7);
  v30 = mlir::Operation::create(&v51);
  mlir::OpBuilder::insert(a1, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v51);
  if (v31 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id)
  {
    v30 = 0;
  }

  v32 = a1[4];
  v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(a1, *(**v32 + 32));
  v51 = v32;
  v52 = v33;
  v53 = v55;
  v54 = 0x400000000;
  v56 = v58;
  v57 = 0x400000000;
  v59 = v61;
  v60 = 0x400000000;
  v62 = 4;
  v63 = &v65;
  v64 = 0x100000000;
  v66 = &v68;
  v67 = 0x100000000;
  v69 = 0;
  v70 = 0;
  v71 = &mlir::detail::TypeIDResolver<void,void>::id;
  v72 = 0;
  v73 = 0;
  mlir::ODIE::Compiler::CoreML::ShrinkDimsOp::build(a1, &v51, a9, (v30 - 16), v17);
  v34 = mlir::Operation::create(&v51);
  mlir::OpBuilder::insert(a1, v34);
  v35 = *(*(v34 + 6) + 16);
  v36 = v34 - 16;
  mlir::OperationState::~OperationState(&v51);
  if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id)
  {
    result = v36;
  }

  else
  {
    result = -16;
  }

LABEL_15:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::getTensorTypeByExpandingLastDim(uint64_t *a1, uint64_t a2)
{
  v2 = a1;
  v3 = (*(a2 + 24))(a2, a1);
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(&__src, v3, v3 + 8 * v4);
  v5 = v22;
  if (v22 >= v23)
  {
    v7 = __src;
    v8 = v22 - __src;
    v9 = (v22 - __src) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<long long>::__throw_length_error[abi:nn200100]();
    }

    v11 = v23 - __src;
    if ((v23 - __src) >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<long long>>(&__src, v13);
    }

    *(8 * v9) = 1;
    v6 = 8 * v9 + 8;
    memcpy(0, v7, v8);
    v14 = __src;
    __src = 0;
    v22 = v6;
    v23 = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v22 = 1;
    v6 = (v5 + 8);
  }

  v22 = v6;
  v15 = __src;
  v16 = (v6 - __src) >> 3;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  if (v17)
  {
    v2 = (*(v18 + 8))(v18, v17);
  }

  *&v26 = v15;
  *(&v26 + 1) = v16;
  v24 = 0;
  v25 = v2;
  v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v2 + 32), &v26, &v25, &v24);
  if (__src)
  {
    v22 = __src;
    operator delete(__src);
  }

  return v19;
}

char *mlir::ODIE::Compiler::replacePostConvBiasImpl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44[6] = *MEMORY[0x277D85DE8];
  v29 = a3;
  v30 = a2;
  v28[0] = a4;
  v28[1] = a5;
  v9 = (*(a5 + 24))(a5, a4);
  v10 = a1[4];
  v42 = v44;
  v43 = 0xC00000000;
  v39 = v41;
  v40 = 0x600000000;
  if (v8 == 3)
  {
    v14 = *(v9 + 8);
    LODWORD(__src) = 1;
    *(&__src + 4) = v14 | 0x100000000;
    LODWORD(v43) = 0;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v42, &__src, &__src + 12);
    v15 = *(v9 + 8);
    *&__src = 1;
    *(&__src + 1) = v15;
    v37.i64[0] = 1;
    LODWORD(v40) = 0;
    v13 = &v37.i8[8];
  }

  else
  {
    if (v8 != 4)
    {
      v33[0] = "Can't reshape convolution bias, input is not 3D/4D";
      v34[8] = 259;
      emitDiag(v10, 2, v33, &__src);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v22 = 0;
      goto LABEL_19;
    }

    v11 = *(v9 + 8);
    LODWORD(__src) = 1;
    DWORD1(__src) = v11;
    *(&__src + 1) = 0x100000001;
    LODWORD(v43) = 0;
    llvm::SmallVectorImpl<int>::append<int const*,void>(&v42, &__src, &v37);
    v12 = *(v9 + 8);
    *&__src = 1;
    *(&__src + 1) = v12;
    v37 = vdupq_n_s64(1uLL);
    LODWORD(v40) = 0;
    v13 = &v38;
  }

  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v39, &__src, v13);
  v27 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v42, v43);
  v16 = v39;
  v17 = v40;
  v18 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v18);
  v21 = v19;
  if (v19)
  {
    v19 = (*(v20 + 8))(v20, v19);
  }

  if (v21)
  {
    v23 = v19;
  }

  else
  {
    v23 = v18;
  }

  *&__src = v16;
  *(&__src + 1) = v17;
  v33[0] = v23;
  v31[0] = 0;
  *&__src = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v23 + 32), &__src, v33, v31);
  *&__src = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v29, &v27) - 16;
  *(&__src + 1) = a2;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v33);
  if (v35)
  {
    v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v28, &v30, v33[0]) - 16;
  }

  else
  {
    v24 = a1[4];
    v32 = 257;
    emitDiag(v24, 2, v31, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<47ul>(&__src + 8, "unable to broadcast reshapedBias to ConvResult");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v22 = 0;
  }

  if (v35 == 1 && v33[0] != v34)
  {
    free(v33[0]);
  }

LABEL_19:
  if (v39 != v41)
  {
    free(v39);
  }

  if (v42 != v44)
  {
    free(v42);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t mlir::ODIE::Compiler::createCoreMLResizeByScaleOp(uint64_t *a1, uint64_t *a2, uint64_t *a3, char **a4, uint64_t *a5, unsigned int a6, unsigned int a7, char a8, uint64_t a9, uint64_t a10)
{
  v129 = *MEMORY[0x277D85DE8];
  v18 = *a3;
  v101 = 1283;
  v98 = "Input to ";
  *(&v99 + 1) = a9;
  v100 = a10;
  *&v107 = &v98;
  v108 = " must be a shaped ranked tensor";
  LOWORD(v110[0]) = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v18, &v107, &v88);
  if (v90 != 1)
  {
LABEL_82:
    v77 = 0;
    goto LABEL_83;
  }

  v83 = a8;
  v84 = a7;
  v85 = a6;
  v19 = v88;
  v20 = v89;
  (*(v89 + 24))(v89, v88);
  v82 = v21;
  v86 = a1[4];
  (*(v20 + 24))(v20, v19);
  v23 = v22;
  v24 = *a4;
  v25 = *a5;
  LODWORD(v107) = 1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v107, 1);
  v27 = *a5;
  if (*a4)
  {
    if (v27)
    {
      goto LABEL_12;
    }

    v28 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v24);
    if ((v29 & 1) == 0)
    {
      v101 = 257;
      v30 = v86;
      emitDiag(v86, 2, &v98, &v107);
      if (v107)
      {
        v31 = "Failed to cast scale_width to same type as scale_height";
LABEL_24:
        mlir::Diagnostic::operator<<<56ul>(&v107 + 8, v31);
        goto LABEL_25;
      }

      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (!v27)
  {
    LODWORD(v107) = 1;
    v24 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v107, 1);
    LODWORD(v107) = 1;
    v28 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v107, 1);
LABEL_11:
    v25 = v28;
    goto LABEL_12;
  }

  v32 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v25);
  if ((v33 & 1) == 0)
  {
    v101 = 257;
    v30 = v86;
    emitDiag(v86, 2, &v98, &v107);
    if (v107)
    {
      v31 = "Failed to cast scale_height to same type as scale_width";
      goto LABEL_24;
    }

LABEL_25:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v107);
LABEL_79:
    v101 = 257;
    emitDiag(v30, 2, &v98, &v107);
    if (v107)
    {
      mlir::Diagnostic::operator<<<60ul>(&v107 + 8, "Failed to create scales argument for coreml.resize_by_scale");
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v107);
    goto LABEL_82;
  }

  v24 = v32;
LABEL_12:
  v34 = *a4;
  *&v107 = "input height scale factor must be a ranked tensor";
  LOWORD(v110[0]) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v34, &v107, &v103);
  if (v105 != 1)
  {
LABEL_78:
    v30 = v86;
    goto LABEL_79;
  }

  if (*((*(v20 + 24))(v20, v19) + 8 * (v23 - 1)) != 0x8000000000000000 && *((*(v20 + 24))(v20, v19) + 8 * (v23 - 2)) != 0x8000000000000000)
  {
    v107 = 0uLL;
    v98 = &v107;
    v35 = (~*(v24 + 2) & 7) != 0 ? v24 : 0;
    if (v35)
    {
      v36 = *(v35 + 1) & 7;
      if (v36 == 6)
      {
        v37 = &v35[24 * *(v35 + 2)];
        v38 = (v37 + 120);
        if (v37 == -120)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v38 = &v35[16 * v36 + 16];
      }

      if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, v38))
      {
        v107 = 0uLL;
        v98 = &v107;
        v39 = (~*(v25 + 8) & 7) != 0 ? v25 : 0;
        if (v39)
        {
          v40 = *(v39 + 8) & 7;
          if (v40 == 6)
          {
            v41 = v39 + 24 * *(v39 + 16);
            v42 = v41 + 120;
            if (v41 == -120)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v42 = v39 + 16 * v40 + 16;
          }

          if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v98, v42))
          {
            goto LABEL_41;
          }

          if (*(*(*(v104 + 8))(v104, v103) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
          {
            mlir::ODIE::Compiler::extract1DIntVector<int>(v24, &v98);
            mlir::ODIE::Compiler::extract1DIntVector<int>(v25, &v93);
            if (v102)
            {
              if (v97)
              {
                ScalesVectorForResize = mlir::ODIE::Compiler::createScalesVectorForResizeOp<int>(a1, &v98, &v93, v23);
LABEL_62:
                v57 = ScalesVectorForResize;
                if (v97 == 1 && v93 != v95)
                {
                  free(v93);
                }

                if (v102 == 1 && v98 != &v99 + 8)
                {
                  free(v98);
                }

                goto LABEL_52;
              }

              goto LABEL_70;
            }
          }

          else
          {
            mlir::ODIE::Compiler::extract1DFloatVector<float>(v24, &v98);
            mlir::ODIE::Compiler::extract1DFloatVector<float>(v25, &v93);
            if (v102)
            {
              if (v97)
              {
                ScalesVectorForResize = mlir::ODIE::Compiler::createScalesVectorForResizeOp<float>(a1, &v98, &v93, v23);
                goto LABEL_62;
              }

LABEL_70:
              v79 = a1[4];
              v92 = 257;
              emitDiag(v79, 2, v91, &v107);
              if (v107)
              {
                mlir::Diagnostic::operator<<<44ul>(&v107 + 8, "Failed to extract scale_width as a constant");
              }

LABEL_72:
              mlir::InFlightDiagnostic::~InFlightDiagnostic(&v107);
              if (v97 == 1 && v93 != v95)
              {
                free(v93);
              }

              if (v102 == 1 && v98 != &v99 + 8)
              {
                free(v98);
              }

              goto LABEL_78;
            }
          }

          v78 = a1[4];
          v92 = 257;
          emitDiag(v78, 2, v91, &v107);
          if (v107)
          {
            mlir::Diagnostic::operator<<<45ul>(&v107 + 8, "Failed to extract scale_height as a constant");
          }

          goto LABEL_72;
        }
      }
    }
  }

LABEL_41:
  v44 = (*(v104 + 8))(v104, v103);
  LODWORD(v107) = 0;
  v45 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v107, 1);
  v98 = &v99 + 8;
  *&v99 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v98, ((v23 << 32) - 0x200000000) >> 32, 1);
  v46 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v98, v99);
  v47 = mlir::ODIE::Compiler::castValueToElementType(a1, v46, v44);
  v49 = v48;
  if (v48)
  {
    v50 = v47;
    v106 = v23;
    *&v107 = &v106;
    *(&v107 + 1) = 1;
    v93 = v44;
    v91[0] = 0;
    v51 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v44 + 32), &v107, &v93, v91);
    v93 = v50;
    v94 = v24;
    v95[0] = v25;
    v52 = a1[4];
    v53 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**v52 + 32));
    *&v107 = v52;
    *(&v107 + 1) = v53;
    v108 = v110;
    v109 = 0x400000000;
    v111 = v113;
    v112 = 0x400000000;
    v114 = v116;
    v115 = 0x400000000;
    v117 = 4;
    v118 = &v120;
    v119 = 0x100000000;
    v121 = &v123;
    v122 = 0x100000000;
    v125 = 0;
    v124 = 0;
    v126 = &mlir::detail::TypeIDResolver<void,void>::id;
    v127 = 0;
    v128 = 0;
    mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, &v107, v51, v45, &v93, 3);
    v54 = mlir::Operation::create(&v107);
    mlir::OpBuilder::insert(a1, v54);
    v55 = *(*(v54 + 6) + 16);
    v56 = v54 - 16;
    mlir::OperationState::~OperationState(&v107);
    if (v55 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
    {
      v57 = v56;
    }

    else
    {
      v57 = -16;
    }
  }

  else
  {
    v58 = a1[4];
    v96 = 257;
    emitDiag(v58, 2, &v93, &v107);
    if (v107)
    {
      mlir::Diagnostic::operator<<<32ul>(&v107 + 8, "Failed to cast int constant to ");
      if (v107)
      {
        LODWORD(v93) = 4;
        v94 = v44;
        v59 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v109, &v93, 1);
        v60 = v109 + 24 * v110[0];
        v61 = *v59;
        *(v60 + 16) = *(v59 + 16);
        *v60 = v61;
        ++v110[0];
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v107);
    v57 = 0;
  }

  v30 = v86;
  if (v98 != &v99 + 8)
  {
    free(v98);
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_52:
  v87 = v57;
  v98 = &v100;
  v99 = xmmword_25D0A0550;
  llvm::SmallVectorImpl<BOOL>::assign(&v98, v82, 0);
  v63 = v98;
  v62 = v99;
  *(v98 + v99 - 2) = 257;
  v103 = v62;
  v64 = mlir::IntegerType::get(*a1, 1, 0);
  *&v107 = &v103;
  *(&v107 + 1) = 1;
  v93 = v64;
  v91[0] = 0;
  v93 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v64 + 32), &v107, &v93, v91);
  v65 = mlir::TensorType::operator mlir::ShapedType(&v93);
  *&v107 = mlir::DenseElementsAttr::get(v65, v66, v63, v62);
  v67 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v107);
  LOBYTE(v107) = v83;
  v68 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v107, 1);
  v69 = mlir::ODIE::Compiler::CoreML::InterpolationModeAttr::get(*a1, v84);
  v70 = mlir::ODIE::Compiler::CoreML::SamplingModeAttr::get(*a1, v85);
  v71 = a1[4];
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp,void>::id, *(**v71 + 32));
  if ((v73 & 1) == 0)
  {
    v96 = 1283;
    v95[0] = "coreml.resize_by_scale";
    v95[1] = 22;
    v92 = 259;
    llvm::operator+(&v93, v91, &v107);
    llvm::report_fatal_error(&v107, 1);
  }

  *&v107 = v71;
  *(&v107 + 1) = v72;
  v108 = v110;
  v109 = 0x400000000;
  v111 = v113;
  v112 = 0x400000000;
  v114 = v116;
  v115 = 0x400000000;
  v117 = 4;
  v118 = &v120;
  v119 = 0x100000000;
  v121 = &v123;
  v122 = 0x100000000;
  v125 = 0;
  v124 = 0;
  v126 = &mlir::detail::TypeIDResolver<void,void>::id;
  v127 = 0;
  v128 = 0;
  mlir::ODIE::Compiler::CoreML::ResizeByScaleOp::build(a1, &v107, *a2, *a3, v87, (v67 - 16), v68, v69, v70);
  v74 = mlir::Operation::create(&v107);
  mlir::OpBuilder::insert(a1, v74);
  v75 = *(*(v74 + 6) + 16);
  v76 = v74 - 16;
  mlir::OperationState::~OperationState(&v107);
  if (v75 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ResizeByScaleOp,void>::id)
  {
    v77 = v76;
  }

  else
  {
    v77 = -16;
  }

  if (v98 != &v100)
  {
    free(v98);
  }

LABEL_83:
  v80 = *MEMORY[0x277D85DE8];
  return v77;
}

char *mlir::ODIE::Compiler::calculateScaleFromOutputSize(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned int a5)
{
  v62[8] = *MEMORY[0x277D85DE8];
  v6 = *a4;
  v54 = 0uLL;
  *&v51[0] = &v54;
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  v11 = *(v6 + 8) & 7;
  if (v11 == 6)
  {
    v12 = v6 + 24 * *(v6 + 16);
    v13 = v12 + 120;
    if (v12 == -120)
    {
LABEL_15:
      v32 = a1[4];
      v52 = 257;
      emitDiag(v32, 2, v51, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<42ul>(&v54 + 8, "Target output size must be a constant int");
      }

      goto LABEL_17;
    }
  }

  else
  {
    v13 = v6 + 16 * v11 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v51, v13))
  {
    goto LABEL_15;
  }

  v14 = *a3;
  if (*((*(a3[1] + 24))() + 8 * a5) == 0x8000000000000000)
  {
    v15 = mlir::IntegerType::get(*a1, 32, 1);
    LODWORD(v54) = a5;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v54, 1);
    LODWORD(v54) = 0;
    v17 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v54, 1);
    v18 = a1[4];
    v54 = 0uLL;
    *&v51[0] = v15;
    v49 = 0;
    v19 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v15 + 32), &v54, v51, &v49);
    v20 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v18 + 32));
    *&v54 = v18;
    *(&v54 + 1) = v20;
    v55[0] = &v56;
    v55[1] = 0x400000000;
    v57 = v59;
    v58 = 0x400000000;
    v59[4] = v60;
    v59[5] = 0x400000000;
    v60[8] = 4;
    v60[9] = v61;
    v60[10] = 0x100000000;
    v61[1] = v62;
    v61[2] = 0x100000000;
    v62[1] = 0;
    v62[2] = 0;
    v62[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v62[4] = 0;
    v62[6] = 0;
    mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v54, v19, *a2, v17, Tensor);
    v21 = mlir::Operation::create(&v54);
    mlir::OpBuilder::insert(a1, v21);
    v22 = *(*(v21 + 6) + 16);
    v23 = (v21 - 16);
    mlir::OperationState::~OperationState(&v54);
    if (v22 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
    {
      v23 = -16;
    }

    F32Type = mlir::Builder::getF32Type(a1);
    v49 = mlir::ODIE::Compiler::castValueToElementType(a1, v23, F32Type);
    v50 = v25;
    if (v25)
    {
      v26 = *a4;
      v27 = mlir::Builder::getF32Type(a1);
      v47 = mlir::ODIE::Compiler::castValueToElementType(a1, v26, v27);
      v48 = v28;
      if (v28)
      {
        v29 = a1[4];
        v30 = mlir::Builder::getF32Type(a1);
        v54 = 0uLL;
        *&v51[0] = v30;
        v53 = 0;
        *&v54 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v30 + 32), &v54, v51, &v53);
        v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v29, &v54, &v47, &v49) - 16;
LABEL_18:
        v33 = *MEMORY[0x277D85DE8];
        return v31;
      }

      v41 = a1[4];
      v52 = 257;
      emitDiag(v41, 2, v51, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<36ul>(&v54 + 8, "Failed to cast output size to float");
      }
    }

    else
    {
      v40 = a1[4];
      v52 = 257;
      emitDiag(v40, 2, v51, &v54);
      if (v54)
      {
        mlir::Diagnostic::operator<<<46ul>(&v54 + 8, "Failed to cast input shape select op to float");
      }
    }

LABEL_17:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v54);
    v31 = 0;
    goto LABEL_18;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(*a4, &v54);
  if (v57)
  {
    v35 = *v54;
    v36 = *a3;
    *&v53 = v35 / *((*(a3[1] + 24))() + 8 * a5);
    v37 = *(**a1 + 440);
    v51[0] = 0uLL;
    v49 = v37;
    v47 = 0;
    v49 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v37 + 32), v51, &v49, &v47);
    v38 = mlir::TensorType::operator mlir::ShapedType(&v49);
    *&v51[0] = mlir::DenseIntOrFPElementsAttr::getRaw(v38, v39, &v53, 4);
    v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], v51) - 16;
    if (v57 == 1 && v54 != v55)
    {
      free(v54);
    }

    goto LABEL_18;
  }

  v42 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(v42, v43, v44, v45, v46);
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::DivideOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::DivideOp,void>::id)
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

void std::__optional_storage_base<llvm::SmallVector<mlir::Value,6u>,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<llvm::SmallVector<mlir::Value,6u>,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {

      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
    }
  }

  else if (*(a1 + 64))
  {
    v3 = *a1;
    if (*a1 != a1 + 16)
    {
      free(v3);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = a1 + 16;
    *(a1 + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      llvm::SmallVectorImpl<mlir::Value>::operator=(a1, a2);
    }

    *(a1 + 64) = 1;
  }
}

uint64_t mlir::ODIE::Compiler::stackIndices(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v14[0]) = *((*(*a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v14, 1);
    v7 = a1[4];
    v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(a1, *(**v7 + 32));
    v14[0] = v7;
    v14[1] = v8;
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
    mlir::ODIE::Compiler::CoreML::StackOp::build(a1, v14, Tensor, a2 & 0xFFFFFFFFFFFFFFF9, a3);
    v9 = mlir::Operation::create(v14);
    mlir::OpBuilder::insert(a1, v9);
    v10 = *(*(v9 + 6) + 16);
    v11 = v9 - 16;
    mlir::OperationState::~OperationState(v14);
    if (v10 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
    {
      result = v11;
    }

    else
    {
      result = -16;
    }
  }

  else
  {
    result = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::TransposeOp,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v8 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::TransposeOp::build(a1, v13, *a3, *a4);
  v9 = mlir::Operation::create(v13);
  mlir::OpBuilder::insert(a1, v9);
  if (*(*(v9 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.stack";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::ODIE::Compiler::createScalesVectorForResizeOp<int>(uint64_t *a1, _DWORD **a2, _DWORD **a3, int a4)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v11 = v13;
  v12 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v11, a4, 1);
  v7 = v11;
  *(v11 + v12 - 2) = **a2;
  *&v7[4 * v12 - 4] = **a3;
  v8 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v7, v12);
  if (v11 != v13)
  {
    free(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

char *mlir::ODIE::Compiler::createScalesVectorForResizeOp<float>(uint64_t *a1, _DWORD **a2, _DWORD **a3, unsigned int a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  __b = v23;
  v22 = 12;
  if (a4 < 0xD)
  {
    if (a4)
    {
      memset_pattern16(v23, &unk_25D0A0910, 4 * a4);
    }

    v9 = v23;
  }

  else
  {
    v21 = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__b, v23, a4, 4);
    v9 = __b;
    memset_pattern16(__b, &unk_25D0A0910, 4 * v8);
  }

  v21 = a4;
  v10 = &v9[4 * a4];
  *(v10 - 2) = **a2;
  *(v10 - 1) = **a3;
  v24[0] = a4;
  v11 = *(**a1 + 440);
  *&v19 = v24;
  *(&v19 + 1) = 1;
  v17 = 0;
  v18 = v11;
  v18 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v11 + 32), &v19, &v18, &v17);
  v12 = mlir::TensorType::operator mlir::ShapedType(&v18);
  *&v19 = mlir::DenseIntOrFPElementsAttr::getRaw(v12, v13, v9, 4 * a4);
  v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::DenseElementsAttr>(a1, a1[4], &v19);
  if (__b != v23)
  {
    free(__b);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14 - 16;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.reduce_mean";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.sqrt";
    v6[3] = 11;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::MulOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.non_zero";
    v6[3] = 15;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::RangeOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RangeOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.range";
    v6[3] = 12;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v15, *a3, *a4, *a5 & 0xFFFFFFFFFFFFFFF9, a5[1]);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.gather_nd";
    v6[3] = 16;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v15, *a3, *a4, *a5 & 0xFFFFFFFFFFFFFFF9, *(a5 + 8));
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
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

char *mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v20[8] = *MEMORY[0x277D85DE8];
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**a2 + 32));
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
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, v15, *a3, *a4, *a5);
  v11 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert(a1, v11);
  if (*(*(v11 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
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

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.expand_dims";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::Conv2dOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::Conv2dOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.conv2d";
    v6[3] = 13;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.shrink_dims";
    v6[3] = 18;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

uint64_t mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(uint64_t a1, uint64_t *a2)
{
  result = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp,void>::id, a2);
  if ((v3 & 1) == 0)
  {
    v7 = 1283;
    v6[2] = "coreml.conv_transpose2d";
    v6[3] = 23;
    v5 = 259;
    llvm::operator+(v6, &v4, v8);
    llvm::report_fatal_error(v8, 1);
  }

  return result;
}

void mlir::ODIE::Compiler::ConvertCoreToSCFPass::~ConvertCoreToSCFPass(mlir::ODIE::Compiler::ConvertCoreToSCFPass *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::impl::ConvertCoreToSCFBase<mlir::ODIE::Compiler::ConvertCoreToSCFPass>::getDependentDialects(uint64_t a1, uint64_t a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::CoreML::CoreMLDialect>(a2);
  mlir::DialectRegistry::insert<mlir::scf::SCFDialect>(a2);

  return mlir::DialectRegistry::insert<mlir::tensor::TensorDialect>(a2);
}

void mlir::ODIE::Compiler::ConvertCoreToSCFPass::runOnOperation(mlir::ODIE::Compiler::ConvertCoreToSCFPass *this)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(***((*(this + 5) & 0xFFFFFFFFFFFFFFF8) + 24) + 32);
  __src = 0u;
  v4 = 0u;
  v2 = v1;
  v5 = v7;
  v6 = 0x600000000;
  v7[6] = 0;
  v7[7] = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 40;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 40;
  operator new();
}

void mlir::ODIE::Compiler::ConvertIfOpPattern::~ConvertIfOpPattern(mlir::ODIE::Compiler::ConvertIfOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::IfOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ConvertIfOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 24);
  v7 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(a3 + 40) & 6;
  if (v8 || !v7)
  {
    if (v8 == 2 && v7 != 0)
    {
      v7 = v7[3];
    }
  }

  else
  {
    v7 = *v7;
  }

  v10 = *(a2 + 24);
  v11 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a4 + 8, *(**v10 + 32));
  v24 = v10;
  v25 = v11;
  v26 = v28;
  v27 = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 4;
  v36 = &v38;
  v37 = 0x100000000;
  v39 = &v41;
  v40 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = &mlir::detail::TypeIDResolver<void,void>::id;
  v45 = 0;
  v46 = 0;
  mlir::tensor::ExtractOp::build(a4 + 8, &v24, v7, 0, 0);
  v12 = mlir::Operation::create(&v24);
  mlir::OpBuilder::insert((a4 + 8), v12);
  v13 = *(*(v12 + 6) + 16);
  mlir::OperationState::~OperationState(&v24);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 36);
  if (v16)
  {
    v17 = a2 - 16;
  }

  else
  {
    v17 = 0;
  }

  v21 = *(v14 + 9);
  v20 = (v14 - 16);
  v18 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::IfOp>(a4 + 8, *(**v15 + 32));
  v24 = v15;
  v25 = v18;
  v26 = v28;
  v27 = 0x400000000;
  v29 = v31;
  v30 = 0x400000000;
  v32 = v34;
  v33 = 0x400000000;
  v35 = 4;
  v36 = &v38;
  v37 = 0x100000000;
  v39 = &v41;
  v40 = 0x100000000;
  v42 = 0;
  v43 = 0;
  v44 = &mlir::detail::TypeIDResolver<void,void>::id;
  v45 = 0;
  v46 = 0;
  v22[0] = v17;
  v22[1] = 0;
  v22[2] = v17;
  v22[3] = v16;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v23, v22);
  if (v21)
  {
    v19 = v20;
  }

  else
  {
    v19 = 0;
  }

  mlir::scf::IfOp::build(a4 + 8, &v24, v23[0], v23[1], v19);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertIfOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertIfOpPattern]";
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

void mlir::ODIE::Compiler::ConvertWhileOpPattern::~ConvertWhileOpPattern(mlir::ODIE::Compiler::ConvertWhileOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::WhileOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void mlir::ODIE::Compiler::ConvertWhileOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[8] = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 24);
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 40);
  v9 = *(a3 + 48);
  v10 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::WhileOp>(a4 + 8, *(**v5 + 32));
  v13[0] = v5;
  v13[1] = v10;
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
  v11[0] = v7;
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v6;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v12, v11);
  mlir::scf::WhileOp::build(a4 + 8, v13, v12[0], v12[1], v8, v9, 0, 0);
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertWhileOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertWhileOpPattern]";
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

void mlir::ODIE::Compiler::ConvertConditionOpPattern::~ConvertConditionOpPattern(mlir::ODIE::Compiler::ConvertConditionOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 88))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 96))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3 & 0xFFFFFFFFFFFFFFF9;
  v16 = a4;
  result = (*(*a1 + 104))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = v4;
  v12 = 1;
  v5 = *(a2 + 44);
  v6 = v5 & 0x7FFFFF;
  if ((v5 & 0x7FFFFF) != 0)
  {
    v7 = ((a2 + 16 * ((v5 >> 23) & 1) + ((v5 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v13 = v7;
  v14 = v6;
  v15 = a3;
  v16 = a4;
  result = (*(*a1 + 112))(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v18[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v16);
  v8 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v8;
  v13 = *(a3 + 32);
  v14 = v16 & 0xFFFFFFFFFFFFFFF9;
  v15 = v17;
  v9 = (*(*a1 + 104))(a1, a2, v12, a4);
  if (v16 != v18)
  {
    free(v16);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::OpConversionPattern<mlir::ODIE::Compiler::CoreML::ConditionOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[6] = *MEMORY[0x277D85DE8];
  mlir::ConversionPattern::getOneToOneAdaptorOperands(a1, *(a3 + 40), *(a3 + 48), &v14);
  v8 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v8;
  v11 = *(a3 + 32);
  v12 = v14 & 0xFFFFFFFFFFFFFFF9;
  v13 = v15;
  (*(*a1 + 88))(a1, a2, v10, a4);
  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::ODIE::Compiler::ConvertConditionOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 24);
  v8 = *(a3 + 40);
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 6) != 0 || v9 == 0)
  {
    if ((*(a3 + 40) & 6) == 2 && v9 != 0)
    {
      v9 = v9[3];
    }
  }

  else
  {
    v9 = *v9;
  }

  v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::tensor::ExtractOp>(a4 + 8, *(**v7 + 32));
  v29 = v7;
  v30 = v12;
  v31 = v33;
  v32 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v40 = 4;
  v41 = &v43;
  v42 = 0x100000000;
  v44 = &v46;
  v45 = 0x100000000;
  v47 = 0;
  v48 = 0;
  v49 = &mlir::detail::TypeIDResolver<void,void>::id;
  v50 = 0;
  v51 = 0;
  mlir::tensor::ExtractOp::build(a4 + 8, &v29, v9, 0, 0);
  v13 = mlir::Operation::create(&v29);
  mlir::OpBuilder::insert((a4 + 8), v13);
  v14 = *(*(v13 + 6) + 16);
  mlir::OperationState::~OperationState(&v29);
  if (v14 == &mlir::detail::TypeIDResolver<mlir::tensor::ExtractOp,void>::id)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v15 + 9);
  v17 = v15 - 16;
  if (v16)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a3 + 48);
  v29 = *(a3 + 40);
  v30 = 1;
  v20 = mlir::ValueRange::offset_base(&v29, 1);
  v21 = *(a2 + 24);
  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::ConditionOp>(a4 + 8, *(**v21 + 32));
  v29 = v21;
  v30 = v22;
  v31 = v33;
  v32 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v37 = v39;
  v38 = 0x400000000;
  v40 = 4;
  v41 = &v43;
  v42 = 0x100000000;
  v44 = &v46;
  v45 = 0x100000000;
  v47 = 0;
  v48 = 0;
  v49 = &mlir::detail::TypeIDResolver<void,void>::id;
  v50 = 0;
  v51 = 0;
  v28 = v18;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, &v28, 0, &v28, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v31, v20, 0, v20, v19 - 1);
  v23 = mlir::Operation::create(&v29);
  mlir::OpBuilder::insert((a4 + 8), v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v29);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::scf::ConditionOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  (*(*a4 + 8))(a4, a2, v25);
  v26 = *MEMORY[0x277D85DE8];
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertConditionOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertConditionOpPattern]";
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

void mlir::ODIE::Compiler::ConvertYieldOpPattern::~ConvertYieldOpPattern(mlir::ODIE::Compiler::ConvertYieldOpPattern *this)
{
  mlir::RewritePattern::~RewritePattern(this);

  JUMPOUT(0x25F891040);
}

uint64_t mlir::ODIE::Compiler::ConvertYieldOpPattern::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v8 = *(a2 + 24);
  v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::scf::YieldOp>(a4 + 8, *(**v8 + 32));
  v15[0] = v8;
  v15[1] = v9;
  v16[0] = v17;
  v16[1] = 0x400000000;
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
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(v16, v6, 0, v6, v7);
  v10 = mlir::Operation::create(v15);
  mlir::OpBuilder::insert((a4 + 8), v10);
  v11 = *(*(v10 + 6) + 16);
  mlir::OperationState::~OperationState(v15);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  (*(*a4 + 8))(a4, a2, v12);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ConvertYieldOpPattern>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ConvertYieldOpPattern]";
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

void mlir::ODIE::Compiler::CoreToSCFConversionTarget::~CoreToSCFConversionTarget(mlir::ODIE::Compiler::CoreToSCFConversionTarget *this)
{
  mlir::ConversionTarget::~ConversionTarget(this);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler6CoreML7YieldOpEZNS6_25CoreToSCFConversionTargetC1ERNS2_11MLIRContextEEUlS8_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSE_EUlSG_E_NS_9allocatorISK_EEFNS_8optionalIbEESG_EE7__cloneEPNS0_6__baseISP_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA1380;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4ODIE8Compiler6CoreML7YieldOpEZNS6_25CoreToSCFConversionTargetC1ERNS2_11MLIRContextEEUlS8_E_EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_PNS2_9OperationEEEvE4typeEOSE_EUlSG_E_NS_9allocatorISK_EEFNS_8optionalIbEESG_EEclEOSG_(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*((*(*(*a2 + 16) + 24) & 0xFFFFFFFFFFFFFFF8) + 16) + 48) + 16);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id || v2 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
  {
    return 256;
  }

  else
  {
    return 257;
  }
}

uint64_t mlir::ODIE::Compiler::ConvertExecToODIX::runOnOperation(mlir::ODIE::Compiler::ConvertExecToODIX *this, mlir::Operation *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  v4 = *(***(v3 + 3) + 32);
  result = mlir::ODIE::Compiler::getOpAttrs(v3, a2);
  if (v6)
  {
    mlir::Operation::setAttrs(v3, result);
    mlir::SymbolTable::SymbolTable(v9, v3, v7);
    v9[5] = 0;
    v9[6] = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x1000000000;
    __src = 0u;
    v17 = 0u;
    v15 = v4;
    v18 = v20;
    v19 = 0x600000000;
    v20[7] = 0;
    v20[6] = 0;
    v21 = 0;
    v23 = 0;
    v22 = 0;
    v24 = 0x2800000000;
    v25 = 0;
    v26 = 0;
    v27 = 0x2800000000;
    operator new();
  }

  *(this + 5) |= 4uLL;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::ODIE::Compiler::getOpAttrs(mlir::ODIE::Compiler *this, mlir::Operation *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v5 = *(AttrDictionary + 8);
  v4 = *(AttrDictionary + 16);
  v49 = v51;
  v50 = 0x400000000;
  v52 = 0;
  dictionaryAttrSort<false>(v5, v4, &v49);
  v52 = 4;
  v41 = this;
  v6 = *(this + 6);
  v7 = *(v6 + 104);
  if (v7)
  {
    v8 = *(v6 + 96);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      mlir::NamedAttrList::erase(&v49, v10);
      v9 -= 8;
    }

    while (v9);
  }

  v11 = v49;
  if (v50)
  {
    v12 = &v49[v50];
    do
    {
      v13 = *(v11 + 1);
      v14 = *(*v11 + 16);
      v15 = *(*v11 + 24);
      v16 = *v13;
      v17 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
      if (mlir::detail::InterfaceMap::lookup(v16 + 8, v17))
      {
        v18 = *v13;
        v19 = mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
        if (v13)
        {
          v21 = (*v20)(v20, v13);
          mlir::NamedAttrList::set(&v49, v14, v15, v21);
        }
      }

      v22 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,llvm::StringRef>(&v49, v14, v15);
      if (v23)
      {
        v24 = *(v22 + 8);
      }

      else
      {
        v24 = 0;
      }

      v25 = *(*v24 + 136);
      if (v25 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id && v25 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::EnumAttr,void>::id)
      {
        v42 = "attribute not supported for ODIX serialization: ";
        v43 = 259;
        mlir::Operation::emitWarning(v41, &v42, v46);
        if (v46[0])
        {
          v44 = 0;
          v45 = v24;
          v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v47, &v44, 1);
          v35 = v47 + 24 * v48;
          v36 = *v34;
          *(v35 + 16) = *(v34 + 16);
          *v35 = v36;
          ++v48;
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(v46);
        mlir::NamedAttrList::erase(&v49, v14, v15);
      }

      ++v11;
    }

    while (v11 != v12);
    v11 = v49;
    v37 = v50;
  }

  else
  {
    v37 = 0;
  }

  v38 = mlir::DictionaryAttr::get(*(***(v41 + 3) + 32), v11, v37);
  if (v49 != v51)
  {
    free(v49);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

void mlir::ODIE::Compiler::ConvertExecToODIX::~ConvertExecToODIX(mlir::ODIE::Compiler::ConvertExecToODIX *this)
{
  mlir::Pass::~Pass(this);

  JUMPOUT(0x25F891040);
}

void mlir::ODIE::Compiler::ConvertExecToODIX::getDependentDialects(mlir::ODIE::Compiler::ConvertExecToODIX *this, mlir::DialectRegistry *a2)
{
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::ODIX::ODIXDialect>(a2);
  mlir::DialectRegistry::insert<mlir::ODIE::Compiler::Exec::ExecDialect>(a2);
  mlir::DialectRegistry::insert<mlir::cf::ControlFlowDialect>(a2);
  mlir::ODIE::Compiler::registerODIXSerializationInterfaceModels(a2, v3);
}

uint64_t mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID()
{
  v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
  {
    v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>();
      mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = &llvm::getTypeName<mlir::SideEffects::AutomaticAllocationScopeResource>(void)::Name;
    }
  }

  return v0[269];
}

uint64_t llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>()
{
  {
    llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>();
    unk_27FC1B880 = v1;
  }

  return llvm::getTypeName<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::ODIE::Compiler::ODIX::ODIXSerializableAttr]";
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

void mlir::ODIE::Compiler::ODIXRegisterTypeConverter::~ODIXRegisterTypeConverter(mlir::ODIE::Compiler::ODIXRegisterTypeConverter *this)
{
  mlir::TypeConverter::~TypeConverter(this);

  JUMPOUT(0x25F891040);
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler25ODIXRegisterTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286EA14A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_4ODIE8Compiler25ODIXRegisterTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_EclEOS5_SL_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**(**v3 + 32) + 384);
    v9 = &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ODIX::RegisterType,void>::id;
    v6 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v5 + 232), &v9);
    if (v6)
    {
      llvm::SmallVectorTemplateBase<mlir::Type,true>::push_back(a3, v6);
    }

    LODWORD(v3) = v6 != 0;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v3 | (v7 << 8);
}