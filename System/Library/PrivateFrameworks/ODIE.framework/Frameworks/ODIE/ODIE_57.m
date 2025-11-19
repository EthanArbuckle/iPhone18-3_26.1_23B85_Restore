unint64_t mlir::arith::SIToFPOp::fold(void *a1, uint64_t a2)
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v4 = v5;
  }

  v8 = **(a2 + 40);
  if (v8)
  {
    v9 = *(*v8 + 136);
    if (v9 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
      if (v9 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        LODWORD(v59) = *(v8 + 24);
        if (v59 > 0x40)
        {
          operator new[]();
        }

        v58 = *(v8 + 16);
        if (v4)
        {
          v19 = *v4;
          v20 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v21 = mlir::detail::InterfaceMap::lookup(v19 + 8, v20);
        }

        else
        {
          v21 = 0;
        }

        v22 = (*v21)(v21, v4);
        LODWORD(v63) = *((*v21)(v21, v4) + 12);
        if (v63 >= 0x41)
        {
          operator new[]();
        }

        v62 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v68, v22, &v62);
        if (v63 >= 0x41 && v62)
        {
          MEMORY[0x25F891010](v62, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v68, &v58, 1, 1);
        if (v59 >= 0x41 && v58)
        {
          MEMORY[0x25F891010](v58, 0x1000C8000313F17);
        }

        v23 = mlir::FloatAttr::get(v10, &v68);
        goto LABEL_36;
      }

      v11 = v9 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v9 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
      if (v11 && *(v8 + 24) == 1)
      {
        v67[0] = **(a2 + 40);
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(v67, &v68);
        v64 = v70;
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v68, &v58);
        if (v4)
        {
          v12 = *v4;
          v13 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
          v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
        }

        else
        {
          v14 = 0;
        }

        v33 = (*v14)(v14, v4);
        LODWORD(v63) = *((*v14)(v14, v4) + 12);
        if (v63 >= 0x41)
        {
          operator new[]();
        }

        v62 = 0;
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(&v68, v33, &v62);
        if (v63 >= 0x41 && v62)
        {
          MEMORY[0x25F891010](v62, 0x1000C8000313F17);
        }

        llvm::APFloat::convertFromAPInt(&v68, &v58, 1, 1);
        if (v59 >= 0x41 && v58)
        {
          MEMORY[0x25F891010](v58, 0x1000C8000313F17);
        }

        if (v10)
        {
          v34 = *v10;
          v35 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v36 = mlir::detail::InterfaceMap::lookup(v34 + 8, v35);
        }

        else
        {
          v36 = 0;
        }

        if (!(*(v36 + 16))(v36, v10))
        {
LABEL_63:
          v8 = 0;
          goto LABEL_37;
        }

        v37 = (*(v36 + 24))(v36, v10);
        if (v38)
        {
          v39 = 8 * v38;
          while (*v37 != 0x8000000000000000)
          {
            ++v37;
            v39 -= 8;
            if (!v39)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_63;
        }

LABEL_62:
        v23 = mlir::DenseElementsAttr::get(v10, v36, &v68, 1);
LABEL_36:
        v8 = v23;
LABEL_37:
        llvm::APFloat::Storage::~Storage(&v68);
        goto LABEL_38;
      }

      v8 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v8);
      v61[0] = v8;
      v61[1] = v15;
      if (v8)
      {
        v16 = v15;
        mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v62, v61);
        if (BYTE8(v64) != 1)
        {
          v8 = 0;
          goto LABEL_38;
        }

        v17 = v62;
        LOWORD(v58) = v62;
        v18 = v63;
        if (v62 == 1)
        {
          v59 = v63;
        }

        else
        {
          (*(*v63 + 16))(&v59, v63);
        }

        v60 = v64;
        v68 = &v70;
        v69 = 0x200000000;
        v26 = (*(v16 + 16))(v16, v8);
        v28 = (*(v27 + 24))(v27, v26);
        if (v29)
        {
          v30 = 8 * v29;
          v31 = 1;
          do
          {
            v32 = *v28++;
            v31 *= v32;
            v30 -= 8;
          }

          while (v30);
        }

        else
        {
          v31 = 1;
        }

        if (v31 > HIDWORD(v69))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v31);
        }

        v40 = (*(v16 + 16))(v16, v8);
        v42 = (*(v41 + 24))(v41, v40);
        if (v43)
        {
          v44 = 8 * v43;
          v45 = 1;
          do
          {
            v46 = *v42++;
            v45 *= v46;
            v44 -= 8;
          }

          while (v44);
          if (!v45)
          {
LABEL_87:
            if (v10)
            {
              v52 = *v10;
              v53 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v54 = mlir::detail::InterfaceMap::lookup(v52 + 8, v53);
            }

            else
            {
              v54 = 0;
            }

            v8 = mlir::DenseElementsAttr::get(v10, v54, v68, v69);
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v68);
            if ((v58 & 1) == 0)
            {
              v55 = v59;
              v59 = 0;
              if (v55)
              {
                (*(*v55 + 8))(v55);
              }
            }

            if ((v17 & 1) == 0 && v18)
            {
              (*(*v18 + 8))(v18);
            }

            goto LABEL_38;
          }
        }

        else
        {
          v45 = 1;
        }

        v47 = v60;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v56, &v58, v47);
          if (v4)
          {
            v48 = *v4;
            v49 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
            v50 = mlir::detail::InterfaceMap::lookup(v48 + 8, v49);
          }

          else
          {
            v50 = 0;
          }

          v51 = (*v50)(v50, v4);
          v66 = *((*v50)(v50, v4) + 12);
          if (v66 >= 0x41)
          {
            operator new[]();
          }

          v65 = 0;
          llvm::APFloat::Storage::Storage<llvm::APInt const&>(v67, v51, &v65);
          if (v66 >= 0x41 && v65)
          {
            MEMORY[0x25F891010](v65, 0x1000C8000313F17);
          }

          llvm::APFloat::convertFromAPInt(v67, &v56, 1, 1);
          if (v57 >= 0x41 && v56)
          {
            MEMORY[0x25F891010](v56, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v67);
          llvm::APFloat::Storage::~Storage(v67);
          v47 = ++v60;
          --v45;
        }

        while (v45);
        goto LABEL_87;
      }
    }
  }

LABEL_38:
  v24 = *MEMORY[0x277D85DE8];
  return v8 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t checkIntFloatCast<mlir::FloatType,mlir::IntegerType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v66 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = **(a2 + 40);
  if (!v9)
  {
    goto LABEL_82;
  }

  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_82;
  }

  v11 = v8[1] & 0x3FFFFFFF;
  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v64, (v9 + 16));
    DWORD2(v58) = v11;
    if (v11 >= 0x41)
    {
      operator new[]();
    }

    *&v58 = 0;
    LOBYTE(v52) = 0;
    BYTE12(v58) = 1;
    v18 = llvm::APFloat::convertToInteger(&v64, &v58, 0, &v52);
    llvm::APFloat::Storage::~Storage(&v64);
    if (v18 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = mlir::IntegerAttr::get(v12, &v58);
    }

    if (DWORD2(v58) >= 0x41)
    {
      v19 = v58;
      if (v58)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_82;
  }

  v13 = v10 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v9 + 24) != 1)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v9);
    v55[0] = v9;
    v55[1] = v14;
    if (!v9)
    {
      goto LABEL_82;
    }

    v15 = v14;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v58, v55);
    if (BYTE8(v59) != 1)
    {
      v9 = 0;
      goto LABEL_82;
    }

    v16 = v58;
    LOWORD(v52) = v58;
    v17 = *(&v58 + 1);
    if (v58 == 1)
    {
      v53 = *(&v58 + 1);
    }

    else
    {
      (*(**(&v58 + 1) + 16))(&v53, *(&v58 + 1));
    }

    v54 = v59;
    *&v64 = v65;
    *(&v64 + 1) = 0x300000000;
    v24 = (*(v15 + 16))(v15, v9);
    v26 = (*(v25 + 24))(v25, v24);
    if (v27)
    {
      v28 = 8 * v27;
      v29 = 1;
      do
      {
        v30 = *v26++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    if (v29 > HIDWORD(v64))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v64, v29);
    }

    v31 = (*(v15 + 16))(v15, v9);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_60:
        if (v12)
        {
          v40 = *v12;
          v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
        }

        else
        {
          v42 = 0;
        }

        v9 = mlir::DenseElementsAttr::get(v12, v42, v64, DWORD2(v64));
LABEL_65:
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
        if ((v52 & 1) == 0)
        {
          v43 = v53;
          v53 = 0;
          if (v43)
          {
            (*(*v43 + 8))(v43);
          }
        }

        if ((v16 & 1) == 0 && v17)
        {
          (*(*v17 + 8))(v17);
        }

        goto LABEL_82;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v54;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v57, &v52, v38);
      v50 = v11;
      if (v11 >= 0x41)
      {
        operator new[]();
      }

      v49 = 0;
      v56 = 0;
      v51 = 1;
      v39 = llvm::APFloat::convertToInteger(v57, &v49, 0, &v56);
      llvm::APFloat::Storage::~Storage(v57);
      if (v39 != 1)
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v64, &v49);
      }

      if (v50 >= 0x41 && v49)
      {
        MEMORY[0x25F891010](v49, 0x1000C8000313F17);
      }

      if (v39 == 1)
      {
        break;
      }

      v38 = ++v54;
      if (!--v36)
      {
        goto LABEL_60;
      }
    }

    v9 = 0;
    goto LABEL_65;
  }

  v52 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetFloatValues(&v52, &v64);
  v61 = v65[2];
  v62 = v65[3];
  v59 = v65[0];
  v60 = v65[1];
  v58 = v64;
  v63 = v65[4];
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v64, &v58);
  DWORD2(v64) = v11;
  if (v11 >= 0x41)
  {
    operator new[]();
  }

  *&v64 = 0;
  v57[0] = 0;
  BYTE12(v64) = 1;
  v20 = llvm::APFloat::convertToInteger(&v58, &v64, 0, v57);
  llvm::APFloat::Storage::~Storage(&v58);
  if (v20 == 1 || (!v12 ? (v23 = 0) : (v21 = *v12, v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22)), !(*(v23 + 16))(v23, v12)))
  {
LABEL_78:
    v9 = 0;
    goto LABEL_79;
  }

  v44 = (*(v23 + 24))(v23, v12);
  if (v45)
  {
    v46 = 8 * v45;
    while (*v44 != 0x8000000000000000)
    {
      ++v44;
      v46 -= 8;
      if (!v46)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = mlir::DenseElementsAttr::get(v12, v23, &v64, 1);
LABEL_79:
  if (DWORD2(v64) >= 0x41)
  {
    v19 = v64;
    if (v64)
    {
LABEL_81:
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

LABEL_82:
  v47 = *MEMORY[0x277D85DE8];
  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::FPToSIOp::fold(void *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = **(a2 + 40);
  if (!v9)
  {
    goto LABEL_82;
  }

  v10 = *(*v9 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_82;
  }

  v11 = v8[1] & 0x3FFFFFFF;
  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
  {
    llvm::APFloat::Storage::Storage(&v64, (v9 + 16));
    DWORD2(v58) = v11;
    if (v11 >= 0x41)
    {
      operator new[]();
    }

    *&v58 = 0;
    LOBYTE(v52) = 0;
    BYTE12(v58) = 0;
    v18 = llvm::APFloat::convertToInteger(&v64, &v58, 0, &v52);
    llvm::APFloat::Storage::~Storage(&v64);
    if (v18 == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = mlir::IntegerAttr::get(v12, &v58);
    }

    if (DWORD2(v58) >= 0x41)
    {
      v19 = v58;
      if (v58)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_82;
  }

  v13 = v10 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v9 + 24) != 1)
  {
    v9 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v9);
    v55[0] = v9;
    v55[1] = v14;
    if (!v9)
    {
      goto LABEL_82;
    }

    v15 = v14;
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v58, v55);
    if (BYTE8(v59) != 1)
    {
      v9 = 0;
      goto LABEL_82;
    }

    v16 = v58;
    LOWORD(v52) = v58;
    v17 = *(&v58 + 1);
    if (v58 == 1)
    {
      v53 = *(&v58 + 1);
    }

    else
    {
      (*(**(&v58 + 1) + 16))(&v53, *(&v58 + 1));
    }

    v54 = v59;
    *&v64 = v65;
    *(&v64 + 1) = 0x300000000;
    v24 = (*(v15 + 16))(v15, v9);
    v26 = (*(v25 + 24))(v25, v24);
    if (v27)
    {
      v28 = 8 * v27;
      v29 = 1;
      do
      {
        v30 = *v26++;
        v29 *= v30;
        v28 -= 8;
      }

      while (v28);
    }

    else
    {
      v29 = 1;
    }

    if (v29 > HIDWORD(v64))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v64, v29);
    }

    v31 = (*(v15 + 16))(v15, v9);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_60:
        if (v12)
        {
          v40 = *v12;
          v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v42 = mlir::detail::InterfaceMap::lookup(v40 + 8, v41);
        }

        else
        {
          v42 = 0;
        }

        v9 = mlir::DenseElementsAttr::get(v12, v42, v64, DWORD2(v64));
LABEL_65:
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
        if ((v52 & 1) == 0)
        {
          v43 = v53;
          v53 = 0;
          if (v43)
          {
            (*(*v43 + 8))(v43);
          }
        }

        if ((v16 & 1) == 0 && v17)
        {
          (*(*v17 + 8))(v17);
        }

        goto LABEL_82;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v54;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v57, &v52, v38);
      v50 = v11;
      if (v11 >= 0x41)
      {
        operator new[]();
      }

      v49 = 0;
      v56 = 0;
      v51 = 0;
      v39 = llvm::APFloat::convertToInteger(v57, &v49, 0, &v56);
      llvm::APFloat::Storage::~Storage(v57);
      if (v39 != 1)
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v64, &v49);
      }

      if (v50 >= 0x41 && v49)
      {
        MEMORY[0x25F891010](v49, 0x1000C8000313F17);
      }

      if (v39 == 1)
      {
        break;
      }

      v38 = ++v54;
      if (!--v36)
      {
        goto LABEL_60;
      }
    }

    v9 = 0;
    goto LABEL_65;
  }

  v52 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetFloatValues(&v52, &v64);
  v61 = v65[2];
  v62 = v65[3];
  v59 = v65[0];
  v60 = v65[1];
  v58 = v64;
  v63 = v65[4];
  llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v64, &v58);
  DWORD2(v64) = v11;
  if (v11 >= 0x41)
  {
    operator new[]();
  }

  *&v64 = 0;
  v57[0] = 0;
  BYTE12(v64) = 0;
  v20 = llvm::APFloat::convertToInteger(&v58, &v64, 0, v57);
  llvm::APFloat::Storage::~Storage(&v58);
  if (v20 == 1 || (!v12 ? (v23 = 0) : (v21 = *v12, v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v23 = mlir::detail::InterfaceMap::lookup(v21 + 8, v22)), !(*(v23 + 16))(v23, v12)))
  {
LABEL_78:
    v9 = 0;
    goto LABEL_79;
  }

  v44 = (*(v23 + 24))(v23, v12);
  if (v45)
  {
    v46 = 8 * v45;
    while (*v44 != 0x8000000000000000)
    {
      ++v44;
      v46 -= 8;
      if (!v46)
      {
        goto LABEL_77;
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  v9 = mlir::DenseElementsAttr::get(v12, v23, &v64, 1);
LABEL_79:
  if (DWORD2(v64) >= 0x41)
  {
    v19 = v64;
    if (v64)
    {
LABEL_81:
      MEMORY[0x25F891010](v19, 0x1000C8000313F17);
    }
  }

LABEL_82:
  v47 = *MEMORY[0x277D85DE8];
  return v9 & 0xFFFFFFFFFFFFFFFBLL;
}

BOOL areIndexCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!areValidCastInputsAndOutputs(a1, a2, a3, a4))
  {
    return 0;
  }

  v6 = mlir::TypeRange::dereference_iterator(a1, 0);
  v7 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v6);
  v8 = mlir::TypeRange::dereference_iterator(a3, 0);
  v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType>(v8);
  v10 = 0;
  if (v7 && v9)
  {
    v11 = *(*v7 + 136);
    if (v11 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      if (*(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(v9 + 2) >> 30))
      {
        return 1;
      }
    }

    else if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(*(v7 + 2) >> 30))
    {
      return *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id;
    }

    return 0;
  }

  return v10;
}

