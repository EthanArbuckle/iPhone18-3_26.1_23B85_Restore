BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v50 = 257;
    emitDiag(v27, 2, v48, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v53, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v50 = 261;
    v48[0] = v5;
    v48[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v53, v48);
LABEL_24:
    v10 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_25;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v42);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v40);
  v10 = 0;
  if (v43 != 1 || (v41 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v56 = 1283;
  __src = "expected ranked tensor output from op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v37);
  if (v39 != 1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v14 = (*(v38 + 8))(v38, v37);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v30 = *(a2 + 24);
    v50 = 257;
    emitDiag(v30, 2, v48, &__src);
    v50 = 1283;
    v48[0] = "expect output element type to be BOOLean for op ";
    v49[0] = v5;
    v49[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v36[0] = a1;
  v36[1] = &v44;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v8, v42[0], v42[1]);
  v17 = v16;
  v35 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::AndOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v9, v40[0], v40[1]);
  v10 = 0;
  v33 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v53 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
    if (v51)
    {
      v21 = *(v48[0] + 1);
      v34 = *v48[0];
      v32 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AndOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v37, &v34, &v32);
      v23 = *(v44 + 9);
      v24 = (v44 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v45 = v24;
      v46 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v53 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v45, &__src);
      mlir::Operation::erase(v44);
      v10 = 1;
    }

    else
    {
      v31 = *(v44 + 3);
      v47 = 257;
      emitDiag(v31, 2, &v45, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v53, "failed to broadcast inputs to ");
        if (__src)
        {
          v47 = 261;
          v45 = v5;
          v46 = v4;
          mlir::Diagnostic::operator<<(&v53, &v45);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v53, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v53, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v53, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v53, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v57 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v51 == 1 && v48[0] != v49)
    {
      free(v48[0]);
    }
  }

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceLogicalNot(uint64_t *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v24 = "expected ranked tensor input to logical_not op";
  v26 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v24, v21);
  if (v21[16] != 1)
  {
    goto LABEL_15;
  }

  v5 = *(a2 + 9) ? (a2 - 2) : 0;
  v6 = *(v5 + 8);
  v7 = a2[3];
  v24 = "expected ranked tensor output from logical_not op";
  v26 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v24, &v18);
  if (v20 != 1)
  {
    goto LABEL_15;
  }

  v8 = (*(v19 + 8))(v19, v18);
  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v8[2] & 0x3FFFFFFF) == 1)
  {
    v24 = mlir::ODIE::Compiler::negateValue(a1, v4);
    v25[0] = v9;
    if (v9)
    {
      v10 = *(a2 + 9);
      if (v10)
      {
        v11 = (a2 - 2);
      }

      else
      {
        v11 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v10, &v24, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v13 = *a2;
        v12 = a2[1];
        *v12 = *a2;
        *(v13 + 8) = v12;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v14 = 1;
      goto LABEL_19;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_19;
  }

  v15 = a2[3];
  v23 = 257;
  emitDiag(v15, 2, v22, &v24);
  if (v24)
  {
    mlir::Diagnostic::operator<<<56ul>(v25, "expect output element type of logical_not to be BOOLean");
  }

  v14 = (v27 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v24);
LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v50 = 257;
    emitDiag(v27, 2, v48, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v53, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v50 = 261;
    v48[0] = v5;
    v48[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v53, v48);
LABEL_24:
    v10 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_25;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v42);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v40);
  v10 = 0;
  if (v43 != 1 || (v41 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v56 = 1283;
  __src = "expected ranked tensor output from op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v37);
  if (v39 != 1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v14 = (*(v38 + 8))(v38, v37);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v30 = *(a2 + 24);
    v50 = 257;
    emitDiag(v30, 2, v48, &__src);
    v50 = 1283;
    v48[0] = "expect output element type to be BOOLean for op ";
    v49[0] = v5;
    v49[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v36[0] = a1;
  v36[1] = &v44;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v8, v42[0], v42[1]);
  v17 = v16;
  v35 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::OrOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v9, v40[0], v40[1]);
  v10 = 0;
  v33 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v53 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
    if (v51)
    {
      v21 = *(v48[0] + 1);
      v34 = *v48[0];
      v32 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v37, &v34, &v32);
      v23 = *(v44 + 9);
      v24 = (v44 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v45 = v24;
      v46 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v53 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v45, &__src);
      mlir::Operation::erase(v44);
      v10 = 1;
    }

    else
    {
      v31 = *(v44 + 3);
      v47 = 257;
      emitDiag(v31, 2, &v45, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v53, "failed to broadcast inputs to ");
        if (__src)
        {
          v47 = 261;
          v45 = v5;
          v46 = v4;
          mlir::Diagnostic::operator<<(&v53, &v45);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v53, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v53, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v53, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v53, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v57 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v51 == 1 && v48[0] != v49)
    {
      free(v48[0]);
    }
  }

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v3 = *(*(a2 + 48) + 8);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v27 = *(a2 + 24);
    v50 = 257;
    emitDiag(v27, 2, v48, &__src);
    if (!__src)
    {
      goto LABEL_24;
    }

    mlir::Diagnostic::operator<<<34ul>(&v53, "expect 2 inputs and 1 output for ");
    if (!__src)
    {
      goto LABEL_24;
    }

    v50 = 261;
    v48[0] = v5;
    v48[1] = v4;
LABEL_23:
    mlir::Diagnostic::operator<<(&v53, v48);
LABEL_24:
    v10 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_25;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, v42);
  v56 = 1283;
  __src = "expected ranked tensor input to op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, v40);
  v10 = 0;
  if (v43 != 1 || (v41 & 1) == 0)
  {
    goto LABEL_25;
  }

  if (*(a2 + 36))
  {
    v11 = a2 - 16;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v11 + 8);
  v13 = *(a2 + 24);
  v56 = 1283;
  __src = "expected ranked tensor output from op ";
  v54 = v5;
  v55 = v4;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, &__src, &v37);
  if (v39 != 1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v14 = (*(v38 + 8))(v38, v37);
  if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v14[2] & 0x3FFFFFFF) != 1)
  {
    v30 = *(a2 + 24);
    v50 = 257;
    emitDiag(v30, 2, v48, &__src);
    v50 = 1283;
    v48[0] = "expect output element type to be BOOLean for op ";
    v49[0] = v5;
    v49[1] = v4;
    if (!__src)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v36[0] = a1;
  v36[1] = &v44;
  v15 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v8, v42[0], v42[1]);
  v17 = v16;
  v35 = v16;
  v18 = replaceBinaryLogicalOp<mlir::ODIE::Compiler::CoreML::XorOp>(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::{lambda(mlir::Value,mlir::ShapedType)#1}::operator()(v36, v9, v40[0], v40[1]);
  v10 = 0;
  v33 = v19;
  if (v17 & 1) != 0 && (v19)
  {
    v20 = v18;
    __src = v15;
    v53 = v18;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
    if (v51)
    {
      v21 = *(v48[0] + 1);
      v34 = *v48[0];
      v32 = v21;
      v22 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::XorOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v37, &v34, &v32);
      v23 = *(v44 + 9);
      v24 = (v44 - 16);
      if (!v23)
      {
        v24 = 0;
      }

      v45 = v24;
      v46 = v23;
      v25 = *(v22 + 9);
      v26 = (v22 - 16);
      if (!v25)
      {
        v26 = 0;
      }

      __src = v26;
      v53 = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v45, &__src);
      mlir::Operation::erase(v44);
      v10 = 1;
    }

    else
    {
      v31 = *(v44 + 3);
      v47 = 257;
      emitDiag(v31, 2, &v45, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<31ul>(&v53, "failed to broadcast inputs to ");
        if (__src)
        {
          v47 = 261;
          v45 = v5;
          v46 = v4;
          mlir::Diagnostic::operator<<(&v53, &v45);
          if (__src)
          {
            mlir::Diagnostic::operator<<<29ul>(&v53, " to a common shape. Inputs: ");
            if (__src)
            {
              mlir::Diagnostic::operator<<(&v53, v15);
              if (__src)
              {
                mlir::Diagnostic::operator<<<6ul>(&v53, " and ");
                if (__src)
                {
                  mlir::Diagnostic::operator<<(&v53, v20);
                }
              }
            }
          }
        }
      }

      v10 = (v57 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v51 == 1 && v48[0] != v49)
    {
      free(v48[0]);
    }
  }

LABEL_25:
  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::meanDimOpName)>(uint64_t *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), v4 > 3) || (v4 ? (v5 = *(a2 + 36) == 1) : (v5 = 0), !v5))
  {
    v58 = 257;
    emitDiag(v2, 2, &v54, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<37ul>(&v50, "expects 1-3 inputs and 1 output for ");
    }

    v54 = "mean.dim";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v49, &v54) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
    goto LABEL_11;
  }

  v11 = *(a2 + 72);
  v12 = v11[3];
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[7];
    if (v4 == 3)
    {
      v14 = v11[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v49) = 0;
  v14 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v49, 1);
LABEL_17:
  v39 = v14;
  getReduceResultType(v37, a2);
  if ((v38 & 1) == 0)
  {
    v58 = 257;
    emitDiag(v2, 2, &v54, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<42ul>(&v50, "unable to figure out the result type for ");
      if (v49)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v54);
        mlir::Diagnostic::appendOp(&v50, a2, &v54);
      }
    }

    v6 = v53;
    goto LABEL_10;
  }

  v48 = v12;
  ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, v12, v13, v2);
  v46 = ReductionDimFromTupleOrNone;
  v47 = v16;
  if ((v16 & 1) == 0)
  {
    v58 = 257;
    emitDiag(v2, 2, &v54, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<37ul>(&v50, " failed to infer reduction dims for ");
      if (v49)
      {
        mlir::Diagnostic::operator<<(&v50, v12);
      }
    }

    goto LABEL_50;
  }

  v49 = "Dims are not statically shaped.";
  v52 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(ReductionDimFromTupleOrNone, &v49, &v43);
  if ((v45 & 1) == 0)
  {
    goto LABEL_51;
  }

  v58 = 1283;
  v54 = "input and output of ";
  v56 = "mean.dim";
  v57 = 8;
  v49 = &v54;
  v51 = " must be ranked.";
  v52 = 770;
  mlir::ODIE::Compiler::getShapedRankedType(v12, &v49, &v40);
  if ((v42 & 1) == 0)
  {
    goto LABEL_51;
  }

  v17 = v40;
  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v40);
  v20 = v17;
  if (v18)
  {
    v20 = (*(v19 + 8))(v19, v18);
  }

  v21 = v37[0];
  v22 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37[0]);
  if (v22)
  {
    v21 = (*(v23 + 8))(v23, v22);
  }

  if (v20 == v21)
  {
    goto LABEL_31;
  }

  if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v20[1] & 0x3FFFFFFF) != 1 || *(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v21[1] & 0x3FFFFFFF) != 0x20)
  {
    v58 = 257;
    emitDiag(v2, 2, &v54, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<44ul>(&v50, "input and output types are mismatching for ");
      if (v49)
      {
        v58 = 261;
        v54 = "mean.dim";
        v55 = 8;
        mlir::Diagnostic::operator<<(&v50, &v54);
      }
    }

LABEL_50:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
LABEL_51:
    v7 = 0;
    goto LABEL_11;
  }

  v24 = mlir::IntegerType::get(*a1, 32, 1);
  v25 = *v41;
  LOBYTE(v49) = 0;
  LOBYTE(v51) = 0;
  v49 = v25(v41, v17, &v49, v24);
  v50 = v26;
  v48 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CastOp,mlir::ShapedType,mlir::Value &>(a1, a1[4], &v49, &v48) - 16;
LABEL_31:
  v27 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,mlir::ShapedType const&,mlir::Value &,mlir::Value &,mlir::Value const&>(a1, a1[4], v37, &v48, &v46, &v39) - 16);
  v43 = v27;
  v44 = 1;
  v28 = *(a2 + 36);
  if (v28)
  {
    v29 = (a2 - 16);
  }

  else
  {
    v29 = 0;
  }

  v30 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v29, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v30 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v30 = 0;
  }

  v40 = v30;
  if (v30)
  {
    v31 = a1[4];
    v54 = v27;
    mlir::OperationState::OperationState(&v49, v31, "TorchImport.tuple_construct", 0x1B, &v54, 1, &v40 + 2, 1, 0, 0, 0, 0, 0, 0);
    v32 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v32);
    mlir::OperationState::~OperationState(&v49);
    v33 = *(a2 + 36);
    if (v33)
    {
      v34 = (a2 - 16);
    }

    else
    {
      v34 = 0;
    }

    v54 = v34;
    v55 = v33;
    v35 = v32[9];
    v36 = (v32 - 4);
    if (!v35)
    {
      v36 = 0;
    }

    v49 = v36;
    v50 = v35;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v54, &v49);
  }

  else
  {
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v29, v28, &v43, 1);
  }

  mlir::Operation::erase(a2);
  v7 = 1;
LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL replaceMeanOp(uint64_t *a1, uint64_t *a2)
{
  v55[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1 && *(a2 + 9) == 1)
  {
    v4 = a2[3];
    v5 = *(a2[9] + 24);
    LOBYTE(v45) = 0;
    v6 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v45, 1);
    v45 = "expecting ranked tensors";
    v47 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &v45, &v39);
    v7 = 0;
    if (v41 == 1)
    {
      v42 = v44;
      v43 = 0xC00000000;
      (*(v40 + 24))(v40, v39);
      v9 = v8;
      if (v8 >= 1)
      {
        v10 = 0;
        do
        {
          llvm::SmallVectorTemplateBase<int,true>::push_back(&v42, v10++);
        }

        while (v9 != v10);
      }

      v11 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v42, v43);
      if (*(a2 + 9))
      {
        v12 = a2 - 2;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12[1];
      v45 = "input and output of mean must be ranked.";
      v47 = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v13 & 0xFFFFFFFFFFFFFFF8), v4, &v45, &v37);
      if (v38)
      {
        v14 = v37;
        v15 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v37);
        if (v15)
        {
          v17 = (*(v16 + 8))(v16, v15);
        }

        else
        {
          v17 = v14;
        }

        v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v17);
        if (v22)
        {
          v23 = v21;
          v24 = a1[4];
          v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReduceMeanOp>(a1, *(**v24 + 32));
          v45 = v24;
          v46[0] = v25;
          v46[1] = &v47;
          v46[2] = 0x400000000;
          v48 = v50;
          v49 = 0x400000000;
          v50[4] = v51;
          v50[5] = 0x400000000;
          v51[8] = 4;
          v52 = v54;
          v53 = 0x100000000;
          v54[1] = v55;
          v54[2] = 0x100000000;
          v55[1] = 0;
          v55[2] = 0;
          v55[3] = &mlir::detail::TypeIDResolver<void,void>::id;
          v55[4] = 0;
          v55[6] = 0;
          mlir::ODIE::Compiler::CoreML::ReduceMeanOp::build(a1, &v45, v14, v23, v11, v6);
          v26 = mlir::Operation::create(&v45);
          mlir::OpBuilder::insert(a1, v26);
          v27 = *(*(v26 + 6) + 16);
          mlir::OperationState::~OperationState(&v45);
          if (v27 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReduceMeanOp,void>::id)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0;
          }

          v29 = *(a2 + 9);
          if (v29)
          {
            v30 = a2 - 2;
          }

          else
          {
            v30 = 0;
          }

          v35[0] = v30;
          v35[1] = v29;
          v31 = *(v28 + 9);
          v32 = (v28 - 16);
          if (!v31)
          {
            v32 = 0;
          }

          v45 = v32;
          v46[0] = v31;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v35, &v45);
          if (a2[2])
          {
            a2[2] = 0;
            v34 = *a2;
            v33 = a2[1];
            *v33 = *a2;
            *(v34 + 8) = v33;
            *a2 = 0;
            a2[1] = 0;
          }

          mlir::Operation::destroy(a2);
          v7 = 1;
        }

        else
        {
          v35[0] = "unable to cast input mean to output type.";
          v36 = 259;
          emitDiag(v4, 2, v35, &v45);
          v7 = (v52 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
        }
      }

      else
      {
        v7 = 0;
      }

      if (v42 != v44)
      {
        free(v42);
      }
    }
  }

  else
  {
    v18 = a2[3];
    v44[8] = 257;
    emitDiag(v18, 2, &v42, &v45);
    if (v45)
    {
      mlir::Diagnostic::operator<<<39ul>(v46, "expects 1 inputs and 1 output for mean");
    }

    v7 = (v52 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t replaceMaxPool2d(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "max_pool_2d");
  v5 = validatePoolingOpInput(a2, &__p);
  v6 = v5;
  if (v48 < 0)
  {
    operator delete(__p);
    if ((v6 & 1) == 0)
    {
LABEL_19:
      v13 = 0;
LABEL_33:
      v20 = *MEMORY[0x277D85DE8];
      return v13;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_19;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "max_pool_2d");
  getPoolingOpKernelStridePadding(v42, a1, a2, v4, &__p);
  if (v48 < 0)
  {
    operator delete(__p);
  }

  if (v43 != 1)
  {
    goto LABEL_19;
  }

  v39 = v42[0];
  v40 = v42[1];
  v41 = v42[2];
  __p = 0x100000001;
  TensorFromOptionalTuple = getTensorFromOptionalTuple(v4, a1, a2, 4, &__p, 2);
  v38 = v7;
  if ((v7 & 1) == 0)
  {
    v14 = *(a2 + 24);
    v45 = 257;
    emitDiag(v14, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<42ul>(&v47, "max_pool_2d - failed to construct padding");
    }

    goto LABEL_32;
  }

  BooleanFromOptionalTensor = getBooleanFromOptionalTensor(v4, a1, a2, 5, 0);
  v36 = v8;
  if ((v8 & 1) == 0)
  {
    v15 = *(a2 + 24);
    v45 = 257;
    emitDiag(v15, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<44ul>(&v47, "max_pool_2d - failed to construct ceil_mode");
    }

    goto LABEL_32;
  }

  v9 = getBooleanFromOptionalTensor(v4, a1, a2, 6, 0);
  if ((v10 & 1) == 0)
  {
    v16 = *(a2 + 24);
    v45 = 257;
    emitDiag(v16, 2, v44, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<49ul>(&v47, "max_pool_2d - failed to construct return_indices");
    }

    goto LABEL_32;
  }

  mlir::ODIE::Compiler::extract1DIntVector<BOOL>(v9, &__p);
  if (v49[40])
  {
    v11 = *__p;
    if (__p != v49)
    {
      free(__p);
    }

    if (v11)
    {
      v12 = *(a2 + 24);
      v45 = 257;
      emitDiag(v12, 2, v44, &__p);
      if (__p)
      {
        mlir::Diagnostic::operator<<<60ul>(&v47, "max_pool_2d - do not support op with return_indices = True.");
      }

LABEL_32:
      v13 = (v49[176] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
      goto LABEL_33;
    }

    if (*(a2 + 36))
    {
      v17 = a2 - 16;
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v17, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v34 = v18;
    if ((*v18)[17] != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v19 = *(a2 + 24);
      v44[0] = "Expected result type to be TupleType, but got ";
      v45 = 259;
      emitDiag(v19, 2, v44, &__p);
      if (__p)
      {
        mlir::Diagnostic::operator<<<mlir::Type &>(&v47, &v34);
      }

      goto LABEL_32;
    }

    v22 = *(*(a2 + 72) + 24);
    v32 = *v18[1];
    v33 = v22;
    if (BYTE8(v39) & 1) != 0 && (BYTE8(v40) & 1) != 0 && (BYTE8(v41))
    {
      v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaxPool2dOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 32), &v32, &v33, &v39, &v40, &v41, &TensorFromOptionalTuple, &BooleanFromOptionalTensor);
      v24 = *(a1 + 32);
      if (*(v23 + 9))
      {
        v25 = (v23 - 16);
      }

      else
      {
        v25 = 0;
      }

      v44[0] = v25;
      v13 = 1;
      mlir::OperationState::OperationState(&__p, v24, "TorchImport.tuple_construct", 0x1B, v44, 1, &v32 + 2, 1, 0, 0, 0, 0, 0, 0);
      v26 = mlir::Operation::create(&__p);
      mlir::OpBuilder::insert(a1, v26);
      mlir::OperationState::~OperationState(&__p);
      v27 = *(a2 + 36);
      if (v27)
      {
        v28 = (a2 - 16);
      }

      else
      {
        v28 = 0;
      }

      v44[0] = v28;
      v44[1] = v27;
      v29 = v26[9];
      v30 = v26 - 4;
      if (!v29)
      {
        v30 = 0;
      }

      __p = v30;
      v47 = v29;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v44, &__p);
      mlir::Operation::erase(a2);
      goto LABEL_33;
    }
  }

  v31 = std::__throw_bad_optional_access[abi:nn200100]();
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::maxOpName)>(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  v35 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), v4 > 3) || (v4 ? (v5 = *(a2 + 36) == 1) : (v5 = 0), !v5))
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<37ul>(v40, "expects 1-3 inputs and 1 output for ");
    }

    v36[0] = "max";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v39, v36) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    goto LABEL_11;
  }

  v11 = *(a2 + 72);
  v12 = v11[3];
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[7];
    if (v4 == 3)
    {
      v14 = v11[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v39) = 0;
  v14 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v39, 1);
