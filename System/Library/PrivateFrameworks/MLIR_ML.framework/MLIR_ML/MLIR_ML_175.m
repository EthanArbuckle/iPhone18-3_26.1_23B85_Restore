uint64_t checkWidthChangeCast<std::greater,mlir::IntegerType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::IntegerType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtUIOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8));
  v26[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v26);
  v21[0] = v2;
  if (Width < mlir::IntegerType::getWidth(v21))
  {
    return 1;
  }

  v21[0] = "result type ";
  v22 = 259;
  mlir::OpState::emitError(&v23, v21, v26);
  if (v26[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, v2);
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " must be wider than operand type ";
      v25 = 33;
      if (v7 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v27 + 24 * v28;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, ElementTypeOrSelf);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    v15 = v31;
    if (v31)
    {
      v16 = v32;
      v17 = v31;
      if (v32 != v31)
      {
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
        v17 = v31;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v4;
}

uint64_t mlir::arith::ExtSIOp::fold(uint64_t *a1, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v72[0] = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v72);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v72[0] = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    Width = mlir::IntegerType::getWidth(v72);
    v6 = *(a2 + 40);
    v7 = *v6;
    if (!*v6)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v8 = *(*v7 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v9 = Width;
    v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v65 = *v6;
      mlir::IntegerAttr::getValue(&v65, &v70);
      llvm::APInt::sext(&v70, v9, v72);
      if (DWORD2(v70) >= 0x41 && v70)
      {
        MEMORY[0x259C63150](v70, 0x1000C8000313F17);
      }

      v7 = mlir::IntegerAttr::get(v10, v72);
      if (LODWORD(v72[1]) < 0x41)
      {
        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_87;
    }

    if (mlir::DenseElementsAttr::classof(*v6))
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }

    v72[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v72))
    {
      v68 = *v6;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v68, v72);
      v70 = *v72;
      v71 = v73[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v70, &v65);
      llvm::APInt::sext(&v65, v9, v72);
      if (v66 >= 0x41 && v65)
      {
        MEMORY[0x259C63150](v65, 0x1000C8000313F17);
      }

      if (!v10)
      {
        goto LABEL_78;
      }

      v12 = *v10;
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
          goto LABEL_17;
        }
      }

      else
      {
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v15)
        {
LABEL_17:
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
LABEL_76:
          if (v16 != &v14[2 * v15] && *v16 == v13)
          {
            v51 = v16[1];
            *&v70 = v10;
            *(&v70 + 1) = v51;
            if (!mlir::ShapedType::hasRank(&v70))
            {
              goto LABEL_86;
            }

            goto LABEL_79;
          }

LABEL_78:
          v70 = v10;
          if (!mlir::ShapedType::hasRank(&v70))
          {
            goto LABEL_86;
          }

LABEL_79:
          Shape = mlir::ShapedType::getShape(&v70);
          if (!v49)
          {
LABEL_83:
            v7 = mlir::DenseElementsAttr::get(v70, *(&v70 + 1), v72, 1);
            if (LODWORD(v72[1]) >= 0x41)
            {
LABEL_87:
              if (v72[0])
              {
                MEMORY[0x259C63150](v72[0], 0x1000C8000313F17);
              }
            }

            return v7 & 0xFFFFFFFFFFFFFFFBLL;
          }

          v50 = 8 * v49;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v50 -= 8;
            if (!v50)
            {
              goto LABEL_83;
            }
          }

LABEL_86:
          v7 = 0;
          if (LODWORD(v72[1]) >= 0x41)
          {
            goto LABEL_87;
          }

          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }
      }

      v15 = 0;
      v16 = v14;
      goto LABEL_76;
    }

    v68 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v6);
    v69 = v29;
    if (!v68 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v68, &v70), BYTE8(v71) != 1))
    {
      v7 = 0;
      return v7 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v65) = v70;
    if (v70 == 1)
    {
      v66 = *(&v70 + 1);
    }

    else
    {
      (*(**(&v70 + 1) + 16))(&v66);
    }

    v67 = v71;
    v72[0] = v73;
    v72[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v68, v69);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v72, NumElements);
    v31 = mlir::ElementsAttr::getNumElements(v68, v69);
    if (v31)
    {
      v32 = v31;
      v33 = v67;
      do
      {
        if (BYTE1(v65))
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        if (v65 == 1)
        {
          v35 = (v66 + 16 * v34);
          v62 = *(v35 + 2);
          if (v62 > 0x40)
          {
            llvm::APInt::initSlowCase(&v61, v35);
          }

          v61 = *v35;
        }

        else
        {
          (*(*v66 + 24))(&v61);
        }

        llvm::APInt::sext(&v61, v9, &v63);
        if (v62 >= 0x41 && v61)
        {
          MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        }

        if (LODWORD(v72[1]) >= HIDWORD(v72[1]))
        {
          if (v72[0] > &v63 || v72[0] + 16 * LODWORD(v72[1]) <= &v63)
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        v36 = (v72[0] + 16 * LODWORD(v72[1]));
        v37 = v64;
        *(v36 + 2) = v64;
        if (v37 > 0x40)
        {
          llvm::APInt::initSlowCase(v36, &v63);
        }

        *v36 = v63;
        ++LODWORD(v72[1]);
        if (v64 >= 0x41 && v63)
        {
          MEMORY[0x259C63150](v63, 0x1000C8000313F17);
        }

        v33 = ++v67;
        --v32;
      }

      while (v32);
    }

    if (!v10)
    {
      goto LABEL_93;
    }

    v38 = *v10;
    {
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      if (v41)
      {
        goto LABEL_68;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v39 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v40 = *(v38 + 8);
      v41 = *(v38 + 16);
      if (v41)
      {
LABEL_68:
        v42 = v40;
        v43 = v41;
        do
        {
          v44 = v43 >> 1;
          v45 = &v42[2 * (v43 >> 1)];
          v47 = *v45;
          v46 = v45 + 2;
          v43 += ~(v43 >> 1);
          if (v47 < v39)
          {
            v42 = v46;
          }

          else
          {
            v43 = v44;
          }
        }

        while (v43);
LABEL_91:
        if (v42 != &v40[2 * v41] && *v42 == v39)
        {
          v52 = v42[1];
          goto LABEL_94;
        }

LABEL_93:
        v52 = 0;
LABEL_94:
        v7 = mlir::DenseElementsAttr::get(v10, v52, v72[0], LODWORD(v72[1]));
        v53 = v72[0];
        if (LODWORD(v72[1]))
        {
          v54 = (v72[0] + 16 * LODWORD(v72[1]) - 8);
          v55 = -16 * LODWORD(v72[1]);
          v56 = v54;
          do
          {
            v57 = *v56;
            v56 -= 4;
            if (v57 >= 0x41)
            {
              v58 = *(v54 - 1);
              if (v58)
              {
                MEMORY[0x259C63150](v58, 0x1000C8000313F17);
              }
            }

            v54 = v56;
            v55 += 16;
          }

          while (v55);
          v53 = v72[0];
        }

        if (v53 != v73)
        {
          free(v53);
        }

        if ((v65 & 1) == 0)
        {
          v59 = v66;
          v66 = 0;
          if (v59)
          {
            (*(*v59 + 8))(v59);
          }
        }

        if ((BYTE8(v71) & 1) != 0 && (v70 & 1) == 0)
        {
          v60 = *(&v70 + 1);
          *(&v70 + 1) = 0;
          if (v60)
          {
            (*(*v60 + 8))(v60);
          }
        }

        return v7 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v41 = 0;
    v42 = v40;
    goto LABEL_91;
  }

  v22 = *a1;
  v23 = *(*a1 + 72);
  v24 = *(*(DefiningOp + 72) + 24);
  v25 = v23[1];
  if (v25)
  {
    v26 = *v23;
    *v25 = *v23;
    if (v26)
    {
      *(v26 + 8) = v25;
    }
  }

  v23[3] = v24;
  v23[1] = v24;
  v27 = *v24;
  *v23 = *v24;
  if (v27)
  {
    *(v27 + 8) = v23;
  }

  *v24 = v23;
  return (v22 - 16) | 4;
}

BOOL mlir::arith::ExtSIOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8));
  v26[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v26);
  v21[0] = v2;
  if (Width < mlir::IntegerType::getWidth(v21))
  {
    return 1;
  }

  v21[0] = "result type ";
  v22 = 259;
  mlir::OpState::emitError(&v23, v21, v26);
  if (v26[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, v2);
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " must be wider than operand type ";
      v25 = 33;
      if (v7 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v27 + 24 * v28;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, ElementTypeOrSelf);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    v15 = v31;
    if (v31)
    {
      v16 = v32;
      v17 = v31;
      if (v32 != v31)
      {
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
        v17 = v31;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v4;
}

uint64_t mlir::arith::ExtFOp::fold(uint64_t *a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v74 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v74);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
    {
      v5 = *a1;
      if ((*(*a1 - 8) ^ *(*(*(DefiningOp + 72) + 24) + 8)) <= 7)
      {
        v6 = DefiningOp;
        v74 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64);
        if (v74)
        {
          v7 = (mlir::arith::FastMathFlagsAttr::getValue(&v74) & 0x20) == 0;
          v74 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
          if (!v74)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = 1;
          v74 = *(v5 + 16 * ((*(v5 + 44) >> 23) & 1) + 64);
          if (!v74)
          {
            goto LABEL_12;
          }
        }

        v8 = (mlir::arith::FastMathFlagsAttr::getValue(&v74) & 0x20) == 0 || v7;
        if ((v8 & 1) == 0)
        {
          return *(*(v6 + 72) + 24) | 4;
        }
      }
    }
  }

LABEL_12:
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v10 = *(a2 + 48);
  v11 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v61 = FloatSemantics;
  v69 = v11;
  v12 = *v10;
  if (!*v10)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v12 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v72 = *v10;
    LOBYTE(v70) = 1;
    mlir::FloatAttr::getValue(&v72, &v77);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v74, &v61, &v77, &v70);
    v19 = v78[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v20);
    if (v17 == v19)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v78);
      if (v70 != 1)
      {
        goto LABEL_97;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v78);
      if (v70 != 1)
      {
        goto LABEL_97;
      }
    }

    v21 = mlir::FloatAttr::get(v11, &v74);
    goto LABEL_33;
  }

  if (mlir::DenseElementsAttr::classof(*v10))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v74 = v14;
  if (v14 && mlir::DenseElementsAttr::isSplat(&v74))
  {
    v72 = *v10;
    LOBYTE(v70) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v72, &v77);
    mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v74, &v61, &v77, &v70);
    v15 = v78[0];
    v17 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v17 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v78);
      if (v70 != 1)
      {
        goto LABEL_97;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v78);
      if (v70 != 1)
      {
        goto LABEL_97;
      }
    }

    if (!v11)
    {
      goto LABEL_90;
    }

    v23 = *v11;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
LABEL_40:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_88:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v60 = v27[1];
          v77 = v11;
          v78[0] = v60;
          if (!mlir::ShapedType::hasRank(&v77))
          {
            goto LABEL_97;
          }

          goto LABEL_91;
        }

LABEL_90:
        v77 = v11;
        v78[0] = 0;
        if (!mlir::ShapedType::hasRank(&v77))
        {
          goto LABEL_97;
        }

LABEL_91:
        Shape = mlir::ShapedType::getShape(&v77);
        if (v58)
        {
          v59 = 8 * v58;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v59 -= 8;
            if (!v59)
            {
              goto LABEL_95;
            }
          }

LABEL_97:
          v12 = 0;
          if (v17 != v75)
          {
            goto LABEL_98;
          }

LABEL_34:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v75);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_95:
        v21 = mlir::DenseElementsAttr::get(v77, v78[0], &v74, 1);
LABEL_33:
        v12 = v21;
        if (v17 != v75)
        {
LABEL_98:
          llvm::detail::IEEEFloat::~IEEEFloat(&v75);
          return v12 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_34;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_88;
  }

  v67 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v10);
  v68 = v18;
  if (v67)
  {
    v66 = 1;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v67, &v77);
    if (v79 == 1)
    {
      v63 = v77;
      if (v77 == 1)
      {
        v64 = v78[0];
      }

      else
      {
        (*(*v78[0] + 16))(&v64);
      }

      v65 = v78[1];
      v74 = v76;
      v75 = 0x100000000;
      NumElements = mlir::ElementsAttr::getNumElements(v67, v68);
      if (NumElements > HIDWORD(v75))
      {
        v72 = 0;
        llvm::SmallVectorBase<unsigned int>::mallocForGrow();
      }

      v34 = mlir::ElementsAttr::getNumElements(v67, v68);
      if (!v34)
      {
LABEL_69:
        v46 = llvm::cast<mlir::ShapedType,mlir::Type>(&v69);
        v37 = mlir::DenseElementsAttr::get(v46, v47, v74, v75);
        v12 = v37;
        v48 = v74;
        v49 = v75;
        if (v75)
        {
LABEL_72:
          v50 = llvm::APFloatBase::PPCDoubleDouble(v37);
          v51 = &v48[32 * v49 - 24];
          v52 = -32 * v49;
          do
          {
            while (v50 == *v51)
            {
              llvm::detail::DoubleAPFloat::~DoubleAPFloat(v51);
              v51 = (v53 - 32);
              v52 += 32;
              if (!v52)
              {
                goto LABEL_76;
              }
            }

            llvm::detail::IEEEFloat::~IEEEFloat(v51);
            v51 = (v54 - 32);
            v52 += 32;
          }

          while (v52);
LABEL_76:
          v48 = v74;
        }

LABEL_77:
        if (v48 != v76)
        {
          free(v48);
        }

        if ((v63 & 1) == 0)
        {
          v55 = v64;
          v64 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v79 & 1) != 0 && (v77 & 1) == 0)
        {
          v56 = v78[0];
          v78[0] = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        return v12 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v35 = v34;
      v36 = v65;
      while (1)
      {
        v38 = HIBYTE(v63) ? 0 : v36;
        if (v63 == 1)
        {
          v39 = v64 + 32 * v38;
          v41 = *(v39 + 1);
          v40 = (v39 + 8);
          if (llvm::APFloatBase::PPCDoubleDouble(v64) == v41)
          {
            llvm::detail::DoubleAPFloat::DoubleAPFloat(v71, v40);
          }

          else
          {
            llvm::detail::IEEEFloat::IEEEFloat(v71, v40);
          }
        }

        else
        {
          (*(*v64 + 24))(&v70);
        }

        mlir::arith::ExtFOp::fold(mlir::arith::ExtFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v72, &v61, &v70, &v66);
        v42 = v71[0];
        v44 = llvm::APFloatBase::PPCDoubleDouble(v43);
        if (v44 != v42)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v71);
        v45 = v66;
        if (v66 == 1)
        {
          goto LABEL_63;
        }

LABEL_64:
        if (v44 == v73[0])
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v73);
          if (!v45)
          {
            goto LABEL_71;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v73);
          if (!v45)
          {
LABEL_71:
            v12 = 0;
            v48 = v74;
            v49 = v75;
            if (v75)
            {
              goto LABEL_72;
            }

            goto LABEL_77;
          }
        }

        v36 = ++v65;
        if (!--v35)
        {
          goto LABEL_69;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v71);
      v45 = v66;
      if (v66 != 1)
      {
        goto LABEL_64;
      }

