unint64_t mlir::arith::RemSIOp::fold(uint64_t *a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v4 = v3[1];
  v83 = mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v83, v4))
    {
      v6 = *a1;
      v83 = *(***(*a1 + 24) + 32);
      result = mlir::Builder::getZeroAttr(&v83, *(v6 - 8) & 0xFFFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_73;
    }

    v3 = *(a2 + 40);
  }

  v58 = 0;
  v57 = &v58;
  v8 = *v3;
  if (*v3 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v9 = v3[1];
  if (v9 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  if (v8 && (v11 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8)) != 0)
  {
    v12 = (*v10)(v10, v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = v3[1];
  if (!v13)
  {
    goto LABEL_69;
  }

  v15 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v13);
  if (!v15)
  {
    goto LABEL_69;
  }

  v16 = (*v14)(v14, v15);
  v9 = 0;
  if (!v12 || !v16 || v16 != v12)
  {
    goto LABEL_70;
  }

  v82 = v12;
  v17 = *v3;
  if (*v3 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = *v3;
    goto LABEL_70;
  }

  v18 = v3[1];
  if (!v18)
  {
    goto LABEL_69;
  }

  v19 = *(*v18 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v9 = v3[1];
  }

  else
  {
    v9 = 0;
  }

  if (!v17 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_70;
  }

  v20 = *v17;
  v21 = *(*v17 + 136);
  if (v19 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    v69 = *v3;
    v66 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::IntegerAttr::getValue(&v69, &v76);
      mlir::IntegerAttr::getValue(&v66, &v72);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v57, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 == 1)
      {
        v25 = mlir::IntegerAttr::get(v82, &v83);
        goto LABEL_58;
      }
    }

    goto LABEL_69;
  }

  if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
  {
    v69 = *v3;
    v66 = v18;
    if (v17[1] == *(v18 + 8))
    {
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v69);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v72, &v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v57, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 == 1)
      {
        v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
        v25 = mlir::DenseElementsAttr::get(v23, v24, &v83, 1);
LABEL_58:
        v9 = v25;
        if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
        {
          MEMORY[0x25F891010](v83, 0x1000C8000313F17);
        }

        goto LABEL_70;
      }
    }

    goto LABEL_69;
  }

  v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v26))
  {
    goto LABEL_69;
  }

  v27 = *v3[1];
  v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
  if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
  {
    goto LABEL_69;
  }

  v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
  v31 = v30;
  v81[0] = v29;
  v81[1] = v30;
  v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
  v34 = v33;
  v80[0] = v32;
  v80[1] = v33;
  v35 = (**(v31 + 24))();
  if (v35 != (**(v34 + 24))())
  {
LABEL_69:
    v9 = 0;
    goto LABEL_70;
  }

  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v76, v81);
  mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v72, v80);
  v36 = v79;
  if (v79)
  {
    if ((v75 & 1) == 0)
    {
      v9 = 0;
LABEL_119:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_70;
    }

    LOWORD(v69) = v76;
    if (v76 == 1)
    {
      v70 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v70);
    }

    v71 = v78;
    LOWORD(v66) = v72;
    if (v72 == 1)
    {
      v67 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v67);
    }

    v68 = v74;
    v83 = &v85;
    v84 = 0x400000000;
    v38 = (*(v31 + 16))(v31, v29);
    v40 = (*(v39 + 24))(v39, v38);
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

    if (v43 > HIDWORD(v84))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v83, v43);
    }

    v45 = (*(v31 + 16))(v31, v29);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_107:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
        v9 = mlir::DenseElementsAttr::get(v53, v54, v83, v84);
LABEL_109:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v83);
        if ((v66 & 1) == 0)
        {
          v55 = v67;
          v67 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

        if ((v69 & 1) == 0)
        {
          v56 = v70;
          v70 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

LABEL_115:
        if ((v72 & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v36)
        {
          goto LABEL_70;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v71;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v69, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v66, v68);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemSIOp::fold(mlir::arith::RemSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v63, &v57, &v61, &v59);
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      if (v65 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v83, &v63);
      if ((v65 & 1) != 0 && v64 >= 0x41 && v63)
      {
        MEMORY[0x25F891010](v63, 0x1000C8000313F17);
      }

      v52 = ++v71;
      ++v68;
      if (!--v50)
      {
        goto LABEL_107;
      }
    }

    v9 = 0;
    goto LABEL_109;
  }

  v9 = 0;
  if (v75)
  {
    goto LABEL_115;
  }

LABEL_70:
  if (v58)
  {
    result = 0;
  }

  else
  {
    result = v9 & 0xFFFFFFFFFFFFFFFBLL;
  }

LABEL_73:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::AndIOp::fold(uint64_t *a1, uint64_t a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v109 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (v4)
  {
    if (mlir::detail::constant_int_predicate_matcher::match(&v109, v4))
    {
      v5 = *(*(*a1 + 72) + 56) | 4;
      goto LABEL_122;
    }

    v6 = *(*(a2 + 40) + 8);
    v84 = 1;
    v83 = 0;
    v109 = &v83;
    if (v6 && mlir::detail::constant_int_value_binder::match(&v109, v6) && llvm::APInt::isAllOnes(&v83))
    {
      v7 = *(*(*a1 + 72) + 24);
LABEL_60:
      v5 = v7 | 4;
      goto LABEL_119;
    }
  }

  else
  {
    v84 = 1;
    v83 = 0;
  }

  v8 = *a1;
  v9 = *(*a1 + 72);
  v10 = *(v9 + 56);
  v109 = *(v9 + 24);
  v110 = &v83;
  if ((~*(v10 + 8) & 7) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = *(v11 + 8) & 7;
    if (v12 == 6)
    {
      v13 = v11 + 24 * *(v11 + 16);
      v14 = v13 + 120;
      if (v13 == -120)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v11 + 16 * v12 + 16;
    }

    if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v109, v14))
    {
      isAllOnes = llvm::APInt::isAllOnes(&v83);
      v8 = *a1;
      if (isAllOnes)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v8 = *a1;
    }
  }

LABEL_21:
  v16 = *(v8 + 72);
  v17 = *(v16 + 24);
  v109 = *(v16 + 56);
  v110 = &v83;
  if ((~*(v17 + 8) & 7) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *(v18 + 8) & 7;
  if (v19 == 6)
  {
    v20 = v18 + 24 * *(v18 + 16);
    v21 = v20 + 120;
    if (v20 == -120)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v21 = v18 + 16 * v19 + 16;
  }

  if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v109, v21))
  {
    v22 = llvm::APInt::isAllOnes(&v83);
    v8 = *a1;
    if (v22)
    {
LABEL_31:
      v109 = *(***(v8 + 24) + 32);
      v5 = mlir::Builder::getZeroAttr(&v109, *(v8 - 8) & 0xFFFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_119;
    }
  }

  else
  {
    v8 = *a1;
  }

LABEL_33:
  v23 = 0;
  v24 = *(v8 + 72);
  while (1)
  {
    v25 = v23;
    if (v23)
    {
      v26 = 56;
    }

    else
    {
      v26 = 24;
    }

    v27 = *(v24 + v26);
    if ((~*(v27 + 8) & 7) == 0)
    {
      v27 = 0;
    }

    if (!v27)
    {
      goto LABEL_50;
    }

    v28 = *(v27 + 8) & 7;
    if (v28 != 6)
    {
      break;
    }

    v29 = v27 + 24 * *(v27 + 16) + 120;
    if (v29)
    {
      goto LABEL_44;
    }

LABEL_50:
    v23 = 1;
    if (v25)
    {
      goto LABEL_51;
    }
  }

  v29 = v27 + 16 * v28 + 16;
LABEL_44:
  if (*(*(v29 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::AndIOp,void>::id)
  {
    goto LABEL_50;
  }

  v30 = (v25 & 1) != 0 ? 24 : 56;
  v31 = *(v24 + v30);
  v32 = *(v29 + 72);
  if (v31 != *(v32 + 24) && v31 != *(v32 + 56))
  {
    goto LABEL_50;
  }

  if (*(v29 + 36))
  {
    v7 = v29 - 16;
    goto LABEL_60;
  }

LABEL_51:
  v33 = *(a2 + 40);
  v34 = *v33;
  if (*v33 && *(*v34 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_118;
  }

  v35 = v33[1];
  if (v35 && *(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_96;
  }

  if (v34 && (v37 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v33)) != 0)
  {
    v38 = (*v36)(v36, v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = v33[1];
  if (!v39)
  {
    goto LABEL_117;
  }

  v41 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v39);
  if (!v41)
  {
    goto LABEL_117;
  }

  v42 = (*v40)(v40, v41);
  v34 = 0;
  if (!v38 || !v42 || v42 != v38)
  {
    goto LABEL_118;
  }

  v108 = v38;
  v35 = *v33;
  if (*v33)
  {
    if (*(*v35 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
LABEL_96:
      v34 = v35;
      goto LABEL_118;
    }
  }

  v43 = v33[1];
  if (!v43)
  {
    goto LABEL_117;
  }

  v44 = *(*v43 + 136);
  if (v44 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v34 = v33[1];
  }

  else
  {
    v34 = 0;
  }

  if (!v35 || v44 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_118;
  }

  v45 = *v35;
  v46 = *(*v35 + 136);
  if (v44 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v46 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
  {
    if ((v46 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v46 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v35 + 24) == 1 && (v44 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v44 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v43 + 24) == 1)
    {
      v95 = *v33;
      v92 = v43;
      if (v35[1] == *(v43 + 8))
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v102, &v95);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v98, &v92);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v109, &v102, &v98);
        if (v99 >= 0x41 && v98)
        {
          MEMORY[0x25F891010](v98, 0x1000C8000313F17);
        }

        if (v103 >= 0x41 && v102)
        {
          MEMORY[0x25F891010](v102, 0x1000C8000313F17);
        }

        if (v111 == 1)
        {
          v48 = llvm::cast<mlir::ShapedType,mlir::Type>(&v108);
          v50 = mlir::DenseElementsAttr::get(v48, v49, &v109, 1);
          goto LABEL_106;
        }
      }

LABEL_117:
      v34 = 0;
      goto LABEL_118;
    }

    v51 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v45 + 8, v51))
    {
      goto LABEL_117;
    }

    v52 = *v33[1];
    v53 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v52 + 8, v53))
    {
      goto LABEL_117;
    }

    v54 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v33);
    v56 = v55;
    v107[0] = v54;
    v107[1] = v55;
    v57 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v33[1]);
    v59 = v58;
    v106[0] = v57;
    v106[1] = v58;
    v60 = (**(v56 + 24))();
    if (v60 != (**(v59 + 24))())
    {
      goto LABEL_117;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v102, v107);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v98, v106);
    v61 = v105;
    if (v105)
    {
      if (v101)
      {
        LOWORD(v95) = v102;
        if (v102 == 1)
        {
          v96 = v103;
        }

        else
        {
          (*(*v103 + 16))(&v96);
        }

        v97 = v104;
        LOWORD(v92) = v98;
        if (v98 == 1)
        {
          v93 = v99;
        }

        else
        {
          (*(*v99 + 16))(&v93);
        }

        v94 = v100;
        v109 = &v111;
        v110 = 0x400000000;
        v64 = (*(v56 + 16))(v56, v54);
        v66 = (*(v65 + 24))(v65, v64);
        if (v67)
        {
          v68 = 8 * v67;
          v69 = 1;
          do
          {
            v70 = *v66++;
            v69 *= v70;
            v68 -= 8;
          }

          while (v68);
        }

        else
        {
          v69 = 1;
        }

        if (v69 > HIDWORD(v110))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v109, v69);
        }

        v71 = (*(v56 + 16))(v56, v54);
        v73 = (*(v72 + 24))(v72, v71);
        if (v74)
        {
          v75 = 8 * v74;
          v76 = 1;
          do
          {
            v77 = *v73++;
            v76 *= v77;
            v75 -= 8;
          }

          while (v75);
          if (!v76)
          {
LABEL_156:
            v79 = llvm::cast<mlir::ShapedType,mlir::Type>(&v108);
            v34 = mlir::DenseElementsAttr::get(v79, v80, v109, v110);
            goto LABEL_158;
          }
        }

        else
        {
          v76 = 1;
        }

        v78 = v97;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v87, &v95, v78);
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v85, &v92, v94);
          mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v89, &v87, &v85);
          if (v86 >= 0x41 && v85)
          {
            MEMORY[0x25F891010](v85, 0x1000C8000313F17);
          }

          if (v88 >= 0x41 && v87)
          {
            MEMORY[0x25F891010](v87, 0x1000C8000313F17);
          }

          if (v91 != 1)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v109, &v89);
          if ((v91 & 1) != 0 && v90 >= 0x41 && v89)
          {
            MEMORY[0x25F891010](v89, 0x1000C8000313F17);
          }

          v78 = ++v97;
          ++v94;
          if (!--v76)
          {
            goto LABEL_156;
          }
        }

        v34 = 0;
LABEL_158:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v109);
        if ((v92 & 1) == 0)
        {
          v81 = v93;
          v93 = 0;
          if (v81)
          {
            (*(*v81 + 8))(v81);
          }
        }

        if ((v95 & 1) == 0)
        {
          v82 = v96;
          v96 = 0;
          if (v82)
          {
            (*(*v82 + 8))(v82);
          }
        }

LABEL_164:
        if ((v98 & 1) == 0 && v99)
        {
          (*(*v99 + 8))(v99);
        }

        if (!v61)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v34 = 0;
      }

      if ((v102 & 1) == 0 && v103)
      {
        (*(*v103 + 8))(v103);
      }

      goto LABEL_118;
    }

    v34 = 0;
    if ((v101 & 1) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_164;
  }

  v95 = *v33;
  v92 = v43;
  if (v35[1] != *(v43 + 8))
  {
    goto LABEL_117;
  }

  mlir::IntegerAttr::getValue(&v95, &v102);
  mlir::IntegerAttr::getValue(&v92, &v98);
  mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AndIOp::fold(mlir::arith::AndIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v109, &v102, &v98);
  if (v99 >= 0x41 && v98)
  {
    MEMORY[0x25F891010](v98, 0x1000C8000313F17);
  }

  if (v103 >= 0x41 && v102)
  {
    MEMORY[0x25F891010](v102, 0x1000C8000313F17);
  }

  if (v111 != 1)
  {
    goto LABEL_117;
  }

  v50 = mlir::IntegerAttr::get(v108, &v109);
LABEL_106:
  v34 = v50;
  if ((v111 & 1) != 0 && v110 >= 0x41 && v109)
  {
    MEMORY[0x25F891010](v109, 0x1000C8000313F17);
  }

LABEL_118:
  v5 = v34 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_119:
  if (v84 >= 0x41 && v83)
  {
    MEMORY[0x25F891010](v83, 0x1000C8000313F17);
  }

LABEL_122:
  v62 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t mlir::arith::OrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v102 = *MEMORY[0x277D85DE8];
  LODWORD(v100) = 1;
  v99 = 0;
  v5 = *(*(a2 + 40) + 8);
  v92 = &v99;
  if (!v5 || !mlir::detail::constant_int_value_binder::match(&v92, v5))
  {
    goto LABEL_7;
  }

  v2 = v100;
  if (v100 <= 0x40)
  {
    if (v99)
    {
      goto LABEL_5;
    }

LABEL_20:
    v6 = 0;
    v2 = *(*(*a1 + 72) + 24) | 4;
    goto LABEL_8;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v99) == v2)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (!llvm::APInt::isAllOnes(&v99))
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v6 = 0;
  v2 = *(*(a2 + 40) + 8) & 0xFFFFFFFFFFFFFFFBLL;
LABEL_8:
  if (v100 >= 0x41 && v99)
  {
    MEMORY[0x25F891010](v99, 0x1000C8000313F17);
  }

  if (v6)
  {
    v74 = 1;
    v73 = 0;
    v7 = *a1;
    v8 = *(*a1 + 72);
    v9 = *(v8 + 56);
    v99 = *(v8 + 24);
    v100 = &v73;
    if ((~*(v9 + 8) & 7) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(v10 + 8) & 7;
      if (v11 == 6)
      {
        v12 = v10 + 24 * *(v10 + 16);
        v13 = v12 + 120;
        if (v12 == -120)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = v10 + 16 * v11 + 16;
      }

      if (mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v99, v13))
      {
        isAllOnes = llvm::APInt::isAllOnes(&v73);
        v7 = *a1;
        if (isAllOnes)
        {
          v15 = *(*(v7 + 72) + 56);
          goto LABEL_37;
        }
      }

      else
      {
        v7 = *a1;
      }
    }