unint64_t mlir::arith::IndexCastOp::fold(void *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = v8[1] & 0x3FFFFFFF;
  }

  else
  {
    v9 = 64;
  }

  v10 = **(a2 + 40);
  if (!v10)
  {
    goto LABEL_79;
  }

  v11 = *(*v10 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_79;
  }

  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v54) = *(v10 + 24);
    if (v54 > 0x40)
    {
      operator new[]();
    }

    v53 = *(v10 + 16);
    llvm::APInt::sextOrTrunc(&v53, v9, &v56);
    if (v54 >= 0x41 && v53)
    {
      MEMORY[0x25F891010](v53, 0x1000C8000313F17);
    }

    v10 = mlir::IntegerAttr::get(v12, &v56);
    if (v57 >= 0x41 && v56)
    {
      goto LABEL_52;
    }

    goto LABEL_79;
  }

  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v10 + 24) != 1)
  {
    v10 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v10);
    v52[0] = v10;
    v52[1] = v17;
    if (!v10)
    {
      goto LABEL_79;
    }

    v18 = v17;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v53, v52);
    if (BYTE8(v55) != 1)
    {
      v10 = 0;
      goto LABEL_79;
    }

    v19 = v53;
    LOWORD(v49) = v53;
    v20 = v54;
    if (v53 == 1)
    {
      v50 = v54;
    }

    else
    {
      (*(*v54 + 16))(&v50, v54);
    }

    v51 = v55;
    v56 = &v58;
    v57 = 0x300000000;
    v21 = (*(v18 + 16))(v18, v10);
    v23 = (*(v22 + 24))(v22, v21);
    if (v24)
    {
      v25 = 8 * v24;
      v26 = 1;
      do
      {
        v27 = *v23++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v26 = 1;
    }

    if (v26 > HIDWORD(v57))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v56, v26);
    }

    v31 = (*(v18 + 16))(v18, v10);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_70:
        if (v12)
        {
          v39 = *v12;
          v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
        }

        else
        {
          v41 = 0;
        }

        v10 = mlir::DenseElementsAttr::get(v12, v41, v56, v57);
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v56);
        if ((v49 & 1) == 0)
        {
          v42 = v50;
          v50 = 0;
          if (v42)
          {
            (*(*v42 + 8))(v42);
          }
        }

        if ((v19 & 1) == 0 && v20)
        {
          (*(*v20 + 8))(v20);
        }

        goto LABEL_79;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v51;
    do
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v45, &v49, v38);
      llvm::APInt::sextOrTrunc(&v45, v9, &v47);
      if (v46 >= 0x41 && v45)
      {
        MEMORY[0x25F891010](v45, 0x1000C8000313F17);
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v56, &v47);
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x25F891010](v47, 0x1000C8000313F17);
      }

      v38 = ++v51;
      --v36;
    }

    while (v36);
    goto LABEL_70;
  }

  v49 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v49, &v56);
  v55 = v58;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v56, &v53);
  llvm::APInt::sextOrTrunc(&v53, v9, &v56);
  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x25F891010](v53, 0x1000C8000313F17);
  }

  if (v12)
  {
    v14 = *v12;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(*(v16 + 16))(v16, v12))
  {
LABEL_49:
    v10 = 0;
    goto LABEL_50;
  }

  v28 = (*(v16 + 24))(v16, v12);
  if (v29)
  {
    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = mlir::DenseElementsAttr::get(v12, v16, &v56, 1);
LABEL_50:
  if (v57 >= 0x41 && v56)
  {
LABEL_52:
    MEMORY[0x25F891010]();
  }

LABEL_79:
  v43 = *MEMORY[0x277D85DE8];
  return v10 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::IndexCastUIOp::fold(void *a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v4);
  v7 = v5;
  if (v5)
  {
    v5 = (*(v6 + 8))(v6, v5);
  }

  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v9 = v8[1] & 0x3FFFFFFF;
  }

  else
  {
    v9 = 64;
  }

  v10 = **(a2 + 40);
  if (!v10)
  {
    goto LABEL_79;
  }

  v11 = *(*v10 + 136);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_79;
  }

  v12 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    LODWORD(v54) = *(v10 + 24);
    if (v54 > 0x40)
    {
      operator new[]();
    }

    v53 = *(v10 + 16);
    llvm::APInt::zextOrTrunc(&v53, v9, &v56);
    if (v54 >= 0x41 && v53)
    {
      MEMORY[0x25F891010](v53, 0x1000C8000313F17);
    }

    v10 = mlir::IntegerAttr::get(v12, &v56);
    if (v57 >= 0x41 && v56)
    {
      goto LABEL_52;
    }

    goto LABEL_79;
  }

  v13 = v11 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v11 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (!v13 || *(v10 + 24) != 1)
  {
    v10 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v10);
    v52[0] = v10;
    v52[1] = v17;
    if (!v10)
    {
      goto LABEL_79;
    }

    v18 = v17;
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v53, v52);
    if (BYTE8(v55) != 1)
    {
      v10 = 0;
      goto LABEL_79;
    }

    v19 = v53;
    LOWORD(v49) = v53;
    v20 = v54;
    if (v53 == 1)
    {
      v50 = v54;
    }

    else
    {
      (*(*v54 + 16))(&v50, v54);
    }

    v51 = v55;
    v56 = &v58;
    v57 = 0x300000000;
    v21 = (*(v18 + 16))(v18, v10);
    v23 = (*(v22 + 24))(v22, v21);
    if (v24)
    {
      v25 = 8 * v24;
      v26 = 1;
      do
      {
        v27 = *v23++;
        v26 *= v27;
        v25 -= 8;
      }

      while (v25);
    }

    else
    {
      v26 = 1;
    }

    if (v26 > HIDWORD(v57))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v56, v26);
    }

    v31 = (*(v18 + 16))(v18, v10);
    v33 = (*(v32 + 24))(v32, v31);
    if (v34)
    {
      v35 = 8 * v34;
      v36 = 1;
      do
      {
        v37 = *v33++;
        v36 *= v37;
        v35 -= 8;
      }

      while (v35);
      if (!v36)
      {
LABEL_70:
        if (v12)
        {
          v39 = *v12;
          v40 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v41 = mlir::detail::InterfaceMap::lookup(v39 + 8, v40);
        }

        else
        {
          v41 = 0;
        }

        v10 = mlir::DenseElementsAttr::get(v12, v41, v56, v57);
        llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v56);
        if ((v49 & 1) == 0)
        {
          v42 = v50;
          v50 = 0;
          if (v42)
          {
            (*(*v42 + 8))(v42);
          }
        }

        if ((v19 & 1) == 0 && v20)
        {
          (*(*v20 + 8))(v20);
        }

        goto LABEL_79;
      }
    }

    else
    {
      v36 = 1;
    }

    v38 = v51;
    do
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v45, &v49, v38);
      llvm::APInt::zextOrTrunc(&v45, v9, &v47);
      if (v46 >= 0x41 && v45)
      {
        MEMORY[0x25F891010](v45, 0x1000C8000313F17);
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v56, &v47);
      if (v48 >= 0x41 && v47)
      {
        MEMORY[0x25F891010](v47, 0x1000C8000313F17);
      }

      v38 = ++v51;
      --v36;
    }

    while (v36);
    goto LABEL_70;
  }

  v49 = **(a2 + 40);
  mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v49, &v56);
  v55 = v58;
  mlir::DenseElementsAttr::IntElementIterator::operator*(&v56, &v53);
  llvm::APInt::zextOrTrunc(&v53, v9, &v56);
  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x25F891010](v53, 0x1000C8000313F17);
  }

  if (v12)
  {
    v14 = *v12;
    v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  }

  else
  {
    v16 = 0;
  }

  if (!(*(v16 + 16))(v16, v12))
  {
LABEL_49:
    v10 = 0;
    goto LABEL_50;
  }

  v28 = (*(v16 + 24))(v16, v12);
  if (v29)
  {
    v30 = 8 * v29;
    while (*v28 != 0x8000000000000000)
    {
      ++v28;
      v30 -= 8;
      if (!v30)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_49;
  }

LABEL_48:
  v10 = mlir::DenseElementsAttr::get(v12, v16, &v56, 1);
LABEL_50:
  if (v57 >= 0x41 && v56)
  {
LABEL_52:
    MEMORY[0x25F891010]();
  }

LABEL_79:
  v43 = *MEMORY[0x277D85DE8];
  return v10 & 0xFFFFFFFFFFFFFFFBLL;
}

uint64_t mlir::arith::BitcastOp::areCastCompatible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = areValidCastInputsAndOutputs(a1, a2, a3, a4);
  if (result)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v12 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(v7);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    v9 = getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(v8);
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
  if (a2 == 1 && a4 == 1)
  {
    v7 = mlir::TypeRange::dereference_iterator(a1, 0);
    v8 = mlir::TypeRange::dereference_iterator(a3, 0);
    if (*(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11 || *(v9 + 32) == *(v10 + 32))
    {
      v14 = mlir::TypeRange::dereference_iterator(a1, 0);
      v13 = mlir::TypeRange::dereference_iterator(a3, 0);
      v5 = mlir::verifyCompatibleShapes(&v14 + 2, 1, &v13 + 2, 1);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t *getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::FloatType>(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v2 + 8, v3))
  {
    v4 = *(*v1 + 136);
    v5 = v4 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v4 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id;
    v6 = v5 || v4 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id;
    if (!v6 && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      return 0;
    }
  }

  v8 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v1);
  if (v8)
  {
    v1 = (*(v9 + 8))(v9, v8);
  }

  v10 = *v1;
  if (*(*v1 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v10 + 8, v11))
    {
      return 0;
    }
  }

  return v1;
}

unint64_t mlir::arith::BitcastOp::fold(uint64_t a1, uint64_t a2)
{
  v25[3] = *MEMORY[0x277D85DE8];
  v2 = **(a2 + 40);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v5 = *(*v2 + 136);
  v6 = v5 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v6)
  {
    v7 = **(a2 + 40);
  }

  else
  {
    v7 = 0;
  }

  v25[0] = v7;
  if (v6)
  {
    v8 = *v4;
    v9 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
    v11 = (*(v10 + 8))(v10, v4);
    v12 = mlir::DenseElementsAttr::bitcast(v25, v11) & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    v13 = *v4;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v13 + 8, v14))
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    v17 = *(*v2 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v18 = *(**(***(*a1 + 24) + 32) + 560);
      v25[0] = &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id;
      v12 = *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v18 + 232), v25) & 0xFFFFFFFFFFFFFFFBLL;
    }

    else
    {
      if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        llvm::APFloat::Storage::Storage(v25, (v2 + 4));
        llvm::APFloat::bitcastToAPInt(v25, &v23);
        llvm::APFloat::Storage::~Storage(v25);
      }

      else
      {
        v24 = v2[6];
        if (v24 > 0x40)
        {
          operator new[]();
        }

        v23 = *(v2 + 2);
      }

      v19 = llvm::DefaultDoCastIfPossible<mlir::FloatType,mlir::Type,llvm::CastInfo<mlir::FloatType,mlir::Type,void>>::doCastIfPossible(v4);
      if (v19)
      {
        v21 = (*v20)(v20, v19);
        llvm::APFloat::Storage::Storage<llvm::APInt const&>(v25, v21, &v23);
        v22 = mlir::FloatAttr::get(v4, v25);
        llvm::APFloat::Storage::~Storage(v25);
      }

      else
      {
        v22 = mlir::IntegerAttr::get(v4, &v23);
      }

      v12 = v22 & 0xFFFFFFFFFFFFFFFBLL;
      if (v24 >= 0x41 && v23)
      {
        MEMORY[0x25F891010](v23, 0x1000C8000313F17);
      }
    }
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t mlir::arith::applyCmpPredicate(uint64_t a1, llvm::APInt *this, llvm::APInt *a3)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 != 5)
      {
        v8 = llvm::APInt::compare(this, a3);
        return v8 >> 31;
      }

      v7 = llvm::APInt::compareSigned(this, a3);
    }

    else
    {
      if (a1 == 7)
      {
        v3 = llvm::APInt::compare(this, a3);
        return v3 < 1;
      }

      if (a1 == 8)
      {
        v4 = llvm::APInt::compare(this, a3);
        return v4 > 0;
      }

      v7 = llvm::APInt::compare(this, a3);
    }

    return v7 >= 0;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v3 = llvm::APInt::compareSigned(this, a3);
        return v3 < 1;
      }

      v4 = llvm::APInt::compareSigned(this, a3);
      return v4 > 0;
    }

    v8 = llvm::APInt::compareSigned(this, a3);
    return v8 >> 31;
  }

  if (a1)
  {
    v10 = *(this + 2);
    if (v10 > 0x40)
    {
      v11 = memcmp(*this, *a3, ((v10 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      v11 = *this == *a3;
    }

    v12 = v11;
    return v12 ^ 1u;
  }

  else
  {
    v5 = *(this + 2);
    if (v5 > 0x40)
    {
      return memcmp(*this, *a3, ((v5 + 63) >> 3) & 0x3FFFFFF8) == 0;
    }

    else
    {
      return *this == *a3;
    }
  }
}

unint64_t mlir::arith::CmpIOp::fold(uint64_t *a1, unint64_t a2)
{
  v142 = *MEMORY[0x277D85DE8];
  if (*(*(*a1 + 72) + 24) == *(*(*a1 + 72) + 56))
  {
    *&v137 = *(*a1 + 80);
    v13 = qword_25D09F9A8[mlir::IntegerAttr::getInt(&v137)];
    v14 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    v15 = *(**(**v14 + 32) + v13);
    *&v137 = v15;
    if (v14)
    {
      v16 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v14);
      if (v16)
      {
        v15 = mlir::DenseElementsAttr::get(v16, v17, &v137, 1uLL);
      }
    }

    goto LABEL_111;
  }

  v3 = a2;
  v4 = *(*(a2 + 48) + 8);
  *&v137 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4 || !mlir::detail::constant_int_predicate_matcher::match(&v137, v4))
  {
    goto LABEL_34;
  }

  v5 = *a1;
  v6 = *(*(*a1 + 72) + 24);
  v7 = *(v6 + 8);
  v8 = v7 & 7;
  if (v8 == 7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(*a1 + 72) + 24);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = *(v9 + 8) & 7;
  if (v10 == 6)
  {
    v11 = v9 + 24 * *(v9 + 16);
    v12 = v11 + 120;
    if (v11 == -120)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = v9 + 16 * v10 + 16;
  }

  if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    v73 = *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v74 = *(*v73 + 136);
    if (v74 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v74 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_18;
      }

      v73 = *(v73 + 24);
    }

    if ((*(v73 + 8) & 0x3FFFFFFF) == 1)
    {
      *&v137 = *(v5 + 80);
      if (mlir::IntegerAttr::getInt(&v137) == 1)
      {
        goto LABEL_106;
      }

      v5 = *a1;
      v6 = *(*(*a1 + 72) + 24);
      v7 = *(v6 + 8);
      v8 = v7 & 7;
    }
  }

