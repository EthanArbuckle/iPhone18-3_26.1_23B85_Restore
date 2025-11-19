uint64_t mlir::ODIE::Compiler::CoreML::GatherAlongAxisOp::verify(mlir::Operation **this)
{
  v2 = *(*this + 9);
  v3 = *(*(v2 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v87 = *(*(v2 + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  v88 = v3;
  if (!mlir::TensorType::hasRank(&v88))
  {
    return 1;
  }

  mlir::TensorType::getShape(&v88);
  v86 = v4;
  if (!v4)
  {
    v85 = 257;
    mlir::OpState::emitError(this, v84, v92);
    if (v92[0])
    {
      LODWORD(v89) = 3;
      v90 = "input rank must be >= 1, but got ";
      v91 = 33;
      v5 = &v89;
      v6 = v94;
      if (v95 >= v96)
      {
        if (v94 <= &v89 && v94 + 24 * v95 > &v89)
        {
          v76 = &v89 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v6 = v94;
          v5 = (v94 + v76);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
          v5 = &v89;
          v6 = v94;
        }
      }

      v7 = &v6[24 * v95];
      v8 = *v5;
      *(v7 + 2) = v5[2];
      *v7 = v8;
      v9 = ++v95;
      if (v92[0])
      {
        LODWORD(v89) = 2;
        v90 = 0;
        v10 = &v89;
        v11 = v94;
        if (v9 >= v96)
        {
          if (v94 <= &v89 && v94 + 24 * v9 > &v89)
          {
            v78 = &v89 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v9 + 1, 24);
            v11 = v94;
            v10 = (v94 + v78);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v9 + 1, 24);
            v10 = &v89;
            v11 = v94;
          }
        }

        v12 = &v11[24 * v95];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v95;
        if (v92[0])
        {
          mlir::InFlightDiagnostic::report(v92);
        }
      }
    }

    if (v103 == 1)
    {
      if (v102 != &v103)
      {
        free(v102);
      }

      v14 = v100;
      if (v100)
      {
        v15 = v101;
        v16 = v100;
        if (v101 != v100)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = v100;
        }

        v101 = v14;
        operator delete(v16);
      }

      v17 = v98;
      if (v98)
      {
        v18 = v99;
        v19 = v98;
        if (v99 != v98)
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
          v19 = v98;
        }

        v99 = v17;
        operator delete(v19);
      }

      if (v94 != v97)
      {
        free(v94);
      }
    }
  }

  if (!mlir::TensorType::hasRank(&v87))
  {
    return 1;
  }

  mlir::TensorType::getShape(&v87);
  v22 = v21;
  v23 = v86;
  if (v86 == v21)
  {
    if (mlir::TensorType::hasRank(&v88))
    {
      Shape = mlir::TensorType::getShape(&v88);
      if (v25)
      {
        v26 = 8 * v25;
        while (*Shape != 0x8000000000000000)
        {
          ++Shape;
          v26 -= 8;
          if (!v26)
          {
            goto LABEL_34;
          }
        }

        return 1;
      }

LABEL_34:
      if (mlir::TensorType::hasRank(&v87))
      {
        v27 = mlir::TensorType::getShape(&v87);
        if (v28)
        {
          v29 = 8 * v28;
          while (*v27 != 0x8000000000000000)
          {
            ++v27;
            v29 -= 8;
            if (!v29)
            {
              goto LABEL_39;
            }
          }

          return 1;
        }

LABEL_39:
        v30 = mlir::TensorType::getShape(&v88);
        v31 = mlir::TensorType::getShape(&v87);
        v32 = *(*(*this + 9) + 88);
        v92[0] = 0;
        v92[1] = 0;
        v89 = v92;
        v84[0] = v32;
        DefiningOp = mlir::Value::getDefiningOp(v84);
        if (DefiningOp)
        {
          if (sub_100250A7C(&v89, DefiningOp))
          {
            sub_1001F2F84(v32, v92);
            if ((v97[24] & 1) == 0)
            {
              v82 = sub_10024F430();
              return mlir::ODIE::Compiler::CoreML::TransposeOp::fold(v82);
            }

            v34 = *v92[0];
            if (v92[0] != &v93)
            {
              free(v92[0]);
            }

            LODWORD(v89) = v34;
            if (v34 < -v22 || v22 <= v34)
            {
              v85 = 257;
              mlir::OpState::emitError(this, v84, v92);
              sub_100081F48(v92, "Invalid axis ");
              sub_1001F291C(v72, &v89);
              sub_100081F48(v73, " when the input has rank ");
              sub_1001F15F8(v74, &v86);
LABEL_84:
              v75 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v71);
              sub_100059A74(v92);
              return v75;
            }

            if (v22 >= 1)
            {
              v35 = 0;
              while (v34 + (v22 & (v34 >> 31)) == v35 || *(v30 + 8 * v35) == *(v31 + 8 * v35))
              {
                if (v22 == ++v35)
                {
                  return 1;
                }
              }

              v83 = v35;
              v85 = 257;
              mlir::OpState::emitError(this, v84, v92);
              sub_100081F48(v92, "Input shape[");
              sub_1001F291C(v64, &v83);
              sub_100081F48(v65, "] is ");
              sub_1001F15F8(v66, (v30 + 8 * v83));
              sub_100081F48(v67, ", but indices shape [");
              sub_1001F291C(v68, &v83);
              sub_100081F48(v69, "] is ");
              sub_1001F15F8(v70, (v31 + 8 * v83));
              goto LABEL_84;
            }
          }
        }
      }
    }

    return 1;
  }

  v85 = 257;
  mlir::OpState::emitError(this, v84, v92);
  if (v92[0])
  {
    LODWORD(v89) = 3;
    v90 = "input must have the same rank as indices, but got input with rank ";
    v91 = 66;
    v36 = &v89;
    v37 = v94;
    if (v95 >= v96)
    {
      if (v94 <= &v89 && v94 + 24 * v95 > &v89)
      {
        v77 = &v89 - v94;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
        v37 = v94;
        v36 = (v94 + v77);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v95 + 1, 24);
        v36 = &v89;
        v37 = v94;
      }
    }

    v38 = &v37[24 * v95];
    v39 = *v36;
    *(v38 + 2) = v36[2];
    *v38 = v39;
    v40 = ++v95;
    if (v92[0])
    {
      LODWORD(v89) = 2;
      v90 = v23;
      v41 = &v89;
      v42 = v94;
      if (v40 >= v96)
      {
        if (v94 <= &v89 && v94 + 24 * v40 > &v89)
        {
          v79 = &v89 - v94;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
          v42 = v94;
          v41 = (v94 + v79);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v40 + 1, 24);
          v41 = &v89;
          v42 = v94;
        }
      }

      v43 = &v42[24 * v95];
      v44 = *v41;
      *(v43 + 2) = v41[2];
      *v43 = v44;
      v45 = ++v95;
      if (v92[0])
      {
        LODWORD(v89) = 3;
        v90 = " and indices with rank ";
        v91 = 23;
        v46 = &v89;
        v47 = v94;
        if (v45 >= v96)
        {
          if (v94 <= &v89 && v94 + 24 * v45 > &v89)
          {
            v80 = &v89 - v94;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v45 + 1, 24);
            v47 = v94;
            v46 = (v94 + v80);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v45 + 1, 24);
            v46 = &v89;
            v47 = v94;
          }
        }

        v48 = &v47[24 * v95];
        v49 = *v46;
        *(v48 + 2) = v46[2];
        *v48 = v49;
        v50 = ++v95;
        if (v92[0])
        {
          LODWORD(v89) = 2;
          v90 = v22;
          v51 = &v89;
          v52 = v94;
          if (v50 >= v96)
          {
            if (v94 <= &v89 && v94 + 24 * v50 > &v89)
            {
              v81 = &v89 - v94;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v50 + 1, 24);
              v52 = v94;
              v51 = (v94 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v97, v50 + 1, 24);
              v51 = &v89;
              v52 = v94;
            }
          }

          v53 = &v52[24 * v95];
          v54 = *v51;
          *(v53 + 2) = v51[2];
          *v53 = v54;
          ++v95;
        }
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v92);
  v56 = result;
  if (v92[0])
  {
    mlir::InFlightDiagnostic::report(v92);
    result = v56;
  }

  if (v103 == 1)
  {
    if (v102 != &v103)
    {
      free(v102);
      result = v56;
    }

    v57 = v100;
    if (v100)
    {
      v58 = v101;
      v59 = v100;
      if (v101 != v100)
      {
        do
        {
          v58 = sub_100052FFC(v58 - 1);
        }

        while (v58 != v57);
        v59 = v100;
      }

      v101 = v57;
      operator delete(v59);
      result = v56;
    }

    v60 = v98;
    if (v98)
    {
      v61 = v99;
      v62 = v98;
      if (v99 != v98)
      {
        do
        {
          v63 = *--v61;
          *v61 = 0;
          if (v63)
          {
            operator delete[]();
          }
        }

        while (v61 != v60);
        v62 = v98;
      }

      v99 = v60;
      operator delete(v62);
      result = v56;
    }

    if (v94 != v97)
    {
      free(v94);
      return v56;
    }
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TransposeOp::fold(uint64_t a1)
{
  v2 = *(*(*a1 + 72) + 56);
  v15 = 0;
  *&v16 = &v15;
  *&v11 = v2;
  result = mlir::Value::getDefiningOp(&v11);
  if (result)
  {
    if (sub_100277970(&v16, result))
    {
      v14 = *(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      sub_1000B83F8(&v15, &v11);
      mlir::TensorType::getShape(&v14);
      if (v4 < 1)
      {
        return *(*(*a1 + 72) + 24) | 4;
      }

      else
      {
        v5 = 0;
        while (1)
        {
          v16 = v11;
          v17 = v5 + v12;
          v18 = v13;
          mlir::DenseElementsAttr::IntElementIterator::operator*(&v16, &v9);
          if (v10 > 0x40)
          {
            v6 = *v9;
            operator delete[]();
          }

          v8 = v10 ? (v9 << -v10) >> -v10 : 0;
          if (v5 != v8)
          {
            break;
          }

          ++v5;
          mlir::TensorType::getShape(&v14);
          if (v7 <= v5)
          {
            return *(*(*a1 + 72) + 24) | 4;
          }
        }

        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::TransposeOp::verify(mlir::Operation **this)
{
  v4 = *(*(*this + 9) + 56);
  __src = 0;
  v81 = 0;
  v73[0] = &__src;
  v94 = v4;
  DefiningOp = mlir::Value::getDefiningOp(&v94);
  if (!DefiningOp)
  {
    return 1;
  }

  if (!sub_100250A7C(v73, DefiningOp))
  {
    return 1;
  }

  v6 = *this;
  v76 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v75 = *(v6 - 1) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(&v76))
  {
    return 1;
  }

  Shape = mlir::TensorType::getShape(&v76);
  if (v8)
  {
    v9 = 8 * v8;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

LABEL_8:
  if (!mlir::TensorType::hasRank(&v75))
  {
    return 1;
  }

  v10 = mlir::TensorType::getShape(&v75);
  if (v11)
  {
    v12 = 8 * v11;
    while (*v10 != 0x8000000000000000)
    {
      ++v10;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    return 1;
  }

LABEL_13:
  sub_1001F2F84(v4, &__src);
  if ((v87 & 1) == 0)
  {
    sub_10024F430();
    goto LABEL_103;
  }

  v4 = v96;
  v94 = v96;
  v95 = 0xC00000000;
  v13 = v81;
  if (!v81)
  {
    goto LABEL_23;
  }

  if (__src != &v82)
  {
    v94 = __src;
    v95 = v81;
    __src = &v82;
    v81 = 0;
LABEL_23:
    if (__src != &v82)
    {
      free(__src);
    }

    goto LABEL_25;
  }

  v15 = v81;
  if (v81 < 0xD || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v94, v96, v81, 4), (v15 = v81) != 0))
  {
    memcpy(v94, __src, 4 * v15);
  }

  LODWORD(v95) = v13;
  LODWORD(v81) = 0;
  if (v87)
  {
    goto LABEL_23;
  }

LABEL_25:
  v16 = mlir::TensorType::getShape(&v76);
  mlir::TensorType::getShape(&v76);
  v2 = v17;
  v18 = mlir::TensorType::getShape(&v75);
  if (v95)
  {
    v19 = 0;
    v20 = v94;
    v21 = 4 * v95;
    while (1)
    {
      v22 = v94[v19];
      if ((v22 & 0x80000000) != 0 || v2 <= v22)
      {
        break;
      }

      if (*(v16 + 8 * v22) != *(v18 + 8 * v19))
      {
        v74 = 257;
        mlir::OpState::emitError(this, v73, &__src);
        if (__src)
        {
          v77 = 3;
          v78 = "mismatch in result shape and permutation. resultShape[";
          v79 = 54;
          v41 = &v77;
          v42 = v83;
          if (v84 >= v85)
          {
            if (v83 <= &v77 && v83 + 24 * v84 > &v77)
            {
              v69 = &v77 - v83;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v42 = v83;
              v41 = (v83 + v69);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
              v41 = &v77;
              v42 = v83;
            }
          }

          v43 = &v42[24 * v84];
          v44 = *v41;
          *(v43 + 2) = *(v41 + 2);
          *v43 = v44;
          v45 = ++v84;
          if (__src)
          {
            v77 = 5;
            v78 = v19;
            v46 = &v77;
            v47 = v83;
            if (v45 >= v85)
            {
              if (v83 <= &v77 && v83 + 24 * v45 > &v77)
              {
                v70 = &v77 - v83;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v45 + 1, 24);
                v47 = v83;
                v46 = (v83 + v70);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v45 + 1, 24);
                v46 = &v77;
                v47 = v83;
              }
            }

            v48 = &v47[24 * v84];
            v49 = *v46;
            *(v48 + 2) = *(v46 + 2);
            *v48 = v49;
            v50 = ++v84;
            if (__src)
            {
              v77 = 3;
              v78 = "] is expected to be ";
              v79 = 20;
              v51 = &v77;
              v52 = v83;
              if (v50 >= v85)
              {
                if (v83 <= &v77 && v83 + 24 * v50 > &v77)
                {
                  v71 = &v77 - v83;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v50 + 1, 24);
                  v52 = v83;
                  v51 = (v83 + v71);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v50 + 1, 24);
                  v51 = &v77;
                  v52 = v83;
                }
              }

              v53 = &v52[24 * v84];
              v54 = *v51;
              *(v53 + 2) = *(v51 + 2);
              *v53 = v54;
              v55 = ++v84;
              if (__src)
              {
                v56 = *(v16 + 8 * v20[v19]);
                v77 = 2;
                v78 = v56;
                v57 = &v77;
                v58 = v83;
                if (v55 >= v85)
                {
                  if (v83 <= &v77 && v83 + 24 * v55 > &v77)
                  {
                    v72 = &v77 - v83;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                    v58 = v83;
                    v57 = (v83 + v72);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v55 + 1, 24);
                    v57 = &v77;
                    v58 = v83;
                  }
                }

                v59 = &v58[24 * v84];
                v60 = *v57;
                *(v59 + 2) = *(v57 + 2);
                *v59 = v60;
                ++v84;
              }
            }
          }
        }

        result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        v33 = result;
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
          result = v33;
        }

        if (v93 != 1)
        {
          goto LABEL_82;
        }

        if (v92 != &v93)
        {
          free(v92);
          result = v33;
        }

        v61 = __p;
        if (__p)
        {
          v62 = v91;
          v63 = __p;
          if (v91 != __p)
          {
            do
            {
              v62 = sub_100052FFC(v62 - 1);
            }

            while (v62 != v61);
            v63 = __p;
          }

          v91 = v61;
          operator delete(v63);
          result = v33;
        }

        v37 = v88;
        if (!v88)
        {
          goto LABEL_80;
        }

        v64 = v89;
        v39 = v88;
        if (v89 == v88)
        {
          goto LABEL_79;
        }

        do
        {
          v65 = *--v64;
          *v64 = 0;
          if (v65)
          {
            operator delete[]();
          }
        }

        while (v64 != v37);
        goto LABEL_78;
      }

      ++v19;
      v21 -= 4;
      if (!v21)
      {
        goto LABEL_31;
      }
    }

    v74 = 257;
    p_src = &__src;
    mlir::OpState::emitError(this, v73, &__src);
    if (!__src)
    {
      goto LABEL_37;
    }

    v77 = 3;
    v78 = "permutation must only hold values between 0 and ";
    v79 = 48;
    v23 = v84;
    v24 = &v77;
    v25 = v83;
    if (v84 < v85)
    {
      goto LABEL_34;
    }

    if (v83 > &v77 || v83 + 24 * v84 <= &v77)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v83, v86, v84 + 1, 24);
      v24 = &v77;
      v25 = v83;
      goto LABEL_34;
    }

LABEL_103:
    v67 = (&v77 - v25);
    llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v86, v23 + 1, 24);
    v25 = v83;
    v24 = &v67[v83];
LABEL_34:
    v26 = &v25[24 * v84];
    v27 = *v24;
    *(v26 + 2) = *(v24 + 2);
    *v26 = v27;
    v28 = ++v84;
    if (__src)
    {
      v77 = 2;
      v78 = (v2 - 1);
      v29 = &v77;
      v30 = v83;
      if (v28 >= v85)
      {
        if (v83 <= &v77 && v83 + 24 * v28 > &v77)
        {
          v68 = &v77 - v83;
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v86, v28 + 1, 24);
          v30 = v83;
          v29 = (v83 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v86, v28 + 1, 24);
          v29 = &v77;
          v30 = v83;
        }
      }

      v31 = &v30[24 * v84];
      v32 = *v29;
      *(v31 + 2) = *(v29 + 2);
      *v31 = v32;
      ++v84;
    }

LABEL_37:
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
    v33 = result;
    if (__src)
    {
      mlir::InFlightDiagnostic::report(&__src);
      result = v33;
    }

    if (v93 == 1)
    {
      if (v92 != &v93)
      {
        free(v92);
        result = v33;
      }

      v34 = __p;
      if (__p)
      {
        v35 = v91;
        v36 = __p;
        if (v91 != __p)
        {
          do
          {
            v35 = sub_100052FFC(v35 - 1);
          }

          while (v35 != v34);
          v36 = __p;
        }

        v91 = v34;
        operator delete(v36);
        result = v33;
      }

      v37 = v88;
      if (v88)
      {
        v38 = v89;
        v39 = v88;
        if (v89 != v88)
        {
          do
          {
            v40 = *--v38;
            *v38 = 0;
            if (v40)
            {
              operator delete[]();
            }
          }

          while (v38 != v37);
LABEL_78:
          v39 = v88;
        }

LABEL_79:
        v89 = v37;
        operator delete(v39);
        result = v33;
      }

LABEL_80:
      if (v83 != v86)
      {
        free(v83);
        result = v33;
      }
    }

    goto LABEL_82;
  }

LABEL_31:
  result = 1;