LABEL_26:
    v16 = *(v7 + 72);
    v17 = *(v16 + 24);
    v99 = *(v16 + 56);
    v100 = &v73;
    if ((~*(v17 + 8) & 7) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (!v18)
    {
      goto LABEL_41;
    }

    v19 = *(v18 + 8) & 7;
    if (v19 == 6)
    {
      v20 = v18 + 24 * *(v18 + 16);
      v21 = v20 + 120;
      if (v20 == -120)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = v18 + 16 * v19 + 16;
    }

    if (!mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(&v99, v21) || !llvm::APInt::isAllOnes(&v73))
    {
LABEL_41:
      v24 = *(a2 + 40);
      v25 = *v24;
      if (*v24 && *(*v25 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_107;
      }

      v26 = v24[1];
      if (v26 && *(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_79;
      }

      if (v25 && (v28 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v24)) != 0)
      {
        v29 = (*v27)(v27, v28);
      }

      else
      {
        v29 = 0;
      }

      v30 = v24[1];
      if (!v30)
      {
        goto LABEL_106;
      }

      v32 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v30);
      if (!v32)
      {
        goto LABEL_106;
      }

      v33 = (*v31)(v31, v32);
      v25 = 0;
      if (!v29 || !v33 || v33 != v29)
      {
        goto LABEL_107;
      }

      v98 = v29;
      v26 = *v24;
      if (*v24)
      {
        if (*(*v26 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
LABEL_79:
          v25 = v26;
LABEL_107:
          v2 = v25 & 0xFFFFFFFFFFFFFFFBLL;
LABEL_108:
          if (v74 >= 0x41 && v73)
          {
            MEMORY[0x25F891010](v73, 0x1000C8000313F17);
          }

          goto LABEL_111;
        }
      }

      v34 = v24[1];
      if (!v34)
      {
        goto LABEL_106;
      }

      v35 = *(*v34 + 136);
      if (v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v25 = v24[1];
      }

      else
      {
        v25 = 0;
      }

      if (!v26 || v35 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_107;
      }

      v36 = *v26;
      v37 = *(*v26 + 136);
      if (v35 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v37 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v85 = *v24;
        v82 = v34;
        if (v26[1] != *(v34 + 8))
        {
          goto LABEL_106;
        }

        mlir::IntegerAttr::getValue(&v85, &v92);
        mlir::IntegerAttr::getValue(&v82, &v88);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v99, &v92, &v88);
        if (v89 >= 0x41 && v88)
        {
          MEMORY[0x25F891010](v88, 0x1000C8000313F17);
        }

        if (v93 >= 0x41 && v92)
        {
          MEMORY[0x25F891010](v92, 0x1000C8000313F17);
        }

        if (v101 != 1)
        {
          goto LABEL_106;
        }

        v38 = mlir::IntegerAttr::get(v98, &v99);
LABEL_75:
        v25 = v38;
        if ((v101 & 1) != 0 && v100 >= 0x41 && v99)
        {
          MEMORY[0x25F891010](v99, 0x1000C8000313F17);
        }

        goto LABEL_107;
      }

      if ((v37 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v37 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v26 + 24) == 1 && (v35 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v35 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v34 + 24) == 1)
      {
        v85 = *v24;
        v82 = v34;
        if (v26[1] != *(v34 + 8))
        {
          goto LABEL_106;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v92, &v85);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v88, &v82);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v99, &v92, &v88);
        if (v89 >= 0x41 && v88)
        {
          MEMORY[0x25F891010](v88, 0x1000C8000313F17);
        }

        if (v93 >= 0x41 && v92)
        {
          MEMORY[0x25F891010](v92, 0x1000C8000313F17);
        }

        if (v101 != 1)
        {
          goto LABEL_106;
        }

        v39 = llvm::cast<mlir::ShapedType,mlir::Type>(&v98);
        v38 = mlir::DenseElementsAttr::get(v39, v40, &v99, 1);
        goto LABEL_75;
      }

      v41 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v36 + 8, v41))
      {
        goto LABEL_106;
      }

      v42 = *v24[1];
      v43 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v42 + 8, v43))
      {
        goto LABEL_106;
      }

      v44 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v24);
      v46 = v45;
      v97[0] = v44;
      v97[1] = v45;
      v47 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v24[1]);
      v49 = v48;
      v96[0] = v47;
      v96[1] = v48;
      v50 = (**(v46 + 24))();
      if (v50 != (**(v49 + 24))())
      {
LABEL_106:
        v25 = 0;
        goto LABEL_107;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v92, v97);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v88, v96);
      v51 = v95;
      if ((v95 & 1) == 0)
      {
        v25 = 0;
        if ((v91 & 1) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_153;
      }

      if ((v91 & 1) == 0)
      {
        v25 = 0;
LABEL_157:
        if ((v92 & 1) == 0 && v93)
        {
          (*(*v93 + 8))(v93);
        }

        goto LABEL_107;
      }

      LOWORD(v85) = v92;
      if (v92 == 1)
      {
        v86 = v93;
      }

      else
      {
        (*(*v93 + 16))(&v86);
      }

      v87 = v94;
      LOWORD(v82) = v88;
      if (v88 == 1)
      {
        v83 = v89;
      }

      else
      {
        (*(*v89 + 16))(&v83);
      }

      v84 = v90;
      v99 = &v101;
      v100 = 0x400000000;
      v54 = (*(v46 + 16))(v46, v44);
      v56 = (*(v55 + 24))(v55, v54);
      if (v57)
      {
        v58 = 8 * v57;
        v59 = 1;
        do
        {
          v60 = *v56++;
          v59 *= v60;
          v58 -= 8;
        }

        while (v58);
      }

      else
      {
        v59 = 1;
      }

      if (v59 > HIDWORD(v100))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v99, v59);
      }

      v61 = (*(v46 + 16))(v46, v44);
      v63 = (*(v62 + 24))(v62, v61);
      if (v64)
      {
        v65 = 8 * v64;
        v66 = 1;
        do
        {
          v67 = *v63++;
          v66 *= v67;
          v65 -= 8;
        }

        while (v65);
        if (!v66)
        {
LABEL_145:
          v69 = llvm::cast<mlir::ShapedType,mlir::Type>(&v98);
          v25 = mlir::DenseElementsAttr::get(v69, v70, v99, v100);
LABEL_147:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v99);
          if ((v82 & 1) == 0)
          {
            v71 = v83;
            v83 = 0;
            if (v71)
            {
              (*(*v71 + 8))(v71);
            }
          }

          if ((v85 & 1) == 0)
          {
            v72 = v86;
            v86 = 0;
            if (v72)
            {
              (*(*v72 + 8))(v72);
            }
          }

LABEL_153:
          if ((v88 & 1) == 0 && v89)
          {
            (*(*v89 + 8))(v89);
          }

          if (!v51)
          {
            goto LABEL_107;
          }

          goto LABEL_157;
        }
      }

      else
      {
        v66 = 1;
      }

      v68 = v87;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v77, &v85, v68);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v75, &v82, v84);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::OrIOp::fold(mlir::arith::OrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v79, &v77, &v75);
        if (v76 >= 0x41 && v75)
        {
          MEMORY[0x25F891010](v75, 0x1000C8000313F17);
        }

        if (v78 >= 0x41 && v77)
        {
          MEMORY[0x25F891010](v77, 0x1000C8000313F17);
        }

        if (v81 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v99, &v79);
        if ((v81 & 1) != 0 && v80 >= 0x41 && v79)
        {
          MEMORY[0x25F891010](v79, 0x1000C8000313F17);
        }

        v68 = ++v87;
        ++v84;
        if (!--v66)
        {
          goto LABEL_145;
        }
      }

      v25 = 0;
      goto LABEL_147;
    }

    v15 = *(*(*a1 + 72) + 24);
LABEL_37:
    if ((~*(v15 + 8) & 7) == 0)
    {
      v15 = 0;
    }

    v22 = *(v15 + 8) & 7;
    if (v22 == 6)
    {
      v23 = v15 + 24 * *(v15 + 16) + 120;
    }

    else
    {
      v23 = v15 + 16 * v22 + 16;
    }

    if (*(*(v23 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v23 = 0;
    }

    v2 = *(*(v23 + 72) + 56) | 4;
    goto LABEL_108;
  }

LABEL_111:
  v52 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::arith::XOrIOp::fold(uint64_t *a1, uint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = *(*(a2 + 40) + 8);
  v92 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
  if (!v4 || !mlir::detail::constant_int_predicate_matcher::match(&v92, v4))
  {
    v6 = *a1;
    v7 = *(*a1 + 72);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    if (v8 == v9)
    {
      v92 = *(***(v6 + 24) + 32);
      result = mlir::Builder::getZeroAttr(&v92, *(v6 - 8) & 0xFFFFFFFFFFFFFFF8) & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_94;
    }

    if ((~*(v8 + 8) & 7) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = *(v10 + 8) & 7;
      if (v11 == 6)
      {
        v12 = v10 + 24 * *(v10 + 16) + 120;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v12 = v10 + 16 * v11 + 16;
      }

      if (*(*(v12 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
      {
        v21 = *(v12 + 72);
        v22 = *(v21 + 56);
        v23 = *(v21 + 24);
        if (v22 == v9)
        {
          result = v23 | 4;
          goto LABEL_94;
        }

        if (v23 == v9)
        {
          goto LABEL_68;
        }
      }
    }

LABEL_15:
    if ((~*(v9 + 8) & 7) == 0)
    {
      v9 = 0;
    }

    if (!v9)
    {
      goto LABEL_23;
    }

    v13 = *(v9 + 8) & 7;
    if (v13 == 6)
    {
      v14 = v9 + 24 * *(v9 + 16) + 120;
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = v9 + 16 * v13 + 16;
    }

    if (*(*(v14 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
LABEL_23:
      v15 = *(a2 + 40);
      v16 = *v15;
      if (*v15 && *(*v16 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_93;
      }

      v17 = v15[1];
      if (v17 && *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_64;
      }

      if (v16 && (v19 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v15)) != 0)
      {
        v20 = (*v18)(v18, v19);
      }

      else
      {
        v20 = 0;
      }

      v24 = v15[1];
      if (!v24)
      {
        goto LABEL_92;
      }

      v26 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v24);
      if (!v26)
      {
        goto LABEL_92;
      }

      v27 = (*v25)(v25, v26);
      v16 = 0;
      if (!v20 || !v27 || v27 != v20)
      {
        goto LABEL_93;
      }

      v91 = v20;
      v17 = *v15;
      if (*v15)
      {
        if (*(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
        {
LABEL_64:
          v16 = v17;
LABEL_93:
          result = v16 & 0xFFFFFFFFFFFFFFFBLL;
          goto LABEL_94;
        }
      }

      v28 = v15[1];
      if (!v28)
      {
        goto LABEL_92;
      }

      v29 = *(*v28 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        v16 = v15[1];
      }

      else
      {
        v16 = 0;
      }

      if (!v17 || v29 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
        goto LABEL_93;
      }

      v30 = *v17;
      v31 = *(*v17 + 136);
      if (v29 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v31 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v78 = *v15;
        v75 = v28;
        if (v17[1] != *(v28 + 8))
        {
          goto LABEL_92;
        }

        mlir::IntegerAttr::getValue(&v78, &v85);
        mlir::IntegerAttr::getValue(&v75, &v81);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v92, &v85, &v81);
        if (v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        if (v86 >= 0x41 && v85)
        {
          MEMORY[0x25F891010](v85, 0x1000C8000313F17);
        }

        if (v94 != 1)
        {
          goto LABEL_92;
        }

        v32 = mlir::IntegerAttr::get(v91, &v92);
LABEL_60:
        v16 = v32;
        if ((v94 & 1) != 0 && v93 >= 0x41 && v92)
        {
          MEMORY[0x25F891010](v92, 0x1000C8000313F17);
        }

        goto LABEL_93;
      }

      if ((v31 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v31 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v17 + 24) == 1 && (v29 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v29 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v28 + 24) == 1)
      {
        v78 = *v15;
        v75 = v28;
        if (v17[1] != *(v28 + 8))
        {
          goto LABEL_92;
        }

        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v85, &v78);
        mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v81, &v75);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v92, &v85, &v81);
        if (v82 >= 0x41 && v81)
        {
          MEMORY[0x25F891010](v81, 0x1000C8000313F17);
        }

        if (v86 >= 0x41 && v85)
        {
          MEMORY[0x25F891010](v85, 0x1000C8000313F17);
        }

        if (v94 != 1)
        {
          goto LABEL_92;
        }

        v35 = llvm::cast<mlir::ShapedType,mlir::Type>(&v91);
        v32 = mlir::DenseElementsAttr::get(v35, v36, &v92, 1);
        goto LABEL_60;
      }

      v37 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v30 + 8, v37))
      {
        goto LABEL_92;
      }

      v38 = *v15[1];
      v39 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      if (!mlir::detail::InterfaceMap::lookup(v38 + 8, v39))
      {
        goto LABEL_92;
      }

      v40 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v15);
      v42 = v41;
      v90[0] = v40;
      v90[1] = v41;
      v43 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v15[1]);
      v45 = v44;
      v89[0] = v43;
      v89[1] = v44;
      v46 = (**(v42 + 24))();
      if (v46 != (**(v45 + 24))())
      {
LABEL_92:
        v16 = 0;
        goto LABEL_93;
      }

      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v85, v90);
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v81, v89);
      v47 = v88;
      if ((v88 & 1) == 0)
      {
        v16 = 0;
        if ((v84 & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_136;
      }

      if ((v84 & 1) == 0)
      {
        v16 = 0;
LABEL_140:
        if ((v85 & 1) == 0 && v86)
        {
          (*(*v86 + 8))(v86);
        }

        goto LABEL_93;
      }

      LOWORD(v78) = v85;
      if (v85 == 1)
      {
        v79 = v86;
      }

      else
      {
        (*(*v86 + 16))(&v79);
      }

      v80 = v87;
      LOWORD(v75) = v81;
      if (v81 == 1)
      {
        v76 = v82;
      }

      else
      {
        (*(*v82 + 16))(&v76);
      }

      v77 = v83;
      v92 = &v94;
      v93 = 0x400000000;
      v49 = (*(v42 + 16))(v42, v40);
      v51 = (*(v50 + 24))(v50, v49);
      if (v52)
      {
        v53 = 8 * v52;
        v54 = 1;
        do
        {
          v55 = *v51++;
          v54 *= v55;
          v53 -= 8;
        }

        while (v53);
      }

      else
      {
        v54 = 1;
      }

      if (v54 > HIDWORD(v93))
      {
        llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v92, v54);
      }

      v56 = (*(v42 + 16))(v42, v40);
      v58 = (*(v57 + 24))(v57, v56);
      if (v59)
      {
        v60 = 8 * v59;
        v61 = 1;
        do
        {
          v62 = *v58++;
          v61 *= v62;
          v60 -= 8;
        }

        while (v60);
        if (!v61)
        {
LABEL_128:
          v64 = llvm::cast<mlir::ShapedType,mlir::Type>(&v91);
          v16 = mlir::DenseElementsAttr::get(v64, v65, v92, v93);
LABEL_130:
          llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v92);
          if ((v75 & 1) == 0)
          {
            v66 = v76;
            v76 = 0;
            if (v66)
            {
              (*(*v66 + 8))(v66);
            }
          }

          if ((v78 & 1) == 0)
          {
            v67 = v79;
            v79 = 0;
            if (v67)
            {
              (*(*v67 + 8))(v67);
            }
          }

LABEL_136:
          if ((v81 & 1) == 0 && v82)
          {
            (*(*v82 + 8))(v82);
          }

          if (!v47)
          {
            goto LABEL_93;
          }

          goto LABEL_140;
        }
      }

      else
      {
        v61 = 1;
      }

      v63 = v80;
      while (1)
      {
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v70, &v78, v63);
        mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v68, &v75, v77);
        mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::XOrIOp::fold(mlir::arith::XOrIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v72, &v70, &v68);
        if (v69 >= 0x41 && v68)
        {
          MEMORY[0x25F891010](v68, 0x1000C8000313F17);
        }

        if (v71 >= 0x41 && v70)
        {
          MEMORY[0x25F891010](v70, 0x1000C8000313F17);
        }

        if (v74 != 1)
        {
          break;
        }

        llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v92, &v72);
        if ((v74 & 1) != 0 && v73 >= 0x41 && v72)
        {
          MEMORY[0x25F891010](v72, 0x1000C8000313F17);
        }

        v63 = ++v80;
        ++v77;
        if (!--v61)
        {
          goto LABEL_128;
        }
      }

      v16 = 0;
      goto LABEL_130;
    }

    v33 = *(v14 + 72);
    v34 = *(v33 + 56);
    v22 = *(v33 + 24);
    if (v34 != v8)
    {
      if (v22 == v8)
      {
        result = v34 | 4;
        goto LABEL_94;
      }

      goto LABEL_23;
    }

LABEL_68:
    result = v22 | 4;
    goto LABEL_94;
  }

  result = *(*(*a1 + 72) + 24) | 4;
LABEL_94:
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::NegFOp::fold(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 72) + 24);
  if ((~*(v2 + 8) & 7) == 0)
  {
    v2 = 0;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(v2 + 8) & 7;
  if (v3 == 6)
  {
    v4 = v2 + 24 * *(v2 + 16) + 120;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = v2 + 16 * v3 + 16;
  }

  if (*(*(v4 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::NegFOp,void>::id)
  {
LABEL_9:
    v5 = *(a2 + 48);
    v6 = *v5;
    if (!*v5)
    {
      goto LABEL_44;
    }

    v7 = *v6;
    v8 = *(*v6 + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_44;
    }

    if (v8 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      llvm::APFloat::Storage::Storage(v44, (v6 + 16));
      llvm::APFloat::Storage::Storage(&v46, v44);
      llvm::APFloat::changeSign(&v46);
      if (v46 == &llvm::semPPCDoubleDouble)
      {
        *&v52 = &llvm::semPPCDoubleDouble;
        *(&v52 + 1) = *(&v46 + 1);
        *&v46 = &llvm::semBogus;
        *(&v46 + 1) = 0;
      }

      else
      {
        *&v52 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v52, &v46);
      }

      BYTE8(v53[0]) = 1;
      llvm::APFloat::Storage::~Storage(&v46);
      llvm::APFloat::Storage::~Storage(v44);
      if (BYTE8(v53[0]) == 1)
      {
        v16 = mlir::FloatAttr::get(*(v6 + 8), &v52);
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v9 = v8 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v8 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v9 && *(v6 + 24) == 1)
    {
      v54 = *v5;
      mlir::DenseElementsAttr::tryGetFloatValues(&v54, &v52);
      v46 = v52;
      v47 = v53[0];
      v48 = v53[1];
      v49 = v53[2];
      v50 = v53[3];
      v51 = v53[4];
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v52, v44);
      llvm::APFloat::Storage::Storage(&v46, v44);
      llvm::APFloat::changeSign(&v46);
      if (v46 == &llvm::semPPCDoubleDouble)
      {
        *&v52 = &llvm::semPPCDoubleDouble;
        *(&v52 + 1) = *(&v46 + 1);
        *&v46 = &llvm::semBogus;
        *(&v46 + 1) = 0;
      }

      else
      {
        *&v52 = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(&v52, &v46);
      }

      BYTE8(v53[0]) = 1;
      llvm::APFloat::Storage::~Storage(&v46);
      llvm::APFloat::Storage::~Storage(v44);
      if (BYTE8(v53[0]) == 1)
      {
        v16 = mlir::DenseElementsAttr::get(v54[1], v54[2], &v52, 1);
LABEL_41:
        v6 = v16;
        if (BYTE8(v53[0]))
        {
          llvm::APFloat::Storage::~Storage(&v52);
        }

        goto LABEL_44;
      }

      goto LABEL_43;
    }

    v11 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v7 + 8, v11) || ((v12 = *v5) == 0 ? (v15 = 0) : (v13 = *v12, v14 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(), v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14)), v42[0] = v12, v42[1] = v15, mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v46, v42), BYTE8(v47) != 1))
    {
LABEL_43:
      v6 = 0;
LABEL_44:
      result = v6 & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_45;
    }

    v17 = v46;
    v39 = v46;
    v18 = *(&v46 + 1);
    if (v46 == 1)
    {
      v40 = *(&v46 + 1);
    }

    else
    {
      (*(**(&v46 + 1) + 16))(&v40, *(&v46 + 1));
    }

    v41 = v47;
    *&v52 = v53;
    *(&v52 + 1) = 0x200000000;
    v19 = (*(v15 + 16))(v15, v12);
    v21 = (*(v20 + 24))(v20, v19);
    if (v22)
    {
      v23 = 8 * v22;
      v24 = 1;
      do
      {
        v25 = *v21++;
        v24 *= v25;
        v23 -= 8;
      }

      while (v23);
    }

    else
    {
      v24 = 1;
    }

    if (v24 > HIDWORD(v52))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v52, v24);
    }

    v27 = (*(v15 + 16))(v15, v12);
    v29 = (*(v28 + 24))(v28, v27);
    if (v30)
    {
      v31 = 8 * v30;
      v32 = 1;
      do
      {
        v33 = *v29++;
        v32 *= v33;
        v31 -= 8;
      }

      while (v31);
      if (!v32)
      {
LABEL_63:
        v36 = (*(v15 + 16))(v15, v12);
        v6 = mlir::DenseElementsAttr::get(v36, v37, v52, DWORD2(v52));
LABEL_65:
        llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v52);
        if ((v39 & 1) == 0)
        {
          v38 = v40;
          v40 = 0;
          if (v38)
          {
            (*(*v38 + 8))(v38);
          }
        }

        if ((v17 & 1) == 0 && v18)
        {
          (*(*v18 + 8))(v18);
        }

        goto LABEL_44;
      }
    }

    else
    {
      v32 = 1;
    }

    v34 = v41;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v43, &v39, v34);
      v35 = llvm::APFloat::Storage::Storage(&v54, v43);
      llvm::APFloat::changeSign(v35);
      if (v54 == &llvm::semPPCDoubleDouble)
      {
        v44[0] = &llvm::semPPCDoubleDouble;
        v44[1] = v55;
        v54 = &llvm::semBogus;
        v55 = 0;
      }

      else
      {
        v44[0] = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(v44, &v54);
      }

      v45 = 1;
      llvm::APFloat::Storage::~Storage(&v54);
      llvm::APFloat::Storage::~Storage(v43);
      if (v45 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v52, v44);
      if (v45)
      {
        llvm::APFloat::Storage::~Storage(v44);
      }

      v34 = ++v41;
      if (!--v32)
      {
        goto LABEL_63;
      }
    }

    v6 = 0;
    goto LABEL_65;
  }

  result = *(*(v4 + 72) + 24) | 4;
