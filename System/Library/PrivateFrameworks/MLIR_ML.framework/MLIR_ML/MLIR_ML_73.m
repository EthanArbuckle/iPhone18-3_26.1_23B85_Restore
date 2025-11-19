uint64_t mlir::getElementTypeByteWidth(void *a1)
{
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8))
  {
    v10 = 0;
    v11 = 0;
    return 0;
  }

  v2 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*a1 + 8);
  v10 = a1;
  v11 = v2;
  if (!a1)
  {
    return 0;
  }

  ElementType = mlir::ShapedType::getElementType(&v10);
  v9 = ElementType;
  if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v4 = ElementType;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;
  if (v4)
  {
    v12 = mlir::ComplexType::getElementType(&v8);
    if (mlir::Type::isF16(&v12))
    {
      return 4;
    }

    v12 = mlir::ComplexType::getElementType(&v8);
    if (mlir::Type::isF32(&v12))
    {
      return 8;
    }

    v12 = mlir::ComplexType::getElementType(&v8);
    if (mlir::Type::isF64(&v12))
    {
      return 16;
    }

    else
    {
      return 0;
    }
  }

  if (!mlir::Type::isIntOrFloat(&v9))
  {
    return 0;
  }

  v12 = mlir::ShapedType::getElementType(&v10);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v12);
  v7 = (IntOrFloatBitWidth - (IntOrFloatBitWidth != 0)) >> 3;
  if (IntOrFloatBitWidth)
  {
    return v7 + 1;
  }

  else
  {
    return v7;
  }
}