LABEL_17:
  v34 = v14;
  getReduceResultType(v32, a2);
  if ((v33 & 1) == 0)
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<42ul>(v40, "unable to figure out the result type for ");
      if (v39)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v36);
        mlir::Diagnostic::appendOp(v40, a2, v36);
      }
    }

    v6 = v41;
    goto LABEL_10;
  }

  v39 = "max";
  v40[0] = 3;
  v15 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(a1, &v39, &v35, v12, v13, &v34, v32);
  v30 = v15;
  v31 = v16;
  if (v16)
  {
    v17 = *(a2 + 36);
    if (v17)
    {
      v18 = a2 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v19 = 0;
    }

    v29 = v19;
    if (v19)
    {
      v20 = a1[4];
      v38 = v15;
      mlir::OperationName::OperationName(v36, "TorchImport.tuple_construct", 0x1B, *(**v20 + 32));
      mlir::OperationState::OperationState(&v39, v20, v36[0], &v38, 1, &v29 + 2, 1, v21, 0, 0, 0, 0, 0, 0);
      v22 = mlir::Operation::create(&v39);
      mlir::OpBuilder::insert(a1, v22);
      mlir::OperationState::~OperationState(&v39);
      v23 = *(a2 + 36);
      if (v23)
      {
        v24 = (a2 - 16);
      }

      else
      {
        v24 = 0;
      }

      v36[0] = v24;
      v36[1] = v23;
      v25 = v22[9];
      v26 = (v22 - 4);
      if (!v25)
      {
        v26 = 0;
      }

      v39 = v26;
      v40[0] = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v36, &v39);
    }

    else
    {
      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v18, v17, &v30, 1);
    }

    if (*(a2 + 16))
    {
      *(a2 + 16) = 0;
      v28 = *a2;
      v27 = *(a2 + 8);
      *v27 = *a2;
      *(v28 + 8) = v27;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    mlir::Operation::destroy(a2);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::minOpName)>(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  v35 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), v4 > 3) || (v4 ? (v5 = *(a2 + 36) == 1) : (v5 = 0), !v5))
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<37ul>(v40, "expects 1-3 inputs and 1 output for ");
    }

    v36[0] = "min";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v39, v36) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    goto LABEL_11;
  }

  v11 = *(a2 + 72);
  v12 = v11[3];
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[7];
    if (v4 == 3)
    {
      v14 = v11[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v39) = 0;
  v14 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v39, 1);
LABEL_17:
  v34 = v14;
  getReduceResultType(v32, a2);
  if ((v33 & 1) == 0)
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<42ul>(v40, "unable to figure out the result type for ");
      if (v39)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v36);
        mlir::Diagnostic::appendOp(v40, a2, v36);
      }
    }

    v6 = v41;
    goto LABEL_10;
  }

  v39 = "min";
  v40[0] = 3;
  v15 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(a1, &v39, &v35, v12, v13, &v34, v32);
  v30 = v15;
  v31 = v16;
  if (v16)
  {
    v17 = *(a2 + 36);
    if (v17)
    {
      v18 = a2 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v19 = 0;
    }

    v29 = v19;
    if (v19)
    {
      v20 = a1[4];
      v38 = v15;
      mlir::OperationName::OperationName(v36, "TorchImport.tuple_construct", 0x1B, *(**v20 + 32));
      mlir::OperationState::OperationState(&v39, v20, v36[0], &v38, 1, &v29 + 2, 1, v21, 0, 0, 0, 0, 0, 0);
      v22 = mlir::Operation::create(&v39);
      mlir::OpBuilder::insert(a1, v22);
      mlir::OperationState::~OperationState(&v39);
      v23 = *(a2 + 36);
      if (v23)
      {
        v24 = (a2 - 16);
      }

      else
      {
        v24 = 0;
      }

      v36[0] = v24;
      v36[1] = v23;
      v25 = v22[9];
      v26 = (v22 - 4);
      if (!v25)
      {
        v26 = 0;
      }

      v39 = v26;
      v40[0] = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v36, &v39);
    }

    else
    {
      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v18, v17, &v30, 1);
    }

    if (*(a2 + 16))
    {
      *(a2 + 16) = 0;
      v28 = *a2;
      v27 = *(a2 + 8);
      *v27 = *a2;
      *(v28 + 8) = v27;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    mlir::Operation::destroy(a2);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MaximumOp,false>(uint64_t *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = v63 + 24 * v64;
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = v63 + 24 * v64;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_31;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if (v20)
  {
    v21 = v19;
    v53 = v19;
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18);
    if (v23)
    {
      v52 = v22;
      __src = v21;
      v61 = v22;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
      if (v59)
      {
        v24 = *v56;
        v52 = *(v56 + 1);
        v53 = v24;
        v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v53, &v52);
        v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
        v27 = (v25 - 16);
        v28 = 1;
      }

      else
      {
        v55 = 257;
        emitDiag(v45, 2, v54, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
          if (__src)
          {
            v55 = 261;
            v54[0] = v5;
            v54[1] = v6;
            mlir::Diagnostic::operator<<(&v61, v54);
            if (__src)
            {
              mlir::Diagnostic::operator<<<4ul>(&v61, " op");
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v27 = 0;
        v28 = 0;
        v26 = 0;
      }

      if (v59 == 1 && v56 != v58)
      {
        free(v56);
      }

      __src = (v26 | v27);
      LOBYTE(v61) = v28;
      if (v28)
      {
        v37 = *(a2 + 9);
        if (v37)
        {
          v38 = (a2 - 16);
        }

        else
        {
          v38 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
        if (*(a2 + 2))
        {
          *(a2 + 2) = 0;
          v40 = *a2;
          v39 = *(a2 + 1);
          *v39 = *a2;
          *(v40 + 8) = v39;
          *a2 = 0;
          *(a2 + 1) = 0;
        }

        mlir::Operation::destroy(a2);
        result = 1;
        goto LABEL_32;
      }

LABEL_31:
      result = 0;
LABEL_32:
      v42 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v43 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MinimumOp,false>(v43);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MinimumOp,false>(uint64_t *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = v63 + 24 * v64;
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = v63 + 24 * v64;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_31;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if (v20)
  {
    v21 = v19;
    v53 = v19;
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18);
    if (v23)
    {
      v52 = v22;
      __src = v21;
      v61 = v22;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
      if (v59)
      {
        v24 = *v56;
        v52 = *(v56 + 1);
        v53 = v24;
        v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v53, &v52);
        v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
        v27 = (v25 - 16);
        v28 = 1;
      }

      else
      {
        v55 = 257;
        emitDiag(v45, 2, v54, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
          if (__src)
          {
            v55 = 261;
            v54[0] = v5;
            v54[1] = v6;
            mlir::Diagnostic::operator<<(&v61, v54);
            if (__src)
            {
              mlir::Diagnostic::operator<<<4ul>(&v61, " op");
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v27 = 0;
        v28 = 0;
        v26 = 0;
      }

      if (v59 == 1 && v56 != v58)
      {
        free(v56);
      }

      __src = (v26 | v27);
      LOBYTE(v61) = v28;
      if (v28)
      {
        v37 = *(a2 + 9);
        if (v37)
        {
          v38 = (a2 - 16);
        }

        else
        {
          v38 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
        if (*(a2 + 2))
        {
          *(a2 + 2) = 0;
          v40 = *a2;
          v39 = *(a2 + 1);
          *v39 = *a2;
          *(v40 + 8) = v39;
          *a2 = 0;
          *(a2 + 1) = 0;
        }

        mlir::Operation::destroy(a2);
        result = 1;
        goto LABEL_32;
      }

LABEL_31:
      result = 0;
LABEL_32:
      v42 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v43 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MulOp,false>(v43);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::MulOp,false>(uint64_t *a1, mlir::Operation *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 6) + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 3);
  v8 = *(a2 + 9);
  v9 = *(v8 + 24);
  v52 = *(v8 + 56);
  v10 = v52;
  v53 = v9;
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor x input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v49);
  LOWORD(v64) = 1283;
  __src = "expected ranked tensor y input to ";
  v62 = v5;
  v63 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v46);
  if (v51 != 1 || (v48 & 1) == 0)
  {
    goto LABEL_31;
  }

  v45 = v7;
  v12 = v49;
  v11 = v50;
  v13 = (*(v50 + 8))(v50, v49);
  v14 = v47;
  v44 = v46;
  v15 = (*(v47 + 8))(v47);
  PromotedType = getPromotedType(v13, v15);
  if ((v17 & 1) == 0)
  {
    v58[8] = 257;
    emitDiag(v45, 2, &v56, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v61, "Unable to get promoted type between ");
    }

    v29 = (*(v11 + 8))(v11, v12);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v29;
      v30 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v31 = v63 + 24 * v64;
      v32 = *v30;
      *(v31 + 16) = *(v30 + 16);
      *v31 = v32;
      ++v64;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v61, " and ");
      }
    }

    v33 = (*(v14 + 8))(v14, v44);
    if (__src)
    {
      LODWORD(v56) = 4;
      v57 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v63, &v56, 1);
      v35 = v63 + 24 * v64;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v64;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_31;
  }

  v18 = PromotedType;
  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, PromotedType);
  if (v20)
  {
    v21 = v19;
    v53 = v19;
    v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v18);
    if (v23)
    {
      v52 = v22;
      __src = v21;
      v61 = v22;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v56);
      if (v59)
      {
        v24 = *v56;
        v52 = *(v56 + 1);
        v53 = v24;
        v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v53, &v52);
        v26 = (v25 - 16) & 0xFFFFFFFFFFFFFF00;
        v27 = (v25 - 16);
        v28 = 1;
      }

      else
      {
        v55 = 257;
        emitDiag(v45, 2, v54, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v61, " Unable to broadcast LHS and RHS of ");
          if (__src)
          {
            v55 = 261;
            v54[0] = v5;
            v54[1] = v6;
            mlir::Diagnostic::operator<<(&v61, v54);
            if (__src)
            {
              mlir::Diagnostic::operator<<<4ul>(&v61, " op");
            }
          }
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v27 = 0;
        v28 = 0;
        v26 = 0;
      }

      if (v59 == 1 && v56 != v58)
      {
        free(v56);
      }

      __src = (v26 | v27);
      LOBYTE(v61) = v28;
      if (v28)
      {
        v37 = *(a2 + 9);
        if (v37)
        {
          v38 = (a2 - 16);
        }

        else
        {
          v38 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v38, v37, &__src, 1);
        if (*(a2 + 2))
        {
          *(a2 + 2) = 0;
          v40 = *a2;
          v39 = *(a2 + 1);
          *v39 = *a2;
          *(v40 + 8) = v39;
          *a2 = 0;
          *(a2 + 1) = 0;
        }

        mlir::Operation::destroy(a2);
        result = 1;
        goto LABEL_32;
      }

LABEL_31:
      result = 0;
LABEL_32:
      v42 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  v43 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceGroupNorm(v43);
}

BOOL replaceGroupNorm(uint64_t *a1, uint64_t a2)
{
  v110 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 8)
  {
    v10 = *(a2 + 24);
    v107 = 257;
    emitDiag(v10, 2, &v104, &ShapeAsValue);
    if (ShapeAsValue)
    {
      v11 = "native_group_norm expects 8 operands";
LABEL_9:
      mlir::Diagnostic::operator<<<37ul>(&v96, v11);
    }

LABEL_10:
    v12 = (v99 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
    goto LABEL_42;
  }

  v4 = *(*(a2 + 72) + 24);
  v94 = v4;
  ShapeAsValue = "native_group_norm requires input to be a shaped type";
  v98 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &ShapeAsValue, &v91);
  if (v93 != 1)
  {
    goto LABEL_41;
  }

  v5 = v91;
  v6 = v92;
  (*(v92 + 24))(v92, v91);
  v8 = v7;
  if (v7 <= 1)
  {
    v9 = *(a2 + 24);
    v107 = 257;
    emitDiag(v9, 2, &v104, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<50ul>(&v96, "native_group_norm expects input to have rank >= 2");
    }

    goto LABEL_10;
  }

  v13 = *(a2 + 72);
  v14 = v13[15];
  v15 = v13[19];
  v16 = v13[27];
  v89 = v16;
  v90 = v15;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v14[1] & 0xFFFFFFFFFFFFFFF8));
  if (!v17 || ((*(v18 + 24))(v18, v17), v19) || (v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v15 + 1) & 0xFFFFFFFFFFFFFFF8))) == 0 || ((*(v22 + 24))(v22, v21), v23) || (v24 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v16 + 8) & 0xFFFFFFFFFFFFFFF8))) == 0 || ((*(v25 + 24))(v25, v24), v26))
  {
    v20 = *(a2 + 24);
    v107 = 257;
    emitDiag(v20, 2, &v104, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<95ul>(&v96, "native_group_norm expects numBatches, numGroups, and numChannels operands to be scalar tensors");
    }

    goto LABEL_10;
  }

  v27 = *(*(a2 + 72) + 248);
  LODWORD(ShapeAsValue) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &ShapeAsValue, 1, 0);
  LODWORD(ShapeAsValue) = 0;
  v87 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &ShapeAsValue, 1);
  v104 = 1;
  v28 = mlir::IntegerType::get(*a1, 32, 1);
  ShapeAsValue = mlir::RankedTensorType::get(&v104, 1, v28, 0);
  LODWORD(v108[0]) = 1;
  v100 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v108, 1);
  v86 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value>(a1, a1[4], &ShapeAsValue, &v90, &v100);
  v29 = (*(v6 + 8))(v6, v5);
  v84[0] = a1;
  v84[1] = &v85;
  v84[2] = &v86;
  v84[3] = &v87;
  v85 = v29;
  v30 = *(*(a2 + 72) + 56);
  v83 = v30;
  if ((*(v30 + 8) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(v30 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v31 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(v84, 1.0);
    if ((v32 & 1) == 0)
    {
      v68 = *(a2 + 24);
      v107 = 257;
      emitDiag(v68, 2, &v104, &ShapeAsValue);
      if (ShapeAsValue)
      {
        mlir::Diagnostic::operator<<<39ul>(&v96, "failed to create default weight tensor");
      }

      goto LABEL_10;
    }

    v30 = v31;
    v83 = v31;
  }

  ShapeAsValue = "weight operand must be a shaped tensor";
  v98 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v30, &ShapeAsValue, &v80);
  if (v82 != 1)
  {
LABEL_41:
    v12 = 0;
    goto LABEL_42;
  }

  v79 = *(*(a2 + 72) + 88);
  if ((*(v79 + 8) & 0xFFFFFFFFFFFFFFF8) != 0 && *(*(*(v79 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v33 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_1::operator()(v84, 0.0);
    if (v34)
    {
      v79 = v33;
      goto LABEL_28;
    }

    v69 = *(a2 + 24);
    v107 = 257;
    emitDiag(v69, 2, &v104, &ShapeAsValue);
    if (ShapeAsValue)
    {
      v11 = "failed to create default bias tensor";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_28:
  ShapeAsValue = "bias operand must be a shaped tensor";
  v98 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v30, &ShapeAsValue, &v76);
  if (v78 != 1)
  {
    goto LABEL_41;
  }

  v35 = mlir::IntegerType::get(*a1, 32, 1);
  ShapeAsValue = mlir::RankedTensorType::get(0, 0, v35, 0);
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], &ShapeAsValue, &v90, &v89);
  v75[0] = a1;
  v75[1] = &Tensor;
  v108[0] = (v8 + 1);
  v37 = mlir::IntegerType::get(*a1, 32, 1);
  v100 = mlir::RankedTensorType::get(v108, 1, v37, 0);
  ShapeAsValue = v14;
  v96 = v89;
  v97[0] = v36 - 16;
  v97[1] = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(v75, v4);
  v104 = &ShapeAsValue;
  v105 = 4;
  v74 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, a1[4], &v100, &Tensor, &v104);
  v104 = v106;
  v105 = 0x600000000;
  llvm::SmallVectorImpl<long long>::resizeImpl<false>(&v104, (v8 + 1));
  v38 = *(*(v6 + 24))(v6, v5);
  v39 = v104;
  *v104 = v38;
  *(v39 + 8) = vnegq_f64(0);
  if (v8 != 2)
  {
    v40 = 0;
    do
    {
      v41 = *((*(v6 + 24))(v6, v5) + 8 * v40 + 16);
      v39 = v104;
      *(v104 + 8 * v40++ + 24) = v41;
    }

    while ((v8 & 0x7FFFFFFF) - 2 != v40);
  }

  ShapeAsValue = mlir::RankedTensorType::get(v39, v105, v85, 0);
  v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, a1[4], &ShapeAsValue, &v94, &v74) - 16;
  v43 = replaceGroupNorm(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(v75, v42);
  v44 = mlir::ODIE::Compiler::replaceLayerNormImpl(a1, v42, v43, v27);
  if (v45)
  {
    v73 = v44;
    ShapeAsValue = getShapeAsValue(a1, v4);
    v46 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::ShapedType &,mlir::Value &,mlir::Value>(a1, a1[4], &v91, &v73, &ShapeAsValue);
    ShapeAsValue = v97;
    v96 = 0xC00000000;
    llvm::SmallVectorImpl<int>::assign(&ShapeAsValue, (v8 - 2), 1);
    v47 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, ShapeAsValue, v96);
    if (ShapeAsValue != v97)
    {
      free(ShapeAsValue);
    }

    v48 = (v8 - 1);
    v103 = v48;
    v49 = mlir::IntegerType::get(*a1, 32, 1);
    v108[0] = mlir::RankedTensorType::get(&v103, 1, v49, 0);
    v100 = v90;
    v101 = v47;
    ShapeAsValue = &v100;
    v96 = 2;
    v72 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::ArrayRef<mlir::Value>>(a1, a1[4], v108, &Tensor, &ShapeAsValue);
    v100 = v102;
    v101 = 0x600000000;
    llvm::SmallVectorImpl<long long>::assign(&v100, v48, 1);
    v50 = v100;
    *v100 = 0x8000000000000000;
    v51 = v101;
    v52 = (*(v81 + 8))(v81, v80);
    ShapeAsValue = mlir::RankedTensorType::get(v50, v51, v52, 0);
    v53 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, a1[4], &ShapeAsValue, &v83, &v72);
    v54 = v101;
    v55 = v100;
    v56 = (*(v77 + 8))(v77, v76);
    ShapeAsValue = mlir::RankedTensorType::get(v55, v54, v56, 0);
    v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::ODIE::Compiler::CoreML::ConcatOp &>(a1, a1[4], &ShapeAsValue, &v79, &v72);
    v58 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(a1, v46 - 2, (v53 - 16), (v57 - 16), 1);
    if (v59)
    {
      v60 = a1[4];
      v108[0] = v58;
      v103 = v5;
      v12 = 1;
      mlir::OperationState::OperationState(&ShapeAsValue, v60, "TorchImport.tuple_construct", 0x1B, v108, 1, &v103 + 2, 1, 0, 0, 0, 0, 0, 0);
      v61 = mlir::Operation::create(&ShapeAsValue);
      mlir::OpBuilder::insert(a1, v61);
      mlir::OperationState::~OperationState(&ShapeAsValue);
      v62 = *(a2 + 36);
      v63 = (a2 - 16);
      if (!v62)
      {
        v63 = 0;
      }

      v108[0] = v63;
      v108[1] = v62;
      v64 = v61[9];
      v65 = v61 - 4;
      if (!v64)
      {
        v65 = 0;
      }

      ShapeAsValue = v65;
      v96 = v64;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v108, &ShapeAsValue);
      mlir::Operation::erase(a2);
    }

    else
    {
      v71 = *(a2 + 24);
      v109 = 257;
      emitDiag(v71, 2, v108, &ShapeAsValue);
      if (ShapeAsValue)
      {
        mlir::Diagnostic::operator<<<123ul>(&v96, "unable to decompose TorchImport.native_group_norm into sub-graph of CoreML HLO ops for weight & bias for normalized tensor");
      }

      v12 = (v99 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
    }

    if (v100 != v102)
    {
      free(v100);
    }
  }

  else
  {
    v70 = *(a2 + 24);
    v102[8] = 257;
    emitDiag(v70, 2, &v100, &ShapeAsValue);
    if (ShapeAsValue)
    {
      mlir::Diagnostic::operator<<<111ul>(&v96, "unable to decompose TorchImport.native_group_norm into sub-graph of CoreML HLO ops for computing normalization");
    }

    v12 = (v99 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&ShapeAsValue);
  }

  if (v104 != v106)
  {
    free(v104);
  }

LABEL_42:
  v66 = *MEMORY[0x277D85DE8];
  return v12;
}

