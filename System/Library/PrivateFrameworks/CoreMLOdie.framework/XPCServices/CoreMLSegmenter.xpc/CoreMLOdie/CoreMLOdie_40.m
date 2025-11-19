BOOL mlir::ODIE::Compiler::CoreML::AtanhOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10022844C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !sub_1002256D0(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || (sub_100226A34(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10022844C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t sub_10022844C(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v83[1];
    v54 = *(v83 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 4)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v75[1];
      v67 = *(v75 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
      {
        return 1;
      }

      v77 = *(*ElementType + 136);
      v78 = v77 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v77 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      if (v78 || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }

      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_107;
      }

      v89 = ElementType;
      v90 = mlir::ComplexType::getElementType(&v89);
      if (!mlir::Type::isF16(&v90))
      {
        if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
LABEL_107:
          a1 = v36;
          goto LABEL_2;
        }

        v87 = ElementType;
        v88 = mlir::ComplexType::getElementType(&v87);
        isF32 = mlir::Type::isF32(&v88);
        a1 = v36;
        if (!isF32)
        {
          goto LABEL_2;
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 4D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 257;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

BOOL mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_10022900C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || !sub_1002256D0(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) || !sub_1002256D0(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) || (sub_100226A34(*this, (*(*(*(*this + 9) + 216) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 6u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if ((sub_10022900C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) == 0)
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    return 1;
  }

  v14 = "failed to verify that Result 0 element type must match element type of operand 0.";
  v15 = 259;
  mlir::OpState::emitOpError(this, &v14, v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
  v6 = result;
  if (v16[0])
  {
    mlir::InFlightDiagnostic::report(v16);
    result = v6;
  }

  if (v24 == 1)
  {
    if (v23 != &v24)
    {
      free(v23);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v22;
      v9 = __p;
      if (v22 != __p)
      {
        do
        {
          v8 = sub_10005BEF4(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v22 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v19;
    if (v19)
    {
      v11 = v20;
      v12 = v19;
      if (v20 != v19)
      {
        do
        {
          v13 = *--v11;
          *v11 = 0;
          if (v13)
          {
            operator delete[]();
          }
        }

        while (v11 != v10);
        v12 = v19;
      }

      v20 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v17 != &v18)
    {
      free(v17);
      return v6;
    }
  }

  return result;
}

uint64_t sub_10022900C(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v83[1];
    v54 = *(v83 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 5)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 5)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v75[1];
      v67 = *(v75 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
      {
        return 1;
      }

      v77 = *(*ElementType + 136);
      v78 = v77 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v77 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
      if (v78 || mlir::Type::isSignedInteger(&ElementType, 4) || mlir::Type::isSignedInteger(&ElementType, 8) || mlir::Type::isSignedInteger(&ElementType, 16) || mlir::Type::isSignedInteger(&ElementType, 32) || mlir::Type::isSignedInteger(&ElementType, 64) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8) || mlir::Type::isUnsignedInteger(&ElementType, 16) || mlir::Type::isUnsignedInteger(&ElementType, 32) || mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
        return 1;
      }

      if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
      {
        goto LABEL_107;
      }

      v89 = ElementType;
      v90 = mlir::ComplexType::getElementType(&v89);
      if (!mlir::Type::isF16(&v90))
      {
        if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
LABEL_107:
          a1 = v36;
          goto LABEL_2;
        }

        v87 = ElementType;
        v88 = mlir::ComplexType::getElementType(&v87);
        isF32 = mlir::Type::isF32(&v88);
        a1 = v36;
        if (!isF32)
        {
          goto LABEL_2;
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 5D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 257;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v37 = 261;
    v36[0] = "operand";
    v36[1] = 7;
    mlir::Operation::emitOpError(v41, v2, v36);
    if (v41[0])
    {
      v38 = 3;
      v39 = " #";
      v40 = 2;
      v4 = &v38;
      v5 = v42;
      if (v43 >= v44)
      {
        if (v42 <= &v38 && v42 + 24 * v43 > &v38)
        {
          v32 = &v38 - v42;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v5 = v42;
          v4 = (v42 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
          v4 = &v38;
          v5 = v42;
        }
      }

      v6 = &v5[24 * v43];
      v7 = *v4;
      *(v6 + 2) = *(v4 + 2);
      *v6 = v7;
      v8 = ++v43;
      if (v41[0])
      {
        v38 = 5;
        v39 = 0;
        v9 = &v38;
        v10 = v42;
        if (v8 >= v44)
        {
          if (v42 <= &v38 && v42 + 24 * v8 > &v38)
          {
            v33 = &v38 - v42;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v8 + 1, 24);
            v10 = v42;
            v9 = (v42 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v8 + 1, 24);
            v9 = &v38;
            v10 = v42;
          }
        }

        v11 = &v10[24 * v43];
        v12 = *v9;
        *(v11 + 2) = *(v9 + 2);
        *v11 = v12;
        v13 = ++v43;
        if (v41[0])
        {
          v38 = 3;
          v39 = " must be , but got ";
          v40 = 19;
          v14 = &v38;
          v15 = v42;
          if (v13 >= v44)
          {
            if (v42 <= &v38 && v42 + 24 * v13 > &v38)
            {
              v34 = &v38 - v42;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v13 + 1, 24);
              v15 = v42;
              v14 = (v42 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v13 + 1, 24);
              v14 = &v38;
              v15 = v42;
            }
          }

          v16 = &v15[24 * v43];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v43;
          if (v41[0])
          {
            v18 = &v38;
            mlir::DiagnosticArgument::DiagnosticArgument(&v38, v3);
            v19 = v42;
            if (v43 >= v44)
            {
              if (v42 <= &v38 && v42 + 24 * v43 > &v38)
              {
                v35 = &v38 - v42;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
                v19 = v42;
                v18 = (v42 + v35);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v42, v45, v43 + 1, 24);
                v18 = &v38;
                v19 = v42;
              }
            }

            v20 = &v19[24 * v43];
            v21 = *v18;
            *(v20 + 2) = *(v18 + 2);
            *v20 = v21;
            ++v43;
          }
        }
      }
    }

    v22 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
      }

      v23 = __p;
      if (__p)
      {
        v24 = v49;
        v25 = __p;
        if (v49 != __p)
        {
          do
          {
            v24 = sub_10005BEF4(v24 - 1);
          }

          while (v24 != v23);
          v25 = __p;
        }

        v49 = v23;
        operator delete(v25);
      }

      v26 = v46;
      if (v46)
      {
        v27 = v47;
        v28 = v46;
        if (v47 != v46)
        {
          do
          {
            v29 = *--v27;
            *v27 = 0;
            if (v29)
            {
              operator delete[]();
            }
          }

          while (v27 != v26);
          v28 = v46;
        }

        v47 = v26;
        operator delete(v28);
      }

      if (v42 != v45)
      {
        free(v42);
      }
    }

    if (!v22)
    {
      return 0;
    }
  }

  if (*(*this + 9))
  {
    v30 = *this - 16;
  }

  else
  {
    v30 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v30, 0);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::parse(mlir::ODIE::Compiler::CoreML::AwaitOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v18[0] = v19;
  v18[1] = 1;
  v16[1] = 1;
  v17 = 0;
  v16[0] = &v17;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v19, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v23 = 0;
  if (!sub_100229FD4(this, &v23))
  {
    return 0;
  }

  v17 = v23;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0 || (sub_10022A240(this, v18, v16, v5, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  v23 = v25;
  v24 = 0x600000000;
  mlir::AsmParser::getContext(this);
  v6 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 2), *(a2 + 6));
  Context = mlir::AsmParser::getContext(this);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v8 = mlir::RegionRange::RegionRange(&v21, *(a2 + 28), *(a2 + 58));
  if (mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(v8, v6, 1, v22[0], v22[1], v9, v10, v11, v14, v15, &v23))
  {
    sub_1001EFDBC(a2, v23, v24);
    result = 1;
  }

  else
  {
    result = 0;
  }

  if (v23 != v25)
  {
    v13 = result;
    free(v23);
    return v13;
  }

  return result;
}

BOOL sub_100229FD4(uint64_t a1, void *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v17 = 0;
  v18[0] = a1;
  if (((*(*a1 + 544))(a1, &v17, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir4TypeEEE11callback_fnIZNS2_9AsmParser27parseCustomTypeWithFallbackINS2_4ODIE8Compiler6CoreML14AsyncValueTypeEEENSt3__19enable_ifIXsr28detect_type_has_parse_methodIT_EE5valueES1_E4typeERSG_EUlS4_E_EES1_lS4_, v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (*(*v17 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v15 = "invalid kind of Type specified";
  v16 = 259;
  (*(*a1 + 24))(v18, a1, v4, &v15);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
  v7 = result;
  if (v18[0])
  {
    mlir::InFlightDiagnostic::report(v18);
    result = v7;
  }

  if (v26 == 1)
  {
    if (v25 != &v26)
    {
      free(v25);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v24;
      v10 = __p;
      if (v24 != __p)
      {
        do
        {
          v9 = sub_10005BEF4(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v24 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v21;
    if (v21)
    {
      v12 = v22;
      v13 = v21;
      if (v22 != v21)
      {
        do
        {
          v14 = *--v12;
          *v12 = 0;
          if (v14)
          {
            operator delete[]();
          }
        }

        while (v12 != v11);
        v13 = v21;
      }

      v22 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v19 != &v20)
    {
      free(v19);
      return v7;
    }
  }

  return result;
}

uint64_t sub_10022A240(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a2[1];
  v7 = a3[1];
  if (v6 == v7)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v51 = 257;
    (*(*a1 + 24))(v55, a1, a4, v50);
    if (v55[0])
    {
      v52 = 3;
      v53 = "number of operands and types do not match: got ";
      v54 = 47;
      v13 = &v52;
      v14 = v56;
      if (v57 >= v58)
      {
        if (v56 <= &v52 && v56 + 24 * v57 > &v52)
        {
          v45 = &v52 - v56;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v14 = v56;
          v13 = (v56 + v45);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v57 + 1, 24);
          v13 = &v52;
          v14 = v56;
        }
      }

      v15 = &v14[24 * v57];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      v17 = ++v57;
      if (v55[0])
      {
        v52 = 5;
        v53 = v6;
        v18 = &v52;
        v19 = v56;
        if (v17 >= v58)
        {
          if (v56 <= &v52 && v56 + 24 * v17 > &v52)
          {
            v46 = &v52 - v56;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v19 = v56;
            v18 = (v56 + v46);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v17 + 1, 24);
            v18 = &v52;
            v19 = v56;
          }
        }

        v20 = &v19[24 * v57];
        v21 = *v18;
        *(v20 + 2) = *(v18 + 2);
        *v20 = v21;
        v22 = ++v57;
        if (v55[0])
        {
          v52 = 3;
          v53 = " operands and ";
          v54 = 14;
          v23 = &v52;
          v24 = v56;
          if (v22 >= v58)
          {
            if (v56 <= &v52 && v56 + 24 * v22 > &v52)
            {
              v47 = &v52 - v56;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v24 = v56;
              v23 = (v56 + v47);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v22 + 1, 24);
              v23 = &v52;
              v24 = v56;
            }
          }

          v25 = &v24[24 * v57];
          v26 = *v23;
          *(v25 + 2) = *(v23 + 2);
          *v25 = v26;
          v27 = ++v57;
          if (v55[0])
          {
            v52 = 5;
            v53 = v7;
            v28 = &v52;
            v29 = v56;
            if (v27 >= v58)
            {
              if (v56 <= &v52 && v56 + 24 * v27 > &v52)
              {
                v48 = &v52 - v56;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v29 = v56;
                v28 = (v56 + v48);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v27 + 1, 24);
                v28 = &v52;
                v29 = v56;
              }
            }

            v30 = &v29[24 * v57];
            v31 = *v28;
            *(v30 + 2) = *(v28 + 2);
            *v30 = v31;
            v32 = ++v57;
            if (v55[0])
            {
              v52 = 3;
              v53 = " types";
              v54 = 6;
              v33 = &v52;
              v34 = v56;
              if (v32 >= v58)
              {
                if (v56 <= &v52 && v56 + 24 * v32 > &v52)
                {
                  v49 = &v52 - v56;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v34 = v56;
                  v33 = (v56 + v49);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v56, v59, v32 + 1, 24);
                  v33 = &v52;
                  v34 = v56;
                }
              }

              v35 = &v34[24 * v57];
              v36 = *v33;
              *(v35 + 2) = *(v33 + 2);
              *v35 = v36;
              ++v57;
            }
          }
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    if (v55[0])
    {
      mlir::InFlightDiagnostic::report(v55);
    }

    if (v65 == 1)
    {
      if (v64 != &v65)
      {
        free(v64);
      }

      v37 = __p;
      if (__p)
      {
        v38 = v63;
        v39 = __p;
        if (v63 != __p)
        {
          do
          {
            v38 = sub_10005BEF4(v38 - 1);
          }

          while (v38 != v37);
          v39 = __p;
        }

        v63 = v37;
        operator delete(v39);
      }

      v40 = v60;
      if (v60)
      {
        v41 = v61;
        v42 = v60;
        if (v61 != v60)
        {
          do
          {
            v43 = *--v41;
            *v41 = 0;
            if (v43)
            {
              operator delete[]();
            }
          }

          while (v41 != v40);
          v42 = v60;
        }

        v61 = v40;
        operator delete(v42);
      }

      if (v56 != v59)
      {
        free(v56);
      }
    }
  }

  return v12;
}

void mlir::ODIE::Compiler::CoreML::AwaitOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
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
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
    v12 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  v18 = v12;
  if ((*(*a2 + 64))(a2))
  {
    goto LABEL_18;
  }

  v13 = (*(*a2 + 16))(a2);
  v14 = (*(*v13 + 80))(v13) + v13[4] - v13[2];
  mlir::ODIE::Compiler::CoreML::AsyncValueType::print(&v18, a2);
  if (v14 != (*(*v13 + 80))(v13) + v13[4] - v13[2])
  {
    goto LABEL_18;
  }

  v12 = v18;
LABEL_17:
  (*(*a2 + 32))(a2, v12);
LABEL_18:
  v18 = v20;
  v19 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v16, v18, v19);
  if (v18 != v20)
  {
    free(v18);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::BatchMatmulOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_100223550(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_100223550(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_100223550(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v4 = *this;
  if ((*(*this + 46) & 0x80) == 0 || *(v4 + 17) < 2u)
  {
LABEL_13:
    v38[0] = "failed to verify that number of dims >=2 and last dim of operand 0 equals second last dim of operand 1";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v17 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v17;
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
        result = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v49;
        v20 = __p;
        if (v49 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v49 = v18;
        operator delete(v20);
        result = v17;
      }

      v21 = v46;
      if (!v46)
      {
        goto LABEL_63;
      }

      v22 = v47;
      v23 = v46;
      if (v47 == v46)
      {
LABEL_62:
        v47 = v21;
        operator delete(v23);
        result = v17;
LABEL_63:
        if (v44 != &v45)
        {
          free(v44);
          return v17;
        }

        return result;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
LABEL_61:
      v23 = v46;
      goto LABEL_62;
    }

    return result;
  }

  v5 = *(v4 + 9);
  if (*(*(*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id && *(*(*(*(v5 + 56) + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v41 = (*(*(v5 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v6 = sub_100227728(&v41);
    v8 = v7;
    v40 = (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
    v9 = sub_100227728(&v40);
    v42 = v6;
    v43 = v8;
    v38[0] = v9;
    v38[1] = v10;
    mlir::ShapedType::getShape(&v42);
    v12 = v11;
    mlir::ShapedType::getShape(v38);
    if (v12 != v13)
    {
      goto LABEL_13;
    }

    mlir::ShapedType::getShape(&v42);
    v15 = v14 - 2;
    if (v14 < 2)
    {
      goto LABEL_13;
    }

    v25 = v14 - 1;
    v26 = *(mlir::ShapedType::getShape(&v42) + 8 * (v14 - 1));
    if (v26 != *(mlir::ShapedType::getShape(v38) + 8 * v15) && *(mlir::ShapedType::getShape(&v42) + 8 * v25) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v38) + 8 * v15) != 0x8000000000000000)
    {
      goto LABEL_13;
    }

    if (v15)
    {
      v27 = 0;
      do
      {
        if (*(mlir::ShapedType::getShape(&v42) + 8 * v27) != 0x8000000000000000 && *(mlir::ShapedType::getShape(v38) + 8 * v27) != 0x8000000000000000)
        {
          v28 = *(mlir::ShapedType::getShape(&v42) + 8 * v27);
          if (v28 != *(mlir::ShapedType::getShape(v38) + 8 * v27))
          {
            goto LABEL_13;
          }
        }
      }

      while (v15 != ++v27);
    }

    v4 = *this;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v4 - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v30 = mlir::getElementTypeOrSelf(*this - 16);
    if (v30 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    else
    {
      v38[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
      v39 = 259;
      mlir::OpState::emitOpError(this, v38, &v42);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
      if (v42)
      {
        v36 = result;
        mlir::InFlightDiagnostic::report(&v42);
        result = v36;
      }

      if (v51 == 1)
      {
        v37 = result;
        sub_10005BE10(&v43);
        return v37;
      }
    }
  }

  else
  {
    v38[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v39 = 259;
    mlir::OpState::emitOpError(this, v38, &v42);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
    v17 = result;
    if (v42)
    {
      mlir::InFlightDiagnostic::report(&v42);
      result = v17;
    }

    if (v51 == 1)
    {
      if (v50 != &v51)
      {
        free(v50);
        result = v17;
      }

      v31 = __p;
      if (__p)
      {
        v32 = v49;
        v33 = __p;
        if (v49 != __p)
        {
          do
          {
            v32 = sub_10005BEF4(v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v49 = v31;
        operator delete(v33);
        result = v17;
      }

      v21 = v46;
      if (!v46)
      {
        goto LABEL_63;
      }

      v34 = v47;
      v23 = v46;
      if (v47 == v46)
      {
        goto LABEL_62;
      }

      do
      {
        v35 = *--v34;
        *v34 = 0;
        if (v35)
        {
          operator delete[]();
        }
      }

      while (v34 != v21);
      goto LABEL_61;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchNormOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022B70C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_10022BD50(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_10022BD50(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_10022BD50(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (sub_10022BD50(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || (sub_10022C524(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022B70C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(*this + 9) + 56));
  if (ElementTypeOrSelf != mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)) || (v5 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 88)), v5 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 56))) || (v6 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 120)), v6 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 88))) || (v7 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 152)), v7 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 120))))
  {
    v34[0] = "failed to verify that Operands should have same element type.";
    v35 = 259;
    mlir::OpState::emitOpError(this, v34, &v36);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
    v15 = result;
    if (v36)
    {
      mlir::InFlightDiagnostic::report(&v36);
      result = v15;
    }

    if (v44[0] != 1)
    {
      return result;
    }

    if (v43 != v44)
    {
      free(v43);
      result = v15;
    }

    v16 = __p;
    if (__p)
    {
      v17 = v42;
      v18 = __p;
      if (v42 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v42 = v16;
      operator delete(v18);
      result = v15;
    }

    v19 = v39;
    if (v39)
    {
      v20 = v40;
      v21 = v39;
      if (v40 != v39)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v39;
      }

      v40 = v19;
      operator delete(v21);
      result = v15;
    }

    v23 = v37;
    if (v37 == v38)
    {
      return result;
    }

LABEL_45:
    free(v23);
    return v15;
  }

  v8 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
  if (v8 != mlir::getElementTypeOrSelf(*(*(*this + 9) + 184)))
  {
    v9 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 184));
    v10 = *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id ? v9 : 0;
    *&v36 = v10;
    *(&v36 + 1) = this;
    if (v10)
    {
      v11 = mlir::getElementTypeOrSelf(*(*(*this + 9) + 24));
      if (v11 != mlir::ComplexType::getElementType(&v36))
      {
        v32 = "failed to verify that Operand 5 and operand 0 must have the same inner element type.";
LABEL_64:
        v34[0] = v32;
        v35 = 259;
        mlir::OpState::emitOpError(this, v34, &v36);
        v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
        if (v36)
        {
          mlir::InFlightDiagnostic::report(&v36);
        }

        if (v44[0] == 1)
        {
          sub_10005BE10(&v36 + 1);
        }

        return v33;
      }
    }
  }

  v12 = *this;
  v36 = xmmword_1002B0F50;
  if (sub_10022CC84(v12, &v36, 4))
  {
    v13 = mlir::getElementTypeOrSelf(*this - 16);
    if (v13 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
    {
      return 1;
    }

    v32 = "failed to verify that Result 0 element type must match element type of operand 0.";
    goto LABEL_64;
  }

  v34[0] = "failed to verify that Operands should have same shape.";
  v35 = 259;
  mlir::OpState::emitOpError(this, v34, &v36);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    v24 = result;
    mlir::InFlightDiagnostic::report(&v36);
    result = v24;
  }

  if (v44[0] == 1)
  {
    v15 = result;
    if (v43 != v44)
    {
      free(v43);
    }

    v25 = __p;
    if (__p)
    {
      v26 = v42;
      v27 = __p;
      if (v42 != __p)
      {
        do
        {
          v26 = sub_10005BEF4(v26 - 1);
        }

        while (v26 != v25);
        v27 = __p;
      }

      v42 = v25;
      operator delete(v27);
    }

    v28 = v39;
    if (v39)
    {
      v29 = v40;
      v30 = v39;
      if (v40 != v39)
      {
        do
        {
          v31 = *--v29;
          *v29 = 0;
          if (v31)
          {
            operator delete[]();
          }
        }

        while (v29 != v28);
        v30 = v39;
      }

      v40 = v28;
      operator delete(v30);
    }

    v23 = v37;
    result = v15;
    if (v37 != v38)
    {
      goto LABEL_45;
    }
  }

  return result;
}

BOOL sub_10022B70C(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_30;
  }

  v12 = *a2;
  {
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v64[0] = a2;
  v64[1] = v22;
  v56[0] = mlir::ShapedType::getElementType(v64);
  if (mlir::Type::isF16(v56) || mlir::Type::isF32(v56))
  {
    return 1;
  }

  v23 = *(*v56[0] + 17);
  if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
  {
    return 1;
  }

  if (v23 == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v60 = v56[0];
    ElementType = mlir::ComplexType::getElementType(&v60);
    if (mlir::Type::isF16(&ElementType))
    {
      return 1;
    }

    if (*(*v56[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v58 = v56[0];
      v59 = mlir::ComplexType::getElementType(&v58);
      if (mlir::Type::isF32(&v59))
      {
        return 1;
      }
    }
  }

LABEL_30:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(v64, this, v56);
  if (v64[0])
  {
    LODWORD(ElementType) = 3;
    v62 = " #";
    v63 = 2;
    p_ElementType = &ElementType;
    v27 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
      {
        v52 = &ElementType - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v27 = v65;
        p_ElementType = (v65 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        p_ElementType = &ElementType;
        v27 = v65;
      }
    }

    v28 = &v27[24 * v66];
    v29 = *p_ElementType;
    *(v28 + 2) = p_ElementType[2];
    *v28 = v29;
    v30 = ++v66;
    if (v64[0])
    {
      LODWORD(ElementType) = 5;
      v62 = a5;
      v31 = &ElementType;
      v32 = v65;
      if (v30 >= v67)
      {
        if (v65 <= &ElementType && v65 + 24 * v30 > &ElementType)
        {
          v53 = &ElementType - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v32 = v65;
          v31 = (v65 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v30 + 1, 24);
          v31 = &ElementType;
          v32 = v65;
        }
      }

      v33 = &v32[24 * v66];
      v34 = *v31;
      *(v33 + 2) = v31[2];
      *v33 = v34;
      v35 = ++v66;
      if (v64[0])
      {
        LODWORD(ElementType) = 3;
        v62 = " must be CoreML Tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v63 = 189;
        v36 = &ElementType;
        v37 = v65;
        if (v35 >= v67)
        {
          if (v65 <= &ElementType && v65 + 24 * v35 > &ElementType)
          {
            v54 = &ElementType - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v37 = v65;
            v36 = (v65 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v35 + 1, 24);
            v36 = &ElementType;
            v37 = v65;
          }
        }

        v38 = &v37[24 * v66];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v66;
        if (v64[0])
        {
          v40 = &ElementType;
          mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, a2);
          v41 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &ElementType && v65 + 24 * v66 > &ElementType)
            {
              v55 = &ElementType - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v41 = v65;
              v40 = (v65 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v40 = &ElementType;
              v41 = v65;
            }
          }

          v42 = &v41[24 * v66];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v66;
        }
      }
    }
  }

  v25 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
  if (v64[0])
  {
    mlir::InFlightDiagnostic::report(v64);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v72;
      v46 = __p;
      if (v72 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v72 = v44;
      operator delete(v46);
    }

    v47 = v69;
    if (v69)
    {
      v48 = v70;
      v49 = v69;
      if (v70 != v69)
      {
        do
        {
          v50 = *--v48;
          *v48 = 0;
          if (v50)
          {
            operator delete[]();
          }
        }

        while (v48 != v47);
        v49 = v69;
      }

      v70 = v47;
      operator delete(v49);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  return v25;
}

uint64_t sub_10022BD50(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v83[1];
    v54 = *(v83 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 1)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 1)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v75[1];
      v67 = *(v75 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType))
      {
        v77 = *(*ElementType + 136);
        if (v77 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          if (v77 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
LABEL_98:
            a1 = v36;
            goto LABEL_2;
          }

          v89 = ElementType;
          v90 = mlir::ComplexType::getElementType(&v89);
          if (!mlir::Type::isF16(&v90))
          {
            if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              goto LABEL_98;
            }

            v87 = ElementType;
            v88 = mlir::ComplexType::getElementType(&v87);
            isF32 = mlir::Type::isF32(&v88);
            a1 = v36;
            if (!isF32)
            {
              goto LABEL_2;
            }
          }
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 1D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 185;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}

uint64_t sub_10022C524(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v90 = a2;
    v91 = v49;
    hasRank = mlir::ShapedType::hasRank(&v90);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v90 = a2;
  v91 = 0;
  v48 = mlir::ShapedType::hasRank(&v90);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v82 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v82[1];
    v54 = *(v82 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v83 = a2;
    v84 = v62;
    mlir::ShapedType::getShape(&v83);
    a1 = v36;
    if (v63)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v83 = a2;
  v84 = 0;
  mlir::ShapedType::getShape(&v83);
  a1 = v36;
  if (v61)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v76 = v64;
    sub_1002AAABC();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v76[1];
    v67 = *(v76 + 4);
    if (v67)
    {
      goto LABEL_76;
    }

LABEL_88:
    v77 = 0;
    goto LABEL_90;
  }

  v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v66 = v64[1];
  v67 = *(v64 + 4);
  if (!v67)
  {
    goto LABEL_88;
  }

LABEL_76:
  v68 = v66;
  v69 = v67;
  do
  {
    v70 = v69 >> 1;
    v71 = &v68[2 * (v69 >> 1)];
    v73 = *v71;
    v72 = v71 + 2;
    v69 += ~(v69 >> 1);
    if (v73 < v65)
    {
      v68 = v72;
    }

    else
    {
      v69 = v70;
    }
  }

  while (v69);
  if (v68 == &v66[2 * v67] || *v68 != v65)
  {
    goto LABEL_88;
  }

  v77 = v68[1];
LABEL_90:
  v87 = a2;
  v88 = v77;
  ElementType = mlir::ShapedType::getElementType(&v87);
  if (mlir::Type::isF16(&ElementType) || mlir::Type::isF32(&ElementType))
  {
    return 1;
  }

  v78 = *(*ElementType + 136);
  v79 = v78 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v78 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
  a1 = v36;
  if (v79)
  {
    return 1;
  }

LABEL_2:
  v85 = 261;
  v83 = a3;
  v84 = a4;
  mlir::Operation::emitOpError(&v90, a1, &v83);
  if (v90)
  {
    LODWORD(v87) = 3;
    v88 = " #";
    v89 = 2;
    v10 = &v87;
    v11 = v92;
    if (v93 >= v94)
    {
      if (v92 <= &v87 && v92 + 24 * v93 > &v87)
      {
        v74 = &v87 - v92;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v11 = v92;
        v10 = (v92 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
        v10 = &v87;
        v11 = v92;
      }
    }

    v12 = &v11[24 * v93];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v93;
    if (v90)
    {
      LODWORD(v87) = 5;
      v88 = a5;
      v15 = &v87;
      v16 = v92;
      if (v14 >= v94)
      {
        if (v92 <= &v87 && v92 + 24 * v14 > &v87)
        {
          v75 = &v87 - v92;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v16 = v92;
          v15 = (v92 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v14 + 1, 24);
          v15 = &v87;
          v16 = v92;
        }
      }

      v17 = &v16[24 * v93];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v93;
      if (v90)
      {
        LODWORD(v87) = 3;
        v88 = " must be 0D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type values, but got ";
        v89 = 99;
        v20 = &v87;
        v21 = v92;
        if (v19 >= v94)
        {
          if (v92 <= &v87 && v92 + 24 * v19 > &v87)
          {
            v80 = &v87 - v92;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v21 = v92;
            v20 = (v92 + v80);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v19 + 1, 24);
            v20 = &v87;
            v21 = v92;
          }
        }

        v22 = &v21[24 * v93];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v93;
        if (v90)
        {
          v24 = &v87;
          mlir::DiagnosticArgument::DiagnosticArgument(&v87, a2);
          v25 = v92;
          if (v93 >= v94)
          {
            if (v92 <= &v87 && v92 + 24 * v93 > &v87)
            {
              v81 = &v87 - v92;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v25 = v92;
              v24 = (v92 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v92, v95, v93 + 1, 24);
              v24 = &v87;
              v25 = v92;
            }
          }

          v26 = &v25[24 * v93];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v93;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v90);
  if (v90)
  {
    mlir::InFlightDiagnostic::report(&v90);
  }

  if (v101 == 1)
  {
    if (v100 != &v101)
    {
      free(v100);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v99;
      v31 = __p;
      if (v99 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v99 = v29;
      operator delete(v31);
    }

    v32 = v96;
    if (v96)
    {
      v33 = v97;
      v34 = v96;
      if (v97 != v96)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v96;
      }

      v97 = v32;
      operator delete(v34);
    }

    if (v92 != v95)
    {
      free(v92);
    }
  }

  return v28;
}

uint64_t sub_10022CC84(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v18 = 0uLL;
  if (a3)
  {
    v3 = a2;
    v5 = &a2[a3];
    do
    {
      v6 = (*(*(*(a1 + 72) + 32 * *v3 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (v6)
      {
        *&v17 = sub_100067788(v6);
        *(&v17 + 1) = v7;
        if (v17 && mlir::ShapedType::hasRank(&v17))
        {
          Shape = mlir::ShapedType::getShape(&v17);
          if (v9)
          {
            v10 = 8 * v9;
            while (*Shape != 0x8000000000000000)
            {
              ++Shape;
              v10 -= 8;
              if (!v10)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if (v18)
            {
              v11 = mlir::ShapedType::getShape(&v18);
              v13 = v12;
              v14 = mlir::ShapedType::getShape(&v17);
              if (v13 != v15 || memcmp(v11, v14, 8 * v13))
              {
                return 0;
              }
            }

            else
            {
              v18 = v17;
            }
          }
        }
      }

      else
      {
        v17 = 0uLL;
      }

      ++v3;
    }

    while (v3 != v5);
  }

  return 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BatchToSpace::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022B70C(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_10022D1D4(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022B70C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_100227728(&v25);
    v28[1] = v5;
    mlir::ShapedType::getShape(v28);
    v7 = v6;
    v24 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v26[0] = sub_100227728(&v24);
    v26[1] = v8;
    mlir::ShapedType::getShape(v26);
    if (v7 == v9)
    {
      return sub_10022D920(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "decomposition", 13, 0) & 1;
    }

    v26[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
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

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_47;
      }

      v22 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_46:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v15);
LABEL_45:
      v17 = v31;
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
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
            v13 = sub_10005BEF4(v13 - 1);
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
        goto LABEL_47;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_46;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t sub_10022D1D4(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v89 = a2;
    v90 = v49;
    hasRank = mlir::ShapedType::hasRank(&v89);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v89 = a2;
  v90 = 0;
  v48 = mlir::ShapedType::hasRank(&v89);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v81 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v81[1];
    v54 = *(v81 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v82 = a2;
    v83 = v62;
    mlir::ShapedType::getShape(&v82);
    a1 = v36;
    if (v63 != 2)
    {
      goto LABEL_2;
    }

    goto LABEL_74;
  }

LABEL_71:
  v82 = a2;
  v83 = 0;
  mlir::ShapedType::getShape(&v82);
  a1 = v36;
  if (v61 != 2)
  {
    goto LABEL_2;
  }

LABEL_74:
  v64 = *a2;
  {
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v64[1];
    v67 = *(v64 + 4);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v76 = v64;
    sub_1002AAABC();
    v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v66 = v76[1];
    v67 = *(v76 + 4);
    if (!v67)
    {
      goto LABEL_88;
    }
  }

  v68 = v66;
  v69 = v67;
  do
  {
    v70 = v69 >> 1;
    v71 = &v68[2 * (v69 >> 1)];
    v73 = *v71;
    v72 = v71 + 2;
    v69 += ~(v69 >> 1);
    if (v73 < v65)
    {
      v68 = v72;
    }

    else
    {
      v69 = v70;
    }
  }

  while (v69);
  if (v68 != &v66[2 * v67] && *v68 == v65)
  {
    v77 = v68[1];
    goto LABEL_90;
  }

LABEL_88:
  v77 = 0;
LABEL_90:
  v86 = a2;
  v87 = v77;
  ElementType = mlir::ShapedType::getElementType(&v86);
  if (mlir::Type::isSignedInteger(&ElementType, 16))
  {
    return 1;
  }

  isSignedInteger = mlir::Type::isSignedInteger(&ElementType, 32);
  a1 = v36;
  if (isSignedInteger)
  {
    return 1;
  }

LABEL_2:
  v84 = 261;
  v82 = a3;
  v83 = a4;
  mlir::Operation::emitOpError(&v89, a1, &v82);
  if (v89)
  {
    LODWORD(v86) = 3;
    v87 = " #";
    v88 = 2;
    v10 = &v86;
    v11 = v91;
    if (v92 >= v93)
    {
      if (v91 <= &v86 && v91 + 24 * v92 > &v86)
      {
        v74 = &v86 - v91;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v11 = v91;
        v10 = (v91 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
        v10 = &v86;
        v11 = v91;
      }
    }

    v12 = &v11[24 * v92];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v92;
    if (v89)
    {
      LODWORD(v86) = 5;
      v87 = a5;
      v15 = &v86;
      v16 = v91;
      if (v14 >= v93)
      {
        if (v91 <= &v86 && v91 + 24 * v14 > &v86)
        {
          v75 = &v86 - v91;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v16 = v91;
          v15 = (v91 + v75);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v14 + 1, 24);
          v15 = &v86;
          v16 = v91;
        }
      }

      v17 = &v16[24 * v92];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v92;
      if (v89)
      {
        LODWORD(v86) = 3;
        v87 = " must be 2D tensor of Index type. values, but got ";
        v88 = 50;
        v20 = &v86;
        v21 = v91;
        if (v19 >= v93)
        {
          if (v91 <= &v86 && v91 + 24 * v19 > &v86)
          {
            v79 = &v86 - v91;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v21 = v91;
            v20 = (v91 + v79);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v19 + 1, 24);
            v20 = &v86;
            v21 = v91;
          }
        }

        v22 = &v21[24 * v92];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v92;
        if (v89)
        {
          v24 = &v86;
          mlir::DiagnosticArgument::DiagnosticArgument(&v86, a2);
          v25 = v91;
          if (v92 >= v93)
          {
            if (v91 <= &v86 && v91 + 24 * v92 > &v86)
            {
              v80 = &v86 - v91;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v25 = v91;
              v24 = (v91 + v80);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v91, v94, v92 + 1, 24);
              v24 = &v86;
              v25 = v91;
            }
          }

          v26 = &v25[24 * v92];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v92;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v89);
  if (v89)
  {
    mlir::InFlightDiagnostic::report(&v89);
  }

  if (v100 == 1)
  {
    if (v99 != &v100)
    {
      free(v99);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v98;
      v31 = __p;
      if (v98 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v98 = v29;
      operator delete(v31);
    }

    v32 = v95;
    if (v95)
    {
      v33 = v96;
      v34 = v95;
      if (v96 != v95)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v95;
      }

      v96 = v32;
      operator delete(v34);
    }

    if (v91 != v94)
    {
      free(v91);
    }
  }

  return v28;
}

uint64_t sub_10022D920(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v8 = *(a2 + 8);
  if (v8 != a2 && *(v8 + 8) == a2)
  {
    return 1;
  }

  v32 = "region #";
  v33 = 259;
  mlir::Operation::emitOpError(&v37, a1, &v32);
  if (v37)
  {
    LODWORD(v30[0]) = 5;
    v30[1] = a5;
    v9 = v30;
    v10 = v39;
    if (v40 >= v41)
    {
      if (v39 <= v30 && v39 + 24 * v40 > v30)
      {
        v26 = v30 - v39;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v10 = v39;
        v9 = (v39 + v26);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
        v9 = v30;
        v10 = v39;
      }
    }

    v11 = &v10[24 * v40];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v40;
  }

  if (a4)
  {
    v29 = 1283;
    v28[0] = " ('";
    v28[2] = a3;
    v28[3] = a4;
    v30[0] = v28;
    v30[2] = "') ";
    v31 = 770;
    if (!v37)
    {
      goto LABEL_13;
    }

LABEL_10:
    mlir::Diagnostic::operator<<(&v38, v30);
    if (v37)
    {
      v34 = 3;
      v35 = "failed to verify constraint: region with 1 blocks";
      v36 = 49;
      v13 = &v34;
      v14 = v39;
      if (v40 >= v41)
      {
        if (v39 <= &v34 && v39 + 24 * v40 > &v34)
        {
          v27 = &v34 - v39;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v14 = v39;
          v13 = (v39 + v27);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v39, v42, v40 + 1, 24);
          v13 = &v34;
          v14 = v39;
        }
      }

      v15 = &v14[24 * v40];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v40;
    }

    goto LABEL_13;
  }

  v30[0] = " ";
  v31 = 259;
  if (v37)
  {
    goto LABEL_10;
  }

LABEL_13:
  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v37);
  if (v37)
  {
    mlir::InFlightDiagnostic::report(&v37);
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v46;
      v20 = __p;
      if (v46 != __p)
      {
        do
        {
          v19 = sub_10005BEF4(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v46 = v18;
      operator delete(v20);
    }

    v21 = v43;
    if (v43)
    {
      v22 = v44;
      v23 = v43;
      if (v44 != v43)
      {
        do
        {
          v24 = *--v22;
          *v22 = 0;
          if (v24)
          {
            operator delete[]();
          }
        }

        while (v22 != v21);
        v23 = v43;
      }

      v44 = v21;
      operator delete(v23);
    }

    if (v39 != v42)
    {
      free(v39);
    }
  }

  return v17;
}

void mlir::ODIE::Compiler::CoreML::BatchToSpace::parse(mlir::ODIE::Compiler::CoreML::BatchToSpace *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v3 = &v5;
  v4 = 0x400000000;
  operator new();
}

BOOL mlir::ODIE::Compiler::CoreML::BatchToSpace::verifyRegions(unsigned int **this)
{
  v1 = *this;
  v2 = *(((&v1[4 * ((v1[11] >> 23) & 1) + 17] + ((v1[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v1[10] + 8);
  if (v2)
  {
    v3 = (v2 - 8);
  }

  else
  {
    v3 = 0;
  }

  return sub_10022E028(v1, v3);
}

BOOL sub_10022E028(mlir::Operation *a1, mlir::Block **this)
{
  Terminator = mlir::Block::getTerminator(this);
  if (Terminator && *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::YieldOp,void>::id)
  {
    v13 = this[5];
    if (v13 != (this + 4) && v13 != this[4])
    {
      return 1;
    }

    v21[0] = "expected the decomposition block to contain ops.";
    v22 = 259;
    mlir::Operation::emitOpError(v23, a1, v21);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v29;
        v17 = __p;
        if (v29 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v29 = v15;
        operator delete(v17);
      }

      v9 = v26;
      if (!v26)
      {
        goto LABEL_42;
      }

      v18 = v27;
      v11 = v26;
      if (v27 == v26)
      {
        goto LABEL_41;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v9);
      goto LABEL_40;
    }
  }

  else
  {
    v21[0] = "expected YieldOp to terminate the decomposition block.";
    v22 = 259;
    mlir::Operation::emitOpError(v23, a1, v21);
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v29;
        v8 = __p;
        if (v29 != __p)
        {
          do
          {
            v7 = sub_10005BEF4(v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v29 = v6;
        operator delete(v8);
      }

      v9 = v26;
      if (!v26)
      {
        goto LABEL_42;
      }

      v10 = v27;
      v11 = v26;
      if (v27 == v26)
      {
LABEL_41:
        v27 = v9;
        operator delete(v11);
LABEL_42:
        if (v24 != &v25)
        {
          free(v24);
        }

        return v5;
      }

      do
      {
        v12 = *--v10;
        *v10 = 0;
        if (v12)
        {
          operator delete[]();
        }
      }

      while (v10 != v9);
LABEL_40:
      v11 = v26;
      goto LABEL_41;
    }
  }

  return v5;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseAndOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022E658(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10022E658(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022E658(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

BOOL sub_10022E658(mlir::Operation *this, void *a2, void **a3, void **a4, unsigned int a5)
{
  v10 = *(*a2 + 136);
  v11 = v10 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
  if (!v11 || !sub_10026CDE0(a2, this))
  {
    goto LABEL_33;
  }

  v12 = *a2;
  {
    sub_1002AAB00();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_19:
    v22 = 0;
    goto LABEL_21;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_19;
  }

LABEL_9:
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
  if (v16 == &v14[2 * v15] || *v16 != v13)
  {
    goto LABEL_19;
  }

  v22 = v16[1];
LABEL_21:
  v59[0] = a2;
  v59[1] = v22;
  v54[0] = mlir::ShapedType::getElementType(v59);
  if (mlir::Type::isSignedInteger(v54, 4) || mlir::Type::isSignedInteger(v54, 8) || mlir::Type::isSignedInteger(v54, 16) || mlir::Type::isSignedInteger(v54, 32) || mlir::Type::isSignedInteger(v54, 64) || mlir::Type::isUnsignedInteger(v54, 4) || mlir::Type::isUnsignedInteger(v54, 8) || mlir::Type::isUnsignedInteger(v54, 16) || mlir::Type::isUnsignedInteger(v54, 32) || mlir::Type::isUnsignedInteger(v54, 64))
  {
    return 1;
  }

  v23 = 1;
  if (mlir::Type::isSignlessInteger(v54, 1))
  {
    return v23;
  }

LABEL_33:
  v55 = 261;
  v54[0] = a3;
  v54[1] = a4;
  mlir::Operation::emitOpError(v59, this, v54);
  if (v59[0])
  {
    v56 = 3;
    v57 = " #";
    v58 = 2;
    v24 = &v56;
    v25 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v50 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v25 = v60;
        v24 = (v60 + v50);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v24 = &v56;
        v25 = v60;
      }
    }

    v26 = &v25[24 * v61];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v61;
    if (v59[0])
    {
      v56 = 5;
      v57 = a5;
      v29 = &v56;
      v30 = v60;
      if (v28 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v28 > &v56)
        {
          v51 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v30 = v60;
          v29 = (v60 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v28 + 1, 24);
          v29 = &v56;
          v30 = v60;
        }
      }

      v31 = &v30[24 * v61];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      v33 = ++v61;
      if (v59[0])
      {
        v56 = 3;
        v57 = " must be CoreML Tensor of 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or Boolean type. values, but got ";
        v58 = 128;
        v34 = &v56;
        v35 = v60;
        if (v33 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v33 > &v56)
          {
            v52 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v35 = v60;
            v34 = (v60 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v33 + 1, 24);
            v34 = &v56;
            v35 = v60;
          }
        }

        v36 = &v35[24 * v61];
        v37 = *v34;
        *(v36 + 2) = *(v34 + 2);
        *v36 = v37;
        ++v61;
        if (v59[0])
        {
          v38 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, a2);
          v39 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v53 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v39 = v60;
              v38 = (v60 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v38 = &v56;
              v39 = v60;
            }
          }

          v40 = &v39[24 * v61];
          v41 = *v38;
          *(v40 + 2) = *(v38 + 2);
          *v40 = v41;
          ++v61;
        }
      }
    }
  }

  v23 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v59);
  if (v59[0])
  {
    mlir::InFlightDiagnostic::report(v59);
  }

  if (v69 == 1)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v67;
      v44 = __p;
      if (v67 != __p)
      {
        do
        {
          v43 = sub_10005BEF4(v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v67 = v42;
      operator delete(v44);
    }

    v45 = v64;
    if (v64)
    {
      v46 = v65;
      v47 = v64;
      if (v65 != v64)
      {
        do
        {
          v48 = *--v46;
          *v46 = 0;
          if (v48)
          {
            operator delete[]();
          }
        }

        while (v46 != v45);
        v47 = v64;
      }

      v65 = v45;
      operator delete(v47);
    }

    if (v60 != v63)
    {
      free(v60);
    }
  }

  return v23;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseOrOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022E658(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10022E658(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022E658(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::BitwiseXorOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_10022E658(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !sub_10022E658(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_10022E658(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v5 = mlir::getElementTypeOrSelf(*this - 16);
    if (v5 == mlir::getElementTypeOrSelf(*(*(*this + 9) + 56)))
    {
      return 1;
    }

    v20[0] = "failed to verify that Result 0 element type must match element type of operand 1.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v15 = __p;
      if (__p)
      {
        v16 = v28;
        v17 = __p;
        if (v28 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v28 = v15;
        operator delete(v17);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v18 = v26;
      v13 = v25;
      if (v26 == v25)
      {
LABEL_45:
        v26 = v11;
        operator delete(v13);
        result = v7;
LABEL_46:
        if (v23 != &v24)
        {
          free(v23);
          return v7;
        }

        return result;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_44:
      v13 = v25;
      goto LABEL_45;
    }
  }

  else
  {
    v20[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
    v21 = 259;
    mlir::OpState::emitOpError(this, v20, v22);
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    v7 = result;
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
      result = v7;
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
        result = v7;
      }

      v8 = __p;
      if (__p)
      {
        v9 = v28;
        v10 = __p;
        if (v28 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v28 = v8;
        operator delete(v10);
        result = v7;
      }

      v11 = v25;
      if (!v25)
      {
        goto LABEL_46;
      }

      v12 = v26;
      v13 = v25;
      if (v26 == v25)
      {
        goto LABEL_45;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_44;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastInDimsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*this - 16);
  if (ElementTypeOrSelf == mlir::getElementTypeOrSelf(*(*(*this + 9) + 24)))
  {
    v25 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v28[0] = sub_100227728(&v25);
    v28[1] = v5;
    mlir::ShapedType::getShape(v28);
    v7 = v6;
    v24 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
    v26[0] = sub_100227728(&v24);
    v26[1] = v8;
    mlir::ShapedType::getShape(v26);
    if (v7 == v9)
    {
      return 1;
    }

    v26[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
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

      v19 = __p;
      if (__p)
      {
        v20 = v34;
        v21 = __p;
        if (v34 != __p)
        {
          do
          {
            v20 = sub_10005BEF4(v20 - 1);
          }

          while (v20 != v19);
          v21 = __p;
        }

        v34 = v19;
        operator delete(v21);
        result = v11;
      }

      v15 = v31;
      if (!v31)
      {
        goto LABEL_47;
      }

      v22 = v32;
      v17 = v31;
      if (v32 == v31)
      {
LABEL_46:
        v32 = v15;
        operator delete(v17);
        result = v11;
LABEL_47:
        if (v29 != &v30)
        {
          free(v29);
          return v11;
        }

        return result;
      }

      do
      {
        v23 = *--v22;
        *v22 = 0;
        if (v23)
        {
          operator delete[]();
        }
      }

      while (v22 != v15);
LABEL_45:
      v17 = v31;
      goto LABEL_46;
    }
  }

  else
  {
    v26[0] = "failed to verify that Result 0 element type must match element type of operand 0.";
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
            v13 = sub_10005BEF4(v13 - 1);
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
        goto LABEL_47;
      }

      v16 = v32;
      v17 = v31;
      if (v32 == v31)
      {
        goto LABEL_46;
      }

      do
      {
        v18 = *--v16;
        *v16 = 0;
        if (v18)
        {
          operator delete[]();
        }
      }

      while (v16 != v15);
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::BroadcastShapesOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100224F84(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_100224F84(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

BOOL mlir::ODIE::Compiler::CoreML::BroadcastToOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || (sub_100224F84(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if (!v6)
  {
    a3(&v75, a4);
    if (v75)
    {
      LODWORD(v72) = 3;
      v73 = "expected DictionaryAttr to set properties";
      v74 = 41;
      v25 = &v72;
      v26 = v77;
      if (v78 >= v79)
      {
        if (v77 <= &v72 && v77 + 24 * v78 > &v72)
        {
          v64 = &v72 - v77;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v26 = v77;
          v25 = (v77 + v64);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
          v25 = &v72;
          v26 = v77;
        }
      }

      v27 = &v26[24 * v78];
      v28 = *v25;
      *(v27 + 2) = v25[2];
      *v27 = v28;
      ++v78;
      if (v75)
      {
        mlir::InFlightDiagnostic::report(&v75);
      }
    }

    if (v86 != 1)
    {
      return 0;
    }

    if (v85 != &v86)
    {
      free(v85);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v84;
      v31 = __p;
      if (v84 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v84 = v29;
      operator delete(v31);
    }

    v21 = v81;
    if (!v81)
    {
      goto LABEL_70;
    }

    v32 = v82;
    v23 = v81;
    if (v82 == v81)
    {
LABEL_69:
      v82 = v21;
      operator delete(v23);
LABEL_70:
      if (v77 != v80)
      {
        free(v77);
      }

      return 0;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
LABEL_68:
    v23 = v81;
    goto LABEL_69;
  }

  v8 = mlir::DictionaryAttr::get(&v71, "arg_attrs", 9uLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
    {
      v9 = v8;
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 54;
        v10 = &v72;
        v11 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v65 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v11 = v77;
            v10 = (v77 + v65);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v10 = &v72;
            v11 = v77;
          }
        }

        v12 = &v11[24 * v78];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v78;
        if (v75)
        {
          v14 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v9);
          v15 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v66 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v15 = v77;
              v14 = (v77 + v66);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v14 = &v72;
              v15 = v77;
            }
          }

          v16 = &v15[24 * v78];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v84;
        v20 = __p;
        if (v84 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v84 = v18;
        operator delete(v20);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v22 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v71, "asShim", 6uLL);
  if (v34)
  {
    if (*(*v34 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
    {
      v35 = v34;
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 51;
        v36 = &v72;
        v37 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v67 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v37 = v77;
            v36 = (v77 + v67);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v36 = &v72;
            v37 = v77;
          }
        }

        v38 = &v37[24 * v78];
        v39 = *v36;
        *(v38 + 2) = v36[2];
        *v38 = v39;
        ++v78;
        if (v75)
        {
          v40 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v35);
          v41 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v68 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v41 = v77;
              v40 = (v77 + v68);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v40 = &v72;
              v41 = v77;
            }
          }

          v42 = &v41[24 * v78];
          v43 = *v40;
          *(v42 + 2) = v40[2];
          *v42 = v43;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if ((v86 & 1) == 0)
      {
        return 0;
      }

      if (v85 != &v86)
      {
        free(v85);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v84;
        v46 = __p;
        if (v84 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v84 = v44;
        operator delete(v46);
      }

      v21 = v81;
      if (!v81)
      {
        goto LABEL_70;
      }

      v47 = v82;
      v23 = v81;
      if (v82 == v81)
      {
        goto LABEL_69;
      }

      do
      {
        v48 = *--v47;
        *v47 = 0;
        if (v48)
        {
          operator delete[]();
        }
      }

      while (v47 != v21);
      goto LABEL_68;
    }

    a1[1] = v34;
  }

  v49 = mlir::DictionaryAttr::get(&v71, "callee", 6uLL);
  if (v49)
  {
    v50 = v49;
    v51 = sub_10006BC04(v49);
    if (!v51)
    {
      a3(&v75, a4);
      if (v75)
      {
        LODWORD(v72) = 3;
        v74 = 51;
        v55 = &v72;
        v56 = v77;
        if (v78 >= v79)
        {
          if (v77 <= &v72 && v77 + 24 * v78 > &v72)
          {
            v69 = &v72 - v77;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v56 = v77;
            v55 = (v77 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
            v55 = &v72;
            v56 = v77;
          }
        }

        v57 = &v56[24 * v78];
        v58 = *v55;
        *(v57 + 2) = v55[2];
        *v57 = v58;
        ++v78;
        if (v75)
        {
          v59 = &v72;
          mlir::DiagnosticArgument::DiagnosticArgument(&v72, v50);
          v60 = v77;
          if (v78 >= v79)
          {
            if (v77 <= &v72 && v77 + 24 * v78 > &v72)
            {
              v70 = &v72 - v77;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v60 = v77;
              v59 = (v77 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v77, v80, v78 + 1, 24);
              v59 = &v72;
              v60 = v77;
            }
          }

          v61 = &v60[24 * v78];
          v62 = *v59;
          *(v61 + 2) = v59[2];
          *v61 = v62;
          ++v78;
          if (v75)
          {
            mlir::InFlightDiagnostic::report(&v75);
          }
        }
      }

      if (v86 == 1)
      {
        sub_10005BE10(&v76);
      }

      return 0;
    }

    a1[2] = v51;
    a1[3] = v52;
  }

  v53 = mlir::DictionaryAttr::get(&v71, "res_attrs", 9uLL);
  v72 = v53;
  if (!v53)
  {
    return 1;
  }

  if (*(*v53 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    a1[4] = v53;
    return 1;
  }

  a3(&v75, a4);
  sub_100066118(v54, &v72);
  sub_10006296C(&v75);
  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v34 = a1;
  v35 = v37;
  v36 = 0x300000000;
  if (!*a2)
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v34, "arg_attrs", 9, *a2);
  v5 = v36;
  if (v36 >= HIDWORD(v36))
  {
    v26 = NamedAttr;
    v27 = v4;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
    v4 = v27;
    NamedAttr = v26;
    v5 = v36;
  }

  v6 = (v35 + 16 * v5);
  *v6 = NamedAttr;
  v6[1] = v4;
  v7 = v36 + 1;
  LODWORD(v36) = v36 + 1;
  v8 = a2[1];
  if (v8)
  {
LABEL_7:
    v9 = mlir::Builder::getNamedAttr(&v34, "asShim", 6, v8);
    v11 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v28 = v9;
      v29 = v10;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v10 = v29;
      v9 = v28;
      v11 = v36;
    }

    v12 = (v35 + 16 * v11);
    *v12 = v9;
    v12[1] = v10;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

LABEL_10:
  v13 = a2[2];
  if (v13)
  {
    v14 = mlir::Builder::getNamedAttr(&v34, "callee", 6, v13);
    v16 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v30 = v14;
      v31 = v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v15 = v31;
      v14 = v30;
      v16 = v36;
    }

    v17 = (v35 + 16 * v16);
    *v17 = v14;
    v17[1] = v15;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v18 = a2[4];
  if (v18)
  {
    v19 = mlir::Builder::getNamedAttr(&v34, "res_attrs", 9, v18);
    v21 = v36;
    if (v36 >= HIDWORD(v36))
    {
      v32 = v19;
      v33 = v20;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v35, v37, v36 + 1, 16);
      v20 = v33;
      v19 = v32;
      v21 = v36;
    }

    v22 = (v35 + 16 * v21);
    *v22 = v19;
    v22[1] = v20;
    v7 = v36 + 1;
    LODWORD(v36) = v36 + 1;
  }

  v23 = v35;
  if (!v7)
  {
    DictionaryAttr = 0;
    if (v35 == v37)
    {
      return DictionaryAttr;
    }

    goto LABEL_20;
  }

  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v34, v35, v7);
  v23 = v35;
  if (v35 != v37)
  {
LABEL_20:
    free(v23);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::CallOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = HIDWORD(a1[2]);
  v8 = 0x9DDFEA08EB382D69 * ((8 * a1[2] - 0xAE502812AA7333) ^ v7);
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) ^ ((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 47));
  v10 = HIDWORD(a1[4]);
  v11 = 0x9DDFEA08EB382D69 * ((8 * a1[4] - 0xAE502812AA7333) ^ v10);
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  v21 = 0;
  v22 = 0xFF51AFD7ED558CCDLL;
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  __src[0] = v3;
  __src[1] = v6;
  v16 = 0;
  v13 = sub_10002DCBC(__src, &v16, v19, v20, v9);
  v17 = v16;
  v14 = sub_10002DCBC(__src, &v17, v13, v20, v12);
  return sub_10002D330(__src, v17, v14, v20);
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::getInherentAttr(int a1, void *a2, _DWORD *__s1, size_t __n)
{
  if (__n == 6)
  {
    if (!memcmp(__s1, "asShim", 6uLL))
    {
      return a2[1];
    }

    if (*__s1 == 1819042147 && *(__s1 + 2) == 25957)
    {
      return a2[2];
    }

    return 0;
  }

  if (__n != 9)
  {
    return 0;
  }

  if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
  {
    return *a2;
  }

  if (memcmp(__s1, "res_attrs", 9uLL))
  {
    return 0;
  }

  return a2[4];
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::setInherentAttr(uint64_t result, _DWORD *__s1, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 6)
  {
    result = memcmp(__s1, "asShim", 6uLL);
    if (result)
    {
      if (*__s1 == 1819042147 && *(__s1 + 2) == 25957)
      {
        if (a4)
        {
          result = sub_10006BC04(a4);
          v5[2] = result;
          v5[3] = v9;
        }

        else
        {
          result = 0;
          v5[2] = 0;
          v5[3] = 0;
        }
      }
    }

    else if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      v5[1] = v11;
    }

    else
    {
      v5[1] = 0;
    }
  }

  else if (a3 == 9)
  {
    if (*__s1 == 0x727474615F677261 && *(__s1 + 8) == 115)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
        {
          v10 = a4;
        }

        else
        {
          v10 = 0;
        }

        *result = v10;
      }

      else
      {
        *result = 0;
      }
    }

    else
    {
      result = memcmp(__s1, "res_attrs", 9uLL);
      if (!result)
      {
        if (a4)
        {
          if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
          {
            v12 = a4;
          }

          else
          {
            v12 = 0;
          }

          v5[4] = v12;
        }

        else
        {
          v5[4] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CallOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "arg_attrs", 9, *a2);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "asShim", 6, v6);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v7 = a2[2];
  if (v7)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "callee", 6, v7);
    result = mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  v8 = a2[4];
  if (v8)
  {
    mlir::NamedAttribute::NamedAttribute(&v9, "res_attrs", 9, v8);
    return mlir::NamedAttrList::push_back(a3, v9, v10);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100230B68(v8, "arg_attrs", 9, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_100230F04(v9, "asShim", 6, a3, a4) & 1) != 0)
    {
      v10 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 16));
      if (!v10 || (sub_100231240(v10, "callee", 6, a3, a4) & 1) != 0)
      {
        v11 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 24));
        if (!v11 || (sub_100230B68(v11, "res_attrs", 9, a3, a4) & 1) != 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100230B68(uint64_t a1, void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  if (*(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ArrayAttr,void>::id)
  {
    v36 = a1;
    v23 = a4;
    v24 = a5;
    Value = mlir::ArrayAttr::getValue(&v36);
    v26 = mlir::ArrayAttr::getValue(&v36);
    v28 = v26 + 8 * v27;
    if (v28 != Value)
    {
      a5 = v24;
      a4 = v23;
      while (*Value && *(**Value + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        Value += 8;
        if (Value == v28)
        {
          return 1;
        }
      }

      goto LABEL_3;
    }

    return 1;
  }

LABEL_3:
  a4(&v36, a5);
  if (v36)
  {
    LODWORD(v32) = 3;
    v33 = "attribute '";
    v34 = 11;
    v7 = &v32;
    v8 = v38;
    if (v39 >= v40)
    {
      if (v38 <= &v32 && v38 + 24 * v39 > &v32)
      {
        v30 = &v32 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v8 = v38;
        v7 = (v38 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
        v7 = &v32;
        v8 = v38;
      }
    }

    v9 = &v8[24 * v39];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v39;
    if (v36)
    {
      v35 = 261;
      v32 = a2;
      v33 = a3;
      mlir::Diagnostic::operator<<(&v37, &v32);
      if (v36)
      {
        LODWORD(v32) = 3;
        v33 = "' failed to satisfy constraint: Array of dictionary attributes";
        v34 = 62;
        v11 = &v32;
        v12 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v32 && v38 + 24 * v39 > &v32)
          {
            v31 = &v32 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = v38;
            v11 = (v38 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v11 = &v32;
            v12 = v38;
          }
        }

        v13 = &v12[24 * v39];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v39;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v45;
      v18 = __p;
      if (v45 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v45 = v16;
      operator delete(v18);
    }

    v19 = v42;
    if (v42)
    {
      v20 = v43;
      v21 = v42;
      if (v43 != v42)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v42;
      }

      v43 = v19;
      operator delete(v21);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v15;
}

uint64_t sub_100230F04(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v27 = "' failed to satisfy constraint: unit attribute";
        v28 = 46;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

uint64_t sub_100231240(uint64_t *a1, void **a2, const char *a3, void (*a4)(void *__return_ptr, void), uint64_t a5)
{
  if (!a1)
  {
    return 1;
  }

  v7 = *a1;
  {
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v37 = a4;
    v17 = a5;
    sub_1002A61F4();
    a5 = v17;
    a4 = v37;
    v8 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (!v10)
    {
      goto LABEL_14;
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
  if (v11 != &v9[2 * v10] && *v11 == v8 && v11[1])
  {
    return 1;
  }

LABEL_14:
  a4(&v42, a5);
  if (v42)
  {
    LODWORD(v38) = 3;
    v39 = "attribute '";
    v40 = 11;
    v18 = &v38;
    v19 = v44;
    if (v45 >= v46)
    {
      if (v44 <= &v38 && v44 + 24 * v45 > &v38)
      {
        v35 = &v38 - v44;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v19 = v44;
        v18 = (v44 + v35);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
        v18 = &v38;
        v19 = v44;
      }
    }

    v20 = &v19[24 * v45];
    v21 = *v18;
    *(v20 + 2) = v18[2];
    *v20 = v21;
    ++v45;
    if (v42)
    {
      v41 = 261;
      v38 = a2;
      v39 = a3;
      mlir::Diagnostic::operator<<(&v43, &v38);
      if (v42)
      {
        LODWORD(v38) = 3;
        v39 = "' failed to satisfy constraint: TypedAttr instance";
        v40 = 50;
        v22 = &v38;
        v23 = v44;
        if (v45 >= v46)
        {
          if (v44 <= &v38 && v44 + 24 * v45 > &v38)
          {
            v36 = &v38 - v44;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v23 = v44;
            v22 = (v44 + v36);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v47, v45 + 1, 24);
            v22 = &v38;
            v23 = v44;
          }
        }

        v24 = &v23[24 * v45];
        v25 = *v22;
        *(v24 + 2) = v22[2];
        *v24 = v25;
        ++v45;
      }
    }
  }

  v26 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v42);
  if (v42)
  {
    mlir::InFlightDiagnostic::report(&v42);
  }

  if (v53 == 1)
  {
    if (v52 != &v53)
    {
      free(v52);
    }

    v27 = __p;
    if (__p)
    {
      v28 = v51;
      v29 = __p;
      if (v51 != __p)
      {
        do
        {
          v28 = sub_10005BEF4(v28 - 1);
        }

        while (v28 != v27);
        v29 = __p;
      }

      v51 = v27;
      operator delete(v29);
    }

    v30 = v48;
    if (v48)
    {
      v31 = v49;
      v32 = v48;
      if (v49 != v48)
      {
        do
        {
          v33 = *--v31;
          *v31 = 0;
          if (v33)
          {
            operator delete[]();
          }
        }

        while (v31 != v30);
        v32 = v48;
      }

      v49 = v30;
      operator delete(v32);
    }

    if (v44 != v47)
    {
      free(v44);
    }
  }

  return v26;
}

BOOL mlir::ODIE::Compiler::CoreML::CallOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = (v3 + 64);
  v5 = v6;
  v7 = v4[2];
  if (v7)
  {
    v8 = v4[1];
    v9 = v4[4];
    v24[0] = v2;
    if (sub_100231240(v7, "callee", 6, sub_10026D034, v24) & 1) != 0 && (v24[0] = *this, (sub_100230F04(v8, "asShim", 6, sub_10026D064, v24)) && (v24[0] = *this, (sub_100230B68(v5, "arg_attrs", 9, sub_10026D094, v24)))
    {
      v24[0] = *this;
      if (sub_100230B68(v9, "res_attrs", 9, sub_10026D094, v24))
      {
        v10 = *(*this + 9);
        if (*(*this + 9))
        {
          v11 = *this - 16;
        }

        else
        {
          v11 = 0;
        }

        if (v10)
        {
          for (i = 0; i != v10; ++i)
          {
            mlir::detail::OpResultImpl::getNextResultAtOffset(v11, i);
            v13 = 1;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v22 = "requires attribute 'callee'";
    v23 = 259;
    mlir::OpState::emitOpError(this, &v22, v24);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v24[0])
    {
      mlir::InFlightDiagnostic::report(v24);
    }

    if (v32 == 1)
    {
      if (v31 != &v32)
      {
        free(v31);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v30;
        v16 = __p;
        if (v30 != __p)
        {
          do
          {
            v15 = sub_10005BEF4(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v30 = v14;
        operator delete(v16);
      }

      v17 = v27;
      if (v27)
      {
        v18 = v28;
        v19 = v27;
        if (v28 != v27)
        {
          do
          {
            v20 = *--v18;
            *v18 = 0;
            if (v20)
            {
              operator delete[]();
            }
          }

          while (v18 != v17);
          v19 = v27;
        }

        v28 = v17;
        operator delete(v19);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v13;
}

void mlir::ODIE::Compiler::CoreML::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4;
  mlir::OperationState::addOperands(a2, &v7, 1uLL);
  v6 = *(a2 + 72);
  if (v6 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v6 + 1, 8);
    LODWORD(v6) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v6) = a3;
  ++*(a2 + 72);
}

BOOL mlir::ODIE::Compiler::CoreML::CastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!sub_1002241FC(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
  {
    return 0;
  }

  v2 = *(*this + 9) ? *this - 16 : 0;
  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  v21 = (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v22[0] = sub_100227728(&v21);
  v22[1] = v4;
  mlir::ShapedType::getShape(v22);
  v6 = v5;
  v20 = (*(*this - 1) & 0xFFFFFFFFFFFFFFF8);
  v18[0] = sub_100227728(&v20);
  v18[1] = v7;
  mlir::ShapedType::getShape(v18);
  if (v6 == v8)
  {
    return 1;
  }

  v18[0] = "failed to verify that Result 0 and operand 0 must have the same rank.";
  v19 = 259;
  mlir::OpState::emitOpError(this, v18, v22);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
  v10 = result;
  if (v22[0])
  {
    mlir::InFlightDiagnostic::report(v22);
    result = v10;
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
      result = v10;
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
          v12 = sub_10005BEF4(v12 - 1);
        }

        while (v12 != v11);
        v13 = __p;
      }

      v28 = v11;
      operator delete(v13);
      result = v10;
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
          v17 = *--v15;
          *v15 = 0;
          if (v17)
          {
            operator delete[]();
          }
        }

        while (v15 != v14);
        v16 = v25;
      }

      v26 = v14;
      operator delete(v16);
      result = v10;
    }

    if (v23 != &v24)
    {
      free(v23);
      return v10;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::CastOp::parse(mlir::ODIE::Compiler::CoreML::CastOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10[0] = v11;
  v10[1] = 1;
  v8[1] = 1;
  v9 = 0;
  v8[0] = &v9;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    return 0;
  }

  v13[0] = 0;
  if (!sub_10027204C(this, v13))
  {
    return 0;
  }

  v9 = v13[0];
  v14 = 257;
  if (((*(*this + 400))(this, "to", 2, v13) & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (!sub_10027204C(this, &v7))
  {
    return 0;
  }

  v13[0] = v7;
  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  sub_1001EFDBC(a2, v13, 1);
  return sub_10022A240(this, v10, v8, v5, a2 + 16) & 1;
}

void mlir::ODIE::Compiler::CoreML::CastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
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
  v9 = v8[4];
  if (v8[3] == v9)
  {
    llvm::raw_ostream::write(v8, ":", 1uLL);
  }

  else
  {
    *v9 = 58;
    ++v8[4];
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

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v14 = (*(*a2 + 16))(a2);
  v15 = v14[4];
  if (v14[3] - v15 > 1uLL)
  {
    *v15 = 28532;
    v14[4] += 2;
  }

  else
  {
    llvm::raw_ostream::write(v14, "to", 2uLL);
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

  if (*(*this + 9))
  {
    v18 = *this - 16;
  }

  else
  {
    v18 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, 0);
  (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v23 = v25;
  v24 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v21, v23, v24);
  if (v23 != v25)
  {
    free(v23);
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v55 = v6;
  if (!v6)
  {
    a3(v59, a4);
    if (v59[0])
    {
      v56 = 3;
      v57 = "expected DictionaryAttr to set properties";
      v58 = 41;
      v25 = &v56;
      v26 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v50 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v26 = v60;
          v25 = (v60 + v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v25 = &v56;
          v26 = v60;
        }
      }

      v27 = &v26[24 * v61];
      v28 = *v25;
      *(v27 + 2) = *(v25 + 2);
      *v27 = v28;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }

    if (v69 != 1)
    {
      return 0;
    }

    if (v68 != &v69)
    {
      free(v68);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v67;
      v31 = __p;
      if (v67 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v67 = v29;
      operator delete(v31);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v32 = v65;
    v23 = v64;
    if (v65 == v64)
    {
      goto LABEL_69;
    }

    do
    {
      v33 = *--v32;
      *v32 = 0;
      if (v33)
      {
        operator delete[]();
      }
    }

    while (v32 != v21);
    goto LABEL_68;
  }

  v8 = mlir::DictionaryAttr::get(&v55, "param_decls", 0xBuLL);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
    {
      v9 = v8;
      a3(v59, a4);
      if (v59[0])
      {
        v56 = 3;
        v58 = 56;
        v10 = &v56;
        v11 = v60;
        if (v61 >= v62)
        {
          if (v60 <= &v56 && v60 + 24 * v61 > &v56)
          {
            v51 = &v56 - v60;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v11 = v60;
            v10 = (v60 + v51);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
            v10 = &v56;
            v11 = v60;
          }
        }

        v12 = &v11[24 * v61];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v61;
        if (v59[0])
        {
          v14 = &v56;
          mlir::DiagnosticArgument::DiagnosticArgument(&v56, v9);
          v15 = v60;
          if (v61 >= v62)
          {
            if (v60 <= &v56 && v60 + 24 * v61 > &v56)
            {
              v52 = &v56 - v60;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v15 = v60;
              v14 = (v60 + v52);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
              v14 = &v56;
              v15 = v60;
            }
          }

          v16 = &v15[24 * v61];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v61;
          if (v59[0])
          {
            mlir::InFlightDiagnostic::report(v59);
          }
        }
      }

      if ((v69 & 1) == 0)
      {
        return 0;
      }

      if (v68 != &v69)
      {
        free(v68);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v67;
        v20 = __p;
        if (v67 != __p)
        {
          do
          {
            v19 = sub_10005BEF4(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v67 = v18;
        operator delete(v20);
      }

      v21 = v64;
      if (!v64)
      {
        goto LABEL_70;
      }

      v22 = v65;
      v23 = v64;
      if (v65 == v64)
      {
        goto LABEL_69;
      }

      do
      {
        v24 = *--v22;
        *v22 = 0;
        if (v24)
        {
          operator delete[]();
        }
      }

      while (v22 != v21);
      goto LABEL_68;
    }

    *a1 = v8;
  }

  v34 = mlir::DictionaryAttr::get(&v55, "sym_name", 8uLL);
  if (!v34)
  {
    return 1;
  }

  if (*(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
  {
    a1[1] = v34;
    return 1;
  }

  v35 = v34;
  a3(v59, a4);
  if (v59[0])
  {
    v56 = 3;
    v58 = 53;
    v36 = &v56;
    v37 = v60;
    if (v61 >= v62)
    {
      if (v60 <= &v56 && v60 + 24 * v61 > &v56)
      {
        v53 = &v56 - v60;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v37 = v60;
        v36 = (v60 + v53);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
        v36 = &v56;
        v37 = v60;
      }
    }

    v38 = &v37[24 * v61];
    v39 = *v36;
    *(v38 + 2) = *(v36 + 2);
    *v38 = v39;
    ++v61;
    if (v59[0])
    {
      v40 = &v56;
      mlir::DiagnosticArgument::DiagnosticArgument(&v56, v35);
      v41 = v60;
      if (v61 >= v62)
      {
        if (v60 <= &v56 && v60 + 24 * v61 > &v56)
        {
          v54 = &v56 - v60;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v41 = v60;
          v40 = (v60 + v54);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v60, v63, v61 + 1, 24);
          v40 = &v56;
          v41 = v60;
        }
      }

      v42 = &v41[24 * v61];
      v43 = *v40;
      *(v42 + 2) = *(v40 + 2);
      *v42 = v43;
      ++v61;
      if (v59[0])
      {
        mlir::InFlightDiagnostic::report(v59);
      }
    }
  }

  if (v69)
  {
    if (v68 != &v69)
    {
      free(v68);
    }

    v44 = __p;
    if (__p)
    {
      v45 = v67;
      v46 = __p;
      if (v67 != __p)
      {
        do
        {
          v45 = sub_10005BEF4(v45 - 1);
        }

        while (v45 != v44);
        v46 = __p;
      }

      v67 = v44;
      operator delete(v46);
    }

    v21 = v64;
    if (!v64)
    {
      goto LABEL_70;
    }

    v47 = v65;
    v23 = v64;
    if (v65 == v64)
    {
LABEL_69:
      v65 = v21;
      operator delete(v23);
LABEL_70:
      if (v60 != v63)
      {
        free(v60);
      }

      return 0;
    }

    do
    {
      v48 = *--v47;
      *v47 = 0;
      if (v48)
      {
        operator delete[]();
      }
    }

    while (v47 != v21);
LABEL_68:
    v23 = v64;
    goto LABEL_69;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "param_decls", 0xB, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "sym_name", 8, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

unint64_t mlir::ODIE::Compiler::CoreML::ClassOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47));
  v4 = HIDWORD(a1[1]);
  v5 = 0x9DDFEA08EB382D69 * ((8 * a1[1] - 0xAE502812AA7333) ^ v4);
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v10 = 0;
  v11 = 0xFF51AFD7ED558CCDLL;
  __src[0] = v3;
  __src[1] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  return sub_10002D330(__src, 0, v8, v9);
}

unint64_t mlir::ODIE::Compiler::CoreML::ClassOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 != 8)
  {
    if (a4 == 11 && *a3 == 0x65645F6D61726170 && *(a3 + 3) == 0x736C6365645F6D61)
    {
      return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
    }

    return 0;
  }

  if (*a3 != 0x656D616E5F6D7973)
  {
    return 0;
  }

  return a2[1];
}

void *mlir::ODIE::Compiler::CoreML::ClassOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8)
  {
    if (*a2 == 0x656D616E5F6D7973)
    {
      if (a4)
      {
        if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::StringAttr,void>::id)
        {
          v5 = a4;
        }

        else
        {
          v5 = 0;
        }

        result[1] = v5;
      }

      else
      {
        result[1] = 0;
      }
    }
  }

  else if (a3 == 11 && *a2 == 0x65645F6D61726170 && *(a2 + 3) == 0x736C6365645F6D61)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
      {
        v6 = a4;
      }

      else
      {
        v6 = 0;
      }

      *result = v6;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "param_decls", 0xB, *a2);
    result = mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  v6 = a2[1];
  if (v6)
  {
    mlir::NamedAttribute::NamedAttribute(&v7, "sym_name", 8, v6);
    return mlir::NamedAttrList::push_back(a3, v7, v8);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::get(a2, **(a1 + 96));
  result = 0;
  if (!v8 || (sub_100232E78(v8, "param_decls", 0xB, a3, a4) & 1) != 0)
  {
    v9 = mlir::NamedAttrList::get(a2, *(*(a1 + 96) + 8));
    if (!v9 || (sub_10010DF98(v9, "sym_name", 8, a3, a4) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100232E78(uint64_t a1, void **a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr,void>::id)
  {
    return 1;
  }

  a4(&v30, a5);
  if (v30)
  {
    LODWORD(v26) = 3;
    v27 = "attribute '";
    v28 = 11;
    v7 = &v26;
    v8 = v32;
    if (v33 >= v34)
    {
      if (v32 <= &v26 && v32 + 24 * v33 > &v26)
      {
        v24 = &v26 - v32;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v8 = v32;
        v7 = (v32 + v24);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
        v7 = &v26;
        v8 = v32;
      }
    }

    v9 = &v8[24 * v33];
    v10 = *v7;
    *(v9 + 2) = v7[2];
    *v9 = v10;
    ++v33;
    if (v30)
    {
      v29 = 261;
      v26 = a2;
      v27 = a3;
      mlir::Diagnostic::operator<<(&v31, &v26);
      if (v30)
      {
        LODWORD(v26) = 3;
        v28 = 53;
        v11 = &v26;
        v12 = v32;
        if (v33 >= v34)
        {
          if (v32 <= &v26 && v32 + 24 * v33 > &v26)
          {
            v25 = &v26 - v32;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v12 = v32;
            v11 = (v32 + v25);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v32, v35, v33 + 1, 24);
            v11 = &v26;
            v12 = v32;
          }
        }

        v13 = &v12[24 * v33];
        v14 = *v11;
        *(v13 + 2) = v11[2];
        *v13 = v14;
        ++v33;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v30);
  if (v30)
  {
    mlir::InFlightDiagnostic::report(&v30);
  }

  if (v41 == 1)
  {
    if (v40 != &v41)
    {
      free(v40);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v39;
      v18 = __p;
      if (v39 != __p)
      {
        do
        {
          v17 = sub_10005BEF4(v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v39 = v16;
      operator delete(v18);
    }

    v19 = v36;
    if (v36)
    {
      v20 = v37;
      v21 = v36;
      if (v37 != v36)
      {
        do
        {
          v22 = *--v20;
          *v20 = 0;
          if (v22)
          {
            operator delete[]();
          }
        }

        while (v20 != v19);
        v21 = v36;
      }

      v37 = v19;
      operator delete(v21);
    }

    if (v32 != v35)
    {
      free(v32);
    }
  }

  return v15;
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (!v3)
  {
    operator new();
  }

  if (sub_1001F2324(a1, *(a2 + 256)))
  {
    return sub_100119594(a1, (v3 + 8)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::writeProperties(uint64_t a1, uint64_t a2)
{
  v3 = *a1 + 16 * ((*(*a1 + 44) >> 23) & 1);
  (*(*a2 + 16))(a2, *(v3 + 64));
  v4 = *(v3 + 72);
  v5 = *(*a2 + 16);

  return v5(a2, v4);
}

uint64_t mlir::ODIE::Compiler::CoreML::ClassOp::setParamDecls(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((*a1 + 24));
  result = mlir::ODIE::Compiler::CoreML::ParamDeclArrayAttr::get(Context, a2, a3);
  *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = result;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ClassOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *this + 16 * ((*(*this + 11) >> 23) & 1);
  v4 = *(v1 + 64);
  v2 = v1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v23[0] = *this;
      if (sub_10010DF98(v5, "sym_name", 8, sub_10026D0C4, v23) & 1) != 0 && (v23[0] = *this, (sub_100232E78(v3, "param_decls", 0xB, sub_10026D0F4, v23)))
      {
        return sub_10022D920(*this, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), "bodyRegion", 10, 0) & 1;
      }

      else
      {
        return 0;
      }
    }

    v21[0] = "requires attribute 'sym_name'";
    v22 = 259;
    mlir::OpState::emitOpError(this, v21, v23);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v29;
        v17 = __p;
        if (v29 != __p)
        {
          do
          {
            v16 = sub_10005BEF4(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v29 = v15;
        operator delete(v17);
      }

      v11 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }

      v18 = v27;
      v13 = v26;
      if (v27 == v26)
      {
LABEL_40:
        v27 = v11;
        operator delete(v13);
LABEL_41:
        if (v24 != &v25)
        {
          free(v24);
        }

        return v7;
      }

      do
      {
        v19 = *--v18;
        *v18 = 0;
        if (v19)
        {
          operator delete[]();
        }
      }

      while (v18 != v11);
LABEL_39:
      v13 = v26;
      goto LABEL_40;
    }
  }

  else
  {
    v21[0] = "requires attribute 'param_decls'";
    v22 = 259;
    mlir::OpState::emitOpError(this, v21, v23);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }

    if (v31 == 1)
    {
      if (v30 != &v31)
      {
        free(v30);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v29;
        v10 = __p;
        if (v29 != __p)
        {
          do
          {
            v9 = sub_10005BEF4(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v29 = v8;
        operator delete(v10);
      }

      v11 = v26;
      if (!v26)
      {
        goto LABEL_41;
      }

      v12 = v27;
      v13 = v26;
      if (v27 == v26)
      {
        goto LABEL_40;
      }

      do
      {
        v14 = *--v12;
        *v12 = 0;
        if (v14)
        {
          operator delete[]();
        }
      }

      while (v12 != v11);
      goto LABEL_39;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConcatOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_100226A34(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v3 = *(v2 + 17);
    v4 = v3 - 1;
    if (v3 == 1)
    {
      goto LABEL_98;
    }

    v5 = *(v2 + 9) + 32;
  }

  else
  {
    v4 = -1;
    v5 = 32;
  }

  v6 = 0;
  v7 = 1;
  do
  {
    v8 = *this;
    v9 = *(*(v5 + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = *v9;
    v11 = *(*v9 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      {
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_1002AAABC();
        v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
        v14 = *(v10 + 8);
        v15 = *(v10 + 16);
        if (!v15)
        {
          goto LABEL_25;
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
        v22 = v16[1];
LABEL_27:
        v68[0] = v9;
        v68[1] = v22;
        v60[0] = mlir::ShapedType::getElementType(v68);
        if (mlir::Type::isF16(v60) || mlir::Type::isF32(v60))
        {
          goto LABEL_7;
        }

        v23 = *(*v60[0] + 17);
        if (v23 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v60, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v60, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v60, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v60, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isSignedInteger(v60, 64))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v60, 4))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v60, 8))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v60, 16))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v60, 32))
        {
          goto LABEL_7;
        }

        if (mlir::Type::isUnsignedInteger(v60, 64))
        {
          goto LABEL_7;
        }

        if (*(*v60[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
        {
          v64 = v60[0];
          ElementType = mlir::ComplexType::getElementType(&v64);
          if (mlir::Type::isF16(&ElementType))
          {
            goto LABEL_7;
          }

          if (*(*v60[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
            v62 = v60[0];
            v63 = mlir::ComplexType::getElementType(&v62);
            if (mlir::Type::isF32(&v63))
            {
              goto LABEL_7;
            }
          }
        }

        if (mlir::Type::isSignlessInteger(v60, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_45;
      }

LABEL_25:
      v22 = 0;
      goto LABEL_27;
    }

LABEL_45:
    v61 = 261;
    v60[0] = "operand";
    v60[1] = 7;
    mlir::Operation::emitOpError(v68, v8, v60);
    if (v68[0])
    {
      LODWORD(ElementType) = 3;
      v66 = " #";
      v67 = 2;
      v25 = v69;
      if (v70 >= v71)
      {
        if (v69 <= &ElementType && v69 + 24 * v70 > &ElementType)
        {
          v51 = &ElementType - v69;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
          v25 = v69;
          p_ElementType = (v69 + v51);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
          p_ElementType = &ElementType;
          v25 = v69;
        }
      }

      else
      {
        p_ElementType = &ElementType;
      }

      v27 = &v25[24 * v70];
      v28 = *p_ElementType;
      *(v27 + 2) = p_ElementType[2];
      *v27 = v28;
      v29 = ++v70;
      if (v68[0])
      {
        LODWORD(ElementType) = 5;
        v66 = v7;
        v30 = v69;
        if (v29 >= v71)
        {
          if (v69 <= &ElementType && v69 + 24 * v29 > &ElementType)
          {
            v52 = &ElementType - v69;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v29 + 1, 24);
            v30 = v69;
            v31 = (v69 + v52);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v29 + 1, 24);
            v31 = &ElementType;
            v30 = v69;
          }
        }

        else
        {
          v31 = &ElementType;
        }

        v32 = &v30[24 * v70];
        v33 = *v31;
        *(v32 + 2) = v31[2];
        *v32 = v33;
        v34 = ++v70;
        if (v68[0])
        {
          LODWORD(ElementType) = 3;
          v66 = " must be variadic of tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or 4/8/16/32/64-bit signed integer or 4/8/16/32/64-bit unsigned integer or complex type with 16-bit float elements or complex type with 32-bit float elements or Boolean type. values, but got ";
          v67 = 283;
          v35 = v69;
          if (v34 >= v71)
          {
            if (v69 <= &ElementType && v69 + 24 * v34 > &ElementType)
            {
              v53 = &ElementType - v69;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v34 + 1, 24);
              v35 = v69;
              v36 = (v69 + v53);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v34 + 1, 24);
              v36 = &ElementType;
              v35 = v69;
            }
          }

          else
          {
            v36 = &ElementType;
          }

          v37 = &v35[24 * v70];
          v38 = *v36;
          *(v37 + 2) = v36[2];
          *v37 = v38;
          ++v70;
          if (v68[0])
          {
            v39 = &ElementType;
            mlir::DiagnosticArgument::DiagnosticArgument(&ElementType, v9);
            v40 = v69;
            if (v70 >= v71)
            {
              if (v69 <= &ElementType && v69 + 24 * v70 > &ElementType)
              {
                v54 = &ElementType - v69;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                v40 = v69;
                v39 = (v69 + v54);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v72, v70 + 1, 24);
                v39 = &ElementType;
                v40 = v69;
              }
            }

            v41 = &v40[24 * v70];
            v42 = *v39;
            *(v41 + 2) = v39[2];
            *v41 = v42;
            ++v70;
          }
        }
      }
    }

    v43 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v68);
    if (v68[0])
    {
      mlir::InFlightDiagnostic::report(v68);
    }

    if (v78 == 1)
    {
      if (v77 != &v78)
      {
        free(v77);
      }

      v44 = __p;
      if (__p)
      {
        v45 = v76;
        v46 = __p;
        if (v76 != __p)
        {
          do
          {
            v45 = sub_10005BEF4(v45 - 1);
          }

          while (v45 != v44);
          v46 = __p;
        }

        v76 = v44;
        operator delete(v46);
      }

      v47 = v73;
      if (v73)
      {
        v48 = v74;
        v49 = v73;
        if (v74 != v73)
        {
          do
          {
            v50 = *--v48;
            *v48 = 0;
            if (v50)
            {
              operator delete[]();
            }
          }

          while (v48 != v47);
          v49 = v73;
        }

        v74 = v47;
        operator delete(v49);
      }

      if (v69 != v72)
      {
        free(v69);
      }
    }

    if (!v43)
    {
      return 0;
    }

LABEL_7:
    ++v7;
    ++v6;
  }

  while (v6 != v4);
  v2 = *this;
LABEL_98:
  v55 = *(v2 + 9);
  v56 = v2 - 16;
  if (v55)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v57, 0);
  if (!sub_1002241FC(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0))
  {
    return 0;
  }

  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) > 1u)
  {
    return 1;
  }

  sub_1002AB1CC(this, v68);
  return LOBYTE(v68[0]);
}

uint64_t mlir::ODIE::Compiler::CoreML::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t a1, uint64_t a2)
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

void *sub_100234010(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v13 = v2;
      v14 = result;
      sub_1002A61F4();
      result = v14;
      v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(void)::id;
      v4 = *(v13 + 8);
      v5 = *(v13 + 16);
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
    if (v6 != &v4[2 * v5] && *v6 == v3)
    {
      v12 = v6[1];
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::setPropertiesFromAttr(void *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v13 = &v41;
      v14 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = v45;
          v13 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v13 = &v41;
          v14 = v45;
        }
      }

      v15 = &v14[24 * v46];
      v16 = *v13;
      *(v15 + 2) = *(v13 + 2);
      *v15 = v16;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

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
          v18 = sub_10005BEF4(v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v52 = v17;
      operator delete(v19);
    }

    v20 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v21 = v50;
    v22 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v23 = *--v21;
      *v21 = 0;
      if (v23)
      {
        operator delete[]();
      }
    }

    while (v21 != v20);
    goto LABEL_47;
  }

  v8 = mlir::DictionaryAttr::get(&v40, "value", 5uLL);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = sub_10006BC04(v8);
  if (v10)
  {
    *a1 = v10;
    a1[1] = v11;
    return 1;
  }

  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 50;
    v24 = &v41;
    v25 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v25 = v45;
        v24 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v24 = &v41;
        v25 = v45;
      }
    }

    v26 = &v25[24 * v46];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    ++v46;
    if (v44[0])
    {
      v28 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v29 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v29 = v45;
          v28 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v28 = &v41;
          v29 = v45;
        }
      }

      v30 = &v29[24 * v46];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v52;
      v34 = __p;
      if (v52 != __p)
      {
        do
        {
          v33 = sub_10005BEF4(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v52 = v32;
      operator delete(v34);
    }

    v20 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v35 = v50;
    v22 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v20;
      operator delete(v22);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v36 = *--v35;
      *v35 = 0;
      if (v36)
      {
        operator delete[]();
      }
    }

    while (v35 != v20);
LABEL_47:
    v22 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "value", 5, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

unint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::computePropertiesHash(void *a1)
{
  v1 = HIDWORD(*a1);
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ v1);
  v3 = (0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) ^ ((0x9DDFEA08EB382D69 * (v1 ^ (v2 >> 47) ^ v2)) >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
  {
    return *a2 & 0xFFFFFFFFFFFFFF00 | *a2;
  }

  else
  {
    return 0;
  }
}

void *mlir::ODIE::Compiler::CoreML::ConstantOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    if (a4)
    {
      v5 = result;
      v6 = sub_10006BC04(a4);
      result = v5;
      *v5 = v6;
      v5[1] = v7;
    }

    else
    {
      *result = 0;
      result[1] = 0;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    mlir::NamedAttribute::NamedAttribute(v5, "value", 5, *a2);
    return mlir::NamedAttrList::push_back(a3, v5[0], v5[1]);
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::readProperties(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 256);
  if (!v2)
  {
    operator new();
  }

  return sub_100202150(a1, v2);
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 256);
  if (!v7)
  {
    operator new();
  }

  *v7 = a4;
  v7[1] = a5;
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, (a2 + 80), v8 + 1, 8);
    LODWORD(v8) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
}

BOOL mlir::ODIE::Compiler::CoreML::ConstantOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v1 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v1)
  {
    v15[0] = *this;
    if (sub_100231240(v1, "value", 5, sub_10026D034, v15))
    {
      if (*(*this + 9))
      {
        v3 = *this - 16;
      }

      else
      {
        v3 = 0;
      }

      mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = "requires attribute 'value'";
    v14 = 259;
    mlir::OpState::emitOpError(this, &v13, v15);
    v4 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v5 = __p;
      if (__p)
      {
        v6 = v21;
        v7 = __p;
        if (v21 != __p)
        {
          do
          {
            v6 = sub_10005BEF4(v6 - 1);
          }

          while (v6 != v5);
          v7 = __p;
        }

        v21 = v5;
        operator delete(v7);
      }

      v8 = v18;
      if (v18)
      {
        v9 = v19;
        v10 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v9;
            *v9 = 0;
            if (v11)
            {
              operator delete[]();
            }
          }

          while (v9 != v8);
          v10 = v18;
        }

        v19 = v8;
        operator delete(v10);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v4;
}

uint64_t mlir::ODIE::Compiler::CoreML::ConstantOp::parse(mlir::ODIE::Compiler::CoreML::ConstantOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v21 = 0uLL;
  if (!sub_10016CD64(this, &v21, 0))
  {
    return 0;
  }

  if (v21)
  {
    v5 = *(a2 + 32);
    if (!v5)
    {
      operator new();
    }

    *v5 = v21;
  }

  v23[0] = (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a2 + 1);
  __src = this;
  v25 = v23;
  v26[0] = a2;
  v7 = mlir::NamedAttrList::get(a2 + 112, **(v6 + 96));
  if (v7)
  {
    if ((sub_100231240(v7, "value", 5, sub_1002724A0, &__src) & 1) == 0)
    {
      return 0;
    }
  }

  __src = v26;
  v25 = 0x600000000;
  mlir::AsmParser::getContext(this);
  v8 = *a2;
  mlir::ValueRange::ValueRange(v23, *(a2 + 2), *(a2 + 6));
  Context = mlir::AsmParser::getContext(this);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v11 = *(a2 + 32);
  v12 = mlir::RegionRange::RegionRange(v22, *(a2 + 28), *(a2 + 58));
  v14 = mlir::ODIE::Compiler::CoreML::ConstantOp::inferReturnTypes(v12, v8, 1, v23[0], v23[1], Dictionary, v11, v13, v22[0], v22[1], &__src);
  v15 = __src;
  if ((v14 & 1) == 0)
  {
    result = 0;
    if (__src == v26)
    {
      return result;
    }

LABEL_19:
    v20 = result;
    free(v15);
    return v20;
  }

  v16 = v25;
  v17 = *(a2 + 18);
  v18 = v17 + v25;
  if (v18 > *(a2 + 19))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 18);
  }

  if (v16)
  {
    memcpy((*(a2 + 8) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 18);
  }

  *(a2 + 18) = v17 + v16;
  result = 1;
  v15 = __src;
  if (__src != v26)
  {
    goto LABEL_19;
  }

  return result;
}

void mlir::ODIE::Compiler::CoreML::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
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

  v6 = sub_1001F42DC(this);
  (*(*a2 + 40))(a2, v6);
  v10 = v12;
  v12[0] = "value";
  v12[1] = 5;
  v11 = 0x200000001;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v8, v10, v11);
  if (v10 != v12)
  {
    free(v10);
  }
}

BOOL mlir::ODIE::Compiler::CoreML::Conv2dOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((sub_1002352A8(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (sub_1002352A8(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0 || (sub_100224F84(*this, (*(*(*(*this + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 4u) & 1) == 0 || (sub_100226A34(*this, (*(*(*(*this + 9) + 184) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 5u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return sub_10022B70C(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t sub_1002352A8(mlir::Operation *a1, void **a2, void **a3, uint64_t a4, unsigned int a5)
{
  v9 = *a2;
  if (*(*a2 + 17) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  v36 = a1;
  {
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v9[1];
    v39 = *(v9 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v47 = v9;
    sub_1002AAB00();
    v37 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v38 = v47[1];
    v39 = *(v47 + 4);
    if (!v39)
    {
      goto LABEL_56;
    }
  }

  v40 = v38;
  v41 = v39;
  do
  {
    v42 = v41 >> 1;
    v43 = &v40[2 * (v41 >> 1)];
    v45 = *v43;
    v44 = v43 + 2;
    v41 += ~(v41 >> 1);
    if (v45 < v37)
    {
      v40 = v44;
    }

    else
    {
      v41 = v42;
    }
  }

  while (v41);
  if (v40 != &v38[2 * v39] && *v40 == v37)
  {
    v49 = v40[1];
    v95 = a2;
    v96 = v49;
    hasRank = mlir::ShapedType::hasRank(&v95);
    a1 = v36;
    if (!hasRank)
    {
      goto LABEL_2;
    }

    goto LABEL_59;
  }

LABEL_56:
  v95 = a2;
  v96 = 0;
  v48 = mlir::ShapedType::hasRank(&v95);
  a1 = v36;
  if (!v48)
  {
    goto LABEL_2;
  }

LABEL_59:
  v51 = *a2;
  {
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v51[1];
    v54 = *(v51 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v83 = v51;
    sub_1002AAABC();
    v52 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v53 = v83[1];
    v54 = *(v83 + 4);
    if (!v54)
    {
      goto LABEL_71;
    }
  }

  v55 = v53;
  v56 = v54;
  do
  {
    v57 = v56 >> 1;
    v58 = &v55[2 * (v56 >> 1)];
    v60 = *v58;
    v59 = v58 + 2;
    v56 += ~(v56 >> 1);
    if (v60 < v52)
    {
      v55 = v59;
    }

    else
    {
      v56 = v57;
    }
  }

  while (v56);
  if (v55 != &v53[2 * v54] && *v55 == v52)
  {
    v62 = v55[1];
    v84 = a2;
    v85 = v62;
    mlir::ShapedType::getShape(&v84);
    a1 = v36;
    if (v63 == 4)
    {
      goto LABEL_74;
    }

    goto LABEL_2;
  }

LABEL_71:
  v84 = a2;
  v85 = 0;
  mlir::ShapedType::getShape(&v84);
  a1 = v36;
  if (v61 == 4)
  {
LABEL_74:
    v64 = *a2;
    {
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v64[1];
      v67 = *(v64 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v75 = v64;
      sub_1002AAABC();
      v65 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v66 = v75[1];
      v67 = *(v75 + 4);
      if (!v67)
      {
        goto LABEL_87;
      }
    }

    v68 = v66;
    v69 = v67;
    do
    {
      v70 = v69 >> 1;
      v71 = &v68[2 * (v69 >> 1)];
      v73 = *v71;
      v72 = v71 + 2;
      v69 += ~(v69 >> 1);
      if (v73 < v65)
      {
        v68 = v72;
      }

      else
      {
        v69 = v70;
      }
    }

    while (v69);
    if (v68 != &v66[2 * v67] && *v68 == v65)
    {
      v76 = v68[1];
LABEL_89:
      v92 = a2;
      v93 = v76;
      ElementType = mlir::ShapedType::getElementType(&v92);
      if (!mlir::Type::isF16(&ElementType) && !mlir::Type::isF32(&ElementType))
      {
        v77 = *(*ElementType + 136);
        if (v77 != &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id && v77 != &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id)
        {
          if (v77 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
          {
LABEL_98:
            a1 = v36;
            goto LABEL_2;
          }

          v89 = ElementType;
          v90 = mlir::ComplexType::getElementType(&v89);
          if (!mlir::Type::isF16(&v90))
          {
            if (*(*ElementType + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
            {
              goto LABEL_98;
            }

            v87 = ElementType;
            v88 = mlir::ComplexType::getElementType(&v87);
            isF32 = mlir::Type::isF32(&v88);
            a1 = v36;
            if (!isF32)
            {
              goto LABEL_2;
            }
          }
        }
      }

      return 1;
    }

LABEL_87:
    v76 = 0;
    goto LABEL_89;
  }

LABEL_2:
  v86 = 261;
  v84 = a3;
  v85 = a4;
  mlir::Operation::emitOpError(&v95, a1, &v84);
  if (v95)
  {
    LODWORD(v92) = 3;
    v93 = " #";
    v94 = 2;
    v10 = &v92;
    v11 = v97;
    if (v98 >= v99)
    {
      if (v97 <= &v92 && v97 + 24 * v98 > &v92)
      {
        v74 = &v92 - v97;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v11 = v97;
        v10 = (v97 + v74);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
        v10 = &v92;
        v11 = v97;
      }
    }

    v12 = &v11[24 * v98];
    v13 = *v10;
    *(v12 + 2) = v10[2];
    *v12 = v13;
    v14 = ++v98;
    if (v95)
    {
      LODWORD(v92) = 5;
      v93 = a5;
      v15 = &v92;
      v16 = v97;
      if (v14 >= v99)
      {
        if (v97 <= &v92 && v97 + 24 * v14 > &v92)
        {
          v80 = &v92 - v97;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v16 = v97;
          v15 = (v97 + v80);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v14 + 1, 24);
          v15 = &v92;
          v16 = v97;
        }
      }

      v17 = &v16[24 * v98];
      v18 = *v15;
      *(v17 + 2) = v15[2];
      *v17 = v18;
      v19 = ++v98;
      if (v95)
      {
        LODWORD(v92) = 3;
        v93 = " must be 4D tensor of 16-bit float or 32-bit float or f8E5M2 type or f8E4M3FN type or complex type with 16-bit float elements or complex type with 32-bit float elements values, but got ";
        v94 = 185;
        v20 = &v92;
        v21 = v97;
        if (v19 >= v99)
        {
          if (v97 <= &v92 && v97 + 24 * v19 > &v92)
          {
            v81 = &v92 - v97;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v21 = v97;
            v20 = (v97 + v81);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v19 + 1, 24);
            v20 = &v92;
            v21 = v97;
          }
        }

        v22 = &v21[24 * v98];
        v23 = *v20;
        *(v22 + 2) = v20[2];
        *v22 = v23;
        ++v98;
        if (v95)
        {
          v24 = &v92;
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, a2);
          v25 = v97;
          if (v98 >= v99)
          {
            if (v97 <= &v92 && v97 + 24 * v98 > &v92)
            {
              v82 = &v92 - v97;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v25 = v97;
              v24 = (v97 + v82);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v97, v100, v98 + 1, 24);
              v24 = &v92;
              v25 = v97;
            }
          }

          v26 = &v25[24 * v98];
          v27 = *v24;
          *(v26 + 2) = v24[2];
          *v26 = v27;
          ++v98;
        }
      }
    }
  }

  v28 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v95);
  if (v95)
  {
    mlir::InFlightDiagnostic::report(&v95);
  }

  if (v106 == 1)
  {
    if (v105 != &v106)
    {
      free(v105);
    }

    v29 = __p;
    if (__p)
    {
      v30 = v104;
      v31 = __p;
      if (v104 != __p)
      {
        do
        {
          v30 = sub_10005BEF4(v30 - 1);
        }

        while (v30 != v29);
        v31 = __p;
      }

      v104 = v29;
      operator delete(v31);
    }

    v32 = v101;
    if (v101)
    {
      v33 = v102;
      v34 = v101;
      if (v102 != v101)
      {
        do
        {
          v35 = *--v33;
          *v33 = 0;
          if (v35)
          {
            operator delete[]();
          }
        }

        while (v33 != v32);
        v34 = v101;
      }

      v102 = v32;
      operator delete(v34);
    }

    if (v97 != v100)
    {
      free(v97);
    }
  }

  return v28;
}