LABEL_18:
  if (v8 == 7)
  {
    v6 = 0;
  }

  if (v6)
  {
    v18 = *(v6 + 8) & 7;
    if (v18 == 6)
    {
      v19 = v6 + 24 * *(v6 + 16);
      v12 = v19 + 120;
      if (v19 == -120)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v12 = v6 + 16 * v18 + 16;
    }

    if (*(*(v12 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      goto LABEL_26;
    }

    v75 = *(*(*(v12 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
    v76 = *(*v75 + 136);
    if (v76 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (v76 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id)
      {
        goto LABEL_26;
      }

      v75 = *(v75 + 24);
    }

    if ((*(v75 + 8) & 0x3FFFFFFF) == 1)
    {
      *&v137 = *(v5 + 80);
      if (mlir::IntegerAttr::getInt(&v137) != 1)
      {
        v7 = *(*(*(*a1 + 72) + 24) + 8);
        goto LABEL_26;
      }

LABEL_106:
      v77 = *(v12 + 72);
LABEL_108:
      v3 = *(v77 + 24) | 4;
      goto LABEL_122;
    }
  }

LABEL_26:
  v20 = v7 & 0xFFFFFFFFFFFFFFF8;
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible((v7 & 0xFFFFFFFFFFFFFFF8));
  v23 = v21;
  if (v21)
  {
    v21 = (*(v22 + 8))(v22, v21);
  }

  if (v23)
  {
    v24 = v21;
  }

  else
  {
    v24 = v20;
  }

  if (*(*v24 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v24[2] & 0x3FFFFFFF) == 1)
  {
    *&v137 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    if (mlir::IntegerAttr::getInt(&v137) == 1)
    {
      goto LABEL_107;
    }
  }

LABEL_34:
  v25 = *(*(v3 + 48) + 8);
  *&v137 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v25 && mlir::detail::constant_int_predicate_matcher::match(&v137, v25))
  {
    v26 = (*(*(*(*a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    v27 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v26);
    v29 = v27;
    if (v27)
    {
      v27 = (*(v28 + 8))(v28, v27);
    }

    v30 = v29 ? v27 : v26;
    if (*(*v30 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && (v30[1] & 0x3FFFFFFF) == 1)
    {
      *&v137 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
      if (!mlir::IntegerAttr::getInt(&v137))
      {
LABEL_107:
        v77 = *(*a1 + 72);
        goto LABEL_108;
      }
    }
  }

  v31 = *(v3 + 48);
  if (!*v31)
  {
    goto LABEL_121;
  }

  if (!*(v31 + 8))
  {
    v137 = xmmword_25D0A0810;
    v138[0] = xmmword_25D0A0820;
    v138[1] = xmmword_25D0A0830;
    v138[2] = xmmword_25D0A0840;
    v138[3] = xmmword_25D0A0850;
    v138[4] = xmmword_25D0A0860;
    v138[5] = xmmword_25D0A0870;
    v138[6] = xmmword_25D0A0880;
    v139 = 0;
    v140 = 0;
    v141 = vdupq_n_s64(1uLL);
    *&v135 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&v135);
    v52 = 0;
    while (Int != *&v138[v52 - 1])
    {
      if (++v52 == 10)
      {
        goto LABEL_122;
      }
    }

    v53 = *(&v138[v52 - 1] + 1);
    v54 = mlir::IntegerType::get(*(***(*a1 + 24) + 32), 64, 0);
    *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64) = mlir::IntegerAttr::get(v54, v53);
    v55 = *(*a1 + 72);
    v56 = v55[3];
    v57 = v55[7];
    v58 = v55[1];
    if (v58)
    {
      v59 = *v55;
      *v58 = *v55;
      if (v59)
      {
        *(v59 + 8) = v55[1];
      }
    }

    v55[3] = v57;
    v55[1] = v57;
    v60 = *v57;
    *v55 = *v57;
    if (v60)
    {
      *(v60 + 8) = v55;
    }

    *v57 = v55;
    v61 = *(*a1 + 72);
    v62 = v61 + 4;
    v63 = v61[5];
    if (v63)
    {
      v64 = *v62;
      *v63 = *v62;
      if (v64)
      {
        *(v64 + 8) = v61[5];
      }
    }

    v61[7] = v56;
    v61[5] = v56;
    v65 = *v56;
    v61[4] = *v56;
    if (v65)
    {
      *(v65 + 8) = v62;
    }

    *v56 = v62;
    if (*(*a1 + 36))
    {
      v3 = (*a1 - 16) | 4;
    }

    else
    {
      v3 = 4;
    }

    goto LABEL_122;
  }

  v33 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(*v31);
  if (!v33)
  {
LABEL_121:
    v3 = 0;
    goto LABEL_122;
  }

  v34 = *(v3 + 48);
  v35 = (*v32)(v32, v33);
  I1SameShape = getI1SameShape(v35);
  *&v137 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 64);
  v37 = mlir::IntegerAttr::getInt(&v137);
  v134 = I1SameShape;
  if (!I1SameShape)
  {
    goto LABEL_110;
  }

  v38 = *v34;
  if (!*v34)
  {
    goto LABEL_110;
  }

  v39 = v34[1];
  if (!v39)
  {
    goto LABEL_110;
  }

  v40 = v37;
  v41 = *v38;
  v42 = *(*v38 + 136);
  if (v42 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && *(*v39 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    *&v135 = *v34;
    v120 = v39;
    if (*(v38 + 8) == v39[1])
    {
      mlir::IntegerAttr::getValue(&v135, &v132);
      mlir::IntegerAttr::getValue(&v120, &v130);
      v86 = mlir::arith::applyCmpPredicate(v40, &v132, &v130);
      DWORD2(v137) = 1;
      *&v137 = v86;
      LOBYTE(v138[0]) = 1;
      if (v131 >= 0x41 && v130)
      {
        MEMORY[0x25F891010](v130, 0x1000C8000313F17);
      }

      if (v133 >= 0x41 && v132)
      {
        MEMORY[0x25F891010](v132, 0x1000C8000313F17);
      }

      v50 = mlir::IntegerAttr::get(I1SameShape, &v137);
      goto LABEL_133;
    }

LABEL_110:
    v15 = 0;
LABEL_111:
    v3 = v15 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_122;
  }

  v43 = v42 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v42 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  if (v43 && *(v38 + 24) == 1)
  {
    v44 = *(*v39 + 136);
    v45 = v44 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v45 && *(v39 + 24) == 1)
    {
      v120 = *v34;
      v117 = v39;
      if (*(v38 + 8) == v39[1])
      {
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v120, &v137);
        v135 = v137;
        v136 = v138[0];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v137, &v128);
        mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v117, &v137);
        v135 = v137;
        v136 = v138[0];
        mlir::DenseElementsAttr::IntElementIterator::operator*(&v137, &v126);
        v46 = mlir::arith::applyCmpPredicate(v40, &v128, &v126);
        DWORD2(v137) = 1;
        *&v137 = v46;
        LOBYTE(v138[0]) = 1;
        if (v127 >= 0x41 && v126)
        {
          MEMORY[0x25F891010](v126, 0x1000C8000313F17);
        }

        if (v129 >= 0x41 && v128)
        {
          MEMORY[0x25F891010](v128, 0x1000C8000313F17);
        }

        v47 = *I1SameShape;
        v48 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v49 = mlir::detail::InterfaceMap::lookup(v47 + 8, v48);
        v50 = mlir::DenseElementsAttr::get(I1SameShape, v49, &v137, 1);
LABEL_133:
        v15 = v50;
        if ((v138[0] & 1) != 0 && DWORD2(v137) >= 0x41 && v137)
        {
          MEMORY[0x25F891010](v137, 0x1000C8000313F17);
        }

        goto LABEL_111;
      }

      goto LABEL_110;
    }
  }

  v66 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v41 + 8, v66))
  {
    goto LABEL_110;
  }

  v67 = *v34[1];
  v68 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v67 + 8, v68))
  {
    goto LABEL_110;
  }

  v69 = *v34;
  if (*v34)
  {
    v70 = *v69;
    v71 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v72 = mlir::detail::InterfaceMap::lookup(v70 + 8, v71);
  }

  else
  {
    v72 = 0;
  }

  v125[0] = v69;
  v125[1] = v72;
  v78 = v34[1];
  if (v78)
  {
    v79 = *v78;
    v80 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    v81 = mlir::detail::InterfaceMap::lookup(v79 + 8, v80);
  }

  else
  {
    v81 = 0;
  }

  v124[0] = v78;
  v124[1] = v81;
  v82 = (**(v72 + 24))();
  if (v82 != (**(v81 + 24))())
  {
    goto LABEL_121;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v135, v125);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v120, v124);
  v83 = BYTE8(v136);
  if (BYTE8(v136))
  {
    if ((v123 & 1) == 0)
    {
      v3 = 0;
LABEL_180:
      if ((v135 & 1) == 0 && *(&v135 + 1))
      {
        (*(**(&v135 + 1) + 8))(*(&v135 + 1));
      }

      goto LABEL_122;
    }

    LOWORD(v117) = v135;
    if (v135 == 1)
    {
      v118 = *(&v135 + 1);
    }

    else
    {
      (*(**(&v135 + 1) + 16))(&v118);
    }

    v119 = v136;
    v114 = v120;
    if (v120 == 1)
    {
      v115 = v121;
    }

    else
    {
      (*(*v121 + 16))(&v115);
    }

    v116 = v122;
    *&v137 = v138;
    *(&v137 + 1) = 0x400000000;
    v87 = (*(v72 + 16))(v72, v69);
    v89 = (*(v88 + 24))(v88, v87);
    if (v90)
    {
      v91 = 8 * v90;
      v92 = 1;
      do
      {
        v93 = *v89++;
        v92 *= v93;
        v91 -= 8;
      }

      while (v91);
    }

    else
    {
      v92 = 1;
    }

    if (v92 > HIDWORD(v137))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v137, v92);
    }

    v94 = (*(v72 + 16))(v72, v69);
    v96 = (*(v95 + 24))(v95, v94);
    if (v97)
    {
      v98 = 8 * v97;
      v99 = 1;
      do
      {
        v100 = *v96++;
        v99 *= v100;
        v98 -= 8;
      }

      while (v98);
      if (!v99)
      {
LABEL_168:
        v103 = llvm::cast<mlir::ShapedType,mlir::Type>(&v134);
        v3 = mlir::DenseElementsAttr::get(v103, v104, v137, DWORD2(v137)) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_170:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v137);
        if ((v114 & 1) == 0)
        {
          v105 = v115;
          v115 = 0;
          if (v105)
          {
            (*(*v105 + 8))(v105);
          }
        }

        if ((v117 & 1) == 0)
        {
          v106 = v118;
          v118 = 0;
          if (v106)
          {
            (*(*v106 + 8))(v106);
          }
        }

        goto LABEL_176;
      }
    }

    else
    {
      v99 = 1;
    }

    v101 = v119;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v109, &v117, v101);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v107, &v114, v116);
      v102 = mlir::arith::applyCmpPredicate(v40, &v109, &v107);
      v112 = 1;
      v111 = v102;
      v113 = 1;
      if (v108 >= 0x41 && v107)
      {
        MEMORY[0x25F891010](v107, 0x1000C8000313F17);
      }

      if (v110 >= 0x41 && v109)
      {
        MEMORY[0x25F891010](v109, 0x1000C8000313F17);
      }

      if (v113 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v137, &v111);
      if ((v113 & 1) != 0 && v112 >= 0x41 && v111)
      {
        MEMORY[0x25F891010](v111, 0x1000C8000313F17);
      }

      v101 = ++v119;
      ++v116;
      if (!--v99)
      {
        goto LABEL_168;
      }
    }

    v3 = 0;
    goto LABEL_170;
  }

  v3 = 0;
  if ((v123 & 1) == 0)
  {
    goto LABEL_122;
  }

LABEL_176:
  if ((v120 & 1) == 0 && v121)
  {
    (*(*v121 + 8))(v121);
  }

  if (v83)
  {
    goto LABEL_180;
  }