BOOL replaceLayerNorm(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 5)
  {
    v8 = a2[3];
    v45 = 257;
    emitDiag(v8, 2, v44, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<38ul>(v48, "native_layer_norm requires 5 operands");
    }

    goto LABEL_11;
  }

  v4 = *(a2[9] + 24);
  v47 = "native_layer_norm requires input to be a shaped type";
  v49 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v47, &v41);
  if (v43 != 1)
  {
    v9 = 0;
    goto LABEL_13;
  }

  v5 = *(a2[9] + 56);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }
  }

  else
  {
    v7 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v7, a1);
  if ((v13 & 1) == 0)
  {
    v36 = a2[3];
    v45 = 257;
    emitDiag(v36, 2, v44, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<50ul>(v48, "unable to get normalized shape as a tuple of ints");
    }

    goto LABEL_11;
  }

  v14 = TupleAs1DIntTensor;
  SingleElementConstantWithDtype = *(a2[9] + 88);
  v16 = v41;
  v17 = (*(v42 + 8))(v42, v41);
  v18 = *(SingleElementConstantWithDtype + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v18)
  {
    v19 = *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    SingleElementConstantWithDtype = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v17, 1.0);
  }

  v20 = a2[9];
  v21 = *(v20 + 120);
  v22 = *(v21 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v22)
  {
    v23 = *(*v22 + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    v21 = mlir::ODIE::Compiler::getSingleElementConstantWithDtype(a1, v17, 0.0);
    v20 = a2[9];
  }

  v24 = mlir::ODIE::Compiler::replaceLayerNormImpl(a1, v4, v14, *(v20 + 152));
  if ((v25 & 1) == 0)
  {
    v37 = a2[3];
    v45 = 257;
    emitDiag(v37, 2, v44, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<111ul>(v48, "unable to decompose TorchImport.native_layer_norm into sub-graph of CoreML HLO ops for computing normalization");
    }

    goto LABEL_11;
  }

  v39 = mlir::ODIE::Compiler::replacePostNormWeightBiasImpl(a1, v24, SingleElementConstantWithDtype, v21, 0);
  v40 = v26;
  if ((v26 & 1) == 0)
  {
    v38 = a2[3];
    v45 = 257;
    emitDiag(v38, 2, v44, &v47);
    if (v47)
    {
      mlir::Diagnostic::operator<<<123ul>(v48, "unable to decompose TorchImport.native_layer_norm into sub-graph of CoreML HLO ops for weight & bias for normalized tensor");
    }

LABEL_11:
    v9 = (v50 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
    goto LABEL_13;
  }

  v27 = *(a1 + 32);
  v46 = v16;
  mlir::OperationName::OperationName(v44, "TorchImport.tuple_construct", 0x1B, *(**v27 + 32));
  mlir::OperationState::OperationState(&v47, v27, v44[0], &v39, 1, &v46 + 2, 1, v28, 0, 0, 0, 0, 0, 0);
  v29 = mlir::Operation::create(&v47);
  mlir::OpBuilder::insert(a1, v29);
  mlir::OperationState::~OperationState(&v47);
  v30 = *(a2 + 9);
  v31 = a2 - 2;
  if (!v30)
  {
    v31 = 0;
  }

  v44[0] = v31;
  v44[1] = v30;
  v32 = v29[9];
  v33 = (v29 - 4);
  if (!v32)
  {
    v33 = 0;
  }

  v47 = v33;
  v48[0] = v32;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v44, &v47);
  if (a2[2])
  {
    a2[2] = 0;
    v35 = *a2;
    v34 = a2[1];
    *v34 = *a2;
    *(v35 + 8) = v34;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v9 = 1;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::NotEqualOp>(uint64_t *a1, mlir::Operation *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = *(a2 + 6);
  v4 = mlir::OperationName::stripDialect(&v25);
  v24[0] = v4;
  v24[1] = v5;
  v6 = *(a2 + 3);
  v23 = v6;
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2 && *(a2 + 9) == 1)
  {
    v7 = *(a2 + 9);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    v10 = *(a2 - 1);
    v29 = 1283;
    v25 = "expected ranked output from ";
    v27 = v4;
    v28 = v5;
    mlir::ODIE::Compiler::getShapedRankedType((v10 & 0xFFFFFFFFFFFFFFF8), v6, &v25, v19);
    if (v20 == 1 && (v25 = getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, v24, &v23, v8, v9, v19), v26 = v11, (v11 & 1) != 0))
    {
      v12 = *(a2 + 9);
      if (v12)
      {
        v13 = (a2 - 16);
      }

      else
      {
        v13 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v13, v12, &v25, 1);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v15 = *a2;
        v14 = *(a2 + 1);
        *v14 = *a2;
        *(v15 + 8) = v14;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v22 = 1283;
    v19[0] = "expects 2 inputs and 1 output for ";
    v20 = v4;
    v21 = v5;
    emitDiag(v6, 2, v19, &v25);
    v16 = (v30 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

BOOL replaceNeg(uint64_t *a1, uint64_t *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  __src = "expected ranked tensor input to unary op";
  v33 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, v27);
  if (v28 == 1)
  {
    v5 = a2[3];
    LODWORD(__src) = -1;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
    v7 = (v4[1] & 0xFFFFFFFFFFFFFFF8);
    v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v7);
    v10 = v8;
    if (v8)
    {
      v8 = (*(v9 + 8))(v9, v8);
    }

    if (v10)
    {
      v12 = v8;
    }

    else
    {
      v12 = v7;
    }

    v13 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v12);
    if (v14)
    {
      __src = v4;
      v32 = v13;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v27);
      if (v30)
      {
        if (*(a2 + 9))
        {
          v15 = a2 - 2;
        }

        else
        {
          v15 = 0;
        }

        __src = (v15[1] & 0xFFFFFFFFFFFFFFF8);
        v16 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, v27[0], v27[0] + 1);
        v17 = *(a2 + 9);
        if (v17)
        {
          v18 = a2 - 2;
        }

        else
        {
          v18 = 0;
        }

        v25[0] = v18;
        v25[1] = v17;
        v19 = *(v16 + 9);
        v20 = (v16 - 16);
        if (!v19)
        {
          v20 = 0;
        }

        __src = v20;
        v32 = v19;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v25, &__src);
        if (a2[2])
        {
          a2[2] = 0;
          v22 = *a2;
          v21 = a2[1];
          *v21 = *a2;
          *(v22 + 8) = v21;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v11 = 1;
      }

      else
      {
        v25[0] = "Unable to broadcast -1 and input tensor to common shape.";
        v26 = 259;
        emitDiag(v5, 2, v25, &__src);
        v11 = (v34 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      }

      if (v30 == 1 && v27[0] != &v28)
      {
        free(v27[0]);
      }
    }

    else
    {
      v27[0] = "can't cast value to correct element type for neg op.";
      v29 = 259;
      emitDiag(v5, 2, v27, &__src);
      v11 = (v34 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }
  }

  else
  {
    v11 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL replaceNonZero(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v46[8] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v34 = "expected ranked tensor input to nonzero op";
  v38 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v34, v28);
  if (v29 == 1 && ((v5 = *(a1 + 4), *(a2 + 9)) ? (v6 = (a2 - 16)) : (v6 = 0), v7 = v6[1], v34 = "expect ranked shaped type for output of nonzero op", v38 = 259, mlir::ODIE::Compiler::getShapedRankedType((v7 & 0xFFFFFFFFFFFFFFF8), v5, &v34, &v31), v33 == 1))
  {
    v8 = v31;
    v9 = v32;
    (*(v32 + 24))(v32, v31);
    if (v10 == 2)
    {
      v11 = (*(v9 + 8))(v9, v8);
      if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v11[2] != 1073741856)
      {
        v12 = mlir::IntegerType::get(*a1, 32, 1);
        v13 = *v9;
        LOBYTE(v34) = 0;
        LOBYTE(v36) = 0;
        v8 = v13(v9, v8, &v34, v12);
      }

      v14 = *(a1 + 4);
      v15 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::NonZeroOp>(a1, *(**v14 + 32));
      v34 = v14;
      v35 = v15;
      v36 = &v38;
      v37 = 0x400000000;
      v39 = v41;
      v40 = 0x400000000;
      v41[4] = v42;
      v41[5] = 0x400000000;
      v42[8] = 4;
      v43 = v45;
      v44 = 0x100000000;
      v45[1] = v46;
      v45[2] = 0x100000000;
      v46[1] = 0;
      v46[2] = 0;
      v46[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v46[4] = 0;
      v46[6] = 0;
      mlir::ODIE::Compiler::CoreML::NonZeroOp::build(a1, &v34, v8, v4);
      v16 = mlir::Operation::create(&v34);
      mlir::OpBuilder::insert(a1, v16);
      v17 = *(*(v16 + 6) + 16);
      mlir::OperationState::~OperationState(&v34);
      if (v17 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::NonZeroOp,void>::id)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a2 + 9);
      if (v19)
      {
        v20 = (a2 - 16);
      }

      else
      {
        v20 = 0;
      }

      v28[0] = v20;
      v28[1] = v19;
      v21 = *(v18 + 9);
      v22 = (v18 - 16);
      if (!v21)
      {
        v22 = 0;
      }

      v34 = v22;
      v35 = v21;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v28, &v34);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v24 = *a2;
        v23 = *(a2 + 1);
        *v23 = *a2;
        *(v24 + 8) = v23;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v25 = 1;
    }

    else
    {
      v28[0] = "output of nonzero must be of rank 2";
      v30 = 259;
      emitDiag(v5, 2, v28, &v34);
      v25 = (v43 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t replacePermute(uint64_t a1, uint64_t *a2)
{
  v38[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v28 = "expected ranked tensor input to permute";
  v32 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v28, v26);
  if (v27 != 1)
  {
    goto LABEL_24;
  }

  v5 = *(a2[9] + 56);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    v7 = v6 == 6 ? v5 + 24 * *(v5 + 16) + 120 : v5 + 16 * v6 + 16;
  }

  else
  {
    v7 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v7, a1);
  if (v9)
  {
    v10 = TupleAs1DIntTensor;
    if (*(a2 + 9))
    {
      v11 = a2 - 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11[1];
    v13 = *(a1 + 32);
    v14 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::TransposeOp>(a1, *(**v13 + 32));
    v28 = v13;
    v29 = v14;
    v30 = &v32;
    v31 = 0x400000000;
    v33 = v35;
    v34 = 0x400000000;
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
    mlir::ODIE::Compiler::CoreML::TransposeOp::build(a1, &v28, v12 & 0xFFFFFFFFFFFFFFF8, v4, v10);
    v15 = mlir::Operation::create(&v28);
    mlir::OpBuilder::insert(a1, v15);
    v16 = *(*(v15 + 6) + 16);
    mlir::OperationState::~OperationState(&v28);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TransposeOp,void>::id)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = *(a2 + 9);
    if (v18)
    {
      v19 = a2 - 2;
    }

    else
    {
      v19 = 0;
    }

    v26[0] = v19;
    v26[1] = v18;
    v20 = *(v17 + 9);
    v21 = (v17 - 16);
    if (!v20)
    {
      v21 = 0;
    }

    v28 = v21;
    v29 = v20;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v26, &v28);
    if (a2[2])
    {
      a2[2] = 0;
      v23 = *a2;
      v22 = a2[1];
      *v22 = *a2;
      *(v23 + 8) = v22;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    result = 1;
  }

  else
  {
LABEL_24:
    result = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::PowOp,false>(uint64_t *a1, mlir::Operation *a2)
{
  v17 = *(*(*(a2 + 6) + 8) + 16);
  v16 = *(a2 + 3);
  v3 = *(a2 + 9);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v15[0] = 0;
  v15[8] = 0;
  v6 = getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v17, &v16, v4, v5, v15);
  result = 0;
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    v9 = *(a2 + 9);
    if (v9)
    {
      v10 = (a2 - 16);
    }

    else
    {
      v10 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v10, v9, &v13, 1);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v12 = *a2;
      v11 = *(a2 + 1);
      *v11 = *a2;
      *(v12 + 8) = v11;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    return 1;
  }

  return result;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ReLUOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.relu";
      v53 = 11;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReLUOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReLUOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceRemainder(uint64_t *a1, mlir::Operation *this)
{
  v94 = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) != 0 && *(this + 17) == 2)
  {
    v4 = *(this + 9);
    v5 = *(v4 + 24);
    v6 = *(v4 + 56);
    __src = "expect shaped ranked tensor for input to TorchImport.remainder";
    LOWORD(v75[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, &v65);
    __src = "expect shaped ranked tensor for input to TorchImport.remainder";
    LOWORD(v75[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v63);
    v7 = 0;
    if (v66 == 1 && (v64 & 1) != 0)
    {
      if (*(this + 9))
      {
        v8 = this - 16;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v8 + 1);
      v10 = *(this + 3);
      __src = "expect shaped ranked tensor for output of TorchImport.remainder";
      LOWORD(v75[0]) = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v9 & 0xFFFFFFFFFFFFFFF8), v10, &__src, &v61);
      v11 = v65;
      PromotedType = getPromotedType(v65, v63[0]);
      v59 = PromotedType;
      v60 = v13;
      if (v13)
      {
        v14 = PromotedType;
        v15 = *PromotedType;
        v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
        v18 = (*(v17 + 8))(v17, v14);
        v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v18);
        v21 = v20;
        v22 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v18);
        if (v21 & 1) != 0 && (v23)
        {
          v24 = v22;
          __src = v19;
          v72 = v22;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v67);
          if (v70)
          {
            v26 = *v67[0];
            v25 = *(v67[0] + 1);
            v55 = v25;
            v27 = *(*v67[0] + 8);
            v28 = a1[4];
            v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::FloorDivideOp>(a1, *(**v28 + 32));
            __src = v28;
            v72 = v29;
            v73 = v75;
            v74 = 0x400000000;
            v76 = v78;
            v77 = 0x400000000;
            v79 = v81;
            v80 = 0x400000000;
            v82 = 4;
            v83 = &v85;
            v84 = 0x100000000;
            v86 = &v88;
            v87 = 0x100000000;
            v89 = 0;
            v90 = 0;
            v91 = &mlir::detail::TypeIDResolver<void,void>::id;
            v92 = 0;
            v93 = 0;
            mlir::ODIE::Compiler::CoreML::FloorDivideOp::build(a1, &__src, v27 & 0xFFFFFFFFFFFFFFF8, v26, v25);
            v30 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v30);
            v31 = *(*(v30 + 6) + 16);
            mlir::OperationState::~OperationState(&__src);
            if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::FloorDivideOp,void>::id)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = *(v26 + 8);
            v34 = a1[4];
            v35 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::MulOp>(a1, *(**v34 + 32));
            __src = v34;
            v72 = v35;
            v73 = v75;
            v74 = 0x400000000;
            v76 = v78;
            v77 = 0x400000000;
            v79 = v81;
            v80 = 0x400000000;
            v82 = 4;
            v83 = &v85;
            v84 = 0x100000000;
            v86 = &v88;
            v87 = 0x100000000;
            v89 = 0;
            v90 = 0;
            v91 = &mlir::detail::TypeIDResolver<void,void>::id;
            v92 = 0;
            v93 = 0;
            mlir::ODIE::Compiler::CoreML::MulOp::build(a1, &__src, v33 & 0xFFFFFFFFFFFFFFF8, (v32 - 16), v55);
            v36 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v36);
            v37 = *(*(v36 + 6) + 16);
            mlir::OperationState::~OperationState(&__src);
            if (v37 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
            {
              v36 = 0;
            }

            v38 = *(v26 + 8);
            v39 = a1[4];
            v40 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v39 + 32));
            __src = v39;
            v72 = v40;
            v73 = v75;
            v74 = 0x400000000;
            v76 = v78;
            v77 = 0x400000000;
            v79 = v81;
            v80 = 0x400000000;
            v82 = 4;
            v83 = &v85;
            v84 = 0x100000000;
            v86 = &v88;
            v87 = 0x100000000;
            v89 = 0;
            v90 = 0;
            v91 = &mlir::detail::TypeIDResolver<void,void>::id;
            v92 = 0;
            v93 = 0;
            mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v38 & 0xFFFFFFFFFFFFFFF8, v26, (v36 - 16));
            v41 = mlir::Operation::create(&__src);
            mlir::OpBuilder::insert(a1, v41);
            v42 = *(*(v41 + 6) + 16);
            v43 = (v41 - 16);
            mlir::OperationState::~OperationState(&__src);
            if (v42 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
            {
              v43 = -16;
            }

            v44 = (*(v62 + 8))(v62, v61);
            v45 = mlir::ODIE::Compiler::castValueToElementType(a1, v43, v44);
            if (v46)
            {
              __src = v45;
              v47 = *(this + 9);
              if (v47)
              {
                v48 = (this - 16);
              }

              else
              {
                v48 = 0;
              }

              v49 = 1;
              mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v48, v47, &__src, 1);
              mlir::Operation::erase(this);
              goto LABEL_53;
            }

            v58 = 257;
            mlir::Operation::emitError(&__src, this, &v56);
            if (__src)
            {
              mlir::Diagnostic::operator<<<17ul>(&v72, " unable to cast ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v72, v43);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<27ul>(&v72, " to same dtype as result: ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v72, &v61);
                  }
                }
              }
            }
          }

          else
          {
            v58 = 257;
            mlir::Operation::emitError(&__src, this, &v56);
            if (__src)
            {
              mlir::Diagnostic::operator<<<38ul>(&v72, "unable to broadcast to common shape: ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v72, v19);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<6ul>(&v72, " and ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<(&v72, v24);
                  }
                }
              }
            }
          }

          v49 = v83 ^ 1;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_53:
          if (v70 == 1 && v67[0] != &v68)
          {
            free(v67[0]);
          }

          goto LABEL_40;
        }

        v69 = 257;
        mlir::Operation::emitError(&__src, this, v67);
        if (__src)
        {
          mlir::Diagnostic::operator<<<48ul>(&v72, "unable to cast inputs of TorchImport.remainder ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v72, v5);
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v72, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v72, v6);
                if (__src)
                {
                  mlir::Diagnostic::operator<<<19ul>(&v72, " to promoted type ");
                  if (__src)
                  {
                    mlir::Diagnostic::operator<<<mlir::Type &>(&v72, &v59);
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        v69 = 257;
        mlir::Operation::emitError(&__src, this, v67);
        if (__src)
        {
          mlir::Diagnostic::operator<<<38ul>(&v72, "unable to find promoted type between ");
          if (__src)
          {
            v56 = 4;
            v57 = v11;
            v50 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v74, &v56, 1);
            v51 = v74 + 24 * v75[0];
            v52 = *v50;
            *(v51 + 16) = *(v50 + 16);
            *v51 = v52;
            ++v75[0];
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v72, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<<mlir::ShapedType &>(&v72, v63);
              }
            }
          }
        }
      }

      v49 = v83 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_40:
      v7 = v49 & 1;
    }
  }

  else
  {
    v69 = 257;
    mlir::Operation::emitError(&__src, this, v67);
    if (__src)
    {
      mlir::Diagnostic::operator<<<44ul>(&v72, "expect 2 operands for TorchImport.remainder");
    }

    v7 = (v83 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t replaceTile(uint64_t a1, uint64_t *a2)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v3 = a2[9];
  v48 = *(v3 + 24);
  v4 = (*(v48 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v10 = *(v3 + 56);
    if ((~*(v10 + 8) & 7) == 0)
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(v10 + 8) & 7;
      if (v11 == 6)
      {
        v12 = v10 + 24 * *(v10 + 16) + 120;
      }

      else
      {
        v12 = v10 + 16 * v11 + 16;
      }
    }

    else
    {
      v12 = 0;
    }

    TupleAs1DIntTensor = getTupleAs1DIntTensor(v12, a1);
    if ((v14 & 1) == 0)
    {
      v5 = 0;
      goto LABEL_4;
    }

    v15 = TupleAs1DIntTensor;
    v16 = (*(TupleAs1DIntTensor + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v17 = v16[2];
      if (v17)
      {
        v18 = 0;
        v19 = v16[1];
        while (v19[v18] != 0x8000000000000000)
        {
          if (v17 == ++v18)
          {
            if (v17 != 1)
            {
              break;
            }

            v20 = v16[3];
            if (*(*v20 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v20[2] & 0x3FFFFFFF) != 0x20)
            {
              break;
            }

            v21 = v4[2];
            v22 = *v19;
            if (v21 < v22)
            {
              v23 = llvm::CastInfo<mlir::ShapedType,mlir::RankedTensorType,void>::doCast(v4);
              v25 = (*(v24 + 24))(v24, v23);
              v56 = v58;
              v57 = 0x600000000;
              llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v56, v25, &v25[8 * v26]);
              if (*v16[1] > v4[2])
              {
                v27 = 0;
                do
                {
                  v52 = 1;
                  llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v56, v56, &v52);
                  ++v27;
                }

                while (*v16[1] - v4[2] > v27);
              }

              v52 = v54;
              v53 = 0xC00000000;
              llvm::SmallVectorImpl<int>::append<long long *,void>(&v52, v56, v56 + 8 * v57);
              v50[0] = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v52, v53, 0);
              __src[0] = mlir::RankedTensorType::get(v56, v57, v4[3], 0);
              v48 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v2, __src, &v48, v50) - 16;
              if (v52 != v54)
              {
                free(v52);
              }

              if (v56 != v58)
              {
                free(v56);
              }

              v21 = v4[2];
              v22 = *v16[1];
            }

            if (v21 > v22)
            {
              v56 = v58;
              v57 = 0xC00000000;
              llvm::SmallVectorImpl<int>::assign(&v56, v21 - v22, 1);
              Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v56, v57, 0);
              v29 = v4[2];
              v52 = v54;
              v53 = 0x600000000;
              llvm::SmallVectorImpl<long long>::assign(&v52, 1uLL, v29);
              LODWORD(v50[0]) = 0;
              v47 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v50, 1, 0);
              __src[0] = Tensor;
              __src[1] = v15;
              v50[0] = v51;
              v50[1] = 0x600000000;
              llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(v50, __src, v50);
              __src[0] = mlir::RankedTensorType::get(v52, v53, v16[3], 0);
              v30 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v2, __src, &v47, v50);
              v31 = *(v30 + 9);
              if (v50[0] != v51)
              {
                free(v50[0]);
              }

              if (v52 != v54)
              {
                free(v52);
              }

              v32 = v30 - 16;
              if (v56 != v58)
              {
                free(v56);
              }

              if (v31)
              {
                v15 = v32;
              }

              else
              {
                v15 = 0;
              }
            }

            if (*(a2 + 9))
            {
              v33 = a2 - 2;
            }

            else
            {
              v33 = 0;
            }

            v34 = v33[1];
            v35 = *(a1 + 32);
            v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TileOp,void>::id, *(**v35 + 32));
            if ((v37 & 1) == 0)
            {
              v55 = 1283;
              v54[0] = "coreml.tile";
              v54[1] = 11;
              v51[8] = 259;
              llvm::operator+(&v52, v50, &v56);
              llvm::report_fatal_error(&v56, 1);
            }

            v56 = v35;
            v57 = v36;
            v58[0] = v59;
            v58[1] = 0x400000000;
            v59[4] = v60;
            v59[5] = 0x400000000;
            v60[4] = v61;
            v60[5] = 0x400000000;
            v61[8] = 4;
            v62 = v64;
            v63 = 0x100000000;
            v64[1] = v65;
            v64[2] = 0x100000000;
            v65[1] = 0;
            v65[2] = 0;
            v65[3] = &mlir::detail::TypeIDResolver<void,void>::id;
            v65[4] = 0;
            v65[6] = 0;
            mlir::ODIE::Compiler::CoreML::TileOp::build(a1, &v56, v34 & 0xFFFFFFFFFFFFFFF8, v48, v15);
            v38 = mlir::Operation::create(&v56);
            mlir::OpBuilder::insert(a1, v38);
            v39 = *(*(v38 + 6) + 16);
            mlir::OperationState::~OperationState(&v56);
            if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TileOp,void>::id)
            {
              v40 = v38;
            }

            else
            {
              v40 = 0;
            }

            v41 = *(a2 + 9);
            if (v41)
            {
              v42 = a2 - 2;
            }

            else
            {
              v42 = 0;
            }

            v52 = v42;
            v53 = v41;
            v43 = *(v40 + 9);
            v44 = v40 - 16;
            if (!v43)
            {
              v44 = 0;
            }

            v56 = v44;
            v57 = v43;
            mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v52, &v56);
            if (a2[2])
            {
              a2[2] = 0;
              v46 = *a2;
              v45 = a2[1];
              *v45 = *a2;
              *(v46 + 8) = v45;
              *a2 = 0;
              a2[1] = 0;
            }

            mlir::Operation::destroy(a2);
            v5 = 1;
            goto LABEL_4;
          }
        }
      }

      v55 = 257;
      emitDiag(v2, 2, &v52, &v56);
      if (v56)
      {
        mlir::Diagnostic::operator<<<52ul>(&v57, "expected dims to be a static 1D tensor of type I32.");
      }
    }

    else
    {
      v55 = 257;
      emitDiag(v2, 2, &v52, &v56);
      if (v56)
      {
        mlir::Diagnostic::operator<<<50ul>(&v57, "expected ranked tensor type for dims supplied to ");
        if (v56)
        {
          mlir::Diagnostic::operator<<(&v57, a2[6]);
        }
      }
    }
  }

  else
  {
    v52 = "tile op expects ranked tensor.";
    v55 = 259;
    emitDiag(v2, 2, &v52, &v56);
  }

  v5 = v62 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