LABEL_82:
  if (v94 != v4)
  {
    v66 = result;
    free(v94);
    return v66;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool2dOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 9);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  __src = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    Shape = mlir::RankedTensorType::getShape(&__src);
    if (v8)
    {
      v9 = 8 * v8;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(&__src);
      if (v10 != 1 || (v11 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v11, v12) != 2))
      {
        v145 = 257;
        p_src = &__src;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (!__src)
        {
          goto LABEL_35;
        }

        LODWORD(v138) = 3;
        v139 = "expect ";
        v140[0] = 7;
        v27 = v150;
        v28 = &v138;
        v29 = v149;
        if (v150 < v151)
        {
LABEL_30:
          v30 = &v29[24 * v150];
          v31 = *v28;
          *(v30 + 2) = v28[2];
          *v30 = v31;
          v32 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 2;
            v33 = &v138;
            v34 = v149;
            if (v32 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v32 > &v138)
              {
                v125 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v32 + 1, 24);
                v34 = v149;
                v33 = (v149 + v125);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v32 + 1, 24);
                v33 = &v138;
                v34 = v149;
              }
            }

            v35 = &v34[24 * v150];
            v36 = *v33;
            *(v35 + 2) = v33[2];
            *v35 = v36;
            v37 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in strides";
              v140[0] = 20;
              v38 = &v138;
              v39 = v149;
              if (v37 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v37 > &v138)
                {
                  v128 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v37 + 1, 24);
                  v39 = v149;
                  v38 = (v149 + v128);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v37 + 1, 24);
                  v38 = &v138;
                  v39 = v149;
                }
              }

              v40 = &v39[24 * v150];
              v41 = *v38;
              *(v40 + 2) = v38[2];
              *v40 = v41;
              ++v150;
            }
          }

LABEL_35:
          p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
          }

          if (v159 != 1)
          {
            return p_src;
          }

          if (v158 != &v159)
          {
            free(v158);
          }

          v42 = __p;
          if (__p)
          {
            v43 = v157;
            v44 = __p;
            if (v157 != __p)
            {
              do
              {
                v43 = sub_100052FFC(v43 - 1);
              }

              while (v43 != v42);
              v44 = __p;
            }

            v157 = v42;
            operator delete(v44);
          }

          v45 = v154;
          if (v154)
          {
            v46 = v155;
            v47 = v154;
            if (v155 != v154)
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
LABEL_98:
              v47 = v154;
              goto LABEL_99;
            }

            goto LABEL_99;
          }

          goto LABEL_100;
        }

        if (v149 > &v138 || v149 + 24 * v150 <= &v138)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
          v28 = &v138;
          v29 = v149;
          goto LABEL_30;
        }

LABEL_236:
        v123 = (&v138 - v29);
        llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v27 + 1, 24);
        v29 = v149;
        v28 = &v123[v149];
        goto LABEL_30;
      }
    }
  }

  __src = (v5[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v13 = mlir::RankedTensorType::getShape(&__src);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      mlir::RankedTensorType::getShape(&__src);
      if (v16 != 1 || (v17 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v17, v18) != 2))
      {
        v145 = 257;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (__src)
        {
          LODWORD(v138) = 3;
          v139 = "expect ";
          v140[0] = 7;
          v49 = &v138;
          v50 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v138 && v149 + 24 * v150 > &v138)
            {
              v124 = &v138 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v50 = v149;
              v49 = (v149 + v124);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v49 = &v138;
              v50 = v149;
            }
          }

          v51 = &v50[24 * v150];
          v52 = *v49;
          *(v51 + 2) = v49[2];
          *v51 = v52;
          v53 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 2;
            v54 = &v138;
            v55 = v149;
            if (v53 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v53 > &v138)
              {
                v127 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v53 + 1, 24);
                v55 = v149;
                v54 = (v149 + v127);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v53 + 1, 24);
                v54 = &v138;
                v55 = v149;
              }
            }

            v56 = &v55[24 * v150];
            v57 = *v54;
            *(v56 + 2) = v54[2];
            *v56 = v57;
            v58 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in padding";
              v140[0] = 20;
              v59 = &v138;
              v60 = v149;
              if (v58 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v58 > &v138)
                {
                  v131 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v58 + 1, 24);
                  v60 = v149;
                  v59 = (v149 + v131);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v58 + 1, 24);
                  v59 = &v138;
                  v60 = v149;
                }
              }

              v61 = &v60[24 * v150];
              v62 = *v59;
              *(v61 + 2) = v59[2];
              *v61 = v62;
              ++v150;
            }
          }
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 != 1)
        {
          return p_src;
        }

        if (v158 != &v159)
        {
          free(v158);
        }

        v63 = __p;
        if (__p)
        {
          v64 = v157;
          v65 = __p;
          if (v157 != __p)
          {
            do
            {
              v64 = sub_100052FFC(v64 - 1);
            }

            while (v64 != v63);
            v65 = __p;
          }

          v157 = v63;
          operator delete(v65);
        }

        v45 = v154;
        if (v154)
        {
          v66 = v155;
          v47 = v154;
          if (v155 != v154)
          {
            do
            {
              v67 = *--v66;
              *v66 = 0;
              if (v67)
              {
                operator delete[]();
              }
            }

            while (v66 != v45);
            goto LABEL_98;
          }

          goto LABEL_99;
        }

        goto LABEL_100;
      }
    }
  }

  __src = (v6[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v19 = mlir::RankedTensorType::getShape(&__src);
    if (v20)
    {
      v21 = 8 * v20;
      while (*v19 != 0x8000000000000000)
      {
        ++v19;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::RankedTensorType::getShape(&__src);
      if (v22 != 1 || (v23 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v23, v24) != 2))
      {
        v145 = 257;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (__src)
        {
          LODWORD(v138) = 3;
          v139 = "expect ";
          v140[0] = 7;
          v68 = &v138;
          v69 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v138 && v149 + 24 * v150 > &v138)
            {
              v126 = &v138 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v69 = v149;
              v68 = (v149 + v126);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v68 = &v138;
              v69 = v149;
            }
          }

          v70 = &v69[24 * v150];
          v71 = *v68;
          *(v70 + 2) = v68[2];
          *v70 = v71;
          v72 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 2;
            v73 = &v138;
            v74 = v149;
            if (v72 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v72 > &v138)
              {
                v129 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v72 + 1, 24);
                v74 = v149;
                v73 = (v149 + v129);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v72 + 1, 24);
                v73 = &v138;
                v74 = v149;
              }
            }

            v75 = &v74[24 * v150];
            v76 = *v73;
            *(v75 + 2) = v73[2];
            *v75 = v76;
            v77 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in dilation";
              v140[0] = 21;
              v78 = &v138;
              v79 = v149;
              if (v77 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v77 > &v138)
                {
                  v133 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v77 + 1, 24);
                  v79 = v149;
                  v78 = (v149 + v133);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v77 + 1, 24);
                  v78 = &v138;
                  v79 = v149;
                }
              }

              v80 = &v79[24 * v150];
              v81 = *v78;
              *(v80 + 2) = v78[2];
              *v80 = v81;
              ++v150;
            }
          }
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 != 1)
        {
          return p_src;
        }

        if (v158 != &v159)
        {
          free(v158);
        }

        v82 = __p;
        if (__p)
        {
          v83 = v157;
          v84 = __p;
          if (v157 != __p)
          {
            do
            {
              v83 = sub_100052FFC(v83 - 1);
            }

            while (v83 != v82);
            v84 = __p;
          }

          v157 = v82;
          operator delete(v84);
        }

        v45 = v154;
        if (v154)
        {
          v85 = v155;
          v47 = v154;
          if (v155 != v154)
          {
            do
            {
              v86 = *--v85;
              *v85 = 0;
              if (v86)
              {
                operator delete[]();
              }
            }

            while (v85 != v45);
            goto LABEL_98;
          }

LABEL_99:
          v155 = v45;
          operator delete(v47);
        }

LABEL_100:
        if (v149 != v152)
        {
          free(v149);
        }

        return p_src;
      }
    }
  }

  __src = 0;
  v147 = 0;
  v138 = &__src;
  v142 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v142);
  if (DefiningOp && sub_100250A7C(&v138, DefiningOp))
  {
    sub_1001F2F84(v6, &__src);
    if ((v153 & 1) == 0)
    {
LABEL_235:
      sub_10024F430();
      goto LABEL_236;
    }

    v142 = v144;
    v143 = 0xC00000000;
    p_src = v147;
    v26 = __src;
    if (!v147)
    {
LABEL_109:
      if (v26 != &v148)
      {
        free(v26);
      }

LABEL_111:
      v89 = v142;
      if (*v142 < 1 || *(v142 + 1) <= 0)
      {
        v141 = 257;
        mlir::Operation::emitError(&__src, v2, &v138);
        if (__src)
        {
          LODWORD(v134) = 3;
          v135 = "dilation must be > 0";
          v136 = 20;
          v91 = &v134;
          v92 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v134 && v149 + 24 * v150 > &v134)
            {
              v130 = &v134 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v92 = v149;
              v91 = (v149 + v130);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v91 = &v134;
              v92 = v149;
            }
          }

          v93 = &v92[24 * v150];
          v94 = *v91;
          *(v93 + 2) = v91[2];
          *v93 = v94;
          ++v150;
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 == 1)
        {
          if (v158 != &v159)
          {
            free(v158);
          }

          v95 = __p;
          if (__p)
          {
            v96 = v157;
            v97 = __p;
            if (v157 != __p)
            {
              do
              {
                v96 = sub_100052FFC(v96 - 1);
              }

              while (v96 != v95);
              v97 = __p;
            }

            v157 = v95;
            operator delete(v97);
          }

          v98 = v154;
          if (v154)
          {
            v99 = v155;
            v100 = v154;
            if (v155 != v154)
            {
              do
              {
                v101 = *--v99;
                *v99 = 0;
                if (v101)
                {
                  operator delete[]();
                }
              }

              while (v99 != v98);
              v100 = v154;
            }

            v155 = v98;
            operator delete(v100);
          }

          if (v149 != v152)
          {
            free(v149);
          }
        }

        v90 = 0;
        v89 = v142;
      }

      else
      {
        v90 = 1;
      }

      if (v89 != v144)
      {
        free(v89);
      }

      if (!v90)
      {
        return p_src;
      }

      goto LABEL_141;
    }

    if (__src != &v148)
    {
      v142 = __src;
      v143 = v147;
      goto LABEL_111;
    }

    if (v147 < 0xD)
    {
      v88 = v144;
      v87 = v147;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v147, 4);
      v87 = v147;
      if (!v147)
      {
LABEL_107:
        LODWORD(v143) = p_src;
        LODWORD(v147) = 0;
        if ((v153 & 1) == 0)
        {
          goto LABEL_111;
        }

        v26 = __src;
        goto LABEL_109;
      }

      v26 = __src;
      v88 = v142;
    }

    memcpy(v88, v26, 4 * v87);
    goto LABEL_107;
  }

LABEL_141:
  __src = 0;
  v147 = 0;
  v138 = &__src;
  v142 = v5;
  v102 = mlir::Value::getDefiningOp(&v142);
  if (!v102 || !sub_100250A7C(&v138, v102))
  {
    return 1;
  }

  sub_1001F2F84(v5, &__src);
  if ((v153 & 1) == 0)
  {
    goto LABEL_235;
  }

  v142 = v144;
  v143 = 0xC00000000;
  v103 = v147;
  v104 = __src;
  if (v147)
  {
    if (__src != &v148)
    {
      v142 = __src;
      v143 = v147;
      goto LABEL_156;
    }

    if (v147 < 0xD)
    {
      v106 = v144;
      v105 = v147;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v147, 4);
      v105 = v147;
      if (!v147)
      {
LABEL_152:
        LODWORD(v143) = v103;
        LODWORD(v147) = 0;
        if ((v153 & 1) == 0)
        {
          goto LABEL_156;
        }

        v104 = __src;
        goto LABEL_154;
      }

      v104 = __src;
      v106 = v142;
    }

    memcpy(v106, v104, 4 * v105);
    goto LABEL_152;
  }

LABEL_154:
  if (v104 != &v148)
  {
    free(v104);
  }

LABEL_156:
  if ((*v142 & 0x80000000) != 0 || (*(v142 + 1) & 0x80000000) != 0)
  {
    v141 = 257;
    mlir::Operation::emitError(&__src, v2, &v138);
    if (__src)
    {
      LODWORD(v134) = 3;
      v135 = "padding must be >= 0";
      v136 = 20;
      v111 = &v134;
      v112 = v149;
      if (v150 >= v151)
      {
        if (v149 <= &v134 && v149 + 24 * v150 > &v134)
        {
          v132 = &v134 - v149;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
          v112 = v149;
          v111 = (v149 + v132);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
          v111 = &v134;
          v112 = v149;
        }
      }

      v113 = &v112[24 * v150];
      v114 = *v111;
      *(v113 + 2) = v111[2];
      *v113 = v114;
      ++v150;
    }

    p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
    if (__src)
    {
      mlir::InFlightDiagnostic::report(&__src);
    }

    if (v159 == 1)
    {
      if (v158 != &v159)
      {
        free(v158);
      }

      v115 = __p;
      if (__p)
      {
        v116 = v157;
        v117 = __p;
        if (v157 != __p)
        {
          do
          {
            v116 = sub_100052FFC(v116 - 1);
          }

          while (v116 != v115);
          v117 = __p;
        }

        v157 = v115;
        operator delete(v117);
      }

      v118 = v154;
      if (v154)
      {
        v119 = v155;
        v120 = v154;
        if (v155 != v154)
        {
          do
          {
            v121 = *--v119;
            *v119 = 0;
            if (v121)
            {
              operator delete[]();
            }
          }

          while (v119 != v118);
          v120 = v154;
        }

        v155 = v118;
        operator delete(v120);
      }

      if (v149 != v152)
      {
        free(v149);
      }
    }

    v110 = 1;
    goto LABEL_197;
  }

  __src = 0;
  v147 = 0;
  v134 = &__src;
  v138 = v4;
  v107 = mlir::Value::getDefiningOp(&v138);
  if (!v107 || !sub_100250A7C(&v134, v107))
  {
LABEL_196:
    v110 = 0;
    goto LABEL_197;
  }

  sub_1001F2F84(v4, &__src);
  if ((v153 & 1) == 0)
  {
    goto LABEL_235;
  }

  v138 = v140;
  v139 = 0xC00000000;
  if (!v147 || (sub_10008BE34(&v138, &__src), (v153 & 1) != 0))
  {
    if (__src != &v148)
    {
      free(__src);
    }
  }

  v108 = v138;
  if (*v142 <= *v138 / 2 && *(v142 + 1) <= *(v138 + 1) / 2)
  {
    v110 = 0;
  }

  else
  {
    v137 = 257;
    mlir::Operation::emitError(&__src, v2, &v134);
    sub_100081F48(&__src, "padding must be <= kernel_size / 2");
    p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v109);
    sub_100059A74(&__src);
    v110 = 1;
    v108 = v138;
  }

  if (v108 != v140)
  {
    free(v108);
  }

  if ((v110 & 1) == 0)
  {
    goto LABEL_196;
  }

LABEL_197:
  if (v142 != v144)
  {
    free(v142);
  }

  if (!v110)
  {
    return 1;
  }

  return p_src;
}

uint64_t mlir::ODIE::Compiler::CoreML::MaxPool3dOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 9);
  v4 = v3[7];
  v5 = v3[15];
  v6 = v3[19];
  __src = (v4[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    Shape = mlir::RankedTensorType::getShape(&__src);
    if (v8)
    {
      v9 = 8 * v8;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(&__src);
      if (v10 != 1 || (v11 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v11, v12) != 3))
      {
        v145 = 257;
        p_src = &__src;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (!__src)
        {
          goto LABEL_35;
        }

        LODWORD(v138) = 3;
        v139 = "expect ";
        v140[0] = 7;
        v27 = v150;
        v28 = &v138;
        v29 = v149;
        if (v150 < v151)
        {
LABEL_30:
          v30 = &v29[24 * v150];
          v31 = *v28;
          *(v30 + 2) = v28[2];
          *v30 = v31;
          v32 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 3;
            v33 = &v138;
            v34 = v149;
            if (v32 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v32 > &v138)
              {
                v125 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v32 + 1, 24);
                v34 = v149;
                v33 = (v149 + v125);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v32 + 1, 24);
                v33 = &v138;
                v34 = v149;
              }
            }

            v35 = &v34[24 * v150];
            v36 = *v33;
            *(v35 + 2) = v33[2];
            *v35 = v36;
            v37 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in strides";
              v140[0] = 20;
              v38 = &v138;
              v39 = v149;
              if (v37 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v37 > &v138)
                {
                  v128 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v37 + 1, 24);
                  v39 = v149;
                  v38 = (v149 + v128);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v37 + 1, 24);
                  v38 = &v138;
                  v39 = v149;
                }
              }

              v40 = &v39[24 * v150];
              v41 = *v38;
              *(v40 + 2) = v38[2];
              *v40 = v41;
              ++v150;
            }
          }

LABEL_35:
          p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
          if (__src)
          {
            mlir::InFlightDiagnostic::report(&__src);
          }

          if (v159 != 1)
          {
            return p_src;
          }

          if (v158 != &v159)
          {
            free(v158);
          }

          v42 = __p;
          if (__p)
          {
            v43 = v157;
            v44 = __p;
            if (v157 != __p)
            {
              do
              {
                v43 = sub_100052FFC(v43 - 1);
              }

              while (v43 != v42);
              v44 = __p;
            }

            v157 = v42;
            operator delete(v44);
          }

          v45 = v154;
          if (v154)
          {
            v46 = v155;
            v47 = v154;
            if (v155 != v154)
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
LABEL_98:
              v47 = v154;
              goto LABEL_99;
            }

            goto LABEL_99;
          }

          goto LABEL_100;
        }

        if (v149 > &v138 || v149 + 24 * v150 <= &v138)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
          v28 = &v138;
          v29 = v149;
          goto LABEL_30;
        }

