uint64_t mlir::anec::findDilatedConvTiles(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10, uint64_t *a11, uint64_t *a12)
{
  v12 = 1;
  if (a3)
  {
    v14 = a3;
  }

  else
  {
    v13 = a3;
    do
    {
      v14 = v13 >> 1;
      ++v12;
      v15 = v13;
      v13 >>= 1;
    }

    while ((v15 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v14 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v16 = 1;
    do
    {
      v14 /= 3;
      ++v16;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v14) < 0x5555555555555555);
  }

  else
  {
    v16 = 1;
  }

  v17 = 1;
  if (a4)
  {
    v19 = a4;
  }

  else
  {
    v18 = a4;
    do
    {
      v19 = v18 >> 1;
      ++v17;
      v20 = v18;
      v18 >>= 1;
    }

    while ((v20 & 2) == 0);
  }

  if (0xAAAAAAAAAAAAAAABLL * v19 + 0x2AAAAAAAAAAAAAAALL <= 0x5555555555555554)
  {
    v21 = 1;
    do
    {
      v19 /= 3;
      ++v21;
    }

    while ((0x2AAAAAAAAAAAAAAALL - 0x5555555555555555 * v19) < 0x5555555555555555);
  }

  else
  {
    v21 = 1;
  }

  v22 = 0;
  v23 = a5 - 1;
  v24 = a6 - 1;
  v25 = this - 1;
  v26 = a2 - 1;
  v48 = -1;
  do
  {
    v27 = (&unk_257373F60 + 16 * v22);
    v28 = *v27;
    v29 = v27[1];
    v30 = 1;
    v31 = 1;
    do
    {
      if (v16)
      {
        v32 = 0;
        v33 = -1;
        v34 = 1;
        v35 = v30;
        do
        {
          v36 = v12;
          for (i = v34; v36; --v36)
          {
            if (i > v30 && (v33 == -1 || ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this <= v33))
            {
              v33 = ((v25 + i) / i + v29 - 1) / v29 * v29 * i - this;
              v35 = i;
            }

            i *= 2;
          }

          ++v32;
          v34 *= 3;
        }

        while (v32 != v16);
      }

      else
      {
        v35 = v30;
      }

      v38 = a7 + a7 * a3 / v35 * v23;
      v39 = v38 + v38 * a4 / v31 * v24;
      if (v35 * v31 > 8)
      {
        v39 /= 2;
      }

      if (v39 < 65537)
      {
        v43 = v31;
        goto LABEL_50;
      }

      v40 = 0;
      v41 = -1;
      v42 = 1;
      v43 = v31;
      do
      {
        v44 = v17;
        v45 = v42;
        do
        {
          if (v45 > v31 && (v41 == -1 || ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2 <= v41))
          {
            v41 = ((v26 + v45) / v45 + v28 - 1) / v28 * v28 * v45 - a2;
            v43 = v45;
          }

          v45 *= 2;
          --v44;
        }

        while (v44);
        ++v40;
        v42 *= 3;
      }

      while (v40 != v21);
      v46 = v38 + v38 * a4 / v43 * v24;
      if (v43 * v35 > 8)
      {
        v46 /= 2;
      }

      if (v41 == -1)
      {
        break;
      }

      v30 = v35;
      v31 = v43;
    }

    while (v46 >= 65537);
    if (v46 >= 65537)
    {
      goto LABEL_21;
    }

LABEL_50:
    if (v48 == -1 || v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this < v48)
    {
      *a8 = v29;
      *a9 = v28;
      *a10 = v35;
      v48 = v35 * v28 * v43 * ((v28 + (v26 + v43) / v43 - 1) / v28) * ((v25 + v35) / v35 + v29 - 1) / v29 * v29 - a2 * this;
      *a11 = v43;
    }

LABEL_21:
    ++v22;
  }

  while (v22 != 4);
  return this;
}

float mlir::anec::Convolution::getExecutionCost(mlir::Operation **a1, uint64_t a2)
{
  v159[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(*a1 + 9);
  v5 = (*(*(v4 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v5)
  {
    v6 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v5 + 8);
    v3 = *a1;
    v4 = *(*a1 + 9);
  }

  else
  {
    v6 = 0;
  }

  v153[0] = v5;
  v153[1] = v6;
  v7 = (*(*(v4 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v7)
  {
    v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8);
    v3 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v152[0] = v7;
  v152[1] = v8;
  v9 = *(v3 + 9);
  v10 = v3 - 16;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v11, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v151[0] = v12;
  v151[1] = v13;
  Shape = mlir::ShapedType::getShape(v153);
  v15 = mlir::ShapedType::getShape(v152);
  v17 = v16;
  v18 = mlir::ShapedType::getShape(v151);
  v138 = *v15;
  v19 = &v15[v17];
  v143 = *(v19 - 2);
  v144 = *(v19 - 1);
  ElementType = mlir::ShapedType::getElementType(v152);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
  mlir::ShapedType::getShape(v153);
  IndexFromDim = mlir::anec::getIndexFromDim(0, v21);
  if ((v23 & 1) == 0 || (v24 = IndexFromDim, v140 = a1, mlir::ShapedType::getShape(v153), v26 = mlir::anec::getIndexFromDim(1, v25), (v27 & 1) == 0) || (v28 = v26, mlir::ShapedType::getShape(v153), v30 = mlir::anec::getIndexFromDim(3, v29), (v31 & 1) == 0) || (v32 = v30, mlir::ShapedType::getShape(v153), v34 = mlir::anec::getIndexFromDim(4, v33), (v35 & 1) == 0))
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v137 = *(Shape + 8 * v24);
  v36 = *(Shape + 8 * v28);
  v37 = *(v18 + 8 * v32);
  v142 = *(v18 + 8 * v34);
  mlir::ShapedType::getShape(v153);
  v39 = mlir::anec::getIndexFromDim(2, v38);
  if (v40)
  {
    v139 = *(v18 + 8 * v39);
    v41 = *(v19 - 2);
    v143 = *(v19 - 3);
    v144 = *(v19 - 2);
  }

  else
  {
    v139 = 1;
    v41 = 1;
  }

  v147 = IntOrFloatBitWidth >> 3;
  ElementType = v159;
  v158 = 0xC00000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v43 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v45 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v43 + 16 * v44 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<int>(v45, &ElementType);
  if (v158)
  {
    v46 = *ElementType;
    if (v158 == 1)
    {
      v47 = 1;
      v48 = 1;
    }

    else
    {
      v47 = ElementType[1];
      if (v158 < 3)
      {
        v48 = 1;
      }

      else
      {
        v48 = ElementType[2];
      }
    }
  }

  else
  {
    v47 = 1;
    v46 = 1;
    v48 = 1;
  }

  v49 = v48;
  v50 = v46 * (v41 - 1) + 1;
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(v140);
  mlir::IntegerAttr::getValue(&GroupsAttr, &AttrDictionary);
  if (v155 > 0x40)
  {
    v51 = *AttrDictionary;
    MEMORY[0x259C63150]();
  }

  else
  {
    v51 = AttrDictionary;
  }

  v146 = v143 - 1;
  v52 = v50;
  if (v37 <= 0)
  {
    v53 = -(-v37 & 7);
  }

  else
  {
    v53 = v37 & 7;
  }

  v54 = v53 == 0;
  v55 = v37 - v53 + 8;
  v57 = v139 < 9 && v37 < 9;
  if (v57 && v142 < 9 || v54)
  {
    v58 = v37;
  }

  else
  {
    v58 = v55;
  }

  if (v47 > 5 || v49 > 5)
  {
    v141 = v52;
    GroupsAttr = 8;
    v150 = 16;
    v148 = 1;
    v149 = 1;
    mlir::anec::findDilatedConvTiles(v142, v37, v49, v47, v144, v143, v36, &GroupsAttr, &v150, &v149, &v148, v136);
    v59 = v37;
    v60 = v148;
    v61 = v149;
    v62 = v49 / v149;
    v63 = (v142 + v149 - 1) / v149;
    v64 = (v59 + v148 - 1) / v148;
    v65 = v62 * (v144 - 1) + 1;
    v66 = (v47 / v148) * v146 + 1;
    v67 = v36 / v51;
    v68 = v41;
    if (v149 == 1)
    {
      v69 = 0.0;
      if (v148 == 1)
      {
LABEL_58:
        v88 = 0x10000 / (v141 * v147 * v65 * v67 * v66);
        if (v88 <= 1)
        {
          v88 = 1;
        }

        if (v88 >= 8)
        {
          v88 = 8;
        }

        v89 = 16 * v88;
        v90 = v138 / (16 * v88);
        v91 = v61 * v137 * v60 * ((v63 + GroupsAttr - 1) / GroupsAttr) * ((v64 + v150 - 1) / v150);
        v92 = v143 * v144 * v68 * v67;
        v93 = (v92 * 16 * v88 * v91 * v90) << 9;
        v94 = (v91 * v90) << 8;
        if (v138 != v90 * v89)
        {
          v95 = v138 - v89 * v90;
          v96 = v95 + 15;
          v97 = v95 + 30;
          if (v96 >= 0)
          {
            v97 = v96;
          }

          v93 += 32 * v92 * (v97 >> 4) * (v91 << 8);
          v94 += v91 << 8;
        }

        v98 = (v94 * v67);
        AttrDictionary = mlir::ShapedType::getElementType(v151);
        v99 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
        v100 = mlir::ShapedType::getShape(v151);
        v102 = v98 + (mlir::ShapedType::getNumElements(v100, v101) * v99);
        v103 = mlir::ShapedType::getElementType(v153);
        if (v102 <= 2097200.0)
        {
          v102 = 0.0;
        }

        AttrDictionary = v103;
        v104 = *(a2 + 40) * 1.0e12;
        isF16 = mlir::Type::isF16(&AttrDictionary);
        v106 = v104 + v104;
        if (isF16)
        {
          v106 = v104;
        }

        v107 = (v93 / v106) / 0.65;
        if (v107 < (v102 / (*(a2 + 44) * 1000000000.0)))
        {
          v107 = v102 / (*(a2 + 44) * 1000000000.0);
        }

        v108 = v69 + v107;
        goto LABEL_73;
      }
    }

    v70 = (v59 + v148 - 1) / v148;
    if (v149 == 1)
    {
      v74 = 0;
      if (v148 == 1)
      {
LABEL_51:
        AttrDictionary = mlir::ShapedType::getElementType(v151);
        v78 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
        v79 = mlir::ShapedType::getShape(v151);
        v81 = v74 + mlir::ShapedType::getNumElements(v79, v80) * ((v78 >> 2) & 0x3FFFFFFE);
        v82 = v81;
        v83 = mlir::ShapedType::getElementType(v153);
        if (v81 <= 0x200000)
        {
          v82 = 0.0;
        }

        AttrDictionary = v83;
        v84 = *(a2 + 40) * 1.0e12;
        v85 = mlir::Type::isF16(&AttrDictionary);
        v86 = v84 + v84;
        if (v85)
        {
          v86 = v84;
        }

        v87 = (0.0 / v86) / 0.65;
        if (v87 < (v82 / (*(a2 + 44) * 1000000000.0)))
        {
          v87 = v82 / (*(a2 + 44) * 1000000000.0);
        }

        v69 = v87 + 0.0;
        v64 = v70;
        goto LABEL_58;
      }
    }

    else
    {
      AttrDictionary = mlir::ShapedType::getElementType(v153);
      v71 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
      v72 = mlir::ShapedType::getShape(v153);
      v74 = mlir::ShapedType::getNumElements(v72, v73) * ((v71 >> 2) & 0x3FFFFFFE);
      if (v60 == 1)
      {
        goto LABEL_51;
      }
    }

    AttrDictionary = mlir::ShapedType::getElementType(v153);
    v75 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v76 = mlir::ShapedType::getShape(v153);
    v74 += mlir::ShapedType::getNumElements(v76, v77) * ((v75 >> 2) & 0x3FFFFFFE);
    goto LABEL_51;
  }

  v110 = v146 * v47 + 1;
  if (v49 == 1)
  {
    v111 = (v144 - 1) * v49 + 1;
  }

  else
  {
    v36 *= v49;
    v51 *= v49;
    v111 = v144;
  }

  if ((v143 * v144 * v147 * v41 * (v36 / v51)) <= 0x8000)
  {
    v118 = v110 == v143 && v111 == v144;
    v112 = 0.0;
    if (!v118 && (v110 * v52 * v111 * (v36 / v51) * v147) > 0x8000)
    {
      v119 = v144 * v52;
      do
      {
        if (v112 == 0.0)
        {
          AttrDictionary = mlir::ShapedType::getElementType(v153);
          v122 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
          v123 = mlir::ShapedType::getShape(v153);
          v125 = mlir::ShapedType::getNumElements(v123, v124) * v122;
          AttrDictionary = mlir::ShapedType::getElementType(v151);
          v126 = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3;
          v127 = mlir::ShapedType::getShape(v151);
          v129 = 2 * (v125 + mlir::ShapedType::getNumElements(v127, v128) * v126);
          v130 = v129;
          v131 = mlir::ShapedType::getElementType(v153);
          if (v129 <= 0x200000)
          {
            v130 = 0.0;
          }

          AttrDictionary = v131;
          v132 = *(a2 + 40) * 1.0e12;
          v133 = mlir::Type::isF16(&AttrDictionary);
          v134 = v132 + v132;
          if (v133)
          {
            v134 = v132;
          }

          v135 = (0.0 / v134) / 0.65;
          if (v135 >= (v130 / (*(a2 + 44) * 1000000000.0)))
          {
            v112 = v135;
          }

          else
          {
            v112 = v130 / (*(a2 + 44) * 1000000000.0);
          }
        }

        if (v47)
        {
          if (v47 != 3 * (v47 / 3))
          {
            break;
          }

          v120 = 2;
          v121 = 3;
          v47 /= 3;
          v36 *= 3;
          v51 *= 3;
        }

        else
        {
          v47 >>= 1;
          v36 *= 2;
          v120 = 1;
          v121 = 2;
          v51 *= 2;
        }

        v58 = (v58 + v120) / v121;
      }

      while (((v119 * (v36 / v51) + v119 * (v36 / v51) * v146 * v47) * v147) > 0x8000);
    }
  }

  else
  {
    v112 = 0.0;
  }

  v113 = *v140;
  v114 = mlir::ShapedType::getElementType(v153);
  v108 = v112 + v115;
  AttrDictionary = mlir::ShapedType::getElementType(v153);
  if (((v142 * v37 * v139 * (mlir::Type::getIntOrFloatBitWidth(&AttrDictionary) >> 3)) & 0x7FFFF) == 0 && v36 >= v138 && v36 >= 64)
  {
    v108 = v108 + v108;
  }

LABEL_73:
  if (ElementType != v159)
  {
    free(ElementType);
  }

  return v108;
}

uint64_t mlir::getValues<int>(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v12, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v14);
  for (result = mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v10, a1, NumElements); v13 != v11; ++v13)
  {
    result = mlir::DenseElementsAttr::IntElementIterator::operator*(v12, &v8);
    if (v9 > 0x40)
    {
      v6 = *v8;
    }

    else if (v9)
    {
      v6 = v8 << -v9 >> -v9;
    }

    else
    {
      LODWORD(v6) = 0;
    }

    v7 = *(a2 + 8);
    if (v7 >= *(a2 + 12))
    {
      result = llvm::SmallVectorTemplateBase<int,true>::push_back(a2, v6);
    }

    else
    {
      *(*a2 + 4 * v7) = v6;
      ++*(a2 + 8);
    }

    if (v9 >= 0x41)
    {
      result = v8;
      if (v8)
      {
        result = MEMORY[0x259C63150](v8, 0x1000C8000313F17);
      }
    }
  }

  return result;
}

uint64_t mlir::anec::Convolution::getDilation(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 32), *(*(*(*this + 6) + 96) + 8));
}

uint64_t *mlir::anec::Convolution::getGroups(mlir::Operation **this)
{
  GroupsAttr = mlir::anec::Convolution::getGroupsAttr(this);
  mlir::IntegerAttr::getValue(&GroupsAttr, &v3);
  if (v4 <= 0x40)
  {
    return v3;
  }

  v1 = *v3;
  MEMORY[0x259C63150]();
  return v1;
}

uint64_t mlir::anec::Linear::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = *MEMORY[0x277D85DE8];
  v45 = a6;
  v46[0] = 0;
  v47 = 0;
  v48 = a7;
  v49 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v45);
    if (v47 == 1)
    {
      v47 = 0;
    }

    mlir::OperationName::OperationName(v46, "anec.linear", 11, Context);
    v47 = 1;
    a1 = v15;
  }

  v50 = a4;
  v51 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::LinearAdaptor::verify(&v45, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  v20 = v19;
  if (v19)
  {
    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  }

  v41[0] = v20;
  v41[1] = v19;
  Shape = mlir::ShapedType::getShape(v41);
  v23 = v22;
  v24 = mlir::TypeRange::dereference_iterator(a9, 1);
  v25 = v24;
  if (v24)
  {
    v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v40[0] = v25;
  v40[1] = v24;
  v26 = *(mlir::ShapedType::getShape(v40) + 8);
  mlir::ShapedType::getShape(v41);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v27);
  if (v29)
  {
    v30 = IndexFromDim;
    v42 = v44;
    v43 = 0x600000000;
    if (((8 * v23) >> 3) >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = 0;
    v33 = v44;
    if (v23)
    {
      memcpy(v44, Shape, 8 * v23);
      v32 = v43;
      v33 = v42;
    }

    v34 = (v32 + v23);
    LODWORD(v43) = v32 + v23;
    v33[v30] = v26;
    ElementType = mlir::ShapedType::getElementType(v41);
    v36 = mlir::MemRefType::get(v33, v34, ElementType, 0, 0, 0);
    v37 = *(a11 + 8);
    if (v37 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v37) = v36;
    ++*(a11 + 8);
    if (v42 != v44)
    {
      free(v42);
    }

    return 1;
  }

  else
  {
    v38 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::LinearAdaptor::verify(v38, v39);
  }
}

uint64_t mlir::anec::LinearAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v112 = *MEMORY[0x277D85DE8];
  v101 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v101);
  if (v4 == mlir::DictionaryAttr::end(&v101))
  {
    v5 = 0;
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
      {
        v5 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 8))
      {
        v6 = *(v4 + 1);
      }

      else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        v7 = *(v4 + 1);
      }

      v4 = (v4 + 16);
    }

    while (v4 != mlir::DictionaryAttr::end(&v101));
    if (v6)
    {
      if (!mlir::DenseFPElementsAttr::classof(v6))
      {
        goto LABEL_20;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
      v90 = v6;
      v91 = v8;
      Type = mlir::ElementsAttr::getType(&v90);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v102 = v10;
      v103 = Type;
      mlir::ShapedType::getShape(&v102);
      if (v11)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v6 + 8);
        v97 = v6;
        v98 = v12;
        v13 = mlir::ElementsAttr::getType(&v97);
        v14 = v13;
        if (v13)
        {
          v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
        }

        v99 = v14;
        v100 = v13;
        mlir::ShapedType::getShape(&v99);
        if (v15 != 1)
        {
          goto LABEL_20;
        }
      }

      v88[0] = v6;
      v95 = mlir::DenseElementsAttr::getType(v88);
      v96 = v16;
      v89[0] = mlir::ShapedType::getElementType(&v95);
      if (!mlir::Type::isF16(v89))
      {
        v86[0] = v6;
        v93 = mlir::DenseElementsAttr::getType(v86);
        v94 = v17;
        v87[0] = mlir::ShapedType::getElementType(&v93);
        if (!mlir::Type::isF32(v87))
        {
LABEL_20:
          v90 = "'anec.linear' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1";
          v92 = 259;
          mlir::emitError(a2, &v90, &v102);
          v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
          if (v102)
          {
            mlir::InFlightDiagnostic::report(&v102);
          }

          if (v111 == 1)
          {
            if (v110 != &v111)
            {
              free(v110);
            }

            v19 = __p;
            if (__p)
            {
              v20 = v109;
              v21 = __p;
              if (v109 != __p)
              {
                do
                {
                  v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                }

                while (v20 != v19);
                v21 = __p;
              }

              v109 = v19;
              operator delete(v21);
            }

            v22 = v106;
            if (!v106)
            {
              goto LABEL_106;
            }

            v23 = v107;
            v24 = v106;
            if (v107 == v106)
            {
LABEL_105:
              v107 = v22;
              operator delete(v24);
LABEL_106:
              if (v104 != &v105)
              {
                free(v104);
              }

              return v18;
            }

            do
            {
              v26 = *--v23;
              v25 = v26;
              *v23 = 0;
              if (v26)
              {
                MEMORY[0x259C63150](v25, 0x1000C8077774924);
              }
            }

            while (v23 != v22);
LABEL_104:
            v24 = v106;
            goto LABEL_105;
          }

          return v18;
        }
      }
    }
  }

  if (!v7)
  {
    goto LABEL_111;
  }

  if (!mlir::DenseIntElementsAttr::classof(v7))
  {
    goto LABEL_72;
  }

  v27 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
  v90 = v7;
  v91 = v27;
  v28 = mlir::ElementsAttr::getType(&v90);
  v29 = v28;
  if (v28)
  {
    v28 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v28 + 8);
  }

  v102 = v29;
  v103 = v28;
  mlir::ShapedType::getShape(&v102);
  if (v30)
  {
    v31 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
    v97 = v7;
    v98 = v31;
    v32 = mlir::ElementsAttr::getType(&v97);
    v33 = v32;
    if (v32)
    {
      v32 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v32 + 8);
    }

    v99 = v33;
    v100 = v32;
    mlir::ShapedType::getShape(&v99);
    if (v34 != 1)
    {
      goto LABEL_72;
    }
  }

  v88[0] = v7;
  v95 = mlir::DenseElementsAttr::getType(v88);
  v96 = v35;
  v89[0] = mlir::ShapedType::getElementType(&v95);
  if (mlir::Type::isSignedInteger(v89, 8) || (v86[0] = v7, v93 = mlir::DenseElementsAttr::getType(v86), v94 = v36, v87[0] = mlir::ShapedType::getElementType(&v93), mlir::Type::isUnsignedInteger(v87, 8)))
  {
LABEL_111:
    if (!v5)
    {
      return 1;
    }

    if (mlir::DenseElementsAttr::classof(v5))
    {
      v37 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v90 = v5;
      v91 = v37;
      v38 = mlir::ElementsAttr::getType(&v90);
      v39 = v38;
      if (v38)
      {
        v38 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v38 + 8);
      }

      v102 = v39;
      v103 = v38;
      mlir::ShapedType::getShape(&v102);
      if (!v40)
      {
        goto LABEL_112;
      }

      v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v97 = v5;
      v98 = v41;
      v42 = mlir::ElementsAttr::getType(&v97);
      v43 = v42;
      if (v42)
      {
        v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
      }

      v99 = v43;
      v100 = v42;
      mlir::ShapedType::getShape(&v99);
      if (v44 == 1)
      {
        goto LABEL_112;
      }

      v45 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v93 = v5;
      v94 = v45;
      v46 = mlir::ElementsAttr::getType(&v93);
      v47 = v46;
      if (v46)
      {
        v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v46 + 8);
      }

      v95 = v47;
      v96 = v46;
      mlir::ShapedType::getShape(&v95);
      if (v48 == 2)
      {
        goto LABEL_112;
      }

      v49 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v88[0] = v5;
      v88[1] = v49;
      v50 = mlir::ElementsAttr::getType(v88);
      v51 = v50;
      if (v50)
      {
        v50 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v50 + 8);
      }

      v89[0] = v51;
      v89[1] = v50;
      mlir::ShapedType::getShape(v89);
      if (v52 == 3)
      {
        goto LABEL_112;
      }

      v53 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v86[0] = v5;
      v86[1] = v53;
      v54 = mlir::ElementsAttr::getType(v86);
      v55 = v54;
      if (v54)
      {
        v54 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v54 + 8);
      }

      v87[0] = v55;
      v87[1] = v54;
      mlir::ShapedType::getShape(v87);
      if (v56 == 4)
      {
        goto LABEL_112;
      }

      v57 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v84[0] = v5;
      v84[1] = v57;
      v58 = mlir::ElementsAttr::getType(v84);
      v59 = v58;
      if (v58)
      {
        v58 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v58 + 8);
      }

      v85[0] = v59;
      v85[1] = v58;
      mlir::ShapedType::getShape(v85);
      if (v60 == 5)
      {
        goto LABEL_112;
      }

      v61 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v5 + 8);
      v82[0] = v5;
      v82[1] = v61;
      v62 = mlir::ElementsAttr::getType(v82);
      v63 = v62;
      if (v62)
      {
        v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v62 + 8);
      }

      v83[0] = v63;
      v83[1] = v62;
      mlir::ShapedType::getShape(v83);
      if (v64 == 6)
      {
LABEL_112:
        v79 = v5;
        v80[0] = mlir::DenseElementsAttr::getType(&v79);
        v80[1] = v65;
        ElementType = mlir::ShapedType::getElementType(v80);
        if (mlir::Type::isF16(&ElementType))
        {
          return 1;
        }
      }
    }

    v90 = "'anec.linear' op attribute 'kernel_lut' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
    v92 = 259;
    mlir::emitError(a2, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v72 = __p;
      if (__p)
      {
        v73 = v109;
        v74 = __p;
        if (v109 != __p)
        {
          do
          {
            v73 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v73 - 1);
          }

          while (v73 != v72);
          v74 = __p;
        }

        v109 = v72;
        operator delete(v74);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v75 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v77 = *--v75;
        v76 = v77;
        *v75 = 0;
        if (v77)
        {
          MEMORY[0x259C63150](v76, 0x1000C8077774924);
        }
      }

      while (v75 != v22);
      goto LABEL_104;
    }
  }

  else
  {
LABEL_72:
    v90 = "'anec.linear' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1";
    v92 = 259;
    mlir::emitError(a2, &v90, &v102);
    v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v102);
    if (v102)
    {
      mlir::InFlightDiagnostic::report(&v102);
    }

    if (v111 == 1)
    {
      if (v110 != &v111)
      {
        free(v110);
      }

      v66 = __p;
      if (__p)
      {
        v67 = v109;
        v68 = __p;
        if (v109 != __p)
        {
          do
          {
            v67 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v67 - 1);
          }

          while (v67 != v66);
          v68 = __p;
        }

        v109 = v66;
        operator delete(v68);
      }

      v22 = v106;
      if (!v106)
      {
        goto LABEL_106;
      }

      v69 = v107;
      v24 = v106;
      if (v107 == v106)
      {
        goto LABEL_105;
      }

      do
      {
        v71 = *--v69;
        v70 = v71;
        *v69 = 0;
        if (v71)
        {
          MEMORY[0x259C63150](v70, 0x1000C8077774924);
        }
      }

      while (v69 != v22);
      goto LABEL_104;
    }
  }

  return v18;
}