LABEL_4:
  v6 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

uint64_t replaceRound(uint64_t *a1, uint64_t *a2)
{
  v64[8] = *MEMORY[0x277D85DE8];
  v3 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 17)) == 0 || *(a2 + 9) >= 3u)
  {
    v54 = 257;
    emitDiag(v3, 2, v52, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(v57, "expects 1-2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v57, a2[6]);
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v57, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v5 = *(a2 + 17);
    }

    else
    {
      v5 = 0;
    }

    LODWORD(v52[0]) = v5;
    v6 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, v52) + 200);
    goto LABEL_11;
  }

  v11 = *(a2[9] + 24);
  v49 = v11;
  v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = *v12;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
    v16 = *(a2 + 11);
    v47 = v12;
    v48 = v15;
    v45 = 0;
    if ((v16 & 0x800000) == 0)
    {
LABEL_40:
      v32 = a1[4];
      v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RoundOp,void>::id, *(**v32 + 32));
      if ((v34 & 1) == 0)
      {
        v54 = 1283;
        v53[0] = "coreml.round";
        v53[1] = 12;
        v51 = 259;
        llvm::operator+(v52, v50, &__src);
        llvm::report_fatal_error(&__src, 1);
      }

      __src = v32;
      v57[0] = v33;
      v57[1] = v58;
      v57[2] = 0x400000000;
      v58[4] = v59;
      v58[5] = 0x400000000;
      v59[4] = v60;
      v59[5] = 0x400000000;
      v60[8] = 4;
      v61 = v63;
      v62 = 0x100000000;
      v63[1] = v64;
      v63[2] = 0x100000000;
      v64[1] = 0;
      v64[2] = 0;
      v64[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v64[4] = 0;
      v64[6] = 0;
      mlir::ODIE::Compiler::CoreML::RoundOp::build(a1, &__src, v47, v49);
      v35 = mlir::Operation::create(&__src);
      mlir::OpBuilder::insert(a1, v35);
      v36 = *(*(v35 + 6) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RoundOp,void>::id)
      {
        v37 = v35;
      }

      else
      {
        v37 = 0;
      }

      v46 = v37 - 16;
      if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2)
      {
        v46 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v47, &v46, &v45) - 16;
      }

      v38 = *(a2 + 9);
      if (v38)
      {
        v39 = (a2 - 2);
      }

      else
      {
        v39 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v39, v38, &v46, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v41 = *a2;
        v40 = a2[1];
        *v40 = *a2;
        *(v41 + 8) = v40;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v7 = 1;
      goto LABEL_13;
    }

    v17 = v15;
    v4 = *(a2 + 17);
  }

  else
  {
    v17 = 0;
    v47 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
  }

  if (v4 != 2)
  {
    goto LABEL_40;
  }

  v18 = *(a2[9] + 56);
  v19 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v18 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v19)
  {
    v54 = 257;
    emitDiag(v3, 2, v52, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<58ul>(v57, "unable to convert decimals arg of round op to Shaped type");
    }

    goto LABEL_25;
  }

  (*(v20 + 24))(v20, v19);
  if (v21)
  {
    v54 = 257;
    emitDiag(v3, 2, v52, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<56ul>(v57, "expected decimals arg of round op to be a rank-0 tensor");
    }

LABEL_25:
    v6 = v61;
LABEL_11:
    v7 = (v6 & 1) == 0;
LABEL_12:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_13;
  }

  LODWORD(__src) = 1092616192;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &__src, 1);
  v23 = (*(v17 + 8))(v17, v12);
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v23);
  if ((v25 & 1) == 0)
  {
    v29 = a2[3];
    v52[0] = "failed to cast dtype in decimals calculation to same dtype as input for round op";
    v54 = 259;
    emitDiag(v29, 2, v52, &__src);
    v7 = (v61 & 1) == 0;
    goto LABEL_12;
  }

  v7 = v24;
  v44 = v24;
  v26 = (*(v17 + 8))(v17, v12);
  v42 = mlir::ODIE::Compiler::castValueToElementType(a1, v18, v26);
  v43 = v27;
  if ((v27 & 1) == 0)
  {
    v30 = a2[3];
    v54 = 257;
    emitDiag(v30, 2, v52, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<60ul>(v57, "failed to cast decimals to same dtype as input for round op");
    }

    goto LABEL_25;
  }

  __src = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::PowOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v44, &v42) - 16;
  __src = v11;
  v57[0] = v45;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v52);
  v28 = v55;
  if (v55)
  {
    v45 = *(v52[0] + 1);
    v49 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], &v47, &v49, &v45) - 16;
  }

  else
  {
    v31 = a2[3];
    v51 = 257;
    emitDiag(v31, 2, v50, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<61ul>(v57, "failed to broadcast decimalsFactor to inputType for round op");
    }

    v7 = (v61 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v55 == 1 && v52[0] != v53)
  {
    free(v52[0]);
  }

  if (v28)
  {
    goto LABEL_40;
  }

LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL replaceRsqrt(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v43[8] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 3);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1 && *(a2 + 9) == 1)
  {
    v5 = *(a2 - 1);
    v6 = *(*(a2 + 6) + 8);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    v35 = 1283;
    v31 = "expected ranked tensor result type for ";
    v33 = v8;
    v34 = v7;
    mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v3, &v31, &v25);
    if (v26 == 1)
    {
      v9 = *(*(a2 + 9) + 24);
      v10 = *(a1 + 4);
      v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id, *(**v10 + 32));
      if ((v12 & 1) == 0)
      {
        v30 = 1283;
        v29[2] = "coreml.rsqrt";
        v29[3] = 12;
        v28 = 259;
        llvm::operator+(v29, &v27, &v31);
        llvm::report_fatal_error(&v31, 1);
      }

      v31 = v10;
      v32 = v11;
      v33 = &v35;
      v34 = 0x400000000;
      v36 = v38;
      v37 = 0x400000000;
      v38[4] = v39;
      v38[5] = 0x400000000;
      v39[8] = 4;
      v40 = v42;
      v41 = 0x100000000;
      v42[1] = v43;
      v42[2] = 0x100000000;
      v43[1] = 0;
      v43[2] = 0;
      v43[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v43[4] = 0;
      v43[6] = 0;
      mlir::ODIE::Compiler::CoreML::RsqrtOp::build(a1, &v31, v25, v9);
      v13 = mlir::Operation::create(&v31);
      mlir::OpBuilder::insert(a1, v13);
      v14 = *(*(v13 + 6) + 16);
      mlir::OperationState::~OperationState(&v31);
      if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::RsqrtOp,void>::id)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      v16 = *(a2 + 9);
      if (v16)
      {
        v17 = (a2 - 16);
      }

      else
      {
        v17 = 0;
      }

      v29[0] = v17;
      v29[1] = v16;
      v18 = *(v15 + 9);
      v19 = (v15 - 16);
      if (!v18)
      {
        v19 = 0;
      }

      v31 = v19;
      v32 = v18;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v29, &v31);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v21 = *a2;
        v20 = *(a2 + 1);
        *v20 = *a2;
        *(v21 + 8) = v20;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v30 = 257;
    emitDiag(v3, 2, v29, &v31);
    if (v31)
    {
      mlir::Diagnostic::operator<<<34ul>(&v32, "expects 1 input and 1 output for ");
      if (v31)
      {
        mlir::Diagnostic::operator<<(&v32, *(a2 + 6));
      }
    }

    v22 = (v40 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v31);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL replaceScalarTensor(uint64_t *a1, uint64_t *a2)
{
  v74[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9) != 1 || (*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v4 = a2[3];
    v5 = "expects 1 input and 1 output for scalar tensor";
    goto LABEL_7;
  }

  v3 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = a2[3];
    v5 = "output type must be a ranked tensor type";
LABEL_7:
    __src = v5;
    v61 = 259;
    emitDiag(v4, 2, &__src, &v64);
    v6 = (v71 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
    goto LABEL_8;
  }

  v10 = *(a2[9] + 24);
  v11 = (a2 - 2);
  v12 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v58 = 1;
    v57 = 0;
    llvm::APFloat::APFloat(&v62, 0.0);
    v14 = (*(v10 + 8) & 0xFFFFFFFFFFFFFFF8);
    v64 = 0uLL;
    __src = v14;
    v54 = 0;
    v56 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v14 + 32), &v64, &__src, &v54);
    *&v64 = &v57;
    v15 = *(v10 + 8) & 7;
    if (v15 == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = v10;
    }

    if (!v16)
    {
      goto LABEL_35;
    }

    v17 = *(v16 + 8) & 7;
    if (v17 == 6)
    {
      v18 = v16 + 24 * *(v16 + 16);
      v19 = (v18 + 120);
      if (v18 == -120)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v19 = (v16 + 16 * v17 + 16);
    }

    if (mlir::detail::constant_int_value_binder::match(&v64, v19))
    {
      v25 = mlir::TensorType::operator mlir::ShapedType(&v56);
      v54 = mlir::DenseElementsAttr::get(v25, v26, &v57, 1);
      v27 = a1[4];
      v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**v27 + 32));
      *&v64 = v27;
      *(&v64 + 1) = v28;
      v65 = &v67;
      v66 = 0x400000000;
      v68[0] = v69;
      v68[1] = 0x400000000;
      v69[4] = v70;
      v69[5] = 0x400000000;
      v70[8] = 4;
      v71 = v73;
      v72 = 0x100000000;
      v73[1] = v74;
      v73[2] = 0x100000000;
      v74[1] = 0;
      v74[2] = 0;
      v74[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v74[4] = 0;
      v74[6] = 0;
      v29 = v56;
      v31 = mlir::DenseElementsAttr::operator mlir::ElementsAttr(&v54);
      if (v31)
      {
        v32 = *(v30 + 24);
      }

      else
      {
        v32 = 0;
      }

      __src = v29;
      v47 = mlir::OperationState::getOrAddProperties<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>(&v64);
      *v47 = v31;
      v47[1] = v32;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(v68, &__src, v60);
      v44 = mlir::Operation::create(&v64);
      mlir::OpBuilder::insert(a1, v44);
      if (*(*(v44 + 6) + 16) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
      {
        v44 = 0;
      }

      mlir::OperationState::~OperationState(&v64);
      goto LABEL_58;
    }

    v15 = *(v10 + 8) & 7;
LABEL_35:
    v54 = &v62;
    if (v15 == 7)
    {
      v33 = 0;
    }

    else
    {
      v33 = v10;
    }

    if (!v33)
    {
      goto LABEL_52;
    }

    v34 = *(v33 + 8) & 7;
    if (v34 == 6)
    {
      v35 = v33 + 24 * *(v33 + 16);
      v36 = v35 + 120;
      if (v35 == -120)
      {
LABEL_52:
        v45 = a2[3];
        v46 = "expects constant int/float scalar for scalar tensor";
LABEL_53:
        __src = v46;
        v61 = 259;
        emitDiag(v45, 2, &__src, &v64);
        v6 = (v71 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v64);
LABEL_68:
        llvm::APFloat::Storage::~Storage(&v62);
        if (v58 >= 0x41 && v57)
        {
          MEMORY[0x25F891010](v57, 0x1000C8000313F17);
        }

        goto LABEL_8;
      }
    }

    else
    {
      v36 = v33 + 16 * v34 + 16;
    }

    *&v64 = 0;
    __src = &v64;
    if (!mlir::detail::constant_op_binder<mlir::Attribute>::match(&__src, v36))
    {
      goto LABEL_52;
    }

    v37 = *(v36 - 8) & 0xFFFFFFFFFFFFFFF8;
    v38 = *v37;
    v39 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v38 + 8, v39))
    {
      v40 = *(*v37 + 136);
      if (v40 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v40 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        goto LABEL_52;
      }
    }

    if (!mlir::detail::constant_float_value_binder::match(&v54, v64))
    {
      goto LABEL_52;
    }

    v42 = mlir::TensorType::operator mlir::ShapedType(&v56);
    *&v64 = mlir::DenseElementsAttr::get(v42, v43, &v62, 1);
    v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::RankedTensorType &,mlir::DenseFPElementsAttr>(a1, a1[4], &v56, &v64);
LABEL_58:
    v48 = v3[3];
    if (v48 == *((*(v44 - 1) & 0xFFFFFFFFFFFFFFF8) + 24))
    {
      v54 = (v44 - 16);
      v55 = 1;
    }

    else
    {
      v54 = mlir::ODIE::Compiler::castValueToElementType(a1, (v44 - 16), v48);
      v55 = v49;
      if ((v49 & 1) == 0)
      {
        v45 = a2[3];
        v46 = "unable to cast constant op to output's element type";
        goto LABEL_53;
      }
    }

    v50 = *(a2 + 9);
    if (v50)
    {
      v51 = (a2 - 2);
    }

    else
    {
      v51 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v51, v50, &v54, 1);
    if (a2[2])
    {
      a2[2] = 0;
      v53 = *a2;
      v52 = a2[1];
      *v52 = *a2;
      *(v53 + 8) = v52;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v6 = 1;
    goto LABEL_68;
  }

  v20 = v3[3];
  if (v20 == v12[3])
  {
    v62 = *(a2[9] + 24);
    v22 = 1;
    v63 = 1;
  }

  else
  {
    v62 = mlir::ODIE::Compiler::castValueToElementType(a1, *(a2[9] + 24), v20);
    v63 = v21;
    if ((v21 & 1) == 0)
    {
      v4 = a2[3];
      v5 = "unable to cast input to output's element type";
      goto LABEL_7;
    }

    v22 = *(a2 + 9);
    if (!v22)
    {
      v11 = 0;
    }
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v22, &v62, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v24 = *a2;
    v23 = a2[1];
    *v23 = *a2;
    *(v24 + 8) = v23;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v6 = 1;
LABEL_8:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL replaceSelect(uint64_t *a1, uint64_t *a2)
{
  v51[8] = *MEMORY[0x277D85DE8];
  if (*(a2 + 9) == 1 && (*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v4 = *(a2[9] + 56);
    v5 = mlir::IntegerType::get(*a1, 32, 1);
    v6 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v5);
    v8 = v7;
    v9 = *(a2[9] + 88);
    v10 = mlir::IntegerType::get(*a1, 32, 1);
    v11 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v10);
    v12 = 0;
    if (v13 & 1) != 0 && (v8)
    {
      v14 = v11;
      v15 = *(a2[9] + 24);
      v39 = "TorchImport.select expects ranked tensor input";
      v43 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v15, &v39, &v34);
      if (v36 == 1)
      {
        (*(v35 + 24))(v35, v34);
        v17 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v6, v16);
        if (*(a2 + 9))
        {
          v18 = a2 - 2;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18[1];
        v20 = a1[4];
        v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v20 + 32));
        v39 = v20;
        v40 = v21;
        v41 = &v43;
        v42 = 0x400000000;
        v44 = v46;
        v45 = 0x400000000;
        v46[4] = v47;
        v46[5] = 0x400000000;
        v47[8] = 4;
        v48 = v50;
        v49 = 0x100000000;
        v50[1] = v51;
        v50[2] = 0x100000000;
        v51[1] = 0;
        v51[2] = 0;
        v51[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v51[4] = 0;
        v51[6] = 0;
        mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v39, v19 & 0xFFFFFFFFFFFFFFF8, v15, v17, v14);
        v22 = mlir::Operation::create(&v39);
        mlir::OpBuilder::insert(a1, v22);
        v23 = *(*(v22 + 6) + 16);
        mlir::OperationState::~OperationState(&v39);
        if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
        {
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        v25 = *(a2 + 9);
        if (v25)
        {
          v26 = a2 - 2;
        }

        else
        {
          v26 = 0;
        }

        v38[0] = v26;
        v38[1] = v25;
        v27 = *(v24 + 9);
        v28 = (v24 - 16);
        if (!v27)
        {
          v28 = 0;
        }

        v39 = v28;
        v40 = v27;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &v39);
        if (a2[2])
        {
          a2[2] = 0;
          v30 = *a2;
          v29 = a2[1];
          *v29 = *a2;
          *(v30 + 8) = v29;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v31 = a2[3];
    v34 = "expects 3 inputs and 1 output for Select";
    v37 = 259;
    emitDiag(v31, 2, &v34, &v39);
    v12 = (v48 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
  }

  v32 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SigmoidOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.sigmoid";
      v53 = 14;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::SigmoidOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SigmoidOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceSlice(uint64_t *a1, uint64_t *a2)
{
  v51[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 17), (v3 - 6) >= 0xFFFFFFFB))
  {
    v7 = 24;
    v8 = *(a2 + 17);
    while (1)
    {
      v9 = *(a2[9] + v7);
      v41 = "expected ranked tensor input to slice";
      v43 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v9, &v41, v38);
      if ((v39 & 1) == 0)
      {
        v20 = a2[3];
        v40 = 257;
        emitDiag(v20, 2, v38, &v41);
        if (v41)
        {
          mlir::Diagnostic::operator<<<50ul>(v42, "expected input operand be a shaped ranked tensor.");
        }

        goto LABEL_19;
      }

      if (v7 != 24)
      {
        v10 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          v10 = 0;
        }

        if (v10[2])
        {
          break;
        }

        v11 = v10[3];
        if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v11[2] & 0x3FFFFFFF) != 0x20)
        {
          break;
        }
      }

      v7 += 32;
      if (!--v8)
      {
        v12 = a2[9];
        v13 = *(v12 + 24);
        v14 = *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        if ((v3 - 1) <= 1)
        {
          v15 = create1DTensorConstantWithElement<int>(a1, 0, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
          goto LABEL_25;
        }

        v15 = get1DTensorOfIntegersExceptAtOneIndex(a1, *((*(v13 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0, *(v12 + 56), *(v12 + 88), a2[3]);
        if (v3 == 4)
        {
          v21 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 0x7FFFFFFF, *(a2[9] + 56), *(a2[9] + 120), a2[3]);
LABEL_26:
          v22 = v21;
          v23 = create1DTensorConstantWithElement<int>(a1, 1, v14);
        }

        else
        {
          if (v3 == 3)
          {
LABEL_25:
            v21 = create1DTensorConstantWithElement<int>(a1, 0x7FFFFFFF, v14);
            goto LABEL_26;
          }

          v22 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 0x7FFFFFFF, *(a2[9] + 56), *(a2[9] + 120), a2[3]);
          v23 = get1DTensorOfIntegersExceptAtOneIndex(a1, v14, 1, *(a2[9] + 56), *(a2[9] + 152), a2[3]);
        }

        v24 = v23;
        if (*(a2 + 9))
        {
          v25 = a2 - 2;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25[1];
        v27 = a1[4];
        v28 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceOp>(a1, *(**v27 + 32));
        v41 = v27;
        v42[0] = v28;
        v42[1] = &v43;
        v42[2] = 0x400000000;
        v44 = v46;
        v45 = 0x400000000;
        v46[4] = v47;
        v46[5] = 0x400000000;
        v47[8] = 4;
        v48 = v50;
        v49 = 0x100000000;
        v50[1] = v51;
        v50[2] = 0x100000000;
        v51[1] = 0;
        v51[2] = 0;
        v51[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v51[4] = 0;
        v51[6] = 0;
        mlir::ODIE::Compiler::CoreML::SliceOp::build(a1, &v41, v26 & 0xFFFFFFFFFFFFFFF8, v13, v15, v22, v24);
        v29 = mlir::Operation::create(&v41);
        mlir::OpBuilder::insert(a1, v29);
        v30 = *(*(v29 + 6) + 16);
        mlir::OperationState::~OperationState(&v41);
        if (v30 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceOp,void>::id)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = *(a2 + 9);
        if (v32)
        {
          v33 = a2 - 2;
        }

        else
        {
          v33 = 0;
        }

        v38[0] = v33;
        v38[1] = v32;
        v34 = *(v31 + 9);
        v35 = (v31 - 16);
        if (!v34)
        {
          v35 = 0;
        }

        v41 = v35;
        v42[0] = v34;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &v41);
        if (a2[2])
        {
          a2[2] = 0;
          v37 = *a2;
          v36 = a2[1];
          *v36 = *a2;
          *(v37 + 8) = v36;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v17 = 1;
        goto LABEL_20;
      }
    }

    v16 = a2[3];
    v40 = 257;
    emitDiag(v16, 2, v38, &v41);
    if (!v41)
    {
      goto LABEL_19;
    }

    v5 = "expected operands other than the input to be 0D tensors.";
LABEL_18:
    mlir::Diagnostic::operator<<<57ul>(v42, v5);
  }

  else
  {
    v4 = a2[3];
    v40 = 257;
    emitDiag(v4, 2, v38, &v41);
    if (v41)
    {
      v5 = "slice expects at least 1 operands and at most 5 operands";
      goto LABEL_18;
    }
  }

LABEL_19:
  v17 = v48 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v41);
LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

uint64_t replaceSliceScatter(uint64_t *a1, uint64_t *a2)
{
  v53[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && (v3 = *(a2 + 17), (v3 - 7) >= 0xFFFFFFFB))
  {
    v6 = 0;
    v7 = 24;
    while (1)
    {
      v8 = *(a2[9] + v7);
      v43 = "expected ranked tensor input to slice_scatter";
      v45 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v8, &v43, v40);
      if (v41 != 1)
      {
        v20 = 0;
        goto LABEL_17;
      }

      if (v6 >= 2)
      {
        v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v8 + 8) & 0xFFFFFFFFFFFFFFF8));
        v11 = v10;
        (*(v10 + 24))(v10, v9);
        if (v12)
        {
          break;
        }

        v13 = (*(v11 + 8))(v11, v9);
        if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || (v13[2] & 0x3FFFFFFF) != 0x20)
        {
          break;
        }
      }

      ++v6;
      v7 += 32;
      if (v3 == v6)
      {
        v14 = a2[9];
        v15 = *(v14 + 24);
        v16 = *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
        v17 = *(v14 + 56);
        if ((v3 & 6) == 2)
        {
          v18 = create1DTensorConstantWithElement<int>(a1, 0, *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16));
          goto LABEL_21;
        }

        v18 = get1DTensorOfIntegersExceptAtOneIndex(a1, *((*(v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 16), 0, *(v14 + 88), *(v14 + 120), a2[3]);
        if (v3 == 5)
        {
          v23 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 0x7FFFFFFF, *(a2[9] + 88), *(a2[9] + 152), a2[3]);
LABEL_22:
          v24 = v23;
          v25 = create1DTensorConstantWithElement<int>(a1, 1, v16);
        }

        else
        {
          if (v3 == 4)
          {
LABEL_21:
            v23 = create1DTensorConstantWithElement<int>(a1, 0x7FFFFFFF, v16);
            goto LABEL_22;
          }

          v24 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 0x7FFFFFFF, *(a2[9] + 88), *(a2[9] + 152), a2[3]);
          v25 = get1DTensorOfIntegersExceptAtOneIndex(a1, v16, 1, *(a2[9] + 88), *(a2[9] + 184), a2[3]);
        }

        v26 = v25;
        if (*(a2 + 9))
        {
          v27 = a2 - 2;
        }

        else
        {
          v27 = 0;
        }

        v28 = v27[1];
        v29 = a1[4];
        updated = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SliceUpdateOp>(a1, *(**v29 + 32));
        v43 = v29;
        v44[0] = updated;
        v44[1] = &v45;
        v44[2] = 0x400000000;
        v46 = v48;
        v47 = 0x400000000;
        v48[4] = v49;
        v48[5] = 0x400000000;
        v49[8] = 4;
        v50 = v52;
        v51 = 0x100000000;
        v52[1] = v53;
        v52[2] = 0x100000000;
        v53[1] = 0;
        v53[2] = 0;
        v53[3] = &mlir::detail::TypeIDResolver<void,void>::id;
        v53[4] = 0;
        v53[6] = 0;
        mlir::ODIE::Compiler::CoreML::SliceUpdateOp::build(a1, &v43, v28 & 0xFFFFFFFFFFFFFFF8, v15, v18, v24, v26, v17);
        v31 = mlir::Operation::create(&v43);
        mlir::OpBuilder::insert(a1, v31);
        v32 = *(*(v31 + 6) + 16);
        mlir::OperationState::~OperationState(&v43);
        if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SliceUpdateOp,void>::id)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        v34 = *(a2 + 9);
        if (v34)
        {
          v35 = a2 - 2;
        }

        else
        {
          v35 = 0;
        }

        v40[0] = v35;
        v40[1] = v34;
        v36 = *(v33 + 9);
        v37 = (v33 - 16);
        if (!v36)
        {
          v37 = 0;
        }

        v43 = v37;
        v44[0] = v36;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v40, &v43);
        if (a2[2])
        {
          a2[2] = 0;
          v39 = *a2;
          v38 = a2[1];
          *v38 = *a2;
          *(v39 + 8) = v38;
          *a2 = 0;
          a2[1] = 0;
        }

        mlir::Operation::destroy(a2);
        v20 = 1;
        goto LABEL_17;
      }
    }

    v19 = a2[3];
    v42 = 257;
    emitDiag(v19, 2, v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<89ul>(v44, "expected operands other than the input & src of slice_scatter to be 0D tensor of int32_t");
    }
  }

  else
  {
    v4 = a2[3];
    v42 = 257;
    emitDiag(v4, 2, v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<65ul>(v44, "slice_scatter expects at least 2 operands and at most 6 operands");
    }
  }

  v20 = v50 ^ 1;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