unint64_t mlir::tryGetPositiveAxis(uint64_t a1, uint64_t a2, uint64_t a3, char a4, mlir::Operation *a5)
{
  v56 = *MEMORY[0x277D85DE8];
  v41 = a1;
  v5 = -a2;
  if (-a2 > a1 || a2 <= a1)
  {
    if (a5)
    {
      v39[0] = "invalid axis ";
      v40 = 259;
      mlir::Operation::emitOpError(&v44, a5, v39);
      if (v44)
      {
        LODWORD(v42) = 2;
        *(&v42 + 1) = a1;
        if (v47 >= v48)
        {
          if (v46 > &v42 || v46 + 24 * v47 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v9 = v46 + 24 * v47;
        v10 = v42;
        *(v9 + 2) = v43;
        *v9 = v10;
        v11 = ++v47;
        if (v44)
        {
          LODWORD(v42) = 3;
          *(&v42 + 1) = " is outside of the range [";
          v43 = 26;
          if (v11 >= v48)
          {
            if (v46 > &v42 || v46 + 24 * v11 <= &v42)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v12 = v46 + 24 * v47;
          v13 = v42;
          *(v12 + 2) = v43;
          *v12 = v13;
          v14 = ++v47;
          if (v44)
          {
            LODWORD(v42) = 2;
            *(&v42 + 1) = v5;
            if (v14 >= v48)
            {
              if (v46 > &v42 || v46 + 24 * v14 <= &v42)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v15 = v46 + 24 * v47;
            v16 = v42;
            *(v15 + 2) = v43;
            *v15 = v16;
            ++v47;
          }
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v44, ", ");
      if (*v17)
      {
        v18 = *(v17 + 24);
        LODWORD(v42) = 2;
        *(&v42 + 1) = a2 - 1;
        v19 = *(v17 + 32);
        if (v19 >= *(v17 + 36))
        {
          if (v18 > &v42 || v18 + 24 * v19 <= &v42)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v18 + 24 * *(v17 + 32);
        v21 = v42;
        *(v20 + 16) = v43;
        *v20 = v21;
        ++*(v17 + 32);
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v17, "].");
      if (v44)
      {
        mlir::InFlightDiagnostic::report(&v44);
      }

      if (v55 != 1)
      {
        goto LABEL_56;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v53;
        v24 = __p;
        if (v53 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v53 = v22;
        operator delete(v24);
      }

      v25 = v50;
      if (!v50)
      {
LABEL_54:
        if (v46 != &v49)
        {
          free(v46);
        }

LABEL_56:
        v31 = 0;
        v30 = 0;
        return v30 | v31;
      }

      v26 = v51;
      v27 = v50;
      if (v51 == v50)
      {
LABEL_53:
        v51 = v25;
        operator delete(v27);
        goto LABEL_54;
      }

      do
      {
        v29 = *--v26;
        v28 = v29;
        *v26 = 0;
        if (v29)
        {
          MEMORY[0x259C63150](v28, 0x1000C8077774924);
        }
      }

      while (v26 != v25);
    }

    else
    {
      v39[0] = -a2;
      *&v42 = a2 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_56;
      }

      mlir::emitError(a3, &v44);
      if (v44)
      {
        mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(&v45, "invalid axis ", &v41, " is outside of the range [", v39, ", ", &v42, "]");
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v44);
      if (v44)
      {
        mlir::InFlightDiagnostic::report(&v44);
      }

      if (v55 != 1)
      {
        goto LABEL_56;
      }

      if (v54 != &v55)
      {
        free(v54);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v53;
        v34 = __p;
        if (v53 != __p)
        {
          do
          {
            v33 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v53 = v32;
        operator delete(v34);
      }

      v25 = v50;
      if (!v50)
      {
        goto LABEL_54;
      }

      v35 = v51;
      v27 = v50;
      if (v51 == v50)
      {
        goto LABEL_53;
      }

      do
      {
        v37 = *--v35;
        v36 = v37;
        *v35 = 0;
        if (v37)
        {
          MEMORY[0x259C63150](v36, 0x1000C8077774924);
        }
      }

      while (v35 != v25);
    }

    v27 = v50;
    goto LABEL_53;
  }

  v30 = ((a2 & (a1 >> 63)) + a1) & 0xFFFFFFFFFFFFFF00;
  v31 = ((a2 & (a1 >> 63)) + a1);
  return v30 | v31;
}

BOOL mlir::getPositiveAxes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, mlir::Operation *a7)
{
  v55[6] = *MEMORY[0x277D85DE8];
  v53 = v55;
  v54 = 0x600000000;
  if (!a2)
  {
    goto LABEL_34;
  }

  v13 = 8 * a2;
  do
  {
    v17 = *a1;
    PositiveAxis = mlir::tryGetPositiveAxis(*a1, a3, 0, 0, a7);
    if (v18)
    {
      v14 = *(a4 + 8);
      if (v14 >= *(a4 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = a4;
    }

    else
    {
      v14 = v54;
      v15 = &v53;
      if (v54 >= HIDWORD(v54))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      PositiveAxis = v17;
    }

    *&(*v15)[8 * v14] = PositiveAxis;
    ++*(v15 + 2);
    ++a1;
    v13 -= 8;
  }

  while (v13);
  if (v54)
  {
    if (a6)
    {
      *&v39 = "invalid axes: ";
      v41 = 259;
      mlir::emitError(a5, &v39, v42);
      v19 = v54;
      if (v54)
      {
        v20 = v53;
        if (v42[0])
        {
          v21 = *v53;
          LODWORD(v39) = 2;
          *(&v39 + 1) = v21;
          if (v44 >= v45)
          {
            if (v43 > &v39 || v43 + 24 * v44 <= &v39)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v22 = v43 + 24 * v44;
          v23 = v39;
          *(v22 + 2) = v40;
          *v22 = v23;
          ++v44;
        }

        if (v19 != 1)
        {
          v33 = (v20 + 8);
          v34 = 8 * v19 - 8;
          do
          {
            mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v42, ", ");
            if (v42[0])
            {
              v37 = *v33;
              LODWORD(v39) = 2;
              *(&v39 + 1) = v37;
              if (v44 >= v45)
              {
                if (v43 > &v39 || v43 + 24 * v44 <= &v39)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v35 = v43 + 24 * v44;
              v36 = v39;
              *(v35 + 2) = v40;
              *v35 = v36;
              ++v44;
            }

            ++v33;
            v34 -= 8;
          }

          while (v34);
        }
      }

      v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v42);
      if (v42[0])
      {
        mlir::InFlightDiagnostic::report(v42);
      }

      if (v52 == 1)
      {
        if (v51 != &v52)
        {
          free(v51);
        }

        v25 = __p;
        if (__p)
        {
          v26 = v50;
          v27 = __p;
          if (v50 != __p)
          {
            do
            {
              v26 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v26 - 1);
            }

            while (v26 != v25);
            v27 = __p;
          }

          v50 = v25;
          operator delete(v27);
        }

        v28 = v47;
        if (v47)
        {
          v29 = v48;
          v30 = v47;
          if (v48 != v47)
          {
            do
            {
              v32 = *--v29;
              v31 = v32;
              *v29 = 0;
              if (v32)
              {
                MEMORY[0x259C63150](v31, 0x1000C8077774924);
              }
            }

            while (v29 != v28);
            v30 = v47;
          }

          v48 = v28;
          operator delete(v30);
        }

        if (v43 != &v46)
        {
          free(v43);
        }
      }
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
LABEL_34:
    v24 = 1;
  }

  if (v53 != v55)
  {
    free(v53);
  }

  return v24;
}

uint64_t mlir::getMostDefinedTypeForCPU(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v17 = a1;
  v18 = 0;
  if (!a2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = (*(mlir::ValueRange::dereference_iterator(&v17, v3) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v4)
    {
      v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    *&v15 = v4;
    *(&v15 + 1) = v5;
    if (!v16 || (Shape = mlir::ShapedType::getShape(&v15), NumElements = mlir::ShapedType::getNumElements(Shape, v7), v9 = mlir::ShapedType::getShape(&v16), NumElements > mlir::ShapedType::getNumElements(v9, v10)) || (mlir::ShapedType::getShape(&v15), v12 = v11, mlir::ShapedType::getShape(&v16), v12 > v13))
    {
      v16 = v15;
    }

    v3 = v18 + 1;
    v18 = v3;
  }

  while (v3 != a2);
  return v16;
}

char *mlir::getRankPromotionShapeForANE@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t **a4@<X8>)
{
  v34[0] = a1;
  v34[1] = a2;
  Shape = mlir::ShapedType::getShape(v34);
  v7 = mlir::ShapedType::getShape(v34);
  v9 = v7 + 8 * v8;
  *a4 = (a4 + 2);
  a4[1] = 0x500000000;
  if (((v9 - Shape) >> 3) >= 6)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v10 = 0;
  if (v9 != Shape)
  {
    v7 = memcpy(*a4, Shape, v9 - Shape);
    v10 = *(a4 + 2);
  }

  *(a4 + 2) = v10 + ((v9 - Shape) >> 3);
  Instance = mlir::ANEPropertiesRegistry::getInstance(v7);
  Context = mlir::Type::getContext(v34);
  result = mlir::ANEPropertiesRegistry::getProperties(Instance, Context);
  if (result)
  {
    v14 = *result;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a4 + 2);
  if (a3)
  {
    if (v15 <= 1)
    {
      if (!v15)
      {
        *(a4 + 2) = 0;
        if (*(a4 + 3) <= 4u)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v33 = *a4;
        *v33 = xmmword_257374260;
        *(v33 + 1) = unk_257374270;
        v33[4] = 1;
        goto LABEL_60;
      }

      if (v15 != 1)
      {
        return result;
      }

      v16 = *a4;
      v19 = **a4;
      *(a4 + 2) = 0;
      if (*(a4 + 3) <= 4u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *v16 = 1;
      *(v16 + 8) = vdupq_n_s64(1uLL);
    }

    else
    {
      switch(v15)
      {
        case 2:
          v16 = *a4;
          v27 = **a4;
          v19 = (*a4)[1];
          *(a4 + 2) = 0;
          if (*(a4 + 3) <= 4u)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *v16 = 1;
          break;
        case 3:
          v28 = *a4;
          v29 = **a4;
          v27 = (*a4)[1];
          v19 = (*a4)[2];
          *(a4 + 2) = 0;
          v30 = *(a4 + 3);
          if (v14)
          {
            if (v30 <= 4)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v28;
            *v28 = 1;
            *(v28 + 1) = 1;
            *(v28 + 2) = v29;
            *(v28 + 3) = v27;
            goto LABEL_59;
          }

          if (v30 <= 4)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v28;
          *v28 = v29;
          break;
        case 4:
          v16 = *a4;
          v17 = **a4;
          v18 = *(*a4 + 1);
          v19 = (*a4)[3];
          *(a4 + 2) = 0;
          if (*(a4 + 3) <= 4u)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *v16 = v17;
          *(v16 + 1) = 1;
          *(v16 + 1) = v18;
          goto LABEL_59;
        default:
          return result;
      }

      *(v16 + 1) = 1;
      *(v16 + 2) = v27;
    }

    *(v16 + 3) = 1;
LABEL_59:
    *(v16 + 4) = v19;
LABEL_60:
    v32 = 5;
    goto LABEL_61;
  }

  if (v15 <= 1)
  {
    if (!v15)
    {
      *(a4 + 2) = 0;
      if (*(a4 + 3) <= 3u)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = *a4;
      *v31 = xmmword_257374240;
      *(v31 + 1) = unk_257374250;
      v32 = 4;
      goto LABEL_61;
    }

    if (v15 != 1)
    {
      return result;
    }

    v20 = *a4;
    v21 = **a4;
    *(a4 + 2) = 0;
    if (*(a4 + 3) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *v20 = 1;
    *(v20 + 8) = vdupq_n_s64(1uLL);
    goto LABEL_54;
  }

  if (v15 == 2)
  {
    v20 = *a4;
    v26 = **a4;
    v21 = (*a4)[1];
    *(a4 + 2) = 0;
    if (*(a4 + 3) <= 3u)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *v20 = 1;
    *(v20 + 1) = v26;
  }

  else
  {
    if (v15 != 3)
    {
      return result;
    }

    v22 = *a4;
    v24 = **a4;
    v23 = (*a4)[1];
    v21 = (*a4)[2];
    *(a4 + 2) = 0;
    v25 = *(a4 + 3);
    if (v14)
    {
      if (v25 <= 3)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v20 = v22;
      *v22 = 1;
      *(v22 + 1) = v24;
      *(v22 + 2) = v23;
      goto LABEL_54;
    }

    if (v25 <= 3)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v20 = v22;
    *v22 = v24;
    *(v22 + 1) = v23;
  }

  *(v20 + 2) = 1;
LABEL_54:
  *(v20 + 3) = v21;
  v32 = 4;
LABEL_61:
  *(a4 + 2) += v32;
  return result;
}

void *mlir::getRankPromotionTypeForANE(uint64_t a1, uint64_t a2)
{
  v89[5] = *MEMORY[0x277D85DE8];
  v77 = a1;
  v78 = a2;
  if (!mlir::ShapedType::hasRank(&v77))
  {
    return v77;
  }

  Shape = mlir::ShapedType::getShape(&v77);
  if (v3)
  {
    v4 = 8 * v3;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v4 -= 8;
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    return v77;
  }

LABEL_6:
  if ((mlir::ShapedType::hasRank(&v77) & 1) == 0)
  {
    return v77;
  }

  mlir::getRankPromotionShapeForANE(v77, v78, 0, &v87);
  v5 = mlir::ShapedType::getShape(&v77);
  v6 = v88;
  if (v7 == v88 && !memcmp(v5, v87, 8 * v88))
  {
    result = v77;
  }

  else
  {
    v8 = v77;
    if (*(*v77 + 136) != &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
    {
      v8 = 0;
    }

    v76 = v8;
    if (v8)
    {
      *&v85 = mlir::MemRefType::getLayout(&v76);
      *(&v85 + 1) = v9;
      if (mlir::MemRefLayoutAttrInterface::isIdentity(&v85))
      {
        v10 = v87;
        v11 = v88;
        ElementType = mlir::MemRefType::getElementType(&v76);
        MemorySpace = mlir::MemRefType::getMemorySpace(&v76);
        result = mlir::MemRefType::get(v10, v11, ElementType, 0, MemorySpace);
        if (result)
        {
          v15 = result;
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v15;
        }
      }

      else
      {
        mlir::MemRefType::getShape(&v76);
        v19 = v18;
        *&v85 = mlir::MemRefType::getLayout(&v76);
        *(&v85 + 1) = v20;
        AffineMap = mlir::MemRefLayoutAttrInterface::getAffineMap(&v85);
        *&v85 = v86;
        *(&v85 + 1) = 0x300000000;
        v82 = &v84;
        v83 = 0x100000000;
        Results = mlir::AffineMap::getResults(&AffineMap);
        v22 = *Results;
        if (*Results && (v79 = *Results, mlir::AffineExpr::getKind(&v79) < 5))
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v79, v23);
        v74 = v79;
        LHS = mlir::AffineBinaryOpExpr::getLHS(&v74);
        if (LHS && (v25 = LHS, v79 = LHS, mlir::AffineExpr::getKind(&v79) < 5))
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v79, v26);
        v27 = v79;
        RHS = mlir::AffineBinaryOpExpr::getRHS(&v74);
        if (RHS && (v29 = RHS, v79 = RHS, mlir::AffineExpr::getKind(&v79) < 5))
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v79, v30);
        v73 = v79;
        if (v79 && mlir::AffineExpr::getKind(&v73) == 2)
        {
          v31 = mlir::AffineBinaryOpExpr::getRHS(&v73);
          llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(&v82, v31);
          v74 = v27;
        }

        if (v19 - 1 >= 1)
        {
          do
          {
            v32 = mlir::AffineBinaryOpExpr::getLHS(&v74);
            if (v32 && (v33 = v32, v79 = v32, mlir::AffineExpr::getKind(&v79) < 5))
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v79, v34);
            v35 = v79;
            v36 = mlir::AffineBinaryOpExpr::getRHS(&v74);
            if (v36 && (v37 = v36, v79 = v36, mlir::AffineExpr::getKind(&v79) < 5))
            {
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            mlir::AffineBinaryOpExpr::AffineBinaryOpExpr(&v79, v38);
            v73 = v79;
            if (v79 && mlir::AffineExpr::getKind(&v73) == 1)
            {
              AffineConstantExpr = mlir::AffineBinaryOpExpr::getRHS(&v73);
            }

            else
            {
              Context = mlir::Type::getContext(&v76);
              AffineConstantExpr = mlir::getAffineConstantExpr(1, Context, v41);
            }

            if (DWORD2(v85) >= HIDWORD(v85))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            *(v85 + 8 * DWORD2(v85)) = AffineConstantExpr;
            ++DWORD2(v85);
            v74 = v35;
            --v19;
          }

          while (v19 > 1);
        }

        v42 = mlir::AffineBinaryOpExpr::getRHS(&v74);
        if (DWORD2(v85) >= HIDWORD(v85))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v85 + 8 * DWORD2(v85)) = v42;
        ++DWORD2(v85);
        if (v83 == 1)
        {
          v79 = llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(v82);
          Value = mlir::AffineConstantExpr::getValue(&v79);
        }

        else
        {
          Value = 1;
        }

        v79 = &v81;
        v80 = 0x100000000;
        v44 = mlir::Type::getContext(&v76);
        AffineDimExpr = mlir::getAffineDimExpr(0, v44, v45);
        v71 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v85 + 16));
        v46 = mlir::MemRefType::getShape(&v76);
        v72 = mlir::AffineExpr::operator*(&v71, *(v46 + 8) / Value);
        v47 = mlir::Type::getContext(&v76);
        v71 = mlir::getAffineDimExpr(1, v47, v48);
        if (v83 == 1)
        {
          v71 = mlir::AffineExpr::floorDiv(&v71, *v82);
        }

        v49 = mlir::AffineExpr::operator*(&v71, *(v85 + 16));
        v72 = mlir::AffineExpr::operator+(&v72, v49);
        v50 = mlir::Type::getContext(&v76);
        AffineDimExpr = mlir::getAffineDimExpr(2, v50, v51);
        v52 = mlir::AffineExpr::operator*(&AffineDimExpr, *(v85 + 8));
        v72 = mlir::AffineExpr::operator+(&v72, v52);
        v53 = mlir::Type::getContext(&v76);
        AffineDimExpr = mlir::getAffineDimExpr(3, v53, v54);
        v55 = mlir::AffineExpr::operator*(&AffineDimExpr, *v85);
        v56 = mlir::AffineExpr::operator+(&v72, v55);
        v72 = v56;
        if (v83 == 1)
        {
          v57 = mlir::Type::getContext(&v76);
          AffineDimExpr = mlir::getAffineDimExpr(1, v57, v58);
          v59 = mlir::AffineExpr::operator%(&AffineDimExpr, *v82);
          v56 = mlir::AffineExpr::operator+(&v72, v59);
          v72 = v56;
        }

        if (v80 >= HIDWORD(v80))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v79 + v80) = v56;
        LODWORD(v80) = v80 + 1;
        v60 = v80;
        v61 = v79;
        v62 = mlir::Type::getContext(&v76);
        v63 = mlir::AffineMap::get(4, 0, v61, v60, v62);
        v64 = mlir::MemRefType::getShape(&v76);
        v66 = v65;
        v67 = mlir::MemRefType::getElementType(&v76);
        result = mlir::MemRefType::get(v64, v66, v67, v63, 0);
        v68 = result;
        if (result)
        {
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*result + 8);
          result = v68;
        }

        if (v79 != &v81)
        {
          free(v79);
          result = v68;
        }

        if (v82 != &v84)
        {
          free(v82);
          result = v68;
        }

        if (v85 != v86)
        {
          free(v85);
          result = v68;
        }
      }
    }

    else
    {
      v16 = v87;
      v17 = mlir::ShapedType::getElementType(&v77);
      *&v85 = v16;
      *(&v85 + 1) = v6;
      v86[0] = 1;
      result = mlir::ShapedType::cloneWith(&v77, &v85, v17);
    }
  }

  if (v87 != v89)
  {
    v69 = result;
    free(v87);
    return v69;
  }

  return result;
}

unint64_t mlir::anec::getIndexFromDim(int a1, unint64_t a2)
{
  if (a1 <= 1)
  {
    v2 = a2 - 3;
    v6 = (a2 - 3) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 3)
    {
      v2 = 0;
      v6 = 0;
    }

    if (a1 == 1)
    {
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0;
    }

    if (a1)
    {
      v3 = v7;
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0;
    v2 = a2 > 4;
  }

  else
  {
    v2 = a2 - 2;
    v3 = (a2 - 2) & 0xFFFFFFFFFFFFFF00;
    if (a2 < 2)
    {
      v2 = 0;
      v3 = 0;
    }

    v4 = a2 - 1;
    v5 = (a2 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a2)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 4)
    {
      v4 = 0;
      v5 = 0;
    }

    if (a1 != 3)
    {
      v2 = v4;
      v3 = v5;
    }
  }

  return v3 | v2;
}

void *mlir::getMostDefinedTypeForANE(uint64_t a1, uint64_t a2)
{
  MostDefinedTypeForCPU = mlir::getMostDefinedTypeForCPU(a1, a2);

  return mlir::getRankPromotionTypeForANE(MostDefinedTypeForCPU, v3);
}

double mlir::anec::getAllDims@<D0>(uint64_t a1@<X8>)
{
  *a1 = a1 + 16;
  *(a1 + 32) = 4;
  *(a1 + 16) = xmmword_25737428C;
  *&result = 0x500000005;
  *(a1 + 8) = 0x500000005;
  return result;
}

uint64_t mlir::anec::getMaximumDimSize(unsigned int a1)
{
  if (a1 > 4)
  {
    return 0x10000;
  }

  else
  {
    return qword_2573742A0[a1];
  }
}

uint64_t mlir::anec::getDimFromIndex(mlir::anec *this, unint64_t a2)
{
  if (a2 && (a2 - 1) == this)
  {
    return 0x100000004;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    return 0x100000003;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    return 0x100000001;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    return (2 * (a2 != 4)) | 0x100000000;
  }

  v3 = (a2 - 5) == this && a2 > 4;
  v4 = 0x100000000;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

void mlir::anec::getANEDefaultLayout(uint64_t a1, uint64_t a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v33 = v35;
  v35[0] = 4;
  v34 = 0xC00000001;
  v36 = 1;
  v37 = v39;
  v39[0] = 4;
  v38 = 0xC00000001;
  v30 = v32;
  v31 = 0xC00000002;
  v32[0] = 0x400000001;
  v40 = 2;
  v41 = v43;
  v42 = 0xC00000002;
  v43[0] = 0x400000001;
  v27 = &v28 + 8;
  v29 = 4;
  v28 = xmmword_257374220;
  v43[6] = 3;
  v44 = &v46;
  v47 = 4;
  v46 = 0x100000000;
  v45 = 0xC00000003;
  v25 = &v26[8];
  *&v26[16] = 0x400000003;
  *v26 = xmmword_257374230;
  v48 = 4;
  v49 = v51;
  v51[0] = *&v26[8];
  v50 = 0xC00000004;
  v21 = &v23;
  v24 = 4;
  v23 = xmmword_25737428C;
  v22 = 0xC00000005;
  v52 = 5;
  v53 = &v55;
  v55 = xmmword_25737428C;
  v56 = 4;
  v54 = 0xC00000005;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(&v19, &v36, 5);
  if (v53 != &v55)
  {
    free(v53);
  }

  if (v49 != v51)
  {
    free(v49);
  }

  if (v44 != &v46)
  {
    free(v44);
  }

  if (v41 != v43)
  {
    free(v41);
  }

  if (v37 != v39)
  {
    free(v37);
  }

  if (v21 != &v23)
  {
    free(v21);
  }

  if (v25 != &v26[8])
  {
    free(v25);
  }

  if (v27 != &v28 + 8)
  {
    free(v27);
  }

  if (v30 != v32)
  {
    free(v30);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v2 = v19;
  if ((a1 - 6) < 0xFFFFFFFFFFFFFFFBLL)
  {
    v3 = v20;
    if (v20)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

  if (v20)
  {
    v8 = (v20 - 1) & (((0xBF58476D1CE4E5B9 * a1) >> 31) ^ (484763065 * a1));
    v9 = v19 + 72 * v8;
    v10 = *v9;
    if (*v9 == a1)
    {
      goto LABEL_36;
    }

    v11 = 1;
    while (v10 != -1)
    {
      v12 = v8 + v11++;
      v8 = v12 & (v20 - 1);
      v9 = v19 + 72 * v8;
      v10 = *v9;
      if (*v9 == a1)
      {
        goto LABEL_36;
      }
    }
  }

  v9 = v19 + 72 * v20;
LABEL_36:
  v13 = (v9 + 8);
  if (v9 + 8 == a2)
  {
    v3 = v20;
    if (v20)
    {
LABEL_23:
      v4 = 72 * v3;
      v5 = v2 + 24;
      do
      {
        if (*(v5 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = *(v5 - 2);
          if (v5 != v6)
          {
            free(v6);
          }
        }

        v5 += 72;
        v4 -= 72;
      }

      while (v4);
      v2 = v19;
      v7 = 72 * v20;
LABEL_51:
      llvm::deallocate_buffer(v2, v7);
    }
  }

  else
  {
    v14 = *(v9 + 4);
    v15 = *(a2 + 8);
    if (v15 >= v14)
    {
      if (v14)
      {
        memmove(*a2, *v13, 4 * v14);
      }
    }

    else
    {
      if (*(a2 + 12) < v14)
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v15)
      {
        memmove(*a2, *v13, 4 * v15);
      }

      else
      {
        v15 = 0;
      }

      v16 = *(v9 + 4) - v15;
      if (v16)
      {
        memcpy((*a2 + 4 * v15), *v13 + 4 * v15, 4 * v16);
      }
    }

    *(a2 + 8) = v14;
    v2 = v19;
    v3 = v20;
    if (v20)
    {
      goto LABEL_23;
    }
  }

LABEL_50:
  v7 = 0;
  goto LABEL_51;
}

uint64_t mlir::anec::getReferenceFormatIndex(mlir::anec *this, unint64_t a2, unint64_t a3)
{
  if (a2 && (a2 - 1) == this)
  {
    v3 = a3 - 1;
    v4 = (a3 - 1) & 0xFFFFFFFFFFFFFF00;
    if (!a3)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 2 && (a2 - 2) == this)
  {
    v3 = a3 - 2;
    v4 = (a3 - 2) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 2;
    goto LABEL_12;
  }

  if (a2 >= 3 && (a2 - 3) == this)
  {
    v3 = a3 - 3;
    v4 = (a3 - 3) & 0xFFFFFFFFFFFFFF00;
    v5 = a3 >= 3;
LABEL_12:
    if (!v5)
    {
      v3 = 0;
      v4 = 0;
    }

    return v4 | v3;
  }

  if (a2 >= 4 && (a2 - 4) == this)
  {
    if (a2 != 4)
    {
      v4 = 0;
      v3 = a3 > 4;
      return v4 | v3;
    }

LABEL_22:
    v3 = 0;
    v4 = 0;
    return v4 | v3;
  }

  if (a2 < 5)
  {
    return 0;
  }

  v7 = a2 - 5 == this;
  result = 0;
  if (v7)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t mlir::anec::allElementsOnAxis(uint64_t a1, uint64_t a2, int a3)
{
  v16[0] = a1;
  v16[1] = a2;
  Shape = mlir::ShapedType::getShape(v16);
  if (!v5)
  {
    return 1;
  }

  v6 = Shape;
  v7 = 0;
  v8 = 8 * v5 - 8;
  do
  {
    mlir::ShapedType::getShape(v16);
    if (v7 == v9 - 1)
    {
      v10 = 0;
      v11 = 4;
    }

    else if (v9 >= 2 && v7 == v9 - 2)
    {
      v10 = 0;
      v11 = 3;
    }

    else if (v9 >= 3 && v7 == v9 - 3)
    {
      v10 = 0;
      v11 = 1;
    }

    else if (v9 >= 4 && v7 == v9 - 4)
    {
      v10 = 0;
      v11 = 2 * (v9 != 4);
    }

    else
    {
      v11 = 0;
      v10 = v9 < 5 || v7 != v9 - 5;
    }

    if (v11 != a3)
    {
      v10 = 1;
    }

    v13 = *(v6 + 8 * v7) != 1 && v10;
    if (v13)
    {
      break;
    }

    ++v7;
    v14 = v8;
    v8 -= 8;
  }

  while (v14);
  return v13 ^ 1u;
}

uint64_t mlir::anec::verifyCompatibilityWithFlatten(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = a1;
  v19[1] = a2;
  v18[0] = a3;
  v18[1] = a4;
  result = mlir::ShapedType::hasRank(v19);
  if (result)
  {
    result = mlir::ShapedType::hasRank(v18);
    if (result)
    {
      mlir::ShapedType::getShape(v19);
      v6 = v5;
      mlir::ShapedType::getShape(v18);
      if (v6 == v7 && (mlir::ShapedType::getShape(v19), v8 <= 4) && (mlir::ShapedType::getShape(v19), v9 >= 4) && (v10 = *mlir::ShapedType::getShape(v19), v10 == *mlir::ShapedType::getShape(v18)) && (Shape = mlir::ShapedType::getShape(v19), NumElements = mlir::ShapedType::getNumElements(Shape, v12), v14 = mlir::ShapedType::getShape(v18), NumElements == mlir::ShapedType::getNumElements(v14, v15)))
      {
        v17[0] = mlir::ShapedType::getShape(v18);
        v17[1] = v16;
        return llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(v17, v18) ^ 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t llvm::any_of<llvm::detail::zippy<llvm::detail::zip_enumerator,llvm::detail::index_stream,llvm::ArrayRef<long long>>,mlir::anec::verifyCompatibilityWithFlatten(mlir::ShapedType,mlir::ShapedType)::$_0>(uint64_t *a1, mlir::ShapedType *this)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *a1;
  v6 = 8 * v2;
  while (1)
  {
    mlir::ShapedType::getShape(this);
    if (v4 == v7 - 1 || v7 >= 2 && v4 == v7 - 2)
    {
      break;
    }

    if (v7 >= 3 && v4 == v7 - 3)
    {
      goto LABEL_4;
    }

    if (v7 >= 4 && v4 == v7 - 4)
    {
      if (v7 == 4)
      {
        goto LABEL_4;
      }

      break;
    }

    if (v7 < 5 || v4 != v7 - 5)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      return 0;
    }

LABEL_4:
    ++v4;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(v5 + 8 * v4) == 1)
  {
    goto LABEL_4;
  }

  return 1;
}

uint64_t llvm::dyn_cast_if_present<mlir::AffineConstantExpr,mlir::AffineExpr>(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 && (v4 = *a1, mlir::AffineExpr::getKind(&v4) == 5))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  mlir::AffineConstantExpr::AffineConstantExpr(&v4, v2);
  return v4;
}

uint64_t mlir::Diagnostic::append<char const(&)[14],long long &,char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5, char *a6, uint64_t *a7, char *a8)
{
  v16 = strlen(__s);
  v17 = a1;
  v19 = *(a1 + 16);
  a1 += 16;
  v18 = v19;
  LODWORD(v30) = 3;
  *(&v30 + 1) = __s;
  v31 = v16;
  v20 = *(a1 + 8);
  if (v20 >= *(a1 + 12))
  {
    if (v18 > &v30 || v18 + 24 * v20 <= &v30)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v21 = v18 + 24 * *(v17 + 24);
  v22 = v30;
  *(v21 + 16) = v31;
  *v21 = v22;
  v23 = *(v17 + 28);
  v24 = *(v17 + 24) + 1;
  *(v17 + 24) = v24;
  v25 = *a3;
  LODWORD(v30) = 2;
  *(&v30 + 1) = v25;
  v26 = *(v17 + 16);
  if (v24 >= v23)
  {
    if (v26 > &v30 || v26 + 24 * v24 <= &v30)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v27 = v26 + 24 * *(v17 + 24);
  v28 = v30;
  *(v27 + 16) = v31;
  *v27 = v28;
  ++*(v17 + 24);
  return mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(v17, a4, a5, a6, a7, a8);
}

uint64_t mlir::Diagnostic::append<char const(&)[27],long long,char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, uint64_t *a3, char *a4, uint64_t *a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v15 = *(a1 + 16);
  a1 += 16;
  v14 = v15;
  LODWORD(v26) = 3;
  *(&v26 + 1) = __s;
  v27 = v12;
  v16 = *(a1 + 8);
  if (v16 >= *(a1 + 12))
  {
    if (v14 > &v26 || v14 + 24 * v16 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = v14 + 24 * *(v13 + 24);
  v18 = v26;
  *(v17 + 16) = v27;
  *v17 = v18;
  v19 = *(v13 + 28);
  v20 = *(v13 + 24) + 1;
  *(v13 + 24) = v20;
  v21 = *a3;
  LODWORD(v26) = 2;
  *(&v26 + 1) = v21;
  v22 = *(v13 + 16);
  if (v20 >= v19)
  {
    if (v22 > &v26 || v22 + 24 * v20 <= &v26)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v23 = v22 + 24 * *(v13 + 24);
  v24 = v26;
  *(v23 + 16) = v27;
  *v23 = v24;
  ++*(v13 + 24);
  return mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(v13, a4, a5, a6);
}

uint64_t mlir::Diagnostic::append<char const(&)[3],long long,char const(&)[2]>(uint64_t a1, char *__s, uint64_t *a3, char *a4)
{
  v8 = strlen(__s);
  v9 = *(a1 + 16);
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = v8;
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    if (v9 > &v14 || v9 + 24 * v10 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v9 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return mlir::Diagnostic::append<long long,char const(&)[2]>(a1, a3, a4);
}

uint64_t mlir::Diagnostic::append<long long,char const(&)[2]>(uint64_t a1, uint64_t *a2, char *__s)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  LODWORD(v14) = 2;
  *(&v14 + 1) = v5;
  v6 = *(a1 + 24);
  if (v6 >= *(a1 + 28))
  {
    if (v4 > &v14 || v4 + 24 * v6 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = v4 + 24 * *(a1 + 24);
  v8 = v14;
  *(v7 + 16) = v15;
  *v7 = v8;
  v9 = *(a1 + 24) + 1;
  *(a1 + 24) = v9;
  LODWORD(v14) = 3;
  *(&v14 + 1) = __s;
  v15 = strlen(__s);
  v10 = *(a1 + 16);
  if (v9 >= *(a1 + 28))
  {
    if (v10 > &v14 || v10 + 24 * v9 <= &v14)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v11 = v10 + 24 * *(a1 + 24);
  v12 = v14;
  *(v11 + 16) = v15;
  *v11 = v12;
  ++*(a1 + 24);
  return a1;
}

uint64_t **llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  if (result[8])
  {
    v6 = result[7];
    if (!v6)
    {
LABEL_14:
      operator new();
    }

    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = v6[4];
        if (v7 >= v9)
        {
          break;
        }

        v6 = *v8;
        if (!*v8)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    v15 = 0;
    v16 = 0;
  }

  else
  {
    v10 = *result;
    v11 = *(result + 2);
    v12 = *a2;
    if (!v11)
    {
      goto LABEL_19;
    }

    v13 = 8 * v11;
    v14 = 8 * v11;
    v8 = *result;
    while (*v8 != v12)
    {
      ++v8;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    if (v14)
    {
      v16 = 0;
      v15 = 1;
      goto LABEL_22;
    }

LABEL_18:
    if (v11 > 3)
    {
      do
      {
        result = std::__tree<long long>::__find_equal<long long>(v4 + 6, v4 + 7, &v22, &v21, v10);
        if (!*result)
        {
          operator new();
        }

        ++v10;
        v13 -= 8;
      }

      while (v13);
      *(v4 + 2) = 0;
      v18 = v4[7];
      if (!v18)
      {
LABEL_33:
        operator new();
      }

      v19 = *a2;
      while (1)
      {
        while (1)
        {
          v8 = v18;
          v20 = v18[4];
          if (v19 >= v20)
          {
            break;
          }

          v18 = *v8;
          if (!*v8)
          {
            goto LABEL_33;
          }
        }

        if (v20 >= v19)
        {
          break;
        }

        v18 = v8[1];
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      v15 = 0;
    }

    else
    {
LABEL_19:
      if (v11 >= *(result + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10[v11] = v12;
      v17 = *(result + 2) + 1;
      *(result + 2) = v17;
      v8 = &(*result)[v17 - 1];
      v15 = 1;
    }

    v16 = 1;
  }

LABEL_22:
  *(a3 + 8) = v15;
  *a3 = v8;
  *(a3 + 16) = v16;
  return result;
}

uint64_t llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::DenseMap(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    goto LABEL_11;
  }

  v6 = (4 * a3 / 3u + 1) | ((4 * a3 / 3u + 1) >> 1);
  v7 = v6 | (v6 >> 2) | ((v6 | (v6 >> 2)) >> 4);
  LODWORD(v7) = (((v7 | (v7 >> 8)) >> 16) | v7 | (v7 >> 8)) + 1;
  *(a1 + 16) = v7;
  buffer = llvm::allocate_buffer(72 * v7, 8uLL);
  *a1 = buffer;
  *(a1 + 8) = 0;
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_12:
    v16 = &a2[9 * a3];
    while (1)
    {
      v21 = *(a1 + 16);
      if (!v21)
      {
        break;
      }

      v17 = v21 - 1;
      v18 = v17 & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
      v19 = (*a1 + 72 * v18);
      v20 = *v19;
      if (*a2 != *v19)
      {
        v23 = 0;
        v24 = 1;
        while (v20 != -1)
        {
          if (v23)
          {
            v25 = 0;
          }

          else
          {
            v25 = v20 == -2;
          }

          if (v25)
          {
            v23 = v19;
          }

          v26 = v18 + v24++;
          v18 = v26 & v17;
          v19 = (*a1 + 72 * v18);
          v20 = *v19;
          if (*a2 == *v19)
          {
            goto LABEL_14;
          }
        }

        if (v23)
        {
          v22 = v23;
        }

        else
        {
          v22 = v19;
        }

        goto LABEL_17;
      }

LABEL_14:
      a2 += 9;
      if (a2 == v16)
      {
        return a1;
      }
    }

    v22 = 0;
LABEL_17:
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(a1, v22, a2, (a2 + 1));
    goto LABEL_14;
  }

  v10 = 72 * v9 - 72;
  if (v10 < 0x48)
  {
    v11 = buffer;
LABEL_9:
    v15 = &buffer[9 * v9];
    do
    {
      *v11 = -1;
      v11 += 9;
    }

    while (v11 != v15);
    goto LABEL_11;
  }

  v12 = v10 / 0x48 + 1;
  v11 = &buffer[9 * (v12 & 0x7FFFFFFFFFFFFFELL)];
  v13 = buffer;
  v14 = v12 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    *v13 = -1;
    v13[9] = -1;
    v13 += 18;
    v14 -= 2;
  }

  while (v14);
  if (v12 != (v12 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a3)
  {
    goto LABEL_12;
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (v3 - 1) & (((0xBF58476D1CE4E5B9 * *a2) >> 31) ^ (484763065 * *a2));
    v7 = (*a1 + 72 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 72 * (v13 & v5));
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

      *a3 = v7;
    }
  }

  else
  {
    v7 = 0;
    result = 0;
LABEL_5:
    *a3 = v7;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::InsertIntoBucket<unsigned long const&,llvm::SmallVector<mlir::anec::Dim,12u> const&>(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a2;
  v12 = a2;
  v5 = *(a1 + 2);
  v6 = *(a1 + 4);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v9 = a3;
    v10 = a4;
    v6 *= 2;
  }

  else
  {
    if (v6 + ~v5 - *(a1 + 3) > v6 >> 3)
    {
      goto LABEL_3;
    }

    v9 = a3;
    v10 = a4;
  }

  v11 = a1;
  llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::LookupBucketFor<unsigned long>(v11, v9, &v12);
  a1 = v11;
  a3 = v9;
  v5 = *(v11 + 2);
  v4 = v12;
  a4 = v10;
LABEL_3:
  *(a1 + 2) = v5 + 1;
  if (*v4 != -1)
  {
    --*(a1 + 3);
  }

  *v4 = *a3;
  v4[1] = v4 + 3;
  v4[2] = 0xC00000000;
  if (v4 + 1 != a4)
  {
    v7 = *(a4 + 8);
    if (v7)
    {
      if (v7 >= 0xD)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      memcpy(v4 + 3, *a4, 4 * *(a4 + 8));
      *(v4 + 4) = v7;
    }
  }

  return v4;
}

void *llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(72 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = 9 * v3;
    llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(a1, v4, &v4[v10]);

    llvm::deallocate_buffer(v4, (v10 * 8));
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 72 * v11 - 72;
    if (v12 < 0x48)
    {
      v13 = result;
LABEL_14:
      v17 = &result[9 * v11];
      do
      {
        *v13 = -1;
        v13 += 9;
      }

      while (v13 != v17);
      return result;
    }

    v14 = v12 / 0x48 + 1;
    v13 = &result[9 * (v14 & 0x7FFFFFFFFFFFFFELL)];
    v15 = result;
    v16 = v14 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v15 = -1;
      v15[9] = -1;
      v15 += 18;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_14;
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>,unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>,llvm::DenseMapInfo<unsigned long,void>,llvm::detail::DenseMapPair<unsigned long,llvm::SmallVector<mlir::anec::Dim,12u>>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 72 * v6 - 72;
    if (v8 < 0x48)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[9 * v6];
      do
      {
        *v9 = -1;
        v9 += 9;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x48 + 1;
    v9 = &v7[9 * (v10 & 0x7FFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0x7FFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[9] = -1;
      v11 += 18;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  if (a2 != a3)
  {
    do
    {
      v14 = *v4;
      if (*v4 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = *(a1 + 16) - 1;
        v16 = v15 & (((0xBF58476D1CE4E5B9 * v14) >> 31) ^ (484763065 * v14));
        v17 = (*a1 + 72 * v16);
        v18 = *v17;
        if (v14 != *v17)
        {
          v20 = 0;
          v21 = 1;
          while (v18 != -1)
          {
            if (v20)
            {
              v22 = 0;
            }

            else
            {
              v22 = v18 == -2;
            }

            if (v22)
            {
              v20 = v17;
            }

            v23 = v16 + v21++;
            v16 = v23 & v15;
            v17 = (*a1 + 72 * (v23 & v15));
            v18 = *v17;
            if (v14 == *v17)
            {
              goto LABEL_14;
            }
          }

          if (v20)
          {
            v17 = v20;
          }
        }

LABEL_14:
        *v17 = v14;
        v17[1] = v17 + 3;
        v17[2] = 0xC00000000;
        if (*(v4 + 4))
        {
          llvm::SmallVectorImpl<int>::operator=((v17 + 1), v4 + 1);
        }

        ++*(a1 + 8);
        v19 = v4[1];
        if (v19 != (v4 + 3))
        {
          free(v19);
        }
      }

      v4 += 9;
    }

    while (v4 != a3);
  }
}

uint64_t mlir::getStrideInBytes(void *a1, uint64_t a2, int a3)
{
  v18 = a1;
  *(a2 + 8) = 0;
  if (a3)
  {
    v17[0] = mlir::MemRefType::getLayout(&v18);
    v17[1] = v4;
    if (mlir::MemRefLayoutAttrInterface::isIdentity(v17))
    {
      return 1;
    }

    a1 = v18;
  }

  result = mlir::getElementTypeByteWidth(a1);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v17[0] = 0;
  if ((mlir::getStridesAndOffset(v18, a2, v17) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *a2;
    v9 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v9)
    {
      v10 = v9 + 1;
      v11 = (v9 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v12 = &v8[v11];
      v13 = v8 + 1;
      v14 = v11;
      do
      {
        v15 = *v13 * v6;
        *(v13 - 1) *= v6;
        *v13 = v15;
        v13 += 2;
        v14 -= 2;
      }

      while (v14);
      if (v10 == v11)
      {
        return 1;
      }
    }

    else
    {
      v12 = *a2;
    }

    v16 = &v8[v7];
    do
    {
      *v12++ *= v6;
    }

    while (v12 != v16);
  }

  return 1;
}

BOOL mlir::inferReturnTypesEqualToFirstArgumentType(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  if (a5)
  {
    v9 = *(mlir::ValueRange::dereference_iterator(v12, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *(a9 + 8);
    if (v10 >= *(a9 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a9 + 8 * v10) = v9;
    ++*(a9 + 8);
    return 1;
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::inferReductionOpReturnShape(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7, uint64_t a8)
{
  v34[6] = *MEMORY[0x277D85DE8];
  v32 = v34;
  v33 = 0x600000000;
  result = mlir::getPositiveAxes(a5, a6, a4, &v32, a1, a2, 0);
  if (result)
  {
    v26 = v28;
    v27 = 0x400000000;
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (v33)
    {
      v13 = v32;
      v14 = 8 * v33;
      do
      {
        v15 = *v13++;
        v25 = v15;
        llvm::SmallSet<long long,4u,std::less<long long>>::insertImpl<long long const&>(&v26, &v25, v24);
        v14 -= 8;
      }

      while (v14);
    }

    if (a4)
    {
      for (i = 0; i != a4; ++i)
      {
        if (v31)
        {
          v19 = v30;
          if (!v30)
          {
            goto LABEL_7;
          }

          v20 = &v30;
          do
          {
            if (v19[4] >= i)
            {
              v20 = v19;
            }

            v19 = v19[v19[4] < i];
          }

          while (v19);
          if (v20 == &v30 || i < v20[4])
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_7;
          }

          v21 = v26;
          v22 = 8 * v27;
          while (*v21 != i)
          {
            ++v21;
            v22 -= 8;
            if (!v22)
            {
              goto LABEL_7;
            }
          }

          if (!v22)
          {
LABEL_7:
            v17 = *(a3 + 8 * i);
            v18 = *(a8 + 8);
            if (v18 >= *(a8 + 12))
            {
              goto LABEL_27;
            }

            goto LABEL_8;
          }
        }

        if (!a7)
        {
          continue;
        }

        v18 = *(a8 + 8);
        v17 = 1;
        if (v18 >= *(a8 + 12))
        {
LABEL_27:
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

LABEL_8:
        *(*a8 + 8 * v18) = v17;
        ++*(a8 + 8);
      }
    }

    std::__tree<long long>::destroy(&v29, v30);
    if (v26 != v28)
    {
      free(v26);
    }

    result = 1;
  }

  if (v32 != v34)
  {
    v23 = result;
    free(v32);
    return v23;
  }

  return result;
}

uint64_t mlir::mps::isMoreSpecializedShape(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = 8 * a2 - 8;
  do
  {
    v5 = v4;
    v6 = *a1 == *a3 || *a3 == 0x8000000000000000;
    v7 = v6;
    if (!v6)
    {
      break;
    }

    ++a1;
    ++a3;
    v4 -= 8;
  }

  while (v5);
  return v7;
}

uint64_t mlir::mps::getElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v6 = ElementTypeOrSelf;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v2 = ElementTypeOrSelf;
  }

  else
  {
    v2 = 0;
  }

  v5 = v2;
  if (!v2)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v6);
  }

  ElementType = mlir::ComplexType::getElementType(&v5);
  return 2 * mlir::mps::getElementBitWidth(ElementType);
}

uint64_t mlir::mps::getTypeAlignmentSize(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v11 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 1;
  }

  if (v2 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v3 = v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
    if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v4 = ElementTypeOrSelf;
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    if (!v3)
    {
      return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
    }

    goto LABEL_15;
  }

  if (mlir::Type::getIntOrFloatBitWidth(&v11) < 8)
  {
    return 1;
  }

  v6 = *(*v11 + 136);
  v7 = v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
  if (v6 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  if (!v7)
  {
    return mlir::Type::getIntOrFloatBitWidth(&v11) >> 3;
  }

LABEL_15:
  ElementType = mlir::ComplexType::getElementType(&v10);
  return mlir::Type::getIntOrFloatBitWidth(&ElementType) >> 3;
}

uint64_t mlir::mps::getElementsAttrElementBitWidth(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v7 = ElementTypeOrSelf;
  v2 = *(*ElementTypeOrSelf + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v3 = ElementTypeOrSelf;
  }

  else
  {
    v3 = 0;
  }

  v6 = v3;
  if (v3)
  {
    ElementType = mlir::ComplexType::getElementType(&v6);
    return 2 * mlir::mps::getElementsAttrElementBitWidth(ElementType);
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id)
  {
    return 4;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7);
  }
}

unint64_t mlir::mps::getElementsAttrStorageSize(uint64_t a1, uint64_t a2)
{
  v24[0] = a1;
  v24[1] = a2;
  ElementType = mlir::ShapedType::getElementType(v24);
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    Shape = mlir::ShapedType::getShape(v24);
    NumElements = mlir::ShapedType::getNumElements(Shape, v3);
    v5 = NumElements - (NumElements != 0);
    goto LABEL_3;
  }

  if (mlir::Type::isInteger(&ElementType, 2))
  {
    v8 = mlir::ShapedType::getShape(v24);
    v10 = mlir::ShapedType::getNumElements(v8, v9);
    v11 = v10 - (v10 != 0);
LABEL_9:
    v12 = v11 >> 2;
    if (v10)
    {
      return v12 + 1;
    }

    else
    {
      return v12;
    }
  }

  if (mlir::Type::isInteger(&ElementType, 3))
  {
    v13 = mlir::ShapedType::getShape(v24);
    NumElements = mlir::ShapedType::getNumElements(v13, v14);
    v5 = 3 * NumElements - (NumElements != 0);
LABEL_3:
    v6 = v5 >> 3;
    if (NumElements)
    {
      return v6 + 1;
    }

    else
    {
      return v6;
    }
  }

  if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id && !mlir::Type::isInteger(&ElementType, 4))
  {
    if (!mlir::Type::isInteger(&ElementType, 6))
    {
      ElementsAttrElementBitWidth = mlir::mps::getElementsAttrElementBitWidth(ElementType);
      v21 = mlir::ShapedType::getShape(v24);
      return (mlir::ShapedType::getNumElements(v21, v22) * ElementsAttrElementBitWidth) >> 3;
    }

    v18 = mlir::ShapedType::getShape(v24);
    v10 = mlir::ShapedType::getNumElements(v18, v19);
    v11 = 3 * v10 - (v10 != 0);
    goto LABEL_9;
  }

  v15 = mlir::ShapedType::getShape(v24);
  v17 = mlir::ShapedType::getNumElements(v15, v16);
  if (v17)
  {
    return ((v17 - (v17 != 0)) >> 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::mps::isCompatibleWithDenseStorage(uint64_t a1)
{
  v7 = a1;
  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  v6 = v1;
  if (v1)
  {
    ElementType = mlir::ComplexType::getElementType(&v6);
    return mlir::mps::isCompatibleWithDenseStorage(ElementType);
  }

  else
  {
    result = mlir::Type::isIntOrFloat(&v7);
    if (result)
    {
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&v7);
      return IntOrFloatBitWidth == 1 || IntOrFloatBitWidth > 7;
    }
  }

  return result;
}

void *mlir::mps::MPSDialect::materializeConstant(uint64_t a1, mlir::OpBuilder *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a4;
  result = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute,void>>::doCastIfPossible(a3);
  v9[0] = result;
  v9[1] = v8;
  if (result)
  {
    return mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::Type &,mlir::ElementsAttr &>(a2, a5, &v10, v9);
  }

  return result;
}

uint64_t mlir::mps::createBlobHandle@<X0>(mlir::mps *this@<X0>, mlir::MLIRContext *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(this, a2);
  mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(Manager, a2, a3, &v22);
  v15 = v22;
  v16 = v23;
  v19 = v26;
  if (v26 >= 8)
  {
    if ((v26 & 2) != 0 && (v26 & 4) != 0)
    {
      (*((v26 & 0xFFFFFFFFFFFFFFF8) + 8))(&v17, &v24);
      (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(&v24);
    }

    else
    {
      v17 = v24;
      v18 = v25;
    }

    v26 = 0;
  }

  v20 = v27;
  v21 = 1;
  result = mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, "tmp", 3, &v15, a4);
  if (v21 == 1 && v19 >= 8)
  {
    v9 = (v19 & 2) != 0 ? &v17 : v17;
    result = (*(v19 & 0xFFFFFFFFFFFFFFF8))(v9, v15, *(&v15 + 1), v16);
    v10 = v19;
    if (v19 >= 8)
    {
      if ((v19 & 4) != 0)
      {
        if ((v19 & 2) != 0)
        {
          v11 = &v17;
        }

        else
        {
          v11 = v17;
        }

        result = (*((v19 & 0xFFFFFFFFFFFFFFF8) + 16))(v11);
      }

      if ((v10 & 2) == 0)
      {
        llvm::deallocate_buffer(v17, *(&v17 + 1));
      }
    }
  }

  if (v26 >= 8)
  {
    v12 = (v26 & 2) != 0 ? &v24 : v24;
    result = (*(v26 & 0xFFFFFFFFFFFFFFF8))(v12, v22, *(&v22 + 1), v23);
    v13 = v26;
    if (v26 >= 8)
    {
      if ((v26 & 4) != 0)
      {
        if ((v26 & 2) != 0)
        {
          v14 = &v24;
        }

        else
        {
          v14 = v24;
        }

        result = (*((v26 & 0xFFFFFFFFFFFFFFF8) + 16))(v14);
      }

      if ((v13 & 2) == 0)
      {
        llvm::deallocate_buffer(v24, *(&v24 + 1));
      }
    }
  }

  return result;
}

uint64_t mlir::mps::getBufferTensorAttr(void *a1)
{
  v20 = a1;
  Context = mlir::Type::getContext(&v20);
  v2 = mlir::TensorType::operator mlir::ShapedType(&v20);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v2, v3);
  ElementType = mlir::RankedTensorType::getElementType(&v20);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(ElementType);
  mlir::mps::createBlobHandle(Context, ElementsAttrStorageSize, TypeAlignmentSize, &v18);
  v7 = v20;
  v25 = v18;
  v26 = v19;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
  v21[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v21[1] = Context;
  v28[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v28[1] = v21;
  v24 = v7;
  v27 = 0;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v25 - 0xAE502812AA7333) ^ DWORD1(v25));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v25) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((v7 >> 4) ^ (v7 >> 9));
  v14 = __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43) + 0x6C105E72878303FFLL * v11 - 0x4AA9CCC802B940A1;
  v15 = __ROR8__(v12 ^ 0xC949D7C7509E6557, 20);
  v16 = 0x9DDFEA08EB382D69 * ((v13 - 0xAE502812AA7333 + v15 + 24) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ (v13 - 0xAE502812AA7333 + v15 + 24))));
  v22[0] = &v24;
  v22[1] = v28;
  v23 = &v24;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v23, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v22);
}

void *mlir::TensorType::operator mlir::ShapedType(void **a1)
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
      mlir::TensorType::operator mlir::ShapedType();
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

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3)
{
  v19 = *a3;
  v20 = *(a3 + 2);
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v15[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v15[1] = a1;
  v22[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v22[1] = v15;
  v18 = a2;
  v21 = 0;
  v6 = 0x9DDFEA08EB382D69 * ((8 * v19 - 0xAE502812AA7333) ^ DWORD1(v19));
  v7 = 0x9DDFEA08EB382D69 * (DWORD1(v19) ^ (v6 >> 47) ^ v6);
  v8 = v7 ^ (v7 >> 47);
  v9 = 0x9DDFEA08EB382D69 * v8;
  v10 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v11 = __ROR8__(v10 - 0x9DDFEA08EB382D69 * v8, 43) + 0x6C105E72878303FFLL * v8 - 0x4AA9CCC802B940A1;
  v12 = __ROR8__(v9 ^ 0xC949D7C7509E6557, 20);
  v13 = 0x9DDFEA08EB382D69 * ((v10 - 0xAE502812AA7333 + v12 + 24) ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v10 - 0xAE502812AA7333 + v12 + 24))));
  v16[0] = &v18;
  v16[1] = v22;
  v17 = &v18;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v13 >> 47) ^ v13), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v17, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v16);
}

uint64_t mlir::mps::getBufferTensorAttr(uint64_t a1, const void *a2, const void *a3)
{
  v8[6] = *MEMORY[0x277D85DE8];
  v5[1] = a3;
  v6 = a1;
  v5[0] = a2;
  mlir::mps::getBufferTensorAttrs(&v6, 1uLL, v5, 1, &v7);
  v3 = *v7;
  if (v7 != v8)
  {
    free(v7);
  }

  return v3;
}

void mlir::mps::getBufferTensorAttrs(mlir::Type *a1@<X0>, unint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69[10] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = a1;
    Context = mlir::Type::getContext(a1);
    v67 = v69;
    v68 = 0xA00000000;
    if (a2 > 0xA)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v64 = v66;
    v65 = 0xA00000000;
    v9 = 0;
    v10 = 0;
    v11 = 8 * a2;
    v12 = v8;
    do
    {
      v59 = *v12;
      ElementType = mlir::RankedTensorType::getElementType(&v59);
      TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(ElementType);
      if (v9 <= TypeAlignmentSize)
      {
        v9 = TypeAlignmentSize;
      }

      if (v68 >= HIDWORD(v68))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v15 = (v10 + TypeAlignmentSize - 1) / TypeAlignmentSize * TypeAlignmentSize;
      v67[v68] = v15;
      LODWORD(v68) = v68 + 1;
      if (v65 >= HIDWORD(v65))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v16 = (v64 + 16 * v65);
      *v16 = v10;
      v16[1] = v15;
      LODWORD(v65) = v65 + 1;
      v17 = mlir::TensorType::operator mlir::ShapedType(&v59);
      v10 = (mlir::mps::getElementsAttrStorageSize(v17, v18) + v15);
      v12 = (v12 + 8);
      v11 -= 8;
    }

    while (v11);
    mlir::mps::createBlobHandle(Context, v10, v9, &v54);
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
    if (a2 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (a4 && v68)
    {
      v19 = v67;
      v20 = 8 * v68 - 8;
      v21 = 16 * a4 - 16;
      v22 = 8 * a2 - 8;
      do
      {
        v23 = *v8;
        v52 = v54;
        v53 = v55;
        v24 = *v19;
        AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
        v56[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
        v56[1] = Context;
        v63[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
        v63[1] = v56;
        v60 = v52;
        v61 = v53;
        v59 = v23;
        v62 = v24;
        v26 = 0x9DDFEA08EB382D69 * ((8 * v60 - 0xAE502812AA7333) ^ DWORD1(v60));
        v27 = 0x9DDFEA08EB382D69 * (DWORD1(v52) ^ (v26 >> 47) ^ v26);
        v28 = v27 ^ (v27 >> 47);
        v29 = 0x9DDFEA08EB382D69 * v28;
        v30 = 0xB492B66FBE98F273 * ((v23 >> 4) ^ (v23 >> 9));
        v31 = __ROR8__((0x9AE16A3B2F90404FLL * v24) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v28 + __ROR8__(v30 - 0x9DDFEA08EB382D69 * v28, 43);
        v32 = v30 - 0x9AE16A3B2F90404FLL * v24 - 0xAE502812AA7333 + __ROR8__(v29 ^ 0xC949D7C7509E6557, 20) + 24;
        v33 = 0x9DDFEA08EB382D69 * (v32 ^ ((0x9DDFEA08EB382D69 * (v31 ^ v32)) >> 47) ^ (0x9DDFEA08EB382D69 * (v31 ^ v32)));
        v57[0] = &v59;
        v57[1] = v63;
        v58 = &v59;
        ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v33 >> 47) ^ v33), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v58, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v57);
        v35 = *(a5 + 8);
        if (v35 >= *(a5 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a5 + 8 * v35) = ParametricStorageTypeImpl;
        v36 = *(a5 + 8) + 1;
        *(a5 + 8) = v36;
        v37 = *(*a5 + 8 * v36 - 8);
        v38 = *(v37[2] + 16);
        v39 = v37[5];
        v59 = v37[1];
        v40 = mlir::TensorType::operator mlir::ShapedType(&v59);
        ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v40, v41);
        v43 = *a3;
        a3 += 2;
        memcpy((v38 + v39), v43, ElementsAttrStorageSize);
        if (!v22)
        {
          break;
        }

        if (!v21)
        {
          break;
        }

        v8 = (v8 + 8);
        ++v19;
        v44 = v20;
        v20 -= 8;
        v21 -= 16;
        v22 -= 8;
      }

      while (v44);
    }

    v45 = v64;
    if (v65)
    {
      v46 = v54;
      v47 = v64 + 16 * v65;
      do
      {
        v48 = *v45;
        v49 = *(v45 + 1);
        v45 += 16;
        memset((*(v46 + 16) + v48), 255, v49 - v48);
      }

      while (v45 != v47);
      v45 = v64;
    }

    if (v45 != v66)
    {
      free(v45);
    }

    if (v67 != v69)
    {
      free(v67);
    }
  }

  else
  {
    *a5 = a5 + 16;
    *(a5 + 8) = 0x600000000;
  }
}

uint64_t mlir::mps::MPSBufferTensorAttr::get(mlir::MLIRContext *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v18[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
  v18[1] = a1;
  v25[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
  v25[1] = v18;
  v21 = a2;
  v22 = *a3;
  v23 = *(a3 + 2);
  v24 = a4;
  v9 = 0x9DDFEA08EB382D69 * ((8 * v22 - 0xAE502812AA7333) ^ DWORD1(v22));
  v10 = 0x9DDFEA08EB382D69 * (DWORD1(v22) ^ (v9 >> 47) ^ v9);
  v11 = v10 ^ (v10 >> 47);
  v12 = 0x9DDFEA08EB382D69 * v11;
  v13 = 0xB492B66FBE98F273 * ((a2 >> 4) ^ (a2 >> 9));
  v14 = __ROR8__((0x9AE16A3B2F90404FLL * a4) ^ 0xFF51AFD7ED558CCDLL, 30) + 0x6C105E72878303FFLL * v11 + __ROR8__(v13 - 0x9DDFEA08EB382D69 * v11, 43);
  v15 = v13 - 0x9AE16A3B2F90404FLL * a4 - 0xAE502812AA7333 + __ROR8__(v12 ^ 0xC949D7C7509E6557, 20) + 24;
  v16 = 0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v14 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v14 ^ v15)));
  v19[0] = &v21;
  v19[1] = v25;
  v20 = &v21;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v16 >> 47) ^ v16), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v20, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v19);
}

uint64_t mlir::mps::MPSBufferTensorAttr::getMutableRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v1 + v2;
}

uint64_t mlir::mps::getBufferTensorAttrWithKey(void *a1, const void *a2, uint64_t a3, unsigned int *a4, const unsigned __int8 *a5)
{
  v78 = *MEMORY[0x277D85DE8];
  v56 = a1;
  Context = mlir::Type::getContext(&v56);
  Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v9);
  v11 = mlir::TensorType::operator mlir::ShapedType(&v56);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v11, v12);
  ElementType = mlir::RankedTensorType::getElementType(&v56);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(ElementType);
  v16 = mlir::mps::MPSResourceBlobManagerInterface::lookup(Manager, a4, a5);
  if (v16)
  {
    v17 = v16;
    v18 = *(Manager + 1);
    {
      mlir::mps::getBufferTensorAttrWithKey();
    }

    v19 = mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id;
    v20 = v56;
    AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
    *&v52 = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    *(&v52 + 1) = Context;
    v60 = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
    *&v61 = &v52;
    *&v72 = v20;
    *(&v72 + 1) = v17;
    v73 = v19;
    v74 = v18;
    v22 = 0x9DDFEA08EB382D69 * ((8 * v17 - 0xAE502812AA7333) ^ HIDWORD(v17));
    v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v17) ^ (v22 >> 47) ^ v22);
    v24 = v23 ^ (v23 >> 47);
    v25 = 0x9DDFEA08EB382D69 * v24;
    v26 = 0x6C105E72878303FFLL * v24 - 0x4AA9CCC802B940A1 + __ROR8__(0xB492B66FBE98F273 * ((v20 >> 4) ^ (v20 >> 9)) - 0x9DDFEA08EB382D69 * v24, 43);
    v27 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * ((v20 >> 4) ^ (v20 >> 9)) + __ROR8__(v25 ^ 0xC949D7C7509E6557, 20) + 24;
    v28 = 0x9DDFEA08EB382D69 * (v27 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v27)));
    v64[0] = &v72;
    *&v54 = &v72;
    *(&v54 + 1) = &v60;
    return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v28 >> 47) ^ v28), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v64, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v54);
  }

  else
  {
    mlir::mps::MPSResourceBlobManagerInterface::allocateBufferTensorBlob(Manager, ElementsAttrStorageSize, TypeAlignmentSize, &v72);
    v65 = v72;
    v66 = v73;
    v69 = v76;
    if (v76 >= 8)
    {
      if ((v76 & 2) != 0 && (v76 & 4) != 0)
      {
        (*((v76 & 0xFFFFFFFFFFFFFFF8) + 8))(&v67, &v74);
        (*((v69 & 0xFFFFFFFFFFFFFFF8) + 16))(&v74);
      }

      else
      {
        v67 = v74;
        v68 = v75;
      }

      v76 = 0;
    }

    v70 = v77;
    v71 = 1;
    mlir::mps::MPSResourceBlobManagerInterface::insert(Manager, a4, a5, &v65, &v54);
    if (v71 == 1 && v69 >= 8)
    {
      v30 = (v69 & 2) != 0 ? &v67 : v67;
      (*(v69 & 0xFFFFFFFFFFFFFFF8))(v30, v65, *(&v65 + 1), v66);
      v31 = v69;
      if (v69 >= 8)
      {
        if ((v69 & 4) != 0)
        {
          if ((v69 & 2) != 0)
          {
            v32 = &v67;
          }

          else
          {
            v32 = v67;
          }

          (*((v69 & 0xFFFFFFFFFFFFFFF8) + 16))(v32);
        }

        if ((v31 & 2) == 0)
        {
          llvm::deallocate_buffer(v67, *(&v67 + 1));
        }
      }
    }

    v33 = v56;
    v52 = v54;
    v53 = v55;
    v34 = mlir::MLIRContext::getAttributeUniquer(Context);
    v57[0] = &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    v57[1] = Context;
    v64[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail26MPSBufferTensorAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_19MPSBufferTensorAttrEJNS1_16RankedTensorTypeENS2_28MPSDialectResourceBlobHandleEyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS5_;
    v64[1] = v57;
    v60 = v33;
    v61 = v52;
    v62 = v53;
    v63 = 0;
    v35 = 0x9DDFEA08EB382D69 * ((8 * v52 - 0xAE502812AA7333) ^ DWORD1(v52));
    v36 = 0x9DDFEA08EB382D69 * (DWORD1(v52) ^ (v35 >> 47) ^ v35);
    v37 = v36 ^ (v36 >> 47);
    v38 = 0x9DDFEA08EB382D69 * v37;
    v39 = 0x6C105E72878303FFLL * v37 - 0x4AA9CCC802B940A1 + __ROR8__(0xB492B66FBE98F273 * ((v33 >> 4) ^ (v33 >> 9)) - 0x9DDFEA08EB382D69 * v37, 43);
    v40 = 0xFF51AFD7ED558CCDLL - 0x4B6D499041670D8DLL * ((v33 >> 4) ^ (v33 >> 9)) + __ROR8__(v38 ^ 0xC949D7C7509E6557, 20) + 24;
    v41 = 0x9DDFEA08EB382D69 * (v40 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v40)));
    v58[0] = &v60;
    v58[1] = v64;
    v59 = &v60;
    ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(v34, &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id, -348639895 * ((v41 >> 47) ^ v41), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v59, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::MPSBufferTensorAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::MPSBufferTensorAttrStorage,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long>(llvm::function_ref<void ()(mlir::mps::detail::MPSBufferTensorAttrStorage *)>,mlir::TypeID,mlir::RankedTensorType,mlir::mps::MPSDialectResourceBlobHandle,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v58);
    v43 = *(ParametricStorageTypeImpl[2] + 16);
    v44 = ParametricStorageTypeImpl;
    v45 = ParametricStorageTypeImpl[5];
    v60 = ParametricStorageTypeImpl[1];
    v46 = mlir::TensorType::operator mlir::ShapedType(&v60);
    v48 = mlir::mps::getElementsAttrStorageSize(v46, v47);
    memcpy((v43 + v45), a2, v48);
    if (v76 >= 8)
    {
      v49 = (v76 & 2) != 0 ? &v74 : v74;
      (*(v76 & 0xFFFFFFFFFFFFFFF8))(v49, v72, *(&v72 + 1), v73);
      v50 = v76;
      if (v76 >= 8)
      {
        if ((v76 & 4) != 0)
        {
          if ((v76 & 2) != 0)
          {
            v51 = &v74;
          }

          else
          {
            v51 = v74;
          }

          (*((v76 & 0xFFFFFFFFFFFFFFF8) + 16))(v51);
        }

        if ((v50 & 2) == 0)
        {
          llvm::deallocate_buffer(v74, *(&v74 + 1));
        }
      }
    }

    return v44;
  }
}