BOOL mlir::anec::Linear::verifyWithANEC(mlir::Operation **a1, void *a2, unint64_t a3)
{
  v94 = *MEMORY[0x277D85DE8];
  ANECLinearLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v81 = v6;
  v82 = v7;
  v8 = a2[2];
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v60[0] = v8;
  v60[1] = v9;
  mlir::ShapedType::getShape(&v81);
  Shape = mlir::ShapedType::getShape(v60);
  if (mlir::anec::Linear::getKernelLutAttr(a1))
  {
    v11 = v60[0];
    if (v60[0])
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v60[0] + 8);
    }

    else
    {
      v12 = 0;
    }

    v74[0] = v11;
    v74[1] = v12;
    *buffer = mlir::ShapedType::getElementType(v74);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(buffer);
    KernelLutAttr = mlir::anec::Linear::getKernelLutAttr(a1);
    v16 = KernelLutAttr;
    if (KernelLutAttr)
    {
      KernelLutAttr = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelLutAttr + 8);
    }

    v75[0] = v16;
    v75[1] = KernelLutAttr;
    Type = mlir::ElementsAttr::getType(v75);
    v18 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    *buffer = v18;
    v85 = Type;
    *buffer = mlir::ShapedType::getElementType(buffer);
    if (mlir::Type::isF16(buffer))
    {
      v19 = @"Float16";
    }

    else if (mlir::Type::isF32(buffer))
    {
      v19 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(buffer, 8))
    {
      v19 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(buffer, 8);
      v19 = @"Int8";
    }

    v64 = v19;
    v20 = IntOrFloatBitWidth - 2;
    if ((IntOrFloatBitWidth - 2) >= 7 || ((0x55u >> v20) & 1) == 0)
    {
      v75[0] = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      LOWORD(v78[0].__locale_) = 259;
      mlir::OpState::emitOpError(a1, v75, buffer);
      v21 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
      if (*buffer)
      {
        mlir::InFlightDiagnostic::report(buffer);
      }

      if (v93[0] == 1)
      {
        if (v92 != v93)
        {
          free(v92);
        }

        v22 = __p;
        if (__p)
        {
          v23 = v91;
          v24 = __p;
          if (v91 != __p)
          {
            do
            {
              v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
            }

            while (v23 != v22);
            v24 = __p;
          }

          v91 = v22;
          operator delete(v24);
        }

        v25 = v88;
        if (v88)
        {
          v26 = v89;
          v27 = v88;
          if (v89 != v88)
          {
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
            v27 = v88;
          }

          v89 = v25;
          operator delete(v27);
        }

        if (v86 != v87)
        {
          free(v86);
        }
      }

      if (!v21)
      {
        return 0;
      }

      goto LABEL_67;
    }

    v63 = off_279839FA8[v20];
  }

  else
  {
    v63 = @"Dense";
    *buffer = mlir::ShapedType::getElementType(v60);
    if (mlir::Type::isF16(buffer))
    {
      v13 = @"Float16";
    }

    else if (mlir::Type::isF32(buffer))
    {
      v13 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(buffer, 8))
    {
      v13 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(buffer, 8);
      v13 = @"Int8";
    }

    v64 = v13;
  }

  v65 = *(Shape + 8);
  v66 = @"Batch";
  v67 = 0;
  v73 = 1;
  if (mlir::anec::Linear::getKernelScaleAttr(a1))
  {
    KernelScaleAttr = mlir::anec::Linear::getKernelScaleAttr(a1);
    if (KernelScaleAttr)
    {
      v32 = KernelScaleAttr;
      v33 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
      SplatFloat = mlir::getSplatFloatValue<float>(v32, v33);
      if ((SplatFloat & 0x100000000) == 0)
      {
LABEL_58:
        v68 = 1;
        v35 = mlir::anec::Linear::getKernelScaleAttr(a1);
        ElementTypeOrSelf = mlir::getElementTypeOrSelf(v35);
        goto LABEL_61;
      }
    }

    else
    {
      SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
      if ((SplatFloat & 0x100000000) == 0)
      {
        goto LABEL_58;
      }
    }

    v69 = SplatFloat;
  }

LABEL_61:
  if (mlir::anec::Linear::getKernelZeroPointAttr(a1))
  {
    KernelZeroPointAttr = mlir::anec::Linear::getKernelZeroPointAttr(a1);
    if (KernelZeroPointAttr)
    {
      v38 = KernelZeroPointAttr;
      v39 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v38, v39);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_64:
        v71 = 1;
        goto LABEL_67;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_64;
      }
    }

    v72 = SplatInt;
  }

LABEL_67:
  v81 = v83;
  v82 = 0x100000000;
  v74[0] = 0;
  v62 = 0;
  v30 = 1;
  *buffer = 1;
  v75[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateLinearLayer())
  {
    v41 = *a1;
    v42 = v62;
    v43 = v74[0];
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v75);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, "Invalid configuration", 21);
    if (v42)
    {
      if (v43)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, " for the following reasons: ", 28);
        v44 = *v43;
        if (*v43)
        {
          v45 = 0;
          do
          {
            v46 = v44 - 1;
            CFStringGetCString(v43[v45 + 1], buffer, 512, 0x8000100u);
            v47 = strlen(buffer);
            v48 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v76, buffer, v47);
            if (v45 == v46)
            {
              v49 = "";
            }

            else
            {
              v49 = ", ";
            }

            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, v49, 2 * (v45++ != v46));
            v44 = *v43;
          }

          while (*v43 > v45);
        }
      }
    }

    std::stringbuf::str();
    v75[0] = *MEMORY[0x277D82818];
    v50 = *(MEMORY[0x277D82818] + 72);
    *(v75 + *(v75[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v76 = v50;
    v77 = MEMORY[0x277D82878] + 16;
    if (v79 < 0)
    {
      operator delete(v78[7].__locale_);
    }

    v77 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v78);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v80);
    LOWORD(v78[0].__locale_) = 260;
    v75[0] = v60;
    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v93[0] == 1)
    {
      if (v92 != v93)
      {
        free(v92);
      }

      v51 = __p;
      if (__p)
      {
        v52 = v91;
        v53 = __p;
        if (v91 != __p)
        {
          do
          {
            v52 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v52 - 1);
          }

          while (v52 != v51);
          v53 = __p;
        }

        v91 = v51;
        operator delete(v53);
      }

      v54 = v88;
      if (v88)
      {
        v55 = v89;
        v56 = v88;
        if (v89 != v88)
        {
          do
          {
            v58 = *--v55;
            v57 = v58;
            *v55 = 0;
            if (v58)
            {
              MEMORY[0x259C63150](v57, 0x1000C8077774924);
            }
          }

          while (v55 != v54);
          v56 = v88;
        }

        v89 = v54;
        operator delete(v56);
      }

      if (v86 != v87)
      {
        free(v86);
      }
    }

    if (v61 < 0)
    {
      operator delete(v60[0]);
    }
  }

  ANECUnitValidatorDelete();
  if (v81 != v83)
  {
    free(v81);
  }

  return v30;
}