LABEL_45:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::AddFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v68 = mlir::m_NegZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v4)
  {
    goto LABEL_5;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v68, v4) & 1) == 0)
  {
    v3 = *(a2 + 48);
LABEL_5:
    v7 = *v3;
    if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v8 = v3[1];
    if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_41;
    }

    if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
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
      goto LABEL_54;
    }

    v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = (*v13)(v13, v14);
    v7 = 0;
    if (!v11 || !v15 || v15 != v11)
    {
      goto LABEL_55;
    }

    v63 = v11;
    v8 = *v3;
    if (*v3)
    {
      if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_41:
        v7 = v8;
LABEL_55:
        result = v7 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v16 = v3[1];
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v7 = v3[1];
    }

    else
    {
      v7 = 0;
    }

    if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v18 = *v8;
    v19 = *(*v8 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v8[1] == v16[1])
      {
        llvm::APFloat::Storage::Storage(&v76, (v8 + 2));
        llvm::APFloat::Storage::Storage(v72, (v16 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v23 = mlir::FloatAttr::get(v63, &v68);
LABEL_45:
          v7 = v23;
          if (v71)
          {
            llvm::APFloat::Storage::~Storage(&v68);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v7 = 0;
      goto LABEL_55;
    }

    if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
    {
      v66[0] = *v3;
      v58 = v16;
      if (v8[1] == v16[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v72, &v58);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
          v23 = mlir::DenseElementsAttr::get(v21, v22, &v68, 1);
          goto LABEL_45;
        }
      }

      goto LABEL_54;
    }

    v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
    {
      goto LABEL_54;
    }

    v25 = *v3[1];
    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
    {
      goto LABEL_54;
    }

    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
    v29 = v28;
    v62[0] = v27;
    v62[1] = v28;
    v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
    v32 = v31;
    v61[0] = v30;
    v61[1] = v31;
    v33 = (**(v29 + 24))();
    if (v33 != (**(v32 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v72, v61);
    v34 = v79;
    if ((v79 & 1) == 0)
    {
      v7 = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v75 & 1) == 0)
    {
      v7 = 0;
LABEL_94:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_55;
    }

    LOWORD(v58) = v76;
    if (v76 == 1)
    {
      v59 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v59);
    }

    v60 = v78;
    v55[0] = v72[0];
    v55[1] = v72[1];
    if (v72[0] == 1)
    {
      v56 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v56);
    }

    v57 = v74;
    v68 = &v70;
    v69 = 0x400000000;
    v36 = (*(v29 + 16))(v29, v27);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v69))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
    }

    v43 = (*(v29 + 16))(v29, v27);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_82:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
        v7 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
        if ((v55[0] & 1) == 0)
        {
          v53 = v56;
          v56 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v58 & 1) == 0)
        {
          v54 = v59;
          v59 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_90:
        if ((v72[0] & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v34)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v60;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, v55, v57);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::AddFOp::fold(mlir::arith::AddFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
      llvm::APFloat::Storage::~Storage(v64);
      llvm::APFloat::Storage::~Storage(v65);
      if (v67 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
      if (v67)
      {
        llvm::APFloat::Storage::~Storage(v66);
      }

      v50 = ++v60;
      ++v57;
      if (!--v48)
      {
        goto LABEL_82;
      }
    }

    v7 = 0;
    goto LABEL_84;
  }

  result = *(*(*a1 + 72) + 24) | 4;
LABEL_56:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::SubFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v68 = mlir::m_PosZeroFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v4)
  {
    goto LABEL_5;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v68, v4) & 1) == 0)
  {
    v3 = *(a2 + 48);
LABEL_5:
    v7 = *v3;
    if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v8 = v3[1];
    if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_41;
    }

    if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
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
      goto LABEL_54;
    }

    v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = (*v13)(v13, v14);
    v7 = 0;
    if (!v11 || !v15 || v15 != v11)
    {
      goto LABEL_55;
    }

    v63 = v11;
    v8 = *v3;
    if (*v3)
    {
      if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_41:
        v7 = v8;
LABEL_55:
        result = v7 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v16 = v3[1];
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v7 = v3[1];
    }

    else
    {
      v7 = 0;
    }

    if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v18 = *v8;
    v19 = *(*v8 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v8[1] == v16[1])
      {
        llvm::APFloat::Storage::Storage(&v76, (v8 + 2));
        llvm::APFloat::Storage::Storage(v72, (v16 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v23 = mlir::FloatAttr::get(v63, &v68);
LABEL_45:
          v7 = v23;
          if (v71)
          {
            llvm::APFloat::Storage::~Storage(&v68);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v7 = 0;
      goto LABEL_55;
    }

    if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
    {
      v66[0] = *v3;
      v58 = v16;
      if (v8[1] == v16[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v72, &v58);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
          v23 = mlir::DenseElementsAttr::get(v21, v22, &v68, 1);
          goto LABEL_45;
        }
      }

      goto LABEL_54;
    }

    v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
    {
      goto LABEL_54;
    }

    v25 = *v3[1];
    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
    {
      goto LABEL_54;
    }

    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
    v29 = v28;
    v62[0] = v27;
    v62[1] = v28;
    v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
    v32 = v31;
    v61[0] = v30;
    v61[1] = v31;
    v33 = (**(v29 + 24))();
    if (v33 != (**(v32 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v72, v61);
    v34 = v79;
    if ((v79 & 1) == 0)
    {
      v7 = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v75 & 1) == 0)
    {
      v7 = 0;
LABEL_94:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_55;
    }

    LOWORD(v58) = v76;
    if (v76 == 1)
    {
      v59 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v59);
    }

    v60 = v78;
    v55[0] = v72[0];
    v55[1] = v72[1];
    if (v72[0] == 1)
    {
      v56 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v56);
    }

    v57 = v74;
    v68 = &v70;
    v69 = 0x400000000;
    v36 = (*(v29 + 16))(v29, v27);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v69))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
    }

    v43 = (*(v29 + 16))(v29, v27);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_82:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
        v7 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
        if ((v55[0] & 1) == 0)
        {
          v53 = v56;
          v56 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v58 & 1) == 0)
        {
          v54 = v59;
          v59 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_90:
        if ((v72[0] & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v34)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v60;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, v55, v57);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::SubFOp::fold(mlir::arith::SubFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
      llvm::APFloat::Storage::~Storage(v64);
      llvm::APFloat::Storage::~Storage(v65);
      if (v67 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
      if (v67)
      {
        llvm::APFloat::Storage::~Storage(v66);
      }

      v50 = ++v60;
      ++v57;
      if (!--v48)
      {
        goto LABEL_82;
      }
    }

    v7 = 0;
    goto LABEL_84;
  }

  result = *(*(*a1 + 72) + 24) | 4;
LABEL_56:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::MaximumFOp::fold(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  v69 = mlir::m_NegInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v6)
  {
    goto LABEL_7;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v69, v6) & 1) == 0)
  {
    v5 = *(a2 + 48);
LABEL_7:
    v9 = *v5;
    if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v10 = v5[1];
    if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_37;
    }

    if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
    {
      v13 = (*v11)(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = v5[1];
    if (!v14)
    {
      goto LABEL_54;
    }

    v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = (*v15)(v15, v16);
    v9 = 0;
    if (!v13 || !v17 || v17 != v13)
    {
      goto LABEL_55;
    }

    v64 = v13;
    v10 = *v5;
    if (*v5)
    {
      if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_37:
        v9 = v10;
LABEL_55:
        result = v9 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v18 = v5[1];
    if (!v18)
    {
      goto LABEL_54;
    }

    v19 = *(*v18 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v9 = v5[1];
    }

    else
    {
      v9 = 0;
    }

    if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v20 = *v10;
    v21 = *(*v10 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v10[1] == v18[1])
      {
        llvm::APFloat::Storage::Storage(&v77, (v10 + 2));
        llvm::APFloat::Storage::Storage(v73, (v18 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, v73);
        llvm::APFloat::Storage::~Storage(v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v22 = mlir::FloatAttr::get(v64, &v69);
          goto LABEL_35;
        }
      }

      goto LABEL_54;
    }

    if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
    {
      v67[0] = *v5;
      v59 = v18;
      if (v10[1] == v18[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v77, v67);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v73, &v59);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, v73);
        llvm::APFloat::Storage::~Storage(v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
          v22 = mlir::DenseElementsAttr::get(v23, v24, &v69, 1);
LABEL_35:
          v9 = v22;
          if (v72)
          {
            llvm::APFloat::Storage::~Storage(&v69);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v9 = 0;
      goto LABEL_55;
    }

    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
    {
      goto LABEL_54;
    }

    v26 = *v5[1];
    v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
    {
      goto LABEL_54;
    }

    v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
    v30 = v29;
    v63[0] = v28;
    v63[1] = v29;
    v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
    v33 = v32;
    v62[0] = v31;
    v62[1] = v32;
    v34 = (**(v30 + 24))();
    if (v34 != (**(v33 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v77, v63);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v73, v62);
    v35 = v80;
    if ((v80 & 1) == 0)
    {
      v9 = 0;
      if ((v76 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v76 & 1) == 0)
    {
      v9 = 0;
LABEL_94:
      if ((v77 & 1) == 0 && v78)
      {
        (*(*v78 + 8))(v78);
      }

      goto LABEL_55;
    }

    LOWORD(v59) = v77;
    if (v77 == 1)
    {
      v60 = v78;
    }

    else
    {
      (*(*v78 + 16))(&v60);
    }

    v61 = v79;
    v56[0] = v73[0];
    v56[1] = v73[1];
    if (v73[0] == 1)
    {
      v57 = v74;
    }

    else
    {
      (*(*v74 + 16))(&v57);
    }

    v58 = v75;
    v69 = &v71;
    v70 = 0x400000000;
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

    if (v42 > HIDWORD(v70))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v69, v42);
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
LABEL_82:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v69, v70);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v69);
        if ((v56[0] & 1) == 0)
        {
          v54 = v57;
          v57 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v59 & 1) == 0)
        {
          v55 = v60;
          v60 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_90:
        if ((v73[0] & 1) == 0 && v74)
        {
          (*(*v74 + 8))(v74);
        }

        if (!v35)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v61;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v66, &v59, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, v56, v58);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaximumFOp::fold(mlir::arith::MaximumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v67, v66, v65);
      llvm::APFloat::Storage::~Storage(v65);
      llvm::APFloat::Storage::~Storage(v66);
      if (v68 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v67);
      if (v68)
      {
        llvm::APFloat::Storage::~Storage(v67);
      }

      v51 = ++v61;
      ++v58;
      if (!--v49)
      {
        goto LABEL_82;
      }
    }

    v9 = 0;
    goto LABEL_84;
  }

  v3 = *(*(*a1 + 72) + 24);
LABEL_5:
  result = v3 | 4;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::MaxNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  *&v73 = mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v6)
  {
    goto LABEL_7;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v73, v6) & 1) == 0)
  {
    v5 = *(a2 + 48);
LABEL_7:
    v9 = *v5;
    if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_108;
    }

    v10 = v5[1];
    if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_37;
    }

    if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
    {
      v13 = (*v11)(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = v5[1];
    if (!v14)
    {
      goto LABEL_107;
    }

    v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    if (!v16)
    {
      goto LABEL_107;
    }

    v17 = (*v15)(v15, v16);
    v9 = 0;
    if (!v13 || !v17 || v17 != v13)
    {
      goto LABEL_108;
    }

    v68 = v13;
    v10 = *v5;
    if (*v5)
    {
      if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_37:
        v9 = v10;
        goto LABEL_108;
      }
    }

    v18 = v5[1];
    if (!v18)
    {
      goto LABEL_107;
    }

    v19 = *(*v18 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v9 = v5[1];
    }

    else
    {
      v9 = 0;
    }

    if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_108;
    }

    v20 = *v10;
    v21 = *(*v10 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v10[1] == *(v18 + 8))
      {
        llvm::APFloat::Storage::Storage(&v83, (v10 + 2));
        llvm::APFloat::Storage::Storage(v79, (v18 + 16));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&)>(llvm::ArrayRef<mlir::Attribute>,llvm::APFloat (&)(llvm::APFloat const&,llvm::APFloat const&) &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v73, llvm::maxnum, &v83, v79);
        llvm::APFloat::Storage::~Storage(v79);
        llvm::APFloat::Storage::~Storage(&v83);
        if (BYTE8(v74) == 1)
        {
          v22 = mlir::FloatAttr::get(v68, &v73);
          goto LABEL_35;
        }
      }

      goto LABEL_107;
    }

    if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
    {
      v89 = *v5;
      v63 = v18;
      if (v10[1] == *(v18 + 8))
      {
        mlir::DenseElementsAttr::tryGetFloatValues(&v89, &v73);
        v83 = v73;
        v84 = v74;
        v85 = v75;
        v86 = v76;
        v87 = v77;
        v88 = v78;
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v73, v79);
        mlir::DenseElementsAttr::tryGetFloatValues(&v63, &v73);
        v83 = v73;
        v84 = v74;
        v85 = v75;
        v86 = v76;
        v87 = v77;
        v88 = v78;
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v73, v71);
        llvm::maxnum(v79, v71, &v83);
        if (v83 == &llvm::semPPCDoubleDouble)
        {
          *&v73 = &llvm::semPPCDoubleDouble;
          *(&v73 + 1) = *(&v83 + 1);
          *&v83 = &llvm::semBogus;
          *(&v83 + 1) = 0;
        }

        else
        {
          *&v73 = &llvm::semBogus;
          llvm::detail::IEEEFloat::operator=(&v73, &v83);
        }

        BYTE8(v74) = 1;
        llvm::APFloat::Storage::~Storage(&v83);
        llvm::APFloat::Storage::~Storage(v71);
        llvm::APFloat::Storage::~Storage(v79);
        if (BYTE8(v74) == 1)
        {
          v57 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
          v22 = mlir::DenseElementsAttr::get(v57, v58, &v73, 1);
LABEL_35:
          v9 = v22;
          if (BYTE8(v74))
          {
            llvm::APFloat::Storage::~Storage(&v73);
          }

          goto LABEL_108;
        }
      }

LABEL_107:
      v9 = 0;
      goto LABEL_108;
    }

    v23 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v23))
    {
      goto LABEL_107;
    }

    v24 = *v5[1];
    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v24 + 8, v25))
    {
      goto LABEL_107;
    }

    v26 = *v5;
    if (*v5)
    {
      v27 = *v26;
      v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      v29 = mlir::detail::InterfaceMap::lookup(v27 + 8, v28);
    }

    else
    {
      v29 = 0;
    }

    v67[0] = v26;
    v67[1] = v29;
    v30 = v5[1];
    if (v30)
    {
      v31 = *v30;
      v32 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
      v33 = mlir::detail::InterfaceMap::lookup(v31 + 8, v32);
    }

    else
    {
      v33 = 0;
    }

    v66[0] = v30;
    v66[1] = v33;
    v34 = (**(v29 + 24))();
    if (v34 != (**(v33 + 24))())
    {
      goto LABEL_107;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v83, v67);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v79, v66);
    v35 = BYTE8(v84);
    if ((BYTE8(v84) & 1) == 0)
    {
      if (v82 & 1) == 0 || (v79[0])
      {
        goto LABEL_107;
      }

      v9 = 0;
      v36 = v80;
      goto LABEL_98;
    }

    if ((v82 & 1) == 0)
    {
      v9 = 0;
LABEL_101:
      if ((v83 & 1) == 0 && *(&v83 + 1))
      {
        (*(**(&v83 + 1) + 8))(*(&v83 + 1));
      }

      goto LABEL_108;
    }

    LOWORD(v63) = v83;
    if (v83 == 1)
    {
      v64 = *(&v83 + 1);
    }

    else
    {
      (*(**(&v83 + 1) + 16))(&v64);
    }

    v65 = v84;
    v60[0] = v79[0];
    v37 = v79[0];
    v60[1] = v79[1];
    v36 = v80;
    if (v79[0] == 1)
    {
      v61 = v80;
    }

    else
    {
      (*(*v80 + 16))(&v61, v80);
    }

    v62 = v81;
    *&v73 = &v74;
    *(&v73 + 1) = 0x400000000;
    v38 = (*(v29 + 16))(v29, v26);
    v40 = (*(v39 + 24))(v39, v38);
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

    if (v43 > HIDWORD(v73))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v73, v43);
    }

    v45 = (*(v29 + 16))(v29, v26);
    v47 = (*(v46 + 24))(v46, v45);
    if (v48)
    {
      v49 = 8 * v48;
      v50 = 1;
      do
      {
        v51 = *v47++;
        v50 *= v51;
        v49 -= 8;
      }

      while (v49);
      if (!v50)
      {
LABEL_89:
        v53 = llvm::cast<mlir::ShapedType,mlir::Type>(&v68);
        v9 = mlir::DenseElementsAttr::get(v53, v54, v73, DWORD2(v73));
        goto LABEL_91;
      }
    }

    else
    {
      v50 = 1;
    }

    v52 = v65;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v70, &v63, v52);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v69, v60, v62);
      llvm::maxnum(v70, v69, &v89);
      if (v89 == &llvm::semPPCDoubleDouble)
      {
        v71[0] = &llvm::semPPCDoubleDouble;
        v71[1] = v90;
        v89 = &llvm::semBogus;
        v90 = 0;
      }

      else
      {
        v71[0] = &llvm::semBogus;
        llvm::detail::IEEEFloat::operator=(v71, &v89);
      }

      v72 = 1;
      llvm::APFloat::Storage::~Storage(&v89);
      llvm::APFloat::Storage::~Storage(v69);
      llvm::APFloat::Storage::~Storage(v70);
      if (v72 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v73, v71);
      if (v72)
      {
        llvm::APFloat::Storage::~Storage(v71);
      }

      v52 = ++v65;
      ++v62;
      if (!--v50)
      {
        goto LABEL_89;
      }
    }

    v9 = 0;
