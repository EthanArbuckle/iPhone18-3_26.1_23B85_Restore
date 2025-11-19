uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcosOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcosOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.acos";
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
    mlir::ODIE::Compiler::CoreML::AcosOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcosOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AcoshOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcoshOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.acosh";
      v53 = 12;
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
    mlir::ODIE::Compiler::CoreML::AcoshOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AcoshOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.asin";
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
    mlir::ODIE::Compiler::CoreML::AsinOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AsinhOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinhOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.asinh";
      v53 = 12;
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
    mlir::ODIE::Compiler::CoreML::AsinhOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsinhOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.atan";
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
    mlir::ODIE::Compiler::CoreML::AtanOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::AtanhOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanhOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.atanh";
      v53 = 12;
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
    mlir::ODIE::Compiler::CoreML::AtanhOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AtanhOp,void>::id)
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

uint64_t replaceAvgPool2d(uint64_t a1, uint64_t a2)
{
  v67[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 68);
  }

  else
  {
    v4 = 0;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "avg_pool_2d");
  v5 = validatePoolingOpInput(a2, &__p);
  v6 = v5;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
    if ((v6 & 1) == 0)
    {
LABEL_31:
      result = 0;
LABEL_42:
      v43 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_31;
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "avg_pool_2d");
  getPoolingOpKernelStridePadding(&v46, a1, a2, v4, &__p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p);
  }

  if (v52 != 1)
  {
    goto LABEL_31;
  }

  v7 = v46;
  v8 = v47;
  v9 = v48;
  v10 = v49;
  v11 = v50;
  v12 = v51;
  BooleanFromOptionalTensor = getBooleanFromOptionalTensor(v4, a1, a2, 4, 0);
  if ((v14 & 1) == 0)
  {
    v36 = *(a2 + 24);
    v56 = 257;
    emitDiag(v36, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<44ul>(&v58, "avg_pool_2d - failed to construct ceil_mode");
    }

    goto LABEL_40;
  }

  v15 = BooleanFromOptionalTensor;
  v16 = getBooleanFromOptionalTensor(v4, a1, a2, 5, 1);
  if ((v17 & 1) == 0)
  {
    v37 = *(a2 + 24);
    v56 = 257;
    emitDiag(v37, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<52ul>(&v58, "avg_pool_2d - failed to construct count_include_pad");
    }

    goto LABEL_40;
  }

  v45 = v16;
  if (v4 > 6)
  {
    Tensor = *(*(a2 + 72) + 216);
    v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(Tensor + 1) & 0xFFFFFFFFFFFFFFF8));
    if (v38)
    {
      (*(v39 + 24))(v39, v38);
      if (!v40)
      {
        goto LABEL_14;
      }
    }

    v41 = *(a2 + 24);
    v56 = 257;
    emitDiag(v41, 2, v55, &__p);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
    v42 = *(a2 + 24);
    v56 = 257;
    emitDiag(v42, 2, v55, &__p);
    if (__p)
    {
      mlir::Diagnostic::operator<<<51ul>(&v58, "avg_pool_2d - failed to construct divisor_override");
    }

LABEL_40:
    v34 = v64 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__p);
LABEL_41:
    result = v34 & 1;
    goto LABEL_42;
  }

  LODWORD(__p) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &__p, 1, 0);
LABEL_14:
  if (*(a2 + 36))
  {
    v19 = a2 - 16;
  }

  else
  {
    v19 = 0;
  }

  if (v8 & 1) != 0 && (v10 & 1) != 0 && (v12)
  {
    v20 = *(*(a2 + 72) + 24);
    v21 = *(v19 + 8);
    v22 = *(a1 + 32);
    v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id, *(**v22 + 32));
    if ((v24 & 1) == 0)
    {
      v56 = 1283;
      v55[2] = "coreml.avg_pool_2d";
      v55[3] = 18;
      v54 = 259;
      llvm::operator+(v55, &v53, &__p);
      llvm::report_fatal_error(&__p, 1);
    }

    __p = v22;
    v58 = v23;
    v59 = v61;
    v60 = 0x400000000;
    v61[4] = v62;
    v61[5] = 0x400000000;
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
    mlir::ODIE::Compiler::CoreML::AvgPool2dOp::build(a1, &__p, v21 & 0xFFFFFFFFFFFFFFF8, v20, v7, v9, v11, v15, v45, Tensor);
    v25 = mlir::Operation::create(&__p);
    mlir::OpBuilder::insert(a1, v25);
    v26 = *(*(v25 + 6) + 16);
    mlir::OperationState::~OperationState(&__p);
    if (v26 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AvgPool2dOp,void>::id)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(a2 + 36);
    v29 = (a2 - 16);
    if (!v28)
    {
      v29 = 0;
    }

    v55[0] = v29;
    v55[1] = v28;
    v30 = *(v27 + 9);
    v31 = v27 - 16;
    if (!v30)
    {
      v31 = 0;
    }

    __p = v31;
    v58 = v30;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v55, &__p);
    if (*(a2 + 16))
    {
      *(a2 + 16) = 0;
      v33 = *a2;
      v32 = *(a2 + 8);
      *v32 = *a2;
      *(v33 + 8) = v32;
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    mlir::Operation::destroy(a2);
    v34 = 1;
    goto LABEL_41;
  }

  v44 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(v44);
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseAndOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v54, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v54, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v48) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v48) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v45 = 0;
  v44 = (*(v13 + 8))(v13, v10);
  v43 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v44, &v43);
  v41 = v18;
  v42 = v19;
  if ((v19 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v54, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v54, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v48) = 4;
      v49 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
      v32 = v55 + 24 * v56;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v56;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v54, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v54, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v54, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
    v36 = v55 + 24 * v56;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v56;
LABEL_45:
    v5 = v57;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_47;
  }

  if ((v25 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v54, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v54, &v41);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v54[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v48);
  if (v52)
  {
    v26 = *(v48 + 1);
    __src = *v48;
    v46[0] = v26;
    v40 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
    v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseAndOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v40, &__src, v46) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v45, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v47 = 257;
    emitDiag(v3, 2, v46, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v54, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
      }
    }

    v29 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v52 == 1 && v48 != &v50)
  {
    free(v48);
  }

LABEL_47:
  v38 = *MEMORY[0x277D85DE8];
  return v29;
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseOrOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v54, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v54, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v48) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v48) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v45 = 0;
  v44 = (*(v13 + 8))(v13, v10);
  v43 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v44, &v43);
  v41 = v18;
  v42 = v19;
  if ((v19 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v54, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v54, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v48) = 4;
      v49 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
      v32 = v55 + 24 * v56;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v56;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v54, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v54, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v54, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
    v36 = v55 + 24 * v56;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v56;
LABEL_45:
    v5 = v57;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_47;
  }

  if ((v25 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v54, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v54, &v41);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v54[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v48);
  if (v52)
  {
    v26 = *(v48 + 1);
    __src = *v48;
    v46[0] = v26;
    v40 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
    v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseOrOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v40, &__src, v46) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v45, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v47 = 257;
    emitDiag(v3, 2, v46, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v54, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
      }
    }

    v29 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v52 == 1 && v48 != &v50)
  {
    free(v48);
  }

LABEL_47:
  v38 = *MEMORY[0x277D85DE8];
  return v29;
}

BOOL replaceBitwiseNot(uint64_t *a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (*(a2 + 68) - 3) < 0xFFFFFFFE || *(a2 + 36) != 1)
  {
    v10 = *(a2 + 24);
    v38 = 257;
    emitDiag(v10, 2, v37, &v39);
    if (v39)
    {
      mlir::Diagnostic::operator<<<36ul>(v40, "expect 1-2 inputs and 1 output for ");
LABEL_14:
      if (v39)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v37);
        mlir::Diagnostic::appendOp(v40, a2, v37);
      }
    }

LABEL_16:
    v8 = (v42 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v39);
    goto LABEL_17;
  }

  v4 = *(*(a2 + 72) + 24);
  v39 = "Input must be a shaped type";
  v41 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v39, &v34);
  if (*(a2 + 36))
  {
    v5 = a2 - 16;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 8);
  v7 = *(a2 + 24);
  v39 = "Output must be a shaped type";
  v41 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v39, &v31);
  v8 = 0;
  if (v36 == 1 && (v33 & 1) != 0)
  {
    if (*(*(*(v35 + 8))(v35, v34) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v9 = *(a2 + 24);
      v38 = 257;
      emitDiag(v9, 2, v37, &v39);
      if (v39)
      {
        mlir::Diagnostic::operator<<<38ul>(v40, "expect integral or BOOLean input for ");
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    LODWORD(v39) = 1;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v39, 1, 0);
    AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, v4, Tensor);
    if (v15)
    {
      v16 = AddWithScalar;
      LODWORD(v39) = -1;
      v17 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v39, 1, 0);
      MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v16, v17);
      if (v19)
      {
        v20 = MultiplyWithScalar;
        v21 = (*(v32 + 8))(v32, v31);
        v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v20, v21);
        v30 = v22;
        if ((v22 & 1) == 0)
        {
          v28 = *(a2 + 24);
          v38 = 257;
          emitDiag(v28, 2, v37, &v39);
          if (v39)
          {
            mlir::Diagnostic::operator<<<16ul>(v40, "failed to cast ");
            if (v39)
            {
              mlir::Diagnostic::operator<<(v40, v20);
              if (v39)
              {
                mlir::Diagnostic::operator<<<5ul>(v40, " to ");
                if (v39)
                {
                  mlir::Diagnostic::operator<<<mlir::ShapedType &>(v40, &v31);
                }
              }
            }
          }

          goto LABEL_16;
        }

        v23 = *(a2 + 36);
        if (v23)
        {
          v24 = (a2 - 16);
        }

        else
        {
          v24 = 0;
        }

        v8 = 1;
        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v24, v23, &v29, 1);
        mlir::Operation::erase(a2);
        goto LABEL_17;
      }

      v27 = *(a2 + 24);
      v38 = 257;
      emitDiag(v27, 2, v37, &v39);
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<20ul>(v40, "unable to multiply ");
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<(v40, v16);
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<6ul>(v40, " and ");
      if (!v39)
      {
        goto LABEL_16;
      }

      v26 = v17;
    }

    else
    {
      v25 = *(a2 + 24);
      v38 = 257;
      emitDiag(v25, 2, v37, &v39);
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<15ul>(v40, "unable to add ");
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<(v40, v4);
      if (!v39)
      {
        goto LABEL_16;
      }

      mlir::Diagnostic::operator<<<6ul>(v40, " and ");
      if (!v39)
      {
        goto LABEL_16;
      }

      v26 = Tensor;
    }

    mlir::Diagnostic::operator<<(v40, v26);
    goto LABEL_16;
  }