LABEL_238:
        v123 = (&v138 - v29);
        llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v152, v27 + 1, 24);
        v29 = v149;
        v28 = &v123[v149];
        goto LABEL_30;
      }
    }
  }

  __src = (v5[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v13 = mlir::RankedTensorType::getShape(&__src);
    if (v14)
    {
      v15 = 8 * v14;
      while (*v13 != 0x8000000000000000)
      {
        ++v13;
        v15 -= 8;
        if (!v15)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      mlir::RankedTensorType::getShape(&__src);
      if (v16 != 1 || (v17 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v17, v18) != 3))
      {
        v145 = 257;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (__src)
        {
          LODWORD(v138) = 3;
          v139 = "expect ";
          v140[0] = 7;
          v49 = &v138;
          v50 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v138 && v149 + 24 * v150 > &v138)
            {
              v124 = &v138 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v50 = v149;
              v49 = (v149 + v124);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v49 = &v138;
              v50 = v149;
            }
          }

          v51 = &v50[24 * v150];
          v52 = *v49;
          *(v51 + 2) = v49[2];
          *v51 = v52;
          v53 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 3;
            v54 = &v138;
            v55 = v149;
            if (v53 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v53 > &v138)
              {
                v127 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v53 + 1, 24);
                v55 = v149;
                v54 = (v149 + v127);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v53 + 1, 24);
                v54 = &v138;
                v55 = v149;
              }
            }

            v56 = &v55[24 * v150];
            v57 = *v54;
            *(v56 + 2) = v54[2];
            *v56 = v57;
            v58 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in padding";
              v140[0] = 20;
              v59 = &v138;
              v60 = v149;
              if (v58 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v58 > &v138)
                {
                  v132 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v58 + 1, 24);
                  v60 = v149;
                  v59 = (v149 + v132);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v58 + 1, 24);
                  v59 = &v138;
                  v60 = v149;
                }
              }

              v61 = &v60[24 * v150];
              v62 = *v59;
              *(v61 + 2) = v59[2];
              *v61 = v62;
              ++v150;
            }
          }
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 != 1)
        {
          return p_src;
        }

        if (v158 != &v159)
        {
          free(v158);
        }

        v63 = __p;
        if (__p)
        {
          v64 = v157;
          v65 = __p;
          if (v157 != __p)
          {
            do
            {
              v64 = sub_100052FFC(v64 - 1);
            }

            while (v64 != v63);
            v65 = __p;
          }

          v157 = v63;
          operator delete(v65);
        }

        v45 = v154;
        if (v154)
        {
          v66 = v155;
          v47 = v154;
          if (v155 != v154)
          {
            do
            {
              v67 = *--v66;
              *v66 = 0;
              if (v67)
              {
                operator delete[]();
              }
            }

            while (v66 != v45);
            goto LABEL_98;
          }

          goto LABEL_99;
        }

        goto LABEL_100;
      }
    }
  }

  __src = (v6[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v19 = mlir::RankedTensorType::getShape(&__src);
    if (v20)
    {
      v21 = 8 * v20;
      while (*v19 != 0x8000000000000000)
      {
        ++v19;
        v21 -= 8;
        if (!v21)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::RankedTensorType::getShape(&__src);
      if (v22 != 1 || (v23 = mlir::RankedTensorType::getShape(&__src), mlir::ShapedType::getNumElements(v23, v24) != 3))
      {
        v145 = 257;
        mlir::Operation::emitError(&__src, v2, &v142);
        if (__src)
        {
          LODWORD(v138) = 3;
          v139 = "expect ";
          v140[0] = 7;
          v68 = &v138;
          v69 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v138 && v149 + 24 * v150 > &v138)
            {
              v126 = &v138 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v69 = v149;
              v68 = (v149 + v126);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v68 = &v138;
              v69 = v149;
            }
          }

          v70 = &v69[24 * v150];
          v71 = *v68;
          *(v70 + 2) = v68[2];
          *v70 = v71;
          v72 = ++v150;
          if (__src)
          {
            LODWORD(v138) = 2;
            v139 = 3;
            v73 = &v138;
            v74 = v149;
            if (v72 >= v151)
            {
              if (v149 <= &v138 && v149 + 24 * v72 > &v138)
              {
                v129 = &v138 - v149;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v72 + 1, 24);
                v74 = v149;
                v73 = (v149 + v129);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v72 + 1, 24);
                v73 = &v138;
                v74 = v149;
              }
            }

            v75 = &v74[24 * v150];
            v76 = *v73;
            *(v75 + 2) = v73[2];
            *v75 = v76;
            v77 = ++v150;
            if (__src)
            {
              LODWORD(v138) = 3;
              v139 = " elements in dilation";
              v140[0] = 21;
              v78 = &v138;
              v79 = v149;
              if (v77 >= v151)
              {
                if (v149 <= &v138 && v149 + 24 * v77 > &v138)
                {
                  v133 = &v138 - v149;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v77 + 1, 24);
                  v79 = v149;
                  v78 = (v149 + v133);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v77 + 1, 24);
                  v78 = &v138;
                  v79 = v149;
                }
              }

              v80 = &v79[24 * v150];
              v81 = *v78;
              *(v80 + 2) = v78[2];
              *v80 = v81;
              ++v150;
            }
          }
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 != 1)
        {
          return p_src;
        }

        if (v158 != &v159)
        {
          free(v158);
        }

        v82 = __p;
        if (__p)
        {
          v83 = v157;
          v84 = __p;
          if (v157 != __p)
          {
            do
            {
              v83 = sub_100052FFC(v83 - 1);
            }

            while (v83 != v82);
            v84 = __p;
          }

          v157 = v82;
          operator delete(v84);
        }

        v45 = v154;
        if (v154)
        {
          v85 = v155;
          v47 = v154;
          if (v155 != v154)
          {
            do
            {
              v86 = *--v85;
              *v85 = 0;
              if (v86)
              {
                operator delete[]();
              }
            }

            while (v85 != v45);
            goto LABEL_98;
          }

LABEL_99:
          v155 = v45;
          operator delete(v47);
        }

LABEL_100:
        if (v149 != v152)
        {
          free(v149);
        }

        return p_src;
      }
    }
  }

  __src = 0;
  v147 = 0;
  v138 = &__src;
  v142 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v142);
  if (DefiningOp && sub_100250A7C(&v138, DefiningOp))
  {
    sub_1001F2F84(v6, &__src);
    if ((v153 & 1) == 0)
    {
LABEL_237:
      sub_10024F430();
      goto LABEL_238;
    }

    v142 = v144;
    v143 = 0xC00000000;
    p_src = v147;
    v26 = __src;
    if (!v147)
    {
LABEL_109:
      if (v26 != &v148)
      {
        free(v26);
      }

LABEL_111:
      v89 = v142;
      if (*v142 < 1 || *(v142 + 1) <= 0)
      {
        v141 = 257;
        mlir::Operation::emitError(&__src, v2, &v138);
        if (__src)
        {
          LODWORD(v134) = 3;
          v135 = "dilation must be > 0";
          v136 = 20;
          v91 = &v134;
          v92 = v149;
          if (v150 >= v151)
          {
            if (v149 <= &v134 && v149 + 24 * v150 > &v134)
            {
              v131 = &v134 - v149;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v92 = v149;
              v91 = (v149 + v131);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
              v91 = &v134;
              v92 = v149;
            }
          }

          v93 = &v92[24 * v150];
          v94 = *v91;
          *(v93 + 2) = v91[2];
          *v93 = v94;
          ++v150;
        }

        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
        if (__src)
        {
          mlir::InFlightDiagnostic::report(&__src);
        }

        if (v159 == 1)
        {
          if (v158 != &v159)
          {
            free(v158);
          }

          v95 = __p;
          if (__p)
          {
            v96 = v157;
            v97 = __p;
            if (v157 != __p)
            {
              do
              {
                v96 = sub_100052FFC(v96 - 1);
              }

              while (v96 != v95);
              v97 = __p;
            }

            v157 = v95;
            operator delete(v97);
          }

          v98 = v154;
          if (v154)
          {
            v99 = v155;
            v100 = v154;
            if (v155 != v154)
            {
              do
              {
                v101 = *--v99;
                *v99 = 0;
                if (v101)
                {
                  operator delete[]();
                }
              }

              while (v99 != v98);
              v100 = v154;
            }

            v155 = v98;
            operator delete(v100);
          }

          if (v149 != v152)
          {
            free(v149);
          }
        }

        v90 = 0;
        v89 = v142;
      }

      else
      {
        v90 = 1;
      }

      if (v89 != v144)
      {
        free(v89);
      }

      if (!v90)
      {
        return p_src;
      }

      goto LABEL_141;
    }

    if (__src != &v148)
    {
      v142 = __src;
      v143 = v147;
      goto LABEL_111;
    }

    if (v147 < 0xD)
    {
      v88 = v144;
      v87 = v147;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v147, 4);
      v87 = v147;
      if (!v147)
      {
LABEL_107:
        LODWORD(v143) = p_src;
        LODWORD(v147) = 0;
        if ((v153 & 1) == 0)
        {
          goto LABEL_111;
        }

        v26 = __src;
        goto LABEL_109;
      }

      v26 = __src;
      v88 = v142;
    }

    memcpy(v88, v26, 4 * v87);
    goto LABEL_107;
  }

LABEL_141:
  __src = 0;
  v147 = 0;
  v138 = &__src;
  v142 = v5;
  v102 = mlir::Value::getDefiningOp(&v142);
  if (!v102 || !sub_100250A7C(&v138, v102))
  {
    return 1;
  }

  sub_1001F2F84(v5, &__src);
  if ((v153 & 1) == 0)
  {
    goto LABEL_237;
  }

  v142 = v144;
  v143 = 0xC00000000;
  v103 = v147;
  v104 = __src;
  if (v147)
  {
    if (__src != &v148)
    {
      v142 = __src;
      v143 = v147;
      goto LABEL_156;
    }

    if (v147 < 0xD)
    {
      v106 = v144;
      v105 = v147;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v142, v144, v147, 4);
      v105 = v147;
      if (!v147)
      {
LABEL_152:
        LODWORD(v143) = v103;
        LODWORD(v147) = 0;
        if ((v153 & 1) == 0)
        {
          goto LABEL_156;
        }

        v104 = __src;
        goto LABEL_154;
      }

      v104 = __src;
      v106 = v142;
    }

    memcpy(v106, v104, 4 * v105);
    goto LABEL_152;
  }

LABEL_154:
  if (v104 != &v148)
  {
    free(v104);
  }

LABEL_156:
  if ((*v142 & 0x80000000) == 0 && (*(v142 + 1) & 0x80000000) == 0 && (*(v142 + 2) & 0x80000000) == 0)
  {
    __src = 0;
    v147 = 0;
    v134 = &__src;
    v138 = v4;
    v107 = mlir::Value::getDefiningOp(&v138);
    if (!v107 || !sub_100250A7C(&v134, v107))
    {
LABEL_172:
      v110 = 0;
      goto LABEL_197;
    }

    sub_1001F2F84(v4, &__src);
    if (v153)
    {
      v138 = v140;
      v139 = 0xC00000000;
      if (!v147 || (sub_10008BE34(&v138, &__src), (v153 & 1) != 0))
      {
        if (__src != &v148)
        {
          free(__src);
        }
      }

      v108 = v138;
      if (*v142 <= *v138 / 2 && *(v142 + 1) <= *(v138 + 1) / 2 && *(v142 + 2) <= *(v138 + 2) / 2)
      {
        v110 = 0;
        if (v138 == v140)
        {
LABEL_171:
          if (v110)
          {
            goto LABEL_197;
          }

          goto LABEL_172;
        }
      }

      else
      {
        v137 = 257;
        mlir::Operation::emitError(&__src, v2, &v134);
        sub_100081F48(&__src, "padding must be <= kernel_size / 2");
        p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v109);
        sub_100059A74(&__src);
        v110 = 1;
        v108 = v138;
        if (v138 == v140)
        {
          goto LABEL_171;
        }
      }

      free(v108);
      goto LABEL_171;
    }

    goto LABEL_237;
  }

  v141 = 257;
  mlir::Operation::emitError(&__src, v2, &v138);
  if (__src)
  {
    LODWORD(v134) = 3;
    v135 = "padding must be >= 0";
    v136 = 20;
    v111 = &v134;
    v112 = v149;
    if (v150 >= v151)
    {
      if (v149 <= &v134 && v149 + 24 * v150 > &v134)
      {
        v130 = &v134 - v149;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
        v112 = v149;
        v111 = (v149 + v130);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v152, v150 + 1, 24);
        v111 = &v134;
        v112 = v149;
      }
    }

    v113 = &v112[24 * v150];
    v114 = *v111;
    *(v113 + 2) = v111[2];
    *v113 = v114;
    ++v150;
  }

  p_src = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
  if (__src)
  {
    mlir::InFlightDiagnostic::report(&__src);
  }

  if (v159 == 1)
  {
    if (v158 != &v159)
    {
      free(v158);
    }

    v115 = __p;
    if (__p)
    {
      v116 = v157;
      v117 = __p;
      if (v157 != __p)
      {
        do
        {
          v116 = sub_100052FFC(v116 - 1);
        }

        while (v116 != v115);
        v117 = __p;
      }

      v157 = v115;
      operator delete(v117);
    }

    v118 = v154;
    if (v154)
    {
      v119 = v155;
      v120 = v154;
      if (v155 != v154)
      {
        do
        {
          v121 = *--v119;
          *v119 = 0;
          if (v121)
          {
            operator delete[]();
          }
        }

        while (v119 != v118);
        v120 = v154;
      }

      v155 = v118;
      operator delete(v120);
    }

    if (v149 != v152)
    {
      free(v149);
    }
  }

  v110 = 1;
LABEL_197:
  if (v142 != v144)
  {
    free(v142);
  }

  if (!v110)
  {
    return 1;
  }

  return p_src;
}

void mlir::ODIE::Compiler::CoreML::AvgPool2dOp::verify(mlir::Operation **this)
{
  v44 = *this;
  v43 = 2;
  v1 = *(v44 + 9);
  p_src = *(v1 + 56);
  v3 = *(v1 + 120);
  __src = (p_src[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    Shape = mlir::RankedTensorType::getShape(&__src);
    if (v5)
    {
      v6 = 8 * v5;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v7, v8) != 2)
      {
        return;
      }
    }
  }

  __src = (*(*(*(v44 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v9 = mlir::RankedTensorType::getShape(&__src);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v12 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v12, v13) != 2)
      {
        return;
      }
    }
  }

  __src = (*(v3 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v14 = mlir::RankedTensorType::getShape(&__src);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v17 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v17, v18) != 2)
      {
        return;
      }
    }
  }

  __src = 0;
  v48 = 0;
  v45[0] = &__src;
  v61 = v3;
  DefiningOp = mlir::Value::getDefiningOp(&v61);
  if (DefiningOp && sub_100250A7C(v45, DefiningOp))
  {
    sub_1001F2F84(v3, &__src);
    if ((v54 & 1) == 0)
    {
      goto LABEL_80;
    }

    v3 = v63;
    v61 = v63;
    v62 = 0xC00000000;
    v20 = v48;
    v21 = __src;
    if (!v48)
    {
      goto LABEL_33;
    }

    if (__src != &v49)
    {
      v61 = __src;
      v62 = v48;
      goto LABEL_35;
    }

    if (v48 < 0xD)
    {
      v23 = v63;
      v22 = v48;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v48, 4);
      v22 = v48;
      if (!v48)
      {
LABEL_31:
        LODWORD(v62) = v20;
        LODWORD(v48) = 0;
        if ((v54 & 1) == 0)
        {
LABEL_35:
          if (*v61 < 0 || v61[1] < 0)
          {
            v46[8] = 257;
            p_src = &__src;
            mlir::OpState::emitError(&v44, v45, &__src);
            if (!__src)
            {
LABEL_50:
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
              if (__src)
              {
                mlir::InFlightDiagnostic::report(&__src);
              }

              if (v60 == 1)
              {
                if (v59 != &v60)
                {
                  free(v59);
                }

                v33 = __p;
                if (__p)
                {
                  v34 = v58;
                  v35 = __p;
                  if (v58 != __p)
                  {
                    do
                    {
                      v34 = sub_100052FFC(v34 - 1);
                    }

                    while (v34 != v33);
                    v35 = __p;
                  }

                  v58 = v33;
                  operator delete(v35);
                }

                v36 = v55;
                if (v55)
                {
                  v37 = v56;
                  v38 = v55;
                  if (v56 != v55)
                  {
                    do
                    {
                      v39 = *--v37;
                      *v37 = 0;
                      if (v39)
                      {
                        operator delete[]();
                      }
                    }

                    while (v37 != v36);
                    v38 = v55;
                  }

                  v56 = v36;
                  operator delete(v38);
                }

                if (v50 != v53)
                {
                  free(v50);
                }
              }

              goto LABEL_74;
            }

            LODWORD(v41[0]) = 3;
            v41[1] = "padding must be >= 0";
            v41[2] = 20;
            v28 = v51;
            v29 = v41;
            v30 = v50;
            if (v51 >= v52)
            {
              if (v50 <= v41 && v50 + 24 * v51 > v41)
              {
                goto LABEL_81;
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v29 = v41;
              v30 = v50;
            }

LABEL_49:
            v31 = &v30[24 * v51];
            v32 = *v29;
            *(v31 + 2) = *(v29 + 2);
            *v31 = v32;
            ++v51;
            goto LABEL_50;
          }

          __src = 0;
          v48 = 0;
          v41[0] = &__src;
          v45[0] = p_src;
          v24 = mlir::Value::getDefiningOp(v45);
          if (!v24 || !sub_100250A7C(v41, v24))
          {
LABEL_74:
            if (v61 != v3)
            {
              free(v61);
            }

            return;
          }

          sub_1001F2F84(p_src, &__src);
          if (v54)
          {
            v45[0] = v46;
            v45[1] = 0xC00000000;
            if (!v48 || (sub_10008BE34(v45, &__src), (v54 & 1) != 0))
            {
              if (__src != &v49)
              {
                free(__src);
              }
            }

            v25 = v45[0];
            if (*v61 > *v45[0] / 2 || v61[1] > *(v45[0] + 1) / 2)
            {
              v42 = 257;
              mlir::OpState::emitError(&v44, v41, &__src);
              sub_100081F48(&__src, "padding must be <= kernel_size / ");
              sub_1001F291C(v26, &v43);
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
              sub_100059A74(&__src);
              v25 = v45[0];
            }

            if (v25 != v46)
            {
              free(v25);
            }

            goto LABEL_74;
          }

LABEL_80:
          sub_10024F430();
LABEL_81:
          v40 = (v41 - v30);
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v53, v28 + 1, 24);
          v30 = v50;
          v29 = &v40[v50];
          goto LABEL_49;
        }

        v21 = __src;
LABEL_33:
        if (v21 != &v49)
        {
          free(v21);
        }

        goto LABEL_35;
      }

      v21 = __src;
      v23 = v61;
    }

    memcpy(v23, v21, 4 * v22);
    goto LABEL_31;
  }
}

void mlir::ODIE::Compiler::CoreML::AvgPool3dOp::verify(mlir::Operation **this)
{
  v44 = *this;
  v43 = 3;
  v1 = *(v44 + 9);
  p_src = *(v1 + 56);
  v3 = *(v1 + 120);
  __src = (p_src[1] & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    Shape = mlir::RankedTensorType::getShape(&__src);
    if (v5)
    {
      v6 = 8 * v5;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v7 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v7, v8) != 3)
      {
        return;
      }
    }
  }

  __src = (*(*(*(v44 + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v9 = mlir::RankedTensorType::getShape(&__src);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v12 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v12, v13) != 3)
      {
        return;
      }
    }
  }

  __src = (*(v3 + 1) & 0xFFFFFFFFFFFFFFF8);
  if (mlir::TensorType::hasRank(&__src))
  {
    v14 = mlir::RankedTensorType::getShape(&__src);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v17 = mlir::RankedTensorType::getShape(&__src);
      if (mlir::ShapedType::getNumElements(v17, v18) != 3)
      {
        return;
      }
    }
  }

  __src = 0;
  v48 = 0;
  v45[0] = &__src;
  v61 = v3;
  DefiningOp = mlir::Value::getDefiningOp(&v61);
  if (DefiningOp && sub_100250A7C(v45, DefiningOp))
  {
    sub_1001F2F84(v3, &__src);
    if ((v54 & 1) == 0)
    {
      goto LABEL_80;
    }

    v3 = v63;
    v61 = v63;
    v62 = 0xC00000000;
    v20 = v48;
    v21 = __src;
    if (!v48)
    {
      goto LABEL_33;
    }

    if (__src != &v49)
    {
      v61 = __src;
      v62 = v48;
      goto LABEL_35;
    }

    if (v48 < 0xD)
    {
      v23 = v63;
      v22 = v48;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v48, 4);
      v22 = v48;
      if (!v48)
      {
LABEL_31:
        LODWORD(v62) = v20;
        LODWORD(v48) = 0;
        if ((v54 & 1) == 0)
        {
LABEL_35:
          if (*v61 < 0 || v61[1] < 0)
          {
            v46[8] = 257;
            p_src = &__src;
            mlir::OpState::emitError(&v44, v45, &__src);
            if (!__src)
            {
LABEL_50:
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__src);
              if (__src)
              {
                mlir::InFlightDiagnostic::report(&__src);
              }

              if (v60 == 1)
              {
                if (v59 != &v60)
                {
                  free(v59);
                }

                v33 = __p;
                if (__p)
                {
                  v34 = v58;
                  v35 = __p;
                  if (v58 != __p)
                  {
                    do
                    {
                      v34 = sub_100052FFC(v34 - 1);
                    }

                    while (v34 != v33);
                    v35 = __p;
                  }

                  v58 = v33;
                  operator delete(v35);
                }

                v36 = v55;
                if (v55)
                {
                  v37 = v56;
                  v38 = v55;
                  if (v56 != v55)
                  {
                    do
                    {
                      v39 = *--v37;
                      *v37 = 0;
                      if (v39)
                      {
                        operator delete[]();
                      }
                    }

                    while (v37 != v36);
                    v38 = v55;
                  }

                  v56 = v36;
                  operator delete(v38);
                }

                if (v50 != v53)
                {
                  free(v50);
                }
              }

              goto LABEL_74;
            }

            LODWORD(v41[0]) = 3;
            v41[1] = "padding must be >= 0";
            v41[2] = 20;
            v28 = v51;
            v29 = v41;
            v30 = v50;
            if (v51 >= v52)
            {
              if (v50 <= v41 && v50 + 24 * v51 > v41)
              {
                goto LABEL_81;
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod(&v50, v53, v51 + 1, 24);
              v29 = v41;
              v30 = v50;
            }

LABEL_49:
            v31 = &v30[24 * v51];
            v32 = *v29;
            *(v31 + 2) = *(v29 + 2);
            *v31 = v32;
            ++v51;
            goto LABEL_50;
          }

          __src = 0;
          v48 = 0;
          v41[0] = &__src;
          v45[0] = p_src;
          v24 = mlir::Value::getDefiningOp(v45);
          if (!v24 || !sub_100250A7C(v41, v24))
          {
LABEL_74:
            if (v61 != v3)
            {
              free(v61);
            }

            return;
          }

          sub_1001F2F84(p_src, &__src);
          if (v54)
          {
            v45[0] = v46;
            v45[1] = 0xC00000000;
            if (!v48 || (sub_10008BE34(v45, &__src), (v54 & 1) != 0))
            {
              if (__src != &v49)
              {
                free(__src);
              }
            }

            v25 = v45[0];
            if (*v61 > *v45[0] / 3 || v61[1] > *(v45[0] + 1) / 3)
            {
              v42 = 257;
              mlir::OpState::emitError(&v44, v41, &__src);
              sub_100081F48(&__src, "padding must be <= kernel_size / ");
              sub_1001F291C(v26, &v43);
              mlir::InFlightDiagnostic::operator llvm::LogicalResult(v27);
              sub_100059A74(&__src);
              v25 = v45[0];
            }

            if (v25 != v46)
            {
              free(v25);
            }

            goto LABEL_74;
          }

LABEL_80:
          sub_10024F430();
LABEL_81:
          v40 = (v41 - v30);
          llvm::SmallVectorBase<unsigned int>::grow_pod((p_src + 3), v53, v28 + 1, 24);
          v30 = v50;
          v29 = &v40[v50];
          goto LABEL_49;
        }

        v21 = __src;
LABEL_33:
        if (v21 != &v49)
        {
          free(v21);
        }

        goto LABEL_35;
      }

      v21 = __src;
      v23 = v61;
    }

    memcpy(v23, v21, 4 * v22);
    goto LABEL_31;
  }
}

