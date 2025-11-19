uint64_t mlir::detail::PDLByteCode::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47[30] = *MEMORY[0x277D85DE8];
  v8 = *(*(a3 + 104) + 96);
  if (v8)
  {
    v9 = *(v8 + 8);
    if (v9)
    {
      v10 = *v8;
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        (*(*v12 + 16))(v12, a2);
        v11 -= 8;
      }

      while (v11);
    }
  }

  v13 = *a4;
  v14 = *(a3 + 16);
  if (v14)
  {
    memmove(v13, *(a3 + 8), 8 * v14);
    v13 = *a4;
  }

  v15 = *(a1 + 240);
  v16 = *(a1 + 248);
  v17 = (*(a4 + 8) - v13) >> 3;
  v18 = *(a4 + 24);
  v19 = (*(a4 + 32) - v18) >> 4;
  v20 = *(a4 + 48);
  v21 = (*(a4 + 56) - v20) >> 4;
  v22 = a4 + 72;
  v23 = *(a4 + 96);
  v24 = (*(a4 + 104) - v23) >> 4;
  v25 = a4 + 120;
  v26 = *(a4 + 144);
  v27 = (*(a4 + 152) - v26) >> 2;
  v28 = *(a1 + 64);
  v29 = (*(a1 + 72) - v28) >> 3;
  v30 = *(a4 + 168);
  v31 = (*(a4 + 176) - v30) >> 1;
  v32 = *(a1 + 392);
  v33 = *(a1 + 400);
  v34 = *(a1 + 3736);
  v35 = (*(a1 + 3744) - v34) >> 5;
  v36 = *(a1 + 3760);
  v37 = (*(a1 + 3768) - v36) >> 5;
  v44 = (v15 + 2 * *(*(a3 + 104) + 88));
  v45 = v47;
  v46 = 0x600000000;
  v47[6] = v13;
  v47[7] = v17;
  v47[8] = v18;
  v47[9] = v19;
  v47[10] = v20;
  v47[11] = v21;
  v47[12] = v22;
  v47[13] = v23;
  v47[14] = v24;
  v47[15] = v25;
  v47[16] = v26;
  v47[17] = v27;
  v47[18] = v28;
  v47[19] = v29;
  v47[20] = v15;
  v47[21] = v16;
  v47[22] = v30;
  v47[23] = v31;
  v47[24] = v32;
  v47[25] = v33;
  v47[26] = v34;
  v47[27] = v35;
  v47[28] = v36;
  v47[29] = v37;
  if (v8)
  {
    v39 = *(v8 + 8);
    if (v39)
    {
      v40 = *v8;
      v41 = 8 * v39;
      do
      {
        v42 = *v40++;
        (*(*v42 + 24))(v42, a2);
        v41 -= 8;
      }

      while (v41);
    }
  }

  if ((v38 & 1) == 0 && ((*(*a2 + 80))(a2) & 1) == 0)
  {
    llvm::report_fatal_error("Native PDL Rewrite failed, but the pattern rewriter doesn't support recovery. Failable pattern rewrites should not be used with pattern rewriters that do not support them.", 1);
  }

  if (v45 != v47)
  {
    free(v45);
  }

  return v38;
}

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 8;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 8;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[4] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, void *a3, double a4, int32x4_t a5)
{
  v5 = a3;
  v505 = *MEMORY[0x277D85DE8];
  v7 = *(*(a2 + 48) + 16);
  if (a2 && v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyConstraintOp,void>::id)
  {
    v491[0] = a2;
    Name = mlir::pdl_interp::ApplyConstraintOp::getName(v491);
    v10 = v9;
    v12 = llvm::StringMapImpl::hash(Name, v9, v11);
    v13 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 72), Name, v10, v12) + 8);
    v14 = v5[3];
    v15 = v14[1];
    if ((v15 + 1) > v14[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v14 + 2 * v15) = 0;
    ++v14[1];
    v16 = v5[3];
    v17 = v16[1];
    if ((v17 + 1) > v16[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v16 + 2 * v17) = v13;
    ++v16[1];
    ODSOperandIndexAndLength = mlir::pdl_interp::ApplyConstraintOp::getODSOperandIndexAndLength(v491, 0);
    if ((*(v491[0] + 46) & 0x80) != 0)
    {
      v19 = *(v491[0] + 9);
    }

    else
    {
      v19 = 0;
    }

    v20 = (HIDWORD(ODSOperandIndexAndLength) + ODSOperandIndexAndLength);
    v21 = v20 - ODSOperandIndexAndLength;
    v22 = v5[3];
    v23 = v22[1];
    if ((v23 + 1) > v22[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v22 + 2 * v23) = v21;
    ++v22[1];
    if (v20 != ODSOperandIndexAndLength)
    {
      v24 = (v19 + 32 * ODSOperandIndexAndLength + 24);
      do
      {
        v25 = *v24;
        v24 += 4;
        --v21;
      }

      while (v21);
    }

    IsNegated = mlir::pdl_interp::ApplyConstraintOp::getIsNegated(v491);
    v27 = v5[3];
    v28 = v27[1];
    if ((v28 + 1) > v27[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v27 + 2 * v28) = IsNegated;
    ++v27[1];
    ODSResultIndexAndLength = mlir::pdl_interp::ApplyConstraintOp::getODSResultIndexAndLength(v491, 0);
    v30 = ODSResultIndexAndLength;
    if (*(v491[0] + 9))
    {
      NextResultAtOffset = v491[0] - 16;
    }

    else
    {
      NextResultAtOffset = 0;
    }

    v32 = a1;
    v33 = ODSResultIndexAndLength;
    if (ODSResultIndexAndLength)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, ODSResultIndexAndLength);
    }

    v34 = (HIDWORD(v30) + v30);
    v35 = v34 - v30;
    v36 = v5[3];
    v37 = v36[1];
    if ((v37 + 1) > v36[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v36 + 2 * v37) = v35;
    ++v36[1];
    if (v34 != v33)
    {
      v57 = 0;
      do
      {
        v58 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, v57);
        v59 = v58;
        v60 = *(*(*(v58 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v61 = 0;
          v62 = a3[3];
          v63 = v62[1];
          if ((v63 + 1) > v62[2])
          {
            goto LABEL_60;
          }
        }

        else if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
        {
          v61 = 1;
          v62 = a3[3];
          v63 = v62[1];
          if ((v63 + 1) > v62[2])
          {
            goto LABEL_60;
          }
        }

        else if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          *&v495 = *(v58 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(*mlir::pdl::RangeType::getElementType(&v495) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v61 = 3;
          }

          else
          {
            v61 = 5;
          }

          v62 = a3[3];
          v63 = v62[1];
          if ((v63 + 1) > v62[2])
          {
LABEL_60:
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }
        }

        else
        {
          if (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v61 = 2;
          }

          else
          {
            v61 = 4 * (v60 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
          }

          v62 = a3[3];
          v63 = v62[1];
          if ((v63 + 1) > v62[2])
          {
            goto LABEL_60;
          }
        }

        *(*v62 + 2 * v63) = v61;
        ++v62[1];
        if (*(*(*(v59 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          *&v495 = v59;
          v64 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v32 + 24, &v495);
          v65 = a3[3];
          v66 = v65[1];
          if ((v66 + 1) > v65[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v65 + 2 * v66) = v64;
          ++v65[1];
        }

        v5 = a3;
        v68 = a3[3];
        v67 = a3[4];
        *&v495 = v59;
        v69 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v67, &v495);
        v70 = v68[1];
        if ((v70 + 1) > v68[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v68 + 2 * v70) = v69;
        ++v68[1];
        ++v57;
      }

      while (v35 != v57);
    }

    mlir::SuccessorRange::SuccessorRange(&v495, v491[0]);
    v39 = *(&v495 + 1);
    v38 = v495;
    goto LABEL_20;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ApplyRewriteOp,void>::id)
  {
    v491[0] = a2;
    v71 = mlir::pdl_interp::ApplyRewriteOp::getName(v491);
    v73 = v72;
    v75 = llvm::StringMapImpl::hash(v71, v72, v74);
    v76 = *(*llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 48), v71, v73, v75) + 8);
    v77 = v5[3];
    v78 = v77[1];
    if ((v78 + 1) > v77[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v77 + 2 * v78) = 1;
    ++v77[1];
    v79 = v5[3];
    v80 = v79[1];
    if ((v80 + 1) > v79[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v79 + 2 * v80) = v76;
    ++v79[1];
    v81 = mlir::pdl_interp::ApplyRewriteOp::getODSOperandIndexAndLength(v491, 0);
    if ((*(v491[0] + 46) & 0x80) != 0)
    {
      v82 = *(v491[0] + 9);
    }

    else
    {
      v82 = 0;
    }

    v83 = (HIDWORD(v81) + v81);
    v84 = v83 - v81;
    v85 = v5[3];
    v86 = v85[1];
    if ((v86 + 1) > v85[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v85 + 2 * v86) = v84;
    ++v85[1];
    if (v83 != v81)
    {
      v87 = (v82 + 32 * v81 + 24);
      do
      {
        v88 = *v87;
        v87 += 4;
        --v84;
      }

      while (v84);
    }

    v89 = mlir::pdl_interp::ApplyRewriteOp::getODSResultIndexAndLength(v491, 0);
    v90 = v89;
    if (*(v491[0] + 9))
    {
      v91 = v491[0] - 16;
    }

    else
    {
      v91 = 0;
    }

    v92 = a1;
    v93 = v89;
    if (v89)
    {
      v91 = mlir::detail::OpResultImpl::getNextResultAtOffset(v91, v89);
    }

    v94 = (HIDWORD(v90) + v90);
    v95 = v94 - v90;
    v96 = v5[3];
    v97 = v96[1];
    if ((v97 + 1) > v96[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v96 + 2 * v97) = v95;
    ++v96[1];
    if (v94 != v93)
    {
      v98 = 0;
      do
      {
        v99 = mlir::detail::OpResultImpl::getNextResultAtOffset(v91, v98);
        v100 = v99;
        v101 = *(*(*(v99 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
        if (v101 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
        {
          v102 = 0;
          v103 = a3[3];
          v104 = v103[1];
          if ((v104 + 1) > v103[2])
          {
            goto LABEL_100;
          }
        }

        else if (v101 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
        {
          v102 = 1;
          v103 = a3[3];
          v104 = v103[1];
          if ((v104 + 1) > v103[2])
          {
            goto LABEL_100;
          }
        }

        else if (v101 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          *&v495 = *(v99 + 8) & 0xFFFFFFFFFFFFFFF8;
          if (*(*mlir::pdl::RangeType::getElementType(&v495) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v102 = 3;
          }

          else
          {
            v102 = 5;
          }

          v103 = a3[3];
          v104 = v103[1];
          if ((v104 + 1) > v103[2])
          {
LABEL_100:
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }
        }

        else
        {
          if (v101 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
          {
            v102 = 2;
          }

          else
          {
            v102 = 4 * (v101 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
          }

          v103 = a3[3];
          v104 = v103[1];
          if ((v104 + 1) > v103[2])
          {
            goto LABEL_100;
          }
        }

        *(*v103 + 2 * v104) = v102;
        ++v103[1];
        if (*(*(*(v100 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
        {
          *&v495 = v100;
          v105 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v92 + 24, &v495);
          v106 = a3[3];
          v107 = v106[1];
          if ((v107 + 1) > v106[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v106 + 2 * v107) = v105;
          ++v106[1];
        }

        v109 = a3[3];
        v108 = a3[4];
        *&v495 = v100;
        v110 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v108, &v495);
        v111 = v109[1];
        if ((v111 + 1) > v109[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v109 + 2 * v111) = v110;
        ++v109[1];
        ++v98;
      }

      while (v95 != v98);
    }

    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::AreEqualOp,void>::id)
  {
    v112 = *(a2 + 72);
    v113 = *(v112 + 24);
    if (*(*(*(v113 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v139 = a3[3];
      v140 = v139[1];
      if ((v140 + 1) > v139[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v139 + 2 * v140) = 3;
      ++v139[1];
      v141 = *(*(*(v113 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v141 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
      {
        v142 = 0;
      }

      else if (v141 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v142 = 1;
      }

      else if (v141 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
      {
        *&v495 = *(v113 + 8) & 0xFFFFFFFFFFFFFFF8;
        v163 = a2;
        ElementType = mlir::pdl::RangeType::getElementType(&v495);
        a2 = v163;
        if (*(*ElementType + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
        {
          v142 = 3;
        }

        else
        {
          v142 = 5;
        }
      }

      else if (v141 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v142 = 2;
      }

      else
      {
        v142 = 4 * (v141 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
      }

      v167 = v5[3];
      v168 = v167[1];
      if ((v168 + 1) > v167[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v167 + 2 * v168) = v142;
      ++v167[1];
      v169 = *(a2 + 72);
      v170 = *(v169 + 24);
      v171 = *(v169 + 56);
      mlir::SuccessorRange::SuccessorRange(&v495, a2);
      v116 = *(&v495 + 1);
      v115 = v495;
      v173 = v5[3];
      v172 = v5[4];
      *&v495 = v170;
      v174 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v172, &v495);
      v175 = v173[1];
      if ((v175 + 1) > v173[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v173 + 2 * v175) = v174;
      ++v173[1];
      v124 = v5[3];
      v123 = v5[4];
      *&v495 = v171;
    }

    else
    {
      v114 = *(v112 + 56);
      mlir::SuccessorRange::SuccessorRange(&v495, a2);
      v116 = *(&v495 + 1);
      v115 = v495;
      v117 = v5[3];
      v118 = v117[1];
      if ((v118 + 1) > v117[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v117 + 2 * v118) = 2;
      ++v117[1];
      v120 = v5[3];
      v119 = v5[4];
      *&v495 = v113;
      v121 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v119, &v495);
      v122 = v120[1];
      if ((v122 + 1) > v120[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v120 + 2 * v122) = v121;
      ++v120[1];
      v124 = v5[3];
      v123 = v5[4];
      *&v495 = v114;
    }

    v161 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v123, &v495);
    v162 = v124[1];
    if ((v162 + 1) > v124[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    goto LABEL_157;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::BranchOp,void>::id)
  {
    mlir::SuccessorRange::SuccessorRange(&v495, a2);
    v39 = *(&v495 + 1);
    v38 = v495;
    v125 = v5[3];
    v126 = v125[1];
    if ((v126 + 1) > v125[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v125 + 2 * v126) = 4;
    ++v125[1];
LABEL_20:
    v40 = v5;
LABEL_160:
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckAttributeOp,void>::id)
  {
    Rewriter = a2;
    v127 = *(*(a2 + 72) + 24);
    ConstantValue = mlir::pdl_interp::CheckAttributeOp::getConstantValue(&Rewriter);
LABEL_124:
    v129 = ConstantValue;
    mlir::SuccessorRange::SuccessorRange(&v495, Rewriter);
    v116 = *(&v495 + 1);
    v115 = v495;
    v130 = v5[3];
    v131 = v130[1];
    if ((v131 + 1) > v130[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v130 + 2 * v131) = 2;
    ++v130[1];
    v133 = v5[3];
    v132 = v5[4];
    *&v495 = v127;
    v134 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v132, &v495);
    v135 = v133[1];
    if ((v135 + 1) > v133[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v133 + 2 * v135) = v134;
    ++v133[1];
    v136 = v5[3];
    v137 = v5[4];
    v491[0] = v129;
    InputAttributeNames = (**(v137 + 216) + ((*(*(v137 + 184) + 8) - **(v137 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v137 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v137 + 184), v491);
    }

    v138 = v136[1];
    if ((v138 + 1) > v136[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v136 + 2 * v138) = *(v495 + 8);
    ++v136[1];
    goto LABEL_158;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperandCountOp,void>::id)
  {
    v491[0] = a2;
    v143 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckOperandCountOp::getCount(v491);
    CompareAtLeast = mlir::pdl_interp::CheckOperandCountOp::getCompareAtLeast(v491);
    mlir::SuccessorRange::SuccessorRange(&v495, v491[0]);
    v147 = *(&v495 + 1);
    v146 = v495;
    v148 = v5;
    v149 = 5;
LABEL_145:
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckOperationNameOp,void>::id)
  {
    Rewriter = a2;
    v150 = *(*(a2 + 72) + 24);
    v151 = mlir::pdl_interp::CheckOperationNameOp::getName(&Rewriter);
    mlir::OperationName::OperationName(&v493, v151, v152, *(a1 + 152));
    mlir::SuccessorRange::SuccessorRange(&v495, Rewriter);
    v116 = *(&v495 + 1);
    v115 = v495;
    v153 = v493;
    v154 = v5[3];
    v155 = v154[1];
    if ((v155 + 1) > v154[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v154 + 2 * v155) = 6;
    ++v154[1];
    v157 = v5[3];
    v156 = v5[4];
    *&v495 = v150;
    v158 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v156, &v495);
    v159 = v157[1];
    if ((v159 + 1) > v157[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v157 + 2 * v159) = v158;
    ++v157[1];
    v124 = v5[3];
    v160 = v5[4];
    v491[0] = v153;
    InputAttributeNames = (**(v160 + 216) + ((*(*(v160 + 184) + 8) - **(v160 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v160 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v160 + 184), v491);
    }

    v161 = *(v495 + 8);
    v162 = v124[1];
    if ((v162 + 1) > v124[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

LABEL_157:
    *(*v124 + 2 * v162) = v161;
    ++v124[1];
LABEL_158:
    v40 = v5;
LABEL_159:
    v38 = v115;
    v39 = v116;
    goto LABEL_160;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckResultCountOp,void>::id)
  {
    v491[0] = a2;
    v143 = *(*(a2 + 72) + 24);
    Count = mlir::pdl_interp::CheckResultCountOp::getCount(v491);
    CompareAtLeast = mlir::pdl_interp::CheckResultCountOp::getCompareAtLeast(v491);
    mlir::SuccessorRange::SuccessorRange(&v495, v491[0]);
    v147 = *(&v495 + 1);
    v146 = v495;
    v148 = v5;
    v149 = 7;
    goto LABEL_145;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypeOp,void>::id)
  {
    Rewriter = a2;
    v127 = *(*(a2 + 72) + 24);
    ConstantValue = mlir::pdl_interp::CheckTypeOp::getType(&Rewriter);
    goto LABEL_124;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CheckTypesOp,void>::id)
  {
    v491[0] = a2;
    v165 = *(*(a2 + 72) + 24);
    Types = mlir::pdl_interp::CheckTypesOp::getTypes(v491);
    mlir::SuccessorRange::SuccessorRange(&v495, v491[0]);
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ContinueOp,void>::id)
  {
    v176 = *(a1 + 144);
    v177 = a3[3];
    v178 = v177[1];
    if ((v178 + 1) > v177[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v177 + 2 * v178) = 9;
    ++v177[1];
    v179 = a3[3];
    v180 = v179[1];
    if (v180 + 1 > v179[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v179 + 2 * v180) = v176 - 1;
    goto LABEL_208;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateAttributeOp,void>::id)
  {
    Rewriter = a2;
    Value = mlir::pdl_interp::CreateAttributeOp::getValue(&Rewriter);
LABEL_166:
    v491[0] = Value;
    InputAttributeNames = (**(a1 + 216) + ((*(*(a1 + 184) + 8) - **(a1 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(a1 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(a1 + 184), v491);
    }

    v182 = *(v495 + 8);
    if (*(Rewriter + 9))
    {
      v183 = Rewriter - 16;
    }

    else
    {
      v183 = 0;
    }

    *&v495 = mlir::detail::OpResultImpl::getNextResultAtOffset(v183, 0);
    *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1, &v495) = v182;
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateOperationOp,void>::id)
  {
    v492 = a2;
    if (*(a2 + 36))
    {
      v184 = a2 - 16;
    }

    else
    {
      v184 = 0;
    }

    v185 = mlir::detail::OpResultImpl::getNextResultAtOffset(v184, 0);
    v186 = mlir::pdl_interp::CreateOperationOp::getName(&v492);
    mlir::OperationName::OperationName(&Rewriter, v186, v187, *(a1 + 152));
    v188 = Rewriter;
    v189 = v5[3];
    v190 = v189[1];
    if ((v190 + 1) > v189[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v189 + 2 * v190) = 11;
    ++v189[1];
    v192 = v5[3];
    v191 = v5[4];
    *&v495 = v185;
    v193 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v191, &v495);
    v194 = v192[1];
    if ((v194 + 1) > v192[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v192 + 2 * v194) = v193;
    ++v192[1];
    v195 = v5[3];
    v196 = v5[4];
    v491[0] = v188;
    InputAttributeNames = (**(v196 + 216) + ((*(*(v196 + 184) + 8) - **(v196 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v196 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v196 + 184), v491);
    }

    v197 = v195[1];
    if ((v197 + 1) > v195[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v195 + 2 * v197) = *(v495 + 8);
    ++v195[1];
    v198 = mlir::pdl_interp::CreateOperationOp::getODSOperandIndexAndLength(&v492, 0);
    if ((*(v492 + 46) & 0x80) != 0)
    {
      v199 = *(v492 + 72);
    }

    else
    {
      v199 = 0;
    }

    v200 = (HIDWORD(v198) + v198);
    v201 = v200 - v198;
    v202 = v5[3];
    v203 = v202[1];
    if ((v203 + 1) > v202[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v202 + 2 * v203) = v201;
    ++v202[1];
    if (v200 != v198)
    {
      v204 = (v199 + 32 * v198 + 24);
      do
      {
        v205 = *v204;
        v204 += 4;
        --v201;
      }

      while (v201);
    }

    v206 = mlir::pdl_interp::CreateOperationOp::getODSOperandIndexAndLength(&v492, 1u);
    if ((*(v492 + 46) & 0x80) != 0)
    {
      v207 = *(v492 + 72);
    }

    else
    {
      v207 = 0;
    }

    v491[0] = (v207 + 32 * v206);
    v491[1] = ((HIDWORD(v206) + v206) - v206);
    v208 = v5[3];
    v209 = v208[1];
    if ((v209 + 1) > v208[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v208 + 2 * v209) = WORD2(v206);
    ++v208[1];
    InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v492);
    v490 = v491;
    v210 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v211 = *v490;
    v212 = mlir::ArrayAttr::getValue(&InputAttributeNames);
    v214 = v212 + 8 * v213;
    if (v214 != v210)
    {
      v215 = v490[1];
      if (v215)
      {
        v216 = v215 - 1;
        v217 = (v211 + 24);
        v218 = v210 + 8;
        do
        {
          v219 = *v217;
          v220 = v5[3];
          v221 = v5[4];
          Rewriter = *(v218 - 8);
          v493 = **(v221 + 216) + ((*(*(v221 + 184) + 8) - **(v221 + 184)) >> 3);
          llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v221 + 120, &Rewriter, &v493, &v495);
          if (v496 == 1)
          {
            std::vector<void const*>::push_back[abi:nn200100](*(v221 + 184), &Rewriter);
          }

          v222 = v220[1];
          if ((v222 + 1) > v220[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v220 + 2 * v222) = *(v495 + 8);
          ++v220[1];
          v224 = v5[3];
          v223 = v5[4];
          *&v495 = v219;
          v225 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v223, &v495);
          v226 = v224[1];
          if ((v226 + 1) > v224[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v224 + 2 * v226) = v225;
          ++v224[1];
          v228 = v216-- != 0;
          if (v218 == v214)
          {
            break;
          }

          v217 += 4;
          v218 += 8;
        }

        while (v228);
      }
    }

    if (!mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v492))
    {
      return;
    }

    v179 = v5[3];
    v229 = v179[1];
    if (v229 + 1 > v179[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v230 = *v179;
    v231 = -1;
    goto LABEL_207;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateRangeOp,void>::id)
  {
    v232 = a2;
    *&v495 = *(a2 - 8) & 0xFFFFFFFFFFFFFFF8;
    v233 = *(*mlir::pdl::RangeType::getElementType(&v495) + 136);
    if (v233 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v236 = v5[3];
      v237 = v236[1];
      if ((v237 + 1) > v236[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v235 = v232;
      v238 = 12;
    }

    else
    {
      v234 = v233 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id;
      v235 = v232;
      if (!v234)
      {
LABEL_237:
        v257 = v235 - 16;
        if (*(v235 + 36))
        {
          v258 = v235 - 16;
        }

        else
        {
          v258 = 0;
        }

        v259 = v235;
        v260 = mlir::detail::OpResultImpl::getNextResultAtOffset(v258, 0);
        if (*(v259 + 36))
        {
          v261 = v257;
        }

        else
        {
          v261 = 0;
        }

        *&v495 = mlir::detail::OpResultImpl::getNextResultAtOffset(v261, 0);
        v262 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
        v264 = v5[3];
        v263 = v5[4];
        *&v495 = v260;
        v265 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v263, &v495);
        v266 = v264[1];
        if ((v266 + 1) > v264[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v264 + 2 * v266) = v265;
        ++v264[1];
        v267 = v5[3];
        v268 = v267[1];
        if ((v268 + 1) > v267[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v267 + 2 * v268) = v262;
        ++v267[1];
        if ((*(v232 + 46) & 0x80) != 0)
        {
          v269 = v232;
          v270 = *(v232 + 72);
          v271 = *(v269 + 68);
          v272 = v5[3];
          v273 = v272[1];
          if ((v273 + 1) <= v272[2])
          {
            goto LABEL_247;
          }
        }

        else
        {
          v270 = 0;
          v271 = 0;
          v272 = v5[3];
          v273 = v272[1];
          if ((v273 + 1) <= v272[2])
          {
LABEL_247:
            *(*v272 + 2 * v273) = v271;
            ++v272[1];
            if (v271)
            {
              v274 = (v270 + 24);
              do
              {
                v275 = *v274;
                v274 += 4;
                --v271;
              }

              while (v271);
            }

            return;
          }
        }

        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v236 = v5[3];
      v237 = v236[1];
      if ((v237 + 1) > v236[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v238 = 13;
    }

    *(*v236 + 2 * v237) = v238;
    ++v236[1];
    goto LABEL_237;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypeOp,void>::id)
  {
    Rewriter = a2;
    Value = mlir::pdl_interp::CreateTypeOp::getValue(&Rewriter);
    goto LABEL_166;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::CreateTypesOp,void>::id)
  {
    Rewriter = a2;
    v239 = a2 - 16;
    if (*(a2 + 36))
    {
      v240 = a2 - 16;
    }

    else
    {
      v240 = 0;
    }

    v241 = a2;
    v242 = mlir::detail::OpResultImpl::getNextResultAtOffset(v240, 0);
    if (*(v241 + 36))
    {
      v243 = v239;
    }

    else
    {
      v243 = 0;
    }

    *&v495 = mlir::detail::OpResultImpl::getNextResultAtOffset(v243, 0);
    v244 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
    v245 = mlir::pdl_interp::CreateTypesOp::getValue(&Rewriter);
    v246 = v5[3];
    v247 = v246[1];
    if ((v247 + 1) > v246[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v246 + 2 * v247) = 10;
    ++v246[1];
    v249 = v5[3];
    v248 = v5[4];
    *&v495 = v242;
    v250 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v248, &v495);
    v251 = v249[1];
    if ((v251 + 1) > v249[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v249 + 2 * v251) = v250;
    ++v249[1];
    v252 = v5[3];
    v253 = v252[1];
    if ((v253 + 1) > v252[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v252 + 2 * v253) = v244;
    ++v252[1];
    v255 = v5[3];
    v254 = v5[4];
    v491[0] = v245;
    InputAttributeNames = (**(v254 + 216) + ((*(*(v254 + 184) + 8) - **(v254 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v254 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v254 + 184), v491);
    }

    v256 = v255[1];
    if ((v256 + 1) > v255[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v255 + 2 * v256) = *(v495 + 8);
    ++v255[1];
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::EraseOp,void>::id)
  {
    v276 = *(*(a2 + 72) + 24);
    v277 = a3[3];
    v278 = v277[1];
    if ((v278 + 1) > v277[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v277 + 2 * v278) = 14;
    ++v277[1];
    v280 = a3[3];
    v279 = a3[4];
    goto LABEL_301;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ExtractOp,void>::id)
  {
    v491[0] = a2;
    v281 = a2;
    if (*(a2 + 36))
    {
      v282 = a2 - 16;
    }

    else
    {
      v282 = 0;
    }

    v283 = *(*(*(mlir::detail::OpResultImpl::getNextResultAtOffset(v282, 0) + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v283 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v284 = 15;
    }

    else if (v283 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
    {
      v284 = 17;
    }

    else
    {
      v284 = 16 * (v283 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id);
    }

    v295 = *(*(v281 + 72) + 24);
    Index = mlir::pdl_interp::ExtractOp::getIndex(v491);
    if (*(v491[0] + 9))
    {
      v297 = v491[0] - 16;
    }

    else
    {
      v297 = 0;
    }

    v276 = mlir::detail::OpResultImpl::getNextResultAtOffset(v297, 0);
    v298 = a3[3];
    v299 = v298[1];
    if ((v299 + 1) > v298[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v298 + 2 * v299) = v284;
    ++v298[1];
    v301 = a3[3];
    v300 = a3[4];
    *&v495 = v295;
    v302 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v300, &v495);
    v303 = v301[1];
    if ((v303 + 1) > v301[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v301 + 2 * v303) = v302;
    ++v301[1];
    v304 = a3[3];
    v305 = v304[1];
    if (v304[2] < (v305 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v304 + 2 * v305) = Index;
    v304[1] += 2;
    v280 = a3[3];
    v279 = a3[4];
    goto LABEL_301;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::FinalizeOp,void>::id)
  {
    v179 = a3[3];
    v229 = v179[1];
    if (v229 + 1 > v179[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v230 = *v179;
    v231 = 18;
LABEL_207:
    *(v230 + 2 * v229) = v231;
LABEL_208:
    ++v179[1];
    return;
  }

  if (a2 && v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ForEachOp,void>::id)
  {
    v41 = a2 + 64;
    v42 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    if (v42)
    {
      v43 = v42 - 8;
    }

    else
    {
      v43 = 0;
    }

    v44 = **(v43 + 48);
    v45 = a2;
    *&v495 = *(*(a2 + 72) + 24);
    v46 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
    v47 = v5[3];
    v48 = v47[1];
    if ((v48 + 1) > v47[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v47 + 2 * v48) = 19;
    ++v47[1];
    v49 = a3[3];
    v50 = v49[1];
    if ((v50 + 1) > v49[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v49 + 2 * v50) = v46;
    ++v49[1];
    v52 = a3[3];
    v51 = a3[4];
    *&v495 = v44;
    v53 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v51, &v495);
    v54 = v52[1];
    if ((v54 + 1) > v52[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v52 + 2 * v54) = v53;
    ++v52[1];
    v55 = *(*(*(v44 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
    {
      v56 = 0;
    }

    else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
    {
      v56 = 1;
    }

    else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      *&v495 = *(v44 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*mlir::pdl::RangeType::getElementType(&v495) + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v56 = 3;
      }

      else
      {
        v56 = 5;
      }
    }

    else if (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v56 = 2;
    }

    else
    {
      v56 = 4 * (v55 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    }

    v345 = a3[3];
    v346 = v345[1];
    if ((v346 + 1) > v345[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v345 + 2 * v346) = v56;
    ++v345[1];
    v347 = *(((v41 + 16 * ((*(v45 + 44) >> 23) & 1) + ((*(v45 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    v348 = a3[3];
    v349 = v348[1];
    if ((v349 + 1) > v348[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v348 + 2 * v349) = *(a1 + 144);
    ++v348[1];
    *&v495 = v347;
    v350 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](a3, &v495);
    v351 = *(v350 + 2);
    if (v351 >= *(v350 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*v350 + 4 * v351) = *(a3[3] + 8);
    ++*(v350 + 2);
    v352 = a3[3];
    v353 = v352[1];
    if (v352[2] < (v353 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v352 + 2 * v353) = 0;
    v352[1] += 2;
    v354 = *(a1 + 144) + 1;
    *(a1 + 144) = v354;
    v355 = *(a1 + 248);
    if (*v355 < v354)
    {
      *v355 = v354;
    }

    --*(a1 + 144);
    return;
  }

  v487 = a2;
  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v308 = a2 - 16;
    }

    else
    {
      v308 = 0;
    }

    v309 = mlir::detail::OpResultImpl::getNextResultAtOffset(v308, 0);
    v310 = *(v487 + 10);
    v311 = *(*(v487 + 9) + 24);
    v312 = a3[3];
    v313 = v312[1];
    if ((v313 + 1) > v312[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v312 + 2 * v313) = 20;
    ++v312[1];
    v315 = a3[3];
    v314 = a3[4];
    *&v495 = v309;
    v316 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v314, &v495);
    v317 = v315[1];
    if ((v317 + 1) > v315[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v315 + 2 * v317) = v316;
    ++v315[1];
    v319 = a3[3];
    v318 = a3[4];
    *&v495 = v311;
    v320 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v318, &v495);
    v321 = v319[1];
    if ((v321 + 1) > v319[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v319 + 2 * v321) = v320;
    ++v319[1];
    v280 = a3[3];
    v322 = a3[4];
    v491[0] = v310;
    InputAttributeNames = (**(v322 + 216) + ((*(*(v322 + 184) + 8) - **(v322 + 184)) >> 3));
    llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v322 + 120, v491, &InputAttributeNames, &v495);
    if (v496 == 1)
    {
      std::vector<void const*>::push_back[abi:nn200100](*(v322 + 184), v491);
    }

    v306 = *(v495 + 8);
    v307 = v280[1];
    if ((v307 + 1) <= v280[2])
    {
      goto LABEL_303;
    }

    goto LABEL_316;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetAttributeTypeOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v323 = a2 - 16;
    }

    else
    {
      v323 = 0;
    }

    v324 = mlir::detail::OpResultImpl::getNextResultAtOffset(v323, 0);
    v325 = *(*(v487 + 9) + 24);
    v326 = a3[3];
    v327 = v326[1];
    if (v327 + 1 > v326[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v328 = *v326;
    v329 = 21;
    goto LABEL_323;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetDefiningOpOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v334 = a2 - 16;
    }

    else
    {
      v334 = 0;
    }

    v335 = mlir::detail::OpResultImpl::getNextResultAtOffset(v334, 0);
    v336 = a3[3];
    v337 = v336[1];
    if ((v337 + 1) > v336[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v336 + 2 * v337) = 22;
    ++v336[1];
    v339 = a3[3];
    v338 = a3[4];
    *&v495 = v335;
    v340 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v338, &v495);
    v341 = v339[1];
    if ((v341 + 1) > v339[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v339 + 2 * v341) = v340;
    goto LABEL_335;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandOp,void>::id)
  {
    *&v495 = a2;
    v342 = mlir::pdl_interp::GetOperandOp::getIndex(&v495);
    v343 = v342;
    if (v342 <= 3)
    {
      v344 = v342 + 23;
LABEL_363:
      v367 = a3[3];
      v369 = v367 + 1;
      v368 = v367[1];
      if ((v368 + 1) > v367[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v367 + 2 * v368) = v344;
      v370 = 1;
LABEL_383:
      *v369 += v370;
      v376 = *(*(v495 + 72) + 24);
      if (*(v495 + 36))
      {
        v377 = v495 - 16;
      }

      else
      {
        v377 = 0;
      }

      v378 = mlir::detail::OpResultImpl::getNextResultAtOffset(v377, 0);
      return;
    }

    v362 = a3[3];
    v363 = v362[1];
    if (v363 + 1 > v362[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v364 = *v362;
    v365 = 27;
LABEL_380:
    *(v364 + 2 * v363) = v365;
    ++v362[1];
    v374 = a3[3];
    v369 = v374 + 1;
    v375 = v374[1];
    if (v374[2] < (v375 + 2))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v374 + 2 * v375) = v343;
    v370 = 2;
    goto LABEL_383;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetOperandsOp,void>::id)
  {
    v491[0] = a2;
    if (*(a2 + 36))
    {
      v356 = a2 - 16;
    }

    else
    {
      v356 = 0;
    }

    v276 = mlir::detail::OpResultImpl::getNextResultAtOffset(v356, 0);
    v357 = mlir::pdl_interp::GetOperandsOp::getIndex(v491);
    if ((v357 & 0x100000000) != 0)
    {
      v358 = v357;
    }

    else
    {
      v358 = -1;
    }

    if (*(*(*(v276 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v359 = a3[3];
      v360 = v359[1];
      if ((v360 + 1) > v359[2])
      {
        goto LABEL_375;
      }

LABEL_358:
      v361 = -1;
LABEL_377:
      *(*v359 + 2 * v360) = v361;
      ++v359[1];
      v280 = a3[3];
      v279 = a3[4];
LABEL_301:
      *&v495 = v276;
      goto LABEL_302;
    }

LABEL_376:
    *&v495 = v276;
    v361 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
    v359 = a3[3];
    v360 = v359[1];
    if ((v360 + 1) > v359[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    goto LABEL_377;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultOp,void>::id)
  {
    *&v495 = a2;
    v366 = mlir::pdl_interp::GetResultOp::getIndex(&v495);
    v343 = v366;
    if (v366 <= 3)
    {
      v344 = v366 + 29;
      goto LABEL_363;
    }

    v362 = a3[3];
    v363 = v362[1];
    if (v363 + 1 > v362[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v364 = *v362;
    v365 = 33;
    goto LABEL_380;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetResultsOp,void>::id)
  {
    v491[0] = a2;
    if (*(a2 + 36))
    {
      v371 = a2 - 16;
    }

    else
    {
      v371 = 0;
    }

    v276 = mlir::detail::OpResultImpl::getNextResultAtOffset(v371, 0);
    v372 = mlir::pdl_interp::GetResultsOp::getIndex(v491);
    if ((v372 & 0x100000000) != 0)
    {
      v373 = v372;
    }

    else
    {
      v373 = -1;
    }

    if (*(*(*(v276 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v359 = a3[3];
      v360 = v359[1];
      if ((v360 + 1) > v359[2])
      {
LABEL_375:
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      goto LABEL_358;
    }

    goto LABEL_376;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetUsersOp,void>::id)
  {
    if (*(a2 + 36))
    {
      v379 = a2 - 16;
    }

    else
    {
      v379 = 0;
    }

    v380 = mlir::detail::OpResultImpl::getNextResultAtOffset(v379, 0);
    *&v495 = v380;
    v381 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
    v382 = a3[3];
    v383 = v382[1];
    if ((v383 + 1) > v382[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v382 + 2 * v383) = 35;
    ++v382[1];
    v385 = a3[3];
    v384 = a3[4];
    *&v495 = v380;
    v386 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v384, &v495);
    v387 = v385[1];
    if ((v387 + 1) > v385[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v385 + 2 * v387) = v386;
    ++v385[1];
    v339 = a3[3];
    v388 = v339[1];
    if ((v388 + 1) > v339[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v339 + 2 * v388) = v381;
LABEL_335:
    ++v339[1];
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::GetValueTypeOp,void>::id)
  {
    v389 = *(*(*(a2 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
    if (*(a2 + 36))
    {
      v390 = a2 - 16;
    }

    else
    {
      v390 = 0;
    }

    v391 = mlir::detail::OpResultImpl::getNextResultAtOffset(v390, 0);
    v324 = v391;
    if (v389 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      *&v495 = v391;
      v405 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](a1 + 24, &v495);
      v325 = *(*(v487 + 9) + 24);
      v406 = a3[3];
      v407 = v406[1];
      if ((v407 + 1) > v406[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v406 + 2 * v407) = 37;
      ++v406[1];
      v409 = a3[3];
      v408 = a3[4];
      *&v495 = v324;
      v410 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v408, &v495);
      v411 = v409[1];
      if ((v411 + 1) > v409[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v409 + 2 * v411) = v410;
      ++v409[1];
      v331 = a3[3];
      v412 = v331[1];
      if ((v412 + 1) > v331[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v331 + 2 * v412) = v405;
      goto LABEL_325;
    }

    v325 = *(*(v487 + 9) + 24);
    v326 = a3[3];
    v327 = v326[1];
    if (v327 + 1 > v326[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v328 = *v326;
    v329 = 36;
LABEL_323:
    *(v328 + 2 * v327) = v329;
    ++v326[1];
    v331 = a3[3];
    v330 = a3[4];
    *&v495 = v324;
    v332 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v330, &v495);
    v333 = v331[1];
    if ((v333 + 1) > v331[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v331 + 2 * v333) = v332;
LABEL_325:
    ++v331[1];
    v280 = a3[3];
    v279 = a3[4];
    *&v495 = v325;
LABEL_302:
    v306 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v279, &v495);
    v307 = v280[1];
    if ((v307 + 1) <= v280[2])
    {
LABEL_303:
      *(*v280 + 2 * v307) = v306;
      ++v280[1];
      return;
    }

LABEL_316:
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::IsNotNullOp,void>::id)
  {
    v392 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v495, a2);
    v116 = *(&v495 + 1);
    v115 = v495;
    v393 = a3[3];
    v394 = v393[1];
    if ((v394 + 1) > v393[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v393 + 2 * v394) = 38;
    ++v393[1];
    v396 = a3[3];
    v395 = a3[4];
    *&v495 = v392;
    v397 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v395, &v495);
    v398 = v396[1];
    if ((v398 + 1) > v396[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*v396 + 2 * v398) = v397;
    ++v396[1];
    v40 = a3;
    goto LABEL_159;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::RecordMatchOp,void>::id)
  {
    v286 = a2;
  }

  else
  {
    v286 = 0;
  }

  if (v286)
  {
    InputAttributeNames = v286;
    v287 = *(a1 + 208);
    v288 = *(a1 + 256);
    v289 = *(v288 + 4);
    if (v289)
    {
      v290 = *v288;
      v291 = v289 - 1;
      v292 = (v289 - 1) & ((v286 >> 4) ^ (v286 >> 9));
      v293 = *(v290 + 16 * v292);
      if (v293 == v286)
      {
LABEL_284:
        v294 = *(v290 + 16 * v292 + 8);
LABEL_485:
        v449 = *(v287 + 8);
        Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&InputAttributeNames);
        v491[0] = mlir::SymbolRefAttr::getLeafReference(&Rewriter);
        v450 = mlir::StringAttr::getValue(v491);
        v452 = v451;
        v454 = llvm::StringMapImpl::hash(v450, v451, v453);
        v455 = llvm::StringMap<mlir::ConversionTarget::LegalizationAction,llvm::MallocAllocator>::try_emplace_with_hash<>((a1 + 96), v450, v452, v454);
        mlir::detail::PDLByteCodePattern::create(v286, v294, *(*v455 + 8), &v495);
        v456 = *(v287 + 8);
        if (v456 >= *(v287 + 12))
        {
          llvm::SmallVectorTemplateBase<mlir::detail::PDLByteCodePattern,false>::growAndEmplaceBack<mlir::detail::PDLByteCodePattern>();
        }

        v457 = *v287 + 104 * v456;
        v458 = v495;
        *(v457 + 16) = v496;
        *v457 = v458;
        *(v457 + 24) = v457 + 40;
        *(v457 + 32) = 0x200000000;
        v459 = v498;
        if (v498 && v457 != &v495)
        {
          if (__src == v500)
          {
            if (v498 >= 3)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            memcpy((v457 + 40), __src, 8 * v498);
            *(v457 + 32) = v459;
          }

          else
          {
            *(v457 + 24) = __src;
            *(v457 + 32) = v459;
            *(v457 + 36) = v499;
            __src = v500;
            v499 = 0;
          }

          v498 = 0;
        }

        v460 = v500[1];
        *(v457 + 72) = v457 + 88;
        *(v457 + 56) = v460;
        *(v457 + 80) = 0;
        v461 = v502;
        if (v502 && v457 != &v495)
        {
          if (v501 == &v504)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(v457 + 72) = v501;
          *(v457 + 80) = v461;
          *(v457 + 84) = v503;
          v501 = &v504;
          v503 = 0;
          v502 = 0;
        }

        *(v457 + 88) = v504;
        ++*(v287 + 8);
        if (v501 != &v504)
        {
          free(v501);
        }

        if (__src != v500)
        {
          free(__src);
        }

        mlir::SuccessorRange::SuccessorRange(&v495, InputAttributeNames);
        v462 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&InputAttributeNames, 1u);
        if ((*(InputAttributeNames + 46) & 0x80) != 0)
        {
          v463 = *(InputAttributeNames + 9);
        }

        else
        {
          v463 = 0;
        }

        v464 = v462;
        v465 = (HIDWORD(v462) + v462);
        v466 = v465 - v462;
        v467 = v495;
        v468 = a3[3];
        v469 = v468[1];
        if ((v469 + 1) > v468[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v468 + 2 * v469) = 39;
        ++v468[1];
        v470 = a3[3];
        v471 = v470[1];
        if ((v471 + 1) > v470[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v470 + 2 * v471) = v449;
        ++v470[1];
        v472 = a3[3];
        v473 = v472[1];
        if ((v473 + 1) > v472[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v472 + 2 * v473) = v466;
        ++v472[1];
        if (v465 != v464)
        {
          v482 = (v463 + 32 * v464 + 24);
          do
          {
            v484 = a3[3];
            v483 = a3[4];
            v491[0] = *v482;
            v485 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v483, v491);
            v486 = v484[1];
            if ((v486 + 1) > v484[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*v484 + 2 * v486) = v485;
            ++v484[1];
            v482 += 4;
            --v466;
          }

          while (v466);
        }

        v474 = mlir::pdl_interp::RecordMatchOp::getODSOperandIndexAndLength(&InputAttributeNames, 0);
        if ((*(InputAttributeNames + 46) & 0x80) != 0)
        {
          v475 = *(InputAttributeNames + 9);
        }

        else
        {
          v475 = 0;
        }

        v476 = (HIDWORD(v474) + v474);
        v477 = v476 - v474;
        v478 = a3[3];
        v479 = v478[1];
        if ((v479 + 1) > v478[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*v478 + 2 * v479) = v477;
        ++v478[1];
        if (v476 != v474)
        {
          v480 = (v475 + 32 * v474 + 24);
          do
          {
            v481 = *v480;
            v480 += 4;
            --v477;
          }

          while (v477);
        }

        return;
      }

      v447 = 1;
      while (v293 != -4096)
      {
        v448 = v292 + v447++;
        v292 = v448 & v291;
        v293 = *(v290 + 16 * v292);
        if (v293 == v286)
        {
          goto LABEL_284;
        }
      }
    }

    v294 = 0;
    goto LABEL_485;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::ReplaceOp,void>::id)
  {
    return;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchAttributeOp,void>::id)
  {
    v413 = *(a2 + 80);
    v414 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v495, a2);
    v416 = *(&v495 + 1);
    v415 = v495;
    v417 = a3[3];
    v418 = v417[1];
    if (v418 + 1 > v417[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v419 = *v417;
    v420 = 41;
  }

  else
  {
    if (v7 != &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypeOp,void>::id)
    {
      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchTypesOp,void>::id)
      {
        v425 = *(a2 + 80);
        v426 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v495, a2);
        return;
      }

      if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperandCountOp,void>::id)
      {
        v399 = *(a2 + 80);
        v400 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v495, a2);
        v402 = *(&v495 + 1);
        v401 = v495;
        v403 = a3;
        v404 = 42;
      }

      else
      {
        if (v7 == &mlir::detail::TypeIDResolver<mlir::pdl_interp::SwitchOperationNameOp,void>::id)
        {
          *&v495 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
          v427 = mlir::ArrayAttr::getValue(&v495);
          v428 = mlir::ArrayAttr::getValue(&v495);
          v430 = v429;
          v431 = *(*(v487 + 9) + 24);
          mlir::SuccessorRange::SuccessorRange(&v495, v487);
          v432 = v495;
          v433 = a3[3];
          v434 = v433[1];
          if ((v434 + 1) > v433[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          v435 = (v428 + 8 * v430);
          *(*v433 + 2 * v434) = 43;
          ++v433[1];
          v437 = a3[3];
          v436 = a3[4];
          *&v495 = v431;
          v438 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v436, &v495);
          v439 = v437[1];
          if ((v439 + 1) > v437[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v437 + 2 * v439) = v438;
          ++v437[1];
          v440 = a3[3];
          v441 = v440[1];
          if ((v441 + 1) > v440[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*v440 + 2 * v441) = (v435 - v427) >> 3;
          ++v440[1];
          for (; v427 != v435; ++v427)
          {
            v491[0] = *v427;
            v442 = mlir::StringAttr::getValue(v491);
            mlir::OperationName::OperationName(&v495, v442, v443, *(a1 + 152));
            v444 = a3[3];
            v445 = a3[4];
            v491[0] = v495;
            InputAttributeNames = (**(v445 + 216) + ((*(*(v445 + 184) + 8) - **(v445 + 184)) >> 3));
            llvm::DenseMapBase<llvm::DenseMap<void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>,void const*,unsigned short,llvm::DenseMapInfo<void const*,void>,llvm::detail::DenseMapPair<void const*,unsigned short>>::try_emplace<unsigned long>(v445 + 120, v491, &InputAttributeNames, &v495);
            if (v496 == 1)
            {
              std::vector<void const*>::push_back[abi:nn200100](*(v445 + 184), v491);
            }

            v446 = v444[1];
            if ((v446 + 1) > v444[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*v444 + 2 * v446) = *(v495 + 8);
            ++v444[1];
          }

          v40 = a3;
          v39 = *(&v432 + 1);
          v38 = v432;
          goto LABEL_160;
        }

        v399 = *(a2 + 80);
        v400 = *(*(a2 + 72) + 24);
        mlir::SuccessorRange::SuccessorRange(&v495, a2);
        v402 = *(&v495 + 1);
        v401 = v495;
        v403 = a3;
        v404 = 44;
      }

      return;
    }

    v413 = *(a2 + 80);
    v414 = *(*(a2 + 72) + 24);
    mlir::SuccessorRange::SuccessorRange(&v495, a2);
    v416 = *(&v495 + 1);
    v415 = v495;
    v417 = a3[3];
    v418 = v417[1];
    if (v418 + 1 > v417[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v419 = *v417;
    v420 = 45;
  }

  *(v419 + 2 * v418) = v420;
  ++v417[1];
  v422 = a3[3];
  v421 = a3[4];
  *&v495 = v414;
  v423 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v421, &v495);
  v424 = v422[1];
  if ((v424 + 1) > v422[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v422 + 2 * v424) = v423;
  ++v422[1];
}

void anonymous namespace::Generator::generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = v17;
  v16 = 0x800000000;
  llvm::ReversePostOrderTraversal<mlir::Region *,llvm::GraphTraits<mlir::Region *>>::Initialize(&v15, &v14);
  v5 = v15;
  if (v16)
  {
    v6 = v15 + 8 * v16;
    do
    {
      v7 = *(v6 - 1);
      v6 -= 8;
      v12 = *(*(a1 + 192) + 8);
      v13 = v7;
      llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::try_emplace<unsigned long>(a1 + 160, &v13, &v12, v11);
      v8 = v13 + 32;
      v9 = *(v13 + 40);
      if (v9 != v13 + 32)
      {
        do
        {
          ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v9);
          v9 = *(v9 + 8);
        }

        while (v9 != v8);
      }
    }

    while (v6 != v5);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }
}

uint64_t anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_3::operator()(uint64_t *a1, uint64_t a2)
{
  v14 = a2;
  v4 = *a1;
  v3 = a1[1];
  v5 = (*v3)++;
  LOWORD(v12) = v5;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v4, &v14, &v12, v13);
  v7 = *(v14 + 8) & 0xFFFFFFFFFFFFFFF8;
  if (*(*v7 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v7 = 0;
  }

  v12 = v7;
  if (v7)
  {
    result = mlir::pdl::RangeType::getElementType(&v12);
    v8 = *(*result + 136);
    if (v8 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v9 = a1[2];
    }

    else
    {
      if (v8 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
      {
        return result;
      }

      v9 = a1[3];
    }

    v10 = (*v9)++;
    v11 = v10;
    return llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>(v4 + 24, &v14, &v11, v13);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = *a1 + 16 * v6;
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 8;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = *a1 + 16 * (v14 & v5);
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 8;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v16, v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  *(v7 + 8) = 0;
  return v7 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::try_emplace<unsigned short>@<X0>(uint64_t result@<X0>, void *a2@<X1>, _WORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(result + 16);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = HIDWORD(*a2);
  v8 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v7);
  LODWORD(v7) = -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8)));
  v9 = v5 - 1;
  v10 = v7 & (v5 - 1);
  v11 = *result + 16 * v10;
  v12 = *v11;
  if (*a2 != *v11)
  {
    v15 = 0;
    v16 = 1;
    while (v12 != -4096)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v12 == -8192;
      }

      if (v17)
      {
        v15 = v11;
      }

      v18 = v10 + v16++;
      v10 = v18 & v9;
      v11 = v6 + 16 * (v18 & v9);
      v12 = *v11;
      if (*a2 == *v11)
      {
        goto LABEL_3;
      }
    }

    if (v15)
    {
      v11 = v15;
    }

LABEL_5:
    v22 = v11;
    v14 = *(result + 8);
    if (4 * v14 + 4 >= 3 * v5)
    {
      v5 *= 2;
    }

    else if (v5 + ~v14 - *(result + 12) > v5 >> 3)
    {
      *(result + 8) = v14 + 1;
      if (*v11 == -4096)
      {
LABEL_9:
        *v11 = *a2;
        *(v11 + 8) = *a3;
        v6 = *result;
        v5 = *(result + 16);
        v13 = 1;
        goto LABEL_10;
      }

LABEL_8:
      --*(result + 12);
      goto LABEL_9;
    }

    v19 = result;
    v20 = a4;
    v21 = a3;
    llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(result, v5);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::LookupBucketFor<mlir::Value>(v19, a2, &v22);
    a3 = v21;
    result = v19;
    a4 = v20;
    v11 = v22;
    ++*(v19 + 8);
    if (*v11 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
LABEL_10:
  *a4 = v11;
  *(a4 + 8) = v6 + 16 * v5;
  *(a4 + 16) = v13;
  return result;
}

void *llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if ((*v17 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v17 - 0xAE502812AA7333) ^ HIDWORD(*v17));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          v27 = (-348639895 * ((v26 >> 47) ^ v26)) & v16;
          v23 = &result[2 * v27];
          v28 = *v23;
          if (v24 != *v23)
          {
            v29 = 0;
            v30 = 1;
            while (v28 != -4096)
            {
              if (v29)
              {
                v31 = 0;
              }

              else
              {
                v31 = v28 == -8192;
              }

              if (v31)
              {
                v29 = v23;
              }

              v32 = v27 + v30++;
              v27 = v32 & v16;
              v23 = &result[2 * (v32 & v16)];
              v28 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v29)
            {
              v23 = v29;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 4) = *(v17 + 4);
          *(a1 + 8) = ++v15;
        }

        v17 = (v17 + 16);
      }

      while (v17 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -4096;
      *v20 = -4096;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

uint64_t llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_0>(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = a2 - 16;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, i);
    }
  }

  return result;
}

uint64_t llvm::detail::UniqueFunctionBase<void,mlir::Operation *>::CallImpl<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_1>(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v3 = *a1;
  v4 = a1[1];
  v5 = (*v4)++;
  v18 = v5;
  llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v3, &v19, &v18, v17);
  v6 = *(v19 + 44);
  if ((v6 & 0x7FFFFF) != 0)
  {
    v7 = ((v19 + 16 * ((v6 >> 23) & 1) + ((v6 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v19 + 40);
    v8 = v7 + 24 * (v6 & 0x7FFFFF);
    do
    {
      for (i = *(v7 + 8); i != v7; i = *(i + 8))
      {
        v10 = i - 8;
        if (!i)
        {
          v10 = 0;
        }

        v11 = v10 + 32;
        for (j = *(v10 + 40); j != v11; j = *(j + 8))
        {
          llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(j);
          (*(*(a1[2] + 24) & 0xFFFFFFFFFFFFFFF8))();
        }
      }

      v7 += 24;
    }

    while (v7 != v8);
  }

  v13 = a1[3];
  v14 = a1[1];
  v15 = (*v14)++;
  v18 = v15;
  return llvm::DenseMapBase<llvm::DenseMap<mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>,mlir::Operation *,unsigned int,llvm::DenseMapInfo<mlir::Operation *,void>,llvm::detail::DenseMapPair<mlir::Operation *,unsigned int>>::try_emplace<unsigned int>(v13, &v19, &v18, v17);
}

void llvm::function_ref<void ()(mlir::Block *)>::callback_fn<anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2>(uint64_t a1, mlir::Block *a2)
{
  Liveness = mlir::Liveness::getLiveness(*a1, a2);
  v4 = *(a1 + 24);
  v27[0] = *(a1 + 8);
  v27[1] = v4;
  v28 = *(a1 + 40);
  p_Liveness = &Liveness;
  v5 = Liveness[2];
  v6 = 16;
  if (v5 == Liveness[1])
  {
    v6 = 20;
  }

  v7 = *(Liveness + v6 + 8);
  if (v7)
  {
    v8 = 8 * v7;
    v9 = Liveness[2];
    while (*v9 >= 0xFFFFFFFFFFFFFFFELL)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v9 = Liveness[2];
  }

  v22 = (v5 + 8 * v7);
LABEL_23:
  if (v9 != v22)
  {
    v26 = *v9;
    ParentRegion = mlir::Value::getParentRegion(&v26);
    if (ParentRegion == mlir::Block::getParent(a2))
    {
      v24 = v26;
      ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(a2 + 5));
    }

    while (++v9 != v22)
    {
      if (*v9 < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_23;
      }
    }
  }

LABEL_7:
  if (mlir::Block::isEntryBlock(a2))
  {
    v10 = *(a2 + 6);
    v11 = *(a2 + 7);
    while (v10 != v11)
    {
      v12 = *v10++;
      v13 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*(a2 + 5));
    }
  }

  v14 = (a2 + 32);
  for (i = *(a2 + 5); i != v14; i = i[1])
  {
    v16 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(i);
    v17 = *(v16 + 36);
    if (v17)
    {
      v18 = v16 - 16;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v16;
      for (j = 0; j != v17; ++j)
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v18, j);
      }
    }
  }
}

void anonymous namespace::Generator::allocateMemoryIndices(mlir::pdl_interp::FuncOp,mlir::ModuleOp)::$_2::operator() const(mlir::Block *)::{lambda(mlir::Value,mlir::Operation *)#1}::operator()(uint64_t a1, unint64_t a2, mlir::Operation *a3)
{
  v28 = a3;
  if (**a1 != a2)
  {
    v5 = *(a1 + 8);
    v6 = *(v5 + 16);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_14;
    }

    v7 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v7 >> 47) ^ v7);
    v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
    v10 = *v5 + 40 * v9;
    v11 = *v10;
    if (*v10 != a2)
    {
      v12 = 0;
      v13 = 1;
      while (v11 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v11 == -8192;
        }

        if (v14)
        {
          v12 = v10;
        }

        v15 = v9 + v13++;
        v9 = v15 & (v6 - 1);
        v10 = *v5 + 40 * v9;
        v11 = *v10;
        if (*v10 == a2)
        {
          goto LABEL_19;
        }
      }

      if (v12)
      {
        v10 = v12;
      }

LABEL_14:
      EndOperation = v10;
      v16 = *(v5 + 8);
      if (4 * v16 + 4 >= 3 * v6)
      {
        v6 *= 2;
      }

      else if (v6 + ~v16 - *(v5 + 12) > v6 >> 3)
      {
        *(v5 + 8) = v16 + 1;
        if (*v10 == -4096)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v10 = EndOperation;
      ++*(v5 + 8);
      if (*v10 == -4096)
      {
LABEL_18:
        *v10 = a2;
        operator new();
      }

LABEL_17:
      --*(v5 + 12);
      goto LABEL_18;
    }

LABEL_19:
    v17 = *(v10 + 8);
    v18 = *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](*(a1 + 24), &v28);
    v19 = *(a1 + 32);
    EndOperation = mlir::LivenessBlockInfo::getEndOperation(**(a1 + 40), a2, v28);
    v20 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::operator[](v19, &EndOperation);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(v17, v18, *v20, 0);
    v21 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(*v21 + 136) != &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
    {
      v21 = 0;
    }

    EndOperation = v21;
    if (v21)
    {
      v22 = *(*mlir::pdl::RangeType::getElementType(&EndOperation) + 136);
      if (v22 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
      {
        v24 = *(v10 + 20);
        v23 = (v10 + 20);
        v25 = v23 - 4;
        if (v24)
        {
          goto LABEL_30;
        }
      }

      else if (v22 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
      {
        v26 = *(v10 + 28);
        v23 = (v10 + 28);
        v25 = v23 - 4;
        if (v26)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v22 != &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id)
        {
          return;
        }

        v27 = *(v10 + 36);
        v23 = (v10 + 36);
        v25 = v23 - 4;
        if (v27)
        {
LABEL_30:
          *v25 = 0;
          return;
        }
      }

      *v23 = 1;
      goto LABEL_30;
    }
  }
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insert(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v15[8] = *MEMORY[0x277D85DE8];
  if (*(a1 + 272) || (v6 = *(a1 + 276), v6 == 16))
  {
    v12 = a1;
    v13 = v15;
    v14 = 0x400000000;
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(&v12, a2);
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insert(&v12, a2, a3, a4);
    if (v13 != v15)
    {
      free(v13);
    }
  }

  else
  {
    if (v6)
    {
      v8 = 0;
      v9 = (a1 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v11 = a2;
          v8 = *(a1 + 276);
          goto LABEL_13;
        }
      }

      v11 = a2;
    }

    else
    {
      v11 = a2;
      v8 = 0;
    }

LABEL_13:
    LODWORD(v12) = v8;
    *(a1 + 276) = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(a1, &v12, v6, v11, a3, a4);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 40 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 40 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>,mlir::Value,anonymous namespace::ByteCodeLiveRange,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,anonymous namespace::ByteCodeLiveRange>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(40 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 40 * v10 - 40;
    if (v11 >= 0x28)
    {
      v16 = v11 / 0x28 + 1;
      v12 = &result[5 * (v16 & 0xFFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[5] = -4096;
        v17 += 10;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v21 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v22 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v23 = 0x9DDFEA08EB382D69 * (HIDWORD(v21) ^ (v22 >> 47) ^ v22);
              LODWORD(v22) = -348639895 * ((v23 >> 47) ^ v23);
              v24 = *(a1 + 16) - 1;
              v25 = v24 & v22;
              v26 = *a1 + 40 * v25;
              v27 = *v26;
              if (*v26 != v21)
              {
                v31 = 0;
                v32 = 1;
                while (v27 != -4096)
                {
                  if (v31)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v27 == -8192;
                  }

                  if (v33)
                  {
                    v31 = v26;
                  }

                  v34 = v25 + v32++;
                  v25 = v34 & v24;
                  v26 = *a1 + 40 * (v34 & v24);
                  v27 = *v26;
                  if (*v26 == v21)
                  {
                    goto LABEL_22;
                  }
                }

                if (v31)
                {
                  v26 = v31;
                }
              }

LABEL_22:
              v28 = *(v20 + 1);
              *(v20 + 1) = 0;
              *v26 = v21;
              *(v26 + 8) = v28;
              v29 = *(v20 + 1);
              *(v26 + 29) = *(v20 + 29);
              *(v26 + 16) = v29;
              ++*(a1 + 8);
              v30 = *(v20 + 1);
              *(v20 + 1) = 0;
              if (v30)
              {
                if (*(v30 + 272))
                {
                  llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::visitNodes(v30, llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::deleteNode, 0);
                  *(v30 + 272) = 0;
                  *(v30 + 240) = 0u;
                  *(v30 + 256) = 0u;
                  *(v30 + 208) = 0u;
                  *(v30 + 224) = 0u;
                  *(v30 + 176) = 0u;
                  *(v30 + 192) = 0u;
                  *(v30 + 144) = 0u;
                  *(v30 + 160) = 0u;
                  *(v30 + 112) = 0u;
                  *(v30 + 128) = 0u;
                  *(v30 + 80) = 0u;
                  *(v30 + 96) = 0u;
                  *(v30 + 48) = 0u;
                  *(v30 + 64) = 0u;
                  *(v30 + 16) = 0u;
                  *(v30 + 32) = 0u;
                  *v30 = 0u;
                }

                *(v30 + 276) = 0;
                MEMORY[0x259C63180](v30, 0x1020C4078626902);
              }
            }

            v20 = (v20 + 40);
          }

          while (v20 != (v4 + 40 * v3));
        }

        llvm::deallocate_buffer(v4, (40 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[5 * v10];
    do
    {
      *v12 = -4096;
      v12 += 5;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 40 * v13 - 40;
    if (v14 < 0x28)
    {
      v15 = result;
LABEL_43:
      v38 = &result[5 * v13];
      do
      {
        *v15 = -4096;
        v15 += 5;
      }

      while (v15 != v38);
      return result;
    }

    v35 = v14 / 0x28 + 1;
    v15 = &result[5 * (v35 & 0xFFFFFFFFFFFFFFELL)];
    v36 = result;
    v37 = v35 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v36 = -4096;
      v36[5] = -4096;
      v36 += 10;
      v37 -= 2;
    }

    while (v37);
    if (v35 != (v35 & 0xFFFFFFFFFFFFFFELL))
    {
      goto LABEL_43;
    }
  }

  return result;
}

void llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::visitNodes(uint64_t a1, void (*a2)(void *, void, uint64_t), uint64_t a3)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 272);
  if (v3)
  {
    v27 = v29;
    v28 = 0x400000000;
    v24 = v26;
    v25 = 0x400000000;
    if (*(a1 + 276))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        if (v5 >= HIDWORD(v28))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(v27 + v5) = *(a1 + 8 + 8 * v6);
        v5 = v28 + 1;
        LODWORD(v28) = v28 + 1;
        ++v6;
      }

      while (v6 != *(a1 + 276));
      v3 = *(a1 + 272);
    }

    v23 = a3;
    v7 = (a1 + (a3 >> 1));
    v8 = (v3 - 1);
    if (v3 != 1)
    {
      if (a3)
      {
        do
        {
          v14 = v28;
          if (v28)
          {
            v15 = 0;
            do
            {
              v16 = 0;
              v17 = v25;
              v18 = 8 * (*(v27 + v15) & 0x3FLL) + 8;
              do
              {
                if (v17 >= HIDWORD(v25))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v24 + v17) = *((*(v27 + v15) & 0xFFFFFFFFFFFFFFC0) + v16);
                v17 = v25 + 1;
                LODWORD(v25) = v25 + 1;
                v16 += 8;
              }

              while (v18 != v16);
              (*(*v7 + a2))(v7, *(v27 + v15++), v8);
            }

            while (v15 != v14);
          }

          LODWORD(v28) = 0;
          llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(&v27, &v24);
          v8 = (v8 - 1);
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v28;
          if (v28)
          {
            v10 = 0;
            do
            {
              v11 = 0;
              v12 = v25;
              v13 = 8 * (*(v27 + v10) & 0x3FLL) + 8;
              do
              {
                if (v12 >= HIDWORD(v25))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(v24 + v12) = *((*(v27 + v10) & 0xFFFFFFFFFFFFFFC0) + v11);
                v12 = v25 + 1;
                LODWORD(v25) = v25 + 1;
                v11 += 8;
              }

              while (v13 != v11);
              a2(v7, *(v27 + v10++), v8);
            }

            while (v10 != v9);
          }

          LODWORD(v28) = 0;
          llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(&v27, &v24);
          v8 = (v8 - 1);
        }

        while (v8);
      }
    }

    if (v28)
    {
      if (v23)
      {
        v21 = 0;
        v22 = 8 * v28;
        do
        {
          (*(*v7 + a2))(v7, *(v27 + v21), 0);
          v21 += 8;
        }

        while (v22 != v21);
      }

      else
      {
        v19 = 0;
        v20 = 8 * v28;
        do
        {
          a2(v7, *(v27 + v19), 0);
          v19 += 8;
        }

        while (v20 != v19);
      }
    }

    if (v24 != v26)
    {
      free(v24);
    }

    if (v27 != v29)
    {
      free(v27);
    }
  }
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::deleteNode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 280);
  *(a2 & 0xFFFFFFFFFFFFFFC0) = *v2;
  *v2 = a2 & 0xFFFFFFFFFFFFFFC0;
  return result;
}

_DWORD *llvm::SmallVectorImpl<llvm::IntervalMapImpl::NodeRef>::swap(_DWORD *result, _DWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  v4 = *result;
  if (*result != result + 4 && *a2 != a2 + 4)
  {
    *result = *a2;
    *a2 = v4;
    v5 = result[2];
    result[2] = a2[2];
    a2[2] = v5;
    v6 = result[3];
    result[3] = a2[3];
    a2[3] = v6;
    return result;
  }

  if (result[3] < a2[2])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v7 = result[2];
  if (a2[3] < v7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v8 = a2[2];
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v13 = 0;
    do
    {
      v14 = *a2;
      v15 = *(*result + v13);
      *(*result + v13) = *(*a2 + v13);
      *(v14 + v13) = v15;
      v13 += 8;
    }

    while (8 * v9 != v13);
    v7 = result[2];
    v8 = a2[2];
    v10 = v7;
    v11 = v8;
    v12 = v7 - v8;
    if (v7 > v8)
    {
LABEL_12:
      if (v9 != v7)
      {
        result = memcpy((*a2 + 8 * v11), (*result + 8 * v9), 8 * (v10 - v9));
        v8 = a2[2];
      }

      a2[2] = v12 + v8;
      v3[2] = v9;
      return result;
    }
  }

  else
  {
    v10 = v7;
    v11 = v8;
    v12 = v7 - v8;
    if (v7 > v8)
    {
      goto LABEL_12;
    }
  }

  v16 = v8 - v7;
  if (v8 > v7)
  {
    if (v9 != v8)
    {
      result = memcpy((*result + 8 * v10), (*a2 + 8 * v9), 8 * (v11 - v9));
      v7 = v3[2];
    }

    v3[2] = v16 + v7;
    a2[2] = v9;
  }

  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insert(uint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v4 = *a1;
  if (*(*a1 + 272))
  {

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(a1, a2, a3, a4);
  }

  v6 = a1;
  v7 = (a1 + 8);
  v8 = a2;
  v9 = a3;
  v10 = a4;
  result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*a1, (*(a1 + 8) + 16 * *(a1 + 16) - 4), *(v4 + 276), a2, a3, a4);
  if (result > 0x10)
  {
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::branchRoot(v4, *(*(v6 + 8) + 16 * *(v6 + 16) - 4));
    llvm::IntervalMapImpl::Path::replaceRoot(v7, v4 + 8, *(v4 + 276), v11);
    a1 = v6;
    a2 = v8;
    a3 = v9;
    a4 = v10;

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(a1, a2, a3, a4);
  }

  *(v4 + 276) = result;
  *(*v7 + 8) = result;
  return result;
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = *a2;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (v7 - 1);
  v9 = a1 + 256;
  if (*(a1 + 256 + v8) != a6 || (v10 = a1 + 16 * v8, v12 = *(v10 + 8), v11 = (v10 + 8), v12 + 1 != a4))
  {
    if (v7 == 16)
    {
      return 17;
    }

LABEL_13:
    v17 = a3 - v7;
    if (a3 == v7)
    {
      v18 = (a1 + 16 * a3);
      *v18 = a4;
      v18[1] = a5;
      *(a1 + a3 + 256) = a6;
      return (a3 + 1);
    }

    v19 = a1 + 256;
    if (*(a1 + 256 + v7) == a6)
    {
      v20 = (a1 + 16 * v7);
      if (a5 + 1 == *v20)
      {
        *v20 = a4;
        return a3;
      }
    }

    if (a3 == 16)
    {
      return 17;
    }

    v21 = (~v7 + a3);
    if (v21 >= 3 && v7 + 1 <= a3)
    {
      v25 = (a3 - 1);
      if (v21 <= v25)
      {
        v26 = (16 * a3) | 8;
        v27 = a1 + v26;
        v28 = 16 * v21;
        if (a1 + v26 - 16 * v21 <= (a1 + v26))
        {
          v29 = 16 * a3;
          if (a1 + v29 - v28 <= (a1 + v29))
          {
            v30 = (16 * (a3 - 1)) | 8;
            v31 = a1 + v30;
            if (a1 + v30 - v28 <= (a1 + v30))
            {
              v32 = 16 * (a3 - 1);
              v33 = a1 + v32;
              if (a1 + v32 - v28 <= (a1 + v32) && a1 + a3 + 256 - v21 <= a1 + a3 + 256)
              {
                v34 = a1 + v25;
                if (a1 + v25 + 256 - v21 <= (a1 + v25 + 256))
                {
                  v35 = a1 + v29 - v28;
                  v36 = a1 + v26 - v28;
                  v37 = a1 + v29 + 16;
                  v38 = a1 + v32 - v28;
                  v39 = a1 + v30 - v28;
                  v40 = v33 + 16;
                  v41 = a3 - v21 + a1 + 256;
                  v42 = a1 + a3 + 257;
                  v43 = v25 - v21 + a1 + 256;
                  v44 = v34 + 257;
                  v45 = v35 >= v31 || v38 >= v27;
                  v46 = !v45;
                  v166 = v46;
                  v47 = v35 >= v40 || v39 >= v27;
                  v48 = !v47;
                  v49 = v35 >= v42 || v41 >= v27;
                  v50 = !v49;
                  v51 = v35 >= v44 || v43 >= v27;
                  v52 = !v51;
                  v53 = v36 >= v31 || v38 >= v37;
                  v54 = !v53;
                  v55 = v36 >= v40 || v39 >= v37;
                  v56 = !v55;
                  v57 = v36 >= v42 || v41 >= v37;
                  v58 = !v57;
                  v59 = v36 >= v44 || v43 >= v37;
                  v60 = !v59;
                  v61 = v38 >= v42 || v41 >= v31;
                  v62 = !v61;
                  v63 = v39 >= v42 || v41 >= v40;
                  v64 = !v63;
                  v65 = v41 >= v44 || v43 >= v42;
                  v66 = !v65;
                  v67 = v36 >= v27 || v35 >= v37;
                  if (v67 && !v166 && !v48 && !v50 && !v52 && !v54 && !v56 && !v58 && !v60 && !v62 && !v64 && !v66)
                  {
                    v68 = v21 + 1;
                    if (v21 < 0xF)
                    {
                      v69 = 0;
                      goto LABEL_123;
                    }

                    v69 = v68 & 0x1FFFFFFF0;
                    v70 = v68 & 0x1FFFFFFF0;
                    v71 = a3;
                    do
                    {
                      v72 = (a1 - 240 + 16 * (v71 - 1));
                      v74 = *v72;
                      v73 = v72[1];
                      v76 = v72[2];
                      v75 = v72[3];
                      v78 = v72[4];
                      v77 = v72[5];
                      v80 = v72[6];
                      v79 = v72[7];
                      v82 = v72[8];
                      v81 = v72[9];
                      v84 = v72[10];
                      v83 = v72[11];
                      v86 = v72[12];
                      v85 = v72[13];
                      v88 = v72[14];
                      v87 = *(a1 + 16 * (v71 - 1));
                      v89 = a1 - 248 + 16 * v71;
                      *(v89 + 232) = v88;
                      *(v89 + 248) = v87;
                      *(v89 + 200) = v86;
                      *(v89 + 216) = v85;
                      *(v89 + 168) = v84;
                      *(v89 + 184) = v83;
                      *(v89 + 136) = v82;
                      *(v89 + 152) = v81;
                      *(v89 + 104) = v80;
                      *(v89 + 120) = v79;
                      *(v89 + 72) = v78;
                      *(v89 + 88) = v77;
                      *(v89 + 40) = v76;
                      *(v89 + 56) = v75;
                      *(v89 + 8) = v74;
                      *(v89 + 24) = v73;
                      *(a1 + 241 + v71) = *(a1 + 241 + v71 - 1);
                      v71 -= 16;
                      v70 -= 16;
                    }

                    while (v70);
                    if (v68 == v69)
                    {
                      goto LABEL_24;
                    }

                    if ((v68 & 0xC) != 0)
                    {
LABEL_123:
                      v17 -= v68 & 0xFFFFFFFC;
                      v90 = a3 - v69;
                      v91 = v69 - (v68 & 0x1FFFFFFFCLL);
                      do
                      {
                        v92 = (a1 - 48 + 16 * (v90 - 1));
                        v93 = *v92;
                        v94 = v92[1];
                        v95 = v92[2];
                        v96 = a1 - 56 + 16 * v90;
                        *(v96 + 56) = *(a1 + 16 * (v90 - 1));
                        *(v96 + 40) = v95;
                        *(v96 + 24) = v94;
                        *(v96 + 8) = v93;
                        *(a1 + 253 + v90) = *(a1 + 253 + v90 - 1);
                        v90 -= 4;
                        v91 += 4;
                      }

                      while (v91);
                      if (v68 == (v68 & 0x1FFFFFFFCLL))
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_22;
                    }

                    v17 -= v69;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    v22 = v7 + v17;
    do
    {
      *(a1 + 16 * v22) = *(a1 + 16 * (v22 - 1));
      *(v19 + v22) = *(v19 + v22 - 1);
      --v22;
      --v17;
    }

    while (v17);
LABEL_24:
    v23 = (a1 + 16 * v7);
    *v23 = a4;
    v23[1] = a5;
    *(v19 + v7) = a6;
    return (a3 + 1);
  }

  *a2 = v8;
  if (a3 == v7 || *(v9 + v7) != a6 || (v13 = 16 * v7, a5 + 1 != *(a1 + 16 * v7)))
  {
    *v11 = a5;
    return a3;
  }

  *v11 = *(a1 + 16 * v7 + 8);
  v14 = (v7 + 1);
  if (v14 == a3)
  {
    return (a3 - 1);
  }

  v15 = ~v7 + a3;
  if (v15 < 4)
  {
    v16 = v7;
    goto LABEL_10;
  }

  v97 = (a3 - 2 - v7);
  if (a3 - 2 < v7)
  {
    v16 = v7;
  }

  else if (a3 - 1 < v14)
  {
    v16 = v7;
  }

  else
  {
    v98 = a1 + v13;
    v99 = a1 + v13 + 8;
    v100 = 16 * (a3 - 2 - v7);
    if (v99 + v100 < v99)
    {
      v16 = v7;
    }

    else if (v98 + v100 < v98)
    {
      v16 = v7;
    }

    else
    {
      v101 = 16 * (v7 + 1);
      v102 = a1 + v101;
      v103 = a1 + v101 + 8;
      if (v103 + v100 < v103)
      {
        v16 = v7;
      }

      else if (v102 + v100 < v102)
      {
        v16 = v7;
      }

      else
      {
        v104 = a1 + v13 + v100;
        v105 = v104 + 8;
        v106 = v104 + 16;
        v107 = a1 + v7 + 256;
        v108 = a1 + v7 + v97 + 257;
        v109 = a1 + v100 + v101;
        v110 = v109 + 8;
        v111 = v109 + 16;
        v112 = a1 + v14 + 256;
        v113 = a1 + v14 + v97 + 257;
        v115 = v98 < v108 && v107 < v105;
        v117 = v98 < v110 && v102 < v105;
        v119 = v98 < v111 && v103 < v105;
        v121 = v98 < v113 && v112 < v105;
        v123 = v99 < v108 && v107 < v106;
        v125 = v99 < v110 && v102 < v106;
        v127 = v99 < v111 && v103 < v106;
        v129 = v99 < v113 && v112 < v106;
        v131 = v107 < v110 && v102 < v108;
        v133 = v107 < v111 && v103 < v108;
        v135 = v107 < v113 && v112 < v108;
        if (v99 < v105 && v98 < v106)
        {
          v16 = v7;
          goto LABEL_10;
        }

        if (v115)
        {
          v16 = v7;
        }

        else if (v117)
        {
          v16 = v7;
        }

        else if (v119)
        {
          v16 = v7;
        }

        else if (v121)
        {
          v16 = v7;
        }

        else if (v123)
        {
          v16 = v7;
        }

        else if (v125)
        {
          v16 = v7;
        }

        else if (v127)
        {
          v16 = v7;
        }

        else if (v129)
        {
          v16 = v7;
        }

        else if (v131)
        {
          v16 = v7;
        }

        else if (v133)
        {
          v16 = v7;
        }

        else if (v135)
        {
          v16 = v7;
        }

        else
        {
          if (v15 < 0x10)
          {
            v137 = 0;
            goto LABEL_224;
          }

          v137 = v15 & 0xFFFFFFF0;
          v138 = v7;
          v139 = v15 & 0xFFFFFFF0;
          do
          {
            v140 = (a1 + 16 * (v138 + 1));
            v142 = *v140;
            v141 = v140[1];
            v144 = v140[2];
            v143 = v140[3];
            v146 = v140[4];
            v145 = v140[5];
            v148 = v140[6];
            v147 = v140[7];
            v150 = v140[8];
            v149 = v140[9];
            v152 = v140[10];
            v151 = v140[11];
            v154 = v140[12];
            v153 = v140[13];
            v156 = v140[14];
            v155 = v140[15];
            v157 = (a1 + 16 * v138);
            v157[14] = v156;
            v157[15] = v155;
            v157[12] = v154;
            v157[13] = v153;
            v157[10] = v152;
            v157[11] = v151;
            v157[8] = v150;
            v157[9] = v149;
            v157[6] = v148;
            v157[7] = v147;
            v157[4] = v146;
            v157[5] = v145;
            v157[2] = v144;
            v157[3] = v143;
            *v157 = v142;
            v157[1] = v141;
            *(v9 + v138) = *(v9 + v138 + 1);
            v138 += 16;
            v139 -= 16;
          }

          while (v139);
          if (v15 == v137)
          {
            return (a3 - 1);
          }

          if ((v15 & 0xC) != 0)
          {
LABEL_224:
            LODWORD(v14) = v14 + (v15 & 0xFFFFFFFC);
            v16 = v7 + (v15 & 0xFFFFFFFC);
            v158 = v137 - (v15 & 0xFFFFFFFC);
            v159 = v137 + v7;
            do
            {
              v160 = (a1 + 16 * (v159 + 1));
              v161 = *v160;
              v162 = v160[1];
              v163 = v160[2];
              v164 = v160[3];
              v165 = (a1 + 16 * v159);
              v165[2] = v163;
              v165[3] = v164;
              *v165 = v161;
              v165[1] = v162;
              *(v9 + v159) = *(v9 + v159 + 1);
              v159 += 4;
              v158 += 4;
            }

            while (v158);
            if (v15 == (v15 & 0xFFFFFFFC))
            {
              return (a3 - 1);
            }

            goto LABEL_10;
          }

          v16 = v7 + v137;
          LODWORD(v14) = v14 + v137;
        }
      }
    }
  }

  do
  {
LABEL_10:
    *(a1 + 16 * v16) = *(a1 + 16 * v14);
    *(v9 + v16) = *(v9 + v14);
    LODWORD(v14) = v14 + 1;
    ++v16;
  }

  while (a3 != v14);
  return (a3 - 1);
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::find(uint64_t result, unint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 276);
  if (!*(*result + 272))
  {
    if (v3)
    {
      v8 = 0;
      v9 = (v2 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 2;
        if (v10 >= a2)
        {
          break;
        }

        v8 = (v8 + 1);
        if (v3 == v8)
        {
          v8 = *(*result + 276);
          break;
        }
      }

      v11 = v8 << 32;
      *(result + 16) = 0;
      if (*(result + 20))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v11 = 0;
      *(result + 16) = 0;
      if (*(result + 20))
      {
LABEL_19:
        v12 = *(result + 8);
        *v12 = v2;
        v12[1] = v11 | v3;
        ++*(result + 16);
        return result;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v3)
  {
    v4 = 0;
    while (*(v2 + 136 + 8 * v4) < a2)
    {
      if (v3 == ++v4)
      {
        v4 = *(*result + 276);
        break;
      }
    }

    v5 = v4 << 32;
    *(result + 16) = 0;
    v6 = v2 + 8;
    if (*(result + 20))
    {
      goto LABEL_8;
    }

LABEL_22:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v5 = 0;
  *(result + 16) = 0;
  v6 = v2 + 8;
  if (!*(result + 20))
  {
    goto LABEL_22;
  }

LABEL_8:
  v7 = *(result + 8);
  *v7 = v6;
  v7[1] = v5 | v3;
  LODWORD(v7) = *(result + 16);
  *(result + 16) = v7 + 1;
  if (v7 != -1 && *(*(result + 8) + 12) < *(*(result + 8) + 8))
  {

    return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
  }

  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(result + 8) + 16 * (v2 - 1);
  v4 = *(*result + 272);
  v5 = *(*v3 + 8 * *(v3 + 12));
  v6 = v4 - v2;
  if (v4 != v2)
  {
    do
    {
      v7 = 0;
      v8 = v5 & 0xFFFFFFFFFFFFFFC0;
      do
      {
        v9 = v7;
        v10 = *((v5 & 0xFFFFFFFFFFFFFFC0) + 0x60 + 8 * v7++);
      }

      while (v10 < a2);
      if (v2 >= *(result + 20))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = (*(result + 8) + 16 * v2);
      *v11 = v8;
      v11[1] = (v5 & 0x3F | (v9 << 32)) + 1;
      v2 = *(result + 16) + 1;
      *(result + 16) = v2;
      v5 = *(v8 + 8 * v9);
      --v6;
    }

    while (v6);
  }

  v12 = 0;
  do
  {
    v13 = v12;
    v14 = *((v5 & 0xFFFFFFFFFFFFFFC0) + 16 * v12++ + 8);
  }

  while (v14 < a2);
  if (v2 >= *(result + 20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v15 = (*(result + 8) + 16 * v2);
  *v15 = v5 & 0xFFFFFFFFFFFFFFC0;
  v15[1] = (v5 & 0x3F | (v13 << 32)) + 1;
  ++*(result + 16);
  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeInsert(unsigned int *a1, unint64_t a2, unint64_t a3, unsigned __int8 a4)
{
  v8 = a1[4];
  if (!v8 || (v9 = *(a1 + 1), *(v9 + 12) >= *(v9 + 8)))
  {
    v10 = *(*a1 + 272);
    llvm::IntervalMapImpl::Path::moveLeft(a1 + 2, *(*a1 + 272));
    v9 = *(a1 + 1);
    ++*(v9 + 16 * v10 + 12);
    v8 = a1[4];
  }

  v11 = v9 + 16 * v8;
  if (!*(v11 - 4) && **(v11 - 16) > a2)
  {
    LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((a1 + 2), v8 - 1);
    if (LeftSibling)
    {
      if (*(LeftSibling + 176) == a4)
      {
        v13 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
        v14 = LeftSibling & 0x3F;
        v15 = ((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8);
        if (*((LeftSibling & 0xFFFFFFFFFFFFFFC0) + 16 * v14 + 8) + 1 == a2)
        {
          v16 = a1[4];
          v17 = *(*(a1 + 1) + 16 * v16 - 16);
          result = llvm::IntervalMapImpl::Path::moveLeft(a1 + 2, v16 - 1);
          if (*v17 > a3 && (*(v17 + 176) != a4 || a3 + 1 != *v17))
          {
            v20 = a1[4];
            *v15 = a3;
            v21 = v20 - 1;
            if (v20 != 1)
            {
              v22 = *(a1 + 1);
              v23 = 16 * v21;
              while (1)
              {
                v24 = v23 - 16;
                if (v23 == 16)
                {
                  break;
                }

                v25 = v22 + v23;
                v26 = *(v25 - 16);
                v28 = v25 - 8;
                LODWORD(v25) = *(v25 - 8);
                v27 = *(v28 + 4);
                *(v26 + 8 * v27 + 96) = a3;
                LODWORD(v26) = v25 - 1;
                v23 = v24;
                if (v27 != v26)
                {
                  return result;
                }
              }

LABEL_31:
              *(*v22 + 8 * *(v22 + 12) + 128) = a3;
              return result;
            }

            return result;
          }

          a2 = *(v13 + 16 * v14);
          llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(a1, 0);
        }
      }
    }

    else
    {
      **a1 = a2;
    }
  }

  v29 = (*(a1 + 1) + 16 * a1[4]);
  v30 = *--v29;
  v31 = *(v29 - 1);
  v32 = v30 == v31;
  result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v29 - 3), v29, v31, a2, a3, a4);
  if (result >= 0xC)
  {
    llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(a1, a1[4] - 1);
    v33 = (*(a1 + 1) + 16 * a1[4]);
    v34 = *--v33;
    v35 = *(v33 - 1);
    v32 = v34 == v35;
    result = llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(*(v33 - 3), v33, v35, a2, a3, a4);
  }

  v36 = a1[4];
  v37 = *(a1 + 1);
  *(v37 + 16 * (v36 - 1) + 8) = result;
  if (v36 != 1)
  {
    v38 = v37 + 16 * (v36 - 2);
    *(*v38 + 8 * *(v38 + 12)) = *(*v38 + 8 * *(v38 + 12)) & 0xFFFFFFFFFFFFFFC0 | (result - 1);
  }

  if (v32)
  {
    v39 = a1[4];
    v40 = v39 - 1;
    if (v39 != 1)
    {
      v22 = *(a1 + 1);
      v41 = 16 * v40;
      while (1)
      {
        v42 = v41 - 16;
        if (v41 == 16)
        {
          break;
        }

        v43 = v22 + v41;
        v44 = *(v43 - 16);
        v46 = v43 - 8;
        LODWORD(v43) = *(v43 - 8);
        v45 = *(v46 + 4);
        *(v44 + 8 * v45 + 96) = a3;
        LODWORD(v44) = v43 - 1;
        v41 = v42;
        if (v45 != v44)
        {
          return result;
        }
      }

      goto LABEL_31;
    }
  }

  return result;
}

double llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::branchRoot(uint64_t a1, unsigned int *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  llvm::IntervalMapImpl::distribute(2, *(a1 + 276), 0xBu, 0, &v27, a2, 1);
  v3 = *(a1 + 280);
  v4 = v3 + 1;
  Slow = *v3;
  if (*v3)
  {
    *v3 = *Slow;
  }

  else
  {
    v3[11] += 192;
    v6 = v3[1];
    v7 = v3[2];
    Slow = (v6 + 63) & 0xFFFFFFFFFFFFFFC0;
    v8 = Slow + 192;
    if (v6)
    {
      v9 = v8 > v7;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v4, 192, 192, 6);
    }

    else
    {
      *v4 = v8;
    }
  }

  *(Slow + 160) = 0u;
  *(Slow + 176) = 0u;
  *(Slow + 128) = 0u;
  *(Slow + 144) = 0u;
  *(Slow + 96) = 0u;
  *(Slow + 112) = 0u;
  *(Slow + 64) = 0u;
  *(Slow + 80) = 0u;
  *(Slow + 32) = 0u;
  *(Slow + 48) = 0u;
  *Slow = 0u;
  *(Slow + 16) = 0u;
  v10 = v27;
  if (v27)
  {
    v11 = 0;
    do
    {
      *(Slow + 16 * v11) = *(a1 + 16 * v11);
      *(Slow + v11 + 176) = *(a1 + v11 + 256);
      ++v11;
    }

    while (v10 != v11);
    v12 = v27;
    v13 = *(a1 + 280);
    v15 = v13 + 1;
    v14 = *v13;
    if (*v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a1 + 280);
    v15 = v13 + 1;
    v14 = *v13;
    if (*v13)
    {
LABEL_12:
      *v13 = *v14;
      goto LABEL_19;
    }
  }

  v13[11] += 192;
  v16 = v13[1];
  v17 = v13[2];
  v14 = (v16 + 63) & 0xFFFFFFFFFFFFFFC0;
  v18 = v14 + 192;
  if (v16)
  {
    v19 = v18 > v17;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v15, 192, 192, 6);
  }

  else
  {
    *v15 = v18;
  }

LABEL_19:
  *(v14 + 160) = 0u;
  *(v14 + 176) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v20 = v28;
  if (v28)
  {
    v21 = (v14 + 176);
    v22 = v14;
    v23 = v12;
    do
    {
      *v22++ = *(a1 + 16 * v23);
      *v21++ = *(a1 + 256 + v23++);
      --v20;
    }

    while (v20);
    v24 = (v28 - 1);
  }

  else
  {
    v24 = 0xFFFFFFFFLL;
  }

  v25 = v14 & 0xFFFFFFFFFFFFFFC0 | v24;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0uLL;
  *(a1 + 240) = 0uLL;
  *(a1 + 192) = 0uLL;
  *(a1 + 208) = 0uLL;
  *(a1 + 160) = 0uLL;
  *(a1 + 176) = 0uLL;
  *(a1 + 128) = 0uLL;
  *(a1 + 144) = 0uLL;
  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  *(a1 + 64) = 0uLL;
  *(a1 + 80) = 0uLL;
  *(a1 + 32) = 0uLL;
  *(a1 + 48) = 0uLL;
  *a1 = 0uLL;
  *(a1 + 16) = 0uLL;
  *(a1 + 136) = *((Slow & 0xFFFFFFFFFFFFFFC0 | (v12 - 1) & 0xFFFFFFC0) + 16 * (v27 - 1) + 8);
  *(a1 + 8) = Slow & 0xFFFFFFFFFFFFFFC0 | (v12 - 1);
  *(a1 + 144) = *((v25 & 0xFFFFFFFFFFFFFFC0) + 16 * v24 + 8);
  *(a1 + 16) = v25;
  *a1 = *(Slow & 0xFFFFFFFFFFFFFFC0 | (v12 - 1) & 0xFFFFFFC0);
  *&result = 0x200000001;
  *(a1 + 272) = 0x200000001;
  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::treeErase(uint64_t *this, int a2)
{
  v4 = this + 1;
  v3 = this[1];
  v5 = *this;
  v6 = *(this + 4);
  v7 = v3 + 16 * v6;
  v8 = *(v7 - 16);
  v9 = *(v7 - 8);
  if (v9 == 1)
  {
    v10 = *(v5 + 280);
    *v8 = *v10;
    *v10 = v8;
    v11 = this;
    this = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(this, *(v5 + 272));
    if (a2)
    {
      if (*(v5 + 272))
      {
        v12 = *(v11 + 4);
        if (v12)
        {
          v13 = *v4;
          if (*(*v4 + 12) < *(*v4 + 8))
          {
            v14 = (v13 + 12);
            v15 = *(v11 + 4);
            while (1)
            {
              v16 = *v14;
              v14 += 4;
              if (v16)
              {
                break;
              }

              if (!--v15)
              {
                v17 = *(v13 + 16 * v12 - 16);
                goto LABEL_46;
              }
            }
          }
        }
      }
    }

    return this;
  }

  v18 = *(v7 - 4);
  v19 = (v18 + 1);
  if (v19 != v9)
  {
    v20 = v8 + 22;
    v21 = v9 + ~v18;
    if (v21 < 4)
    {
      v22 = v18;
      goto LABEL_30;
    }

    v23 = (v9 - 2 - v18);
    v24 = &v8[2 * v18];
    v25 = (v24 + 1);
    v26 = 2 * v23;
    v27 = 2 * (v18 + 1);
    v28 = &v8[v27];
    v29 = &v8[v27 + 1];
    if (v9 - 2 < v18 || v9 - 1 < v19 || &v24[v26 + 1] < v25 || &v24[v26] < v24 || v29 + v26 * 8 < v29 || &v8[v27 + v26] < v28)
    {
      v22 = v18;
      goto LABEL_30;
    }

    v49 = &v8[2 * v18 + v26];
    v50 = (v49 + 1);
    v51 = (v49 + 2);
    v52 = v8 + v18 + 176;
    v53 = v8 + v18 + v23 + 177;
    v54 = &v8[v26 + v27];
    v55 = (v54 + 1);
    v56 = (v54 + 2);
    v57 = v8 + v19 + 176;
    v58 = v8 + v19 + v23 + 177;
    v60 = v24 < v53 && v52 < v50;
    v111 = v60;
    v62 = v24 < v55 && v28 < v50;
    v64 = v24 < v56 && v29 < v50;
    v66 = v24 < v58 && v57 < v50;
    v68 = v25 < v53 && v52 < v51;
    v70 = v25 < v55 && v28 < v51;
    v72 = v25 < v56 && v29 < v51;
    v74 = v25 < v58 && v57 < v51;
    v76 = v52 < v55 && v28 < v53;
    v78 = v52 < v56 && v29 < v53;
    v80 = v52 < v58 && v57 < v53;
    if (v25 < v50 && v24 < v51)
    {
      v22 = v18;
      goto LABEL_30;
    }

    if (v111)
    {
      v22 = v18;
    }

    else if (v62)
    {
      v22 = v18;
    }

    else if (v64)
    {
      v22 = v18;
    }

    else if (v66)
    {
      v22 = v18;
    }

    else if (v68)
    {
      v22 = v18;
    }

    else if (v70)
    {
      v22 = v18;
    }

    else if (v72)
    {
      v22 = v18;
    }

    else if (v74)
    {
      v22 = v18;
    }

    else if (v76)
    {
      v22 = v18;
    }

    else if (v78)
    {
      v22 = v18;
    }

    else if (v80)
    {
      v22 = v18;
    }

    else
    {
      if (v21 < 0x10)
      {
        v82 = 0;
        goto LABEL_141;
      }

      v82 = v21 & 0xFFFFFFF0;
      v83 = v18;
      v84 = v21 & 0xFFFFFFF0;
      do
      {
        v85 = &v8[2 * v83 + 2];
        v87 = *v85;
        v86 = v85[1];
        v89 = v85[2];
        v88 = v85[3];
        v91 = v85[4];
        v90 = v85[5];
        v93 = v85[6];
        v92 = v85[7];
        v95 = v85[8];
        v94 = v85[9];
        v97 = v85[10];
        v96 = v85[11];
        v99 = v85[12];
        v98 = v85[13];
        v101 = v85[14];
        v100 = v85[15];
        v102 = &v8[2 * v83];
        v102[14] = v101;
        v102[15] = v100;
        v102[12] = v99;
        v102[13] = v98;
        v102[10] = v97;
        v102[11] = v96;
        v102[8] = v95;
        v102[9] = v94;
        v102[6] = v93;
        v102[7] = v92;
        v102[4] = v91;
        v102[5] = v90;
        v102[2] = v89;
        v102[3] = v88;
        *v102 = v87;
        v102[1] = v86;
        *(v20 + v83) = *(v20 + v83 + 1);
        v83 += 16;
        v84 -= 16;
      }

      while (v84);
      if (v21 == v82)
      {
        goto LABEL_31;
      }

      if ((v21 & 0xC) != 0)
      {
LABEL_141:
        LODWORD(v19) = v19 + (v21 & 0xFFFFFFFC);
        v22 = v18 + (v21 & 0xFFFFFFFC);
        v103 = v82 - (v21 & 0xFFFFFFFC);
        v104 = v82 + v18;
        do
        {
          v105 = &v8[2 * v104 + 2];
          v106 = *v105;
          v107 = v105[1];
          v108 = v105[2];
          v109 = v105[3];
          v110 = &v8[2 * v104];
          v110[2] = v108;
          v110[3] = v109;
          *v110 = v106;
          v110[1] = v107;
          *(v20 + v104) = *(v20 + v104 + 1);
          v104 += 4;
          v103 += 4;
        }

        while (v103);
        if (v21 == (v21 & 0xFFFFFFFC))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      v22 = v18 + v82;
      LODWORD(v19) = v19 + v82;
    }

    do
    {
LABEL_30:
      *&v8[2 * v22] = *&v8[2 * v19];
      *(v20 + v22) = *(v20 + v19);
      LODWORD(v19) = v19 + 1;
      ++v22;
    }

    while (v9 != v19);
LABEL_31:
    v3 = this[1];
    v6 = *(this + 4);
    v9 = *(v3 + 16 * v6 - 8);
  }

  v35 = *(v5 + 272);
  *(v3 + 16 * v35 + 8) = v9 - 1;
  if (v35)
  {
    v36 = v3 + 16 * (v35 - 1);
    *(*v36 + 8 * *(v36 + 12)) = *(*v36 + 8 * *(v36 + 12)) & 0xFFFFFFFFFFFFFFC0 | (v9 - 2);
    v3 = this[1];
    v6 = *(this + 4);
  }

  v37 = v3 + 16 * v6;
  if (*(v37 - 4) == v9 - 1)
  {
    v38 = *(v5 + 272);
    if (v38)
    {
      v39 = v8[2 * (v9 - 2) + 1];
      v40 = 16 * v38;
      while (1)
      {
        v41 = v40 - 16;
        if (v40 == 16)
        {
          break;
        }

        v42 = v3 + v40;
        v43 = *(v42 - 16);
        v45 = v42 - 8;
        LODWORD(v42) = *(v42 - 8);
        v44 = *(v45 + 4);
        *(v43 + 8 * v44 + 96) = v39;
        LODWORD(v43) = v42 - 1;
        v40 = v41;
        if (v44 != v43)
        {
          goto LABEL_49;
        }
      }

      *(*v3 + 8 * *(v3 + 12) + 128) = v39;
    }

LABEL_49:
    v48 = this + 1;

    return llvm::IntervalMapImpl::Path::moveRight(v48, v38);
  }

  else if (a2)
  {
    if (v6)
    {
      v46 = (v3 + 12);
      while (1)
      {
        v47 = *v46;
        v46 += 4;
        if (v47)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
LABEL_45:
      v17 = *(v37 - 16);
LABEL_46:
      *v5 = *v17;
    }
  }

  return this;
}

uint64_t llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>::insertFrom(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v7 = *a2;
  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = (v7 - 1);
  v9 = a1 + 176;
  if (*(a1 + 176 + v8) != a6 || (v10 = a1 + 16 * v8, v12 = *(v10 + 8), v11 = (v10 + 8), v12 + 1 != a4))
  {
    if (v7 == 11)
    {
      return 12;
    }

LABEL_13:
    v17 = a3 - v7;
    if (a3 == v7)
    {
      v18 = (a1 + 16 * a3);
      *v18 = a4;
      v18[1] = a5;
      *(a1 + a3 + 176) = a6;
      return (a3 + 1);
    }

    v19 = a1 + 176;
    if (*(a1 + 176 + v7) == a6)
    {
      v20 = (a1 + 16 * v7);
      if (a5 + 1 == *v20)
      {
        *v20 = a4;
        return a3;
      }
    }

    if (a3 == 11)
    {
      return 12;
    }

    v21 = (~v7 + a3);
    if (v21 >= 3 && v7 + 1 <= a3)
    {
      v25 = (a3 - 1);
      if (v21 <= v25)
      {
        v26 = (16 * a3) | 8;
        v27 = a1 + v26;
        v28 = 16 * v21;
        if (a1 + v26 - 16 * v21 <= (a1 + v26))
        {
          v29 = 16 * a3;
          if (a1 + v29 - v28 <= (a1 + v29))
          {
            v30 = (16 * (a3 - 1)) | 8;
            v31 = a1 + v30;
            if (a1 + v30 - v28 <= (a1 + v30))
            {
              v32 = 16 * (a3 - 1);
              v33 = a1 + v32;
              if (a1 + v32 - v28 <= (a1 + v32) && a1 + a3 + 176 - v21 <= a1 + a3 + 176)
              {
                v34 = a1 + v25;
                if (a1 + v25 + 176 - v21 <= (a1 + v25 + 176))
                {
                  v35 = a1 + v29 - v28;
                  v36 = a1 + v26 - v28;
                  v37 = a1 + v29 + 16;
                  v38 = a1 + v32 - v28;
                  v39 = a1 + v30 - v28;
                  v40 = v33 + 16;
                  v41 = a3 - v21 + a1 + 176;
                  v42 = a1 + a3 + 177;
                  v43 = v25 - v21 + a1 + 176;
                  v44 = v34 + 177;
                  v45 = v35 >= v31 || v38 >= v27;
                  v46 = !v45;
                  v166 = v46;
                  v47 = v35 >= v40 || v39 >= v27;
                  v48 = !v47;
                  v49 = v35 >= v42 || v41 >= v27;
                  v50 = !v49;
                  v51 = v35 >= v44 || v43 >= v27;
                  v52 = !v51;
                  v53 = v36 >= v31 || v38 >= v37;
                  v54 = !v53;
                  v55 = v36 >= v40 || v39 >= v37;
                  v56 = !v55;
                  v57 = v36 >= v42 || v41 >= v37;
                  v58 = !v57;
                  v59 = v36 >= v44 || v43 >= v37;
                  v60 = !v59;
                  v61 = v38 >= v42 || v41 >= v31;
                  v62 = !v61;
                  v63 = v39 >= v42 || v41 >= v40;
                  v64 = !v63;
                  v65 = v41 >= v44 || v43 >= v42;
                  v66 = !v65;
                  v67 = v36 >= v27 || v35 >= v37;
                  if (v67 && !v166 && !v48 && !v50 && !v52 && !v54 && !v56 && !v58 && !v60 && !v62 && !v64 && !v66)
                  {
                    v68 = v21 + 1;
                    if (v21 < 0xF)
                    {
                      v69 = 0;
                      goto LABEL_123;
                    }

                    v69 = v68 & 0x1FFFFFFF0;
                    v70 = v68 & 0x1FFFFFFF0;
                    v71 = a3;
                    do
                    {
                      v72 = (a1 - 240 + 16 * (v71 - 1));
                      v74 = *v72;
                      v73 = v72[1];
                      v76 = v72[2];
                      v75 = v72[3];
                      v78 = v72[4];
                      v77 = v72[5];
                      v80 = v72[6];
                      v79 = v72[7];
                      v82 = v72[8];
                      v81 = v72[9];
                      v84 = v72[10];
                      v83 = v72[11];
                      v86 = v72[12];
                      v85 = v72[13];
                      v88 = v72[14];
                      v87 = *(a1 + 16 * (v71 - 1));
                      v89 = a1 - 248 + 16 * v71;
                      *(v89 + 232) = v88;
                      *(v89 + 248) = v87;
                      *(v89 + 200) = v86;
                      *(v89 + 216) = v85;
                      *(v89 + 168) = v84;
                      *(v89 + 184) = v83;
                      *(v89 + 136) = v82;
                      *(v89 + 152) = v81;
                      *(v89 + 104) = v80;
                      *(v89 + 120) = v79;
                      *(v89 + 72) = v78;
                      *(v89 + 88) = v77;
                      *(v89 + 40) = v76;
                      *(v89 + 56) = v75;
                      *(v89 + 8) = v74;
                      *(v89 + 24) = v73;
                      *(a1 + 161 + v71) = *(a1 + 161 + v71 - 1);
                      v71 -= 16;
                      v70 -= 16;
                    }

                    while (v70);
                    if (v68 == v69)
                    {
                      goto LABEL_24;
                    }

                    if ((v68 & 0xC) != 0)
                    {
LABEL_123:
                      v17 -= v68 & 0xFFFFFFFC;
                      v90 = a3 - v69;
                      v91 = v69 - (v68 & 0x1FFFFFFFCLL);
                      do
                      {
                        v92 = (a1 - 48 + 16 * (v90 - 1));
                        v93 = *v92;
                        v94 = v92[1];
                        v95 = v92[2];
                        v96 = a1 - 56 + 16 * v90;
                        *(v96 + 56) = *(a1 + 16 * (v90 - 1));
                        *(v96 + 40) = v95;
                        *(v96 + 24) = v94;
                        *(v96 + 8) = v93;
                        *(a1 + 173 + v90) = *(a1 + 173 + v90 - 1);
                        v90 -= 4;
                        v91 += 4;
                      }

                      while (v91);
                      if (v68 == (v68 & 0x1FFFFFFFCLL))
                      {
                        goto LABEL_24;
                      }

                      goto LABEL_22;
                    }

                    v17 -= v69;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_22:
    v22 = v7 + v17;
    do
    {
      *(a1 + 16 * v22) = *(a1 + 16 * (v22 - 1));
      *(v19 + v22) = *(v19 + v22 - 1);
      --v22;
      --v17;
    }

    while (v17);
LABEL_24:
    v23 = (a1 + 16 * v7);
    *v23 = a4;
    v23[1] = a5;
    *(v19 + v7) = a6;
    return (a3 + 1);
  }

  *a2 = v8;
  if (a3 == v7 || *(v9 + v7) != a6 || (v13 = 16 * v7, a5 + 1 != *(a1 + 16 * v7)))
  {
    *v11 = a5;
    return a3;
  }

  *v11 = *(a1 + 16 * v7 + 8);
  v14 = (v7 + 1);
  if (v14 == a3)
  {
    return (a3 - 1);
  }

  v15 = ~v7 + a3;
  if (v15 < 4)
  {
    v16 = v7;
    goto LABEL_10;
  }

  v97 = (a3 - 2 - v7);
  if (a3 - 2 < v7)
  {
    v16 = v7;
  }

  else if (a3 - 1 < v14)
  {
    v16 = v7;
  }

  else
  {
    v98 = a1 + v13;
    v99 = a1 + v13 + 8;
    v100 = 16 * (a3 - 2 - v7);
    if (v99 + v100 < v99)
    {
      v16 = v7;
    }

    else if (v98 + v100 < v98)
    {
      v16 = v7;
    }

    else
    {
      v101 = 16 * (v7 + 1);
      v102 = a1 + v101;
      v103 = a1 + v101 + 8;
      if (v103 + v100 < v103)
      {
        v16 = v7;
      }

      else if (v102 + v100 < v102)
      {
        v16 = v7;
      }

      else
      {
        v104 = a1 + v13 + v100;
        v105 = v104 + 8;
        v106 = v104 + 16;
        v107 = a1 + v7 + 176;
        v108 = a1 + v7 + v97 + 177;
        v109 = a1 + v100 + v101;
        v110 = v109 + 8;
        v111 = v109 + 16;
        v112 = a1 + v14 + 176;
        v113 = a1 + v14 + v97 + 177;
        v115 = v98 < v108 && v107 < v105;
        v117 = v98 < v110 && v102 < v105;
        v119 = v98 < v111 && v103 < v105;
        v121 = v98 < v113 && v112 < v105;
        v123 = v99 < v108 && v107 < v106;
        v125 = v99 < v110 && v102 < v106;
        v127 = v99 < v111 && v103 < v106;
        v129 = v99 < v113 && v112 < v106;
        v131 = v107 < v110 && v102 < v108;
        v133 = v107 < v111 && v103 < v108;
        v135 = v107 < v113 && v112 < v108;
        if (v99 < v105 && v98 < v106)
        {
          v16 = v7;
          goto LABEL_10;
        }

        if (v115)
        {
          v16 = v7;
        }

        else if (v117)
        {
          v16 = v7;
        }

        else if (v119)
        {
          v16 = v7;
        }

        else if (v121)
        {
          v16 = v7;
        }

        else if (v123)
        {
          v16 = v7;
        }

        else if (v125)
        {
          v16 = v7;
        }

        else if (v127)
        {
          v16 = v7;
        }

        else if (v129)
        {
          v16 = v7;
        }

        else if (v131)
        {
          v16 = v7;
        }

        else if (v133)
        {
          v16 = v7;
        }

        else if (v135)
        {
          v16 = v7;
        }

        else
        {
          if (v15 < 0x10)
          {
            v137 = 0;
            goto LABEL_224;
          }

          v137 = v15 & 0xFFFFFFF0;
          v138 = v7;
          v139 = v15 & 0xFFFFFFF0;
          do
          {
            v140 = (a1 + 16 * (v138 + 1));
            v142 = *v140;
            v141 = v140[1];
            v144 = v140[2];
            v143 = v140[3];
            v146 = v140[4];
            v145 = v140[5];
            v148 = v140[6];
            v147 = v140[7];
            v150 = v140[8];
            v149 = v140[9];
            v152 = v140[10];
            v151 = v140[11];
            v154 = v140[12];
            v153 = v140[13];
            v156 = v140[14];
            v155 = v140[15];
            v157 = (a1 + 16 * v138);
            v157[14] = v156;
            v157[15] = v155;
            v157[12] = v154;
            v157[13] = v153;
            v157[10] = v152;
            v157[11] = v151;
            v157[8] = v150;
            v157[9] = v149;
            v157[6] = v148;
            v157[7] = v147;
            v157[4] = v146;
            v157[5] = v145;
            v157[2] = v144;
            v157[3] = v143;
            *v157 = v142;
            v157[1] = v141;
            *(v9 + v138) = *(v9 + v138 + 1);
            v138 += 16;
            v139 -= 16;
          }

          while (v139);
          if (v15 == v137)
          {
            return (a3 - 1);
          }

          if ((v15 & 0xC) != 0)
          {
LABEL_224:
            LODWORD(v14) = v14 + (v15 & 0xFFFFFFFC);
            v16 = v7 + (v15 & 0xFFFFFFFC);
            v158 = v137 - (v15 & 0xFFFFFFFC);
            v159 = v137 + v7;
            do
            {
              v160 = (a1 + 16 * (v159 + 1));
              v161 = *v160;
              v162 = v160[1];
              v163 = v160[2];
              v164 = v160[3];
              v165 = (a1 + 16 * v159);
              v165[2] = v163;
              v165[3] = v164;
              *v165 = v161;
              v165[1] = v162;
              *(v9 + v159) = *(v9 + v159 + 1);
              v159 += 4;
              v158 += 4;
            }

            while (v158);
            if (v15 == (v15 & 0xFFFFFFFC))
            {
              return (a3 - 1);
            }

            goto LABEL_10;
          }

          v16 = v7 + v137;
          LODWORD(v14) = v14 + v137;
        }
      }
    }
  }

  do
  {
LABEL_10:
    *(a1 + 16 * v16) = *(a1 + 16 * v14);
    *(v9 + v16) = *(v9 + v14);
    LODWORD(v14) = v14 + 1;
    ++v16;
  }

  while (a3 != v14);
  return (a3 - 1);
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  v2 = a2;
  v117 = *MEMORY[0x277D85DE8];
  v4 = (this + 8);
  v3 = *(this + 1);
  v114 = 0u;
  v115 = 0u;
  v5 = a2;
  v6 = *(v3 + 16 * a2 + 12);
  LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((this + 8), a2);
  v8 = LeftSibling;
  if (LeftSibling)
  {
    v9 = (LeftSibling & 0x3F) + 1;
    v116[0] = v9;
    v6 = (v9 + v6);
    *&v114 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *v4 + 16 * v5;
  v12 = *(v11 + 8);
  v116[v10] = v12;
  v13 = v12 + v9;
  v14 = v10 + 1;
  *(&v114 | (8 * v10)) = *v11;
  RightSibling = llvm::IntervalMapImpl::Path::getRightSibling(v4, v2);
  if (RightSibling)
  {
    v16 = (RightSibling & 0x3F) + 1;
    v116[v14] = v16;
    v13 += v16;
    *(&v114 + v14) = RightSibling & 0xFFFFFFFFFFFFFFC0;
    v14 = v10 | 2;
  }

  if (v13 + 1 <= (11 * v14))
  {
    v17 = 0;
  }

  else
  {
    if (v14 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 - 1;
    }

    v116[v14] = v116[v17];
    *(&v114 + v14) = *(&v114 + v17);
    v116[v17] = 0;
    v18 = *(*this + 280);
    v20 = v18 + 1;
    Slow = *v18;
    if (*v18)
    {
      *v18 = *Slow;
    }

    else
    {
      v18[11] += 192;
      v21 = v18[1];
      if (v21 && (Slow = (v21 + 63) & 0xFFFFFFFFFFFFFFC0, Slow + 192 <= v18[2]))
      {
        *v20 = Slow + 192;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v20, 192, 192, 6);
      }
    }

    *Slow = 0u;
    *(Slow + 16) = 0u;
    *(Slow + 160) = 0u;
    *(Slow + 176) = 0u;
    *(Slow + 128) = 0u;
    *(Slow + 144) = 0u;
    *(Slow + 96) = 0u;
    *(Slow + 112) = 0u;
    *(Slow + 64) = 0u;
    *(Slow + 80) = 0u;
    v14 = (v14 + 1);
    *(Slow + 32) = 0u;
    *(Slow + 48) = 0u;
    *(&v114 + v17) = Slow;
  }

  v22 = llvm::IntervalMapImpl::distribute(v14, v13, 0xBu, v116, &v110, v6, 1);
  llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(&v114, v14, v116, &v110);
  if (v8)
  {
    llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
  }

  if (!v17)
  {
    v33 = v2 - 1;
    v34 = v110 - 1;
    v35 = *(v114 + 16 * v34 + 8);
    v36 = *v4;
    *(*v4 + 16 * v5 + 8) = v110;
    if (v2)
    {
      *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) = *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v34;
      v37 = *v4;
      v38 = 16 * v5;
      while (1)
      {
        v39 = v38 - 16;
        if (v38 == 16)
        {
          break;
        }

        v40 = v37 + v38;
        v41 = *(v40 - 16);
        v43 = v40 - 8;
        LODWORD(v40) = *(v40 - 8);
        v42 = *(v43 + 4);
        *(v41 + 8 * v42 + 96) = v35;
        LODWORD(v41) = v40 - 1;
        v38 = v39;
        if (v42 != v41)
        {
          goto LABEL_30;
        }
      }

      *(*v37 + 8 * *(v37 + 12) + 128) = v35;
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_30:
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v63 = (v111 - 1);
    v64 = *(*(&v114 + 1) + 16 * v63 + 8);
    v65 = *v4;
    *(*v4 + 16 * v5 + 8) = v111;
    if (v2)
    {
      *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) = *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v63;
      v66 = *v4;
      v67 = 16 * v5;
      while (1)
      {
        v68 = v67 - 16;
        if (v67 == 16)
        {
          break;
        }

        v69 = v66 + v67;
        v70 = *(v69 - 16);
        v72 = v69 - 8;
        LODWORD(v69) = *(v69 - 8);
        v71 = *(v72 + 4);
        *(v70 + 8 * v71 + 96) = v64;
        LODWORD(v70) = v69 - 1;
        v67 = v68;
        if (v71 != v70)
        {
          goto LABEL_55;
        }
      }

      *(*v66 + 8 * *(v66 + 12) + 128) = v64;
      if (v14 != 2)
      {
LABEL_64:
        llvm::IntervalMapImpl::Path::moveRight(v4, v2);
        v81 = (v112 - 1);
        v82 = *(v115 + 16 * v81 + 8);
        v83 = *v4;
        *(*v4 + 16 * v5 + 8) = v112;
        if (v2)
        {
          *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) = *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v81;
          v84 = *v4;
          v85 = 16 * v5;
          while (1)
          {
            v86 = v85 - 16;
            if (v85 == 16)
            {
              break;
            }

            v87 = v84 + v85;
            v88 = *(v87 - 16);
            v90 = v87 - 8;
            LODWORD(v87) = *(v87 - 8);
            v89 = *(v90 + 4);
            *(v88 + 8 * v89 + 96) = v82;
            LODWORD(v88) = v87 - 1;
            v85 = v86;
            if (v89 != v88)
            {
              goto LABEL_68;
            }
          }

          *(*v84 + 8 * *(v84 + 12) + 128) = v82;
          if (v14 != 3)
          {
LABEL_78:
            llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            v99 = (v113 - 1);
            v100 = *(*(&v115 + 1) + 16 * v99 + 8);
            v101 = *v4;
            *(*v4 + 16 * v5 + 8) = v113;
            if (v2)
            {
              *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) = *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v99;
              v102 = *v4;
              v103 = 16 * v5;
              while (1)
              {
                v104 = v103 - 16;
                if (v103 == 16)
                {
                  break;
                }

                v105 = v102 + v103;
                v106 = *(v105 - 16);
                v108 = v105 - 8;
                LODWORD(v105) = *(v105 - 8);
                v107 = *(v108 + 4);
                *(v106 + 8 * v107 + 96) = v100;
                LODWORD(v106) = v105 - 1;
                v103 = v104;
                if (v107 != v106)
                {
                  goto LABEL_86;
                }
              }

              *(*v102 + 8 * *(v102 + 12) + 128) = v100;
            }

LABEL_86:
            if (v14 == 4)
            {
              inserted = 0;
LABEL_90:
              v47 = 3;
              goto LABEL_47;
            }

LABEL_92:
            result = llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_68:
          if (v14 != 3)
          {
            goto LABEL_78;
          }
        }

        inserted = 0;
        v47 = 2;
        goto LABEL_47;
      }
    }

    else
    {
LABEL_55:
      if (v14 != 2)
      {
        goto LABEL_64;
      }
    }

    inserted = 0;
    v47 = 1;
    goto LABEL_47;
  }

  v23 = v110 - 1;
  v24 = *(v114 + 16 * v23 + 8);
  v25 = *v4;
  *(*v4 + 16 * v2 + 8) = v110;
  if (!v2)
  {
LABEL_24:
    if (v14 != 1)
    {
      goto LABEL_33;
    }

LABEL_46:
    v47 = 0;
    inserted = 0;
    goto LABEL_47;
  }

  *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) = *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v23;
  v26 = *v4;
  v27 = 16 * v5;
  while (1)
  {
    v28 = v27 - 16;
    if (v27 == 16)
    {
      break;
    }

    v29 = v26 + v27;
    v30 = *(v29 - 16);
    v32 = v29 - 8;
    LODWORD(v29) = *(v29 - 8);
    v31 = *(v32 + 4);
    *(v30 + 8 * v31 + 96) = v24;
    LODWORD(v30) = v29 - 1;
    v27 = v28;
    if (v31 != v30)
    {
      goto LABEL_24;
    }
  }

  *(*v26 + 8 * *(v26 + 12) + 128) = v24;
  if (v14 == 1)
  {
    goto LABEL_46;
  }

LABEL_33:
  llvm::IntervalMapImpl::Path::moveRight(v4, v2);
  v44 = (v111 - 1);
  v45 = *(*(&v114 + 1) + 16 * v44 + 8);
  if (v17 != 1)
  {
    v48 = *v4;
    *(*v4 + 16 * v2 + 8) = v111;
    if (v2)
    {
      *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) = *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v44;
      v49 = *v4;
      v50 = 16 * v2;
      while (1)
      {
        v51 = v50 - 16;
        if (v50 == 16)
        {
          break;
        }

        v52 = v49 + v50;
        v53 = *(v52 - 16);
        v55 = v52 - 8;
        LODWORD(v52) = *(v52 - 8);
        v54 = *(v55 + 4);
        *(v53 + 8 * v54 + 96) = v45;
        LODWORD(v53) = v52 - 1;
        v50 = v51;
        if (v54 != v53)
        {
          goto LABEL_40;
        }
      }

      inserted = 0;
      *(*v49 + 8 * *(v49 + 12) + 128) = v45;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_40:
      inserted = 0;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v56 = (v112 - 1);
    v57 = *(v115 + 16 * v56 + 8);
    if (v17 == 2)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, v115 & 0xFFFFFFFFFFFFFFC0 | v56, v57);
      v2 += inserted;
      if (v14 != 3)
      {
        goto LABEL_43;
      }

LABEL_62:
      v47 = 2;
      goto LABEL_47;
    }

    v73 = *v4;
    *(*v4 + 16 * v2 + 8) = v112;
    if (v2)
    {
      *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) = *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v56;
      v74 = *v4;
      v75 = 16 * v2;
      while (1)
      {
        v76 = v75 - 16;
        if (v75 == 16)
        {
          break;
        }

        v77 = v74 + v75;
        v78 = *(v77 - 16);
        v80 = v77 - 8;
        LODWORD(v77) = *(v77 - 8);
        v79 = *(v80 + 4);
        *(v78 + 8 * v79 + 96) = v57;
        LODWORD(v78) = v77 - 1;
        v75 = v76;
        if (v79 != v78)
        {
          goto LABEL_61;
        }
      }

      *(*v74 + 8 * *(v74 + 12) + 128) = v57;
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_61:
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v58 = (v113 - 1);
    v59 = *(*(&v115 + 1) + 16 * v58 + 8);
    if (v17 == 3)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v115 + 1) & 0xFFFFFFFFFFFFFFC0 | v58, v59);
      v2 += inserted;
    }

    else
    {
      v91 = *v4;
      *(*v4 + 16 * v2 + 8) = v113;
      if (v2)
      {
        *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) = *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v58;
        v92 = *v4;
        v93 = 16 * v2;
        while (1)
        {
          v94 = v93 - 16;
          if (v93 == 16)
          {
            break;
          }

          v95 = v92 + v93;
          v96 = *(v95 - 16);
          v98 = v95 - 8;
          LODWORD(v95) = *(v95 - 8);
          v97 = *(v98 + 4);
          *(v96 + 8 * v97 + 96) = v59;
          LODWORD(v96) = v95 - 1;
          v93 = v94;
          if (v97 != v96)
          {
            goto LABEL_89;
          }
        }

        *(*v92 + 8 * *(v92 + 12) + 128) = v59;
      }
    }

LABEL_89:
    if (v14 == 4)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this, v2, *(&v114 + 1) & 0xFFFFFFFFFFFFFFC0 | v44, v45);
  v2 += inserted;
  if (v14 != 2)
  {
    goto LABEL_41;
  }

LABEL_35:
  v47 = 1;
LABEL_47:
  v60 = v22 - v47;
  if (v22 != v47)
  {
    do
    {
      llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
    }

    while (!__CFADD__(v60++, 1));
  }

  *(*v4 + 16 * v2 + 12) = HIDWORD(v22);
  return inserted;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = *result;
  v6 = result + 1;
  v5 = result[1];
  v7 = a2 - 1;
  if (a2 != 1)
  {
    v8 = v5 + 16 * v7;
    v9 = *v8;
    v10 = *(v8 + 8);
    if (v10 == 1)
    {
      v11 = *(v4 + 280);
      *v9 = *v11;
      *v11 = v9;
      result = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::eraseNode(result, a2 - 1);
      goto LABEL_61;
    }

    v19 = *(v5 + 16 * v7 + 12);
    v20 = v19 + 1;
    if (v19 + 1 == v10)
    {
LABEL_54:
      v44 = v10 - 1;
      *(v5 + 16 * v7 + 8) = v10 - 1;
      v45 = (v10 - 2);
      *(*(v5 + 16 * (a2 - 2)) + 8 * *(v5 + 16 * (a2 - 2) + 12)) = *(*(v5 + 16 * (a2 - 2)) + 8 * *(v5 + 16 * (a2 - 2) + 12)) & 0xFFFFFFFFFFFFFFC0 | v45;
      v46 = *v6;
      if (*(*v6 + 16 * v7 + 12) == v44)
      {
        v47 = v9[v45 + 12];
        v48 = (v46 + 16 * v7 - 8);
        v49 = a2 - 1;
        while (--v49)
        {
          v50 = *(v48 - 1);
          v52 = *v48;
          v51 = v48[1];
          v48 -= 4;
          *(v50 + 8 * v51 + 96) = v47;
          if (v51 != v52 - 1)
          {
            goto LABEL_60;
          }
        }

        *(*v46 + 8 * *(v46 + 12) + 128) = v47;
LABEL_60:
        result = llvm::IntervalMapImpl::Path::moveRight(v6, a2 - 1);
      }

      goto LABEL_61;
    }

    v21 = v9 + 12;
    v22 = v10 + ~v19;
    if (v22 >= 0x12)
    {
      if (v10 - 2 >= v19 && v10 - 1 >= v20)
      {
        v30 = 8 * (v19 + 1);
        v31 = 8 * v19 - v30;
        if (v31 >= 0x10 && (v30 - 8 * v19 + 96) >= 0x10 && v31 + 96 >= 0x10)
        {
          v20 += v22 & 0xFFFFFFFE;
          v23 = v19 + (v22 & 0xFFFFFFFE);
          v42 = v22 & 0xFFFFFFFE;
          do
          {
            v43 = (v19 + 1);
            result = (8 * v19);
            *(result + v9) = *&v9[v43];
            *(result + v21) = *&v21[v43];
            LODWORD(v19) = v19 + 2;
            v42 -= 2;
          }

          while (v42);
          if (v22 == (v22 & 0xFFFFFFFE))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v23 = v19;
        }
      }

      else
      {
        v23 = v19;
      }
    }

    else
    {
      v23 = v19;
    }

    do
    {
      v9[v23] = v9[v20];
      v21[v23++] = v21[v20++];
    }

    while (v10 != v20);
LABEL_53:
    v5 = *v6;
    v10 = *(*v6 + 16 * v7 + 8);
    goto LABEL_54;
  }

  v12 = *(v5 + 12);
  v13 = *(v4 + 276);
  v14 = v12 + 1;
  if (v12 + 1 != v13)
  {
    v15 = v4 + 8;
    v16 = v4 + 136;
    v17 = v13 + ~v12;
    if (v17 >= 0x12)
    {
      if (v13 - 2 >= v12 && v13 - 1 >= v14)
      {
        v26 = 8 * (v12 + 1);
        v27 = 8 * v12 - v26;
        if (v27 >= 0x10 && (v26 - 8 * v12 + 128) >= 0x10 && v27 + 128 >= 0x10)
        {
          v14 += v17 & 0xFFFFFFFE;
          v18 = v12 + (v17 & 0xFFFFFFFE);
          v34 = v17 & 0xFFFFFFFE;
          do
          {
            result = (8 * (v12 + 1));
            v35 = 8 * v12;
            *(v15 + v35) = *(result + v15);
            *(v16 + v35) = *(result + v16);
            LODWORD(v12) = v12 + 2;
            v34 -= 2;
          }

          while (v34);
          if (v17 == (v17 & 0xFFFFFFFE))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v18 = v12;
        }
      }

      else
      {
        v18 = v12;
      }
    }

    else
    {
      v18 = v12;
    }

    do
    {
      *(v15 + 8 * v18) = *(v15 + 8 * v14);
      *(v16 + 8 * v18++) = *(v16 + 8 * v14++);
    }

    while (v13 != v14);
LABEL_40:
    v13 = *(v4 + 276);
    v5 = *v6;
  }

  v36 = v13 - 1;
  *(v4 + 276) = v36;
  *(v5 + 8) = v36;
  if (!v36)
  {
    *(v4 + 272) = 0;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *v4 = 0u;
    v37 = *v3;
    if (*(*v3 + 272))
    {
      v38 = v37 + 8;
      v39 = *(v37 + 276);
      *(v3 + 4) = 0;
      v40 = v3 + 2;
      if (*(v3 + 5))
      {
        goto LABEL_47;
      }
    }

    else
    {
      v39 = *(v37 + 276);
      *(v3 + 4) = 0;
      v40 = v3 + 2;
      if (*(v3 + 5))
      {
        v38 = v37;
LABEL_47:
        v41 = *v6;
        *v41 = v38;
        v41[1] = v39;
        ++*v40;
        return result;
      }
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

LABEL_61:
  if (*(v3 + 4))
  {
    v53 = *v6;
    if (*(*v6 + 12) < *(*v6 + 8))
    {
      v54 = *(*(v53 + 16 * v7) + 8 * *(v53 + 16 * v7 + 12));
      v55 = 16 * a2;
      v56 = v53 + v55;
      *v56 = v54 & 0xFFFFFFFFFFFFFFC0;
      *(v56 + 8) = (v54 & 0x3F) + 1;
      *(*v6 + v55 + 12) = 0;
    }
  }

  return result;
}

uint64_t llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::LeafNode<unsigned long long,char,11u,llvm::IntervalMapInfo<unsigned long long>>>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v347 = a2 - 1;
  if (a2 != 1)
  {
    v4 = v347;
    v348 = a4;
    v349 = result;
    while (1)
    {
      v5 = *(a3 + 4 * v4);
      v6 = *(a4 + 4 * v4);
      if (v5 != v6)
      {
        break;
      }

LABEL_3:
      if (!--v4)
      {
        if (a2 < 2)
        {
          return result;
        }

        v177 = 0;
        while (1)
        {
          v178 = *(a3 + 4 * v177);
          v179 = *(a4 + 4 * v177);
          if (v178 != v179)
          {
            break;
          }

LABEL_250:
          if (++v177 == v347)
          {
            return result;
          }
        }

        v180 = v177;
        while (2)
        {
          if (++v180 == a2)
          {
            goto LABEL_250;
          }

          v182 = *(result + 8 * v180);
          v183 = *(a3 + 4 * v180);
          v184 = *(result + 8 * v177);
          v181 = v178 - v179;
          if (v181 >= 1)
          {
            if (v178 < v181)
            {
              v181 = v178;
            }

            if (11 - v183 < v181)
            {
              v181 = 11 - v183;
            }

            if (v183)
            {
              v185 = v182 + 176;
              if (v183 < 4)
              {
                goto LABEL_380;
              }

              v186 = (v183 - 1);
              v187 = (v186 + v181);
              if (__CFADD__(v186, v181))
              {
                goto LABEL_380;
              }

              v188 = v182 + 8;
              v189 = 16 * (v186 + v181);
              v190 = &v182[v189 + 8];
              v191 = 16 * (v183 - 1);
              v192 = &v182[v191 + 8];
              v193 = &v190[-v191] > v190 || &v182[v189 - v191] > &v182[v189];
              v194 = v193 || v188 > v192;
              v195 = v194 || v182 > &v182[v191];
              v196 = v195 || &v185[v187 - v186] > &v185[v187];
              if (v196 || v185 > &v185[v186])
              {
                goto LABEL_380;
              }

              v198 = &v182[v189 - v191];
              v199 = &v188[v189 - v191];
              v200 = &v182[v189 + 16];
              v201 = &v182[v191 + 16];
              v202 = &v185[v187 - v186];
              v203 = &v182[v187 + 177];
              v204 = &v182[v186 + 177];
              v206 = v198 < v192 && v182 < v190;
              v208 = v198 < v201 && v188 < v190;
              v210 = v198 < v203 && v202 < v190;
              v212 = v198 < v204 && v185 < v190;
              v214 = v199 < v192 && v182 < v200;
              v216 = v199 < v201 && v188 < v200;
              v218 = v199 < v203 && v202 < v200;
              v220 = v199 < v204 && v185 < v200;
              v222 = v182 < v203 && v202 < v192;
              v224 = v188 < v203 && v202 < v201;
              v226 = v202 < v204 && v185 < v203;
              if (v199 < v190 && v198 < v200)
              {
                v346 = *(a3 + 4 * v180);
                a4 = v348;
                result = v349;
                goto LABEL_381;
              }

              a4 = v348;
              result = v349;
              if (v206 || v208 || v210 || v212 || v214 || v216 || v218 || v220 || v222 || v224 || v226)
              {
LABEL_380:
                v346 = *(a3 + 4 * v180);
                goto LABEL_381;
              }

              if (v183 >= 0x10)
              {
                v228 = v183 & 0xFFFFFFF0;
                v288 = v183 - 1;
                v289 = v228;
                do
                {
                  v290 = &v182[16 * v288 - 240];
                  v292 = *v290;
                  v291 = v290[1];
                  v294 = v290[2];
                  v293 = v290[3];
                  v296 = v290[4];
                  v295 = v290[5];
                  v298 = v290[6];
                  v297 = v290[7];
                  v300 = v290[8];
                  v299 = v290[9];
                  v302 = v290[10];
                  v301 = v290[11];
                  v304 = v290[12];
                  v303 = v290[13];
                  v306 = v290[14];
                  v305 = *&v182[16 * v288];
                  v307 = &v182[16 * v187 - 248];
                  *(v307 + 232) = v306;
                  *(v307 + 248) = v305;
                  *(v307 + 200) = v304;
                  *(v307 + 216) = v303;
                  *(v307 + 168) = v302;
                  *(v307 + 184) = v301;
                  *(v307 + 136) = v300;
                  *(v307 + 152) = v299;
                  *(v307 + 104) = v298;
                  *(v307 + 120) = v297;
                  *(v307 + 72) = v296;
                  *(v307 + 88) = v295;
                  *(v307 + 40) = v294;
                  *(v307 + 56) = v293;
                  *(v307 + 8) = v292;
                  *(v307 + 24) = v291;
                  *&v182[v187 + 161] = *&v182[v288 + 161];
                  LODWORD(v187) = v187 - 16;
                  v288 -= 16;
                  v289 -= 16;
                }

                while (v289);
                if (v228 != v183)
                {
                  if ((v183 & 0xC) == 0)
                  {
                    v346 = v183 & 0xF;
                    goto LABEL_381;
                  }

                  goto LABEL_479;
                }
              }

              else
              {
                v228 = 0;
LABEL_479:
                v346 = v183 & 3;
                v308 = ~v228 + v183 + v181;
                v309 = ~v228 + v183;
                v310 = v228 - (v183 & 0xFFFFFFFC);
                do
                {
                  v311 = &v182[16 * v309 - 48];
                  v312 = *v311;
                  v313 = v311[1];
                  v314 = v311[2];
                  v315 = &v182[16 * v308 - 56];
                  *(v315 + 56) = *&v182[16 * v309];
                  *(v315 + 40) = v314;
                  *(v315 + 24) = v313;
                  *(v315 + 8) = v312;
                  *&v182[v308 + 173] = *&v182[v309 + 173];
                  v308 -= 4;
                  v309 -= 4;
                  v310 += 4;
                }

                while (v310);
                if ((v183 & 0xFFFFFFFC) != v183)
                {
LABEL_381:
                  v242 = (v346 - 1);
                  v243 = &v182[v242 + 176];
                  v244 = &v182[16 * v242];
                  v245 = -v346;
                  v246 = v242 + v181;
                  do
                  {
                    v247 = *v244--;
                    *&v182[16 * v246] = v247;
                    LOBYTE(v247) = *v243--;
                    v185[v246--] = v247;
                    v47 = __CFADD__(v245++, 1);
                  }

                  while (!v47);
                }
              }
            }

            if (v181)
            {
              v248 = v178 - v181;
              v249 = v182 + 176;
              v250 = v181;
              do
              {
                *v182 = *(v184 + 16 * v248);
                v182 += 16;
                *v249++ = *(v184 + 176 + v248++);
                --v250;
              }

              while (v250);
            }

LABEL_254:
            *(a3 + 4 * v180) += v181;
            v178 = *(a3 + 4 * v177) - v181;
            *(a3 + 4 * v177) = v178;
            v179 = *(a4 + 4 * v177);
            if (v178 >= v179)
            {
              goto LABEL_250;
            }

            continue;
          }

          break;
        }

        v229 = 11 - v178;
        if (-v181 < v183)
        {
          v230 = -v181;
        }

        else
        {
          v230 = *(a3 + 4 * v180);
        }

        if (v229 >= v230)
        {
          v231 = v230;
        }

        else
        {
          v231 = v229;
        }

        if (v231)
        {
          v232 = v182 + 176;
          v233 = *(result + 8 * v180);
          v234 = v231;
          do
          {
            v235 = *v233++;
            *(v184 + 16 * v178) = v235;
            LOBYTE(v235) = *v232++;
            *(v184 + 176 + v178++) = v235;
            --v234;
          }

          while (v234);
        }

        if (v231 != v183)
        {
          v236 = v182 + 176;
          v237 = (v183 + ~v231);
          if (v237 < 3)
          {
            v238 = 0;
            goto LABEL_376;
          }

          v238 = 0;
          if (v183 - 1 < v231)
          {
            goto LABEL_376;
          }

          v251 = v182 + 8;
          v252 = 16 * v231;
          v253 = &v182[v252 + 8];
          v254 = 16 * (v183 - 1 - v231);
          if (&v253[v254] < v253)
          {
            goto LABEL_376;
          }

          v255 = &v182[v252];
          if (&v182[v252 + v254] < &v182[v252])
          {
            goto LABEL_376;
          }

          v238 = 0;
          v256 = &v251[16 * v237];
          v257 = &v182[16 * v237 + 16];
          v258 = &v182[v237 + 177];
          v259 = v252 + 16 * v237;
          v260 = &v251[v259];
          v261 = &v182[v259 + 16];
          v262 = &v236[v231];
          v263 = v258 + v231;
          v265 = v182 < v258 && v236 < v256;
          v267 = v182 < v260 && v255 < v256;
          v269 = v182 < v261 && v253 < v256;
          v271 = v182 < v263 && v262 < v256;
          v273 = v251 < v258 && v236 < v257;
          v275 = v251 < v260 && v255 < v257;
          v277 = v251 < v261 && v253 < v257;
          v279 = v251 < v263 && v262 < v257;
          v281 = v236 < v260 && v255 < v258;
          v283 = v236 < v261 && v253 < v258;
          v285 = v236 < v263 && v262 < v258;
          if (v251 < v256 && v182 < v257)
          {
            v239 = v231;
            result = v349;
            goto LABEL_377;
          }

          result = v349;
          if (v265 || v267 || v269 || v271 || v273 || v275 || v277 || v279 || v281 || v283 || v285)
          {
LABEL_376:
            v239 = v231;
            goto LABEL_377;
          }

          v287 = v237 + 1;
          if (v237 < 0xF)
          {
            v238 = 0;
            goto LABEL_487;
          }

          v238 = v287 & 0x1FFFFFFF0;
          v316 = v231;
          v317 = v287 & 0x1FFFFFFF0;
          v318 = v182 + 176;
          v319 = v182;
          do
          {
            v320 = &v182[16 * v316];
            v322 = *v320;
            v321 = v320[1];
            v324 = v320[2];
            v323 = v320[3];
            v326 = v320[4];
            v325 = v320[5];
            v328 = v320[6];
            v327 = v320[7];
            v330 = v320[8];
            v329 = v320[9];
            v332 = v320[10];
            v331 = v320[11];
            v334 = v320[12];
            v333 = v320[13];
            v335 = v320[15];
            *(v319 + 14) = v320[14];
            *(v319 + 15) = v335;
            *(v319 + 12) = v334;
            *(v319 + 13) = v333;
            *(v319 + 10) = v332;
            *(v319 + 11) = v331;
            *(v319 + 8) = v330;
            *(v319 + 9) = v329;
            *(v319 + 6) = v328;
            *(v319 + 7) = v327;
            *(v319 + 4) = v326;
            *(v319 + 5) = v325;
            *(v319 + 2) = v324;
            *(v319 + 3) = v323;
            *v319 = v322;
            *(v319 + 1) = v321;
            v319 += 256;
            v336 = *&v236[v316];
            v316 += 16;
            *v318++ = v336;
            v317 -= 16;
          }

          while (v317);
          if (v287 != v238)
          {
            if ((v287 & 0xC) == 0)
            {
              v239 = v231 + v238;
              goto LABEL_377;
            }

LABEL_487:
            v337 = v238;
            v238 = v287 & 0x1FFFFFFFCLL;
            v239 = v231 + (v287 & 0xFFFFFFFC);
            v338 = &v182[16 * v337];
            v339 = &v182[v337 + 176];
            v340 = v337 - (v287 & 0x1FFFFFFFCLL);
            v341 = v231 + v337;
            do
            {
              v342 = &v182[16 * v341];
              v343 = *v342;
              v344 = v342[1];
              v345 = v342[3];
              *(v338 + 2) = v342[2];
              *(v338 + 3) = v345;
              *v338 = v343;
              *(v338 + 1) = v344;
              v338 += 64;
              *v339 = *&v236[v341];
              v339 += 4;
              v341 += 4;
              v340 += 4;
            }

            while (v340);
            if (v287 != v238)
            {
LABEL_377:
              v240 = &v182[v238 + 176];
              v241 = &v182[16 * v238];
              do
              {
                *v241 = *&v182[16 * v239];
                v241 += 16;
                *v240++ = v236[v239++];
              }

              while (v183 != v239);
            }
          }
        }

        v181 = -v231;
        goto LABEL_254;
      }
    }

    v7 = v4;
    while (1)
    {
      if (!v7)
      {
        goto LABEL_3;
      }

      --v7;
      v9 = *(result + 8 * v4);
      v10 = *(result + 8 * v7);
      v11 = *(a3 + 4 * v7);
      v8 = v6 - v5;
      if (v8 >= 1)
      {
        if (v11 < v8)
        {
          v8 = *(a3 + 4 * v7);
        }

        if (11 - v5 < v8)
        {
          v8 = 11 - v5;
        }

        if (!v5)
        {
          goto LABEL_138;
        }

        v12 = v9 + 176;
        v13 = v5;
        if (v5 < 4)
        {
          goto LABEL_16;
        }

        v28 = v5 - 1;
        v29 = (v28 + v8);
        if (__CFADD__(v28, v8))
        {
          goto LABEL_16;
        }

        v30 = v9 + 8;
        v31 = 16 * (v28 + v8);
        v32 = &v9[v31 + 8];
        v33 = 16 * (v5 - 1);
        v34 = &v9[v33 + 8];
        if (&v32[-v33] > v32 || &v9[v31 - v33] > &v9[v31] || v30 > v34 || v9 > &v9[v33] || &v12[v29 - v28] > &v12[v29] || v12 > &v12[v28])
        {
          v14 = v5;
          a4 = v348;
          result = v349;
          goto LABEL_135;
        }

        v40 = &v9[v31 - v33];
        v41 = &v30[v31 - v33];
        v42 = &v9[v31 + 16];
        v43 = &v9[v33 + 16];
        v44 = &v12[v29 - v28];
        v45 = &v9[v29 + 177];
        v46 = &v9[v28 + 177];
        v47 = v40 >= v34 || v9 >= v32;
        v48 = !v47;
        v50 = v40 < v43 && v30 < v32;
        v52 = v40 < v45 && v44 < v32;
        v54 = v40 < v46 && v12 < v32;
        v56 = v41 < v34 && v9 < v42;
        v58 = v41 < v43 && v30 < v42;
        v60 = v41 < v45 && v44 < v42;
        v62 = v41 < v46 && v12 < v42;
        v64 = v9 < v45 && v44 < v34;
        v66 = v30 < v45 && v44 < v43;
        v68 = v44 < v46 && v12 < v45;
        if (v41 < v32 && v40 < v42)
        {
          v14 = v5;
          a4 = v348;
          result = v349;
          goto LABEL_135;
        }

        v70 = v48;
        a4 = v348;
        result = v349;
        if ((v70 & 1) != 0 || v50 || v52 || v54 || v56 || v58 || v60 || v62 || v64 || v66 || v68)
        {
LABEL_16:
          v14 = v5;
        }

        else
        {
          if (v5 < 0x10)
          {
            v71 = 0;
            goto LABEL_233;
          }

          v71 = v5 & 0xFFFFFFF0;
          v118 = v5 - 1;
          v119 = v71;
          do
          {
            v120 = &v9[16 * v118 - 240];
            v122 = *v120;
            v121 = v120[1];
            v124 = v120[2];
            v123 = v120[3];
            v126 = v120[4];
            v125 = v120[5];
            v128 = v120[6];
            v127 = v120[7];
            v130 = v120[8];
            v129 = v120[9];
            v132 = v120[10];
            v131 = v120[11];
            v134 = v120[12];
            v133 = v120[13];
            v136 = v120[14];
            v135 = *&v9[16 * v118];
            v137 = &v9[16 * v29 - 248];
            *(v137 + 232) = v136;
            *(v137 + 248) = v135;
            *(v137 + 200) = v134;
            *(v137 + 216) = v133;
            *(v137 + 168) = v132;
            *(v137 + 184) = v131;
            *(v137 + 136) = v130;
            *(v137 + 152) = v129;
            *(v137 + 104) = v128;
            *(v137 + 120) = v127;
            *(v137 + 72) = v126;
            *(v137 + 88) = v125;
            *(v137 + 40) = v124;
            *(v137 + 56) = v123;
            *(v137 + 8) = v122;
            *(v137 + 24) = v121;
            *&v9[v29 + 161] = *&v9[v118 + 161];
            LODWORD(v29) = v29 - 16;
            v118 -= 16;
            v119 -= 16;
          }

          while (v119);
          if (v71 == v5)
          {
            goto LABEL_138;
          }

          if ((v5 & 0xC) == 0)
          {
            v14 = v5 & 0xF;
            goto LABEL_135;
          }

LABEL_233:
          v138 = v5 & 0xFFFFFFFC;
          v14 = v5 & 3;
          v139 = ~v71 + v5 + v8;
          v140 = ~v71 + v13;
          v141 = v71 - (v13 & 0xFFFFFFFC);
          do
          {
            v142 = &v9[16 * v140 - 48];
            v143 = *v142;
            v144 = v142[1];
            v145 = v142[2];
            v146 = &v9[16 * v139 - 56];
            *(v146 + 56) = *&v9[16 * v140];
            *(v146 + 40) = v145;
            *(v146 + 24) = v144;
            *(v146 + 8) = v143;
            *&v9[v139 + 173] = *&v9[v140 + 173];
            v139 -= 4;
            v140 -= 4;
            v141 += 4;
          }

          while (v141);
          if (v138 == v13)
          {
LABEL_138:
            if (v8)
            {
              v78 = v11 - v8;
              v79 = v9 + 176;
              v80 = v8;
              do
              {
                *v9 = *(v10 + 16 * v78);
                v9 += 16;
                *v79++ = *(v10 + 176 + v78++);
                --v80;
              }

              while (v80);
            }

            goto LABEL_7;
          }
        }

LABEL_135:
        v72 = (v14 - 1);
        v73 = &v9[v72 + 176];
        v74 = &v9[16 * v72];
        v75 = -v14;
        v76 = v72 + v8;
        do
        {
          v77 = *v74--;
          *&v9[16 * v76] = v77;
          LOBYTE(v77) = *v73--;
          v12[v76--] = v77;
          v47 = __CFADD__(v75++, 1);
        }

        while (!v47);
        goto LABEL_138;
      }

      v15 = 11 - v11;
      if (-v8 < v5)
      {
        v16 = -v8;
      }

      else
      {
        v16 = v5;
      }

      if (v15 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        v18 = v9 + 176;
        v19 = *(result + 8 * v4);
        v20 = v17;
        do
        {
          v21 = *v19++;
          *(v10 + 16 * v11) = v21;
          LOBYTE(v21) = *v18++;
          *(v10 + 176 + v11++) = v21;
          --v20;
        }

        while (v20);
      }

      if (v17 != v5)
      {
        break;
      }

LABEL_6:
      v8 = -v17;
LABEL_7:
      *(a3 + 4 * v7) -= v8;
      v5 = *(a3 + 4 * v4) + v8;
      *(a3 + 4 * v4) = v5;
      v6 = *(a4 + 4 * v4);
      if (v5 >= v6)
      {
        goto LABEL_3;
      }
    }

    v22 = v9 + 176;
    v23 = v5 + ~v17;
    if (v23 < 3)
    {
      v24 = 0;
LABEL_29:
      v25 = v17;
      goto LABEL_30;
    }

    v24 = 0;
    if (v5 - 1 < v17)
    {
      goto LABEL_29;
    }

    v81 = v9 + 8;
    v82 = 16 * v17;
    v83 = &v9[v82 + 8];
    v84 = 16 * (v5 - 1 - v17);
    if (&v83[v84] < v83)
    {
      goto LABEL_29;
    }

    v85 = &v9[v82];
    if (&v9[v82 + v84] < &v9[v82])
    {
      goto LABEL_29;
    }

    v24 = 0;
    v86 = &v81[16 * v23];
    v87 = &v9[16 * v23 + 16];
    v88 = &v9[v23 + 177];
    v89 = v82 + 16 * v23;
    v90 = &v81[v89];
    v91 = &v9[v89 + 16];
    v92 = &v22[v17];
    v93 = v88 + v17;
    v95 = v9 < v88 && v22 < v86;
    v97 = v9 < v90 && v85 < v86;
    v99 = v9 < v91 && v83 < v86;
    v101 = v9 < v93 && v92 < v86;
    v103 = v81 < v88 && v22 < v87;
    v105 = v81 < v90 && v85 < v87;
    v107 = v81 < v91 && v83 < v87;
    v109 = v81 < v93 && v92 < v87;
    v111 = v22 < v90 && v85 < v88;
    v113 = v22 < v91 && v83 < v88;
    v115 = v22 < v93 && v92 < v88;
    if (v81 < v86 && v9 < v87)
    {
      v25 = v17;
      goto LABEL_30;
    }

    if (v95 || v97 || v99 || v101 || v103 || v105 || v107 || v109 || v111 || v113 || v115)
    {
      goto LABEL_29;
    }

    v117 = v23 + 1;
    if (v23 >= 0xF)
    {
      v24 = v117 & 0x1FFFFFFF0;
      v147 = v17;
      v148 = v117 & 0x1FFFFFFF0;
      v149 = v9 + 176;
      v150 = v9;
      do
      {
        v151 = &v9[16 * v147];
        v153 = *v151;
        v152 = v151[1];
        v155 = v151[2];
        v154 = v151[3];
        v157 = v151[4];
        v156 = v151[5];
        v159 = v151[6];
        v158 = v151[7];
        v161 = v151[8];
        v160 = v151[9];
        v163 = v151[10];
        v162 = v151[11];
        v165 = v151[12];
        v164 = v151[13];
        v166 = v151[15];
        *(v150 + 14) = v151[14];
        *(v150 + 15) = v166;
        *(v150 + 12) = v165;
        *(v150 + 13) = v164;
        *(v150 + 10) = v163;
        *(v150 + 11) = v162;
        *(v150 + 8) = v161;
        *(v150 + 9) = v160;
        *(v150 + 6) = v159;
        *(v150 + 7) = v158;
        *(v150 + 4) = v157;
        *(v150 + 5) = v156;
        *(v150 + 2) = v155;
        *(v150 + 3) = v154;
        *v150 = v153;
        *(v150 + 1) = v152;
        v150 += 256;
        v167 = *&v22[v147];
        v147 += 16;
        *v149++ = v167;
        v148 -= 16;
      }

      while (v148);
      if (v117 == v24)
      {
        goto LABEL_6;
      }

      if ((v117 & 0xC) == 0)
      {
        v25 = v17 + v24;
LABEL_30:
        v26 = &v9[v24 + 176];
        v27 = &v9[16 * v24];
        do
        {
          *v27 = *&v9[16 * v25];
          v27 += 16;
          *v26++ = v22[v25++];
        }

        while (v5 != v25);
        goto LABEL_6;
      }
    }

    else
    {
      v24 = 0;
    }

    v168 = v24;
    v24 = v117 & 0x1FFFFFFFCLL;
    v25 = v17 + (v117 & 0xFFFFFFFC);
    v169 = &v9[16 * v168];
    v170 = &v9[v168 + 176];
    v171 = v168 - (v117 & 0x1FFFFFFFCLL);
    v172 = v17 + v168;
    do
    {
      v173 = &v9[16 * v172];
      v174 = *v173;
      v175 = v173[1];
      v176 = v173[3];
      *(v169 + 2) = v173[2];
      *(v169 + 3) = v176;
      *v169 = v174;
      *(v169 + 1) = v175;
      v169 += 64;
      *v170 = *&v22[v172];
      v170 += 4;
      v172 += 4;
      v171 += 4;
    }

    while (v171);
    if (v117 == v24)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(llvm::IntervalMapImpl::Path *this, int a2, uint64_t a3, uint64_t a4)
{
  v7 = (this + 8);
  v8 = *this;
  v9 = (a2 == 1);
  if (a2 == 1)
  {
    v10 = *(v8 + 276);
    if (v10 <= 0xF)
    {
      v11 = v8 + 8;
      v12 = *(*v7 + 12);
      if (v10 != v12)
      {
        v13 = v10 - v12;
        v14 = (v10 + ~v12);
        if (v14 < 0x33 || v12 + 1 > v10)
        {
          goto LABEL_24;
        }

        v15 = v8 + 8 * v10;
        v16 = v15 + 8;
        v17 = v15 + 8 - 8 * v14;
        v18 = v15 + 136;
        v19 = v15 + 136 - 8 * v14;
        v20 = 8 * (v10 - 1);
        v21 = v14 > v10 - 1 || v17 > v16;
        v22 = v21 || v19 > v18;
        v23 = v22 || v8 + v20 + 8 - 8 * v14 > (v8 + v20 + 8);
        if (v23 || v8 + v20 + 136 - 8 * v14 > (v8 + v20 + 136))
        {
          goto LABEL_24;
        }

        v25 = v20 - 8 * v10;
        if (v25 < 0x10)
        {
          goto LABEL_24;
        }

        if (v25 - 128 < 0x10)
        {
          goto LABEL_24;
        }

        v26 = v14 + 1;
        v13 -= v26 & 0xFFFFFFFE;
        v27 = v26 & 0x1FFFFFFFELL;
        do
        {
          v28 = 8 * (v10 - 1);
          v29 = 8 * v10;
          *(v8 + v29) = *(v8 + v28);
          *(v8 + 128 + v29) = *(v8 + 128 + v28);
          LODWORD(v10) = v10 - 2;
          v27 -= 2;
        }

        while (v27);
        if (v26 != (v26 & 0x1FFFFFFFELL))
        {
LABEL_24:
          v30 = v12 + v13;
          do
          {
            *(v11 + 8 * v30) = *(v11 + 8 * (v30 - 1));
            *(v8 + 136 + 8 * v30) = *(v8 + 136 + 8 * (v30 - 1));
            --v30;
            --v13;
          }

          while (v13);
        }
      }

      v31 = 8 * v12;
      *(v11 + v31) = a3;
      *(v8 + v31 + 136) = a4;
      v32 = *(v8 + 276) + 1;
      *(v8 + 276) = v32;
      v33 = *v7;
      *(v33 + 8) = v32;
      v34 = *(*v33 + 8 * *(v33 + 12));
      *(v33 + 16) = v34 & 0xFFFFFFFFFFFFFFC0;
      *(v33 + 24) = (v34 & 0x3F) + 1;
      return 0;
    }

    v36 = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::splitRoot(*this, *(*v7 + 12));
    llvm::IntervalMapImpl::Path::replaceRoot(v7, v8 + 8, *(v8 + 276), v36);
    a2 = 2;
  }

  v37 = (a2 - 1);
  if (*(this + 4) && (v38 = *v7, *(*v7 + 12) < *(*v7 + 8)))
  {
    v39 = (a2 - 1);
    v40 = *(v38 + 16 * v37 + 8);
    if (v40 != 12)
    {
      goto LABEL_31;
    }
  }

  else
  {
    llvm::IntervalMapImpl::Path::moveLeft(v7, a2 - 1);
    v38 = *v7;
    ++*(*v7 + 16 * v37 + 12);
    v39 = v37;
    v40 = *(v38 + 16 * v37 + 8);
    if (v40 != 12)
    {
LABEL_31:
      v41 = (v38 + 16 * v39);
      v42 = *v41;
      v43 = *(v41 + 3);
      if (v40 == v43)
      {
        goto LABEL_58;
      }

LABEL_35:
      v46 = v40 - v43;
      v47 = v40 + ~v43;
      if (v47 < 0x31 || v43 + 1 > v40)
      {
        goto LABEL_56;
      }

      v48 = 8 * v40;
      v49 = 8 * (v40 - 1);
      v50 = v47 > v40 - 1 || v42 + v48 - 8 * v47 > (v42 + v48);
      v51 = v50 || v42 + v48 + 96 - 8 * v47 > (v42 + v48 + 96);
      v52 = v51 || v42 + v49 - 8 * v47 > (v42 + v49);
      if (v52 || v42 + v49 + 96 - 8 * v47 > (v42 + v49 + 96))
      {
        goto LABEL_56;
      }

      if ((v49 - v48) < 0x10)
      {
        goto LABEL_56;
      }

      if ((v48 - v49 - 96) < 0x10)
      {
        goto LABEL_56;
      }

      if ((v49 - v48 - 96) < 0x10)
      {
        goto LABEL_56;
      }

      v54 = v47 + 1;
      v46 -= v54 & 0xFFFFFFFE;
      v55 = v54 & 0x1FFFFFFFELL;
      do
      {
        v56 = 8 * (v40 - 1);
        v57 = 8 * v40;
        *(v42 - 8 + v57) = *(v42 - 8 + v56);
        *(v42 + 88 + v57) = *(v42 + 88 + v56);
        v40 -= 2;
        v55 -= 2;
      }

      while (v55);
      if (v54 != (v54 & 0x1FFFFFFFELL))
      {
LABEL_56:
        v58 = v43 + v46;
        do
        {
          *(v42 + 8 * v58) = *(v42 + 8 * (v58 - 1));
          *(v42 + 96 + 8 * v58) = *(v42 + 96 + 8 * (v58 - 1));
          --v58;
          --v46;
        }

        while (v46);
      }

      goto LABEL_58;
    }
  }

  v9 = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(this, v37);
  v39 = (v37 + v9);
  v44 = *(this + 1);
  v40 = *(v44 + 16 * v39 + 8);
  LODWORD(v37) = v37 + v9;
  v45 = (v44 + 16 * v39);
  v42 = *v45;
  v43 = *(v45 + 3);
  if (v40 != v43)
  {
    goto LABEL_35;
  }

LABEL_58:
  v59 = (v42 + 8 * v43);
  *v59 = a3;
  v59[12] = a4;
  v60 = *v7;
  v61 = *v7 + 16 * v39;
  v62 = *(v61 + 8);
  *(v61 + 8) = v62 + 1;
  if (v37)
  {
    *(*(v60 + 16 * (v37 - 1)) + 8 * *(v60 + 16 * (v37 - 1) + 12)) = *(*(v60 + 16 * (v37 - 1)) + 8 * *(v60 + 16 * (v37 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v62;
    v60 = *v7;
    v61 = *v7 + 16 * v39;
    v63 = *(v61 + 12);
    if (v63 == *(v61 + 8) - 1)
    {
      v64 = (v61 - 8);
      while (--v39)
      {
        v65 = *(v64 - 1);
        v67 = *v64;
        v66 = v64[1];
        v64 -= 4;
        *(v65 + 8 * v66 + 96) = a4;
        if (v66 != v67 - 1)
        {
          goto LABEL_66;
        }
      }

      *(*v60 + 8 * *(v60 + 12) + 128) = a4;
    }
  }

  else
  {
    v63 = *(v61 + 12);
  }

LABEL_66:
  v68 = *(*v61 + 8 * v63);
  v69 = v60 + 16 * (v37 + 1);
  *v69 = v68 & 0xFFFFFFFFFFFFFFC0;
  *(v69 + 8) = (v68 & 0x3F) + 1;
  return v9;
}

unint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::splitRoot(uint64_t a1, unsigned int *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  result = llvm::IntervalMapImpl::distribute(2, *(a1 + 276), 0xBu, 0, &v47, a2, 1);
  v4 = *(a1 + 280);
  v5 = v4 + 1;
  Slow = *v4;
  if (*v4)
  {
    *v4 = *Slow;
  }

  else
  {
    v4[11] += 192;
    v7 = v4[1];
    v8 = v4[2];
    Slow = (v7 + 63) & 0xFFFFFFFFFFFFFFC0;
    v9 = Slow + 192;
    if (v7)
    {
      v10 = v9 > v8;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v45 = result;
      Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v5, 192, 192, 6);
      result = v45;
    }

    else
    {
      *v5 = v9;
    }
  }

  v11 = a1 + 8;
  v12 = a1 + 136;
  *(Slow + 160) = 0u;
  *(Slow + 176) = 0u;
  *(Slow + 128) = 0u;
  *(Slow + 144) = 0u;
  *(Slow + 96) = 0u;
  *(Slow + 112) = 0u;
  *(Slow + 64) = 0u;
  *(Slow + 80) = 0u;
  *(Slow + 32) = 0u;
  *(Slow + 48) = 0u;
  *Slow = 0u;
  *(Slow + 16) = 0u;
  v13 = v47;
  if (!v47)
  {
    v20 = 0;
    v21 = *(a1 + 280);
    v23 = v21 + 1;
    v22 = *v21;
    if (*v21)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if (v47 < 6 || Slow < a1 + 8 * v47 + 136 && v11 < 8 * v47 + Slow + 96)
  {
    v14 = 0;
LABEL_13:
    v15 = v13 - v14;
    v16 = 8 * v14;
    v17 = (8 * v14 + a1 + 136);
    v18 = (Slow + v16);
    do
    {
      *v18 = *(v17 - 16);
      v19 = *v17++;
      v18[12] = v19;
      ++v18;
      --v15;
    }

    while (v15);
    goto LABEL_15;
  }

  v14 = v47 & 0xFFFFFFFE;
  v34 = v14;
  v35 = Slow;
  v36 = (a1 + 136);
  do
  {
    *v35 = *(v36 - 8);
    v37 = *v36++;
    v35[6] = v37;
    ++v35;
    v34 -= 2;
  }

  while (v34);
  if (v14 != v13)
  {
    goto LABEL_13;
  }

LABEL_15:
  v20 = v47;
  v21 = *(a1 + 280);
  v23 = v21 + 1;
  v22 = *v21;
  if (*v21)
  {
LABEL_16:
    *v21 = *v22;
    goto LABEL_23;
  }

LABEL_18:
  v21[11] += 192;
  v24 = v21[1];
  v25 = v21[2];
  v22 = (v24 + 63) & 0xFFFFFFFFFFFFFFC0;
  v26 = v22 + 192;
  if (v24)
  {
    v27 = v26 > v25;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v46 = result;
    v22 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v23, 192, 192, 6);
    result = v46;
  }

  else
  {
    *v23 = v26;
  }

LABEL_23:
  *(v22 + 160) = 0u;
  *(v22 + 176) = 0u;
  *(v22 + 128) = 0u;
  *(v22 + 144) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 112) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v28 = v48;
  if (v48)
  {
    v29 = 0;
    if (v48 < 0xC)
    {
      v30 = v20;
    }

    else
    {
      v30 = v20;
      if (v20 <= -v48)
      {
        v31 = 8 * (v48 - 1);
        v32 = a1 + 8 * v20;
        if (v22 >= v32 + v31 + 144 || v32 + 8 >= v31 + v22 + 104)
        {
          v29 = v48 & 0xFFFFFFFE;
          v30 = v20 + (v48 & 0xFFFFFFFE);
          v38 = v20;
          v39 = v29;
          v40 = v22;
          do
          {
            v41 = 8 * v38;
            *v40 = *(v11 + v41);
            v40[6] = *(v12 + v41);
            ++v40;
            v38 += 2;
            v39 -= 2;
          }

          while (v39);
          if (v29 == v28)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v29 = 0;
          v30 = v20;
        }
      }
    }

    v42 = v28 + v20;
    v43 = (v22 + 8 * v29);
    do
    {
      *v43 = *(v11 + 8 * v30);
      v43[12] = *(v12 + 8 * v30++);
      ++v43;
    }

    while (v42 != v30);
LABEL_40:
    v33 = v48 - 1;
    goto LABEL_41;
  }

  v33 = 0xFFFFFFFFLL;
LABEL_41:
  v44 = v22 & 0xFFFFFFFFFFFFFFC0 | v33;
  *(a1 + 136) = *((Slow & 0xFFFFFFFFFFFFFFC0 | (v20 - 1) & 0xFFFFFFC0) + 8 * (v47 - 1) + 0x60);
  *(a1 + 8) = Slow & 0xFFFFFFFFFFFFFFC0 | (v20 - 1);
  *(a1 + 144) = *((v44 & 0xFFFFFFFFFFFFFFC0) + 8 * v33 + 0x60);
  *(a1 + 16) = v44;
  *(a1 + 276) = 2;
  ++*(a1 + 272);
  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::overflow<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(llvm::IntervalMapImpl::Path *this, unsigned int a2)
{
  v2 = a2;
  v117 = *MEMORY[0x277D85DE8];
  v4 = (this + 8);
  v3 = *(this + 1);
  v114 = 0u;
  v115 = 0u;
  v5 = a2;
  v6 = *(v3 + 16 * a2 + 12);
  LeftSibling = llvm::IntervalMapImpl::Path::getLeftSibling((this + 8), a2);
  v8 = LeftSibling;
  if (LeftSibling)
  {
    v9 = (LeftSibling & 0x3F) + 1;
    v116[0] = v9;
    v6 = (v9 + v6);
    *&v114 = LeftSibling & 0xFFFFFFFFFFFFFFC0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = *v4 + 16 * v5;
  v12 = *(v11 + 8);
  v116[v10] = v12;
  v13 = v12 + v9;
  v14 = v10 + 1;
  *(&v114 | (8 * v10)) = *v11;
  RightSibling = llvm::IntervalMapImpl::Path::getRightSibling(v4, v2);
  if (RightSibling)
  {
    v16 = (RightSibling & 0x3F) + 1;
    v116[v14] = v16;
    v13 += v16;
    *(&v114 + v14) = RightSibling & 0xFFFFFFFFFFFFFFC0;
    v14 = v10 | 2;
  }

  if (v13 + 1 <= (12 * v14))
  {
    v17 = 0;
  }

  else
  {
    if (v14 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v14 - 1;
    }

    v116[v14] = v116[v17];
    *(&v114 + v14) = *(&v114 + v17);
    v116[v17] = 0;
    v18 = *(*this + 280);
    v20 = v18 + 1;
    Slow = *v18;
    if (*v18)
    {
      *v18 = *Slow;
    }

    else
    {
      v18[11] += 192;
      v21 = v18[1];
      if (v21 && (Slow = (v21 + 63) & 0xFFFFFFFFFFFFFFC0, Slow + 192 <= v18[2]))
      {
        *v20 = Slow + 192;
      }

      else
      {
        Slow = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::AllocateSlow(v20, 192, 192, 6);
      }
    }

    *Slow = 0u;
    *(Slow + 16) = 0u;
    *(Slow + 160) = 0u;
    *(Slow + 176) = 0u;
    *(Slow + 128) = 0u;
    *(Slow + 144) = 0u;
    *(Slow + 96) = 0u;
    *(Slow + 112) = 0u;
    *(Slow + 64) = 0u;
    *(Slow + 80) = 0u;
    v14 = (v14 + 1);
    *(Slow + 32) = 0u;
    *(Slow + 48) = 0u;
    *(&v114 + v17) = Slow;
  }

  v22 = llvm::IntervalMapImpl::distribute(v14, v13, 0xCu, v116, &v110, v6, 1);
  llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(&v114, v14, v116, &v110);
  if (v8)
  {
    llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
  }

  if (!v17)
  {
    v33 = v2 - 1;
    v34 = v110 - 1;
    v35 = *(v114 + 8 * v34 + 96);
    v36 = *v4;
    *(*v4 + 16 * v5 + 8) = v110;
    if (v2)
    {
      *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) = *(*(v36 + 16 * v33) + 8 * *(v36 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v34;
      v37 = *v4;
      v38 = 16 * v5;
      while (1)
      {
        v39 = v38 - 16;
        if (v38 == 16)
        {
          break;
        }

        v40 = v37 + v38;
        v41 = *(v40 - 16);
        v43 = v40 - 8;
        LODWORD(v40) = *(v40 - 8);
        v42 = *(v43 + 4);
        *(v41 + 8 * v42 + 96) = v35;
        LODWORD(v41) = v40 - 1;
        v38 = v39;
        if (v42 != v41)
        {
          goto LABEL_30;
        }
      }

      *(*v37 + 8 * *(v37 + 12) + 128) = v35;
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
LABEL_30:
      if (v14 == 1)
      {
        goto LABEL_46;
      }
    }

    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v63 = (v111 - 1);
    v64 = *(*(&v114 + 1) + 8 * v63 + 96);
    v65 = *v4;
    *(*v4 + 16 * v5 + 8) = v111;
    if (v2)
    {
      *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) = *(*(v65 + 16 * v33) + 8 * *(v65 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v63;
      v66 = *v4;
      v67 = 16 * v5;
      while (1)
      {
        v68 = v67 - 16;
        if (v67 == 16)
        {
          break;
        }

        v69 = v66 + v67;
        v70 = *(v69 - 16);
        v72 = v69 - 8;
        LODWORD(v69) = *(v69 - 8);
        v71 = *(v72 + 4);
        *(v70 + 8 * v71 + 96) = v64;
        LODWORD(v70) = v69 - 1;
        v67 = v68;
        if (v71 != v70)
        {
          goto LABEL_55;
        }
      }

      *(*v66 + 8 * *(v66 + 12) + 128) = v64;
      if (v14 != 2)
      {
LABEL_64:
        llvm::IntervalMapImpl::Path::moveRight(v4, v2);
        v81 = (v112 - 1);
        v82 = *(v115 + 8 * v81 + 96);
        v83 = *v4;
        *(*v4 + 16 * v5 + 8) = v112;
        if (v2)
        {
          *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) = *(*(v83 + 16 * v33) + 8 * *(v83 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v81;
          v84 = *v4;
          v85 = 16 * v5;
          while (1)
          {
            v86 = v85 - 16;
            if (v85 == 16)
            {
              break;
            }

            v87 = v84 + v85;
            v88 = *(v87 - 16);
            v90 = v87 - 8;
            LODWORD(v87) = *(v87 - 8);
            v89 = *(v90 + 4);
            *(v88 + 8 * v89 + 96) = v82;
            LODWORD(v88) = v87 - 1;
            v85 = v86;
            if (v89 != v88)
            {
              goto LABEL_68;
            }
          }

          *(*v84 + 8 * *(v84 + 12) + 128) = v82;
          if (v14 != 3)
          {
LABEL_78:
            llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            v99 = (v113 - 1);
            v100 = *(*(&v115 + 1) + 8 * v99 + 96);
            v101 = *v4;
            *(*v4 + 16 * v5 + 8) = v113;
            if (v2)
            {
              *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) = *(*(v101 + 16 * v33) + 8 * *(v101 + 16 * v33 + 12)) & 0xFFFFFFFFFFFFFFC0 | v99;
              v102 = *v4;
              v103 = 16 * v5;
              while (1)
              {
                v104 = v103 - 16;
                if (v103 == 16)
                {
                  break;
                }

                v105 = v102 + v103;
                v106 = *(v105 - 16);
                v108 = v105 - 8;
                LODWORD(v105) = *(v105 - 8);
                v107 = *(v108 + 4);
                *(v106 + 8 * v107 + 96) = v100;
                LODWORD(v106) = v105 - 1;
                v103 = v104;
                if (v107 != v106)
                {
                  goto LABEL_86;
                }
              }

              *(*v102 + 8 * *(v102 + 12) + 128) = v100;
            }

LABEL_86:
            if (v14 == 4)
            {
              inserted = 0;
LABEL_90:
              v47 = 3;
              goto LABEL_47;
            }

LABEL_92:
            result = llvm::IntervalMapImpl::Path::moveRight(v4, v2);
            __break(1u);
            return result;
          }
        }

        else
        {
LABEL_68:
          if (v14 != 3)
          {
            goto LABEL_78;
          }
        }

        inserted = 0;
        v47 = 2;
        goto LABEL_47;
      }
    }

    else
    {
LABEL_55:
      if (v14 != 2)
      {
        goto LABEL_64;
      }
    }

    inserted = 0;
    v47 = 1;
    goto LABEL_47;
  }

  v23 = v110 - 1;
  v24 = *(v114 + 8 * v23 + 96);
  v25 = *v4;
  *(*v4 + 16 * v2 + 8) = v110;
  if (!v2)
  {
LABEL_24:
    if (v14 != 1)
    {
      goto LABEL_33;
    }

LABEL_46:
    v47 = 0;
    inserted = 0;
    goto LABEL_47;
  }

  *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) = *(*(v25 + 16 * (v2 - 1)) + 8 * *(v25 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v23;
  v26 = *v4;
  v27 = 16 * v5;
  while (1)
  {
    v28 = v27 - 16;
    if (v27 == 16)
    {
      break;
    }

    v29 = v26 + v27;
    v30 = *(v29 - 16);
    v32 = v29 - 8;
    LODWORD(v29) = *(v29 - 8);
    v31 = *(v32 + 4);
    *(v30 + 8 * v31 + 96) = v24;
    LODWORD(v30) = v29 - 1;
    v27 = v28;
    if (v31 != v30)
    {
      goto LABEL_24;
    }
  }

  *(*v26 + 8 * *(v26 + 12) + 128) = v24;
  if (v14 == 1)
  {
    goto LABEL_46;
  }

LABEL_33:
  llvm::IntervalMapImpl::Path::moveRight(v4, v2);
  v44 = (v111 - 1);
  v45 = *(*(&v114 + 1) + 8 * v44 + 96);
  if (v17 != 1)
  {
    v48 = *v4;
    *(*v4 + 16 * v2 + 8) = v111;
    if (v2)
    {
      *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) = *(*(v48 + 16 * (v2 - 1)) + 8 * *(v48 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v44;
      v49 = *v4;
      v50 = 16 * v2;
      while (1)
      {
        v51 = v50 - 16;
        if (v50 == 16)
        {
          break;
        }

        v52 = v49 + v50;
        v53 = *(v52 - 16);
        v55 = v52 - 8;
        LODWORD(v52) = *(v52 - 8);
        v54 = *(v55 + 4);
        *(v53 + 8 * v54 + 96) = v45;
        LODWORD(v53) = v52 - 1;
        v50 = v51;
        if (v54 != v53)
        {
          goto LABEL_40;
        }
      }

      inserted = 0;
      *(*v49 + 8 * *(v49 + 12) + 128) = v45;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_40:
      inserted = 0;
      if (v14 == 2)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v56 = (v112 - 1);
    v57 = *(v115 + 8 * v56 + 96);
    if (v17 == 2)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this);
      v2 += inserted;
      if (v14 != 3)
      {
        goto LABEL_43;
      }

LABEL_62:
      v47 = 2;
      goto LABEL_47;
    }

    v73 = *v4;
    *(*v4 + 16 * v2 + 8) = v112;
    if (v2)
    {
      *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) = *(*(v73 + 16 * (v2 - 1)) + 8 * *(v73 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v56;
      v74 = *v4;
      v75 = 16 * v2;
      while (1)
      {
        v76 = v75 - 16;
        if (v75 == 16)
        {
          break;
        }

        v77 = v74 + v75;
        v78 = *(v77 - 16);
        v80 = v77 - 8;
        LODWORD(v77) = *(v77 - 8);
        v79 = *(v80 + 4);
        *(v78 + 8 * v79 + 96) = v57;
        LODWORD(v78) = v77 - 1;
        v75 = v76;
        if (v79 != v78)
        {
          goto LABEL_61;
        }
      }

      *(*v74 + 8 * *(v74 + 12) + 128) = v57;
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

    else
    {
LABEL_61:
      if (v14 == 3)
      {
        goto LABEL_62;
      }
    }

LABEL_43:
    llvm::IntervalMapImpl::Path::moveRight(v4, v2);
    v58 = (v113 - 1);
    v59 = *(*(&v115 + 1) + 8 * v58 + 96);
    if (v17 == 3)
    {
      inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this);
      v2 += inserted;
    }

    else
    {
      v91 = *v4;
      *(*v4 + 16 * v2 + 8) = v113;
      if (v2)
      {
        *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) = *(*(v91 + 16 * (v2 - 1)) + 8 * *(v91 + 16 * (v2 - 1) + 12)) & 0xFFFFFFFFFFFFFFC0 | v58;
        v92 = *v4;
        v93 = 16 * v2;
        while (1)
        {
          v94 = v93 - 16;
          if (v93 == 16)
          {
            break;
          }

          v95 = v92 + v93;
          v96 = *(v95 - 16);
          v98 = v95 - 8;
          LODWORD(v95) = *(v95 - 8);
          v97 = *(v98 + 4);
          *(v96 + 8 * v97 + 96) = v59;
          LODWORD(v96) = v95 - 1;
          v93 = v94;
          if (v97 != v96)
          {
            goto LABEL_89;
          }
        }

        *(*v92 + 8 * *(v92 + 12) + 128) = v59;
      }
    }

LABEL_89:
    if (v14 == 4)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  inserted = llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::iterator::insertNode(this);
  v2 += inserted;
  if (v14 != 2)
  {
    goto LABEL_41;
  }

LABEL_35:
  v47 = 1;
LABEL_47:
  v60 = v22 - v47;
  if (v22 != v47)
  {
    do
    {
      llvm::IntervalMapImpl::Path::moveLeft(v4, v2);
    }

    while (!__CFADD__(v60++, 1));
  }

  *(*v4 + 16 * v2 + 12) = HIDWORD(v22);
  return inserted;
}

uint64_t llvm::IntervalMapImpl::adjustSiblingSizes<llvm::IntervalMapImpl::BranchNode<unsigned long long,char,12u,llvm::IntervalMapInfo<unsigned long long>>>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 - 1;
  if (a2 != 1)
  {
    v5 = v4;
    while (1)
    {
      v6 = *(a3 + 4 * v5);
      v7 = *(a4 + 4 * v5);
      if (v6 != v7)
      {
        break;
      }

LABEL_3:
      if (!--v5)
      {
        if (a2 < 2)
        {
          return result;
        }

        v69 = 0;
        while (1)
        {
          v70 = *(a3 + 4 * v69);
          v71 = *(a4 + 4 * v69);
          if (v70 != v71)
          {
            break;
          }

LABEL_101:
          if (++v69 == v4)
          {
            return result;
          }
        }

        v72 = v69;
        while (2)
        {
          if (++v72 == a2)
          {
            goto LABEL_101;
          }

          v74 = *(result + 8 * v72);
          v75 = *(a3 + 4 * v72);
          v76 = *(result + 8 * v69);
          v77 = v70 - v71;
          if ((v70 - v71) >= 1)
          {
            LODWORD(v78) = 12 - v75;
            if (v70 >= v77)
            {
              v73 = v70 - v71;
            }

            else
            {
              v73 = v70;
            }

            if (v78 < v73)
            {
              v73 = 12 - v75;
            }

            if (v75)
            {
              v79 = v74 + 96;
              if (v75 < 0x26 || (v80 = v75 - 1 + v73, __CFADD__(v75 - 1, v73)) || ((v81 = 8 * (v75 - 1 + v73), v82 = 8 * (v75 - 1), v74 + v81 - v82 <= v74 + v81) ? (v83 = v79 + v81 - v82 > v79 + v81) : (v83 = 1), !v83 ? (v84 = v74 > v74 + v82) : (v84 = 1), !v84 ? (v85 = v79 > v79 + v82) : (v85 = 1), v85 || (v82 - v81) < 0x10 || (v81 - v82 - 96) < 0x10 || (v82 - v81 - 96) < 0x10))
              {
                v86 = *(a3 + 4 * v72);
              }

              else
              {
                v86 = *(a3 + 4 * v72) & 1;
                v87 = v75 - 1;
                v88 = v75 & 0xFFFFFFFE;
                do
                {
                  v89 = 8 * v87;
                  v90 = 8 * v80;
                  *(v74 - 8 + v90) = *(v74 - 8 + v89);
                  *(v74 + 88 + v90) = *(v74 + 88 + v89);
                  v80 -= 2;
                  v87 -= 2;
                  v88 -= 2;
                }

                while (v88);
                if ((v75 & 0xFFFFFFFE) == v75)
                {
                  goto LABEL_157;
                }
              }

              v102 = v86 - 1;
              v103 = (v74 + 8 * (v86 - 1));
              v104 = -v86;
              v105 = v102 + v73;
              do
              {
                *(v74 + 8 * v105) = *v103;
                *(v79 + 8 * v105) = v103[12];
                --v103;
                --v105;
                v26 = __CFADD__(v104++, 1);
              }

              while (!v26);
            }

LABEL_157:
            if (v73)
            {
              v106 = 0;
              v107 = v70 - v73;
              v108 = v76 + 96;
              if (v70 < v77)
              {
                v77 = v70;
              }

              if (v77 >= v78)
              {
                v78 = v78;
              }

              else
              {
                v78 = v77;
              }

              if (v78 < 6 || v70 - 1 < v107)
              {
LABEL_168:
                v111 = v70 - v73;
                goto LABEL_169;
              }

              v109 = 8 * (v73 - 1);
              v110 = v76 + 8 * v107;
              if (v74 < v110 + v109 + 104 && v110 < v74 + v109 + 104)
              {
                v106 = 0;
                goto LABEL_168;
              }

              v106 = v78 & 0x7FFFFFFE;
              v111 = v107 + (v78 & 0x7FFFFFFE);
              v125 = v106;
              v126 = v74;
              do
              {
                v127 = 8 * v107;
                *v126 = *(v76 + v127);
                v126[6] = *(v108 + v127);
                ++v126;
                v107 += 2;
                v125 -= 2;
              }

              while (v125);
              if (v106 != v78)
              {
LABEL_169:
                v112 = (v74 + 8 * v106);
                do
                {
                  *v112 = *(v76 + 8 * v111);
                  v112[12] = *(v108 + 8 * v111++);
                  ++v112;
                }

                while (v70 != v111);
              }
            }

LABEL_105:
            *(a3 + 4 * v72) += v73;
            v70 = *(a3 + 4 * v69) - v73;
            *(a3 + 4 * v69) = v70;
            v71 = *(a4 + 4 * v69);
            if (v70 >= v71)
            {
              goto LABEL_101;
            }

            continue;
          }

          break;
        }

        v91 = 12 - v70;
        if (v71 - v70 < v75)
        {
          LODWORD(v92) = v71 - v70;
        }

        else
        {
          LODWORD(v92) = *(a3 + 4 * v72);
        }

        if (v91 >= v92)
        {
          v92 = v92;
        }

        else
        {
          v92 = v91;
        }

        if (v92)
        {
          v93 = v76 + 96;
          v94 = v92 < 8 || v70 > -v92;
          if (v94 || ((v95 = 8 * v70, v74 < v93 + v95 + 8 * v92) ? (v96 = v76 + v95 >= v74 + 96 + 8 * v92) : (v96 = 1), !v96))
          {
            v97 = 0;
            v98 = v70;
            goto LABEL_173;
          }

          v97 = v92 & 0x7FFFFFFE;
          v98 = v70 + (v92 & 0x7FFFFFFE);
          v99 = v97;
          v100 = *(result + 8 * v72);
          do
          {
            v101 = 8 * v70;
            *(v76 + v101) = *v100;
            *(v93 + v101) = v100[6];
            ++v100;
            v70 += 2;
            v99 -= 2;
          }

          while (v99);
          if (v97 != v92)
          {
LABEL_173:
            v113 = v92 - v97;
            v114 = (v74 + 8 * v97);
            do
            {
              *(v76 + 8 * v98) = *v114;
              *(v93 + 8 * v98++) = v114[12];
              ++v114;
              --v113;
            }

            while (v113);
          }
        }

        if (v92 != v75)
        {
          v115 = 0;
          v116 = v74 + 96;
          v117 = (v75 + ~v92);
          if (v117 < 7 || v75 - 1 < v92 || (v115 = 0, -8 * v92 < 0x10) || 8 * v92 - 81 < 0x10)
          {
            v119 = v92;
            goto LABEL_185;
          }

          v118 = v117 + 1;
          v115 = (v117 + 1) & 0x1FFFFFFFELL;
          v119 = v92 + v115;
          v120 = v92;
          v121 = v115;
          v122 = v74;
          do
          {
            v123 = 8 * v120;
            *v122 = *(v74 + v123);
            v122[6] = *(v116 + v123);
            ++v122;
            v120 += 2;
            v121 -= 2;
          }

          while (v121);
          if (v118 != v115)
          {
LABEL_185:
            v124 = (v74 + 8 * v115);
            do
            {
              *v124 = *(v74 + 8 * v119);
              v124[12] = *(v116 + 8 * v119++);
              ++v124;
            }

            while (v75 != v119);
          }
        }

        v73 = -v92;
        goto LABEL_105;
      }
    }

    v8 = v5;
    while (1)
    {
      if (!v8)
      {
        goto LABEL_3;
      }

      --v8;
      v10 = *(result + 8 * v5);
      v11 = *(result + 8 * v8);
      v12 = *(a3 + 4 * v8);
      v13 = v7 - v6;
      if ((v7 - v6) < 1)
      {
        v40 = 12 - v12;
        if (v6 - v7 < v6)
        {
          LODWORD(v41) = v6 - v7;
        }

        else
        {
          LODWORD(v41) = v6;
        }

        if (v40 >= v41)
        {
          v41 = v41;
        }

        else
        {
          v41 = v40;
        }

        if (v41)
        {
          v42 = v11 + 96;
          v43 = v41 < 8 || v12 > -v41;
          if (v43 || (v10 < v42 + 8 * v12 + 8 * v41 ? (v44 = v11 + 8 * v12 >= v10 + 96 + 8 * v41) : (v44 = 1), !v44))
          {
            v45 = 0;
            v46 = *(a3 + 4 * v8);
            goto LABEL_75;
          }

          v45 = v41 & 0x7FFFFFFE;
          v46 = v12 + (v41 & 0x7FFFFFFE);
          v47 = v45;
          v48 = *(result + 8 * v5);
          do
          {
            v49 = 8 * v12;
            *(v11 + v49) = *v48;
            *(v42 + v49) = v48[6];
            ++v48;
            LODWORD(v12) = v12 + 2;
            v47 -= 2;
          }

          while (v47);
          if (v45 != v41)
          {
LABEL_75:
            v50 = v41 - v45;
            v51 = (v10 + 8 * v45);
            do
            {
              *(v11 + 8 * v46) = *v51;
              *(v42 + 8 * v46++) = v51[12];
              ++v51;
              --v50;
            }

            while (v50);
          }
        }

        if (v41 != v6)
        {
          v52 = 0;
          v53 = v10 + 96;
          v54 = v6 + ~v41;
          if (v54 < 7 || v6 - 1 < v41 || (v52 = 0, -8 * v41 < 0x10) || 8 * v41 - 81 < 0x10)
          {
            v56 = v41;
            goto LABEL_87;
          }

          v55 = v54 + 1;
          v52 = (v54 + 1) & 0x1FFFFFFFELL;
          v56 = v41 + v52;
          v57 = v41;
          v58 = v52;
          v59 = v10;
          do
          {
            v60 = 8 * v57;
            *v59 = *(v10 + v60);
            v59[6] = *(v53 + v60);
            ++v59;
            v57 += 2;
            v58 -= 2;
          }

          while (v58);
          if (v55 != v52)
          {
LABEL_87:
            v61 = (v10 + 8 * v52);
            do
            {
              *v61 = *(v10 + 8 * v56);
              v61[12] = *(v53 + 8 * v56++);
              ++v61;
            }

            while (v6 != v56);
          }
        }

        v9 = -v41;
        goto LABEL_7;
      }

      LODWORD(v14) = 12 - v6;
      if (v12 >= v13)
      {
        v9 = v7 - v6;
      }

      else
      {
        v9 = *(a3 + 4 * v8);
      }

      if (v14 < v9)
      {
        v9 = 12 - v6;
      }

      if (v6)
      {
        v15 = v10 + 96;
        v16 = v6;
        if (v6 < 0x26 || (v17 = v6 - 1, v18 = v6 - 1 + v9, __CFADD__(v6 - 1, v9)) || ((v19 = 8 * (v6 - 1 + v9), v20 = 8 * v17, v10 + v19 - v20 <= v10 + v19) ? (v21 = v15 + v19 - v20 > v15 + v19) : (v21 = 1), !v21 ? (v22 = v10 > v10 + v20) : (v22 = 1), !v22 ? (v23 = v15 > v15 + v20) : (v23 = 1), v23 || ((v24 = v20 - v19, v25 = v19 - v20 - 96, v24 >= 0x10) ? (v26 = v25 >= 0x10) : (v26 = 0), v26 ? (v27 = v24 - 96 >= 0x10) : (v27 = 0), !v27)))
        {
          v28 = v16;
LABEL_36:
          v29 = v28 - 1;
          v30 = (v10 + 8 * (v28 - 1));
          v31 = -v28;
          v32 = v29 + v9;
          do
          {
            *(v10 + 8 * v32) = *v30;
            *(v15 + 8 * v32) = v30[12];
            --v30;
            --v32;
            v26 = __CFADD__(v31++, 1);
          }

          while (!v26);
          goto LABEL_39;
        }

        v28 = v16 & 1;
        v65 = v16 - 1;
        v66 = v16 & 0xFFFFFFFE;
        do
        {
          v67 = 8 * v65;
          v68 = 8 * v18;
          *(v10 - 8 + v68) = *(v10 - 8 + v67);
          *(v10 + 88 + v68) = *(v10 + 88 + v67);
          v18 -= 2;
          v65 -= 2;
          v66 -= 2;
        }

        while (v66);
        if ((v16 & 0xFFFFFFFE) != v16)
        {
          goto LABEL_36;
        }
      }

LABEL_39:
      if (v9)
      {
        v33 = 0;
        v34 = v12 - v9;
        v35 = v11 + 96;
        if (v12 < v13)
        {
          v13 = v12;
        }

        if (v13 >= v14)
        {
          v14 = v14;
        }

        else
        {
          v14 = v13;
        }

        if (v14 < 6 || v12 - 1 < v34)
        {
LABEL_50:
          v38 = v12 - v9;
        }

        else
        {
          v36 = 8 * (v9 - 1);
          v37 = v11 + 8 * v34;
          if (v10 < v37 + v36 + 104 && v37 < v10 + v36 + 104)
          {
            v33 = 0;
            goto LABEL_50;
          }

          v33 = v14 & 0x7FFFFFFE;
          v38 = v34 + (v14 & 0x7FFFFFFE);
          v62 = v33;
          v63 = v10;
          do
          {
            v64 = 8 * v34;
            *v63 = *(v11 + v64);
            v63[6] = *(v35 + v64);
            ++v63;
            v34 += 2;
            v62 -= 2;
          }

          while (v62);
          if (v33 == v14)
          {
            goto LABEL_7;
          }
        }

        v39 = (v10 + 8 * v33);
        do
        {
          *v39 = *(v11 + 8 * v38);
          v39[12] = *(v35 + 8 * v38++);
          ++v39;
        }

        while (v12 != v38);
      }

LABEL_7:
      *(a3 + 4 * v8) -= v9;
      v6 = *(a3 + 4 * v5) + v9;
      *(a3 + 4 * v5) = v6;
      v7 = *(a4 + 4 * v5);
      if (v6 >= v7)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t llvm::IntervalMapOverlaps<llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>,llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>>::advance(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 8);
    if (*(v2 + 12) < *(v2 + 8))
    {
      v3 = *(result + 104);
      if (v3)
      {
        v4 = *(result + 96);
        if (*(v4 + 12) < *(v4 + 8))
        {
          v5 = v2 + 16 * v1;
          v6 = *(v5 - 16);
          v7 = *(v5 - 4);
          v8 = v4 + 16 * v3;
          v9 = *(v8 - 16);
          v10 = *(v8 - 4);
          v11 = *(v9 + 16 * v10);
          if (*(v6 + 16 * v7 + 8) >= v11)
          {
            v14 = *(v6 + 16 * v7);
            if (*(v9 + 16 * v10 + 8) < v14)
            {
              v15 = *(result + 88);
              if (!*(v15 + 272))
              {
                v16 = *(v15 + 276);
                if (v10 == v16)
                {
                  goto LABEL_25;
                }

                do
                {
                  if (*(v15 + 16 * v10 + 8) >= v14)
                  {
                    goto LABEL_25;
                  }

                  LODWORD(v10) = v10 + 1;
                }

                while (v16 != v10);
LABEL_24:
                LODWORD(v10) = v16;
                goto LABEL_25;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v12 = *result;
            if (*(*result + 272))
            {
              v13 = result;
              llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result, v11);
              result = v13;
            }

            else
            {
              v17 = *(v12 + 276);
              if (v7 != v17)
              {
                while (*(v12 + 16 * v7 + 8) < v11)
                {
                  LODWORD(v7) = v7 + 1;
                  if (v17 == v7)
                  {
                    LODWORD(v7) = *(v12 + 276);
                    break;
                  }
                }
              }

              *(v5 - 4) = v7;
            }

            v18 = *(result + 16);
            if (v18)
            {
              v19 = *(result + 8);
              if (*(v19 + 12) < *(v19 + 8))
              {
                v20 = *(result + 96) + 16 * *(result + 104);
                v21 = *(v20 - 16);
                v22 = *(v20 - 4);
                if (*(v21 + 16 * v22 + 8) < *(*(v19 + 16 * v18 - 16) + 16 * *(v19 + 16 * v18 - 4)))
                {
                  v23 = *(v21 + 16 * v22);
                  do
                  {
                    if (!v18)
                    {
                      break;
                    }

                    if (*(v19 + 12) < *(v19 + 8))
                    {
                      v27 = *result;
                      if (*(*result + 272))
                      {
                        v28 = result;
                        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result, v23);
                        result = v28;
                      }

                      else
                      {
                        v29 = v19 + 16 * v18;
                        v30 = *(v29 - 4);
                        v31 = *(v27 + 276);
                        if (v30 != v31)
                        {
                          while (*(v27 + 16 * v30 + 8) < v23)
                          {
                            if (v31 == ++v30)
                            {
                              v30 = *(v27 + 276);
                              break;
                            }
                          }
                        }

                        *(v29 - 4) = v30;
                      }
                    }

                    v32 = *(result + 16);
                    if (!v32)
                    {
                      break;
                    }

                    v33 = *(result + 8);
                    if (*(v33 + 12) >= *(v33 + 8))
                    {
                      break;
                    }

                    v34 = *(result + 96);
                    v35 = *(result + 104);
                    v8 = v34 + 16 * v35;
                    v10 = *(v8 - 4);
                    v14 = *(*(v33 + 16 * v32 - 16) + 16 * *(v33 + 16 * v32 - 4));
                    if (*(*(v8 - 16) + 16 * v10 + 8) >= v14)
                    {
                      break;
                    }

                    if (v35 && *(v34 + 12) < *(v34 + 8))
                    {
                      v36 = *(result + 88);
                      if (*(v36 + 272))
                      {
LABEL_23:
                        v24 = result;
                        llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(result + 88, v14);
                        result = v24;
                      }

                      else
                      {
                        v16 = *(v36 + 276);
                        if (v10 != v16)
                        {
                          while (*(v36 + 16 * v10 + 8) < v14)
                          {
                            LODWORD(v10) = v10 + 1;
                            if (v16 == v10)
                            {
                              goto LABEL_24;
                            }
                          }
                        }

LABEL_25:
                        *(v8 - 4) = v10;
                      }
                    }

                    v25 = *(result + 104);
                    if (!v25)
                    {
                      break;
                    }

                    v26 = *(result + 96);
                    if (*(v26 + 12) >= *(v26 + 8))
                    {
                      break;
                    }

                    v19 = *(result + 8);
                    v18 = *(result + 16);
                    v23 = *(*(v26 + 16 * v25 - 16) + 16 * *(v26 + 16 * v25 - 4));
                  }

                  while (*(*(v19 + 16 * v18 - 16) + 16 * *(v19 + 16 * v18 - 4) + 8) < v23);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::treeAdvanceTo(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = v2 + 16 * v3;
  v5 = *(v4 - 16);
  if (*(v5 + 16 * (*(v4 - 8) - 1) + 8) >= a2)
  {
    v16 = *(v4 - 4);
    do
    {
      v17 = *(v5 + 16 * v16++ + 8);
    }

    while (v17 < a2);
    *(v4 - 4) = v16 - 1;
    return result;
  }

  *(result + 16) = v3 - 1;
  v6 = v3 - 2;
  if (v3 == 2)
  {
    v18 = *result;
    v19 = *(v2 + 12);
    v20 = *(*result + 276);
    if (v19 != v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v3 != 3)
    {
      if (*(*(v2 + 16 * (v3 - 3)) + 8 * *(v2 + 16 * (v3 - 3) + 12) + 96) >= a2)
      {
LABEL_9:
        v9 = (v2 + 16 * v6);
        v10 = *v9;
        v13 = *(v9 + 3);
        v12 = v9 + 3;
        v11 = v13;
        v14 = v10 + 96;
        do
        {
          v15 = *(v14 + 8 * v11++);
        }

        while (v15 < a2);
        *v12 = v11 - 1;
LABEL_12:

        return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
      }

      v7 = v3 - 4;
      while (1)
      {
        *(result + 16) = v7 + 2;
        if (!v7)
        {
          break;
        }

        v8 = *(*(v2 + 16 * v7) + 8 * *(v2 + 16 * v7 + 12) + 96);
        --v7;
        if (v8 >= a2)
        {
          v6 = v7 + 2;
          goto LABEL_9;
        }
      }
    }

    v18 = *result;
    v19 = *(v2 + 12);
    if (*(*result + 8 * v19 + 136) >= a2)
    {
      v24 = *(v2 + 28);
      do
      {
        v25 = *(*(v2 + 16) + 96 + 8 * v24++);
      }

      while (v25 < a2);
      *(v2 + 28) = v24 - 1;

      return llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::pathFillFind(result, a2);
    }

    v20 = *(v18 + 276);
    if (v19 != v20)
    {
LABEL_22:
      while (*(v18 + 136 + 8 * v19) < a2)
      {
        v19 = (v19 + 1);
        if (v20 == v19)
        {
          v19 = v20;
          break;
        }
      }
    }
  }

  v21 = *(v18 + 272) != 0;
  *(result + 16) = 0;
  v22 = v18 + 8 * v21;
  if (!*(result + 20))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *v2 = v22;
  *(v2 + 8) = v20 | (v19 << 32);
  v23 = *(result + 16);
  *(result + 16) = v23 + 1;
  if (v23 != -1 && *(*(result + 8) + 12) < *(*(result + 8) + 8))
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t *llvm::IntervalMap<unsigned long long,char,16u,llvm::IntervalMapInfo<unsigned long long>>::const_iterator::goToBegin(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 272))
  {
    v2 = v1 + 8;
    v3 = *(v1 + 276);
    *(result + 4) = 0;
    if (*(result + 5))
    {
      goto LABEL_6;
    }

LABEL_13:
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v3 = *(v1 + 276);
  *(result + 4) = 0;
  if (!*(result + 5))
  {
    goto LABEL_13;
  }

  v2 = v1;
LABEL_6:
  v4 = result[1];
  *v4 = v2;
  v4[1] = v3;
  ++*(result + 4);
  v5 = *(*result + 272);
  if (v5)
  {
    v6 = *(result + 4);
    for (i = v6 - 1; i < v5; *(result + 4) = i + 1)
    {
      v8 = result[1];
      v9 = *(*(v8 + 16 * i) + 8 * *(v8 + 16 * i + 12));
      if (v6 >= *(result + 5))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = (v8 + 16 * v6);
      *v10 = v9 & 0xFFFFFFFFFFFFFFC0;
      v10[1] = (v9 & 0x3F) + 1;
      i = *(result + 4);
      v6 = i + 1;
    }
  }

  return result;
}

double mlir::Region::getOps<mlir::pdl_interp::FuncOp>@<D0>(mlir::Region *a1@<X0>, uint64_t a2@<X8>)
{
  mlir::Region::OpIterator::OpIterator(&v18, a1, 1);
  mlir::Region::OpIterator::OpIterator(&v14, a1, 0);
  *&v12[8] = v18;
  v4 = v15;
  *v12 = v15;
  v11 = v14;
  *&v12[24] = v19;
  for (i = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter; *v12 != *&v12[24]; v4 = *v12)
  {
    v5 = i;
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v4);
    if ((v5)(ValuePtr))
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v11);
  }

  v14 = v11;
  v15 = *v12;
  v16 = *&v12[16];
  v17 = i;
  *v12 = v19;
  *&v12[8] = v18;
  *&v12[24] = v19;
  i = mlir::detail::op_filter_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::filter;
  v7 = *v12;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  *(a2 + 96) = *&v12[16];
  v8 = i;
  v9 = v15;
  *a2 = v14;
  *(a2 + 16) = v9;
  result = *&v16;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  *(a2 + 56) = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  *(a2 + 112) = v8;
  *(a2 + 120) = mlir::detail::op_iterator<mlir::pdl_interp::FuncOp,mlir::Region::OpIterator>::unwrap;
  return result;
}

uint64_t *llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace_with_hash<unsigned long>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4, void *a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v13 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *buffer = a3;
  buffer[2] = *a5;
  *v10 = buffer;
  ++*(a1 + 3);
  v10 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

void *anonymous namespace::ByteCodeWriter::append(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    v5 = (a2 + 24);
    do
    {
      v9 = *v5;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>,mlir::Block *,llvm::SmallVector<unsigned int,4u>,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::SmallVector<unsigned int,4u>>>::operator[](v4, &v9);
      v6 = *(result + 2);
      if (v6 >= *(result + 3))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*result + 4 * v6) = *(*(v4 + 24) + 8);
      ++*(result + 2);
      v7 = *(v4 + 24);
      v8 = v7[1];
      if (v7[2] < (v8 + 2))
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*v7 + 2 * v8) = 0;
      v7[1] += 2;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t *llvm::StringMap<unsigned short,llvm::MallocAllocator>::try_emplace_with_hash<>(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 8;
    if (a3)
    {
LABEL_4:
      memcpy(v11, a2, a3);
    }
  }

  else
  {
    if (v9)
    {
      while (!v9 || v9 == -8)
      {
        v16 = v8[1];
        ++v8;
        v9 = v16;
      }

      return v8;
    }

    buffer = llvm::allocate_buffer(a3 + 17, 8uLL);
    v11 = buffer + 8;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[4] = 0;
  *v8 = buffer;
  ++*(a1 + 3);
  v8 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v7));
  if (*v8)
  {
    v12 = *v8 == -8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    do
    {
      v14 = v8[1];
      ++v8;
      v13 = v14;
      if (v14)
      {
        v15 = v13 == -8;
      }

      else
      {
        v15 = 1;
      }
    }

    while (v15);
  }

  return v8;
}

_WORD *anonymous namespace::ByteCodeWriter::appendPDLValue(uint64_t a1, unint64_t a2)
{
  v2 = *(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136);
  if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::AttributeType,void>::id)
  {
    v3 = 0;
    v4 = *(a1 + 24);
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      goto LABEL_18;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::OperationType,void>::id)
  {
    v3 = 1;
    v4 = *(a1 + 24);
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      goto LABEL_18;
    }
  }

  else if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::RangeType,void>::id)
  {
    v14 = *(a2 + 8) & 0xFFFFFFFFFFFFFFF8;
    v10 = a1;
    v11 = a2;
    ElementType = mlir::pdl::RangeType::getElementType(&v14);
    a2 = v11;
    v13 = ElementType;
    a1 = v10;
    if (*(*v13 + 136) == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v3 = 3;
    }

    else
    {
      v3 = 5;
    }

    v4 = *(v10 + 24);
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
LABEL_18:
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }
  }

  else
  {
    if (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::TypeType,void>::id)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4 * (v2 == &mlir::detail::TypeIDResolver<mlir::pdl::ValueType,void>::id);
    }

    v4 = *(a1 + 24);
    v5 = v4[1];
    if ((v5 + 1) > v4[2])
    {
      goto LABEL_18;
    }
  }

  *(*v4 + 2 * v5) = v3;
  ++v4[1];
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v14 = a2;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>,mlir::Value,unsigned short,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,unsigned short>>::operator[](v6, &v14);
  v9 = v7[1];
  if ((v9 + 1) > v7[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*v7 + 2 * v9) = *result;
  ++v7[1];
  return result;
}