LABEL_17:
  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL replaceBitwiseBinary<mlir::ODIE::Compiler::CoreML::BitwiseXorOp>(uint64_t *a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) >= 3u)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<35ul>(v54, "expects 2 inputs and 1 output for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<7ul>(v54, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v4 = *(a2 + 68);
    }

    else
    {
      v4 = 0;
    }

    LODWORD(v48) = v4;
    v5 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&__src, &v48) + 200);
    goto LABEL_46;
  }

  v7 = *(a2 + 72);
  v8 = *(v7 + 24);
  v9 = *(v7 + 56);
  v10 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = *v14;
    v16 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v17 = mlir::detail::InterfaceMap::lookup(v15 + 8, v16);
  }

  else
  {
    v17 = 0;
  }

  v45 = 0;
  v44 = (*(v13 + 8))(v13, v10);
  v43 = (*(v17 + 8))(v17, v14);
  v18 = mlir::ODIE::Compiler::getCastingTargetType<(mlir::ODIE::Compiler::CastingSemantics)2>(*a1, &v44, &v43);
  v41 = v18;
  v42 = v19;
  if ((v19 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<28ul>(v54, "Failed to compute cast for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(v54, " between types:");
        }
      }
    }

    v30 = (*(v13 + 8))(v13, v10);
    if (__src)
    {
      LODWORD(v48) = 4;
      v49 = v30;
      v31 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
      v32 = v55 + 24 * v56;
      v33 = *v31;
      *(v32 + 16) = *(v31 + 16);
      *v32 = v33;
      ++v56;
      if (__src)
      {
        mlir::Diagnostic::operator<<<6ul>(v54, " and ");
      }
    }

    v34 = (*(v17 + 8))(v17, v14);
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v34;
    goto LABEL_34;
  }

  v20 = v18;
  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v18);
  v23 = v22;
  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v20);
  if ((v23 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 0 of ");
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<(v54, *(a2 + 48));
    if (!__src)
    {
      goto LABEL_45;
    }

    mlir::Diagnostic::operator<<<5ul>(v54, " to ");
    if (!__src)
    {
      goto LABEL_45;
    }

    LODWORD(v48) = 4;
    v49 = v20;
LABEL_34:
    v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v55, &v48, 1);
    v36 = v55 + 24 * v56;
    v37 = *v35;
    *(v36 + 16) = *(v35 + 16);
    *v36 = v37;
    ++v56;
LABEL_45:
    v5 = v57;
LABEL_46:
    v29 = (v5 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_47;
  }

  if ((v25 & 1) == 0)
  {
    v51 = 257;
    emitDiag(v3, 2, &v48, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<29ul>(v54, "Failed to cast operand 1 of ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
        if (__src)
        {
          mlir::Diagnostic::operator<<<5ul>(v54, " to ");
          if (__src)
          {
            mlir::Diagnostic::operator<<<mlir::Type &>(v54, &v41);
          }
        }
      }
    }

    goto LABEL_45;
  }

  __src = v21;
  v54[0] = v24;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v48);
  if (v52)
  {
    v26 = *(v48 + 1);
    __src = *v48;
    v46[0] = v26;
    v40 = *(__src + 1) & 0xFFFFFFFFFFFFFFF8;
    v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BitwiseXorOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, v3, &v40, &__src, v46) - 16;
    v27 = *(a2 + 36);
    if (v27)
    {
      v28 = (a2 - 16);
    }

    else
    {
      v28 = 0;
    }

    v29 = 1;
    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &v45, 1);
    mlir::Operation::erase(a2);
  }

  else
  {
    v47 = 257;
    emitDiag(v3, 2, v46, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<32ul>(v54, "Failed to broadcast values for ");
      if (__src)
      {
        mlir::Diagnostic::operator<<(v54, *(a2 + 48));
      }
    }

    v29 = (v57 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

  if (v52 == 1 && v48 != &v50)
  {
    free(v48);
  }

LABEL_47:
  v38 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t replaceBMM(mlir::OpBuilder *a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v17 = "expected ranked tensor input for bmm";
  v19 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v17, v15);
  if (v16 != 1 || (v5 = *(*(a2 + 72) + 56), v17 = "expected ranked tensor mat2 for bmm", v19 = 259, mlir::ODIE::Compiler::getShapedRankedType(v5, &v17, v15), v16 != 1))
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  inserted = insertMatmul(a1, v4, v5);
  if ((v7 & 1) == 0)
  {
    v14[16] = 257;
    mlir::Operation::emitError(&v17, a2, v14);
    if (v17)
    {
      mlir::Diagnostic::operator<<<26ul>(v18, "Failed to insert matmul: ");
      if (v17)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(v15);
        mlir::Diagnostic::appendOp(v18, a2, v15);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
    goto LABEL_14;
  }

  v17 = inserted;
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = (a2 - 16);
  }

  else
  {
    v9 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v9, v8, &v17, 1);
  if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
    v11 = *a2;
    v10 = *(a2 + 8);
    *v10 = *a2;
    v11[1] = v10;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  mlir::Operation::destroy(a2);
  result = 1;
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t replaceCat(uint64_t *a1, uint64_t *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a2[9];
  v5 = *(v4 + 24);
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1)
  {
    LODWORD(v55) = 0;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v55, 1, 0);
    v51 = Tensor;
  }

  else
  {
    Tensor = *(v4 + 56);
    v55 = "expected ranked tensor dim input to cat";
    v57[8] = 259;
    mlir::ODIE::Compiler::getShapedRankedType(Tensor, &v55, v52);
    if (v53[0] != 1)
    {
      v10 = 0;
      goto LABEL_44;
    }
  }

  v55 = v57;
  v56 = 0x600000000;
  if ((~*(v5 + 8) & 7) != 0)
  {
    v7 = v5;
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
      v9 = v7 + 24 * *(v7 + 16) + 120;
    }

    else
    {
      v9 = v7 + 16 * v8 + 16;
    }
  }

  else
  {
    v9 = 0;
  }

  if (disaggregateTupleInputs(v9, a2[3], &v55))
  {
    v44 = Tensor;
    if (*(a2 + 9))
    {
      v11 = a2 - 2;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11[1];
    v13 = a2[3];
    v52[0] = "expecting RankedTensorType for result of torch.cat";
    v54 = 259;
    mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v13, v52, &v49);
    v42 = v49;
    v43 = v50;
    v14 = (*(v50 + 8))();
    v52[0] = v53;
    v52[1] = 0x600000000;
    if (v56)
    {
      v15 = v14;
      v16 = v55;
      v17 = &v55[8 * v56];
      while (1)
      {
        v18 = *(*v16 + 8);
        v19 = a2[3];
        v45[0] = "expecting RankedTensorType for input of torch.cat";
        v46 = 259;
        mlir::ODIE::Compiler::getShapedRankedType((v18 & 0xFFFFFFFFFFFFFFF8), v19, v45, &v47);
        v21 = v47;
        v20 = v48;
        if (!(*(v48 + 16))(v48, v47))
        {
          goto LABEL_29;
        }

        v22 = (*(v20 + 24))(v20, v21);
        if (v23)
        {
          break;
        }

LABEL_25:
        v25 = (*(v20 + 24))(v20, v21);
        if (!v26)
        {
          goto LABEL_29;
        }

        v27 = 8 * v26;
        v28 = 1;
        do
        {
          v29 = *v25++;
          v28 *= v29;
          v27 -= 8;
        }

        while (v27);
        if (v28)
        {
          goto LABEL_29;
        }

LABEL_31:
        if (++v16 == v17)
        {
          goto LABEL_32;
        }
      }

      v24 = 8 * v23;
      while (*v22 != 0x8000000000000000)
      {
        ++v22;
        v24 -= 8;
        if (!v24)
        {
          goto LABEL_25;
        }
      }

LABEL_29:
      v30 = mlir::ODIE::Compiler::castValueToElementType(a1, *v16, v15);
      if ((v31 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      llvm::SmallVectorTemplateBase<mlir::Value,true>::push_back(v52, v30);
      goto LABEL_31;
    }

LABEL_32:
    (*(v43 + 24))(v43, v42);
    v51 = mlir::ODIE::Compiler::wrapAroundDimension(a1, v44, v32);
    v33 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, a1[4], &v51, v52);
    v34 = *(a2 + 9);
    v35 = a2 - 2;
    if (!v34)
    {
      v35 = 0;
    }

    v47 = v35;
    v48 = v34;
    v36 = *(v33 + 9);
    v37 = (v33 - 16);
    if (!v36)
    {
      v37 = 0;
    }

    v45[0] = v37;
    v45[1] = v36;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v47, v45);
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
    if (v52[0] != v53)
    {
      free(v52[0]);
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  if (v55 != v57)
  {
    free(v55);
  }

LABEL_44:
  v40 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceCeil(uint64_t *a1, uint64_t *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v11 = a2[3];
    v21 = 257;
    emitDiag(v11, 2, v20, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<45ul>(v23, "expect a single operand for TorchImport.ceil");
    }

    goto LABEL_14;
  }

  v4 = *(a2[9] + 24);
  v22 = "expected shaped type for input to TorchImport.ceil";
  v24 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v22, v19);
  v22 = "expected shaped type for output of TorchImport.ceil";
  v24 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v22, v17);
  v5 = 0;
  if (v19[16] != 1 || (v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  CeilOfTensor = mlir::ODIE::Compiler::getCeilOfTensor(a1, v4, v17[0], v17[1]);
  v16 = v6;
  if ((v6 & 1) == 0)
  {
    v14 = a2[3];
    v21 = 257;
    emitDiag(v14, 2, v20, &v22);
    if (v22)
    {
      mlir::Diagnostic::operator<<<43ul>(v23, "unable to get the lowering for ceiling of ");
      if (v22)
      {
        mlir::Diagnostic::operator<<(v23, v4);
      }
    }

LABEL_14:
    v5 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
    goto LABEL_15;
  }

  v7 = *(a2 + 9);
  if (v7)
  {
    v8 = (a2 - 2);
  }

  else
  {
    v8 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v8, v7, &CeilOfTensor, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v10 = *a2;
    v9 = a2[1];
    *v9 = *a2;
    *(v10 + 8) = v9;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v5 = 1;
LABEL_15:
  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t replaceClamp(uint64_t *a1, uint64_t *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0)
  {
    v3 = 0;
    goto LABEL_3;
  }

  v3 = *(a2 + 17);
  if (v3 - 4 <= 0xFFFFFFFD)
  {
LABEL_3:
    v4 = a2[3];
    v52 = 257;
    emitDiag(v4, 2, v50, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<38ul>(v55, "do not expect torch.clamp op to have ");
      if (__src)
      {
        LODWORD(v50[0]) = 5;
        v50[1] = v3;
        v5 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, v50, 1);
        v6 = v56 + 24 * v57;
        v7 = *v5;
        *(v6 + 16) = *(v5 + 16);
        *v6 = v7;
        ++v57;
        if (__src)
        {
          mlir::Diagnostic::operator<<<10ul>(v55, " operands");
        }
      }
    }

    goto LABEL_52;
  }

  v9 = *(a2[9] + 24);
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v9 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(a2 + 9))
  {
    v11 = a2 - 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((v11[1] & 0xFFFFFFFFFFFFFFF8));
  if (v10)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a2[3];
    v52 = 257;
    emitDiag(v15, 2, v50, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<60ul>(v55, "input and output of torch.clamp must be shaped tensor types");
    }

    goto LABEL_52;
  }

  v16 = (*(v13 + 8))(v13, v12);
  v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v9, v16);
  if ((v18 & 1) == 0)
  {
    v24 = a2[3];
    v52 = 257;
    emitDiag(v24, 2, v50, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<52ul>(v55, "unable to cast input to same element type as result");
    }

    goto LABEL_52;
  }

  v19 = v17;
  v45 = v17;
  v20 = (*(v17 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (v20)
  {
    v21 = *v20;
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22);
  }

  else
  {
    v23 = 0;
  }

  v25 = *(a2[9] + 56);
  if (*(*(*(v25 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
  {
    v26 = a2[3];
    v47 = v19;
    v27 = (*(v23 + 8))(v23, v20);
    v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v25, v27);
    if (v29)
    {
      v46 = v28;
      __src = v19;
      v55[0] = v28;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v50);
      v30 = v53;
      if (v53)
      {
        v31 = *v50[0];
        v46 = *(v50[0] + 1);
        v47 = v31;
        __src = *(v31 + 8) & 0xFFFFFFFFFFFFFFF8;
        v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type,mlir::Value &,mlir::Value &>(a1, a1[4], &__src, &v47, &v46) - 16;
      }

      else
      {
        v49 = 257;
        emitDiag(v26, 2, v48, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<58ul>(v55, "unable to broadcast min value and input to a common shape");
        }

        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        v19 = 0;
      }

      if (v53 == 1 && v50[0] != &v51)
      {
        free(v50[0]);
      }

      if (v30)
      {
        v45 = v19;
        goto LABEL_38;
      }
    }

    else
    {
      v52 = 257;
      emitDiag(v26, 2, v50, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<51ul>(v55, "unable to cast value to same element type as input");
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    v40 = a2[3];
    v52 = 257;
    emitDiag(v40, 2, v50, &__src);
    if (__src)
    {
      v41 = "unable to insert a comparison value to do maximum";
LABEL_51:
      mlir::Diagnostic::operator<<<50ul>(v55, v41);
    }

LABEL_52:
    v39 = v58 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_53;
  }

LABEL_38:
  if (v3 >= 3)
  {
    v32 = *(a2[9] + 88);
    if (v32)
    {
      if (*(*(*(v32 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
      {
        v33 = mlir::ODIE::Compiler::insertComparisonOp<mlir::ODIE::Compiler::CoreML::MinimumOp>(a1, v19, v32, v20, v23, a2[3]);
        if (v34)
        {
          v45 = v33;
          goto LABEL_43;
        }

        v44 = a2[3];
        v52 = 257;
        emitDiag(v44, 2, v50, &__src);
        if (__src)
        {
          v41 = "unable to insert a comparison value to do minimum";
          goto LABEL_51;
        }

        goto LABEL_52;
      }
    }
  }

LABEL_43:
  v35 = *(a2 + 9);
  if (v35)
  {
    v36 = (a2 - 2);
  }

  else
  {
    v36 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v36, v35, &v45, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v38 = *a2;
    v37 = a2[1];
    *v37 = *a2;
    *(v38 + 8) = v37;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v39 = 1;
LABEL_53:
  v42 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

BOOL replaceComplex(mlir::OpBuilder *a1, uint64_t *a2)
{
  v49[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v16 = a2[3];
    v37 = 257;
    emitDiag(v16, 2, &v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<43ul>(v39, "expect two operands to TorchImport.complex");
    }

    goto LABEL_11;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  v38 = "expects shaped type for real tensor";
  LOWORD(v41) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v38, v34);
  v38 = "expects shaped type for real tensor";
  LOWORD(v41) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v38, v33);
  v7 = v33[0];
  v8 = v34[0];
  if (v34[0] != v33[0])
  {
    v9 = a2[3];
    v37 = 257;
    emitDiag(v9, 2, &v35, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<66ul>(v39, "expect real and imaginary tensors to have same type: real type = ");
      if (v38)
      {
        LODWORD(v35) = 4;
        v36 = v8;
        v10 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v35, 1);
        v11 = v40 + 24 * v41;
        v12 = *v10;
        *(v11 + 16) = *(v10 + 16);
        *v11 = v12;
        ++v41;
        if (v38)
        {
          mlir::Diagnostic::operator<<<19ul>(v39, " imaginary type = ");
          if (v38)
          {
            LODWORD(v35) = 4;
            v36 = v7;
            v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v40, &v35, 1);
            v14 = v40 + 24 * v41;
            v15 = *v13;
            *(v14 + 16) = *(v13 + 16);
            *v14 = v15;
            ++v41;
          }
        }
      }
    }

LABEL_11:
    v17 = (v46 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    goto LABEL_12;
  }

  if (*(a2 + 9))
  {
    v20 = a2 - 2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20[1];
  v22 = *(a1 + 4);
  Complex = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::CreateComplexOp>(a1, *(**v22 + 32));
  v38 = v22;
  v39[0] = Complex;
  v39[1] = &v41;
  v40 = 0x400000000;
  v42 = v44;
  v43 = 0x400000000;
  v44[4] = v45;
  v44[5] = 0x400000000;
  v45[8] = 4;
  v46 = v48;
  v47 = 0x100000000;
  v48[1] = v49;
  v48[2] = 0x100000000;
  v49[1] = 0;
  v49[2] = 0;
  v49[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v49[4] = 0;
  v49[6] = 0;
  mlir::ODIE::Compiler::CoreML::CreateComplexOp::build(a1, &v38, v21 & 0xFFFFFFFFFFFFFFF8, v5, v6);
  v24 = mlir::Operation::create(&v38);
  mlir::OpBuilder::insert(a1, v24);
  v25 = *(*(v24 + 6) + 16);
  mlir::OperationState::~OperationState(&v38);
  if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CreateComplexOp,void>::id)
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

  v35 = v28;
  v36 = v27;
  v29 = *(v26 + 9);
  v30 = (v26 - 16);
  if (!v29)
  {
    v30 = 0;
  }

  v38 = v30;
  v39[0] = v29;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v35, &v38);
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
  v17 = 1;
LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t replaceConv(uint64_t a1, uint64_t a2)
{
  v215 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 9 || *(a2 + 36) != 1)
  {
    v11 = *(a2 + 24);
    v208 = 257;
    emitDiag(v11, 2, &v205, &v210);
    if (v210)
    {
      mlir::Diagnostic::operator<<<35ul>(&v211, "expects 9 inputs and 1 output for ");
      if (v210)
      {
        mlir::Diagnostic::operator<<(&v211, *(a2 + 48));
      }
    }

    goto LABEL_49;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 - 8);
  v210 = "expects shaped type for convolution result";
  v213 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v4, &v210, &v171);
  if (v173 != 1)
  {
LABEL_67:
    v41 = 0;
    goto LABEL_50;
  }

  v6 = *(a2 + 72);
  v157 = v6[7];
  v160 = v6[3];
  v169 = v157;
  v170 = v160;
  v7 = v6[11];
  v8 = v6[15];
  if ((~*(v8 + 8) & 7) == 0)
  {
    v8 = 0;
  }

  v155 = v7;
  if (v8)
  {
    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }
  }

  else
  {
    v10 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v10, a1);
  v14 = v13;
  v153 = TupleAs1DIntTensor;
  v167 = TupleAs1DIntTensor;
  v168 = v13;
  v15 = *(*(a2 + 72) + 152);
  if ((~*(v15 + 8) & 7) == 0)
  {
    v15 = 0;
  }

  if (v15)
  {
    v16 = *(v15 + 8) & 7;
    if (v16 == 6)
    {
      v17 = v15 + 24 * *(v15 + 16) + 120;
    }

    else
    {
      v17 = v15 + 16 * v16 + 16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = getTupleAs1DIntTensor(v17, a1);
  v20 = v19;
  v151 = v18;
  v165 = v18;
  v166 = v19;
  v21 = *(*(a2 + 72) + 184);
  if ((~*(v21 + 8) & 7) == 0)
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = *(v21 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v21 + 24 * *(v21 + 16) + 120;
    }

    else
    {
      v23 = v21 + 16 * v22 + 16;
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = getTupleAs1DIntTensor(v23, a1);
  v26 = v25;
  v163 = v24;
  v164 = v25;
  v27 = *(a2 + 72);
  v28 = *(v27 + 248);
  if ((~*(v28 + 8) & 7) == 0)
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = *(v28 + 8) & 7;
    if (v29 == 6)
    {
      v30 = v28 + 24 * *(v28 + 16) + 120;
    }

    else
    {
      v30 = v28 + 16 * v29 + 16;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v27 + 216);
  v32 = getTupleAs1DIntTensor(v30, a1);
  v34 = *(*(a2 + 72) + 280);
  v162 = v34;
  if ((v20 & 1) == 0 || (v26 & 1) == 0 || (v14 & 1) == 0 || (v33 & 1) == 0)
  {
    v40 = "invalid tuple for convolution input";
LABEL_48:
    v205 = v40;
    v208 = 259;
    emitDiag(v4, 2, &v205, &v210);
LABEL_49:
    v41 = (v214 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
LABEL_50:
    v42 = *MEMORY[0x277D85DE8];
    return v41;
  }

  v205 = 0;
  v210 = &v205;
  if ((~*(v31 + 8) & 7) != 0)
  {
    v35 = v31;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v36 = v32;
    v37 = *(v35 + 8) & 7;
    if (v37 == 6)
    {
      v38 = v35 + 24 * *(v35 + 16);
      v39 = v38 + 120;
      if (v38 == -120)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v39 = v35 + 16 * v37 + 16;
    }

    if (mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v210, v39))
    {
      if ((*(v205 + 24) & 1) == 0 || ((mlir::DenseElementsAttr::tryGetValues<BOOL,void>(&v205, &v210), (v211 & 1) == 0) ? (v44 = v212[0]) : (v44 = 0), ((*(v210 + (v44 >> 3)) >> (v44 & 7)) & 1) == 0))
      {
        v205 = 0;
        v210 = &v205;
        if ((~*(v36 + 8) & 7) != 0)
        {
          v53 = v36;
        }

        else
        {
          v53 = 0;
        }

        if (!v53)
        {
          goto LABEL_114;
        }

        v54 = *(v53 + 8) & 7;
        if (v54 == 6)
        {
          v55 = v53 + 24 * *(v53 + 16);
          v56 = v55 + 120;
          if (v55 == -120)
          {
LABEL_114:
            v40 = "Non-zero output padding not supported on convolution.";
            goto LABEL_48;
          }
        }

        else
        {
          v56 = v53 + 16 * v54 + 16;
        }

        if (!mlir::detail::constant_op_binder<mlir::DenseIntElementsAttr>::match(&v210, v56) || (*(v205 + 24) & 1) == 0)
        {
          goto LABEL_114;
        }

        mlir::DenseElementsAttr::tryGetValues<int,void>(&v205, &v210);
        v81 = (v211 & 1) != 0 ? 0 : v212[0];
        if (*(v210 + v81))
        {
          goto LABEL_114;
        }

        v210 = "expects shaped type for convolution input";
        v213 = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v160, &v210, &v197);
        v210 = "expects shaped type for convolution input";
        v213 = 259;
        mlir::ODIE::Compiler::getShapedRankedType(v157, &v210, &v202);
        v113 = 0;
        if (v199 != 1 || (v204[0] & 1) == 0)
        {
          goto LABEL_226;
        }

        v114 = v198;
        v115 = v197;
        (*(v198 + 24))(v198, v197);
        if (v116 == 4)
        {
          (*(v203 + 24))(v203, v202);
          v118 = v117 == 4;
        }

        else
        {
          v118 = 0;
        }

        (*(v114 + 24))(v114, v115);
        if (v121 == 3)
        {
          (*(v203 + 24))(v203, v202);
          v123 = v122 == 3;
        }

        else
        {
          v123 = 0;
        }

        if (v118 || v123)
        {
          if (v118)
          {
            v124 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::Conv2dOp,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &,mlir::Value &>(a1, *(a1 + 32), &v171, &v170, &v169, &v167, &v165, &v163, &v162) - 16;
LABEL_205:
            if (*(*(*(v155 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id)
            {
              if ((~*(v124 + 2) & 7) == 0)
              {
                v124 = 0;
              }

              if (!v124)
              {
                goto LABEL_220;
              }

LABEL_215:
              v142 = *(v124 + 1) & 7;
              if (v142 == 6)
              {
                v124 += 24 * *(v124 + 2) + 120;
              }

              else
              {
                v124 += 16 * v142 + 16;
              }

LABEL_220:
              v143 = *(a2 + 36);
              if (v143)
              {
                v144 = (a2 - 16);
              }

              else
              {
                v144 = 0;
              }

              v205 = v144;
              v206 = v143;
              v145 = *(v124 + 9);
              v146 = v124 - 16;
              if (!v145)
              {
                v146 = 0;
              }

              v210 = v146;
              v211 = v145;
              mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v205, &v210);
              mlir::Operation::erase(a2);
              v113 = 1;
              goto LABEL_226;
            }

            v140 = mlir::ODIE::Compiler::replacePostConvBiasImpl(a1, v124, v155, v171, v172);
            if (v141)
            {
              if ((~*(v140 + 2) & 7) != 0)
              {
                v124 = v140;
              }

              else
              {
                v124 = 0;
              }

              if (!v124)
              {
                goto LABEL_220;
              }

              goto LABEL_215;
            }

            v113 = 0;
LABEL_226:
            v41 = v113 & 1;
            goto LABEL_50;
          }

          v138 = mlir::ODIE::Compiler::replaceConv1dImpl(a1, v160, v157, v153, v151, v24, v34, v120, v171, v172);
          if (v139)
          {
            v124 = v138;
            goto LABEL_205;
          }

          v125 = "Couldn't decompose Conv1d op.";
        }

        else
        {
          v125 = "only supports conv1d and conv2d variant";
        }

        v205 = v125;
        v208 = 259;
        emitDiag(v4, 2, &v205, &v210);
        v113 = v214 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
        goto LABEL_226;
      }
    }
  }

LABEL_58:
  v4 = *(a2 + 24);
  v45 = *(a2 + 48);
  if (*(a2 + 36))
  {
    v46 = a2 - 16;
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v46 + 8);
  v210 = "expects shaped type for convolution transpose result";
  v213 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v47 & 0xFFFFFFFFFFFFFFF8), v4, &v210, &v185);
  if (v186 != 1)
  {
    goto LABEL_67;
  }

  v48 = *(a2 + 72);
  v49 = v48[3];
  v183 = v48[7];
  v184 = v49;
  v50 = v48[15];
  if ((~*(v50 + 8) & 7) == 0)
  {
    v50 = 0;
  }

  if (v50)
  {
    v51 = *(v50 + 8) & 7;
    if (v51 == 6)
    {
      v52 = v50 + 24 * *(v50 + 16) + 120;
    }

    else
    {
      v52 = v50 + 16 * v51 + 16;
    }
  }

  else
  {
    v52 = 0;
  }

  v57 = v48[11];
  v158 = getTupleAs1DIntTensor(v52, a1);
  v59 = v58;
  v60 = *(*(a2 + 72) + 152);
  if ((~*(v60 + 8) & 7) == 0)
  {
    v60 = 0;
  }

  if (v60)
  {
    v61 = *(v60 + 8) & 7;
    if (v61 == 6)
    {
      v62 = v60 + 24 * *(v60 + 16) + 120;
    }

    else
    {
      v62 = v60 + 16 * v61 + 16;
    }
  }

  else
  {
    v62 = 0;
  }

  v63 = getTupleAs1DIntTensor(v62, a1);
  v65 = v64;
  v66 = *(*(a2 + 72) + 184);
  if ((~*(v66 + 8) & 7) == 0)
  {
    v66 = 0;
  }

  if (v66)
  {
    v67 = *(v66 + 8) & 7;
    if (v67 == 6)
    {
      v68 = v66 + 24 * *(v66 + 16) + 120;
    }

    else
    {
      v68 = v66 + 16 * v67 + 16;
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = getTupleAs1DIntTensor(v68, a1);
  v161 = v70;
  v71 = *(*(a2 + 72) + 248);
  if ((~*(v71 + 8) & 7) == 0)
  {
    v71 = 0;
  }

  v156 = v69;
  if (v71)
  {
    v72 = *(v71 + 8) & 7;
    if (v72 == 6)
    {
      v73 = v71 + 24 * *(v71 + 16) + 120;
    }

    else
    {
      v73 = v71 + 16 * v72 + 16;
    }
  }

  else
  {
    v73 = 0;
  }

  v74 = getTupleAs1DIntTensor(v73, a1);
  if ((v65 & 1) == 0 || (v161 & 1) == 0 || (v59 & 1) == 0 || (v75 & 1) == 0)
  {
    v40 = "invalid tuple for convolution transpose input";
    goto LABEL_48;
  }

  v76 = v74;
  v152 = v57;
  v150 = *(*(a2 + 72) + 280);
  v210 = "expects shaped type for convolution transpose input";
  v213 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v49, &v210, &v180);
  v210 = "expects shaped type for convolution transpose input";
  v213 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v183, &v210, &v177);
  v41 = 0;
  if (v182 != 1 || (v179 & 1) == 0)
  {
    goto LABEL_50;
  }

  v78 = v180;
  v77 = v181;
  (*(v181 + 24))(v181, v180);
  if (v79 == 3)
  {
    (*(v178 + 24))(v178, v177);
    v154 = v80 == 3;
  }

  else
  {
    v154 = 0;
  }

  v149 = v45;
  (*(v77 + 24))(v77, v78);
  if (v82 == 4)
  {
    (*(v178 + 24))(v178, v177);
    v84 = v83 == 4;
  }

  else
  {
    v84 = 0;
  }

  (*(v77 + 24))(v77, v78);
  if (v85 == 5)
  {
    (*(v178 + 24))(v178, v177);
    v87 = v86 == 5;
  }

  else
  {
    v87 = 0;
  }

  if (!v154 && !v84 && !v87)
  {
    v208 = 257;
    emitDiag(v4, 2, &v205, &v210);
    if (v210)
    {
      mlir::Diagnostic::operator<<<51ul>(&v211, "ConvTranspose is supported for 1D, 2D and 3D only.");
    }

    goto LABEL_49;
  }

  v88 = v87;
  mlir::ODIE::Compiler::extract1DIntVector<int>(v63, &v205);
  if ((v209 & 1) == 0)
  {
    v200 = 257;
    emitDiag(v4, 2, &v197, &v210);
    if (v210)
    {
      mlir::Diagnostic::operator<<<46ul>(&v211, "padding argument must be a 1d tensor constant");
    }

    v41 = (v214 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
    goto LABEL_200;
  }

  v202 = v204;
  v203 = 0xC00000000;
  if (v206)
  {
    llvm::SmallVectorImpl<int>::operator=(&v202, &v205);
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v76, &v197);
  if ((v201 & 1) == 0)
  {
    v196[8] = 257;
    emitDiag(v4, 2, v195, &v210);
    if (v210)
    {
      mlir::Diagnostic::operator<<<49ul>(&v211, "output_pad argument must be a 1d tensor constant");
    }

    v41 = (v214 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
    goto LABEL_195;
  }

  v195[0] = v196;
  v195[1] = 0xC00000000;
  if (v198)
  {
    llvm::SmallVectorImpl<int>::operator=(v195, &v197);
  }

  v176 = v185;
  LODWORD(v210) = -1;
  v175 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v210, 1);
  if (v154)
  {
    v89 = (*(v77 + 24))(v77, v78);
    v192 = v194;
    v193 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v192, v89, &v89[8 * v90]);
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v192, 1);
    v91 = v192;
    v92 = v193;
    v93 = (*(v77 + 8))(v77, v78);
    v210 = mlir::RankedTensorType::get(v91, v92, v93, 0);
    v49 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v210, &v184, &v175) - 16;
    v184 = v49;
    v95 = v177;
    v94 = v178;
    v96 = (*(v178 + 24))(v178, v177);
    v189 = v191;
    v190 = 0x600000000;
    llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v189, v96, &v96[8 * v97]);
    llvm::SmallVectorTemplateBase<long long,true>::push_back(&v189, 1);
    v210 = v212;
    v211 = 0xC00000000;
    llvm::SmallVectorImpl<int>::append<long long *,void>(&v210, v189, v189 + 8 * v190);
    v174 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v210, v211);
    if (v210 != v212)
    {
      free(v210);
    }

    v98 = v189;
    v99 = v190;
    v100 = (*(v94 + 8))(v94, v95);
    v210 = mlir::RankedTensorType::get(v98, v99, v100, 0);
    v183 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v210, &v183, &v174) - 16;
    NElementTensor = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, v158, 1);
    v102 = NElementTensor;
    v59 = v103;
    if (v103)
    {
      v159 = NElementTensor;
      v156 = mlir::ODIE::Compiler::makeNElementTensor(a1, 2, v156, 1);
      v161 = v104;
      if (v104)
      {
        llvm::SmallVectorTemplateBase<int,true>::push_back(&v202, 0);
        llvm::SmallVectorTemplateBase<int,true>::push_back(v195, 0);
        v105 = *(&v185 + 1);
        v41 = v185;
        v106 = (*(*(&v185 + 1) + 24))(*(&v185 + 1), v185);
        v210 = v212;
        v211 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v210, v106, &v106[8 * v107]);
        llvm::SmallVectorTemplateBase<long long,true>::push_back(&v210, 1);
        v108 = v210;
        v109 = v211;
        v110 = (*(v105 + 8))(v105, v41);
        v187[0] = mlir::RankedTensorType::get(v108, v109, v110, 0);
        *&v176 = mlir::TensorType::operator mlir::ShapedType(v187);
        *(&v176 + 1) = v111;
        if (v210 != v212)
        {
          free(v210);
        }

        v112 = 1;
      }

      else
      {
        v188 = 257;
        emitDiag(v4, 2, v187, &v210);
        if (v210)
        {
          mlir::Diagnostic::operator<<<32ul>(&v211, "Failed to expand dilations for ");
          if (v210)
          {
            mlir::Diagnostic::operator<<(&v211, v149);
          }
        }

        v41 = (v214 & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
        v112 = 0;
      }

      v119 = v152;
      v102 = v159;
    }

    else
    {
      v188 = 257;
      emitDiag(v4, 2, v187, &v210);
      v119 = v152;
      if (v210)
      {
        mlir::Diagnostic::operator<<<30ul>(&v211, "Failed to expand strides for ");
        if (v210)
        {
          mlir::Diagnostic::operator<<(&v211, v149);
        }
      }

      v41 = (v214 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
      v112 = 0;
    }

    if (v189 != v191)
    {
      free(v189);
    }

    if (v192 != v194)
    {
      free(v192);
    }

    if (!v112)
    {
      goto LABEL_193;
    }
  }

  else
  {
    v119 = v152;
    v102 = v158;
  }

  if (v88)
  {
    if (v59 & 1) != 0 && (v161)
    {
      v126 = buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp>(a1, v49, v183, v119, v102, &v202, v156, v195, v150, &v176);
      goto LABEL_181;
    }
  }

  else if (v59 & 1) != 0 && (v161)
  {
    v126 = buildConvTranspose<mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp>(a1, v49, v183, v119, v102, &v202, v156, v195, v150, &v176);
LABEL_181:
    v128 = v126;
    v189 = v126;
    LOBYTE(v190) = v127;
    if (v127)
    {
      if (v154)
      {
        v129 = *(&v185 + 1);
        v130 = v185;
        v131 = (*(*(&v185 + 1) + 24))(*(&v185 + 1), v185);
        v210 = v212;
        v211 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v210, v131, &v131[8 * v132]);
        v133 = v210;
        v134 = v211;
        v135 = (*(v129 + 8))(v129, v130);
        v192 = mlir::RankedTensorType::get(v133, v134, v135, 0);
        v128 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ShrinkDimsOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v192, &v189, &v175) - 16;
        if (v210 != v212)
        {
          free(v210);
        }
      }

      v210 = v128;
      v136 = *(a2 + 36);
      if (v136)
      {
        v137 = (a2 - 16);
      }

      else
      {
        v137 = 0;
      }

      v41 = 1;
      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v137, v136, &v210, 1);
      mlir::Operation::erase(a2);
    }

    else
    {
      v194[8] = 257;
      emitDiag(v4, 2, &v192, &v210);
      if (v210)
      {
        mlir::Diagnostic::operator<<<46ul>(&v211, "Failed to handle conv_transpose creation for ");
        if (v210)
        {
          mlir::Diagnostic::operator<<(&v211, v149);
        }
      }

      v41 = (v214 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v210);
    }

LABEL_193:
    if (v195[0] != v196)
    {
      free(v195[0]);
    }

LABEL_195:
    if (v201 == 1 && v197 != &v199)
    {
      free(v197);
    }

    if (v202 != v204)
    {
      free(v202);
    }

LABEL_200:
    if (v209 == 1 && v205 != &v207)
    {
      free(v205);
    }

    goto LABEL_50;
  }

  v147 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceCond(v147, v148);
}