LABEL_91:
    llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v73);
    if ((v60[0] & 1) == 0)
    {
      v55 = v61;
      v61 = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }
    }

    if ((v63 & 1) == 0)
    {
      v56 = v64;
      v64 = 0;
      if (v56)
      {
        (*(*v56 + 8))(v56);
      }
    }

    if (v37)
    {
LABEL_100:
      if (v35)
      {
        goto LABEL_101;
      }

LABEL_108:
      result = v9 & 0xFFFFFFFFFFFFFFFBLL;
      goto LABEL_109;
    }

LABEL_98:
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    goto LABEL_100;
  }

  v3 = *(*(*a1 + 72) + 24);
LABEL_5:
  result = v3 | 4;
LABEL_109:
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::detail::IEEEFloat *llvm::maxnum@<X0>(llvm *this@<X0>, const llvm::APFloat **a2@<X1>, llvm::APFloat::Storage *a3@<X8>)
{
  v4 = a2;
  if (*this == &llvm::semPPCDoubleDouble)
  {
    v6 = *(this + 1);
  }

  else
  {
    v6 = this;
  }

  v7 = *(v6 + 20);
  if ((v7 & 7) != 1)
  {
    if (*a2 == &llvm::semPPCDoubleDouble)
    {
      v9 = a2[1];
    }

    else
    {
      v9 = a2;
    }

    v10 = *(v9 + 20);
    if ((v10 & 7) == 1)
    {
      v4 = this;
    }

    else
    {
      v11 = (v7 & 7) == 3 && (v10 & 7) == 3;
      if (!v11 || ((v7 >> 3) & 1) == (v10 & 8) >> 3)
      {
        if (llvm::APFloat::compare(this, a2))
        {
          v4 = this;
        }
      }

      else if ((v7 & 8) == 0)
      {
        v4 = this;
      }
    }
  }

  return llvm::APFloat::Storage::Storage(a3, v4);
}

unint64_t mlir::arith::MaxSIOp::fold(unint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    v2 = v4 | 4;
    goto LABEL_78;
  }

  LODWORD(v83) = 1;
  v82 = 0;
  v6 = *(*(a2 + 40) + 8);
  v75 = &v82;
  if (!v6)
  {
    goto LABEL_10;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v75, v6))
  {
    goto LABEL_10;
  }

  if (!llvm::APInt::isMaxSignedValue(&v82))
  {
    if (llvm::APInt::isMinSignedValue(&v82))
    {
      v7 = 0;
      v8 = *(*(*v2 + 72) + 24);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = *(*(*v2 + 72) + 56);
LABEL_9:
  v2 = v8 | 4;
LABEL_11:
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x25F891010](v82, 0x1000C8000313F17);
  }

  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = *v9;
    if (*v9 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_77;
    }

    v11 = v9[1];
    if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_53;
    }

    if (v10 && (v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v9)) != 0)
    {
      v14 = (*v12)(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = v9[1];
    if (!v15)
    {
      goto LABEL_76;
    }

    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    if (!v17)
    {
      goto LABEL_76;
    }

    v18 = (*v16)(v16, v17);
    v10 = 0;
    if (!v14 || !v18 || v18 != v14)
    {
      goto LABEL_77;
    }

    v81 = v14;
    v11 = *v9;
    if (*v9)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_53:
        v10 = v11;
LABEL_77:
        v2 = v10 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_78;
      }
    }

    v19 = v9[1];
    if (!v19)
    {
      goto LABEL_76;
    }

    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    if (!v11 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_77;
    }

    v21 = *v11;
    v22 = *(*v11 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v68 = *v9;
      v65 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_76;
      }

      v23 = mlir::IntegerAttr::get(v81, &v82);
LABEL_49:
      v10 = v23;
      if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
      {
        MEMORY[0x25F891010](v82, 0x1000C8000313F17);
      }

      goto LABEL_77;
    }

    if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v11 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
    {
      v68 = *v9;
      v65 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_76;
      }

      v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
      v23 = mlir::DenseElementsAttr::get(v24, v25, &v82, 1);
      goto LABEL_49;
    }

    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v26))
    {
      goto LABEL_76;
    }

    v27 = *v9[1];
    v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
    {
      goto LABEL_76;
    }

    v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v9);
    v31 = v30;
    v80[0] = v29;
    v80[1] = v30;
    v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v9[1]);
    v34 = v33;
    v79[0] = v32;
    v79[1] = v33;
    v35 = (**(v31 + 24))();
    if (v35 != (**(v34 + 24))())
    {
LABEL_76:
      v10 = 0;
      goto LABEL_77;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
    v36 = v78;
    if ((v78 & 1) == 0)
    {
      v10 = 0;
      if ((v74 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_120;
    }

    if ((v74 & 1) == 0)
    {
      v10 = 0;
LABEL_124:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_77;
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
    v39 = (*(v31 + 16))(v31, v29);
    v41 = (*(v40 + 24))(v40, v39);
    if (v42)
    {
      v43 = 8 * v42;
      v44 = 1;
      do
      {
        v45 = *v41++;
        v44 *= v45;
        v43 -= 8;
      }

      while (v43);
    }

    else
    {
      v44 = 1;
    }

    if (v44 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v44);
    }

    v46 = (*(v31 + 16))(v31, v29);
    v48 = (*(v47 + 24))(v47, v46);
    if (v49)
    {
      v50 = 8 * v49;
      v51 = 1;
      do
      {
        v52 = *v48++;
        v51 *= v52;
        v50 -= 8;
      }

      while (v50);
      if (!v51)
      {
LABEL_112:
        v54 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v10 = mlir::DenseElementsAttr::get(v54, v55, v82, v83);
LABEL_114:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v56 = v66;
          v66 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        if ((v68 & 1) == 0)
        {
          v57 = v69;
          v69 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

LABEL_120:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v36)
        {
          goto LABEL_77;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v51 = 1;
    }

    v53 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v53);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxSIOp::fold(mlir::arith::MaxSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v60, &v58);
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

      v53 = ++v70;
      ++v67;
      if (!--v51)
      {
        goto LABEL_112;
      }
    }

    v10 = 0;
    goto LABEL_114;
  }

LABEL_78:
  v37 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL llvm::APInt::isMaxSignedValue(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (v1 <= 0x40)
  {
    return (*this ^ (-1 << (v1 - 1))) == -1;
  }

  if ((*(*this + 8 * ((v1 - 1) >> 6)) >> (v1 - 1)))
  {
    return 0;
  }

  return llvm::APInt::countTrailingOnesSlowCase(this) == v1 - 1;
}

unint64_t mlir::arith::MaxUIOp::fold(unint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    v2 = v4 | 4;
  }

  else
  {
    LODWORD(v84) = 1;
    v83 = 0;
    v6 = *(*(a2 + 40) + 8);
    v76 = &v83;
    if (v6 && (v2 = a1, mlir::detail::constant_int_value_binder::match(&v76, v6)))
    {
      if (llvm::APInt::isAllOnes(&v83))
      {
        v7 = *(*(*v2 + 72) + 56);
      }

      else
      {
        v9 = v84;
        if (v84 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase(&v83) != v9)
          {
            if (v83)
            {
              MEMORY[0x25F891010](v83, 0x1000C8000313F17);
            }

LABEL_18:
            v10 = *(a2 + 40);
            v11 = *v10;
            if (*v10 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_82;
            }

            v12 = v10[1];
            if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_56;
            }

            if (v11 && (v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v10)) != 0)
            {
              v15 = (*v13)(v13, v14);
            }

            else
            {
              v15 = 0;
            }

            v16 = v10[1];
            if (!v16)
            {
              goto LABEL_81;
            }

            v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
            if (!v18)
            {
              goto LABEL_81;
            }

            v19 = (*v17)(v17, v18);
            v11 = 0;
            if (!v15 || !v19 || v19 != v15)
            {
              goto LABEL_82;
            }

            v82 = v15;
            v12 = *v10;
            if (*v10)
            {
              if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
              {
LABEL_56:
                v11 = v12;
LABEL_82:
                v2 = v11 & 0xFFFFFFFFFFFFFFFBLL;
                goto LABEL_83;
              }
            }

            v20 = v10[1];
            if (!v20)
            {
              goto LABEL_81;
            }

            v21 = *(*v20 + 136);
            if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              v11 = v10[1];
            }

            else
            {
              v11 = 0;
            }

            if (!v12 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
            {
              goto LABEL_82;
            }

            v22 = *v12;
            v23 = *(*v12 + 136);
            if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v69 = *v10;
              v66 = v20;
              if (v12[1] != *(v20 + 8))
              {
                goto LABEL_81;
              }

              mlir::IntegerAttr::getValue(&v69, &v76);
              mlir::IntegerAttr::getValue(&v66, &v72);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v76, &v72);
              if (v73 >= 0x41 && v72)
              {
                MEMORY[0x25F891010](v72, 0x1000C8000313F17);
              }

              if (v77 >= 0x41 && v76)
              {
                MEMORY[0x25F891010](v76, 0x1000C8000313F17);
              }

              if (v85 != 1)
              {
                goto LABEL_81;
              }

              v24 = mlir::IntegerAttr::get(v82, &v83);
LABEL_52:
              v11 = v24;
              if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
              {
                MEMORY[0x25F891010](v83, 0x1000C8000313F17);
              }

              goto LABEL_82;
            }

            if ((v23 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1 && (v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v20 + 24) == 1)
            {
              v69 = *v10;
              v66 = v20;
              if (v12[1] != *(v20 + 8))
              {
                goto LABEL_81;
              }

              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v69);
              mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v72, &v66);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v76, &v72);
              if (v73 >= 0x41 && v72)
              {
                MEMORY[0x25F891010](v72, 0x1000C8000313F17);
              }

              if (v77 >= 0x41 && v76)
              {
                MEMORY[0x25F891010](v76, 0x1000C8000313F17);
              }

              if (v85 != 1)
              {
                goto LABEL_81;
              }

              v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
              v24 = mlir::DenseElementsAttr::get(v25, v26, &v83, 1);
              goto LABEL_52;
            }

            v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
            if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v27))
            {
              goto LABEL_81;
            }

            v28 = *v10[1];
            v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
            if (!mlir::detail::InterfaceMap::lookup(v28 + 8, v29))
            {
              goto LABEL_81;
            }

            v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v10);
            v32 = v31;
            v81[0] = v30;
            v81[1] = v31;
            v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v10[1]);
            v35 = v34;
            v80[0] = v33;
            v80[1] = v34;
            v36 = (**(v32 + 24))();
            if (v36 != (**(v35 + 24))())
            {
LABEL_81:
              v11 = 0;
              goto LABEL_82;
            }

            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v76, v81);
            mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v72, v80);
            v37 = v79;
            if ((v79 & 1) == 0)
            {
              v11 = 0;
              if ((v75 & 1) == 0)
              {
                goto LABEL_82;
              }

              goto LABEL_125;
            }

            if ((v75 & 1) == 0)
            {
              v11 = 0;
LABEL_129:
              if ((v76 & 1) == 0 && v77)
              {
                (*(*v77 + 8))(v77);
              }

              goto LABEL_82;
            }

            LOWORD(v69) = v76;
            if (v76 == 1)
            {
              v70 = v77;
            }

            else
            {
              (*(*v77 + 16))(&v70);
            }

            v71 = v78;
            LOWORD(v66) = v72;
            if (v72 == 1)
            {
              v67 = v73;
            }

            else
            {
              (*(*v73 + 16))(&v67);
            }

            v68 = v74;
            v83 = &v85;
            v84 = 0x400000000;
            v40 = (*(v32 + 16))(v32, v30);
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
            }

            else
            {
              v45 = 1;
            }

            if (v45 > HIDWORD(v84))
            {
              llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v83, v45);
            }

            v47 = (*(v32 + 16))(v32, v30);
            v49 = (*(v48 + 24))(v48, v47);
            if (v50)
            {
              v51 = 8 * v50;
              v52 = 1;
              do
              {
                v53 = *v49++;
                v52 *= v53;
                v51 -= 8;
              }

              while (v51);
              if (!v52)
              {
LABEL_117:
                v55 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
                v11 = mlir::DenseElementsAttr::get(v55, v56, v83, v84);
LABEL_119:
                llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v83);
                if ((v66 & 1) == 0)
                {
                  v57 = v67;
                  v67 = 0;
                  if (v57)
                  {
                    (*(*v57 + 8))(v57);
                  }
                }

                if ((v69 & 1) == 0)
                {
                  v58 = v70;
                  v70 = 0;
                  if (v58)
                  {
                    (*(*v58 + 8))(v58);
                  }
                }

LABEL_125:
                if ((v72 & 1) == 0 && v73)
                {
                  (*(*v73 + 8))(v73);
                }

                if (!v37)
                {
                  goto LABEL_82;
                }

                goto LABEL_129;
              }
            }

            else
            {
              v52 = 1;
            }

            v54 = v71;
            while (1)
            {
              mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v69, v54);
              mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v66, v68);
              mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MaxUIOp::fold(mlir::arith::MaxUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v63, &v61, &v59);
              if (v60 >= 0x41 && v59)
              {
                MEMORY[0x25F891010](v59, 0x1000C8000313F17);
              }

              if (v62 >= 0x41 && v61)
              {
                MEMORY[0x25F891010](v61, 0x1000C8000313F17);
              }

              if (v65 != 1)
              {
                break;
              }

              llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v83, &v63);
              if ((v65 & 1) != 0 && v64 >= 0x41 && v63)
              {
                MEMORY[0x25F891010](v63, 0x1000C8000313F17);
              }

              v54 = ++v71;
              ++v68;
              if (!--v52)
              {
                goto LABEL_117;
              }
            }

            v11 = 0;
            goto LABEL_119;
          }
        }

        else if (v83)
        {
          goto LABEL_18;
        }

        v7 = *(*(*v2 + 72) + 24);
      }

      v2 = v7 | 4;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (v84 >= 0x41 && v83)
    {
      MEMORY[0x25F891010](v83, 0x1000C8000313F17);
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_83:
  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::arith::MinimumFOp::fold(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  v69 = mlir::m_PosInfFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v6)
  {
    goto LABEL_7;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v69, v6) & 1) == 0)
  {
    v5 = *(a2 + 48);
LABEL_7:
    v9 = *v5;
    if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v10 = v5[1];
    if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_37;
    }

    if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
    {
      v13 = (*v11)(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = v5[1];
    if (!v14)
    {
      goto LABEL_54;
    }

    v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = (*v15)(v15, v16);
    v9 = 0;
    if (!v13 || !v17 || v17 != v13)
    {
      goto LABEL_55;
    }

    v64 = v13;
    v10 = *v5;
    if (*v5)
    {
      if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_37:
        v9 = v10;
LABEL_55:
        result = v9 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v18 = v5[1];
    if (!v18)
    {
      goto LABEL_54;
    }

    v19 = *(*v18 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v9 = v5[1];
    }

    else
    {
      v9 = 0;
    }

    if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v20 = *v10;
    v21 = *(*v10 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v10[1] == v18[1])
      {
        llvm::APFloat::Storage::Storage(&v77, (v10 + 2));
        llvm::APFloat::Storage::Storage(v73, (v18 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, v73);
        llvm::APFloat::Storage::~Storage(v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v22 = mlir::FloatAttr::get(v64, &v69);
          goto LABEL_35;
        }
      }

      goto LABEL_54;
    }

    if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
    {
      v67[0] = *v5;
      v59 = v18;
      if (v10[1] == v18[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v77, v67);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v73, &v59);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, v73);
        llvm::APFloat::Storage::~Storage(v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
          v22 = mlir::DenseElementsAttr::get(v23, v24, &v69, 1);
LABEL_35:
          v9 = v22;
          if (v72)
          {
            llvm::APFloat::Storage::~Storage(&v69);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v9 = 0;
      goto LABEL_55;
    }

    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
    {
      goto LABEL_54;
    }

    v26 = *v5[1];
    v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
    {
      goto LABEL_54;
    }

    v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
    v30 = v29;
    v63[0] = v28;
    v63[1] = v29;
    v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
    v33 = v32;
    v62[0] = v31;
    v62[1] = v32;
    v34 = (**(v30 + 24))();
    if (v34 != (**(v33 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v77, v63);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v73, v62);
    v35 = v80;
    if ((v80 & 1) == 0)
    {
      v9 = 0;
      if ((v76 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v76 & 1) == 0)
    {
      v9 = 0;
LABEL_94:
      if ((v77 & 1) == 0 && v78)
      {
        (*(*v78 + 8))(v78);
      }

      goto LABEL_55;
    }

    LOWORD(v59) = v77;
    if (v77 == 1)
    {
      v60 = v78;
    }

    else
    {
      (*(*v78 + 16))(&v60);
    }

    v61 = v79;
    v56[0] = v73[0];
    v56[1] = v73[1];
    if (v73[0] == 1)
    {
      v57 = v74;
    }

    else
    {
      (*(*v74 + 16))(&v57);
    }

    v58 = v75;
    v69 = &v71;
    v70 = 0x400000000;
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

    if (v42 > HIDWORD(v70))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v69, v42);
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
LABEL_82:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v69, v70);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v69);
        if ((v56[0] & 1) == 0)
        {
          v54 = v57;
          v57 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v59 & 1) == 0)
        {
          v55 = v60;
          v60 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_90:
        if ((v73[0] & 1) == 0 && v74)
        {
          (*(*v74 + 8))(v74);
        }

        if (!v35)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v61;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v66, &v59, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, v56, v58);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinimumFOp::fold(mlir::arith::MinimumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v67, v66, v65);
      llvm::APFloat::Storage::~Storage(v65);
      llvm::APFloat::Storage::~Storage(v66);
      if (v68 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v67);
      if (v68)
      {
        llvm::APFloat::Storage::~Storage(v67);
      }

      v51 = ++v61;
      ++v58;
      if (!--v49)
      {
        goto LABEL_82;
      }
    }

    v9 = 0;
    goto LABEL_84;
  }

  v3 = *(*(*a1 + 72) + 24);