uint64_t mlir::anec::anonymous namespace::getANECTensorDescs(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  *(a4 + 8) = 0;
  if (a2 > *(a4 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v7 = 16 * a2;
    for (i = 24; ; i += 32)
    {
      ElementType = mlir::ShapedType::getElementType(v6);
      v10 = *(*ElementType + 136);
      if (v10 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
      {
        *v52 = ElementType;
        v47 = @"Int8";
        if (mlir::IntegerType::getSignedness(v52) != 1)
        {
          if (mlir::IntegerType::getSignedness(v52))
          {
            v47 = @"UInt8";
          }

          else
          {
            v47 = @"Int8";
          }
        }
      }

      else
      {
        v11 = v10 == &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id;
        v12 = v11 || v10 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id;
        v13 = v12 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id;
        v14 = v13 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id;
        v15 = v14 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id;
        v16 = v15 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id;
        v17 = v16 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id;
        v18 = v17 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id;
        v19 = v18 || v10 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id;
        v20 = v19 || v10 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id;
        v21 = v20 || v10 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id;
        v22 = v21 || v10 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id;
        v23 = v22 || v10 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id;
        v24 = v23 || v10 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id;
        v25 = v24 || v10 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id;
        if (v25 || v10 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id)
        {
          *v52 = ElementType;
          v47 = mlir::Type::isF16(v52) ? @"Float16" : @"Float32";
        }

        else
        {
          v47 = @"Float32";
        }
      }

      mlir::ShapedType::getShape(v6);
      v28 = *(*(a3 + 72) + i);
      *v52 = v47;
      if (v27 < 1)
      {
        break;
      }

      v29 = v27;
      IndexFromDim = mlir::anec::getIndexFromDim(0, v27);
      if ((v31 & 1) == 0 || (*&v52[8] = *(mlir::ShapedType::getShape(v6) + 8 * IndexFromDim), v32 = mlir::anec::getIndexFromDim(1, v29), (v33 & 1) == 0) || (*&v52[16] = *(mlir::ShapedType::getShape(v6) + 8 * v32), v34 = mlir::anec::getIndexFromDim(3, v29), (v35 & 1) == 0) || (*&v52[24] = *(mlir::ShapedType::getShape(v6) + 8 * v34), v36 = mlir::anec::getIndexFromDim(4, v29), (v37 & 1) == 0))
      {
LABEL_85:
        v49 = std::__throw_bad_optional_access[abi:nn200100]();
      }

      *&v52[32] = *(mlir::ShapedType::getShape(v6) + 8 * v36);
      if (v29 != 5)
      {
        goto LABEL_72;
      }

      v38 = mlir::anec::getIndexFromDim(2, 5uLL);
      if ((v39 & 1) == 0)
      {
        goto LABEL_85;
      }

      v40 = *(mlir::ShapedType::getShape(v6) + 8 * v38);
LABEL_73:
      *&v52[40] = v40;
      *&v53 = 1;
      BYTE8(v53) = 0;
      v54 = v28;
      result = mlir::Value::getDefiningOp(&v54);
      if (result)
      {
        {
          v48 = result;
          result = v48;
        }

        result = (*(**(result + 48) + 32))(*(result + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id);
      }

      BYTE9(v53) = result;
      v41 = *(a4 + 8);
      v42 = *a4;
      if (v41 >= *(a4 + 12))
      {
        if (v42 <= v52 && v42 + (v41 << 6) > v52)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v43 = (v42 + (*(a4 + 8) << 6));
      v44 = *v52;
      v45 = *&v52[16];
      v46 = v53;
      v43[2] = *&v52[32];
      v43[3] = v46;
      *v43 = v44;
      v43[1] = v45;
      ++*(a4 + 8);
      v6 = (v6 + 16);
      v7 -= 16;
      if (!v7)
      {
        return result;
      }
    }

    *&v52[8] = vdupq_n_s64(1uLL);
    *&v52[24] = *&v52[8];
LABEL_72:
    v40 = 1;
    goto LABEL_73;
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::emitOpWarning@<X0>(mlir::anec::_anonymous_namespace_ *this@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = (this + 24);
  mlir::emitWarning(*(this + 3), &v26);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v26, "'");
  v9 = v8;
  if (*v8)
  {
    mlir::Diagnostic::operator<<((v8 + 1), *(this + 6));
    if (*v9)
    {
      v10 = v9[3];
      LODWORD(v24) = 3;
      *(&v24 + 1) = "' op ";
      v25 = 5;
      v11 = *(v9 + 8);
      if (v11 >= *(v9 + 9))
      {
        if (v10 > &v24 || v10 + 24 * v11 <= &v24)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v10 + 24 * *(v9 + 8);
      v13 = v24;
      *(v12 + 16) = v25;
      *v12 = v13;
      ++*(v9 + 8);
      if (*v9)
      {
        mlir::Diagnostic::operator<<((v9 + 1), a2);
      }
    }
  }

  mlir::InFlightDiagnostic::InFlightDiagnostic(a3, v9);
  if (v26)
  {
    mlir::InFlightDiagnostic::report(&v26);
  }

  if (v34 == 1)
  {
    if (v33 != &v34)
    {
      free(v33);
    }

    v14 = __p;
    if (__p)
    {
      v15 = v32;
      v16 = __p;
      if (v32 != __p)
      {
        do
        {
          v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
        }

        while (v15 != v14);
        v16 = __p;
      }

      v32 = v14;
      operator delete(v16);
    }

    v17 = v29;
    if (v29)
    {
      v18 = v30;
      v19 = v29;
      if (v30 != v29)
      {
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
        v19 = v29;
      }

      v30 = v17;
      operator delete(v19);
    }

    if (v27 != &v28)
    {
      free(v27);
    }
  }

  Context = mlir::Attribute::getContext(v7);
  result = mlir::MLIRContext::shouldPrintOpOnDiagnostic(Context);
  if (result)
  {
    mlir::Diagnostic::attachNote();
  }

  return result;
}

uint64_t mlir::anec::Linear::addOpToNetwork(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (a2)
  {
    v7 = *(v4 + 72);
    v8 = *(v7 + 24);
    v9 = *(v7 + 56);
    if (*(v4 + 36))
    {
      v10 = v4 - 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v10, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v32[0] = v11;
    v32[1] = v12;
    mlir::ShapedType::getShape(v32);
    v21 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v21)
    {
      v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
    }

    else
    {
      v22 = 0;
    }

    v31[0] = v21;
    v31[1] = v22;
    mlir::ShapedType::getShape(v31);
    v23 = (*(v9 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v23)
    {
      v24 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v23 + 8);
    }

    else
    {
      v24 = 0;
    }

    v30[0] = v23;
    v30[1] = v24;
    mlir::ShapedType::getShape(v30);
    v28 = 0;
    v29 = 0;
    v27 = 0;
    result = 0;
    if (v25)
    {
      operator new();
    }
  }

  else
  {
    v33 = "network should not be nullptr";
    v34 = 259;
    mlir::Operation::emitError(v35, v4, &v33);
    if (v35[0])
    {
      mlir::InFlightDiagnostic::report(v35);
    }

    if (v43 == 1)
    {
      if (v42 != &v43)
      {
        free(v42);
      }

      v13 = __p;
      if (__p)
      {
        v14 = v41;
        v15 = __p;
        if (v41 != __p)
        {
          do
          {
            v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
          }

          while (v14 != v13);
          v15 = __p;
        }

        v41 = v13;
        operator delete(v15);
      }

      v16 = v38;
      if (v38)
      {
        v17 = v39;
        v18 = v38;
        if (v39 != v38)
        {
          do
          {
            v20 = *--v17;
            v19 = v20;
            *v17 = 0;
            if (v20)
            {
              MEMORY[0x259C63150](v19, 0x1000C8077774924);
            }
          }

          while (v17 != v16);
          v18 = v38;
        }

        v39 = v16;
        operator delete(v18);
      }

      if (v36 != &v37)
      {
        free(v36);
      }
    }

    return 0;
  }

  return result;
}

uint64_t mlir::anec::Deconvolution::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v97 = *MEMORY[0x277D85DE8];
  v90 = a6;
  LOBYTE(v91) = 0;
  v92 = 0;
  v93 = a7;
  v94 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v90);
    if (v92 == 1)
    {
      v92 = 0;
    }

    mlir::OperationName::OperationName(&v91, "anec.deconvolution", 18, Context);
    v92 = 1;
    a1 = v15;
  }

  v95 = a4;
  v96 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::DeconvolutionAdaptor::verify(&v90, v18) & 1) == 0)
  {
    return 0;
  }

  v19 = mlir::TypeRange::dereference_iterator(a9, 0);
  if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8))
  {
    v73 = 0;
    v74 = 0;
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be a ShapedType");
  }

  v20 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v19 + 8);
  v73 = v19;
  v74 = v20;
  if (!v19)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input must be a ShapedType");
  }

  Shape = mlir::ShapedType::getShape(&v73);
  if (v22 >= 6)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a2, a3, "input tensor rank of 4 or 5 are supported");
  }

  v24 = Shape;
  v88[0] = v89;
  v88[1] = 0x300000000;
  v25 = mlir::DictionaryAttr::begin(&v90);
  v26 = mlir::DictionaryAttr::end(&v90);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v91 + 96) + 72));
  mlir::getValues<unsigned long>(v27, v88);
  v86[0] = v87;
  v86[1] = 0x300000000;
  v28 = mlir::DictionaryAttr::begin(&v90);
  v29 = mlir::DictionaryAttr::end(&v90);
  v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 - 32), *(*(v91 + 96) + 8));
  mlir::getValues<unsigned long>(v30, v86);
  v84[0] = v85;
  v84[1] = 0x600000000;
  v31 = mlir::DictionaryAttr::begin(&v90);
  v32 = mlir::DictionaryAttr::end(&v90);
  v33 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v31 + 16), (v32 - 16), *(*(v91 + 96) + 56));
  mlir::getValues<unsigned long>(v33, v84);
  v34 = mlir::TypeRange::dereference_iterator(a9, 1);
  v35 = v34;
  if (v34)
  {
    v34 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v34 + 8);
  }

  v72[0] = v35;
  v72[1] = v34;
  v36 = mlir::ShapedType::getShape(v72);
  mlir::ShapedType::getShape(v72);
  if (v37 < 6)
  {
    Groups = mlir::anec::detail::ConvolutionGenericAdaptorBase::getGroups(&v90);
    v71 = Groups;
    mlir::ShapedType::getShape(&v73);
    IndexFromDim = mlir::anec::getIndexFromDim(1, v39);
    if (v41)
    {
      v70 = v24[IndexFromDim];
      if (v70 % Groups)
      {
        v76 = "input channels {0} should be divisible by groups {1}";
        v77 = 52;
        v78 = v83;
        v79 = 2;
        LOBYTE(v80) = 1;
        v81[0] = &unk_28685E520;
        v81[1] = &v70;
        v82[0] = &unk_28685E520;
        v82[1] = &v71;
        v83[0] = v81;
        v83[1] = v82;
        result = mlir::emitOptionalError<llvm::formatv_object<std::tuple<llvm::support::detail::provider_format_adapter<long long &>,llvm::support::detail::provider_format_adapter<long long &>>>>(a2, a3, &v76);
        goto LABEL_37;
      }

      v42 = v36[1];
      mlir::ShapedType::getShape(&v73);
      v44 = mlir::anec::getIndexFromDim(3, v43);
      if (v45)
      {
        v46 = v44;
        mlir::ShapedType::getShape(&v73);
        v48 = mlir::anec::getIndexFromDim(4, v47);
        if (v49)
        {
          v50 = v48;
          v69 = v42 * Groups;
          mlir::ShapedType::getShape(v72);
          v52 = v51;
          v53 = *(v84[0] + 2) + *(v88[0] + 1) * v24[v46] + *(v84[0] + 3) - v36[2] + 1;
          v54 = *(v84[0] + 4) + *(v88[0] + 2) * v24[v50] + *(v84[0] + 5) - v36[3] + 1;
          v55 = *v24;
          mlir::ShapedType::getShape(&v73);
          v57 = mlir::anec::getIndexFromDim(2, v56);
          if (v58)
          {
            v59 = 4;
            if (v52 == 4)
            {
              v59 = 0x1FFFFFFFFFFFFFFFLL;
            }

            v60 = *v84[0] + *v88[0] * v24[v57] + *(v84[0] + 1) - v36[v59] + 1;
          }

          else
          {
            v60 = 0;
          }

          v76 = &v78;
          v78 = v55;
          v79 = v69;
          v80 = v53;
          v81[0] = v54;
          v77 = 0x600000004;
          if (v60)
          {
            v75 = v60;
            llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v76, &v79, &v75);
            v61 = v76;
            v62 = v77;
          }

          else
          {
            v62 = 4;
            v61 = &v78;
          }

          ElementType = mlir::ShapedType::getElementType(&v73);
          v64 = mlir::MemRefType::get(v61, v62, ElementType, 0, 0, 0);
          v65 = *(a11 + 8);
          if (v65 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v65) = v64;
          ++*(a11 + 8);
          if (v76 != &v78)
          {
            free(v76);
          }

          result = 1;
          goto LABEL_37;
        }
      }
    }

    v67 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::DeconvolutionAdaptor::verify(v67, v68);
  }

  result = mlir::emitOptionalError<char const(&)[39]>(a2, a3, "filter must be a tensor of rank 4 or 5");
LABEL_37:
  v66 = result;
  if (v84[0] != v85)
  {
    free(v84[0]);
    result = v66;
  }

  if (v86[0] != v87)
  {
    free(v86[0]);
    result = v66;
  }

  if (v88[0] != v89)
  {
    free(v88[0]);
    return v66;
  }

  return result;
}