BOOL replaceCond(uint64_t a1, mlir::Operation *this)
{
  v46[8] = *MEMORY[0x277D85DE8];
  if ((*(this + 46) & 0x80) == 0 || !*(this + 17))
  {
    v20 = *(this + 3);
    v37 = 257;
    emitDiag(v20, 2, &v34, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<58ul>(v39, "conditionals must have at least a condition to operate on");
    }

    goto LABEL_49;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(this);
  v5 = *(AttrDictionary + 16);
  if (!v5)
  {
LABEL_47:
    v22 = *(this + 3);
    v37 = 257;
    emitDiag(v22, 2, &v34, &v38);
    if (v38)
    {
      mlir::Diagnostic::operator<<<45ul>(v39, "conditional did not have a 'false' condition");
    }

    goto LABEL_49;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(AttrDictionary + 8);
  v9 = &v8[2 * v5];
  do
  {
    v10 = v8[1];
    v11 = *(*v8 + 16);
    v12 = *(*v8 + 24);
    if (v12 >= 0xC)
    {
      if (*v11 == 0x72675F65736C6166 && *(v11 + 2) == 1600680033)
      {
        if (v6)
        {
          v37 = 257;
          mlir::Operation::emitError(&v38, this, &v34);
          if (v38)
          {
            mlir::Diagnostic::operator<<<48ul>(v39, "Detected multiple false_graph attributes on op ");
          }

          goto LABEL_46;
        }

        if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (v10[3])
          {
            v6 = 0;
          }

          else
          {
            v6 = v8[1];
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else if (v12 != 11)
    {
      goto LABEL_30;
    }

    v14 = *v11;
    v15 = *(v11 + 3);
    if (v14 == 0x6172675F65757274 && v15 == 0x5F68706172675F65)
    {
      if (!v7)
      {
        if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
        {
          if (v10[3])
          {
            v7 = 0;
          }

          else
          {
            v7 = v8[1];
          }
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_30;
      }

      v37 = 257;
      mlir::Operation::emitError(&v38, this, &v34);
      if (v38)
      {
        mlir::Diagnostic::operator<<<47ul>(v39, "Detected multiple true_graph attributes on op ");
      }

LABEL_46:
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
      goto LABEL_47;
    }

LABEL_30:
    v8 += 2;
  }

  while (v8 != v9);
  v32 = v7;
  v33 = v6;
  if (!v6)
  {
    goto LABEL_47;
  }

  if (v7)
  {
    if (*(*(*(this - 1) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::TorchImport::TupleType,void>::id)
    {
      v17 = *(this - 1) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v17 = 0;
    }

    v31 = v17;
    if (v17)
    {
      v18 = *(v17 + 8);
      v19 = &v18[8 * *(v17 + 16)];
      v34 = v36;
      v35 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(&v34, v18, v19);
    }

    else
    {
      v26 = *(this + 9);
      if (v26)
      {
        v27 = this - 16;
      }

      else
      {
        v27 = 0;
      }

      v34 = v36;
      v35 = 0x600000000;
      llvm::SmallVectorImpl<mlir::Type>::append<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&v34, v27, 0, v27, v26);
    }

    v28 = *(*(this + 9) + 24);
    v29 = *(a1 + 32);
    v30 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::IfOp>(a1, *(**v29 + 32));
    v38 = v29;
    v39[0] = v30;
    v39[1] = v40;
    v39[2] = 0x400000000;
    v40[4] = v41;
    v40[5] = 0x400000000;
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
    mlir::ODIE::Compiler::CoreML::IfOp::build(a1, &v38, v34 & 0xFFFFFFFFFFFFFFF9 | 2, v35, v28);
  }

  v21 = *(this + 3);
  v37 = 257;
  emitDiag(v21, 2, &v34, &v38);
  if (v38)
  {
    mlir::Diagnostic::operator<<<44ul>(v39, "conditional did not have a 'true' condition");
  }

LABEL_49:
  v23 = (v43 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t replaceCopy(uint64_t *a1, uint64_t *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v18 = a2[3];
    v31[8] = 257;
    emitDiag(v18, 2, v30, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<26ul>(v34, "copy expects two operands");
    }

    v7 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_18;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v6 = *(v4 + 56);
  __src = "copy op expects shaped type operands";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &__src, &v24);
  __src = "copy op expects shaped type operands";
  v35 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &__src, v23);
  v7 = 0;
  if (v26 != 1 || (v23[16] & 1) == 0)
  {
LABEL_18:
    v19 = *MEMORY[0x277D85DE8];
    return v7;
  }

  v8 = (*(v25 + 8))(v25, v24);
  v9 = mlir::ODIE::Compiler::castValueToElementType(a1, v6, v8);
  if (v10)
  {
    v11 = v9;
    v27 = v9;
    if ((*(v9 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v12 = *(*(v9 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
      mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    }

    __src = v5;
    v34[0] = v11;
    mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v30);
    if (v32)
    {
      v27 = *(v30[0] + 1);
      v14 = *(a2 + 9);
      if (v14)
      {
        v15 = (a2 - 2);
      }

      else
      {
        v15 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v15, v14, &v27, 1);
      if (a2[2])
      {
        a2[2] = 0;
        v17 = *a2;
        v16 = a2[1];
        *v16 = *a2;
        *(v17 + 8) = v16;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v7 = 1;
    }

    else
    {
      v21 = a2[3];
      v29 = 257;
      emitDiag(v21, 2, v28, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<37ul>(v34, " Unable to broadcast in1 and in2 of ");
        if (__src)
        {
          mlir::Diagnostic::operator<<(v34, a2[6]);
          if (__src)
          {
            mlir::Diagnostic::operator<<<4ul>(v34, " op");
          }
        }
      }

      v7 = (v36 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    }

    if (v32 == 1 && v30[0] != v31)
    {
      free(v30[0]);
    }

    goto LABEL_18;
  }

  v22 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CosOp>(v22);
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CosOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.cos";
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
    mlir::ODIE::Compiler::CoreML::CosOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CosOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::CoshOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoshOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.cosh";
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
    mlir::ODIE::Compiler::CoreML::CoshOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CoshOp,void>::id)
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

uint64_t replaceCumsum(uint64_t *a1, uint64_t *a2)
{
  v70[8] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v58 = 257;
    emitDiag(v4, 2, &v54, &v59);
    if (v59)
    {
      mlir::Diagnostic::operator<<<31ul>(v60, "expected exactly 2 inputs for ");
      if (v59)
      {
        mlir::Diagnostic::operator<<(v60, a2[6]);
        if (v59)
        {
          mlir::Diagnostic::operator<<<7ul>(v60, ", got ");
        }
      }
    }

    if ((*(a2 + 46) & 0x80) != 0)
    {
      v25 = *(a2 + 17);
    }

    else
    {
      v25 = 0;
    }

    LODWORD(v54) = v25;
    v26 = *(mlir::InFlightDiagnostic::operator<<<unsigned int>(&v59, &v54) + 200);
    goto LABEL_36;
  }

  v5 = *(a2[9] + 24);
  v59 = "expected ranked tensor input to cumsum";
  LOWORD(v62) = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v59, &v49);
  if (*(a2 + 9))
  {
    v6 = a2 - 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6[1];
  v8 = a2[3];
  v59 = "expect ranked tensor output from cumsum";
  LOWORD(v62) = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v7 & 0xFFFFFFFFFFFFFFF8), v8, &v59, &v46);
  v9 = 0;
  if (v51 == 1 && (v48 & 1) != 0)
  {
    v10 = v46;
    v11 = v47;
    v12 = (*(v47 + 24))(v47, v46);
    v14 = v13;
    v15 = v49;
    v16 = (*(v50 + 24))(v50, v49);
    if (v14 != v17 || memcmp(v12, v16, 8 * v14))
    {
      v18 = a2[3];
      v58 = 257;
      emitDiag(v18, 2, &v54, &v59);
      if (v59)
      {
        mlir::Diagnostic::operator<<<60ul>(v60, "cumsum encountered input and output with mismatched shape: ");
        if (v59)
        {
          LODWORD(v54) = 4;
          v55 = v15;
          v19 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v61, &v54, 1);
          v20 = v61 + 24 * v62;
          v21 = *v19;
          *(v20 + 16) = *(v19 + 16);
          *v20 = v21;
          ++v62;
          if (v59)
          {
            mlir::Diagnostic::operator<<<5ul>(v60, " vs ");
            if (v59)
            {
              LODWORD(v54) = 4;
              v55 = v10;
              v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v61, &v54, 1);
              v23 = v61 + 24 * v62;
              v24 = *v22;
              *(v23 + 16) = *(v22 + 16);
              *v23 = v24;
              ++v62;
            }
          }
        }
      }

LABEL_35:
      v26 = v67;
LABEL_36:
      v9 = v26 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v59);
      goto LABEL_37;
    }

    v27 = (*(v11 + 8))(v11, v10);
    v28 = mlir::ODIE::Compiler::castValueToElementType(a1, v5, v27);
    if ((v29 & 1) == 0)
    {
      v43 = a2[3];
      v58 = 257;
      emitDiag(v43, 2, &v54, &v59);
      if (v59)
      {
        mlir::Diagnostic::operator<<<36ul>(v60, "failed to cast input to result type");
      }

      goto LABEL_35;
    }

    v30 = v28;
    v31 = *(a2[9] + 56);
    LOBYTE(v59) = 0;
    v32 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, &v59, 1);
    v33 = a1[4];
    v34 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CumSumOp,void>::id, *(**v33 + 32));
    if ((v35 & 1) == 0)
    {
      v58 = 1283;
      v56 = "coreml.cumsum";
      v57 = 13;
      v53 = 259;
      llvm::operator+(&v54, &v52, &v59);
      llvm::report_fatal_error(&v59, 1);
    }

    v59 = v33;
    v60[0] = v34;
    v60[1] = &v62;
    v61 = 0x400000000;
    v63 = v65;
    v64 = 0x400000000;
    v65[4] = v66;
    v65[5] = 0x400000000;
    v66[8] = 4;
    v67 = v69;
    v68 = 0x100000000;
    v69[1] = v70;
    v69[2] = 0x100000000;
    v70[1] = 0;
    v70[2] = 0;
    v70[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v70[4] = 0;
    v70[6] = 0;
    mlir::ODIE::Compiler::CoreML::CumSumOp::build(a1, &v59, v10, v30, v31, v32, v32);
    v36 = mlir::Operation::create(&v59);
    mlir::OpBuilder::insert(a1, v36);
    v37 = *(*(v36 + 6) + 16);
    mlir::OperationState::~OperationState(&v59);
    if (v37 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::CumSumOp,void>::id)
    {
      v38 = v36;
    }

    else
    {
      v38 = 0;
    }

    v59 = v38 - 16;
    v39 = *(a2 + 9);
    if (v39)
    {
      v40 = (a2 - 2);
    }

    else
    {
      v40 = 0;
    }

    mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v40, v39, &v59, 1);
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
    v9 = 1;
  }

LABEL_37:
  v44 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::DivideOp,false>(uint64_t *a1, mlir::Operation *a2)
{
  v17 = *(*(*(a2 + 6) + 8) + 16);
  v16 = *(a2 + 3);
  v3 = *(a2 + 9);
  v4 = *(v3 + 24);
  v5 = *(v3 + 56);
  v15[0] = 0;
  v15[8] = 0;
  v6 = getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, &v17, &v16, v4, v5, v15);
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

uint64_t replaceEmbedding(uint64_t *a1, uint64_t *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) < 2u || *(a2 + 9) != 1)
  {
    v61 = 257;
    emitDiag(v2, 2, &v58, &v62);
    if (v62)
    {
      mlir::Diagnostic::operator<<<39ul>(&v62 + 8, "expects at least 2 inputs and 1 output");
    }

    goto LABEL_26;
  }

  v5 = a2[9];
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  *&v62 = "expected ranked tensor types for the inputs and outputs";
  v65[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v62, &v53);
  *&v62 = "expected ranked tensor types for the inputs and outputs";
  v65[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v62, &v50);
  *&v62 = "expected ranked tensor types for the inputs and outputs";
  v65[0] = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v62, &v47);
  v8 = 0;
  if (v55 != 1 || (v52 & 1) == 0 || (v49 & 1) == 0)
  {
    goto LABEL_28;
  }

  (*(v51 + 24))(v51, v50);
  if (v9 != 2)
  {
    v61 = 257;
    emitDiag(v2, 2, &v58, &v62);
    if (v62)
    {
      mlir::Diagnostic::operator<<<26ul>(&v62 + 8, "weights tensor must be 2D");
    }

LABEL_26:
    v39 = v73;
LABEL_27:
    v8 = v39 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v62);
    goto LABEL_28;
  }

  v10 = v53;
  (*(v54 + 24))(v54, v53);
  v12 = v11;
  v14 = v47;
  v13 = v48;
  (*(v48 + 24))(v48, v47);
  if (v12 != v15 + 1)
  {
    v61 = 257;
    emitDiag(v2, 2, &v58, &v62);
    if (v62)
    {
      mlir::Diagnostic::operator<<<20ul>(&v62 + 8, "given indices rank ");
    }

    (*(v13 + 24))(v13, v14);
    v58 = v42;
    v43 = mlir::InFlightDiagnostic::operator<<<long long>(&v62, &v58);
    v44 = v43;
    if (*v43)
    {
      mlir::Diagnostic::operator<<<27ul>((v43 + 1), " expect result rank to be ");
    }

    (*(v13 + 24))(v13, v14);
    v56[0] = (v45 + 1);
    v39 = *(mlir::InFlightDiagnostic::operator<<<long long>(v44, v56) + 200);
    goto LABEL_27;
  }

  v16 = (*(v13 + 24))(v13, v14);
  v58 = v60;
  v59 = 0x600000000;
  llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v58, v16, &v16[8 * v17]);
  llvm::SmallVectorTemplateBase<long long,true>::push_back(&v58, 1);
  (*(v13 + 24))(v13, v14);
  LODWORD(v62) = v18;
  v19 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, &v62, 1);
  v46 = v10;
  v20 = v58;
  v21 = v59;
  v22 = (*(v13 + 8))(v13, v14);
  *&v62 = v20;
  *(&v62 + 1) = v21;
  v56[0] = v22;
  v57 = 0;
  v23 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v22 + 32), &v62, v56, &v57);
  v24 = a1[4];
  v25 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpandDimsOp>(a1, *(**v24 + 32));
  *&v62 = v24;
  *(&v62 + 1) = v25;
  v63 = v65;
  v64 = 0x400000000;
  v66 = v68;
  v67 = 0x400000000;
  v69 = v71;
  v70 = 0x400000000;
  v72 = 4;
  v73 = &v75;
  v74 = 0x100000000;
  v76 = &v78;
  v77 = 0x100000000;
  v79 = 0;
  v80 = 0;
  v81 = &mlir::detail::TypeIDResolver<void,void>::id;
  v82 = 0;
  v83 = 0;
  mlir::ODIE::Compiler::CoreML::ExpandDimsOp::build(a1, &v62, v23, v7, v19);
  v26 = mlir::Operation::create(&v62);
  mlir::OpBuilder::insert(a1, v26);
  v27 = *(*(v26 + 6) + 16);
  mlir::OperationState::~OperationState(&v62);
  if (v27 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpandDimsOp,void>::id)
  {
    v26 = 0;
  }

  v28 = a1[4];
  v29 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherNdOp>(a1, *(**v28 + 32));
  *&v62 = v28;
  *(&v62 + 1) = v29;
  v63 = v65;
  v64 = 0x400000000;
  v66 = v68;
  v67 = 0x400000000;
  v69 = v71;
  v70 = 0x400000000;
  v72 = 4;
  v73 = &v75;
  v74 = 0x100000000;
  v76 = &v78;
  v77 = 0x100000000;
  v79 = 0;
  v80 = 0;
  v81 = &mlir::detail::TypeIDResolver<void,void>::id;
  v82 = 0;
  v83 = 0;
  mlir::ODIE::Compiler::CoreML::GatherNdOp::build(a1, &v62, v46, v6, (v26 - 16));
  v30 = mlir::Operation::create(&v62);
  mlir::OpBuilder::insert(a1, v30);
  v31 = *(*(v30 + 6) + 16);
  mlir::OperationState::~OperationState(&v62);
  if (v31 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherNdOp,void>::id)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  v33 = *(a2 + 9);
  if (v33)
  {
    v34 = a2 - 2;
  }

  else
  {
    v34 = 0;
  }

  v56[0] = v34;
  v56[1] = v33;
  v35 = *(v32 + 9);
  v36 = v32 - 16;
  if (!v35)
  {
    v36 = 0;
  }

  *&v62 = v36;
  *(&v62 + 1) = v35;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v56, &v62);
  if (a2[2])
  {
    a2[2] = 0;
    v38 = *a2;
    v37 = a2[1];
    *v37 = *a2;
    *(v38 + 8) = v37;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  if (v58 != v60)
  {
    free(v58);
  }

  v8 = 1;
LABEL_28:
  v40 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

BOOL replaceEmpty(uint64_t a1, uint64_t *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v7 = a2[3];
    v36 = 257;
    emitDiag(v7, 2, &v34, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<50ul>(v38, " expect a single operand for TorchImport.empty op");
    }

    goto LABEL_27;
  }

  v4 = *(a2[9] + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }
  }

  else
  {
    v6 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v6, a1);
  v33 = v8;
  if ((v8 & 1) == 0)
  {
    v21 = a2[3];
    v36 = 257;
    emitDiag(v21, 2, &v34, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<46ul>(v38, " operand to TorchImport.empty should be tuple");
    }

    goto LABEL_27;
  }

  v37 = "expected ranked tensor types for the output of TorchImport.empty";
  LOWORD(v40) = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v37, &v30);
  LODWORD(v37) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v37, 1, 0);
  v10 = v30;
  v11 = (*(v31 + 8))(v31, v30);
  v28 = mlir::ODIE::Compiler::castValueToElementType(a1, Tensor, v11);
  v29 = v12;
  if ((v12 & 1) == 0)
  {
    v22 = a2[3];
    v36 = 257;
    emitDiag(v22, 2, &v34, &v37);
    if (v37)
    {
      mlir::Diagnostic::operator<<<48ul>(v38, " unable to cast zero to element type of result ");
      if (v37)
      {
        LODWORD(v34) = 4;
        v35 = v10;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v39, &v34, 1);
        v24 = v39 + 24 * v40;
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++v40;
      }
    }