BOOL mlir::ODIE::Compiler::CoreML::ReadHandleOp::verify(mlir::Operation **this)
{
  v40[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  InnerType = mlir::ODIE::Compiler::CoreML::HandleType::getInnerType(v40);
  v3 = this;
  v4 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;
  if (InnerType == v4)
  {
    return 1;
  }

  v36 = 257;
  mlir::OpState::emitError(v3, v35, v40);
  if (v40[0])
  {
    v37 = 3;
    v38 = "output type expected to be ";
    v39 = 27;
    v6 = &v37;
    v7 = v41;
    if (v42 >= v43)
    {
      if (v41 <= &v37 && v41 + 24 * v42 > &v37)
      {
        v31 = &v37 - v41;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v7 = v41;
        v6 = (v41 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v6 = &v37;
        v7 = v41;
      }
    }

    v8 = &v7[24 * v42];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v42;
    if (v40[0])
    {
      v10 = &v37;
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, InnerType);
      v11 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v32 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v11 = v41;
          v10 = (v41 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v10 = &v37;
          v11 = v41;
        }
      }

      v12 = &v11[24 * v42];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v42;
      if (v40[0])
      {
        v37 = 3;
        v38 = ", got ";
        v39 = 6;
        v15 = &v37;
        v16 = v41;
        if (v14 >= v43)
        {
          if (v41 <= &v37 && v41 + 24 * v14 > &v37)
          {
            v33 = &v37 - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v14 + 1, 24);
            v16 = v41;
            v15 = (v41 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v14 + 1, 24);
            v15 = &v37;
            v16 = v41;
          }
        }

        v17 = &v16[24 * v42];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v42;
        if (v40[0])
        {
          v19 = &v37;
          mlir::DiagnosticArgument::DiagnosticArgument(&v37, v4);
          v20 = v41;
          if (v42 >= v43)
          {
            if (v41 <= &v37 && v41 + 24 * v42 > &v37)
            {
              v34 = &v37 - v41;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
              v20 = v41;
              v19 = (v41 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
              v19 = &v37;
              v20 = v41;
            }
          }

          v21 = &v20[24 * v42];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v42;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v48;
      v25 = __p;
      if (v48 != __p)
      {
        do
        {
          v24 = sub_100052FFC(v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v48 = v23;
      operator delete(v25);
    }

    v26 = v45;
    if (v45)
    {
      v27 = v46;
      v28 = v45;
      if (v46 != v45)
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
        v28 = v45;
      }

      v46 = v26;
      operator delete(v28);
    }

    if (v41 != v44)
    {
      free(v41);
    }
  }

  return v5;
}

double mlir::ODIE::Compiler::CoreML::ReadHandleOp::getInputIntents@<D0>(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 1uLL);
  v7 = mlir::Attribute::getContext((*this + 24));
  v8 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v7, 1uLL);
  *(a2 + 16) = v6;
  *a2 = a2 + 16;
  *(a2 + 24) = v8;
  *&result = 0x600000002;
  *(a2 + 8) = 0x600000002;
  *(a2 + 64) = 1;
  return result;
}

double mlir::ODIE::Compiler::CoreML::ReadHandleOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreML::ReadHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  v7 = mlir::Attribute::getContext((*this + 24));
  v8 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v7, 1uLL);
  *(a2 + 16) = v6;
  *a2 = a2 + 16;
  *(a2 + 24) = v8;
  *&result = 0x600000002;
  *(a2 + 8) = 0x600000002;
  *(a2 + 64) = 1;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::WriteHandleOp::verify(mlir::Operation **this)
{
  v40[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  InnerType = mlir::ODIE::Compiler::CoreML::HandleType::getInnerType(v40);
  v3 = this;
  v4 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (InnerType == v4)
  {
    return 1;
  }

  v36 = 257;
  mlir::OpState::emitError(v3, v35, v40);
  if (v40[0])
  {
    v37 = 3;
    v38 = "data type expected to be ";
    v39 = 25;
    v6 = &v37;
    v7 = v41;
    if (v42 >= v43)
    {
      if (v41 <= &v37 && v41 + 24 * v42 > &v37)
      {
        v31 = &v37 - v41;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v7 = v41;
        v6 = (v41 + v31);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
        v6 = &v37;
        v7 = v41;
      }
    }

    v8 = &v7[24 * v42];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v42;
    if (v40[0])
    {
      v10 = &v37;
      mlir::DiagnosticArgument::DiagnosticArgument(&v37, InnerType);
      v11 = v41;
      if (v42 >= v43)
      {
        if (v41 <= &v37 && v41 + 24 * v42 > &v37)
        {
          v32 = &v37 - v41;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v11 = v41;
          v10 = (v41 + v32);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
          v10 = &v37;
          v11 = v41;
        }
      }

      v12 = &v11[24 * v42];
      v13 = *v10;
      *(v12 + 2) = *(v10 + 2);
      *v12 = v13;
      v14 = ++v42;
      if (v40[0])
      {
        v37 = 3;
        v38 = ", got ";
        v39 = 6;
        v15 = &v37;
        v16 = v41;
        if (v14 >= v43)
        {
          if (v41 <= &v37 && v41 + 24 * v14 > &v37)
          {
            v33 = &v37 - v41;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v14 + 1, 24);
            v16 = v41;
            v15 = (v41 + v33);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v14 + 1, 24);
            v15 = &v37;
            v16 = v41;
          }
        }

        v17 = &v16[24 * v42];
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        ++v42;
        if (v40[0])
        {
          v19 = &v37;
          mlir::DiagnosticArgument::DiagnosticArgument(&v37, v4);
          v20 = v41;
          if (v42 >= v43)
          {
            if (v41 <= &v37 && v41 + 24 * v42 > &v37)
            {
              v34 = &v37 - v41;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
              v20 = v41;
              v19 = (v41 + v34);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v41, v44, v42 + 1, 24);
              v19 = &v37;
              v20 = v41;
            }
          }

          v21 = &v20[24 * v42];
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          ++v42;
        }
      }
    }
  }

  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v40);
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
  }

  if (v50 == 1)
  {
    if (v49 != &v50)
    {
      free(v49);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v48;
      v25 = __p;
      if (v48 != __p)
      {
        do
        {
          v24 = sub_100052FFC(v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v48 = v23;
      operator delete(v25);
    }

    v26 = v45;
    if (v45)
    {
      v27 = v46;
      v28 = v45;
      if (v46 != v45)
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
        v28 = v45;
      }

      v46 = v26;
      operator delete(v28);
    }

    if (v41 != v44)
    {
      free(v41);
    }
  }

  return v5;
}

double mlir::ODIE::Compiler::CoreML::WriteHandleOp::getInputIntents@<D0>(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 1uLL);
  v7 = mlir::Attribute::getContext((*this + 24));
  v8 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v7, 3uLL);
  v9 = mlir::Attribute::getContext((*this + 24));
  v10 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(v9, 1uLL);
  *(a2 + 16) = v6;
  *a2 = a2 + 16;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *&result = 0x600000003;
  *(a2 + 8) = 0x600000003;
  *(a2 + 64) = 1;
  return result;
}

double mlir::ODIE::Compiler::CoreML::WriteHandleOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreML::WriteHandleOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 1uLL);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

double mlir::ODIE::Compiler::CoreML::CreateTokenOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreML::CreateTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 0);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

BOOL mlir::ODIE::Compiler::CoreML::JoinTokenOp::verify(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 9);
  v4 = *(v3 + 24);
  v80 = v82;
  v82[0] = v4;
  v81 = 0x600000001;
  v5 = *(v2 + 17);
  v6 = v5 - 1;
  if (v5 < 7)
  {
    v7 = 1;
    v8 = v82;
    if (v5 == 1)
    {
      v21 = v5;
      LODWORD(v81) = v5;
      goto LABEL_20;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v80, v82, *(v2 + 17), 8);
    v7 = v81;
    v8 = v80;
  }

  v9 = &v8[v7];
  if (v6 >= 0xF && ((v10 = &v8[v7 - 1 + v5], v9 < v3 + 32 * v5) ? (v11 = v3 + 56 >= v10) : (v11 = 1), v11))
  {
    v12 = v6 & 3;
    if ((v6 & 3) == 0)
    {
      v12 = 4;
    }

    v13 = v6 - v12;
    v14 = &v9[v13];
    v15 = (v3 + 120);
    v16 = (v9 + 2);
    v17 = v13;
    do
    {
      v18 = v15 - 8;
      v19 = vld4q_f64(v18);
      v20 = vld4q_f64(v15);
      *(v16 - 1) = v19;
      *v16 = v20;
      v15 += 16;
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v9 = v14;
  }

  else
  {
    v13 = 0;
  }

  v22 = ~v13 + v5;
  v23 = (v3 + 32 * v13 + 56);
  do
  {
    v24 = *v23;
    v23 += 4;
    *v9++ = v24;
    --v22;
  }

  while (v22);
  v8 = v80;
  v21 = (v81 + v6);
  LODWORD(v81) = v21;
  if (!v21)
  {
LABEL_32:
    v33 = 1;
    goto LABEL_33;
  }

LABEL_20:
  v25 = 8 * v21;
  while (1)
  {
    HandleForToken = mlir::ODIE::Compiler::getHandleForToken(*v8);
    if (HandleForToken)
    {
      break;
    }

    ++v8;
    v25 -= 8;
    if (!v25)
    {
      goto LABEL_32;
    }
  }

  if (!v81)
  {
    goto LABEL_32;
  }

  v27 = HandleForToken;
  v28 = v80;
  v29 = 8 * v81;
  while (1)
  {
    v30 = *v28;
    v31 = mlir::ODIE::Compiler::getHandleForToken(*v28);
    if (v31 && v31 != v27)
    {
      break;
    }

    ++v28;
    v29 -= 8;
    if (!v29)
    {
      goto LABEL_32;
    }
  }

  v35 = v31;
  v64 = 257;
  mlir::OpState::emitError(this, v63, &v68);
  if (v68)
  {
    v65 = 3;
    v66 = "expected input token '";
    v67 = 22;
    v36 = &v65;
    v37 = v70;
    if (v71 >= v72)
    {
      if (v70 <= &v65 && v70 + 24 * v71 > &v65)
      {
        v59 = &v65 - v70;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
        v37 = v70;
        v36 = (v70 + v59);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
        v36 = &v65;
        v37 = v70;
      }
    }

    v38 = &v37[24 * v71];
    v39 = *v36;
    *(v38 + 2) = *(v36 + 2);
    *v38 = v39;
    ++v71;
    if (v68)
    {
      mlir::Diagnostic::operator<<(v69, v30);
      if (v68)
      {
        v65 = 3;
        v66 = "' to represent state for '";
        v67 = 26;
        v40 = &v65;
        v41 = v70;
        if (v71 >= v72)
        {
          if (v70 <= &v65 && v70 + 24 * v71 > &v65)
          {
            v60 = &v65 - v70;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v41 = v70;
            v40 = (v70 + v60);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
            v40 = &v65;
            v41 = v70;
          }
        }

        v42 = &v41[24 * v71];
        v43 = *v40;
        *(v42 + 2) = *(v40 + 2);
        *v42 = v43;
        ++v71;
        if (v68)
        {
          mlir::Diagnostic::operator<<(v69, v27);
          if (v68)
          {
            v65 = 3;
            v66 = "', found that it represents '";
            v67 = 29;
            v44 = &v65;
            v45 = v70;
            if (v71 >= v72)
            {
              if (v70 <= &v65 && v70 + 24 * v71 > &v65)
              {
                v61 = &v65 - v70;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
                v45 = v70;
                v44 = (v70 + v61);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
                v44 = &v65;
                v45 = v70;
              }
            }

            v46 = &v45[24 * v71];
            v47 = *v44;
            *(v46 + 2) = *(v44 + 2);
            *v46 = v47;
            ++v71;
            if (v68)
            {
              mlir::Diagnostic::operator<<(v69, v35);
              if (v68)
              {
                v65 = 3;
                v66 = "'";
                v67 = 1;
                v48 = &v65;
                v49 = v70;
                if (v71 >= v72)
                {
                  if (v70 <= &v65 && v70 + 24 * v71 > &v65)
                  {
                    v62 = &v65 - v70;
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
                    v49 = v70;
                    v48 = (v70 + v62);
                  }

                  else
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod(&v70, v73, v71 + 1, 24);
                    v48 = &v65;
                    v49 = v70;
                  }
                }

                v50 = &v49[24 * v71];
                v51 = *v48;
                *(v50 + 2) = *(v48 + 2);
                *v50 = v51;
                ++v71;
              }
            }
          }
        }
      }
    }
  }

  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v68);
  if (v68)
  {
    mlir::InFlightDiagnostic::report(&v68);
  }

  if (v79)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v77;
      v54 = __p;
      if (v77 != __p)
      {
        do
        {
          v53 = sub_100052FFC(v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v77 = v52;
      operator delete(v54);
    }

    v55 = v74;
    if (v74)
    {
      v56 = v75;
      v57 = v74;
      if (v75 != v74)
      {
        do
        {
          v58 = *--v56;
          *v56 = 0;
          if (v58)
          {
            operator delete[]();
          }
        }

        while (v56 != v55);
        v57 = v74;
      }

      v75 = v55;
      operator delete(v57);
    }

    if (v70 != v73)
    {
      free(v70);
    }
  }

LABEL_33:
  if (v80 != v82)
  {
    free(v80);
  }

  return v33;
}

void mlir::ODIE::Compiler::CoreML::JoinTokenOp::getInputIntents(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*this + 36);
  Context = mlir::Attribute::getContext((*this + 24));
  v6 = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 1uLL);
  v7 = v6;
  __src = v24;
  v23 = 0x600000000;
  if (v4 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v24, v4, 8);
    v8 = (__src + 8 * (v4 & 0xFFFFFFFC));
    v9 = v4 & 3;
    v10 = vdupq_n_s64(v7);
    v11 = (__src + 16);
    v12 = v4 & 0xFFFFFFFC;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if ((v4 & 0xFFFFFFFC) != v4)
    {
      do
      {
        *v8++ = v7;
        --v9;
      }

      while (v9);
    }

    goto LABEL_24;
  }

  if (!v4)
  {
    goto LABEL_24;
  }

  v13 = vdupq_n_s64(v4 - 1);
  v14 = v4 + 1;
  v15 = vmovn_s64(vcgeq_u64(v13, xmmword_10028FC40));
  if (v15.i8[0])
  {
    v24[0] = v6;
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
LABEL_10:
      if (v16 == 2)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v16 = v14 & 0xE;
    if ((v15.i8[4] & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v24[1] = v6;
  if (v16 == 2)
  {
    goto LABEL_24;
  }

LABEL_14:
  v17 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FCF0));
  if ((v17.i8[0] & 1) == 0)
  {
    if ((v17.i8[4] & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v24[3] = v6;
    if (v16 == 4)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v24[2] = v6;
  if (v17.i8[4])
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v16 == 4)
  {
    goto LABEL_24;
  }

LABEL_20:
  v18 = vmovn_s64(vcgtq_u64(v13, xmmword_10028FD00));
  if (v18.i8[0])
  {
    v24[4] = v6;
  }

  if (v18.i8[4])
  {
    v24[5] = v6;
  }

LABEL_24:
  LODWORD(v23) = v4;
  *a2 = a2 + 16;
  *(a2 + 8) = 0x600000000;
  v19 = __src;
  if (v4 && &__src != a2)
  {
    if (__src == v24)
    {
      v21 = v4;
      if (v4 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v4, 8), v21 = v23, v19 = __src, v23))
      {
        memcpy(*a2, v19, 8 * v21);
        v19 = __src;
      }

      *(a2 + 8) = v4;
    }

    else
    {
      *a2 = __src;
      v20 = HIDWORD(v23);
      *(a2 + 8) = v4;
      *(a2 + 12) = v20;
      __src = v24;
      HIDWORD(v23) = 0;
      v19 = v24;
    }

    LODWORD(v23) = 0;
  }

  *(a2 + 64) = 1;
  if (v19 != v24)
  {
    free(v19);
  }
}