LABEL_122:
  v84 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t mlir::arith::CmpFOp::fold(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 56);
  if (*v3)
  {
    if (*(**v3 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v3[1];
  if (v5)
  {
    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      v6 = v5;
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

  if (!v4 || ((llvm::APFloat::Storage::Storage(&v23, (v4 + 16)), v23 != &llvm::semPPCDoubleDouble) ? (v7 = &v23) : (v7 = v24), v8 = *(v7 + 20) & 7, llvm::APFloat::Storage::~Storage(&v23), v9 = v4, v8 != 1))
  {
    v9 = v6;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  llvm::APFloat::Storage::Storage(&v23, (v9 + 16));
  v10 = v23 == &llvm::semPPCDoubleDouble ? v24 : &v23;
  v11 = *(v10 + 20) & 7;
  llvm::APFloat::Storage::~Storage(&v23);
  if (v11 == 1 || v4 != 0)
  {
    if (v11 == 1)
    {
      v13 = v9;
    }

    else
    {
      v13 = v4;
    }

    v23 = *(*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + 72);
    Int = mlir::IntegerAttr::getInt(&v23);
    llvm::APFloat::Storage::Storage(&v23, (v13 + 16));
    llvm::APFloat::Storage::Storage(v22, (v9 + 16));
    v15 = llvm::APFloat::compare(&v23, v22);
    LOBYTE(v9) = 0;
    switch(Int)
    {
      case 1:
        v16 = v15 == 1;
        goto LABEL_55;
      case 2:
        v16 = v15 == 2;
        goto LABEL_55;
      case 3:
        v18 = v15 - 1 >= 2;
        goto LABEL_43;
      case 4:
        v16 = v15 == 0;
        goto LABEL_55;
      case 5:
        v18 = v15 >= 2;
LABEL_43:
        LOBYTE(v9) = !v18;
        break;
      case 6:
        v19 = (v15 & 0xFFFFFFFD) == 1;
        goto LABEL_48;
      case 7:
        v19 = v15 == 3;
        goto LABEL_48;
      case 8:
        v16 = (v15 & 0xFFFFFFFD) == 1;
        goto LABEL_55;
      case 9:
        v16 = (v15 & 0xFFFFFFFE) == 2;
        goto LABEL_55;
      case 10:
        v16 = v15 == 1 || (v15 & 0xFFFFFFFE) == 2;
        goto LABEL_55;
      case 11:
        v16 = v15 == 3 || v15 == 0;
        goto LABEL_55;
      case 12:
        if (v15 >= 4)
        {
          LOBYTE(v9) = 0;
        }

        else
        {
          LODWORD(v9) = 0xBu >> (v15 & 0xF);
        }

        break;
      case 13:
        v19 = v15 == 1;
LABEL_48:
        LOBYTE(v9) = !v19;
        break;
      case 14:
        v16 = v15 == 3;
LABEL_55:
        LOBYTE(v9) = v16;
        break;
      case 15:
        LOBYTE(v9) = 1;
        break;
      default:
        break;
    }

    llvm::APFloat::Storage::~Storage(v22);
    llvm::APFloat::Storage::~Storage(&v23);
    v20 = 592;
    if (v9)
    {
      v20 = 600;
    }

    result = *(**(***(*a1 + 24) + 32) + v20) & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
LABEL_29:
    result = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::SelectOp::fold(uint64_t a1, uint64_t a2)
{
  v71[6] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = v2[7];
  v4 = v2[11];
  if (v3 == v4)
  {
    goto LABEL_18;
  }

  v7 = v2[3];
  v8 = *(a2 + 40);
  v9 = *v8;
  v69 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v9)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v69, v9))
    {
LABEL_18:
      v15 = v3 | 4;
      goto LABEL_70;
    }

    v8 = *(a2 + 40);
    v10 = *v8;
    v69 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v10)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v69, v10))
      {
LABEL_26:
        v15 = v4 | 4;
        goto LABEL_70;
      }

      v8 = *(a2 + 40);
    }
  }

  v11 = v8[1];
  if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_26;
  }

  v12 = v8[2];
  if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_18;
  }

  v13 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && v13[2] == 1)
  {
    v69 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
    if (v11)
    {
      if (mlir::detail::constant_int_predicate_matcher::match(&v69, v11))
      {
        v14 = *(*(a2 + 40) + 16);
        v63 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
        if (v14)
        {
          if (mlir::detail::constant_int_predicate_matcher::match(&v63, v14))
          {
            v15 = v7 | 4;
            goto LABEL_70;
          }
        }
      }
    }
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
    goto LABEL_38;
  }

  v17 = *(v16 + 8) & 7;
  if (v17 == 6)
  {
    v18 = v16 + 24 * *(v16 + 16);
    v19 = v18 + 120;
    if (v18 == -120)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = v16 + 16 * v17 + 16;
  }

  if (*(*(v19 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::CmpIOp,void>::id)
  {
    v69 = *(v19 + 16 * ((*(v19 + 44) >> 23) & 1) + 64);
    Int = mlir::IntegerAttr::getInt(&v69);
    if (Int <= 1)
    {
      v21 = *(v19 + 72);
      v22 = *(v21 + 24);
      v23 = *(v21 + 56);
      v24 = v22 == v3 && v23 == v4;
      if (v24 || (v22 == v4 ? (v25 = v23 == v3) : (v25 = 0), v25))
      {
        if (Int == 1)
        {
          v47 = v3;
        }

        else
        {
          v47 = v4;
        }

        v15 = v47 | 4;
        goto LABEL_70;
      }
    }
  }

LABEL_38:
  v26 = *(a2 + 40);
  v27 = *v26;
  if (!*v26)
  {
    goto LABEL_69;
  }

  v28 = *(*v27 + 136);
  v29 = v28 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v28 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v30 = v29 ? *v26 : 0;
  v62 = v30;
  if (!v29)
  {
    goto LABEL_69;
  }

  v31 = *(v26 + 8);
  if (!v31)
  {
    goto LABEL_69;
  }

  v32 = *(*v31 + 136);
  v33 = v32 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v32 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
  v34 = v33 ? *(v26 + 8) : 0;
  if (v33 && (v35 = *(v26 + 16)) != 0 && ((v36 = *(*v35 + 136), v36 != &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id) ? (v37 = v36 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) : (v37 = 1), !v37 ? (v38 = 0) : (v38 = v35), v37))
  {
    v69 = v71;
    v70 = 0x600000000;
    v39 = v27[1];
    v40 = (*(v27[2] + 24))();
    if (v41)
    {
      v42 = 8 * v41;
      v43 = 1;
      do
      {
        v44 = *v40++;
        v43 *= v44;
        v42 -= 8;
      }

      while (v42);
    }

    else
    {
      v43 = 1;
    }

    if (v43 > HIDWORD(v70))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v69, v71, v43, 8);
    }

    mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v63, &v62);
    v48 = v63;
    v49 = v64;
    mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&v63, &v62);
    v50 = v66;
    v51 = *(v34 + 8);
    (*(*(v34 + 16) + 24))();
    v52 = *(v34 + 8);
    (*(*(v34 + 16) + 24))();
    v53 = *(v38 + 8);
    (*(*(v38 + 16) + 24))();
    v54 = *(v38 + 8);
    (*(*(v38 + 16) + 24))();
    v63 = v48;
    v64 = v49;
    v65 = v34;
    v66 = 0;
    v67 = v38;
    for (i = 0; v64 != v50; ++i)
    {
      v55 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v63);
      v56 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v65);
      v57 = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v67);
      v58 = *(v55 + 24);
      if (v58 > 0x40)
      {
        v59 = llvm::APInt::countLeadingZerosSlowCase((v55 + 16)) == v58;
      }

      else
      {
        v59 = *(v55 + 16) == 0;
      }

      if (v59)
      {
        v61 = v57;
      }

      else
      {
        v61 = v56;
      }

      llvm::SmallVectorTemplateBase<mlir::Attribute,true>::push_back(&v69, v61);
      ++v64;
      ++v66;
    }

    v15 = mlir::DenseElementsAttr::get(*(v34 + 8), *(v34 + 16), v69, v70) & 0xFFFFFFFFFFFFFFFBLL;
    if (v69 != v71)
    {
      free(v69);
    }
  }

  else
  {
LABEL_69:
    v15 = 0;
  }

LABEL_70:
  v45 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL mlir::arith::SelectOp::parse(uint64_t a1, uint64_t a2)
{
  v27[25] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v23 = v25;
  v24 = 0x300000000;
  if (((*(*a1 + 720))(a1, &v23, 0, 1, 3) & 1) == 0 || ((*(*a1 + 488))(a1, a2 + 112) & 1) == 0 || ((*(*a1 + 576))(a1, &v17) & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((*(*a1 + 128))(a1))
  {
    v4 = v17;
    if (((*(*a1 + 536))(a1, &v17) & 1) == 0)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = (*(*a1 + 32))(a1);
    v4 = mlir::IntegerType::get(*v8, 1, 0);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v17, v18);
  v22[0] = v4;
  v22[1] = v17;
  v22[2] = v17;
  v9 = (*(*a1 + 16))(a1);
  v10 = v23;
  v20 = 3;
  v21 = v24;
  if (v24 == 3)
  {
    v11 = v22;
    v12 = 96;
    while (((*(*a1 + 728))(a1, v10, *v11, a2 + 16) & 1) != 0)
    {
      ++v11;
      v10 += 32;
      v12 -= 32;
      if (!v12)
      {
        v5 = 1;
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v19 = 257;
  (*(*a1 + 24))(&v26, a1, v9, v18);
  if (v26)
  {
    mlir::Diagnostic::operator<<<48ul>(v27, "number of operands and types do not match: got ");
  }

  v13 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(&v26, &v21);
  v14 = v13;
  if (*v13)
  {
    mlir::Diagnostic::operator<<<15ul>((v13 + 1), " operands and ");
  }

  v15 = mlir::InFlightDiagnostic::operator<<<unsigned long &>(v14, &v20);
  v16 = v15;
  if (*v15)
  {
    mlir::Diagnostic::operator<<<7ul>((v15 + 1), " types");
  }

  v5 = (v16[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v26);
LABEL_7:
  if (v23 != v25)
  {
    free(v23);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::arith::SelectOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = *(v4 + 4);
  if (*(v4 + 3) == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++*(v4 + 4);
  }

  v6 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v7 = *(v6 + 9);
    v8 = *(v6 + 17);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = (*(*a2 + 16))(a2);
  if (v8)
  {
    v10 = v9;
    (*(*a2 + 160))(a2, *(v7 + 24));
    v11 = v8 - 1;
    if (v11)
    {
      v12 = (v7 + 56);
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

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), 0, 0);
  v16 = (*(*a2 + 16))(a2);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) > 2)
  {
    *(v17 + 2) = 32;
    *v17 = 14880;
    *(v16 + 4) += 3;
  }

  else
  {
    llvm::raw_ostream::write(v16, " : ", 3uLL);
  }

  v18 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  if (v18)
  {
    (*(*a2 + 32))(a2, v18);
    v19 = (*(*a2 + 16))(a2);
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 > 1uLL)
    {
      *v20 = 8236;
      *(v19 + 4) += 2;
    }

    else
    {
      llvm::raw_ostream::write(v19, ", ", 2uLL);
    }
  }

  v21 = *(*a2 + 32);
  v22 = *(*this - 1) & 0xFFFFFFFFFFFFFFF8;

  return v21(a2, v22);
}

uint64_t mlir::arith::SelectOp::verify(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = (*(*(*(v2 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*(*v3 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v3[2] != 1)
  {
    v4 = *(*(*(v2 - 1) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v4 != &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v4 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      v19 = 257;
      mlir::Operation::emitOpError(v2, v18, &v22);
      if (!v22)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<49ul>(v23, "expected condition to be a signless i1, but got ");
      if (!v22)
      {
        goto LABEL_22;
      }

      v20 = 4;
      v21 = v3;
LABEL_16:
      v9 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
      v10 = v24 + 24 * v25;
      v11 = *v9;
      *(v10 + 16) = *(v9 + 16);
      *v10 = v11;
      ++v25;
LABEL_22:
      v8 = v26 ^ 1;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v22);
      goto LABEL_23;
    }

    I1SameShape = getI1SameShape((*(v2 - 1) & 0xFFFFFFFFFFFFFFF8));
    if (v3 != I1SameShape)
    {
      v12 = I1SameShape;
      v19 = 257;
      mlir::Operation::emitOpError(*this, v18, &v22);
      if (!v22)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<77ul>(v23, "expected condition type to have the same shape as the result type, expected ");
      if (!v22)
      {
        goto LABEL_22;
      }

      v20 = 4;
      v21 = v12;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v24, &v20, 1);
      v14 = v24 + 24 * v25;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v25;
      if (!v22)
      {
        goto LABEL_22;
      }

      mlir::Diagnostic::operator<<<11ul>(v23, ", but got ");
      if (!v22)
      {
        goto LABEL_22;
      }

      v20 = 4;
      v21 = v3;
      goto LABEL_16;
    }
  }

  v8 = 1;
LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

unint64_t mlir::arith::ShLIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v82 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 48);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShLIOp::fold(mlir::arith::ShLIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    result = 0;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::ShRUIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRUIOp::fold(mlir::arith::ShRUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    result = 0;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::ShRSIOp::fold(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v82 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v82, v4))
    {
      result = *(*(*a1 + 72) + 24) | 4;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v57 = 0;
  v56 = &v57;
  v7 = *v3;
  if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v8 = v3[1];
  if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v7)) != 0)
  {
    v11 = (*v9)(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v3[1];
  if (!v12)
  {
    goto LABEL_69;
  }

  v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
  if (!v14)
  {
    goto LABEL_69;
  }

  v15 = (*v13)(v13, v14);
  v8 = 0;
  if (!v11 || !v15 || v15 != v11)
  {
    goto LABEL_70;
  }

  v81 = v11;
  v16 = *v3;
  if (*v3 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = *v3;
    goto LABEL_70;
  }

  v17 = v3[1];
  if (!v17)
  {
    goto LABEL_69;
  }

  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v8 = v3[1];
  }

  else
  {
    v8 = 0;
  }

  if (!v16 || v18 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v19 = *v16;
  v20 = *(*v16 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v24 = mlir::IntegerAttr::get(v81, &v82);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1 && (v18 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v18 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1)
  {
    v68 = *v3;
    v65 = v17;
    if (v16[1] == *(v17 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v56, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 == 1)
      {
        v22 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v24 = mlir::DenseElementsAttr::get(v22, v23, &v82, 1);
LABEL_58:
        v8 = v24;
        if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
        {
          MEMORY[0x25F891010](v82, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v19 + 8, v25))
  {
    goto LABEL_69;
  }

  v26 = *v3[1];
  v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
  {
    goto LABEL_69;
  }

  v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v30 = v29;
  v80[0] = v28;
  v80[1] = v29;
  v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v33 = v32;
  v79[0] = v31;
  v79[1] = v32;
  v34 = (**(v30 + 24))();
  if (v34 != (**(v33 + 24))())
  {
LABEL_69:
    v8 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
  v35 = v78;
  if (v78)
  {
    if ((v74 & 1) == 0)
    {
      v8 = 0;
LABEL_119:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_70;
    }

    LOWORD(v68) = v75;
    if (v75 == 1)
    {
      v69 = v76;
    }

    else
    {
      (*(*v76 + 16))(&v69);
    }

    v70 = v77;
    LOWORD(v65) = v71;
    if (v71 == 1)
    {
      v66 = v72;
    }

    else
    {
      (*(*v72 + 16))(&v66);
    }

    v67 = v73;
    v82 = &v84;
    v83 = 0x400000000;
    v37 = (*(v30 + 16))(v30, v28);
    v39 = (*(v38 + 24))(v38, v37);
    if (v40)
    {
      v41 = 8 * v40;
      v42 = 1;
      do
      {
        v43 = *v39++;
        v42 *= v43;
        v41 -= 8;
      }

      while (v41);
    }

    else
    {
      v42 = 1;
    }

    if (v42 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v42);
    }

    v44 = (*(v30 + 16))(v30, v28);
    v46 = (*(v45 + 24))(v45, v44);
    if (v47)
    {
      v48 = 8 * v47;
      v49 = 1;
      do
      {
        v50 = *v46++;
        v49 *= v50;
        v48 -= 8;
      }

      while (v48);
      if (!v49)
      {
LABEL_107:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v8 = mlir::DenseElementsAttr::get(v52, v53, v82, v83);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v54 = v66;
          v66 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v68 & 1) == 0)
        {
          v55 = v69;
          v69 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_115:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v35)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::ShRSIOp::fold(mlir::arith::ShRSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v56, &v60, &v58);
      if (v59 >= 0x41 && v58)
      {
        MEMORY[0x25F891010](v58, 0x1000C8000313F17);
      }

      if (v61 >= 0x41 && v60)
      {
        MEMORY[0x25F891010](v60, 0x1000C8000313F17);
      }

      if (v64 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v82, &v62);
      if ((v64 & 1) != 0 && v63 >= 0x41 && v62)
      {
        MEMORY[0x25F891010](v62, 0x1000C8000313F17);
      }

      v51 = ++v70;
      ++v67;
      if (!--v49)
      {
        goto LABEL_107;
      }
    }

    v8 = 0;
    goto LABEL_109;
  }

  v8 = 0;
  if (v74)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v57)
  {
    result = v8 & 0xFFFFFFFFFFFFFFFBLL;
  }

  else
  {
    result = 0;
  }

LABEL_73:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::APFloat::getLargest(llvm::detail::IEEEFloat *a1, void *a2)
{
  v2 = llvm::APFloat::Storage::Storage<llvm::APFloatBase::uninitializedTag>(a1, a2);
  if (*v2 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeLargest(v2, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v2, 0);
  }
}

char *mlir::OpBuilder::create<mlir::arith::ConstantOp,mlir::TypedAttr &>(mlir::OpBuilder *a1, uint64_t **a2, uint64_t *a3)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v6 = mlir::OpBuilder::getCheckRegisteredInfo<mlir::arith::ConstantOp>(a1, *(**a2 + 32));
  v11[0] = a2;
  v11[1] = v6;
  v11[2] = v12;
  v11[3] = 0x400000000;
  v12[4] = v13;
  v12[5] = 0x400000000;
  v13[4] = v14;
  v13[5] = 0x400000000;
  v14[8] = 4;
  v14[9] = v15;
  v14[10] = 0x100000000;
  v15[1] = v16;
  v15[2] = 0x100000000;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = &mlir::detail::TypeIDResolver<void,void>::id;
  v16[4] = 0;
  v16[6] = 0;
  mlir::arith::ConstantOp::build(v6, v11, *a3, a3[1]);
  v7 = mlir::Operation::create(v11);
  mlir::OpBuilder::insert(a1, v7);
  if (*(*(v7 + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ConstantOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v11);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::AddFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::AddFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "fastmath";
    v11[1] = 8;
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

unint64_t mlir::arith::AddFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::AddFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::arith::AddFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    *result = v4;
  }

  return result;
}

void mlir::arith::AddFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::AddFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<63ul>(v13, "' failed to satisfy constraint: Floating point fast math flags");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::FastMathFlagsAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
    {
LABEL_15:
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      {
        llvm::getTypeName<mlir::arith::FastMathFlagsAttr>(void)::Name = llvm::detail::getTypeNameImpl<mlir::arith::FastMathFlagsAttr>();
        *algn_27FC19A08 = v12;
      }

      if (v18)
      {
        v17 = 261;
        v15 = llvm::getTypeName<mlir::arith::FastMathFlagsAttr>(void)::Name;
        v16 = *algn_27FC19A08;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::arith::AddFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::AddFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(mlir::Operation *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v34[25] = *MEMORY[0x277D85DE8];
  v30 = a5;
  v9 = *a2;
  v10 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v9 + 8, v10))
  {
    goto LABEL_2;
  }

  v12 = *a2;
  v13 = (*a2 + 72);
  v14 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v15 = *(v12 + 96);
  if ((v15 & 2) == 0)
  {
    v13 = *v13;
  }

  if ((*(v15 & 0xFFFFFFFFFFFFFFF8))(v13, v14) && (v16 = *a2, v17 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v18 = mlir::detail::InterfaceMap::lookup(v16 + 8, v17), v19 = *(*(v18 + 8))(v18, a2), v20 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v19 + 8, v20)))
  {
LABEL_2:
    v11 = 1;
  }

  else
  {
    v29 = 261;
    v28[0] = a3;
    v28[1] = a4;
    mlir::Operation::emitOpError(a1, v28, &v33);
    if (v33)
    {
      mlir::Diagnostic::operator<<<3ul>(v34, " #");
    }

    v21 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v33, &v30);
    v22 = v21;
    if (*v21)
    {
      mlir::Diagnostic::operator<<<39ul>((v21 + 1), " must be floating-point-like, but got ");
      if (*v22)
      {
        v31 = 4;
        v32 = a2;
        v23 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v22 + 3), &v31, 1);
        v24 = v22[3] + 24 * *(v22 + 8);
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        ++*(v22 + 8);
      }
    }

    v11 = (v22[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v33);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::arith::AddFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::AddFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = (*(*a1 + 40))(a1);
  v13 = 0;
  v14[0] = a1;
  if ((*(*a1 + 448))(a1, &v13, a3, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith17FastMathFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v14))
  {
    v7 = v13;
    if (*(*v13 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

void mlir::arith::AddFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
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

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::arith::FastMathFlagsAttr::print(&v6, a1);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v6);
    }
  }

  return result;
}

uint64_t mlir::arith::detail::AddIOpGenericAdaptorBase::AddIOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::AddIOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "overflowFlags", 0xDuLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

uint64_t mlir::arith::AddIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "overflowFlags";
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

unint64_t mlir::arith::AddIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::AddIOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 13 && (*a3 == 0x776F6C667265766FLL ? (v4 = *(a3 + 5) == 0x7367616C46776F6CLL) : (v4 = 0), v4))
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

void *mlir::arith::AddIOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 13 && *a2 == 0x776F6C667265766FLL && *(a2 + 5) == 0x7367616C46776F6CLL)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
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

void mlir::arith::AddIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "overflowFlags";
    v7[1] = 13;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::AddIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v8, "overflowFlags", 13, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
  {
    v7 = 1;
  }

  else
  {
    a4(&v12, a5);
    if (v12)
    {
      mlir::Diagnostic::operator<<<12ul>(v13, "attribute '");
      if (v12)
      {
        v11 = 261;
        v10[0] = a2;
        v10[1] = a3;
        mlir::Diagnostic::operator<<(v13, v10);
        if (v12)
        {
          mlir::Diagnostic::operator<<<61ul>(v13, "' failed to satisfy constraint: Integer overflow arith flags");
        }
      }
    }

    v7 = (v13[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v12);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 56))(a1, &v14))
  {
    v4 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    v5 = *(*v14 + 136);
    if (v5 != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      v4 = 0;
    }

    *a2 = v4;
    if (v5 == &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
LABEL_15:
      v9 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1F9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1F9E0))
      {
        qword_27FC1F9D0 = llvm::detail::getTypeNameImpl<mlir::arith::IntegerOverflowFlagsAttr>();
        *algn_27FC1F9D8 = v12;
        __cxa_guard_release(&qword_27FC1F9E0);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1F9D0;
        v16 = *algn_27FC1F9D8;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v6 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v7 = v20 + 24 * v21;
            v8 = *v6;
            *(v7 + 16) = *(v6 + 16);
            *v7 = v8;
            ++v21;
          }
        }
      }

      v9 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::arith::AddIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

void mlir::arith::AddIOp::build(uint64_t **a1, mlir::detail *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v21 = a4;
  v22 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v22, 0, &v22, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v21, 0, &v21, 1);
  v8 = mlir::arith::IntegerOverflowFlagsAttr::get(*a1, a5);
  *mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(a2) = v8;
  __src = v25;
  v24 = 0x200000000;
  v9 = *(a2 + 2);
  v10 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::AddIOp::inferReturnTypes(Dictionary, v12, v13, v9 & 0xFFFFFFFFFFFFFFF9, v10, v14, v15, v16, v19, v20, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v17);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v24);
  if (__src != v25)
  {
    free(__src);
  }

  v18 = *MEMORY[0x277D85DE8];
}

BOOL mlir::arith::AddIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(v3, "overflowFlags", 13, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v33[25] = *MEMORY[0x277D85DE8];
  v29 = a5;
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!(a2[2] >> 30))
    {
      goto LABEL_17;
    }
  }

  else if (v10 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_17;
  }

  v11 = (v9 + 72);
  v12 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v13 = *(v9 + 96);
  if ((v13 & 2) == 0)
  {
    v11 = *v11;
  }

  if (!(*(v13 & 0xFFFFFFFFFFFFFFF8))(v11, v12))
  {
    goto LABEL_10;
  }

  v14 = *a2;
  v15 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
  v16 = mlir::detail::InterfaceMap::lookup(v14 + 8, v15);
  v17 = (*(v16 + 8))(v16, a2);
  v18 = *(*v17 + 136);
  if (v18 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (v17[2] >> 30)
    {
      goto LABEL_10;
    }

LABEL_17:
    v24 = 1;
    goto LABEL_18;
  }

  if (v18 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    goto LABEL_17;
  }