llvm::raw_ostream *mlir::mps::operator<<(llvm::raw_ostream *a1, unsigned int *a2)
{
  v3 = llvm::raw_ostream::operator<<(a1, a2[2]);
  v4 = *(v3 + 4);
  if (*(v3 + 3) == v4)
  {
    v9 = llvm::raw_ostream::write(v3, ".", 1uLL);
    v5 = llvm::raw_ostream::operator<<(v9, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
LABEL_3:
      *v6 = 46;
      ++*(v5 + 4);
      v7 = a2[4];

      return llvm::raw_ostream::operator<<(v5, v7);
    }
  }

  else
  {
    *v4 = 46;
    ++*(v3 + 4);
    v5 = llvm::raw_ostream::operator<<(v3, a2[3]);
    v6 = *(v5 + 4);
    if (*(v5 + 3) != v6)
    {
      goto LABEL_3;
    }
  }

  v5 = llvm::raw_ostream::write(v5, ".", 1uLL);
  v7 = a2[4];

  return llvm::raw_ostream::operator<<(v5, v7);
}

void mlir::mps::MPSDialect::convertUnregisteredOperation(mlir::OpBuilder *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v30[0] = *(*(a3 + 48) + 8);
  Value = mlir::StringAttr::getValue(v30);
  if (v9 && (v9 >= 0x17 ? (v10 = 23) : (v10 = v9), (v11 = v9, v12 = memcmp(Value, "mps.reverse_square_root", v10), v11 == 23) && !v12))
  {
    v13 = *(a2 + 8);
    if (v13 && (v13 != 1 || *(a2 + 12) >= 2u))
    {
      v28 = "incorrect version of the operation";
      v29 = 259;
      mlir::Operation::emitError(v30, a3, &v28);
      *a4 = 0;
      *(a4 + 16) = 0;
      if (v30[0])
      {
        mlir::InFlightDiagnostic::report(v30);
      }

      if (v38 == 1)
      {
        if (v37 != &v38)
        {
          free(v37);
        }

        v20 = __p;
        if (__p)
        {
          v21 = v36;
          v22 = __p;
          if (v36 != __p)
          {
            do
            {
              v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
            }

            while (v21 != v20);
            v22 = __p;
          }

          v36 = v20;
          operator delete(v22);
        }

        v23 = v33;
        if (v33)
        {
          v24 = v34;
          v25 = v33;
          if (v34 != v33)
          {
            do
            {
              v27 = *--v24;
              v26 = v27;
              *v24 = 0;
              if (v27)
              {
                MEMORY[0x259C63150](v26, 0x1000C8077774924);
              }
            }

            while (v24 != v23);
            v25 = v33;
          }

          v34 = v23;
          operator delete(v25);
        }

        if (v31 != &v32)
        {
          free(v31);
        }
      }
    }

    else if ((*(a3 + 46) & 0x80) != 0 && *(a3 + 68) == 1)
    {
      v14 = *(a3 + 24);
      v30[0] = *(*(a3 + 72) + 24);
      v15 = mlir::OpBuilder::create<mlir::mps::ReciprocalSquareRootOp,mlir::Value>(a1, v14, v30);
      v30[0] = mlir::Operation::getAttrDictionary(a3);
      v16 = mlir::DictionaryAttr::getValue(v30);
      mlir::Operation::setAttrs(v15, v16, v17);
      v18 = *(v15 + 36);
      v19 = v15 - 16;
      if (!v18)
      {
        v19 = 0;
      }

      *a4 = v19;
      *(a4 + 8) = v18;
      *(a4 + 16) = 1;
    }

    else
    {
      mlir::mps::MPSDialect::convertUnregisteredOperation(a3, a4);
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 16) = 0;
  }
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseUnaryComparisonOpReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a2;
  v16[1] = a3;
  v15 = a1;
  IntegerType = mlir::Builder::getIntegerType(&v15, 1);
  v7 = mlir::UnrankedTensorType::get(IntegerType);
  if (a3 == 1)
  {
    v8 = *(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && v9 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v8 = 0;
    }

    v14 = v8;
    if (v8)
    {
      v13[0] = 0;
      v13[16] = 0;
      v7 = mlir::TensorType::cloneWith(&v14, v13, IntegerType);
    }
  }

  v11 = *(a4 + 8);
  if (v11 >= *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a4 + 8 * v11) = v7;
  ++*(a4 + 8);
  return 1;
}