double mlir::ODIE::Compiler::CoreML::JoinTokenOp::getOutputIntents@<D0>(mlir::ODIE::Compiler::CoreML::JoinTokenOp *this@<X0>, uint64_t a2@<X8>)
{
  Context = mlir::Attribute::getContext((*this + 24));
  *(a2 + 16) = mlir::ODIE::Compiler::CoreML::IntentAttr::get(Context, 1uLL);
  *a2 = a2 + 16;
  *&result = 0x600000001;
  *(a2 + 8) = 0x600000001;
  *(a2 + 64) = 1;
  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::TileOp::fold(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*(*a1 + 72) + 24);
  v24 = *(v3 + 8) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v2 - 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(&v24))
  {
    Shape = mlir::TensorType::getShape(&v24);
    if (v5)
    {
      v6 = 8 * v5;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if (mlir::TensorType::hasRank(&v23))
      {
        v7 = mlir::TensorType::getShape(&v23);
        if (v8)
        {
          v9 = 8 * v8;
          while (*v7 != 0x8000000000000000)
          {
            ++v7;
            v9 -= 8;
            if (!v9)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          if (v24 == v23)
          {
            return v3 | 4;
          }
        }
      }
    }
  }

  v22 = 0;
  v10 = *(*(*a1 + 72) + 56);
  *&v25 = &v22;
  *&v19 = v10;
  result = mlir::Value::getDefiningOp(&v19);
  if (!result)
  {
    return result;
  }

  if (!sub_100277970(&v25, result))
  {
    return 0;
  }

  sub_1000B83F8(&v22, &v19);
  mlir::TensorType::getShape(&v24);
  if (v12 < 1)
  {
    return v3 | 4;
  }

  v13 = 0;
  while (1)
  {
    v25 = v19;
    v26 = v13 + v20;
    v27 = v21;
    mlir::DenseElementsAttr::IntElementIterator::operator*(&v25, &v17);
    if (v18 > 0x40)
    {
      v14 = *v17;
      operator delete[]();
    }

    if (!v18 || (v17 << -v18) >> -v18 != 1)
    {
      break;
    }

    ++v13;
    mlir::TensorType::getShape(&v24);
    if (v15 <= v13)
    {
      return v3 | 4;
    }
  }

  return 0;
}

BOOL mlir::ODIE::Compiler::CoreML::TileOp::verify(mlir::Operation **this)
{
  v20 = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(&v20);
  v19 = *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*mlir::RankedTensorType::getShape(&v19) == v2)
  {
    return 1;
  }

  v18 = 257;
  mlir::OpState::emitError(this, v17, v24);
  if (v24[0])
  {
    v21 = 3;
    v22 = "number of elements in dims must be equal to input rank";
    v23 = 54;
    v4 = &v21;
    v5 = v25;
    if (v26 >= v27)
    {
      if (v25 <= &v21 && v25 + 24 * v26 > &v21)
      {
        v16 = &v21 - v25;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v5 = v25;
        v4 = (v25 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v25, v28, v26 + 1, 24);
        v4 = &v21;
        v5 = v25;
      }
    }

    v6 = &v5[24 * v26];
    v7 = *v4;
    *(v6 + 2) = *(v4 + 2);
    *v6 = v7;
    ++v26;
  }

  v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
  if (v24[0])
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v32;
      v10 = __p;
      if (v32 != __p)
      {
        do
        {
          v9 = sub_100052FFC(v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v32 = v8;
      operator delete(v10);
    }

    v11 = v29;
    if (v29)
    {
      v12 = v30;
      v13 = v29;
      if (v30 != v29)
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
        v13 = v29;
      }

      v30 = v11;
      operator delete(v13);
    }

    if (v25 != v28)
    {
      free(v25);
    }
  }

  return v3;
}

uint64_t mlir::ODIE::Compiler::CoreML::AwaitOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19[0] = a4;
  v19[1] = a5;
  if (a5 == 1)
  {
    v13 = *(mlir::ValueRange::dereference_iterator(v19, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AsyncValueType,void>::id)
    {
      v13 = 0;
    }

    v18 = v13;
    if (v13)
    {
      InnerType = mlir::ODIE::Compiler::CoreML::AsyncValueType::getInnerType(&v18);
      v15 = *(a11 + 8);
      if (v15 >= *(a11 + 12))
      {
        v17 = InnerType;
        llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v15 + 1, 8);
        InnerType = v17;
        LODWORD(v15) = *(a11 + 8);
      }

      *(*a11 + 8 * v15) = InnerType;
      ++*(a11 + 8);
      return 1;
    }

    else
    {
    }
  }

  else
  {

    return sub_1001D4DAC(a2, a3, "expected exactly 1 operand");
  }
}

BOOL mlir::ODIE::Compiler::CoreML::Conv2dOp::verify(mlir::Operation **this)
{
  v1 = *this;
  v95[0] = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v95))
  {
    Shape = mlir::RankedTensorType::getShape(v95);
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
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(v95);
      if (v5 != 1 || (v6 = mlir::RankedTensorType::getShape(v95), mlir::ShapedType::getNumElements(v6, v7) != 2))
      {
        v91 = 257;
        mlir::Operation::emitError(v95, v1, v90);
        if (v95[0])
        {
          v92 = 3;
          v93 = "expect ";
          v94 = 7;
          v21 = &v92;
          v22 = v96;
          if (v97 >= v98)
          {
            if (v96 <= &v92 && v96 + 24 * v97 > &v92)
            {
              v81 = &v92 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v22 = v96;
              v21 = (v96 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v21 = &v92;
              v22 = v96;
            }
          }

          v23 = &v22[24 * v97];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          v25 = ++v97;
          if (v95[0])
          {
            v92 = 2;
            v93 = 2;
            v26 = &v92;
            v27 = v96;
            if (v25 >= v98)
            {
              if (v96 <= &v92 && v96 + 24 * v25 > &v92)
              {
                v83 = &v92 - v96;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v25 + 1, 24);
                v27 = v96;
                v26 = (v96 + v83);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v25 + 1, 24);
                v26 = &v92;
                v27 = v96;
              }
            }

            v28 = &v27[24 * v97];
            v29 = *v26;
            *(v28 + 2) = *(v26 + 2);
            *v28 = v29;
            v30 = ++v97;
            if (v95[0])
            {
              v92 = 3;
              v93 = " elements in strides";
              v94 = 20;
              v31 = &v92;
              v32 = v96;
              if (v30 >= v98)
              {
                if (v96 <= &v92 && v96 + 24 * v30 > &v92)
                {
                  v86 = &v92 - v96;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v30 + 1, 24);
                  v32 = v96;
                  v31 = (v96 + v86);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v30 + 1, 24);
                  v31 = &v92;
                  v32 = v96;
                }
              }

              v33 = &v32[24 * v97];
              v34 = *v31;
              *(v33 + 2) = *(v31 + 2);
              *v33 = v34;
              ++v97;
            }
          }
        }

        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
        if (v95[0])
        {
          mlir::InFlightDiagnostic::report(v95);
        }

        if (v105 == 1)
        {
          if (v104 != &v105)
          {
            free(v104);
          }

          v35 = __p;
          if (__p)
          {
            v36 = v103;
            v37 = __p;
            if (v103 != __p)
            {
              do
              {
                v36 = sub_100052FFC(v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v103 = v35;
            operator delete(v37);
          }

          v38 = v100;
          if (!v100)
          {
            goto LABEL_94;
          }

          v39 = v101;
          v40 = v100;
          if (v101 == v100)
          {
            goto LABEL_93;
          }

          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          goto LABEL_92;
        }

        return v20;
      }
    }
  }

  v95[0] = *(*(*(v1 + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v95))
  {
    goto LABEL_15;
  }

  v8 = mlir::RankedTensorType::getShape(v95);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  mlir::RankedTensorType::getShape(v95);
  if (v11 == 1)
  {
    v12 = mlir::RankedTensorType::getShape(v95);
    if (mlir::ShapedType::getNumElements(v12, v13) == 2)
    {
LABEL_15:
      v95[0] = *(*(*(v1 + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::TensorType::hasRank(v95))
      {
        return 1;
      }

      v14 = mlir::RankedTensorType::getShape(v95);
      if (v15)
      {
        v16 = 8 * v15;
        while (*v14 != 0x8000000000000000)
        {
          ++v14;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        return 1;
      }

LABEL_20:
      mlir::RankedTensorType::getShape(v95);
      if (v17 == 1)
      {
        v18 = mlir::RankedTensorType::getShape(v95);
        if (mlir::ShapedType::getNumElements(v18, v19) == 2)
        {
          return 1;
        }
      }

      v91 = 257;
      mlir::Operation::emitError(v95, v1, v90);
      if (v95[0])
      {
        v92 = 3;
        v93 = "expect ";
        v94 = 7;
        v61 = &v92;
        v62 = v96;
        if (v97 >= v98)
        {
          if (v96 <= &v92 && v96 + 24 * v97 > &v92)
          {
            v84 = &v92 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v62 = v96;
            v61 = (v96 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v61 = &v92;
            v62 = v96;
          }
        }

        v63 = &v62[24 * v97];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        v65 = ++v97;
        if (v95[0])
        {
          v92 = 2;
          v93 = 2;
          v66 = &v92;
          v67 = v96;
          if (v65 >= v98)
          {
            if (v96 <= &v92 && v96 + 24 * v65 > &v92)
            {
              v87 = &v92 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v65 + 1, 24);
              v67 = v96;
              v66 = (v96 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v65 + 1, 24);
              v66 = &v92;
              v67 = v96;
            }
          }

          v68 = &v67[24 * v97];
          v69 = *v66;
          *(v68 + 2) = *(v66 + 2);
          *v68 = v69;
          v70 = ++v97;
          if (v95[0])
          {
            v92 = 3;
            v93 = " elements in dilation";
            v94 = 21;
            v71 = &v92;
            v72 = v96;
            if (v70 >= v98)
            {
              if (v96 <= &v92 && v96 + 24 * v70 > &v92)
              {
                v89 = &v92 - v96;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v70 + 1, 24);
                v72 = v96;
                v71 = (v96 + v89);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v70 + 1, 24);
                v71 = &v92;
                v72 = v96;
              }
            }

            v73 = &v72[24 * v97];
            v74 = *v71;
            *(v73 + 2) = *(v71 + 2);
            *v73 = v74;
            ++v97;
          }
        }
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
      if (v95[0])
      {
        mlir::InFlightDiagnostic::report(v95);
      }

      if (v105 == 1)
      {
        if (v104 != &v105)
        {
          free(v104);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v103;
          v77 = __p;
          if (v103 != __p)
          {
            do
            {
              v76 = sub_100052FFC(v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v103 = v75;
          operator delete(v77);
        }

        v38 = v100;
        if (!v100)
        {
          goto LABEL_94;
        }

        v78 = v101;
        v40 = v100;
        if (v101 == v100)
        {
LABEL_93:
          v101 = v38;
          operator delete(v40);
LABEL_94:
          if (v96 != v99)
          {
            free(v96);
          }

          return v20;
        }

        do
        {
          v79 = *--v78;
          *v78 = 0;
          if (v79)
          {
            operator delete[]();
          }
        }

        while (v78 != v38);
LABEL_92:
        v40 = v100;
        goto LABEL_93;
      }

      return v20;
    }
  }

  v91 = 257;
  mlir::Operation::emitError(v95, v1, v90);
  if (v95[0])
  {
    v92 = 3;
    v93 = "expect ";
    v94 = 7;
    v42 = &v92;
    v43 = v96;
    if (v97 >= v98)
    {
      if (v96 <= &v92 && v96 + 24 * v97 > &v92)
      {
        v82 = &v92 - v96;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v43 = v96;
        v42 = (v96 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v42 = &v92;
        v43 = v96;
      }
    }

    v44 = &v43[24 * v97];
    v45 = *v42;
    *(v44 + 2) = *(v42 + 2);
    *v44 = v45;
    v46 = ++v97;
    if (v95[0])
    {
      v92 = 2;
      v93 = 2;
      v47 = &v92;
      v48 = v96;
      if (v46 >= v98)
      {
        if (v96 <= &v92 && v96 + 24 * v46 > &v92)
        {
          v85 = &v92 - v96;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v46 + 1, 24);
          v48 = v96;
          v47 = (v96 + v85);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v46 + 1, 24);
          v47 = &v92;
          v48 = v96;
        }
      }

      v49 = &v48[24 * v97];
      v50 = *v47;
      *(v49 + 2) = *(v47 + 2);
      *v49 = v50;
      v51 = ++v97;
      if (v95[0])
      {
        v92 = 3;
        v93 = " elements in padding";
        v94 = 20;
        v52 = &v92;
        v53 = v96;
        if (v51 >= v98)
        {
          if (v96 <= &v92 && v96 + 24 * v51 > &v92)
          {
            v88 = &v92 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v51 + 1, 24);
            v53 = v96;
            v52 = (v96 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v51 + 1, 24);
            v52 = &v92;
            v53 = v96;
          }
        }

        v54 = &v53[24 * v97];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        ++v97;
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
  if (v95[0])
  {
    mlir::InFlightDiagnostic::report(v95);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v103;
      v58 = __p;
      if (v103 != __p)
      {
        do
        {
          v57 = sub_100052FFC(v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v103 = v56;
      operator delete(v58);
    }

    v38 = v100;
    if (!v100)
    {
      goto LABEL_94;
    }

    v59 = v101;
    v40 = v100;
    if (v101 == v100)
    {
      goto LABEL_93;
    }

    do
    {
      v60 = *--v59;
      *v59 = 0;
      if (v60)
      {
        operator delete[]();
      }
    }

    while (v59 != v38);
    goto LABEL_92;
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::Conv3dOp::verify(mlir::Operation **this)
{
  v1 = *this;
  v95[0] = *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v95))
  {
    Shape = mlir::RankedTensorType::getShape(v95);
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
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(v95);
      if (v5 != 1 || (v6 = mlir::RankedTensorType::getShape(v95), mlir::ShapedType::getNumElements(v6, v7) != 3))
      {
        v91 = 257;
        mlir::Operation::emitError(v95, v1, v90);
        if (v95[0])
        {
          v92 = 3;
          v93 = "expect ";
          v94 = 7;
          v21 = &v92;
          v22 = v96;
          if (v97 >= v98)
          {
            if (v96 <= &v92 && v96 + 24 * v97 > &v92)
            {
              v81 = &v92 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v22 = v96;
              v21 = (v96 + v81);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
              v21 = &v92;
              v22 = v96;
            }
          }

          v23 = &v22[24 * v97];
          v24 = *v21;
          *(v23 + 2) = *(v21 + 2);
          *v23 = v24;
          v25 = ++v97;
          if (v95[0])
          {
            v92 = 2;
            v93 = 3;
            v26 = &v92;
            v27 = v96;
            if (v25 >= v98)
            {
              if (v96 <= &v92 && v96 + 24 * v25 > &v92)
              {
                v83 = &v92 - v96;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v25 + 1, 24);
                v27 = v96;
                v26 = (v96 + v83);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v25 + 1, 24);
                v26 = &v92;
                v27 = v96;
              }
            }

            v28 = &v27[24 * v97];
            v29 = *v26;
            *(v28 + 2) = *(v26 + 2);
            *v28 = v29;
            v30 = ++v97;
            if (v95[0])
            {
              v92 = 3;
              v93 = " elements in strides";
              v94 = 20;
              v31 = &v92;
              v32 = v96;
              if (v30 >= v98)
              {
                if (v96 <= &v92 && v96 + 24 * v30 > &v92)
                {
                  v86 = &v92 - v96;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v30 + 1, 24);
                  v32 = v96;
                  v31 = (v96 + v86);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v30 + 1, 24);
                  v31 = &v92;
                  v32 = v96;
                }
              }

              v33 = &v32[24 * v97];
              v34 = *v31;
              *(v33 + 2) = *(v31 + 2);
              *v33 = v34;
              ++v97;
            }
          }
        }

        v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
        if (v95[0])
        {
          mlir::InFlightDiagnostic::report(v95);
        }

        if (v105 == 1)
        {
          if (v104 != &v105)
          {
            free(v104);
          }

          v35 = __p;
          if (__p)
          {
            v36 = v103;
            v37 = __p;
            if (v103 != __p)
            {
              do
              {
                v36 = sub_100052FFC(v36 - 1);
              }

              while (v36 != v35);
              v37 = __p;
            }

            v103 = v35;
            operator delete(v37);
          }

          v38 = v100;
          if (!v100)
          {
            goto LABEL_94;
          }

          v39 = v101;
          v40 = v100;
          if (v101 == v100)
          {
            goto LABEL_93;
          }

          do
          {
            v41 = *--v39;
            *v39 = 0;
            if (v41)
            {
              operator delete[]();
            }
          }

          while (v39 != v38);
          goto LABEL_92;
        }

        return v20;
      }
    }
  }

  v95[0] = *(*(*(v1 + 9) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v95))
  {
    goto LABEL_15;
  }

  v8 = mlir::RankedTensorType::getShape(v95);
  if (v9)
  {
    v10 = 8 * v9;
    while (*v8 != 0x8000000000000000)
    {
      ++v8;
      v10 -= 8;
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_15;
  }

LABEL_13:
  mlir::RankedTensorType::getShape(v95);
  if (v11 == 1)
  {
    v12 = mlir::RankedTensorType::getShape(v95);
    if (mlir::ShapedType::getNumElements(v12, v13) == 3)
    {
LABEL_15:
      v95[0] = *(*(*(v1 + 9) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (!mlir::TensorType::hasRank(v95))
      {
        return 1;
      }

      v14 = mlir::RankedTensorType::getShape(v95);
      if (v15)
      {
        v16 = 8 * v15;
        while (*v14 != 0x8000000000000000)
        {
          ++v14;
          v16 -= 8;
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        return 1;
      }

LABEL_20:
      mlir::RankedTensorType::getShape(v95);
      if (v17 == 1)
      {
        v18 = mlir::RankedTensorType::getShape(v95);
        if (mlir::ShapedType::getNumElements(v18, v19) == 3)
        {
          return 1;
        }
      }

      v91 = 257;
      mlir::Operation::emitError(v95, v1, v90);
      if (v95[0])
      {
        v92 = 3;
        v93 = "expect ";
        v94 = 7;
        v61 = &v92;
        v62 = v96;
        if (v97 >= v98)
        {
          if (v96 <= &v92 && v96 + 24 * v97 > &v92)
          {
            v84 = &v92 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v62 = v96;
            v61 = (v96 + v84);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
            v61 = &v92;
            v62 = v96;
          }
        }

        v63 = &v62[24 * v97];
        v64 = *v61;
        *(v63 + 2) = *(v61 + 2);
        *v63 = v64;
        v65 = ++v97;
        if (v95[0])
        {
          v92 = 2;
          v93 = 3;
          v66 = &v92;
          v67 = v96;
          if (v65 >= v98)
          {
            if (v96 <= &v92 && v96 + 24 * v65 > &v92)
            {
              v87 = &v92 - v96;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v65 + 1, 24);
              v67 = v96;
              v66 = (v96 + v87);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v65 + 1, 24);
              v66 = &v92;
              v67 = v96;
            }
          }

          v68 = &v67[24 * v97];
          v69 = *v66;
          *(v68 + 2) = *(v66 + 2);
          *v68 = v69;
          v70 = ++v97;
          if (v95[0])
          {
            v92 = 3;
            v93 = " elements in dilation";
            v94 = 21;
            v71 = &v92;
            v72 = v96;
            if (v70 >= v98)
            {
              if (v96 <= &v92 && v96 + 24 * v70 > &v92)
              {
                v89 = &v92 - v96;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v70 + 1, 24);
                v72 = v96;
                v71 = (v96 + v89);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v70 + 1, 24);
                v71 = &v92;
                v72 = v96;
              }
            }

            v73 = &v72[24 * v97];
            v74 = *v71;
            *(v73 + 2) = *(v71 + 2);
            *v73 = v74;
            ++v97;
          }
        }
      }

      v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
      if (v95[0])
      {
        mlir::InFlightDiagnostic::report(v95);
      }

      if (v105 == 1)
      {
        if (v104 != &v105)
        {
          free(v104);
        }

        v75 = __p;
        if (__p)
        {
          v76 = v103;
          v77 = __p;
          if (v103 != __p)
          {
            do
            {
              v76 = sub_100052FFC(v76 - 1);
            }

            while (v76 != v75);
            v77 = __p;
          }

          v103 = v75;
          operator delete(v77);
        }

        v38 = v100;
        if (!v100)
        {
          goto LABEL_94;
        }

        v78 = v101;
        v40 = v100;
        if (v101 == v100)
        {
LABEL_93:
          v101 = v38;
          operator delete(v40);
LABEL_94:
          if (v96 != v99)
          {
            free(v96);
          }

          return v20;
        }

        do
        {
          v79 = *--v78;
          *v78 = 0;
          if (v79)
          {
            operator delete[]();
          }
        }

        while (v78 != v38);
LABEL_92:
        v40 = v100;
        goto LABEL_93;
      }

      return v20;
    }
  }

  v91 = 257;
  mlir::Operation::emitError(v95, v1, v90);
  if (v95[0])
  {
    v92 = 3;
    v93 = "expect ";
    v94 = 7;
    v42 = &v92;
    v43 = v96;
    if (v97 >= v98)
    {
      if (v96 <= &v92 && v96 + 24 * v97 > &v92)
      {
        v82 = &v92 - v96;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v43 = v96;
        v42 = (v96 + v82);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v97 + 1, 24);
        v42 = &v92;
        v43 = v96;
      }
    }

    v44 = &v43[24 * v97];
    v45 = *v42;
    *(v44 + 2) = *(v42 + 2);
    *v44 = v45;
    v46 = ++v97;
    if (v95[0])
    {
      v92 = 2;
      v93 = 3;
      v47 = &v92;
      v48 = v96;
      if (v46 >= v98)
      {
        if (v96 <= &v92 && v96 + 24 * v46 > &v92)
        {
          v85 = &v92 - v96;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v46 + 1, 24);
          v48 = v96;
          v47 = (v96 + v85);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v46 + 1, 24);
          v47 = &v92;
          v48 = v96;
        }
      }

      v49 = &v48[24 * v97];
      v50 = *v47;
      *(v49 + 2) = *(v47 + 2);
      *v49 = v50;
      v51 = ++v97;
      if (v95[0])
      {
        v92 = 3;
        v93 = " elements in padding";
        v94 = 20;
        v52 = &v92;
        v53 = v96;
        if (v51 >= v98)
        {
          if (v96 <= &v92 && v96 + 24 * v51 > &v92)
          {
            v88 = &v92 - v96;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v51 + 1, 24);
            v53 = v96;
            v52 = (v96 + v88);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v96, v99, v51 + 1, 24);
            v52 = &v92;
            v53 = v96;
          }
        }

        v54 = &v53[24 * v97];
        v55 = *v52;
        *(v54 + 2) = *(v52 + 2);
        *v54 = v55;
        ++v97;
      }
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
  if (v95[0])
  {
    mlir::InFlightDiagnostic::report(v95);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v56 = __p;
    if (__p)
    {
      v57 = v103;
      v58 = __p;
      if (v103 != __p)
      {
        do
        {
          v57 = sub_100052FFC(v57 - 1);
        }

        while (v57 != v56);
        v58 = __p;
      }

      v103 = v56;
      operator delete(v58);
    }

    v38 = v100;
    if (!v100)
    {
      goto LABEL_94;
    }

    v59 = v101;
    v40 = v100;
    if (v101 == v100)
    {
      goto LABEL_93;
    }

    do
    {
      v60 = *--v59;
      *v59 = 0;
      if (v60)
      {
        operator delete[]();
      }
    }

    while (v59 != v38);
    goto LABEL_92;
  }

  return v20;
}

