uint64_t mlir::ODIE::Compiler::CoreML::OutputOpAdaptor::OutputOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::OutputOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::OutputOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::OutputOp::getOperandsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

void mlir::ODIE::Compiler::CoreML::OutputOp::print(mlir::ODIE::Compiler::CoreML::OutputOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v54 = *MEMORY[0x277D85DE8];
  v7 = *v6;
  if ((*(v7 + 46) & 0x80) != 0 && *(v7 + 68))
  {
    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v8, v9);
    }

    OUTLINED_FUNCTION_77();
    if (v11 < 0)
    {
      OUTLINED_FUNCTION_75();
    }

    else
    {
      OUTLINED_FUNCTION_73();
    }

    (*(*v2 + 16))(v2);
    if (v5)
    {
      OUTLINED_FUNCTION_24();
      (*(v12 + 160))(v2);
      v13 = v5 - 1;
      if (v13)
      {
        v14 = v4 + 56;
        do
        {
          OUTLINED_FUNCTION_44();
          if (!v16 & v10)
          {
            OUTLINED_FUNCTION_21(v15);
          }

          else
          {
            OUTLINED_FUNCTION_64();
          }

          v14 += 32;
          OUTLINED_FUNCTION_42();
          (*(v17 + 160))(v2);
          --v13;
        }

        while (v13);
      }
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v18, v19);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_54();
    if (v16)
    {
      llvm::raw_ostream::write(v20, ":", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v20, v21);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v22, v23);
    }

    OUTLINED_FUNCTION_80();
    if (v24 < 0)
    {
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_81();
    }

    v49[0] = v26;
    v49[1] = v25;
    mlir::OperandRange::getTypes(v49, &v50);
    v27 = v51;
    v28 = v53;
    if (v51 != v53)
    {
      v29 = v50 + 32 * v51;
      OUTLINED_FUNCTION_42();
      v30 = OUTLINED_FUNCTION_97();
      v31(v30);
      if (v27 + 1 != v28)
      {
        v32 = ~v27 + v28;
        v33 = v29 + 56;
        do
        {
          (*(*v2 + 16))(v2);
          OUTLINED_FUNCTION_51();
          if (!v16 & v10)
          {
            *v35 = 8236;
            OUTLINED_FUNCTION_52(v34);
          }

          else
          {
            llvm::raw_ostream::write(v34, ", ", 2uLL);
          }

          v33 += 32;
          OUTLINED_FUNCTION_42();
          v36 = OUTLINED_FUNCTION_97();
          v37(v36);
          --v32;
        }

        while (v32);
      }
    }

    v7 = *v3;
  }

  v50 = &v52;
  v51 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  OUTLINED_FUNCTION_115(AttrDictionary, v39, v40, v41, v42, v43, v44, v45, v48, v49[0]);
  OUTLINED_FUNCTION_42();
  v46 = OUTLINED_FUNCTION_71();
  v47(v46);
  if (v50 != &v52)
  {
    free(v50);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOpAdaptor::PlaceholderOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v6, v7);
  OUTLINED_FUNCTION_62();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::PlaceholderOp::getOperandsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::print(mlir::ODIE::Compiler::CoreML::PlaceholderOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v43[4] = *MEMORY[0x277D85DE8];
  (*(*v6 + 16))(v6);
  OUTLINED_FUNCTION_53();
  if (v9)
  {
    llvm::raw_ostream::write(v7, 32);
  }

  else
  {
    OUTLINED_FUNCTION_13(v7, v8);
  }

  OUTLINED_FUNCTION_42();
  (*(v10 + 48))(v2);
  OUTLINED_FUNCTION_42();
  (*(v11 + 16))(v2);
  OUTLINED_FUNCTION_54();
  if (v14)
  {
    llvm::raw_ostream::write(v12, "(", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v12, v13);
  }

  OUTLINED_FUNCTION_77();
  if (v15 < 0)
  {
    OUTLINED_FUNCTION_75();
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  (*(*v2 + 16))(v2);
  if (v5)
  {
    OUTLINED_FUNCTION_24();
    (*(v16 + 160))(v2);
    v17 = v5 - 1;
    if (v17)
    {
      v18 = v4 + 56;
      do
      {
        OUTLINED_FUNCTION_44();
        if (!v14 & v9)
        {
          OUTLINED_FUNCTION_21(v19);
        }

        else
        {
          OUTLINED_FUNCTION_64();
        }

        v18 += 32;
        OUTLINED_FUNCTION_42();
        (*(v20 + 160))(v2);
        --v17;
      }

      while (v17);
    }
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_54();
  if (v14)
  {
    llvm::raw_ostream::write(v21, ")", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v21, v22);
  }

  v41 = v43;
  v43[0] = "opname";
  v43[1] = 6;
  v42 = 0x200000001;
  v40[0] = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(v40);
  OUTLINED_FUNCTION_42();
  v23 = OUTLINED_FUNCTION_71();
  v24(v23);
  OUTLINED_FUNCTION_42();
  (*(v25 + 16))(v2);
  OUTLINED_FUNCTION_53();
  if (v9)
  {
    llvm::raw_ostream::write(v26, 32);
  }

  else
  {
    OUTLINED_FUNCTION_13(v26, v27);
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_54();
  if (v14)
  {
    llvm::raw_ostream::write(v28, ":", 1uLL);
  }

  else
  {
    OUTLINED_FUNCTION_12(v28, v29);
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_53();
  if (v9)
  {
    llvm::raw_ostream::write(v30, 32);
  }

  else
  {
    OUTLINED_FUNCTION_13(v30, v31);
  }

  OUTLINED_FUNCTION_80();
  if (v32 < 0)
  {
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_81();
  }

  v39[0] = v34;
  v39[1] = v33;
  mlir::OperandRange::getTypes(v39, v40);
  OUTLINED_FUNCTION_23();
  v37[0] = v35;
  v37[1] = v36;
  mlir::ResultRange::getTypes(v37, v38);
  mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(v2, v40, v38);
  if (v41 != v43)
  {
    free(v41);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::PowOpAdaptor::PowOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::RangeOpAdaptor::RangeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReLUOpAdaptor::ReLUOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReadHandleOpAdaptor::ReadHandleOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOpAdaptor::RealPartOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMaxOpAdaptor::ReduceMaxOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceMeanOpAdaptor::ReduceMeanOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReduceSumOpAdaptor::ReduceSumOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReshapeOpAdaptor::ReshapeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ReturnOpAdaptor::ReturnOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::ReturnOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::ReturnOp::getOperandsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

void mlir::ODIE::Compiler::CoreML::ReturnOp::print(mlir::ODIE::Compiler::CoreML::ReturnOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v54 = *MEMORY[0x277D85DE8];
  v7 = *v6;
  if ((*(v7 + 46) & 0x80) != 0 && *(v7 + 68))
  {
    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v8, v9);
    }

    OUTLINED_FUNCTION_77();
    if (v11 < 0)
    {
      OUTLINED_FUNCTION_75();
    }

    else
    {
      OUTLINED_FUNCTION_73();
    }

    (*(*v2 + 16))(v2);
    if (v5)
    {
      OUTLINED_FUNCTION_24();
      (*(v12 + 160))(v2);
      v13 = v5 - 1;
      if (v13)
      {
        v14 = v4 + 56;
        do
        {
          OUTLINED_FUNCTION_44();
          if (!v16 & v10)
          {
            OUTLINED_FUNCTION_21(v15);
          }

          else
          {
            OUTLINED_FUNCTION_64();
          }

          v14 += 32;
          OUTLINED_FUNCTION_42();
          (*(v17 + 160))(v2);
          --v13;
        }

        while (v13);
      }
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v18, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v18, v19);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_54();
    if (v16)
    {
      llvm::raw_ostream::write(v20, ":", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v20, v21);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v22, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v22, v23);
    }

    OUTLINED_FUNCTION_80();
    if (v24 < 0)
    {
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_81();
    }

    v49[0] = v26;
    v49[1] = v25;
    mlir::OperandRange::getTypes(v49, &v50);
    v27 = v51;
    v28 = v53;
    if (v51 != v53)
    {
      v29 = v50 + 32 * v51;
      OUTLINED_FUNCTION_42();
      v30 = OUTLINED_FUNCTION_97();
      v31(v30);
      if (v27 + 1 != v28)
      {
        v32 = ~v27 + v28;
        v33 = v29 + 56;
        do
        {
          (*(*v2 + 16))(v2);
          OUTLINED_FUNCTION_51();
          if (!v16 & v10)
          {
            *v35 = 8236;
            OUTLINED_FUNCTION_52(v34);
          }

          else
          {
            llvm::raw_ostream::write(v34, ", ", 2uLL);
          }

          v33 += 32;
          OUTLINED_FUNCTION_42();
          v36 = OUTLINED_FUNCTION_97();
          v37(v36);
          --v32;
        }

        while (v32);
      }
    }

    v7 = *v3;
  }

  v50 = &v52;
  v51 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(v7);
  OUTLINED_FUNCTION_115(AttrDictionary, v39, v40, v41, v42, v43, v44, v45, v48, v49[0]);
  OUTLINED_FUNCTION_42();
  v46 = OUTLINED_FUNCTION_71();
  v47(v46);
  if (v50 != &v52)
  {
    free(v50);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::RsqrtOpAdaptor::RsqrtOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ScatterNdOpAdaptor::ScatterNdOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SelectOpAdaptor::SelectOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ShrinkDimsOpAdaptor::ShrinkDimsOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SigmoidOpAdaptor::SigmoidOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SiluOpAdaptor::SiluOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SinOpAdaptor::SinOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceOpAdaptor::SliceOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SliceUpdateOpAdaptor::SliceUpdateOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SoftmaxOpAdaptor::SoftmaxOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SplitOpAdaptor::SplitOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::SqrtOpAdaptor::SqrtOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOpAdaptor::StackOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::StackOp *this, unsigned int a2)
{
  v2 = byte_25736D3A0;
  if (a2)
  {
    v3 = a2;
    if (a2 < 4)
    {
      v4 = 0;
      v5 = 0;
      goto LABEL_14;
    }

    if (a2 >= 0x20)
    {
      *v6.i64 = OUTLINED_FUNCTION_37();
      do
      {
        *v6.i64 = OUTLINED_FUNCTION_19(v6);
      }

      while (!v14);
      OUTLINED_FUNCTION_43(v6, v7, v8, v9, v10, v11, v12, v13);
      if (v14)
      {
        goto LABEL_16;
      }

      if ((v3 & 0x1C) == 0)
      {
LABEL_14:
        v20 = &v2[v4];
        v21 = v3 - v4;
        do
        {
          v22 = *v20++;
          v5 += v22;
          --v21;
        }

        while (v21);
        goto LABEL_16;
      }
    }

    *v17.i32 = OUTLINED_FUNCTION_72();
    do
    {
      v19 = *v15++;
      v18.i32[0] = v19;
      v18 = vmovl_u8(v18).u64[0];
      v17 = vaddw_u16(v17, v18);
      v16 += 4;
    }

    while (v16);
    v5 = vaddvq_s32(v17);
    if (v4 != v3)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_66();
  if (!v14)
  {
    v23 = v24;
  }

  return OUTLINED_FUNCTION_69(v23);
}

uint64_t mlir::ODIE::Compiler::CoreML::StackOp::getInputsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68) - 1;
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 1, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::SubOpAdaptor::SubOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::TanhOpAdaptor::TanhOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOpAdaptor::TileOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOpAdaptor::TransposeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::WhereOpAdaptor::WhereOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOpAdaptor::WhileOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::WhileOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::ODIE::Compiler::CoreML::WhileOp::getInitsMutable@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_88(a1);
  if (v4 < 0)
  {
    v5 = *(v3 + 68);
  }

  else
  {
    v5 = 0;
  }

  return OUTLINED_FUNCTION_4(v2, v3, 0, v5);
}

uint64_t mlir::ODIE::Compiler::CoreML::WriteHandleOpAdaptor::WriteHandleOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreML::YieldOpAdaptor::YieldOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

unint64_t mlir::ODIE::Compiler::CoreML::YieldOp::getODSOperandIndexAndLength(mlir::ODIE::Compiler::CoreML::YieldOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

void mlir::ODIE::Compiler::CoreML::EqualOp::inferReturnTypes()
{
  {
    v0 = llvm::getTypeName<mlir::ShapedType>();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::CastOp::inferReturnTypeComponents()
{
  {
    v0 = llvm::getTypeName<mlir::ShapedType>();
    mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::CreateComplexOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::CastOp &,mlir::ODIE::Compiler::CoreML::CastOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.create_complex";
  *(a2 + 24) = 21;
}

void mlir::ODIE::Compiler::CoreML::ModuleOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ModuleOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::ImportOp::parse()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ImportOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::FuncOp::build()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::FuncOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::GraphOp::build()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GraphOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::CallOp::verifySymbolUses()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::ParamAttrInterface>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::ParamAttrInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::InvokeOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::InvokeOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::ConcatOp::refineReturnTypes()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::AddOp,mlir::TensorType,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.add";
  *(a2 + 24) = 10;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::RealPartOp &,mlir::ODIE::Compiler::CoreML::RealPartOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.batch_matmul";
  *(a2 + 24) = 19;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::SubOp,mlir::ShapedType &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &,mlir::ODIE::Compiler::CoreML::BatchMatmulOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.sub";
  *(a2 + 24) = 10;
}

void mlir::ODIE::Compiler::CoreML::CallOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::ClassOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ClassOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(mlir::Operation **a1, BOOL *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = "failed to verify that Operation must have at least two operands.";
  v12 = 259;
  mlir::OpState::emitOpError(a1, &v11, v13);
  *a2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v13[0])
  {
    mlir::InFlightDiagnostic::report(v13);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v19;
      v5 = __p;
      if (v19 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v19 = v3;
      operator delete(v5);
    }

    v6 = v16;
    if (v16)
    {
      v7 = v17;
      v8 = v16;
      if (v17 != v16)
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
        v8 = v16;
      }

      v17 = v6;
      operator delete(v8);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::DelegateOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::DelegateOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::ErrorOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::ErrorOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::GELUOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::GELUOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::IsolatedGroupOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::IsolatedGroupOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::MemberOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::MemberOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ODIE::Compiler::CoreML::PlaceholderOp::readProperties()
{
  {
    v0 = llvm::getTypeName<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties>();
    mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::detail::PlaceholderOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::RealPartOp,mlir::ShapedType &,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.real_part";
  *(a2 + 24) = 16;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ImaginaryPartOp,mlir::ShapedType &,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.imaginary_part";
  *(a2 + 24) = 21;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ReshapeOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.reshape";
  *(a2 + 24) = 14;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::TensorType> &,mlir::ODIE::Compiler::CoreML::ConstantOp &,mlir::ODIE::Compiler::CoreML::ConstantOp &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.broadcast_in_dims";
  *(a2 + 24) = 24;
}

unint64_t *mlir::ODIE::Compiler::CoreML::TransformCastOpAdaptor::TransformCastOpAdaptor(unint64_t *a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 72);
    v7 = *(a2 + 68);
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v12, v6, v7);
  OUTLINED_FUNCTION_0_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange(a1 + 3, v9, v10);
  a1[5] = v2;
  a1[6] = v3;
  return a1;
}

{
  v12[2] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v6 = *(a2 + 72);
    v7 = *(a2 + 68);
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v12, v6, v7);
  OUTLINED_FUNCTION_0_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange(a1 + 3, v9, v10);
  a1[5] = v2;
  a1[6] = v3;
  return a1;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CastOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.cast";
  *(a2 + 24) = 13;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOp,mlir::RankedTensorType,mlir::detail::TypedValue<mlir::RankedTensorType>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.copy_with_constraints";
  *(a2 + 24) = 30;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreMLAX::ViewOp,mlir::RankedTensorType const&,mlir::detail::TypedValue<mlir::RankedTensorType>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coremlax.view";
  *(a2 + 24) = 13;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CastOpAdaptor::CastOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprBlockwiseShiftScaleOpAdaptor::ConstexprBlockwiseShiftScaleOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ConstexprLutToDenseOpAdaptor::ConstexprLutToDenseOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyDiscardingConstraintsOpAdaptor::CopyDiscardingConstraintsOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::CopyWithConstraintsOpAdaptor::CopyWithConstraintsOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::DequantizeOpAdaptor::DequantizeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::QuantizeOpAdaptor::QuantizeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::ODIE::Compiler::CoreMLAX::ViewOpAdaptor::ViewOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

void mlir::OpBuilder::create<mlir::ODIE::Compiler::CoreML::ConstantOp,mlir::ElementsAttr &>(llvm::formatv_object_base **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "coreml.constant";
  *(a2 + 24) = 15;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

uint64_t **anonymous namespace::FuncInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a3;
  v16[1] = a4;
  v15 = a2;
  result = mlir::func::ReturnOp::getODSOperandIndexAndLength(&v15, 0);
  if ((*(v15 + 46) & 0x80) != 0)
  {
    v5 = *(v15 + 72);
  }

  else
  {
    v5 = 0;
  }

  v6 = (HIDWORD(result) + result);
  v7 = v6 - result;
  if (v6 != result)
  {
    v8 = 0;
    v9 = v5 + 32 * result;
    do
    {
      v10 = *(v9 + 32 * v8 + 24);
      result = mlir::ValueRange::dereference_iterator(v16, v8);
      while (1)
      {
        v11 = *result;
        if (!*result)
        {
          break;
        }

        v12 = v11[1];
        if (v12)
        {
          v13 = *v11;
          *v12 = *v11;
          if (v13)
          {
            *(v13 + 8) = v12;
          }
        }

        v11[3] = v10;
        v14 = *v10;
        *v11 = *v10;
        v11[1] = v10;
        if (v14)
        {
          *(v14 + 8) = v11;
        }

        *v10 = v11;
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return result;
}

void mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>(llvm::formatv_object_base **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "cf.br";
  *(a2 + 24) = 5;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

void mlir::writeBytecodeToFile()
{
  {
    v0 = llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsMutable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::detail::StorageUserTrait::IsMutable<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsMutable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::BytecodeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::BytecodeOpInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::Dialect::getRegisteredInterface<mlir::OpAsmDialectInterface>()
{
  {
    v0 = llvm::getTypeName<mlir::OpAsmDialectInterface>();
    mlir::detail::TypeIDResolver<mlir::OpAsmDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::ExternalFoldInterface>();
    mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::ExternalFoldInterface>();
    mlir::detail::TypeIDResolver<mlir::ExternalFoldInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::mpsx::QuantizedMatMulOp::verify(mlir::mpsx::QuantizedMatMulOp *this)
{
  v1[26] = *MEMORY[0x277D85DE8];
  v1[0] = *this;
  mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(v1, 1);
}

void mlir::mpsx::QuantizedConv2DOp::verify(mlir::mpsx::QuantizedConv2DOp *this)
{
  v1[26] = *MEMORY[0x277D85DE8];
  v1[0] = *this;
  mlir::mpsx::QuantizedConv2DOp::getODSOperandIndexAndLength(v1, 1);
}

mlir::Operation **mlir::mpsx::UseMemrefOp::verify(mlir::Operation **this)
{
  v1 = this;
  v191 = *MEMORY[0x277D85DE8];
  ParentOp = *(*this + 2);
  if (ParentOp)
  {
    ParentOp = mlir::Block::getParentOp(ParentOp);
  }

  v3 = *(ParentOp + 44);
  if ((v3 & 0x800000) != 0)
  {
    v4 = *(ParentOp + 68);
  }

  else
  {
    v4 = 0;
  }

  v5 = *v1;
  v6 = *(*v1 + 11);
  if ((v6 & 0x800000) != 0)
  {
    v7 = *(v5 + 17);
  }

  else
  {
    v7 = 0;
  }

  if (v4 == v7)
  {
    if ((v3 & 0x800000) != 0)
    {
      v8 = *(ParentOp + 72);
      v9 = *(ParentOp + 68);
      if ((v6 & 0x800000) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
      if ((v6 & 0x800000) != 0)
      {
LABEL_10:
        v10 = *(v5 + 9);
        if (v9)
        {
LABEL_11:
          v11 = 0;
          v143 = &v171;
          while (1)
          {
            v12 = *(v10 + 32 * v11 + 24);
            v13 = (*(*(v8 + 32 * v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
            v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
            if (v14)
            {
              v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
            }

            else
            {
              v13 = 0;
            }

            v159 = v13;
            v160 = v14;
            v15 = (*(v12 + 8) & 0xFFFFFFFFFFFFFFF8);
            v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
            if (v16)
            {
              v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
            }

            else
            {
              v15 = 0;
            }

            v157 = v15;
            v158 = v16;
            if (!v159 || !v15)
            {
              goto LABEL_46;
            }

            hasRank = mlir::ShapedType::hasRank(&v159);
            if (hasRank != mlir::ShapedType::hasRank(&v157))
            {
              OUTLINED_FUNCTION_14_1("Type mismatch (hasRank) in UseMemrefOp vs corresponding MemrefBackedOp", &v171, v157, v158, v159, v160);
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
              OUTLINED_FUNCTION_65_0();
              if (v76)
              {
                mlir::InFlightDiagnostic::report(&v166);
              }

              OUTLINED_FUNCTION_78_0();
              if (!v23)
              {
                return v1;
              }

              v85 = OUTLINED_FUNCTION_55_0(v77, v78, v79, v80, v81, v82, v83, v84, v148, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187, v188, v189);
              if (!v23)
              {
                free(v85);
              }

              v93 = v186;
              if (v186)
              {
                v94 = OUTLINED_FUNCTION_40_0(v85, v86, v87, v88, v89, v90, v91, v92, v149, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
                if (!v23)
                {
                  do
                  {
                    v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v94 - 8));
                  }

                  while (v94 != v93);
                  v95 = v186;
                }

                OUTLINED_FUNCTION_75_0(v95, v150, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
              }

              v53 = __p;
              if (!__p)
              {
                goto LABEL_67;
              }

              v96 = v184;
              v55 = OUTLINED_FUNCTION_114();
              if (v23)
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_16_0();
              do
              {
                v97 = OUTLINED_FUNCTION_104();
                if (v97)
                {
                  MEMORY[0x259C63150](v97, v93);
                }
              }

              while (v96 != v53);
LABEL_65:
              v55 = __p;
              goto LABEL_66;
            }

            if (mlir::ShapedType::hasRank(&v159))
            {
              Shape = mlir::ShapedType::getShape(&v159);
              if (v19)
              {
                v20 = 8 * v19 - 8;
                do
                {
                  v21 = *Shape++;
                  v22 = v21 != 0x8000000000000000;
                  v23 = v21 == 0x8000000000000000 || v20 == 0;
                  v20 -= 8;
                }

                while (!v23);
              }

              else
              {
                v22 = 1;
              }
            }

            else
            {
              v22 = 0;
            }

            if (!mlir::ShapedType::hasRank(&v157))
            {
              goto LABEL_39;
            }

            v24 = mlir::ShapedType::getShape(&v157);
            if (v25)
            {
              break;
            }

LABEL_37:
            if (!v22)
            {
              goto LABEL_108;
            }

LABEL_40:
            ElementType = mlir::ShapedType::getElementType(&v159);
            if (ElementType != mlir::ShapedType::getElementType(&v157))
            {
              OUTLINED_FUNCTION_14_1("Type mismatch (getElementType) in UseMemrefOp vs corresponding MemrefBackedOp", &v171, v157, v158, v159, v160);
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
              OUTLINED_FUNCTION_65_0();
              if (v120)
              {
                mlir::InFlightDiagnostic::report(&v166);
              }

              OUTLINED_FUNCTION_78_0();
              if (!v23)
              {
                return v1;
              }

              v129 = OUTLINED_FUNCTION_55_0(v121, v122, v123, v124, v125, v126, v127, v128, v154, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187, v188, v189);
              if (!v23)
              {
                free(v129);
              }

              v137 = v186;
              if (v186)
              {
                v138 = OUTLINED_FUNCTION_40_0(v129, v130, v131, v132, v133, v134, v135, v136, v155, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
                if (!v23)
                {
                  do
                  {
                    v138 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v138 - 8));
                  }

                  while (v138 != v137);
                  v139 = v186;
                }

                OUTLINED_FUNCTION_75_0(v139, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
              }

              v53 = __p;
              if (!__p)
              {
                goto LABEL_67;
              }

              v140 = v184;
              v55 = OUTLINED_FUNCTION_114();
              if (v23)
              {
                goto LABEL_66;
              }

              OUTLINED_FUNCTION_16_0();
              do
              {
                v141 = OUTLINED_FUNCTION_104();
                if (v141)
                {
                  MEMORY[0x259C63150](v141, v137);
                }
              }

              while (v140 != v53);
              goto LABEL_65;
            }

            if (mlir::ShapedType::hasRank(&v157))
            {
              mlir::ShapedType::getShape(&v157);
              if (v28 >= 1)
              {
                v29 = 0;
                while (1)
                {
                  v30 = 8 * v29;
                  v31 = *(mlir::ShapedType::getShape(&v159) + v30);
                  if (v31 != *(mlir::ShapedType::getShape(&v157) + v30))
                  {
                    break;
                  }

                  ++v29;
                  mlir::ShapedType::getShape(&v157);
                  if (v29 >= v32)
                  {
                    goto LABEL_46;
                  }
                }

                v161 = "Type mismatch (getDimSize) in UseMemrefOp vs corresponding MemrefBackedOp";
                LOWORD(v165) = 259;
                mlir::OpState::emitOpError(v1, &v161, &v166);
                mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
                OUTLINED_FUNCTION_65_0();
                if (v66)
                {
                  mlir::InFlightDiagnostic::report(&v166);
                }

                if (v190)
                {
                  v67 = v189;
                  if (v189 != &v190)
                  {
                    free(v189);
                  }

                  v68 = v186;
                  if (v186)
                  {
                    v69 = OUTLINED_FUNCTION_40_0(v67, v59, v60, v61, v62, v63, v64, v65, &v171, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
                    if (!v23)
                    {
                      do
                      {
                        v69 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v69 - 8));
                      }

                      while (v69 != v68);
                      v70 = v186;
                    }

                    OUTLINED_FUNCTION_75_0(v70, v147, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
                  }

                  v71 = __p;
                  if (__p)
                  {
                    v72 = v184;
                    v73 = __p;
                    if (v184 != __p)
                    {
                      OUTLINED_FUNCTION_16_0();
                      do
                      {
                        v74 = OUTLINED_FUNCTION_58_0();
                        if (v74)
                        {
                          MEMORY[0x259C63150](v74, v68);
                        }
                      }

                      while (v72 != v71);
                      v73 = __p;
                    }

                    v184 = v71;
                    operator delete(v73);
                  }

                  v57 = v169;
                  v58 = v143;
                  goto LABEL_87;
                }

                return v1;
              }
            }

LABEL_46:
            if (++v11 == v9)
            {
              return 1;
            }
          }

          v26 = 8 * v25;
          while (*v24 != 0x8000000000000000)
          {
            ++v24;
            v26 -= 8;
            if (!v26)
            {
              goto LABEL_37;
            }
          }

LABEL_39:
          if (v22)
          {
LABEL_108:
            OUTLINED_FUNCTION_14_1("Type mismatch (hasStaticShape) in UseMemrefOp vs corresponding MemrefBackedOp", &v171, v157, v158, v159, v160);
            mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
            OUTLINED_FUNCTION_65_0();
            if (v98)
            {
              mlir::InFlightDiagnostic::report(&v166);
            }

            OUTLINED_FUNCTION_78_0();
            if (!v23)
            {
              return v1;
            }

            v107 = OUTLINED_FUNCTION_55_0(v99, v100, v101, v102, v103, v104, v105, v106, v151, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187, v188, v189);
            if (!v23)
            {
              free(v107);
            }

            v115 = v186;
            if (v186)
            {
              v116 = OUTLINED_FUNCTION_40_0(v107, v108, v109, v110, v111, v112, v113, v114, v152, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
              if (!v23)
              {
                do
                {
                  v116 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v116 - 8));
                }

                while (v116 != v115);
                v117 = v186;
              }

              OUTLINED_FUNCTION_75_0(v117, v153, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
            }

            v53 = __p;
            if (!__p)
            {
              goto LABEL_67;
            }

            v118 = v184;
            v55 = OUTLINED_FUNCTION_114();
            if (v23)
            {
              goto LABEL_66;
            }

            OUTLINED_FUNCTION_16_0();
            do
            {
              v119 = OUTLINED_FUNCTION_104();
              if (v119)
              {
                MEMORY[0x259C63150](v119, v115);
              }
            }

            while (v118 != v53);
            goto LABEL_65;
          }

          goto LABEL_40;
        }

        return 1;
      }
    }

    v10 = 0;
    if (v9)
    {
      goto LABEL_11;
    }

    return 1;
  }

  OUTLINED_FUNCTION_14_1("Number of operands mismatch in UseMemrefOp vs corresponding MemrefBackedOp", v142, v157, v158, v159, v160);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v166);
  OUTLINED_FUNCTION_65_0();
  if (v33)
  {
    mlir::InFlightDiagnostic::report(&v166);
  }

  OUTLINED_FUNCTION_78_0();
  if (v23)
  {
    v42 = OUTLINED_FUNCTION_55_0(v34, v35, v36, v37, v38, v39, v40, v41, v144, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187, v188, v189);
    if (!v23)
    {
      free(v42);
    }

    v50 = v186;
    if (v186)
    {
      v51 = OUTLINED_FUNCTION_40_0(v42, v43, v44, v45, v46, v47, v48, v49, v145, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
      if (!v23)
      {
        do
        {
          v51 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100]((v51 - 8));
        }

        while (v51 != v50);
        v52 = v186;
      }

      OUTLINED_FUNCTION_75_0(v52, v146, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, __p, v184, v185, v186, v187);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v184;
      v55 = OUTLINED_FUNCTION_114();
      if (!v23)
      {
        OUTLINED_FUNCTION_16_0();
        do
        {
          v56 = OUTLINED_FUNCTION_104();
          if (v56)
          {
            MEMORY[0x259C63150](v56, v50);
          }
        }

        while (v54 != v53);
        goto LABEL_65;
      }

LABEL_66:
      v184 = v53;
      operator delete(v55);
    }

LABEL_67:
    v57 = v169;
    v58 = &v171;
LABEL_87:
    if (v57 != v58)
    {
      free(v57);
    }
  }

  return v1;
}

unint64_t mlir::mpsx::FusionOp::getODSOperandIndexAndLength(mlir::mpsx::FusionOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::mpsx::UseMemrefOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    return 1;
  }

  v3 = *(v2 + 17);
  if (!v3)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(v2 + 9);
  OUTLINED_FUNCTION_12_1();
  while (1)
  {
    v7 = *this;
    v8 = *(*(v6 + 32 * v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v34 = v8;
    v9 = *(*v8 + 136);
    v10 = v9 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
    if (!v10)
    {
      break;
    }

    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
    v37[0] = v8;
    v37[1] = v11;
    mlir::ShapedType::getElementType(v37);
LABEL_38:
    if (++v5 == v3)
    {
      return 1;
    }
  }

  if (mlir::Type::isSignlessInteger(&v34, 1))
  {
    goto LABEL_38;
  }

  v33 = 261;
  v32[0] = "operand";
  v32[1] = 7;
  mlir::Operation::emitOpError(v37, v7, v32);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v37, " #");
  v13 = v12;
  if (*v12)
  {
    v14 = *(v12 + 24);
    LODWORD(v35) = 5;
    *(&v35 + 1) = v5;
    if (*(v12 + 32) >= *(v12 + 36))
    {
      OUTLINED_FUNCTION_19_0();
      if (!v10 & v28 || (v27 & 1) == 0)
      {
        OUTLINED_FUNCTION_34_1();
      }

      OUTLINED_FUNCTION_34_1();
    }

    OUTLINED_FUNCTION_8(v14);
    v15 = *(v13 + 32) + 1;
    *(v13 + 32) = v15;
    if (*v13)
    {
      LODWORD(v35) = 3;
      *(&v35 + 1) = " must be variadic of tensor of any type values or 1-bit signless integer, but got ";
      v36 = 82;
      if (v15 >= *(v13 + 36))
      {
        OUTLINED_FUNCTION_19_0();
        if (!v10 & v28 || (v29 & 1) == 0)
        {
          OUTLINED_FUNCTION_34_1();
        }

        OUTLINED_FUNCTION_34_1();
      }

      OUTLINED_FUNCTION_8(*(v13 + 24));
      ++*(v13 + 32);
      if (*v13)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v35, v34);
        if (*(v13 + 32) >= *(v13 + 36))
        {
          OUTLINED_FUNCTION_19_0();
          if (!v10 & v28 || (v30 & 1) == 0)
          {
            OUTLINED_FUNCTION_34_1();
          }

          OUTLINED_FUNCTION_34_1();
        }

        v16 = *(v13 + 24) + 24 * *(v13 + 32);
        v17 = v35;
        *(v16 + 16) = v36;
        *v16 = v17;
        ++*(v13 + 32);
      }
    }
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v43;
      v21 = __p;
      if (v43 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v43 = v19;
      operator delete(v21);
    }

    v22 = v40;
    if (v40)
    {
      v23 = v41;
      v24 = v40;
      if (v41 != v40)
      {
        do
        {
          v26 = *--v23;
          v25 = v26;
          *v23 = 0;
          if (v26)
          {
            MEMORY[0x259C63150](v25, v1);
          }
        }

        while (v23 != v22);
        v24 = v40;
      }

      v41 = v22;
      operator delete(v24);
    }

    if (v38 != &v39)
    {
      free(v38);
    }
  }

  if (v18)
  {
    goto LABEL_38;
  }

  return 0;
}

void mlir::mpsx::MPSXDialect::initialize()
{
  {
    v0 = llvm::getTypeName<mlir::BytecodeDialectInterface>();
    mlir::detail::TypeIDResolver<mlir::BytecodeDialectInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::mpsx::detail::TypeWithStaticSubtypesImpl<mlir::mpsx::ListType,1u>::get()
{
  {
    v0 = llvm::getTypeName<mlir::mpsx::ListType>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_53_0(v2);
  }
}

void mlir::OpBuilder::create<mlir::mpsx::RegionReturnOp,llvm::SmallVector<mlir::Value,6u> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "mpsx.region_return";
  *(a2 + 24) = 18;
}

uint64_t mlir::mpsx::FusionOp::verifyInvariantsImpl(uint64_t result, mlir::Operation **a2, char *a3)
{
  v4 = *(result + 36);
  if (*(result + 36))
  {
    v5 = result - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v7 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, v7);
      result = mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps6(*a2, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, v7);
      if ((result & 1) == 0)
      {
        break;
      }

      if (v4 == ++v7)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
  }

  else
  {
LABEL_8:
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::SymbolOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_89_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CallableOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_88_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FunctionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_63_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::TargetLegalizerInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::TargetLegalizerInterface>();
    mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::FormableRegionOpInterfaceInterfaceTraits::Model<mlir::mpsx::ANEOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::FormableRegionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::RegionOp,mlir::TargetLegalizerInterface::Trait,mlir::FormableRegionOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_87_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_62_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_36_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_85_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_35_1(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::SymbolOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::SymbolOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::CallableOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CallableOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::FunctionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FunctionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::RegionOp<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::RegionOp>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::TargetLegalizerInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::TargetLegalizerInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::FormableRegionOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::FormableRegionOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_46_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_45_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::CompatibleReturnTypesInterface>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_44_0(v2);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_41_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_52_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_68_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_61_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_51_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_50_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_49_0(v2);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_67_0(v2);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultShape<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultShape>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpTrait::HasRecursiveMemoryEffects>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_66_0(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::mpsx::FusionReturnOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::FusionOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_81_0(v2);
  }
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::OpAsmOpInterfaceInterfaceTraits::Model<mlir::mpsx::ListPopBackOp>>()
{
  {
    v0 = llvm::getTypeName<mlir::OpAsmOpInterface>();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::NResults<2u>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::OpAsmOpInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NResults<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NResults<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpAsmOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::OpAsmOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<2u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<4u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<4u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AtLeastNOperands<4u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::StitchedOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<5u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::NOperands<5u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NOperands<5u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::BaseMemRefType>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike>()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::mpsx::MemrefBackedOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::Dialect::addType<mlir::mpsx::ListType>()
{
  {
    v0 = llvm::getTypeName<mlir::mpsx::ListType>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_53_0(v2);
  }
}

void mlir::mpsx::isMPSXType()
{
  {
    v0 = llvm::getTypeName<mlir::mpsx::ListType>();
    mlir::detail::TypeIDResolver<mlir::mpsx::ListType,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::ElementsAttr::try_value_begin<llvm::APFloat>()
{
  {
    v0 = llvm::getTypeName<llvm::APFloat>();
    mlir::detail::TypeIDResolver<llvm::APFloat,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void CommutativeOperand::popFrontAndPushAdjacentUnvisitedAncestors(CommutativeOperand *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    v3 = *(this + 2);
    v4 = (*(v3 + ((*(this + 5) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(this + 5) & 0x1FFLL];
    v5 = *(this + 5) + 1;
    *(this + 5) = v5;
    *(this + 6) = v1 - 1;
    if (v5 >= 0x400)
    {
      operator delete(*v3);
      *(this + 2) += 8;
      *(this + 5) -= 512;
    }

    if (v4)
    {
      if ((*(v4 + 46) & 0x80) != 0)
      {
        v6 = *(v4 + 68);
        if (v6)
        {
          v7 = 0;
          v8 = *(v4 + 72);
          while (1)
          {
            v27 = *(v8 + 32 * v7 + 24);
            DefiningOp = mlir::Value::getDefiningOp(&v27);
            if (!DefiningOp)
            {
              v20 = *(this + 3);
              v21 = *(this + 2);
              if (v20 == v21)
              {
                v22 = 0;
              }

              else
              {
                v22 = ((v20 - v21) << 6) - 1;
              }

              v23 = *(this + 6);
              v24 = v23 + *(this + 5);
              if (v22 == v24)
              {
                std::deque<mlir::Operation *>::__add_back_capacity(this + 1);
                v21 = *(this + 2);
                v23 = *(this + 6);
                v24 = *(this + 5) + v23;
              }

              *(*(v21 + ((v24 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v24 & 0x1FF)) = 0;
              *(this + 6) = v23 + 1;
              goto LABEL_24;
            }

            v10 = DefiningOp;
            v11 = *(this + 18);
            if (!v11)
            {
              goto LABEL_12;
            }

            v12 = *(this + 7);
            v13 = (v11 - 1) & ((DefiningOp >> 4) ^ (DefiningOp >> 9));
            v14 = *(v12 + 8 * v13);
            if (v14 != DefiningOp)
            {
              break;
            }

LABEL_11:
            if (v13 == v11)
            {
              goto LABEL_12;
            }

LABEL_24:
            if (++v7 == v6)
            {
              return;
            }
          }

          v25 = 1;
          while (v14 != -4096)
          {
            v26 = v13 + v25++;
            v13 = v26 & (v11 - 1);
            v14 = *(v12 + 8 * v13);
            if (v14 == DefiningOp)
            {
              goto LABEL_11;
            }
          }

LABEL_12:
          v15 = *(this + 3);
          v16 = *(this + 2);
          v28 = DefiningOp;
          if (v15 == v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = ((v15 - v16) << 6) - 1;
          }

          v18 = *(this + 6);
          v19 = v18 + *(this + 5);
          if (v17 == v19)
          {
            std::deque<mlir::Operation *>::__add_back_capacity(this + 1);
            v16 = *(this + 2);
            v18 = *(this + 6);
            v19 = *(this + 5) + v18;
          }

          *(*(v16 + ((v19 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v19 & 0x1FF)) = v10;
          *(this + 6) = v18 + 1;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>,mlir::Operation *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseSetPair<mlir::Operation *>>::try_emplace<llvm::detail::DenseSetEmpty&>(this + 56, &v28, v29);
          goto LABEL_24;
        }
      }
    }
  }
}

void SortCommutativeOperands::matchAndRewrite()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::IsCommutative<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsCommutative>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void AncestorKey::AncestorKey()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::getSinglyExecutedRegionsToSink(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v24[0] = a1;
  v24[1] = a2;
  if ((*(a1 + 46) & 0x80) != 0)
  {
    v5 = *(a1 + 68);
    v28 = v30;
    HIDWORD(v29) = 6;
    if (v5 > 6)
    {
      LODWORD(v29) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5)
    {
      bzero(v30, 8 * v5);
    }

    LODWORD(v29) = v5;
    v6 = v30;
    v7 = *(a1 + 68);
    if (v7)
    {
      v8 = 0;
      v9 = (*(a1 + 72) + 24);
      v10 = 8 * v7;
      do
      {
        v11 = *v9;
        v23 = (v28 + v8);
        v25 = v11;
        DefiningOp = mlir::Value::getDefiningOp(&v25);
        if (DefiningOp)
        {
          mlir::detail::constant_op_binder<mlir::Attribute>::match(&v23, DefiningOp);
        }

        v8 += 8;
        v9 += 4;
      }

      while (v10 != v8);
      v6 = v28;
      LODWORD(v5) = v29;
    }
  }

  else
  {
    LODWORD(v5) = 0;
    v28 = v30;
    v29 = 0x600000000;
    v6 = v30;
  }

  v25 = v27;
  v26 = 0x400000000;
  mlir::RegionBranchOpInterface::getRegionInvocationBounds(v24, v6, v5, &v25);
  v13 = *(v24[0] + 44);
  v14 = v13 & 0x7FFFFF;
  if ((v13 & 0x7FFFFF) != 0)
  {
    v15 = ((v24[0] + 16 * ((v13 >> 23) & 1) + ((v13 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v24[0] + 40);
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v16 = v25;
  if (v14 && v26)
  {
    v17 = 12 * v26 - 12;
    v18 = (v25 + 4);
    v19 = 24 * v14 - 24;
    do
    {
      v20 = *v18;
      v18 = (v18 + 12);
      if ((v20 & 0x1FFFFFFFELL) == 0x100000000)
      {
        v21 = *(a3 + 8);
        if (v21 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a3 + 8 * v21) = v15;
        ++*(a3 + 8);
      }

      if (!v19)
      {
        break;
      }

      v22 = v17;
      v17 -= 12;
      v15 += 24;
      v19 -= 24;
    }

    while (v22);
    v16 = v25;
  }

  if (v16 != v27)
  {
    free(v16);
  }

  if (v28 != v30)
  {
    free(v28);
  }
}

uint64_t mlir::ConversionPattern::matchAndRewrite(mlir::ConversionPattern *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 5);
  v7 = v6[43];
  v6[43] = *(this + 12);
  v15 = v17;
  v16 = 0x400000000;
  v8 = *(a2 + 3);
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v9 = *(a2 + 9);
    v10 = *(a2 + 17);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(v14, v9, v10);
  if (mlir::detail::ConversionPatternRewriterImpl::remapValues(v6, "operand", 7, v8, 1, v11, v14[0], v14[1], &v15))
  {
    v12 = (*(*this + 56))(this, a2, v15, v16, a3);
  }

  else
  {
    v12 = 0;
  }

  if (v15 != v17)
  {
    free(v15);
  }

  v6[43] = v7;
  return v12;
}

uint64_t mlir::reconcileUnrealizedCasts(llvm::ArrayRef<mlir::UnrealizedConversionCastOp>,llvm::SmallVectorImpl<mlir::UnrealizedConversionCastOp> *)::$_0::operator()(uint64_t *a1, uint64_t a2)
{
  v15 = a2;
  result = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(&v15, 0);
  if ((*(v15 + 46) & 0x80) != 0)
  {
    v4 = *(v15 + 72);
  }

  else
  {
    v4 = 0;
  }

  v5 = (HIDWORD(result) + result);
  v6 = v5 - result;
  if (v5 != result)
  {
    v7 = (v4 + 32 * result + 24);
    do
    {
      v14 = *v7;
      result = mlir::Value::getDefiningOp(&v14);
      if (result)
      {
        v8 = *(*(result + 48) + 16);
        v9 = v8 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id;
        v10 = v8 == &mlir::detail::TypeIDResolver<mlir::UnrealizedConversionCastOp,void>::id ? result : 0;
        v13 = v10;
        if (v9)
        {
          v11 = *a1;
          result = llvm::DenseMapBase<llvm::DenseMap<mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>,mlir::UnrealizedConversionCastOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::UnrealizedConversionCastOp,void>,llvm::detail::DenseSetPair<mlir::UnrealizedConversionCastOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(*a1, &v13, v16);
          if (v16[16] == 1)
          {
            v12 = *(v11 + 32);
            if (v12 >= *(v11 + 36))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(*(v11 + 24) + 8 * v12) = v13;
            ++*(v11 + 32);
          }
        }
      }

      v7 += 4;
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL mlir::TypeConverter::isLegal(mlir::TypeConverter *this, mlir::Operation *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v4 = *(a2 + 9);
    v5 = *(a2 + 17);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v22 = v4;
  v23 = v5;
  mlir::OperandRange::getTypes(&v22, &v19);
  v6 = v21 - v20;
  if (v21 == v20)
  {
LABEL_12:
    v10 = *(a2 + 9);
    v11 = a2 - 16;
    if (!v10)
    {
      v11 = 0;
    }

    v26 = v11;
    v27 = v10;
    mlir::ResultRange::getTypes(&v26, &v22);
    v12 = v23;
    if (v23 == v25)
    {
      return 1;
    }

    else
    {
      v14 = v22;
      v15 = v25 - 1;
      do
      {
        v16 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v14, v12) + 8) & 0xFFFFFFFFFFFFFFF8);
        v26 = v28;
        v27 = 0x100000000;
        v17 = 0;
        if (mlir::TypeConverter::convertType(this, v16, &v26) && v27 == 1)
        {
          v17 = *v26;
        }

        if (v26 != v28)
        {
          free(v26);
        }

        result = v17 == v16;
      }

      while (v17 == v16 && v15 != v12++);
    }
  }

  else
  {
    v7 = v19 + 32 * v20 + 24;
    while (1)
    {
      v8 = (*(*v7 + 8) & 0xFFFFFFFFFFFFFFF8);
      v22 = &v24;
      v23 = 0x100000000;
      v9 = 0;
      if (mlir::TypeConverter::convertType(this, v8, &v22) && v23 == 1)
      {
        v9 = *v22;
      }

      if (v22 != &v24)
      {
        free(v22);
      }

      if (v9 != v8)
      {
        return 0;
      }

      v7 += 32;
      if (!--v6)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t mlir::convertOpResultTypes(uint64_t a1, uint64_t a2, unint64_t a3, mlir::TypeConverter *a4, uint64_t a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 24);
  if (mlir::TypeConverter::isLegal(a4, a1))
  {
    v39[0] = "op already legal";
    v40 = 259;
    __src = v39;
    v11 = *(a5 + 16);
    if (v11 && mlir::RewriterBase::Listener::classof(v11))
    {
      (*(*v11 + 88))(v11, v10, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location &>(mlir::Location &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__src);
    }

    return 0;
  }

  else
  {
    mlir::OperationState::OperationState(v39, v10, *(a1 + 48));
    mlir::OperationState::addOperands(v39, a2, a3);
    __src = v38;
    v37 = 0x600000000;
    v13 = *(a1 + 36);
    v14 = a1 - 16;
    if (!v13)
    {
      v14 = 0;
    }

    v48 = v14;
    v49 = v13;
    mlir::ResultRange::getTypes(&v48, &AttrDictionary);
    NextResultAtOffset = AttrDictionary;
    v16 = v31;
    v17 = v32;
    if (v31)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v31);
    }

    mlir::ValueRange::ValueRange(&v48, NextResultAtOffset, v17 - v16);
    mlir::TypeRange::TypeRange(&v34, v48, v49);
    v18 = v35;
    if (v35)
    {
      v19 = 0;
      v20 = v34;
      while (1)
      {
        v21 = mlir::TypeRange::dereference_iterator(v20, v19);
        if (!mlir::TypeConverter::convertType(a4, v21, &__src))
        {
          break;
        }

        if (v18 == ++v19)
        {
          goto LABEL_14;
        }
      }

      AttrDictionary = "couldn't convert return types";
      v33 = 259;
      v48 = &AttrDictionary;
      v28 = *(a5 + 16);
      if (v28 && mlir::RewriterBase::Listener::classof(v28))
      {
        (*(*v28 + 88))(v28, v10, llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::Location &>(mlir::Location &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &v48);
      }

      v12 = 0;
    }

    else
    {
LABEL_14:
      v22 = v37;
      v23 = v42;
      if (v42 + v37 > v43)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v37)
      {
        memcpy((v41 + 8 * v42), __src, 8 * v37);
        v23 = v42;
      }

      v42 = v23 + v22;
      AttrDictionary = mlir::Operation::getAttrDictionary(a1);
      Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
      v26 = v24;
      v47 = 0;
      v27 = v45;
      if (v24 + v45 > v46)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v24)
      {
        memcpy((v44 + 16 * v45), Value, 16 * v24);
        v27 = v45;
      }

      v45 = v27 + v26;
      v12 = mlir::OpBuilder::create((a5 + 8), v39);
    }

    if (__src != v38)
    {
      free(__src);
    }

    mlir::OperationState::~OperationState(v39);
  }

  return v12;
}

void anonymous namespace::UnresolvedMaterializationRewrite::rollback(_anonymous_namespace_::UnresolvedMaterializationRewrite *this)
{
  v1 = *(this + 3);
  if ((*(this + 4) & 6) == 2 && (*(v1 + 46) & 0x80) != 0)
  {
    v2 = *(v1 + 68);
    if (v2)
    {
      v3 = *(this + 2);
      v4 = v3[15].i32[0];
      if (v4)
      {
        v5 = 0;
        v6 = *(v1 + 72);
        v7 = v3[13];
        v8 = v4 - 1;
        do
        {
          v9 = *(v6 + 32 * v5 + 24);
          v10 = 0x9DDFEA08EB382D69 * ((8 * v9 - 0xAE502812AA7333) ^ HIDWORD(v9));
          v11 = 0x9DDFEA08EB382D69 * (HIDWORD(v9) ^ (v10 >> 47) ^ v10);
          v12 = (-348639895 * ((v11 >> 47) ^ v11)) & v8;
          v13 = *(*&v7 + 16 * v12);
          if (v13 == v9)
          {
LABEL_7:
            *(*&v7 + 16 * v12) = -8192;
            v3[14] = vadd_s32(v3[14], 0x1FFFFFFFFLL);
          }

          else
          {
            v14 = 1;
            while (v13 != -4096)
            {
              v15 = v12 + v14++;
              v12 = v15 & v8;
              v13 = *(*&v7 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_7;
              }
            }
          }

          ++v5;
        }

        while (v5 != v2);
      }
    }
  }

  v16 = *(this + 2);
  v17 = v16[42].i32[0];
  if (v17)
  {
    v18 = v16[40];
    v19 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
    v20 = 0x9DDFEA08EB382D69 * (HIDWORD(v1) ^ (v19 >> 47) ^ v19);
    LODWORD(v19) = -348639895 * ((v20 >> 47) ^ v20);
    v21 = v17 - 1;
    v22 = v19 & (v17 - 1);
    v23 = *(*&v18 + 16 * v22);
    if (v23 == v1)
    {
LABEL_16:
      *(*&v18 + 16 * v22) = -8192;
      v16[41] = vadd_s32(v16[41], 0x1FFFFFFFFLL);
      v1 = *(this + 3);
    }

    else
    {
      v24 = 1;
      while (v23 != -4096)
      {
        v25 = v22 + v24++;
        v22 = v25 & v21;
        v23 = *(*&v18 + 16 * v22);
        if (v23 == v1)
        {
          goto LABEL_16;
        }
      }
    }
  }

  mlir::Operation::erase(v1);
}

uint64_t mlir::reconcileUnrealizedCasts(mlir::UnrealizedConversionCastOp *a1, mlir::UnrealizedConversionCastOp *a2, void *a3)
{
  ODSResultIndexAndLength = mlir::UnrealizedConversionCastOp::getODSResultIndexAndLength(a1, 0);
  v7 = ODSResultIndexAndLength;
  if (*(*a1 + 36))
  {
    NextResultAtOffset = *a1 - 16;
  }

  else
  {
    NextResultAtOffset = 0;
  }

  v9 = ODSResultIndexAndLength;
  if (ODSResultIndexAndLength)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
  }

  v10 = (HIDWORD(v7) + v7);
  v11 = v10 - v7;
  ODSOperandIndexAndLength = mlir::UnrealizedConversionCastOp::getODSOperandIndexAndLength(a2, 0);
  if ((*(*a2 + 46) & 0x80) != 0)
  {
    v13 = *(*a2 + 72);
  }

  else
  {
    v13 = 0;
  }

  if (v11 != (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength) - ODSOperandIndexAndLength)
  {
    return 0;
  }

  if (v10 != v9)
  {
    v14 = 0;
    v15 = (v13 + 32 * ODSOperandIndexAndLength + 24);
    while (mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v14) == *v15)
    {
      ++v14;
      v15 += 4;
      if (v11 == v14)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

LABEL_13:
  v16 = *a1;
  *a3 = *a1;
  if (v16)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void mlir::OpBuilder::create<mlir::UnrealizedConversionCastOp,mlir::Type &,mlir::ValueRange &>(llvm::formatv_object_base **a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "builtin.unrealized_conversion_cast";
  *(a2 + 24) = 34;
  *(a3 + 32) = 259;
  llvm::operator+(a2, a3, a1);
  llvm::report_fatal_error(a1, 1);
}

unint64_t getInsertionRegion(mlir::detail::DialectInterfaceCollectionBase *a1, mlir::Block *this)
{
  for (i = mlir::Block::getParent(this); i; i = mlir::Block::getParent(*(v4 + 16)))
  {
    v4 = *(i + 16);
    {
      v7 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v7, v8);
    }

    v5 = *(v4 + 48);
    if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      break;
    }

    if ((*(*v5 + 4))(v5, mlir::detail::TypeIDResolver<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      break;
    }

    if (!*(v4 + 16))
    {
      break;
    }

    InterfaceFor = mlir::detail::DialectInterfaceCollectionBase::getInterfaceFor(a1, v4);
    if (InterfaceFor)
    {
      if ((*(*InterfaceFor + 24))(InterfaceFor, i))
      {
        break;
      }
    }
  }

  return i;
}

uint64_t mlir::OperationFolder::getOrCreateConstant(int32x2_t *a1, mlir::Block *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  InsertionRegion = getInsertionRegion(&a1[7], a2);
  v9 = *(InsertionRegion + 8);
  if (v9)
  {
    v10 = (v9 - 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(*&v10 + 40);
  a1[17] = v10;
  a1[18] = v11;
  v12 = llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>,mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::DenseMap<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *,llvm::DenseMapInfo<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,void>,llvm::detail::DenseMapPair<std::tuple<mlir::Dialect *,mlir::Attribute,mlir::Type>,mlir::Operation *>>>>::operator[](&a1[1], &InsertionRegion);
  Constant = mlir::OperationFolder::tryGetOrCreateConstant(a1, v12, a3, a4, a5, *a1);
  if (Constant)
  {
    return Constant - 16;
  }

  else
  {
    return 0;
  }
}

void anonymous namespace::GreedyPatternRewriteDriver::notifyOperationErased(int32x2_t *this, mlir::Operation *a2)
{
  v4 = this[18];
  if (v4)
  {
    (*(**&v4 + 64))(v4, a2);
  }

  if ((*(a2 + 46) & 0x80) != 0)
  {
    v5 = *(a2 + 17);
    if (v5)
    {
      v6 = 0;
      v7 = *(a2 + 9);
      do
      {
        v29 = *(v7 + 32 * v6 + 24);
        if (v29)
        {
          DefiningOp = mlir::Value::getDefiningOp(&v29);
          if (DefiningOp)
          {
            v9 = *v29;
            if (*v29)
            {
              v10 = 0;
              do
              {
                v11 = v9[2];
                if (v11 == a2 || v11 == v10)
                {
                  v11 = v10;
                }

                else if (v10)
                {
                  goto LABEL_19;
                }

                v9 = *v9;
                v10 = v11;
              }

              while (v9);
            }
          }
        }

LABEL_19:
        ++v6;
      }

      while (v6 != v5);
    }
  }

  v13 = this[12].u32[0];
  v14 = a2 >> 4;
  if (v13)
  {
    v15 = this[10];
    v16 = (v13 - 1) & (v14 ^ (a2 >> 9));
    v17 = *(*&v15 + 16 * v16);
    if (v17 == a2)
    {
LABEL_22:
      if (v16 != v13)
      {
        v18 = *&v15 + 16 * v16;
        *(*&this[7] + 8 * *(v18 + 8)) = 0;
        *v18 = -8192;
        this[11] = vadd_s32(this[11], 0x1FFFFFFFFLL);
      }
    }

    else
    {
      v25 = 1;
      while (v17 != -4096)
      {
        v26 = v16 + v25++;
        v16 = v26 & (v13 - 1);
        v17 = *(*&v15 + 16 * v16);
        if (v17 == a2)
        {
          goto LABEL_22;
        }
      }
    }
  }

  if (this[17].i32[0])
  {
    if (this[19].i8[0])
    {
      v20 = this + 20;
      v19 = 4;
    }

    else
    {
      v19 = this[21].i32[0];
      if (!v19)
      {
        return;
      }

      v20 = this[20];
    }

    v21 = v19 - 1;
    v22 = v21 & (v14 ^ (a2 >> 9));
    v23 = v20[v22];
    if (v23 == a2)
    {
LABEL_30:
      v20[v22] = -8192;
      v24 = this[19].i32[1] + 1;
      this[19].i32[0] -= 2;
      this[19].i32[1] = v24;
    }

    else
    {
      v27 = 1;
      while (v23 != -4096)
      {
        v28 = v22 + v27++;
        v22 = v28 & v21;
        v23 = v20[v22];
        if (v23 == a2)
        {
          goto LABEL_30;
        }
      }
    }
  }
}

void anonymous namespace::MultiOpPatternRewriteDriver::notifyOperationErased(int32x2_t *this, mlir::Operation *a2)
{
  v4 = this[32];
  if (v4)
  {
    v5 = *&v4 + 8;
    if (**&v4)
    {
      v6 = 4;
    }

    else
    {
      v6 = *(*&v4 + 16);
      if (!v6)
      {
        return;
      }

      v5 = *(*&v4 + 8);
    }

    v7 = v6 - 1;
    v8 = (v6 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v5 + 8 * v8);
    if (v9 == a2)
    {
LABEL_7:
      *(v5 + 8 * v8) = -8192;
      v10 = *(*&v4 + 4) + 1;
      **&v4 -= 2;
      *(*&v4 + 4) = v10;
    }

    else
    {
      v11 = 1;
      while (v9 != -4096)
      {
        v12 = v8 + v11++;
        v8 = v12 & v7;
        v9 = *(v5 + 8 * v8);
        if (v9 == a2)
        {
          goto LABEL_7;
        }
      }
    }
  }
}

void anonymous namespace::GreedyPatternRewriteDriver::processWorklist()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

uint64_t **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<remapInlinedOperands(llvm::iterator_range<llvm::ilist_iterator<llvm::ilist_detail::node_options<mlir::Block,false,false,void,false,void>,false,false>>,mlir::IRMapping &)::$_0>(uint64_t **result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = *(*result + 4);
      if (v3)
      {
        v4 = *(a2 + 72);
        v5 = &v4[4 * v2];
        v6 = **result;
        v7 = v3 - 1;
        do
        {
          v8 = v4[3];
          v9 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
          v10 = 0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9);
          v11 = (-348639895 * ((v10 >> 47) ^ v10)) & v7;
          result = *(v6 + 16 * v11);
          if (result == v8)
          {
LABEL_6:
            if (v11 != v3)
            {
              v12 = *(v6 + 16 * v11 + 8);
              if (v12)
              {
                v13 = v4[1];
                if (v13)
                {
                  result = *v4;
                  *v13 = *v4;
                  if (result)
                  {
                    result[1] = v13;
                  }
                }

                v4[3] = v12;
                v14 = *v12;
                *v4 = *v12;
                v4[1] = v12;
                if (v14)
                {
                  *(v14 + 8) = v4;
                }

                *v12 = v4;
              }
            }
          }

          else
          {
            v15 = 1;
            while (result != -4096)
            {
              v16 = v11 + v15++;
              v11 = v16 & v7;
              result = *(v6 + 16 * v11);
              if (result == v8)
              {
                goto LABEL_6;
              }
            }
          }

          v4 += 4;
        }

        while (v4 != v5);
      }
    }
  }

  return result;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<canBeHoisted(mlir::Operation *,llvm::function_ref<BOOL ()(mlir::OpOperand &)>)::$_0>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) == 0)
  {
    return 1;
  }

  v2 = *(a2 + 68);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 72);
  v5 = 32 * v2;
  while (1)
  {
    v6 = **a1;
    v9 = *(v4 + 24);
    v7 = *(mlir::Value::getParentRegion(&v9) + 2);
    if (v6 != v7 && (mlir::Operation::isProperAncestor(v6, v7) & 1) == 0)
    {
      result = (**(a1 + 8))(*(*(a1 + 8) + 8), v4);
      if (!result)
      {
        break;
      }
    }

    v4 += 32;
    v5 -= 32;
    if (!v5)
    {
      return 1;
    }
  }

  return result;
}

void mlir::moveLoopInvariantCode()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_81_0(v2);
  }
}

void mlir::OpInterface<mlir::SubsetOpInterface,mlir::detail::SubsetOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SubsetOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SubsetOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::SubsetExtractionOpInterface,mlir::detail::SubsetExtractionOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SubsetExtractionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SubsetExtractionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetExtractionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::SubsetInsertionOpInterface,mlir::detail::SubsetInsertionOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::SubsetInsertionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::SubsetInsertionOpInterface>();
    mlir::detail::TypeIDResolver<mlir::SubsetInsertionOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpInterface<mlir::DestinationStyleOpInterface,mlir::detail::DestinationStyleOpInterfaceInterfaceTraits>::getInterfaceFor()
{
  {
    v0 = llvm::getTypeName<mlir::DestinationStyleOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::DestinationStyleOpInterface>();
    mlir::detail::TypeIDResolver<mlir::DestinationStyleOpInterface,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void getCastKindName()
{
  v1 = *MEMORY[0x277D85DE8];
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    memcpy(v0, &unk_279839D80, sizeof(v0));
    __cxa_guard_release(&_MergedGlobals_0);
  }
}

mlir::Block **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::visitUsedValuesDefinedAbove(mlir::Region &,mlir::Region &,llvm::function_ref<void ()(mlir::OpOperand *)>)::$_0>(mlir::Block **result, uint64_t a2)
{
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v2 = *(a2 + 68);
    if (v2)
    {
      v3 = result;
      v4 = *(a2 + 72);
      v5 = v4 + 32 * v2;
      do
      {
        v6 = v3[2];
        v14 = *(v4 + 24);
        ParentRegion = mlir::Value::getParentRegion(&v14);
        result = *v6;
        v8 = *(v6 + 1);
        if (v8 == *v6)
        {
          v11 = *(v6 + 5);
          if (v11)
          {
            v12 = 8 * v11;
            while (*result != ParentRegion)
            {
              ++result;
              v12 -= 8;
              if (!v12)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            result = &v8[v11];
          }

          v9 = *(v6 + 1);
        }

        else
        {
          result = llvm::SmallPtrSetImplBase::doFind(v6, ParentRegion);
          v8 = *v6;
          v9 = *(v6 + 1);
          if (!result)
          {
            if (v9 == v8)
            {
              v10 = 20;
            }

            else
            {
              v10 = 16;
            }

            result = &v9[*(v6 + v10)];
          }
        }

        if (v9 == v8)
        {
          v13 = 20;
        }

        else
        {
          v13 = 16;
        }

        if (result != &v9[*(v6 + v13)])
        {
          result = (*v3)(v3[1], v4);
        }

        v4 += 32;
      }

      while (v4 != v5);
    }
  }

  return result;
}

void anonymous namespace::ByteCodeExecutor::execute()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedResultSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedResultSegments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>>();
    mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

unsigned int *anonymous namespace::ByteCodeExecutor::execute(unsigned int *result, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = *result;
  v7 = *(a2 + 8);
  v5 = a2 + 8;
  v6 = v7;
  *a3 = v5;
  v8 = *a4;
  v9 = *(*a4 + 8 * *(v5 - 2));
  *a3 = v5 + 2;
  if ((*(v9 + 46) & 0x80) != 0 && *(v9 + 68) > v4)
  {
    v10 = *(*(v9 + 72) + 32 * v4 + 24);
  }

  else
  {
    v10 = 0;
  }

  *(v8 + 8 * v6) = v10;
  return result;
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, double a3, int32x4_t a4)
{
  v23 = a1;
  ODSOperandIndexAndLength = mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(&v23, 0, a3, a4);
  v8 = *(*(v23 + 72) + 32 * ODSOperandIndexAndLength + 24);
  v9 = *(a2 + 24);
  OUTLINED_FUNCTION_1_0();
  if (!v12 & v11)
  {
    OUTLINED_FUNCTION_2_1();
  }

  *(*v9 + 2 * v10) = 40;
  ++v9[1];
  v13 = *(a2 + 32);
  v22 = v8;
  v14 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v13, &v22);
  OUTLINED_FUNCTION_1_0();
  if (!v12 & v11)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_0_2(v15);
  mlir::pdl_interp::ReplaceOp::getODSOperandIndexAndLength(&v23, 1u, v16, v17);
  if ((*(v23 + 46) & 0x80) != 0)
  {
    v18 = *(v23 + 72);
  }

  else
  {
    v18 = 0;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_0();
  if (!v12 & v11)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_0_2(v19);
  if (v5 != v4)
  {
    v20 = (v18 + 32 * v4 + 24);
    do
    {
      v21 = *v20;
      v20 += 4;
      --v14;
    }

    while (v14);
  }
}

void anonymous namespace::Generator::generate(mlir::pdl_interp::CreateOperationOp *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  mlir::pdl_interp::CreateOperationOp::getODSOperandIndexAndLength(a1, 2u);
  if ((*(*v6 + 46) & 0x80) != 0)
  {
    v7 = *(*v6 + 72);
  }

  else
  {
    v7 = 0;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_1_0();
  if (!v10 & v9)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_0_2(v8);
  if (v4 != v3)
  {
    v11 = (v7 + 32 * v3 + 24);
    do
    {
      v12 = *v11;
      v11 += 4;
      v6 = (v6 - 1);
    }

    while (v6);
  }
}

void mlir::OpBuilder::create<mlir::pdl_interp::FuncOp,llvm::StringRef,mlir::FunctionType,std::nullopt_t const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.func";
  *(a2 + 24) = 15;
}

void mlir::OpBuilder::create<mlir::ModuleOp,llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "builtin.module";
  *(a2 + 24) = 14;
}

void anonymous namespace::PatternLowering::generateMatcher()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ExitNode>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ExitNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::BoolNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SwitchNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateUniquer::PredicateUniquer()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributePosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ForEachPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ForEachPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UsersPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UsersPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::FalseAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::FalseAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TrueAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationPosition,decltype(nullptr),int>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::OpBuilder::create<mlir::pdl_interp::FinalizeOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.finalize";
  *(a2 + 24) = 19;
}

void llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void llvm::detail::TypeSwitchBase<llvm::TypeSwitch<mlir::pdl_to_pdl_interp::MatcherNode *,void>,mlir::pdl_to_pdl_interp::MatcherNode *>::Case<anonymous namespace::PatternLowering::generateMatcher(mlir::pdl_to_pdl_interp::MatcherNode&,mlir::Region &,mlir::Block *)::$_1>(uint64_t *a1, mlir::Operation **a2, llvm::Twine *a3)
{
  v4 = *a2;
  *(a3 + 16) = 257;
  mlir::Operation::emitOpError(a1, v4, a3);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(a1, "unable to infer result type for operation");
  mlir::InFlightDiagnostic::~InFlightDiagnostic(a1);
  __break(1u);
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetDefiningOpOp,mlir::pdl::OperationType,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_defining_op";
  *(a2 + 24) = 26;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ExtractOp,mlir::Value &,int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.extract";
  *(a2 + 24) = 18;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetUsersOp,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_users";
  *(a2 + 24) = 20;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ForEachOp,mlir::Value &,mlir::Block *&,BOOL>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.foreach";
  *(a2 + 24) = 18;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ContinueOp>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.continue";
  *(a2 + 24) = 19;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetOperandOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_operand";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetOperandsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_operands";
  *(a2 + 24) = 23;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeOp,mlir::pdl::AttributeType,mlir::Value &,llvm::StringRef>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_attribute";
  *(a2 + 24) = 24;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetAttributeTypeOp,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_attribute_type";
  *(a2 + 24) = 29;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetValueTypeOp,mlir::Value &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_value_type";
  *(a2 + 24) = 25;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetResultOp,mlir::pdl::ValueType,mlir::Value &,unsigned int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_result";
  *(a2 + 24) = 21;
}

void mlir::OpBuilder::create<mlir::pdl_interp::GetResultsOp,mlir::Type,mlir::Value &,std::optional<unsigned int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.get_results";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CreateAttributeOp,mlir::Attribute const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.create_attribute";
  *(a2 + 24) = 27;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CreateTypeOp,mlir::TypeAttr &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.create_type";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CreateTypesOp,mlir::ArrayAttr>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.create_types";
  *(a2 + 24) = 23;
}

void mlir::OpBuilder::create<mlir::pdl_interp::IsNotNullOp,mlir::Value &,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.is_not_null";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckOperationNameOp,mlir::Value &,llvm::StringRef,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_operation_name";
  *(a2 + 24) = 31;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypesOp,mlir::Value &,mlir::ArrayAttr,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_types";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckTypeOp,mlir::Value &,mlir::TypeAttr,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_type";
  *(a2 + 24) = 21;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckAttributeOp,mlir::Value &,mlir::Attribute const&,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_attribute";
  *(a2 + 24) = 26;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckOperandCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_operand_count";
  *(a2 + 24) = 30;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CheckResultCountOp,mlir::Value &,unsigned int const&,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.check_result_count";
  *(a2 + 24) = 29;
}

void mlir::OpBuilder::create<mlir::pdl_interp::AreEqualOp,mlir::Value &,mlir::Value &,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.are_equal";
  *(a2 + 24) = 20;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ApplyConstraintOp,llvm::ArrayRef<mlir::Type>,llvm::StringRef,llvm::SmallVector<mlir::Value,6u> &,BOOL,mlir::Block *&,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.apply_constraint";
  *(a2 + 24) = 27;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperandCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_operand_count";
  *(a2 + 24) = 31;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchResultCountOp,mlir::Value &,std::vector<int> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_result_count";
  *(a2 + 24) = 30;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchOperationNameOp,mlir::Value &,std::vector<mlir::OperationName> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_operation_name";
  *(a2 + 24) = 32;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypesOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_types";
  *(a2 + 24) = 23;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchTypeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_type";
  *(a2 + 24) = 22;
}

void mlir::OpBuilder::create<mlir::pdl_interp::SwitchAttributeOp,mlir::Value &,std::vector<mlir::Attribute> &,mlir::Block *&,std::vector<mlir::Block *> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.switch_attribute";
  *(a2 + 24) = 27;
}

void mlir::OpBuilder::create<mlir::pdl_interp::RecordMatchOp,std::vector<mlir::Value> &,llvm::ArrayRef<mlir::Value>,mlir::SymbolRefAttr &,mlir::StringAttr &,mlir::ArrayAttr &,mlir::IntegerAttr,mlir::Block *&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.record_match";
  *(a2 + 24) = 23;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ApplyRewriteOp,mlir::TypeRange,mlir::StringAttr &,llvm::SmallVector<mlir::Value,6u> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.apply_rewrite";
  *(a2 + 24) = 24;
}

void mlir::OpBuilder::create<mlir::pdl_interp::EraseOp,mlir::Value>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.erase";
  *(a2 + 24) = 16;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CreateOperationOp,llvm::StringRef,llvm::SmallVector<mlir::Value,2u> &,BOOL &,llvm::SmallVector<mlir::Value,4u> &,llvm::SmallVector<mlir::Value,4u> &,mlir::ArrayAttr>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.create_operation";
  *(a2 + 24) = 27;
}

void mlir::OpBuilder::create<mlir::pdl_interp::CreateRangeOp,mlir::pdl::RangeType,llvm::SmallVector<mlir::Value,4u> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.create_range";
  *(a2 + 24) = 23;
}

void mlir::OpBuilder::create<mlir::pdl_interp::ReplaceOp,mlir::Value,llvm::SmallVector<mlir::Value,4u> &>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 32) = 1283;
  *(a2 + 16) = "pdl_interp.replace";
  *(a2 + 24) = 18;
}

void buildPredicateList(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v156 = *MEMORY[0x277D85DE8];
  v129 = a1;
  v150 = a1;
  v8 = a1[10];
  v7 = a1[11];
  v148 = 0;
  v147 = 0;
  v149 = 0;
  mlir::Region::getOps<mlir::pdl::OperationOp>((((&a1[4 * ((v7 >> 23) & 1) + 17] + ((v7 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v8), &v151);
  v143 = v151;
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v9 = v155;
  v10 = v152;
  v110 = a3;
  v111 = a4;
  v114 = a2;
  if (v152 == v155)
  {
LABEL_60:
    *&v151 = mlir::pdl::PatternOp::getRewriter(&v150);
    mlir::pdl::RewriteOp::getODSOperandIndexAndLength(&v151, 0);
    OUTLINED_FUNCTION_35_2();
    if (v54 != v53)
    {
      OUTLINED_FUNCTION_18_0();
      if (*(v55 + 24))
      {
        if (v149)
        {
          OUTLINED_FUNCTION_10_2();
          OUTLINED_FUNCTION_1_1();
          v59 = (v57 - 1) & v58;
          v60 = *(v56 + 8 * v59);
          if (v61 == v60)
          {
LABEL_64:
            *(v56 + 8 * v59) = -8192;
            v148 = vadd_s32(v148, 0x1FFFFFFFFLL);
          }

          else
          {
            while (v60 != -4096)
            {
              OUTLINED_FUNCTION_28_1();
              v60 = *(v56 + 8 * v59);
              if (v86 == v60)
              {
                goto LABEL_64;
              }
            }
          }
        }
      }
    }

    v88 = &v140;
    v138 = &v140;
    v139 = 0x600000000;
    OUTLINED_FUNCTION_39_0();
    mlir::Region::getOps<mlir::pdl::OperationOp>((v62 + 32 * v63), &v151);
    v143 = v151;
    v144 = v152;
    v145 = v153;
    v146 = v154;
    v64 = v155;
LABEL_66:
    v65 = v144;
    while (1)
    {
      if (v65 == v64)
      {
        llvm::deallocate_buffer(v147, (8 * v149));
      }

      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v65);
      v67 = (*(&v146 + 1))(ValuePtr) - 16;
      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_5_1();
      if (v68)
      {
        OUTLINED_FUNCTION_33_1();
        v72 = (v70 * v71) & (v69 - 1);
        v74 = *(v73 + 8 * v72);
        if (v67 == v74)
        {
LABEL_70:
          if (v72 != v69)
          {
            goto LABEL_73;
          }
        }

        else
        {
          while (v74 != -4096)
          {
            OUTLINED_FUNCTION_28_1();
            v74 = *(v85 + 8 * v72);
            if (v67 == v74)
            {
              goto LABEL_70;
            }
          }
        }
      }

      if (v139 >= HIDWORD(v139))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v138 + v139) = v67;
      LODWORD(v139) = v139 + 1;
LABEL_73:
      while (1)
      {
        v75 = mlir::Region::OpIterator::operator++(&v143);
        v65 = OUTLINED_FUNCTION_37_1(v75, v76, v77, v78, v79, v80, v81, v82, v88, __p, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (v24)
        {
          break;
        }

        v83 = v146;
        v84 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v65);
        if (v83(v84))
        {
          goto LABEL_66;
        }
      }
    }
  }

  while (1)
  {
    v11 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
    v138 = (*(&v146 + 1))(v11);
    mlir::pdl::OperationOp::getODSOperandIndexAndLength(&v138, 0);
    OUTLINED_FUNCTION_35_2();
    v15 = v14 - v12;
    if (v14 != v12)
    {
      break;
    }

LABEL_3:
    v16 = mlir::Region::OpIterator::operator++(&v143);
    OUTLINED_FUNCTION_37_1(v16, v17, v18, v19, v20, v21, v22, v23, v87, __p, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
    if (v24)
    {
      OUTLINED_FUNCTION_48_0();
    }

    else
    {
      OUTLINED_FUNCTION_48_0();
      while (1)
      {
        v25 = v146;
        v26 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v10);
        if (v25(v26))
        {
          break;
        }

        v27 = mlir::Region::OpIterator::operator++(&v143);
        v10 = OUTLINED_FUNCTION_37_1(v27, v28, v29, v30, v31, v32, v33, v34, v87, __p, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (v24)
        {
          goto LABEL_59;
        }
      }

      v10 = v144;
    }

LABEL_59:
    if (v10 == v9)
    {
      goto LABEL_60;
    }
  }

  v35 = 0;
  v36 = v13 + 32 * v12;
  while (1)
  {
    v130 = *(v36 + 32 * v35 + 24);
    mlir::Value::getDefiningOp(&v130);
    OUTLINED_FUNCTION_47_0();
    if (v38 && v37 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultOp,void>::id)
    {
      OUTLINED_FUNCTION_40_1();
      if (!v39)
      {
        goto LABEL_25;
      }

      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_13_0();
      if (!v24)
      {
        OUTLINED_FUNCTION_44_1();
        while (v40 != -4096)
        {
          OUTLINED_FUNCTION_13_0();
          if (v24)
          {
            goto LABEL_34;
          }
        }

LABEL_25:
        OUTLINED_FUNCTION_31_1();
        if (v44)
        {
          v45 = 2 * v43;
        }

        else
        {
          OUTLINED_FUNCTION_30_1();
          if (!v24 & v44)
          {
            goto LABEL_31;
          }
        }

        llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(&v147, v45);
        if (v149)
        {
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_2_2();
          OUTLINED_FUNCTION_27_2();
          if (!v24)
          {
            OUTLINED_FUNCTION_50_1();
            while (v51 != -4096)
            {
              OUTLINED_FUNCTION_25_1();
              OUTLINED_FUNCTION_27_2();
              if (v24)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_54;
          }

          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else if (v37 == &mlir::detail::TypeIDResolver<mlir::pdl::ResultsOp,void>::id)
    {
      OUTLINED_FUNCTION_40_1();
      if (!v41)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_14_2();
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_13_0();
      if (!v24)
      {
        OUTLINED_FUNCTION_44_1();
        while (v42 != -4096)
        {
          OUTLINED_FUNCTION_13_0();
          if (v24)
          {
            goto LABEL_34;
          }
        }

LABEL_28:
        OUTLINED_FUNCTION_31_1();
        if (v44)
        {
          v49 = 2 * v48;
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_30_1();
        if (!v24 & v44)
        {
          goto LABEL_31;
        }

LABEL_46:
        llvm::DenseMap<mlir::Value,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseSetPair<mlir::Value>>::grow(&v147, v49);
        if (v149)
        {
          OUTLINED_FUNCTION_15_0();
          OUTLINED_FUNCTION_2_2();
          OUTLINED_FUNCTION_27_2();
          if (!v24)
          {
            OUTLINED_FUNCTION_50_1();
            while (v52 != -4096)
            {
              OUTLINED_FUNCTION_25_1();
              OUTLINED_FUNCTION_27_2();
              if (v24)
              {
                goto LABEL_53;
              }
            }

LABEL_54:
            if (v50)
            {
              v46 = v50;
            }
          }

LABEL_53:
          v47 = v148.i32[0];
LABEL_31:
          v148.i32[0] = v47 + 1;
          if (*v46 != -4096)
          {
            --v148.i32[1];
          }

          *v46 = a2;
          goto LABEL_34;
        }

LABEL_52:
        v46 = 0;
        goto LABEL_53;
      }
    }

LABEL_34:
    if (++v35 == v15)
    {
      goto LABEL_3;
    }
  }
}

void mlir::pdl_to_pdl_interp::MatcherNode::generateMatcherTree()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_52_1(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SuccessNode>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::SuccessNode,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void foldSwitchToBool()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::SwitchNode>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_52_1(v2);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::BoolNode>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_51_1(v2);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getEqualTo()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_41_1(v2);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::EqualToQuestion,mlir::pdl_to_pdl_interp::Position *&>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::EqualToQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::EqualToQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getIsNotNull()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::IsNotNullQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::IsNotNullQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TrueAnswer>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_41_1(v2);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getAttributeConstraint()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypePosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypePosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeAnswer,mlir::Attribute &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getOperationName()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCountAtLeast()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getOperandCount()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandCountQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCount()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getResultCountAtLeast()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultCountAtLeastQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperationNameAnswer,mlir::OperationName>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperationNameAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperationNameAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::UnsignedAnswer,unsigned int &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::UnsignedAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::UnsignedAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandGroupPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::OperandPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::OperandPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::OperandPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultGroupPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,std::optional<unsigned int> &,BOOL &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultGroupPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultGroupPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ResultPosition,mlir::pdl_to_pdl_interp::OperationPosition *&,unsigned int &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ResultPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ResultPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::pdl_to_pdl_interp::PredicateBuilder::getTypeConstraint()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeAnswer,mlir::Attribute &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeAnswer>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeAnswer,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void llvm::TypeSwitch<mlir::Operation *,void>::Case<mlir::pdl::OperandsOp,getOperandTreePredicates(std::vector<mlir::pdl_to_pdl_interp::PositionalPredicate> &,mlir::Value,mlir::pdl_to_pdl_interp::PredicateBuilder &,llvm::DenseMap<mlir::Value,mlir::pdl_to_pdl_interp::Position *,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::pdl_to_pdl_interp::Position *>> &,mlir::pdl_to_pdl_interp::Position *)::$_0 &>(mlir::pdl::OperandsOp *a1, _BYTE *a2, void *a3)
{
  mlir::pdl::OperandsOp::getODSOperandIndexAndLength(a1, 0);
  OUTLINED_FUNCTION_35_2();
  if (v6 != v5)
  {
    OUTLINED_FUNCTION_18_0();
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = a3[2];
      v10 = a3[3];
      v11 = a3[1];
      OUTLINED_FUNCTION_28();
      v16 = mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypePosition,mlir::pdl_to_pdl_interp::Position *&>(v12, v13, v14, v15);
      getTreePredicates(v11, v8, v9, v10, v16);
    }
  }

  *a2 = 1;
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,mlir::Attribute &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::AttributeLiteralPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::AttributeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::ConstraintQuestion,std::tuple<llvm::StringRef,llvm::ArrayRef<mlir::pdl_to_pdl_interp::Position *>,llvm::ArrayRef<mlir::Type>,BOOL>>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::ConstraintQuestion>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::ConstraintQuestion,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::StorageUniquer::get<mlir::pdl_to_pdl_interp::TypeLiteralPosition,mlir::Attribute &>()
{
  {
    v0 = llvm::getTypeName<mlir::pdl_to_pdl_interp::TypeLiteralPosition>();
    mlir::detail::TypeIDResolver<mlir::pdl_to_pdl_interp::TypeLiteralPosition,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void anonymous namespace::IRPrinterInstrumentation::runBeforePass()
{
  {
    v0 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
    mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

void mlir::Pass::printAsTextualPipeline()
{
  {
    v0 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_0_4(v2);
  }
}

void mlir::detail::OpPassManagerImpl::canScheduleOn()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_1_2(v2);
  }
}

void mlir::OpPassManager::hash()
{
  {
    v0 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_0_4(v2);
  }
}

void mlir::detail::OpToOpPassAdaptor::run()
{
  {
    v0 = llvm::getTypeName<mlir::OpTrait::IsIsolatedFromAbove<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsIsolatedFromAbove>(void)::Empty>>();
    v2 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
    OUTLINED_FUNCTION_1_2(v2);
  }
}

void mlir::detail::RecoveryReproducerContext::enable()
{
  {
    llvm::sys::AddSignalHandler(mlir::detail::RecoveryReproducerContext::crashHandler, 0, v0);
  }
}

void anonymous namespace::PassTiming::runBeforePass()
{
  {
    v0 = llvm::getTypeName<mlir::detail::OpToOpPassAdaptor>();
    mlir::detail::TypeIDResolver<mlir::detail::OpToOpPassAdaptor,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v0, v1);
  }
}

BOOL mlir::pdl_interp::CreateRangeOp::verify(mlir::Operation **this)
{
  v55 = *MEMORY[0x277D85DE8];
  v42 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::pdl::RangeType::getElementType(&v42);
  v3 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v4 = *(v3 + 9);
    v5 = *(v3 + 17);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v42 = v4;
  v43 = v5;
  mlir::OperandRange::getTypes(&v42, &v36);
  v6 = v39 - v37;
  if (v39 == v37)
  {
    return 1;
  }

  for (i = v36 + 32 * v37 + 24; ; i += 32)
  {
    RangeElementTypeOrSelf = mlir::pdl::getRangeElementTypeOrSelf((*(*i + 8) & 0xFFFFFFFFFFFFFFF8));
    if (RangeElementTypeOrSelf != ElementType)
    {
      break;
    }

    if (!--v6)
    {
      return 1;
    }
  }

  v11 = RangeElementTypeOrSelf;
  v31 = "expected operand to have element type ";
  LOWORD(v35) = 259;
  mlir::OpState::emitOpError(this, &v31, &v42);
  if (v42)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v40, ElementType);
    if (v46 >= v47)
    {
      OUTLINED_FUNCTION_10();
      if (v26 > &v40 || (v25 & 1) == 0)
      {
        OUTLINED_FUNCTION_33();
      }

      OUTLINED_FUNCTION_33();
    }

    OUTLINED_FUNCTION_59_1(v45, v29, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46);
    v13 = v12 + 1;
    v46 = v13;
    if (v42)
    {
      LODWORD(v40) = 3;
      *(&v40 + 1) = ", but got ";
      v41 = 10;
      if (v13 >= v47)
      {
        if (v45 > &v40 || v45 + 24 * v13 <= &v40)
        {
          OUTLINED_FUNCTION_108_0();
        }

        OUTLINED_FUNCTION_108_0();
      }

      v14 = v45 + 24 * v46;
      v15 = v40;
      *(v14 + 2) = v41;
      *v14 = v15;
      ++v46;
      if (v42)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v40, v11);
        if (v46 >= v47)
        {
          OUTLINED_FUNCTION_10();
          if (v28 > &v40 || (v27 & 1) == 0)
          {
            OUTLINED_FUNCTION_33();
          }

          OUTLINED_FUNCTION_33();
        }

        OUTLINED_FUNCTION_59_1(v45, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46);
        v46 = v16 + 1;
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
  if (v42)
  {
    mlir::InFlightDiagnostic::report(&v42);
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v52;
      v19 = __p;
      if (v52 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v52 = v17;
      operator delete(v19);
    }

    v20 = v49;
    if (v49)
    {
      v21 = v50;
      v22 = v49;
      if (v50 != v49)
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
        v22 = v49;
      }

      v50 = v20;
      operator delete(v22);
    }

    if (v45 != &v48)
    {
      free(v45);
    }
  }

  return v9;
}

uint64_t mlir::pdl_interp::ApplyConstraintOpAdaptor::ApplyConstraintOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

unint64_t mlir::pdl_interp::ApplyConstraintOp::getODSOperandIndexAndLength(mlir::pdl_interp::ApplyConstraintOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::pdl_interp::ApplyConstraintOp::getArgsMutable@<X0>(mlir::pdl_interp::ApplyConstraintOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
  }

  else
  {
    v3 = 0;
  }

  return OUTLINED_FUNCTION_4(a2, v2, 0, v3);
}

uint64_t mlir::pdl_interp::ApplyRewriteOpAdaptor::ApplyRewriteOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

unint64_t mlir::pdl_interp::ApplyRewriteOp::getODSOperandIndexAndLength(mlir::pdl_interp::ApplyRewriteOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::pdl_interp::ApplyRewriteOp::getArgsMutable@<X0>(mlir::pdl_interp::ApplyRewriteOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
  }

  else
  {
    v3 = 0;
  }

  return OUTLINED_FUNCTION_4(a2, v2, 0, v3);
}

uint64_t mlir::pdl_interp::AreEqualOpAdaptor::AreEqualOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::pdl_interp::BranchOpAdaptor::BranchOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::pdl_interp::CheckAttributeOpAdaptor::CheckAttributeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::CheckOperandCountOpAdaptor::CheckOperandCountOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

uint64_t mlir::pdl_interp::CheckOperationNameOpAdaptor::CheckOperationNameOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::CheckResultCountOpAdaptor::CheckResultCountOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 40), v6, v7);
  OUTLINED_FUNCTION_47();
  return v0;
}

uint64_t mlir::pdl_interp::CheckTypeOpAdaptor::CheckTypeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::CheckTypesOpAdaptor::CheckTypesOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::ContinueOpAdaptor::ContinueOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

uint64_t mlir::pdl_interp::CreateAttributeOpAdaptor::CreateAttributeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::CreateOperationOpAdaptor::CreateOperationOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9_3(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 64), v6, v7);
  OUTLINED_FUNCTION_97_0();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v9, v2, v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9_3(v4);
  if (v5)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 64), v6, v7);
  OUTLINED_FUNCTION_97_0();
  return v0;
}

uint64_t mlir::pdl_interp::CreateOperationOp::getODSOperands(mlir::pdl_interp::CreateOperationOp *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(*this + 44);
  v4 = (v3 >> 23) & 1;
  if (!a2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  if (a2 > 7)
  {
    v5 = a2 & 0xFFFFFFF8;
    v8 = (*this + 16 * v4 + 104);
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
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v12 = a2 - v5;
  v13 = (16 * v4 + 4 * v5 + v2 + 88);
  do
  {
    v14 = *v13++;
    v6 += v14;
    --v12;
  }

  while (v12);
LABEL_10:
  v7 = v6;
LABEL_11:
  if ((v3 & 0x800000) != 0)
  {
    v15 = *(v2 + 72);
  }

  else
  {
    v15 = 0;
  }

  return v15 + 32 * v7;
}

void mlir::pdl_interp::CreateOperationOp::print(mlir::pdl_interp::CreateOperationOp *this, mlir::OpAsmPrinter *a2)
{
  v145 = *MEMORY[0x277D85DE8];
  (*(*a2 + 16))(a2);
  OUTLINED_FUNCTION_53();
  if (v7)
  {
    llvm::raw_ostream::write(v5, 32);
  }

  else
  {
    OUTLINED_FUNCTION_13(v5, v6);
  }

  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_42();
  (*(v8 + 48))(a2);
  OUTLINED_FUNCTION_13_1();
  if (*(v9 + 88))
  {
    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_54();
    if (v12)
    {
      llvm::raw_ostream::write(v10, "(", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v10, v11);
    }

    v13 = *(*this + 44);
    v14 = *(*this + 16 * ((v13 >> 23) & 1) + 88);
    if ((v13 & 0x800000) != 0)
    {
      v15 = *(*this + 72);
    }

    else
    {
      v15 = 0;
    }

    (*(*a2 + 16))(a2);
    if (v14)
    {
      OUTLINED_FUNCTION_24();
      (*(v16 + 160))(a2);
      if (v14 != 1)
      {
        v17 = v14 - 1;
        v18 = v15 + 56;
        do
        {
          OUTLINED_FUNCTION_44();
          if (!v12 & v7)
          {
            *v19 = 8236;
            *(v2 + 32) += 2;
          }

          else
          {
            v20 = OUTLINED_FUNCTION_42_2();
            llvm::raw_ostream::write(v20, v21, 2uLL);
          }

          v18 += 32;
          OUTLINED_FUNCTION_42();
          (*(v22 + 160))(a2);
          --v17;
        }

        while (v17);
      }
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_53();
    if (v7)
    {
      llvm::raw_ostream::write(v23, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v23, v24);
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_54();
    if (v12)
    {
      llvm::raw_ostream::write(v25, ":", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v25, v26);
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_53();
    if (v7)
    {
      llvm::raw_ostream::write(v27, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v27, v28);
    }

    OUTLINED_FUNCTION_73_1();
    v31 = *(v30 + 88);
    if ((v32 & 0x800000) != 0)
    {
      v33 = *(v29 + 72);
    }

    else
    {
      v33 = 0;
    }

    v143 = v33;
    v144 = v31;
    mlir::OperandRange::getTypes(&v143, &v135);
    v34 = v136;
    v35 = v138;
    if (v136 != v138)
    {
      v36 = v135 + 32 * v136;
      OUTLINED_FUNCTION_14_3();
      v37 = OUTLINED_FUNCTION_97();
      v38(v37);
      if (v34 + 1 != v35)
      {
        v39 = ~v34 + v35;
        v40 = v36 + 56;
        do
        {
          (*(*a2 + 16))(a2);
          OUTLINED_FUNCTION_10_3();
          if (!v12 & v7)
          {
            *v42 = 8236;
            OUTLINED_FUNCTION_52(v41);
          }

          else
          {
            OUTLINED_FUNCTION_96_0(v41);
          }

          v40 += 32;
          OUTLINED_FUNCTION_14_3();
          v43 = OUTLINED_FUNCTION_97();
          v44(v43);
          --v39;
        }

        while (v39);
      }
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_54();
    if (v12)
    {
      llvm::raw_ostream::write(v45, ")", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v45, v46);
    }
  }

  v135 = *(*this + 64 + 16 * ((*(*this + 44) >> 23) & 1) + 8);
  mlir::ArrayAttr::getValue(&v135);
  if (v47)
  {
    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_10_3();
    v132 = this;
    if (!v12 & v7)
    {
      *v49 = 31520;
      OUTLINED_FUNCTION_52(v48);
    }

    else
    {
      llvm::raw_ostream::write(v48, " {", 2uLL);
    }

    mlir::ArrayAttr::getValue(&v135);
    v51 = v50 << 32;
    if (v50 << 32)
    {
      v52 = v50;
      mlir::ArrayAttr::getValue(&v135);
      OUTLINED_FUNCTION_42();
      (*(v53 + 40))(a2);
      OUTLINED_FUNCTION_42();
      (*(v54 + 16))(a2);
      OUTLINED_FUNCTION_33_2();
      if (v57 > 2)
      {
        *(v56 + 2) = 32;
        OUTLINED_FUNCTION_54_1(v55, v56);
      }

      else
      {
        llvm::raw_ostream::write(v55, " = ", 3uLL);
      }

      OUTLINED_FUNCTION_42();
      (*(v58 + 160))(a2);
      if (v51 != 0x100000000)
      {
        v59 = v52;
        v60 = 1;
        v61 = 0x100000000;
        do
        {
          (*(*a2 + 16))(a2);
          OUTLINED_FUNCTION_10_3();
          if (!v12 & v7)
          {
            *v63 = 8236;
            OUTLINED_FUNCTION_52(v62);
          }

          else
          {
            llvm::raw_ostream::write(v62, ", ", 2uLL);
          }

          mlir::ArrayAttr::getValue(&v135);
          OUTLINED_FUNCTION_42();
          (*(v64 + 40))(a2);
          OUTLINED_FUNCTION_42();
          (*(v65 + 16))(a2);
          OUTLINED_FUNCTION_33_2();
          if (v68 > 2)
          {
            *(v67 + 2) = 32;
            *v67 = 15648;
            v66[4] += 3;
          }

          else
          {
            llvm::raw_ostream::write(v66, " = ", 3uLL);
          }

          OUTLINED_FUNCTION_42();
          (*(v69 + 160))(a2);
          ++v60;
          v61 += 0x100000000;
        }

        while (v59 != v60);
      }
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_53();
    if (v7)
    {
      llvm::raw_ostream::write(v70, 125);
    }

    else
    {
      *(v70 + 4) = v71 + 1;
      *v71 = 125;
    }
  }

  (*(*a2 + 16))(a2);
  OUTLINED_FUNCTION_53();
  if (v7)
  {
    v74 = llvm::raw_ostream::write(v72, 32);
  }

  else
  {
    v74 = OUTLINED_FUNCTION_13(v72, v73);
  }

  v82 = *this;
  v83 = *(*this + 44);
  v84 = (*this + 16 * ((v83 >> 23) & 1));
  v85 = v84[22];
  v86 = v84[23];
  v87 = v84[24];
  if ((v83 & 0x800000) != 0)
  {
    v88 = (v86 + v85);
    v89 = *(v82 + 72) + 32 * v88;
    v90 = (v87 + v88) - v88;
    v91 = *(v82 + 72);
  }

  else
  {
    LOBYTE(v91) = 0;
    v88 = (v86 + v85);
    v89 = 32 * v88;
    v90 = (v87 + v88) - v88;
  }

  v92 = OUTLINED_FUNCTION_67_1(v74, v75, v76, v77, v78, v79, v80, v81, v132, v91 + 32 * v88);
  Types = mlir::OperandRange::getTypes(v92, v93);
  OUTLINED_FUNCTION_95_0(Types, v95, v96, v97, v98, v99, v100, v101, v133, v134, v90);
  mlir::TypeRange::TypeRange(&v141, v143, v144);
  OUTLINED_FUNCTION_13_1();
  if (*(v102 + 64))
  {
    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_33_2();
    if (v105 <= 0xD)
    {
      v106 = " -> <inferred>";
      v107 = 14;
LABEL_91:
      llvm::raw_ostream::write(v103, v106, v107);
LABEL_92:
      OUTLINED_FUNCTION_74_1();
      v137 = "operandSegmentSizes";
      v138 = 19;
      v139 = "name";
      v140 = 4;
      OUTLINED_FUNCTION_75_1();
    }

    qmemcpy(v104, " -> <inferred>", 14);
    v114 = v103[4] + 14;
  }

  else
  {
    v108 = v142;
    if (!v142)
    {
      goto LABEL_92;
    }

    v109 = v141;
    OUTLINED_FUNCTION_42();
    (*(v110 + 16))(a2);
    OUTLINED_FUNCTION_33_2();
    if (v113 > 4)
    {
      *(v112 + 4) = 40;
      *v112 = 540945696;
      v111[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v111, " -> (", 5uLL);
    }

    v115 = (*(*a2 + 16))(a2);
    if (v87)
    {
      v116 = v115;
      OUTLINED_FUNCTION_42();
      (*(v117 + 160))(a2);
      v118 = v90 - 1;
      if (v90 != 1)
      {
        v119 = v89 + 56;
        do
        {
          v120 = v116[4];
          if (v116[3] - v120 > 1uLL)
          {
            *v120 = 8236;
            v116[4] += 2;
          }

          else
          {
            OUTLINED_FUNCTION_111_0(v116);
          }

          v119 += 32;
          OUTLINED_FUNCTION_42();
          (*(v121 + 160))(a2);
          --v118;
        }

        while (v118);
      }
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_33_2();
    if (v124 > 2)
    {
      *(v123 + 2) = 32;
      OUTLINED_FUNCTION_54_1(v122, v123);
    }

    else
    {
      llvm::raw_ostream::write(v122, " : ", 3uLL);
    }

    mlir::TypeRange::dereference_iterator(v109, 0);
    OUTLINED_FUNCTION_42();
    (*(v125 + 32))(a2);
    if (v108 != 1)
    {
      do
      {
        (*(*a2 + 16))(a2);
        OUTLINED_FUNCTION_10_3();
        if (!v12 & v7)
        {
          *v127 = 8236;
          OUTLINED_FUNCTION_52(v126);
        }

        else
        {
          OUTLINED_FUNCTION_111_0(v126);
        }

        v128 = OUTLINED_FUNCTION_42_2();
        mlir::TypeRange::dereference_iterator(v128, v129);
        OUTLINED_FUNCTION_42();
        (*(v130 + 32))(a2);
        OUTLINED_FUNCTION_87_1();
      }

      while (!v12);
    }

    (*(*a2 + 16))(a2);
    OUTLINED_FUNCTION_54();
    if (v12)
    {
      v106 = ")";
      v107 = 1;
      goto LABEL_91;
    }

    *v131 = 41;
    v114 = v103[4] + 1;
  }

  v103[4] = v114;
  goto LABEL_92;
}

uint64_t mlir::pdl_interp::CreateRangeOpAdaptor::CreateRangeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

unint64_t mlir::pdl_interp::CreateRangeOp::getODSOperandIndexAndLength(mlir::pdl_interp::CreateRangeOp *this, int a2)
{
  if ((*(*this + 46) & 0x80) != 0)
  {
    v2 = *(*this + 68);
  }

  else
  {
    v2 = 0;
  }

  return OUTLINED_FUNCTION_18(a2, v2);
}

uint64_t mlir::pdl_interp::CreateRangeOp::getArgumentsMutable@<X0>(mlir::pdl_interp::CreateRangeOp *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 68);
  }

  else
  {
    v3 = 0;
  }

  return OUTLINED_FUNCTION_4(a2, v2, 0, v3);
}

void mlir::pdl_interp::CreateRangeOp::print(mlir::pdl_interp::CreateRangeOp *this, mlir::OpAsmPrinter *a2)
{
  OUTLINED_FUNCTION_76();
  v89 = *MEMORY[0x277D85DE8];
  if ((*(*v7 + 46) & 0x80) != 0 && *(*v7 + 68))
  {
    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v8, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v8, v9);
    }

    OUTLINED_FUNCTION_77();
    if (v12 < 0)
    {
      v6 = *(v11 + 68);
      v5 = *(v11 + 72);
    }

    else
    {
      OUTLINED_FUNCTION_73();
    }

    (*(*v2 + 16))(v2);
    if (v6)
    {
      OUTLINED_FUNCTION_24();
      (*(v13 + 160))(v2);
      v14 = v6 - 1;
      if (v14)
      {
        v15 = v5 + 56;
        v5 = ", ";
        do
        {
          OUTLINED_FUNCTION_44();
          if (!v17 & v10)
          {
            OUTLINED_FUNCTION_21(v16);
          }

          else
          {
            v18 = OUTLINED_FUNCTION_42_2();
            llvm::raw_ostream::write(v18, v19, 2uLL);
          }

          v15 += 32;
          OUTLINED_FUNCTION_42();
          (*(v20 + 160))(v2);
          --v14;
        }

        while (v14);
      }
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v21, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v21, v22);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_54();
    if (v17)
    {
      llvm::raw_ostream::write(v23, ":", 1uLL);
    }

    else
    {
      OUTLINED_FUNCTION_12(v23, v24);
    }

    (*(*v2 + 16))(v2);
    OUTLINED_FUNCTION_53();
    if (v10)
    {
      llvm::raw_ostream::write(v25, 32);
    }

    else
    {
      OUTLINED_FUNCTION_13(v25, v26);
    }

    OUTLINED_FUNCTION_80();
    if (v27 < 0)
    {
      OUTLINED_FUNCTION_79();
    }

    else
    {
      OUTLINED_FUNCTION_81();
    }

    AttrDictionary = v29;
    v88 = v28;
    mlir::OperandRange::getTypes(&AttrDictionary, v84);
    OUTLINED_FUNCTION_58_1();
    if (!v17)
    {
      v30 = v84[0] + 32 * v4;
      OUTLINED_FUNCTION_14_3();
      v31 = OUTLINED_FUNCTION_97();
      v32(v31);
      OUTLINED_FUNCTION_104_0();
      if (!v17)
      {
        OUTLINED_FUNCTION_57_1();
        do
        {
          (*(*v2 + 16))(v2);
          OUTLINED_FUNCTION_10_3();
          if (!v17 & v10)
          {
            *v34 = 8236;
            OUTLINED_FUNCTION_52(v33);
          }

          else
          {
            OUTLINED_FUNCTION_96_0(v33);
          }

          v30 += 32;
          OUTLINED_FUNCTION_14_3();
          v35 = OUTLINED_FUNCTION_97();
          v36(v35);
          --v5;
        }

        while (v5);
      }
    }
  }

  (*(*v2 + 16))(v2);
  OUTLINED_FUNCTION_53();
  if (v10)
  {
    llvm::raw_ostream::write(v37, 32);
  }

  else
  {
    OUTLINED_FUNCTION_13(v37, v38);
  }

  OUTLINED_FUNCTION_80();
  if (v39 < 0)
  {
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_81();
  }

  v82 = v48;
  v50 = OUTLINED_FUNCTION_67_1(v40, v41, v42, v43, v44, v45, v46, v47, v77, v49);
  Types = mlir::OperandRange::getTypes(v50, v51);
  OUTLINED_FUNCTION_95_0(Types, v53, v54, v55, v56, v57, v58, v59, v78, v80, v82);
  mlir::TypeRange::TypeRange(v86, AttrDictionary, v88);
  if (*(*v3 + 9))
  {
    v60 = *v3 - 16;
  }

  else
  {
    v60 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v60, 0);
  if (!v86[1])
  {
    v62 = *(NextResultAtOffset + 8);
    OUTLINED_FUNCTION_42();
    (*(v63 + 16))(v2);
    OUTLINED_FUNCTION_10_3();
    if (!v17 & v10)
    {
      *v65 = 8250;
      OUTLINED_FUNCTION_52(v64);
    }

    else
    {
      llvm::raw_ostream::write(v64, ": ", 2uLL);
    }

    (*(*v2 + 32))(v2, v62 & 0xFFFFFFFFFFFFFFF8);
  }

  v84[0] = &v85;
  v84[1] = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*v3);
  mlir::DictionaryAttr::getValue(&AttrDictionary);
  OUTLINED_FUNCTION_7_2();
  v66 = OUTLINED_FUNCTION_71();
  v68 = v67(v66);
  v76 = OUTLINED_FUNCTION_78_1(v68, v69, v70, v71, v72, v73, v74, v75, v79, v81, v83, v84[0]);
  if (!v17)
  {
    free(v76);
  }
}

uint64_t mlir::pdl_interp::CreateTypeOpAdaptor::CreateTypeOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::CreateTypesOpAdaptor::CreateTypesOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_5();
  if (v4)
  {
    OUTLINED_FUNCTION_3();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 32), v5, v6);
  OUTLINED_FUNCTION_62();
  return v0;
}

uint64_t mlir::pdl_interp::EraseOpAdaptor::EraseOpAdaptor()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}

{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_30();
  if (v1 < 0)
  {
    OUTLINED_FUNCTION_29();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::ValueRange::ValueRange(v8, v2, v3);
  OUTLINED_FUNCTION_0_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1();
  }

  else
  {
    OUTLINED_FUNCTION_28();
  }

  mlir::RegionRange::RegionRange((v0 + 24), v5, v6);
  OUTLINED_FUNCTION_32();
  return v0;
}