LABEL_63:
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v74, &v72);
      goto LABEL_64;
    }
  }

  v12 = 0;
  return v12 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::TruncFOp::getFastmath(mlir::arith::TruncFOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v2)
  {
    return mlir::arith::FastMathFlagsAttr::getValue(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::ExtFOp::getFastmath(mlir::arith::ExtFOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v2)
  {
    return mlir::arith::FastMathFlagsAttr::getValue(&v2) | 0x100000000;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::arith::ExtFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth > mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::ExtFOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8));
  v26[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v26);
  v21[0] = v2;
  if (Width < mlir::FloatType::getWidth(v21))
  {
    return 1;
  }

  v21[0] = "result type ";
  v22 = 259;
  mlir::OpState::emitError(&v23, v21, v26);
  if (v26[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, v2);
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " must be wider than operand type ";
      v25 = 33;
      if (v7 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v27 + 24 * v28;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, ElementTypeOrSelf);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    v15 = v31;
    if (v31)
    {
      v16 = v32;
      v17 = v31;
      if (v32 != v31)
      {
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
        v17 = v31;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v4;
}

uint64_t mlir::arith::TruncIOp::fold(uint64_t *a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  *&v69 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v69);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id || (*&v69 = *(*(*a1 + 72) + 24), (v5 = mlir::Value::getDefiningOp(&v69)) != 0) && *(*(v5 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    *&v69 = *(*(*a1 + 72) + 24);
    v6 = *(*(mlir::Value::getDefiningOp(&v69) + 72) + 24);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
    v8 = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    *&v69 = ElementTypeOrSelf;
    Width = mlir::IntegerType::getWidth(&v69);
    *&v67 = v8;
    if (Width > mlir::IntegerType::getWidth(&v67))
    {
      v10 = *a1;
      v11 = *(*a1 + 72);
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

      v11[3] = v6;
      v11[1] = v6;
      v14 = *v6;
      *v11 = *v6;
      if (v14)
      {
        *(v14 + 8) = v11;
      }

      *v6 = v11;
      return (v10 - 16) | 4;
    }

    if (ElementTypeOrSelf == v8)
    {
      return v6 | 4;
    }
  }

  *&v69 = *(*(*a1 + 72) + 24);
  v16 = mlir::Value::getDefiningOp(&v69);
  if (!v16 || *(*(v16 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    *&v69 = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
    v17 = mlir::IntegerType::getWidth(&v69);
    v18 = *(a2 + 40);
    v19 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v66 = v19;
    v20 = *v18;
    if (!*v18)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v22 = v17;
    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v61 = *v18;
      mlir::IntegerAttr::getValue(&v61, &v67);
      llvm::APInt::trunc(&v67, v22, &v69);
      if (DWORD2(v67) >= 0x41 && v67)
      {
        MEMORY[0x259C63150](v67, 0x1000C8000313F17);
      }

      v20 = mlir::IntegerAttr::get(v19, &v69);
      if (DWORD2(v69) < 0x41)
      {
        return v20 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_98;
    }

    if (mlir::DenseElementsAttr::classof(*v18))
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    *&v69 = v23;
    if (!v23 || !mlir::DenseElementsAttr::isSplat(&v69))
    {
      v64 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v18);
      v65 = v40;
      if (v64 && (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v67), BYTE8(v68) == 1))
      {
        LOWORD(v61) = v67;
        if (v67 == 1)
        {
          v62 = *(&v67 + 1);
        }

        else
        {
          (*(**(&v67 + 1) + 16))(&v62);
        }

        v63 = v68;
        *&v69 = &v70;
        *(&v69 + 1) = 0x300000000;
        NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
        llvm::SmallVectorImpl<llvm::APInt>::reserve(&v69, NumElements);
        v42 = mlir::ElementsAttr::getNumElements(v64, v65);
        if (v42)
        {
          v43 = v42;
          v44 = v63;
          do
          {
            if (BYTE1(v61))
            {
              v45 = 0;
            }

            else
            {
              v45 = v44;
            }

            if (v61 == 1)
            {
              v46 = (v62 + 16 * v45);
              v58 = *(v46 + 2);
              if (v58 > 0x40)
              {
                llvm::APInt::initSlowCase(&v57, v46);
              }

              v57 = *v46;
            }

            else
            {
              (*(*v62 + 24))(&v57);
            }

            llvm::APInt::trunc(&v57, v22, &v59);
            if (v58 >= 0x41 && v57)
            {
              MEMORY[0x259C63150](v57, 0x1000C8000313F17);
            }

            if (DWORD2(v69) >= HIDWORD(v69))
            {
              if (v69 > &v59 || v69 + 16 * DWORD2(v69) <= &v59)
              {
                llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
            }

            v47 = (v69 + 16 * DWORD2(v69));
            v48 = v60;
            *(v47 + 2) = v60;
            if (v48 > 0x40)
            {
              llvm::APInt::initSlowCase(v47, &v59);
            }

            *v47 = v59;
            ++DWORD2(v69);
            if (v60 >= 0x41 && v59)
            {
              MEMORY[0x259C63150](v59, 0x1000C8000313F17);
            }

            v44 = ++v63;
            --v43;
          }

          while (v43);
        }

        v49 = llvm::cast<mlir::ShapedType,mlir::Type>(&v66);
        v20 = mlir::DenseElementsAttr::get(v49, v50, v69, DWORD2(v69));
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v69);
        if ((v61 & 1) == 0)
        {
          v51 = v62;
          v62 = 0;
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }
        }

        if ((BYTE8(v68) & 1) != 0 && (v67 & 1) == 0)
        {
          v52 = *(&v67 + 1);
          *(&v67 + 1) = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }
        }
      }

      else
      {
        v20 = 0;
      }

      return v20 & 0xFFFFFFFFFFFFFFFBLL;
    }

    v64 = *v18;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v64, &v69);
    v67 = v69;
    v68 = v70;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v67, &v61);
    llvm::APInt::trunc(&v61, v22, &v69);
    if (v62 >= 0x41 && v61)
    {
      MEMORY[0x259C63150](v61, 0x1000C8000313F17);
    }

    if (!v19)
    {
      goto LABEL_89;
    }

    v24 = *v19;
    {
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if (v27)
      {
LABEL_30:
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
LABEL_87:
        if (v28 != &v26[2 * v27] && *v28 == v25)
        {
          v56 = v28[1];
          *&v67 = v19;
          *(&v67 + 1) = v56;
          if (!mlir::ShapedType::hasRank(&v67))
          {
            goto LABEL_97;
          }

          goto LABEL_90;
        }

LABEL_89:
        v67 = v19;
        if (!mlir::ShapedType::hasRank(&v67))
        {
          goto LABEL_97;
        }

LABEL_90:
        Shape = mlir::ShapedType::getShape(&v67);
        if (!v54)
        {
LABEL_94:
          v20 = mlir::DenseElementsAttr::get(v67, *(&v67 + 1), &v69, 1);
          if (DWORD2(v69) >= 0x41)
          {
LABEL_98:
            if (v69)
            {
              MEMORY[0x259C63150](v69, 0x1000C8000313F17);
            }
          }

          return v20 & 0xFFFFFFFFFFFFFFFBLL;
        }

        v55 = 8 * v54;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v55 -= 8;
          if (!v55)
          {
            goto LABEL_94;
          }
        }

LABEL_97:
        v20 = 0;
        if (DWORD2(v69) >= 0x41)
        {
          goto LABEL_98;
        }

        return v20 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v27 = 0;
    v28 = v26;
    goto LABEL_87;
  }

  *&v69 = *(*(*a1 + 72) + 24);
  v34 = *(*(mlir::Value::getDefiningOp(&v69) + 72) + 24);
  v35 = *a1;
  v36 = *(*a1 + 72);
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    *v37 = *v36;
    if (v38)
    {
      *(v38 + 8) = v37;
    }
  }

  v36[3] = v34;
  v36[1] = v34;
  v39 = *v34;
  *v36 = *v34;
  if (v39)
  {
    *(v39 + 8) = v36;
  }

  *v34 = v36;
  return (v35 - 16) | 4;
}

uint64_t mlir::arith::TruncIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::IntegerType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::TruncIOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8));
  v26[0] = ElementTypeOrSelf;
  Width = mlir::IntegerType::getWidth(v26);
  v21[0] = v2;
  if (Width > mlir::IntegerType::getWidth(v21))
  {
    return 1;
  }

  v21[0] = "result type ";
  v22 = 259;
  mlir::OpState::emitError(&v23, v21, v26);
  if (v26[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, v2);
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " must be shorter than operand type ";
      v25 = 35;
      if (v7 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v27 + 24 * v28;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, ElementTypeOrSelf);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    v15 = v31;
    if (v31)
    {
      v16 = v32;
      v17 = v31;
      if (v32 != v31)
      {
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
        v17 = v31;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v4;
}

unint64_t mlir::arith::TruncFOp::fold(void *a1, uint64_t a2)
{
  v84 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  FloatSemantics = mlir::FloatType::getFloatSemantics(&ElementTypeOrSelf);
  v5 = *(a2 + 56);
  v6 = *(*a1 - 8);
  v66[0] = a1;
  v66[1] = FloatSemantics;
  v7 = *v5;
  if (!*v5)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = *(*v7 + 136);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v9 = (v6 & 0xFFFFFFFFFFFFFFF8);
  if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v76 = *v5;
    LOBYTE(v74) = 1;
    mlir::FloatAttr::getValue(&v76, &v81);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v78, v66, &v81, &v74);
    v15 = v82[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v16);
    if (v13 == v15)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
      if (v74 != 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v82);
      if (v74 != 1)
      {
        goto LABEL_78;
      }
    }

    v17 = mlir::FloatAttr::get(v9, &v78);
    goto LABEL_22;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v78 = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&v78))
  {
    v76 = *v5;
    LOBYTE(v74) = 1;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, &v81);
    mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v78, v66, &v81, &v74);
    v11 = v82[0];
    v13 = llvm::APFloatBase::PPCDoubleDouble(v12);
    if (v13 == v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v82);
      if (v74 != 1)
      {
        goto LABEL_78;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v82);
      if (v74 != 1)
      {
        goto LABEL_78;
      }
    }

    if (!v9)
    {
      goto LABEL_71;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_28;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_28:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_69:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v54 = v22[1];
          v81 = v9;
          v82[0] = v54;
          if (!mlir::ShapedType::hasRank(&v81))
          {
            goto LABEL_78;
          }

          goto LABEL_72;
        }

LABEL_71:
        v81 = v9;
        v82[0] = 0;
        if (!mlir::ShapedType::hasRank(&v81))
        {
          goto LABEL_78;
        }

LABEL_72:
        Shape = mlir::ShapedType::getShape(&v81);
        if (v52)
        {
          v53 = 8 * v52;
          while (*Shape != 0x8000000000000000)
          {
            ++Shape;
            v53 -= 8;
            if (!v53)
            {
              goto LABEL_76;
            }
          }

LABEL_78:
          v7 = 0;
          if (v13 != v79)
          {
            goto LABEL_79;
          }

LABEL_23:
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v79);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_76:
        v17 = mlir::DenseElementsAttr::get(v81, v82[0], &v78, 1);
LABEL_22:
        v7 = v17;
        if (v13 != v79)
        {
LABEL_79:
          llvm::detail::IEEEFloat::~IEEEFloat(&v79);
          return v7 & 0xFFFFFFFFFFFFFFFBLL;
        }

        goto LABEL_23;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_69;
  }

  v72 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v73 = v14;
  if (!v72 || (v71 = 1, mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v72, &v81), v83 != 1))
  {
    v7 = 0;
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v68 = v81;
  if (v81 == 1)
  {
    v69 = v82[0];
  }

  else
  {
    (*(*v82[0] + 16))(&v69);
  }

  v70 = v82[1];
  v78 = v80;
  v79 = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v72, v73);
  if (NumElements > HIDWORD(v79))
  {
    v76 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v29 = mlir::ElementsAttr::getNumElements(v72, v73);
  if (v29)
  {
    v30 = v29;
    v31 = v70;
    while (1)
    {
      v33 = HIBYTE(v68) ? 0 : v31;
      if (v68 == 1)
      {
        v34 = v69 + 32 * v33;
        v36 = *(v34 + 1);
        v35 = (v34 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v69) == v36)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v75, v35);
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v75, v35);
        }
      }

      else
      {
        (*(*v69 + 24))(&v74);
      }

      mlir::arith::TruncFOp::fold(mlir::arith::TruncFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v76, v66, &v74, &v71);
      v37 = v75[0];
      v39 = llvm::APFloatBase::PPCDoubleDouble(v38);
      if (v39 != v37)
      {
        break;
      }

      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v75);
      v40 = v71;
      if (v71 == 1)
      {
        goto LABEL_51;
      }

LABEL_52:
      if (v39 == v77[0])
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v77);
        if (!v40)
        {
          goto LABEL_66;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v77);
        if (!v40)
        {
LABEL_66:
          v7 = 0;
          goto LABEL_87;
        }
      }

      v31 = ++v70;
      if (!--v30)
      {
        goto LABEL_57;
      }
    }

    llvm::detail::IEEEFloat::~IEEEFloat(v75);
    v40 = v71;
    if (v71 != 1)
    {
      goto LABEL_52;
    }

LABEL_51:
    llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v78, &v76);
    goto LABEL_52;
  }

LABEL_57:
  if (!v9)
  {
    goto LABEL_85;
  }

  v41 = *v9;
  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_60;
    }

LABEL_82:
    v44 = 0;
    v45 = v43;
    goto LABEL_83;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_82;
  }

LABEL_60:
  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
LABEL_83:
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_85:
    v56 = 0;
    goto LABEL_86;
  }

  v56 = v45[1];
LABEL_86:
  v32 = mlir::DenseElementsAttr::get(v9, v56, v78, v79);
  v7 = v32;
LABEL_87:
  v57 = v78;
  v58 = v79;
  if (v79)
  {
    v59 = llvm::APFloatBase::PPCDoubleDouble(v32);
    v60 = &v57[32 * v58 - 24];
    v61 = -32 * v58;
    do
    {
      while (v59 == *v60)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v60);
        v60 = (v62 - 32);
        v61 += 32;
        if (!v61)
        {
          goto LABEL_92;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v60);
      v60 = (v63 - 32);
      v61 += 32;
    }

    while (v61);
LABEL_92:
    v57 = v78;
  }

  if (v57 != v80)
  {
    free(v57);
  }

  if ((v68 & 1) == 0)
  {
    v64 = v69;
    v69 = 0;
    if (v64)
    {
      (*(*v64 + 8))(v64);
    }
  }

  if ((v83 & 1) != 0 && (v81 & 1) == 0)
  {
    v65 = v82[0];
    v82[0] = 0;
    if (v65)
    {
      (*(*v65 + 8))(v65);
    }
  }

  return v7 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::TruncFOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLike<mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v11);
        return IntOrFloatBitWidth < mlir::Type::getIntOrFloatBitWidth(&v12);
      }
    }
  }

  return result;
}