uint64_t mlir::anec::DeconvolutionAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v157 = *MEMORY[0x277D85DE8];
  v144 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v144);
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_7:
    v141 = "'anec.deconvolution' op requires attribute 'dilation'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v154;
      v9 = __p;
      if (v154 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v154 = v7;
      operator delete(v9);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v11 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x259C63150](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
    goto LABEL_118;
  }

  v5 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
    {
      v5 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_7;
    }
  }

  v15 = v4[1];
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_37:
    v141 = "'anec.deconvolution' op requires attribute 'padding'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v154;
      v23 = __p;
      if (v154 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v154 = v21;
      operator delete(v23);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v24 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v26 = *--v24;
      v25 = v26;
      *v24 = 0;
      if (v26)
      {
        MEMORY[0x259C63150](v25, 0x1000C8077774924);
      }
    }

    while (v24 != v10);
    goto LABEL_118;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 56))
  {
    if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
    {
      v16 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
    {
      v17 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 32))
    {
      v18 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 40))
    {
      v19 = v4[1];
    }

    else if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 48))
    {
      v20 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_37;
    }
  }

  v120 = v20;
  v121 = v4[1];
  if (v4 == mlir::DictionaryAttr::end(&v144))
  {
LABEL_59:
    v141 = "'anec.deconvolution' op requires attribute 'stride'";
    v143 = 259;
    mlir::emitError(a2, &v141, &v147);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
    if (v147)
    {
      mlir::InFlightDiagnostic::report(&v147);
    }

    if (v156 != 1)
    {
      return v6;
    }

    if (v155 != &v156)
    {
      free(v155);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v154;
      v30 = __p;
      if (v154 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v154 = v28;
      operator delete(v30);
    }

    v10 = v151;
    if (!v151)
    {
      goto LABEL_120;
    }

    v31 = v152;
    v12 = v151;
    if (v152 == v151)
    {
      goto LABEL_119;
    }

    do
    {
      v33 = *--v31;
      v32 = v33;
      *v31 = 0;
      if (v33)
      {
        MEMORY[0x259C63150](v32, 0x1000C8077774924);
      }
    }

    while (v31 != v10);
LABEL_118:
    v12 = v151;
    goto LABEL_119;
  }

  v27 = 0;
  while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 72))
  {
    if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 64))
    {
      v27 = v4[1];
    }

    v4 += 2;
    if (v4 == mlir::DictionaryAttr::end(&v144))
    {
      goto LABEL_59;
    }
  }

  v34 = v4[1];
  if (v34)
  {
    if (!mlir::DenseIntElementsAttr::classof(v4[1]))
    {
      goto LABEL_102;
    }

    v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v34 + 8);
    v141 = v34;
    v142 = v35;
    Type = mlir::ElementsAttr::getType(&v141);
    v37 = Type;
    if (Type)
    {
      Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
    }

    v147 = v37;
    v148 = Type;
    Shape = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v39 != 1 || *Shape != v145 || (v135 = v34, v139 = mlir::DenseElementsAttr::getType(&v135), v140 = v40, ElementType = mlir::ShapedType::getElementType(&v139), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
    {
LABEL_102:
      v141 = "'anec.deconvolution' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
      v143 = 259;
      mlir::emitError(a2, &v141, &v147);
      v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
      if (v147)
      {
        mlir::InFlightDiagnostic::report(&v147);
      }

      if (v156 != 1)
      {
        return v6;
      }

      if (v155 != &v156)
      {
        free(v155);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v154;
        v57 = __p;
        if (v154 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v154 = v55;
        operator delete(v57);
      }

      v10 = v151;
      if (v151)
      {
        v58 = v152;
        v12 = v151;
        if (v152 != v151)
        {
          do
          {
            v60 = *--v58;
            v59 = v60;
            *v58 = 0;
            if (v60)
            {
              MEMORY[0x259C63150](v59, 0x1000C8077774924);
            }
          }

          while (v58 != v10);
          goto LABEL_118;
        }

LABEL_119:
        v152 = v10;
        operator delete(v12);
      }

LABEL_120:
      if (v149 != &v150)
      {
        free(v149);
      }

      return v6;
    }
  }

  if (!v15)
  {
    goto LABEL_193;
  }

  if (mlir::DenseIntElementsAttr::classof(v15))
  {
    v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
    v141 = v15;
    v142 = v41;
    v42 = mlir::ElementsAttr::getType(&v141);
    v43 = v42;
    if (v42)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
    }

    v147 = v43;
    v148 = v42;
    v44 = mlir::ShapedType::getShape(&v147);
    v145 = 3;
    if (v45 == 1 && *v44 == v145)
    {
      v135 = v15;
      v139 = mlir::DenseElementsAttr::getType(&v135);
      v140 = v46;
      ElementType = mlir::ShapedType::getElementType(&v139);
      if (mlir::Type::isUnsignedInteger(&ElementType, 64))
      {
LABEL_193:
        if (!v121)
        {
          goto LABEL_97;
        }

        if (mlir::DenseIntElementsAttr::classof(v121))
        {
          v47 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v121 + 8);
          v141 = v121;
          v142 = v47;
          v48 = mlir::ElementsAttr::getType(&v141);
          v49 = v48;
          if (v48)
          {
            v48 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v48 + 8);
          }

          v147 = v49;
          v148 = v48;
          v50 = mlir::ShapedType::getShape(&v147);
          v145 = 6;
          if (v51 == 1 && *v50 == v145)
          {
            v135 = v121;
            v139 = mlir::DenseElementsAttr::getType(&v135);
            v140 = v52;
            ElementType = mlir::ShapedType::getElementType(&v139);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
LABEL_97:
              if (v27 && (mlir::anec::PaddingModeAttr::classof(v27) & 1) == 0)
              {
                v54 = "'anec.deconvolution' op attribute 'padding_mode' failed to satisfy constraint: valid PaddingMode";
                goto LABEL_128;
              }

              if (v16)
              {
                v53 = v120;
                if (*(*v16 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || (v141 = v16, v147 = mlir::IntegerAttr::getType(&v141), !mlir::Type::isUnsignedInteger(&v147, 64)))
                {
                  v54 = "'anec.deconvolution' op attribute 'groups' failed to satisfy constraint: 64-bit unsigned integer attribute";
LABEL_128:
                  v141 = v54;
                  v143 = 259;
                  mlir::emitError(a2, &v141, &v147);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v147);
                  return v6;
                }
              }

              else
              {
                v53 = v120;
              }

              if (!v5 || *(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
              {
                if (!v19)
                {
                  goto LABEL_194;
                }

                if (!mlir::DenseFPElementsAttr::classof(v19))
                {
                  goto LABEL_187;
                }

                v62 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                v141 = v19;
                v142 = v62;
                v63 = mlir::ElementsAttr::getType(&v141);
                v64 = v63;
                if (v63)
                {
                  v63 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v63 + 8);
                }

                v147 = v64;
                v148 = v63;
                mlir::ShapedType::getShape(&v147);
                if (v65)
                {
                  v66 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                  v145 = v19;
                  v146 = v66;
                  v67 = mlir::ElementsAttr::getType(&v145);
                  v68 = v67;
                  if (v67)
                  {
                    v67 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v67 + 8);
                  }

                  v139 = v68;
                  v140 = v67;
                  mlir::ShapedType::getShape(&v139);
                  v53 = v120;
                  if (v69 != 1)
                  {
                    v70 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v19 + 8);
                    v135 = v19;
                    v136 = v70;
                    v71 = mlir::ElementsAttr::getType(&v135);
                    v72 = v71;
                    if (v71)
                    {
                      v71 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v71 + 8);
                    }

                    ElementType = v72;
                    v138 = v71;
                    mlir::ShapedType::getShape(&ElementType);
                    v53 = v120;
                    if (v73 != 4)
                    {
                      goto LABEL_187;
                    }
                  }
                }

                v129[0] = v19;
                v133 = mlir::DenseElementsAttr::getType(v129);
                v134 = v74;
                v130[0] = mlir::ShapedType::getElementType(&v133);
                if (mlir::Type::isF16(v130) || (v127[0] = v19, v131 = mlir::DenseElementsAttr::getType(v127), v132 = v75, v128[0] = mlir::ShapedType::getElementType(&v131), mlir::Type::isF32(v128)))
                {
LABEL_194:
                  if (!v53)
                  {
                    goto LABEL_195;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v53))
                  {
                    goto LABEL_188;
                  }

                  v76 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v53 + 8);
                  v141 = v53;
                  v142 = v76;
                  v77 = mlir::ElementsAttr::getType(&v141);
                  v78 = v77;
                  if (v77)
                  {
                    v77 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v77 + 8);
                  }

                  v147 = v78;
                  v148 = v77;
                  mlir::ShapedType::getShape(&v147);
                  v79 = v120;
                  if (v80)
                  {
                    v81 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                    v145 = v120;
                    v146 = v81;
                    v82 = mlir::ElementsAttr::getType(&v145);
                    v83 = v82;
                    if (v82)
                    {
                      v82 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v82 + 8);
                    }

                    v139 = v83;
                    v140 = v82;
                    mlir::ShapedType::getShape(&v139);
                    v79 = v120;
                    if (v84 != 1)
                    {
                      v85 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v120 + 8);
                      v135 = v120;
                      v136 = v85;
                      v86 = mlir::ElementsAttr::getType(&v135);
                      v87 = v86;
                      if (v86)
                      {
                        v86 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v86 + 8);
                      }

                      ElementType = v87;
                      v138 = v86;
                      mlir::ShapedType::getShape(&ElementType);
                      v79 = v120;
                      if (v88 != 4)
                      {
                        goto LABEL_188;
                      }
                    }
                  }

                  v129[0] = v79;
                  v133 = mlir::DenseElementsAttr::getType(v129);
                  v134 = v89;
                  v130[0] = mlir::ShapedType::getElementType(&v133);
                  if (mlir::Type::isSignedInteger(v130, 8) || (v127[0] = v79, v131 = mlir::DenseElementsAttr::getType(v127), v132 = v90, v128[0] = mlir::ShapedType::getElementType(&v131), mlir::Type::isUnsignedInteger(v128, 8)))
                  {
LABEL_195:
                    if (!v18)
                    {
                      goto LABEL_185;
                    }

                    if (!mlir::DenseElementsAttr::classof(v18))
                    {
                      goto LABEL_189;
                    }

                    v91 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                    v141 = v18;
                    v142 = v91;
                    v92 = mlir::ElementsAttr::getType(&v141);
                    v93 = v92;
                    if (v92)
                    {
                      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v92 + 8);
                    }

                    v147 = v93;
                    v148 = v92;
                    mlir::ShapedType::getShape(&v147);
                    if (v94)
                    {
                      v95 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                      v145 = v18;
                      v146 = v95;
                      v96 = mlir::ElementsAttr::getType(&v145);
                      v97 = v96;
                      if (v96)
                      {
                        v96 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v96 + 8);
                      }

                      v139 = v97;
                      v140 = v96;
                      mlir::ShapedType::getShape(&v139);
                      if (v98 != 1)
                      {
                        v99 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                        v135 = v18;
                        v136 = v99;
                        v100 = mlir::ElementsAttr::getType(&v135);
                        v101 = v100;
                        if (v100)
                        {
                          v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v100 + 8);
                        }

                        ElementType = v101;
                        v138 = v100;
                        mlir::ShapedType::getShape(&ElementType);
                        if (v102 != 2)
                        {
                          v103 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                          v131 = v18;
                          v132 = v103;
                          v104 = mlir::ElementsAttr::getType(&v131);
                          v105 = v104;
                          if (v104)
                          {
                            v104 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v104 + 8);
                          }

                          v133 = v105;
                          v134 = v104;
                          mlir::ShapedType::getShape(&v133);
                          if (v106 != 3)
                          {
                            v107 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                            v129[0] = v18;
                            v129[1] = v107;
                            v108 = mlir::ElementsAttr::getType(v129);
                            v109 = v108;
                            if (v108)
                            {
                              v108 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v108 + 8);
                            }

                            v130[0] = v109;
                            v130[1] = v108;
                            mlir::ShapedType::getShape(v130);
                            if (v110 != 4)
                            {
                              v111 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                              v127[0] = v18;
                              v127[1] = v111;
                              v112 = mlir::ElementsAttr::getType(v127);
                              v113 = v112;
                              if (v112)
                              {
                                v112 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v112 + 8);
                              }

                              v128[0] = v113;
                              v128[1] = v112;
                              mlir::ShapedType::getShape(v128);
                              if (v114 != 5)
                              {
                                v115 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v18 + 8);
                                v125[0] = v18;
                                v125[1] = v115;
                                v116 = mlir::ElementsAttr::getType(v125);
                                v117 = v116;
                                if (v116)
                                {
                                  v116 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v116 + 8);
                                }

                                v126[0] = v117;
                                v126[1] = v116;
                                mlir::ShapedType::getShape(v126);
                                if (v118 != 6)
                                {
                                  goto LABEL_189;
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v122 = v18;
                    v123[0] = mlir::DenseElementsAttr::getType(&v122);
                    v123[1] = v119;
                    v124 = mlir::ShapedType::getElementType(v123);
                    if (mlir::Type::isF16(&v124))
                    {
LABEL_185:
                      if (!v17 || *(*v17 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
                      {
                        return 1;
                      }

                      v54 = "'anec.deconvolution' op attribute 'kernel_mutable_palettized_LUT' failed to satisfy constraint: dictionary of named attribute values";
                    }

                    else
                    {
LABEL_189:
                      v54 = "'anec.deconvolution' op attribute 'kernel_palettized_LUT' failed to satisfy constraint: dense elements attribute for palettized LUT of rank 0/1/2/3/4/5/6";
                    }
                  }

                  else
                  {
LABEL_188:
                    v54 = "'anec.deconvolution' op attribute 'kernel_zero_point' failed to satisfy constraint: si8 or ui8 elements attribute of rank 0/1/4";
                  }
                }

                else
                {
LABEL_187:
                  v54 = "'anec.deconvolution' op attribute 'kernel_scale' failed to satisfy constraint: f16 or f32 elements attribute of rank 0/1/4";
                }
              }

              else
              {
                v54 = "'anec.deconvolution' op attribute 'channel_wise' failed to satisfy constraint: unit attribute";
              }

              goto LABEL_128;
            }
          }
        }

        v54 = "'anec.deconvolution' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
        goto LABEL_128;
      }
    }
  }

  v141 = "'anec.deconvolution' op attribute 'dilation' failed to satisfy constraint: ui64 elements attribute of shape {3}";
  v143 = 259;
  mlir::emitError(a2, &v141, &v147);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v147);
  if (v147)
  {
    mlir::InFlightDiagnostic::report(&v147);
  }

  if (v156 == 1)
  {
    mlir::Diagnostic::~Diagnostic(&v148);
  }

  return v6;
}

BOOL mlir::anec::Deconvolution::verifyWithANEC(mlir::Operation **a1, void *a2, unint64_t a3)
{
  v164 = *MEMORY[0x277D85DE8];
  ANECConvLayerDescInitialize();
  v6 = *a2;
  if (*a2)
  {
    v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v144[0] = v6;
  v144[1] = v7;
  v8 = a2[2];
  if (v8)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  v143[0] = v8;
  v143[1] = v9;
  mlir::ShapedType::getShape(v144);
  v11 = v10;
  mlir::ShapedType::getShape(v144);
  IndexFromDim = mlir::anec::getIndexFromDim(1, v12);
  if ((v14 & 1) == 0)
  {
    v151 = "Failed to get channel index for Conv";
    v153[8] = 259;
    mlir::OpState::emitOpError(a1, &v151, &AttrDictionary);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v163 == 1)
    {
      if (v162 != &v163)
      {
        free(v162);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v161;
        v41 = __p;
        if (v161 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v161 = v39;
        operator delete(v41);
      }

      v42 = v158;
      if (v158)
      {
        v43 = v159;
        v44 = v158;
        if (v159 != v158)
        {
          do
          {
            v46 = *--v43;
            v45 = v46;
            *v43 = 0;
            if (v46)
            {
              MEMORY[0x259C63150](v45, 0x1000C8077774924);
            }
          }

          while (v43 != v42);
          v44 = v158;
        }

        v159 = v42;
        operator delete(v44);
      }

      v69 = v156;
      if (v156 != v157)
      {
        goto LABEL_154;
      }
    }

    return mlir::anec::verifyConvolutionWithANEC(&v117, *a1, a2, a3);
  }

  v15 = IndexFromDim;
  v148 = v150;
  v149 = 0x300000000;
  v145 = v147;
  v146 = 0x300000000;
  v151 = v153;
  v152 = 0x600000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v19 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 32), (v17 + 16 * v18), *(*(*(*a1 + 6) + 96) + 72));
  mlir::getValues<int>(v19, &v148);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v20 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v21 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v20, (v21 + 16 * v22 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<int>(v23, &v145);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v24 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v25 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26 - 16), *(*(*(*a1 + 6) + 96) + 56));
  mlir::getValues<int>(v27, &v151);
  Shape = mlir::ShapedType::getShape(v144);
  v29 = mlir::ShapedType::getShape(v143);
  v30 = *(Shape + 8 * v15);
  if (v11 != 5)
  {
    v47 = (v29 + 24);
    v108 = v29;
    v48 = (v29 + 16);
    v49 = 1;
    goto LABEL_43;
  }

  if (v149 <= 2)
  {
    v141[0] = "failed: found 2 strides, but the convolution op is 3d";
    v142 = 259;
    mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v163 == 1)
    {
      if (v162 != &v163)
      {
        free(v162);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v161;
        v33 = __p;
        if (v161 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v161 = v31;
        operator delete(v33);
      }

      v34 = v158;
      if (!v158)
      {
        goto LABEL_98;
      }

      v35 = v159;
      v36 = v158;
      if (v159 == v158)
      {
LABEL_97:
        v159 = v34;
        operator delete(v36);
LABEL_98:
        if (v156 != v157)
        {
          free(v156);
        }

        goto LABEL_149;
      }

      do
      {
        v38 = *--v35;
        v37 = v38;
        *v35 = 0;
        if (v38)
        {
          MEMORY[0x259C63150](v37, 0x1000C8077774924);
        }
      }

      while (v35 != v34);
LABEL_96:
      v36 = v158;
      goto LABEL_97;
    }

    goto LABEL_149;
  }

  if (v146 > 2)
  {
    if (v152 <= 5)
    {
      v70 = "failed: found 4 paddings, but the convolution op is 3d";
LABEL_145:
      v141[0] = v70;
      v142 = 259;
      mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v163 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v155);
      }

      goto LABEL_149;
    }

    v47 = (v29 + 32);
    v48 = (v29 + 24);
    v108 = v29;
    v49 = *(v29 + 16);
LABEL_43:
    v111 = *v48;
    v112 = *v47;
    v110 = *(v148 + 2);
    v50 = *v148;
    v115 = *(v145 + 1);
    v116 = *(v145 + 2);
    v114 = *v145;
    v109 = *(v151 + 2);
    v113 = *v151;
    IncPadAttr = mlir::anec::AveragePool::getIncPadAttr(a1);
    v52 = @"ChannelWiseDeConv";
    if (!IncPadAttr)
    {
      v52 = @"DeConv";
    }

    v117 = v52;
    v53 = *a1;
    if (*(*a1 + 47) && (InherentAttr = mlir::Operation::getInherentAttr(*a1, "kernel_palettized_LUT", 21), (v55 & 1) != 0))
    {
      v56 = InherentAttr != 0;
    }

    else
    {
      v56 = mlir::DictionaryAttr::contains(v53 + 56, "kernel_palettized_LUT", 0x15uLL);
    }

    v57 = *a1;
    if (*(*a1 + 47) && (v58 = mlir::Operation::getInherentAttr(*a1, "kernel_mutable_palettized_LUT", 29), (v59 & 1) != 0))
    {
      if (!(v56 & 1 | (v58 != 0)))
      {
LABEL_52:
        v118 = @"Dense";
        AttrDictionary = mlir::ShapedType::getElementType(v143);
        if (mlir::Type::isF16(&AttrDictionary))
        {
          v60 = @"Float16";
        }

        else if (mlir::Type::isF32(&AttrDictionary))
        {
          v60 = @"Float32";
        }

        else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
        {
          v60 = @"UInt8";
        }

        else
        {
          mlir::Type::isInteger(&AttrDictionary, 8);
          v60 = @"Int8";
        }

        v119 = v60;
        goto LABEL_119;
      }
    }

    else if (((v56 | mlir::DictionaryAttr::contains(v57 + 56, "kernel_mutable_palettized_LUT", 0x1DuLL)) & 1) == 0)
    {
      goto LABEL_52;
    }

    v61 = v143[0];
    if (v143[0])
    {
      v62 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v143[0] + 8);
    }

    else
    {
      v62 = 0;
    }

    v140[0] = v61;
    v140[1] = v62;
    AttrDictionary = mlir::ShapedType::getElementType(v140);
    IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&AttrDictionary);
    v72 = IntOrFloatBitWidth;
    if (v56)
    {
      v73 = IntOrFloatBitWidth;
      v74 = v49;
      v75 = *a1;
      if (!*(*a1 + 47) || (v76 = mlir::Operation::getInherentAttr(*a1, "kernel_palettized_LUT", 21), (v77 & 1) == 0))
      {
        v76 = mlir::DictionaryAttr::get(v75 + 56, "kernel_palettized_LUT", 0x15uLL);
      }

      v78 = v76;
      v49 = v74;
      if (v76)
      {
        v79 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v76 + 8);
      }

      else
      {
        v79 = 0;
      }

      v72 = v73;
      v141[0] = v78;
      v141[1] = v79;
      Type = mlir::ElementsAttr::getType(v141);
      v86 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      AttrDictionary = v86;
      v155 = Type;
      ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
    }

    else
    {
      v80 = *a1;
      if (!*(*a1 + 47) || (v81 = mlir::Operation::getInherentAttr(*a1, "kernel_mutable_palettized_LUT", 29), (v82 & 1) == 0))
      {
        v81 = mlir::DictionaryAttr::get(v80 + 56, "kernel_mutable_palettized_LUT", 0x1DuLL);
      }

      v141[0] = v81;
      v83 = mlir::DictionaryAttr::get(v141, "type", 4uLL);
      if (v83)
      {
        if (*(*v83 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
        {
          v84 = v83;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      v139 = v84;
      v88 = mlir::TypeAttr::getValue(&v139);
      v89 = v88;
      if (v88)
      {
        v88 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v88 + 8);
      }

      AttrDictionary = v89;
      v155 = v88;
      ElementType = mlir::ShapedType::getElementType(&AttrDictionary);
    }

    AttrDictionary = ElementType;
    if (mlir::Type::isF16(&AttrDictionary))
    {
      v90 = @"Float16";
    }

    else if (mlir::Type::isF32(&AttrDictionary))
    {
      v90 = @"Float32";
    }

    else if (mlir::Type::isUnsignedInteger(&AttrDictionary, 8))
    {
      v90 = @"UInt8";
    }

    else
    {
      mlir::Type::isInteger(&AttrDictionary, 8);
      v90 = @"Int8";
    }

    v119 = v90;
    v106 = v72 - 2;
    if ((v72 - 2) >= 7 || ((0x55u >> v106) & 1) == 0)
    {
      v70 = "failed: only 2-bit, 4-bit, 6-bit and 8-bit palettization is supported";
      goto LABEL_145;
    }

    v118 = off_279839FA8[v106];
LABEL_119:
    AttrDictionary = mlir::anec::Convolution::getPaddingModeAttr(a1);
    v120 = off_27983A090[mlir::IntegerAttr::getInt(&AttrDictionary)];
    v91 = mlir::anec::AveragePool::getIncPadAttr(a1);
    v92 = v30;
    if (!v91)
    {
      v93 = *(v108 + 8);
      v141[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v141, &AttrDictionary);
      if (v155 > 0x40)
      {
        v94 = *AttrDictionary;
        MEMORY[0x259C63150]();
      }

      else
      {
        v94 = AttrDictionary;
      }

      v92 = v94 * v93;
    }

    v121 = v92;
    if (!mlir::anec::AveragePool::getIncPadAttr(a1))
    {
      v141[0] = mlir::anec::Convolution::getGroupsAttr(a1);
      mlir::IntegerAttr::getValue(v141, &AttrDictionary);
      if (v155 > 0x40)
      {
        v30 = *AttrDictionary;
        MEMORY[0x259C63150]();
      }

      else
      {
        v30 = AttrDictionary;
      }
    }

    v122 = v30;
    v123 = 0;
    v124 = v112;
    v125 = v111;
    v126 = v49;
    v127 = v110;
    *&v95 = vrev64_s32(v50);
    *(&v95 + 1) = v109;
    v128 = v95;
    v129 = vextq_s8(v113, v113, 8uLL);
    v130 = 0;
    v131 = v116;
    v132 = v115;
    v133 = v114;
    if (mlir::anec::Convolution::getKernelScaleAttr(a1))
    {
      KernelScaleAttr = mlir::anec::Convolution::getKernelScaleAttr(a1);
      if (KernelScaleAttr)
      {
        v97 = KernelScaleAttr;
        v98 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelScaleAttr + 8);
        SplatFloat = mlir::getSplatFloatValue<float>(v97, v98);
        if ((SplatFloat & 0x100000000) == 0)
        {
LABEL_131:
          v134 = 1;
          v100 = mlir::anec::Convolution::getKernelScaleAttr(a1);
          ElementTypeOrSelf = mlir::getElementTypeOrSelf(v100);
          goto LABEL_134;
        }
      }

      else
      {
        SplatFloat = mlir::getSplatFloatValue<float>(0, 0);
        if ((SplatFloat & 0x100000000) == 0)
        {
          goto LABEL_131;
        }
      }

      v135 = SplatFloat;
    }

LABEL_134:
    if (!mlir::anec::Convolution::getKernelZeroPointAttr(a1))
    {
      goto LABEL_149;
    }

    KernelZeroPointAttr = mlir::anec::Convolution::getKernelZeroPointAttr(a1);
    if (KernelZeroPointAttr)
    {
      v103 = KernelZeroPointAttr;
      v104 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*KernelZeroPointAttr + 8);
      SplatInt = mlir::getSplatIntValue<int>(v103, v104);
      if ((SplatInt & 0x100000000) == 0)
      {
LABEL_137:
        v137 = 1;
        goto LABEL_149;
      }
    }

    else
    {
      SplatInt = mlir::getSplatIntValue<int>(0, 0);
      if ((SplatInt & 0x100000000) == 0)
      {
        goto LABEL_137;
      }
    }

    v138 = SplatInt;
    goto LABEL_149;
  }

  v141[0] = "failed: found 2 dilations, but the convolution op is 3d";
  v142 = 259;
  mlir::OpState::emitOpError(a1, v141, &AttrDictionary);
  mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v163 == 1)
  {
    if (v162 != &v163)
    {
      free(v162);
    }

    v63 = __p;
    if (__p)
    {
      v64 = v161;
      v65 = __p;
      if (v161 != __p)
      {
        do
        {
          v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
        }

        while (v64 != v63);
        v65 = __p;
      }

      v161 = v63;
      operator delete(v65);
    }

    v34 = v158;
    if (!v158)
    {
      goto LABEL_98;
    }

    v66 = v159;
    v36 = v158;
    if (v159 == v158)
    {
      goto LABEL_97;
    }

    do
    {
      v68 = *--v66;
      v67 = v68;
      *v66 = 0;
      if (v68)
      {
        MEMORY[0x259C63150](v67, 0x1000C8077774924);
      }
    }

    while (v66 != v34);
    goto LABEL_96;
  }