LABEL_5:
  result = v3 | 4;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::MinNumFOp::fold(uint64_t a1, uint64_t a2)
{
  v81 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 72);
  v3 = *(v2 + 24);
  if (v3 == *(v2 + 56))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 48);
  v6 = v5[1];
  v69 = mlir::m_NaNFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v6)
  {
    goto LABEL_7;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v69, v6) & 1) == 0)
  {
    v5 = *(a2 + 48);
LABEL_7:
    v9 = *v5;
    if (*v5 && *(*v9 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v10 = v5[1];
    if (v10 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_37;
    }

    if (v9 && (v12 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v5)) != 0)
    {
      v13 = (*v11)(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = v5[1];
    if (!v14)
    {
      goto LABEL_54;
    }

    v16 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v14);
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = (*v15)(v15, v16);
    v9 = 0;
    if (!v13 || !v17 || v17 != v13)
    {
      goto LABEL_55;
    }

    v64 = v13;
    v10 = *v5;
    if (*v5)
    {
      if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_37:
        v9 = v10;
LABEL_55:
        result = v9 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v18 = v5[1];
    if (!v18)
    {
      goto LABEL_54;
    }

    v19 = *(*v18 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v9 = v5[1];
    }

    else
    {
      v9 = 0;
    }

    if (!v10 || v19 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v20 = *v10;
    v21 = *(*v10 + 136);
    if (v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v21 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v10[1] == v18[1])
      {
        llvm::APFloat::Storage::Storage(&v77, (v10 + 2));
        llvm::APFloat::Storage::Storage(&v73, (v18 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, &v73);
        llvm::APFloat::Storage::~Storage(&v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v22 = mlir::FloatAttr::get(v64, &v69);
          goto LABEL_35;
        }
      }

      goto LABEL_54;
    }

    if ((v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v10 + 24) == 1 && (v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v18 + 24) == 1)
    {
      v67[0] = *v5;
      v59 = v18;
      if (v10[1] == v18[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v77, v67);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v73, &v59);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v69, &v77, &v73);
        llvm::APFloat::Storage::~Storage(&v73);
        llvm::APFloat::Storage::~Storage(&v77);
        if (v72 == 1)
        {
          v23 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
          v22 = mlir::DenseElementsAttr::get(v23, v24, &v69, 1);
LABEL_35:
          v9 = v22;
          if (v72)
          {
            llvm::APFloat::Storage::~Storage(&v69);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v9 = 0;
      goto LABEL_55;
    }

    v25 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v20 + 8, v25))
    {
      goto LABEL_54;
    }

    v26 = *v5[1];
    v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v26 + 8, v27))
    {
      goto LABEL_54;
    }

    v28 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v5);
    v30 = v29;
    v63[0] = v28;
    v63[1] = v29;
    v31 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v5[1]);
    v33 = v32;
    v62[0] = v31;
    v62[1] = v32;
    v34 = (**(v30 + 24))();
    if (v34 != (**(v33 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v77, v63);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v73, v62);
    v35 = v80;
    if ((v80 & 1) == 0)
    {
      v9 = 0;
      if ((v76 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v76 & 1) == 0)
    {
      v9 = 0;
LABEL_94:
      if ((v77 & 1) == 0 && v78)
      {
        (*(*v78 + 8))(v78);
      }

      goto LABEL_55;
    }

    LOWORD(v59) = v77;
    if (v77 == 1)
    {
      v60 = v78;
    }

    else
    {
      (*(*v78 + 16))(&v60);
    }

    v61 = v79;
    v56 = v73;
    if (v73 == 1)
    {
      v57 = v74;
    }

    else
    {
      (*(*v74 + 16))(&v57);
    }

    v58 = v75;
    v69 = &v71;
    v70 = 0x400000000;
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

    if (v42 > HIDWORD(v70))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v69, v42);
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
LABEL_82:
        v52 = llvm::cast<mlir::ShapedType,mlir::Type>(&v64);
        v9 = mlir::DenseElementsAttr::get(v52, v53, v69, v70);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v69);
        if ((v56 & 1) == 0)
        {
          v54 = v57;
          v57 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

        if ((v59 & 1) == 0)
        {
          v55 = v60;
          v60 = 0;
          if (v55)
          {
            (*(*v55 + 8))(v55);
          }
        }

LABEL_90:
        if ((v73 & 1) == 0 && v74)
        {
          (*(*v74 + 8))(v74);
        }

        if (!v35)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v49 = 1;
    }

    v51 = v61;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v66, &v59, v51);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v56, v58);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinNumFOp::fold(mlir::arith::MinNumFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v67, v66, v65);
      llvm::APFloat::Storage::~Storage(v65);
      llvm::APFloat::Storage::~Storage(v66);
      if (v68 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v69, v67);
      if (v68)
      {
        llvm::APFloat::Storage::~Storage(v67);
      }

      v51 = ++v61;
      ++v58;
      if (!--v49)
      {
        goto LABEL_82;
      }
    }

    v9 = 0;
    goto LABEL_84;
  }

  v3 = *(*(*a1 + 72) + 24);
LABEL_5:
  result = v3 | 4;
LABEL_56:
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::MinSIOp::fold(unint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    v2 = v4 | 4;
    goto LABEL_78;
  }

  LODWORD(v83) = 1;
  v82 = 0;
  v6 = *(*(a2 + 40) + 8);
  v75 = &v82;
  if (!v6)
  {
    goto LABEL_10;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v75, v6))
  {
    goto LABEL_10;
  }

  if (!llvm::APInt::isMinSignedValue(&v82))
  {
    if (llvm::APInt::isMaxSignedValue(&v82))
    {
      v7 = 0;
      v8 = *(*(*v2 + 72) + 24);
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  v8 = *(*(*v2 + 72) + 56);
LABEL_9:
  v2 = v8 | 4;
LABEL_11:
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x25F891010](v82, 0x1000C8000313F17);
  }

  if (v7)
  {
    v9 = *(a2 + 40);
    v10 = *v9;
    if (*v9 && *(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_77;
    }

    v11 = v9[1];
    if (v11 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_53;
    }

    if (v10 && (v13 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v9)) != 0)
    {
      v14 = (*v12)(v12, v13);
    }

    else
    {
      v14 = 0;
    }

    v15 = v9[1];
    if (!v15)
    {
      goto LABEL_76;
    }

    v17 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v15);
    if (!v17)
    {
      goto LABEL_76;
    }

    v18 = (*v16)(v16, v17);
    v10 = 0;
    if (!v14 || !v18 || v18 != v14)
    {
      goto LABEL_77;
    }

    v81 = v14;
    v11 = *v9;
    if (*v9)
    {
      if (*(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_53:
        v10 = v11;
LABEL_77:
        v2 = v10 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_78;
      }
    }

    v19 = v9[1];
    if (!v19)
    {
      goto LABEL_76;
    }

    v20 = *(*v19 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v10 = v9[1];
    }

    else
    {
      v10 = 0;
    }

    if (!v11 || v20 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_77;
    }

    v21 = *v11;
    v22 = *(*v11 + 136);
    if (v20 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v22 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v68 = *v9;
      v65 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::IntegerAttr::getValue(&v68, &v75);
      mlir::IntegerAttr::getValue(&v65, &v71);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_76;
      }

      v23 = mlir::IntegerAttr::get(v81, &v82);
LABEL_49:
      v10 = v23;
      if ((v84 & 1) != 0 && v83 >= 0x41 && v82)
      {
        MEMORY[0x25F891010](v82, 0x1000C8000313F17);
      }

      goto LABEL_77;
    }

    if ((v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v11 + 24) == 1 && (v20 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v20 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v19 + 24) == 1)
    {
      v68 = *v9;
      v65 = v19;
      if (v11[1] != *(v19 + 8))
      {
        goto LABEL_76;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v75, &v68);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v71, &v65);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v82, &v75, &v71);
      if (v72 >= 0x41 && v71)
      {
        MEMORY[0x25F891010](v71, 0x1000C8000313F17);
      }

      if (v76 >= 0x41 && v75)
      {
        MEMORY[0x25F891010](v75, 0x1000C8000313F17);
      }

      if (v84 != 1)
      {
        goto LABEL_76;
      }

      v24 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
      v23 = mlir::DenseElementsAttr::get(v24, v25, &v82, 1);
      goto LABEL_49;
    }

    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v21 + 8, v26))
    {
      goto LABEL_76;
    }

    v27 = *v9[1];
    v28 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v27 + 8, v28))
    {
      goto LABEL_76;
    }

    v29 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v9);
    v31 = v30;
    v80[0] = v29;
    v80[1] = v30;
    v32 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v9[1]);
    v34 = v33;
    v79[0] = v32;
    v79[1] = v33;
    v35 = (**(v31 + 24))();
    if (v35 != (**(v34 + 24))())
    {
LABEL_76:
      v10 = 0;
      goto LABEL_77;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v75, v80);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v71, v79);
    v36 = v78;
    if ((v78 & 1) == 0)
    {
      v10 = 0;
      if ((v74 & 1) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_120;
    }

    if ((v74 & 1) == 0)
    {
      v10 = 0;
LABEL_124:
      if ((v75 & 1) == 0 && v76)
      {
        (*(*v76 + 8))(v76);
      }

      goto LABEL_77;
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
    v39 = (*(v31 + 16))(v31, v29);
    v41 = (*(v40 + 24))(v40, v39);
    if (v42)
    {
      v43 = 8 * v42;
      v44 = 1;
      do
      {
        v45 = *v41++;
        v44 *= v45;
        v43 -= 8;
      }

      while (v43);
    }

    else
    {
      v44 = 1;
    }

    if (v44 > HIDWORD(v83))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v82, v44);
    }

    v46 = (*(v31 + 16))(v31, v29);
    v48 = (*(v47 + 24))(v47, v46);
    if (v49)
    {
      v50 = 8 * v49;
      v51 = 1;
      do
      {
        v52 = *v48++;
        v51 *= v52;
        v50 -= 8;
      }

      while (v50);
      if (!v51)
      {
LABEL_112:
        v54 = llvm::cast<mlir::ShapedType,mlir::Type>(&v81);
        v10 = mlir::DenseElementsAttr::get(v54, v55, v82, v83);
LABEL_114:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v82);
        if ((v65 & 1) == 0)
        {
          v56 = v66;
          v66 = 0;
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }
        }

        if ((v68 & 1) == 0)
        {
          v57 = v69;
          v69 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

LABEL_120:
        if ((v71 & 1) == 0 && v72)
        {
          (*(*v72 + 8))(v72);
        }

        if (!v36)
        {
          goto LABEL_77;
        }

        goto LABEL_124;
      }
    }

    else
    {
      v51 = 1;
    }

    v53 = v70;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v60, &v68, v53);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v58, &v65, v67);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinSIOp::fold(mlir::arith::MinSIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v62, &v60, &v58);
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

      v53 = ++v70;
      ++v67;
      if (!--v51)
      {
        goto LABEL_112;
      }
    }

    v10 = 0;
    goto LABEL_114;
  }

LABEL_78:
  v37 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::arith::MinUIOp::fold(unint64_t a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 72);
  v4 = *(v3 + 24);
  if (v4 == *(v3 + 56))
  {
    v2 = v4 | 4;
    goto LABEL_80;
  }

  LODWORD(v84) = 1;
  v83 = 0;
  v6 = *(*(a2 + 40) + 8);
  v76 = &v83;
  if (!v6)
  {
    goto LABEL_8;
  }

  v2 = a1;
  if (!mlir::detail::constant_int_value_binder::match(&v76, v6))
  {
    goto LABEL_8;
  }

  v7 = v84;
  if (v84 <= 0x40)
  {
    if (v83)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    v9 = *(*(*v2 + 72) + 56);
    goto LABEL_12;
  }

  if (llvm::APInt::countLeadingZerosSlowCase(&v83) == v7)
  {
    goto LABEL_11;
  }

LABEL_6:
  if (llvm::APInt::isAllOnes(&v83))
  {
    v8 = 0;
    v9 = *(*(*v2 + 72) + 24);
LABEL_12:
    v2 = v9 | 4;
    goto LABEL_13;
  }

LABEL_8:
  v8 = 1;
LABEL_13:
  if (v84 >= 0x41 && v83)
  {
    MEMORY[0x25F891010](v83, 0x1000C8000313F17);
  }

  if (v8)
  {
    v10 = *(a2 + 40);
    v11 = *v10;
    if (*v10 && *(*v11 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_79;
    }

    v12 = v10[1];
    if (v12 && *(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    if (v11 && (v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v10)) != 0)
    {
      v15 = (*v13)(v13, v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = v10[1];
    if (!v16)
    {
      goto LABEL_78;
    }

    v18 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v16);
    if (!v18)
    {
      goto LABEL_78;
    }

    v19 = (*v17)(v17, v18);
    v11 = 0;
    if (!v15 || !v19 || v19 != v15)
    {
      goto LABEL_79;
    }

    v82 = v15;
    v12 = *v10;
    if (*v10)
    {
      if (*(*v12 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_55:
        v11 = v12;
LABEL_79:
        v2 = v11 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_80;
      }
    }

    v20 = v10[1];
    if (!v20)
    {
      goto LABEL_78;
    }

    v21 = *(*v20 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v11 = v10[1];
    }

    else
    {
      v11 = 0;
    }

    if (!v12 || v21 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_79;
    }

    v22 = *v12;
    v23 = *(*v12 + 136);
    if (v21 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id && v23 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v69 = *v10;
      v66 = v20;
      if (v12[1] != *(v20 + 8))
      {
        goto LABEL_78;
      }

      mlir::IntegerAttr::getValue(&v69, &v76);
      mlir::IntegerAttr::getValue(&v66, &v72);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 != 1)
      {
        goto LABEL_78;
      }

      v24 = mlir::IntegerAttr::get(v82, &v83);
LABEL_51:
      v11 = v24;
      if ((v85 & 1) != 0 && v84 >= 0x41 && v83)
      {
        MEMORY[0x25F891010](v83, 0x1000C8000313F17);
      }

      goto LABEL_79;
    }

    if ((v23 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v23 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1 && (v21 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v21 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v20 + 24) == 1)
    {
      v69 = *v10;
      v66 = v20;
      if (v12[1] != *(v20 + 8))
      {
        goto LABEL_78;
      }

      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v76, &v69);
      mlir::DenseElementsAttr::getSplatValue<llvm::APInt>(&v72, &v66);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v83, &v76, &v72);
      if (v73 >= 0x41 && v72)
      {
        MEMORY[0x25F891010](v72, 0x1000C8000313F17);
      }

      if (v77 >= 0x41 && v76)
      {
        MEMORY[0x25F891010](v76, 0x1000C8000313F17);
      }

      if (v85 != 1)
      {
        goto LABEL_78;
      }

      v25 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
      v24 = mlir::DenseElementsAttr::get(v25, v26, &v83, 1);
      goto LABEL_51;
    }

    v27 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v27))
    {
      goto LABEL_78;
    }

    v28 = *v10[1];
    v29 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v28 + 8, v29))
    {
      goto LABEL_78;
    }

    v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v10);
    v32 = v31;
    v81[0] = v30;
    v81[1] = v31;
    v33 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v10[1]);
    v35 = v34;
    v80[0] = v33;
    v80[1] = v34;
    v36 = (**(v32 + 24))();
    if (v36 != (**(v35 + 24))())
    {
LABEL_78:
      v11 = 0;
      goto LABEL_79;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v76, v81);
    mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v72, v80);
    v37 = v79;
    if ((v79 & 1) == 0)
    {
      v11 = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_122;
    }

    if ((v75 & 1) == 0)
    {
      v11 = 0;
LABEL_126:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_79;
    }

    LOWORD(v69) = v76;
    if (v76 == 1)
    {
      v70 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v70);
    }

    v71 = v78;
    LOWORD(v66) = v72;
    if (v72 == 1)
    {
      v67 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v67);
    }

    v68 = v74;
    v83 = &v85;
    v84 = 0x400000000;
    v40 = (*(v32 + 16))(v32, v30);
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
    }

    else
    {
      v45 = 1;
    }

    if (v45 > HIDWORD(v84))
    {
      llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v83, v45);
    }

    v47 = (*(v32 + 16))(v32, v30);
    v49 = (*(v48 + 24))(v48, v47);
    if (v50)
    {
      v51 = 8 * v50;
      v52 = 1;
      do
      {
        v53 = *v49++;
        v52 *= v53;
        v51 -= 8;
      }

      while (v51);
      if (!v52)
      {
LABEL_114:
        v55 = llvm::cast<mlir::ShapedType,mlir::Type>(&v82);
        v11 = mlir::DenseElementsAttr::get(v55, v56, v83, v84);
LABEL_116:
        llvm::SmallVector<llvm::APInt,4u>::~SmallVector(&v83);
        if ((v66 & 1) == 0)
        {
          v57 = v67;
          v67 = 0;
          if (v57)
          {
            (*(*v57 + 8))(v57);
          }
        }

        if ((v69 & 1) == 0)
        {
          v58 = v70;
          v70 = 0;
          if (v58)
          {
            (*(*v58 + 8))(v58);
          }
        }

LABEL_122:
        if ((v72 & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v37)
        {
          goto LABEL_79;
        }

        goto LABEL_126;
      }
    }

    else
    {
      v52 = 1;
    }

    v54 = v71;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v61, &v69, v54);
      mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v59, &v66, v68);
      mlir::constFoldBinaryOp<mlir::IntegerAttr,llvm::APInt,mlir::ub::PoisonAttr,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MinUIOp::fold(mlir::arith::MinUIOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APInt,llvm::APInt)#1}::operator()(&v63, &v61, &v59);
      if (v60 >= 0x41 && v59)
      {
        MEMORY[0x25F891010](v59, 0x1000C8000313F17);
      }

      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      if (v65 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v83, &v63);
      if ((v65 & 1) != 0 && v64 >= 0x41 && v63)
      {
        MEMORY[0x25F891010](v63, 0x1000C8000313F17);
      }

      v54 = ++v71;
      ++v68;
      if (!--v52)
      {
        goto LABEL_114;
      }
    }

    v11 = 0;
    goto LABEL_116;
  }