LABEL_17:
  v21 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

BOOL replaceSplitWithSizes(uint64_t a1, uint64_t *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (v3 = *(a2 + 17), (v3 - 4) < 0xFFFFFFFE) || *(a2 + 9) != 1)
  {
    v9 = a2[3];
    v39[0] = "expects 2-3 inputs and 1 output for split_with_sizes.";
    v41 = 259;
    emitDiag(v9, 2, v39, &v42);
LABEL_11:
    v10 = (v49 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
    goto LABEL_18;
  }

  v5 = *(a2[9] + 24);
  v42 = "expected ranked tensor input to split_with_sizes";
  v44 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v42, v39);
  if (v40 != 1)
  {
    goto LABEL_17;
  }

  v6 = *(a2[9] + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    v8 = v7 == 6 ? v6 + 24 * *(v6 + 16) + 120 : v6 + 16 * v7 + 16;
  }

  else
  {
    v8 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v8, a1);
  if ((v12 & 1) == 0)
  {
    goto LABEL_17;
  }

  v13 = TupleAs1DIntTensor;
  if (v3 == 3)
  {
    Tensor = *(a2[9] + 88);
    v42 = "expected ranked tensor dim input to split_with_sizes";
    v44 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(Tensor, &v42, v39);
    if ((v40 & 1) == 0)
    {
LABEL_17:
      v10 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    LODWORD(v42) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v42, 1, 0);
  }

  v17 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v38 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v18 = a2[3];
    v39[0] = "Expected result type to be TupleType, but got ";
    v41 = 259;
    emitDiag(v18, 2, v39, &v42);
    if (v42)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(v43, &v38);
    }

    goto LABEL_11;
  }

  v20 = v17[1];
  v19 = v17[2];
  v21 = *(a1 + 32);
  v22 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SplitOp>(*(**v21 + 32));
  v42 = v21;
  v43[0] = v22;
  v43[1] = &v44;
  v43[2] = 0x400000000;
  v45 = v47;
  v46 = 0x400000000;
  v47[4] = v48;
  v47[5] = 0x400000000;
  v48[8] = 4;
  v49 = v51;
  v50 = 0x100000000;
  v51[1] = v52;
  v51[2] = 0x100000000;
  *&v52[8] = 0u;
  v53 = &mlir::detail::TypeIDResolver<void,void>::id;
  v54 = 0;
  v55 = 0;
  mlir::ODIE::Compiler::CoreML::SplitOp::build(a1, &v42, v20 & 0xFFFFFFFFFFFFFFF9 | 2, v19, v5, v13, Tensor);
  v23 = mlir::Operation::create(&v42);
  mlir::OpBuilder::insert(a1, v23);
  v24 = *(*(v23 + 6) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SplitOp,void>::id)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 32);
  v27 = *(v25 + 9);
  v28 = (v25 - 16) & 0xFFFFFFFFFFFFFFF9 | 4;
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 4;
  }

  mlir::OperationName::OperationName(v39, "TorchImport.tuple_construct", 0x1B, *(**v26 + 32));
  mlir::OperationState::OperationState(&v42, v26, v39[0], v29, v27, &v38 + 2, 1, v30, 0, 0, 0, 0, 0, 0);
  v31 = mlir::Operation::create(&v42);
  mlir::OpBuilder::insert(a1, v31);
  mlir::OperationState::~OperationState(&v42);
  v32 = *(a2 + 9);
  if (v32)
  {
    v33 = a2 - 2;
  }

  else
  {
    v33 = 0;
  }

  v39[0] = v33;
  v39[1] = v32;
  v34 = v31[9];
  v35 = (v31 - 4);
  if (!v34)
  {
    v35 = 0;
  }

  v42 = v35;
  v43[0] = v34;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v39, &v42);
  if (a2[2])
  {
    a2[2] = 0;
    v37 = *a2;
    v36 = a2[1];
    *v36 = *a2;
    *(v37 + 8) = v36;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v10 = 1;
LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceSign(uint64_t *a1, uint64_t *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v14 = a2[3];
    v15 = "expects only 1 input for TorchImport.sign";
    goto LABEL_16;
  }

  v4 = *(a2[9] + 24);
  v25[0] = "expect ranked tensor type for input of TorchImport.sign op";
  v26 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, v25, v22);
  if (*(a2 + 9))
  {
    v5 = a2 - 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5[1];
  v7 = a2[3];
  v25[0] = "expect output of TorchImport.sign to be ranked tensor type";
  v26 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, v25, v20);
  v8 = 0;
  if (v21 == 1 && (v22[16] & 1) != 0)
  {
    SignOfTensor = mlir::ODIE::Compiler::getSignOfTensor(a1, v4, v20[0], v20[1]);
    v19 = v9;
    if (v9)
    {
      v10 = *(a2 + 9);
      if (v10)
      {
        v11 = (a2 - 2);
      }

      else
      {
        v11 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v11, v10, &SignOfTensor, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v13 = *a2;
        v12 = a2[1];
        *v12 = *a2;
        *(v13 + 8) = v12;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v8 = 1;
      goto LABEL_17;
    }

    v14 = a2[3];
    v15 = "failed to create coreml ops for lowering sign operation.";
LABEL_16:
    v23 = v15;
    v24 = 259;
    emitDiag(v14, 2, &v23, v25);
    v8 = (v27 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v25);
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SinOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.sin";
      v53 = 10;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::SinOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SinhOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinhOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.sinh";
      v53 = 11;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::SinhOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SinhOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::SqrtOp>(uint64_t *a1, uint64_t *a2)
{
  v61[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v50 = "expected ranked tensor input to unary op";
  LOWORD(v53) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v50, &v44);
  if (v46 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v44;
    v15 = v45;
    v16 = (*(v45 + 24))(v45, v44);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v49 = 257;
      emitDiag(v18, 2, &v47, &v50);
      if (v50)
      {
        mlir::Diagnostic::operator<<<66ul>(v51, "replaceUnary encountered input and output with mismatched shape: ");
        if (v50)
        {
          LODWORD(v47) = 4;
          v48 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v52, &v47, 1);
          v20 = v52 + 24 * v53;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v53;
          if (v50)
          {
            mlir::Diagnostic::operator<<<5ul>(v51, " vs ");
            if (v50)
            {
              LODWORD(v47) = 4;
              v48 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v52, &v47, 1);
              v23 = v52 + 24 * v53;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v53;
            }
          }
        }
      }

LABEL_16:
      v10 = v58 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v50);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v43 = a2[3];
        v49 = 257;
        emitDiag(v43, 2, &v47, &v50);
        if (v50)
        {
          mlir::Diagnostic::operator<<<48ul>(v51, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SqrtOp>(a1, *(**v32 + 32));
    v50 = v32;
    v51[0] = v33;
    v51[1] = &v53;
    v52 = 0x400000000;
    v54 = v56;
    v55 = 0x400000000;
    v56[4] = v57;
    v56[5] = 0x400000000;
    v57[8] = 4;
    v58 = v60;
    v59 = 0x100000000;
    v60[1] = v61;
    v60[2] = 0x100000000;
    v61[1] = 0;
    v61[2] = 0;
    v61[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v61[4] = 0;
    v61[6] = 0;
    mlir::ODIE::Compiler::CoreML::SqrtOp::build(a1, &v50, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v50);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v50);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SqrtOp,void>::id)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = *(a2 + 9);
    if (v37)
    {
      v38 = a2 - 2;
    }

    else
    {
      v38 = 0;
    }

    v47 = v38;
    v48 = v37;
    v39 = *(v36 + 9);
    v40 = (v36 - 16);
    if (!v39)
    {
      v40 = 0;
    }

    v50 = v40;
    v51[0] = v39;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v47, &v50);
    if (a2[2])
    {
      a2[2] = 0;
      v42 = *a2;
      v41 = a2[1];
      *v41 = *a2;
      *(v42 + 8) = v41;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceSqueeze(uint64_t *a1, uint64_t *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v12 = a2[3];
    v68 = 257;
    emitDiag(v12, 2, &v65, &v70);
    if (v70)
    {
      mlir::Diagnostic::operator<<<43ul>(&v71, "expects 2 inputs and 1 output for squeeze.");
    }

    goto LABEL_12;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v54 = v5;
  v6 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v16 = v6[2];
    if (!v16)
    {
LABEL_18:
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v20 = mlir::detail::InterfaceMap::lookup(v7 + 8, v19);
      v21 = (*(v20 + 24))(v20, v6);
      v70 = &v72;
      v71 = 0xC00000000;
      llvm::SmallVectorImpl<int>::append<long long const*,void>(&v70, v21, &v21[8 * v22]);
      Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v70, v71, 1);
      v65 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      v23 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v65, &v54, &Tensor);
      v24 = *(a2 + 9);
      if (v24)
      {
        v25 = a2 - 2;
      }

      else
      {
        v25 = 0;
      }

      v62 = v25;
      v63 = v24;
      v26 = *(v23 + 9);
      v27 = v23 - 16;
      if (!v26)
      {
        v27 = 0;
      }

      v65 = v27;
      v66 = v26;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v62, &v65);
      if (a2[2])
      {
        a2[2] = 0;
        v29 = *a2;
        v28 = a2[1];
        *v28 = *a2;
        *(v29 + 8) = v28;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      if (v70 != &v72)
      {
        free(v70);
      }

      v13 = 1;
      goto LABEL_13;
    }

    v17 = v6[1];
    v18 = 8 * v16;
    while (*v17 != 0x8000000000000000)
    {
      ++v17;
      v18 -= 8;
      if (!v18)
      {
        goto LABEL_18;
      }
    }
  }

  v8 = a2[3];
  v61 = v5;
  v9 = *(v4 + 56);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = *(v9 + 8) & 7;
    if (v10 == 6)
    {
      v11 = v9 + 24 * *(v9 + 16) + 120;
    }

    else
    {
      v11 = v9 + 16 * v10 + 16;
    }
  }

  else
  {
    v11 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v11, a1);
  v59 = TupleAs1DIntTensor;
  v60 = v31;
  if ((v31 & 1) == 0)
  {
    v65 = "expecting constant squeeze dimensions.";
    v68 = 259;
    emitDiag(v8, 2, &v65, &v70);
LABEL_12:
    v13 = (v75 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v70);
LABEL_13:
    v14 = *MEMORY[0x277D85DE8];
    return v13;
  }

  v32 = TupleAs1DIntTensor;
  v70 = "expecting ranked input type to squeeze.";
  LOWORD(v74) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v70, &Tensor);
  if (v58 != 1)
  {
    v13 = 0;
    goto LABEL_13;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v32, &v65);
  if ((v69 & 1) == 0)
  {
    v62 = "expecting constant squeeze dimensions.";
    v64 = 259;
    emitDiag(v8, 2, &v62, &v70);
LABEL_50:
    v47 = v75;
    goto LABEL_51;
  }

  v34 = Tensor;
  v33 = v57;
  (*(v57 + 24))(v57, Tensor);
  if (v69)
  {
    if (!v66)
    {
LABEL_42:
      v70 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
      v41 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v70, &v61, &v59);
      v42 = *(a2 + 9);
      v43 = a2 - 2;
      if (!v42)
      {
        v43 = 0;
      }

      v62 = v43;
      v63 = v42;
      v44 = *(v41 + 9);
      v45 = v41 - 16;
      if (!v44)
      {
        v45 = 0;
      }

      v70 = v45;
      v71 = v44;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v62, &v70);
      mlir::Operation::erase(a2);
      v46 = 1;
      goto LABEL_52;
    }

    v36 = v35;
    v37 = v65;
    v38 = 4 * v66;
    while (1)
    {
      v39 = *v37;
      if ((*v37 & 0x80000000) != 0)
      {
        (*(v33 + 24))(v33, v34);
        v39 += v40;
      }

      if ((v39 & 0x80000000) != 0 || v36 <= v39)
      {
        break;
      }

      if (*((*(v33 + 24))(v33, v34) + 8 * v39) == 0x8000000000000000)
      {
        v64 = 257;
        emitDiag(v8, 2, &v62, &v70);
        if (v70)
        {
          mlir::Diagnostic::operator<<<44ul>(&v71, "Cannot specify dynamically sized dimension ");
          if (v70)
          {
            LODWORD(v62) = 2;
            v63 = v39;
            v50 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v73, &v62, 1);
            v51 = v73 + 24 * v74;
            v52 = *v50;
            *(v51 + 16) = *(v50 + 16);
            *v51 = v52;
            ++v74;
            if (v70)
            {
              mlir::Diagnostic::operator<<<33ul>(&v71, " as target of squeeze operation.");
              if (v70)
              {
                mlir::Diagnostic::operator<<<42ul>(&v71, "Specified dims should be of static size 1");
              }
            }
          }
        }

        goto LABEL_50;
      }

      ++v37;
      v38 -= 4;
      if (!v38)
      {
        goto LABEL_42;
      }
    }

    v64 = 257;
    emitDiag(v8, 2, &v62, &v70);
    if (v70)
    {
      mlir::Diagnostic::operator<<<32ul>(&v71, "Specified dim must be in range ");
    }

    v62 = -v36;
    v48 = mlir::InFlightDiagnostic::operator<<<long long>(&v70, &v62);
    v49 = v48;
    if (*v48)
    {
      mlir::Diagnostic::operator<<<5ul>((v48 + 1), " to ");
    }

    v55 = v36 - 1;
    v47 = *(mlir::InFlightDiagnostic::operator<<<long long>(v49, &v55) + 200);
LABEL_51:
    v46 = v47 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v70);
LABEL_52:
    v13 = v46 & 1;
    if (v69 == 1 && v65 != &v67)
    {
      free(v65);
    }

    goto LABEL_13;
  }

  v53 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceBinaryOp<mlir::ODIE::Compiler::CoreML::SubOp,true>(v53);
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::SubOp,true>(uint64_t *a1, uint64_t *a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = *(a2[6] + 8);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = a2[9];
  v8 = v7[3];
  v9 = v7[7];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v10 = v7[11];
    v11 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = a2[3];
  v62 = v7[7];
  v63 = v8;
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor x input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v8, &__src, &v59);
  LOWORD(v79) = 1283;
  __src = "expected ranked tensor y input to ";
  v77 = v5;
  v78 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &__src, &v56);
  if (v61 != 1 || (v58 & 1) == 0)
  {
    goto LABEL_51;
  }

  v52 = v11;
  v51 = v10;
  v54 = v12;
  v14 = v59;
  v13 = v60;
  v15 = (*(v60 + 8))(v60, v59);
  v16 = v57;
  v53 = v56;
  v17 = (*(v57 + 8))(v57);
  PromotedType = getPromotedType(v15, v17);
  if ((v19 & 1) == 0)
  {
    v73[8] = 257;
    emitDiag(v54, 2, &v71, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(&v76, "Unable to get promoted type between ");
    }

    v33 = (*(v13 + 8))(v13, v14);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v33;
      v34 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v35 = v78 + 24 * v79;
      v36 = *v34;
      *(v35 + 16) = *(v34 + 16);
      *v35 = v36;
      ++v79;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(&v76, " and ");
      }
    }

    v37 = (*(v16 + 8))(v16, v53);
    if (__src)
    {
      LODWORD(v71) = 4;
      v72 = v37;
      v38 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v78, &v71, 1);
      v39 = v78 + 24 * v79;
      v40 = *v38;
      *(v39 + 16) = *(v38 + 16);
      *v39 = v40;
      ++v79;
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_51;
  }

  v20 = PromotedType;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, PromotedType);
  if (v22)
  {
    v23 = v21;
    v63 = v21;
    v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
    if (v25)
    {
      v62 = v24;
      __src = v23;
      v76 = v24;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v71);
      if (v74)
      {
        v26 = *v71;
        v27 = *(v71 + 1);
        v62 = v27;
        v63 = v26;
        if (!v52)
        {
LABEL_40:
          v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v63, &v62);
          v42 = (v43 - 16) & 0xFFFFFFFFFFFFFF00;
          v41 = (v43 - 16);
          v31 = 1;
          goto LABEL_41;
        }

        v28 = (*(v16 + 8))(v16, v53);
        v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v51, v28);
        if (v30)
        {
          __src = v27;
          v76 = v29;
          mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v66);
          v31 = v70;
          if (v70)
          {
            v32 = *(v66 + 1);
            __src = *v66;
            v64[0] = v32;
            v55 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
            v62 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v54, &v55, &__src, v64) - 16;
          }

          else
          {
            v65 = 257;
            emitDiag(v54, 2, v64, &__src);
            if (__src)
            {
              mlir::Diagnostic::operator<<<41ul>(&v76, "Unable to broadcast RHS and alpha of op ");
              if (__src)
              {
                v65 = 261;
                v64[0] = v5;
                v64[1] = v6;
                mlir::Diagnostic::operator<<(&v76, v64);
              }
            }

            mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
          }

          if (v70 == 1 && v66 != &v68)
          {
            free(v66);
          }

          if (v31)
          {
            goto LABEL_40;
          }

          v41 = 0;
LABEL_31:
          v42 = 0;
LABEL_41:
          if (v74 == 1 && v71 != v73)
          {
            free(v71);
          }

          __src = (v42 | v41);
          LOBYTE(v76) = v31;
          if (v31)
          {
            v44 = *(a2 + 9);
            if (v44)
            {
              v45 = (a2 - 2);
            }

            else
            {
              v45 = 0;
            }

            mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v45, v44, &__src, 1);
            if (a2[2])
            {
              a2[2] = 0;
              v47 = *a2;
              v46 = a2[1];
              *v46 = *a2;
              *(v47 + 8) = v46;
              *a2 = 0;
              a2[1] = 0;
            }

            mlir::Operation::destroy(a2);
            result = 1;
            goto LABEL_52;
          }

LABEL_51:
          result = 0;
LABEL_52:
          v49 = *MEMORY[0x277D85DE8];
          return result;
        }

        v69 = 257;
        emitDiag(v54, 2, &v66, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(&v76, "Failed to cast alpha to rhs element type for op ");
          if (__src)
          {
            v69 = 261;
            v66 = v5;
            v67 = v6;
            mlir::Diagnostic::operator<<(&v76, &v66);
          }
        }
      }

      else
      {
        v69 = 257;
        emitDiag(v54, 2, &v66, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&v76, " Unable to broadcast LHS and RHS of ");
          if (__src)
          {
            v69 = 261;
            v66 = v5;
            v67 = v6;
            mlir::Diagnostic::operator<<(&v76, &v66);
            if (__src)
            {
              mlir::Diagnostic::operator<<<4ul>(&v76, " op");
            }
          }
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      v41 = 0;
      v31 = 0;
      goto LABEL_31;
    }
  }

  v50 = std::__throw_bad_optional_access[abi:nn200100]();
}

BOOL replaceReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp,&(anonymous namespace::TorchImportToCorePass::matchAndReplaceOperation(mlir::Operation &,mlir::OpBuilder &)::sumOpName)>(uint64_t *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 24);
  v35 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), v4 > 3) || (v4 ? (v5 = *(a2 + 36) == 1) : (v5 = 0), !v5))
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<37ul>(v40, "expects 1-3 inputs and 1 output for ");
    }

    v36[0] = "sum.dim_intlist";
    v6 = *(mlir::InFlightDiagnostic::operator<<<char const*>(&v39, v36) + 200);