LABEL_149:
  if (v151 != v153)
  {
    free(v151);
  }

  if (v145 != v147)
  {
    free(v145);
  }

  v69 = v148;
  if (v148 != v150)
  {
LABEL_154:
    free(v69);
  }

  return mlir::anec::verifyConvolutionWithANEC(&v117, *a1, a2, a3);
}

BOOL mlir::anec::Deconvolution::addOpToNetwork(mlir::Operation **a1, uint64_t a2, uint64_t a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v57 = *a1;
  if (a2)
  {
    v6 = *(v3 + 9);
    v7 = *(v6 + 24);
    v8 = *(v6 + 56);
    if (*(v3 + 9))
    {
      v9 = v3 - 16;
    }

    else
    {
      v9 = 0;
    }

    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
    v64[0] = mlir::Operation::getAttrDictionary(v3);
    Value = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v11 = mlir::DictionaryAttr::getValue(v64);
    v13 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v11 + 16 * v12 - 32), *(*(*(v57 + 6) + 96) + 16));
    if (v13)
    {
      if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v58[0] = v14;
    mlir::IntegerAttr::getValue(v58, v64);
    if (LODWORD(v64[1]) > 0x40)
    {
      MEMORY[0x259C63150]();
    }

    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v24 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v25 = mlir::DictionaryAttr::getValue(v64);
    mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v24, (v25 + 16 * v26 - 48), **(*(v57 + 6) + 96));
    v62[0] = v63;
    v62[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v27 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v28 = mlir::DictionaryAttr::getValue(v64);
    v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v27 + 32), (v28 + 16 * v29), *(*(*(v57 + 6) + 96) + 72));
    mlir::getValues<unsigned long>(v30, v62);
    __src[0] = v61;
    __src[1] = 0x200000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v31 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v32 = mlir::DictionaryAttr::getValue(v64);
    v34 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v31, (v32 + 16 * v33 - 32), *(*(*(v57 + 6) + 96) + 8));
    mlir::getValues<unsigned long>(v34, __src);
    v58[0] = v59;
    v58[1] = 0x400000000;
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v35 = mlir::DictionaryAttr::getValue(v64);
    v64[0] = mlir::Operation::getAttrDictionary(v57);
    v36 = mlir::DictionaryAttr::getValue(v64);
    v38 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v35 + 16), (v36 + 16 * v37 - 16), *(*(*(v57 + 6) + 96) + 56));
    mlir::getValues<unsigned long>(v38, v58);
    v39 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v39)
    {
      v40 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v39 + 8);
    }

    else
    {
      v40 = 0;
    }

    v55[0] = v39;
    v55[1] = v40;
    mlir::ShapedType::getShape(v55);
    v41 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v41)
    {
      v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v41 + 8);
    }

    else
    {
      v42 = 0;
    }

    v54[0] = v41;
    v54[1] = v42;
    mlir::ShapedType::getShape(v54);
    v43 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
    if (v43)
    {
      v44 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    v53[0] = v43;
    v53[1] = v44;
    mlir::ShapedType::getShape(v53);
    v52[0] = 0;
    v52[1] = 0;
    v48 = v52;
    v64[0] = v8;
    DefiningOp = mlir::Value::getDefiningOp(v64);
    if (DefiningOp)
    {
      mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v48, DefiningOp);
    }

    v50 = 0;
    v51 = 0;
    v49 = 0;
    v15 = 0;
    {
      operator new();
    }

    if (v58[0] != v59)
    {
      free(v58[0]);
    }

    if (__src[0] != v61)
    {
      free(__src[0]);
    }

    v46 = v62[0];
    if (v62[0] != v63)
    {
LABEL_50:
      free(v46);
    }
  }

  else
  {
    v58[0] = "network should not be nullptr";
    v59[8] = 259;
    mlir::Operation::emitError(v64, v3, v58);
    v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v64);
    if (v64[0])
    {
      mlir::InFlightDiagnostic::report(v64);
    }

    if (v72 == 1)
    {
      if (v71 != &v72)
      {
        free(v71);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v70;
        v18 = __p;
        if (v70 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v70 = v16;
        operator delete(v18);
      }

      v19 = v67;
      if (v67)
      {
        v20 = v68;
        v21 = v67;
        if (v68 != v67)
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
          v21 = v67;
        }

        v68 = v19;
        operator delete(v21);
      }

      v46 = v65;
      if (v65 != &v66)
      {
        goto LABEL_50;
      }
    }
  }

  return v15;
}

uint64_t mlir::anec::Deconvolution::getExecutionCost(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a1;
  v14 = *(*a1 + 72);
  v15 = (*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v15)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
    v13 = *a1;
    v14 = *(*a1 + 72);
  }

  else
  {
    v16 = 0;
  }

  v47[0] = v15;
  v47[1] = v16;
  v17 = (*(*(v14 + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17)
  {
    v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
    v13 = *a1;
  }

  else
  {
    v18 = 0;
  }

  v46[0] = v17;
  v46[1] = v18;
  v19 = *(v13 + 36);
  v20 = v13 - 16;
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, 0);
  v23 = 0;
  v24 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v24)
  {
    v23 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
  }

  v45[0] = v24;
  v45[1] = v23;
  mlir::ShapedType::getShape(v47);
  mlir::ShapedType::getShape(v46);
  mlir::ShapedType::getShape(v45);
  mlir::ShapedType::getShape(v47);
  mlir::anec::getIndexFromDim(0, v25);
  if (v26 & 1) != 0 && (mlir::ShapedType::getShape(v47), mlir::anec::getIndexFromDim(1, v27), (v28) && (mlir::ShapedType::getShape(v47), mlir::anec::getIndexFromDim(3, v29), (v30) && (mlir::ShapedType::getShape(v47), mlir::anec::getIndexFromDim(4, v31), (v32))
  {
    mlir::ShapedType::getShape(v47);
    mlir::anec::getIndexFromDim(2, v33);
    v34 = *a1;
    ElementType = mlir::ShapedType::getElementType(v47);
  }

  else
  {
    v37 = std::__throw_bad_optional_access[abi:nn200100]();
    return mlir::anec::inferElementwiseReturnTypes(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11);
  }
}

uint64_t mlir::anec::inferElementwiseReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v13 = mlir::TypeRange::dereference_iterator(a9, 0);
  v14 = v13;
  if (v13)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
  }

  __src = v14;
  v41 = v13;
  Shape = mlir::ShapedType::getShape(&__src);
  __src = v42;
  v41 = 0x400000000;
  if (((8 * v15) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v17 = 0;
  v18 = 8 * v15;
  if (v15)
  {
    memcpy(__src, Shape, v18);
    v17 = v41;
  }

  v37 = v39;
  v38 = 0x400000000;
  v19 = v17 + (v18 >> 3);
  LODWORD(v41) = v19;
  if (v19)
  {
    if (v19 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v39, __src, 8 * v19);
    LODWORD(v38) = v19;
  }

  if (a10 != 1)
  {
    v35 = a5;
    for (i = 1; i != a10; ++i)
    {
      v21 = mlir::TypeRange::dereference_iterator(a9, i);
      v22 = v21;
      v23 = __src;
      v24 = v41;
      if (v21)
      {
        v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
      }

      v36[0] = v22;
      v36[1] = v21;
      v25 = mlir::ShapedType::getShape(v36);
      if ((mlir::OpTrait::util::getBroadcastedShape(v23, v24, v25, v26, &v37) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(a4, v35);
        goto LABEL_30;
      }

      v27 = v38;
      v28 = v41;
      if (v41 >= v38)
      {
        if (v38)
        {
          memmove(__src, v37, 8 * v38);
        }
      }

      else
      {
        if (HIDWORD(v41) < v38)
        {
          LODWORD(v41) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v41)
        {
          memmove(__src, v37, 8 * v41);
        }

        else
        {
          v28 = 0;
        }

        if (v38 != v28)
        {
          memcpy(__src + 8 * v28, v37 + 8 * v28, 8 * (v38 - v28));
        }
      }

      LODWORD(v41) = v27;
    }

    v19 = v38;
  }

  v30 = v37;
  v31 = mlir::TypeRange::dereference_iterator(a9, 0);
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(v31);
  MostDefinedTypeForANE = mlir::MemRefType::get(v30, v19, ElementTypeOrSelf, 0, 0, 0);
LABEL_30:
  v33 = *(a11 + 8);
  if (v33 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v33) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v37 != v39)
  {
    free(v37);
  }

  if (__src != v42)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::inferElementwiseCompareReturnTypes(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v43[4] = *MEMORY[0x277D85DE8];
  v14 = mlir::TypeRange::dereference_iterator(a9, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  __src = v15;
  v42 = v14;
  Shape = mlir::ShapedType::getShape(&__src);
  __src = v43;
  v42 = 0x400000000;
  if (((8 * v16) >> 3) >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v18 = 0;
  v19 = 8 * v16;
  if (v16)
  {
    memcpy(__src, Shape, v19);
    v18 = v42;
  }

  v38 = v40;
  v39 = 0x400000000;
  v20 = v18 + (v19 >> 3);
  LODWORD(v42) = v20;
  if (v20)
  {
    if (v20 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v40, __src, 8 * v20);
    LODWORD(v39) = v20;
  }

  if (a10 != 1)
  {
    v35 = a4;
    v36 = a5;
    for (i = 1; i != a10; ++i)
    {
      v22 = mlir::TypeRange::dereference_iterator(a9, i);
      v23 = v22;
      v24 = __src;
      v25 = v42;
      if (v22)
      {
        v22 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v22 + 8);
      }

      v37[0] = v23;
      v37[1] = v22;
      v26 = mlir::ShapedType::getShape(v37);
      if ((mlir::OpTrait::util::getBroadcastedShape(v24, v25, v26, v27, &v38) & 1) == 0)
      {
        MostDefinedTypeForANE = mlir::getMostDefinedTypeForANE(v35, v36);
        goto LABEL_30;
      }

      v28 = v39;
      v29 = v42;
      if (v42 >= v39)
      {
        if (v39)
        {
          memmove(__src, v38, 8 * v39);
        }
      }

      else
      {
        if (HIDWORD(v42) < v39)
        {
          LODWORD(v42) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v42)
        {
          memmove(__src, v38, 8 * v42);
        }

        else
        {
          v29 = 0;
        }

        if (v39 != v29)
        {
          memcpy(__src + 8 * v29, v38 + 8 * v29, 8 * (v39 - v29));
        }
      }

      LODWORD(v42) = v28;
    }

    v20 = v39;
  }

  v31 = v38;
  v32 = mlir::IntegerType::get(a1, 8, 1u);
  MostDefinedTypeForANE = mlir::MemRefType::get(v31, v20, v32, 0, 0, 0);
LABEL_30:
  v33 = *(a11 + 8);
  if (v33 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v33) = MostDefinedTypeForANE;
  ++*(a11 + 8);
  if (v38 != v40)
  {
    free(v38);
  }

  if (__src != v43)
  {
    free(__src);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseAdd::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v85 = 0;
  v83 = 0;
  v84 = 0;
  v82[0] = &v85;
  v82[1] = &v84;
  if (*(*(a1 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id && (*(a1 + 46) & 0x80) != 0 && *(a1 + 68) == 2)
  {
    v8 = mlir::detail::matchOperandOrValueAtIndex<mlir::detail::RecursivePatternMatcherBinder<mlir::anec::MatMul,mlir::detail::any_value_binder,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(a1, 0, v82);
    v86[0] = *(*(a1 + 72) + 56);
    DefiningOp = mlir::Value::getDefiningOp(v86);
    if (DefiningOp)
    {
      if (((*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id) & v8) != 0)
      {
        v80 = v84;
        v81 = v83;
        v79 = DefiningOp;
        mlir::anec::MatMul::getBias(&v81, v86);
        if (v87 == 1)
        {
          v11 = v86[1];
          if (llvm::APFloatBase::PPCDoubleDouble(v10) == v11)
          {
            llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v86[1]);
          }

          else
          {
            llvm::detail::IEEEFloat::~IEEEFloat(&v86[1]);
          }

          operator new();
        }

        if (*(v81 + 9))
        {
          v12 = v81 - 16;
        }

        else
        {
          v12 = 0;
        }

        v13 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v12, 0);
        if (!v13 || *v13)
        {
          operator new();
        }

        v78[0] = mlir::mps::ConstantOp::getAsAttribute(&v80);
        v78[1] = v17;
        v77[0] = mlir::mps::ConstantOp::getAsAttribute(&v79);
        v77[1] = v18;
        Type = mlir::ElementsAttr::getType(v78);
        v20 = Type;
        if (Type)
        {
          Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
        }

        v76[0] = v20;
        v76[1] = Type;
        v21 = mlir::ElementsAttr::getType(v77);
        v22 = v21;
        if (v21)
        {
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v21 + 8);
        }

        v75[0] = v22;
        v75[1] = v21;
        mlir::ShapedType::getShape(v76);
        v24 = v23;
        mlir::ShapedType::getShape(v75);
        if (v24 != v25 || (ElementTypeOrSelf = mlir::getElementTypeOrSelf(v76[0]), ElementTypeOrSelf != mlir::getElementTypeOrSelf(v75[0])))
        {
          operator new();
        }

        Shape = mlir::ShapedType::getShape(v76);
        v68 = v28;
        v29 = mlir::ShapedType::getShape(v75);
        mlir::ShapedType::getShape(v76);
        IndexFromDim = mlir::anec::getIndexFromDim(4, v30);
        v33 = v32;
        mlir::ShapedType::getShape(v75);
        v35 = mlir::anec::getIndexFromDim(4, v34);
        v37 = v36;
        mlir::ShapedType::getShape(v76);
        v39 = mlir::anec::getIndexFromDim(1, v38);
        if ((v33 & 1) != 0 && (v37 & 1) != 0 && (v40 & 1) != 0 && IndexFromDim == v35)
        {
          v41 = v39;
          mlir::ShapedType::getShape(v76);
          if (v42)
          {
            v43 = 0;
            while (1)
            {
              v45 = IndexFromDim == v43 ? Shape[IndexFromDim] : 1;
              if (*(v29 + 8 * v43) != v45)
              {
                break;
              }

              if (v41 != v43 && IndexFromDim != v43 && Shape[v43] != 1)
              {
                v46 = "unsupported kernel shape";
                goto LABEL_55;
              }

              ++v43;
              mlir::ShapedType::getShape(v76);
              if (v43 == v44)
              {
                goto LABEL_50;
              }
            }

            v46 = "unsupported bias shape";
          }

          else
          {
LABEL_50:
            mlir::ShapedType::getShape(v76);
            if (IndexFromDim == v47 - 1 && (mlir::ElementsAttr::isSplat(v78) & 1) == 0 && !mlir::ElementsAttr::isSplat(v77))
            {
              llvm::SmallVector<long long,4u>::SmallVector<long long,void>(v86, Shape, v68);
              v48 = v86[0];
              ++*(v86[0] + v41);
              v49 = LODWORD(v86[1]);
              v50 = mlir::getElementTypeOrSelf(v76[0]);
              v51 = mlir::RankedTensorType::get(v48, v49, v50, 0);
              BufferTensorAttr = mlir::mps::getBufferTensorAttr(v51);
              ElementsAttrRawData = mlir::getElementsAttrRawData(v78[0]);
              v54 = v53;
              v55 = mlir::getElementsAttrRawData(v77[0]);
              v57 = v56;
              MutableRawData = mlir::mps::MPSBufferTensorAttr::getMutableRawData(&BufferTensorAttr);
              memcpy(MutableRawData, ElementsAttrRawData, v54);
              memcpy(&MutableRawData[v54], v55, v57);
              v59 = v86[0];
              v60 = LODWORD(v86[1]);
              v61 = mlir::getElementTypeOrSelf((*(v80 - 8) & 0xFFFFFFFFFFFFFFF8));
              v73 = mlir::MemRefType::get(v59, v60, v61, 0, 0, 0);
              v72 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::mps::MPSBufferTensorAttr &>((a2 + 1), *(v80 + 24), &v73, &BufferTensorAttr);
              F16Type = mlir::Builder::getF16Type(a2 + 1, v62);
              FloatAttr = mlir::Builder::getFloatAttr(1.0, (a2 + 1), F16Type);
              v64 = *(a1 + 24);
              __p[0] = *(*(v81 + 9) + 24);
              v65 = mlir::OpBuilder::create<mlir::anec::MatMul,mlir::detail::TypedValue<mlir::MemRefType>,mlir::mps::ConstantOp &,mlir::FloatAttr &>(a2 + 1, v64, __p, &v72, &FloatAttr);
              v66 = mlir::verify(v65, 1);
              v67 = *a2;
              if (v66)
              {
                (*(v67 + 1))(a2, a1, v65);
                matched = 1;
              }

              else
              {
                (*(v67 + 2))(a2, v65);
                (*(*a2 + 2))(a2, v72);
                std::string::basic_string[abi:nn200100]<0>(__p, "validation failed");
                matched = mlir::logMatchFailure(__p, *(a1 + 24), a2);
                if (v70 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (v86[0] != &v86[2])
              {
                free(v86[0]);
              }

LABEL_25:
              if ((matched & 1) == 0)
              {
              }

              return 1;
            }

            v46 = "unsupported concatenation dimension";
          }

LABEL_55:
          v15 = std::string::basic_string[abi:nn200100]<0>(v86, v46);
          v14 = *(a1 + 24);
        }

        else
        {
          HIBYTE(v86[2]) = 15;
          strcpy(v86, "cannot get axes");
          v14 = *(a1 + 24);
          v15 = v86;
        }

        matched = mlir::logMatchFailure(v15, v14, a2);
        if (SHIBYTE(v86[2]) < 0)
        {
          operator delete(v86[0]);
        }

        goto LABEL_25;
      }
    }
  }

  strcpy(v86, "does not match pattern");
  HIBYTE(v86[2]) = 22;
  v4 = mlir::logMatchFailure(v86, *(a1 + 24), a2);
  if (SHIBYTE(v86[2]) < 0)
  {
    v7 = v4;
    operator delete(v86[0]);
    if (v7)
    {
      return 1;
    }
  }

  else if (v4)
  {
    return 1;
  }
}

uint64_t mlir::anec::anonymous namespace::canonicalizeElementwiseToGOC(mlir::anec::_anonymous_namespace_ *this, mlir::Float16Type **a2, mlir::PatternRewriter *a3)
{
  v102[5] = *MEMORY[0x277D85DE8];
  RawElementsAttr = 0;
  v87 = 0;
  v5 = *(*(this + 9) + 56);
  v94 = &RawElementsAttr;
  v97 = v5;
  DefiningOp = mlir::Value::getDefiningOp(&v97);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v94, DefiningOp))
  {
    v7 = *(this + 9);
    v8 = *(v7 + 24);
    v85 = v8;
    v9 = v7 + 56;
    v10 = 1;
  }

  else
  {
    v11 = *(*(this + 9) + 24);
    v94 = &RawElementsAttr;
    v97 = v11;
    v12 = mlir::Value::getDefiningOp(&v97);
    if (!v12 || !mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v94, v12))
    {
      return 0;
    }

    v10 = 0;
    v13 = *(this + 9);
    v8 = *(v13 + 56);
    v85 = v8;
    v9 = v13 + 24;
  }

  v14 = (*(*v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  v83 = v14;
  v84 = v15;
  mlir::ShapedType::getShape(&v83);
  mlir::anec::getIndexFromDim(1, v16);
  if (v17)
  {
    if ((mlir::ElementsAttr::isSplat(&RawElementsAttr) & 1) == 0 && !mlir::anec::allElementsOnAxis(v83, v84, 1))
    {
      return 0;
    }

    v18 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8) : 0;
    v82[0] = v18;
    v82[1] = v19;
    v20 = (*(this - 1) & 0xFFFFFFFFFFFFFFF8);
    v21 = v20 ? mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8) : 0;
    v81[0] = v20;
    v81[1] = v21;
    Shape = mlir::ShapedType::getShape(v82);
    v24 = v23;
    v25 = mlir::ShapedType::getShape(v81);
    if (v24 != v26 || memcmp(Shape, v25, 8 * v24))
    {
      return 0;
    }

    v30 = mlir::ShapedType::getShape(&v83);
    v31 = v29;
    v100 = v102;
    v101 = 0x500000000;
    if (((8 * v29) >> 3) >= 6)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v32 = 0;
    if (v29)
    {
      memcpy(v100, v30, 8 * v29);
      v32 = v101;
    }

    LODWORD(v101) = v32 + v31;
    if (mlir::ElementsAttr::isSplat(&RawElementsAttr))
    {
      v34 = mlir::ShapedType::getShape(v82);
      if (mlir::ShapedType::getNumElements(v34, v35) != 1)
      {
        v36 = mlir::ShapedType::getShape(v82);
        NumElements = mlir::ShapedType::getNumElements(v36, v37);
        if (NumElements < mlir::ElementsAttr::getNumElements(RawElementsAttr, v87))
        {
          v27 = 0;
LABEL_70:
          if (v100 != v102)
          {
            free(v100);
          }

          return v27;
        }
      }

      mlir::ShapedType::getShape(v82);
      v39 = v33;
      v97 = v99;
      HIDWORD(v98) = 5;
      if (v33 >= 6)
      {
        LODWORD(v98) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v33)
      {
        memset_pattern16(v99, &unk_257369660, 8 * v33);
      }

      LODWORD(v98) = v39;
      v40 = v101;
      if (v101 >= v39)
      {
        if (v39)
        {
          memmove(v100, v99, 8 * v39);
        }
      }

      else
      {
        if (HIDWORD(v101) < v39)
        {
          LODWORD(v101) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v101)
        {
          memmove(v100, v99, 8 * v101);
        }

        else
        {
          v40 = 0;
        }

        v41 = v98 - v40;
        if (v41)
        {
          memcpy(&v100[8 * v40], &v97[8 * v40], 8 * v41);
        }
      }

      LODWORD(v101) = v39;
      if (v97 != v99)
      {
        free(v97);
      }
    }

    v42 = v100;
    v43 = v101;
    F16Type = mlir::Builder::getF16Type(a2 + 1, v33);
    v80 = mlir::MemRefType::get(v42, v43, F16Type, 0, 0, 0);
    Type = mlir::ElementsAttr::getType(&RawElementsAttr);
    if (*(*mlir::getElementTypeOrSelf(Type) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
    {
      v97 = v99;
      v98 = 0xC00000000;
      mlir::getFloatValues<float>(RawElementsAttr, v87, &v97, 0);
      v52 = v100;
      v53 = v101;
      F32Type = mlir::Builder::getF32Type(a2 + 1, v54);
      v56 = mlir::RankedTensorType::get(v52, v53, F32Type, 0);
      RawElementsAttr = mlir::createRawElementsAttr(v56, v97, 4 * v98);
      v87 = v57;
      if (v97 != v99)
      {
        free(v97);
      }
    }

    else if (mlir::ElementsAttr::isSplat(&RawElementsAttr))
    {
      v97 = RawElementsAttr;
      v46 = v100;
      v47 = v101;
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(RawElementsAttr);
      v49 = mlir::RankedTensorType::get(v46, v47, ElementTypeOrSelf, 0);
      v50 = v49;
      if (v49)
      {
        v51 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v49 + 8);
      }

      else
      {
        v51 = 0;
      }

      v58 = mlir::DenseElementsAttr::resizeSplat(&v97, v50, v51);
      v59 = v58;
      if (v58)
      {
        v58 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v58 + 8);
      }

      RawElementsAttr = v59;
      v87 = v58;
    }

    v79 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::ElementsAttr>((a2 + 1), *(this + 3), &v80, &RawElementsAttr);
    v60 = v100;
    v61 = v101;
    v63 = mlir::Builder::getF32Type(a2 + 1, v62);
    v64 = mlir::RankedTensorType::get(v60, v61, v63, 0);
    v97 = v99;
    v99[0] = 0;
    v98 = 0xC00000001;
    v94 = v96;
    v96[0] = 1065353216;
    v95 = 0xC00000001;
    v91 = v93;
    *v93 = -1082130432;
    v92 = 0xC00000001;
    v65 = *(this + 3);
    v89 = mlir::createRawElementsAttr(v64, v93, 4uLL);
    v90 = v66;
    v76 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::ElementsAttr>((a2 + 1), v65, &v80, &v89) - 16;
    v67 = *(this + 3);
    v89 = mlir::createRawElementsAttr(v64, v97, 4 * v98);
    v90 = v68;
    v78 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::ElementsAttr>((a2 + 1), v67, &v80, &v89) - 16;
    v69 = *(this + 3);
    v89 = mlir::createRawElementsAttr(v64, v94, 4 * v95);
    v90 = v70;
    v77 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::MemRefType &,mlir::ElementsAttr>((a2 + 1), v69, &v80, &v89) - 16;
    v71 = *(*(this + 6) + 16);
    if (v71 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
    {
      v72 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v81, &v85, &v77, &v79);
    }

    else
    {
      if (v71 != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseMult,void>::id)
      {
        if (v71 == &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseSub,void>::id)
        {
          v75 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v81, &v85, &v76, &v78) - 16;
          v73 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::mps::ConstantOp &>((a2 + 1), *(this + 3), v81, &v75, &v77, &v79) - 16;
          v75 = v73;
          if (v10)
          {
            v73 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::Value &,mlir::Value &>((a2 + 1), *(this + 3), v81, &v75, &v76, &v78) - 16;
            v75 = v73;
          }

          v88 = v73;
          v27 = 1;
          mlir::ValueRange::ValueRange(&v89, &v88, 1uLL);
          (**a2)(a2, this, v89, v90);
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_64;
      }

      v72 = mlir::OpBuilder::create<mlir::anec::GOC,mlir::ShapedType &,mlir::Value &,mlir::mps::ConstantOp &,mlir::Value &>((a2 + 1), *(this + 3), v81, &v85, &v79, &v78);
    }

    (*(*a2 + 1))(a2, this, v72);
    v27 = 1;
LABEL_64:
    if (v91 != v93)
    {
      free(v91);
    }

    if (v94 != v96)
    {
      free(v94);
    }

    if (v97 != v99)
    {
      free(v97);
    }

    goto LABEL_70;
  }

  v74 = std::__throw_bad_optional_access[abi:nn200100]();
  return mlir::anec::ElementwiseSub::canonicalize(v74);
}

uint64_t mlir::anec::ElementwiseMax::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = *(*(a1 + 72) + 56);
  v16 = &v14;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v16, DefiningOp) || !mlir::DenseElementsAttr::isSplat(&v14) || (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) >= 8))
  {
    operator new();
  }

  v15 = *(*(a1 + 72) + 24);
  v7 = mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v14, &__p);
  v8 = llvm::APFloatBase::IEEEhalf(v7);
  LOBYTE(v16) = 0;
  v9 = llvm::APFloat::convert(&__p, v8, 1, &v16);
  v10 = v19;
  v11 = llvm::APFloatBase::PPCDoubleDouble(v9);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v10);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v17, v10);
  if (v11 == v17[0])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v17, 0);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v17, 0);
  }

  v12 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat &,llvm::APFloat>(a2 + 1, *(a1 + 24), &v15, &__p, &v16);
  (*(*a2 + 1))(a2, a1, v12);
  if (v11 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  if (v11 == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v19);
  }

  return 1;
}