LABEL_80:
  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

unint64_t mlir::arith::MulFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v68 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v4)
  {
    goto LABEL_5;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v68, v4) & 1) == 0)
  {
    v3 = *(a2 + 48);
LABEL_5:
    v7 = *v3;
    if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v8 = v3[1];
    if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_41;
    }

    if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
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
      goto LABEL_54;
    }

    v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = (*v13)(v13, v14);
    v7 = 0;
    if (!v11 || !v15 || v15 != v11)
    {
      goto LABEL_55;
    }

    v63 = v11;
    v8 = *v3;
    if (*v3)
    {
      if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_41:
        v7 = v8;
LABEL_55:
        result = v7 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v16 = v3[1];
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v7 = v3[1];
    }

    else
    {
      v7 = 0;
    }

    if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v18 = *v8;
    v19 = *(*v8 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v8[1] == v16[1])
      {
        llvm::APFloat::Storage::Storage(&v76, (v8 + 2));
        llvm::APFloat::Storage::Storage(v72, (v16 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v23 = mlir::FloatAttr::get(v63, &v68);
LABEL_45:
          v7 = v23;
          if (v71)
          {
            llvm::APFloat::Storage::~Storage(&v68);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v7 = 0;
      goto LABEL_55;
    }

    if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
    {
      v66[0] = *v3;
      v58 = v16;
      if (v8[1] == v16[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v72, &v58);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
          v23 = mlir::DenseElementsAttr::get(v21, v22, &v68, 1);
          goto LABEL_45;
        }
      }

      goto LABEL_54;
    }

    v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
    {
      goto LABEL_54;
    }

    v25 = *v3[1];
    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
    {
      goto LABEL_54;
    }

    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
    v29 = v28;
    v62[0] = v27;
    v62[1] = v28;
    v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
    v32 = v31;
    v61[0] = v30;
    v61[1] = v31;
    v33 = (**(v29 + 24))();
    if (v33 != (**(v32 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v72, v61);
    v34 = v79;
    if ((v79 & 1) == 0)
    {
      v7 = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v75 & 1) == 0)
    {
      v7 = 0;
LABEL_94:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_55;
    }

    LOWORD(v58) = v76;
    if (v76 == 1)
    {
      v59 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v59);
    }

    v60 = v78;
    v55[0] = v72[0];
    v55[1] = v72[1];
    if (v72[0] == 1)
    {
      v56 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v56);
    }

    v57 = v74;
    v68 = &v70;
    v69 = 0x400000000;
    v36 = (*(v29 + 16))(v29, v27);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v69))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
    }

    v43 = (*(v29 + 16))(v29, v27);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_82:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
        v7 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
        if ((v55[0] & 1) == 0)
        {
          v53 = v56;
          v56 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v58 & 1) == 0)
        {
          v54 = v59;
          v59 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_90:
        if ((v72[0] & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v34)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v60;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, v55, v57);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::MulFOp::fold(mlir::arith::MulFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
      llvm::APFloat::Storage::~Storage(v64);
      llvm::APFloat::Storage::~Storage(v65);
      if (v67 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
      if (v67)
      {
        llvm::APFloat::Storage::~Storage(v66);
      }

      v50 = ++v60;
      ++v57;
      if (!--v48)
      {
        goto LABEL_82;
      }
    }

    v7 = 0;
    goto LABEL_84;
  }

  result = *(*(*a1 + 72) + 24) | 4;
LABEL_56:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::DivFOp::fold(uint64_t a1, uint64_t a2)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = v3[1];
  v68 = mlir::m_OneFloat(void)::{lambda(llvm::APFloat const&)#1}::__invoke;
  if (!v4)
  {
    goto LABEL_5;
  }

  if ((mlir::detail::constant_float_predicate_matcher::match(&v68, v4) & 1) == 0)
  {
    v3 = *(a2 + 48);
LABEL_5:
    v7 = *v3;
    if (*v3 && *(*v7 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v8 = v3[1];
    if (v8 && *(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_41;
    }

    if (v7 && (v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v3)) != 0)
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
      goto LABEL_54;
    }

    v14 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v12);
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = (*v13)(v13, v14);
    v7 = 0;
    if (!v11 || !v15 || v15 != v11)
    {
      goto LABEL_55;
    }

    v63 = v11;
    v8 = *v3;
    if (*v3)
    {
      if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
      {
LABEL_41:
        v7 = v8;
LABEL_55:
        result = v7 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_56;
      }
    }

    v16 = v3[1];
    if (!v16)
    {
      goto LABEL_54;
    }

    v17 = *(*v16 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v7 = v3[1];
    }

    else
    {
      v7 = 0;
    }

    if (!v8 || v17 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_55;
    }

    v18 = *v8;
    v19 = *(*v8 + 136);
    if (v17 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v19 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v8[1] == v16[1])
      {
        llvm::APFloat::Storage::Storage(&v76, (v8 + 2));
        llvm::APFloat::Storage::Storage(v72, (v16 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v23 = mlir::FloatAttr::get(v63, &v68);
LABEL_45:
          v7 = v23;
          if (v71)
          {
            llvm::APFloat::Storage::~Storage(&v68);
          }

          goto LABEL_55;
        }
      }

LABEL_54:
      v7 = 0;
      goto LABEL_55;
    }

    if ((v19 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v19 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v8 + 24) == 1 && (v17 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v17 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v16 + 24) == 1)
    {
      v66[0] = *v3;
      v58 = v16;
      if (v8[1] == v16[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v76, v66);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(v72, &v58);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v68, &v76, v72);
        llvm::APFloat::Storage::~Storage(v72);
        llvm::APFloat::Storage::~Storage(&v76);
        if (v71 == 1)
        {
          v21 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
          v23 = mlir::DenseElementsAttr::get(v21, v22, &v68, 1);
          goto LABEL_45;
        }
      }

      goto LABEL_54;
    }

    v24 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v18 + 8, v24))
    {
      goto LABEL_54;
    }

    v25 = *v3[1];
    v26 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v25 + 8, v26))
    {
      goto LABEL_54;
    }

    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v3);
    v29 = v28;
    v62[0] = v27;
    v62[1] = v28;
    v30 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v3[1]);
    v32 = v31;
    v61[0] = v30;
    v61[1] = v31;
    v33 = (**(v29 + 24))();
    if (v33 != (**(v32 + 24))())
    {
      goto LABEL_54;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v76, v62);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(v72, v61);
    v34 = v79;
    if ((v79 & 1) == 0)
    {
      v7 = 0;
      if ((v75 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_90;
    }

    if ((v75 & 1) == 0)
    {
      v7 = 0;
LABEL_94:
      if ((v76 & 1) == 0 && v77)
      {
        (*(*v77 + 8))(v77);
      }

      goto LABEL_55;
    }

    LOWORD(v58) = v76;
    if (v76 == 1)
    {
      v59 = v77;
    }

    else
    {
      (*(*v77 + 16))(&v59);
    }

    v60 = v78;
    v55[0] = v72[0];
    v55[1] = v72[1];
    if (v72[0] == 1)
    {
      v56 = v73;
    }

    else
    {
      (*(*v73 + 16))(&v56);
    }

    v57 = v74;
    v68 = &v70;
    v69 = 0x400000000;
    v36 = (*(v29 + 16))(v29, v27);
    v38 = (*(v37 + 24))(v37, v36);
    if (v39)
    {
      v40 = 8 * v39;
      v41 = 1;
      do
      {
        v42 = *v38++;
        v41 *= v42;
        v40 -= 8;
      }

      while (v40);
    }

    else
    {
      v41 = 1;
    }

    if (v41 > HIDWORD(v69))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v68, v41);
    }

    v43 = (*(v29 + 16))(v29, v27);
    v45 = (*(v44 + 24))(v44, v43);
    if (v46)
    {
      v47 = 8 * v46;
      v48 = 1;
      do
      {
        v49 = *v45++;
        v48 *= v49;
        v47 -= 8;
      }

      while (v47);
      if (!v48)
      {
LABEL_82:
        v51 = llvm::cast<mlir::ShapedType,mlir::Type>(&v63);
        v7 = mlir::DenseElementsAttr::get(v51, v52, v68, v69);
LABEL_84:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v68);
        if ((v55[0] & 1) == 0)
        {
          v53 = v56;
          v56 = 0;
          if (v53)
          {
            (*(*v53 + 8))(v53);
          }
        }

        if ((v58 & 1) == 0)
        {
          v54 = v59;
          v59 = 0;
          if (v54)
          {
            (*(*v54 + 8))(v54);
          }
        }

LABEL_90:
        if ((v72[0] & 1) == 0 && v73)
        {
          (*(*v73 + 8))(v73);
        }

        if (!v34)
        {
          goto LABEL_55;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v48 = 1;
    }

    v50 = v60;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v65, &v58, v50);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v64, v55, v57);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::DivFOp::fold(mlir::arith::DivFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v66, v65, v64);
      llvm::APFloat::Storage::~Storage(v64);
      llvm::APFloat::Storage::~Storage(v65);
      if (v67 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v68, v66);
      if (v67)
      {
        llvm::APFloat::Storage::~Storage(v66);
      }

      v50 = ++v60;
      ++v57;
      if (!--v48)
      {
        goto LABEL_82;
      }
    }

    v7 = 0;
    goto LABEL_84;
  }

  result = *(*(*a1 + 72) + 24) | 4;
LABEL_56:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t mlir::arith::RemFOp::fold(uint64_t a1, uint64_t a2)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  v3 = *v2;
  if (*v2 && *(*v3 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_54;
  }

  v4 = v2[1];
  if (v4 && *(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    goto LABEL_40;
  }

  if (v3 && (v6 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(*v2)) != 0)
  {
    v7 = (*v5)(v5, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v2[1];
  if (!v8)
  {
    goto LABEL_53;
  }

  v10 = llvm::DefaultDoCastIfPossible<mlir::TypedAttr,mlir::Attribute,llvm::CastInfo<mlir::TypedAttr,mlir::Attribute,void>>::doCastIfPossible(v8);
  if (!v10)
  {
    goto LABEL_53;
  }

  v11 = (*v9)(v9, v10);
  v3 = 0;
  if (!v7 || !v11 || v11 != v7)
  {
    goto LABEL_54;
  }

  v61 = v7;
  v4 = *v2;
  if (*v2)
  {
    if (*(*v4 + 136) == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
LABEL_40:
      v3 = v4;
      goto LABEL_54;
    }
  }

  v12 = v2[1];
  if (!v12)
  {
    goto LABEL_53;
  }

  v13 = *(*v12 + 136);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v3 = v2[1];
  }

  else
  {
    v3 = 0;
  }

  if (v4 && v13 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
  {
    v14 = *v4;
    v15 = *(*v4 + 136);
    if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id && v15 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      if (v4[1] == v12[1])
      {
        llvm::APFloat::Storage::Storage(&v74, (v4 + 2));
        llvm::APFloat::Storage::Storage(&v70, (v12 + 2));
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v66, &v74, &v70);
        llvm::APFloat::Storage::~Storage(&v70);
        llvm::APFloat::Storage::~Storage(&v74);
        if (v69 == 1)
        {
          v20 = mlir::FloatAttr::get(v61, &v66);
LABEL_44:
          v3 = v20;
          if (v69)
          {
            llvm::APFloat::Storage::~Storage(&v66);
          }

          goto LABEL_54;
        }
      }

LABEL_53:
      v3 = 0;
      goto LABEL_54;
    }

    v17 = v15 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v15 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v4 + 24) == 1 && (v13 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id) && *(v12 + 24) == 1)
    {
      v64[0] = *v2;
      v56 = v12;
      if (v4[1] == v12[1])
      {
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v74, v64);
        mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v70, &v56);
        mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(&v66, &v74, &v70);
        llvm::APFloat::Storage::~Storage(&v70);
        llvm::APFloat::Storage::~Storage(&v74);
        if (v69 == 1)
        {
          v18 = llvm::cast<mlir::ShapedType,mlir::Type>(&v61);
          v20 = mlir::DenseElementsAttr::get(v18, v19, &v66, 1);
          goto LABEL_44;
        }
      }

      goto LABEL_53;
    }

    v21 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v14 + 8, v21))
    {
      goto LABEL_53;
    }

    v22 = *v2[1];
    v23 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID();
    if (!mlir::detail::InterfaceMap::lookup(v22 + 8, v23))
    {
      goto LABEL_53;
    }

    v24 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(*v2);
    v26 = v25;
    v60[0] = v24;
    v60[1] = v25;
    v27 = llvm::cast<mlir::ElementsAttr,mlir::Attribute>(v2[1]);
    v29 = v28;
    v59[0] = v27;
    v59[1] = v28;
    v30 = (**(v26 + 24))();
    if (v30 != (**(v29 + 24))())
    {
      goto LABEL_53;
    }

    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v74, v60);
    mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v70, v59);
    v31 = v77;
    if ((v77 & 1) == 0)
    {
      v3 = 0;
      if ((v73 & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_88:
      if ((v70 & 1) == 0 && v71)
      {
        (*(*v71 + 8))(v71);
      }

      if (v31)
      {
        goto LABEL_92;
      }

      goto LABEL_54;
    }

    if ((v73 & 1) == 0)
    {
      v3 = 0;
LABEL_92:
      if ((v74 & 1) == 0 && v75)
      {
        (*(*v75 + 8))(v75);
      }

      goto LABEL_54;
    }

    LOWORD(v56) = v74;
    if (v74 == 1)
    {
      v57 = v75;
    }

    else
    {
      (*(*v75 + 16))(&v57);
    }

    v58 = v76;
    v53 = v70;
    if (v70 == 1)
    {
      v54 = v71;
    }

    else
    {
      (*(*v71 + 16))(&v54);
    }

    v55 = v72;
    v66 = &v68;
    v67 = 0x400000000;
    v34 = (*(v26 + 16))(v26, v24);
    v36 = (*(v35 + 24))(v35, v34);
    if (v37)
    {
      v38 = 8 * v37;
      v39 = 1;
      do
      {
        v40 = *v36++;
        v39 *= v40;
        v38 -= 8;
      }

      while (v38);
    }

    else
    {
      v39 = 1;
    }

    if (v39 > HIDWORD(v67))
    {
      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v66, v39);
    }

    v41 = (*(v26 + 16))(v26, v24);
    v43 = (*(v42 + 24))(v42, v41);
    if (v44)
    {
      v45 = 8 * v44;
      v46 = 1;
      do
      {
        v47 = *v43++;
        v46 *= v47;
        v45 -= 8;
      }

      while (v45);
      if (!v46)
      {
LABEL_80:
        v49 = llvm::cast<mlir::ShapedType,mlir::Type>(&v61);
        v3 = mlir::DenseElementsAttr::get(v49, v50, v66, v67);
LABEL_82:
        llvm::SmallVector<llvm::APFloat,4u>::~SmallVector(&v66);
        if ((v53 & 1) == 0)
        {
          v51 = v54;
          v54 = 0;
          if (v51)
          {
            (*(*v51 + 8))(v51);
          }
        }

        if ((v56 & 1) == 0)
        {
          v52 = v57;
          v57 = 0;
          if (v52)
          {
            (*(*v52 + 8))(v52);
          }
        }

        goto LABEL_88;
      }
    }

    else
    {
      v46 = 1;
    }

    v48 = v58;
    while (1)
    {
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v63, &v56, v48);
      mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v62, &v53, v55);
      mlir::constFoldBinaryOp<mlir::FloatAttr,llvm::APFloat,mlir::ub::PoisonAttr,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0>(llvm::ArrayRef<mlir::Attribute>,mlir::arith::RemFOp::fold(mlir::arith::RemFOpGenericAdaptor<llvm::ArrayRef<mlir::Attribute>>)::$_0 &&)::{lambda(llvm::APFloat,llvm::APFloat)#1}::operator()(v64, v63, v62);
      llvm::APFloat::Storage::~Storage(v62);
      llvm::APFloat::Storage::~Storage(v63);
      if (v65 != 1)
      {
        break;
      }

      llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v66, v64);
      if (v65)
      {
        llvm::APFloat::Storage::~Storage(v64);
      }

      v48 = ++v58;
      ++v55;
      if (!--v46)
      {
        goto LABEL_80;
      }
    }

    v3 = 0;
    goto LABEL_82;
  }

LABEL_54:
  v32 = *MEMORY[0x277D85DE8];
  return v3 & 0xFFFFFFFFFFFFFFFBLL;
}

unint64_t mlir::arith::ExtUIOp::fold(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 72);
  v5 = v4[3];
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_9:
    v8 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
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

    v13 = **(a2 + 40);
    if (!v13)
    {
      goto LABEL_90;
    }

    v14 = *(*v13 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_90;
    }

    v15 = *(v12 + 2);
    v16 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      LODWORD(v62) = *(v13 + 24);
      if (v62 > 0x40)
      {
        operator new[]();
      }

      v61 = *(v13 + 16);
      llvm::APInt::zext(&v61, v15 & 0x3FFFFFFF, &v64);
      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v13 = mlir::IntegerAttr::get(v16, &v64);
      if (v65 < 0x41 || !v64)
      {
        goto LABEL_90;
      }