LABEL_10:
  v28 = 261;
  v27[0] = a3;
  v27[1] = a4;
  mlir::Operation::emitOpError(a1, v27, &v32);
  if (v32)
  {
    mlir::Diagnostic::operator<<<3ul>(v33, " #");
  }

  v19 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v32, &v29);
  v20 = v19;
  if (*v19)
  {
    mlir::Diagnostic::operator<<<41ul>((v19 + 1), " must be signless-integer-like, but got ");
    if (*v20)
    {
      v30 = 4;
      v31 = a2;
      v21 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v20 + 3), &v30, 1);
      v22 = v20[3] + 24 * *(v20 + 8);
      v23 = *v21;
      *(v22 + 16) = *(v21 + 16);
      *v22 = v23;
      ++*(v20 + 8);
    }
  }

  v24 = (v20[25] & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v32);
LABEL_18:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t mlir::arith::AddIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "overflow", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(a1, &v10))
    {
      return 0;
    }

    v4 = v10;
    if (v10)
    {
      *mlir::OperationState::getOrAddProperties<mlir::arith::detail::AddIOpGenericAdaptorBase::Properties>(a2) = v4;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::AddIOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::AddIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

BOOL mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::IntegerOverflowFlagsAttr>(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v11 = 0;
  v12[0] = a1;
  if ((*(*a1 + 448))(a1, &v11, 0, _ZN4llvm12function_refIFNS_11ParseResultERN4mlir9AttributeENS2_4TypeEEE11callback_fnIZNS2_9AsmParser32parseCustomAttributeWithFallbackINS2_5arith24IntegerOverflowFlagsAttrEEENSt3__19enable_ifIXsr23detect_has_parse_methodIT_EE5valueES1_E4typeERSF_S5_EUlS4_S5_E_EES1_lS4_S5_, v12))
  {
    v5 = v11;
    if (*(*v11 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::IntegerOverflowFlagsAttr,void>::id)
    {
      v5 = 0;
    }

    *a2 = v5;
    v6 = 1;
    if (!v5)
    {
      v9 = "invalid kind of attribute specified";
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

void mlir::arith::AddIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x776F6C667265766FLL;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "overflow", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "overflowFlags", 13);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::IntegerOverflowFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "overflowFlags", 13);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
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

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::IntegerOverflowFlagsAttr,(void *)0>(mlir::AsmPrinter *a1, uint64_t a2)
{
  v6 = a2;
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0)
  {
    v4 = (*(*a1 + 16))(a1);
    v5 = (*(*v4 + 80))(v4) + v4[4] - v4[2];
    mlir::arith::IntegerOverflowFlagsAttr::print(&v6, a1);
    result = (*(*v4 + 80))(v4);
    if (v5 == result + v4[4] - v4[2])
    {
      return (*(*a1 + 40))(a1, v6);
    }
  }

  return result;
}

uint64_t mlir::arith::AddUIExtendedOp::getAsmResultNames(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v6 = *a1 - 16;
  }

  else
  {
    v6 = 0;
  }

  v16 = a2;
  a2(a3, v6, "sum", 3);
  v7 = *a1;
  v8 = *(*a1 + 36);
  v9 = v8 == 0;
  if (v8)
  {
    v10 = *a1 - 16;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v10 + 8) & 7;
  if (v9 || v11 == 6 || v11 == 5)
  {
    v14 = -40;
  }

  else
  {
    v14 = -32;
  }

  return v16(a3, v7 + v14, "overflow", 8);
}

BOOL mlir::arith::AddUIExtendedOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) && mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) && (*(*this + 9) ? (v2 = *this - 16) : (v2 = 0), mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)) && (!*(*this + 9) || ((v3 = *(*this - 1) & 7, v3 != 6) ? (v4 = v3 == 5) : (v4 = 1), v4) ? (v5 = -40) : (v5 = -32), mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(*this + v5 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 1u)))
  {
    v6 = *this;
    v7 = *(*this + 9);
    v8 = *(*(v7 + 24) + 8);
    v9 = *(*(v7 + 56) + 8);
    if ((v9 ^ v8) > 7 || (*(v6 + 9) ? (v10 = (v6 - 16)) : (v10 = 0), (*(v10 + 1) ^ v9 | *(v10 + 1) ^ v8) >= 8))
    {
      v14 = "failed to verify that all of {lhs, rhs, sum} have same type";
      v15 = 259;
      mlir::Operation::emitOpError(v6, &v14, v16);
      v11 = (v16[200] & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v31[25] = *MEMORY[0x277D85DE8];
  v27 = a5;
  v9 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && a2[2] == 1)
  {
    goto LABEL_8;
  }

  v10 = (v9 + 72);
  v11 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v12 = *(v9 + 96);
  if ((v12 & 2) == 0)
  {
    v10 = *v10;
  }

  if ((*(v12 & 0xFFFFFFFFFFFFFFF8))(v10, v11) && (v13 = *a2, v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14), v16 = (*(v15 + 8))(v15, a2), *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && v16[2] == 1)
  {
LABEL_8:
    v17 = 1;
  }

  else
  {
    v26 = 261;
    v25[0] = a3;
    v25[1] = a4;
    mlir::Operation::emitOpError(a1, v25, &v30);
    if (v30)
    {
      mlir::Diagnostic::operator<<<3ul>(v31, " #");
    }

    v18 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v30, &v27);
    v19 = v18;
    if (*v18)
    {
      mlir::Diagnostic::operator<<<29ul>((v18 + 1), " must be BOOL-like, but got ");
      if (*v19)
      {
        v28 = 4;
        v29 = a2;
        v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v19 + 3), &v28, 1);
        v21 = v19[3] + 24 * *(v19 + 8);
        v22 = *v20;
        *(v21 + 16) = *(v20 + 16);
        *v21 = v22;
        ++*(v19 + 8);
      }
    }

    v17 = (v19[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v30);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t mlir::arith::AddUIExtendedOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v10, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v8, 1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112) & 1) != 0 && ((*(*a1 + 104))(a1) & 1) != 0 && (v6 = 0, ((*(*a1 + 536))(a1, &v6)) && (__src = v6, ((*(*a1 + 120))(a1)) && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (v6 = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8), llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v6, &__src), ((*(*a1 + 728))(a1, v10, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v8, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::AddUIExtendedOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (*(v18 + 3) == v19)
  {
    llvm::raw_ostream::write(v18, ",", 1uLL);
  }

  else
  {
    *v19 = 44;
    ++*(v18 + 4);
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

  if (!*(*this + 9) || (v22 = *(*this - 1) & 7, v22 == 6) || v22 == 5)
  {
    v23 = -40;
  }

  else
  {
    v23 = -32;
  }

  (*(*a2 + 32))(a2, *(*this + v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  v24 = *MEMORY[0x277D85DE8];
}

void mlir::arith::AndIOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::AndIOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::AndIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::AndIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::AndIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::AndIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = *MEMORY[0x277D85DE8];
}

void mlir::arith::BitcastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  __src = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v5, 0, &v5, 1);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &v7);
}

BOOL mlir::arith::BitcastOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7))
  {
    v2 = *(*this + 9) ? *this - 16 : 0;
    if (mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6))
    {
      v3 = *this;
      v4 = (*(*(*(v3 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
      v5 = *(*v4 + 136);
      v6 = v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v5 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v7 = v6;
      if (v6)
      {
        v10 = v4[1];
        v9 = v4[2];
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      if (*(v3 + 9))
      {
        v11 = v3 - 16;
      }

      else
      {
        v11 = 0;
      }

      v12 = (*(v11 + 1) & 0xFFFFFFFFFFFFFFF8);
      v13 = *(*v12 + 136);
      v14 = v13 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id;
      v15 = v14;
      if (v14)
      {
        v17 = v12[1];
        v16 = v12[2];
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      if (v9 != v16 || memcmp(v10, v17, 8 * v9))
      {
LABEL_37:
        v24 = "failed to verify that input and output have the same tensor dimensions";
        v25 = 259;
        mlir::Operation::emitOpError(v3, &v24, v26);
        v8 = (v26[200] & 1) == 0;
        mlir::InFlightDiagnostic::~InFlightDiagnostic(v26);
        goto LABEL_38;
      }

      if (v15)
      {
        v18 = v12[1];
        v19 = v12[2];
        if (!v7)
        {
LABEL_32:
          v20 = 0;
          v21 = 0;
LABEL_35:
          if (v19 == v20 && !memcmp(v18, v21, 8 * v19))
          {
            v8 = 1;
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v19 = 0;
        v18 = 0;
        if (!v7)
        {
          goto LABEL_32;
        }
      }

      v21 = v4[1];
      v20 = v4[2];
      goto LABEL_35;
    }
  }

  v8 = 0;
LABEL_38:
  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL mlir::arith::__mlir_ods_local_type_constraint_ArithOps4(mlir::Operation *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v47[25] = *MEMORY[0x277D85DE8];
  v43 = 0;
  v8 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(a2[2] >> 30))
  {
    goto LABEL_9;
  }

  v9 = (v8 + 72);
  v10 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v11 = *(v8 + 96);
  if ((v11 & 2) == 0)
  {
    v9 = *v9;
  }

  if ((*(v11 & 0xFFFFFFFFFFFFFFF8))(v9, v10))
  {
    v12 = *a2;
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v14 = mlir::detail::InterfaceMap::lookup(v12 + 8, v13);
    v15 = (*(v14 + 8))(v14, a2);
    if (*(*v15 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id && !(v15[2] >> 30))
    {
      goto LABEL_9;
    }
  }

  v16 = *a2;
  v17 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v16 + 8, v17))
  {
    goto LABEL_9;
  }

  v21 = *a2;
  v22 = (*a2 + 72);
  v23 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v24 = *(v21 + 96);
  if ((v24 & 2) == 0)
  {
    v22 = *v22;
  }

  if ((*(v24 & 0xFFFFFFFFFFFFFFF8))(v22, v23))
  {
    v25 = *a2;
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
    v27 = mlir::detail::InterfaceMap::lookup(v25 + 8, v26);
    v28 = *(*(v27 + 8))(v27, a2);
    v29 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    if (mlir::detail::InterfaceMap::lookup(v28 + 8, v29))
    {
      goto LABEL_9;
    }
  }

  v30 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id && ((v36 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(), v37 = mlir::detail::InterfaceMap::lookup(v30 + 8, v36), v38 = (*(v37 + 8))(v37, a2), v39 = *v38, *(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) && !(v38[2] >> 30) || (v40 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v39 + 8, v40))))
  {
LABEL_9:
    v18 = 1;
  }

  else
  {
    v42 = 261;
    v41[0] = a3;
    v41[1] = a4;
    mlir::Operation::emitOpError(a1, v41, &v46);
    if (v46)
    {
      mlir::Diagnostic::operator<<<3ul>(v47, " #");
    }

    v31 = mlir::InFlightDiagnostic::operator<<<unsigned int &>(&v46, &v43);
    v32 = v31;
    if (*v31)
    {
      mlir::Diagnostic::operator<<<89ul>((v31 + 1), " must be signless-integer-or-float-like or memref of signless-integer or float, but got ");
      if (*v32)
      {
        v44 = 4;
        v45 = a2;
        v33 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>((v32 + 3), &v44, 1);
        v34 = v32[3] + 24 * *(v32 + 8);
        v35 = *v33;
        *(v34 + 16) = *(v33 + 16);
        *v34 = v35;
        ++*(v32 + 8);
      }
    }

    v18 = (v32[25] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v46);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

BOOL mlir::arith::BitcastOp::parse(uint64_t a1, uint64_t a2)
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
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
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
  if (((*(*a1 + 536))(a1, &v6) & 1) == 0)
  {
    return 0;
  }

  __src = v6;
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v13);
  return mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v9, v7, v4, a2 + 16);
}

void mlir::arith::BitcastOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
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

uint64_t mlir::arith::CeilDivSIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::CeilDivSIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::CeilDivSIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::CeilDivSIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::CeilDivUIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::CeilDivUIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if (!mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
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

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(v2 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::CeilDivUIOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 704))(a1, v9, 1) & 1) != 0 && ((*(*a1 + 120))(a1) & 1) != 0 && ((*(*a1 + 40))(a1), ((*(*a1 + 704))(a1, v7, 1)) && ((*(*a1 + 40))(a1), ((*(*a1 + 488))(a1, a2 + 112)) && ((*(*a1 + 104))(a1) & 1) != 0 && (v5 = 0, ((*(*a1 + 536))(a1, &v5)) && (__src = v5, llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v7), ((*(*a1 + 728))(a1, v9, __src, a2 + 16)))
  {
    return (*(*a1 + 728))(a1, v7, __src, a2 + 16) & 1;
  }

  else
  {
    return 0;
  }
}

void mlir::arith::CeilDivUIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v19, 0);
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

  v17 = *this - 16;
  if (!*(*this + 9))
  {
    v17 = 0;
  }

  (*(*a2 + 32))(a2, *(v17 + 8) & 0xFFFFFFFFFFFFFFF8);
  v18 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::detail::CmpFOpGenericAdaptorBase::CmpFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::arith::CmpFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    a3(&v21, a4);
    if (v21)
    {
      mlir::Diagnostic::operator<<<42ul>(v22, "expected DictionaryAttr to set properties");
    }

    goto LABEL_4;
  }

  v9 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
  if ((v10 & 1) == 0 || (v11 = *(v9 + 8)) == 0)
  {
LABEL_12:
    v12 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "predicate", 9uLL);
    if (v13)
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        if (!mlir::arith::CmpFPredicateAttr::classof(*(v12 + 8)))
        {
          a3(&v21, a4);
          if (!v21)
          {
            goto LABEL_4;
          }

          if (!v21)
          {
            goto LABEL_4;
          }

          v19 = 0;
          v20 = v14;
          goto LABEL_21;
        }

        a1[1] = v14;
      }
    }

    result = 1;
    goto LABEL_17;
  }

  if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
  {
    *a1 = v11;
    goto LABEL_12;
  }

  a3(&v21, a4);
  if (!v21)
  {
    goto LABEL_4;
  }

  if (!v21)
  {
    goto LABEL_4;
  }

  v19 = 0;
  v20 = v11;