uint64_t mlir::mps::IsFiniteOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::IsInfiniteOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::IsNaNOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryMathOpReturnTypes(mlir::Float32Type *a1, mlir::MLIRContext *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v20[0] = a2;
  v20[1] = a3;
  if (a3 != 2)
  {
LABEL_8:
    v11 = mlir::Float32Type::get(a1, a2);
    v12 = mlir::UnrankedTensorType::get(v11);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v5 = a1;
  v6 = mlir::ValueRange::dereference_iterator(v20, 0);
  v7 = mlir::ValueRange::dereference_iterator(v20, 1);
  v19[0] = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v6 + 8) & 0xFFFFFFFFFFFFFFF8));
  v19[1] = v8;
  v9 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(v7 + 8) & 0xFFFFFFFFFFFFFFF8));
  v18[0] = v9;
  v18[1] = a2;
  if (v19[0])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    a1 = v5;
    goto LABEL_8;
  }

  hasRank = mlir::ShapedType::hasRank(v19);
  if (!hasRank || (mlir::ShapedType::hasRank(v18) & 1) == 0)
  {
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v19[0]);
    v12 = mlir::UnrankedTensorType::get(ElementTypeOrSelf);
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
LABEL_17:
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

LABEL_9:
    *(*a4 + 8 * v13) = v12;
    ++*(a4 + 8);
    return 1;
  }

  BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v19[0], v18[0], 0);
  if (!BroadcastedType)
  {
  }

  llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a4, BroadcastedType);
  return 1;
}