LABEL_63:
      MEMORY[0x25F891010]();
      goto LABEL_90;
    }

    v17 = v14 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v13 + 24) == 1)
    {
      v57 = **(a2 + 40);
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v57, &v64);
      v63 = v66;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v64, &v61);
      llvm::APInt::zext(&v61, v15 & 0x3FFFFFFF, &v64);
      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      if (v16)
      {
        v18 = *v16;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      if ((*(v20 + 16))(v20, v16))
      {
        v37 = (*(v20 + 24))(v20, v16);
        if (!v38)
        {
LABEL_59:
          v13 = mlir::DenseElementsAttr::get(v16, v20, &v64, 1);
LABEL_61:
          if (v65 < 0x41 || !v64)
          {
            goto LABEL_90;
          }

          goto LABEL_63;
        }

        v39 = 8 * v38;
        while (*v37 != 0x8000000000000000)
        {
          ++v37;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_59;
          }
        }
      }

      v13 = 0;
      goto LABEL_61;
    }

    v13 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v13);
    v60[0] = v13;
    v60[1] = v26;
    if (v13)
    {
      v27 = v26;
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v61, v60);
      if (BYTE8(v63) == 1)
      {
        v28 = v61;
        LOWORD(v57) = v61;
        v29 = v62;
        if (v61 == 1)
        {
          v58 = v62;
        }

        else
        {
          (*(*v62 + 16))(&v58, v62);
        }

        v59 = v63;
        v64 = &v66;
        v65 = 0x300000000;
        v30 = (*(v27 + 16))(v27, v13);
        v32 = (*(v31 + 24))(v31, v30);
        if (v33)
        {
          v34 = 8 * v33;
          v35 = 1;
          do
          {
            v36 = *v32++;
            v35 *= v36;
            v34 -= 8;
          }

          while (v34);
        }

        else
        {
          v35 = 1;
        }

        if (v35 > HIDWORD(v65))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v64, v35);
        }

        v40 = (*(v27 + 16))(v27, v13);
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
LABEL_81:
            if (v16)
            {
              v48 = *v16;
              v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v50 = mlir::detail::InterfaceMap::lookup(v48 + 8, v49);
            }

            else
            {
              v50 = 0;
            }

            v13 = mlir::DenseElementsAttr::get(v16, v50, v64, v65);
            llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
            if ((v57 & 1) == 0)
            {
              v51 = v58;
              v58 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            if ((v28 & 1) == 0 && v29)
            {
              (*(*v29 + 8))(v29);
            }

            goto LABEL_90;
          }
        }

        else
        {
          v45 = 1;
        }

        v47 = v59;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v53, &v57, v47);
          llvm::APInt::zext(&v53, v15 & 0x3FFFFFFF, &v55);
          if (v54 >= 0x41 && v53)
          {
            MEMORY[0x25F891010](v53, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v64, &v55);
          if (v56 >= 0x41 && v55)
          {
            MEMORY[0x25F891010](v55, 0x1000C8000313F17);
          }

          v47 = ++v59;
          --v45;
        }

        while (v45);
        goto LABEL_81;
      }

      v13 = 0;
    }

LABEL_90:
    result = v13 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_91;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
  {
    goto LABEL_9;
  }

  v21 = *(*(v7 + 72) + 24);
  v22 = v4[1];
  if (v22)
  {
    v23 = *v4;
    *v22 = *v4;
    if (v23)
    {
      *(v23 + 8) = v4[1];
    }
  }

  v4[3] = v21;
  v4[1] = v21;
  v24 = *v21;
  *v4 = *v21;
  if (v24)
  {
    *(v24 + 8) = v4;
  }

  *v21 = v4;
  result = (*a1 - 16) | 4;
LABEL_91:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

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

BOOL mlir::arith::ExtUIOp::verify(void ***this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
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

  if ((v6[1] & 0x3FFFFFFFu) >= (v11[1] & 0x3FFFFFFFu))
  {
    v21 = "result type ";
    v22 = 259;
    mlir::Operation::emitError(&v25, v1, &v21);
    if (v25)
    {
      v23 = 4;
      v24 = v11;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
      v14 = v27 + 24 * v28;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v28;
      if (v25)
      {
        mlir::Diagnostic::operator<<<34ul>(&v26, " must be wider than operand type ");
        if (v25)
        {
          v23 = 4;
          v24 = v6;
          v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
          v17 = v27 + 24 * v28;
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          ++v28;
        }
      }
    }

    v12 = (v29 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::arith::ExtSIOp::fold(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(*a1 + 72);
  v5 = v4[3];
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
LABEL_9:
    v8 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
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

    v13 = **(a2 + 40);
    if (!v13)
    {
      goto LABEL_90;
    }

    v14 = *(*v13 + 136);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_90;
    }

    v15 = *(v12 + 2);
    v16 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      LODWORD(v62) = *(v13 + 24);
      if (v62 > 0x40)
      {
        operator new[]();
      }

      v61 = *(v13 + 16);
      llvm::APInt::sext(&v61, v15 & 0x3FFFFFFF, &v64);
      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      v13 = mlir::IntegerAttr::get(v16, &v64);
      if (v65 < 0x41 || !v64)
      {
        goto LABEL_90;
      }

LABEL_63:
      MEMORY[0x25F891010]();
      goto LABEL_90;
    }

    v17 = v14 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v14 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v17 && *(v13 + 24) == 1)
    {
      v57 = **(a2 + 40);
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v57, &v64);
      v63 = v66;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v64, &v61);
      llvm::APInt::sext(&v61, v15 & 0x3FFFFFFF, &v64);
      if (v62 >= 0x41 && v61)
      {
        MEMORY[0x25F891010](v61, 0x1000C8000313F17);
      }

      if (v16)
      {
        v18 = *v16;
        v19 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v20 = mlir::detail::InterfaceMap::lookup(v18 + 8, v19);
      }

      else
      {
        v20 = 0;
      }

      if ((*(v20 + 16))(v20, v16))
      {
        v37 = (*(v20 + 24))(v20, v16);
        if (!v38)
        {
LABEL_59:
          v13 = mlir::DenseElementsAttr::get(v16, v20, &v64, 1);
LABEL_61:
          if (v65 < 0x41 || !v64)
          {
            goto LABEL_90;
          }

          goto LABEL_63;
        }

        v39 = 8 * v38;
        while (*v37 != 0x8000000000000000)
        {
          ++v37;
          v39 -= 8;
          if (!v39)
          {
            goto LABEL_59;
          }
        }
      }

      v13 = 0;
      goto LABEL_61;
    }

    v13 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v13);
    v60[0] = v13;
    v60[1] = v26;
    if (v13)
    {
      v27 = v26;
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v61, v60);
      if (BYTE8(v63) == 1)
      {
        v28 = v61;
        LOWORD(v57) = v61;
        v29 = v62;
        if (v61 == 1)
        {
          v58 = v62;
        }

        else
        {
          (*(*v62 + 16))(&v58, v62);
        }

        v59 = v63;
        v64 = &v66;
        v65 = 0x300000000;
        v30 = (*(v27 + 16))(v27, v13);
        v32 = (*(v31 + 24))(v31, v30);
        if (v33)
        {
          v34 = 8 * v33;
          v35 = 1;
          do
          {
            v36 = *v32++;
            v35 *= v36;
            v34 -= 8;
          }

          while (v34);
        }

        else
        {
          v35 = 1;
        }

        if (v35 > HIDWORD(v65))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v64, v35);
        }

        v40 = (*(v27 + 16))(v27, v13);
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
LABEL_81:
            if (v16)
            {
              v48 = *v16;
              v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v50 = mlir::detail::InterfaceMap::lookup(v48 + 8, v49);
            }

            else
            {
              v50 = 0;
            }

            v13 = mlir::DenseElementsAttr::get(v16, v50, v64, v65);
            llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v64);
            if ((v57 & 1) == 0)
            {
              v51 = v58;
              v58 = 0;
              if (v51)
              {
                (*(*v51 + 8))(v51);
              }
            }

            if ((v28 & 1) == 0 && v29)
            {
              (*(*v29 + 8))(v29);
            }

            goto LABEL_90;
          }
        }

        else
        {
          v45 = 1;
        }

        v47 = v59;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v53, &v57, v47);
          llvm::APInt::sext(&v53, v15 & 0x3FFFFFFF, &v55);
          if (v54 >= 0x41 && v53)
          {
            MEMORY[0x25F891010](v53, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v64, &v55);
          if (v56 >= 0x41 && v55)
          {
            MEMORY[0x25F891010](v55, 0x1000C8000313F17);
          }

          v47 = ++v59;
          --v45;
        }

        while (v45);
        goto LABEL_81;
      }

      v13 = 0;
    }

LABEL_90:
    result = v13 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_91;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16) + 120;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = v5 + 16 * v6 + 16;
  }

  if (*(*(v7 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_9;
  }

  v21 = *(*(v7 + 72) + 24);
  v22 = v4[1];
  if (v22)
  {
    v23 = *v4;
    *v22 = *v4;
    if (v23)
    {
      *(v23 + 8) = v4[1];
    }
  }

  v4[3] = v21;
  v4[1] = v21;
  v24 = *v21;
  *v4 = *v21;
  if (v24)
  {
    *(v24 + 8) = v4;
  }

  *v21 = v4;
  result = (*a1 - 16) | 4;
LABEL_91:
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL mlir::arith::ExtSIOp::verify(void ***this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
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

  if ((v6[1] & 0x3FFFFFFFu) >= (v11[1] & 0x3FFFFFFFu))
  {
    v21 = "result type ";
    v22 = 259;
    mlir::Operation::emitError(&v25, v1, &v21);
    if (v25)
    {
      v23 = 4;
      v24 = v11;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
      v14 = v27 + 24 * v28;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v28;
      if (v25)
      {
        mlir::Diagnostic::operator<<<34ul>(&v26, " must be wider than operand type ");
        if (v25)
        {
          v23 = 4;
          v24 = v6;
          v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
          v17 = v27 + 24 * v28;
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          ++v28;
        }
      }
    }

    v12 = (v29 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::arith::ExtFOp::fold(uint64_t *a1, uint64_t a2)
{
  v80[3] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*(*a1 + 72) + 24);
  if ((~*(v5 + 8) & 7) == 0)
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v5 + 8) & 7;
  if (v6 == 6)
  {
    v7 = v5 + 24 * *(v5 + 16);
    v8 = v7 + 120;
    if (v7 == -120)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = v5 + 16 * v6 + 16;
  }

  if (*(*(v8 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::TruncFOp,void>::id)
  {
    goto LABEL_17;
  }

  v9 = *(*(v8 + 72) + 24);
  if ((*(v4 - 8) ^ *(v9 + 8)) > 7)
  {
    goto LABEL_17;
  }

  v10 = *(v8 + 16 * ((*(v8 + 44) >> 23) & 1) + 64);
  v11 = !v10 || (*(v10 + 8) & 0x20) == 0;
  v12 = *(v4 + 16 * ((*(v4 + 44) >> 23) & 1) + 64);
  if (!v12)
  {
    goto LABEL_17;
  }

  if ((*(v12 + 8) & 0x20) == 0)
  {
    v11 = 1;
  }

  if (v11)
  {
LABEL_17:
    v13 = (*(v4 - 8) & 0xFFFFFFFFFFFFFFF8);
    v14 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v13);
    v16 = v14;
    if (v14)
    {
      v14 = (*(v15 + 8))(v15, v14);
    }

    if (v16)
    {
      v13 = v14;
    }

    v17 = *v13;
    v18 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
    v19 = mlir::detail::InterfaceMap::lookup(v17 + 8, v18);
    v20 = (*v19)(v19, v13);
    v21 = **(a2 + 48);
    if (!v21)
    {
      goto LABEL_94;
    }

    v22 = *(*v21 + 136);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_94;
    }

    v23 = v20;
    v24 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v22 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
    {
      llvm::APFloat::Storage::Storage(v80, (v21 + 16));
      llvm::APFloat::Storage::Storage(&v74, v80);
      convertFloatValue(&v78, &v74, v23, 1);
      llvm::APFloat::Storage::~Storage(&v74);
      v35 = BYTE8(v79[0]);
      if (BYTE8(v79[0]))
      {
        v36 = &v78;
      }

      else
      {
        v36 = v80;
      }

      llvm::APFloat::Storage::Storage(&v70, v36);
      if (BYTE8(v79[0]) == 1)
      {
        llvm::APFloat::Storage::~Storage(&v78);
      }

      llvm::APFloat::Storage::~Storage(v80);
      if (v35)
      {
        v37 = mlir::FloatAttr::get(v24, &v70);
        goto LABEL_49;
      }

LABEL_92:
      v21 = 0;
      goto LABEL_93;
    }

    v25 = v22 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v22 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v25 && *(v21 + 24) == 1)
    {
      v64 = **(a2 + 48);
      mlir::DenseElementsAttr::tryGetFloatValues(&v64, &v78);
      v75 = v79[0];
      v76 = v79[1];
      v74 = v78;
      v77 = v79[2];
      llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v78, v80);
      llvm::APFloat::Storage::Storage(&v74, v80);
      convertFloatValue(&v78, &v74, v23, 1);
      llvm::APFloat::Storage::~Storage(&v74);
      v26 = BYTE8(v79[0]);
      if (BYTE8(v79[0]))
      {
        v27 = &v78;
      }

      else
      {
        v27 = v80;
      }

      llvm::APFloat::Storage::Storage(&v70, v27);
      if (BYTE8(v79[0]) == 1)
      {
        llvm::APFloat::Storage::~Storage(&v78);
      }

      llvm::APFloat::Storage::~Storage(v80);
      if (v26)
      {
        if (v24)
        {
          v28 = *v24;
          v29 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
          v30 = mlir::detail::InterfaceMap::lookup(v28 + 8, v29);
        }

        else
        {
          v30 = 0;
        }

        if ((*(v30 + 16))(v30, v24))
        {
          v60 = (*(v30 + 24))(v30, v24);
          if (v61)
          {
            v62 = 8 * v61;
            while (*v60 != 0x8000000000000000)
            {
              ++v60;
              v62 -= 8;
              if (!v62)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_92;
          }

LABEL_91:
          v37 = mlir::DenseElementsAttr::get(v24, v30, &v70, 1);
LABEL_49:
          v21 = v37;
LABEL_93:
          llvm::APFloat::Storage::~Storage(&v70);
          goto LABEL_94;
        }
      }

      goto LABEL_92;
    }

    v21 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v21);
    v67[0] = v21;
    v67[1] = v31;
    if (v21)
    {
      v32 = v31;
      mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v70, v67);
      if (v73 == 1)
      {
        v33 = v70;
        LOWORD(v64) = v70;
        v34 = v71;
        if (v70 == 1)
        {
          v65 = v71;
        }

        else
        {
          (*(*v71 + 16))(&v65, v71);
        }

        v66 = v72;
        *&v78 = v79;
        *(&v78 + 1) = 0x200000000;
        v39 = (*(v32 + 16))(v32, v21);
        v41 = (*(v40 + 24))(v40, v39);
        if (v42)
        {
          v43 = 8 * v42;
          v44 = 1;
          do
          {
            v45 = *v41++;
            v44 *= v45;
            v43 -= 8;
          }

          while (v43);
        }

        else
        {
          v44 = 1;
        }

        if (v44 > HIDWORD(v78))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v78, v44);
        }

        v46 = (*(v32 + 16))(v32, v21);
        v48 = (*(v47 + 24))(v47, v46);
        if (v49)
        {
          v50 = 8 * v49;
          v51 = 1;
          do
          {
            v52 = *v48++;
            v51 *= v52;
            v50 -= 8;
          }

          while (v50);
          if (!v51)
          {
LABEL_74:
            if (v24)
            {
              v56 = *v24;
              v57 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v58 = mlir::detail::InterfaceMap::lookup(v56 + 8, v57);
            }

            else
            {
              v58 = 0;
            }

            v21 = mlir::DenseElementsAttr::get(v24, v58, v78, DWORD2(v78));
LABEL_79:
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v78);
            if ((v64 & 1) == 0)
            {
              v59 = v65;
              v65 = 0;
              if (v59)
              {
                (*(*v59 + 8))(v59);
              }
            }

            if ((v33 & 1) == 0 && v34)
            {
              (*(*v34 + 8))(v34);
            }

            goto LABEL_94;
          }
        }

        else
        {
          v51 = 1;
        }

        v53 = v66;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v68, &v64, v53);
          llvm::APFloat::Storage::Storage(v80, v68);
          convertFloatValue(&v74, v80, v23, 1);
          llvm::APFloat::Storage::~Storage(v80);
          v54 = BYTE8(v75);
          if (BYTE8(v75))
          {
            v55 = &v74;
          }

          else
          {
            v55 = v68;
          }

          llvm::APFloat::Storage::Storage(v69, v55);
          if (BYTE8(v75) == 1)
          {
            llvm::APFloat::Storage::~Storage(&v74);
          }

          llvm::APFloat::Storage::~Storage(v68);
          if (!v54)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v78, v69);
          llvm::APFloat::Storage::~Storage(v69);
          v53 = ++v66;
          if (!--v51)
          {
            goto LABEL_74;
          }
        }

        llvm::APFloat::Storage::~Storage(v69);
        v21 = 0;
        goto LABEL_79;
      }

      v21 = 0;
    }

LABEL_94:
    result = v21 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_95;
  }

  result = v9 | 4;
LABEL_95:
  v63 = *MEMORY[0x277D85DE8];
  return result;
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