BOOL mlir::arith::TruncFOp::verify(mlir::Operation **this)
{
  v37 = *MEMORY[0x277D85DE8];
  v23 = *this;
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*(*(v23 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = mlir::getElementTypeOrSelf((*(v23 - 1) & 0xFFFFFFFFFFFFFFF8));
  v26[0] = ElementTypeOrSelf;
  Width = mlir::FloatType::getWidth(v26);
  v21[0] = v2;
  if (Width > mlir::FloatType::getWidth(v21))
  {
    return 1;
  }

  v21[0] = "result type ";
  v22 = 259;
  mlir::OpState::emitError(&v23, v21, v26);
  if (v26[0])
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v24, v2);
    if (v28 >= v29)
    {
      if (v27 > &v24 || v27 + 24 * v28 <= &v24)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v27 + 24 * v28;
    v6 = v24;
    *(v5 + 2) = v25;
    *v5 = v6;
    v7 = ++v28;
    if (v26[0])
    {
      LODWORD(v24) = 3;
      *(&v24 + 1) = " must be shorter than operand type ";
      v25 = 35;
      if (v7 >= v29)
      {
        if (v27 > &v24 || v27 + 24 * v7 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v27 + 24 * v28;
      v9 = v24;
      *(v8 + 2) = v25;
      *v8 = v9;
      ++v28;
      if (v26[0])
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v24, ElementTypeOrSelf);
        if (v28 >= v29)
        {
          if (v27 > &v24 || v27 + 24 * v28 <= &v24)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v10 = v27 + 24 * v28;
        v11 = v24;
        *(v10 + 2) = v25;
        *v10 = v11;
        ++v28;
      }
    }
  }

  v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v26);
  if (v26[0])
  {
    mlir::InFlightDiagnostic::report(v26);
  }

  if (v36 == 1)
  {
    if (v35 != &v36)
    {
      free(v35);
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
    }

    v15 = v31;
    if (v31)
    {
      v16 = v32;
      v17 = v31;
      if (v32 != v31)
      {
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
        v17 = v31;
      }

      v32 = v15;
      operator delete(v17);
    }

    if (v27 != &v30)
    {
      free(v27);
    }
  }

  return v4;
}

uint64_t mlir::arith::UIToFPOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::FloatType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::UIToFPOp::fold(void *a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v5;
    mlir::IntegerAttr::getValue(&v68, &v66);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(v70, v8, &v66);
    if (DWORD2(v66) >= 0x41 && v66)
    {
      MEMORY[0x259C63150](v66, 0x1000C8000313F17);
    }

    v6 = mlir::FloatAttr::get(v9, v70);
    v22 = v70[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v70[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v70[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v70[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(v70))
  {
    v61 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v61, v70);
    v66 = *v70;
    v67 = v71[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, v70);
    mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v68, v8, v70);
    if (LODWORD(v70[1]) >= 0x41 && v70[0])
    {
      MEMORY[0x259C63150](v70[0], 0x1000C8000313F17);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v45 = v15[1];
        v70[0] = v9;
        v70[1] = v45;
        hasRank = mlir::ShapedType::hasRank(v70);
        if (!hasRank)
        {
          goto LABEL_72;
        }

        goto LABEL_65;
      }
    }

LABEL_64:
    v70[0] = v9;
    v70[1] = 0;
    hasRank = mlir::ShapedType::hasRank(v70);
    if (!hasRank)
    {
      goto LABEL_72;
    }

LABEL_65:
    hasRank = mlir::ShapedType::getShape(v70);
    if (!v42)
    {
LABEL_69:
      v6 = mlir::DenseElementsAttr::get(v70[0], v70[1], &v68, 1);
      v44 = v69[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v44)
      {
LABEL_73:
        llvm::detail::IEEEFloat::~IEEEFloat(v69);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_70;
    }

    v43 = 8 * v42;
    while (*hasRank != 0x8000000000000000)
    {
      hasRank = (hasRank + 8);
      v43 -= 8;
      if (!v43)
      {
        goto LABEL_69;
      }
    }

LABEL_72:
    v6 = 0;
    v46 = v69[0];
    if (llvm::APFloatBase::PPCDoubleDouble(hasRank) != v46)
    {
      goto LABEL_73;
    }

LABEL_70:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v69);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v64 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v65 = v21;
  if (!v64 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v66), BYTE8(v67) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v61) = v66;
  if (v66 == 1)
  {
    v62 = *(&v66 + 1);
  }

  else
  {
    (*(**(&v66 + 1) + 16))(&v62);
  }

  v63 = v67;
  v70[0] = v71;
  v70[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
  if (NumElements > HIDWORD(v70[1]))
  {
    v68 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v24 = mlir::ElementsAttr::getNumElements(v64, v65);
  if (v24)
  {
    v25 = v24;
    v26 = v63;
    do
    {
      while (1)
      {
        v27 = BYTE1(v61) ? 0 : v26;
        if (v61 == 1)
        {
          v28 = (v62 + 16 * v27);
          v60 = *(v28 + 2);
          if (v60 > 0x40)
          {
            llvm::APInt::initSlowCase(&v59, v28);
          }

          v59 = *v28;
        }

        else
        {
          (*(*v62 + 24))(&v59);
        }

        mlir::arith::UIToFPOp::fold(mlir::arith::UIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v68, v8, &v59);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        }

        v29 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(v70, &v68);
        v30 = v69[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v29) != v30)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v69);
        v26 = ++v63;
        if (!--v25)
        {
          goto LABEL_52;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v69);
      v26 = ++v63;
      --v25;
    }

    while (v25);
  }

LABEL_52:
  if (!v9)
  {
    goto LABEL_78;
  }

  v31 = *v9;
  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (v34)
    {
      goto LABEL_55;
    }

LABEL_75:
    v34 = 0;
    v35 = v33;
    goto LABEL_76;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  if (!v34)
  {
    goto LABEL_75;
  }

LABEL_55:
  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
LABEL_76:
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v47 = v35[1];
    goto LABEL_79;
  }

LABEL_78:
  v47 = 0;
LABEL_79:
  v48 = mlir::DenseElementsAttr::get(v9, v47, v70[0], LODWORD(v70[1]));
  v6 = v48;
  v49 = v70[0];
  v50 = LODWORD(v70[1]);
  if (LODWORD(v70[1]))
  {
    v51 = llvm::APFloatBase::PPCDoubleDouble(v48);
    v52 = &v49[32 * v50 - 24];
    v53 = -32 * v50;
    do
    {
      while (v51 == *v52)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v52);
        v52 = (v54 - 32);
        v53 += 32;
        if (!v53)
        {
          goto LABEL_84;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v52);
      v52 = (v55 - 32);
      v53 += 32;
    }

    while (v53);
LABEL_84:
    v49 = v70[0];
  }

  if (v49 != v71)
  {
    free(v49);
  }

  if ((v61 & 1) == 0)
  {
    v56 = v62;
    v62 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }
  }

  if ((BYTE8(v67) & 1) != 0 && (v66 & 1) == 0)
  {
    v57 = *(&v66 + 1);
    *(&v66 + 1) = 0;
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::SIToFPOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::IntegerType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::FloatType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::SIToFPOp::fold(void *a1, uint64_t a2)
{
  v72 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = ElementTypeOrSelf;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v5;
    mlir::IntegerAttr::getValue(&v68, &v66);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(v70, v8, &v66);
    if (DWORD2(v66) >= 0x41 && v66)
    {
      MEMORY[0x259C63150](v66, 0x1000C8000313F17);
    }

    v6 = mlir::FloatAttr::get(v9, v70);
    v22 = v70[1];
    if (llvm::APFloatBase::PPCDoubleDouble(v6) == v22)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v70[1]);
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v70[1]);
    }

    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v70[0] = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(v70))
  {
    v61 = *v5;
    mlir::DenseElementsAttr::getValues<llvm::APInt>(&v61, v70);
    v66 = *v70;
    v67 = v71[0];
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v66, v70);
    mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v68, v8, v70);
    if (LODWORD(v70[1]) >= 0x41 && v70[0])
    {
      MEMORY[0x259C63150](v70[0], 0x1000C8000313F17);
    }

    if (v9)
    {
      v11 = *v9;
      {
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        mlir::mps::serialization::ExtractOp::inferReturnTypes();
        v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v13 = *(v11 + 8);
        v14 = *(v11 + 16);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      v15 = v13;
      v16 = v14;
      do
      {
        v17 = v16 >> 1;
        v18 = &v15[2 * (v16 >> 1)];
        v20 = *v18;
        v19 = v18 + 2;
        v16 += ~(v16 >> 1);
        if (v20 < v12)
        {
          v15 = v19;
        }

        else
        {
          v16 = v17;
        }
      }

      while (v16);
      if (v15 != &v13[2 * v14] && *v15 == v12)
      {
        v45 = v15[1];
        v70[0] = v9;
        v70[1] = v45;
        hasRank = mlir::ShapedType::hasRank(v70);
        if (!hasRank)
        {
          goto LABEL_72;
        }

        goto LABEL_65;
      }
    }

LABEL_64:
    v70[0] = v9;
    v70[1] = 0;
    hasRank = mlir::ShapedType::hasRank(v70);
    if (!hasRank)
    {
      goto LABEL_72;
    }

LABEL_65:
    hasRank = mlir::ShapedType::getShape(v70);
    if (!v42)
    {
LABEL_69:
      v6 = mlir::DenseElementsAttr::get(v70[0], v70[1], &v68, 1);
      v44 = v69[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v6) != v44)
      {
LABEL_73:
        llvm::detail::IEEEFloat::~IEEEFloat(v69);
        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_70;
    }

    v43 = 8 * v42;
    while (*hasRank != 0x8000000000000000)
    {
      hasRank = (hasRank + 8);
      v43 -= 8;
      if (!v43)
      {
        goto LABEL_69;
      }
    }

LABEL_72:
    v6 = 0;
    v46 = v69[0];
    if (llvm::APFloatBase::PPCDoubleDouble(hasRank) != v46)
    {
      goto LABEL_73;
    }

LABEL_70:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v69);
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v64 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v65 = v21;
  if (!v64 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v64, &v66), BYTE8(v67) != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  LOWORD(v61) = v66;
  if (v66 == 1)
  {
    v62 = *(&v66 + 1);
  }

  else
  {
    (*(**(&v66 + 1) + 16))(&v62);
  }

  v63 = v67;
  v70[0] = v71;
  v70[1] = 0x100000000;
  NumElements = mlir::ElementsAttr::getNumElements(v64, v65);
  if (NumElements > HIDWORD(v70[1]))
  {
    v68 = 0;
    llvm::SmallVectorBase<unsigned int>::mallocForGrow();
  }

  v24 = mlir::ElementsAttr::getNumElements(v64, v65);
  if (v24)
  {
    v25 = v24;
    v26 = v63;
    do
    {
      while (1)
      {
        v27 = BYTE1(v61) ? 0 : v26;
        if (v61 == 1)
        {
          v28 = (v62 + 16 * v27);
          v60 = *(v28 + 2);
          if (v60 > 0x40)
          {
            llvm::APInt::initSlowCase(&v59, v28);
          }

          v59 = *v28;
        }

        else
        {
          (*(*v62 + 24))(&v59);
        }

        mlir::arith::SIToFPOp::fold(mlir::arith::SIToFPOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0::operator()(&v68, v8, &v59);
        if (v60 >= 0x41 && v59)
        {
          MEMORY[0x259C63150](v59, 0x1000C8000313F17);
        }

        v29 = llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(v70, &v68);
        v30 = v69[0];
        if (llvm::APFloatBase::PPCDoubleDouble(v29) != v30)
        {
          break;
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v69);
        v26 = ++v63;
        if (!--v25)
        {
          goto LABEL_52;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v69);
      v26 = ++v63;
      --v25;
    }

    while (v25);
  }

LABEL_52:
  if (!v9)
  {
    goto LABEL_78;
  }

  v31 = *v9;
  {
    v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v33 = *(v31 + 8);
    v34 = *(v31 + 16);
    if (v34)
    {
      goto LABEL_55;
    }

LABEL_75:
    v34 = 0;
    v35 = v33;
    goto LABEL_76;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  if (!v34)
  {
    goto LABEL_75;
  }

LABEL_55:
  v35 = v33;
  v36 = v34;
  do
  {
    v37 = v36 >> 1;
    v38 = &v35[2 * (v36 >> 1)];
    v40 = *v38;
    v39 = v38 + 2;
    v36 += ~(v36 >> 1);
    if (v40 < v32)
    {
      v35 = v39;
    }

    else
    {
      v36 = v37;
    }
  }

  while (v36);
LABEL_76:
  if (v35 != &v33[2 * v34] && *v35 == v32)
  {
    v47 = v35[1];
    goto LABEL_79;
  }

LABEL_78:
  v47 = 0;
LABEL_79:
  v48 = mlir::DenseElementsAttr::get(v9, v47, v70[0], LODWORD(v70[1]));
  v6 = v48;
  v49 = v70[0];
  v50 = LODWORD(v70[1]);
  if (LODWORD(v70[1]))
  {
    v51 = llvm::APFloatBase::PPCDoubleDouble(v48);
    v52 = &v49[32 * v50 - 24];
    v53 = -32 * v50;
    do
    {
      while (v51 == *v52)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v52);
        v52 = (v54 - 32);
        v53 += 32;
        if (!v53)
        {
          goto LABEL_84;
        }
      }

      llvm::detail::IEEEFloat::~IEEEFloat(v52);
      v52 = (v55 - 32);
      v53 += 32;
    }

    while (v53);
LABEL_84:
    v49 = v70[0];
  }

  if (v49 != v71)
  {
    free(v49);
  }

  if ((v61 & 1) == 0)
  {
    v56 = v62;
    v62 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }
  }

  if ((BYTE8(v67) & 1) != 0 && (v66 & 1) == 0)
  {
    v57 = *(&v66 + 1);
    *(&v66 + 1) = 0;
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::FPToUIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::IntegerType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::FPToUIOp::fold(void *a1, uint64_t a2)
{
  v82[6] = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v78 = *v5;
    mlir::FloatAttr::getValue(&v78, &ElementTypeOrSelf);
    LODWORD(v72) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v71);
    }

    v71 = 0;
    LOBYTE(v68) = 0;
    BYTE4(v72) = 1;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v71, 0, &v68);
    v13 = v12;
    v14 = v81;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v81);
      if (v13 == 1)
      {
        goto LABEL_93;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v81);
      if (v13 == 1)
      {
        goto LABEL_93;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v71);
    if (v72 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_94;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v78 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v78, &ElementTypeOrSelf);
    LODWORD(v72) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v71);
    }

    v71 = 0;
    LOBYTE(v68) = 0;
    BYTE4(v72) = 1;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v71, 0, &v68);
    v16 = v15;
    v17 = v81;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v81);
      if (v16 == 1)
      {
        goto LABEL_93;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v81);
      if (v16 == 1)
      {
        goto LABEL_93;
      }
    }

    if (!v9)
    {
      goto LABEL_85;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_33:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_83:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v54 = v22[1];
          ElementTypeOrSelf = v9;
          v81 = v54;
          if (!mlir::ShapedType::hasRank(&ElementTypeOrSelf))
          {
            goto LABEL_93;
          }

          goto LABEL_86;
        }

LABEL_85:
        ElementTypeOrSelf = v9;
        v81 = 0;
        if (!mlir::ShapedType::hasRank(&ElementTypeOrSelf))
        {
          goto LABEL_93;
        }

LABEL_86:
        Shape = mlir::ShapedType::getShape(&ElementTypeOrSelf);
        if (!v52)
        {
LABEL_90:
          v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v81, &v71, 1);
          if (v72 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_94;
        }

        v53 = 8 * v52;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v53 -= 8;
          if (!v53)
          {
            goto LABEL_90;
          }
        }

LABEL_93:
        v6 = 0;
        if (v72 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_94:
        if (v71)
        {
          MEMORY[0x259C63150](v71, 0x1000C8000313F17);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_83;
  }

  v75 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v76 = v11;
  if (!v75 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v75, &v71), v74 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v68 = v71;
  if (v71 == 1)
  {
    v69 = v72;
  }

  else
  {
    (*(*v72 + 16))(&v69);
  }

  v70 = v73;
  ElementTypeOrSelf = v82;
  v81 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v75, v76);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v75, v76);
  if (v29)
  {
    v30 = v29;
    v31 = v70;
    do
    {
      if (HIBYTE(v68))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v68 == 1)
      {
        v33 = v69 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v69) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v79, v34);
          v66 = v8;
          if (v8 > 0x40)
          {
LABEL_48:
            llvm::APInt::initSlowCase(&v65);
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v79, v34);
          v66 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        (*(*v69 + 24))(&v78);
        v66 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_48;
        }
      }

      v65 = 0;
      v77 = 0;
      v67 = 1;
      v36 = llvm::APFloat::convertToInteger(&v78, &v65, 0, &v77);
      v37 = v36;
      v38 = v79[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v79);
        if (v37 == 1)
        {
LABEL_52:
          if (v66 < 0x41)
          {
            goto LABEL_62;
          }

LABEL_60:
          if (v65)
          {
            MEMORY[0x259C63150](v65, 0x1000C8000313F17);
          }

          goto LABEL_62;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v79);
        if (v37 == 1)
        {
          goto LABEL_52;
        }
      }

      if (v81 >= HIDWORD(v81))
      {
        if (ElementTypeOrSelf > &v65 || ElementTypeOrSelf + 16 * v81 <= &v65)
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
      }

      v39 = (ElementTypeOrSelf + 16 * v81);
      v40 = v66;
      *(v39 + 2) = v66;
      if (v40 > 0x40)
      {
        llvm::APInt::initSlowCase(v39, &v65);
      }

      *v39 = v65;
      LODWORD(v81) = v81 + 1;
      if (v66 >= 0x41)
      {
        goto LABEL_60;
      }

LABEL_62:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_102;
      }

      v31 = ++v70;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_100;
  }

  v41 = *v9;
  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_74;
    }

LABEL_97:
    v44 = 0;
    v45 = v43;
    goto LABEL_98;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_97;
  }

LABEL_74:
  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
LABEL_98:
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_100:
    v55 = 0;
    goto LABEL_101;
  }

  v55 = v45[1];
LABEL_101:
  v6 = mlir::DenseElementsAttr::get(v9, v55, ElementTypeOrSelf, v81);
LABEL_102:
  v56 = ElementTypeOrSelf;
  if (v81)
  {
    v57 = (ElementTypeOrSelf + 16 * v81 - 8);
    v58 = -16 * v81;
    v59 = v57;
    do
    {
      v60 = *v59;
      v59 -= 4;
      if (v60 >= 0x41)
      {
        v61 = *(v57 - 1);
        if (v61)
        {
          MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        }
      }

      v57 = v59;
      v58 += 16;
    }

    while (v58);
    v56 = ElementTypeOrSelf;
  }

  if (v56 != v82)
  {
    free(v56);
  }

  if ((v68 & 1) == 0)
  {
    v62 = v69;
    v69 = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }
  }

  if ((v74 & 1) != 0 && (v71 & 1) == 0)
  {
    v63 = v72;
    v72 = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::FPToSIOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = getTypeIfLike<mlir::FloatType>(v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, a4 - 1);
    v11 = getTypeIfLike<mlir::IntegerType>(v10);
    if (v9)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    return !v12;
  }

  return result;
}