BOOL mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose2dOp *this)
{
  v1 = *this;
  v156[0] = *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    Shape = mlir::RankedTensorType::getShape(v156);
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
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(v156);
      if (v5 != 1 || (v6 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v6, v7) != 2))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v39 = &v147;
          v40 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v133 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v40 = v157;
              v39 = (v157 + v133);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v39 = &v147;
              v40 = v157;
            }
          }

          v41 = &v40[24 * v158];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          v43 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 2;
            v44 = &v147;
            v45 = v157;
            if (v43 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v43 > &v147)
              {
                v135 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v43 + 1, 24);
                v45 = v157;
                v44 = (v157 + v135);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v43 + 1, 24);
                v44 = &v147;
                v45 = v157;
              }
            }

            v46 = &v45[24 * v158];
            v47 = *v44;
            *(v46 + 2) = *(v44 + 2);
            *v46 = v47;
            v48 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in strides";
              v149 = 20;
              v49 = &v147;
              v50 = v157;
              if (v48 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v48 > &v147)
                {
                  v139 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v48 + 1, 24);
                  v50 = v157;
                  v49 = (v157 + v139);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v48 + 1, 24);
                  v49 = &v147;
                  v50 = v157;
                }
              }

              v51 = &v50[24 * v158];
              v52 = *v49;
              *(v51 + 2) = *(v49 + 2);
              *v51 = v52;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v53 = __p;
          if (__p)
          {
            v54 = v164;
            v55 = __p;
            if (v164 != __p)
            {
              do
              {
                v54 = sub_100052FFC(v54 - 1);
              }

              while (v54 != v53);
              v55 = __p;
            }

            v164 = v53;
            operator delete(v55);
          }

          v56 = v161;
          if (v161)
          {
            v57 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v59 = *--v57;
                *v57 = 0;
                if (v59)
                {
                  operator delete[]();
                }
              }

              while (v57 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    v8 = mlir::RankedTensorType::getShape(v156);
    if (v9)
    {
      v10 = 8 * v9;
      while (*v8 != 0x8000000000000000)
      {
        ++v8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      mlir::RankedTensorType::getShape(v156);
      if (v11 != 1 || (v12 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v12, v13) != 2))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v60 = &v147;
          v61 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v134 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v61 = v157;
              v60 = (v157 + v134);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v60 = &v147;
              v61 = v157;
            }
          }

          v62 = &v61[24 * v158];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          v64 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 2;
            v65 = &v147;
            v66 = v157;
            if (v64 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v64 > &v147)
              {
                v137 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v64 + 1, 24);
                v66 = v157;
                v65 = (v157 + v137);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v64 + 1, 24);
                v65 = &v147;
                v66 = v157;
              }
            }

            v67 = &v66[24 * v158];
            v68 = *v65;
            *(v67 + 2) = *(v65 + 2);
            *v67 = v68;
            v69 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in padding";
              v149 = 20;
              v70 = &v147;
              v71 = v157;
              if (v69 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v69 > &v147)
                {
                  v141 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v69 + 1, 24);
                  v71 = v157;
                  v70 = (v157 + v141);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v69 + 1, 24);
                  v70 = &v147;
                  v71 = v157;
                }
              }

              v72 = &v71[24 * v158];
              v73 = *v70;
              *(v72 + 2) = *(v70 + 2);
              *v72 = v73;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v74 = __p;
          if (__p)
          {
            v75 = v164;
            v76 = __p;
            if (v164 != __p)
            {
              do
              {
                v75 = sub_100052FFC(v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v164 = v74;
            operator delete(v76);
          }

          v56 = v161;
          if (v161)
          {
            v77 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v78 = *--v77;
                *v77 = 0;
                if (v78)
                {
                  operator delete[]();
                }
              }

              while (v77 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    v14 = mlir::RankedTensorType::getShape(v156);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::RankedTensorType::getShape(v156);
      if (v17 != 1 || (v18 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v18, v19) != 2))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v79 = &v147;
          v80 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v136 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v80 = v157;
              v79 = (v157 + v136);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v79 = &v147;
              v80 = v157;
            }
          }

          v81 = &v80[24 * v158];
          v82 = *v79;
          *(v81 + 2) = *(v79 + 2);
          *v81 = v82;
          v83 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 2;
            v84 = &v147;
            v85 = v157;
            if (v83 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v83 > &v147)
              {
                v140 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v83 + 1, 24);
                v85 = v157;
                v84 = (v157 + v140);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v83 + 1, 24);
                v84 = &v147;
                v85 = v157;
              }
            }

            v86 = &v85[24 * v158];
            v87 = *v84;
            *(v86 + 2) = *(v84 + 2);
            *v86 = v87;
            v88 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in dilation";
              v149 = 21;
              v89 = &v147;
              v90 = v157;
              if (v88 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v88 > &v147)
                {
                  v143 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v88 + 1, 24);
                  v90 = v157;
                  v89 = (v157 + v143);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v88 + 1, 24);
                  v89 = &v147;
                  v90 = v157;
                }
              }

              v91 = &v90[24 * v158];
              v92 = *v89;
              *(v91 + 2) = *(v89 + 2);
              *v91 = v92;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v93 = __p;
          if (__p)
          {
            v94 = v164;
            v95 = __p;
            if (v164 != __p)
            {
              do
              {
                v94 = sub_100052FFC(v94 - 1);
              }

              while (v94 != v93);
              v95 = __p;
            }

            v164 = v93;
            operator delete(v95);
          }

          v56 = v161;
          if (v161)
          {
            v96 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v97 = *--v96;
                *v96 = 0;
                if (v97)
                {
                  operator delete[]();
                }
              }

              while (v96 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v156))
  {
    goto LABEL_29;
  }

  v20 = mlir::RankedTensorType::getShape(v156);
  if (v21)
  {
    v22 = 8 * v21;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v156[0] = *(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::RankedTensorType::getShape(v156) + 8) != 0x8000000000000000)
    {
      v26 = *(mlir::RankedTensorType::getShape(v156) + 8);
      sub_1001F2F84(*(*(v1 + 72) + 216), v152);
      if (v155 == 1)
      {
        if (v26 % *v152[0])
        {
          v150 = 257;
          mlir::Operation::emitError(v156, v1, &v147);
          if (v156[0])
          {
            LODWORD(v151[0]) = 3;
            v151[1] = "Number of input channels should be divisible by groupSize in conv_transpose.";
            v151[2] = 76;
            v27 = v151;
            v28 = v157;
            if (v158 >= v159)
            {
              if (v157 <= v151 && v157 + 24 * v158 > v151)
              {
                v144 = v151 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v28 = v157;
                v27 = v157 + v144;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v27 = v151;
                v28 = v157;
              }
            }

            v29 = &v28[24 * v158];
            v30 = *v27;
            *(v29 + 2) = *(v27 + 2);
            *v29 = v30;
            ++v158;
          }

          v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
          if (v156[0])
          {
            mlir::InFlightDiagnostic::report(v156);
          }

          if (v166 == 1)
          {
            if (v165 != &v166)
            {
              free(v165);
            }

            v32 = __p;
            if (__p)
            {
              v33 = v164;
              v34 = __p;
              if (v164 != __p)
              {
                do
                {
                  v33 = sub_100052FFC(v33 - 1);
                }

                while (v33 != v32);
                v34 = __p;
              }

              v164 = v32;
              operator delete(v34);
            }

            v35 = v161;
            if (v161)
            {
              v36 = v162;
              v37 = v161;
              if (v162 != v161)
              {
                do
                {
                  v38 = *--v36;
                  *v36 = 0;
                  if (v38)
                  {
                    operator delete[]();
                  }
                }

                while (v36 != v35);
                v37 = v161;
              }

              v162 = v35;
              operator delete(v37);
            }

            if (v157 != v160)
            {
              free(v157);
            }
          }

          if ((v155 & 1) == 0)
          {
            return v31;
          }

          v131 = v152[0];
          if (v152[0] == v153)
          {
            return v31;
          }

LABEL_179:
          free(v131);
          return v31;
        }

        if (v152[0] != v153)
        {
          free(v152[0]);
        }
      }
    }

    if (*(v1 + 36))
    {
      v117 = v1 - 16;
    }

    else
    {
      v117 = 0;
    }

    v118 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v117, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v118 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v118 = 0;
    }

    v151[0] = v118;
    if (!v118)
    {
      return 1;
    }

    v156[0] = *(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v119 = *mlir::RankedTensorType::getShape(v156);
    if (v119 == 0x8000000000000000)
    {
      v120 = 0;
      if (*mlir::RankedTensorType::getShape(v151) == 0x8000000000000000)
      {
        return 1;
      }
    }

    else
    {
      v120 = *mlir::RankedTensorType::getShape(v156);
      if (*mlir::RankedTensorType::getShape(v151) == 0x8000000000000000)
      {
        return 1;
      }
    }

    v121 = mlir::RankedTensorType::getShape(v151);
    v31 = 1;
    if (v119 != 0x8000000000000000 && v120 != *v121)
    {
      v154 = 257;
      mlir::Operation::emitError(v156, v1, v152);
      if (v156[0])
      {
        v147 = 3;
        v148 = "First dimension should match for input and output in the op.";
        v149 = 60;
        v122 = &v147;
        v123 = v157;
        if (v158 >= v159)
        {
          if (v157 <= &v147 && v157 + 24 * v158 > &v147)
          {
            v146 = &v147 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v123 = v157;
            v122 = (v157 + v146);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v122 = &v147;
            v123 = v157;
          }
        }

        v124 = &v123[24 * v158];
        v125 = *v122;
        *(v124 + 2) = *(v122 + 2);
        *v124 = v125;
        ++v158;
      }

      v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
      if (v156[0])
      {
        mlir::InFlightDiagnostic::report(v156);
      }

      if (v166 == 1)
      {
        if (v165 != &v166)
        {
          free(v165);
        }

        v126 = __p;
        if (__p)
        {
          v127 = v164;
          v128 = __p;
          if (v164 != __p)
          {
            do
            {
              v127 = sub_100052FFC(v127 - 1);
            }

            while (v127 != v126);
            v128 = __p;
          }

          v164 = v126;
          operator delete(v128);
        }

        v56 = v161;
        if (v161)
        {
          v129 = v162;
          v58 = v161;
          if (v162 != v161)
          {
            do
            {
              v130 = *--v129;
              *v129 = 0;
              if (v130)
              {
                operator delete[]();
              }
            }

            while (v129 != v56);
LABEL_176:
            v58 = v161;
            goto LABEL_177;
          }

          goto LABEL_177;
        }

        goto LABEL_178;
      }
    }

    return v31;
  }

LABEL_27:
  mlir::RankedTensorType::getShape(v156);
  if (v23 == 1)
  {
    v24 = mlir::RankedTensorType::getShape(v156);
    if (mlir::ShapedType::getNumElements(v24, v25) == 4)
    {
      goto LABEL_29;
    }
  }

  v154 = 257;
  mlir::Operation::emitError(v156, v1, v152);
  if (v156[0])
  {
    v147 = 3;
    v148 = "expect ";
    v149 = 7;
    v98 = &v147;
    v99 = v157;
    if (v158 >= v159)
    {
      if (v157 <= &v147 && v157 + 24 * v158 > &v147)
      {
        v138 = &v147 - v157;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v99 = v157;
        v98 = (v157 + v138);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v98 = &v147;
        v99 = v157;
      }
    }

    v100 = &v99[24 * v158];
    v101 = *v98;
    *(v100 + 2) = *(v98 + 2);
    *v100 = v101;
    v102 = ++v158;
    if (v156[0])
    {
      v147 = 2;
      v148 = 4;
      v103 = &v147;
      v104 = v157;
      if (v102 >= v159)
      {
        if (v157 <= &v147 && v157 + 24 * v102 > &v147)
        {
          v142 = &v147 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v102 + 1, 24);
          v104 = v157;
          v103 = (v157 + v142);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v102 + 1, 24);
          v103 = &v147;
          v104 = v157;
        }
      }

      v105 = &v104[24 * v158];
      v106 = *v103;
      *(v105 + 2) = *(v103 + 2);
      *v105 = v106;
      v107 = ++v158;
      if (v156[0])
      {
        v147 = 3;
        v148 = " elements in output_shape";
        v149 = 25;
        v108 = &v147;
        v109 = v157;
        if (v107 >= v159)
        {
          if (v157 <= &v147 && v157 + 24 * v107 > &v147)
          {
            v145 = &v147 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v107 + 1, 24);
            v109 = v157;
            v108 = (v157 + v145);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v107 + 1, 24);
            v108 = &v147;
            v109 = v157;
          }
        }

        v110 = &v109[24 * v158];
        v111 = *v108;
        *(v110 + 2) = *(v108 + 2);
        *v110 = v111;
        ++v158;
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
  if (v156[0])
  {
    mlir::InFlightDiagnostic::report(v156);
  }

  if (v166 == 1)
  {
    if (v165 != &v166)
    {
      free(v165);
    }

    v112 = __p;
    if (__p)
    {
      v113 = v164;
      v114 = __p;
      if (v164 != __p)
      {
        do
        {
          v113 = sub_100052FFC(v113 - 1);
        }

        while (v113 != v112);
        v114 = __p;
      }

      v164 = v112;
      operator delete(v114);
    }

    v56 = v161;
    if (v161)
    {
      v115 = v162;
      v58 = v161;
      if (v162 != v161)
      {
        do
        {
          v116 = *--v115;
          *v115 = 0;
          if (v116)
          {
            operator delete[]();
          }
        }

        while (v115 != v56);
        goto LABEL_176;
      }

LABEL_177:
      v162 = v56;
      operator delete(v58);
    }

LABEL_178:
    v131 = v157;
    if (v157 == v160)
    {
      return v31;
    }

    goto LABEL_179;
  }

  return v31;
}