LABEL_21:
  v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v23, &v19, 1);
  v17 = v23 + 24 * v24;
  v18 = *v16;
  *(v17 + 16) = *(v16 + 16);
  *v17 = v18;
  ++v24;
LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v21);
  result = 0;
LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::CmpFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v20[6] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = 0x300000000;
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v17 = 261;
    v15 = "fastmath";
    v16 = 8;
    v7 = mlir::StringAttr::get(v6, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v17 = 261;
    v15 = "predicate";
    v16 = 9;
    v10 = mlir::StringAttr::get(v9, &v15, a3);
    llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v18, v10, v8);
  }

  v11 = v18;
  if (v19)
  {
    v12 = mlir::DictionaryAttr::get(a1, v18, v19);
    v11 = v18;
  }

  else
  {
    v12 = 0;
  }

  if (v11 != v20)
  {
    free(v11);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::arith::CmpFOp::computePropertiesHash(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  v2 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v2 >> 47) ^ v2);
  v9 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v4 = HIDWORD(v1);
  v5 = 0x9DDFEA08EB382D69 * ((8 * v1 - 0xAE502812AA7333) ^ HIDWORD(v1));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v12 = 0;
  v13 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,llvm::hash_code>(v10, 0, v10, v11, &v9, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::CmpFOp::getInherentAttr(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9)
  {
    if (*a3 == 0x7461636964657270 && *(a3 + 8) == 101)
    {
      v4 = a2[1];
      goto LABEL_11;
    }
  }

  else if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v4 = *a2;
LABEL_11:
    v6 = v4 & 0xFFFFFFFFFFFFFF00;
    return v6 | v4;
  }

  LOBYTE(v4) = 0;
  v6 = 0;
  return v6 | v4;
}

void *mlir::arith::CmpFOp::setInherentAttr(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = result;
  if (a3 == 9)
  {
    if (*a2 == 0x7461636964657270 && *(a2 + 8) == 101)
    {
      if (a4)
      {
        result = mlir::arith::CmpFPredicateAttr::classof(a4);
        if (result)
        {
          v8 = a4;
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

      v5[1] = v8;
    }
  }

  else if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v6 = a4;
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

    *result = v6;
  }

  return result;
}

void mlir::arith::CmpFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v5 = *a2;
  if (*a2)
  {
    v6 = *(**v5 + 32);
    v13 = 261;
    v11 = "fastmath";
    v12 = 8;
    v7 = mlir::StringAttr::get(v6, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v7, v5);
  }

  v8 = a2[1];
  if (v8)
  {
    v9 = *(**v8 + 32);
    v13 = 261;
    v11 = "predicate";
    v12 = 9;
    v10 = mlir::StringAttr::get(v9, &v11, a3);
    mlir::NamedAttrList::push_back(a3, v10, v8);
  }
}

BOOL mlir::arith::CmpFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v8 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 0;
  if ((v9 & 1) == 0 || (v10 = v8[1]) == 0 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v10, "fastmath", 8, a3, a4))
  {
    v11 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, *(*(a1 + 96) + 8));
    if ((v12 & 1) == 0)
    {
      return 1;
    }

    v13 = v11[1];
    if (!v13 || mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v13, "predicate", 9, a3, a4))
    {
      return 1;
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::arith::CmpFPredicateAttr::classof(a1) & 1) == 0)
  {
    a4(&v14, a5);
    if (v14)
    {
      mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<124ul>(v15, "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15");
        }
      }
    }

    v9 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpFPredicateAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    if (mlir::arith::CmpFPredicateAttr::classof(v14))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1FA20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FA20))
      {
        qword_27FC1FA10 = llvm::detail::getTypeNameImpl<mlir::arith::CmpFPredicateAttr>();
        *algn_27FC1FA18 = v12;
        __cxa_guard_release(&qword_27FC1FA20);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1FA10;
        v16 = *algn_27FC1FA18;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::arith::CmpFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = getI1SameShape((v13[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

uint64_t mlir::arith::CmpFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = v2 + 16 * ((*(v2 + 11) >> 23) & 1);
  v4 = *(v3 + 9);
  if (!v4)
  {
    v10 = "requires attribute 'predicate'";
LABEL_17:
    v13 = v10;
    v14 = 259;
    mlir::Operation::emitOpError(v2, &v13, v15);
    v9 = v16 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v15);
    goto LABEL_18;
  }

  v5 = *(v3 + 8);
  v15[0] = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(v4, "predicate", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15) || (v15[0] = *this, !mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v5, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v15)) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || (*(*this + 9) ? (v6 = *this - 16) : (v6 = 0), !mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v9 = 0;
    goto LABEL_18;
  }

  I1SameShape = getI1SameShape((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = *this;
  if (*(*this + 9))
  {
    v8 = *this - 16;
  }

  else
  {
    v8 = 0;
  }

  if (I1SameShape != (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v10 = "failed to verify that result type has i1 element type and same shape as operands";
    goto LABEL_17;
  }

  v9 = 1;
LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

uint64_t mlir::arith::CmpFOp::parse(uint64_t a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  memset(v52, 0, sizeof(v52));
  v53 = 0;
  v51[0] = v52;
  v51[1] = 1;
  memset(v49, 0, sizeof(v49));
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v46[0] = &v47;
  v46[1] = 1;
  v44 = 0;
  v45 = 0;
  v72[0] = v73;
  v72[1] = 0x400000000;
  v74 = 4;
  v4 = (*(*a1 + 40))(a1);
  v68 = xmmword_2799BDEE8;
  v69 = *&off_2799BDEF8;
  v70 = xmmword_2799BDF08;
  v71 = *&off_2799BDF18;
  v64 = xmmword_2799BDEA8;
  v65 = *&off_2799BDEB8;
  v66 = xmmword_2799BDEC8;
  v67 = *&off_2799BDED8;
  v60 = xmmword_2799BDE68;
  v61 = *&off_2799BDE78;
  v62 = xmmword_2799BDE88;
  v63 = *&off_2799BDE98;
  __src = xmmword_2799BDE28;
  v57 = *&off_2799BDE38;
  v58 = xmmword_2799BDE48;
  v59 = *&off_2799BDE58;
  if ((*(*a1 + 424))(a1, &v44, &__src, 16))
  {
    v5 = v45;
    if (!v45)
    {
      goto LABEL_99;
    }
  }

  else
  {
    v42[0] = 0;
    v8 = (*(*a1 + 32))(a1);
    NoneType = mlir::Builder::getNoneType(v8);
    v10 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v42, NoneType, "predicate", 9, v72);
    if ((v10 & 0x100) == 0)
    {
      v54[0] = "expected string or keyword containing one of the following enum values for attribute 'predicate' [false, oeq, ogt, oge, olt, ole, one, ord, ueq, ugt, uge, ult, ule, une, uno, true]";
      v55 = 259;
      (*(*a1 + 24))(&__src, a1, v4, v54);
LABEL_23:
      v11 = (BYTE8(v68) & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_24:
      if (v72[0] != v73)
      {
        free(v72[0]);
      }

      goto LABEL_117;
    }

    if ((v10 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_24;
    }

    v5 = *(v42[0] + 24);
    v44 = *(v42[0] + 16);
    v45 = v5;
    if (!v5)
    {
      goto LABEL_99;
    }
  }

  if (v5 == 3)
  {
    if (*v44 == 25967 && *(v44 + 2) == 113)
    {
      v7 = 1;
    }

    else if (*v44 == 26479 && *(v44 + 2) == 116)
    {
      v7 = 2;
    }

    else if (*v44 == 26479 && *(v44 + 2) == 101)
    {
      v7 = 3;
    }

    else if (*v44 == 27759 && *(v44 + 2) == 116)
    {
      v7 = 4;
    }

    else if (*v44 == 27759 && *(v44 + 2) == 101)
    {
      v7 = 5;
    }

    else if (*v44 == 28271 && *(v44 + 2) == 101)
    {
      v7 = 6;
    }

    else if (*v44 == 29295 && *(v44 + 2) == 100)
    {
      v7 = 7;
    }

    else if (*v44 == 25973 && *(v44 + 2) == 113)
    {
      v7 = 8;
    }

    else if (*v44 == 26485 && *(v44 + 2) == 116)
    {
      v7 = 9;
    }

    else if (*v44 == 26485 && *(v44 + 2) == 101)
    {
      v7 = 10;
    }

    else if (*v44 == 27765 && *(v44 + 2) == 116)
    {
      v7 = 11;
    }

    else if (*v44 == 27765 && *(v44 + 2) == 101)
    {
      v7 = 12;
    }

    else if (*v44 == 28277 && *(v44 + 2) == 101)
    {
      v7 = 13;
    }

    else
    {
      if (*v44 != 28277 || *(v44 + 2) != 111)
      {
LABEL_19:
        v42[0] = "invalid ";
        v43 = 259;
        (*(*a1 + 24))(&__src, a1, v4, v42);
        if (__src)
        {
          mlir::Diagnostic::operator<<<37ul>(&__src + 8, "predicate attribute specification: ");
          if (__src)
          {
            v55 = 261;
            v54[0] = v44;
            v54[1] = v45;
            mlir::Diagnostic::operator<<(&__src + 8, v54);
            if (__src)
            {
              v55 = 264;
              LOBYTE(v54[0]) = 34;
              mlir::Diagnostic::operator<<(&__src + 8, v54);
            }
          }
        }

        goto LABEL_23;
      }

      v7 = 14;
    }
  }

  else if (v5 == 4)
  {
    if (*v44 != 1702195828)
    {
      goto LABEL_19;
    }

    v7 = 15;
  }

  else
  {
    if (v5 != 5)
    {
      goto LABEL_19;
    }

    if (*v44 != 1936482662 || *(v44 + 4) != 101)
    {
      goto LABEL_19;
    }

    v7 = 0;
  }

  v26 = (*(*a1 + 32))(a1);
  v27 = mlir::IntegerType::get(*v26, 64, 0);
  v28 = mlir::IntegerAttr::get(v27, v7);
  *(mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(a2) + 8) = v28;
LABEL_99:
  if (v72[0] != v73)
  {
    free(v72[0]);
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_116;
  }

  v29 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v52, 1) & 1) == 0)
  {
    goto LABEL_116;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_116;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v49, 1) & 1) == 0)
  {
    goto LABEL_116;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v48, 0))
    {
      goto LABEL_116;
    }

    if (v48)
    {
      v30 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpFOpGenericAdaptorBase::Properties>(a2);
      *v30 = v48;
    }
  }

  v72[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_116;
  }

  v31 = *(a2 + 8);
  *&__src = a1;
  *(&__src + 1) = v72;
  *&v57 = a2;
  if (!mlir::arith::CmpFOp::verifyInherentAttrs(v31, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    goto LABEL_116;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_116;
  }

  *&__src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    goto LABEL_116;
  }

  v32 = __src;
  v47 = __src;
  v54[0] = __src;
  v33 = *__src;
  v34 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  if (mlir::detail::InterfaceMap::lookup(v33 + 8, v34) || mlir::Type::hasTrait<mlir::ValueSemantics>(*v32) && (v37 = llvm::cast<mlir::ShapedType,mlir::Type>(v54), v39 = *(*(v38 + 8))(v38, v37), v40 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID(), mlir::detail::InterfaceMap::lookup(v39 + 8, v40)))
  {
    *&__src = getI1SameShape(v47);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &__src + 8);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v51, v46, v29, a2 + 16))
    {
      v11 = (*(*a1 + 728))(a1, v49, *v46[0], a2 + 16) & 1;
      goto LABEL_117;
    }