uint64_t mlir::anec::ElementwiseMin::canonicalize(uint64_t a1, mlir::Float16Type **a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v4 = *(*(a1 + 72) + 56);
  v16 = &v14;
  __p = v4;
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (!DefiningOp || !mlir::detail::constant_op_binder<mlir::DenseFPElementsAttr>::match(&v16, DefiningOp) || !mlir::DenseElementsAttr::isSplat(&v14) || (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (*(*(*(a1 + 72) + 24) + 8) ^ *(mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0) + 8)) >= 8))
  {
    operator new();
  }

  v15 = *(*(a1 + 72) + 24);
  v7 = mlir::DenseElementsAttr::getSplatValue<llvm::APFloat>(&v14, &__p);
  v8 = llvm::APFloatBase::IEEEhalf(v7);
  LOBYTE(v16) = 0;
  v9 = llvm::APFloat::convert(&__p, v8, 1, &v16);
  v10 = v19;
  v11 = llvm::APFloatBase::PPCDoubleDouble(v9);
  if (v11 == v10)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(v17, v10);
  }

  llvm::detail::IEEEFloat::IEEEFloat(v17, v10);
  if (v11 == v17[0])
  {
    llvm::detail::DoubleAPFloat::makeLargest(v17, 1);
  }

  else
  {
    llvm::detail::IEEEFloat::makeLargest(v17, 1);
  }

  v12 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::Value &,llvm::APFloat,llvm::APFloat&>(a2 + 1, *(a1 + 24), &v15, &v16, &__p);
  (*(*a2 + 1))(a2, a1, v12);
  if (v11 == v17[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v17);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v17);
  }

  if (v11 == v19)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v19);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v19);
  }

  return 1;
}

BOOL mlir::anec::Ceil::addOpToNetwork(uint64_t *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (a2)
  {
    v4 = *(*(v2 + 72) + 24);
    if (*(v2 + 36))
    {
      v5 = v2 - 16;
    }

    else
    {
      v5 = 0;
    }

    mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
    mlir::anec::computeOpKeyString(v2, v18);
    if (std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a2 + 488), &v17))
    {
      if (std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a2 + 488), &v17))
      {
        v6 = std::__hash_table<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MPSMLIRViewerSPIOps>>>::find<std::string>((a2 + 488), &v17);
        if (v6)
        {
          if (*(v6 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, v6[5], v6[6]);
          }

          else
          {
            __str = *(v6 + 5);
          }

          LOBYTE(v22) = 1;
          std::string::operator=(&v17, &__str);
          if (v22 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          goto LABEL_30;
        }
      }

      else
      {
        __str.__r_.__value_.__s.__data_[0] = 0;
        LOBYTE(v22) = 0;
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      abort();
    }

LABEL_30:
    operator new();
  }

  v19 = "network should not be nullptr";
  v20 = 259;
  mlir::Operation::emitError(&__str, v2, &v19);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&__str);
  if (__str.__r_.__value_.__r.__words[0])
  {
    mlir::InFlightDiagnostic::report(&__str);
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v27;
      v10 = __p;
      if (v27 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v27 = v8;
      operator delete(v10);
    }

    v11 = v24;
    if (v24)
    {
      v12 = v25;
      v13 = v24;
      if (v25 != v24)
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
        v13 = v24;
      }

      v25 = v11;
      operator delete(v13);
    }

    if (v22 != &v23)
    {
      free(v22);
    }
  }

  return v7;
}

BOOL mlir::anec::anonymous namespace::verifyNeuronWithANEC(uint64_t a1, unint64_t a2, mlir::anec::_anonymous_namespace_ *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = *(*(a3 + 6) + 16);
  if (a3 && v4 == &mlir::detail::TypeIDResolver<mlir::anec::Ceil,void>::id)
  {
    v5 = @"Ceil";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v5 = @"ClampedReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Cos,void>::id)
  {
    v5 = @"Cos";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Degamma,void>::id)
  {
    v5 = @"Degamma";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Dirac,void>::id)
  {
    v5 = @"Dirac";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v5 = @"ELU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Erf,void>::id)
  {
    v5 = @"Erf";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Exp2,void>::id)
  {
    v5 = @"Exp2";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Floor,void>::id)
  {
    v5 = @"Floor";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Gelu,void>::id)
  {
    v5 = @"GELU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v5 = @"SigmoidHighPrecision";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v5 = @"Inv";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v5 = @"LeakyReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v5 = @"Log2";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v5 = @"ReLUN";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Relu,void>::id)
  {
    v5 = @"ReLU";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::RoundNearest,void>::id)
  {
    v5 = @"RoundNearest";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v5 = @"Rsqrt";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v5 = @"Sigmoid";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sign,void>::id)
  {
    v5 = @"Sign";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sin,void>::id)
  {
    v5 = @"Sin";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sqr,void>::id)
  {
    v5 = @"Sqr";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Sqrt,void>::id)
  {
    v5 = @"Sqrt";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Swish,void>::id)
  {
    v5 = @"Swish";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Tanh,void>::id)
  {
    v5 = @"Tanh";
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::anec::Trunc,void>::id)
  {
    v5 = @"Trunc";
  }

  else
  {
    v5 = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v21 = v5;
  v30[0] = v31;
  v30[1] = 0x100000000;
  v19 = 0;
  v20 = 0;
  v6 = 1;
  *buffer = 1;
  v24[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidateNeuronLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v24);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v25, "Invalid configuration", 21);
    std::stringbuf::str();
    v24[0] = *MEMORY[0x277D82818];
    v7 = *(MEMORY[0x277D82818] + 72);
    *(v24 + *(v24[0] - 3)) = *(MEMORY[0x277D82818] + 64);
    v25 = v7;
    v26 = MEMORY[0x277D82878] + 16;
    if (v28 < 0)
    {
      operator delete(v27[7].__locale_);
    }

    v26 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v27);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v29);
    LOWORD(v27[0].__locale_) = 260;
    v24[0] = &v17;
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v8 = v37;
      if (v37)
      {
        v9 = v38;
        v10 = v37;
        if (v38 != v37)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = v37;
        }

        v38 = v8;
        operator delete(v10);
      }

      v11 = v35;
      if (v35)
      {
        v12 = v36;
        v13 = v35;
        if (v36 != v35)
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
          v13 = v35;
        }

        v36 = v11;
        operator delete(v13);
      }

      if (v33 != &v34)
      {
        free(v33);
      }
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }
  }

  ANECUnitValidatorDelete();
  if (v30[0] != v31)
  {
    free(v30[0]);
  }

  return v6;
}

float mlir::anec::Ceil::getExecutionCost(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v9 = *(*(*a1 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v9);
  if (!DefiningOp)
  {
    goto LABEL_8;
  }

  v5 = 0.0;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::anec::ElementwiseAdd,void>::id)
  {
    while (1)
    {
      v6 = *(*(DefiningOp + 48) + 16);
      if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::GOC,void>::id)
      {
        break;
      }

      v8 = *(*(DefiningOp + 72) + 24);
      DefiningOp = mlir::Value::getDefiningOp(&v8);
      if (!DefiningOp)
      {
        goto LABEL_8;
      }
    }

    if (v6 != &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
    {
LABEL_8:
      mlir::anec::Ceil::getExecutionCost(v3, a2, &v8);
      return *&v8;
    }
  }

  return v5;
}