BOOL mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp::verify(mlir::ODIE::Compiler::CoreML::ConvTranspose3dOp *this)
{
  v1 = *this;
  v156[0] = *(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    Shape = mlir::RankedTensorType::getShape(v156);
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
    }

    else
    {
LABEL_6:
      mlir::RankedTensorType::getShape(v156);
      if (v5 != 1 || (v6 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v6, v7) != 3))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v39 = &v147;
          v40 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v133 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v40 = v157;
              v39 = (v157 + v133);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v39 = &v147;
              v40 = v157;
            }
          }

          v41 = &v40[24 * v158];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          v43 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 3;
            v44 = &v147;
            v45 = v157;
            if (v43 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v43 > &v147)
              {
                v135 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v43 + 1, 24);
                v45 = v157;
                v44 = (v157 + v135);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v43 + 1, 24);
                v44 = &v147;
                v45 = v157;
              }
            }

            v46 = &v45[24 * v158];
            v47 = *v44;
            *(v46 + 2) = *(v44 + 2);
            *v46 = v47;
            v48 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in strides";
              v149 = 20;
              v49 = &v147;
              v50 = v157;
              if (v48 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v48 > &v147)
                {
                  v139 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v48 + 1, 24);
                  v50 = v157;
                  v49 = (v157 + v139);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v48 + 1, 24);
                  v49 = &v147;
                  v50 = v157;
                }
              }

              v51 = &v50[24 * v158];
              v52 = *v49;
              *(v51 + 2) = *(v49 + 2);
              *v51 = v52;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v53 = __p;
          if (__p)
          {
            v54 = v164;
            v55 = __p;
            if (v164 != __p)
            {
              do
              {
                v54 = sub_100052FFC(v54 - 1);
              }

              while (v54 != v53);
              v55 = __p;
            }

            v164 = v53;
            operator delete(v55);
          }

          v56 = v161;
          if (v161)
          {
            v57 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v59 = *--v57;
                *v57 = 0;
                if (v59)
                {
                  operator delete[]();
                }
              }

              while (v57 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    v8 = mlir::RankedTensorType::getShape(v156);
    if (v9)
    {
      v10 = 8 * v9;
      while (*v8 != 0x8000000000000000)
      {
        ++v8;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      mlir::RankedTensorType::getShape(v156);
      if (v11 != 1 || (v12 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v12, v13) != 3))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v60 = &v147;
          v61 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v134 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v61 = v157;
              v60 = (v157 + v134);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v60 = &v147;
              v61 = v157;
            }
          }

          v62 = &v61[24 * v158];
          v63 = *v60;
          *(v62 + 2) = *(v60 + 2);
          *v62 = v63;
          v64 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 3;
            v65 = &v147;
            v66 = v157;
            if (v64 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v64 > &v147)
              {
                v137 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v64 + 1, 24);
                v66 = v157;
                v65 = (v157 + v137);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v64 + 1, 24);
                v65 = &v147;
                v66 = v157;
              }
            }

            v67 = &v66[24 * v158];
            v68 = *v65;
            *(v67 + 2) = *(v65 + 2);
            *v67 = v68;
            v69 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in padding";
              v149 = 20;
              v70 = &v147;
              v71 = v157;
              if (v69 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v69 > &v147)
                {
                  v141 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v69 + 1, 24);
                  v71 = v157;
                  v70 = (v157 + v141);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v69 + 1, 24);
                  v70 = &v147;
                  v71 = v157;
                }
              }

              v72 = &v71[24 * v158];
              v73 = *v70;
              *(v72 + 2) = *(v70 + 2);
              *v72 = v73;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v74 = __p;
          if (__p)
          {
            v75 = v164;
            v76 = __p;
            if (v164 != __p)
            {
              do
              {
                v75 = sub_100052FFC(v75 - 1);
              }

              while (v75 != v74);
              v76 = __p;
            }

            v164 = v74;
            operator delete(v76);
          }

          v56 = v161;
          if (v161)
          {
            v77 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v78 = *--v77;
                *v77 = 0;
                if (v78)
                {
                  operator delete[]();
                }
              }

              while (v77 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 152) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (mlir::TensorType::hasRank(v156))
  {
    v14 = mlir::RankedTensorType::getShape(v156);
    if (v15)
    {
      v16 = 8 * v15;
      while (*v14 != 0x8000000000000000)
      {
        ++v14;
        v16 -= 8;
        if (!v16)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_20:
      mlir::RankedTensorType::getShape(v156);
      if (v17 != 1 || (v18 = mlir::RankedTensorType::getShape(v156), mlir::ShapedType::getNumElements(v18, v19) != 3))
      {
        v154 = 257;
        mlir::Operation::emitError(v156, v1, v152);
        if (v156[0])
        {
          v147 = 3;
          v148 = "expect ";
          v149 = 7;
          v79 = &v147;
          v80 = v157;
          if (v158 >= v159)
          {
            if (v157 <= &v147 && v157 + 24 * v158 > &v147)
            {
              v136 = &v147 - v157;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v80 = v157;
              v79 = (v157 + v136);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
              v79 = &v147;
              v80 = v157;
            }
          }

          v81 = &v80[24 * v158];
          v82 = *v79;
          *(v81 + 2) = *(v79 + 2);
          *v81 = v82;
          v83 = ++v158;
          if (v156[0])
          {
            v147 = 2;
            v148 = 3;
            v84 = &v147;
            v85 = v157;
            if (v83 >= v159)
            {
              if (v157 <= &v147 && v157 + 24 * v83 > &v147)
              {
                v140 = &v147 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v83 + 1, 24);
                v85 = v157;
                v84 = (v157 + v140);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v83 + 1, 24);
                v84 = &v147;
                v85 = v157;
              }
            }

            v86 = &v85[24 * v158];
            v87 = *v84;
            *(v86 + 2) = *(v84 + 2);
            *v86 = v87;
            v88 = ++v158;
            if (v156[0])
            {
              v147 = 3;
              v148 = " elements in dilation";
              v149 = 21;
              v89 = &v147;
              v90 = v157;
              if (v88 >= v159)
              {
                if (v157 <= &v147 && v157 + 24 * v88 > &v147)
                {
                  v143 = &v147 - v157;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v88 + 1, 24);
                  v90 = v157;
                  v89 = (v157 + v143);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v88 + 1, 24);
                  v89 = &v147;
                  v90 = v157;
                }
              }

              v91 = &v90[24 * v158];
              v92 = *v89;
              *(v91 + 2) = *(v89 + 2);
              *v91 = v92;
              ++v158;
            }
          }
        }

        v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
        if (v156[0])
        {
          mlir::InFlightDiagnostic::report(v156);
        }

        if (v166 == 1)
        {
          if (v165 != &v166)
          {
            free(v165);
          }

          v93 = __p;
          if (__p)
          {
            v94 = v164;
            v95 = __p;
            if (v164 != __p)
            {
              do
              {
                v94 = sub_100052FFC(v94 - 1);
              }

              while (v94 != v93);
              v95 = __p;
            }

            v164 = v93;
            operator delete(v95);
          }

          v56 = v161;
          if (v161)
          {
            v96 = v162;
            v58 = v161;
            if (v162 != v161)
            {
              do
              {
                v97 = *--v96;
                *v96 = 0;
                if (v97)
                {
                  operator delete[]();
                }
              }

              while (v96 != v56);
              goto LABEL_176;
            }

            goto LABEL_177;
          }

          goto LABEL_178;
        }

        return v31;
      }
    }
  }

  v156[0] = *(*(*(v1 + 72) + 184) + 8) & 0xFFFFFFFFFFFFFFF8;
  if (!mlir::TensorType::hasRank(v156))
  {
    goto LABEL_29;
  }

  v20 = mlir::RankedTensorType::getShape(v156);
  if (v21)
  {
    v22 = 8 * v21;
    while (*v20 != 0x8000000000000000)
    {
      ++v20;
      v22 -= 8;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_29:
    v156[0] = *(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::RankedTensorType::getShape(v156) + 8) != 0x8000000000000000)
    {
      v26 = *(mlir::RankedTensorType::getShape(v156) + 8);
      sub_1001F2F84(*(*(v1 + 72) + 216), v152);
      if (v155 == 1)
      {
        if (v26 % *v152[0])
        {
          v150 = 257;
          mlir::Operation::emitError(v156, v1, &v147);
          if (v156[0])
          {
            LODWORD(v151[0]) = 3;
            v151[1] = "Number of input channels should be divisible by groupSize in conv_transpose.";
            v151[2] = 76;
            v27 = v151;
            v28 = v157;
            if (v158 >= v159)
            {
              if (v157 <= v151 && v157 + 24 * v158 > v151)
              {
                v144 = v151 - v157;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v28 = v157;
                v27 = v157 + v144;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
                v27 = v151;
                v28 = v157;
              }
            }

            v29 = &v28[24 * v158];
            v30 = *v27;
            *(v29 + 2) = *(v27 + 2);
            *v29 = v30;
            ++v158;
          }

          v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
          if (v156[0])
          {
            mlir::InFlightDiagnostic::report(v156);
          }

          if (v166 == 1)
          {
            if (v165 != &v166)
            {
              free(v165);
            }

            v32 = __p;
            if (__p)
            {
              v33 = v164;
              v34 = __p;
              if (v164 != __p)
              {
                do
                {
                  v33 = sub_100052FFC(v33 - 1);
                }

                while (v33 != v32);
                v34 = __p;
              }

              v164 = v32;
              operator delete(v34);
            }

            v35 = v161;
            if (v161)
            {
              v36 = v162;
              v37 = v161;
              if (v162 != v161)
              {
                do
                {
                  v38 = *--v36;
                  *v36 = 0;
                  if (v38)
                  {
                    operator delete[]();
                  }
                }

                while (v36 != v35);
                v37 = v161;
              }

              v162 = v35;
              operator delete(v37);
            }

            if (v157 != v160)
            {
              free(v157);
            }
          }

          if ((v155 & 1) == 0)
          {
            return v31;
          }

          v131 = v152[0];
          if (v152[0] == v153)
          {
            return v31;
          }

LABEL_179:
          free(v131);
          return v31;
        }

        if (v152[0] != v153)
        {
          free(v152[0]);
        }
      }
    }

    if (*(v1 + 36))
    {
      v117 = v1 - 16;
    }

    else
    {
      v117 = 0;
    }

    v118 = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v117, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v118 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v118 = 0;
    }

    v151[0] = v118;
    if (!v118)
    {
      return 1;
    }

    v156[0] = *(*(*(v1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v119 = *mlir::RankedTensorType::getShape(v156);
    if (v119 == 0x8000000000000000)
    {
      v120 = 0;
      if (*mlir::RankedTensorType::getShape(v151) == 0x8000000000000000)
      {
        return 1;
      }
    }

    else
    {
      v120 = *mlir::RankedTensorType::getShape(v156);
      if (*mlir::RankedTensorType::getShape(v151) == 0x8000000000000000)
      {
        return 1;
      }
    }

    v121 = mlir::RankedTensorType::getShape(v151);
    v31 = 1;
    if (v119 != 0x8000000000000000 && v120 != *v121)
    {
      v154 = 257;
      mlir::Operation::emitError(v156, v1, v152);
      if (v156[0])
      {
        v147 = 3;
        v148 = "First dimension should match for input and output in the op.";
        v149 = 60;
        v122 = &v147;
        v123 = v157;
        if (v158 >= v159)
        {
          if (v157 <= &v147 && v157 + 24 * v158 > &v147)
          {
            v146 = &v147 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v123 = v157;
            v122 = (v157 + v146);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
            v122 = &v147;
            v123 = v157;
          }
        }

        v124 = &v123[24 * v158];
        v125 = *v122;
        *(v124 + 2) = *(v122 + 2);
        *v124 = v125;
        ++v158;
      }

      v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
      if (v156[0])
      {
        mlir::InFlightDiagnostic::report(v156);
      }

      if (v166 == 1)
      {
        if (v165 != &v166)
        {
          free(v165);
        }

        v126 = __p;
        if (__p)
        {
          v127 = v164;
          v128 = __p;
          if (v164 != __p)
          {
            do
            {
              v127 = sub_100052FFC(v127 - 1);
            }

            while (v127 != v126);
            v128 = __p;
          }

          v164 = v126;
          operator delete(v128);
        }

        v56 = v161;
        if (v161)
        {
          v129 = v162;
          v58 = v161;
          if (v162 != v161)
          {
            do
            {
              v130 = *--v129;
              *v129 = 0;
              if (v130)
              {
                operator delete[]();
              }
            }

            while (v129 != v56);
LABEL_176:
            v58 = v161;
            goto LABEL_177;
          }

          goto LABEL_177;
        }

        goto LABEL_178;
      }
    }

    return v31;
  }

LABEL_27:
  mlir::RankedTensorType::getShape(v156);
  if (v23 == 1)
  {
    v24 = mlir::RankedTensorType::getShape(v156);
    if (mlir::ShapedType::getNumElements(v24, v25) == 5)
    {
      goto LABEL_29;
    }
  }

  v154 = 257;
  mlir::Operation::emitError(v156, v1, v152);
  if (v156[0])
  {
    v147 = 3;
    v148 = "expect ";
    v149 = 7;
    v98 = &v147;
    v99 = v157;
    if (v158 >= v159)
    {
      if (v157 <= &v147 && v157 + 24 * v158 > &v147)
      {
        v138 = &v147 - v157;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v99 = v157;
        v98 = (v157 + v138);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v158 + 1, 24);
        v98 = &v147;
        v99 = v157;
      }
    }

    v100 = &v99[24 * v158];
    v101 = *v98;
    *(v100 + 2) = *(v98 + 2);
    *v100 = v101;
    v102 = ++v158;
    if (v156[0])
    {
      v147 = 2;
      v148 = 5;
      v103 = &v147;
      v104 = v157;
      if (v102 >= v159)
      {
        if (v157 <= &v147 && v157 + 24 * v102 > &v147)
        {
          v142 = &v147 - v157;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v102 + 1, 24);
          v104 = v157;
          v103 = (v157 + v142);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v102 + 1, 24);
          v103 = &v147;
          v104 = v157;
        }
      }

      v105 = &v104[24 * v158];
      v106 = *v103;
      *(v105 + 2) = *(v103 + 2);
      *v105 = v106;
      v107 = ++v158;
      if (v156[0])
      {
        v147 = 3;
        v148 = " elements in output_shape";
        v149 = 25;
        v108 = &v147;
        v109 = v157;
        if (v107 >= v159)
        {
          if (v157 <= &v147 && v157 + 24 * v107 > &v147)
          {
            v145 = &v147 - v157;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v107 + 1, 24);
            v109 = v157;
            v108 = (v157 + v145);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v157, v160, v107 + 1, 24);
            v108 = &v147;
            v109 = v157;
          }
        }

        v110 = &v109[24 * v158];
        v111 = *v108;
        *(v110 + 2) = *(v108 + 2);
        *v110 = v111;
        ++v158;
      }
    }
  }

  v31 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v156);
  if (v156[0])
  {
    mlir::InFlightDiagnostic::report(v156);
  }

  if (v166 == 1)
  {
    if (v165 != &v166)
    {
      free(v165);
    }

    v112 = __p;
    if (__p)
    {
      v113 = v164;
      v114 = __p;
      if (v164 != __p)
      {
        do
        {
          v113 = sub_100052FFC(v113 - 1);
        }

        while (v113 != v112);
        v114 = __p;
      }

      v164 = v112;
      operator delete(v114);
    }

    v56 = v161;
    if (v161)
    {
      v115 = v162;
      v58 = v161;
      if (v162 != v161)
      {
        do
        {
          v116 = *--v115;
          *v115 = 0;
          if (v116)
          {
            operator delete[]();
          }
        }

        while (v115 != v56);
        goto LABEL_176;
      }

LABEL_177:
      v162 = v56;
      operator delete(v58);
    }

LABEL_178:
    v131 = v157;
    if (v157 == v160)
    {
      return v31;
    }

    goto LABEL_179;
  }

  return v31;
}

uint64_t mlir::ODIE::Compiler::CoreML::RealPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[0] = a4;
  v13[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  return sub_1001FF6B8((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), a11);
}