LABEL_116:
    v11 = 0;
    goto LABEL_117;
  }

  v41 = (*(*a1 + 16))(a1);
  v73[8] = 257;
  (*(*a1 + 24))(&__src, a1, v41, v72);
  if (__src)
  {
    mlir::Diagnostic::operator<<<44ul>(&__src + 8, "'lhs' must be floating-point-like, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(&__src + 8, v54);
    }
  }

  v11 = (BYTE8(v68) & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_117:
  v35 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (*(*a1 + 472))(a1);
  v12 = v10;
  if (v10 & 0x100) != 0 && (v10)
  {
    v13 = *a2;
    v14 = *(**v13 + 32);
    v18 = 261;
    v17[0] = a4;
    v17[1] = a5;
    v15 = mlir::StringAttr::get(v14, v17, v11);
    mlir::NamedAttrList::push_back(a6, v15, v13);
  }

  return v12;
}

uint64_t mlir::Type::hasTrait<mlir::ValueSemantics>(uint64_t a1)
{
  v2 = (a1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::ValueSemantics<mlir::TypeID mlir::TypeID::get<mlir::ValueSemantics>(void)::Empty>,void>::resolveTypeID();
  v4 = *(a1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

void mlir::arith::CmpFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v34[4] = *MEMORY[0x277D85DE8];
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

  v32 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 9);
  Int = mlir::IntegerAttr::getInt(&v32);
  if (Int > 0xF)
  {
    v7 = 0;
    v8 = &str_105;
  }

  else
  {
    v7 = qword_25D09F9F8[Int];
    v8 = off_2799BE1B8[Int];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v18 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v18 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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

    v21 = (*(*a2 + 16))(a2);
    v22 = *(v21 + 4);
    if (*(v21 + 3) - v22 > 7uLL)
    {
      *v22 = 0x6874616D74736166;
      *(v21 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v21, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v32 = v34;
  v33 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v32, "predicate", 9);
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v32, "fastmath", 8);
  v23 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v23 && v23 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v32, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v32, v33);
  v25 = (*(*a2 + 16))(a2);
  v26 = *(v25 + 4);
  if (v26 >= *(v25 + 3))
  {
    llvm::raw_ostream::write(v25, 32);
  }

  else
  {
    *(v25 + 4) = v26 + 1;
    *v26 = 32;
  }

  v27 = (*(*a2 + 16))(a2);
  v28 = *(v27 + 4);
  if (*(v27 + 3) == v28)
  {
    llvm::raw_ostream::write(v27, ":", 1uLL);
  }

  else
  {
    *v28 = 58;
    ++*(v27 + 4);
  }

  v29 = (*(*a2 + 16))(a2);
  v30 = *(v29 + 4);
  if (v30 >= *(v29 + 3))
  {
    llvm::raw_ostream::write(v29, 32);
  }

  else
  {
    *(v29 + 4) = v30 + 1;
    *v30 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v32 != v34)
  {
    free(v32);
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::detail::CmpIOpGenericAdaptorBase::CmpIOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::CmpIOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "predicate", 9uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (!mlir::arith::CmpIPredicateAttr::classof(*(v8 + 8)))
        {
          a3(&v17, a4);
          if (v17)
          {
            if (v17)
            {
              v15 = 0;
              v16 = v10;
              v12 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v19, &v15, 1);
              v13 = v19 + 24 * v20;
              v14 = *v12;
              *(v13 + 16) = *(v12 + 16);
              *v13 = v14;
              ++v20;
            }
          }

          goto LABEL_4;
        }

        *a1 = v10;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  a3(&v17, a4);
  if (v17)
  {
    mlir::Diagnostic::operator<<<42ul>(v18, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v17);
  result = 0;
LABEL_10:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::CmpIOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "predicate";
    v11[1] = 9;
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

unint64_t mlir::arith::CmpIOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::CmpIOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 9 && (*a3 == 0x7461636964657270 ? (v4 = *(a3 + 8) == 101) : (v4 = 0), v4))
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

uint64_t mlir::arith::CmpIOp::setInherentAttr(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 == 9 && *a2 == 0x7461636964657270 && *(a2 + 8) == 101)
  {
    v6 = result;
    if (a4)
    {
      result = mlir::arith::CmpIPredicateAttr::classof(a4);
      if (result)
      {
        v7 = a4;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    *v6 = v7;
  }

  return result;
}

void mlir::arith::CmpIOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "predicate";
    v7[1] = 9;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::CmpIOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(v8, "predicate", 9, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a1 && (mlir::arith::CmpIPredicateAttr::classof(a1) & 1) == 0)
  {
    a4(&v14, a5);
    if (v14)
    {
      mlir::Diagnostic::operator<<<12ul>(v15, "attribute '");
      if (v14)
      {
        v13 = 261;
        v12[0] = a2;
        v12[1] = a3;
        mlir::Diagnostic::operator<<(v15, v12);
        if (v14)
        {
          mlir::Diagnostic::operator<<<100ul>(v15, "' failed to satisfy constraint: allowed 64-bit signless integer cases: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9");
        }
      }
    }

    v9 = (v15[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v14);
  }

  else
  {
    v9 = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

BOOL mlir::DialectBytecodeReader::readAttribute<mlir::arith::CmpIPredicateAttr>(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0;
  if ((*(*a1 + 48))(a1, &v14))
  {
    v4 = v14;
    if (mlir::arith::CmpIPredicateAttr::classof(v14))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    *a2 = v5;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v13[16] = 257;
      (*(*a1 + 16))(&v18, a1, v13);
      if (v18)
      {
        mlir::Diagnostic::operator<<<10ul>(v19, "expected ");
      }

      if ((atomic_load_explicit(&qword_27FC1FA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1FA60))
      {
        qword_27FC1FA50 = llvm::detail::getTypeNameImpl<mlir::arith::CmpIPredicateAttr>();
        *algn_27FC1FA58 = v12;
        __cxa_guard_release(&qword_27FC1FA60);
      }

      if (v18)
      {
        v17 = 261;
        v15 = qword_27FC1FA50;
        v16 = *algn_27FC1FA58;
        mlir::Diagnostic::operator<<(v19, &v15);
        if (v18)
        {
          mlir::Diagnostic::operator<<<12ul>(v19, ", but got: ");
          if (v18)
          {
            LODWORD(v15) = 0;
            v16 = v14;
            v7 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v20, &v15, 1);
            v8 = v20 + 24 * v21;
            v9 = *v7;
            *(v8 + 16) = *(v7 + 16);
            *v8 = v9;
            ++v21;
          }
        }
      }

      v6 = (v22 & 1) == 0;
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&v18);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t mlir::arith::CmpIOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = getI1SameShape((v13[1] & 0xFFFFFFFFFFFFFFF8));
  return 1;
}

void mlir::arith::CmpIOp::build(void **a1, mlir::detail *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v22 = a5;
  v23 = a4;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v23, 0, &v23, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v22, 0, &v22, 1);
  v8 = mlir::IntegerType::get(*a1, 64, 0);
  v9 = mlir::IntegerAttr::get(v8, a3);
  *mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(a2) = v9;
  __src = v26;
  v25 = 0x200000000;
  v10 = *(a2 + 2);
  v11 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::CmpIOp::inferReturnTypes(Dictionary, v13, v14, v10 & 0xFFFFFFFFFFFFFFF9, v11, v15, v16, v17, v20, v21, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v18);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v25);
  if (__src != v26)
  {
    free(__src);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::CmpIOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *(v2 + 2 * ((*(v2 + 11) >> 23) & 1) + 8);
  if (!v3)
  {
    v8 = "requires attribute 'predicate'";
LABEL_16:
    v11 = v8;
    v12 = 259;
    mlir::Operation::emitOpError(v2, &v11, v13);
    v7 = v14 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v13);
    goto LABEL_17;
  }

  v13[0] = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(v3, "predicate", 9, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v13) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps2(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) || (*(*this + 9) ? (v4 = *this - 16) : (v4 = 0), !mlir::arith::__mlir_ods_local_type_constraint_ArithOps3(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0)))
  {
    v7 = 0;
    goto LABEL_17;
  }

  I1SameShape = getI1SameShape((*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8));
  v2 = *this;
  if (*(*this + 9))
  {
    v6 = *this - 16;
  }

  else
  {
    v6 = 0;
  }

  if (I1SameShape != (*(v6 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    v8 = "failed to verify that result type has i1 element type and same shape as operands";
    goto LABEL_16;
  }

  v7 = 1;
LABEL_17:
  v9 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

uint64_t mlir::arith::CmpIOp::parse(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v40[0] = v41;
  v40[1] = 1;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v36[1] = 1;
  v37 = 0;
  v35 = 0;
  v36[0] = &v37;
  v34 = 0;
  v56[0] = v57;
  v56[1] = 0x400000000;
  v58 = 4;
  v4 = (*(*a1 + 40))(a1);
  v51 = xmmword_2799BDF88;
  v52 = *&off_2799BDF98;
  v53 = xmmword_2799BDFA8;
  v54 = *&off_2799BDFB8;
  v47 = xmmword_2799BDF48;
  v48 = *&off_2799BDF58;
  v49 = xmmword_2799BDF68;
  v50 = *&off_2799BDF78;
  __src = xmmword_2799BDF28;
  v46 = *&off_2799BDF38;
  if ((*(*a1 + 424))(a1, &v34, &__src, 10))
  {
    v5 = v35;
    if (!v35)
    {
      goto LABEL_64;
    }

LABEL_3:
    if (v5 != 3)
    {
      if (v5 == 2)
      {
        if (*v34 == 29029)
        {
          v18 = 0;
        }

        else
        {
          if (*v34 != 25966)
          {
            goto LABEL_7;
          }

          v18 = 1;
        }

        goto LABEL_63;
      }

LABEL_7:
      v32[0] = "invalid ";
      v33 = 259;
      (*(*a1 + 24))(&__src, a1, v4, v32);
      if (__src)
      {
        mlir::Diagnostic::operator<<<37ul>(&__src + 8, "predicate attribute specification: ");
        if (__src)
        {
          v44 = 261;
          v43[0] = v34;
          v43[1] = v35;
          mlir::Diagnostic::operator<<(&__src + 8, v43);
          if (__src)
          {
            v44 = 264;
            LOBYTE(v43[0]) = 34;
            mlir::Diagnostic::operator<<(&__src + 8, v43);
          }
        }
      }

      goto LABEL_13;
    }

    if (*v34 == 27763 && *(v34 + 2) == 116)
    {
      v18 = 2;
    }

    else if (*v34 == 27763 && *(v34 + 2) == 101)
    {
      v18 = 3;
    }

    else if (*v34 == 26483 && *(v34 + 2) == 116)
    {
      v18 = 4;
    }

    else if (*v34 == 26483 && *(v34 + 2) == 101)
    {
      v18 = 5;
    }

    else if (*v34 == 27765 && *(v34 + 2) == 116)
    {
      v18 = 6;
    }

    else if (*v34 == 27765 && *(v34 + 2) == 101)
    {
      v18 = 7;
    }

    else if (*v34 == 26485 && *(v34 + 2) == 116)
    {
      v18 = 8;
    }

    else
    {
      if (*v34 != 26485 || *(v34 + 2) != 101)
      {
        goto LABEL_7;
      }

      v18 = 9;
    }

LABEL_63:
    v19 = (*(*a1 + 32))(a1);
    v20 = mlir::IntegerType::get(*v19, 64, 0);
    v21 = mlir::IntegerAttr::get(v20, v18);
    *mlir::OperationState::getOrAddProperties<mlir::arith::detail::CmpIOpGenericAdaptorBase::Properties>(a2) = v21;
    goto LABEL_64;
  }

  v32[0] = 0;
  v6 = (*(*a1 + 32))(a1);
  NoneType = mlir::Builder::getNoneType(v6);
  v8 = mlir::AsmParser::parseOptionalAttribute<mlir::StringAttr>(a1, v32, NoneType, "predicate", 9, v56);
  if ((v8 & 0x100) == 0)
  {
    v43[0] = "expected string or keyword containing one of the following enum values for attribute 'predicate' [eq, ne, slt, sle, sgt, sge, ult, ule, ugt, uge]";
    v44 = 259;
    (*(*a1 + 24))(&__src, a1, v4, v43);
LABEL_13:
    v9 = (v55 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
    goto LABEL_52;
  }

  if ((v8 & 1) == 0)
  {
    v9 = 0;
LABEL_52:
    if (v56[0] != v57)
    {
      free(v56[0]);
    }

    goto LABEL_89;
  }

  v5 = *(v32[0] + 24);
  v34 = *(v32[0] + 16);
  v35 = v5;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_64:
  if (v56[0] != v57)
  {
    free(v56[0]);
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_88;
  }

  v22 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v41, 1) & 1) == 0)
  {
    goto LABEL_88;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    goto LABEL_88;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v38, 1) & 1) == 0)
  {
    goto LABEL_88;
  }

  v56[0] = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    goto LABEL_88;
  }

  v23 = *(a2 + 8);
  *&__src = a1;
  *(&__src + 1) = v56;
  *&v46 = a2;
  if (!mlir::arith::CmpIOp::verifyInherentAttrs(v23, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::CmpIOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src))
  {
    goto LABEL_88;
  }

  if (((*(*a1 + 104))(a1) & 1) == 0)
  {
    goto LABEL_88;
  }

  *&__src = 0;
  if (((*(*a1 + 536))(a1, &__src) & 1) == 0)
  {
    goto LABEL_88;
  }

  v37 = __src;
  v43[0] = __src;
  v24 = *(*__src + 136);
  if (v24 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    if (!(*(__src + 8) >> 30))
    {
      goto LABEL_86;
    }
  }

  else if (v24 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
LABEL_86:
    *&__src = getI1SameShape(v37);
    llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, &__src + 8);
    if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(a1, v40, v36, v22, a2 + 16))
    {
      v9 = (*(*a1 + 728))(a1, v38, *v36[0], a2 + 16) & 1;
      goto LABEL_89;
    }

LABEL_88:
    v9 = 0;
    goto LABEL_89;
  }

  if (mlir::Type::hasTrait<mlir::ValueSemantics>(*__src))
  {
    v25 = llvm::cast<mlir::ShapedType,mlir::Type>(v43);
    v27 = (*(v26 + 8))(v26, v25);
    v28 = *(*v27 + 136);
    if (v28 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      if (!(v27[2] >> 30))
      {
        goto LABEL_86;
      }
    }

    else if (v28 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
    {
      goto LABEL_86;
    }
  }

  v29 = (*(*a1 + 16))(a1);
  v57[8] = 257;
  (*(*a1 + 24))(&__src, a1, v29, v56);
  if (__src)
  {
    mlir::Diagnostic::operator<<<46ul>(&__src + 8, "'lhs' must be signless-integer-like, but got ");
    if (__src)
    {
      mlir::Diagnostic::operator<<<mlir::Type &>(&__src + 8, v43);
    }
  }

  v9 = (v55 & 1) == 0;
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&__src);
LABEL_89:
  v30 = *MEMORY[0x277D85DE8];
  return v9;
}