uint64_t mlir::anec::Invert::verifyAttributesWithFamily(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  if (a2 > 1)
  {
  }

  else
  {
    v10[3] = v2;
    v10[4] = v3;
    v6 = a1;
    v10[0] = *(*(v5 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(v10);
    if (!DefiningOp)
    {
      return 0;
    }

    {
      v9 = DefiningOp;
      DefiningOp = v9;
    }

    if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
    {
      v10[0] = mlir::getElementTypeOrSelf(*(*(*v6 + 72) + 24));
      return mlir::Type::isF16(v10);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mlir::anec::detail::VerifyAttributesWithFamilyInterfaceTrait<mlir::anec::Invert>::getParentFamily(uint64_t *a1)
{
  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)7>(*a1))
  {
    return 7;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)6>(*a1))
  {
    return 6;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)5>(*a1))
  {
    return 5;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)4>(*a1))
  {
    return 4;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)3>(*a1))
  {
    return 3;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)2>(*a1))
  {
    return 2;
  }

  if (mlir::anec::parentIsAtLeast<(mlir::anec::Family)1>(*a1))
  {
    return 1;
  }

  mlir::anec::parentIsAtLeast<(mlir::anec::Family)0>(*a1);
  return 0;
}

BOOL mlir::anec::ElementwiseAdd::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839DD8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

uint64_t mlir::anec::anonymous namespace::generateANECValidateError<ANECElementWiseLayerDescAlternate>(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, "Invalid configuration", 21);
  if (a1)
  {
    if (a2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, " for the following reasons: ", 28);
      v4 = *a2;
      if (*a2)
      {
        v5 = 1;
        do
        {
          CFStringGetCString(a2[v5], buffer, 512, 0x8000100u);
          v6 = strlen(buffer);
          v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v13, buffer, v6);
          if (v5 == v4)
          {
            v8 = "";
          }

          else
          {
            v8 = ", ";
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, v8, 2 * (v5 != v4));
          v4 = *a2;
        }

        while (*a2 > v5++);
      }
    }
  }

  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x259C630C0](&v17);
}

BOOL mlir::anec::ElementwiseMult::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839DE8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseMin::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839DF8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseMax::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E08;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseSub::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E18;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseDiv::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E28;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwisePower::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E38;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseEqual::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E48;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseNotEqual::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E58;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThan::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E68;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanEqual::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E78;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanEqual::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E88;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThan::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839E98;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseAbs::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839EA8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseEqualZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839EB8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanEqualZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839EC8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseGreaterThanZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839ED8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanEqualZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839EE8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseLessThanZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839EF8;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseNotEqualZero::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839F08;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseSquare::verifyWithANEC(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v32[8] = *MEMORY[0x277D85DE8];
  v21 = xmmword_279839F18;
  v31[0] = v32;
  v31[1] = 0x100000000;
  v22[0] = 1;
  v17 = 0;
  ANECUnitValidatorCreate();
  v19 = 0;
  v20 = 0;
  if (ANECValidateElementWiseLayer())
  {
    v4 = *a1;
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
    if (v22[0])
    {
      mlir::InFlightDiagnostic::report(v22);
    }

    if (v30 == 1)
    {
      if (v29 != &v30)
      {
        free(v29);
      }

      v6 = __p;
      if (__p)
      {
        v7 = v28;
        v8 = __p;
        if (v28 != __p)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = __p;
        }

        v28 = v6;
        operator delete(v8);
      }

      v9 = v25;
      if (v25)
      {
        v10 = v26;
        v11 = v25;
        if (v26 != v25)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v25;
        }

        v26 = v9;
        operator delete(v11);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  return v5;
}

BOOL mlir::anec::ElementwiseAbs::addOpToNetwork(mlir::Operation **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a2)
  {
  }

  v12 = "network should not be nullptr";
  v13 = 259;
  mlir::OpState::emitError(a1, &v12, v14);
  v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
    }

    v3 = __p;
    if (__p)
    {
      v4 = v20;
      v5 = __p;
      if (v20 != __p)
      {
        do
        {
          v4 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v4 - 1);
        }

        while (v4 != v3);
        v5 = __p;
      }

      v20 = v3;
      operator delete(v5);
    }

    v6 = v17;
    if (v17)
    {
      v7 = v18;
      v8 = v17;
      if (v18 != v17)
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
        v8 = v17;
      }

      v18 = v6;
      operator delete(v8);
    }

    if (v15 != &v16)
    {
      free(v15);
    }
  }

  return v2;
}

uint64_t mlir::anec::Rsqrt::fold(mlir::Operation **a1, uint64_t a2)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = **(a2 + 40);
  if (v3)
  {
    if (mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8))
    {
      v4 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v3 + 8);
      v18 = v3;
      v19 = v4;
      mlir::mps::CPUNDArray::CPUNDArray(v17);
      Type = mlir::ElementsAttr::getType(&v18);
      v6 = Type;
      if (Type)
      {
        v7 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      else
      {
        v7 = 0;
      }

      mlir::mps::CPUNDArray::CPUNDArray(v16, v6, v7, 0);
      v15[0] = mlir::Operation::getAttrDictionary(*a1);
      Value = mlir::DictionaryAttr::getValue(v15);
      v15[0] = mlir::Operation::getAttrDictionary(*a1);
      v9 = mlir::DictionaryAttr::getValue(v15);
      v15[0] = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(*a1 + 6) + 96));
      mlir::FloatAttr::getValue(v15, &v20);
      v11 = llvm::APFloat::convertToDouble(&v20);
      v12 = mlir::mps::CPUNDArrayArithmeticUnaryKernel::CPUNDArrayArithmeticUnaryKernel(v15, 6, v11);
      v13 = v21[0];
      if (llvm::APFloatBase::PPCDoubleDouble(v12) == v13)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v21);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v21);
      }

      operator new();
    }

    v3 = 0;
  }

  v18 = v3;
  v19 = 0;
  return 0;
}

void *mlir::anec::Rsqrt::getEpsilon@<X0>(mlir::Operation **this@<X0>, uint64_t a2@<X8>)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6), **(*(*this + 6) + 96));
  return mlir::FloatAttr::getValue(&AttrDictionary, a2);
}

uint64_t mlir::anec::ScaledElementWise::inferPromotedReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v22[0] = a4;
  v22[1] = a5;
  v19 = v21;
  v20 = 0x600000000;
  if (mlir::anec::validateAndBroadcastShapes(a4, a5, &v19))
  {
    v11 = (*(mlir::ValueRange::dereference_iterator(v22, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v11)
    {
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
    }

    else
    {
      v12 = 0;
    }

    v18[0] = v11;
    v18[1] = v12;
    ElementType = mlir::ShapedType::getElementType(v18);
    v15 = mlir::MemRefType::get(v19, v20, ElementType, 0, 0, 0);
    v16 = *(a11 + 8);
    if (v16 >= *(a11 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a11 + 8 * v16) = v15;
    ++*(a11 + 8);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (v19 != v21)
  {
    free(v19);
  }

  return v13;
}

uint64_t mlir::anec::validateAndBroadcastShapes(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v34[0] = a1;
  v34[1] = a2;
  if (a2 < 2)
  {
    return 0;
  }

  v4 = (*(mlir::ValueRange::dereference_iterator(v34, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v4)
  {
    v5 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v4 + 8);
    v31 = v4;
    v32 = v5;
    Shape = mlir::ShapedType::getShape(&v31);
    v8 = v7;
  }

  else
  {
    v8 = 0;
    Shape = 0;
  }

  v9 = (*(mlir::ValueRange::dereference_iterator(v34, 1) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v9)
  {
    return 0;
  }

  v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
  v31 = v9;
  v32 = v10;
  v12 = mlir::ShapedType::getShape(&v31);
  result = 0;
  if (v8 >= 4 && v11 >= 4)
  {
    if (v8 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v8;
    }

    v15 = Shape;
    v16 = v11;
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v15, v8, v14, &v31);
    mlir::anec::validateAndBroadcastShapes(mlir::ValueRange,llvm::SmallVector<long long,6u> &)::$_1::operator()(v12, v16, v14, &v29);
    v17 = a3;
    v18 = *(a3 + 2);
    if (v14 != v18)
    {
      if (v14 >= v18)
      {
        if (v14 > *(a3 + 3))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v14 != v18)
        {
          bzero((*a3 + 8 * v18), 8 * (v14 - v18));
          v17 = a3;
        }
      }

      *(v17 + 2) = v14;
    }

    v19 = 0;
    v20 = v29;
    v21 = v31;
    v22 = *v17;
    do
    {
      v23 = v21[v19];
      v24 = v20[v19];
      if (v24 != 1 && v23 != 1 && v23 != v24)
      {
        result = 0;
        goto LABEL_33;
      }

      if (v23 <= v24)
      {
        v23 = v20[v19];
      }

      *(v22 + 8 * v19++) = v23;
    }

    while (v14 != v19);
    result = 1;
LABEL_33:
    if (v20 != &v30)
    {
      v27 = result;
      free(v20);
      result = v27;
    }

    if (v31 != &v33)
    {
      v28 = result;
      free(v31);
      return v28;
    }
  }

  return result;
}

uint64_t mlir::anec::anonymous namespace::defaultIsCompatibleReturnType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    if (a4 == v8)
    {
      return 1;
    }

    v9 = mlir::TypeRange::dereference_iterator(a1, v8);
    v10 = mlir::TypeRange::dereference_iterator(a3, v8);
    if (v9)
    {
      v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v21 = v9;
      v22 = v11;
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      if (!v10)
      {
LABEL_8:
        v12 = 0;
        goto LABEL_9;
      }
    }

    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
LABEL_9:
    v20[0] = v10;
    v20[1] = v12;
    if (!mlir::ShapedType::hasRank(&v21))
    {
      return 0;
    }

    if (!mlir::ShapedType::hasRank(v20))
    {
      return 0;
    }

    Shape = mlir::ShapedType::getShape(&v21);
    v15 = v14;
    v16 = mlir::ShapedType::getShape(v20);
    if (v15 != v17)
    {
      return 0;
    }

    if (memcmp(Shape, v16, 8 * v15))
    {
      return 0;
    }

    ElementType = mlir::ShapedType::getElementType(&v21);
    if (ElementType != mlir::ShapedType::getElementType(v20))
    {
      return 0;
    }

    if (a2 == ++v8)
    {
      return 1;
    }
  }
}

uint64_t mlir::anec::ScaledElementWise::getMode(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  return mlir::StringAttr::getValue(&AttrDictionary);
}

BOOL mlir::anec::inferPoolOpReturnTypes(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48[6] = *MEMORY[0x277D85DE8];
  v14 = mlir::TypeRange::dereference_iterator(a7, 0);
  v15 = v14;
  if (v14)
  {
    v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
  }

  v37[0] = v15;
  v37[1] = v14;
  mlir::ShapedType::getShape(v37);
  if (!v16)
  {
    return mlir::emitOptionalError<char const(&)[24]>(a1, a2, "input must be a rank 4 tensor of shape [N, Cin, H, W]or rank 5 tensor of shape [N, D, Cin, H, W]");
  }

  Shape = mlir::ShapedType::getShape(v37);
  v47[0] = v48;
  v47[1] = 0x600000000;
  mlir::getValues<unsigned long>(a4, v47);
  v45[0] = v46;
  v45[1] = 0x600000000;
  mlir::getValues<unsigned long>(a5, v45);
  v43[0] = v44;
  v43[1] = 0x600000000;
  mlir::getValues<unsigned long>(a6, v43);
  mlir::ShapedType::getShape(v37);
  v19 = v18;
  mlir::ShapedType::getShape(v37);
  v21 = v20;
  mlir::ShapedType::getShape(v37);
  v23 = v22;
  mlir::ShapedType::getShape(v37);
  v25 = v24;
  mlir::ShapedType::getShape(v37);
  v26 = v47[0];
  v27 = (*v26 + Shape[v25 - 2] + v26[1] - *v45[0] + *v43[0]) / *v43[0];
  v29 = Shape[v23 - 3];
  v30 = (v26[2] + Shape[v28 - 1] + v26[3] - *(v45[0] + 1) + *(v43[0] + 1)) / *(v43[0] + 1);
  if (v19 == 5)
  {
    v31 = (*(v47[0] + 4) + Shape[v21 - 4] + *(v47[0] + 5) - *(v45[0] + 2) + *(v43[0] + 2)) / *(v43[0] + 2);
    v38 = *Shape;
    v39 = v31;
    v40 = v29;
    v41 = v27;
    v42 = v30;
    ElementType = mlir::ShapedType::getElementType(v37);
    v33 = 5;
  }

  else
  {
    v38 = *Shape;
    v39 = v29;
    v40 = v27;
    v41 = v30;
    ElementType = mlir::ShapedType::getElementType(v37);
    v33 = 4;
  }

  v35 = mlir::MemRefType::get(&v38, v33, ElementType, 0, 0, 0);
  v36 = *(a9 + 8);
  if (v36 >= *(a9 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a9 + 8 * v36) = v35;
  ++*(a9 + 8);
  if (v43[0] != v44)
  {
    free(v43[0]);
  }

  if (v45[0] != v46)
  {
    free(v45[0]);
  }

  if (v47[0] != v48)
  {
    free(v47[0]);
  }

  return 1;
}

BOOL mlir::anec::MaxPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.max_pool", 13, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::MaxPoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  v19 = mlir::DictionaryAttr::begin(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::DictionaryAttr::begin(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::DictionaryAttr::begin(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::MaxPoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v61 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.max_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x259C63150](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            Shape = mlir::ShapedType::getShape(&v63);
            v62 = 3;
            if (v33 == 1 && *Shape == v62)
            {
              v54 = v28;
              v55 = mlir::DenseElementsAttr::getType(&v54);
              v56 = v34;
              ElementType = mlir::ShapedType::getElementType(&v55);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::ShapedType::getShape(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, v55 = mlir::DenseElementsAttr::getType(&v54), v56 = v40, ElementType = mlir::ShapedType::getElementType(&v55), mlir::Type::isUnsignedInteger(&ElementType, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::ShapedType::getShape(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, v55 = mlir::DenseElementsAttr::getType(&v54), v56 = v46, ElementType = mlir::ShapedType::getElementType(&v55), mlir::Type::isUnsignedInteger(&ElementType, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.max_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.max_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.max_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              MEMORY[0x259C63150](v51, 0x1000C8077774924);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.max_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.max_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x259C63150](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.average_pool", 17, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::AveragePoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  v19 = mlir::DictionaryAttr::begin(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 16), (v20 - 16), *(*(v31 + 96) + 16));
  v22 = mlir::DictionaryAttr::begin(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), *(*(v31 + 96) + 8));
  v25 = mlir::DictionaryAttr::begin(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 24));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::AveragePoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v75 = *MEMORY[0x277D85DE8];
  v63 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v63);
  if (v4 != mlir::DictionaryAttr::end(&v63))
  {
    v5 = 0;
    while (mlir::NamedAttribute::getName(v4) != *(*(a1[1] + 96) + 8))
    {
      if (mlir::NamedAttribute::getName(v4) == **(a1[1] + 96))
      {
        v5 = v4[1];
      }

      v4 += 2;
      if (v4 == mlir::DictionaryAttr::end(&v63))
      {
        goto LABEL_7;
      }
    }

    v15 = v4[1];
    while (v4 != mlir::DictionaryAttr::end(&v63))
    {
      if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 16))
      {
        v22 = v4[1];
        while (1)
        {
          if (v4 == mlir::DictionaryAttr::end(&v63))
          {
            v60 = "'anec.average_pool' op requires attribute 'stride'";
            v62 = 259;
            mlir::emitError(a2, &v60, &v65);
            v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
            if (v65)
            {
              mlir::InFlightDiagnostic::report(&v65);
            }

            if (v74 != 1)
            {
              return v6;
            }

            if (v73 != &v74)
            {
              free(v73);
            }

            v23 = __p;
            if (__p)
            {
              v24 = v72;
              v25 = __p;
              if (v72 != __p)
              {
                do
                {
                  v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
                }

                while (v24 != v23);
                v25 = __p;
              }

              v72 = v23;
              operator delete(v25);
            }

            v10 = v69;
            if (!v69)
            {
              goto LABEL_105;
            }

            v26 = v70;
            v12 = v69;
            if (v70 == v69)
            {
              goto LABEL_104;
            }

            do
            {
              v28 = *--v26;
              v27 = v28;
              *v26 = 0;
              if (v28)
              {
                MEMORY[0x259C63150](v27, 0x1000C8077774924);
              }
            }

            while (v26 != v10);
            goto LABEL_103;
          }

          if (mlir::NamedAttribute::getName(v4) == *(*(a1[1] + 96) + 24))
          {
            break;
          }

          v4 += 2;
        }

        v29 = v4[1];
        if (!v29)
        {
          goto LABEL_117;
        }

        if (mlir::DenseIntElementsAttr::classof(v4[1]))
        {
          v30 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v29 + 8);
          v60 = v29;
          v61 = v30;
          Type = mlir::ElementsAttr::getType(&v60);
          v32 = Type;
          if (Type)
          {
            Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
          }

          v65 = v32;
          v66 = Type;
          Shape = mlir::ShapedType::getShape(&v65);
          v64 = 3;
          if (v34 == 1 && *Shape == v64)
          {
            v56 = v29;
            v57 = mlir::DenseElementsAttr::getType(&v56);
            v58 = v35;
            ElementType = mlir::ShapedType::getElementType(&v57);
            if (mlir::Type::isUnsignedInteger(&ElementType, 64))
            {
LABEL_117:
              if (!v22)
              {
                goto LABEL_118;
              }

              if (!mlir::DenseIntElementsAttr::classof(v22))
              {
                goto LABEL_108;
              }

              v36 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v22 + 8);
              v60 = v22;
              v61 = v36;
              v37 = mlir::ElementsAttr::getType(&v60);
              v38 = v37;
              if (v37)
              {
                v37 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v37 + 8);
              }

              v65 = v38;
              v66 = v37;
              v39 = mlir::ShapedType::getShape(&v65);
              v64 = 6;
              if (v40 == 1 && *v39 == v64 && (v56 = v22, v57 = mlir::DenseElementsAttr::getType(&v56), v58 = v41, ElementType = mlir::ShapedType::getElementType(&v57), mlir::Type::isUnsignedInteger(&ElementType, 64)))
              {
LABEL_118:
                if (v15)
                {
                  if (!mlir::DenseIntElementsAttr::classof(v15))
                  {
                    goto LABEL_112;
                  }

                  v42 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v15 + 8);
                  v60 = v15;
                  v61 = v42;
                  v43 = mlir::ElementsAttr::getType(&v60);
                  v44 = v43;
                  if (v43)
                  {
                    v43 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v43 + 8);
                  }

                  v65 = v44;
                  v66 = v43;
                  v45 = mlir::ShapedType::getShape(&v65);
                  v64 = 3;
                  if (v46 != 1 || *v45 != v64 || (v56 = v15, v57 = mlir::DenseElementsAttr::getType(&v56), v58 = v47, ElementType = mlir::ShapedType::getElementType(&v57), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
                  {
LABEL_112:
                    v48 = "'anec.average_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    goto LABEL_113;
                  }
                }

                if (v5 && *(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
                {
                  v48 = "'anec.average_pool' op attribute 'inc_pad' failed to satisfy constraint: unit attribute";
LABEL_113:
                  v60 = v48;
                  v62 = 259;
                  mlir::emitError(a2, &v60, &v65);
                  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v65);
                  return v6;
                }

                return 1;
              }

              else
              {
LABEL_108:
                v60 = "'anec.average_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                v62 = 259;
                mlir::emitError(a2, &v60, &v65);
                v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
                if (v65)
                {
                  mlir::InFlightDiagnostic::report(&v65);
                }

                if (v74 == 1)
                {
                  mlir::Diagnostic::~Diagnostic(&v66);
                }
              }

              return v6;
            }
          }
        }

        v60 = "'anec.average_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
        v62 = 259;
        mlir::emitError(a2, &v60, &v65);
        v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
        if (v65)
        {
          mlir::InFlightDiagnostic::report(&v65);
        }

        if (v74 != 1)
        {
          return v6;
        }

        if (v73 != &v74)
        {
          free(v73);
        }

        v49 = __p;
        if (__p)
        {
          v50 = v72;
          v51 = __p;
          if (v72 != __p)
          {
            do
            {
              v50 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v50 - 1);
            }

            while (v50 != v49);
            v51 = __p;
          }

          v72 = v49;
          operator delete(v51);
        }

        v10 = v69;
        if (!v69)
        {
          goto LABEL_105;
        }

        v52 = v70;
        v12 = v69;
        if (v70 == v69)
        {
          goto LABEL_104;
        }

        do
        {
          v54 = *--v52;
          v53 = v54;
          *v52 = 0;
          if (v54)
          {
            MEMORY[0x259C63150](v53, 0x1000C8077774924);
          }
        }

        while (v52 != v10);
        goto LABEL_103;
      }

      v4 += 2;
    }

    v60 = "'anec.average_pool' op requires attribute 'padding'";
    v62 = 259;
    mlir::emitError(a2, &v60, &v65);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
    if (v65)
    {
      mlir::InFlightDiagnostic::report(&v65);
    }

    if (v74 != 1)
    {
      return v6;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v72;
      v18 = __p;
      if (v72 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v72 = v16;
      operator delete(v18);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v19 = v70;
    v12 = v69;
    if (v70 == v69)
    {
      goto LABEL_104;
    }

    do
    {
      v21 = *--v19;
      v20 = v21;
      *v19 = 0;
      if (v21)
      {
        MEMORY[0x259C63150](v20, 0x1000C8077774924);
      }
    }

    while (v19 != v10);
    goto LABEL_103;
  }

LABEL_7:
  v60 = "'anec.average_pool' op requires attribute 'ksize'";
  v62 = 259;
  mlir::emitError(a2, &v60, &v65);
  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v65);
  if (v65)
  {
    mlir::InFlightDiagnostic::report(&v65);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v72;
      v9 = __p;
      if (v72 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v72 = v7;
      operator delete(v9);
    }

    v10 = v69;
    if (!v69)
    {
      goto LABEL_105;
    }

    v11 = v70;
    v12 = v69;
    if (v70 == v69)
    {
LABEL_104:
      v70 = v10;
      operator delete(v12);
LABEL_105:
      if (v67 != &v68)
      {
        free(v67);
      }

      return v6;
    }

    do
    {
      v14 = *--v11;
      v13 = v14;
      *v11 = 0;
      if (v14)
      {
        MEMORY[0x259C63150](v13, 0x1000C8077774924);
      }
    }

    while (v11 != v10);
LABEL_103:
    v12 = v69;
    goto LABEL_104;
  }

  return v6;
}