BOOL mlir::arith::ExtFOp::verify(void ***this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v2 = v3;
  }

  v6 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v6 = v7;
  }

  v10 = *v2;
  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  LODWORD(v10) = *((*v12)(v12, v2) + 12);
  v13 = *v6;
  v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v10 >= *((*v15)(v15, v6) + 12))
  {
    v25 = "result type ";
    v26 = 259;
    mlir::Operation::emitError(&v29, v1, &v25);
    if (v29)
    {
      v27 = 4;
      v28 = v6;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
      v18 = v31 + 24 * v32;
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++v32;
      if (v29)
      {
        mlir::Diagnostic::operator<<<34ul>(&v30, " must be wider than operand type ");
        if (v29)
        {
          v27 = 4;
          v28 = v2;
          v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
          v21 = v31 + 24 * v32;
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          ++v32;
        }
      }
    }

    v16 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  else
  {
    v16 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t mlir::arith::TruncIOp::fold(uint64_t *a1, uint64_t a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = v5[3];
  v7 = *(v6 + 8) & 7;
  if (v7 == 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v5[3];
  }

  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = *(v8 + 8) & 7;
  if (v9 == 6)
  {
    v10 = v8 + 24 * *(v8 + 16);
    if (v10 != -120 && *(*(v10 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
      goto LABEL_13;
    }

    v11 = v8 + 24 * *(v8 + 16) + 120;
    if (v8 + 24 * *(v8 + 16) == -120)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v12 = v8 + 16 * v9;
    if (*(*(v12 + 64) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::ExtUIOp,void>::id)
    {
LABEL_15:
      v13 = v8 + 16 * v9 + 16;
      goto LABEL_16;
    }

    v11 = v12 + 16;
  }

  if (*(*(v11 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::ExtSIOp,void>::id)
  {
    goto LABEL_35;
  }

LABEL_13:
  if (v9 != 6)
  {
    goto LABEL_15;
  }

  v13 = v8 + 24 * *(v8 + 16) + 120;
LABEL_16:
  v14 = *(*(v13 + 72) + 24);
  v15 = (*(v14 + 8) & 0xFFFFFFFFFFFFFFF8);
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

  v20 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
  v21 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v20);
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

  if ((v19[1] & 0x3FFFFFFFu) > (v24[1] & 0x3FFFFFFFu))
  {
    v25 = *(*a1 + 72);
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      *v26 = *v25;
      if (v27)
      {
        *(v27 + 8) = v25[1];
      }
    }

    v25[3] = v14;
    v25[1] = v14;
    v28 = *v14;
    *v25 = *v14;
    if (v28)
    {
      *(v28 + 8) = v25;
    }

    *v14 = v25;
    goto LABEL_75;
  }

  if (v19 == v24)
  {
    result = v14 | 4;
    goto LABEL_128;
  }

  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = v5[3];
  v7 = *(v6 + 8) & 7;
LABEL_35:
  if (v7 == 7)
  {
    v6 = 0;
  }

  if (!v6)
  {
    goto LABEL_43;
  }

  v29 = *(v6 + 8) & 7;
  if (v29 == 6)
  {
    v30 = v6 + 24 * *(v6 + 16);
    v31 = v30 + 120;
    if (v30 != -120 && *(*(v30 + 168) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
    {
      goto LABEL_69;
    }

LABEL_43:
    v33 = (*(v4 - 8) & 0xFFFFFFFFFFFFFFF8);
    v34 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v33);
    v36 = v34;
    if (v34)
    {
      v34 = (*(v35 + 8))(v35, v34);
    }

    if (v36)
    {
      v37 = v34;
    }

    else
    {
      v37 = v33;
    }

    v38 = **(a2 + 40);
    if (!v38)
    {
      goto LABEL_127;
    }

    v39 = *(*v38 + 136);
    if (v39 == &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      goto LABEL_127;
    }

    v40 = *(v37 + 2);
    v41 = (*(*a1 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      LODWORD(v87) = *(v38 + 24);
      if (v87 > 0x40)
      {
        operator new[]();
      }

      v86 = *(v38 + 16);
      llvm::APInt::trunc(&v86, v40 & 0x3FFFFFFF, &v89);
      if (v87 >= 0x41 && v86)
      {
        MEMORY[0x25F891010](v86, 0x1000C8000313F17);
      }

      v38 = mlir::IntegerAttr::get(v41, &v89);
      if (v90 < 0x41 || !v89)
      {
        goto LABEL_127;
      }

LABEL_100:
      MEMORY[0x25F891010]();
      goto LABEL_127;
    }

    v42 = v39 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v39 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
    if (v42 && *(v38 + 24) == 1)
    {
      v82 = **(a2 + 40);
      mlir::DenseElementsAttr::tryGetValues<llvm::APInt,void>(&v82, &v89);
      v88 = v91;
      mlir::DenseElementsAttr::IntElementIterator::operator*(&v89, &v86);
      llvm::APInt::trunc(&v86, v40 & 0x3FFFFFFF, &v89);
      if (v87 >= 0x41 && v86)
      {
        MEMORY[0x25F891010](v86, 0x1000C8000313F17);
      }

      if (v41)
      {
        v43 = *v41;
        v44 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
        v45 = mlir::detail::InterfaceMap::lookup(v43 + 8, v44);
      }

      else
      {
        v45 = 0;
      }

      if ((*(v45 + 16))(v45, v41))
      {
        v62 = (*(v45 + 24))(v45, v41);
        if (!v63)
        {
LABEL_96:
          v38 = mlir::DenseElementsAttr::get(v41, v45, &v89, 1);
LABEL_98:
          if (v90 < 0x41 || !v89)
          {
            goto LABEL_127;
          }

          goto LABEL_100;
        }

        v64 = 8 * v63;
        while (*v62 != 0x8000000000000000)
        {
          ++v62;
          v64 -= 8;
          if (!v64)
          {
            goto LABEL_96;
          }
        }
      }

      v38 = 0;
      goto LABEL_98;
    }

    v38 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v38);
    v85[0] = v38;
    v85[1] = v46;
    if (v38)
    {
      v47 = v46;
      mlir::ElementsAttr::try_value_begin<llvm::APInt>(&v86, v85);
      if (BYTE8(v88) == 1)
      {
        v48 = v86;
        LOWORD(v82) = v86;
        v49 = v87;
        if (v86 == 1)
        {
          v83 = v87;
        }

        else
        {
          (*(*v87 + 16))(&v83, v87);
        }

        v84 = v88;
        v89 = &v91;
        v90 = 0x300000000;
        v55 = (*(v47 + 16))(v47, v38);
        v57 = (*(v56 + 24))(v56, v55);
        if (v58)
        {
          v59 = 8 * v58;
          v60 = 1;
          do
          {
            v61 = *v57++;
            v60 *= v61;
            v59 -= 8;
          }

          while (v59);
        }

        else
        {
          v60 = 1;
        }

        if (v60 > HIDWORD(v90))
        {
          llvm::SmallVectorTemplateBase<llvm::APInt,false>::grow(&v89, v60);
        }

        v65 = (*(v47 + 16))(v47, v38);
        v67 = (*(v66 + 24))(v66, v65);
        if (v68)
        {
          v69 = 8 * v68;
          v70 = 1;
          do
          {
            v71 = *v67++;
            v70 *= v71;
            v69 -= 8;
          }

          while (v69);
          if (!v70)
          {
LABEL_118:
            if (v41)
            {
              v73 = *v41;
              v74 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v75 = mlir::detail::InterfaceMap::lookup(v73 + 8, v74);
            }

            else
            {
              v75 = 0;
            }

            v38 = mlir::DenseElementsAttr::get(v41, v75, v89, v90);
            llvm::SmallVector<llvm::APInt,3u>::~SmallVector(&v89);
            if ((v82 & 1) == 0)
            {
              v76 = v83;
              v83 = 0;
              if (v76)
              {
                (*(*v76 + 8))(v76);
              }
            }

            if ((v48 & 1) == 0 && v49)
            {
              (*(*v49 + 8))(v49);
            }

            goto LABEL_127;
          }
        }

        else
        {
          v70 = 1;
        }

        v72 = v84;
        do
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APInt>(&v78, &v82, v72);
          llvm::APInt::trunc(&v78, v40 & 0x3FFFFFFF, &v80);
          if (v79 >= 0x41 && v78)
          {
            MEMORY[0x25F891010](v78, 0x1000C8000313F17);
          }

          llvm::SmallVectorTemplateBase<llvm::APInt,false>::push_back(&v89, &v80);
          if (v81 >= 0x41 && v80)
          {
            MEMORY[0x25F891010](v80, 0x1000C8000313F17);
          }

          v72 = ++v84;
          --v70;
        }

        while (v70);
        goto LABEL_118;
      }

      v38 = 0;
    }

LABEL_127:
    result = v38 & 0xFFFFFFFFFFFFFFFBLL;
    goto LABEL_128;
  }

  v32 = v6 + 16 * v29;
  if (*(*(v32 + 64) + 16) != &mlir::detail::TypeIDResolver<mlir::arith::TruncIOp,void>::id)
  {
    goto LABEL_43;
  }

  v31 = v32 + 16;
LABEL_69:
  v50 = *(*(v31 + 72) + 24);
  v51 = v5[1];
  if (v51)
  {
    v52 = *v5;
    *v51 = *v5;
    if (v52)
    {
      *(v52 + 8) = v5[1];
    }
  }

  v5[3] = v50;
  v5[1] = v50;
  v53 = *v50;
  *v5 = *v50;
  if (v53)
  {
    *(v53 + 8) = v5;
  }

  *v50 = v5;
LABEL_75:
  result = (*a1 - 16) | 4;
LABEL_128:
  v77 = *MEMORY[0x277D85DE8];
  return result;
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

BOOL mlir::arith::TruncIOp::verify(void ***this)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v7 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
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

  if ((v6[1] & 0x3FFFFFFFu) <= (v11[1] & 0x3FFFFFFFu))
  {
    v21 = "result type ";
    v22 = 259;
    mlir::Operation::emitError(&v25, v1, &v21);
    if (v25)
    {
      v23 = 4;
      v24 = v11;
      v13 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
      v14 = v27 + 24 * v28;
      v15 = *v13;
      *(v14 + 16) = *(v13 + 16);
      *v14 = v15;
      ++v28;
      if (v25)
      {
        mlir::Diagnostic::operator<<<36ul>(&v26, " must be shorter than operand type ");
        if (v25)
        {
          v23 = 4;
          v24 = v6;
          v16 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v27, &v23, 1);
          v17 = v27 + 24 * v28;
          v18 = *v16;
          *(v17 + 16) = *(v16 + 16);
          *v17 = v18;
          ++v28;
        }
      }
    }

    v12 = (v29 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v25);
  }

  else
  {
    v12 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

unint64_t mlir::arith::TruncFOp::fold(mlir::arith::TruncFOp **a1, uint64_t a2)
{
  v80[3] = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 - 1) & 0xFFFFFFFFFFFFFFF8);
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

  v8 = *v4;
  v9 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v10 = mlir::detail::InterfaceMap::lookup(v8 + 8, v9);
  v11 = (*v10)(v10, v4);
  v12 = **(a2 + 56);
  if (v12)
  {
    v13 = *(*v12 + 136);
    if (v13 != &mlir::detail::TypeIDResolver<mlir::ub::PoisonAttr,void>::id)
    {
      v14 = v11;
      v15 = (*(*a1 - 1) & 0xFFFFFFFFFFFFFFF8);
      if (v13 == &mlir::detail::TypeIDResolver<mlir::FloatAttr,void>::id)
      {
        llvm::APFloat::Storage::Storage(v80, (v12 + 16));
        Roundingmode = mlir::arith::TruncFOp::getRoundingmode(*a1);
        v29 = 0;
        if (Roundingmode > 0x100000000)
        {
          v29 = Roundingmode;
        }

        v30 = 0x400020301uLL >> (8 * v29);
        llvm::APFloat::Storage::Storage(&v74, v80);
        convertFloatValue(&v78, &v74, v14, v30 & 7);
        llvm::APFloat::Storage::~Storage(&v74);
        v31 = BYTE8(v79[0]);
        if (BYTE8(v79[0]))
        {
          v32 = &v78;
        }

        else
        {
          v32 = v80;
        }

        llvm::APFloat::Storage::Storage(&v70, v32);
        if (BYTE8(v79[0]) == 1)
        {
          llvm::APFloat::Storage::~Storage(&v78);
        }

        llvm::APFloat::Storage::~Storage(v80);
        if (v31)
        {
          v33 = mlir::FloatAttr::get(v15, &v70);
          goto LABEL_37;
        }

LABEL_82:
        v12 = 0;
        goto LABEL_83;
      }

      v16 = v13 == &mlir::detail::TypeIDResolver<mlir::DenseIntOrFPElementsAttr,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::DenseStringElementsAttr,void>::id;
      if (v16 && *(v12 + 24) == 1)
      {
        v64 = v12;
        mlir::DenseElementsAttr::tryGetFloatValues(&v64, &v78);
        v75 = v79[0];
        v76 = v79[1];
        v74 = v78;
        v77 = v79[2];
        llvm::mapped_iterator_base<mlir::DenseElementsAttr::FloatElementIterator,mlir::DenseElementsAttr::IntElementIterator,llvm::APFloat>::operator*(&v78, v80);
        v17 = mlir::arith::TruncFOp::getRoundingmode(*a1);
        v18 = 0;
        if (v17 > 0x100000000)
        {
          v18 = v17;
        }

        v19 = 0x400020301uLL >> (8 * v18);
        llvm::APFloat::Storage::Storage(&v74, v80);
        convertFloatValue(&v78, &v74, v14, v19 & 7);
        llvm::APFloat::Storage::~Storage(&v74);
        v20 = BYTE8(v79[0]);
        if (BYTE8(v79[0]))
        {
          v21 = &v78;
        }

        else
        {
          v21 = v80;
        }

        llvm::APFloat::Storage::Storage(&v70, v21);
        if (BYTE8(v79[0]) == 1)
        {
          llvm::APFloat::Storage::~Storage(&v78);
        }

        llvm::APFloat::Storage::~Storage(v80);
        if (v20)
        {
          if (v15)
          {
            v22 = *v15;
            v23 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
            v24 = mlir::detail::InterfaceMap::lookup(v22 + 8, v23);
          }

          else
          {
            v24 = 0;
          }

          if ((*(v24 + 16))(v24, v15))
          {
            v58 = (*(v24 + 24))(v24, v15);
            if (v59)
            {
              v60 = 8 * v59;
              while (*v58 != 0x8000000000000000)
              {
                ++v58;
                v60 -= 8;
                if (!v60)
                {
                  goto LABEL_81;
                }
              }

              goto LABEL_82;
            }

LABEL_81:
            v33 = mlir::DenseElementsAttr::get(v15, v24, &v70, 1);
LABEL_37:
            v12 = v33;
LABEL_83:
            llvm::APFloat::Storage::~Storage(&v70);
            goto LABEL_84;
          }
        }

        goto LABEL_82;
      }

      v12 = llvm::DefaultDoCastIfPossible<mlir::ElementsAttr,mlir::Attribute const,llvm::CastInfo<mlir::ElementsAttr,mlir::Attribute const,void>>::doCastIfPossible(v12);
      v67[0] = v12;
      v67[1] = v25;
      if (v12)
      {
        v26 = v25;
        mlir::ElementsAttr::try_value_begin<llvm::APFloat>(&v70, v67);
        if (v73 != 1)
        {
          v12 = 0;
          goto LABEL_84;
        }

        LOWORD(v64) = v70;
        v63 = v70;
        v27 = v71;
        if (v70 == 1)
        {
          v65 = v71;
        }

        else
        {
          (*(*v71 + 16))(&v65, v71);
        }

        v66 = v72;
        *&v78 = v79;
        *(&v78 + 1) = 0x200000000;
        v34 = (*(v26 + 16))(v26, v12);
        v36 = (*(v35 + 24))(v35, v34);
        if (v37)
        {
          v38 = 8 * v37;
          v39 = 1;
          do
          {
            v40 = *v36++;
            v39 *= v40;
            v38 -= 8;
          }

          while (v38);
        }

        else
        {
          v39 = 1;
        }

        if (v39 > HIDWORD(v78))
        {
          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::grow(&v78, v39);
        }

        v41 = (*(v26 + 16))(v26, v12);
        v43 = (*(v42 + 24))(v42, v41);
        if (v44)
        {
          v45 = 8 * v44;
          v46 = 1;
          do
          {
            v47 = *v43++;
            v46 *= v47;
            v45 -= 8;
          }

          while (v45);
          if (!v46)
          {
LABEL_64:
            if (v15)
            {
              v54 = *v15;
              v55 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID();
              v56 = mlir::detail::InterfaceMap::lookup(v54 + 8, v55);
            }

            else
            {
              v56 = 0;
            }

            v12 = mlir::DenseElementsAttr::get(v15, v56, v78, DWORD2(v78));
LABEL_69:
            llvm::SmallVector<llvm::APFloat,2u>::~SmallVector(&v78);
            if ((v64 & 1) == 0)
            {
              v57 = v65;
              v65 = 0;
              if (v57)
              {
                (*(*v57 + 8))(v57);
              }
            }

            if ((v63 & 1) == 0 && v27)
            {
              (*(*v27 + 8))(v27);
            }

            goto LABEL_84;
          }
        }

        else
        {
          v46 = 1;
        }

        v48 = v66;
        while (1)
        {
          mlir::detail::ElementsAttrIndexer::at<llvm::APFloat>(v68, &v64, v48);
          v49 = mlir::arith::TruncFOp::getRoundingmode(*a1);
          if (v49 <= 0x100000000)
          {
            v50 = 0;
          }

          else
          {
            v50 = v49;
          }

          v51 = 0x400020301uLL >> (8 * v50);
          llvm::APFloat::Storage::Storage(v80, v68);
          convertFloatValue(&v74, v80, v14, v51);
          llvm::APFloat::Storage::~Storage(v80);
          v52 = BYTE8(v75);
          if (BYTE8(v75))
          {
            v53 = &v74;
          }

          else
          {
            v53 = v68;
          }

          llvm::APFloat::Storage::Storage(v69, v53);
          if (BYTE8(v75) == 1)
          {
            llvm::APFloat::Storage::~Storage(&v74);
          }

          llvm::APFloat::Storage::~Storage(v68);
          if (!v52)
          {
            break;
          }

          llvm::SmallVectorTemplateBase<llvm::APFloat,false>::push_back(&v78, v69);
          llvm::APFloat::Storage::~Storage(v69);
          v48 = ++v66;
          if (!--v46)
          {
            goto LABEL_64;
          }
        }

        llvm::APFloat::Storage::~Storage(v69);
        v12 = 0;
        goto LABEL_69;
      }
    }
  }

LABEL_84:
  v61 = *MEMORY[0x277D85DE8];
  return v12 & 0xFFFFFFFFFFFFFFFBLL;
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

BOOL mlir::arith::TruncFOp::verify(void ***this)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (*(*((*this)[9] + 3) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v2);
  v5 = v3;
  if (v3)
  {
    v3 = (*(v4 + 8))(v4, v3);
  }

  if (v5)
  {
    v2 = v3;
  }

  v6 = (*(v1 - 1) & 0xFFFFFFFFFFFFFFF8);
  v7 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type,llvm::CastInfo<mlir::ShapedType,mlir::Type,void>>::doCastIfPossible(v6);
  v9 = v7;
  if (v7)
  {
    v7 = (*(v8 + 8))(v8, v7);
  }

  if (v9)
  {
    v6 = v7;
  }

  v10 = *v2;
  v11 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v12 = mlir::detail::InterfaceMap::lookup(v10 + 8, v11);
  LODWORD(v10) = *((*v12)(v12, v2) + 12);
  v13 = *v6;
  v14 = mlir::detail::TypeIDResolver<mlir::FloatType,void>::resolveTypeID();
  v15 = mlir::detail::InterfaceMap::lookup(v13 + 8, v14);
  if (v10 <= *((*v15)(v15, v6) + 12))
  {
    v25 = "result type ";
    v26 = 259;
    mlir::Operation::emitError(&v29, v1, &v25);
    if (v29)
    {
      v27 = 4;
      v28 = v6;
      v17 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
      v18 = v31 + 24 * v32;
      v19 = *v17;
      *(v18 + 16) = *(v17 + 16);
      *v18 = v19;
      ++v32;
      if (v29)
      {
        mlir::Diagnostic::operator<<<36ul>(&v30, " must be shorter than operand type ");
        if (v29)
        {
          v27 = 4;
          v28 = v2;
          v20 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(&v31, &v27, 1);
          v21 = v31 + 24 * v32;
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          ++v32;
        }
      }
    }

    v16 = (v33 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v29);
  }

  else
  {
    v16 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t checkIntFloatCast<mlir::IntegerType,mlir::FloatType>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

        llvm::APFloat::convertFromAPInt(&v68, &v58, 0, 1);
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

        llvm::APFloat::convertFromAPInt(&v68, &v58, 0, 1);
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

          llvm::APFloat::convertFromAPInt(v67, &v56, 0, 1);
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