unint64_t mlir::arith::FPToSIOp::fold(void *a1, uint64_t a2)
{
  v82[6] = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  Width = mlir::IntegerType::getWidth(&ElementTypeOrSelf);
  v5 = *(a2 + 40);
  v6 = *v5;
  if (!*v5)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v7 = *(*v6 + 136);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v8 = Width;
  v9 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v78 = *v5;
    mlir::FloatAttr::getValue(&v78, &ElementTypeOrSelf);
    LODWORD(v72) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v71);
    }

    v71 = 0;
    LOBYTE(v68) = 0;
    BYTE4(v72) = 0;
    v12 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v71, 0, &v68);
    v13 = v12;
    v14 = v81;
    if (llvm::APFloatBase::PPCDoubleDouble(v12) == v14)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v81);
      if (v13 == 1)
      {
        goto LABEL_93;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v81);
      if (v13 == 1)
      {
        goto LABEL_93;
      }
    }

    v6 = mlir::IntegerAttr::get(v9, &v71);
    if (v72 < 0x41)
    {
      return v6 & 0xFFFFFFFFFFFFFFFBLL;
    }

    goto LABEL_94;
  }

  if (mlir::DenseElementsAttr::classof(*v5))
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  ElementTypeOrSelf = v10;
  if (v10 && mlir::DenseElementsAttr::isSplat(&ElementTypeOrSelf))
  {
    v78 = *v5;
    mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v78, &ElementTypeOrSelf);
    LODWORD(v72) = v8;
    if (v8 > 0x40)
    {
      llvm::APInt::initSlowCase(&v71);
    }

    v71 = 0;
    LOBYTE(v68) = 0;
    BYTE4(v72) = 0;
    v15 = llvm::APFloat::convertToInteger(&ElementTypeOrSelf, &v71, 0, &v68);
    v16 = v15;
    v17 = v81;
    if (llvm::APFloatBase::PPCDoubleDouble(v15) == v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v81);
      if (v16 == 1)
      {
        goto LABEL_93;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v81);
      if (v16 == 1)
      {
        goto LABEL_93;
      }
    }

    if (!v9)
    {
      goto LABEL_85;
    }

    v18 = *v9;
    {
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
        goto LABEL_33;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      if (v21)
      {
LABEL_33:
        v22 = v20;
        v23 = v21;
        do
        {
          v24 = v23 >> 1;
          v25 = &v22[2 * (v23 >> 1)];
          v27 = *v25;
          v26 = v25 + 2;
          v23 += ~(v23 >> 1);
          if (v27 < v19)
          {
            v22 = v26;
          }

          else
          {
            v23 = v24;
          }
        }

        while (v23);
LABEL_83:
        if (v22 != &v20[2 * v21] && *v22 == v19)
        {
          v54 = v22[1];
          ElementTypeOrSelf = v9;
          v81 = v54;
          if (!mlir::ShapedType::hasRank(&ElementTypeOrSelf))
          {
            goto LABEL_93;
          }

          goto LABEL_86;
        }

LABEL_85:
        ElementTypeOrSelf = v9;
        v81 = 0;
        if (!mlir::ShapedType::hasRank(&ElementTypeOrSelf))
        {
          goto LABEL_93;
        }

LABEL_86:
        Shape = mlir::ShapedType::getShape(&ElementTypeOrSelf);
        if (!v52)
        {
LABEL_90:
          v6 = mlir::DenseElementsAttr::get(ElementTypeOrSelf, v81, &v71, 1);
          if (v72 < 0x41)
          {
            return v6 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_94;
        }

        v53 = 8 * v52;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v53 -= 8;
          if (!v53)
          {
            goto LABEL_90;
          }
        }

LABEL_93:
        v6 = 0;
        if (v72 < 0x41)
        {
          return v6 & 0xFFFFFFFFFFFFFFFBLL;
        }

LABEL_94:
        if (v71)
        {
          MEMORY[0x259C63150](v71, 0x1000C8000313F17);
        }

        return v6 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v21 = 0;
    v22 = v20;
    goto LABEL_83;
  }

  v75 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v5);
  v76 = v11;
  if (!v75 || (mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v75, &v71), v74 != 1))
  {
    v6 = 0;
    return v6 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v68 = v71;
  if (v71 == 1)
  {
    v69 = v72;
  }

  else
  {
    (*(*v72 + 16))(&v69);
  }

  v70 = v73;
  ElementTypeOrSelf = v82;
  v81 = 0x300000000;
  NumElements = mlir::ElementsAttr::getNumElements(v75, v76);
  llvm::SmallVectorImpl<llvm::APInt>::reserve(&ElementTypeOrSelf, NumElements);
  v29 = mlir::ElementsAttr::getNumElements(v75, v76);
  if (v29)
  {
    v30 = v29;
    v31 = v70;
    do
    {
      if (HIBYTE(v68))
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      if (v68 == 1)
      {
        v33 = v69 + 32 * v32;
        v35 = *(v33 + 1);
        v34 = (v33 + 8);
        if (llvm::APFloatBase::PPCDoubleDouble(v69) == v35)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v79, v34);
          v66 = v8;
          if (v8 > 0x40)
          {
LABEL_48:
            llvm::APInt::initSlowCase(&v65);
          }
        }

        else
        {
          llvm::detail::IEEEFloat::IEEEFloat(v79, v34);
          v66 = v8;
          if (v8 > 0x40)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        (*(*v69 + 24))(&v78);
        v66 = v8;
        if (v8 > 0x40)
        {
          goto LABEL_48;
        }
      }

      v65 = 0;
      v77 = 0;
      v67 = 0;
      v36 = llvm::APFloat::convertToInteger(&v78, &v65, 0, &v77);
      v37 = v36;
      v38 = v79[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v36) == v38)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v79);
        if (v37 == 1)
        {
LABEL_52:
          if (v66 < 0x41)
          {
            goto LABEL_62;
          }

LABEL_60:
          if (v65)
          {
            MEMORY[0x259C63150](v65, 0x1000C8000313F17);
          }

          goto LABEL_62;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v79);
        if (v37 == 1)
        {
          goto LABEL_52;
        }
      }

      if (v81 >= HIDWORD(v81))
      {
        if (ElementTypeOrSelf > &v65 || ElementTypeOrSelf + 16 * v81 <= &v65)
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
      }

      v39 = (ElementTypeOrSelf + 16 * v81);
      v40 = v66;
      *(v39 + 2) = v66;
      if (v40 > 0x40)
      {
        llvm::APInt::initSlowCase(v39, &v65);
      }

      *v39 = v65;
      LODWORD(v81) = v81 + 1;
      if (v66 >= 0x41)
      {
        goto LABEL_60;
      }

LABEL_62:
      if (v37 == 1)
      {
        v6 = 0;
        goto LABEL_102;
      }

      v31 = ++v70;
      --v30;
    }

    while (v30);
  }

  if (!v9)
  {
    goto LABEL_100;
  }

  v41 = *v9;
  {
    v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    if (v44)
    {
      goto LABEL_74;
    }

LABEL_97:
    v44 = 0;
    v45 = v43;
    goto LABEL_98;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v42 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  if (!v44)
  {
    goto LABEL_97;
  }

LABEL_74:
  v45 = v43;
  v46 = v44;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v42)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
LABEL_98:
  if (v45 == &v43[2 * v44] || *v45 != v42)
  {
LABEL_100:
    v55 = 0;
    goto LABEL_101;
  }

  v55 = v45[1];
LABEL_101:
  v6 = mlir::DenseElementsAttr::get(v9, v55, ElementTypeOrSelf, v81);
LABEL_102:
  v56 = ElementTypeOrSelf;
  if (v81)
  {
    v57 = (ElementTypeOrSelf + 16 * v81 - 8);
    v58 = -16 * v81;
    v59 = v57;
    do
    {
      v60 = *v59;
      v59 -= 4;
      if (v60 >= 0x41)
      {
        v61 = *(v57 - 1);
        if (v61)
        {
          MEMORY[0x259C63150](v61, 0x1000C8000313F17);
        }
      }

      v57 = v59;
      v58 += 16;
    }

    while (v58);
    v56 = ElementTypeOrSelf;
  }

  if (v56 != v82)
  {
    free(v56);
  }

  if ((v68 & 1) == 0)
  {
    v62 = v69;
    v69 = 0;
    if (v62)
    {
      (*(*v62 + 8))(v62);
    }
  }

  if ((v74 & 1) != 0 && (v71 & 1) == 0)
  {
    v63 = v72;
    v72 = 0;
    if (v63)
    {
      (*(*v63 + 8))(v63);
    }
  }

  return v6 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t areIndexCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v11 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v8);
    result = 0;
    v10 = v9;
    if (v11)
    {
      if (v9)
      {
        if (mlir::Type::isIndex(&v11) && mlir::Type::isSignlessInteger(&v10))
        {
          return 1;
        }

        else
        {
          result = mlir::Type::isSignlessInteger(&v11);
          if (result)
          {
            return mlir::Type::isIndex(&v10);
          }
        }
      }
    }
  }

  return result;
}

unint64_t mlir::arith::IndexCastOp::fold(void *a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v66[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v66);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v66[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v66))
    {
      v62 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v62, v66);
      v64 = *v66;
      v65 = v67[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v64, &v59);
      llvm::APInt::sextOrTrunc(&v59, Width, v66);
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x259C63150](v59, 0x1000C8000313F17);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_76;
          }
        }

        else
        {
          mlir::mps::serialization::ExtractOp::inferReturnTypes();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_76;
          }
        }

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
        if (v16 != &v14[2 * v15] && *v16 == v13)
        {
          v44 = v16[1];
          *&v64 = v10;
          *(&v64 + 1) = v44;
          if (mlir::ShapedType::hasRank(&v64))
          {
            goto LABEL_77;
          }

          goto LABEL_84;
        }
      }