LABEL_10:
    v7 = (v6 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    goto LABEL_11;
  }

  v11 = *(a2 + 72);
  v12 = v11[3];
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[7];
    if (v4 == 3)
    {
      v14 = v11[11];
      goto LABEL_17;
    }
  }

  LOBYTE(v39) = 0;
  v14 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v39, 1);
LABEL_17:
  v34 = v14;
  getReduceResultType(v32, a2);
  if ((v33 & 1) == 0)
  {
    v37 = 257;
    emitDiag(v2, 2, v36, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<42ul>(v40, "unable to figure out the result type for ");
      if (v39)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v36);
        mlir::Diagnostic::appendOp(v40, a2, v36);
      }
    }

    v6 = v41;
    goto LABEL_10;
  }

  v39 = "sum.dim_intlist";
  v40[0] = 15;
  v15 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v39, &v35, v12, v13, &v34, v32);
  v30 = v15;
  v31 = v16;
  if (v16)
  {
    v17 = *(a2 + 36);
    if (v17)
    {
      v18 = a2 - 16;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v18 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v19 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v19 = 0;
    }

    v29 = v19;
    if (v19)
    {
      v20 = a1[4];
      v38 = v15;
      mlir::OperationName::OperationName(v36, "TorchImport.tuple_construct", 0x1B, *(**v20 + 32));
      mlir::OperationState::OperationState(&v39, v20, v36[0], &v38, 1, &v29 + 2, 1, v21, 0, 0, 0, 0, 0, 0);
      v22 = mlir::Operation::create(&v39);
      mlir::OpBuilder::insert(a1, v22);
      mlir::OperationState::~OperationState(&v39);
      v23 = *(a2 + 36);
      if (v23)
      {
        v24 = (a2 - 16);
      }

      else
      {
        v24 = 0;
      }

      v36[0] = v24;
      v36[1] = v23;
      v25 = v22[9];
      v26 = (v22 - 4);
      if (!v25)
      {
        v26 = 0;
      }

      v39 = v26;
      v40[0] = v25;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v36, &v39);
    }

    else
    {
      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v18, v17, &v30, 1);
    }

    if (*(a2 + 16))
    {
      *(a2 + 16) = 0;
      v28 = *a2;
      v27 = *(a2 + 8);
      *v27 = *a2;
      *(v28 + 8) = v27;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    mlir::Operation::destroy(a2);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL replaceSymSize(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v44[8] = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v27 = v4;
  *&v33 = "expected ranked tensor input to sym_size.int";
  v36 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v33, v28);
  if (v29)
  {
    v5 = *(a2 + 3);
    v32 = *((*(v4 + 8) & 0xFFFFFFFFFFFFFFF8) + 16);
    v6 = mlir::IntegerType::get(*a1, 32, 1);
    *&v33 = &v32;
    *(&v33 + 1) = 1;
    v28[0] = v6;
    v31 = 0;
    *&v33 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), &v33, v28, &v31);
    v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, v5, &v33, &v27);
    LODWORD(v33) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v33, 1, 0);
    v9 = mlir::IntegerType::get(*a1, 32, 1);
    v33 = 0uLL;
    v28[0] = v9;
    v31 = 0;
    v10 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v9 + 32), &v33, v28, &v31);
    v11 = *(*(a2 + 9) + 56);
    v12 = *(a1 + 4);
    v13 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SelectOp>(a1, *(**v12 + 32));
    *&v33 = v12;
    *(&v33 + 1) = v13;
    v34 = &v36;
    v35 = 0x400000000;
    v37 = v39;
    v38 = 0x400000000;
    v39[4] = v40;
    v39[5] = 0x400000000;
    v40[8] = 4;
    v41 = v43;
    v42 = 0x100000000;
    v43[1] = v44;
    v43[2] = 0x100000000;
    v44[1] = 0;
    v44[2] = 0;
    v44[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v44[4] = 0;
    v44[6] = 0;
    mlir::ODIE::Compiler::CoreML::SelectOp::build(a1, &v33, v10, (v7 - 16), Tensor, v11);
    v14 = mlir::Operation::create(&v33);
    mlir::OpBuilder::insert(a1, v14);
    v15 = *(*(v14 + 6) + 16);
    mlir::OperationState::~OperationState(&v33);
    if (v15 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SelectOp,void>::id)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 9);
    v18 = (a2 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v28[0] = v18;
    v28[1] = v17;
    v19 = *(v16 + 9);
    v20 = v16 - 16;
    if (!v19)
    {
      v20 = 0;
    }

    *&v33 = v20;
    *(&v33 + 1) = v19;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v28, &v33);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v22 = *a2;
      v21 = *(a2 + 1);
      *v21 = *a2;
      *(v22 + 8) = v21;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    v23 = 1;
  }

  else
  {
    v24 = *(a2 + 3);
    v30 = 257;
    emitDiag(v24, 2, v28, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<50ul>(&v33 + 8, "expected input operand be a shaped ranked tensor.");
    }

    v23 = (v41 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::TanOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.tan";
      v53 = 10;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::TanOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::TanhOp>(uint64_t *a1, uint64_t *a2)
{
  v66[8] = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unary op";
  LOWORD(v58) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v55, &v45);
  if (v47 == 1)
  {
    if (*(a2 + 9))
    {
      v5 = a2 - 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = (v5[1] & 0xFFFFFFFFFFFFFFF8);
    if (v6)
    {
      v7 = *v6;
      v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v9 = mlir::detail::InterfaceMap::lookup(v7 + 8, v8);
    }

    else
    {
      v9 = 0;
    }

    v11 = (*(v9 + 24))(v9, v6);
    v13 = v12;
    v14 = v45;
    v15 = v46;
    v16 = (*(v46 + 24))(v46, v45);
    if (v13 != v17 || memcmp(v11, v16, 8 * v13))
    {
      v18 = a2[3];
      v54 = 257;
      emitDiag(v18, 2, &v50, &v55);
      if (v55)
      {
        mlir::Diagnostic::operator<<<66ul>(v56, "replaceUnary encountered input and output with mismatched shape: ");
        if (v55)
        {
          LODWORD(v50) = 4;
          v51 = v14;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
          v20 = v57 + 24 * v58;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v58;
          if (v55)
          {
            mlir::Diagnostic::operator<<<5ul>(v56, " vs ");
            if (v55)
            {
              LODWORD(v50) = 4;
              v51 = v6;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v57, &v50, 1);
              v23 = v57 + 24 * v58;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v58;
            }
          }
        }
      }

LABEL_16:
      v10 = v63 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
      goto LABEL_17;
    }

    v27 = (*(v9 + 8))(v9, v6);
    if (v27 != (*(v15 + 8))(v15, v14))
    {
      v28 = (*(v9 + 8))(v9, v6);
      v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v28);
      if ((v30 & 1) == 0)
      {
        v44 = a2[3];
        v54 = 257;
        emitDiag(v44, 2, &v50, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<48ul>(v56, "failed to cast input of unary op to result type");
        }

        goto LABEL_16;
      }

      v4 = v29;
    }

    v31 = *(v4 + 8);
    v32 = a1[4];
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.tanh";
      v53 = 11;
      v49 = 259;
      llvm::operator+(&v50, &v48, &v55);
      llvm::report_fatal_error(&v55, 1);
    }

    v55 = v32;
    v56[0] = v33;
    v56[1] = &v58;
    v57 = 0x400000000;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
    v62[8] = 4;
    v63 = v65;
    v64 = 0x100000000;
    v65[1] = v66;
    v65[2] = 0x100000000;
    v66[1] = 0;
    v66[2] = 0;
    v66[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v66[4] = 0;
    v66[6] = 0;
    mlir::ODIE::Compiler::CoreML::TanhOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::TanhOp,void>::id)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 9);
    if (v38)
    {
      v39 = a2 - 2;
    }

    else
    {
      v39 = 0;
    }

    v50 = v39;
    v51 = v38;
    v40 = *(v37 + 9);
    v41 = (v37 - 16);
    if (!v40)
    {
      v41 = 0;
    }

    v55 = v41;
    v56[0] = v40;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v50, &v55);
    if (a2[2])
    {
      a2[2] = 0;
      v43 = *a2;
      v42 = a2[1];
      *v42 = *a2;
      *(v43 + 8) = v42;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t replaceTopK(uint64_t *a1, uint64_t a2)
{
  v114 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v78 = v3;
  if ((*(a2 + 46) & 0x80) == 0 || (v5 = *(a2 + 68), v5 - 6 <= 0xFFFFFFFB))
  {
    v84 = 257;
    emitDiag(v3, 2, &v81, v92);
    if (v92[0])
    {
      mlir::Diagnostic::operator<<<41ul>(&v92[1], "topk op expects between 2 and 5 operands");
    }

    goto LABEL_21;
  }

  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  if (*(*(*(v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = *(v7 + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v8 = 0;
  }

  v77 = v8;
  if (!v8)
  {
    v18 = "topk op expects ranked tensor input";
LABEL_20:
    v81 = v18;
    v84 = 259;
    emitDiag(v3, 2, &v81, v92);
LABEL_21:
    v19 = (v103 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
LABEL_63:
    v64 = *MEMORY[0x277D85DE8];
    return v19;
  }

  v9 = *(v8 + 16);
  v75 = *(v6 + 56);
  v76 = &v78;
  v88[0] = &unk_286EA3570;
  v88[3] = v88;
  v10 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v75, "k", 1, v88, "si32", 4);
  std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v88);
  if ((v10 & 1) == 0)
  {
    goto LABEL_62;
  }

  LODWORD(v92[0]) = -1;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v92, 1, 0);
  if (v5 < 3)
  {
    v12 = Tensor;
    goto LABEL_23;
  }

  v12 = *(*(a2 + 72) + 88);
  v87[0] = &unk_286EA3570;
  v87[3] = v87;
  v13 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v12, "dimension", 9, v87, "si32", 4);
  std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v87);
  if ((v13 & 1) == 0)
  {
LABEL_62:
    v19 = 0;
    goto LABEL_63;
  }

  v92[0] = 0;
  v92[1] = 0;
  v81 = v92;
  if ((~*(v12 + 8) & 7) != 0)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = *(v14 + 8) & 7;
  if (v15 == 6)
  {
    v16 = v14 + 24 * *(v14 + 16);
    v17 = v16 + 120;
    if (v16 == -120)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v17 = v14 + 16 * v15 + 16;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v81, v17))
  {
LABEL_69:
    v3 = v78;
    v18 = "topk op expects dimension operand to be a constant";
    goto LABEL_20;
  }

LABEL_23:
  v20 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v12, v9);
  LOBYTE(v92[0]) = 1;
  v21 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  if (v5 < 4)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(*(a2 + 72) + 120);
    v86[0] = &unk_286EA35B8;
    v86[3] = v86;
    v23 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v22, "descending", 10, v86, "i1", 2);
    std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v86);
    if ((v23 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  LOBYTE(v92[0]) = 1;
  mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  if (v5 >= 5)
  {
    v24 = *(*(a2 + 72) + 152);
    v85[0] = &unk_286EA35B8;
    v85[3] = v85;
    v25 = replaceTopK(mlir::ImplicitLocOpBuilder &,mlir::Operation *)::$_2::operator()(&v76, v24, "sorted", 6, v85, "i1", 2);
    std::__function::__value_func<BOOL ()(mlir::RankedTensorType)>::~__value_func[abi:nn200100](v85);
    if ((v25 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v26 = v20;
  LOBYTE(v92[0]) = 0;
  v68 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, v92, 1);
  v27 = mlir::IntegerType::get(*a1, 32, 1);
  v28 = a1[4];
  v29 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SortOp,void>::id, *(**v28 + 32));
  if ((v30 & 1) == 0)
  {
    v84 = 1283;
    v83[0] = "coreml.sort";
    v66 = 11;
    goto LABEL_72;
  }

  v92[0] = v28;
  v92[1] = v29;
  v93 = v95;
  v94 = 0x400000000;
  v96 = v98;
  v97 = 0x400000000;
  v99 = v101;
  v100 = 0x400000000;
  v102 = 4;
  v103 = &v105;
  v104 = 0x100000000;
  v106 = &v108;
  v107 = 0x100000000;
  v110 = 0;
  v109 = 0;
  v111 = &mlir::detail::TypeIDResolver<void,void>::id;
  v112 = 0;
  v113 = 0;
  mlir::ODIE::Compiler::CoreML::SortOp::build(a1, v92, v8, v7, v20, v22, v68);
  v31 = mlir::Operation::create(v92);
  mlir::OpBuilder::insert(a1, v31);
  v32 = *(*(v31 + 6) + 16);
  mlir::OperationState::~OperationState(v92);
  if (v32 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SortOp,void>::id)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0;
  }

  v74 = v33;
  *v92 = *(v8 + 8);
  LOBYTE(v93) = 1;
  v34 = mlir::TensorType::cloneWith(&v77, v92, v27);
  v35 = a1[4];
  v36 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArgSortOp,void>::id, *(**v35 + 32));
  if ((v37 & 1) == 0)
  {
    v84 = 1283;
    v83[0] = "coreml.argsort";
    v66 = 14;
LABEL_72:
    v83[1] = v66;
    v91 = 259;
    llvm::operator+(&v81, &v89, v92);
    llvm::report_fatal_error(v92, 1);
  }

  v92[0] = v35;
  v92[1] = v36;
  v93 = v95;
  v94 = 0x400000000;
  v96 = v98;
  v97 = 0x400000000;
  v99 = v101;
  v100 = 0x400000000;
  v102 = 4;
  v103 = &v105;
  v104 = 0x100000000;
  v106 = &v108;
  v107 = 0x100000000;
  v110 = 0;
  v109 = 0;
  v111 = &mlir::detail::TypeIDResolver<void,void>::id;
  v112 = 0;
  v113 = 0;
  mlir::ODIE::Compiler::CoreML::ArgSortOp::build(a1, v92, v34, v7, v26, v22, v68);
  v38 = mlir::Operation::create(v92);
  mlir::OpBuilder::insert(a1, v38);
  v39 = *(*(v38 + 6) + 16);
  mlir::OperationState::~OperationState(v92);
  if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ArgSortOp,void>::id)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  v73 = v40;
  v72 = create1DTensorConstantWithElement<int>(a1, 0, v9);
  v71 = create1DTensorConstantWithElement<int>(a1, 1, v9);
  v81 = v83;
  v82 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::assign(&v81, v9, 0);
  mlir::ODIE::Compiler::extract1DIntVector<int>(v26, v92);
  if (v96)
  {
    v41 = *v92[0];
    if (v92[0] != &v93)
    {
      free(v92[0]);
    }

    if (v9 > 0)
    {
      for (i = 0; i != v9; ++i)
      {
        if (v41 == i)
        {
          v79 = 0;
          v80 = 1;
          v92[0] = &v80;
          v92[1] = 1;
          v89 = v27;
          v92[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v27 + 32), v92, &v89, &v79);
          LODWORD(v79) = 1;
          v89 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v79, 1);
          v43 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType &,mlir::Value &,mlir::Value &>(a1, a1[4], v92, &v75, &v89);
          *(v81 + v41) = v43 - 16;
        }

        else
        {
          LODWORD(v92[0]) = 0x7FFFFFFF;
          v44 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v92, 1);
          *(v81 + i) = v44;
        }
      }
    }

    v79 = 0;
    v80 = v9;
    v92[0] = &v80;
    v92[1] = 1;
    v89 = v27;
    v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v27 + 32), v92, &v89, &v79);
    LODWORD(v92[0]) = 0;
    v46 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v92, 1, 0);
    v47 = a1[4];
    v48 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConcatOp>(a1, *(**v47 + 32));
    v92[0] = v47;
    v92[1] = v48;
    v93 = v95;
    v94 = 0x400000000;
    v96 = v98;
    v97 = 0x400000000;
    v99 = v101;
    v100 = 0x400000000;
    v102 = 4;
    v103 = &v105;
    v104 = 0x100000000;
    v106 = &v108;
    v107 = 0x100000000;
    v110 = 0;
    v109 = 0;
    v111 = &mlir::detail::TypeIDResolver<void,void>::id;
    v112 = 0;
    v113 = 0;
    mlir::ODIE::Compiler::CoreML::ConcatOp::build(a1, v92, v45, v46, v81 & 0xFFFFFFFFFFFFFFF9, v82);
    v49 = mlir::Operation::create(v92);
    mlir::OpBuilder::insert(a1, v49);
    v50 = *(*(v49 + 6) + 16);
    mlir::OperationState::~OperationState(v92);
    if (v50 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConcatOp,void>::id)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0;
    }

    v79 = v51 - 16;
    if (*(a2 + 36))
    {
      v52 = a2 - 16;
    }

    else
    {
      v52 = 0;
    }

    v53 = (*(v52 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (*(*v53 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v53 = 0;
    }

    v80 = v53;
    if (v53 && v53[2] == 2)
    {
      v54 = v53[1];
      v55 = *v54;
      v69 = v54[1];
      v70 = v55;
      v56 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::SortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], &v70, &v74, &v72, &v79, &v71) - 16);
      v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SliceOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::ArgSortOp &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], &v69, &v73, &v72, &v79, &v71);
      v58 = a1[4];
      v89 = v56;
      v90 = v57 - 16;
      v19 = 1;
      mlir::OperationState::OperationState(v92, v58, "TorchImport.tuple_construct", 0x1B, &v89, 2, &v80 + 2, 1, 0, 0, 0, 0, 0, 0);
      v59 = mlir::Operation::create(v92);
      mlir::OpBuilder::insert(a1, v59);
      mlir::OperationState::~OperationState(v92);
      v60 = *(a2 + 36);
      if (v60)
      {
        v61 = (a2 - 16);
      }

      else
      {
        v61 = 0;
      }

      v89 = v61;
      v90 = v60;
      v62 = v59[9];
      v63 = v59 - 4;
      if (!v62)
      {
        v63 = 0;
      }

      v92[0] = v63;
      v92[1] = v62;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v89, v92);
      mlir::Operation::erase(a2);
    }

    else
    {
      v89 = "topk op expects result type to be a tuple containing two elements.";
      v91 = 259;
      emitDiag(v78, 2, &v89, v92);
      v19 = (v103 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v92);
    }

    if (v81 != v83)
    {
      free(v81);
    }

    goto LABEL_63;
  }

  v67 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceTrueDiv(v67);
}

uint64_t replaceTrueDiv(uint64_t *a1, uint64_t *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v12 = a2[3];
    v35 = 257;
    emitDiag(v12, 2, v34, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<42ul>(v37, "expect 2 operands for TorchImport.truediv");
    }

    goto LABEL_10;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v32 = *(v4 + 56);
  v6 = v32;
  v33 = v5;
  v36 = "expected shaped type for input to TorchImport.truediv";
  v38 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v36, v31);
  v36 = "expected shaped type for other to TorchImport.truediv";
  v38 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v36, v30);
  v36 = "expected shaped type for output of TorchImport.truediv";
  v38 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v36, v28);
  v7 = 0;
  if (v31[16] != 1 || (v30[16] & 1) == 0 || (v29 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = v28[0];
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28[0]);
  if (v9)
  {
    v11 = (*(v10 + 8))(v10, v9);
  }

  else
  {
    v11 = v8;
  }

  v15 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v11);
  if ((v16 & 1) == 0)
  {
    v25 = a2[3];
    v35 = 257;
    emitDiag(v25, 2, v34, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<16ul>(v37, "unable to cast ");
      if (v36)
      {
        v26 = v5;
LABEL_29:
        mlir::Diagnostic::operator<<(v37, v26);
        if (v36)
        {
          mlir::Diagnostic::operator<<<19ul>(v37, " to same dtype as ");
          if (v36)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v37, v28);
          }
        }
      }
    }

LABEL_10:
    v7 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v36);
    goto LABEL_11;
  }

  v33 = v15;
  v17 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v8);
  if (v17)
  {
    v8 = (*(v18 + 8))(v18, v17);
  }

  v19 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v8);
  if ((v20 & 1) == 0)
  {
    v27 = a2[3];
    v35 = 257;
    emitDiag(v27, 2, v34, &v36);
    if (v36)
    {
      mlir::Diagnostic::operator<<<16ul>(v37, "unable to cast ");
      if (v36)
      {
        v26 = v6;
        goto LABEL_29;
      }
    }

    goto LABEL_10;
  }

  v32 = v19;
  v36 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v28, &v33, &v32) - 16;
  v21 = *(a2 + 9);
  if (v21)
  {
    v22 = (a2 - 2);
  }

  else
  {
    v22 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v22, v21, &v36, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v24 = *a2;
    v23 = a2[1];
    *v23 = *a2;
    *(v24 + 8) = v23;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v7 = 1;
LABEL_11:
  v13 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t replaceUnsqueeze(uint64_t *a1, uint64_t *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v41 = *(a2[9] + 24);
  v55 = "expected ranked tensor input to unsqueeze";
  v58 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v41, &v55, &v51);
  if (v53 != 1 || (v4 = *(a2 - 1), v5 = a2[3], v55 = "expected shaped type for the output", v58 = 259, mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v55, &v38), v40 != 1))
  {
LABEL_32:
    result = 0;
    goto LABEL_33;
  }

  v6 = v38;
  v7 = v39;
  if (!(*(v39 + 16))(v39, v38))
  {
LABEL_18:
    v25 = a2[3];
    v50 = *(a2[9] + 24);
    v55 = "expecting ranked input type to unsqueeze";
    v58 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v50, &v55, v48);
    if (v49 == 1)
    {
      v47 = *(a2[9] + 56);
      v55 = "expecting ranked dim tensor to unsqueeze";
      v58 = 259;
      mlir::ODIE::Compiler::getShapedRankedType(v47, &v55, &Tensor);
      if (v46)
      {
        v27 = Tensor;
        v26 = v45;
        (*(v45 + 24))(v45, Tensor);
        if (!v28)
        {
          v29 = (*(v26 + 8))(v26, v27);
          if (*(*v29 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v29[2] & 0x3FFFFFFF) == 0x20)
          {
            v30 = 1;
            LODWORD(v55) = 1;
            v43 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v55, 1);
            v55 = (*(v43 + 1) & 0xFFFFFFFFFFFFFFF8);
            v42 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v55, &v47, &v43);
            if (*(a2 + 9))
            {
              v31 = (a2 - 2);
            }

            else
            {
              v31 = 0;
            }

            v55 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v31, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
            v32 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::Type,mlir::Value &,mlir::ODIE::Compiler::CoreML::ReshapeOp &>(a1, a1[4], &v55, &v50, &v42);
            v33 = *(a2 + 9);
            if (v33)
            {
              v34 = a2 - 2;
            }

            else
            {
              v34 = 0;
            }

            v51 = v34;
            v52 = v33;
            v35 = *(v32 + 9);
            v36 = v32 - 16;
            if (!v35)
            {
              v36 = 0;
            }

            v55 = v36;
            v56 = v35;
            mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v51, &v55);
            mlir::Operation::erase(a2);
            goto LABEL_39;
          }
        }

        v54 = 257;
        emitDiag(v25, 2, &v51, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<42ul>(&v56, "expecting scalar i32 unsqueeze dimension.");
        }
      }

      else
      {
        v54 = 257;
        emitDiag(v25, 2, &v51, &v55);
        if (v55)
        {
          mlir::Diagnostic::operator<<<41ul>(&v56, "expecting ranked dim tensor to unsqueeze");
        }
      }

      v30 = v59 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v55);