BOOL mlir::anec::L2NormPool::inferPromotedReturnTypes(mlir::UnknownLoc *a1, mlir::MLIRContext *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v30 = a6;
  LOBYTE(v31) = 0;
  v32 = 0;
  v33 = a7;
  v34 = a8;
  if (a6)
  {
    v15 = a1;
    Context = mlir::Attribute::getContext(&v30);
    if (v32 == 1)
    {
      v32 = 0;
    }

    mlir::OperationName::OperationName(&v31, "anec.l2norm_pool", 16, Context);
    v32 = 1;
    a1 = v15;
  }

  v35 = a4;
  v36 = a5;
  v17 = mlir::UnknownLoc::get(a1, a2);
  if (a3)
  {
    v18 = a2;
  }

  else
  {
    v18 = v17;
  }

  if ((mlir::anec::L2NormPoolAdaptor::verify(&v30, v18) & 1) == 0)
  {
    return 0;
  }

  v37[0] = v35;
  v37[1] = 0;
  mlir::ValueRange::dereference_iterator(v37, 0);
  v19 = mlir::DictionaryAttr::begin(&v30);
  v20 = mlir::DictionaryAttr::end(&v30);
  v21 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v19 + 16), (v20 - 16), *(*(v31 + 96) + 8));
  v22 = mlir::DictionaryAttr::begin(&v30);
  v23 = mlir::DictionaryAttr::end(&v30);
  v24 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v22, (v23 - 32), **(v31 + 96));
  v25 = mlir::DictionaryAttr::begin(&v30);
  v26 = mlir::DictionaryAttr::end(&v30);
  v27 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v25 + 32), v26, *(*(v31 + 96) + 16));
  return mlir::anec::inferPoolOpReturnTypes(a2, a3, v28, v21, v24, v27, a9, a10, a11);
}

uint64_t mlir::anec::L2NormPoolAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v61 = *a1;
  for (i = mlir::DictionaryAttr::begin(&v61); i != mlir::DictionaryAttr::end(&v61); i += 2)
  {
    if (mlir::NamedAttribute::getName(i) == **(a1[1] + 96))
    {
      v14 = i[1];
      while (i != mlir::DictionaryAttr::end(&v61))
      {
        if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 8))
        {
          v21 = i[1];
          while (1)
          {
            if (i == mlir::DictionaryAttr::end(&v61))
            {
              v58 = "'anec.l2norm_pool' op requires attribute 'stride'";
              v60 = 259;
              mlir::emitError(a2, &v58, &v63);
              v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
              if (v63)
              {
                mlir::InFlightDiagnostic::report(&v63);
              }

              if (v72 != 1)
              {
                return v5;
              }

              if (v71 != &v72)
              {
                free(v71);
              }

              v22 = __p;
              if (__p)
              {
                v23 = v70;
                v24 = __p;
                if (v70 != __p)
                {
                  do
                  {
                    v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
                  }

                  while (v23 != v22);
                  v24 = __p;
                }

                v70 = v22;
                operator delete(v24);
              }

              v9 = v67;
              if (!v67)
              {
                goto LABEL_101;
              }

              v25 = v68;
              v11 = v67;
              if (v68 == v67)
              {
                goto LABEL_100;
              }

              do
              {
                v27 = *--v25;
                v26 = v27;
                *v25 = 0;
                if (v27)
                {
                  MEMORY[0x259C63150](v26, 0x1000C8077774924);
                }
              }

              while (v25 != v9);
              goto LABEL_99;
            }

            if (mlir::NamedAttribute::getName(i) == *(*(a1[1] + 96) + 16))
            {
              break;
            }

            i += 2;
          }

          v28 = i[1];
          if (!v28)
          {
            goto LABEL_111;
          }

          if (mlir::DenseIntElementsAttr::classof(i[1]))
          {
            v29 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v28 + 8);
            v58 = v28;
            v59 = v29;
            Type = mlir::ElementsAttr::getType(&v58);
            v31 = Type;
            if (Type)
            {
              Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
            }

            v63 = v31;
            v64 = Type;
            Shape = mlir::ShapedType::getShape(&v63);
            v62 = 3;
            if (v33 == 1 && *Shape == v62)
            {
              v54 = v28;
              v55 = mlir::DenseElementsAttr::getType(&v54);
              v56 = v34;
              ElementType = mlir::ShapedType::getElementType(&v55);
              if (mlir::Type::isUnsignedInteger(&ElementType, 64))
              {
LABEL_111:
                if (!v21)
                {
                  goto LABEL_112;
                }

                if (!mlir::DenseIntElementsAttr::classof(v21))
                {
                  goto LABEL_104;
                }

                v35 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v21 + 8);
                v58 = v21;
                v59 = v35;
                v36 = mlir::ElementsAttr::getType(&v58);
                v37 = v36;
                if (v36)
                {
                  v36 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v36 + 8);
                }

                v63 = v37;
                v64 = v36;
                v38 = mlir::ShapedType::getShape(&v63);
                v62 = 6;
                if (v39 == 1 && *v38 == v62 && (v54 = v21, v55 = mlir::DenseElementsAttr::getType(&v54), v56 = v40, ElementType = mlir::ShapedType::getElementType(&v55), mlir::Type::isUnsignedInteger(&ElementType, 64)))
                {
LABEL_112:
                  if (!v14)
                  {
                    return 1;
                  }

                  if (!mlir::DenseIntElementsAttr::classof(v14))
                  {
                    goto LABEL_108;
                  }

                  v41 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v14 + 8);
                  v58 = v14;
                  v59 = v41;
                  v42 = mlir::ElementsAttr::getType(&v58);
                  v43 = v42;
                  if (v42)
                  {
                    v42 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v42 + 8);
                  }

                  v63 = v43;
                  v64 = v42;
                  v44 = mlir::ShapedType::getShape(&v63);
                  v62 = 3;
                  if (v45 == 1 && *v44 == v62 && (v54 = v14, v55 = mlir::DenseElementsAttr::getType(&v54), v56 = v46, ElementType = mlir::ShapedType::getElementType(&v55), mlir::Type::isUnsignedInteger(&ElementType, 64)))
                  {
                    return 1;
                  }

                  else
                  {
LABEL_108:
                    v58 = "'anec.l2norm_pool' op attribute 'ksize' failed to satisfy constraint: ui64 elements attribute of shape {3}";
                    v60 = 259;
                    mlir::emitError(a2, &v58, &v63);
                    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v63);
                  }
                }

                else
                {
LABEL_104:
                  v58 = "'anec.l2norm_pool' op attribute 'padding' failed to satisfy constraint: ui64 elements attribute of shape {6}";
                  v60 = 259;
                  mlir::emitError(a2, &v58, &v63);
                  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
                  if (v63)
                  {
                    mlir::InFlightDiagnostic::report(&v63);
                  }

                  if (v72 == 1)
                  {
                    mlir::Diagnostic::~Diagnostic(&v64);
                  }
                }

                return v5;
              }
            }
          }

          v58 = "'anec.l2norm_pool' op attribute 'stride' failed to satisfy constraint: ui64 elements attribute of shape {3}";
          v60 = 259;
          mlir::emitError(a2, &v58, &v63);
          v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
          if (v63)
          {
            mlir::InFlightDiagnostic::report(&v63);
          }

          if (v72 != 1)
          {
            return v5;
          }

          if (v71 != &v72)
          {
            free(v71);
          }

          v47 = __p;
          if (__p)
          {
            v48 = v70;
            v49 = __p;
            if (v70 != __p)
            {
              do
              {
                v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
              }

              while (v48 != v47);
              v49 = __p;
            }

            v70 = v47;
            operator delete(v49);
          }

          v9 = v67;
          if (!v67)
          {
            goto LABEL_101;
          }

          v50 = v68;
          v11 = v67;
          if (v68 == v67)
          {
            goto LABEL_100;
          }

          do
          {
            v52 = *--v50;
            v51 = v52;
            *v50 = 0;
            if (v52)
            {
              MEMORY[0x259C63150](v51, 0x1000C8077774924);
            }
          }

          while (v50 != v9);
          goto LABEL_99;
        }

        i += 2;
      }

      v58 = "'anec.l2norm_pool' op requires attribute 'padding'";
      v60 = 259;
      mlir::emitError(a2, &v58, &v63);
      v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
      if (v63)
      {
        mlir::InFlightDiagnostic::report(&v63);
      }

      if (v72 != 1)
      {
        return v5;
      }

      if (v71 != &v72)
      {
        free(v71);
      }

      v15 = __p;
      if (__p)
      {
        v16 = v70;
        v17 = __p;
        if (v70 != __p)
        {
          do
          {
            v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v70 = v15;
        operator delete(v17);
      }

      v9 = v67;
      if (!v67)
      {
        goto LABEL_101;
      }

      v18 = v68;
      v11 = v67;
      if (v68 == v67)
      {
        goto LABEL_100;
      }

      do
      {
        v20 = *--v18;
        v19 = v20;
        *v18 = 0;
        if (v20)
        {
          MEMORY[0x259C63150](v19, 0x1000C8077774924);
        }
      }

      while (v18 != v9);
LABEL_99:
      v11 = v67;
      goto LABEL_100;
    }
  }

  v58 = "'anec.l2norm_pool' op requires attribute 'ksize'";
  v60 = 259;
  mlir::emitError(a2, &v58, &v63);
  v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v70;
      v8 = __p;
      if (v70 != __p)
      {
        do
        {
          v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
        }

        while (v7 != v6);
        v8 = __p;
      }

      v70 = v6;
      operator delete(v8);
    }

    v9 = v67;
    if (v67)
    {
      v10 = v68;
      v11 = v67;
      if (v68 != v67)
      {
        do
        {
          v13 = *--v10;
          v12 = v13;
          *v10 = 0;
          if (v13)
          {
            MEMORY[0x259C63150](v12, 0x1000C8077774924);
          }
        }

        while (v10 != v9);
        goto LABEL_99;
      }

LABEL_100:
      v68 = v9;
      operator delete(v11);
    }

LABEL_101:
    if (v65 != &v66)
    {
      free(v65);
    }
  }

  return v5;
}

BOOL mlir::anec::AveragePool::verifyWithANEC(mlir::Operation **a1, mlir::ShapedType *a2, unint64_t a3)
{
  v29[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  ANECPoolLayerDescInitialize();
  ZinIrPoolingTypeToCFString(1u);
  v28[0] = v29;
  v28[1] = 0x600000000;
  v26[0] = v27;
  v26[1] = 0x600000000;
  v24[0] = v25;
  v24[1] = 0x600000000;
  mlir::ShapedType::getShape(a2);
  v8 = v7;
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v10 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v12 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v10 + 16 * v11 - 32), *(*(*(*a1 + 6) + 96) + 8));
  mlir::getValues<unsigned long>(v12, v28);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v13 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v16 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v13 + 32), (v14 + 16 * v15), *(*(*(*a1 + 6) + 96) + 24));
  mlir::getValues<unsigned long>(v16, v26);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v17 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v18 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v20 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v17 + 16), (v18 + 16 * v19 - 16), *(*(*(*a1 + 6) + 96) + 16));
  mlir::getValues<unsigned long>(v20, v24);
  mlir::anec::getIndexFromDim(1, v8);
  if ((v21 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  mlir::ShapedType::getShape(a2);
  if (v24[0] != v25)
  {
    free(v24[0]);
  }

  if (v26[0] != v27)
  {
    free(v26[0]);
  }

  if (v28[0] != v29)
  {
    free(v28[0]);
  }

  return mlir::anec::verifyPoolWithANEC(v6, a2, a3);
}

BOOL mlir::anec::verifyPoolWithANEC(mlir::anec::_anonymous_namespace_ *a1, uint64_t a2, unint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v27[0] = v28;
  v27[1] = 0x100000000;
  v19 = 0;
  v20 = 0;
  *buffer = 1;
  v21[0] = 0;
  ANECUnitValidatorCreate();
  if (ANECValidatePoolLayer())
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](v21);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v22, "Invalid configuration", 21);
    std::stringbuf::str();
    v21[0] = *MEMORY[0x277D82818];
    v4 = *(MEMORY[0x277D82818] + 72);
    *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v22 = v4;
    v23 = MEMORY[0x277D82878] + 16;
    if (v25 < 0)
    {
      operator delete(v24[7].__locale_);
    }

    v23 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v24);
    std::iostream::~basic_iostream();
    MEMORY[0x259C630C0](&v26);
    v18 = 260;
    v17 = &v15;
    v5 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(buffer);
    if (*buffer)
    {
      mlir::InFlightDiagnostic::report(buffer);
    }

    if (v37 == 1)
    {
      if (v36 != &v37)
      {
        free(v36);
      }

      v6 = v34;
      if (v34)
      {
        v7 = v35;
        v8 = v34;
        if (v35 != v34)
        {
          do
          {
            v7 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v7 - 1);
          }

          while (v7 != v6);
          v8 = v34;
        }

        v35 = v6;
        operator delete(v8);
      }

      v9 = v32;
      if (v32)
      {
        v10 = v33;
        v11 = v32;
        if (v33 != v32)
        {
          do
          {
            v13 = *--v10;
            v12 = v13;
            *v10 = 0;
            if (v13)
            {
              MEMORY[0x259C63150](v12, 0x1000C8077774924);
            }
          }

          while (v10 != v9);
          v11 = v32;
        }

        v33 = v9;
        operator delete(v11);
      }

      if (v30 != &v31)
      {
        free(v30);
      }
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = 1;
  }

  ANECUnitValidatorDelete();
  if (v27[0] != v28)
  {
    free(v27[0]);
  }

  return v5;
}