LABEL_27:
    v20 = (v41 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v37);
    goto LABEL_28;
  }

  v13 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FillOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, *(a1 + 32), &v30, &TupleAs1DIntTensor, &v28);
  v14 = *(a2 + 9);
  if (v14)
  {
    v15 = a2 - 2;
  }

  else
  {
    v15 = 0;
  }

  v34 = v15;
  v35 = v14;
  v16 = *(v13 + 9);
  v17 = (v13 - 16);
  if (!v16)
  {
    v17 = 0;
  }

  v37 = v17;
  v38[0] = v16;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v34, &v37);
  if (a2[2])
  {
    a2[2] = 0;
    v19 = *a2;
    v18 = a2[1];
    *v18 = *a2;
    *(v19 + 8) = v18;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v20 = 1;
LABEL_28:
  v26 = *MEMORY[0x277D85DE8];
  return v20;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::EqualOp>(uint64_t *a1, uint64_t *a2)
{
  v64[8] = *MEMORY[0x277D85DE8];
  __src = a2[6];
  v4 = mlir::OperationName::stripDialect(&__src);
  v6 = v4;
  v7 = v5;
  v8 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v50 = 1283;
    v48[0] = "expects 2 inputs and 1 output for ";
    v49[0] = v4;
    v49[1] = v5;
    emitDiag(v8, 2, v48, &__src);
    v22 = (v61 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_39;
  }

  v9 = a2[9];
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  v12 = *(a2 - 1);
  v56 = 1283;
  __src = "expected ranked output from ";
  v54 = v4;
  v55 = v5;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v8, &__src, &v38);
  if (v39 != 1)
  {
    goto LABEL_38;
  }

  v56 = 1283;
  __src = "expected ranked tensor inputs to ";
  v54 = v6;
  v55 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v43);
  v56 = 1283;
  __src = "expected ranked tensor inputs to ";
  v54 = v6;
  v55 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v11, &__src, &v40);
  if (v45 != 1 || (v42 & 1) == 0)
  {
    goto LABEL_38;
  }

  v13 = (*(v41 + 8))(v41, v40);
  v15 = v43;
  v14 = v44;
  if (v13 != (*(v44 + 8))(v44, v43))
  {
    v16 = (*(v14 + 8))(v14, v15);
    v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v16);
    if ((v18 & 1) == 0)
    {
      v50 = 257;
      emitDiag(v8, 2, v48, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<47ul>(&v53, " Unable to cast RHS to same type as LHS of op ");
        if (__src)
        {
          v50 = 261;
          v48[0] = v6;
          v48[1] = v7;
          mlir::Diagnostic::operator<<(&v53, v48);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_38;
    }

    v11 = v17;
  }

  __src = v10;
  v53 = v11;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
  if (v51)
  {
    v19 = *v48[0];
    v20 = *(v48[0] + 1);
    if (v7 == 2 && (*v6 == 25964 || *v6 == 29804))
    {
      v21 = *v48[0];
    }

    else
    {
      v21 = *(v48[0] + 1);
      v20 = *v48[0];
    }

    v26 = a1[4];
    v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::EqualOp>(a1, *(**v26 + 32));
    __src = v26;
    v53 = v27;
    v54 = &v56;
    v55 = 0x400000000;
    v57 = v59;
    v58 = 0x400000000;
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
    mlir::ODIE::Compiler::CoreML::EqualOp::build(a1, &__src, v38, v20, v21);
    v28 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v28);
    v29 = *(*(v28 + 6) + 16);
    v30 = v28 - 16;
    mlir::OperationState::~OperationState(&__src);
    v31 = -16;
    if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::EqualOp,void>::id)
    {
      v31 = v30;
    }

    v25 = v31 & 0xFFFFFFFFFFFFFF00;
    v23 = v31;
    v24 = 1;
  }

  else
  {
    v47 = 257;
    emitDiag(v8, 2, v46, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<40ul>(&v53, " Unable to broadcast LHS and RHS of op ");
      if (__src)
      {
        v47 = 261;
        v46[0] = v6;
        v46[1] = v7;
        mlir::Diagnostic::operator<<(&v53, v46);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  if (v51 == 1 && v48[0] != v49)
  {
    free(v48[0]);
  }

  __src = (v25 | v23);
  LOBYTE(v53) = v24;
  if (!v24)
  {
LABEL_38:
    v22 = 0;
    goto LABEL_39;
  }

  v32 = *(a2 + 9);
  if (v32)
  {
    v33 = (a2 - 2);
  }

  else
  {
    v33 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v33, v32, &__src, 1);
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
  v22 = 1;
LABEL_39:
  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ErfOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErfOp,void>::id, *(**v32 + 32));
    if ((v34 & 1) == 0)
    {
      v54 = 1283;
      v52 = "coreml.erf";
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
    mlir::ODIE::Compiler::CoreML::ErfOp::build(a1, &v55, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v35 = mlir::Operation::create(&v55);
    mlir::OpBuilder::insert(a1, v35);
    v36 = *(*(v35 + 6) + 16);
    mlir::OperationState::~OperationState(&v55);
    if (v36 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ErfOp,void>::id)
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

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::ExpOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(*(**v32 + 32));
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
    mlir::ODIE::Compiler::CoreML::ExpOp::build(a1, &v50, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v50);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v50);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id)
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

uint64_t replaceExpm1(uint64_t *a1, mlir::Operation *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 1)
  {
    v4 = *(*(a2 + 9) + 24);
    __src = "expected ranked tensor input to TorchImport.expm1";
    LOWORD(v57[0]) = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, &v45);
    if (v46 == 1)
    {
      v5 = *(a2 - 1);
      v6 = *(a2 + 3);
      __src = "expected shaped type for the output";
      LOWORD(v57[0]) = 259;
      mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v6, &__src, &v43);
      LODWORD(__src) = 1065353216;
      Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &__src, 1);
      v8 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, Tensor, v4);
      if ((v9 & 1) == 0)
      {
        v34 = *(a2 + 3);
        v51 = 257;
        emitDiag(v34, 2, v49, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<53ul>(&v54, "failed to cast constant one to same dtype as input: ");
          if (__src)
          {
            LODWORD(v49[0]) = 4;
            v49[1] = v45;
            v35 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v56, v49, 1);
            v36 = v56 + 24 * v57[0];
            v37 = *v35;
            *(v36 + 16) = *(v35 + 16);
            *v36 = v37;
            ++v57[0];
          }
        }

        v31 = v65 ^ 1;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
        goto LABEL_41;
      }

      v10 = v8;
      __src = v4;
      v54 = v8;
      mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v49);
      if (v52)
      {
        v42 = *(v49[0] + 1);
        v11 = a1[4];
        v12 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::ExpOp>(*(**v11 + 32));
        __src = v11;
        v54 = v12;
        v55 = v57;
        v56 = 0x400000000;
        v58 = v60;
        v59 = 0x400000000;
        v61 = v63;
        v62 = 0x400000000;
        v64 = 4;
        v65 = &v67;
        v66 = 0x100000000;
        v68 = &v70;
        v69 = 0x100000000;
        v71 = 0;
        v72 = 0;
        v73 = &mlir::detail::TypeIDResolver<void,void>::id;
        v74 = 0;
        v75 = 0;
        v13 = v45;
        mlir::ODIE::Compiler::CoreML::ExpOp::build(a1, &__src, v45, v4);
        v14 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v14);
        v15 = *(*(v14 + 6) + 16);
        mlir::OperationState::~OperationState(&__src);
        if (v15 != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ExpOp,void>::id)
        {
          v14 = 0;
        }

        v16 = a1[4];
        v17 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::SubOp>(a1, *(**v16 + 32));
        __src = v16;
        v54 = v17;
        v55 = v57;
        v56 = 0x400000000;
        v58 = v60;
        v59 = 0x400000000;
        v61 = v63;
        v62 = 0x400000000;
        v64 = 4;
        v65 = &v67;
        v66 = 0x100000000;
        v68 = &v70;
        v69 = 0x100000000;
        v71 = 0;
        v72 = 0;
        v73 = &mlir::detail::TypeIDResolver<void,void>::id;
        v74 = 0;
        v75 = 0;
        mlir::ODIE::Compiler::CoreML::SubOp::build(a1, &__src, v13, (v14 - 16), v42);
        v18 = mlir::Operation::create(&__src);
        mlir::OpBuilder::insert(a1, v18);
        v19 = *(*(v18 + 6) + 16);
        v20 = v18 - 16;
        mlir::OperationState::~OperationState(&__src);
        if (v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
        {
          v21 = v20;
        }

        else
        {
          v21 = -16;
        }

        v23 = v43;
        v22 = v44;
        v24 = (*(v44 + 8))(v44, v43);
        v25 = mlir::ODIE::Compiler::castValueToElementType(a1, v21, v24);
        if (v26)
        {
          __src = v25;
          v27 = *(a2 + 9);
          if (v27)
          {
            v28 = (a2 - 16);
          }

          else
          {
            v28 = 0;
          }

          mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v28, v27, &__src, 1);
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
          goto LABEL_38;
        }

        v39 = *(a2 + 3);
        v48 = 257;
        emitDiag(v39, 2, v47, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<16ul>(&v54, "failed to cast ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v54, v21);
            if (__src)
            {
              mlir::Diagnostic::operator<<<22ul>(&v54, " to dtype of result: ");
            }
          }
        }

        v47[0] = (*(v22 + 8))(v22, v23);
        if (__src)
        {
          mlir::Diagnostic::operator<<<mlir::Type>(&v54, v47);
        }
      }

      else
      {
        v38 = *(a2 + 3);
        v48 = 257;
        emitDiag(v38, 2, v47, &__src);
        if (__src)
        {
          mlir::Diagnostic::operator<<<21ul>(&v54, "failed to broadcast ");
          if (__src)
          {
            mlir::Diagnostic::operator<<(&v54, v4);
            if (__src)
            {
              mlir::Diagnostic::operator<<<6ul>(&v54, " and ");
              if (__src)
              {
                mlir::Diagnostic::operator<<(&v54, v10);
              }
            }
          }
        }
      }

      v31 = v65 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_38:
      if (v52 == 1 && v49[0] != &v50)
      {
        free(v49[0]);
      }