LABEL_39:
      result = v30 & 1;
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v8 = (*(v7 + 24))(v7, v6);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_18;
  }

LABEL_8:
  v11 = *v6;
  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v13 = mlir::detail::InterfaceMap::lookup(v11 + 8, v12);
  v14 = (*(v13 + 24))(v13, v6);
  v55 = v57;
  v56 = 0xC00000000;
  llvm::SmallVectorImpl<int>::append<long long const*,void>(&v55, v14, &v14[8 * v15]);
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, v55, v56, 0);
  v16 = a2[3];
  v51 = (*(a2 - 1) & 0xFFFFFFFFFFFFFFF8);
  v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v16, &v51, &v41, &Tensor);
  v18 = *(a2 + 9);
  if (v18)
  {
    v19 = a2 - 2;
  }

  else
  {
    v19 = 0;
  }

  v48[0] = v19;
  v48[1] = v18;
  v20 = *(v17 + 9);
  v21 = (v17 - 16);
  if (!v20)
  {
    v21 = 0;
  }

  v51 = v21;
  v52 = v20;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v48, &v51);
  if (a2[2])
  {
    a2[2] = 0;
    v23 = *a2;
    v22 = a2[1];
    *v22 = *a2;
    *(v23 + 8) = v22;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v55 != v57)
  {
    free(v55);
  }

  result = 1;
LABEL_33:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL replaceView(void **a1, mlir::Operation *a2)
{
  v67[8] = *MEMORY[0x277D85DE8];
  v46 = *(*(a2 + 9) + 24);
  *&v56 = "expected ranked tensor input to view";
  v59 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v46, &v56, &v43);
  if (v45 != 1)
  {
    goto LABEL_46;
  }

  v5 = v43;
  v4 = v44;
  if ((*(v44 + 16))(v44, v43))
  {
    v6 = (*(v4 + 24))(v4, v5);
    if (v7)
    {
      v8 = 8 * v7;
      while (*v6 != 0x8000000000000000)
      {
        ++v6;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_12;
    }

LABEL_7:
    v9 = *(*(a2 + 9) + 56);
    if ((~*(v9 + 8) & 7) == 0)
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = *(v9 + 8) & 7;
      if (v10 == 6)
      {
        v11 = v9 + 24 * *(v9 + 16) + 120;
      }

      else
      {
        v11 = v9 + 16 * v10 + 16;
      }
    }

    else
    {
      v11 = 0;
    }

    TupleAs1DIntTensor = getTupleAs1DIntTensor(v11, a1);
    if (v33)
    {
      v48[0] = TupleAs1DIntTensor;
      *&v56 = *(a2 - 1) & 0xFFFFFFFFFFFFFFF8;
      v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &v56, &v46, v48);
      v35 = *(a2 + 9);
      if (v35)
      {
        v36 = (a2 - 16);
      }

      else
      {
        v36 = 0;
      }

      v52 = v36;
      v53 = v35;
      v37 = *(v34 + 9);
      v38 = v34 - 16;
      if (!v37)
      {
        v38 = 0;
      }

      *&v56 = v38;
      *(&v56 + 1) = v37;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v52, &v56);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v40 = *a2;
        v39 = *(a2 + 1);
        *v39 = *a2;
        *(v40 + 8) = v39;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v31 = 1;
      goto LABEL_47;
    }

LABEL_46:
    v31 = 0;
    goto LABEL_47;
  }

LABEL_12:
  v12 = *(a2 + 3);
  v13 = *(*(a2 + 9) + 56);
  if ((~*(v13 + 8) & 7) == 0)
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = *(v13 + 8) & 7;
    if (v14 == 6)
    {
      v15 = v13 + 24 * *(v13 + 16) + 120;
    }

    else
    {
      v15 = v13 + 16 * v14 + 16;
    }
  }

  else
  {
    v15 = 0;
  }

  getTupleAsValues(&v52, v15, *(a2 + 3));
  if (v55)
  {
    LODWORD(v56) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v56, 1, 0);
    v51 = v53;
    v16 = mlir::IntegerType::get(*a1, 32, 1);
    *&v56 = &v51;
    *(&v56 + 1) = 1;
    v48[0] = v16;
    v50 = 0;
    *&v56 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v56, v48, &v50);
    v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v12, &v56, &Tensor, &v52);
    v18 = *(a2 - 1);
    v19 = *(*(a2 + 9) + 24);
    v20 = a1[4];
    v21 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ReshapeOp>(a1, *(**v20 + 32));
    *&v56 = v20;
    *(&v56 + 1) = v21;
    v57 = &v59;
    v58 = 0x400000000;
    v60 = v62;
    v61 = 0x400000000;
    v62[4] = v63;
    v62[5] = 0x400000000;
    v63[8] = 4;
    v64 = v66;
    v65 = 0x100000000;
    v66[1] = v67;
    v66[2] = 0x100000000;
    v67[1] = 0;
    v67[2] = 0;
    v67[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v67[4] = 0;
    v67[6] = 0;
    mlir::ODIE::Compiler::CoreML::ReshapeOp::build(a1, &v56, v18 & 0xFFFFFFFFFFFFFFF8, v19, (v17 - 16));
    v22 = mlir::Operation::create(&v56);
    mlir::OpBuilder::insert(a1, v22);
    v23 = *(*(v22 + 6) + 16);
    mlir::OperationState::~OperationState(&v56);
    if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReshapeOp,void>::id)
    {
      v24 = v22;
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 9);
    if (v25)
    {
      v26 = (a2 - 16);
    }

    else
    {
      v26 = 0;
    }

    v48[0] = v26;
    v48[1] = v25;
    v27 = *(v24 + 9);
    v28 = v24 - 16;
    if (!v27)
    {
      v28 = 0;
    }

    *&v56 = v28;
    *(&v56 + 1) = v27;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v48, &v56);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v30 = *a2;
      v29 = *(a2 + 1);
      *v29 = *a2;
      *(v30 + 8) = v29;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    v31 = 1;
  }

  else
  {
    v48[0] = "Failed to fetch tuple inputs.";
    v49 = 259;
    emitDiag(v12, 2, v48, &v56);
    v31 = (v64 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v56);
  }

  if (v55 == 1 && v52 != &v54)
  {
    free(v52);
  }

LABEL_47:
  v41 = *MEMORY[0x277D85DE8];
  return v31;
}

BOOL replaceViewAsComplex(uint64_t *a1, uint64_t *a2)
{
  v61[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v30 = a1[4];
    v48 = 257;
    emitDiag(v30, 2, &v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<42ul>(&v50, "view_as_complex expects exactly 1 operand");
    }

    goto LABEL_23;
  }

  v42 = *(a2[9] + 24);
  v49 = "expected ranked tensor input to view_as_complex";
  v53 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v42, &v49, &v39);
  if ((v41 & 1) == 0)
  {
    v31 = a1[4];
    v48 = 257;
    emitDiag(v31, 2, &v45, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<53ul>(&v50, "view_as_complex expects input as shaped, ranked type");
    }

LABEL_23:
    v29 = (v58 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
    goto LABEL_24;
  }

  v5 = v39;
  v4 = v40;
  v6 = (*(v40 + 24))(v40, v39);
  v45 = v47;
  v46 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v45, v6, &v6[8 * v7]);
  v8 = v45;
  if (*(v45 + v46 - 1) == 2)
  {
    LODWORD(v46) = v46 - 1;
    v9 = v46;
    v10 = (*(v4 + 8))(v4, v5);
    v11 = *v4;
    v49 = v8;
    v50 = v9;
    LOBYTE(v51) = 1;
    v38[0] = v11(v4, v5, &v49, v10);
    v38[1] = v12;
    (*(v4 + 24))(v4, v5);
    LODWORD(v49) = v13 - 1;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v49, 1, 0);
    LODWORD(v49) = 0;
    v36 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v49, 1, 0);
    LODWORD(v49) = 1;
    v35 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v49, 1, 0);
    v14 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], v38, &v42, &Tensor, &v36);
    v15 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SelectOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], v38, &v42, &Tensor, &v35);
    if (*(a2 + 9))
    {
      v16 = a2 - 2;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16[1];
    v18 = a1[4];
    Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a1, *(**v18 + 32));
    v49 = v18;
    v50 = Complex;
    v51 = &v53;
    v52 = 0x400000000;
    v54 = v56;
    v55 = 0x400000000;
    v56[4] = v57;
    v56[5] = 0x400000000;
    v57[8] = 4;
    v58 = v60;
    v59 = 0x100000000;
    v60[1] = v61;
    v60[2] = 0x100000000;
    v61[1] = 0;
    v61[2] = 0;
    v61[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v61[4] = 0;
    v61[6] = 0;
    mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(a1, &v49, v17 & 0xFFFFFFFFFFFFFFF8, (v14 - 16), (v15 - 16));
    v20 = mlir::Operation::create(&v49);
    mlir::OpBuilder::insert(a1, v20);
    v21 = *(*(v20 + 6) + 16);
    mlir::OperationState::~OperationState(&v49);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(a2 + 9);
    if (v23)
    {
      v24 = a2 - 2;
    }

    else
    {
      v24 = 0;
    }

    v43[0] = v24;
    v43[1] = v23;
    v25 = *(v22 + 9);
    v26 = (v22 - 16);
    if (!v25)
    {
      v26 = 0;
    }

    v49 = v26;
    v50 = v25;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v43, &v49);
    if (a2[2])
    {
      a2[2] = 0;
      v28 = *a2;
      v27 = a2[1];
      *v27 = *a2;
      *(v28 + 8) = v27;
      *a2 = 0;
      a2[1] = 0;
    }

    mlir::Operation::destroy(a2);
    v29 = 1;
  }

  else
  {
    v34 = a1[4];
    v44 = 257;
    emitDiag(v34, 2, v43, &v49);
    if (v49)
    {
      mlir::Diagnostic::operator<<<52ul>(&v50, "view_as_complex expects operand's shape to end in 2");
    }

    v29 = (v58 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v49);
  }

  if (v45 != v47)
  {
    free(v45);
  }

LABEL_24:
  v32 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t replaceViewAsReal(uint64_t *a1, uint64_t *a2)
{
  v54[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v8 = a1[4];
    v42 = 257;
    emitDiag(v8, 2, &v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<39ul>(&v44, "view_as_real expects exactly 1 operand");
    }

    goto LABEL_11;
  }

  v37 = *(a2[9] + 24);
  __src = "expected ranked tensor input to view_as_real";
  v46 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v37, &__src, &v34);
  if ((v36 & 1) == 0)
  {
    v9 = a1[4];
    v42 = 257;
    emitDiag(v9, 2, &v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<50ul>(&v44, "view_as_real expects input as shaped, ranked type");
    }

    goto LABEL_11;
  }

  v5 = v34;
  v4 = v35;
  v6 = (*(v35 + 8))(v35, v34);
  if (*(*v6 + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v7 = a1[4];
    v42 = 257;
    emitDiag(v7, 2, &v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<53ul>(&v44, "view_as_real expects input with complex element type");
    }

LABEL_11:
    v10 = v51 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_12;
  }

  v13 = v6[1];
  v14 = *v4;
  LOBYTE(__src) = 0;
  LOBYTE(v45[0]) = 0;
  v33[0] = v14(v4, v5, &__src, v13);
  v33[1] = v15;
  v16 = (mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v33, &v37) - 16);
  v17 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v33, &v37);
  __src = v16;
  v44 = v17 - 16;
  v39 = v41;
  v40 = 0x600000000;
  llvm::SmallVectorImpl<mlir::Value>::append<mlir::Value const*,void>(&v39, &__src, v45);
  (*(v4 + 24))(v4, v5);
  LODWORD(__src) = v18;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__src, 1, 0);
  if (*(a2 + 9))
  {
    v20 = a2 - 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20[1];
  v22 = a1[4];
  v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::StackOp>(a1, *(**v22 + 32));
  __src = v22;
  v44 = v23;
  v45[0] = &v46;
  v45[1] = 0x400000000;
  v47 = v49;
  v48 = 0x400000000;
  v49[4] = v50;
  v49[5] = 0x400000000;
  v50[8] = 4;
  v51 = v53;
  v52 = 0x100000000;
  v53[1] = v54;
  v53[2] = 0x100000000;
  v54[1] = 0;
  v54[2] = 0;
  v54[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v54[4] = 0;
  v54[6] = 0;
  mlir::ODIE::Compiler::CoreML::StackOp::build(a1, &__src, v21 & 0xFFFFFFFFFFFFFFF8, Tensor, v39 & 0xFFFFFFFFFFFFFFF9, v40);
  v24 = mlir::Operation::create(&__src);
  mlir::OpBuilder::insert(a1, v24);
  v25 = *(*(v24 + 6) + 16);
  mlir::OperationState::~OperationState(&__src);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::StackOp,void>::id)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v27 = *(a2 + 9);
  if (v27)
  {
    v28 = a2 - 2;
  }

  else
  {
    v28 = 0;
  }

  v38[0] = v28;
  v38[1] = v27;
  v29 = *(v26 + 9);
  v30 = (v26 - 16);
  if (!v29)
  {
    v30 = 0;
  }

  __src = v30;
  v44 = v29;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &__src);
  if (a2[2])
  {
    a2[2] = 0;
    v32 = *a2;
    v31 = a2[1];
    *v31 = *a2;
    *(v32 + 8) = v31;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v39 != v41)
  {
    free(v39);
  }

  v10 = 1;
LABEL_12:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

BOOL replaceWhere(uint64_t *a1, uint64_t a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 3 && *(a2 + 36) == 1)
  {
    v4 = *(a2 + 72);
    v5 = v4[3];
    v6 = v4[7];
    v23 = v6;
    v24 = v5;
    v7 = v4[11];
    v22 = v7;
    __src = "expected ranked tensor input to where op";
    v34 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, v28);
    if (v29 == 1 && (__src = "expected ranked tensor input to where op", v34 = 259, mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v25), v26 == 1) && (__src = "expected ranked tensor input to where op", v34 = 259, mlir::ODIE::Compiler::getShapedRankedType(v7, &__src, v20), (v21 & 1) != 0))
    {
      __src = v5;
      v33[0] = v6;
      v33[1] = v7;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 3uLL, a1, v28);
      if (v31)
      {
        v8 = *v28[0];
        v23 = *(v28[0] + 1);
        v24 = v8;
        v22 = *(v28[0] + 2);
        if (*(a2 + 36))
        {
          v9 = a2 - 16;
        }

        else
        {
          v9 = 0;
        }

        v20[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
        v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::WhereOp,mlir::Type &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, a1[4], v20, &v24, &v23, &v22);
        v11 = *(a2 + 36);
        if (v11)
        {
          v12 = (a2 - 16);
        }

        else
        {
          v12 = 0;
        }

        v25[0] = v12;
        v25[1] = v11;
        v13 = *(v10 + 9);
        v14 = (v10 - 16);
        if (!v13)
        {
          v14 = 0;
        }

        __src = v14;
        v33[0] = v13;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v25, &__src);
        mlir::Operation::erase(a2);
        v15 = 1;
      }

      else
      {
        v19 = *(a2 + 24);
        v27 = 257;
        emitDiag(v19, 2, v25, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<49ul>(v33, " cannot broadcast inputs of where to same shape.");
        }

        v15 = (v35 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      }

      if (v31 == 1 && v28[0] != &v29)
      {
        free(v28[0]);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = *(a2 + 24);
    v28[0] = "expects 3 inputs and 1 output for Where.";
    v30 = 259;
    emitDiag(v16, 2, v28, &__src);
    v15 = (v35 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t replaceConstantPad(uint64_t *a1, uint64_t *a2)
{
  v63[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 3)
  {
    v8 = a2[3];
    v47 = "expect 3 operands for TorchImport.constant_pad_nd";
    v49[8] = 259;
    emitDiag(v8, 2, &v47, &v51);
    v9 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
LABEL_40:
    v36 = *MEMORY[0x277D85DE8];
    return v9;
  }

  v4 = *(a2[9] + 24);
  v51 = "TorchImport.constant_pad_nd requires input to be a shaped type";
  v55 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v51, &v41);
  if (v43 != 1)
  {
    v9 = 0;
    goto LABEL_40;
  }

  v5 = *(a2[9] + 56);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = *(v5 + 8) & 7;
    if (v6 == 6)
    {
      v7 = v5 + 24 * *(v5 + 16) + 120;
    }

    else
    {
      v7 = v5 + 16 * v6 + 16;
    }
  }

  else
  {
    v7 = 0;
  }

  getTupleAsInts(&v47, v7, a2[3]);
  if ((v50 & 1) == 0)
  {
    v34 = a2[3];
    v44 = "failed to retrieve padding lengths as a list of int32";
    v46[8] = 259;
    emitDiag(v34, 2, &v44, &v51);
    v9 = (v60 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
LABEL_37:
    if (v50 == 1 && v47 != v49)
    {
      free(v47);
    }

    goto LABEL_40;
  }

  (*(v42 + 24))(v42, v41);
  v11 = v10;
  v44 = v46;
  v45 = 0xC00000000;
  llvm::SmallVectorImpl<int>::assign(&v44, 2 * v10, 0);
  if (!v48)
  {
LABEL_18:
    v16 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, *(a2[9] + 88), v4);
    if (v17)
    {
      v18 = v16;
      v19 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v44, v45);
      v20 = mlir::ODIE::Compiler::CoreML::PaddingModeAttr::get(*a1, 1u);
      if (*(a2 + 9))
      {
        v21 = a2 - 2;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21[1];
      v23 = a1[4];
      v24 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::PadOp>(*(**v23 + 32));
      v51 = v23;
      v52 = v24;
      v53 = &v55;
      v54 = 0x400000000;
      v56 = v58;
      v57 = 0x400000000;
      v58[4] = v59;
      v58[5] = 0x400000000;
      v59[8] = 4;
      v60 = v62;
      v61 = 0x100000000;
      v62[1] = v63;
      v62[2] = 0x100000000;
      v63[1] = 0;
      v63[2] = 0;
      v63[3] = &mlir::detail::TypeIDResolver<void,void>::id;
      v63[4] = 0;
      v63[6] = 0;
      mlir::ODIE::Compiler::CoreML::PadOp::build(a1, &v51, v22 & 0xFFFFFFFFFFFFFFF8, v4, v19, v18, v20);
      v25 = mlir::Operation::create(&v51);
      mlir::OpBuilder::insert(a1, v25);
      v26 = *(*(v25 + 6) + 16);
      mlir::OperationState::~OperationState(&v51);
      if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::PadOp,void>::id)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0;
      }

      v28 = *(a2 + 9);
      if (v28)
      {
        v29 = a2 - 2;
      }

      else
      {
        v29 = 0;
      }

      v39[0] = v29;
      v39[1] = v28;
      v30 = *(v27 + 9);
      v31 = (v27 - 16);
      if (!v30)
      {
        v31 = 0;
      }

      v51 = v31;
      v52 = v30;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v39, &v51);
      if (a2[2])
      {
        a2[2] = 0;
        v33 = *a2;
        v32 = a2[1];
        *v32 = *a2;
        *(v33 + 8) = v32;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v9 = 1;
    }

    else
    {
      v35 = a2[3];
      v39[0] = "failed to cast padding value to same dtype as input";
      v40 = 259;
      emitDiag(v35, 2, v39, &v51);
      v9 = (v60 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v51);
    }

    if (v44 != v46)
    {
      free(v44);
    }

    goto LABEL_37;
  }

  if (v50 == 1)
  {
    v12 = 0;
    v13 = v47;
    v14 = v44 + 8 * v11 - 4;
    do
    {
      v15 = &v13[4 * v12];
      *(v14 - 1) = *v15;
      *v14 = *(v15 + 1);
      v14 -= 2;
      v12 += 2;
    }

    while (v12 < v48);
    goto LABEL_18;
  }

  v38 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceLutToDense(v38);
}