uint64_t sub_1001FF6B8(void *a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  {
    v19 = a1;
    sub_100289EC4();
    a1 = v19;
    v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_4:
  v7 = v5;
  v8 = v6;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[2 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 2;
    v8 += ~(v8 >> 1);
    if (v12 < v4)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &v5[2 * v6] || *v7 != v4)
  {
    goto LABEL_14;
  }

  v13 = v7[1];
LABEL_15:
  v20[0] = a1;
  v20[1] = v13;
  *&v21 = mlir::ShapedType::getElementType(v20);
  ElementType = mlir::ComplexType::getElementType(&v21);
  LOBYTE(v21) = 0;
  v22 = 0;
  v15 = mlir::ShapedType::cloneWith(v20, &v21, ElementType);
  v16 = *(a2 + 8);
  if (v16 >= *(a2 + 12))
  {
    v18 = v15;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v16 + 1, 8);
    v15 = v18;
    LODWORD(v16) = *(a2 + 8);
  }

  *(*a2 + 8 * v16) = v15;
  ++*(a2 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::ImaginaryPartOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13[0] = a4;
  v13[1] = a5;
  v11 = mlir::ValueRange::dereference_iterator(v13, 0);
  return sub_1001FF6B8((*(v11 + 8) & 0xFFFFFFFFFFFFFFF8), a11);
}

uint64_t mlir::ODIE::Compiler::CoreML::CreateComplexOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33[0] = a4;
  v33[1] = a5;
  v11 = (*(mlir::ValueRange::dereference_iterator(v33, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *v11;
  {
    v29 = v11;
    sub_100289E80();
    v11 = v29;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_4:
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
    goto LABEL_14;
  }

  v22 = v16[1];
LABEL_15:
  v30[0] = v11;
  v30[1] = v22;
  ElementType = mlir::ShapedType::getElementType(v30);
  v24 = mlir::ComplexType::get(ElementType);
  LOBYTE(v31) = 0;
  v32 = 0;
  v25 = mlir::ShapedType::cloneWith(v30, &v31, v24);
  v26 = *(a11 + 8);
  if (v26 >= *(a11 + 12))
  {
    v28 = v25;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v26 + 1, 8);
    v25 = v28;
    LODWORD(v26) = *(a11 + 8);
  }

  *(*a11 + 8 * v26) = v25;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::ODIE::Compiler::CoreML::AddOp::decomposeComplexOperation(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*(*mlir::getElementTypeOrSelf(*(*(*a1 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v24 = sub_1001D5370(a2, *(*(*a1 + 72) + 24), *(*a1 + 24));
    v25 = v6;
    v22 = sub_1001D5370(a2, *(*(*a1 + 72) + 56), *(*a1 + 24));
    v23 = v7;
    v8 = *(*a1 + 24);
    v20 = *(v24 - 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = sub_1001FFBCC(a2, v8, &v20, &v24, &v22);
    v9 = *(*a1 + 24);
    v19 = *(v24 - 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = sub_1001FFBCC(a2, v9, &v19, &v25, &v23);
    v10 = *(*a1 + 24);
    v19 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = sub_1001D5614(a2, v10, &v19, &v21, &v20);
    v12 = *a1;
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); ; *i = v15)
    {
      v15 = *(v12 - 16);
      if (!v15)
      {
        break;
      }

      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = *v15;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      v15[3] = i;
      v15[1] = i;
      v18 = *i;
      *v15 = *i;
      if (v18)
      {
        *(v18 + 8) = v15;
      }
    }
  }

  return 1;
}

uint64_t sub_1001FFBCC(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_10028A43C(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::AddOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::MulOp::decomposeComplexOperation(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*(*mlir::getElementTypeOrSelf(*(*(*a1 + 72) + 24)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id && *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v28 = sub_1001D5370(a2, *(*(*a1 + 72) + 24), *(*a1 + 24));
    v29 = v6;
    v26 = sub_1001D5370(a2, *(*(*a1 + 72) + 56), *(*a1 + 24));
    v27 = v7;
    v25 = sub_1001FFF40(a2, *(*a1 + 24), &v28, &v26);
    v24 = sub_1001FFF40(a2, *(*a1 + 24), &v29, &v27);
    v23 = sub_1001FFF40(a2, *(*a1 + 24), &v28, &v27);
    v22 = sub_1001FFF40(a2, *(*a1 + 24), &v29, &v26);
    v8 = *(*a1 + 24);
    v20 = *(v28 - 8) & 0xFFFFFFFFFFFFFFF8;
    v21 = sub_100200098(a2, v8, &v20, &v25, &v24);
    v9 = *(*a1 + 24);
    v19 = *(v28 - 8) & 0xFFFFFFFFFFFFFFF8;
    v20 = sub_1001FFBCC(a2, v9, &v19, &v23, &v22);
    v10 = *(*a1 + 24);
    v19 = *(*a1 - 8) & 0xFFFFFFFFFFFFFFF8;
    v11 = sub_1001D5614(a2, v10, &v19, &v21, &v20);
    v12 = *a1;
    if (*(v11 + 36))
    {
      v13 = v11 - 16;
    }

    else
    {
      v13 = 0;
    }

    for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0); ; *i = v15)
    {
      v15 = *(v12 - 16);
      if (!v15)
      {
        break;
      }

      v16 = v15[1];
      if (v16)
      {
        v17 = *v15;
        *v16 = *v15;
        if (v17)
        {
          *(v17 + 8) = v16;
        }
      }

      v15[3] = i;
      v15[1] = i;
      v18 = *i;
      *v15 = *i;
      if (v18)
      {
        *(v18 + 8) = v15;
      }
    }
  }

  return 1;
}

uint64_t sub_1001FFF40(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    sub_10028A480(v19, v25, v24);
  }

  mlir::OperationState::OperationState(v19, a2, v9);
  v11 = *a3;
  v12 = *a4 - 16;
  v24[0] = v11 - 16;
  v24[1] = v12;
  mlir::ValueRange::ValueRange(v25, v24, 2uLL);
  mlir::OperationState::addOperands(v19, v25[0], v25[1]);
  v13 = *(v11 - 8);
  v14 = v21;
  if (v21 >= v22)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v20, &v23, v21 + 1, 8);
    v14 = v21;
  }

  *(v20 + 8 * v14) = v13 & 0xFFFFFFFFFFFFFFF8;
  ++v21;
  v15 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::MulOp,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v16;
}

uint64_t sub_100200098(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_10028A4C4(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::SubOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

uint64_t mlir::ODIE::Compiler::CoreML::BatchMatmulOp::decomposeComplexOperation(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*(*mlir::getElementTypeOrSelf(*(*(*a1 + 72) + 24)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id || *(*mlir::getElementTypeOrSelf(*(*(v4 + 72) + 56)) + 136) != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    return 1;
  }

  v41 = sub_1001D5370(a2, *(*(*a1 + 72) + 24), *(*a1 + 24));
  v42 = v6;
  v39 = sub_1001D5370(a2, *(*(*a1 + 72) + 56), *(*a1 + 24));
  v40 = v7;
  v8 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = *v8;
  {
    v30 = v9;
    v31 = v8;
    sub_100289EC4();
    v8 = v31;
    v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v11 = *(v30 + 8);
    v12 = *(v30 + 16);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  v10 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v14 >> 1;
    v16 = &v13[2 * (v14 >> 1)];
    v18 = *v16;
    v17 = v16 + 2;
    v14 += ~(v14 >> 1);
    if (v18 < v10)
    {
      v13 = v17;
    }

    else
    {
      v14 = v15;
    }
  }

  while (v14);
  if (v13 == &v11[2 * v12] || *v13 != v10)
  {
    goto LABEL_17;
  }

  v19 = v13[1];
LABEL_18:
  v38[0] = v8;
  v38[1] = v19;
  *&v43 = mlir::ShapedType::getElementType(v38);
  ElementType = mlir::ComplexType::getElementType(&v43);
  LOBYTE(v43) = 0;
  v44 = 0;
  *&v43 = mlir::ShapedType::cloneWith(v38, &v43, ElementType);
  *(&v43 + 1) = v21;
  v37 = sub_1002004EC(a2, *(*a1 + 24), &v43, &v41, &v39);
  v36 = sub_1002004EC(a2, *(*a1 + 24), &v43, &v42, &v40);
  v35 = sub_1002004EC(a2, *(*a1 + 24), &v43, &v41, &v40);
  v34 = sub_1002004EC(a2, *(*a1 + 24), &v43, &v42, &v39);
  v33 = sub_100200098(a2, *(*a1 + 24), &v43, &v37, &v36);
  v32 = sub_1001FFBCC(a2, *(*a1 + 24), &v43, &v35, &v34);
  v22 = sub_1001D5614(a2, *(*a1 + 24), v38, &v33, &v32);
  v23 = *a1;
  if (*(v22 + 36))
  {
    v24 = v22 - 16;
  }

  else
  {
    v24 = 0;
  }

  for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v24, 0); ; *i = v26)
  {
    v26 = *(v23 - 16);
    if (!v26)
    {
      break;
    }

    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      *v27 = *v26;
      if (v28)
      {
        *(v28 + 8) = v27;
      }
    }

    v26[3] = i;
    v26[1] = i;
    v29 = *i;
    *v26 = *i;
    if (v29)
    {
      *(v29 + 8) = v26;
    }
  }

  return 1;
}

uint64_t sub_1002004EC(void *a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v19 = a2;
  Context = mlir::Attribute::getContext(&v19);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    sub_10028A508(v22, v21, v20);
  }

  mlir::OperationState::OperationState(v22, a2, v11);
  v13 = *a3;
  v14 = *a5 - 16;
  v21[0] = *a4 - 16;
  v20[0] = v14;
  mlir::OperationState::addOperands(v22, v21, 1uLL);
  mlir::OperationState::addOperands(v22, v20, 1uLL);
  v15 = v24;
  if (v24 >= v25)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, &v26, v24 + 1, 8);
    v15 = v24;
  }

  *(v23 + 8 * v15) = v13;
  ++v24;
  v16 = mlir::OpBuilder::create(a1, v22);
  if (*(*(v16 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::ODIE::Compiler::CoreML::BatchMatmulOp,void>::id)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  mlir::OperationState::~OperationState(v22);
  return v17;
}

BOOL mlir::ODIE::Compiler::CoreML::NonZeroOp::verify(mlir::Operation **this)
{
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  v57[0] = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  Shape = mlir::RankedTensorType::getShape(v57);
  v5 = v4;
  v57[0] = *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::TensorType::getShape(v57);
  if (v5 == 2)
  {
    if (v6 == *(Shape + 8))
    {
      return 1;
    }

    v53 = 257;
    v19 = v6;
    mlir::OpState::emitError(this, v52, v57);
    if (v57[0])
    {
      v54 = 3;
      v55 = "coreml.non_zero output.shape[1] is ";
      v56 = 35;
      v20 = &v54;
      v21 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v48 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v21 = v58;
          v20 = (v58 + v48);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v20 = &v54;
          v21 = v58;
        }
      }

      v22 = v19;
      v23 = &v21[24 * v59];
      v24 = *v20;
      *(v23 + 2) = *(v20 + 2);
      *v23 = v24;
      v25 = ++v59;
      if (v57[0])
      {
        v26 = *(Shape + 8);
        v54 = 2;
        v55 = v26;
        v27 = &v54;
        v28 = v58;
        if (v25 >= v60)
        {
          if (v58 <= &v54 && v58 + 24 * v25 > &v54)
          {
            v49 = &v54 - v58;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v25 + 1, 24);
            v28 = v58;
            v27 = (v58 + v49);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v25 + 1, 24);
            v27 = &v54;
            v28 = v58;
          }

          v22 = v19;
        }

        v29 = &v28[24 * v59];
        v30 = *v27;
        *(v29 + 2) = *(v27 + 2);
        *v29 = v30;
        v31 = ++v59;
        if (v57[0])
        {
          v54 = 3;
          v55 = " which is not equal to input rank ";
          v56 = 34;
          v32 = &v54;
          v33 = v58;
          if (v31 >= v60)
          {
            if (v58 <= &v54 && v58 + 24 * v31 > &v54)
            {
              v50 = &v54 - v58;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v31 + 1, 24);
              v33 = v58;
              v32 = (v58 + v50);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v31 + 1, 24);
              v32 = &v54;
              v33 = v58;
            }

            v22 = v19;
          }

          v34 = &v33[24 * v59];
          v35 = *v32;
          *(v34 + 2) = *(v32 + 2);
          *v34 = v35;
          v36 = ++v59;
          if (v57[0])
          {
            v54 = 2;
            v55 = v22;
            v37 = &v54;
            v38 = v58;
            if (v36 >= v60)
            {
              if (v58 <= &v54 && v58 + 24 * v36 > &v54)
              {
                v51 = &v54 - v58;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v36 + 1, 24);
                v38 = v58;
                v37 = (v58 + v51);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v36 + 1, 24);
                v37 = &v54;
                v38 = v58;
              }
            }

            v39 = &v38[24 * v59];
            v40 = *v37;
            *(v39 + 2) = *(v37 + 2);
            *v39 = v40;
            ++v59;
          }
        }
      }
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v41 = __p;
      if (__p)
      {
        v42 = v65;
        v43 = __p;
        if (v65 != __p)
        {
          do
          {
            v42 = sub_100052FFC(v42 - 1);
          }

          while (v42 != v41);
          v43 = __p;
        }

        v65 = v41;
        operator delete(v43);
      }

      v15 = v62;
      if (!v62)
      {
        goto LABEL_53;
      }

      v44 = v63;
      v17 = v62;
      if (v63 == v62)
      {
LABEL_52:
        v63 = v15;
        operator delete(v17);
LABEL_53:
        if (v58 != v61)
        {
          free(v58);
        }

        return v7;
      }

      do
      {
        v45 = *--v44;
        *v44 = 0;
        if (v45)
        {
          operator delete[]();
        }
      }

      while (v44 != v15);
LABEL_51:
      v17 = v62;
      goto LABEL_52;
    }
  }

  else
  {
    v53 = 257;
    mlir::OpState::emitError(this, v52, v57);
    if (v57[0])
    {
      v54 = 3;
      v55 = "expect output of rank 2 for coreml.non_zero";
      v56 = 43;
      v8 = &v54;
      v9 = v58;
      if (v59 >= v60)
      {
        if (v58 <= &v54 && v58 + 24 * v59 > &v54)
        {
          v47 = &v54 - v58;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v9 = v58;
          v8 = (v58 + v47);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v58, v61, v59 + 1, 24);
          v8 = &v54;
          v9 = v58;
        }
      }

      v10 = &v9[24 * v59];
      v11 = *v8;
      *(v10 + 2) = *(v8 + 2);
      *v10 = v11;
      ++v59;
    }

    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v57);
    if (v57[0])
    {
      mlir::InFlightDiagnostic::report(v57);
    }

    if (v67 == 1)
    {
      if (v66 != &v67)
      {
        free(v66);
      }

      v12 = __p;
      if (__p)
      {
        v13 = v65;
        v14 = __p;
        if (v65 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v65 = v12;
        operator delete(v14);
      }

      v15 = v62;
      if (!v62)
      {
        goto LABEL_53;
      }

      v16 = v63;
      v17 = v62;
      if (v63 == v62)
      {
        goto LABEL_52;
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
      goto LABEL_51;
    }
  }

  return v7;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60[0] = a4;
  v60[1] = a5;
  if (a5 == 3)
  {
    v11 = mlir::ValueRange::dereference_iterator(v60, 1);
    __src = 0;
    *&v65 = 0;
    p_src = &__src;
    v56 = v11;
    result = mlir::Value::getDefiningOp(&v56);
    if (!result)
    {
      return result;
    }

    result = sub_100250A7C(&p_src, result);
    if (!result)
    {
      return result;
    }

    v13 = *(mlir::ValueRange::dereference_iterator(v60, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v13 = 0;
    }

    v55 = v13;
    v14 = v11[1] & 0xFFFFFFFFFFFFFFF8;
    if (*(*v14 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v14 = 0;
    }

    v54 = v14;
    if (v13)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }

    Shape = mlir::RankedTensorType::getShape(&v55);
    v18 = v17;
    ElementType = mlir::RankedTensorType::getElementType(&v54);
    LOBYTE(v56) = 0;
    v59 = 0;
    if (mlir::Type::isSignedInteger(&ElementType, 16))
    {
      sub_100255AF8(v11, &__src);
      if (v67)
      {
        p_src = v70;
        v69 = xmmword_10028FD10;
        v19 = __src;
        v20 = v65;
        if (!v65)
        {
          goto LABEL_34;
        }

        if (__src != v66)
        {
          p_src = __src;
          v69 = v65;
          goto LABEL_36;
        }

        if (v65 < 0x15)
        {
          v24 = v70;
          v23 = v65;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&p_src, v70, v65, 2);
          v23 = v65;
          if (!v65)
          {
LABEL_32:
            *&v69 = v20;
            *&v65 = 0;
            if ((v67 & 1) == 0)
            {
              goto LABEL_36;
            }

            v19 = __src;
LABEL_34:
            if (v19 != v66)
            {
              free(v19);
              v20 = v69;
            }

LABEL_36:
            if (v20 != 2 * v18)
            {
              LOBYTE(__src) = 0;
              v67 = 0;
              goto LABEL_84;
            }

            v61 = v63;
            v62 = 0x600000000;
            v27 = (8 * v18) >> 3;
            if (v27 < 7)
            {
              v28 = 0;
              v29 = v63;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v27, 8);
              v28 = v62;
              v29 = v61;
            }

            if (v18)
            {
              memcpy(&v29[8 * v28], Shape, 8 * v18);
              v28 = v62;
              v29 = v61;
            }

            v30 = (v28 + v18);
            LODWORD(v62) = v28 + v18;
            if (!(v28 + v18))
            {
              __src = &v65 + 8;
              *&v65 = 0x600000000;
              goto LABEL_82;
            }

            v31 = 0;
            v32 = p_src + 1;
            do
            {
              v33 = *&v29[v31];
              if ((v33 & 0x8000000000000000) == 0)
              {
                *&v29[v31] = v33 + *(v32 - 1) + *v32;
              }

              v31 += 8;
              v32 += 2;
            }

            while (8 * v30 != v31);
            v34 = &v65 + 8;
            __src = &v65 + 8;
            *&v65 = 0x600000000;
            if (v29 != v63)
            {
              __src = v29;
              *&v65 = __PAIR64__(HIDWORD(v62), v30);
              v61 = v63;
              HIDWORD(v62) = 0;
              v29 = v63;
LABEL_81:
              LODWORD(v62) = 0;
LABEL_82:
              v67 = 1;
              if (v29 != v63)
              {
                free(v29);
              }

LABEL_84:
              if (p_src != v70)
              {
                free(p_src);
              }

              v45 = v59;
              if (v59 != v67)
              {
LABEL_87:
                if (v45)
                {
                  if (v56 != v58)
                  {
                    free(v56);
                  }

                  v59 = 0;
                }

                else
                {
                  v56 = v58;
                  v57 = 0x600000000;
                  if (v65)
                  {
                    sub_100056AF0(&v56, &__src);
                  }

                  v59 = 1;
                }

                goto LABEL_105;
              }

LABEL_103:
              if (v45)
              {
                sub_100056AF0(&v56, &__src);
              }

LABEL_105:
              if (v67 == 1 && __src != &v65 + 8)
              {
                free(__src);
              }

              if (v59 == 1)
              {
                v46 = v56;
                v47 = v57;
                v48 = mlir::RankedTensorType::getElementType(&v55);
                v49 = mlir::RankedTensorType::get(v46, v47, v48, 0);
                v50 = *(a11 + 8);
                if (v50 >= *(a11 + 12))
                {
                  v51 = v49;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v50 + 1, 8);
                  v49 = v51;
                  LODWORD(v50) = *(a11 + 8);
                }

                *(*a11 + 8 * v50) = v49;
                ++*(a11 + 8);
                if ((v59 & 1) != 0 && v56 != v58)
                {
                  free(v56);
                }

                return 1;
              }

              return 0;
            }

            if (v30 < 7)
            {
              v43 = v30;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v65 + 8, v30, 8);
              v43 = v62;
              v29 = v61;
              if (!v62)
              {
LABEL_80:
                LODWORD(v65) = v30;
                goto LABEL_81;
              }

              v34 = __src;
            }

            memcpy(v34, v29, 8 * v43);
            v29 = v61;
            goto LABEL_80;
          }

          v19 = __src;
          v24 = p_src;
        }

        memcpy(v24, v19, 2 * v23);
        goto LABEL_32;
      }

LABEL_117:
      v52 = sub_10024F430();
      return sub_100201484(v52);
    }

    sub_1001F2F84(v11, &__src);
    if ((v67 & 1) == 0)
    {
      goto LABEL_117;
    }

    p_src = &v69 + 1;
    *&v69 = 0xC00000000;
    v21 = v65;
    v22 = __src;
    if (!v65)
    {
      goto LABEL_55;
    }

    if (__src != &v65 + 8)
    {
      p_src = __src;
      *&v69 = v65;
      goto LABEL_57;
    }

    if (v65 < 0xD)
    {
      v26 = &v69 + 8;
      v25 = v65;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v69 + 8, v65, 4);
      v25 = v65;
      if (!v65)
      {
LABEL_53:
        LODWORD(v69) = v21;
        LODWORD(v65) = 0;
        if ((v67 & 1) == 0)
        {
          goto LABEL_57;
        }

        v22 = __src;
LABEL_55:
        if (v22 != &v65 + 8)
        {
          free(v22);
          v21 = v69;
        }

LABEL_57:
        if (v21 != 2 * v18)
        {
          LOBYTE(__src) = 0;
          v67 = 0;
          goto LABEL_100;
        }

        v61 = v63;
        v62 = 0x600000000;
        v35 = (8 * v18) >> 3;
        if (v35 < 7)
        {
          v36 = 0;
          v37 = v63;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v61, v63, v35, 8);
          v36 = v62;
          v37 = v61;
        }

        if (v18)
        {
          memcpy(&v37[8 * v36], Shape, 8 * v18);
          v36 = v62;
          v37 = v61;
        }

        v38 = (v36 + v18);
        LODWORD(v62) = v36 + v18;
        if (!(v36 + v18))
        {
          __src = &v65 + 8;
          *&v65 = 0x600000000;
          goto LABEL_98;
        }

        v39 = 0;
        v40 = p_src + 1;
        do
        {
          v41 = *&v37[8 * v39];
          if ((v41 & 0x8000000000000000) == 0)
          {
            *&v37[8 * v39] = v41 + *v40 + *(v40 - 1);
          }

          ++v39;
          v40 += 2;
        }

        while (v38 != v39);
        v42 = &v65 + 8;
        __src = &v65 + 8;
        *&v65 = 0x600000000;
        if (v37 != v63)
        {
          __src = v37;
          *&v65 = __PAIR64__(HIDWORD(v62), v38);
          v61 = v63;
          HIDWORD(v62) = 0;
          v37 = v63;
LABEL_97:
          LODWORD(v62) = 0;
LABEL_98:
          v67 = 1;
          if (v37 != v63)
          {
            free(v37);
          }

LABEL_100:
          if (p_src != (&v69 + 8))
          {
            free(p_src);
          }

          v45 = v59;
          if (v59 != v67)
          {
            goto LABEL_87;
          }

          goto LABEL_103;
        }

        if (v38 < 7)
        {
          v44 = v38;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v65 + 8, v38, 8);
          v44 = v62;
          v37 = v61;
          if (!v62)
          {
LABEL_96:
            LODWORD(v65) = v38;
            goto LABEL_97;
          }

          v42 = __src;
        }

        memcpy(v42, v37, 8 * v44);
        v37 = v61;
        goto LABEL_96;
      }

      v22 = __src;
      v26 = p_src;
    }

    memcpy(v26, v22, 4 * v25);
    goto LABEL_53;
  }

  return sub_1001D4DAC(a2, a3, "expected exactly 3 operands");
}

uint64_t sub_100201484(uint64_t result, uint64_t a2)
{
  if (*(result + 64) == *(a2 + 64))
  {
    if (*(result + 64))
    {
      v2 = result;
      sub_100056AF0(result, a2);
      return v2;
    }
  }

  else if (*(result + 64))
  {
    if (*result != result + 16)
    {
      v3 = result;
      free(*result);
      result = v3;
    }

    *(result + 64) = 0;
  }

  else
  {
    *result = result + 16;
    *(result + 8) = 0x600000000;
    if (*(a2 + 8))
    {
      v4 = result;
      sub_100056AF0(result, a2);
      result = v4;
    }

    *(result + 64) = 1;
  }

  return result;
}

uint64_t mlir::ODIE::Compiler::CoreML::PadOp::refineReturnTypes(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = v24;
  v23 = 0x600000000;
  if ((mlir::ODIE::Compiler::CoreML::PadOp::inferReturnTypes(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, &v22) & 1) == 0)
  {
    v14 = 0;
    v15 = v22;
    if (v22 == v24)
    {
      return v14;
    }

    goto LABEL_12;
  }

  mlir::TypeRange::TypeRange(v21, *a11, *(a11 + 8));
  mlir::TypeRange::TypeRange(v20, v22, v23);
  if (!mlir::ODIE::Compiler::areTypesCompatible(v21[0], v21[1], v20[0], v20[1]))
  {
    v11 = v22;
    v12 = v23;
    *(a11 + 8) = 0;
    if (v12 <= *(a11 + 12))
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v13 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, (a11 + 16), v12, 8);
      v13 = *(a11 + 8);
    }

    memcpy((*a11 + 8 * v13), v11, 8 * v12);
    v16 = *(a11 + 8);
LABEL_10:
    *(a11 + 8) = v16 + v12;
  }

  v14 = 1;
  v15 = v22;
  if (v22 != v24)
  {
LABEL_12:
    free(v15);
  }

  return v14;
}