LABEL_41:
      v33 = v31 & 1;
      goto LABEL_42;
    }

    v33 = 0;
  }

  else
  {
    v32 = *(a2 + 3);
    v51 = 257;
    emitDiag(v32, 2, v49, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<45ul>(&v54, "expect a single operand to TorchImport.expm1");
    }

    v33 = (v65 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
  }

LABEL_42:
  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

BOOL replaceExpand(uint64_t *a1, uint64_t *a2)
{
  v55[8] = *MEMORY[0x277D85DE8];
  v4 = a2[3];
  v5 = *(a2[9] + 24);
  *&v45 = "expected ranked tensor input to expand";
  v47 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v45, v38);
  if (v38[16] == 1)
  {
    v6 = *(a2[9] + 56);
    if ((~*(v6 + 8) & 7) == 0)
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = *(v6 + 8) & 7;
      if (v7 == 6)
      {
        v8 = v6 + 24 * *(v6 + 16) + 120;
      }

      else
      {
        v8 = v6 + 16 * v7 + 16;
      }
    }

    else
    {
      v8 = 0;
    }

    getTupleAsValues(&v41, v8, v4);
    if (v44)
    {
      if (v42)
      {
        for (i = 0; i < v42; ++i)
        {
          v11 = *(v41 + i);
          v45 = 0uLL;
          v36[0] = &v45;
          if ((~*(v11 + 8) & 7) != 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
            v13 = *(v12 + 8) & 7;
            if (v13 != 6)
            {
              v15 = v12 + 16 * v13 + 16;
LABEL_21:
              if (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v36, v15))
              {
                mlir::ODIE::Compiler::extract1DIntVector<int>(v11, &v45);
                if ((v48 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:nn200100]();
                }

                v16 = *v45;
                if (v45 != v46)
                {
                  free(v45);
                }

                if (v16 == -1)
                {
                  DimensionLengthOfTensor = mlir::ODIE::Compiler::getDimensionLengthOfTensor(a1, v5, i);
                  *(v41 + i) = DimensionLengthOfTensor;
                }
              }

              continue;
            }

            v14 = v12 + 24 * *(v12 + 16);
            v15 = v14 + 120;
            if (v14 != -120)
            {
              goto LABEL_21;
            }
          }
        }
      }

      LODWORD(v45) = 0;
      Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v45, 1, 0);
      v40 = v42;
      v18 = mlir::IntegerType::get(*a1, 32, 1);
      *&v45 = &v40;
      *(&v45 + 1) = 1;
      v36[0] = v18;
      v39 = 0;
      *&v45 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v18 + 32), &v45, v36, &v39);
      v19 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConcatOp,mlir::RankedTensorType,mlir::Value &,llvm::SmallVector<mlir::Value,6u> &>(a1, v4, &v45, &Tensor, &v41);
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
      v23 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::BroadcastToOp>(a1, *(**v22 + 32));
      *&v45 = v22;
      *(&v45 + 1) = v23;
      v46[0] = &v47;
      v46[1] = 0x400000000;
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
      mlir::ODIE::Compiler::CoreML::BroadcastToOp::build(a1, &v45, v21 & 0xFFFFFFFFFFFFFFF8, v5, (v19 - 16));
      v24 = mlir::Operation::create(&v45);
      mlir::OpBuilder::insert(a1, v24);
      v25 = *(*(v24 + 6) + 16);
      mlir::OperationState::~OperationState(&v45);
      if (v25 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BroadcastToOp,void>::id)
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

      v36[0] = v28;
      v36[1] = v27;
      v29 = *(v26 + 9);
      v30 = v26 - 16;
      if (!v29)
      {
        v30 = 0;
      }

      *&v45 = v30;
      *(&v45 + 1) = v29;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v36, &v45);
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
      v9 = 1;
    }

    else
    {
      v36[0] = "Failed to fetch tuple inputs.";
      v37 = 259;
      emitDiag(v4, 2, v36, &v45);
      v9 = (v52 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v45);
    }

    if (v44 == 1 && v41 != &v43)
    {
      free(v41);
    }
  }

  else
  {
    v9 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t replaceBinaryOp<mlir::ODIE::Compiler::CoreML::ModuloOp,false>(uint64_t *a1, mlir::Operation *a2)
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
        v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ModuloOp,mlir::Value &,mlir::Value &>(a1, a1[4], &v53, &v52);
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
  return replaceFlip(v43);
}

BOOL replaceFlip(uint64_t a1, uint64_t *a2)
{
  v50[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v9 = a2[3];
    v39 = 257;
    emitDiag(v9, 2, v38, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<39ul>(v41, "expect 2 operands for TorchImport.flip");
    }

    goto LABEL_12;
  }

  v4 = *(a2[9] + 24);
  v40 = "expected shaped type for input to TorchImport.flip";
  v42 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v40, &v33);
  v40 = "expected shaped type for output of TorchImport.flip";
  v42 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v40, v32);
  v5 = 0;
  if (v35 != 1 || (v32[16] & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(a2[9] + 56);
  if ((~*(v6 + 8) & 7) == 0)
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 8) & 7;
    if (v7 == 6)
    {
      v8 = v6 + 24 * *(v6 + 16) + 120;
    }

    else
    {
      v8 = v6 + 16 * v7 + 16;
    }
  }

  else
  {
    v8 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v8, a1);
  if ((v13 & 1) == 0)
  {
    v31 = a2[3];
    v39 = 257;
    emitDiag(v31, 2, v38, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<52ul>(v41, "unable to retrieve dimensions as 1d tensor of int32");
    }

LABEL_12:
    v5 = (v47 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_13;
  }

  v14 = TupleAs1DIntTensor;
  if (*(a2 + 9))
  {
    v15 = a2 - 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15[1];
  (*(v34 + 24))(v34, v33);
  v18 = mlir::ODIE::Compiler::wrapAroundDimensions(a1, v14, v17);
  v19 = *(a1 + 32);
  v20 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReverseOp,void>::id, *(**v19 + 32));
  if ((v21 & 1) == 0)
  {
    v39 = 1283;
    v38[2] = "coreml.reverse";
    v38[3] = 14;
    v37 = 259;
    llvm::operator+(v38, &v36, &v40);
    llvm::report_fatal_error(&v40, 1);
  }

  v40 = v19;
  v41[0] = v20;
  v41[1] = &v42;
  v41[2] = 0x400000000;
  v43 = v45;
  v44 = 0x400000000;
  v45[4] = v46;
  v45[5] = 0x400000000;
  v46[8] = 4;
  v47 = v49;
  v48 = 0x100000000;
  v49[1] = v50;
  v49[2] = 0x100000000;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v50[4] = 0;
  v50[6] = 0;
  mlir::ODIE::Compiler::CoreML::ReverseOp::build(a1, &v40, v16 & 0xFFFFFFFFFFFFFFF8, v4, v18);
  v22 = mlir::Operation::create(&v40);
  mlir::OpBuilder::insert(a1, v22);
  v23 = *(*(v22 + 6) + 16);
  mlir::OperationState::~OperationState(&v40);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ReverseOp,void>::id)
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

  v40 = v28;
  v41[0] = v27;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v38, &v40);
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
  v5 = 1;
LABEL_13:
  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL replaceFloor(uint64_t *a1, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 1)
  {
    v16 = a2[3];
    v31 = 257;
    emitDiag(v16, 2, v30, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<40ul>(v33, "expect 1 operands for TorchImport.floor");
    }

    goto LABEL_17;
  }

  v4 = *(a2[9] + 24);
  v29 = v4;
  v32 = "expected shaped type for input to TorchImport.floor";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v32, v27);
  v32 = "expected shaped type for output of TorchImport.floor";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v32, v25);
  v5 = 0;
  if (v28 != 1 || (v26 & 1) == 0)
  {
    goto LABEL_18;
  }

  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<float>(a1, v4, 1.0);
  v24 = v6;
  if ((v6 & 1) == 0)
  {
    v19 = a2[3];
    v31 = 257;
    emitDiag(v19, 2, v30, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<50ul>(v33, "unable to create constant of 1 with same type as ");
      if (v32)
      {
        mlir::Diagnostic::operator<<(v33, v4);
      }
    }

    goto LABEL_17;
  }

  v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v27, &v29, &TensorConstantWithSameTypeAs) - 16;
  v8 = v25[0];
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v25[0]);
  if (v9)
  {
    v8 = (*(v10 + 8))(v10, v9);
  }

  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v7, v8);
  v22 = v11;
  if ((v11 & 1) == 0)
  {
    v20 = a2[3];
    v31 = 257;
    emitDiag(v20, 2, v30, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<16ul>(v33, "unable to cast ");
      if (v32)
      {
        mlir::Diagnostic::operator<<(v33, v7);
        if (v32)
        {
          mlir::Diagnostic::operator<<<19ul>(v33, " to same dtype as ");
          if (v32)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v33, v25);
          }
        }
      }
    }

LABEL_17:
    v5 = (v35 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    goto LABEL_18;
  }

  v12 = *(a2 + 9);
  if (v12)
  {
    v13 = (a2 - 2);
  }

  else
  {
    v13 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v13, v12, &v21, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v15 = *a2;
    v14 = a2[1];
    *v14 = *a2;
    *(v15 + 8) = v14;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v5 = 1;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

BOOL replaceFloorDiv(uint64_t *a1, uint64_t *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2)
  {
    v17 = a2[3];
    v31 = 257;
    emitDiag(v17, 2, v30, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<43ul>(v33, "expect 2 operands for TorchImport.floordiv");
    }

    goto LABEL_17;
  }

  v4 = a2[9];
  v5 = *(v4 + 24);
  v28 = *(v4 + 56);
  v6 = v28;
  v29 = v5;
  v32 = "expected shaped type for input to TorchImport.floordiv";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v5, &v32, v26);
  v32 = "expected shaped type for other to TorchImport.floordiv";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v6, &v32, v25);
  v32 = "expected shaped type for output of TorchImport.floordiv";
  v34 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((a2 - 2), &v32, v23);
  v7 = 0;
  if (v27 != 1 || (v25[16] & 1) == 0 || (v24 & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::FloorDivideOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v26, &v29, &v28) - 16;
  v9 = v23[0];
  v10 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v23[0]);
  if (v10)
  {
    v9 = (*(v11 + 8))(v11, v10);
  }

  v21 = mlir::ODIE::Compiler::castValueToElementType(a1, v8, v9);
  v22 = v12;
  if ((v12 & 1) == 0)
  {
    v20 = a2[3];
    v31 = 257;
    emitDiag(v20, 2, v30, &v32);
    if (v32)
    {
      mlir::Diagnostic::operator<<<16ul>(v33, "unable to cast ");
      if (v32)
      {
        mlir::Diagnostic::operator<<(v33, v8);
        if (v32)
        {
          mlir::Diagnostic::operator<<<19ul>(v33, " to same dtype as ");
          if (v32)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v33, v23);
          }
        }
      }
    }

LABEL_17:
    v7 = (v35 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
    goto LABEL_18;
  }

  v13 = *(a2 + 9);
  if (v13)
  {
    v14 = (a2 - 2);
  }

  else
  {
    v14 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v14, v13, &v21, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v16 = *a2;
    v15 = a2[1];
    *v15 = *a2;
    *(v16 + 8) = v15;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v7 = 1;
LABEL_18:
  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL replaceFull(void **a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v7 = *(a2 + 24);
    v17 = 257;
    emitDiag(v7, 2, v16, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<35ul>(v19, "expects 2 inputs and 1 output for ");
      if (v18)
      {
        mlir::Diagnostic::operator<<(v19, *(a2 + 48));
      }
    }

    goto LABEL_13;
  }

  if (!llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v11 = *(a2 + 24);
    v17 = 257;
    emitDiag(v11, 2, v16, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<36ul>(v19, "expected shaped type for the output");
    }

    goto LABEL_13;
  }

  v4 = *(*(a2 + 72) + 24);
  if ((~*(v4 + 8) & 7) == 0)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = *(v4 + 8) & 7;
    if (v5 == 6)
    {
      v6 = v4 + 24 * *(v4 + 16) + 120;
    }

    else
    {
      v6 = v4 + 16 * v5 + 16;
    }
  }

  else
  {
    v6 = 0;
  }

  TupleAs1DIntTensor = getTupleAs1DIntTensor(v6, a1);
  if ((v13 & 1) == 0)
  {
    v15 = *(a2 + 24);
    v17 = 257;
    emitDiag(v15, 2, v16, &v18);
    if (v18)
    {
      mlir::Diagnostic::operator<<<52ul>(v19, " first operand to TorchImport.full should be tuple.");
    }

LABEL_13:
    v8 = (v19[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    v9 = *MEMORY[0x277D85DE8];
    return v8;
  }

  v14 = *MEMORY[0x277D85DE8];

  return replaceFullImpl(a1, a2, TupleAs1DIntTensor);
}

BOOL replaceFullLike(uint64_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 68) == 2 && *(a2 + 36) == 1)
  {
    *&v20[0] = "expected shaped type for input and output";
    v21 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(a2 - 16, v20, v15);
    v14 = *(*(a2 + 72) + 24);
    *&v20[0] = "expected shaped type for input and output";
    v21 = 259;
    mlir::ODIE::Compiler::getShapedRankedType(v14, v20, &v11);
    v4 = 0;
    if (v15[16] == 1 && (v13 & 1) != 0)
    {
      (*(v12 + 24))(v12, v11);
      v19 = v5;
      v6 = mlir::IntegerType::get(*a1, 32, 1);
      *&v20[0] = &v19;
      *(&v20[0] + 1) = 1;
      v17 = 0;
      v18 = v6;
      *&v20[0] = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v6 + 32), v20, &v18, &v17);
      v7 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GetShapeOp,mlir::RankedTensorType,mlir::Value &>(a1, a1[4], v20, &v14);
      v4 = replaceFullImpl(a1, a2, (v7 - 16));
    }
  }

  else
  {
    v8 = *(a2 + 24);
    v16 = 257;
    emitDiag(v8, 2, v15, v20);
    if (*&v20[0])
    {
      mlir::Diagnostic::operator<<<35ul>(v20 + 8, "expects 2 inputs and 1 output for ");
      if (*&v20[0])
      {
        mlir::Diagnostic::operator<<(v20 + 8, *(a2 + 48));
      }
    }

    v4 = (v22 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v20);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

BOOL replaceGetitem(uint64_t a1, uint64_t *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v5 = a2[3];
    v27[0] = "expects 2 inputs and 1 output for getitem op.";
    v28[8] = 259;
    emitDiag(v5, 2, v27, &v29);
    v6 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
    goto LABEL_10;
  }

  v3 = *(a2[9] + 24);
  v27[0] = v28;
  v27[1] = 0x600000000;
  if ((~*(v3 + 8) & 7) == 0)
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = *(v3 + 8) & 7;
    if (v4 == 6)
    {
      v3 += 24 * *(v3 + 16) + 120;
    }

    else
    {
      v3 += 16 * v4 + 16;
    }
  }

  if ((disaggregateTupleInputs(v3, *(a1 + 32), v27) & 1) == 0)
  {
    v6 = 0;
    goto LABEL_40;
  }

  v9 = *(a2[9] + 56);
  if ((~*(v9 + 8) & 7) == 0)
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_38;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if ((*(**(v12 + 48) + 32))(*(v12 + 48), v13))
  {
    if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    v29 = v14;
    ValueAttr = mlir::arith::ConstantOp::getValueAttr(&v29);
    v16 = *(*ValueAttr + 136);
    if (v16 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id || v16 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id)
    {
      v18 = ValueAttr;
    }

    else
    {
      v18 = 0;
    }

    v24 = v18;
    if (v18)
    {
      mlir::DenseElementsAttr::tryGetValues<int,void>(&v24, &v29);
      if (v30)
      {
        v19 = 0;
      }

      else
      {
        v19 = v31;
      }

      v29 = *(v27[0] + *(v29 + v19));
      mlir::IRObjectWithUseList<mlir::OpOperand>::replaceAllUsesWith<mlir::Value &>(a2 - 2, &v29);
      if (a2[2])
      {
        a2[2] = 0;
        v21 = *a2;
        v20 = a2[1];
        *v20 = *a2;
        *(v21 + 8) = v20;
        *a2 = 0;
        a2[1] = 0;
      }

      mlir::Operation::destroy(a2);
      v6 = 1;
      goto LABEL_40;
    }

    v22 = a2[3];
    v23 = "Expected a DenseElementsAttr for the index in getitem op.";
    goto LABEL_39;
  }

LABEL_38:
  v22 = a2[3];
  v23 = "The index must be provided for getitem op.";