void mlir::arith::CmpIOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v28[4] = *MEMORY[0x277D85DE8];
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

  v26 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  Int = mlir::IntegerAttr::getInt(&v26);
  if (Int > 9)
  {
    v7 = 0;
    v8 = &str_105;
  }

  else
  {
    v7 = qword_25D09FA78[Int];
    v8 = off_2799BE238[Int];
  }

  v9 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v9, v8, v7);
  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (*(v10 + 3) == v11)
  {
    llvm::raw_ostream::write(v10, ",", 1uLL);
  }

  else
  {
    *v11 = 44;
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v14 = (*(*a2 + 16))(a2);
  v15 = *(v14 + 4);
  if (*(v14 + 3) == v15)
  {
    llvm::raw_ostream::write(v14, ",", 1uLL);
  }

  else
  {
    *v15 = 44;
    ++*(v14 + 4);
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

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v26 = v28;
  v27 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v26, "predicate", 9);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v26, v27);
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

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (*(v21 + 3) == v22)
  {
    llvm::raw_ostream::write(v21, ":", 1uLL);
  }

  else
  {
    *v22 = 58;
    ++*(v21 + 4);
  }

  v23 = (*(*a2 + 16))(a2);
  v24 = *(v23 + 4);
  if (v24 >= *(v23 + 3))
  {
    llvm::raw_ostream::write(v23, 32);
  }

  else
  {
    *(v23 + 4) = v24 + 1;
    *v24 = 32;
  }

  (*(*a2 + 32))(a2, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v26 != v28)
  {
    free(v26);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::detail::ConstantOpGenericAdaptorBase::ConstantOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

  *(result + 40) = v4;
  *(result + 48) = v3;
  return result;
}

uint64_t mlir::arith::ConstantOp::setPropertiesFromAttr(uint64_t **a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "value", 5uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*(v8 + 8));
        if (!v11)
        {
          a3(&v19, a4);
          if (v19)
          {
            if (v19)
            {
              v17 = 0;
              v18 = v10;
              v14 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v21, &v17, 1);
              v15 = v21 + 24 * v22;
              v16 = *v14;
              *(v15 + 16) = *(v14 + 16);
              *v15 = v16;
              ++v22;
            }
          }

          goto LABEL_4;
        }

        *a1 = v11;
        a1[1] = v12;
      }
    }

    result = 1;
    goto LABEL_10;
  }

  a3(&v19, a4);
  if (v19)
  {
    mlir::Diagnostic::operator<<<42ul>(v20, "expected DictionaryAttr to set properties");
  }

LABEL_4:
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v19);
  result = 0;
LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::arith::ConstantOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "value";
    v11[1] = 5;
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

unint64_t mlir::arith::ConstantOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::ConstantOp::getInherentAttr(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 5 && (*a3 == 1970037110 ? (v4 = *(a3 + 4) == 101) : (v4 = 0), v4))
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

uint64_t *mlir::arith::ConstantOp::setInherentAttr(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == 5 && *a2 == 1970037110 && *(a2 + 4) == 101)
  {
    v5 = result;
    if (a4)
    {
      result = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(a4);
    }

    else
    {
      result = 0;
      v6 = 0;
    }

    *v5 = result;
    v5[1] = v6;
  }

  return result;
}

void mlir::arith::ConstantOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "value";
    v7[1] = 5;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::ConstantOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(v8, "value", 5, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1 && (v9 = *a1, v10 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID(), !mlir::detail::InterfaceMap::lookup(v9 + 8, v10)))
  {
    a4(&v16, a5);
    if (v16)
    {
      mlir::Diagnostic::operator<<<12ul>(v17, "attribute '");
      if (v16)
      {
        v15 = 261;
        v14[0] = a2;
        v14[1] = a3;
        mlir::Diagnostic::operator<<(v17, v14);
        if (v16)
        {
          mlir::Diagnostic::operator<<<51ul>(v17, "' failed to satisfy constraint: TypedAttr instance");
        }
      }
    }

    v11 = (v17[192] & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v16);
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t *mlir::arith::ConstantOp::getValueAttr(mlir::arith::ConstantOp *this)
{
  v1 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v1)
  {
    v2 = *v1;
    v3 = mlir::detail::TypeIDResolver<mlir::TypedAttr,void>::resolveTypeID();
    mlir::detail::InterfaceMap::lookup(v2 + 8, v3);
  }

  return v1;
}

void mlir::arith::ConstantOp::build(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
  *v7 = a3;
  v7[1] = a4;
  __src = v20;
  v19 = 0x200000000;
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 14), *(***a2 + 32));
  if (!mlir::arith::ConstantOp::inferReturnTypes(Dictionary, v9, v10, v11, v12, Dictionary, a2[32], v13, v16, v17, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v14);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>((a2 + 8), __src, __src + 8 * v19);
  if (__src != v20)
  {
    free(__src);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::ConstantOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a7)
  {
    v15 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(a6 + 8), *(a6 + 8) + 16 * *(a6 + 16), "value", 5uLL);
    if ((v16 & 1) == 0)
    {
      return 0;
    }

    v17 = *(v15 + 8);
    if (!v17)
    {
      return 0;
    }

    v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute const,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute const,void>>::doCastIfPossible(v17);
    v13 = v18;
    if (!v14)
    {
      return 0;
    }

LABEL_9:
    **a11 = (*v13)(v13, v14);
    return 1;
  }

  v14 = *a7;
  v13 = a7[1];
  if (*a7)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t mlir::arith::ConstantOp::verifyInvariantsImpl(unsigned int **this)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *this;
  v3 = *&v2[4 * ((v2[11] >> 23) & 1) + 16];
  if (!v3)
  {
    v11 = "requires attribute 'value'";
LABEL_13:
    v14 = v11;
    v15 = 259;
    mlir::Operation::emitOpError(v2, &v14, v16);
    v10 = v17 ^ 1;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v16);
    goto LABEL_14;
  }

  v16[0] = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(v3, "value", 5, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v16))
  {
    v10 = 0;
    goto LABEL_14;
  }

  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  v6 = (*v5)(v5, ValueAttr);
  v2 = *this;
  if ((*this)[9])
  {
    v7 = (*this - 4);
  }

  else
  {
    v7 = 0;
  }

  if (v6 != (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_12:
    v11 = "failed to verify that all of {value, result} have same type";
    goto LABEL_13;
  }

  v8 = mlir::arith::ConstantOp::getValueAttr(this);
  if (v6 != (*v9)(v9, v8))
  {
    v2 = *this;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t mlir::arith::ConstantOp::parse(uint64_t a1, uint64_t a2)
{
  v11 = 0uLL;
  v10 = (*(*a1 + 40))(a1);
  if (((*(*a1 + 488))(a1, a2 + 112) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v8 = a1;
  v9[0] = &v10;
  v9[1] = a2;
  if (!mlir::arith::ConstantOp::verifyInherentAttrs(v4, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::ConstantOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &v8) || !mlir::AsmParser::parseAttribute<mlir::TypedAttr>(a1, &v11, 0))
  {
    return 0;
  }

  if (v11)
  {
    v5 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::ConstantOpGenericAdaptorBase::Properties>(a2);
    *v5 = v11;
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  v8 = (**(&v11 + 1))(*(&v11 + 1), v6);
  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &v8, v9);
  return 1;
}

void mlir::arith::ConstantOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v9 = v11;
  v10 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v9, "value", 5);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v9, v10);
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

  ValueAttr = mlir::arith::ConstantOp::getValueAttr(this);
  (*(*a2 + 40))(a2, ValueAttr);
  if (v9 != v11)
  {
    free(v9);
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t mlir::arith::detail::DivFOpGenericAdaptorBase::DivFOpGenericAdaptorBase(uint64_t result, uint64_t a2)
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

uint64_t mlir::arith::DivFOp::setPropertiesFromAttr(void *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v8 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(a2[1], a2[1] + 16 * a2[2], "fastmath", 8uLL);
    if (v9)
    {
      v10 = *(v8 + 8);
      if (v10)
      {
        if (*(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
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

uint64_t mlir::arith::DivFOp::getPropertiesAsAttr(uint64_t *a1, uint64_t *a2, const llvm::Twine *a3)
{
  v15[6] = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = 0x300000000;
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v12 = 261;
    v11[0] = "fastmath";
    v11[1] = 8;
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

unint64_t mlir::arith::DivFOp::computePropertiesHash(void *a1)
{
  v1 = 0x9DDFEA08EB382D69 * ((8 * *a1 - 0xAE502812AA7333) ^ HIDWORD(*a1));
  v2 = 0x9DDFEA08EB382D69 * (HIDWORD(*a1) ^ (v1 >> 47) ^ v1);
  v3 = v2 ^ (v2 >> 47);
  v4 = ((0x9DDFEA08EB382D69 * v3) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (((0x759C16B48 * v3) & 0x7FFFFFFF8) + 8));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

unint64_t mlir::arith::DivFOp::getInherentAttr(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a4 == 8 && *a3 == 0x6874616D74736166)
  {
    v5 = *a2 & 0xFFFFFFFFFFFFFF00;
    v4 = *a2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

void *mlir::arith::DivFOp::setInherentAttr(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 8 && *a2 == 0x6874616D74736166)
  {
    if (a4)
    {
      if (*(*a4 + 136) == &mlir::detail::TypeIDResolver<mlir::arith::FastMathFlagsAttr,void>::id)
      {
        v4 = a4;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    *result = v4;
  }

  return result;
}

void mlir::arith::DivFOp::populateInherentAttrs(uint64_t a1, uint64_t *a2, const llvm::Twine *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(**v3 + 32);
    v8 = 261;
    v7[0] = "fastmath";
    v7[1] = 8;
    v6 = mlir::StringAttr::get(v5, v7, a3);
    mlir::NamedAttrList::push_back(a3, v6, v3);
  }
}

BOOL mlir::arith::DivFOp::verifyInherentAttrs(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v6 = mlir::NamedAttrList::findAttr<mlir::NamedAttrList const,mlir::StringAttr>(a2, **(a1 + 96));
  result = 1;
  if (v7)
  {
    v8 = v6[1];
    if (v8)
    {
      if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v8, "fastmath", 8, a3, a4))
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(uint64_t a1)
{
  result = *(a1 + 256);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t mlir::arith::DivFOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t **a11)
{
  llvm::SmallVectorImpl<mlir::Type>::resizeImpl<false>(a11, 1uLL);
  if (!a5)
  {
    return 0;
  }

  v13 = (a4 & 0xFFFFFFFFFFFFFFF8);
  if ((a4 & 6) != 0 || !v13)
  {
    if ((a4 & 6) == 2)
    {
      if (v13)
      {
        v13 = v13[3];
      }
    }
  }

  else
  {
    v13 = *v13;
  }

  **a11 = v13[1] & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

BOOL mlir::arith::DivFOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v2 = *this;
  v3 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  v6 = v2;
  if (!mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(v3, "fastmath", 8, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::__mlir_ods_local_attr_constraint_ArithOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v6) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) || !mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u))
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  return mlir::arith::__mlir_ods_local_type_constraint_ArithOps1(*this, (*(v4 + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0);
}

uint64_t mlir::arith::DivFOp::parse(uint64_t a1, uint64_t a2)
{
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v10 = 0;
  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v13, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*a1 + 120))(a1) & 1) == 0)
  {
    return 0;
  }

  (*(*a1 + 40))(a1);
  if (((*(*a1 + 704))(a1, v11, 1) & 1) == 0)
  {
    return 0;
  }

  if ((*(*a1 + 408))(a1, "fastmath", 8))
  {
    if (!mlir::AsmParser::parseCustomAttributeWithFallback<mlir::arith::FastMathFlagsAttr>(a1, &v10, 0))
    {
      return 0;
    }

    if (v10)
    {
      v4 = mlir::OperationState::getOrAddProperties<mlir::arith::detail::DivFOpGenericAdaptorBase::Properties>(a2);
      *v4 = v10;
    }
  }

  v9 = (*(*a1 + 40))(a1);
  if ((*(*a1 + 488))(a1, a2 + 112))
  {
    v5 = *(a2 + 8);
    __src = a1;
    v8[0] = &v9;
    v8[1] = a2;
    if (mlir::arith::DivFOp::verifyInherentAttrs(v5, a2 + 112, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::arith::DivFOp::parse(mlir::OpAsmParser &,mlir::OperationState &)::$_0>, &__src) && ((*(*a1 + 104))(a1) & 1) != 0)
    {
      v9 = 0;
      if ((*(*a1 + 536))(a1, &v9))
      {
        __src = v9;
        llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, &__src, v8);
        if ((*(*a1 + 728))(a1, v13, __src, a2 + 16))
        {
          return (*(*a1 + 728))(a1, v11, __src, a2 + 16) & 1;
        }
      }
    }
  }

  return 0;
}

void mlir::arith::DivFOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v27[4] = *MEMORY[0x277D85DE8];
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
  if (*(v6 + 3) == v7)
  {
    llvm::raw_ostream::write(v6, ",", 1uLL);
  }

  else
  {
    *v7 = 44;
    ++*(v6 + 4);
  }

  v8 = (*(*a2 + 16))(a2);
  v9 = *(v8 + 4);
  if (v9 >= *(v8 + 3))
  {
    llvm::raw_ostream::write(v8, 32);
  }

  else
  {
    *(v8 + 4) = v9 + 1;
    *v9 = 32;
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 56));
  v10 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v10 != mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
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
    if (*(v13 + 3) - v14 > 7uLL)
    {
      *v14 = 0x6874616D74736166;
      *(v13 + 4) += 8;
    }

    else
    {
      llvm::raw_ostream::write(v13, "fastmath", 8uLL);
    }

    mlir::AsmPrinter::printStrippedAttrOrType<mlir::arith::FastMathFlagsAttr,(void *)0>(a2, *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8));
  }

  v25 = v27;
  v26 = 0x200000000;
  llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "fastmath", 8);
  v15 = *(*this + 2 * ((*(*this + 11) >> 23) & 1) + 8);
  if (v15 && v15 == mlir::arith::FastMathFlagsAttr::get(*(***(*this + 3) + 32), 0))
  {
    llvm::SmallVectorTemplateBase<llvm::StringRef,true>::push_back(&v25, "fastmath", 8);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  (*(*a2 + 192))(a2, *(AttrDictionary + 8), *(AttrDictionary + 16), v25, v26);
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

  v19 = (*(*a2 + 16))(a2);
  v20 = *(v19 + 4);
  if (*(v19 + 3) == v20)
  {
    llvm::raw_ostream::write(v19, ":", 1uLL);
  }

  else
  {
    *v20 = 58;
    ++*(v19 + 4);
  }

  v21 = (*(*a2 + 16))(a2);
  v22 = *(v21 + 4);
  if (v22 >= *(v21 + 3))
  {
    llvm::raw_ostream::write(v21, 32);
  }

  else
  {
    *(v21 + 4) = v22 + 1;
    *v22 = 32;
  }

  v23 = *this - 16;
  if (!*(*this + 9))
  {
    v23 = 0;
  }

  (*(*a2 + 32))(a2, *(v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v25 != v27)
  {
    free(v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void mlir::arith::DivSIOp::build(uint64_t a1, mlir::detail *a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v17 = a4;
  v18 = a3;
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v18, 0, &v18, 1);
  llvm::SmallVectorImpl<mlir::Value>::append<llvm::detail::indexed_accessor_range_base<mlir::ValueRange,llvm::PointerUnion<mlir::Value const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(a2 + 16, &v17, 0, &v17, 1);
  __src = v21;
  v20 = 0x200000000;
  v5 = *(a2 + 2);
  v6 = *(a2 + 6);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), *(***a2 + 32));
  if (!mlir::arith::DivSIOp::inferReturnTypes(Dictionary, v8, v9, v5 & 0xFFFFFFFFFFFFFFF9, v6, v10, v11, v12, v15, v16, &__src))
  {
    mlir::detail::reportFatalInferReturnTypesError(a2, v13);
  }

  llvm::SmallVectorImpl<mlir::Type>::append<mlir::Type const*,void>(a2 + 64, __src, __src + 8 * v20);
  if (__src != v21)
  {
    free(__src);
  }

  v14 = *MEMORY[0x277D85DE8];
}