uint64_t replaceLutToDense(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 9);
    v6 = v5[3];
    v7 = v5[7];
    v8 = v5[11];
    v9 = *(a1 + 4);
    v10 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id, *(**v9 + 32));
    if ((v11 & 1) == 0)
    {
      v28 = 1283;
      v26 = "coremlax.constexpr_lut_to_dense";
      v27 = 31;
      v39 = 259;
      llvm::operator+(&v24, v38, &v29);
      llvm::report_fatal_error(&v29, 1);
    }

    if (v4)
    {
      v12 = (a2 - 16);
    }

    else
    {
      v12 = 0;
    }

    v29 = v9;
    v30 = v10;
    v31 = v33;
    v32 = 0x400000000;
    v33[4] = v34;
    v33[5] = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[8] = 4;
    v35[9] = v36;
    v35[10] = 0x100000000;
    v36[1] = v37;
    v36[2] = 0x100000000;
    v37[1] = 0;
    v37[2] = 0;
    v37[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v37[4] = 0;
    v37[6] = 0;
    v24 = v12;
    v25 = 0;
    v26 = v12;
    v27 = v4;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v38, &v24);
    mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp::build(a1, &v29, v38[0], v38[1], v6, v7, v8);
    v13 = mlir::Operation::create(&v29);
    mlir::OpBuilder::insert(a1, v13);
    v14 = *(*(v13 + 6) + 16);
    mlir::OperationState::~OperationState(&v29);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOp,void>::id)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a2 + 9);
    if (v16)
    {
      v17 = (a2 - 16);
    }

    else
    {
      v17 = 0;
    }

    v24 = v17;
    v25 = v16;
    v18 = *(v15 + 9);
    v19 = (v15 - 16);
    if (!v18)
    {
      v19 = 0;
    }

    v29 = v19;
    v30 = v18;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v24, &v29);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v21 = *a2;
      v20 = *(a2 + 1);
      *v20 = *a2;
      *(v21 + 8) = v20;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    result = 1;
  }

  else
  {
    result = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t replaceBlockwiseShiftScale(mlir::OpBuilder *a1, uint64_t *a2)
{
  v114 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 17);
    if (v4 == 2)
    {
      v11 = a2[9];
      v6 = *(v11 + 24);
      v7 = *(v11 + 56);
      v12 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      v13 = *v12;
      v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
      v16 = (*(v15 + 8))(v15, v12);
      v17 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v17)
      {
        v18 = *v17;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      v82 = v16;
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v82);
      v22 = (*(v20 + 24))(v20, v17);
      if (v23)
      {
        v24 = 8 * v23;
        v25 = 1;
        do
        {
          v26 = *v22++;
          v25 *= v26;
          v24 -= 8;
        }

        while (v24);
      }

      else
      {
        v25 = 1;
      }

      v27 = v25 * IntOrFloatBitWidth;
      if ((v27 & 7) != 0)
      {
        v28 = (v27 >> 3) + 1;
      }

      else
      {
        v28 = v27 >> 3;
      }

      if (v28)
      {
        operator new();
      }

      v81 = a1;
      *&v88 = (*(v20 + 24))(v20, v17);
      *(&v88 + 1) = v29;
      v83 = v16;
      v110 = 0;
      *&v88 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v16 + 32), &v88, &v83, &v110);
      v30 = mlir::TensorType::operator mlir::ShapedType(&v88);
      v34 = v33;
      v35 = *(a1 + 4);
      v36 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ConstantOp>(a1, *(**v35 + 32));
      *&v88 = v35;
      *(&v88 + 1) = v36;
      v89 = v91;
      v90 = 0x400000000;
      v92 = v94;
      v93 = 0x400000000;
      v95 = v97;
      v96 = 0x400000000;
      v98 = 4;
      v99 = &v101;
      v100 = 0x100000000;
      v102 = &v104;
      v103 = 0x100000000;
      v105 = 0;
      v106 = 0;
      v107 = &mlir::detail::TypeIDResolver<void,void>::id;
      v108 = 0;
      v109 = 0;
      if (ElementsAttr)
      {
        v37 = *(v34 + 24);
      }

      else
      {
        v37 = 0;
      }

      mlir::ODIE::Compiler::CoreML::ConstantOp::build(a1, &v88, ElementsAttr, v37);
      v38 = mlir::Operation::create(&v88);
      mlir::OpBuilder::insert(a1, v38);
      v39 = *(*(v38 + 6) + 16);
      v40 = v38 - 16;
      mlir::OperationState::~OperationState(&v88);
      if (v39 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ConstantOp,void>::id)
      {
        v8 = v40;
      }

      else
      {
        v8 = -16;
      }

      goto LABEL_27;
    }

    if (v4 == 3)
    {
      v5 = a2[9];
      v6 = v5[3];
      v7 = v5[7];
      v8 = v5[11];
LABEL_27:
      v41 = (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v41)
      {
        v42 = *v41;
        v43 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v44 = mlir::detail::InterfaceMap::lookup(v42 + 8, v43);
      }

      else
      {
        v44 = 0;
      }

      v80 = v6;
      v45 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v45)
      {
        v46 = *v45;
        v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v10 = mlir::detail::InterfaceMap::lookup(v46 + 8, v47);
      }

      else
      {
        v10 = 0;
      }

      v48 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v48)
      {
        v49 = *v48;
        v50 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v51 = mlir::detail::InterfaceMap::lookup(v49 + 8, v50);
      }

      else
      {
        v51 = 0;
      }

      (*(v10 + 24))(v10, v45);
      if (v52)
      {
        goto LABEL_45;
      }

      (*(v44 + 24))(v44, v41);
      v111 = 0;
      v112 = 0;
      v110 = 0;
      if (v53)
      {
        std::vector<long long>::__vallocate[abi:nn200100](&v110, v53);
      }

      v56 = v55;
      if (v55)
      {
        v7 = v54;
      }

      else
      {
        v57 = a2[3];
        v83 = "failed to reshape scale";
        v87 = 259;
        emitDiag(v57, 2, &v83, &v88);
        v10 = (v99 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
      }

      if (v110)
      {
        v111 = v110;
        operator delete(v110);
      }

      if (v56)
      {
LABEL_45:
        (*(v51 + 24))(v51, v48);
        if (v58)
        {
          goto LABEL_54;
        }

        (*(v44 + 24))(v44, v41);
        v111 = 0;
        v112 = 0;
        v110 = 0;
        if (v59)
        {
          std::vector<long long>::__vallocate[abi:nn200100](&v110, v59);
        }

        v62 = v61;
        if (v61)
        {
          v8 = v60;
        }

        else
        {
          v63 = a2[3];
          v83 = "failed to reshape offset";
          v87 = 259;
          emitDiag(v63, 2, &v83, &v88);
          v10 = (v99 & 1) == 0;
          mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
        }

        if (v110)
        {
          v111 = v110;
          operator delete(v110);
        }

        if (v62)
        {
LABEL_54:
          v64 = *(a2 + 9);
          v65 = *(a1 + 4);
          v66 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id, *(**v65 + 32));
          if ((v67 & 1) == 0)
          {
            v87 = 1283;
            v85 = "coremlax.constexpr_blockwise_shift_scale";
            v86 = 40;
            v113 = 259;
            llvm::operator+(&v83, &v110, &v88);
            llvm::report_fatal_error(&v88, 1);
          }

          if (v64)
          {
            v68 = a2 - 2;
          }

          else
          {
            v68 = 0;
          }

          *&v88 = v65;
          *(&v88 + 1) = v66;
          v89 = v91;
          v90 = 0x400000000;
          v92 = v94;
          v93 = 0x400000000;
          v95 = v97;
          v96 = 0x400000000;
          v98 = 4;
          v99 = &v101;
          v100 = 0x100000000;
          v102 = &v104;
          v103 = 0x100000000;
          v105 = 0;
          v106 = 0;
          v107 = &mlir::detail::TypeIDResolver<void,void>::id;
          v108 = 0;
          v109 = 0;
          v83 = v68;
          v84 = 0;
          v85 = v68;
          v86 = v64;
          mlir::TypeRange::TypeRange<mlir::ResultRange>(&v110, &v83);
          mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp::build(a1, &v88, v110, v111, v80, v7, v8);
          v69 = mlir::Operation::create(&v88);
          mlir::OpBuilder::insert(a1, v69);
          v70 = *(*(v69 + 6) + 16);
          mlir::OperationState::~OperationState(&v88);
          if (v70 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOp,void>::id)
          {
            v71 = v69;
          }

          else
          {
            v71 = 0;
          }

          v72 = *(a2 + 9);
          if (v72)
          {
            v73 = a2 - 2;
          }

          else
          {
            v73 = 0;
          }

          v83 = v73;
          v84 = v72;
          v74 = *(v71 + 9);
          v75 = v71 - 16;
          if (!v74)
          {
            v75 = 0;
          }

          *&v88 = v75;
          *(&v88 + 1) = v74;
          mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v83, &v88);
          if (a2[2])
          {
            a2[2] = 0;
            v77 = *a2;
            v76 = a2[1];
            *v76 = *a2;
            *(v77 + 8) = v76;
            *a2 = 0;
            a2[1] = 0;
          }

          mlir::Operation::destroy(a2);
          v10 = 1;
        }
      }

      goto LABEL_69;
    }
  }

  v9 = a2[3];
  v87 = 257;
  emitDiag(v9, 2, &v83, &v88);
  if (v88)
  {
    mlir::Diagnostic::operator<<<101ul>(&v88 + 8, "unable to legalize TorchImport.constexpr_blockwise_shift_scale because number of inputs is incorrect");
  }

  v10 = (v99 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v88);
LABEL_69:
  v78 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceSparseToDense(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 9);
    v6 = *(v5 + 24);
    v7 = *(v5 + 56);
    v8 = *(a1 + 4);
    v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,void>::id, *(**v8 + 32));
    if ((v10 & 1) == 0)
    {
      v29 = 1283;
      v27 = "coremlax.constexpr_sparse_to_dense";
      v28 = 34;
      v40 = 259;
      llvm::operator+(&v25, v39, &v30);
      llvm::report_fatal_error(&v30, 1);
    }

    if (v4)
    {
      v11 = (a2 - 16);
    }

    else
    {
      v11 = 0;
    }

    v30 = v8;
    v31[0] = v9;
    v31[1] = v32;
    v31[2] = 0x400000000;
    v32[4] = v33;
    v32[5] = 0x400000000;
    v33[4] = v34;
    v33[5] = 0x400000000;
    v34[8] = 4;
    v35 = v37;
    v36 = 0x100000000;
    v37[1] = v38;
    v37[2] = 0x100000000;
    v38[1] = 0;
    v38[2] = 0;
    v38[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v38[4] = 0;
    v38[6] = 0;
    v25 = v11;
    v26 = 0;
    v27 = v11;
    v28 = v4;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v39, &v25);
    mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp::build(a1, &v30, v39[0], v39[1], v6, v7);
    v12 = mlir::Operation::create(&v30);
    mlir::OpBuilder::insert(a1, v12);
    v13 = *(*(v12 + 6) + 16);
    mlir::OperationState::~OperationState(&v30);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreMLAX::ConstexprSparseToDenseOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(a2 + 9);
    if (v15)
    {
      v16 = (a2 - 16);
    }

    else
    {
      v16 = 0;
    }

    v25 = v16;
    v26 = v15;
    v17 = *(v14 + 9);
    v18 = (v14 - 16);
    if (!v17)
    {
      v18 = 0;
    }

    v30 = v18;
    v31[0] = v17;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v25, &v30);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v20 = *a2;
      v19 = *(a2 + 1);
      *v19 = *a2;
      *(v20 + 8) = v19;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    v21 = 1;
  }

  else
  {
    v22 = *(a2 + 3);
    v29 = 257;
    emitDiag(v22, 2, &v25, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<95ul>(v31, "unable to legalize TorchImport.constexpr_sparse_to_dense because number of inputs is incorrect");
    }

    v21 = (v35 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t replaceLocalScalarDense(uint64_t *a1, uint64_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v27 = a2[3];
    v43 = 257;
    emitDiag(v27, 2, v42, v44);
    if (*&v44[0])
    {
      mlir::Diagnostic::operator<<(v44 + 8, a2[6]);
      if (*&v44[0])
      {
        mlir::Diagnostic::operator<<<26ul>(v44 + 8, " expects a single operand");
      }
    }

    goto LABEL_26;
  }

  v4 = *(a2[9] + 24);
  v40 = v4;
  *&v44[0] = "expected ranked tensor input to _local_scalar_dense";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, v44, &v37);
  if (*(a2 + 9))
  {
    v5 = a2 - 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5[1];
  v7 = a2[3];
  *&v44[0] = "expected ranked tensor type as output of _local_scalar_dense";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, v44, &v34);
  v8 = 0;
  if (v39 == 1 && (v36 & 1) != 0)
  {
    v10 = v37;
    v9 = v38;
    v11 = (*(v38 + 24))(v38, v37);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = 8 * v12;
    v14 = 1;
    do
    {
      v15 = *v11++;
      v14 *= v15;
      v13 -= 8;
    }

    while (v13);
    if (v14 != 1)
    {
      v30 = a2[3];
      v43 = 257;
      emitDiag(v30, 2, v42, v44);
      if (*&v44[0])
      {
        mlir::Diagnostic::operator<<(v44 + 8, a2[6]);
        if (*&v44[0])
        {
          mlir::Diagnostic::operator<<<30ul>(v44 + 8, " expects single element input");
        }
      }
    }

    else
    {
LABEL_12:
      (*(v9 + 24))(v9, v10);
      if (v16 && ((*(v9 + 24))(v9, v10), v17 != 1))
      {
        v32 = a2[3];
        v43 = 257;
        emitDiag(v32, 2, v42, v44);
        if (*&v44[0])
        {
          mlir::Diagnostic::operator<<(v44 + 8, a2[6]);
          if (*&v44[0])
          {
            mlir::Diagnostic::operator<<<24ul>(v44 + 8, " expects 0D or 1D input");
          }
        }
      }

      else
      {
        (*(v9 + 24))(v9, v10);
        if (v18)
        {
          LODWORD(v44[0]) = 0;
          v33 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v44, 1);
          v19 = (*(v9 + 8))(v9, v10);
          v44[0] = 0uLL;
          v41 = 0;
          v42[0] = v19;
          *&v44[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v19 + 32), v44, v42, &v41);
          v4 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, a1[4], v44, &v40, &v33) - 16;
        }

        v20 = (*(v35 + 8))(v35, v34);
        v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v4, v20);
        if (v22)
        {
          *&v44[0] = v21;
          v23 = *(a2 + 9);
          if (v23)
          {
            v24 = (a2 - 2);
          }

          else
          {
            v24 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v24, v23, v44, 1);
          if (a2[2])
          {
            a2[2] = 0;
            v26 = *a2;
            v25 = a2[1];
            *v25 = *a2;
            *(v26 + 8) = v25;
            *a2 = 0;
            a2[1] = 0;
          }

          mlir::Operation::destroy(a2);
          v8 = 1;
          goto LABEL_27;
        }

        v31 = a2[3];
        v43 = 257;
        emitDiag(v31, 2, v42, v44);
        if (*&v44[0])
        {
          mlir::Diagnostic::operator<<<16ul>(v44 + 8, "failed to cast ");
          if (*&v44[0])
          {
            mlir::Diagnostic::operator<<(v44 + 8, v4);
            if (*&v44[0])
            {
              mlir::Diagnostic::operator<<<19ul>(v44 + 8, " to same dtype as ");
              if (*&v44[0])
              {
                mlir::Diagnostic::operator<<<mlir::ShapedType &>(v44 + 8, &v34);
              }
            }
          }
        }
      }
    }

LABEL_26:
    v8 = v46 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v44);
  }

LABEL_27:
  v28 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

BOOL replaceLogSoftmax(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 9) + 24);
  v33 = *(a2 + 6);
  v5 = mlir::OperationName::stripDialect(&v33);
  v42[0] = 1283;
  v38 = "expected ranked tensor input to ";
  v40 = v5;
  v41 = v6;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v38, &v34);
  if (v36 == 1)
  {
    v7 = *(*(a2 + 9) + 56);
    v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
    if (v8 && ((*(v9 + 24))(v9, v8), !v10))
    {
      v17 = *(a2 - 1);
      v18 = *(a1 + 4);
      v19 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SoftmaxOp>(*(**v18 + 32));
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
      mlir::ODIE::Compiler::CoreML::SoftmaxOp::build(a1, &v38, v17 & 0xFFFFFFFFFFFFFFF8, v4, v7);
      v20 = mlir::Operation::create(&v38);
      mlir::OpBuilder::insert(a1, v20);
      v21 = *(*(v20 + 6) + 16);
      mlir::OperationState::~OperationState(&v38);
      if (v21 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SoftmaxOp,void>::id)
      {
        v20 = 0;
      }

      v22 = *(a1 + 4);
      v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**v22 + 32));
      v38 = v22;
      v39 = v23;
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
      mlir::ODIE::Compiler::CoreML::LogOp::build(a1, &v38, v17 & 0xFFFFFFFFFFFFFFF8, (v20 - 16));
      v24 = mlir::Operation::create(&v38);
      mlir::OpBuilder::insert(a1, v24);
      v25 = *(*(v24 + 6) + 16);
      mlir::OperationState::~OperationState(&v38);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(a2 + 9);
      v28 = (a2 - 16);
      if (!v27)
      {
        v28 = 0;
      }

      v34 = v28;
      v35 = v27;
      v29 = *(v26 + 9);
      v30 = (v26 - 16);
      if (!v29)
      {
        v30 = 0;
      }

      v38 = v30;
      v39 = v29;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v34, &v38);
      if (*(a2 + 2))
      {
        *(a2 + 2) = 0;
        v32 = *a2;
        v31 = *(a2 + 1);
        *v31 = *a2;
        *(v32 + 8) = v31;
        *a2 = 0;
        *(a2 + 1) = 0;
      }

      mlir::Operation::destroy(a2);
      v14 = 1;
    }

    else
    {
      v11 = *(a2 + 3);
      v37 = 257;
      emitDiag(v11, 2, &v34, &v38);
      if (v38)
      {
        mlir::Diagnostic::operator<<<25ul>(&v39, "expected 0-D tensor for ");
      }

      v33 = *(a2 + 6);
      v12 = mlir::OperationName::stripDialect(&v33);
      if (v38)
      {
        v37 = 261;
        v34 = v12;
        v35 = v13;
        mlir::Diagnostic::operator<<(&v39, &v34);
        if (v38)
        {
          mlir::Diagnostic::operator<<<11ul>(&v39, " dimension");
        }
      }

      v14 = (v50 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

BOOL replaceBatchNormNoTraining(uint64_t *a1, uint64_t a2)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 7 || *(a2 + 36) != 1)
  {
    v5 = *(a2 + 24);
    v6 = "expects 7 inputs and 1 output for batchnorm.";
LABEL_8:
    v55[0] = v6;
    v56 = 259;
    emitDiag(v5, 2, v55, &OneAttr);
    goto LABEL_9;
  }

  v3 = (*(a2 - 8) & 0xFFFFFFFFFFFFFFF8);
  v54 = v3;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
  {
    v4 = *(a2 + 24);
    v55[0] = "Expected result type to be TupleType, but got ";
    v56 = 259;
    emitDiag(v4, 2, v55, &OneAttr);
    if (OneAttr)
    {
      LODWORD(v57) = 4;
      v58 = v3;
LABEL_16:
      v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v61, &v57, 1);
      v15 = v61 + 24 * v62;
      v16 = *v14;
      *(v15 + 16) = *(v14 + 16);
      *v15 = v16;
      ++v62;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (v3[2] != 3)
  {
    v12 = *(a2 + 24);
    v55[0] = "Expected result TupleType to have 3 elements, but got ";
    v56 = 259;
    emitDiag(v12, 2, v55, &OneAttr);
    if (OneAttr)
    {
      v13 = v3[2];
      LODWORD(v57) = 5;
      v58 = v13;
      goto LABEL_16;
    }

LABEL_9:
    v7 = (v63 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&OneAttr);
    goto LABEL_10;
  }

  v10 = v3[1];
  v11 = *(v10 + 8);
  if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_13;
  }

  v17 = v11[2];
  if (!v17)
  {
    goto LABEL_13;
  }

  v19 = v11[1];
  v20 = 8 * v17;
  v21 = 1;
  do
  {
    v22 = *v19++;
    v21 *= v22;
    v20 -= 8;
  }

  while (v20);
  if (v21)
  {
LABEL_13:
    v5 = *(a2 + 24);
    v6 = "Expected the 1st element of the result TupleType to be empty";
    goto LABEL_8;
  }

  v23 = *(v10 + 16);
  if (*(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_22;
  }

  v24 = v23[2];
  if (!v24)
  {
    goto LABEL_22;
  }

  v25 = v23[1];
  v26 = 8 * v24;
  v27 = 1;
  do
  {
    v28 = *v25++;
    v27 *= v28;
    v26 -= 8;
  }

  while (v26);
  if (v27)
  {
LABEL_22:
    v5 = *(a2 + 24);
    v6 = "Expected the 2nd element of the result TupleType to be empty";
    goto LABEL_8;
  }

  v29 = *(a2 + 72);
  v30 = v29[3];
  v57 = v29[7];
  v31 = v29[11];
  v32 = v29[15];
  v52 = v32;
  v53 = v31;
  v51 = v29[19];
  v33 = v29[27];
  if (*(*(*(v57 + 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v49 = v29[27];
    v34 = v32;
    OneAttr = mlir::Builder::getOneAttr(a1, *(v32 + 8) & 0xFFFFFFFFFFFFFFF8);
    v60 = v35;
    v57 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(a1, a1[4], &OneAttr) - 16;
    OneAttr = mlir::Builder::getZeroAttr(a1, *(v34 + 8) & 0xFFFFFFFFFFFFFFF8);
    v60 = v36;
    v37 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::TypedAttr>(a1, a1[4], &OneAttr);
    v33 = v49;
    v53 = v37 - 16;
  }

  v38 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v33, v30);
  if ((v39 & 1) == 0)
  {
    v5 = *(a2 + 24);
    v6 = "unable to cast eps to input's element type";
    goto LABEL_8;
  }

  v50 = v38;
  v40 = v3[1];
  OneAttr = *(*(a2 + 72) + 24);
  v41 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchNormOp,mlir::Type const&,mlir::Value,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&,mlir::Value&>(a1, a1[4], v40, &OneAttr, &v57, &v53, &v52, &v51, &v50);
  v42 = a1[4];
  if (*(v41 + 9))
  {
    v43 = (v41 - 16);
  }

  else
  {
    v43 = 0;
  }

  v55[0] = v43;
  v7 = 1;
  mlir::OperationState::OperationState(&OneAttr, v42, "TorchImport.tuple_construct", 0x1B, v55, 1, &v54 + 2, 1, 0, 0, 0, 0, 0, 0);
  v44 = mlir::Operation::create(&OneAttr);
  mlir::OpBuilder::insert(a1, v44);
  mlir::OperationState::~OperationState(&OneAttr);
  v45 = *(a2 + 36);
  if (v45)
  {
    v46 = (a2 - 16);
  }

  else
  {
    v46 = 0;
  }

  v55[0] = v46;
  v55[1] = v45;
  v47 = v44[9];
  v48 = (v44 - 4);
  if (!v47)
  {
    v48 = 0;
  }

  OneAttr = v48;
  v60 = v47;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v55, &OneAttr);
  mlir::Operation::erase(a2);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}