LABEL_39:
  v25 = v23;
  v26 = 259;
  emitDiag(v22, 2, &v25, &v29);
  v6 = (v32 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
LABEL_40:
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

LABEL_10:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL replaceBinaryGreaterOrEqual(uint64_t *a1, mlir::Operation *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 3);
  GreaterOrEqualOps = *(a2 + 6);
  v5 = mlir::OperationName::stripDialect(&GreaterOrEqualOps);
  v7 = v5;
  v8 = v6;
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 2 && *(a2 + 9) == 1)
  {
    v9 = *(a2 + 9);
    v10 = *(v9 + 24);
    v11 = *(v9 + 56);
    v31 = 1283;
    GreaterOrEqualOps = "expected ranked tensor inputs to ";
    v29 = v5;
    v30 = v6;
    mlir::ODIE::Compiler::getShapedRankedType(v10, &GreaterOrEqualOps, v23);
    v31 = 1283;
    GreaterOrEqualOps = "expected ranked tensor inputs to ";
    v29 = v7;
    v30 = v8;
    mlir::ODIE::Compiler::getShapedRankedType(v11, &GreaterOrEqualOps, v22);
    v12 = 0;
    if (v24 == 1 && (v22[16] & 1) != 0)
    {
      v13 = *(a2 - 1);
      v31 = 1283;
      GreaterOrEqualOps = "expected ranked output from ";
      v29 = v7;
      v30 = v8;
      mlir::ODIE::Compiler::getShapedRankedType((v13 & 0xFFFFFFFFFFFFFFF8), v4, &GreaterOrEqualOps, v21);
      if (v21[16] == 1 && (GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v10, v11), v28 = v14, (v14 & 1) != 0))
      {
        v15 = *(a2 + 9);
        if (v15)
        {
          v16 = (a2 - 16);
        }

        else
        {
          v16 = 0;
        }

        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &GreaterOrEqualOps, 1);
        if (*(a2 + 2))
        {
          *(a2 + 2) = 0;
          v18 = *a2;
          v17 = *(a2 + 1);
          *v17 = *a2;
          *(v18 + 8) = v17;
          *a2 = 0;
          *(a2 + 1) = 0;
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
    v26 = 1283;
    v23[0] = "expects 2 inputs and 1 output for ";
    v24 = v5;
    v25 = v6;
    emitDiag(v4, 2, v23, &GreaterOrEqualOps);
    v12 = (v32 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&GreaterOrEqualOps);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t replaceGelu(mlir::OpBuilder *a1, uint64_t a2)
{
  v48[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 1 || *(a2 + 36) != 1)
  {
    v24 = *(a2 + 24);
    v37 = 257;
    emitDiag(v24, 2, &v33, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<34ul>(v41, "expects 1 input and 1 output for ");
      if (v40)
      {
        mlir::Diagnostic::operator<<(v41, *(a2 + 48));
      }
    }

    goto LABEL_24;
  }

  if (!llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 - 8) & 0xFFFFFFFFFFFFFFF8)))
  {
    v27 = *(a2 + 24);
    v37 = 257;
    emitDiag(v27, 2, &v33, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<40ul>(v41, "expected shaped type for the output of ");
      if (v40)
      {
        mlir::OpPrintingFlags::OpPrintingFlags(&v33);
        mlir::Diagnostic::appendOp(v41, a2, &v33);
      }
    }

    goto LABEL_24;
  }

  Attr = mlir::Operation::getAttr(a2, "approximate", 0xBuLL);
  if (Attr && (v5 = Attr, *(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id))
  {
    v29 = mlir::ODIE::Compiler::CoreML::symbolizeApproximate(*(Attr + 16), *(Attr + 24));
    if ((v29 & 0x100000000) == 0)
    {
      v30 = *(a2 + 24);
      v37 = 257;
      emitDiag(v30, 2, &v33, &v40);
      if (v40)
      {
        mlir::Diagnostic::operator<<<27ul>(v41, "Unknown approximate kind: ");
        if (v40)
        {
          v31 = *(v5 + 16);
          v32 = *(v5 + 24);
          v37 = 261;
          v33 = v31;
          v34 = v32;
          mlir::Diagnostic::operator<<(v41, &v33);
        }
      }

      goto LABEL_24;
    }

    v6 = v29;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(*(a2 + 72) + 24);
  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  if (!v8)
  {
    v28 = *(a2 + 24);
    v37 = 257;
    emitDiag(v28, 2, &v33, &v40);
    if (v40)
    {
      mlir::Diagnostic::operator<<<35ul>(v41, "expected shaped type for the input");
    }

LABEL_24:
    v23 = v45 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v40);
    goto LABEL_25;
  }

  v9 = v8;
  v10 = mlir::ODIE::Compiler::CoreML::ApproximateAttr::get(*(***(a2 + 24) + 32), v6);
  v11 = *(a1 + 4);
  v12 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id, *(**v11 + 32));
  if ((v13 & 1) == 0)
  {
    v37 = 1283;
    v35 = "coreml.gelu";
    v36 = 11;
    v39 = 259;
    llvm::operator+(&v33, &v38, &v40);
    llvm::report_fatal_error(&v40, 1);
  }

  v40 = v11;
  v41[0] = v12;
  v41[1] = v42;
  v41[2] = 0x400000000;
  v42[4] = v43;
  v42[5] = 0x400000000;
  v43[4] = v44;
  v43[5] = 0x400000000;
  v44[8] = 4;
  v45 = v47;
  v46 = 0x100000000;
  v47[1] = v48;
  v47[2] = 0x100000000;
  v48[1] = 0;
  v48[2] = 0;
  v48[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v48[4] = 0;
  v48[6] = 0;
  mlir::ODIE::Compiler::CoreML::GELUOp::build(a1, &v40, v9, v7, v10);
  v14 = mlir::Operation::create(&v40);
  mlir::OpBuilder::insert(a1, v14);
  v15 = *(*(v14 + 6) + 16);
  mlir::OperationState::~OperationState(&v40);
  if (v15 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GELUOp,void>::id)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 36);
  if (v17)
  {
    v18 = (a2 - 16);
  }

  else
  {
    v18 = 0;
  }

  v33 = v18;
  v34 = v17;
  v19 = *(v16 + 9);
  v20 = (v16 - 16);
  if (!v19)
  {
    v20 = 0;
  }

  v40 = v20;
  v41[0] = v19;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v33, &v40);
  if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
    v22 = *a2;
    v21 = *(a2 + 8);
    *v21 = *a2;
    *(v22 + 8) = v21;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  mlir::Operation::destroy(a2);
  v23 = 1;
LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return v23 & 1;
}

BOOL replaceBinaryComparisonOp<mlir::ODIE::Compiler::CoreML::GreaterOp>(uint64_t *a1, uint64_t *a2)
{
  v64[8] = *MEMORY[0x277D85DE8];
  __src = a2[6];
  v4 = mlir::OperationName::stripDialect(&__src);
  v6 = v4;
  v7 = v5;
  v8 = a2[3];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 17) != 2 || *(a2 + 9) != 1)
  {
    v50 = 1283;
    v48[0] = "expects 2 inputs and 1 output for ";
    v49[0] = v4;
    v49[1] = v5;
    emitDiag(v8, 2, v48, &__src);
    v22 = (v61 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_39;
  }

  v9 = a2[9];
  v10 = *(v9 + 24);
  v11 = *(v9 + 56);
  v12 = *(a2 - 1);
  v56 = 1283;
  __src = "expected ranked output from ";
  v54 = v4;
  v55 = v5;
  mlir::ODIE::Compiler::getShapedRankedType((v12 & 0xFFFFFFFFFFFFFFF8), v8, &__src, &v38);
  if (v39 != 1)
  {
    goto LABEL_38;
  }

  v56 = 1283;
  __src = "expected ranked tensor inputs to ";
  v54 = v6;
  v55 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v10, &__src, &v43);
  v56 = 1283;
  __src = "expected ranked tensor inputs to ";
  v54 = v6;
  v55 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v11, &__src, &v40);
  if (v45 != 1 || (v42 & 1) == 0)
  {
    goto LABEL_38;
  }

  v13 = (*(v41 + 8))(v41, v40);
  v15 = v43;
  v14 = v44;
  if (v13 != (*(v44 + 8))(v44, v43))
  {
    v16 = (*(v14 + 8))(v14, v15);
    v17 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v16);
    if ((v18 & 1) == 0)
    {
      v50 = 257;
      emitDiag(v8, 2, v48, &__src);
      if (__src)
      {
        mlir::Diagnostic::operator<<<47ul>(&v53, " Unable to cast RHS to same type as LHS of op ");
        if (__src)
        {
          v50 = 261;
          v48[0] = v6;
          v48[1] = v7;
          mlir::Diagnostic::operator<<(&v53, v48);
        }
      }

      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
      goto LABEL_38;
    }

    v11 = v17;
  }

  __src = v10;
  v53 = v11;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v48);
  if (v51)
  {
    v19 = *v48[0];
    v20 = *(v48[0] + 1);
    if (v7 == 2 && (*v6 == 25964 || *v6 == 29804))
    {
      v21 = *v48[0];
    }

    else
    {
      v21 = *(v48[0] + 1);
      v20 = *v48[0];
    }

    v26 = a1[4];
    v27 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GreaterOp>(a1, *(**v26 + 32));
    __src = v26;
    v53 = v27;
    v54 = &v56;
    v55 = 0x400000000;
    v57 = v59;
    v58 = 0x400000000;
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
    mlir::ODIE::Compiler::CoreML::GreaterOp::build(a1, &__src, v38, v20, v21);
    v28 = mlir::Operation::create(&__src);
    mlir::OpBuilder::insert(a1, v28);
    v29 = *(*(v28 + 6) + 16);
    v30 = v28 - 16;
    mlir::OperationState::~OperationState(&__src);
    v31 = -16;
    if (v29 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GreaterOp,void>::id)
    {
      v31 = v30;
    }

    v25 = v31 & 0xFFFFFFFFFFFFFF00;
    v23 = v31;
    v24 = 1;
  }

  else
  {
    v47 = 257;
    emitDiag(v8, 2, v46, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<40ul>(&v53, " Unable to broadcast LHS and RHS of op ");
      if (__src)
      {
        v47 = 261;
        v46[0] = v6;
        v46[1] = v7;
        mlir::Diagnostic::operator<<(&v53, v46);
      }
    }

    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  if (v51 == 1 && v48[0] != v49)
  {
    free(v48[0]);
  }

  __src = (v25 | v23);
  LOBYTE(v53) = v24;
  if (!v24)
  {
LABEL_38:
    v22 = 0;
    goto LABEL_39;
  }

  v32 = *(a2 + 9);
  if (v32)
  {
    v33 = (a2 - 2);
  }

  else
  {
    v33 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v33, v32, &__src, 1);
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
  v22 = 1;
LABEL_39:
  v36 = *MEMORY[0x277D85DE8];
  return v22;
}

BOOL replaceHardTanh(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v38 = v4;
  __src = "expected ranked tensor input to sym_size.int";
  v50 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &__src, v44);
  if ((v45 & 1) == 0)
  {
    v11 = *(a2 + 24);
    v46 = 257;
    emitDiag(v11, 2, v44, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<50ul>(v49, "expected input operand be a shaped ranked tensor.");
    }

    goto LABEL_37;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 72);
  v7 = *(v6 + 56);
  if ((~*(v7 + 8) & 7) != 0)
  {
    v8 = *(v6 + 56);
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = *(v8 + 8) & 7;
    if (v9 == 6)
    {
      v10 = v8 + 24 * *(v8 + 16) + 120;
    }

    else
    {
      v10 = v8 + 16 * v9 + 16;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *(v6 + 88);
  v13 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID();
  if (!(*(**(v10 + 48) + 32))(*(v10 + 48), v13) || ((~*(v12 + 8) & 7) != 0 ? (v14 = v12) : (v14 = 0), !v14 ? (v16 = 0) : (v15 = *(v14 + 8) & 7, v15 != 6) ? (v16 = v14 + 16 * v15 + 16) : (v16 = v14 + 24 * *(v14 + 16) + 120), v17 = mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(), ((*(**(v16 + 48) + 32))(*(v16 + 48), v17) & 1) == 0))
  {
    v46 = 257;
    emitDiag(v5, 2, v44, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<46ul>(v49, "expecting min/max to hardtanh to be constants");
    }

LABEL_37:
    v29 = (v51 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_38;
  }

  __src = v7;
  v49[0] = v4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, v44);
  __src = v12;
  v49[0] = v4;
  mlir::ODIE::Compiler::getBroadcastedValues(&__src, 2uLL, a1, &v41);
  if (v47 == 1 && (v43 & 1) != 0)
  {
    v18 = *v41;
    v19 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, *v44[0], v4);
    v21 = v20;
    v36 = v19;
    v37 = v20;
    v34 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v18, v4);
    v35 = v22;
    if (v21 & 1) != 0 && (v22)
    {
      if (*(a2 + 36))
      {
        v23 = a2 - 16;
      }

      else
      {
        v23 = 0;
      }

      v33 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
      v32 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MaximumOp,mlir::Type &,mlir::Value &,mlir::Value &>(a1, a1[4], &v33, &v38, &v36);
      v24 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MinimumOp,mlir::Type &,mlir::ODIE::Compiler::CoreML::MaximumOp &,mlir::Value &>(a1, a1[4], &v33, &v32, &v34);
      v25 = *(a2 + 36);
      if (v25)
      {
        v26 = (a2 - 16);
      }

      else
      {
        v26 = 0;
      }

      v39[0] = v26;
      v39[1] = v25;
      v27 = *(v24 + 9);
      v28 = (v24 - 16);
      if (!v27)
      {
        v28 = 0;
      }

      __src = v28;
      v49[0] = v27;
      mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v39, &__src);
      mlir::Operation::erase(a2);
      v29 = 1;
      goto LABEL_42;
    }

    v40 = 257;
    emitDiag(v5, 2, v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<52ul>(v49, "failed to cast min/max value to same dtype as input");
    }
  }

  else
  {
    v40 = 257;
    emitDiag(v5, 2, v39, &__src);
    if (__src)
    {
      mlir::Diagnostic::operator<<<37ul>(v49, "Failed to fetch min/max for hardTanh");
    }
  }

  v29 = (v51 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_42:
  if (v43 == 1 && v41 != &v42)
  {
    free(v41);
  }

  if (v47 == 1 && v44[0] != &v45)
  {
    free(v44[0]);
  }

LABEL_38:
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

BOOL replaceHardSigmoid(uint64_t *a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 72) + 24);
  v5 = *(a2 + 24);
  v6 = *(*(a2 + 48) + 8);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  v84 = 1283;
  v80 = "expected ranked tensor inputs to ";
  v82 = v8;
  v83 = v7;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v80, &v75);
  if ((v77 & 1) == 0)
  {
    v51 = *(a2 + 24);
    v79 = 257;
    emitDiag(v51, 2, v78, &v80);
    if (v80)
    {
      mlir::Diagnostic::operator<<<50ul>(&v81, "expected input operand be a shaped ranked tensor.");
    }

    goto LABEL_59;
  }

  v9 = *(*(a2 + 48) + 8);
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v84 = 1283;
  v80 = "expected ranked tensor outputs for ";
  v82 = v11;
  v83 = v10;
  mlir::ODIE::Compiler::getShapedRankedType(a2 - 16, &v80, v74);
  v12 = mlir::IntegerType::get(*a1, 1, 0);
  v13 = *v76;
  LOBYTE(v80) = 0;
  LOBYTE(v82) = 0;
  v73[0] = v13(v76, v75, &v80, v12);
  v73[1] = v14;
  LODWORD(v80) = 0;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v80, 1, 0);
  LODWORD(v80) = 1;
  v57 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v80, 1, 0);
  LODWORD(v80) = -3;
  v15 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v80, 1, 0);
  LODWORD(v80) = 3;
  v16 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v80, 1, 0);
  LODWORD(v80) = 6;
  v17 = mlir::ODIE::Compiler::createTensorConstant<int>(a1, &v80, 1, 0);
  LODWORD(v80) = 1056964608;
  v18 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v80, 1);
  GreaterOrEqualOps = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v15, v4);
  v71 = GreaterOrEqualOps;
  v72 = v20;
  if ((v20 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (v80)
    {
      mlir::Diagnostic::operator<<<44ul>(&v81, "failed to create lower bound check op with ");
      if (v80)
      {
        mlir::Diagnostic::operator<<(&v81, v15);
        if (v80)
        {
          mlir::Diagnostic::operator<<<6ul>(&v81, " and ");
          if (v80)
          {
            mlir::Diagnostic::operator<<(&v81, v4);
          }
        }
      }
    }

    goto LABEL_59;
  }

  v21 = GreaterOrEqualOps;
  v22 = mlir::ODIE::Compiler::getGreaterOrEqualOps(a1, v4, v16);
  v69 = v22;
  v70 = v23;
  if ((v23 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<42ul>(&v81, "failed to create ops for comparing input(");
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v81, v4);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<19ul>(&v81, ") to upper bound (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v52 = v16;
    goto LABEL_30;
  }

  v24 = v22;
  v25 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::OrOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v73, &v71, &v69);
  v26 = mlir::ODIE::Compiler::negateValue(a1, (v25 - 16));
  if ((v27 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (v80)
    {
      mlir::Diagnostic::operator<<<27ul>(&v81, "failed to create negate op");
    }

    goto LABEL_59;
  }

  v28 = v26;
  DivideWithScalar = mlir::ODIE::Compiler::getDivideWithScalar(a1, v4, v17);
  if ((v30 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<42ul>(&v81, "failed to create ops for dividing input (");
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v81, v4);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<13ul>(&v81, ") by scale (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v52 = v17;
    goto LABEL_30;
  }

  v31 = DivideWithScalar;
  AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, DivideWithScalar, v18);
  v66 = v32;
  if ((v32 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<41ul>(&v81, "failed to create ops for adding offset (");
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v81, v18);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<13ul>(&v81, ") to input (");
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<(&v81, v31);
    if (!v80)
    {
      goto LABEL_59;
    }

    goto LABEL_31;
  }

  v33 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v21, v4);
  if ((v34 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v81, "Failed to cast op (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v53 = v33;
LABEL_54:
    mlir::Diagnostic::operator<<(&v81, v53);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<15ul>(&v81, ") to type of (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v52 = v4;
LABEL_30:
    mlir::Diagnostic::operator<<(&v81, v52);
    if (!v80)
    {
LABEL_59:
      v50 = (v85 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v80);
      goto LABEL_60;
    }

LABEL_31:
    mlir::Diagnostic::operator<<<2ul>(&v81, ")");
    goto LABEL_59;
  }

  v35 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v24, v4);
  if ((v36 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v81, "Failed to cast op (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v53 = v35;
    goto LABEL_54;
  }

  v37 = mlir::ODIE::Compiler::castValueToElementTypeOfOther(a1, v28, v4);
  v67 = v37;
  v68 = v38;
  if ((v38 & 1) == 0)
  {
    v54 = v37;
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (!v80)
    {
      goto LABEL_59;
    }

    mlir::Diagnostic::operator<<<20ul>(&v81, "Failed to cast op (");
    if (!v80)
    {
      goto LABEL_59;
    }

    v53 = v54;
    goto LABEL_54;
  }

  MultiplyWithScalar = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v33, Tensor);
  v41 = v40;
  v63 = MultiplyWithScalar;
  v64 = v40;
  v42 = mlir::ODIE::Compiler::getMultiplyWithScalar(a1, v35, v57);
  v44 = v43;
  v61 = v42;
  v62 = v43;
  v60 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::MulOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v74, &v67, &AddWithScalar);
  if ((v41 & 1) == 0 || (v44 & 1) == 0)
  {
    v79 = 257;
    emitDiag(v5, 2, v78, &v80);
    if (v80)
    {
      mlir::Diagnostic::operator<<<40ul>(&v81, "Failed to multiple conditions with vals");
    }

    goto LABEL_59;
  }

  v59 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::Value &,mlir::Value &>(a1, a1[4], v74, &v63, &v61);
  v45 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::AddOp&,mlir::ODIE::Compiler::CoreML::MulOp &>(a1, a1[4], v74, &v59, &v60);
  v46 = *(a2 + 36);
  if (v46)
  {
    v47 = (a2 - 16);
  }

  else
  {
    v47 = 0;
  }

  v78[0] = v47;
  v78[1] = v46;
  v48 = *(v45 + 9);
  v49 = (v45 - 16);
  if (!v48)
  {
    v49 = 0;
  }

  v80 = v49;
  v81 = v48;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v78, &v80);
  mlir::Operation::erase(a2);
  v50 = 1;