LABEL_76:
      v64 = v10;
      if (mlir::ShapedType::hasRank(&v64))
      {
LABEL_77:
        Shape = mlir::ShapedType::getShape(&v64);
        if (!v42)
        {
LABEL_81:
          v8 = mlir::DenseElementsAttr::get(v64, *(&v64 + 1), v66, 1);
          if (LODWORD(v66[1]) < 0x41)
          {
            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_85;
        }

        v43 = 8 * v42;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_84:
      v8 = 0;
      if (LODWORD(v66[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_85;
    }

    v62 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v63 = v22;
    if (!v62 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v62, &v64), BYTE8(v65) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v59) = v64;
    if (v64 == 1)
    {
      v60 = *(&v64 + 1);
    }

    else
    {
      (*(**(&v64 + 1) + 16))(&v60);
    }

    v61 = v65;
    v66[0] = v67;
    v66[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v62, v63);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v66, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v62, v63);
    if (v24)
    {
      v25 = v24;
      v26 = v61;
      do
      {
        if (BYTE1(v59))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (v59 == 1)
        {
          v28 = (v60 + 16 * v27);
          v56 = *(v28 + 2);
          if (v56 > 0x40)
          {
            llvm::APInt::initSlowCase(&v55, v28);
          }

          v55 = *v28;
        }

        else
        {
          (*(*v60 + 24))(&v55);
        }

        llvm::APInt::sextOrTrunc(&v55, Width, &v57);
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }

        if (LODWORD(v66[1]) >= HIDWORD(v66[1]))
        {
          if (v66[0] > &v57 || v66[0] + 16 * LODWORD(v66[1]) <= &v57)
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        v29 = (v66[0] + 16 * LODWORD(v66[1]));
        v30 = v58;
        *(v29 + 2) = v58;
        if (v30 > 0x40)
        {
          llvm::APInt::initSlowCase(v29, &v57);
        }

        *v29 = v57;
        ++LODWORD(v66[1]);
        if (v58 >= 0x41 && v57)
        {
          MEMORY[0x259C63150](v57, 0x1000C8000313F17);
        }

        v26 = ++v61;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_91;
    }

    v31 = *v10;
    {
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v34)
      {
        goto LABEL_67;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v34)
      {
LABEL_67:
        v35 = v33;
        v36 = v34;
        do
        {
          v37 = v36 >> 1;
          v38 = &v35[2 * (v36 >> 1)];
          v40 = *v38;
          v39 = v38 + 2;
          v36 += ~(v36 >> 1);
          if (v40 < v32)
          {
            v35 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        while (v36);
LABEL_89:
        if (v35 != &v33[2 * v34] && *v35 == v32)
        {
          v45 = v35[1];
          goto LABEL_92;
        }

LABEL_91:
        v45 = 0;
LABEL_92:
        v8 = mlir::DenseElementsAttr::get(v10, v45, v66[0], LODWORD(v66[1]));
        v46 = v66[0];
        if (LODWORD(v66[1]))
        {
          v47 = (v66[0] + 16 * LODWORD(v66[1]) - 8);
          v48 = -16 * LODWORD(v66[1]);
          v49 = v47;
          do
          {
            v50 = *v49;
            v49 -= 4;
            if (v50 >= 0x41)
            {
              v51 = *(v47 - 1);
              if (v51)
              {
                MEMORY[0x259C63150](v51, 0x1000C8000313F17);
              }
            }

            v47 = v49;
            v48 += 16;
          }

          while (v48);
          v46 = v66[0];
        }

        if (v46 != v67)
        {
          free(v46);
        }

        if ((v59 & 1) == 0)
        {
          v52 = v60;
          v60 = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }
        }

        if ((BYTE8(v65) & 1) != 0 && (v64 & 1) == 0)
        {
          v53 = *(&v64 + 1);
          *(&v64 + 1) = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v34 = 0;
    v35 = v33;
    goto LABEL_89;
  }

  v59 = v8;
  mlir::IntegerAttr::getValue(&v59, &v64);
  llvm::APInt::sextOrTrunc(&v64, Width, v66);
  if (DWORD2(v64) >= 0x41 && v64)
  {
    MEMORY[0x259C63150](v64, 0x1000C8000313F17);
  }

  v8 = mlir::IntegerAttr::get(v10, v66);
  if (LODWORD(v66[1]) >= 0x41)
  {
LABEL_85:
    if (v66[0])
    {
      MEMORY[0x259C63150](v66[0], 0x1000C8000313F17);
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::IndexCastUIOp::fold(void *a1, uint64_t a2)
{
  v68 = *MEMORY[0x277D85DE8];
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8));
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v5 = ElementTypeOrSelf;
  }

  else
  {
    v5 = 0;
  }

  v66[0] = v5;
  if (v5)
  {
    Width = mlir::IntegerType::getWidth(v66);
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  else
  {
    Width = 64;
    v7 = *(a2 + 40);
    v8 = *v7;
    if (!*v7)
    {
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  v9 = *(*v8 + 136);
  if (v9 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if (mlir::DenseElementsAttr::classof(v8))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v66[0] = v11;
    if (v11 && mlir::DenseElementsAttr::isSplat(v66))
    {
      v62 = *v7;
      mlir::DenseElementsAttr::getValues<llvm::APInt>(&v62, v66);
      v64 = *v66;
      v65 = v67[0];
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v64, &v59);
      llvm::APInt::zextOrTrunc(&v59, Width, v66);
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x259C63150](v59, 0x1000C8000313F17);
      }

      if (v10)
      {
        v12 = *v10;
        {
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_76;
          }
        }

        else
        {
          mlir::mps::serialization::ExtractOp::inferReturnTypes();
          v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v14 = *(v12 + 8);
          v15 = *(v12 + 16);
          if (!v15)
          {
            goto LABEL_76;
          }
        }

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
        if (v16 != &v14[2 * v15] && *v16 == v13)
        {
          v44 = v16[1];
          *&v64 = v10;
          *(&v64 + 1) = v44;
          if (mlir::ShapedType::hasRank(&v64))
          {
            goto LABEL_77;
          }

          goto LABEL_84;
        }
      }

LABEL_76:
      v64 = v10;
      if (mlir::ShapedType::hasRank(&v64))
      {
LABEL_77:
        Shape = mlir::ShapedType::getShape(&v64);
        if (!v42)
        {
LABEL_81:
          v8 = mlir::DenseElementsAttr::get(v64, *(&v64 + 1), v66, 1);
          if (LODWORD(v66[1]) < 0x41)
          {
            return v8 & 0xFFFFFFFFFFFFFFFBLL;
          }

          goto LABEL_85;
        }

        v43 = 8 * v42;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v43 -= 8;
          if (!v43)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_84:
      v8 = 0;
      if (LODWORD(v66[1]) < 0x41)
      {
        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }

      goto LABEL_85;
    }

    v62 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(*v7);
    v63 = v22;
    if (!v62 || (mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v62, &v64), BYTE8(v65) != 1))
    {
      v8 = 0;
      return v8 & 0xFFFFFFFFFFFFFFFBLL;
    }

    LOWORD(v59) = v64;
    if (v64 == 1)
    {
      v60 = *(&v64 + 1);
    }

    else
    {
      (*(**(&v64 + 1) + 16))(&v60);
    }

    v61 = v65;
    v66[0] = v67;
    v66[1] = 0x300000000;
    NumElements = mlir::ElementsAttr::getNumElements(v62, v63);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(v66, NumElements);
    v24 = mlir::ElementsAttr::getNumElements(v62, v63);
    if (v24)
    {
      v25 = v24;
      v26 = v61;
      do
      {
        if (BYTE1(v59))
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        if (v59 == 1)
        {
          v28 = (v60 + 16 * v27);
          v56 = *(v28 + 2);
          if (v56 > 0x40)
          {
            llvm::APInt::initSlowCase(&v55, v28);
          }

          v55 = *v28;
        }

        else
        {
          (*(*v60 + 24))(&v55);
        }

        llvm::APInt::zextOrTrunc(&v55, Width, &v57);
        if (v56 >= 0x41 && v55)
        {
          MEMORY[0x259C63150](v55, 0x1000C8000313F17);
        }

        if (LODWORD(v66[1]) >= HIDWORD(v66[1]))
        {
          if (v66[0] > &v57 || v66[0] + 16 * LODWORD(v66[1]) <= &v57)
          {
            llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow();
        }

        v29 = (v66[0] + 16 * LODWORD(v66[1]));
        v30 = v58;
        *(v29 + 2) = v58;
        if (v30 > 0x40)
        {
          llvm::APInt::initSlowCase(v29, &v57);
        }

        *v29 = v57;
        ++LODWORD(v66[1]);
        if (v58 >= 0x41 && v57)
        {
          MEMORY[0x259C63150](v57, 0x1000C8000313F17);
        }

        v26 = ++v61;
        --v25;
      }

      while (v25);
    }

    if (!v10)
    {
      goto LABEL_91;
    }

    v31 = *v10;
    {
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v34)
      {
        goto LABEL_67;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v32 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      if (v34)
      {
LABEL_67:
        v35 = v33;
        v36 = v34;
        do
        {
          v37 = v36 >> 1;
          v38 = &v35[2 * (v36 >> 1)];
          v40 = *v38;
          v39 = v38 + 2;
          v36 += ~(v36 >> 1);
          if (v40 < v32)
          {
            v35 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        while (v36);
LABEL_89:
        if (v35 != &v33[2 * v34] && *v35 == v32)
        {
          v45 = v35[1];
          goto LABEL_92;
        }

LABEL_91:
        v45 = 0;
LABEL_92:
        v8 = mlir::DenseElementsAttr::get(v10, v45, v66[0], LODWORD(v66[1]));
        v46 = v66[0];
        if (LODWORD(v66[1]))
        {
          v47 = (v66[0] + 16 * LODWORD(v66[1]) - 8);
          v48 = -16 * LODWORD(v66[1]);
          v49 = v47;
          do
          {
            v50 = *v49;
            v49 -= 4;
            if (v50 >= 0x41)
            {
              v51 = *(v47 - 1);
              if (v51)
              {
                MEMORY[0x259C63150](v51, 0x1000C8000313F17);
              }
            }

            v47 = v49;
            v48 += 16;
          }

          while (v48);
          v46 = v66[0];
        }

        if (v46 != v67)
        {
          free(v46);
        }

        if ((v59 & 1) == 0)
        {
          v52 = v60;
          v60 = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }
        }

        if ((BYTE8(v65) & 1) != 0 && (v64 & 1) == 0)
        {
          v53 = *(&v64 + 1);
          *(&v64 + 1) = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        return v8 & 0xFFFFFFFFFFFFFFFBLL;
      }
    }

    v34 = 0;
    v35 = v33;
    goto LABEL_89;
  }

  v59 = v8;
  mlir::IntegerAttr::getValue(&v59, &v64);
  llvm::APInt::zextOrTrunc(&v64, Width, v66);
  if (DWORD2(v64) >= 0x41 && v64)
  {
    MEMORY[0x259C63150](v64, 0x1000C8000313F17);
  }

  v8 = mlir::IntegerAttr::get(v10, v66);
  if (LODWORD(v66[1]) >= 0x41)
  {
LABEL_85:
    if (v66[0])
    {
      MEMORY[0x259C63150](v66[0], 0x1000C8000313F17);
    }
  }

  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(v8);
    result = 0;
    v11 = v9;
    if (v12)
    {
      if (v9)
      {
        IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
        return IntOrFloatBitWidth == mlir::Type::getIntOrFloatBitWidth(&v11);
      }
    }
  }

  return result;
}

uint64_t areValidCastInputsAndOutputs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v18[2] = *MEMORY[0x277D85DE8];
  if (a2 == 1 && a4 == 1)
  {
    v7 = a1;
    v8 = mlir::TypeRange::dereference_iterator(a1, 0);
    v9 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v18[0] = v10;
    if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v17[0] = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || (Encoding = mlir::RankedTensorType::getEncoding(v18), Encoding == mlir::RankedTensorType::getEncoding(v17)))
    {
      v16 = mlir::TypeRange::dereference_iterator(v7, 0);
      mlir::TypeRange::TypeRange(v18, &v16, 1uLL);
      v15 = mlir::TypeRange::dereference_iterator(a3, 0);
      mlir::TypeRange::TypeRange(v17, &v15, 1uLL);
      v5 = mlir::verifyCompatibleShapes(v18[0], v18[1], v17[0], v17[1]);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>(void *a1)
{
  v1 = *a1;
  {
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v1 + 8);
    v4 = *(v1 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v35 = v1;
    v36 = a1;
    mlir::tensor::ExpandShapeOp::fold();
    a1 = v36;
    v2 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v3 = *(v35 + 8);
    v4 = *(v35 + 16);
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v6 >> 1;
    v8 = &v5[2 * (v6 >> 1)];
    v10 = *v8;
    v9 = v8 + 2;
    v6 += ~(v6 >> 1);
    if (v10 < v2)
    {
      v5 = v9;
    }

    else
    {
      v6 = v7;
    }
  }

  while (v6);
  if (v5 != &v3[2 * v4] && *v5 == v2 && v5[1])
  {
    v11 = *(*a1 + 136);
    v12 = v11 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v13 = v12 || v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v13 && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

LABEL_25:
  result = mlir::getElementTypeOrSelf(a1);
  v16 = *(*result + 136);
  if (v16 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id && v16 != &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
  {
    return 0;
  }

  return result;
}

unint64_t mlir::arith::BitcastOp::fold(void *a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  v4 = mlir::DenseElementsAttr::classof(**(a2 + 40));
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  v55 = v5;
  if (v4)
  {
    if (v3)
    {
      v6 = *v3;
      {
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
        }
      }

      else
      {
        mlir::tensor::ExpandShapeOp::fold();
        v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        if (!v9)
        {
          goto LABEL_102;
        }
      }

      v10 = v8;
      v11 = v9;
      do
      {
        v12 = v11 >> 1;
        v13 = &v10[2 * (v11 >> 1)];
        v15 = *v13;
        v14 = v13 + 2;
        v11 += ~(v11 >> 1);
        if (v15 < v7)
        {
          v10 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
      if (v10 != &v8[2 * v9] && *v10 == v7)
      {
        v51 = v10[1];
        goto LABEL_103;
      }
    }

LABEL_102:
    v51 = 0;
LABEL_103:
    v57 = v3;
    v58[0] = v51;
    ElementType = mlir::ShapedType::getElementType(&v57);
    return mlir::DenseElementsAttr::bitcast(&v55, ElementType) & 0xFFFFFFFFFFFFFFFBLL;
  }

  v16 = *v3;
  {
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    mlir::tensor::ExpandShapeOp::fold();
    v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (!v19)
    {
      goto LABEL_28;
    }
  }

  v20 = v18;
  v21 = v19;
  do
  {
    v22 = v21 >> 1;
    v23 = &v20[2 * (v21 >> 1)];
    v25 = *v23;
    v24 = v23 + 2;
    v21 += ~(v21 >> 1);
    if (v25 < v17)
    {
      v20 = v24;
    }

    else
    {
      v21 = v22;
    }
  }

  while (v21);
  if (v20 != &v18[2 * v19] && *v20 == v17 && v20[1])
  {
    return 0;
  }

LABEL_28:
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v54 = v2;
    Value = mlir::FloatAttr::getValue(&v54, &v57);
    v27 = v58[0];
    v28 = llvm::APFloatBase::PPCDoubleDouble(Value);
    if (v28 == v27)
    {
      llvm::detail::DoubleAPFloat::bitcastToAPInt(v58, &v55);
      if (v28 != v58[0])
      {
        goto LABEL_32;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::bitcastToAPInt(v58, &v55);
      if (v28 != v58[0])
      {
LABEL_32:
        llvm::detail::IEEEFloat::~IEEEFloat(v58);
        goto LABEL_37;
      }
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v58);
    goto LABEL_37;
  }

  v53 = v2;
  mlir::IntegerAttr::getValue(&v53, &v55);
LABEL_37:
  v30 = *(*v3 + 136);
  v46 = v30 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v30 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id;
  if (v46 && (v54 = v3) != 0)
  {
    FloatSemantics = mlir::FloatType::getFloatSemantics(&v54);
    v48 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
    if (v48 == FloatSemantics)
    {
      llvm::detail::DoubleAPFloat::DoubleAPFloat(v58, FloatSemantics);
    }

    llvm::detail::IEEEFloat::IEEEFloat(v58, FloatSemantics, &v55);
    v49 = mlir::FloatAttr::get(v3, &v57);
    if (v48 == v58[0])
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v58);
      result = v49 & 0xFFFFFFFFFFFFFFFBLL;
      if (v56 < 0x41)
      {
        return result;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(v58);
      result = v49 & 0xFFFFFFFFFFFFFFFBLL;
      if (v56 < 0x41)
      {
        return result;
      }
    }
  }

  else
  {
    result = mlir::IntegerAttr::get(v3, &v55) & 0xFFFFFFFFFFFFFFFBLL;
    if (v56 < 0x41)
    {
      return result;
    }
  }

  if (v55)
  {
    v50 = result;
    MEMORY[0x259C63150](v55, 0x1000C8000313F17);
    return v50;
  }

  return result;
}

void *llvm::APFloat::APFloat(void *a1, void *a2, const llvm::APInt **a3)
{
  if (llvm::APFloatBase::PPCDoubleDouble(a1) == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a1 + 1, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat((a1 + 1), a2, a3);
  return a1;
}

BOOL mlir::arith::applyCmpPredicate(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        return llvm::APInt::compareSigned(this, a3) >= 0;
      }

      else
      {
        return llvm::APInt::compare(this, a3) >> 31;
      }
    }

    else if (a1 == 7)
    {
      return llvm::APInt::compare(this, a3) < 1;
    }

    else if (a1 == 8)
    {
      return llvm::APInt::compare(this, a3) > 0;
    }

    else
    {
      return llvm::APInt::compare(this, a3) >= 0;
    }
  }

  else if (a1 <= 1)
  {
    if (a1)
    {
      if (*(this + 2) > 0x40u)
      {
        return !llvm::APInt::equalSlowCase(this, a3);
      }

      else
      {
        return *this != *a3;
      }
    }

    else if (*(this + 2) > 0x40u)
    {

      return llvm::APInt::equalSlowCase(this, a3);
    }

    else
    {
      return *this == *a3;
    }
  }

  else if (a1 == 2)
  {
    return llvm::APInt::compareSigned(this, a3) >> 31;
  }

  else if (a1 == 3)
  {
    return llvm::APInt::compareSigned(this, a3) < 1;
  }

  else
  {
    return llvm::APInt::compareSigned(this, a3) > 0;
  }
}

void *mlir::arith::CmpIOp::fold(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x277D85DE8];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    v146 = *(*a1 + 80);
    v8 = 0x2A9u >> mlir::IntegerAttr::getInt(&v146);
    v146 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    Context = mlir::Type::getContext(&v146);
    v10 = mlir::BoolAttr::get(Context, (v8 & 1));
    ElementType = v10;
    if (v146)
    {
      v11 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v146);
      if (v11)
      {
        v10 = mlir::DenseElementsAttr::get(v11, v12, &ElementType, 1uLL);
      }
    }

    return (v10 & 0xFFFFFFFFFFFFFFFBLL);
  }

  v4 = *(*(a2 + 48) + 8);
  if (!v4)
  {
    goto LABEL_48;
  }

  v147.i32[0] = 1;
  v146 = 0;
  ElementType = &v146;
  v5 = mlir::detail::constant_int_value_binder::match(&ElementType, v4);
  v6 = v147.i32[0];
  if (v5)
  {
    if (v147.i32[0] < 0x41u)
    {
      v7 = v146 == 0;
      goto LABEL_17;
    }

    if (v6 - llvm::APInt::countLeadingZerosSlowCase(&v146) > 0x40)
    {
      if (v146)
      {
        MEMORY[0x259C63150](v146, 0x1000C8000313F17);
      }

      goto LABEL_48;
    }

    v7 = *v146 == 0;
  }

  else
  {
    v7 = 0;
    if (v147.i32[0] < 0x41u)
    {
      goto LABEL_17;
    }
  }

  if (!v146)
  {
LABEL_17:
    if (!v7)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  MEMORY[0x259C63150](v146, 0x1000C8000313F17);
  if (!v7)
  {
    goto LABEL_48;
  }

LABEL_18:
  v146 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v146);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_20;
  }

  v20 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = *(*v20 + 136);
  if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v22 = (*(*(*(DefiningOp + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v22 = 0;
  }

  v146 = v22;
  if (!v22)
  {
    if (v21 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v20 = 0;
    }

    v146 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }

    v19 = DefiningOp;
    ElementType = mlir::VectorType::getElementType(&v146);
    if (mlir::IntegerType::getWidth(&ElementType) != 1)
    {
      goto LABEL_20;
    }

LABEL_40:
    v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    if (mlir::IntegerAttr::getInt(&v146) == 1)
    {
      return (*(*(v19 + 72) + 24) | 4);
    }

    goto LABEL_20;
  }

  v19 = DefiningOp;
  if (mlir::IntegerType::getWidth(&v146) == 1)
  {
    goto LABEL_40;
  }

LABEL_20:
  v146 = *(*(*a1 + 72) + 24);
  v15 = mlir::Value::getDefiningOp(&v146);
  if (!v15 || *(*(v15 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    goto LABEL_48;
  }

  v16 = (*(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v17 = *(*v16 + 136);
  if (v17 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v18 = (*(*(*(v15 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v18 = 0;
  }

  v146 = v18;
  if (v18)
  {
    v19 = v15;
    if (mlir::IntegerType::getWidth(&v146) != 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v17 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
    {
      v16 = 0;
    }

    v146 = v16;
    if (!v16)
    {
      goto LABEL_48;
    }

    v19 = v15;
    ElementType = mlir::VectorType::getElementType(&v146);
    if (mlir::IntegerType::getWidth(&ElementType) != 1)
    {
      goto LABEL_48;
    }
  }

  v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  if (mlir::IntegerAttr::getInt(&v146) == 1)
  {
    return (*(*(v19 + 72) + 24) | 4);
  }

LABEL_48:
  v23 = *(a2 + 48);
  result = *v23;
  if (!*v23)
  {
    v111 = 0;
    v112 = 0;
    return result;
  }

  if (!*(v23 + 8))
  {
    v147 = vdupq_n_s64(4uLL);
    v148 = xmmword_2573695C0;
    v149 = vdupq_n_s64(5uLL);
    v150 = xmmword_257390920;
    v151 = vdupq_n_s64(8uLL);
    v152 = xmmword_2573695E0;
    v153 = vdupq_n_s64(9uLL);
    v155[0] = 0;
    v155[1] = 0;
    v154 = 7;
    v156 = vdupq_n_s64(1uLL);
    ElementType = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&ElementType);
    v31 = &v146;
    if (Int > 4)
    {
      if (Int <= 6)
      {
        if (Int == 5)
        {
          v31 = &v149.u64[1];
        }

        else
        {
          v31 = (&v150 + 8);
        }
      }

      else if (Int == 7)
      {
        v31 = (&v152 + 8);
      }

      else if (Int == 8)
      {
        v31 = &v151.u64[1];
      }

      else
      {
        v31 = &v153.u64[1];
      }
    }

    else if (Int <= 1)
    {
      if (Int)
      {
        v31 = &v156;
      }

      else
      {
        v31 = v155;
      }
    }

    else if (Int != 2)
    {
      if (Int == 3)
      {
        v31 = (&v148 + 8);
      }

      else
      {
        v31 = &v147.u64[1];
      }
    }

    v56 = v31->u64[1];
    v57 = mlir::Attribute::getContext((*a1 + 24));
    v58 = mlir::IntegerType::get(v57, 64, 0);
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::IntegerAttr::get(v58, v56);
    v59 = *a1;
    v60 = *(*a1 + 72);
    v61 = v60[3];
    v62 = v60[7];
    v63 = v60[1];
    if (v63)
    {
      v64 = *v60;
      *v63 = *v60;
      if (v64)
      {
        *(v64 + 8) = v63;
      }
    }

    v60[3] = v62;
    v60[1] = v62;
    v65 = *v62;
    *v60 = *v62;
    if (v65)
    {
      *(v65 + 8) = v60;
    }

    *v62 = v60;
    v66 = v60 + 4;
    v67 = v60[5];
    if (v67)
    {
      v68 = *v66;
      *v67 = *v66;
      if (v68)
      {
        *(v68 + 8) = v67;
      }
    }

    v60[7] = v61;
    v60[5] = v61;
    v69 = *v61;
    v60[4] = *v61;
    if (v69)
    {
      *(v69 + 8) = v66;
    }

    *v61 = v66;
    v70 = *(v59 + 36);
    v71 = v59 - 16;
    if (v70)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    return (mlir::detail::OpResultImpl::getNextResultAtOffset(v72, 0) | 4);
  }

  result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(result);
  v111 = result;
  v112 = v24;
  if (!result)
  {
    return result;
  }

  v25 = *(a2 + 48);
  Type = mlir::TypedAttr::getType(&v111);
  v26 = mlir::Type::getContext(&Type);
  v27 = mlir::IntegerType::get(v26, 1, 0);
  ElementType = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(Type);
  v131 = v28;
  if (ElementType)
  {
    LOBYTE(v146) = 0;
    v147.i8[8] = 0;
    v29 = mlir::ShapedType::cloneWith(&ElementType, &v146, v27);
  }

  else
  {
    if (*(*Type + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_62;
    }

    v29 = mlir::UnrankedTensorType::get(v27);
  }

  v27 = v29;
LABEL_62:
  v146 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v32 = mlir::IntegerAttr::getInt(&v146);
  v145 = v27;
  if (!v27)
  {
    goto LABEL_134;
  }

  v33 = *v25;
  if (!*v25)
  {
    goto LABEL_134;
  }

  v35 = v25 + 1;
  v34 = v25[1];
  if (!v34)
  {
    goto LABEL_134;
  }

  v36 = v32;
  if (*(*v33 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    ElementType = *v25;
    Type = v34;
    v73 = mlir::IntegerAttr::getType(&ElementType);
    if (v73 == mlir::IntegerAttr::getType(&Type))
    {
      mlir::IntegerAttr::getValue(&ElementType, &v143);
      mlir::IntegerAttr::getValue(&Type, &v141);
      v74 = mlir::arith::applyCmpPredicate(v36, &v143, &v141);
      v147.i32[0] = 1;
      v146 = v74;
      v147.i8[8] = 1;
      if (v142 >= 0x41 && v141)
      {
        MEMORY[0x259C63150](v141, 0x1000C8000313F17);
      }

      if (v144 >= 0x41 && v143)
      {
        MEMORY[0x259C63150](v143, 0x1000C8000313F17);
      }

      v45 = mlir::IntegerAttr::get(v145, &v146);
LABEL_130:
      if ((v147.i8[8] & 1) != 0 && v147.i32[0] >= 0x41u && v146)
      {
        v75 = v45;
        MEMORY[0x259C63150](v146, 0x1000C8000313F17);
        return (v75 & 0xFFFFFFFFFFFFFFFBLL);
      }

      return (v45 & 0xFFFFFFFFFFFFFFFBLL);
    }

LABEL_134:
    v45 = 0;
    return (v45 & 0xFFFFFFFFFFFFFFFBLL);
  }

  if (mlir::DenseElementsAttr::classof(*v25))
  {
    v37 = v33;
  }

  else
  {
    v37 = 0;
  }

  v146 = v37;
  if (v37 && mlir::DenseElementsAttr::isSplat(&v146))
  {
    v38 = *v35;
    v39 = mlir::DenseElementsAttr::classof(*v35) ? v38 : 0;
    v146 = v39;
    if (v39)
    {
      if (mlir::DenseElementsAttr::isSplat(&v146))
      {
        v40 = v25[1];
        ElementType = *v25;
        Type = v40;
        v41 = mlir::DenseElementsAttr::getType(&ElementType);
        if (v41 == mlir::DenseElementsAttr::getType(&Type))
        {
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&ElementType, &v139);
          mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&Type, &v137);
          v42 = mlir::arith::applyCmpPredicate(v36, &v139, &v137);
          v147.i32[0] = 1;
          v146 = v42;
          v147.i8[8] = 1;
          if (v138 >= 0x41 && v137)
          {
            MEMORY[0x259C63150](v137, 0x1000C8000313F17);
          }

          if (v140 >= 0x41 && v139)
          {
            MEMORY[0x259C63150](v139, 0x1000C8000313F17);
          }

          v43 = llvm::cast<mlir::ShapedType,mlir::Type>(&v145);
          v45 = mlir::DenseElementsAttr::get(v43, v44, &v146, 1);
          goto LABEL_130;
        }

        goto LABEL_134;
      }
    }
  }

  v46 = **v25;
  {
    v110 = v46;
    mlir::memref::GlobalOp::verify();
    v47 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v48 = *(v110 + 8);
    v49 = *(v110 + 16);
    if (v49)
    {
      goto LABEL_91;
    }

    return 0;
  }

  v47 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v48 = *(v46 + 8);
  v49 = *(v46 + 16);
  if (!v49)
  {
    return 0;
  }

LABEL_91:
  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 == &v48[2 * v49] || *v50 != v47 || !v50[1])
  {
    return 0;
  }

  v76 = **v35;
  {
    v77 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v78 = *(v76 + 8);
    v79 = *(v76 + 16);
    if (v79)
    {
      goto LABEL_144;
    }

LABEL_151:
    v79 = 0;
    v80 = v78;
    goto LABEL_152;
  }

  v86 = v76;
  mlir::memref::GlobalOp::verify();
  v77 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v78 = *(v86 + 8);
  v79 = *(v86 + 16);
  if (!v79)
  {
    goto LABEL_151;
  }

LABEL_144:
  v80 = v78;
  v81 = v79;
  do
  {
    v82 = v81 >> 1;
    v83 = &v80[2 * (v81 >> 1)];
    v85 = *v83;
    v84 = v83 + 2;
    v81 += ~(v81 >> 1);
    if (v85 < v77)
    {
      v80 = v84;
    }

    else
    {
      v81 = v82;
    }
  }

  while (v81);
LABEL_152:
  if (v80 == &v78[2 * v79])
  {
    return 0;
  }

  if (*v80 != v77)
  {
    return 0;
  }

  if (!v80[1])
  {
    return 0;
  }

  v135 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25);
  v136 = v87;
  v134[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v25 + 1);
  v134[1] = v88;
  v89 = mlir::ElementsAttr::getType(&v135);
  if (v89 != mlir::ElementsAttr::getType(v134))
  {
    return 0;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v135, &ElementType);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(v134, &Type);
  if (v133 == 1 && v129 == 1)
  {
    v123 = ElementType;
    if (ElementType == 1)
    {
      v124 = v131;
    }

    else
    {
      (*(*v131 + 16))(&v124);
    }

    v125 = v132;
    v120 = Type;
    if (Type == 1)
    {
      v121 = v127;
    }

    else
    {
      (*(*v127 + 16))(&v121);
    }

    v122 = v128;
    v146 = &v147.u64[1];
    v147.i64[0] = 0x400000000;
    NumElements = mlir::ElementsAttr::getNumElements(v135, v136);
    llvm::SmallVectorImpl<llvm::APInt>::reserve(&v146, NumElements);
    v91 = mlir::ElementsAttr::getNumElements(v135, v136);
    if (v91)
    {
      v92 = v91;
      v93 = v125;
      while (1)
      {
        v94 = HIBYTE(v123) ? 0 : v93;
        if (v123 == 1)
        {
          v95 = (v124 + 16 * v94);
          v116 = *(v95 + 2);
          if (v116 > 0x40)
          {
            llvm::APInt::initSlowCase(&v115, v95);
          }

          v115 = *v95;
        }

        else
        {
          (*(*v124 + 24))(&v115);
        }

        v96 = HIBYTE(v120) ? 0 : v122;
        if (v120 == 1)
        {
          v97 = (v121 + 16 * v96);
          v114 = *(v97 + 2);
          if (v114 > 0x40)
          {
            llvm::APInt::initSlowCase(&v113, v97);
          }

          v113 = *v97;
          v98 = mlir::arith::applyCmpPredicate(v36, &v115, &v113);
          v118 = 1;
          v117 = v98;
          v119 = 1;
        }

        else
        {
          (*(*v121 + 24))(&v113);
          v99 = v114;
          v100 = mlir::arith::applyCmpPredicate(v36, &v115, &v113);
          v118 = 1;
          v117 = v100;
          v119 = 1;
          if (v99 >= 0x41 && v113)
          {
            MEMORY[0x259C63150](v113, 0x1000C8000313F17);
          }
        }

        if (v116 >= 0x41 && v115)
        {
          MEMORY[0x259C63150](v115, 0x1000C8000313F17);
        }

        if (v119 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v146, &v117);
        if ((v119 & 1) != 0 && v118 >= 0x41 && v117)
        {
          MEMORY[0x259C63150](v117, 0x1000C8000313F17);
        }

        v93 = ++v125;
        ++v122;
        if (!--v92)
        {
          goto LABEL_195;
        }
      }

      v103 = 0;
    }

    else
    {
LABEL_195:
      v101 = llvm::cast<mlir::ShapedType,mlir::Type>(&v145);
      v103 = mlir::DenseElementsAttr::get(v101, v102, v146, v147.u32[0]) & 0xFFFFFFFFFFFFFFFBLL;
    }

    llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v146);
    if ((v120 & 1) == 0)
    {
      v104 = v121;
      v121 = 0;
      if (v104)
      {
        (*(*v104 + 8))(v104);
      }
    }

    if ((v123 & 1) == 0)
    {
      v105 = v124;
      v124 = 0;
      if (v105)
      {
        (*(*v105 + 8))(v105);
      }
    }

    result = v103;
  }

  else
  {
    result = 0;
  }

  if (v129 == 1 && (Type & 1) == 0)
  {
    v106 = v127;
    v127 = 0;
    if (v106)
    {
      v107 = result;
      (*(*v106 + 8))(v106);
      result = v107;
    }
  }

  if (v133 == 1 && (ElementType & 1) == 0)
  {
    v108 = v131;
    v131 = 0;
    if (v108)
    {
      v109 = result;
      (*(*v108 + 8))(v108);
      return v109;
    }
  }

  return result;
}

uint64_t mlir::arith::CmpIOp::setPredicate(uint64_t a1, unint64_t a2)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  v5 = mlir::IntegerType::get(Context, 64, 0);
  result = mlir::IntegerAttr::get(v5, a2);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

uint64_t mlir::arith::applyCmpPredicate(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  v7 = llvm::APFloatBase::PPCDoubleDouble(a1);
  v8 = (a3 + 8);
  if (v7 == v6)
  {
    v9 = llvm::detail::DoubleAPFloat::compare(v5, v8);
  }

  else
  {
    v9 = llvm::detail::IEEEFloat::compare(v5, v8);
  }

  v10 = 0;
  switch(a1)
  {
    case 1uLL:
      v10 = v9 == 1;
      goto LABEL_6;
    case 2uLL:
      result = v9 == 2;
      break;
    case 3uLL:
      result = v9 - 1 < 2;
      break;
    case 4uLL:
      result = v9 == 0;
      break;
    case 5uLL:
      result = v9 < 2;
      break;
    case 6uLL:
      result = (v9 & 0xFFFFFFFD) != 1;
      break;
    case 7uLL:
      result = v9 != 3;
      break;
    case 8uLL:
      result = (v9 & 0xFFFFFFFD) == 1;
      break;
    case 9uLL:
      result = (v9 & 0xFFFFFFFE) == 2;
      break;
    case 0xAuLL:
      v16 = v9 == 1 || (v9 & 0xFFFFFFFE) == 2;
      result = v16;
      break;
    case 0xBuLL:
      v13 = v9 == 3 || v9 == 0;
      result = v13;
      break;
    case 0xCuLL:
      v14 = 0xBu >> (v9 & 0xF);
      if (v9 >= 4)
      {
        LOBYTE(v14) = 0;
      }

      result = v14 & 1;
      break;
    case 0xDuLL:
      result = v9 != 1;
      break;
    case 0xEuLL:
      result = v9 == 3;
      break;
    case 0xFuLL:
      result = 1;
      break;
    default:
LABEL_6:
      result = v10;
      break;
  }

  return result;
}

unint64_t mlir::arith::CmpFOp::fold(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 56);
  v4 = *v3;
  if (*v3 && *(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v4 = 0;
  }

  v27 = v4;
  v5 = v3[1];
  if (!v5)
  {
    v6 = 0;
    v26 = 0;
    if (!v4)
    {
      goto LABEL_16;
    }

LABEL_11:
    Value = mlir::FloatAttr::getValue(&v27, &v30);
    v8 = v31;
    v9 = llvm::APFloatBase::PPCDoubleDouble(Value);
    v10 = v32;
    v11 = v9 == v8;
    if (v9 != v8)
    {
      v10 = &v30;
    }

    v12 = *(v10 + 28) & 7;
    if (v11)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
      if (v12 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v31);
      if (v12 != 1)
      {
        goto LABEL_16;
      }
    }

    v6 = v27;
    v26 = v27;
    goto LABEL_16;
  }

  if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v26 = v6;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (v6)
  {
    v13 = mlir::FloatAttr::getValue(&v26, &v30);
    v14 = v31;
    v15 = llvm::APFloatBase::PPCDoubleDouble(v13);
    v16 = v32;
    v17 = v15 == v14;
    if (v15 != v14)
    {
      v16 = &v30;
    }

    v18 = *(v16 + 28) & 7;
    if (v17)
    {
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
      if (v18 == 1)
      {
LABEL_21:
        v19 = v26;
        v27 = v26;
        result = 0;
        if (!v26)
        {
          return result;
        }

LABEL_29:
        if (!v19)
        {
          return result;
        }

        v30 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
        Int = mlir::IntegerAttr::getInt(&v30);
        mlir::FloatAttr::getValue(&v27, &v30);
        mlir::FloatAttr::getValue(&v26, v28);
        v22 = mlir::arith::applyCmpPredicate(Int, &v30, v28);
        v23 = v29[0];
        v24 = llvm::APFloatBase::PPCDoubleDouble(v22);
        if (v24 == v23)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v29);
          if (v24 != v31)
          {
            goto LABEL_32;
          }
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(v29);
          if (v24 != v31)
          {
LABEL_32:
            llvm::detail::IEEEFloat::~IEEEFloat(&v31);
LABEL_35:
            Context = mlir::Attribute::getContext((*a1 + 24));
            return mlir::BoolAttr::get(Context, v22) & 0xFFFFFFFFFFFFFFFBLL;
          }
        }

        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v31);
        goto LABEL_35;
      }
    }

    else
    {
      llvm::detail::IEEEFloat::~IEEEFloat(&v31);
      if (v18 == 1)
      {
        goto LABEL_21;
      }
    }

    v19 = v26;
    result = 0;
    if (!v27)
    {
      return result;
    }

    goto LABEL_29;
  }

  v19 = 0;
  result = 0;
  if (v27)
  {
    goto LABEL_29;
  }

  return result;
}

unint64_t mlir::arith::SelectOp::fold(uint64_t a1, uint64_t a2)
{
  v78[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = v2[7];
  v4 = v2[11];
  if (v3 == v4)
  {
    return v3 | 4;
  }

  v7 = v2[3];
  v70 = v7;
  v8 = *(a2 + 40);
  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_25;
  }

  LODWORD(v77) = 1;
  v76 = 0;
  v71.n128_u64[0] = &v76;
  v10 = mlir::detail::constant_int_value_binder::match(&v71, v9);
  v11 = v77;
  if (!v10)
  {
    v12 = 0;
    if (v77 < 0x41)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (v77 < 0x41)
  {
    v12 = v76 == 1;
    goto LABEL_12;
  }

  if (v11 - llvm::APInt::countLeadingZerosSlowCase(&v76) <= 0x40)
  {
    v12 = *v76 == 1;
LABEL_7:
    if (v76)
    {
      MEMORY[0x259C63150](v76, 0x1000C8000313F17);
      if (!v12)
      {
        goto LABEL_16;
      }

      return v3 | 4;
    }

LABEL_12:
    if (!v12)
    {
      goto LABEL_16;
    }

    return v3 | 4;
  }

  if (v76)
  {
    MEMORY[0x259C63150](v76, 0x1000C8000313F17);
  }

LABEL_16:
  v8 = *(a2 + 40);
  v13 = *v8;
  if (*v8)
  {
    LODWORD(v77) = 1;
    v76 = 0;
    v71.n128_u64[0] = &v76;
    v14 = mlir::detail::constant_int_value_binder::match(&v71, v13);
    v15 = v77;
    if (v14)
    {
      if (v77 < 0x41)
      {
        v16 = v76 == 0;
        goto LABEL_23;
      }

      if (v15 - llvm::APInt::countLeadingZerosSlowCase(&v76) > 0x40)
      {
        if (v76)
        {
          MEMORY[0x259C63150](v76, 0x1000C8000313F17);
        }

LABEL_24:
        v8 = *(a2 + 40);
        goto LABEL_25;
      }

      v16 = *v76 == 0;
    }

    else
    {
      v16 = 0;
      if (v77 < 0x41)
      {
        goto LABEL_23;
      }
    }

    if (v76)
    {
      MEMORY[0x259C63150](v76, 0x1000C8000313F17);
    }

LABEL_23:
    if (v16)
    {
      return v4 | 4;
    }

    goto LABEL_24;
  }

LABEL_25:
  v17 = v8[1];
  if (v17 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v4 | 4;
  }

  v18 = v8[2];
  if (v18 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    return v3 | 4;
  }

  v64 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::Type::isInteger(&v64, 1))
  {
    goto LABEL_60;
  }

  v19 = *(*(a2 + 40) + 8);
  if (!v19)
  {
    goto LABEL_60;
  }

  LODWORD(v77) = 1;
  v76 = 0;
  v71.n128_u64[0] = &v76;
  v20 = mlir::detail::constant_int_value_binder::match(&v71, v19);
  v21 = v77;
  if (v20)
  {
    if (v77 >= 0x41)
    {
      if (v21 - llvm::APInt::countLeadingZerosSlowCase(&v76) > 0x40)
      {
        if (v76)
        {
          MEMORY[0x259C63150](v76, 0x1000C8000313F17);
        }

        goto LABEL_60;
      }

      v22 = v76;
    }

    else
    {
      v22 = &v76;
    }

    v24 = *v22 == 1;
    if (v21 < 0x41)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v24 = 0;
    if (v77 < 0x41)
    {
      goto LABEL_46;
    }
  }

  if (v76)
  {
    MEMORY[0x259C63150](v76, 0x1000C8000313F17);
    if (!v24)
    {
      goto LABEL_60;
    }

    goto LABEL_47;
  }

LABEL_46:
  if (!v24)
  {
    goto LABEL_60;
  }

LABEL_47:
  v25 = *(*(a2 + 40) + 16);
  if (v25)
  {
    LODWORD(v77) = 1;
    v76 = 0;
    v71.n128_u64[0] = &v76;
    if (mlir::detail::constant_int_value_binder::match(&v71, v25))
    {
      v26 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v76);
    }

    else
    {
      v26 = 0;
    }

    if (v77 >= 0x41 && v76)
    {
      MEMORY[0x259C63150](v76, 0x1000C8000313F17);
    }

    if (v26)
    {
      return v7 | 4;
    }
  }

LABEL_60:
  DefiningOp = mlir::Value::getDefiningOp(&v70);
  if (DefiningOp && *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id && (v76 = *(DefiningOp + 16 * ((*(DefiningOp + 44) >> 23) & 1) + 64), v28 = DefiningOp, Int = mlir::IntegerAttr::getInt(&v76), Int <= 1) && ((v30 = *(v28 + 72), v31 = *(v30 + 24), v32 = *(v30 + 56), v31 == v3) ? (v33 = v32 == v4) : (v33 = 0), v33 || (v31 == v4 ? (v34 = v32 == v3) : (v34 = 0), v34)))
  {
    if (Int == 1)
    {
      v59 = v3;
    }

    else
    {
      v59 = v4;
    }

    return v59 | 4;
  }

  else
  {
    v35 = *(a2 + 40);
    v36 = *v35;
    if (*v35 && (!(v37 = mlir::DenseElementsAttr::classof(*v35)) ? (v38 = 0) : (v38 = v36), (v69 = v38, v37) && (v39 = *(a2 + 40), (v40 = *(v39 + 8)) != 0) && (!(v41 = mlir::DenseElementsAttr::classof(*(v39 + 8))) ? (v42 = 0) : (v42 = v40), (v68 = v42, v41) && (v43 = *(a2 + 40), (v44 = *(v43 + 16)) != 0) && (!(v45 = mlir::DenseElementsAttr::classof(*(v43 + 16))) ? (v46 = 0) : (v46 = v44), v67 = v46, v45))))
    {
      v76 = v78;
      v77 = 0x600000000;
      NumElements = mlir::DenseElementsAttr::getNumElements(&v69);
      if (NumElements > HIDWORD(v77))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      mlir::DenseElementsAttr::tryGetValues<mlir::IntegerAttr,void>(&v69, &v71);
      v48 = v71;
      mlir::DenseElementsAttr::tryGetValues<mlir::IntegerAttr,void>(&v69, &v71);
      v49 = v73;
      v50 = mlir::DenseElementsAttr::value_begin<mlir::Attribute>(&v68);
      v52 = v51;
      mlir::DenseElementsAttr::value_end<mlir::Attribute>(&v68);
      v53 = mlir::DenseElementsAttr::value_begin<mlir::Attribute>(&v67);
      v55 = v54;
      mlir::DenseElementsAttr::value_end<mlir::Attribute>(&v67);
      v71 = v48;
      v72 = v50;
      v73 = v52;
      v74 = v53;
      for (i = v55; v71.n128_u64[1] != v49; ++i)
      {
        v60 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v71);
        v61 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v72);
        v62 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v74);
        v64 = v60;
        v65 = v61;
        v66 = v62;
        if (mlir::BoolAttr::getValue(&v64))
        {
          v63 = &v65;
        }

        else
        {
          v63 = &v66;
        }

        if (v77 >= HIDWORD(v77))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v76 + v77) = *v63;
        LODWORD(v77) = v77 + 1;
        ++v71.n128_u64[1];
        ++v73;
      }

      Type = mlir::DenseElementsAttr::getType(&v68);
      result = mlir::DenseElementsAttr::get(Type, v57, v76, v77) & 0xFFFFFFFFFFFFFFFBLL;
      if (v76 != v78)
      {
        v58 = result;
        free(v76);
        return v58;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::DenseElementsAttr::value_begin<mlir::Attribute>(mlir::DenseElementsAttr *a1)
{
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v5, v2, NumElements);
  return v6;
}

uint64_t mlir::DenseElementsAttr::value_end<mlir::Attribute>(mlir::DenseElementsAttr *a1)
{
  mlir::DenseElementsAttr::getType(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v6, *a1, 0);
  v2 = *a1;
  NumElements = mlir::DenseElementsAttr::getNumElements(a1);
  mlir::DenseElementsAttr::AttributeElementIterator::AttributeElementIterator(&v5, v2, NumElements);
  return v5;
}

uint64_t mlir::arith::SelectOp::parse(mlir::arith::SelectOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v16[12] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v15[0] = v16;
  v15[1] = 0x300000000;
  if ((*(*this + 720))(this, v15, 0, 1, 3) & 1) != 0 && ((*(*this + 488))(this, a2 + 112) & 1) != 0 && ((*(*this + 576))(this, &v13))
  {
    if ((*(*this + 128))(this))
    {
      I1Type = v13;
      if (((*(*this + 536))(this, &v13) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = (*(*this + 32))(this);
      I1Type = mlir::Builder::getI1Type(v9);
    }

    v10 = *(a2 + 18);
    if (v10 >= *(a2 + 19))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*(a2 + 8) + 8 * v10) = v13;
    ++*(a2 + 18);
    v14[0] = I1Type;
    v14[1] = v13;
    v14[2] = v13;
    v12[0] = v14;
    v12[1] = 3;
    v11 = (*(*this + 16))(this);
    v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(this, v15, v12, v11, a2 + 16);
    v7 = v15[0];
    if (v15[0] != v16)
    {
      goto LABEL_7;
    }

    return v6;
  }

LABEL_6:
  v6 = 0;
  v7 = v15[0];
  if (v15[0] != v16)
  {
LABEL_7:
    free(v7);
  }

  return v6;
}

BOOL mlir::arith::SelectOp::verify(mlir::Operation **this)
{
  v55 = *MEMORY[0x277D85DE8];
  v40 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v2 = 1;
  if (mlir::Type::isSignlessInteger(&v40, 1))
  {
    return v2;
  }

  v3 = *(*(*(*this - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v3 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v3 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v39 = 257;
    mlir::OpState::emitOpError(this, v38, &v43);
    if (v43)
    {
      LODWORD(v41) = 3;
      *(&v41 + 1) = "expected condition to be a signless i1, but got ";
      v42 = 48;
      if (v46 >= v47)
      {
        if (v45 > &v41 || v45 + 24 * v46 <= &v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v45 + 24 * v46;
      v11 = v41;
      *(v10 + 2) = v42;
      *v10 = v11;
      ++v46;
      if (v43)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v41, v40);
        if (v46 >= v47)
        {
          if (v45 > &v41 || v45 + 24 * v46 <= &v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v45 + 24 * v46;
        v13 = v41;
        *(v12 + 2) = v42;
        *v12 = v13;
        ++v46;
      }
    }

    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
    if (v43)
    {
      mlir::InFlightDiagnostic::report(&v43);
    }

    if (v54 == 1)
    {
      if (v53 != &v54)
      {
        free(v53);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v52;
        v16 = __p;
        if (v52 != __p)
        {
          do
          {
            v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v52 = v14;
        operator delete(v16);
      }

      v17 = v49;
      if (!v49)
      {
        goto LABEL_64;
      }

      v18 = v50;
      v19 = v49;
      if (v50 == v49)
      {
LABEL_63:
        v50 = v17;
        operator delete(v19);
LABEL_64:
        if (v45 != &v48)
        {
          free(v45);
        }

        return v2;
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
LABEL_62:
      v19 = v49;
      goto LABEL_63;
    }

    return v2;
  }

  *&v41 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  Context = mlir::Type::getContext(&v41);
  v7 = mlir::IntegerType::get(Context, 1, 0);
  v38[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v41);
  v38[1] = v8;
  if (v38[0])
  {
    LOBYTE(v43) = 0;
    v44 = 0;
    v9 = mlir::ShapedType::cloneWith(v38, &v43, v7);
LABEL_12:
    v7 = v9;
    goto LABEL_35;
  }

  if (*(*v41 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::UnrankedTensorType::get(v7);
    goto LABEL_12;
  }

LABEL_35:
  if (v40 == v7)
  {
    return 1;
  }

  v39 = 257;
  mlir::OpState::emitOpError(this, v38, &v43);
  if (v43)
  {
    LODWORD(v41) = 3;
    *(&v41 + 1) = "expected condition type to have the same shape as the result type, expected ";
    v42 = 76;
    if (v46 >= v47)
    {
      if (v45 > &v41 || v45 + 24 * v46 <= &v41)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v22 = v45 + 24 * v46;
    v23 = v41;
    *(v22 + 2) = v42;
    *v22 = v23;
    ++v46;
    if (v43)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v7);
      if (v46 >= v47)
      {
        if (v45 > &v41 || v45 + 24 * v46 <= &v41)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v24 = v45 + 24 * v46;
      v25 = v41;
      *(v24 + 2) = v42;
      *v24 = v25;
      v26 = ++v46;
      if (v43)
      {
        LODWORD(v41) = 3;
        *(&v41 + 1) = ", but got ";
        v42 = 10;
        if (v26 >= v47)
        {
          if (v45 > &v41 || v45 + 24 * v26 <= &v41)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v27 = v45 + 24 * v46;
        v28 = v41;
        *(v27 + 2) = v42;
        *v27 = v28;
        ++v46;
        if (v43)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v41, v40);
          if (v46 >= v47)
          {
            if (v45 > &v41 || v45 + 24 * v46 <= &v41)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v29 = v45 + 24 * v46;
          v30 = v41;
          *(v29 + 2) = v42;
          *v29 = v30;
          ++v46;
        }
      }
    }
  }

  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v43);
  if (v43)
  {
    mlir::InFlightDiagnostic::report(&v43);
  }

  if (v54 == 1)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v31 = __p;
    if (__p)
    {
      v32 = v52;
      v33 = __p;
      if (v52 != __p)
      {
        do
        {
          v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
        }

        while (v32 != v31);
        v33 = __p;
      }

      v52 = v31;
      operator delete(v33);
    }

    v17 = v49;
    if (!v49)
    {
      goto LABEL_64;
    }

    v34 = v50;
    v19 = v49;
    if (v50 == v49)
    {
      goto LABEL_63;
    }

    do
    {
      v36 = *--v34;
      v35 = v36;
      *v34 = 0;
      if (v36)
      {
        MEMORY[0x259C63150](v35, 0x1000C8077774924);
      }
    }

    while (v34 != v17);
    goto LABEL_62;
  }

  return v2;
}

unint64_t mlir::arith::ShLIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x259C63150](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 48);
        goto LABEL_15;
      }

      v8 = *v68 == 0;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      Type = mlir::TypedAttr::getType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  Type = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::TypedAttr::getType(&v68);
  v11 = 0;
  if (!Type || !v17 || v17 != Type)
  {
    goto LABEL_80;
  }

  v67 = Type;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      v28 = mlir::IntegerAttr::getType(&v53);
      if (v28 != mlir::IntegerAttr::getType(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x259C63150](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        v31 = mlir::ElementsAttr::getType(&v65);
        if (v31 == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x259C63150](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x259C63150](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::DenseElementsAttr::getType(&v53);
    if (v24 == mlir::DenseElementsAttr::getType(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRUIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x259C63150](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 0;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      Type = mlir::TypedAttr::getType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  Type = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::TypedAttr::getType(&v68);
  v11 = 0;
  if (!Type || !v17 || v17 != Type)
  {
    goto LABEL_80;
  }

  v67 = Type;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      v28 = mlir::IntegerAttr::getType(&v53);
      if (v28 != mlir::IntegerAttr::getType(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x259C63150](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        v31 = mlir::ElementsAttr::getType(&v65);
        if (v31 == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x259C63150](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x259C63150](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::DenseElementsAttr::getType(&v53);
    if (v24 == mlir::DenseElementsAttr::getType(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

unint64_t mlir::arith::ShRSIOp::fold(uint64_t a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  if (v4)
  {
    LODWORD(v69) = 1;
    v68 = 0;
    v60 = &v68;
    v6 = mlir::detail::constant_int_value_binder::match(&v60, v4);
    v7 = v69;
    if (v6)
    {
      if (v69 < 0x41)
      {
        v8 = v68 == 0;
        goto LABEL_8;
      }

      if (v7 - llvm::APInt::countLeadingZerosSlowCase(&v68) > 0x40)
      {
        if (v68)
        {
          MEMORY[0x259C63150](v68, 0x1000C8000313F17);
        }

LABEL_14:
        v3 = *(a2 + 40);
        goto LABEL_15;
      }

      v8 = *v68 == 0;
    }

    else
    {
      v8 = 0;
      if (v69 < 0x41)
      {
        goto LABEL_8;
      }
    }

    if (v68)
    {
      MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }

LABEL_8:
    if (v8)
    {
      return *(*(*a1 + 72) + 24) | 4;
    }

    goto LABEL_14;
  }

LABEL_15:
  v42 = 0;
  v41 = &v42;
  v10 = *v3;
  if (*v3 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v12 = (v3 + 1);
  v11 = v3[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_80;
  }

  if (v10)
  {
    v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v10);
    v69 = v13;
    if (v68)
    {
      Type = mlir::TypedAttr::getType(&v68);
      v15 = *v12;
      if (*v12)
      {
        goto LABEL_22;
      }

LABEL_27:
      v68 = v15;
      v69 = 0;
      if (!v15)
      {
        goto LABEL_79;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  Type = 0;
  v15 = *v12;
  if (!*v12)
  {
    goto LABEL_27;
  }

LABEL_22:
  v68 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
  v69 = v16;
  if (!v68)
  {
    goto LABEL_79;
  }

LABEL_28:
  v17 = mlir::TypedAttr::getType(&v68);
  v11 = 0;
  if (!Type || !v17 || v17 != Type)
  {
    goto LABEL_80;
  }

  v67 = Type;
  v18 = *v3;
  if (*v3 && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v11 = *v3;
    goto LABEL_80;
  }

  v19 = *v12;
  if (*v12)
  {
    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = *v12;
    }

    else
    {
      v11 = 0;
    }

    if (!v18 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_80;
    }

    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v18 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v53 = *v3;
      v50 = v19;
      v28 = mlir::IntegerAttr::getType(&v53);
      if (v28 != mlir::IntegerAttr::getType(&v50))
      {
        goto LABEL_79;
      }

      mlir::IntegerAttr::getValue(&v53, &v60);
      mlir::IntegerAttr::getValue(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 != 1)
      {
        goto LABEL_79;
      }

      v27 = mlir::IntegerAttr::get(v67, &v68);
LABEL_68:
      v11 = v27;
      if ((v70 & 1) != 0 && v69 >= 0x41 && v68)
      {
        MEMORY[0x259C63150](v68, 0x1000C8000313F17);
      }

      goto LABEL_80;
    }

    if (mlir::DenseElementsAttr::classof(*v3))
    {
      v22 = v18;
    }

    else
    {
      v22 = 0;
    }

    v68 = v22;
    if (!v22 || !mlir::DenseElementsAttr::isSplat(&v68) || !llvm::isa<mlir::SplatElementsAttr,mlir::Attribute>(v3 + 1))
    {
      if (llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3) && llvm::isa<mlir::ElementsAttr,mlir::Attribute>(v3 + 1))
      {
        v65 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3);
        v66 = v29;
        v64[0] = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3 + 1);
        v64[1] = v30;
        v31 = mlir::ElementsAttr::getType(&v65);
        if (v31 == mlir::ElementsAttr::getType(v64))
        {
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v65, &v60);
          mlir::ElementsAttr::try_value_begin<llvm::APInt>(v64, &v56);
          if (v63 == 1 && v59 == 1)
          {
            LOWORD(v53) = v60;
            if (v60 == 1)
            {
              v54 = v61;
            }

            else
            {
              (*(*v61 + 16))(&v54);
            }

            v55 = v62;
            LOWORD(v50) = v56;
            if (v56 == 1)
            {
              v51 = v57;
            }

            else
            {
              (*(*v57 + 16))(&v51);
            }

            v52 = v58;
            v68 = &v70;
            v69 = 0x400000000;
            NumElements = mlir::ElementsAttr::getNumElements(v65, v66);
            llvm::SmallVectorImpl<llvm::APInt>::reserve(&v68, NumElements);
            v35 = mlir::ElementsAttr::getNumElements(v65, v66);
            if (v35)
            {
              v36 = v35;
              while (1)
              {
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v53, &v45);
                mlir::detail::ElementsAttrIterator<llvm::APInt>::operator*(&v50, &v43);
                mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v47, &v41, &v45, &v43);
                if (v44 >= 0x41 && v43)
                {
                  MEMORY[0x259C63150](v43, 0x1000C8000313F17);
                }

                if (v46 >= 0x41 && v45)
                {
                  MEMORY[0x259C63150](v45, 0x1000C8000313F17);
                }

                if (v49 != 1)
                {
                  break;
                }

                llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v68, &v47);
                if ((v49 & 1) != 0 && v48 >= 0x41 && v47)
                {
                  MEMORY[0x259C63150](v47, 0x1000C8000313F17);
                }

                ++v55;
                ++v52;
                if (!--v36)
                {
                  goto LABEL_110;
                }
              }

              v11 = 0;
            }

            else
            {
LABEL_110:
              v37 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
              v11 = mlir::DenseElementsAttr::get(v37, v38, v68, v69);
            }

            llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v68);
            if ((v50 & 1) == 0)
            {
              v39 = v51;
              v51 = 0;
              if (v39)
              {
                (*(*v39 + 8))(v39);
              }
            }

            if ((v53 & 1) == 0)
            {
              v40 = v54;
              v54 = 0;
              if (v40)
              {
                (*(*v40 + 8))(v40);
              }
            }
          }

          else
          {
            v11 = 0;
          }

          if (v59 == 1 && (v56 & 1) == 0)
          {
            v32 = v57;
            v57 = 0;
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          if (v63 == 1 && (v60 & 1) == 0)
          {
            v33 = v61;
            v61 = 0;
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }
          }

          goto LABEL_80;
        }
      }

      goto LABEL_79;
    }

    v23 = v3[1];
    v53 = *v3;
    v50 = v23;
    v24 = mlir::DenseElementsAttr::getType(&v53);
    if (v24 == mlir::DenseElementsAttr::getType(&v50))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v53, &v60);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v50, &v56);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v68, &v41, &v60, &v56);
      if (v57 >= 0x41 && v56)
      {
        MEMORY[0x259C63150](v56, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x259C63150](v60, 0x1000C8000313F17);
      }

      if (v70 == 1)
      {
        v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v67);
        v27 = mlir::DenseElementsAttr::get(v25, v26, &v68, 1);
        goto LABEL_68;
      }
    }
  }

LABEL_79:
  v11 = 0;
LABEL_80:
  if (v42)
  {
    return v11 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    return 0;
  }
}

void *mlir::arith::getIdentityValueAttr(uint64_t a1, mlir::MLIRContext *a2, mlir::IndexType **a3, uint64_t a4, int a5)
{
  v119[3] = *MEMORY[0x277D85DE8];
  switch(a1)
  {
    case 0:
    case 1:
    case 5:
    case 11:
      return mlir::Builder::getZeroAttr(a3, a2);
    case 3:
      v118 = a2;
      FloatSemantics = mlir::FloatType::getFloatSemantics(&v118);
      v19 = llvm::APFloatBase::PPCDoubleDouble(FloatSemantics);
      if (a5)
      {
        if (v19 == FloatSemantics)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, FloatSemantics);
        }

        llvm::detail::IEEEFloat::IEEEFloat(v119, FloatSemantics);
        if (v19 == v119[0])
        {
          llvm::detail::DoubleAPFloat::makeLargest(v119, 1);
        }

        else
        {
          llvm::detail::IEEEFloat::makeLargest(v119, 1);
        }
      }

      else
      {
        if (v19 == FloatSemantics)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, FloatSemantics);
        }

        llvm::detail::IEEEFloat::IEEEFloat(v119, FloatSemantics);
        if (v19 == v119[0])
        {
          llvm::detail::DoubleAPFloat::makeInf(v119, 1);
        }

        else
        {
          llvm::detail::IEEEFloat::makeInf(v119, 1);
        }
      }

      FloatAttr = mlir::Builder::getFloatAttr(a3, a2, &v118);
      v21 = FloatAttr;
      if (!FloatAttr)
      {
        goto LABEL_177;
      }

      v104 = *FloatAttr;
      {
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v104 + 8);
        v71 = *(v104 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      else
      {
        mlir::arith::AddUIExtendedOp::fold();
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v104 + 8);
        v71 = *(v104 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      v72 = v70;
      v105 = v71;
      do
      {
        v106 = v105 >> 1;
        v107 = &v72[2 * (v105 >> 1)];
        v109 = *v107;
        v108 = v107 + 2;
        v105 += ~(v105 >> 1);
        if (v109 < v69)
        {
          v72 = v108;
        }

        else
        {
          v105 = v106;
        }
      }

      while (v105);
      goto LABEL_148;
    case 4:
      v117 = a2;
      Width = mlir::IntegerType::getWidth(&v117);
      LODWORD(v119[0]) = Width;
      if (Width > 0x40)
      {
        llvm::APInt::initSlowCase(&v118);
      }

      v118 = 1 << (Width - 1);
      result = mlir::Builder::getIntegerAttr(a3, a2, &v118);
      if (!result)
      {
        goto LABEL_167;
      }

      v90 = *result;
      {
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v90 + 8);
        v55 = *(v90 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v115 = result;
        mlir::arith::AddUIExtendedOp::fold();
        result = v115;
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v90 + 8);
        v55 = *(v90 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      v56 = v54;
      v91 = v55;
      do
      {
        v92 = v91 >> 1;
        v93 = &v56[2 * (v91 >> 1)];
        v95 = *v93;
        v94 = v93 + 2;
        v91 += ~(v91 >> 1);
        if (v95 < v53)
        {
          v56 = v94;
        }

        else
        {
          v91 = v92;
        }
      }

      while (v91);
      goto LABEL_113;
    case 6:
      v118 = a2;
      v42 = mlir::FloatType::getFloatSemantics(&v118);
      v19 = llvm::APFloatBase::PPCDoubleDouble(v42);
      if (a5)
      {
        if (v19 == v42)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, v42);
        }

        llvm::detail::IEEEFloat::IEEEFloat(v119, v42);
        if (v19 == v119[0])
        {
          llvm::detail::DoubleAPFloat::makeLargest(v119, 0);
        }

        else
        {
          llvm::detail::IEEEFloat::makeLargest(v119, 0);
        }
      }

      else
      {
        if (v19 == v42)
        {
          llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, v42);
        }

        llvm::detail::IEEEFloat::IEEEFloat(v119, v42);
        if (v19 == v119[0])
        {
          llvm::detail::DoubleAPFloat::makeInf(v119, 0);
        }

        else
        {
          llvm::detail::IEEEFloat::makeInf(v119, 0);
        }
      }

      v96 = mlir::Builder::getFloatAttr(a3, a2, &v118);
      v21 = v96;
      if (!v96)
      {
        goto LABEL_177;
      }

      v97 = *v96;
      {
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v97 + 8);
        v71 = *(v97 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      else
      {
        mlir::arith::AddUIExtendedOp::fold();
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v97 + 8);
        v71 = *(v97 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      v72 = v70;
      v98 = v71;
      do
      {
        v99 = v98 >> 1;
        v100 = &v72[2 * (v98 >> 1)];
        v102 = *v100;
        v101 = v100 + 2;
        v98 += ~(v98 >> 1);
        if (v102 < v69)
        {
          v72 = v101;
        }

        else
        {
          v98 = v99;
        }
      }

      while (v98);
      goto LABEL_148;
    case 7:
      v117 = a2;
      v23 = mlir::IntegerType::getWidth(&v117);
      LODWORD(v119[0]) = v23;
      if (v23 > 0x40)
      {
        llvm::APInt::initSlowCase(&v118);
      }

      v24 = 0xFFFFFFFFFFFFFFFFLL >> -v23;
      if (!v23)
      {
        v24 = 0;
      }

      v118 = v24 & ~(1 << (v23 - 1));
      result = mlir::Builder::getIntegerAttr(a3, a2, &v118);
      if (!result)
      {
        goto LABEL_167;
      }

      v84 = *result;
      {
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v84 + 8);
        v55 = *(v84 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v113 = result;
        mlir::arith::AddUIExtendedOp::fold();
        result = v113;
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v84 + 8);
        v55 = *(v84 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      v56 = v54;
      v85 = v55;
      do
      {
        v86 = v85 >> 1;
        v87 = &v56[2 * (v85 >> 1)];
        v89 = *v87;
        v88 = v87 + 2;
        v85 += ~(v85 >> 1);
        if (v89 < v53)
        {
          v56 = v88;
        }

        else
        {
          v85 = v86;
        }
      }

      while (v85);
      goto LABEL_113;
    case 8:
      v117 = a2;
      v36 = mlir::IntegerType::getWidth(&v117);
      LODWORD(v119[0]) = v36;
      if (v36 > 0x40)
      {
        llvm::APInt::initSlowCase(&v118);
      }

      v37 = 0xFFFFFFFFFFFFFFFFLL >> -v36;
      if (!v36)
      {
        v37 = 0;
      }

      v118 = v37;
      result = mlir::Builder::getIntegerAttr(a3, a2, &v118);
      if (!result)
      {
        goto LABEL_167;
      }

      v52 = *result;
      {
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v112 = result;
        mlir::arith::AddUIExtendedOp::fold();
        result = v112;
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v52 + 8);
        v55 = *(v52 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      v56 = v54;
      v57 = v55;
      do
      {
        v58 = v57 >> 1;
        v59 = &v56[2 * (v57 >> 1)];
        v61 = *v59;
        v60 = v59 + 2;
        v57 += ~(v57 >> 1);
        if (v61 < v53)
        {
          v56 = v60;
        }

        else
        {
          v57 = v58;
        }
      }

      while (v57);
      goto LABEL_113;
    case 9:
      result = mlir::Builder::getFloatAttr(1.0, a3, a2);
      if (!result)
      {
        return result;
      }

      v7 = *result;
      {
        v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        if (!v10)
        {
          return result;
        }
      }

      else
      {
        v110 = result;
        mlir::arith::ConstantOp::materialize();
        result = v110;
        v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        if (!v10)
        {
          return result;
        }
      }

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
      return result;
    case 10:
      result = mlir::Builder::getIntegerAttr(a3, a2, 1uLL);
      if (!result)
      {
        return result;
      }

      v25 = *result;
      {
        v26 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        if (!v28)
        {
          return result;
        }
      }

      else
      {
        v111 = result;
        mlir::arith::ConstantOp::materialize();
        result = v111;
        v26 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        if (!v28)
        {
          return result;
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
      return result;
    case 12:
      v117 = a2;
      v50 = mlir::IntegerType::getWidth(&v117);
      LODWORD(v119[0]) = v50;
      if (v50 > 0x40)
      {
        llvm::APInt::initSlowCase(&v118);
      }

      v51 = 0xFFFFFFFFFFFFFFFFLL >> -v50;
      if (!v50)
      {
        v51 = 0;
      }

      v118 = v51;
      result = mlir::Builder::getIntegerAttr(a3, a2, &v118);
      if (!result)
      {
        goto LABEL_167;
      }

      v62 = *result;
      {
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v62 + 8);
        v55 = *(v62 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      else
      {
        v114 = result;
        mlir::arith::AddUIExtendedOp::fold();
        result = v114;
        v53 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v54 = *(v62 + 8);
        v55 = *(v62 + 16);
        if (!v55)
        {
          goto LABEL_167;
        }
      }

      v56 = v54;
      v63 = v55;
      do
      {
        v64 = v63 >> 1;
        v65 = &v56[2 * (v63 >> 1)];
        v67 = *v65;
        v66 = v65 + 2;
        v63 += ~(v63 >> 1);
        if (v67 < v53)
        {
          v56 = v66;
        }

        else
        {
          v63 = v64;
        }
      }

      while (v63);
LABEL_113:
      if (v56 == &v54[2 * v55] || *v56 != v53)
      {
LABEL_167:
        if (LODWORD(v119[0]) < 0x41)
        {
          return result;
        }

        goto LABEL_168;
      }

      if (LODWORD(v119[0]) < 0x41)
      {
        return result;
      }

LABEL_168:
      if (v118)
      {
        v116 = result;
        MEMORY[0x259C63150](v118, 0x1000C8000313F17);
        return v116;
      }

      return result;
    case 13:
      v118 = a2;
      v47 = mlir::FloatType::getFloatSemantics(&v118);
      v19 = llvm::APFloatBase::PPCDoubleDouble(v47);
      if (v19 == v47)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, v47);
      }

      llvm::detail::IEEEFloat::IEEEFloat(v119, v47);
      if (v19 == v119[0])
      {
        llvm::detail::DoubleAPFloat::makeNaN(v119, 0, 1, 0);
        v48 = mlir::Builder::getFloatAttr(a3, a2, &v118);
        v21 = v48;
        if (!v48)
        {
          goto LABEL_177;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::makeNaN(v119, 0, 1, 0);
        v48 = mlir::Builder::getFloatAttr(a3, a2, &v118);
        v21 = v48;
        if (!v48)
        {
          goto LABEL_177;
        }
      }

      v78 = *v48;
      {
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v78 + 8);
        v71 = *(v78 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      else
      {
        mlir::arith::AddUIExtendedOp::fold();
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v78 + 8);
        v71 = *(v78 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      v72 = v70;
      v79 = v71;
      do
      {
        v80 = v79 >> 1;
        v81 = &v72[2 * (v79 >> 1)];
        v83 = *v81;
        v82 = v81 + 2;
        v79 += ~(v79 >> 1);
        if (v83 < v69)
        {
          v72 = v82;
        }

        else
        {
          v79 = v80;
        }
      }

      while (v79);
      goto LABEL_148;
    case 14:
      v118 = a2;
      v18 = mlir::FloatType::getFloatSemantics(&v118);
      v19 = llvm::APFloatBase::PPCDoubleDouble(v18);
      if (v19 == v18)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v119, v18);
      }

      llvm::detail::IEEEFloat::IEEEFloat(v119, v18);
      if (v19 == v119[0])
      {
        llvm::detail::DoubleAPFloat::makeNaN(v119, 0, 0, 0);
        v20 = mlir::Builder::getFloatAttr(a3, a2, &v118);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_177;
        }
      }

      else
      {
        llvm::detail::IEEEFloat::makeNaN(v119, 0, 0, 0);
        v20 = mlir::Builder::getFloatAttr(a3, a2, &v118);
        v21 = v20;
        if (!v20)
        {
          goto LABEL_177;
        }
      }

      v68 = *v20;
      {
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v68 + 8);
        v71 = *(v68 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      else
      {
        mlir::arith::AddUIExtendedOp::fold();
        v69 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
        v70 = *(v68 + 8);
        v71 = *(v68 + 16);
        if (!v71)
        {
          goto LABEL_177;
        }
      }

      v72 = v70;
      v73 = v71;
      do
      {
        v74 = v73 >> 1;
        v75 = &v72[2 * (v73 >> 1)];
        v77 = *v75;
        v76 = v75 + 2;
        v73 += ~(v73 >> 1);
        if (v77 < v69)
        {
          v72 = v76;
        }

        else
        {
          v73 = v74;
        }
      }

      while (v73);
LABEL_148:
      if (v72 != &v70[2 * v71] && *v72 == v69)
      {
        if (v19 != v119[0])
        {
          goto LABEL_178;
        }

        goto LABEL_180;
      }

LABEL_177:
      if (v19 != v119[0])
      {
LABEL_178:
        llvm::detail::IEEEFloat::~IEEEFloat(v119);
        return v21;
      }

LABEL_180:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v119);
      return v21;
    default:
      mlir::emitOptionalError<char const(&)[39]>(a4, 1, "Reduction operation type not supported");
      return 0;
  }
}

void llvm::APFloat::getLargest(llvm::APFloatBase *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = llvm::APFloatBase::PPCDoubleDouble(a1);
  if (v6 == a1)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), a1);
  }

  llvm::detail::IEEEFloat::IEEEFloat(a3 + 8, a1);
  v7 = (a3 + 8);
  if (v6 == *(a3 + 8))
  {

    llvm::detail::DoubleAPFloat::makeLargest(v7, a2);
  }

  else
  {

    llvm::detail::IEEEFloat::makeLargest(v7, a2);
  }
}

uint64_t llvm::APInt::getSignedMinValue@<X0>(uint64_t this@<X0>, llvm::APInt *a2@<X8>)
{
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  *a2 = 0;
  *a2 |= 1 << (this - 1);
  return this;
}

uint64_t llvm::APInt::getSignedMaxValue@<X0>(uint64_t this@<X0>, llvm::APInt *a2@<X8>)
{
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  v3 = 0xFFFFFFFFFFFFFFFFLL >> -this;
  if (!this)
  {
    v3 = 0;
  }

  *a2 = v3;
  *a2 &= ~(1 << (this - 1));
  return this;
}

uint64_t llvm::APInt::getMaxValue@<X0>(uint64_t this@<X0>, llvm::APInt *a2@<X8>)
{
  *(a2 + 2) = this;
  if (this > 0x40)
  {
    llvm::APInt::initSlowCase(a2);
  }

  v2 = 0xFFFFFFFFFFFFFFFFLL >> -this;
  if (!this)
  {
    v2 = 0;
  }

  *a2 = v2;
  return this;
}

void *mlir::arith::getNeutralElement@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v5 = *(this[6] + 16);
  if (this && v5 == &mlir::detail::TypeIDResolver<mlir::arith::AddFOp,void>::id)
  {
    v6 = 0;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MulFOp,void>::id)
  {
    v6 = 9;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MaximumFOp,void>::id)
  {
    v6 = 3;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MinimumFOp,void>::id)
  {
    v6 = 6;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MaxNumFOp,void>::id)
  {
    v6 = 13;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MinNumFOp,void>::id)
  {
    v6 = 14;
  }

  else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id)
  {
    v6 = 1;
  }

  else
  {
    v6 = 11;
    if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::OrIOp,void>::id && v5 != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
      {
        v6 = 12;
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MaxUIOp,void>::id)
      {
        v6 = 5;
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MinUIOp,void>::id)
      {
        v6 = 8;
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MaxSIOp,void>::id)
      {
        v6 = 4;
      }

      else if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::MinSIOp,void>::id)
      {
        v6 = 7;
      }

      else
      {
        if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::MulIOp,void>::id)
        {
          *a2 = 0;
          *(a2 + 16) = 0;
          return this;
        }

        v6 = 10;
      }
    }
  }

  if (!mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor(this))
  {
    v10 = 0;
    InterfaceFor = 0;
    goto LABEL_35;
  }

  v10 = v3;
  InterfaceFor = mlir::OpInterface<mlir::arith::ArithFastMathInterface,mlir::arith::detail::ArithFastMathInterfaceInterfaceTraits>::getInterfaceFor(v3);
  if (!v3)
  {
LABEL_35:
    v7 = 0;
    goto LABEL_36;
  }

  v9[0] = mlir::arith::ArithFastMathInterface::getFastMathFlagsAttr(&v10);
  v7 = (mlir::arith::FastMathFlagsAttr::getValue(v9) >> 2) & 1;