uint64_t mlir::mps::AddOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::AndOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ATan2Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::DivideOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::MaximumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::MinimumOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ModuloOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::MultiplyOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::NandOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::NorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::OrOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::PowerOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SubtractOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::XorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::XnorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::FloorDivideOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LeakyReluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::EluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseAndOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseOrOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseXorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseLeftShiftOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseRightShiftOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::AbsoluteOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::AbsoluteSquareOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ACosOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ACoshOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ASinOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ASinhOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ATanOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ATanhOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwiseNotOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::BitwisePopcountOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::CeilOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::CosOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::CoshOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::CreateTextureTensorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::DegammaOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::DiracOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ErfOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ExponentOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ExponentBase2Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ExponentBase10Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::FloorOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::GeluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::IdentityOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::NegativeOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::NotOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LogarithmOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LogarithmBase2Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LogarithmBase10Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ReciprocalOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ReciprocalSquareRootOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ReluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ReluGradOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::Relu6Op::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::RintOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::RoundOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SignOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SignbitOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SigmoidOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SigmoidGradientOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SigmoidGradientWithSigmoidOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SinOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SinhOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SoftplusOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SoftsignOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SquareOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SquareRootOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SwishOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::TanOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::TanhOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::TruncateOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ReadVariableOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseBinaryComparisonOpReturnTypes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v23[0] = a3;
  v23[1] = a4;
  if (a4 == 2)
  {
    v21 = (*(mlir::ValueRange::dereference_iterator(v23, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v20 = (*(mlir::ValueRange::dereference_iterator(v23, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v21, v20, 0);
    v19 = BroadcastedType;
    if (BroadcastedType)
    {
      v9 = BroadcastedType;
      Context = mlir::Type::getContext(&v21);
      v11 = mlir::IntegerType::get(Context, 1, 0);
      v12 = *(*v9 + 136);
      if (v12 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
      {
        v16 = mlir::UnrankedTensorType::get(v11);
        if (!v16)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, a2, "unexpected type ", &v19);
        }
      }

      else
      {
        if (v12 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, a2, "unexpected type ", &v19);
        }

        v22 = v9;
        v13 = v11;
        Shape = mlir::RankedTensorType::getShape(&v22);
        v16 = mlir::RankedTensorType::get(Shape, v15, v13, 0);
        if (!v16)
        {
          return mlir::emitOptionalError<char const(&)[17],mlir::Type>(a1, a2, "unexpected type ", &v19);
        }
      }

      v18 = *(a5 + 8);
      if (v18 >= *(a5 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a5 + 8 * v18) = v16;
      ++*(a5 + 8);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, a2, "input types ", &v21, " and ", &v20, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "invalid number of operands");
  }
}

uint64_t mlir::mps::EqualToOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::GreaterThanOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::GreaterThanOrEqualToOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LessThanOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::LessThanOrEqualToOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::NotEqualToOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

void mlir::mps::UnrealizedFoldOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void mlir::mps::CallOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void mlir::mps::StridedSliceUpdateOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void mlir::mps::VariableFromTensorOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void mlir::mps::AssignVariableOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void mlir::mps::ReadVariableOp::downgradeToVersion(mlir::Operation **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v23[0] = &unk_28685B550;
  v23[1] = 0x100000001;
  v24 = 0;
  v5 = *(a2 + 8);
  if (v5 && (v5 != 1 || *(a2 + 12)))
  {
    v6 = *(v4 + 9);
    v7 = v4 - 16;
    if (!v6)
    {
      v7 = 0;
    }

    *a3 = v7;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
  }

  else
  {
    v16[0] = "failed to downgrade: requested target version is {0}, but the op was first defined in version {1}";
    v16[1] = 97;
    v16[2] = v20;
    v16[3] = 2;
    v17 = 1;
    v18[0] = &unk_28685E490;
    v18[1] = a2;
    v19[0] = &unk_28685E4C0;
    v19[1] = v23;
    v20[0] = v18;
    v20[1] = v19;
    v22 = 263;
    v21 = v16;
    mlir::OpState::emitOpError(a1, &v21, v25);
    *a3 = 0;
    *(a3 + 16) = 0;
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (v28)
      {
        v12 = v29;
        v13 = v28;
        if (v29 != v28)
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
          v13 = v28;
        }

        v29 = v11;
        operator delete(v13);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }
}

void *mlir::mps::ReciprocalSquareRootOp::downgradeToVersion@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = *result;
  v7 = *(a3 + 8);
  if (!v7 || v7 == 1 && *(a3 + 12) <= 1u)
  {
    v8 = v6[3];
    Context = mlir::Attribute::getContext((v6 + 3));
    v26 = 261;
    v25[0] = "mps.reverse_square_root";
    v25[1] = 23;
    v11 = mlir::StringAttr::get(Context, v25, v10);
    if ((*(v6 + 46) & 0x80) != 0)
    {
      v12 = v6[9];
      v13 = *(v6 + 17);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    mlir::ValueRange::ValueRange(v31, v12, v13);
    v14 = *(v6 + 9);
    v15 = (v6 - 2);
    if (!v14)
    {
      v15 = 0;
    }

    v32 = v15;
    v33 = v14;
    mlir::ResultRange::getTypes(&v32, &AttrDictionary);
    NextResultAtOffset = AttrDictionary;
    v17 = v28;
    v18 = v29;
    if (v28)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v28);
    }

    mlir::ValueRange::ValueRange(&v32, NextResultAtOffset, v18 - v17);
    mlir::TypeRange::TypeRange(v30, v32, v33);
    AttrDictionary = mlir::Operation::getAttrDictionary(v6);
    Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
    v21 = v20;
    mlir::SuccessorRange::SuccessorRange(&AttrDictionary, v6);
    mlir::BlockRange::BlockRange(&AttrDictionary, AttrDictionary, v28);
    result = mlir::OpBuilder::create(a2, v8, v11, v31[0], v31[1], v30[0], v30[1], v22, Value, v21, AttrDictionary, v28, 0, 0);
    v6 = result;
  }

  v23 = *(v6 + 9);
  v24 = v6 - 2;
  if (!v23)
  {
    v24 = 0;
  }

  *a4 = v24;
  *(a4 + 8) = v23;
  *(a4 + 16) = 1;
  return result;
}

uint64_t mlir::mps::anonymous namespace::inferElementWiseTernaryMathOpReturnTypes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = a3;
  v16[1] = a4;
  if (a4 == 3)
  {
    v15 = (*(mlir::ValueRange::dereference_iterator(v16, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v14 = (*(mlir::ValueRange::dereference_iterator(v16, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v8 = (*(mlir::ValueRange::dereference_iterator(v16, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    v13 = v8;
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v15, v14, 0);
    if (BroadcastedType)
    {
      v10 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v8, 0);
      if (v10)
      {
        v11 = *(a5 + 8);
        if (v11 >= *(a5 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*a5 + 8 * v11) = v10;
        ++*(a5 + 8);
        return 1;
      }

      else
      {
        return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a1, a2, "input types ", &v15, " , ", &v14, " and ", &v13, " are not broadcast compatible");
      }
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(a1, a2, "input types ", &v15, " and ", &v14, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "invalid number of operands");
  }
}

uint64_t mlir::mps::NReluOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::ClampOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SigmoidHardOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::mps::SelectOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = a4;
  v22[1] = a5;
  if (a5 == 3)
  {
    v13 = (*(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v21 = v13;
    v20 = (*(mlir::ValueRange::dereference_iterator(v22, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = (*(mlir::ValueRange::dereference_iterator(v22, 2) + 8) & 0xFFFFFFFFFFFFFFF8);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v20);
    BroadcastedType = mlir::OpTrait::util::getBroadcastedType(v20, v19, ElementTypeOrSelf);
    if (BroadcastedType && (v16 = mlir::OpTrait::util::getBroadcastedType(BroadcastedType, v13, ElementTypeOrSelf)) != 0)
    {
      v17 = *(a11 + 8);
      if (v17 >= *(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a11 + 8 * v17) = v16;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
      return mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(a2, a3, "input types ", &v21, ", ", &v20, ", and ", &v19, " are not broadcast compatible");
    }
  }

  else
  {

    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "invalid number of operands");
  }
}

BOOL mlir::emitOptionalError<char const(&)[13],mlir::Type &,char const(&)[3],mlir::Type &,char const(&)[7],mlir::Type &,char const(&)[30]>(uint64_t a1, char a2, char *a3, uint64_t *a4, char *a5, uint64_t *a6, char *a7, uint64_t *a8, const char *a9)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  mlir::emitError(a1, &v25);
  if (v25)
  {
    mlir::Diagnostic::append<char const(&)[13],mlir::Type &,char const(&)[4],mlir::Type &,char const(&)[6],mlir::Type &,char const(&)[30]>(&v26, a3, a4, a5, a6, a7, a8, a9);
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v25);
  if (v25)
  {
    mlir::InFlightDiagnostic::report(&v25);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v32;
      v18 = __p;
      if (v32 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v32 = v16;
      operator delete(v18);
    }

    v19 = v29;
    if (v29)
    {
      v20 = v30;
      v21 = v29;
      if (v30 != v29)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v29;
      }

      v30 = v19;
      operator delete(v21);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  return v15;
}

uint64_t mlir::mps::SelectOp::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28687EE30;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_28687EE30;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::mps::SelectOp::verify(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(*this + 9);
  v3 = *(v2[3] + 8);
  v4 = *(v2[7] + 8);
  v5 = *(v2[11] + 8);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf((v4 & 0xFFFFFFFFFFFFFFF8));
  v42 = mlir::getElementTypeOrSelf((v3 & 0xFFFFFFFFFFFFFFF8));
  if (v42 == ElementTypeOrSelf || mlir::Type::isInteger(&v42, 1))
  {
    if (mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v4 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v3 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf) && mlir::OpTrait::util::getBroadcastedType((v4 & 0xFFFFFFFFFFFFFFF8), (v5 & 0xFFFFFFFFFFFFFFF8), ElementTypeOrSelf))
    {
      return 1;
    }

    v40[0] = "input types ";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v45);
    if (v45[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v3 & 0xFFFFFFFFFFFFFFF8);
      if (v47 >= v48)
      {
        if (v46 > &v43 || v46 + 24 * v47 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v46 + 24 * v47;
      v9 = v43;
      *(v8 + 2) = v44;
      *v8 = v9;
      v10 = ++v47;
      if (v45[0])
      {
        LODWORD(v43) = 3;
        *(&v43 + 1) = ", ";
        v44 = 2;
        if (v10 >= v48)
        {
          if (v46 > &v43 || v46 + 24 * v10 <= &v43)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v46 + 24 * v47;
        v12 = v43;
        *(v11 + 2) = v44;
        *v11 = v12;
        ++v47;
        if (v45[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v43, v4 & 0xFFFFFFFFFFFFFFF8);
          if (v47 >= v48)
          {
            if (v46 > &v43 || v46 + 24 * v47 <= &v43)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v46 + 24 * v47;
          v14 = v43;
          *(v13 + 2) = v44;
          *v13 = v14;
          v15 = ++v47;
          if (v45[0])
          {
            LODWORD(v43) = 3;
            *(&v43 + 1) = ", and ";
            v44 = 6;
            if (v15 >= v48)
            {
              if (v46 > &v43 || v46 + 24 * v15 <= &v43)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v16 = v46 + 24 * v47;
            v17 = v43;
            *(v16 + 2) = v44;
            *v16 = v17;
            ++v47;
            if (v45[0])
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v43, v5 & 0xFFFFFFFFFFFFFFF8);
              if (v47 >= v48)
              {
                if (v46 > &v43 || v46 + 24 * v47 <= &v43)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v18 = v46 + 24 * v47;
              v19 = v43;
              *(v18 + 2) = v44;
              *v18 = v19;
              v20 = ++v47;
              if (v45[0])
              {
                LODWORD(v43) = 3;
                *(&v43 + 1) = " are not broadcast compatible";
                v44 = 29;
                if (v20 >= v48)
                {
                  if (v46 > &v43 || v46 + 24 * v20 <= &v43)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v21 = v46 + 24 * v47;
                v22 = v43;
                *(v21 + 2) = v44;
                *v21 = v22;
                ++v47;
              }
            }
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v53;
        v25 = __p;
        if (v53 != __p)
        {
          do
          {
            v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v53 = v23;
        operator delete(v25);
      }

      v26 = v50;
      if (!v50)
      {
        goto LABEL_57;
      }

      v27 = v51;
      v28 = v50;
      if (v51 == v50)
      {
LABEL_56:
        v51 = v26;
        operator delete(v28);
LABEL_57:
        if (v46 != &v49)
        {
          free(v46);
        }

        return v7;
      }

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
LABEL_55:
      v28 = v50;
      goto LABEL_56;
    }
  }

  else
  {
    v40[0] = "condition operand must be a 1-bit integer tensor or match the value element type, but got ";
    v41 = 259;
    mlir::OpState::emitOpError(this, v40, v45);
    if (v45[0])
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v43, v3 & 0xFFFFFFFFFFFFFFF8);
      if (v47 >= v48)
      {
        if (v46 > &v43 || v46 + 24 * v47 <= &v43)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v31 = v46 + 24 * v47;
      v32 = v43;
      *(v31 + 2) = v44;
      *v31 = v32;
      ++v47;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v45);
    if (v45[0])
    {
      mlir::InFlightDiagnostic::report(v45);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v53;
        v35 = __p;
        if (v53 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v53 = v33;
        operator delete(v35);
      }

      v26 = v50;
      if (!v50)
      {
        goto LABEL_57;
      }

      v36 = v51;
      v28 = v50;
      if (v51 == v50)
      {
        goto LABEL_56;
      }

      do
      {
        v38 = *--v36;
        v37 = v38;
        *v36 = 0;
        if (v38)
        {
          MEMORY[0x259C63150](v37, 0x1000C8077774924);
        }
      }

      while (v36 != v26);
      goto LABEL_55;
    }
  }

  return v7;
}

uint64_t mlir::mps::anonymous namespace::verifyTensorBufferAttr(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v86 = *MEMORY[0x277D85DE8];
  v72 = a3;
  if ((*(a4 + 96) & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      a1(v75, a2);
      if (v75[0])
      {
        LODWORD(v73) = 3;
        *(&v73 + 1) = "MPSBufferTensor blob entry is undefined";
        v74 = 39;
        if (v77 >= v78)
        {
          if (v76 > &v73 || v76 + 24 * v77 <= &v73)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v49 = v76 + 24 * v77;
        v50 = v73;
        *(v49 + 2) = v74;
        *v49 = v50;
        ++v77;
      }

      v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
      if (v75[0])
      {
        mlir::InFlightDiagnostic::report(v75);
      }

      if (v85 == 1)
      {
        if (v84 != &v85)
        {
          free(v84);
        }

        v51 = __p;
        if (__p)
        {
          v52 = v83;
          v53 = __p;
          if (v83 != __p)
          {
            do
            {
              v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
            }

            while (v52 != v51);
            v53 = __p;
          }

          v83 = v51;
          operator delete(v53);
        }

        v36 = v80;
        if (!v80)
        {
          goto LABEL_97;
        }

        v54 = v81;
        v38 = v80;
        if (v81 == v80)
        {
          goto LABEL_96;
        }

        do
        {
          v56 = *--v54;
          v55 = v56;
          *v54 = 0;
          if (v56)
          {
            MEMORY[0x259C63150](v55, 0x1000C8077774924);
          }
        }

        while (v54 != v36);
        goto LABEL_95;
      }

      return v32;
    }

    return 1;
  }

  if ((*(a4 + 80) & 1) == 0)
  {
    a1(v75, a2);
    if (v75[0])
    {
      LODWORD(v73) = 3;
      *(&v73 + 1) = "MPSBufferTensor blob entry memory was released while still in use";
      v74 = 65;
      if (v77 >= v78)
      {
        if (v76 > &v73 || v76 + 24 * v77 <= &v73)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v76 + 24 * v77;
      v42 = v73;
      *(v41 + 2) = v74;
      *v41 = v42;
      ++v77;
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v43 = __p;
      if (__p)
      {
        v44 = v83;
        v45 = __p;
        if (v83 != __p)
        {
          do
          {
            v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
          }

          while (v44 != v43);
          v45 = __p;
        }

        v83 = v43;
        operator delete(v45);
      }

      v36 = v80;
      if (!v80)
      {
        goto LABEL_97;
      }

      v46 = v81;
      v38 = v80;
      if (v81 == v80)
      {
        goto LABEL_96;
      }

      do
      {
        v48 = *--v46;
        v47 = v48;
        *v46 = 0;
        if (v48)
        {
          MEMORY[0x259C63150](v47, 0x1000C8077774924);
        }
      }

      while (v46 != v36);
      goto LABEL_95;
    }

    return v32;
  }

  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  ElementType = mlir::RankedTensorType::getElementType(&v72);
  TypeAlignmentSize = mlir::mps::getTypeAlignmentSize(ElementType);
  v13 = mlir::TensorType::operator mlir::ShapedType(&v72);
  ElementsAttrStorageSize = mlir::mps::getElementsAttrStorageSize(v13, v14);
  v16 = a5;
  v17 = ElementsAttrStorageSize + a5;
  if (v17 > v8)
  {
    a1(v75, a2);
    if (v75[0])
    {
      LODWORD(v73) = 3;
      *(&v73 + 1) = "MPSBufferTensor blob is of size ";
      v74 = 32;
      if (v77 >= v78)
      {
        if (v76 > &v73 || v76 + 24 * v77 <= &v73)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v18 = v76 + 24 * v77;
      v19 = v73;
      *(v18 + 2) = v74;
      *v18 = v19;
      v20 = ++v77;
      if (v75[0])
      {
        LODWORD(v73) = 5;
        *(&v73 + 1) = v8;
        if (v20 >= v78)
        {
          if (v76 > &v73 || v76 + 24 * v20 <= &v73)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v21 = v76 + 24 * v77;
        v22 = v73;
        *(v21 + 2) = v74;
        *v21 = v22;
        v23 = ++v77;
        if (v75[0])
        {
          LODWORD(v73) = 3;
          *(&v73 + 1) = " bytes, expected it to be at least ";
          v74 = 35;
          if (v23 >= v78)
          {
            if (v76 > &v73 || v76 + 24 * v23 <= &v73)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v24 = v76 + 24 * v77;
          v25 = v73;
          *(v24 + 2) = v74;
          *v24 = v25;
          v26 = ++v77;
          if (v75[0])
          {
            LODWORD(v73) = 5;
            *(&v73 + 1) = v17;
            if (v26 >= v78)
            {
              if (v76 > &v73 || v76 + 24 * v26 <= &v73)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v27 = v76 + 24 * v77;
            v28 = v73;
            *(v27 + 2) = v74;
            *v27 = v28;
            v29 = ++v77;
            if (v75[0])
            {
              LODWORD(v73) = 3;
              *(&v73 + 1) = " bytes";
              v74 = 6;
              if (v29 >= v78)
              {
                if (v76 > &v73 || v76 + 24 * v29 <= &v73)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v30 = v76 + 24 * v77;
              v31 = v73;
              *(v30 + 2) = v74;
              *v30 = v31;
              ++v77;
            }
          }
        }
      }
    }

    v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
    if (v75[0])
    {
      mlir::InFlightDiagnostic::report(v75);
    }

    if (v85 == 1)
    {
      if (v84 != &v85)
      {
        free(v84);
      }

      v33 = __p;
      if (__p)
      {
        v34 = v83;
        v35 = __p;
        if (v83 != __p)
        {
          do
          {
            v34 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v34 - 1);
          }

          while (v34 != v33);
          v35 = __p;
        }

        v83 = v33;
        operator delete(v35);
      }

      v36 = v80;
      if (!v80)
      {
        goto LABEL_97;
      }

      v37 = v81;
      v38 = v80;
      if (v81 == v80)
      {
LABEL_96:
        v81 = v36;
        operator delete(v38);
LABEL_97:
        if (v76 != &v79)
        {
          free(v76);
        }

        return v32;
      }

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
LABEL_95:
      v38 = v80;
      goto LABEL_96;
    }

    return v32;
  }

  if (!((v9 + v16) % TypeAlignmentSize))
  {
    return 1;
  }

  a1(v75, a2);
  if (v75[0])
  {
    LODWORD(v73) = 3;
    *(&v73 + 1) = "MPSBufferTensor blob is not aligned to ";
    v74 = 39;
    if (v77 >= v78)
    {
      if (v76 > &v73 || v76 + 24 * v77 <= &v73)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v57 = v76 + 24 * v77;
    v58 = v73;
    *(v57 + 2) = v74;
    *v57 = v58;
    v59 = ++v77;
    if (v75[0])
    {
      LODWORD(v73) = 5;
      *(&v73 + 1) = TypeAlignmentSize;
      if (v59 >= v78)
      {
        if (v76 > &v73 || v76 + 24 * v59 <= &v73)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v60 = v76 + 24 * v77;
      v61 = v73;
      *(v60 + 2) = v74;
      *v60 = v61;
      v62 = ++v77;
      if (v75[0])
      {
        LODWORD(v73) = 3;
        *(&v73 + 1) = " bytes";
        v74 = 6;
        if (v62 >= v78)
        {
          if (v76 > &v73 || v76 + 24 * v62 <= &v73)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v63 = v76 + 24 * v77;
        v64 = v73;
        *(v63 + 2) = v74;
        *v63 = v64;
        ++v77;
      }
    }
  }

  v32 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v75);
  if (v75[0])
  {
    mlir::InFlightDiagnostic::report(v75);
  }

  if (v85 == 1)
  {
    if (v84 != &v85)
    {
      free(v84);
    }

    v65 = __p;
    if (__p)
    {
      v66 = v83;
      v67 = __p;
      if (v83 != __p)
      {
        do
        {
          v66 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v66 - 1);
        }

        while (v66 != v65);
        v67 = __p;
      }

      v83 = v65;
      operator delete(v67);
    }

    v36 = v80;
    if (!v80)
    {
      goto LABEL_97;
    }

    v68 = v81;
    v38 = v80;
    if (v81 == v80)
    {
      goto LABEL_96;
    }

    do
    {
      v70 = *--v68;
      v69 = v70;
      *v68 = 0;
      if (v70)
      {
        MEMORY[0x259C63150](v69, 0x1000C8077774924);
      }
    }

    while (v68 != v36);
    goto LABEL_95;
  }

  return v32;
}

uint64_t mlir::mps::MPSBufferTensorAttr::getRawData(mlir::mps::MPSBufferTensorAttr *this)
{
  v1 = *(*(*this + 16) + 16);
  v2 = *(*this + 40);
  v6 = *(*this + 8);
  v3 = mlir::TensorType::operator mlir::ShapedType(&v6);
  mlir::mps::getElementsAttrStorageSize(v3, v4);
  return v2 + v1;
}

__n128 mlir::mps::MPSBufferTensorAttr::getHandle@<Q0>(__n128 **this@<X0>, __n128 *a2@<X8>)
{
  v2 = *this;
  result = (*this)[1];
  *a2 = result;
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  return result;
}

uint64_t mlir::mps::ConstantOp::readFromMlirBytecode(uint64_t a1, void *a2)
{
  v12 = 0;
  if (((*(*a1 + 48))(a1, &v12) & 1) == 0)
  {
    return 0;
  }

  v3 = v12;
  if (v12)
  {
    v4 = *(*v12 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    v13 = v6;
    if (v5)
    {
      v7 = v12[2];
      Context = mlir::Attribute::getContext(&v13);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v9);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v7 + 88);
      llvm::sys::RWMutexImpl::unlock((Manager + 48));
    }
  }

  *a2 = v3;
  return 1;
}

uint64_t mlir::mps::ConstantOp::writeToMlirBytecode(uint64_t result, void *a2)
{
  if (*a2)
  {
    return (*(*result + 16))();
  }

  return result;
}

void *mlir::mps::ConstantOp::getAsAttribute(mlir::mps::ConstantOp *this)
{
  Context = mlir::Attribute::getContext((*this + 24));
  result = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (result || (result = mlir::UnitAttr::get(Context, Context)) != 0)
  {
    v4 = *result;
    {
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }
    }

    else
    {
      v14 = result;
      mlir::mps::ConstantOp::getAsAttribute();
      result = v14;
      v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v6 = *(v4 + 8);
      v7 = *(v4 + 16);
      if (!v7)
      {
        return result;
      }
    }

    v8 = v6;
    v9 = v7;
    do
    {
      v10 = v9 >> 1;
      v11 = &v8[2 * (v9 >> 1)];
      v13 = *v11;
      v12 = v11 + 2;
      v9 += ~(v9 >> 1);
      if (v13 < v5)
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
  }

  return result;
}

uint64_t mlir::mps::ConstantOp::setValueAttr(uint64_t result, void *a2)
{
  v2 = *result;
  v3 = *(*result + 44);
  if (a2)
  {
    v4 = *(*a2 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
    if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    v12 = v6;
    if (v5)
    {
      v7 = a2[2];
      v8 = a2;
      Context = mlir::Attribute::getContext(&v12);
      Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v10);
      llvm::sys::RWMutexImpl::lock((Manager + 48));
      ++*(v7 + 88);
      result = llvm::sys::RWMutexImpl::unlock((Manager + 48));
      a2 = v8;
    }
  }

  *(v2 + 16 * ((v3 >> 23) & 1) + 64) = a2;
  return result;
}

void *mlir::mps::ConstantOp::updateValue(mlir::mps::ConstantOp *a1, void *a2)
{
  result = mlir::mps::ConstantOp::getAsAttribute(a1);
  if (result != a2)
  {
    v5 = *a1;
    v6 = *(*a1 + 44);
    if (a2)
    {
      v7 = *(*a2 + 136);
      v8 = v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id;
      if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
      {
        v9 = a2;
      }

      else
      {
        v9 = 0;
      }

      v14 = v9;
      if (v8)
      {
        v10 = a2[2];
        Context = mlir::Attribute::getContext(&v14);
        Manager = mlir::mps::MPSResourceBlobManagerInterface::getManager(Context, v12);
        llvm::sys::RWMutexImpl::lock((Manager + 48));
        ++*(v10 + 88);
        result = llvm::sys::RWMutexImpl::unlock((Manager + 48));
      }
    }

    *(v5 + 16 * ((v6 >> 23) & 1) + 64) = a2;
  }

  return result;
}

BOOL mlir::mps::ConstantOp::verify(mlir::Operation **this)
{
  v114 = *MEMORY[0x277D85DE8];
  Context = mlir::Attribute::getContext((*this + 24));
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v3 = mlir::UnitAttr::get(Context, Context);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  v4 = *v3;
  {
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 1);
    v7 = *(v4 + 4);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v14 = v3;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v14;
    v5 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v6 = *(v4 + 1);
    v7 = *(v4 + 4);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 == &v6[2 * v7] || *v8 != v5 || !v8[1])
  {
LABEL_15:
    v95[0] = "failed: property must contain a valid ElementsAttr";
    v96 = 259;
    mlir::OpState::emitOpError(this, v95, &v102);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v113 == 1)
    {
      if (v112 != &v113)
      {
        free(v112);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v111;
        v18 = __p;
        if (v111 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v111 = v16;
        operator delete(v18);
      }

      v19 = v108;
      if (!v108)
      {
        goto LABEL_138;
      }

      v20 = v109;
      v21 = v108;
      if (v109 == v108)
      {
        goto LABEL_137;
      }

      do
      {
        v23 = *--v20;
        v22 = v23;
        *v20 = 0;
        if (v23)
        {
          MEMORY[0x259C63150](v22, 0x1000C8077774924);
        }
      }

      while (v20 != v19);
      goto LABEL_136;
    }

    return v15;
  }

  v24 = *v3;
  {
    v34 = v3;
    mlir::mps::ConstantOp::getAsAttribute();
    v3 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
    v26 = *(v24 + 1);
    v27 = *(v24 + 4);
    if (v27)
    {
      goto LABEL_34;
    }

LABEL_44:
    v35 = 0;
    goto LABEL_46;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
  v26 = *(v24 + 1);
  v27 = *(v24 + 4);
  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_34:
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
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_44;
  }

  v35 = v28[1];
LABEL_46:
  v36 = v3;
  v102 = v3;
  v103 = v35;
  Type = mlir::ElementsAttr::getType(&v102);
  v38 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(Type);
  v94[0] = v38;
  v94[1] = v39;
  if (v38)
  {
    if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
    {
      v102 = this;
      v15 = 0;
      if ((v40 & 1) == 0)
      {
        return v15;
      }
    }

    if (*(*this + 9))
    {
      v41 = *this - 16;
    }

    else
    {
      v41 = 0;
    }

    v42 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v41, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v42)
    {
      goto LABEL_81;
    }

    v43 = *v42;
    {
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
        goto LABEL_55;
      }
    }

    else
    {
      mlir::mps::ConstantOp::verify();
      v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      if (v46)
      {
LABEL_55:
        v47 = v45;
        v48 = v46;
        do
        {
          v49 = v48 >> 1;
          v50 = &v47[2 * (v48 >> 1)];
          v52 = *v50;
          v51 = v50 + 2;
          v48 += ~(v48 >> 1);
          if (v52 < v44)
          {
            v47 = v51;
          }

          else
          {
            v48 = v49;
          }
        }

        while (v48);
LABEL_79:
        if (v47 != &v45[2 * v46] && *v47 == v44)
        {
          v74 = v47[1];
          v92 = v42;
          v93 = v74;
          if (!mlir::ShapedType::hasRank(&v92))
          {
            goto LABEL_104;
          }

          goto LABEL_82;
        }

LABEL_81:
        v92 = v42;
        v93 = 0;
        if (!mlir::ShapedType::hasRank(&v92))
        {
          goto LABEL_104;
        }

LABEL_82:
        Shape = mlir::ShapedType::getShape(v94);
        v61 = v60;
        v62 = mlir::ShapedType::getShape(&v92);
        if (v61 != v63)
        {
LABEL_92:
          v95[0] = "invalid shape: constant value ";
          v96 = 259;
          mlir::OpState::emitOpError(this, v95, &v102);
          if (v102)
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v100, v94[0]);
            if (v105 >= v106)
            {
              if (v104 > &v100 || v104 + 24 * v105 <= &v100)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v67 = v104 + 24 * v105;
            v68 = v100;
            *(v67 + 2) = v101;
            *v67 = v68;
            v69 = ++v105;
            if (v102)
            {
              LODWORD(v100) = 3;
              *(&v100 + 1) = " is not compatible with op result ";
              v101 = 34;
              if (v69 >= v106)
              {
                if (v104 > &v100 || v104 + 24 * v69 <= &v100)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v70 = v104 + 24 * v105;
              v71 = v100;
              *(v70 + 2) = v101;
              *v70 = v71;
              ++v105;
              if (v102)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v100, v92);
                if (v105 >= v106)
                {
                  if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v72 = v104 + 24 * v105;
                v73 = v100;
                *(v72 + 2) = v101;
                *v72 = v73;
                ++v105;
              }
            }
          }

          v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
          if (v102)
          {
            mlir::InFlightDiagnostic::report(&v102);
          }

          if (v113 == 1)
          {
            mlir::Diagnostic::~Diagnostic(&v103);
          }

          return v15;
        }

        if (v61)
        {
          v64 = 8 * v61 - 8;
          do
          {
            v65 = v64;
            if (*Shape != *v62 && *v62 != 0x8000000000000000)
            {
              goto LABEL_92;
            }

            ++Shape;
            ++v62;
            v64 -= 8;
          }

          while (v65);
        }

LABEL_104:
        ElementType = mlir::ShapedType::getElementType(&v92);
        v76 = mlir::ShapedType::getElementType(v94);
        v102 = ElementType;
        v95[0] = v76;
        if (ElementType == v76)
        {
          return 1;
        }

        v77 = v76;
        if (mlir::Type::isF16(&v102) || mlir::Type::isBF16(&v102))
        {
          if (mlir::Type::isF32(v95))
          {
            return 1;
          }
        }

        else if (*(*v102 + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*v77 + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v99 = v102;
          *&v100 = mlir::ComplexType::getElementType(&v99);
          if (mlir::Type::isF16(&v100))
          {
            v97 = v77;
            v98 = mlir::ComplexType::getElementType(&v97);
            if (mlir::Type::isF32(&v98))
            {
              return 1;
            }
          }
        }

        v95[0] = "invalid element type: constant value ";
        v96 = 259;
        mlir::OpState::emitOpError(this, v95, &v102);
        if (v102)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v100, v94[0]);
          if (v105 >= v106)
          {
            if (v104 > &v100 || v104 + 24 * v105 <= &v100)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v78 = v104 + 24 * v105;
          v79 = v100;
          *(v78 + 2) = v101;
          *v78 = v79;
          v80 = ++v105;
          if (v102)
          {
            LODWORD(v100) = 3;
            *(&v100 + 1) = " doesn't match op result ";
            v101 = 25;
            if (v80 >= v106)
            {
              if (v104 > &v100 || v104 + 24 * v80 <= &v100)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v81 = v104 + 24 * v105;
            v82 = v100;
            *(v81 + 2) = v101;
            *v81 = v82;
            ++v105;
            if (v102)
            {
              mlir::DiagnosticArgument::DiagnosticArgument(&v100, v92);
              if (v105 >= v106)
              {
                if (v104 > &v100 || v104 + 24 * v105 <= &v100)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v83 = v104 + 24 * v105;
              v84 = v100;
              *(v83 + 2) = v101;
              *v83 = v84;
              ++v105;
            }
          }
        }

        v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
        if (v102)
        {
          mlir::InFlightDiagnostic::report(&v102);
        }

        if (v113 == 1)
        {
          if (v112 != &v113)
          {
            free(v112);
          }

          v85 = __p;
          if (__p)
          {
            v86 = v111;
            v87 = __p;
            if (v111 != __p)
            {
              do
              {
                v86 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v86 - 1);
              }

              while (v86 != v85);
              v87 = __p;
            }

            v111 = v85;
            operator delete(v87);
          }

          v19 = v108;
          if (!v108)
          {
            goto LABEL_138;
          }

          v88 = v109;
          v21 = v108;
          if (v109 == v108)
          {
LABEL_137:
            v109 = v19;
            operator delete(v21);
LABEL_138:
            if (v104 != &v107)
            {
              free(v104);
            }

            return v15;
          }

          do
          {
            v90 = *--v88;
            v89 = v90;
            *v88 = 0;
            if (v90)
            {
              MEMORY[0x259C63150](v89, 0x1000C8077774924);
            }
          }

          while (v88 != v19);
LABEL_136:
          v21 = v108;
          goto LABEL_137;
        }

        return v15;
      }
    }

    v46 = 0;
    v47 = v45;
    goto LABEL_79;
  }

  v95[0] = "failed: property contained an non shaped-type attribute";
  v96 = 259;
  mlir::OpState::emitOpError(this, v95, &v102);
  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
  if (v102)
  {
    mlir::InFlightDiagnostic::report(&v102);
  }

  if (v113 == 1)
  {
    if (v112 != &v113)
    {
      free(v112);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v111;
      v55 = __p;
      if (v111 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v111 = v53;
      operator delete(v55);
    }

    v19 = v108;
    if (!v108)
    {
      goto LABEL_138;
    }

    v56 = v109;
    v21 = v108;
    if (v109 == v108)
    {
      goto LABEL_137;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        MEMORY[0x259C63150](v57, 0x1000C8077774924);
      }
    }

    while (v56 != v19);
    goto LABEL_136;
  }

  return v15;
}