LABEL_60:
  v55 = *MEMORY[0x277D85DE8];
  return v50;
}

BOOL replaceIndex(uint64_t *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 2 || *(a2 + 36) != 1)
  {
    v12 = *(a2 + 24);
    v28[0] = "expects 2 inputs and 1 output for index op";
    v29 = 259;
    emitDiag(v12, 2, v28, &v30);
LABEL_13:
    v13 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
    goto LABEL_14;
  }

  v4 = *(a2 - 8);
  v5 = *(a2 + 24);
  v30 = "expect output of index_put to be ranked tensor type";
  v32 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v30, v26);
  if (v27 != 1 || (v6 = *(a2 + 72), v7 = *(v6 + 24), v8 = *(v6 + 56), v30 = "expect ranked tensor type for input tensor of index op", v32 = 259, mlir::ODIE::Compiler::getShapedRankedType(v7, &v30, v25), v25[16] != 1))
  {
    v13 = 0;
    goto LABEL_14;
  }

  if ((~*(v8 + 8) & 7) != 0)
  {
    v9 = v8;
  }

  else
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

  getStackedIndexInfo(v23, a1, v7, v11);
  if ((v24 & 1) == 0)
  {
    v19 = *(a2 + 24);
    v29 = 257;
    emitDiag(v19, 2, v28, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<45ul>(v31, "failed to canonicalize & stack index tensors");
    }

    goto LABEL_13;
  }

  v21 = mlir::ODIE::Compiler::buildGatherNdFromStackedIndices(a1, v23, v26);
  v22 = v16;
  if ((v16 & 1) == 0)
  {
    v20 = *(a2 + 24);
    v29 = 257;
    emitDiag(v20, 2, v28, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<27ul>(v31, "failed to create gather_nd");
    }

    goto LABEL_13;
  }

  v17 = *(a2 + 36);
  if (v17)
  {
    v18 = (a2 - 16);
  }

  else
  {
    v18 = 0;
  }

  v13 = 1;
  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v18, v17, &v21, 1);
  mlir::Operation::erase(a2);
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

BOOL replaceIndexPut(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 3 || *(a2 + 36) != 1)
  {
    v24 = *(a2 + 24);
    v45[0] = "expect 3 inputs and 1 output for index_put op";
    v46 = 259;
    emitDiag(v24, 2, v45, &v47);
    goto LABEL_24;
  }

  v4 = *(a2 - 8);
  v5 = *(a2 + 24);
  v47 = "expect output of index_put to be ranked tensor type";
  v49 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v4 & 0xFFFFFFFFFFFFFFF8), v5, &v47, v44);
  if (v44[16] != 1)
  {
    v10 = 0;
    goto LABEL_25;
  }

  v6 = *(a2 + 72);
  v7 = v6[3];
  v8 = v6[7];
  v43 = v6[11];
  v9 = v43;
  v47 = "expect ranked tensor type for input & updates tensors of index_put op";
  v49 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v47, &v40);
  v47 = "expect ranked tensor type for input & updates tensors of index_put op";
  v49 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v9, &v47, &v37);
  v10 = 0;
  if (v42 == 1 && (v39 & 1) != 0)
  {
    v12 = v40;
    v11 = v41;
    if (!(*(v41 + 16))(v41, v40))
    {
      goto LABEL_27;
    }

    v13 = (*(v11 + 24))(v11, v12);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_27;
    }

LABEL_12:
    v17 = v37;
    v16 = v38;
    if (!(*(v38 + 16))(v38, v37))
    {
LABEL_27:
      v27 = *(a2 + 24);
      v46 = 257;
      emitDiag(v27, 2, v45, &v47);
      if (v47)
      {
        mlir::Diagnostic::operator<<<60ul>(v48, "currently only supports static shapes for input and updates");
      }

      goto LABEL_24;
    }

    v18 = (*(v16 + 24))(v16, v17);
    if (v19)
    {
      v20 = 8 * v19;
      while (*v18 != 0x8000000000000000)
      {
        ++v18;
        v20 -= 8;
        if (!v20)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_27;
    }

LABEL_17:
    if ((~*(v8 + 8) & 7) != 0)
    {
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      v22 = *(v21 + 8) & 7;
      if (v22 == 6)
      {
        v23 = v21 + 24 * *(v21 + 16) + 120;
      }

      else
      {
        v23 = v21 + 16 * v22 + 16;
      }
    }

    else
    {
      v23 = 0;
    }

    getStackedIndexInfo(v35, a1, v7, v23);
    if (v36)
    {
      v33 = mlir::ODIE::Compiler::buildScatterNdFromStackedIndices(a1, v35, &v43);
      v34 = v28;
      if (v28)
      {
        v29 = *(a2 + 36);
        if (v29)
        {
          v30 = (a2 - 16);
        }

        else
        {
          v30 = 0;
        }

        v10 = 1;
        mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v30, v29, &v33, 1);
        mlir::Operation::erase(a2);
        goto LABEL_25;
      }

      v32 = *(a2 + 24);
      v46 = 257;
      emitDiag(v32, 2, v45, &v47);
      if (v47)
      {
        mlir::Diagnostic::operator<<<31ul>(v48, "failed to create scatter_nd op");
      }
    }

    else
    {
      v31 = *(a2 + 24);
      v46 = 257;
      emitDiag(v31, 2, v45, &v47);
      if (v47)
      {
        mlir::Diagnostic::operator<<<45ul>(v48, "failed to canonicalize & stack index tensors");
      }
    }

LABEL_24:
    v10 = (v50 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v47);
  }

LABEL_25:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

BOOL replaceGather(mlir::OpBuilder *a1, mlir::Operation *a2)
{
  v39[8] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0 && *(a2 + 17) == 3 && *(a2 + 9) == 1)
  {
    v4 = *(a2 + 9);
    v5 = v4[3];
    v6 = v4[11];
    v7 = v4[7];
    v8 = *(a1 + 4);
    v9 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp>(*(**v8 + 32));
    v29 = v8;
    v30 = v9;
    v31 = v33;
    v32 = 0x400000000;
    v33[4] = v34;
    v33[5] = 0x400000000;
    v34[4] = v35;
    v34[5] = 0x400000000;
    v35[8] = 4;
    v36 = v38;
    v37 = 0x100000000;
    v38[1] = v39;
    v38[2] = 0x100000000;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = &mlir::detail::TypeIDResolver<void,void>::id;
    v39[4] = 0;
    v39[6] = 0;
    v23 = a2 - 16;
    v24 = 0;
    v25 = (a2 - 16);
    v26 = 1;
    mlir::TypeRange::TypeRange<mlir::ResultRange>(v28, &v23);
    mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::build(a1, &v29, v28[0], v28[1], v5, v6, v7);
    v10 = mlir::Operation::create(&v29);
    mlir::OpBuilder::insert(a1, v10);
    v11 = *(*(v10 + 6) + 16);
    mlir::OperationState::~OperationState(&v29);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,void>::id)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a2 + 9);
    if (v13)
    {
      v14 = (a2 - 16);
    }

    else
    {
      v14 = 0;
    }

    v23 = v14;
    v24 = v13;
    v15 = *(v12 + 9);
    v16 = (v12 - 16);
    if (!v15)
    {
      v16 = 0;
    }

    v29 = v16;
    v30 = v15;
    mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v23, &v29);
    if (*(a2 + 2))
    {
      *(a2 + 2) = 0;
      v18 = *a2;
      v17 = *(a2 + 1);
      *v17 = *a2;
      *(v18 + 8) = v17;
      *a2 = 0;
      *(a2 + 1) = 0;
    }

    mlir::Operation::destroy(a2);
    v19 = 1;
  }

  else
  {
    v20 = *(a2 + 3);
    v23 = "expects 3 inputs and 1 output for gather op";
    v27 = 259;
    emitDiag(v20, 2, &v23, &v29);
    v19 = (v36 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t replaceIndexSelect(uint64_t *a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) != 3 || *(a2 + 36) != 1)
  {
    v37 = *(a2 + 24);
    v72[0] = "expects 3 inputs and 1 output for index_select op";
    v73[8] = 259;
    emitDiag(v37, 2, v72, &v75);
    v38 = (v79 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
LABEL_35:
    v39 = *MEMORY[0x277D85DE8];
    return v38;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 - 8);
  v75 = "expect output of index_select to be ranked tensor type";
  v78 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v5 & 0xFFFFFFFFFFFFFFF8), v4, &v75, v58);
  if (v59 != 1)
  {
    goto LABEL_34;
  }

  v6 = *(a2 + 72);
  v7 = v6[3];
  v8 = v6[7];
  v56 = v8;
  v57 = v7;
  v9 = v6[11];
  v55 = v9;
  v75 = "expect ranked tensor type for input tensor of index_select op";
  v78 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v7, &v75, &v52);
  if (v54 != 1 || (v75 = "expect ranked tensor type for indices tensor of index_select op", v78 = 259, mlir::ODIE::Compiler::getShapedRankedType(v9, &v75, &v49), v51 != 1))
  {
LABEL_34:
    v38 = 0;
    goto LABEL_35;
  }

  mlir::ODIE::Compiler::extract1DIntVector<int>(v8, v72);
  if ((v74 & 1) == 0)
  {
    v71 = 257;
    emitDiag(v4, 2, &v68, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<58ul>(&v76, "Failed to extract value of argument 'dim' in index_select");
    }

    v41 = v79;
    goto LABEL_42;
  }

  v10 = (*(v50 + 24))(v50, v49);
  if (v74)
  {
    v11 = *v10;
    v12 = *v72[0];
    if ((v12 & 0x80000000) != 0)
    {
      (*(v53 + 24))(v53, v52);
      v12 += v13;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = v52;
      v14 = v53;
      (*(v53 + 24))(v53, v52);
      if (v12 < v16)
      {
        (*(v14 + 24))(v14, v15);
        v75 = v77;
        v76 = 0xC00000000;
        llvm::SmallVectorImpl<int>::assign(&v75, v17, 1);
        v18 = v75;
        *(v75 + v12) = v11;
        v48 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v18, v76);
        v68 = v70;
        v69 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<int *,void>(&v68, v75, v75 + v76);
        v19 = v68;
        v20 = v69;
        v21 = mlir::IntegerType::get(*a1, 32, 1);
        v65 = mlir::RankedTensorType::get(v19, v20, v21, 0);
        v47 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::Value &,mlir::Value &>(a1, v4, &v65, &v55, &v48);
        if (v68 != v70)
        {
          free(v68);
        }

        v68 = v70;
        v69 = 0xC00000000;
        v65 = v67;
        v66 = 0xC00000000;
        v22 = (*(v14 + 24))(v14, v15);
        v24 = v23;
        (*(v14 + 24))(v14, v15);
        if (v25 >= 1)
        {
          for (i = 0; i < v27; ++i)
          {
            if (v12 != i)
            {
              llvm::SmallVectorTemplateBase<int,true>::push_back(&v68, i);
              llvm::SmallVectorTemplateBase<int,true>::push_back(&v65, *&v22[8 * i]);
            }

            (*(v14 + 24))(v14, v15);
          }
        }

        v46 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v68, v69);
        v45 = mlir::ODIE::Compiler::create1DTensorConstant<int>(a1, v65, v66);
        v62 = v64;
        v63 = 0x600000000;
        llvm::SmallVectorImpl<long long>::append<long long const*,void>(&v62, v22, &v22[8 * v24]);
        v28 = v62;
        *(v62 + v12) = v11;
        v29 = v63;
        v30 = mlir::IntegerType::get(*a1, 32, 1);
        v61[0] = mlir::RankedTensorType::get(v28, v29, v30, 0);
        v44 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::ODIE::Compiler::CoreML::ReshapeOp &,mlir::Value &,mlir::Value &>(a1, v4, v61, &v47, &v45, &v46);
        v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp,mlir::ShapedType &,mlir::Value &,mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp &,mlir::Value &>(a1, v4, v58, &v57, &v44, &v56);
        v32 = *(a2 + 36);
        v33 = (a2 - 16);
        if (!v32)
        {
          v33 = 0;
        }

        v60[0] = v33;
        v60[1] = v32;
        v34 = *(v31 + 9);
        v35 = (v31 - 16);
        if (!v34)
        {
          v35 = 0;
        }

        v61[0] = v35;
        v61[1] = v34;
        mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(v60, v61);
        mlir::Operation::erase(a2);
        if (v62 != v64)
        {
          free(v62);
        }

        if (v65 != v67)
        {
          free(v65);
        }

        if (v68 != v70)
        {
          free(v68);
        }

        if (v75 != v77)
        {
          free(v75);
        }

        v36 = 1;
        goto LABEL_43;
      }
    }

    v71 = 257;
    emitDiag(v4, 2, &v68, &v75);
    if (v75)
    {
      mlir::Diagnostic::operator<<<52ul>(&v76, "Invalid dim specified for index_select input rank: ");
    }

    (*(v53 + 24))(v53, v52);
    v68 = v42;
    v41 = *(mlir::InFlightDiagnostic::operator<<<long long>(&v75, &v68) + 200);
LABEL_42:
    v36 = v41 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v75);
LABEL_43:
    v38 = v36 & 1;
    if (v74 == 1 && v72[0] != v73)
    {
      free(v72[0]);
    }

    goto LABEL_35;
  }

  v43 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceScatter(v43);
}