LABEL_36:
  v9[0] = mlir::Attribute::getContext((v3 + 3));
  memset(&v9[1], 0, 24);
  this = mlir::arith::getIdentityValueAttr(v6, (*(v3 - 1) & 0xFFFFFFFFFFFFFFF8), v9, v3[3], v7);
  *a2 = this;
  *(a2 + 8) = v8;
  *(a2 + 16) = 1;
  return this;
}

uint64_t mlir::arith::getIdentityValue(uint64_t a1, mlir::MLIRContext *a2, mlir::IndexType **a3, uint64_t a4, int a5)
{
  v9[0] = mlir::arith::getIdentityValueAttr(a1, a2, a3, a4, a5);
  v9[1] = v7;
  return mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>(a3, a4, v9) - 16;
}

uint64_t mlir::arith::getReductionOp(uint64_t a1, mlir::MLIRContext **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  switch(a1)
  {
    case 0:
      result = mlir::OpBuilder::create<mlir::arith::AddFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 1:
      result = mlir::OpBuilder::create<mlir::arith::AddIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 3:
      result = mlir::OpBuilder::create<mlir::arith::MaximumFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 4:
      result = mlir::OpBuilder::create<mlir::arith::MaxSIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 5:
      result = mlir::OpBuilder::create<mlir::arith::MaxUIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 6:
      result = mlir::OpBuilder::create<mlir::arith::MinimumFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 7:
      result = mlir::OpBuilder::create<mlir::arith::MinSIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 8:
      result = mlir::OpBuilder::create<mlir::arith::MinUIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 9:
      result = mlir::OpBuilder::create<mlir::arith::MulFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 10:
      result = mlir::OpBuilder::create<mlir::arith::MulIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 11:
      result = mlir::OpBuilder::create<mlir::arith::OrIOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 12:
      result = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>(a2, a3, &v7, &v6) - 16;
      break;
    case 13:
      result = mlir::OpBuilder::create<mlir::arith::MaxNumFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    case 14:
      result = mlir::OpBuilder::create<mlir::arith::MinNumFOp,mlir::Value &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
      break;
    default:
      mlir::emitOptionalError<char const(&)[39]>(a3, 1, "Reduction operation type not supported");
      result = 0;
      break;
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::arith::MaximumFOp,mlir::Value &,mlir::Value &>(mlir::MLIRContext **a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x277D85DE8];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::arith::MaximumFOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::arith::MaximumFOp,mlir::Value &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::MaximumFOp::build(a1, v17, *a3, *a4, 0);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::MaximumFOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}