uint64_t replaceScatter(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || *(a2 + 68) < 4u || *(a2 + 36) != 1)
  {
    v28 = *(a2 + 24);
    v37 = "expects at least 4 inputs and 1 output for scatter op";
    v41 = 259;
    emitDiag(v28, 2, &v37, &v42);
    goto LABEL_23;
  }

  Attr = mlir::Operation::getAttr(a2, "reduce", 6uLL);
  if (Attr)
  {
    v5 = Attr;
    if (*(*Attr + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
    {
      v31 = Attr[2];
      v32 = Attr[3];
      v33 = mlir::ODIE::Compiler::CoreML::symbolizeScatterMode(v31, v32);
      if ((v33 & 0x100000000) != 0)
      {
        v6 = v33;
        goto LABEL_7;
      }

      if (v32 == 8 && *v31 == 0x796C7069746C756DLL)
      {
        v6 = 3;
        goto LABEL_7;
      }

      v34 = *(a2 + 24);
      v41 = 257;
      emitDiag(v34, 2, &v37, &v42);
      if (v42)
      {
        mlir::Diagnostic::operator<<<22ul>(v43, "Unknown reduce type: ");
        if (v42)
        {
          v35 = v5[2];
          v36 = v5[3];
          v41 = 261;
          v37 = v35;
          v38 = v36;
          mlir::Diagnostic::operator<<(v43, &v37);
        }
      }

LABEL_23:
      v27 = v47 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v42);
      goto LABEL_24;
    }
  }

  v6 = 0;
LABEL_7:
  v7 = mlir::ODIE::Compiler::CoreML::ScatterModeAttr::get(*a1, v6);
  v8 = *(a2 + 36);
  v9 = *(a2 + 72);
  v10 = v9[3];
  v11 = v9[11];
  v12 = v9[15];
  v13 = v9[7];
  v14 = *(a1 + 32);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp,void>::id, *(**v14 + 32));
  if ((v16 & 1) == 0)
  {
    v41 = 1283;
    v39 = "coreml.scatter_along_axis";
    v40 = 25;
    v52 = 259;
    llvm::operator+(&v37, v51, &v42);
    llvm::report_fatal_error(&v42, 1);
  }

  if (v8)
  {
    v17 = (a2 - 16);
  }

  else
  {
    v17 = 0;
  }

  v42 = v14;
  v43[0] = v15;
  v43[1] = v44;
  v43[2] = 0x400000000;
  v44[4] = v45;
  v44[5] = 0x400000000;
  v45[4] = v46;
  v45[5] = 0x400000000;
  v46[8] = 4;
  v47 = v49;
  v48 = 0x100000000;
  v49[1] = v50;
  v49[2] = 0x100000000;
  v50[1] = 0;
  v50[2] = 0;
  v50[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v50[4] = 0;
  v50[6] = 0;
  v37 = v17;
  v38 = 0;
  v39 = v17;
  v40 = v8;
  mlir::TypeRange::TypeRange<mlir::ResultRange>(v51, &v37);
  mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp::build(a1, &v42, v51[0], v51[1], v10, v11, v12, v13, v7);
  v18 = mlir::Operation::create(&v42);
  mlir::OpBuilder::insert(a1, v18);
  v19 = *(*(v18 + 6) + 16);
  mlir::OperationState::~OperationState(&v42);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ScatterAlongAxisOp,void>::id)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a2 + 36);
  if (v21)
  {
    v22 = (a2 - 16);
  }

  else
  {
    v22 = 0;
  }

  v37 = v22;
  v38 = v21;
  v23 = *(v20 + 9);
  v24 = (v20 - 16);
  if (!v23)
  {
    v24 = 0;
  }

  v42 = v24;
  v43[0] = v23;
  mlir::ResultRange::replaceAllUsesWith<mlir::ResultRange>(&v37, &v42);
  if (*(a2 + 16))
  {
    *(a2 + 16) = 0;
    v26 = *a2;
    v25 = *(a2 + 8);
    *v25 = *a2;
    *(v26 + 8) = v25;
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  mlir::Operation::destroy(a2);
  v27 = 1;
LABEL_24:
  v29 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

uint64_t replaceLeakyRelu(uint64_t *a1, uint64_t *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) == 0 || (v3 = *(a2 + 17), (v3 - 3) <= 0xFFFFFFFD))
  {
    v4 = a2[3];
    v20 = 257;
    emitDiag(v4, 2, v19, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<55ul>(v22, "Expect 1 or 2 operands only for TorchImport.leaky_relu");
    }

LABEL_17:
    v15 = v22[192] ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
    goto LABEL_18;
  }

  v6 = a2[9];
  v7 = *(v6 + 24);
  if (v3 == 2)
  {
    Tensor = *(v6 + 56);
  }

  else
  {
    LODWORD(v21) = 1008981770;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v21, 1);
  }

  CoreMLLeakyRelu = mlir::ODIE::Compiler::getCoreMLLeakyRelu(a1, v7, Tensor);
  if ((v10 & 1) == 0)
  {
    v16 = a2[3];
    v20 = 257;
    emitDiag(v16, 2, v19, &v21);
    if (v21)
    {
      mlir::Diagnostic::operator<<<49ul>(v22, "Failed to lower TorchImport.leaky_relu to coreml");
    }

    goto LABEL_17;
  }

  v21 = CoreMLLeakyRelu;
  v11 = *(a2 + 9);
  if (v11)
  {
    v12 = (a2 - 2);
  }

  else
  {
    v12 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v12, v11, &v21, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v14 = *a2;
    v13 = a2[1];
    *v13 = *a2;
    *(v14 + 8) = v13;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v15 = 1;
LABEL_18:
  v17 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t replaceLinalgVectorNorm(uint64_t *a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v76 = *(*(*(a2 + 48) + 8) + 16);
  v2 = *(a2 + 24);
  v75 = v2;
  if ((*(a2 + 46) & 0x80) == 0 || (v4 = *(a2 + 68), (v4 - 5) < 0xFFFFFFFC) || *(a2 + 36) != 1)
  {
    v80 = 257;
    emitDiag(v2, 2, &v78, __p);
    if (__p[0])
    {
      mlir::Diagnostic::operator<<<37ul>(&__p[1], "expects 1-4 inputs and 1 output for ");
      if (__p[0])
      {
        v80 = 261;
        v78 = v76;
        mlir::Diagnostic::operator<<(&__p[1], &v78);
      }
    }

    goto LABEL_10;
  }

  v6 = *(a2 + 72);
  v7 = *(v6 + 24);
  v74 = v7;
  if (v4 == 1)
  {
    LODWORD(__p[0]) = 2;
    Tensor = mlir::ODIE::Compiler::createTensorConstant<int>(a1, __p, 1, 0);
    if ((*(a2 + 46) & 0x80) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    Tensor = *(v6 + 56);
  }

  v12 = *(a2 + 68);
  if (v12 < 3)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v13 = *(a2 + 72);
  v14 = *(v13 + 88);
  if (v12 != 3)
  {
    v73 = *(v13 + 120);
    goto LABEL_18;
  }

LABEL_17:
  LOBYTE(__p[0]) = 0;
  v73 = mlir::ODIE::Compiler::createTensorConstant<BOOL>(a1, __p, 1);
LABEL_18:
  v83 = 1283;
  __p[0] = "expected ranked tensor inputs to ";
  v82 = v76;
  mlir::ODIE::Compiler::getShapedRankedType(v7, __p, &v70);
  if (v72 != 1)
  {
    goto LABEL_86;
  }

  v69 = 0;
  __p[0] = &v69;
  if ((~*(Tensor + 2) & 7) != 0)
  {
    v15 = Tensor;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_53;
  }

  v16 = *(v15 + 1) & 7;
  if (v16 == 6)
  {
    v17 = &v15[24 * *(v15 + 2)];
    v18 = (v17 + 120);
    if (v17 == -120)
    {
LABEL_53:
      v42 = a1[4];
      v80 = 257;
      emitDiag(v42, 2, &v78, __p);
      if (__p[0])
      {
        mlir::Diagnostic::operator<<<26ul>(&__p[1], "A scalar order must exist");
      }

LABEL_10:
      v9 = (v84 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(__p);
LABEL_11:
      v10 = *MEMORY[0x277D85DE8];
      return v9;
    }
  }

  else
  {
    v18 = &v15[16 * v16 + 16];
  }

  if (!mlir::detail::constant_op_binder<mlir::DenseElementsAttr>::match(__p, v18))
  {
    goto LABEL_53;
  }

  v19 = v69;
  if (mlir::DenseFPElementsAttr::classof(v69))
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  ReductionDimFromTupleOrNone = v20;
  if (v20)
  {
    mlir::DenseElementsAttr::tryGetValues<float,void>(&ReductionDimFromTupleOrNone, __p);
    if (__p[1])
    {
      v21 = 0;
    }

    else
    {
      v21 = v82;
    }

    v22 = *(__p[0] + v21);
  }

  else
  {
    v40 = v69;
    if (mlir::DenseIntElementsAttr::classof(v69))
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v77 = v41;
    if (!v41)
    {
      goto LABEL_53;
    }

    mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v77, __p);
    v78 = *__p;
    v79 = v82;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v78, &v66);
    if (v67 > 0x40)
    {
      v22 = *v66;
      MEMORY[0x25F891010]();
    }

    else if (v67)
    {
      v22 = ((v66 << -v67) >> -v67);
    }

    else
    {
      v22 = 0.0;
    }
  }

  if (*(a2 + 36))
  {
    v23 = a2 - 16;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v23 + 8);
  v80 = 1283;
  *&v78 = "input and output of ";
  v79 = v76;
  __p[0] = &v78;
  *&v82 = " must be ranked.";
  v83 = 770;
  mlir::ODIE::Compiler::getShapedRankedType((v24 & 0xFFFFFFFFFFFFFFF8), v2, __p, &v66);
  if (v22 != 0.0)
  {
    if (v22 == 1.0)
    {
      AbsOps = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if (v43)
      {
        goto LABEL_57;
      }

LABEL_86:
      v9 = 0;
      goto LABEL_11;
    }

    if (v22 == 2.0)
    {
      ReductionDimFromTupleOrNone = getReductionDimFromTupleOrNone(a1, v7, v14, v2);
      v64 = v48;
      if ((v48 & 1) == 0)
      {
        v51 = *(a2 + 24);
        v80 = 257;
        emitDiag(v51, 2, &v78, __p);
        if (__p[0])
        {
          mlir::Diagnostic::operator<<<38ul>(&__p[1], "unable to get dim tensor for input = ");
          if (__p[0])
          {
            mlir::Diagnostic::operator<<(&__p[1], v7);
          }
        }

        goto LABEL_10;
      }

      if (v68)
      {
        mlir::ImplicitLocOpBuilder::create<mlir::ODIE::Compiler::CoreML::ReduceL2Norm,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &,replaceLinalgVectorNorm(mlir::ImplicitLocOpBuilder&,mlir::Operation *)::$_0>(a1, &v66, &v74, &ReductionDimFromTupleOrNone, &v73);
      }

      goto LABEL_87;
    }

    if (v22 <= 10.0)
    {
      v53 = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if (v22 >= -10.0)
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_86;
        }

        LOBYTE(__p[0]) = 0;
        LOBYTE(__p[1]) = 0;
        v54 = getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v76, &v75, v53, Tensor, __p);
        if ((v55 & 1) == 0)
        {
          goto LABEL_86;
        }

        if ((v68 & 1) == 0)
        {
          goto LABEL_87;
        }

        v56 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v76, &v75, v54, v14, &v73, &v66);
        if ((v57 & 1) == 0)
        {
          goto LABEL_86;
        }

        v58 = v56;
        LODWORD(__p[0]) = 1065353216;
        v59 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, __p, 1);
        LOBYTE(__p[0]) = 0;
        LOBYTE(__p[1]) = 0;
        v60 = getBinaryOps<mlir::ODIE::Compiler::CoreML::DivideOp>(a1, &v76, &v75, v59, Tensor, __p);
        if ((v61 & 1) == 0)
        {
          goto LABEL_86;
        }

        LOBYTE(v78) = 0;
        BYTE8(v78) = 0;
        v44 = getBinaryOps<mlir::ODIE::Compiler::CoreML::PowOp>(a1, &v76, &v75, v58, v60, &v78);
      }

      else
      {
        if ((v52 & 1) == 0)
        {
          goto LABEL_86;
        }

        if ((v68 & 1) == 0)
        {
          goto LABEL_87;
        }

        v44 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMinOp>(a1, &v76, &v75, v53, v14, &v73, &v66);
      }
    }

    else
    {
      v49 = getAbsOps(a1, v76, *(&v76 + 1), &v74, &v70);
      if ((v50 & 1) == 0)
      {
        goto LABEL_86;
      }

      if ((v68 & 1) == 0)
      {
        goto LABEL_87;
      }

      v44 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceMaxOp>(a1, &v76, &v75, v49, v14, &v73, &v66);
    }

LABEL_59:
    __p[0] = v44;
    LOBYTE(__p[1]) = v45;
    if (v45)
    {
      v46 = *(a2 + 36);
      if (v46)
      {
        v47 = (a2 - 16);
      }

      else
      {
        v47 = 0;
      }

      mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v47, v46, __p, 1);
      mlir::Operation::erase(a2);
      v9 = 1;
      goto LABEL_11;
    }

    goto LABEL_86;
  }

  LODWORD(__p[0]) = 0;
  v25 = mlir::ODIE::Compiler::createTensorConstant<float>(a1, __p, 1);
  v27 = v70;
  v26 = v71;
  v28 = (*(v71 + 24))(v71, v70);
  std::vector<long long>::vector[abi:nn200100]<long long const*,0>(__p, v28, v28 + 8 * v29);
  v30 = __p[0];
  v31 = (__p[1] - __p[0]) >> 3;
  v32 = mlir::IntegerType::get(*a1, 1, 0);
  *&v78 = v30;
  *(&v78 + 1) = v31;
  ReductionDimFromTupleOrNone = v32;
  v77 = 0;
  v65 = mlir::detail::TypeUniquer::get<mlir::RankedTensorType,llvm::ArrayRef<long long> &,mlir::Type &,mlir::Attribute &>(*(**v32 + 32), &v78, &ReductionDimFromTupleOrNone, &v77);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  __p[0] = mlir::TensorType::operator mlir::ShapedType(&v65);
  __p[1] = v33;
  v34 = getBinaryComparisonOps<mlir::ODIE::Compiler::CoreML::NotEqualOp>(a1, &v76, &v75, v7, v25, __p);
  if ((v35 & 1) == 0)
  {
    goto LABEL_86;
  }

  v36 = v34;
  v37 = (*(v26 + 8))(v26, v27);
  AbsOps = mlir::ODIE::Compiler::castValueToElementType(a1, v36, v37);
  if ((v39 & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_57:
  if (v68)
  {
    v44 = getReduceOps<mlir::ODIE::Compiler::CoreML::ReduceSumOp>(a1, &v76, &v75, AbsOps, v14, &v73, &v66);
    goto LABEL_59;
  }

LABEL_87:
  v62 = std::__throw_bad_optional_access[abi:nn200100]();
  return replaceUnaryOp<mlir::ODIE::Compiler::CoreML::LogOp>(v62);
}

uint64_t replaceUnaryOp<mlir::ODIE::Compiler::CoreML::LogOp>(uint64_t *a1, uint64_t *a2)
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
    v33 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::ODIE::Compiler::CoreML::LogOp>(*(**v32 + 32));
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
    mlir::ODIE::Compiler::CoreML::LogOp::build(a1, &v50, v31 & 0xFFFFFFFFFFFFFFF8, v4);
    v34 = mlir::Operation::create(&v50);
    mlir::OpBuilder::insert(a1, v34);
    v35 = *(*(v34 + 6) + 16);
    mlir::OperationState::~OperationState(&v50);
    if (v35 == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::LogOp,void>::id)
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

BOOL replaceLogBaseN<2>(uint64_t *a1, uint64_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v39 = v4;
  v43 = "expected ranked tensor input to log base N op";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v43, v37);
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
  v43 = "expect ranked tensor output type for log base N op";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v43, v35);
  v8 = 0;
  if (v38 != 1 || (v36 & 1) == 0)
  {
    goto LABEL_29;
  }

  v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v37, &v39);
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 2, v4);
  v33 = v9;
  if ((v9 & 1) == 0)
  {
    v19 = a2[3];
    v42 = 257;
    emitDiag(v19, 2, &v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<45ul>(v44, "failed to create tensor constant with value ");
    }

    LODWORD(v29) = 2;
    v20 = mlir::InFlightDiagnostic::operator<<<int>(&v43, &v29);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<11ul>((v20 + 1), " and type ");
      if (*v21)
      {
        v40 = 4;
        v41 = v37[0];
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v40, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = *(v21 + 200);
    goto LABEL_28;
  }

  v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v37, &TensorConstantWithSameTypeAs) - 16;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(a1, a1[4], v37, &v34, &v31) - 16;
  v11 = v35[0];
  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v35[0]);
  if (v12)
  {
    v11 = (*(v13 + 8))(v13, v12);
  }

  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v11);
  v30 = v14;
  if ((v14 & 1) == 0)
  {
    v26 = a2[3];
    v42 = 257;
    emitDiag(v26, 2, &v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<22ul>(v44, "failed to cast value ");
      if (v43)
      {
        mlir::Diagnostic::operator<<(v44, v10);
        if (v43)
        {
          mlir::Diagnostic::operator<<<31ul>(v44, " to same dtype as result type ");
          if (v43)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v44, v35);
          }
        }
      }
    }

    v25 = v46;
LABEL_28:
    v8 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    goto LABEL_29;
  }

  v15 = *(a2 + 9);
  if (v15)
  {
    v16 = (a2 - 2);
  }

  else
  {
    v16 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &v29, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v18 = *a2;
    v17 = a2[1];
    *v17 = *a2;
    *(v18 + 8) = v17;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v8 = 1;
LABEL_29:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL replaceLogBaseN<10>(uint64_t *a1, uint64_t *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v39 = v4;
  v43 = "expected ranked tensor input to log base N op";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v43, v37);
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
  v43 = "expect ranked tensor output type for log base N op";
  v45 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v43, v35);
  v8 = 0;
  if (v38 != 1 || (v36 & 1) == 0)
  {
    goto LABEL_29;
  }

  v34 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v37, &v39);
  TensorConstantWithSameTypeAs = mlir::ODIE::Compiler::createTensorConstantWithSameTypeAsOther<int>(a1, 10, v4);
  v33 = v9;
  if ((v9 & 1) == 0)
  {
    v19 = a2[3];
    v42 = 257;
    emitDiag(v19, 2, &v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<45ul>(v44, "failed to create tensor constant with value ");
    }

    LODWORD(v29) = 10;
    v20 = mlir::InFlightDiagnostic::operator<<<int>(&v43, &v29);
    v21 = v20;
    if (*v20)
    {
      mlir::Diagnostic::operator<<<11ul>((v20 + 1), " and type ");
      if (*v21)
      {
        v40 = 4;
        v41 = v37[0];
        v22 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v21 + 3), &v40, 1);
        v23 = v21[3] + 24 * *(v21 + 8);
        v24 = *v22;
        *(v23 + 16) = *(v22 + 16);
        *v23 = v24;
        ++*(v21 + 8);
      }
    }

    v25 = *(v21 + 200);
    goto LABEL_28;
  }

  v31 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v37, &TensorConstantWithSameTypeAs) - 16;
  v10 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::DivideOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::LogOp &,mlir::Value &>(a1, a1[4], v37, &v34, &v31) - 16;
  v11 = v35[0];
  v12 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v35[0]);
  if (v12)
  {
    v11 = (*(v13 + 8))(v13, v12);
  }

  v29 = mlir::ODIE::Compiler::castValueToElementType(a1, v10, v11);
  v30 = v14;
  if ((v14 & 1) == 0)
  {
    v26 = a2[3];
    v42 = 257;
    emitDiag(v26, 2, &v40, &v43);
    if (v43)
    {
      mlir::Diagnostic::operator<<<22ul>(v44, "failed to cast value ");
      if (v43)
      {
        mlir::Diagnostic::operator<<(v44, v10);
        if (v43)
        {
          mlir::Diagnostic::operator<<<31ul>(v44, " to same dtype as result type ");
          if (v43)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v44, v35);
          }
        }
      }
    }

    v25 = v46;
LABEL_28:
    v8 = (v25 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v43);
    goto LABEL_29;
  }

  v15 = *(a2 + 9);
  if (v15)
  {
    v16 = (a2 - 2);
  }

  else
  {
    v16 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v16, v15, &v29, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v18 = *a2;
    v17 = a2[1];
    *v17 = *a2;
    *(v18 + 8) = v17;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v8 = 1;
LABEL_29:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL replaceLog1P(uint64_t *a1, uint64_t *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = *(a2[9] + 24);
  v34 = "expected ranked tensor input to log1p op";
  v36 = 259;
  mlir::ODIE::Compiler::getShapedRankedType(v4, &v34, v30);
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
  v34 = "expect ranked tensor output type for log1p op";
  v36 = 259;
  mlir::ODIE::Compiler::getShapedRankedType((v6 & 0xFFFFFFFFFFFFFFF8), v7, &v34, v28);
  v8 = 0;
  if (v31 != 1 || (v29 & 1) == 0)
  {
    goto LABEL_27;
  }

  LODWORD(v34) = 1065353216;
  Tensor = mlir::ODIE::Compiler::createTensorConstant<float>(a1, &v34, 1);
  AddWithScalar = mlir::ODIE::Compiler::getAddWithScalar(a1, v4, Tensor);
  v27 = v10;
  if ((v10 & 1) == 0)
  {
    v20 = a2[3];
    v33 = 257;
    emitDiag(v20, 2, v32, &v34);
    if (v34)
    {
      mlir::Diagnostic::operator<<<15ul>(v35, "failed to add ");
      if (v34)
      {
        mlir::Diagnostic::operator<<(v35, v4);
        if (v34)
        {
          mlir::Diagnostic::operator<<<6ul>(v35, " and ");
          if (v34)
          {
            mlir::Diagnostic::operator<<(v35, Tensor);
          }
        }
      }
    }

    goto LABEL_26;
  }

  v11 = mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::LogOp,mlir::ShapedType &,mlir::Value &>(a1, a1[4], v30, &AddWithScalar) - 16;
  v12 = v28[0];
  v13 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v28[0]);
  if (v13)
  {
    v12 = (*(v14 + 8))(v14, v13);
  }

  v24 = mlir::ODIE::Compiler::castValueToElementType(a1, v11, v12);
  v25 = v15;
  if ((v15 & 1) == 0)
  {
    v21 = a2[3];
    v33 = 257;
    emitDiag(v21, 2, v32, &v34);
    if (v34)
    {
      mlir::Diagnostic::operator<<<22ul>(v35, "failed to cast value ");
      if (v34)
      {
        mlir::Diagnostic::operator<<(v35, v11);
        if (v34)
        {
          mlir::Diagnostic::operator<<<31ul>(v35, " to same dtype as result type ");
          if (v34)
          {
            mlir::Diagnostic::operator<<<mlir::ShapedType &>(v35, v28);
          }
        }
      }
    }

LABEL_26:
    v8 = (v37 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v34);
    goto LABEL_27;
  }

  v16 = *(a2 + 9);
  if (v16)
  {
    v17 = (a2 - 2);
  }

  else
  {
    v17 = 0;
  }

  mlir::ResultRange::replaceAllUsesWith<mlir::ValueRange>(v17, v16, &v24, 1);
  if (a2[2])
  {
    a2[2] = 0;
    v19 = *a2;
    v18 = a2[1];
    *v18 = *a2;
    *(v19 + 8) = v18;
    *a2 = 0;
    a2[1] = 0;
  }

  mlir::Operation::destroy(a2);
  v8 = 1;
LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}