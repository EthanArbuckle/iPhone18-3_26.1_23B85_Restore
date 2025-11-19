double llvm::SmallVectorImpl<mlir::Block *>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::LookupBucketFor<mlir::Block const*>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>,mlir::Block const*,unsigned int,llvm::DenseMapInfo<mlir::Block const*,void>,llvm::detail::DenseMapPair<mlir::Block const*,unsigned int>>::LookupBucketFor<mlir::Block const*>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          *(v21 + 2) = *(v19 + 8);
          ++*(a1 + 8);
        }

        v19 += 16;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch(uint64_t a1)
{
  v151[8] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 120);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = -8 * v4;
    v6 = (*(a1 + 24) + 8 * v4 - 8);
    do
    {
      v7 = *v6;
      *v6 = 0;
      if (v7)
      {
        std::default_delete<llvm::DomTreeNodeBase<mlir::Block>>::operator()[abi:nn200100](v6, v7);
      }

      --v6;
      v5 += 8;
    }

    while (v5);
  }

  *(a1 + 32) = 0;
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 104);
    if (v9 > 4 * v8 && v9 >= 0x41)
    {
      v10 = 1 << (33 - __clz(v8 - 1));
      if (v10 <= 64)
      {
        v11 = 64;
      }

      else
      {
        v11 = v10;
      }

LABEL_15:
      if (v11 == v9)
      {
        v12 = 0;
        *(a1 + 96) = 0;
        v13 = v9 + 0xFFFFFFFFFFFFFFFLL;
        v14 = v13 & 0xFFFFFFFFFFFFFFFLL;
        v15 = (v13 & 0xFFFFFFFFFFFFFFFLL) - (v13 & 1) + 2;
        v16 = vdupq_n_s64(v14);
        v17 = (*(a1 + 88) + 16);
        do
        {
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_25D0A0500)));
          if (v18.i8[0])
          {
            *(v17 - 2) = -4096;
          }

          if (v18.i8[4])
          {
            *v17 = -4096;
          }

          v12 += 2;
          v17 += 4;
        }

        while (v15 != v12);
      }

      else
      {
        MEMORY[0x25F891030](*(a1 + 88), 8);
        if (v11)
        {
          v122 = (4 * v11 / 3u + 1) | ((4 * v11 / 3u + 1) >> 1);
          v123 = v122 | (v122 >> 2) | ((v122 | (v122 >> 2)) >> 4);
          LODWORD(v123) = (((v123 | (v123 >> 8)) >> 16) | v123 | (v123 >> 8)) + 1;
          *(a1 + 104) = v123;
          buffer = llvm::allocate_buffer((16 * v123), 8uLL);
          *(a1 + 88) = buffer;
          *(a1 + 96) = 0;
          v125 = *(a1 + 104);
          if (v125)
          {
            v126 = 0;
            v127 = v125 + 0xFFFFFFFFFFFFFFFLL;
            v128 = v127 & 0xFFFFFFFFFFFFFFFLL;
            v129 = (v127 & 0xFFFFFFFFFFFFFFFLL) - (v127 & 1) + 2;
            v130 = vdupq_n_s64(v128);
            v131 = buffer + 16;
            do
            {
              v132 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(vdupq_n_s64(v126), xmmword_25D0A0500)));
              if (v132.i8[0])
              {
                *(v131 - 2) = -4096;
              }

              if (v132.i8[4])
              {
                *v131 = -4096;
              }

              v126 += 2;
              v131 += 4;
            }

            while (v129 != v126);
          }
        }

        else
        {
          *(a1 + 88) = 0;
          *(a1 + 96) = 0;
          *(a1 + 104) = 0;
        }
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (!*(a1 + 100))
    {
      goto LABEL_31;
    }

    v9 = *(a1 + 104);
    if (v9 > 0x40)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9)
  {
    v19 = 0;
    v20 = v9 + 0xFFFFFFFFFFFFFFFLL;
    v21 = v20 & 0xFFFFFFFFFFFFFFFLL;
    v22 = (v20 & 0xFFFFFFFFFFFFFFFLL) - (v20 & 1) + 2;
    v23 = vdupq_n_s64(v21);
    v24 = (*(a1 + 88) + 16);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(vdupq_n_s64(v19), xmmword_25D0A0500)));
      if (v25.i8[0])
      {
        *(v24 - 2) = -4096;
      }

      if (v25.i8[4])
      {
        *v24 = -4096;
      }

      v19 += 2;
      v24 += 4;
    }

    while (v22 != v19);
  }

  *(a1 + 96) = 0;
LABEL_31:
  *(a1 + 8) = 0;
  *(a1 + 132) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = v3;
  __src = 0;
  v139 = v141;
  v140 = 0x4000000000;
  llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(&v139, &__src, &v146);
  v142 = 0u;
  v143 = 0;
  v144 = 0;
  __src = &v147;
  v146 = 0x100000000;
  v26 = *(*(a1 + 120) + 8);
  if (v26)
  {
    v27 = v26 - 8;
  }

  else
  {
    v27 = 0;
  }

  llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&__src, v27);
  llvm::SmallVectorImpl<mlir::Block *>::operator=(a1, &__src);
  if (__src != &v147)
  {
    free(__src);
  }

  v28 = **a1;
  __src = &v147;
  v147 = v28;
  v148 = 0;
  v146 = 0x4000000001;
  v149 = v28;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v142, &v149) + 4) = 0;
  v29 = v146;
  if (v146)
  {
    LODWORD(v30) = 0;
    while (1)
    {
      v31 = __src + 16 * v29;
      v32 = *(v31 - 2);
      v33 = *(v31 - 2);
      LODWORD(v146) = v29 - 1;
      v149 = v32;
      v34 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v142, &v149);
      llvm::SmallVectorTemplateBase<unsigned int,true>::push_back((v34 + 6), v33);
      if (!*v34)
      {
        break;
      }

LABEL_106:
      v29 = v146;
      if (!v146)
      {
        goto LABEL_107;
      }
    }

    v30 = (v30 + 1);
    v34[2] = v30;
    v34[3] = v30;
    *v34 = v30;
    v34[1] = v33;
    llvm::SmallVectorTemplateBase<mlir::Block *,true>::push_back(&v139, v32);
    if (!v144)
    {
      mlir::SuccessorRange::SuccessorRange(&v137, v32);
      v46 = v137;
      mlir::SuccessorRange::SuccessorRange(&v137, v32);
      v149 = v151;
      v150 = 0x800000000;
      v138 = v137;
      v133 = v46;
      v134 = 0;
      v135 = v46;
      v136 = 0;
      llvm::SmallVectorImpl<mlir::Block *>::append<std::reverse_iterator<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>(&v149, &v137, &v133);
      v47 = std::remove[abi:nn200100]<mlir::Block **,decltype(nullptr)>(v149, &v149[v150]);
      v48 = v149;
      v49 = ((v47 - v149) >> 3);
      LODWORD(v150) = (v47 - v149) >> 3;
      if (!v150)
      {
LABEL_104:
        if (v48 != v151)
        {
          free(v48);
        }

        goto LABEL_106;
      }

LABEL_99:
      v83 = v146;
      v84 = 8 * v49;
      do
      {
        v85 = *v48;
        if (v83 >= HIDWORD(v146))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, &v147, v83 + 1, 16);
          v83 = v146;
        }

        v1 = v1 & 0xFFFFFFFF00000000 | v30;
        v86 = __src + 16 * v83;
        *v86 = v85;
        v86[1] = v1;
        v83 = v146 + 1;
        LODWORD(v146) = v146 + 1;
        ++v48;
        v84 -= 8;
      }

      while (v84);
      v48 = v149;
      goto LABEL_104;
    }

    v35 = *(v144 + 8);
    mlir::SuccessorRange::SuccessorRange(&v137, v32);
    v36 = v137;
    mlir::SuccessorRange::SuccessorRange(&v137, v32);
    v149 = v151;
    v150 = 0x800000000;
    v138 = v137;
    v133 = v36;
    v134 = 0;
    v135 = v36;
    v136 = 0;
    llvm::SmallVectorImpl<mlir::Block *>::append<std::reverse_iterator<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>(&v149, &v137, &v133);
    v37 = std::remove[abi:nn200100]<mlir::Block **,decltype(nullptr)>(v149, &v149[v150]);
    v38 = v149;
    v39 = (v37 - v149) >> 3;
    LODWORD(v150) = v39;
    v40 = v35 + 2;
    v41 = *v35;
    if (*v35)
    {
      v42 = 4;
    }

    else
    {
      v40 = *(v35 + 1);
      v42 = v35[4];
      if (!v42)
      {
        v43 = 0;
        v44 = 0;
LABEL_43:
        v45 = &v40[18 * v44];
LABEL_50:
        v53 = &v40[18 * v43];
        goto LABEL_59;
      }
    }

    v50 = v42 - 1;
    v51 = (v42 - 1) & ((v32 >> 4) ^ (v32 >> 9));
    v45 = &v40[18 * v51];
    v52 = *v45;
    if (*v45 == v32)
    {
LABEL_48:
      if ((v41 & 1) == 0)
      {
        v40 = *(v35 + 1);
        v43 = v35[4];
        goto LABEL_50;
      }
    }

    else
    {
      v54 = 1;
      while (v52 != -4096)
      {
        v55 = v51 + v54++;
        v51 = v55 & v50;
        v45 = &v40[18 * (v55 & v50)];
        v52 = *v45;
        if (*v45 == v32)
        {
          goto LABEL_48;
        }
      }

      if ((v41 & 1) == 0)
      {
        v40 = *(v35 + 1);
        v43 = v35[4];
        v44 = v43;
        goto LABEL_43;
      }

      v45 = v35 + 74;
    }

    v53 = v35 + 74;
LABEL_59:
    if (v53 != v45)
    {
      v56 = v45[4];
      if (v56)
      {
        v57 = *(v45 + 1);
        v58 = &v57[v56];
        v59 = (v37 - v149) >> 3;
        do
        {
          v60 = *v57;
          v61 = &v38[v59];
          v62 = v38;
          if (v59)
          {
            v63 = 8 * v59;
            v62 = v38;
            while (*v62 != v60)
            {
              ++v62;
              v63 -= 8;
              if (!v63)
              {
                v62 = &v38[v59];
                goto LABEL_76;
              }
            }
          }

          v64 = v62 + 1;
          if (v62 != v61 && v64 != v61)
          {
            v66 = &v38[v59] - v62 - 8;
            do
            {
              if (*v64 != v60)
              {
                *v62++ = *v64;
              }

              ++v64;
              v66 -= 8;
            }

            while (v66);
            v38 = v149;
          }

LABEL_76:
          v59 = (v62 - v38) >> 3;
          ++v57;
        }

        while (v57 != v58);
        LODWORD(v150) = (v62 - v38) >> 3;
        v39 = (v62 - v38) >> 3;
      }

      else
      {
        v59 = (v37 - v149) >> 3;
      }

      v67 = *(v45 + 5);
      v68 = v45[12];
      v69 = &v67[8 * v68];
      if (v59 == v39)
      {
        llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(&v149, *(v45 + 5), &v67[8 * v68]);
      }

      else
      {
        v70 = v39;
        v71 = v68 + v39;
        v72 = v38;
        if (v71 > HIDWORD(v150))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v151, v71, 8);
          v72 = v149;
          v70 = v150;
          LODWORD(v39) = v150;
        }

        v73 = 8 * v59;
        v74 = &v72[v73];
        v75 = &v72[8 * v70];
        v76 = 8 * v70 - v73;
        v77 = v76 >> 3;
        if (v76 >> 3 >= v68)
        {
          v80 = v68 + v39;
          if (v80 > HIDWORD(v150))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v151, v80, 8);
            LODWORD(v39) = v150;
          }

          if (v68)
          {
            v81 = &v149[v39];
            v82 = -8 * v68;
            do
            {
              *v81++ = *&v75[v82];
              v82 += 8;
            }

            while (v82);
          }

          LODWORD(v150) = v39 + v68;
          if (&v75[-8 * v68] != v74)
          {
            memmove(&v74[8 * v68], v74, &v75[-8 * v68] - v74);
          }

          if (v68)
          {
            memmove(v74, v67, 8 * v68);
          }
        }

        else
        {
          v78 = v39 + v68;
          LODWORD(v150) = v78;
          if (8 * v70 != v73)
          {
            memcpy(&v72[8 * v78 + -8 * v77], &v72[v73], v76);
            do
            {
              v79 = *v67;
              v67 += 8;
              *v74 = v79;
              v74 += 8;
              --v77;
            }

            while (v77);
          }

          if (v67 != v69)
          {
            memcpy(v75, v67, v69 - v67);
          }
        }
      }
    }

    v49 = v150;
    v48 = v149;
    if (!v150)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_107:
  if (__src != &v147)
  {
    free(__src);
  }

  v87 = v140;
  v149 = v151;
  v150 = 0x800000001;
  v151[0] = 0;
  if (v140 < 9)
  {
    if (v140 < 2)
    {
      goto LABEL_114;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v149, v151, v140, 8);
  }

  v88 = 1;
  do
  {
    __src = *(v139 + v88);
    v89 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v142, &__src);
    *(v89 + 16) = *(v139 + *(v89 + 4));
    llvm::SmallVectorTemplateBase<llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec *,true>::push_back(&v149, v89);
    ++v88;
  }

  while (v87 != v88);
LABEL_114:
  v90 = &v147;
  __src = &v147;
  v146 = 0x2000000000;
  v91 = (v87 - 1);
  if (v91 >= 2)
  {
    v92 = v149;
    v93 = v87;
    do
    {
      v94 = v92[v91];
      v95 = *(v94 + 4);
      *(v94 + 8) = v95;
      v96 = *(v94 + 32);
      if (v96)
      {
        v97 = *(v94 + 24);
        v98 = &v97[v96];
        do
        {
          v99 = v92[*v97];
          if (*(v99 + 4) >= v93)
          {
            do
            {
              llvm::SmallVectorTemplateBase<llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec *,true>::push_back(&__src, v99);
              v99 = v92[*(v99 + 4)];
              v101 = *(v99 + 4);
            }

            while (v101 >= v93);
            v102 = v92[*(v99 + 12)];
            v90 = __src;
            v103 = __src - 8;
            v104 = v146;
            do
            {
              v105 = *&v103[8 * v104];
              *(v105 + 4) = v101;
              v100 = *(v105 + 12);
              v106 = v92[v100];
              if (*(v102 + 8) < *(v106 + 8))
              {
                v100 = *(v99 + 12);
                *(v105 + 12) = v100;
                v106 = v102;
              }

              v99 = v105;
              v102 = v106;
              --v104;
            }

            while (v104);
            LODWORD(v146) = 0;
            v92 = v149;
            v95 = *(v94 + 8);
          }

          else
          {
            v100 = *(v99 + 12);
          }

          v107 = *(v92[v100] + 8);
          if (v107 < v95)
          {
            *(v94 + 8) = v107;
            v95 = v107;
          }

          ++v97;
        }

        while (v97 != v98);
      }

      v93 = v91--;
    }

    while ((v91 & 0xFFFFFFFE) != 0);
    if (v87 >= 3)
    {
      for (i = 2; i != v87; ++i)
      {
        v109 = v149[i];
        v110 = *v149[*(v109 + 8)];
        v111 = (v109 + 16);
        v112 = (v109 + 16);
        do
        {
          v113 = *v112;
          *&v137 = *v112;
          v114 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](&v142, &v137);
          v115 = *v114;
          v112 = (v114 + 4);
        }

        while (v115 > v110);
        *v111 = v113;
      }

      v90 = __src;
    }

    if (v90 != &v147)
    {
      free(v90);
    }
  }

  if (v149 != v151)
  {
    free(v149);
  }

  if (*(a1 + 8))
  {
    v116 = **a1;
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

  v117 = v142;
  if (v143)
  {
    v118 = (v142 + 48);
    v119 = v143 << 6;
    do
    {
      if ((*(v118 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v120 = *(v118 - 2);
        if (v118 != v120)
        {
          free(v120);
        }
      }

      v118 += 8;
      v119 -= 64;
    }

    while (v119);
    v117 = v142;
  }

  MEMORY[0x25F891030](v117, 8);
  if (v139 != v141)
  {
    free(v139);
  }

  v121 = *MEMORY[0x277D85DE8];
}

void llvm::SmallVectorImpl<mlir::Block *>::append<mlir::Block * const*,void>(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v6 = a3 - __src;
  v7 = *(a1 + 8);
  v8 = v7 + ((a3 - __src) >> 3);
  if (v8 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v8, 8);
    LODWORD(v7) = *(a1 + 8);
  }

  if (__src != a3)
  {
    memcpy((*a1 + 8 * v7), __src, v6);
    LODWORD(v7) = *(a1 + 8);
  }

  *(a1 + 8) = v7 + (v6 >> 3);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), *a2, &v9);
  v5 = v9;
  if (v4)
  {
    return v5 + 8;
  }

  v10 = v9;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
    goto LABEL_9;
  }

  if (v7 + ~v6 - *(a1 + 12) <= v7 >> 3)
  {
LABEL_9:
    llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(a1, v7);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), *a2, &v10);
    v6 = *(a1 + 8);
    v5 = v10;
  }

  *(a1 + 8) = v6 + 1;
  if (*v5 != -4096)
  {
    --*(a1 + 12);
  }

  *v5 = *a2;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 56) = 0;
  *(v5 + 32) = v5 + 48;
  *(v5 + 44) = 4;
  return v5 + 8;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (a1 + (v4 << 6));
    v6 = *v5;
    if (*v5 == a3)
    {
      v7 = 1;
    }

    else
    {
      v9 = 0;
      v10 = 1;
      while (v6 != -4096)
      {
        if (v9)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6 == -8192;
        }

        if (v11)
        {
          v9 = v5;
        }

        v12 = v4 + v10++;
        v4 = v12 & (a2 - 1);
        v5 = (a1 + (v4 << 6));
        v6 = *v5;
        v7 = 1;
        if (*v5 == a3)
        {
          goto LABEL_5;
        }
      }

      v7 = 0;
      if (v9)
      {
        v5 = v9;
      }
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

LABEL_5:
  *a4 = v5;
  return v7;
}

char *llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((v8 << 6), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x3FFFFFFFFFFFFFFLL;
      v13 = v12 & 0x3FFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x3FFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 64;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 8) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 16;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = v4 + 32;
      v19 = v3 << 6;
      do
      {
        v20 = *(v18 - 32);
        if ((v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v34 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(*a1, *(a1 + 16), v20, &v34);
          v21 = v34;
          v22 = v34;
          *v34 = *(v18 - 32);
          v23 = *(v18 - 24);
          v24 = *(v18 - 8);
          v21[4] = v22 + 6;
          v25 = (v21 + 4);
          *(v25 - 8) = v24;
          *(v25 - 24) = v23;
          *(v25 + 8) = 0x400000000;
          if (*(v18 + 8))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(v25, v18);
          }

          ++*(a1 + 8);
          if (v18 + 16 != *v18)
          {
            free(*v18);
          }
        }

        v18 += 64;
        v19 -= 64;
      }

      while (v19);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = v26 + 0x3FFFFFFFFFFFFFFLL;
    v29 = v28 & 0x3FFFFFFFFFFFFFFLL;
    v30 = (v28 & 0x3FFFFFFFFFFFFFFLL) - (v28 & 1) + 2;
    v31 = vdupq_n_s64(v29);
    v32 = result + 64;
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v27), xmmword_25D0A0500)));
      if (v33.i8[0])
      {
        *(v32 - 8) = -4096;
      }

      if (v33.i8[4])
      {
        *v32 = -4096;
      }

      v27 += 2;
      v32 += 16;
    }

    while (v30 != v27);
  }

  return result;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<unsigned int>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 4 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 4 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 4);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 4 * v7), (*a2 + 4 * v7), 4 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 4 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 4 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 4);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 4 * v5), (*a2 + 4 * v5), 4 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<unsigned int>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void llvm::SmallVectorImpl<mlir::Block *>::append<std::reverse_iterator<llvm::detail::indexed_accessor_range_base<mlir::SuccessorRange,mlir::BlockOperand *,mlir::Block *,mlir::Block *,mlir::Block *>::iterator>,void>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  v7 = *(a3 + 24);
  v8 = v6 - v7;
  v9 = *(a1 + 8);
  v10 = v6 - v7 + v9;
  if (v10 > *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v10, 8);
    v6 = *(a2 + 24);
    v7 = *(a3 + 24);
    v9 = *(a1 + 8);
  }

  v11 = v7 - v6;
  if (v11)
  {
    v12 = (*a1 + 8 * v9);
    v13 = (*(a2 + 16) + 32 * v6 - 8);
    do
    {
      v14 = *v13;
      v13 -= 4;
      *v12++ = v14;
    }

    while (!__CFADD__(v11++, 1));
  }

  *(a1 + 8) = v9 + v8;
}

void *std::remove[abi:nn200100]<mlir::Block **,decltype(nullptr)>(void *result, void *a2)
{
  if (result != a2)
  {
    while (*result)
    {
      if (++result == a2)
      {
        return a2;
      }
    }
  }

  if (result != a2)
  {
    for (i = result + 1; i != a2; ++i)
    {
      if (*i)
      {
        *result++ = *i;
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::doFind<mlir::Block const*>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

void llvm::SmallVectorTemplateBase<llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NodeIndex = llvm::DominatorTreeBase<mlir::Block,false>::getNodeIndex(a3, a2);
  if ((NodeIndex & 0x100000000) == 0 || NodeIndex >= *(a3 + 32) || (result = *(*(a3 + 24) + 8 * NodeIndex)) == 0)
  {
    v9 = a2;
    v8 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v9);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, *(v8 + 16), a3);

    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

  return result;
}

void std::default_delete<llvm::DomTreeNodeBase<mlir::Block>>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
    if (v2 != (a2 + 40))
    {
      free(v2);
    }

    JUMPOUT(0x25F891040);
  }
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::InsertIntoBucketImpl<mlir::Block *>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(a1, v4, v4 + 16 * v3);

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
    v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
    v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
    v15 = vdupq_n_s64(v13);
    v16 = result + 16;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
      if (v17.i8[0])
      {
        *(v16 - 2) = -4096;
      }

      if (v17.i8[4])
      {
        *v16 = -4096;
      }

      v11 += 2;
      v16 += 4;
    }

    while (v14 != v11);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::moveFromOldBuckets(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v6 + 0xFFFFFFFFFFFFFFFLL;
    v9 = v8 & 0xFFFFFFFFFFFFFFFLL;
    v10 = (v8 & 0xFFFFFFFFFFFFFFFLL) - (v8 & 1) + 2;
    v11 = vdupq_n_s64(v9);
    v12 = (*result + 16);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v7), xmmword_25D0A0500)));
      if (v13.i8[0])
      {
        *(v12 - 2) = -4096;
      }

      if (v13.i8[4])
      {
        *v12 = -4096;
      }

      v7 += 2;
      v12 += 4;
    }

    while (v10 != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>,mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>>::LookupBucketFor<mlir::Block *>(v5, a2, &v14);
      *v14 = *a2;
      *(v14 + 8) = *(a2 + 8);
      ++*(v5 + 8);
    }

    a2 += 16;
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>,mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::LookupBucketFor<mlir::Region *>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>,mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>,llvm::DenseMapInfo<mlir::Region *,void>,llvm::detail::DenseMapPair<mlir::Region *,llvm::PointerIntPair<llvm::DominatorTreeBase<mlir::Block,false> *,1u,BOOL,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>,llvm::PointerIntPairInfo<llvm::DominatorTreeBase<mlir::Block,false> *,1u,llvm::PointerLikeTypeTraits<llvm::DominatorTreeBase<mlir::Block,false> *>>>>>::LookupBucketFor<mlir::Region *>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t mlir::Type::hasTrait<mlir::TypeTrait::IsDynamicType>(uint64_t **a1)
{
  v1 = **a1;
  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID();
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

BOOL mlir::DynamicType::parse(uint64_t a1, void *a2, uint64_t *a3)
{
  v29[15] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x600000000;
  v6 = a2 + 8;
  v7 = a2[11];
  if ((v7 & 2) == 0)
  {
    v6 = *v6;
  }

  if ((*(v7 & 0xFFFFFFFFFFFFFFF8))(v6, a1, &v25))
  {
    v18 = a1;
    v8 = v25;
    v9 = v26;
    v10 = a2 + 4;
    v11 = a2[7];
    if ((v11 & 2) == 0)
    {
      v10 = *v10;
    }

    if ((*(v11 & 0xFFFFFFFFFFFFFFF8))(v10, _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l, &v18, v25, v26))
    {
      v20 = a2[16];
      v12 = *v20;
      v19[0] = a2;
      v19[1] = &v20;
      v24[0] = _ZN4llvm12function_refIFvPN4mlir6detail18DynamicTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_;
      v24[1] = v19;
      v22 = a2;
      v23[0] = v8;
      v23[1] = v9;
      memset(v29, 0, 112);
      v29[14] = 0xFF51AFD7ED558CCDLL;
      v28 = a2;
      v13 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Attribute>>(&v28, 0, v29, &v29[7], v23);
      v21 = &v22;
      v28 = &v22;
      v29[0] = v24;
      v14 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 384), a2, v13, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v21, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v28);
    }

    else
    {
      v14 = 0;
    }

    *a3 = v14;
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  if (v25 != v27)
  {
    free(v25);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t mlir::DynamicType::print(mlir::DynamicType *this, mlir::AsmPrinter *a2)
{
  v4 = *(*this + 8);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = *(*this + 8);
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v8, v6, v7);
  v10 = *(*this + 8);
  v9 = *(*this + 16);
  v11 = (v10 + 96);
  v12 = *(*this + 24);
  v13 = *(v10 + 120);
  v14 = *(v13 & 0xFFFFFFFFFFFFFFF8);
  if ((v13 & 2) == 0)
  {
    v11 = *v11;
  }

  return v14(v11, a2, v9, v12);
}

void *mlir::OperationName::Impl::Impl(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_286E788F8;
  a1[1] = a2;
  a1[2] = a4;
  a1[3] = a3;
  a1[4] = a1 + 6;
  v6 = (a1 + 4);
  a1[5] = 0x300000000;
  if (*(a5 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v6, a5);
  }

  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void mlir::ExtensibleDialect::ExtensibleDialect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *a1 = &unk_286E78B58;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 140) = 16;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0x1000000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 224;
  *(a1 + 216) = 0x400000000;
  *(a1 + 256) = a1 + 272;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  operator new();
}

uint64_t mlir::ExtensibleDialect::parseOptionalDynamicType(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3, uint64_t a4, void *a5)
{
  v8 = llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::find(a1 + 120, a2, a3);
  if (*(a1 + 120) + 8 * *(a1 + 128) == v8 || (v9 = *(*v8 + 8)) == 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v13 = 0;
    if (mlir::DynamicType::parse(a4, v9, &v13))
    {
      *a5 = v13;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = 1;
  }

  return v10 | (v11 << 8);
}

uint64_t mlir::ExtensibleDialect::printIfDynamicType(uint64_t *a1, mlir::AsmPrinter *a2)
{
  v7 = a1;
  if (mlir::Type::hasTrait<mlir::TypeTrait::IsDynamicType>(&v7))
  {
    v4 = a1;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  if (!v4)
  {
    return 0;
  }

  mlir::DynamicType::print(&v6, a2);
  return 1;
}

BOOL mlir::AsmParser::parseKeyword(mlir::AsmParser *this, llvm::StringRef *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 416))(this, a2);
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v9 = "expected valid keyword";
    v10 = 259;
    (*(*this + 24))(v11, this, v4, &v9);
    v6 = (v12 & 1) == 0;
    mlir::InFlightDiagnostic::~InFlightDiagnostic(v11);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void mlir::ExtensibleDialect::~ExtensibleDialect(mlir::ExtensibleDialect *this)
{
  *this = &unk_286E78B58;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 192);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 192);
  llvm::StringMap<mlir::DynamicAttrDefinition *,llvm::MallocAllocator>::~StringMap(this + 168);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>::destroyAll(this + 144);
  MEMORY[0x25F891030](*(this + 18), 8);
  llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::destroyAll(this + 96);
  MEMORY[0x25F891030](*(this + 12), 8);

  mlir::Dialect::~Dialect(this);
}

{
  *this = &unk_286E78B58;
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(this + 192);
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 192);
  llvm::StringMap<mlir::DynamicAttrDefinition *,llvm::MallocAllocator>::~StringMap(this + 168);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>::destroyAll(this + 144);
  MEMORY[0x25F891030](*(this + 18), 8);
  llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::~StringMap(this + 120);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::destroyAll(this + 96);
  MEMORY[0x25F891030](*(this + 12), 8);
  mlir::Dialect::~Dialect(this);

  JUMPOUT(0x25F891040);
}

void *llvm::detail::UniqueFunctionBase<void,mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

void *llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

void *llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t _ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_9AsmParser10getCheckedINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_11SmallVectorINS1_9AttributeELj6EEEEEEDaDpOT0_EUlvE_EES2_l(void *a1)
{
  v1 = *a1;
  v2 = (*(**a1 + 16))(*a1);
  v5 = 257;
  return (*(*v1 + 24))(v1, v2, v4);
}

uint64_t llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::UniqueFunctionBase(uint64_t a1, __int128 *a2)
{
  *(a1 + 24) = 0;
  v3 = *(a2 + 3);
  *(a1 + 24) = v3;
  if (v3 >= 8)
  {
    if ((v3 & 2) != 0 && (v3 & 4) != 0)
    {
      (*((v3 & 0xFFFFFFFFFFFFFFF8) + 8))(a1, a2);
      (*((*(a1 + 24) & 0xFFFFFFFFFFFFFFF8) + 16))(a2);
    }

    else
    {
      v5 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v5;
    }

    *(a2 + 3) = 0;
  }

  return a1;
}

void *llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::OpAsmParser &,mlir::OperationState &>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Reset(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if (v2)
  {
    v3 = *(result + 64);
    v4 = 16 * v2;
    do
    {
      v5 = *v3;
      v3 += 2;
      result = MEMORY[0x25F891030](v5, 8);
      v4 -= 16;
    }

    while (v4);
  }

  *(v1 + 72) = 0;
  v6 = *(v1 + 24);
  if (v6)
  {
    *(v1 + 80) = 0;
    v7 = *(v1 + 16);
    v8 = *v7 + 4096;
    *v1 = *v7;
    *(v1 + 8) = v8;
    if (v6 != 1)
    {
      v9 = v7 + 1;
      v10 = 8 * v6 - 8;
      do
      {
        v11 = *v9++;
        result = MEMORY[0x25F891030](v11, 8);
        v10 -= 8;
      }

      while (v10);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t llvm::StringMap<mlir::DynamicAttrDefinition *,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicAttrDefinition>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          llvm::detail::UniqueFunctionBase<void,mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase((v4 + 96));
          llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &>::~UniqueFunctionBase((v4 + 64));
          llvm::detail::UniqueFunctionBase<llvm::LogicalResult,llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase((v4 + 32));
          if (*(v4 + 23) < 0)
          {
            operator delete(*v4);
          }

          result = MEMORY[0x25F891040](v4, 0x10B2C40E03DEE84);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

void *llvm::detail::UniqueFunctionBase<llvm::LogicalResult,llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      MEMORY[0x25F891030](*v1, v1[2]);
    }
  }

  return v1;
}

uint64_t llvm::StringMap<mlir::DynamicTypeDefinition *,llvm::MallocAllocator>::~StringMap(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>,mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,std::unique_ptr<mlir::DynamicTypeDefinition>>>::destroyAll(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 16 * v1;
    v3 = (*result + 8);
    do
    {
      if ((*(v3 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *v3;
        *v3 = 0;
        if (v4)
        {
          llvm::detail::UniqueFunctionBase<void,mlir::AsmPrinter &,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase((v4 + 96));
          llvm::detail::UniqueFunctionBase<llvm::ParseResult,mlir::AsmParser &,llvm::SmallVectorImpl<mlir::Attribute> &>::~UniqueFunctionBase((v4 + 64));
          llvm::detail::UniqueFunctionBase<llvm::LogicalResult,llvm::function_ref<mlir::InFlightDiagnostic ()(void)>,llvm::ArrayRef<mlir::Attribute>>::~UniqueFunctionBase((v4 + 32));
          if (*(v4 + 23) < 0)
          {
            operator delete(*v4);
          }

          result = MEMORY[0x25F891040](v4, 0x10B2C40E03DEE84);
        }
      }

      v3 += 2;
      v2 -= 16;
    }

    while (v2);
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, void *a2)
{
  v2 = *a1;
  if (a2[1] != **a1)
  {
    return 0;
  }

  v3 = a2[3];
  if (v3 != v2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = a2[2];
  v5 = v2[1];
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::DynamicTypeStorage * mlir::StorageUniquer::get<mlir::detail::DynamicTypeStorage,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &>(llvm::function_ref<void ()(mlir::detail::DynamicTypeStorage *)>,mlir::TypeID,mlir::DynamicTypeDefinition *&,llvm::ArrayRef<mlir::Attribute> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  v6 = *v4;
  v7 = mlir::StorageUniquer::StorageAllocator::copyInto<mlir::Attribute>(a2, v4[1], v4[2]);
  *v5 = 0;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  v9 = a1[1];
  if (*v9)
  {
    (*v9)(v9[1], v5);
  }

  return v5;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18DynamicTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11DynamicTypeEJRPNS1_21DynamicTypeDefinitionERNS_8ArrayRefINS1_9AttributeEEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESK_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSM_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3240);
}

uint64_t llvm::getTypeName<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>();
    unk_27FC17CC0 = v1;
  }

  return llvm::getTypeName<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::TypeTrait::IsDynamicType<mlir::TypeID mlir::TypeID::get<mlir::TypeTrait::IsDynamicType>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::TypeTrait::IsDynamicType<Empty>]";
  v6 = 99;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Diagnostic::operator<<<45ul>(uint64_t a1, char *__s)
{
  v7 = 3;
  v8 = __s;
  v9 = strlen(__s);
  v3 = llvm::SmallVectorTemplateCommon<mlir::DiagnosticArgument,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<mlir::DiagnosticArgument,true>>(a1 + 16, &v7, 1);
  v4 = *(a1 + 16) + 24 * *(a1 + 24);
  v5 = *v3;
  *(v4 + 16) = *(v3 + 16);
  *v4 = v5;
  ++*(a1 + 24);
  return a1;
}

uint64_t mlir::IntegerSet::getEmptySet(mlir::IntegerSet *this, int a2, mlir::MLIRContext *a3, mlir::MLIRContext *a4)
{
  v5 = this;
  AffineConstantExpr = mlir::getAffineConstantExpr(1, a3, a3);
  v7 = 1;
  return mlir::IntegerSet::get(v5, a2, &AffineConstantExpr, 1, &v7, 1);
}

uint64_t mlir::IntegerSet::replaceDimsAndSymbols(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7)
{
  v26[8] = *MEMORY[0x277D85DE8];
  v24 = v26;
  v25 = 0x800000000;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15 >= 9uLL)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v26, v15, 8);
    v14 = *a1;
    v15 = *(*a1 + 16);
  }

  if (v15)
  {
    v16 = *(v14 + 8);
    v17 = 8 * v15;
    do
    {
      v18 = *v16++;
      v23 = v18;
      v19 = mlir::AffineExpr::replaceDimsAndSymbols(&v23, a2, a3, a4, a5);
      llvm::SmallVectorTemplateBase<mlir::AffineExpr,true>::push_back(&v24, v19);
      v17 -= 8;
    }

    while (v17);
    v14 = *a1;
  }

  v20 = mlir::IntegerSet::get(a6, a7, v24, v25, *(v14 + 24), *(v14 + 32));
  if (v24 != v26)
  {
    free(v24);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t mlir::CallSiteLoc::get(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id;
  v7[1] = v2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_;
  v11[1] = v7;
  v9 = a1;
  v10 = a2;
  memset(v13, 0, sizeof(v13));
  v14 = 0xFF51AFD7ED558CCDLL;
  v12 = ((a1 >> 4) ^ (a1 >> 9));
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Location>(&v12, 0, v13, &v13[3] + 8, &v10);
  v8 = &v9;
  v12 = &v9;
  *&v13[0] = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v12);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FileLineColRange::get(uint64_t a1)
{
  v1 = *(**a1 + 32);
  v4 = 0uLL;
  v2 = *v1;
  v5[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v5[1] = v1;
  return mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>((v2 + 560), _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v5, a1, &v4);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2)
{
  v2 = *(**a1 + 32);
  v5 = a2;
  *&v6 = &v5;
  *(&v6 + 1) = 1;
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v7[1] = v2;
  return mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>((v3 + 560), _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v7, a1, &v6);
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(**a1 + 32);
  v9[0] = a2;
  v9[1] = a3;
  *&v7 = v9;
  *(&v7 + 1) = 2;
  v4 = *v3;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v8[1] = v3;
  result = mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>((v4 + 560), _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v8, a1, &v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FileLineColRange::get(mlir::StringAttr *a1, const char *a2, const llvm::Twine *a3, int a4, int a5)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = "-";
  v16 = 261;
  if (a3)
  {
    v9 = a2;
  }

  v15[0] = v9;
  v15[1] = v8;
  v10 = mlir::StringAttr::get(a1, v15, a3);
  v22[0] = a4;
  v22[1] = a5;
  v11 = *a1;
  v17[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v17[1] = a1;
  v21[0] = _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v21[1] = v17;
  v19 = v10;
  v20[0] = v22;
  v20[1] = 2;
  memset(v24, 0, sizeof(v24));
  memset(__dst, 0, sizeof(__dst));
  v25 = 0;
  v26 = 0xFF51AFD7ED558CCDLL;
  v12 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,llvm::ArrayRef<unsigned int>>(__dst, __dst, v24, v10, v20);
  v18 = &v19;
  *&__dst[0] = &v19;
  *(&__dst[0] + 1) = v21;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v11 + 560), &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, v12, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v18, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2, int a3, int a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(**a1 + 32);
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  *&v8 = v10;
  *(&v8 + 1) = 3;
  v5 = *v4;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v9[1] = v4;
  result = mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>((v5 + 560), _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v9, a1, &v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FileLineColRange::get(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(**a1 + 32);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = a5;
  v11[3] = a4;
  *&v9 = v11;
  *(&v9 + 1) = 4;
  v6 = *v5;
  v10[0] = &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id;
  v10[1] = v5;
  result = mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>((v6 + 560), _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_, v10, a1, &v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::FusedLoc::get(uint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v12[1] = v8;
  v10[0] = a2;
  v10[1] = a3;
  v11 = a4;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Location>,mlir::Attribute>(v13, v13, v14, a2, a3, &v11);
  v9 = v10;
  *&v13[0] = v10;
  *(&v13[0] + 1) = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::NameLoc::get(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(**a1 + 32);
  v3 = *v2;
  v7[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v7[1] = v2;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_;
  v11[1] = v7;
  v9 = a1;
  v10 = a2;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Location>(__dst, __dst, v13, a1, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 560), &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::NameLoc::get(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(**a1 + 32);
  v2 = *v1;
  v3 = *(*v1 + 616);
  v7[0] = &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id;
  v7[1] = v1;
  v11[0] = _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrENS1_10UnknownLocEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v11[1] = v7;
  v9 = a1;
  v10 = v3;
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Location>(__dst, __dst, v13, a1, &v10);
  v8 = &v9;
  *&__dst[0] = &v9;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v2 + 560), &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v8, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::OpaqueLoc::get(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(**a3 + 32);
  v4 = *v3;
  v8[0] = &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id;
  v8[1] = v3;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_;
  v12[1] = v8;
  v10[0] = a1;
  v10[1] = a2;
  v11 = a3;
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v18 = 0xFF51AFD7ED558CCDLL;
  v13 = a1;
  v14 = ((a2 >> 4) ^ (a2 >> 9));
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Location>(&v13, 0, v15, v16, &v11);
  v9 = v10;
  v13 = v10;
  v14 = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*(v4 + 560), &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, v5, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v13);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::LocationAttr::walk(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v10[1] = a3;
  v9 = 0;
  v8 = 0u;
  memset(v7, 0, sizeof(v7));
  v11[0] = &unk_286E78BF8;
  v11[1] = v10;
  v11[3] = v11;
  mlir::AttrTypeWalker::addWalk(v7, v11);
  std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v11);
  v4 = mlir::AttrTypeWalker::walkImpl<mlir::Attribute,std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(v7, *a1, v7, 0);
  MEMORY[0x25F891030](v8, 8);
  v11[0] = &v7[1] + 1;
  std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](v11);
  v11[0] = v7;
  std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](v11);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t mlir::AttrTypeWalker::addWalk(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__throw_length_error[abi:nn200100]();
    }

    v9 = v5 - *a1;
    v10 = v9 >> 4;
    if (v9 >> 4 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v17[4] = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(a1, v11);
    }

    v12 = 32 * v8;
    std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::__value_func[abi:nn200100](v12, a2);
    v7 = v12 + 32;
    v13 = a1[1];
    v14 = v12 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<mlir::WalkResult ()(mlir::Attribute)>>,std::function<mlir::WalkResult ()(mlir::Attribute)>*>(a1, *a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    a1[1] = v12 + 32;
    v16 = a1[2];
    a1[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::function<mlir::WalkResult ()(mlir::Attribute)>>::~__split_buffer(v17);
  }

  else
  {
    result = std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::__value_func[abi:nn200100](v4, a2);
    v7 = result + 32;
  }

  a1[1] = v7;
  return result;
}

uint64_t mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(uint64_t **a1)
{
  v1 = **a1;
  v2 = (v1 + 72);
  v3 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v4 = *(v1 + 96);
  v5 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  if ((v4 & 2) == 0)
  {
    v2 = *v2;
  }

  return v5(v2, v3);
}

uint64_t mlir::FusedLoc::get(void **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v31 = 0u;
  v33 = v35;
  v34 = 0x400000000;
  if (!a2)
  {
LABEL_21:
    if (a3)
    {
      v14 = *a4;
      v18 = *(*a4 + 616);
      v22 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
      v23 = a4;
      v27 = a3;
      v28 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_;
      v29 = &v22;
      v30 = v18;
      v25 = &v30;
      v26 = 1;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
      v43 = 0;
      v44 = 0xFF51AFD7ED558CCDLL;
      v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Location>,mlir::Attribute>(&v36, &v36, &v40, &v30, 1, &v27);
      v24 = &v25;
      *&v36 = &v25;
      *(&v36 + 1) = &v28;
      v16 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
      v17 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
LABEL_23:
      v19 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v14 + 560), &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, v15, v16, &v24, v17, &v36);
    }

    else
    {
      v19 = *(*a4 + 616);
    }

    goto LABEL_26;
  }

  v6 = a1;
  v7 = &a1[a2];
  do
  {
    v8 = *v6;
    *&v36 = v8;
    v9 = *(*v8 + 136);
    if (v8)
    {
      v10 = v9 == &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (v8[3] != a3)
      {
LABEL_10:
        llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(&v31, &v36);
        goto LABEL_11;
      }

      v11 = v8[2];
      if (v11)
      {
        v12 = v8[1];
        v13 = 8 * v11;
        do
        {
          llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(&v31, v12++);
          v13 -= 8;
        }

        while (v13);
      }
    }

    else if (v9 != &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id)
    {
      goto LABEL_10;
    }

LABEL_11:
    ++v6;
  }

  while (v6 != v7);
  if (!v34)
  {
    goto LABEL_21;
  }

  if (v34 != 1 || a3)
  {
    v14 = *a4;
    v22 = &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id;
    v23 = a4;
    v28 = _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJRNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_;
    v29 = &v22;
    v25 = v33;
    v26 = v34;
    v27 = a3;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v43 = 0;
    v44 = 0xFF51AFD7ED558CCDLL;
    v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Location>,mlir::Attribute>(&v36, &v36, &v40, v33, v34, &v27);
    v24 = &v25;
    *&v36 = &v25;
    *(&v36 + 1) = &v28;
    v16 = llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>;
    v17 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>;
    goto LABEL_23;
  }

  v19 = *v33;
LABEL_26:
  if (v33 != v35)
  {
    free(v33);
  }

  MEMORY[0x25F891030](v31, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void llvm::SetVector<mlir::Location,llvm::SmallVector<mlir::Location,4u>,llvm::DenseSet<mlir::Location,llvm::DenseMapInfo<mlir::Location,void>>,4u>::insert(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8))
  {
    llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, a2);
    if (v13[16] == 1)
    {
      v4 = *a2;

      llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(a1 + 24, v4);
    }
  }

  else
  {
    v5 = (a1 + 24);
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *a2;
      v8 = 8 * v6;
      v9 = *(a1 + 24);
      while (*v9 != v7)
      {
        ++v9;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = *(a1 + 24);
    }

    if (v9 == (*(a1 + 24) + 8 * v6))
    {
      v7 = *a2;
LABEL_14:
      llvm::SmallVectorTemplateBase<mlir::Location,true>::push_back(a1 + 24, v7);
      v10 = *(a1 + 32);
      if (v10 >= 5)
      {
        v11 = *v5;
        v12 = 8 * v10;
        do
        {
          llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>(v13, a1, v11++);
          v12 -= 8;
        }

        while (v12);
      }
    }
  }
}

uint64_t std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::function<mlir::WalkResult ()(mlir::Attribute)>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::function<mlir::WalkResult ()(mlir::Attribute)>>,std::function<mlir::WalkResult ()(mlir::Attribute)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::__value_func[abi:nn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    do
    {
      std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v6);
      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<std::function<mlir::WalkResult ()(mlir::Attribute)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::function<mlir::WalkResult ()(mlir::Type)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<mlir::WalkResult ()(mlir::Type)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<mlir::WalkResult ()(mlir::Type)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::vector<std::function<mlir::WalkResult ()(mlir::Attribute)>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Location>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, _DWORD *a5)
{
  v9 = a2;
  v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v9, a3, a4, (*a5 >> 4) ^ (*a5 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v7, a4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::CallSiteLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::CallSiteLocAttrStorage,mlir::Location &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::CallSiteLocAttrStorage *)>,mlir::TypeID,mlir::Location &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail22CallSiteLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_11CallSiteLocEJRNS1_8LocationESC_EEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v10 = a4;
  v11 = *a5;
  memset(v14, 0, sizeof(v14));
  memset(__dst, 0, sizeof(__dst));
  v15 = 0;
  v16 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,llvm::ArrayRef<unsigned int>>(__dst, __dst, v14, a4, &v11);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v12;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,llvm::ArrayRef<unsigned int>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, unint64_t *a3, unsigned int a4, uint64_t a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<unsigned int>>(a1, v10, v8, a3, a5);
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<unsigned int>>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, unint64_t *a4, uint64_t a5)
{
  v11 = a2;
  v8 = llvm::hashing::detail::hash_combine_range_impl<unsigned int const>(*a5, *a5 + 4 * *(a5 + 8), a3, a4);
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v11, a3, a4, v8);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v11, v9, a4);
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<unsigned int const>(llvm::hashing::detail::hash_state *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v13[0] = xmmword_25D0A0610;
    v13[1] = xmmword_25D0A0620;
    v13[2] = xmmword_25D0A0630;
    v14 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v13, a1, a3, a4);
    v11 = (v5 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v5 & 0xFFFFFFFFFFFFFFC0) != 0x40)
    {
      v12 = (a1 + 64);
      do
      {
        llvm::hashing::detail::hash_state::mix(v13, v12, v9, v10);
        v12 = (v12 + 64);
        v11 -= 64;
      }

      while (v11);
    }

    if ((v5 & 0x3F) != 0)
    {
      llvm::hashing::detail::hash_state::mix(v13, (a2 - 64), v9, v10);
    }

    return llvm::hashing::detail::hash_state::finalize(v13, v5);
  }

  else
  {
    v6 = a2 - a1;

    return llvm::hashing::detail::hash_short(a1, v6, 0xFF51AFD7ED558CCDLL);
  }
}

BOOL mlir::detail::FileLineColRangeAttrStorage::operator==(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0xFFFFFFFFFFFFFFF8) == *a2 && (v3 = (v2 >> 1) & 3, a2[2] == v3 + 1) && (v4 = a2[1], *(a1 + 16) == *v4))
  {
    return memcmp((a1 + 24), v4 + 1, 4 * v3) == 0;
  }

  else
  {
    return 0;
  }
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr &,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FileLineColRangeAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

unint64_t mlir::detail::FileLineColRangeAttrStorage::construct(unint64_t *a1, void *a2)
{
  v3 = a2[2];
  if (v3 <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = a2[2];
  }

  v5 = v4 - 1;
  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 4 * (v4 - 1) + 24, 3);
  v7 = (2 * v5) | *a2 & 0xFFFFFFFFFFFFFFF9;
  *result = 0;
  *(result + 8) = v7;
  *(result + 16) = 0;
  if (v3)
  {
    v9 = a2[1];
    v8 = a2[2];
    *(result + 16) = *v9;
    if (v8 != 1)
    {
      v10 = 4 * v8;
      v11 = (result + 24);
      v12 = v9 + 1;
      v13 = v10 - 4;
      do
      {
        v14 = *v12++;
        *v11++ = v14;
        v13 -= 4;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJRNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FileLineColRangeAttrStorage * mlir::StorageUniquer::get<mlir::detail::FileLineColRangeAttrStorage,mlir::StringAttr,llvm::ArrayRef<unsigned int>>(llvm::function_ref<void ()(mlir::detail::FileLineColRangeAttrStorage *)>,mlir::TypeID,mlir::StringAttr,llvm::ArrayRef<unsigned int> &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t a1, unint64_t *a2)
{
  v3 = mlir::detail::FileLineColRangeAttrStorage::construct(a2, *a1);
  v4 = *(a1 + 8);
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail27FileLineColRangeAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_16FileLineColRangeEJNS1_10StringAttrENS_8ArrayRefIjEEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *a2, char *a3, unint64_t *a4, uint64_t a5, _DWORD *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (a5)
  {
    v11 = a4;
    v12 = 0;
    v13 = &a4[a5];
    while (v12 <= 0x38)
    {
      v14 = v12 + 8;
      v15 = *v11++;
      *&__src[v12] = (v15 >> 4) ^ (v15 >> 9);
      v12 = v14;
      if (8 * a5 == v14)
      {
        goto LABEL_7;
      }
    }

    v28[0] = xmmword_25D0A0610;
    v28[1] = xmmword_25D0A0620;
    v28[2] = xmmword_25D0A0630;
    v29 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v28, __src, a3, a4);
    if (v12 == 8 * a5)
    {
      v17 = 64;
    }

    else
    {
      v17 = 64;
      do
      {
        v18 = 0;
        do
        {
          v19 = *v11++;
          v20 = v18 + 8;
          *&__src[v18] = (v19 >> 4) ^ (v19 >> 9);
          if (v11 == v13)
          {
            break;
          }

          v21 = v18 >= 0x31;
          v18 += 8;
        }

        while (!v21);
        std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v20], &v31);
        llvm::hashing::detail::hash_state::mix(v28, __src, v22, v23);
        v17 += v20;
      }

      while (v11 != v13);
    }

    v16 = llvm::hashing::detail::hash_state::finalize(v28, v17);
  }

  else
  {
    v14 = 0;
LABEL_7:
    v16 = llvm::hashing::detail::hash_short(__src, v14, 0xFF51AFD7ED558CCDLL);
  }

  v24 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v27, a2, a3, v16);
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(a1, v27, v24, a3, a6);
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

void *mlir::detail::FusedLocAttrStorage::construct(unint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3)
  {
    v5 = *a2;
    v6 = 8 * v3;
    v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 8 * v3, 3);
    v8 = v7;
    do
    {
      v9 = *v5++;
      *v8++ = v9;
      v6 -= 8;
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  result = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a1, 32, 3);
  *result = 0;
  result[1] = v7;
  result[2] = v3;
  result[3] = v4;
  return result;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEENS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::StringAttr,mlir::Location>(llvm::hashing::detail::hash_combine_recursive_helper *a1, void *__dst, char *a3, unsigned int a4, _DWORD *a5)
{
  v10 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v10, __dst, a3, (a4 >> 4) ^ (a4 >> 9));
  return llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Location>(a1, v10, v8, a3, a5);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESH_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSJ_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::NameLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::NameLocAttrStorage,mlir::StringAttr &,mlir::UnknownLoc>(llvm::function_ref<void ()(mlir::detail::NameLocAttrStorage *)>,mlir::TypeID,mlir::StringAttr &,mlir::UnknownLoc &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(__int128 **a1, unint64_t *a2)
{
  v6 = **a1;
  v3 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 24, 3);
  *v3 = 0;
  *(v3 + 8) = v6;
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 1), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18NameLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_7NameLocEJRNS1_10StringAttrENS1_10UnknownLocEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::OpaqueLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::OpaqueLocAttrStorage,unsigned long &,mlir::TypeID &,mlir::Location &>(llvm::function_ref<void ()(mlir::detail::OpaqueLocAttrStorage *)>,mlir::TypeID,unsigned long &,mlir::TypeID &,mlir::Location &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v7 = *(*a1 + 1);
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 32, 3);
  *v4 = 0;
  *(v4 + 8) = v3;
  *(v4 + 16) = v7;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail20OpaqueLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_9OpaqueLocEJRmRNS1_6TypeIDERNS1_8LocationEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextESC_DpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t std::__function::__func<mlir::LocationAttr::walk(llvm::function_ref<mlir::WalkResult ()(mlir::Location)>)::$_0,std::allocator<mlir::LocationAttr::walk(llvm::function_ref<mlir::WalkResult ()(mlir::Location)>)::$_0>,mlir::WalkResult ()(mlir::Attribute)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286E78BF8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<mlir::LocationAttr::walk(llvm::function_ref<mlir::WalkResult ()(mlir::Location)>)::$_0,std::allocator<mlir::LocationAttr::walk(llvm::function_ref<mlir::WalkResult ()(mlir::Location)>)::$_0>,mlir::WalkResult ()(mlir::Attribute)>::operator()(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v6 = *a2;
  v4 = mlir::Attribute::hasTrait<mlir::AttributeTrait::IsLocation>(&v6);
  result = 2;
  if (v4)
  {
    if (v3)
    {
      return (**(a1 + 8))(*(*(a1 + 8) + 8), v3);
    }
  }

  return result;
}

uint64_t std::__function::__value_func<mlir::WalkResult ()(mlir::Attribute)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID()
{
  v0 = 0x27FC17000uLL;
  {
    v0 = 0x27FC17000;
    if (v2)
    {
      v3 = llvm::getTypeName<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>();
      mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID(void)::id = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v3, v4);
      v0 = 0x27FC17000;
    }
  }

  return *(v0 + 3280);
}

uint64_t llvm::getTypeName<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>()
{
  {
    llvm::getTypeName<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>(void)::Name = llvm::detail::getTypeNameImpl<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>();
    *algn_27FC17CE8 = v1;
  }

  return llvm::getTypeName<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>(void)::Name;
}

const char *llvm::detail::getTypeNameImpl<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::AttributeTrait::IsLocation<Empty>]";
  v6 = 101;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::try_emplace<llvm::detail::DenseSetEmpty&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 16), *a3, &v12);
  v7 = v12;
  if (result)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v13 = v12;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  if (4 * v9 + 4 >= 3 * v10)
  {
    v10 *= 2;
    goto LABEL_10;
  }

  if (v10 + ~v9 - *(a2 + 12) <= v10 >> 3)
  {
LABEL_10:
    llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(a2, v10);
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::LookupBucketFor<mlir::Location>(*a2, *(a2 + 16), *a3, &v13);
    v9 = *(a2 + 8);
    v7 = v13;
  }

  *(a2 + 8) = v9 + 1;
  if (*v7 != -4096)
  {
    --*(a2 + 12);
  }

  *v7 = *a3;
  v8 = 1;
LABEL_8:
  v11 = *a2 + 8 * *(a2 + 16);
  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v8;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::LookupBucketFor<mlir::Location>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 8 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 8 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((8 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0x1FFFFFFFFFFFFFFFLL;
      v13 = v12 & 0x1FFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0x1FFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 8;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 1) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 2;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 8 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v29 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>,mlir::Location,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Location,void>,llvm::detail::DenseSetPair<mlir::Location>>::LookupBucketFor<mlir::Location>(*a1, *(a1 + 16), v20, &v29);
          *v29 = *v19;
          ++*(a1 + 8);
        }

        ++v19;
        v18 -= 8;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = v21 + 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 & 0x1FFFFFFFFFFFFFFFLL;
    v25 = (v23 & 0x1FFFFFFFFFFFFFFFLL) - (v23 & 1) + 2;
    v26 = vdupq_n_s64(v24);
    v27 = result + 8;
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(vdupq_n_s64(v22), xmmword_25D0A0500)));
      if (v28.i8[0])
      {
        *(v27 - 1) = -4096;
      }

      if (v28.i8[4])
      {
        *v27 = -4096;
      }

      v22 += 2;
      v27 += 2;
    }

    while (v25 != v22);
  }

  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location>,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location>,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESI_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSK_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[2];
  if (v3 == *(*a1 + 8))
  {
    if (!v3)
    {
      return a2[3] == *(v2 + 16);
    }

    v4 = a2[1];
    v5 = *v2;
    v6 = 8 * v3;
    while (*v4 == *v5)
    {
      ++v4;
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        return a2[3] == *(v2 + 16);
      }
    }
  }

  return 0;
}

void *llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::FusedLocAttrStorage * mlir::StorageUniquer::get<mlir::detail::FusedLocAttrStorage,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &>(llvm::function_ref<void ()(mlir::detail::FusedLocAttrStorage *)>,mlir::TypeID,llvm::ArrayRef<mlir::Location> &,mlir::Attribute &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v3 = mlir::detail::FusedLocAttrStorage::construct(a2, *a1);
  v4 = a1[1];
  if (*v4)
  {
    (*v4)(*(v4 + 8), v3);
  }

  return v3;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail19FusedLocAttrStorageEEE11callback_fnIZNS2_16AttributeUniquer13getWithTypeIDINS1_8FusedLocEJRNS_8ArrayRefINS1_8LocationEEERNS1_9AttributeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESJ_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSL_E_EEvlS4_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(*a1, a1[1]);
  *a2 = result;
  return result;
}

void mlir::Dialect::addAttribute<mlir::CallSiteLoc>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::CallSiteLoc>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id);
}

void mlir::Dialect::addAttribute<mlir::FileLineColRange>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::FileLineColRange>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id);
}

void mlir::Dialect::addAttribute<mlir::FusedLoc>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::FusedLoc>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id);
}

void mlir::Dialect::addAttribute<mlir::NameLoc>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::NameLoc>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id);
}

void mlir::Dialect::addAttribute<mlir::OpaqueLoc>(uint64_t a1)
{
  v4[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::OpaqueLoc>(a1, &v2);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, &v2);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v4);
  mlir::detail::InterfaceMap::~InterfaceMap(&v3);
  mlir::StorageUniquer::registerParametricStorageTypeImpl((**(a1 + 32) + 560), &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id);
}

uint64_t mlir::Dialect::addAttribute<mlir::UnknownLoc>(uint64_t a1)
{
  v6[11] = *MEMORY[0x277D85DE8];
  mlir::AbstractAttribute::get<mlir::UnknownLoc>(a1, &v4);
  mlir::Dialect::addAttribute(a1, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, &v4);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(v6);
  mlir::detail::InterfaceMap::~InterfaceMap(&v5);
  result = mlir::detail::AttributeUniquer::registerAttribute<mlir::UnknownLoc>(*(a1 + 32), &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void mlir::AbstractAttribute::get<mlir::CallSiteLoc>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::CallSiteLoc,mlir::LocationAttr,mlir::detail::CallSiteLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSA_22CallSiteLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::CallSiteLoc,void>::id, "builtin.call_site_loc", 21);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::CallSiteLoc,mlir::LocationAttr,mlir::detail::CallSiteLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_11CallSiteLocENS1_12LocationAttrENSB_22CallSiteLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

void mlir::AbstractAttribute::get<mlir::FileLineColRange>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::FileLineColRange,mlir::LocationAttr,mlir::detail::FileLineColRangeAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16FileLineColRangeENS1_12LocationAttrENSB_27FileLineColRangeAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_16FileLineColRangeENS1_12LocationAttrENSA_27FileLineColRangeAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::FileLineColRange,void>::id, "builtin.file_line_range", 23);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::FileLineColRange,mlir::LocationAttr,mlir::detail::FileLineColRangeAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void mlir::AbstractAttribute::get<mlir::FusedLoc>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::FusedLoc,mlir::LocationAttr,mlir::detail::FusedLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::FusedLoc,void>::id, "builtin.fused_loc", 17);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::FusedLoc,mlir::LocationAttr,mlir::detail::FusedLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSB_19FusedLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = a2[2];
  v6 = a2[3];
  if (v5)
  {
    v7 = a2[1];
    v8 = 8 * v5;
    do
    {
      if (*v7)
      {
        a3(a4);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  if (v6)
  {

    (a3)(a4, v6);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_8FusedLocENS1_12LocationAttrENSA_19FusedLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, void *a2, void **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2[2];
  v6 = a2[3];
  v18 = v20;
  v19 = 0x600000000;
  if (v5)
  {
    v7 = 8 * v5;
    do
    {
      v8 = *a3++;
      v15 = v8;
      llvm::SmallVectorImpl<mlir::Location>::emplace_back<mlir::Location>(&v18, &v15);
      v7 -= 8;
    }

    while (v7);
    v15 = v17;
    v16 = 0x600000000;
    if (v19)
    {
      llvm::SmallVectorImpl<mlir::Location>::operator=(&v15, &v18);
    }
  }

  else
  {
    v15 = v17;
    v16 = 0x600000000;
  }

  if (v18 != v20)
  {
    free(v18);
  }

  if (v6)
  {
    v6 = *a3;
  }

  v18 = v20;
  v19 = 0x600000000;
  if (v16)
  {
    llvm::SmallVectorImpl<mlir::Location>::operator=(&v18, &v15);
  }

  v21 = v6;
  if (v15 != v17)
  {
    free(v15);
  }

  v9 = *(**a2 + 32);
  v15 = v17;
  v16 = 0x600000000;
  if (v19)
  {
    llvm::SmallVectorImpl<mlir::Location>::operator=(&v15, &v18);
    v10 = v15;
    v11 = v16;
  }

  else
  {
    v11 = 0;
    v10 = v17;
  }

  v17[6] = v21;
  v12 = mlir::FusedLoc::get(v9, v10, v11, v21);
  if (v15 != v17)
  {
    free(v15);
  }

  if (v18 != v20)
  {
    free(v18);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t llvm::SmallVectorImpl<mlir::Location>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 != v5)
    {
      llvm::SmallVectorImpl<mlir::Location>::assignRemote(a1, a2);
      return a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a1 + 8);
    if (v7 >= v6)
    {
      if (v6)
      {
        memmove(*a1, v4, 8 * v6);
      }

      goto LABEL_14;
    }

    if (*(a1 + 12) >= v6)
    {
      if (v7)
      {
        memmove(*a1, v4, 8 * v7);
        goto LABEL_12;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v6, 8);
    }

    v7 = 0;
LABEL_12:
    v8 = *(a2 + 8) - v7;
    if (v8)
    {
      memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
    }

LABEL_14:
    *(a1 + 8) = v6;
    *(a2 + 8) = 0;
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    if (v5 >= v4)
    {
      if (v4)
      {
        memmove(*a1, *a2, 8 * v4);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v4)
    {
      if (v5)
      {
        memmove(*a1, *a2, 8 * v5);
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4, 8);
    }

    v5 = 0;
LABEL_10:
    v6 = *(a2 + 8) - v5;
    if (v6)
    {
      memcpy((*a1 + 8 * v5), (*a2 + 8 * v5), 8 * v6);
    }

LABEL_12:
    *(a1 + 8) = v4;
  }

  return a1;
}

double llvm::SmallVectorImpl<mlir::Location>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

void mlir::AbstractAttribute::get<mlir::NameLoc>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::NameLoc,mlir::LocationAttr,mlir::detail::NameLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::NameLoc,void>::id, "builtin.name_loc", 16);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::NameLoc,mlir::LocationAttr,mlir::detail::NameLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

void _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSB_18NameLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v6 = a3;
    a3(a4);
    a3 = v6;
  }

  if (v5)
  {

    (a3)(a4, v5);
  }
}

uint64_t _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_7NameLocENS1_12LocationAttrENSA_18NameLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 8))
  {
    v4 = *a3++;
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return mlir::NameLoc::get(v3, *a3);
}

void mlir::AbstractAttribute::get<mlir::OpaqueLoc>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::OpaqueLoc,mlir::LocationAttr,mlir::detail::OpaqueLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSA_20OpaqueLocAttrStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::OpaqueLoc,void>::id, "builtin.opaque_loc", 18);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::OpaqueLoc,mlir::LocationAttr,mlir::detail::OpaqueLocAttrStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_9OpaqueLocENS1_12LocationAttrENSB_20OpaqueLocAttrStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 24))
  {
    return a3(a4);
  }

  return result;
}

void mlir::AbstractAttribute::get<mlir::UnknownLoc>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, sizeof(v8));
  v7[1] = 0x300000000;
  *&v5 = mlir::detail::StorageUserBase<mlir::UnknownLoc,mlir::LocationAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke;
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<BOOL (*)(mlir::TypeID),BOOL (* const)(mlir::TypeID),void>::Callbacks + 2;
  v7[0] = v8;
  mlir::AbstractAttribute::AbstractAttribute(a2, a1, v7, &v5, _ZN4llvm12function_refIFvN4mlir9AttributeENS0_IFvS2_EEENS0_IFvNS1_4TypeEEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSB_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE29getWalkImmediateSubElementsFnEvEUlT_S4_S7_E_EEvlS2_S4_S7_, &v4, _ZN4llvm12function_refIFN4mlir9AttributeES2_NS_8ArrayRefIS2_EENS3_INS1_4TypeEEEEE11callback_fnIZNS1_6detail15StorageUserBaseINS1_10UnknownLocENS1_12LocationAttrENS1_16AttributeStorageENSA_16AttributeUniquerEJNS1_14AttributeTrait10IsLocationEEE32getReplaceImmediateSubElementsFnEvEUlT_S4_S6_E_EES2_lS2_S4_S6_, &v3, &mlir::detail::TypeIDResolver<mlir::UnknownLoc,void>::id, "builtin.unknown_loc", 19);
  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase(&v5);
  mlir::detail::InterfaceMap::~InterfaceMap(v7);
  v2 = *MEMORY[0x277D85DE8];
}

BOOL mlir::detail::StorageUserBase<mlir::UnknownLoc,mlir::LocationAttr,mlir::AttributeStorage,mlir::detail::AttributeUniquer,mlir::AttributeTrait::IsLocation>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1}::__invoke(uint64_t a1)
{
  v2 = mlir::detail::TypeIDResolver<mlir::AttributeTrait::IsLocation<mlir::TypeID mlir::TypeID::get<mlir::AttributeTrait::IsLocation>(void)::Empty>,void>::resolveTypeID();
  v3 = 0;
  do
  {
    v4 = v3;
    v3 = 1;
  }

  while ((v4 & 1) == 0 && v2 != a1);
  return (v4 & 1) == 0;
}

uint64_t mlir::detail::AttributeUniquer::registerAttribute<mlir::UnknownLoc>(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v5[0] = a1;
  v5[1] = a2;
  v7[0] = _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_10UnknownLocEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_;
  v7[1] = v5;
  v6 = v7;
  v10 = a2;
  v3 = *(v2 + 560);
  v9 = llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<void mlir::StorageUniquer::registerSingletonStorageType<mlir::AttributeStorage>(mlir::TypeID,llvm::function_ref<void ()(mlir::AttributeStorage *)>)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(&v6, (v3 + 112));
  return llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::try_emplace<mlir::StorageUniquer::BaseStorage *>(v3 + 232, &v10, &v9, v8);
}

uint64_t _ZN4llvm12function_refIFvPN4mlir16AttributeStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer17registerAttributeINS1_10UnknownLocEEENSt3__19enable_ifIXsr3std7is_sameINT_8ImplTypeES2_EE5valueEvE4typeEPNS1_11MLIRContextENS1_6TypeIDEEUlS3_E_EEvlS3_(uint64_t *a1, uint64_t *a2)
{
  result = mlir::AbstractAttribute::lookup(a1[1], *a1);
  *a2 = result;
  return result;
}

void mlir::MLIRContext::MLIRContext()
{
  operator new();
}

{
  v1 = 0u;
  v0 = &v1;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = &v7;
  v6 = 0;
  mlir::DialectRegistry::insert<mlir::BuiltinDialect>(&v0);
  mlir::MLIRContext::MLIRContext();
}

uint64_t isThreadingGloballyDisabled(void)
{
  if (atomic_load(clOptions))
  {
    if (!atomic_load_explicit(clOptions, memory_order_acquire))
    {
    }

    v1 = *(clOptions[0] + 120);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *mlir::DialectRegistry::appendTo(void *this, mlir::DialectRegistry *a2)
{
  v3 = this;
  v4 = this + 1;
  v5 = *this;
  if (*this != this + 1)
  {
    do
    {
      v6 = *(v5 + 55);
      if (v6 >= 0)
      {
        v7 = v5 + 4;
      }

      else
      {
        v7 = v5[4];
      }

      v8 = v5[5];
      if (v6 >= 0)
      {
        v9 = *(v5 + 55);
      }

      else
      {
        v9 = v5[5];
      }

      this = mlir::DialectRegistry::insert(a2, v5[7], v7, v9, (v5 + 8));
      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v4);
  }

  v13 = *(v3 + 56);
  if (v13)
  {
    v14 = *(v3 + 48);
    v15 = 16 * v13;
    do
    {
      (*(**(v14 + 8) + 24))(&v16);
      llvm::MapVector<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>,llvm::DenseMap<mlir::TypeID,unsigned int,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,unsigned int>>,llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>>::try_emplace<std::unique_ptr<mlir::DialectExtensionBase>>(a2 + 24, v14, &v16);
      this = v16;
      v16 = 0;
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      v14 += 16;
      v15 -= 16;
    }

    while (v15);
  }

  return this;
}

void mlir::MLIRContext::~MLIRContext(mlir::MLIRContextImpl **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    mlir::MLIRContextImpl::~MLIRContextImpl(v2);
    MEMORY[0x25F891040]();
  }
}

void std::function<void ()(llvm::function_ref<void ()(void)>,mlir::tracing::Action const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, v7, a4);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    mlir::MLIRContext::appendDialectRegistry(v5, v6);
  }
}

void mlir::MLIRContext::appendDialectRegistry(mlir::MLIRContext *this, const mlir::DialectRegistry *a2)
{
  if (!mlir::DialectRegistry::isSubsetOf(a2, *this + 272))
  {
    mlir::DialectRegistry::appendTo(a2, (*this + 272));

    mlir::DialectRegistry::applyExtensions(a2, this, v4, v5);
  }
}

void mlir::MLIRContext::getLoadedDialects(mlir::MLIRContext *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(*this + 256);
  if (v2)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Dialect *>>(v2);
  }
}

void mlir::MLIRContext::getAvailableDialects(mlir::MLIRContext *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *(*this + 272);
  v4 = *this + 280;
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v3 + 55);
      if (v6 >= 0)
      {
        v7 = v3 + 4;
      }

      else
      {
        v7 = v3[4];
      }

      if (v6 >= 0)
      {
        v8 = *(v3 + 55);
      }

      else
      {
        v8 = v3[5];
      }

      v9 = *(a2 + 16);
      if (v5 >= v9)
      {
        v10 = (v5 - *a2) >> 4;
        if ((v10 + 1) >> 60)
        {
          std::vector<llvm::StringRef>::__throw_length_error[abi:nn200100]();
        }

        v11 = v9 - *a2;
        v12 = v11 >> 3;
        if (v11 >> 3 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(a2, v13);
        }

        v14 = (16 * v10);
        *v14 = v7;
        v14[1] = v8;
        v5 = (16 * v10 + 16);
        v15 = *(a2 + 8) - *a2;
        v16 = v14 - v15;
        memcpy(v14 - v15, *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        *v5 = v7;
        v5[1] = v8;
        v5 += 2;
      }

      *(a2 + 8) = v5;
      v18 = v3[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v3[2];
          v20 = *v19 == v3;
          v3 = v19;
        }

        while (!v20);
      }

      v3 = v19;
    }

    while (v19 != v4);
  }
}

uint64_t mlir::MLIRContext::getLoadedDialect(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v5 = *a1;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::doFind<llvm::StringRef>((*a1 + 248), v9, a3, a4);
  v7 = *(v5 + 248) + 24 * *(v5 + 264);
  if (v6)
  {
    v7 = v6;
  }

  if (v7 == *(*a1 + 248) + 24 * *(*a1 + 264))
  {
    return 0;
  }

  else
  {
    return *(v7 + 16);
  }
}

uint64_t (*mlir::MLIRContext::getOrLoadDialect(uint64_t *a1, const void *a2, size_t a3, unint64_t *a4))(uint64_t, uint64_t *)
{
  result = mlir::MLIRContext::getLoadedDialect(a1, a2, a3, a4);
  if (!result)
  {
    result = mlir::DialectRegistry::getDialectAllocator(*a1 + 272, a2, a3);
    if (result)
    {

      return result(v8, a1);
    }
  }

  return result;
}

mlir::Dialect *mlir::MLIRContext::getOrLoadDialect(void *a1, llvm::hashing::detail::hash_state *a2, size_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  *&v42 = a2;
  *(&v42 + 1) = a3;
  v11 = *a1;
  v13 = (*a1 + 248);
  v12 = *v13;
  v41[0] = 0;
  if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::LookupBucketFor<llvm::StringRef>(v12, *(v11 + 264), &v42, v41))
  {
    v14 = v41[0][2];
    if (*(v14 + 3) != a4)
    {
      v40 = 1283;
      v39[0] = "a dialect with namespace '";
      v39[2] = a2;
      v39[3] = a3;
      v37 = "' has already been registered";
      v38 = 259;
      llvm::operator+(v39, &v37, v41);
      llvm::report_fatal_error(v41, 1);
    }
  }

  else
  {
    v15 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::InsertIntoBucketImpl<llvm::StringRef>(v13, &v42, v41[0]);
    *v15 = v42;
    v15[2] = 0;
    a5(v39, a6);
    v41[0] = 0;
    if (llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::LookupBucketFor<llvm::StringRef>(*(v11 + 248), *(v11 + 264), &v42, v41))
    {
      v19 = (v41[0] + 2);
      v18 = v41[0][2];
      v20 = v39[0];
      v39[0] = 0;
      v41[0][2] = v20;
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v21 = v39[0];
        v39[0] = 0;
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }
      }
    }

    else
    {
      v22 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::InsertIntoBucketImpl<llvm::StringRef>(v13, &v42, v41[0]);
      *v22 = v42;
      v22[2] = v39[0];
      v19 = (v22 + 2);
    }

    v14 = *v19;
    v23 = *(v11 + 728);
    if (v23)
    {
      v24 = *(v11 + 712);
      v25 = v23 - 1;
      v26 = (v23 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(a2, a2 + a3, v16, v17);
      v27 = v24 + 80 * v26;
      if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(a2, a3, *v27, *(v27 + 8)))
      {
LABEL_11:
        if (v27 != *(v11 + 712) + 80 * *(v11 + 728))
        {
          v28 = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v29)
          {
            v30 = 8 * v29;
            v31 = *(v27 + 16);
            do
            {
              v32 = *v31++;
              *(v32 + 32) = v14;
              v30 -= 8;
            }

            while (v30);
          }

          if (v28 != (v27 + 32))
          {
            free(v28);
          }

          *v27 = xmmword_25D0A05F0;
          *(v11 + 720) = vadd_s32(*(v11 + 720), 0x1FFFFFFFFLL);
        }
      }

      else
      {
        v34 = 1;
        while (*v27 != -1)
        {
          v35 = v34 + 1;
          v26 = (v26 + v34) & v25;
          v27 = v24 + 80 * v26;
          isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(a2, a3, *v27, *(v27 + 8));
          v34 = v35;
          if (isEqual)
          {
            goto LABEL_11;
          }
        }
      }
    }

    mlir::DialectRegistry::applyExtensions((v11 + 272), v14);
  }

  return v14;
}

BOOL mlir::MLIRContext::isDialectLoading(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v9[0] = a2;
  v9[1] = a3;
  v5 = *a1;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::doFind<llvm::StringRef>((*a1 + 248), v9, a3, a4);
  v7 = *(v5 + 248) + 24 * *(v5 + 264);
  if (v6)
  {
    v7 = v6;
  }

  return v7 != *(*a1 + 248) + 24 * *(*a1 + 264) && *(v7 + 16) == 0;
}

void mlir::MLIRContext::loadAllAvailableDialects(mlir::MLIRContext *this)
{
  mlir::MLIRContext::getAvailableDialects(this, &v7);
  v3 = v7;
  v4 = v8;
  if (v7 != v8)
  {
    do
    {
      v5 = *v3;
      v6 = v3[1];
      v3 += 2;
      mlir::MLIRContext::getOrLoadDialect(this, v5, v6, v2);
    }

    while (v3 != v4);
    v3 = v7;
  }

  if (v3)
  {
    v8 = v3;
    operator delete(v3);
  }
}

unint64_t mlir::MLIRContext::getRegistryHash(mlir::MLIRContext *this)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v4 = *(*this + 256);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v14 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,unsigned int>(&v6, 0, &v6, &v10, &v5, &v4);
  v4 = *(*this + 544);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v14 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,unsigned int>(&v6, 0, &v6, &v10, &v5, &v4);
  v4 = *(*this + 192);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v14 = 0xFF51AFD7ED558CCDLL;
  v5 = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,unsigned int>(&v6, 0, &v6, &v10, &v5, &v4);
  v4 = *(*this + 368);
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v14 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,unsigned int>(&v6, 0, &v6, &v10, &v5, &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::MLIRContext::disableMultithreading(mlir::MLIRContext *this, int a2)
{
  result = isThreadingGloballyDisabled();
  if ((result & 1) == 0)
  {
    v5 = *this;
    *(v5 + 41) = a2 ^ 1;
    *(*(v5 + 352) + 256) = a2 ^ 1;
    *(*(v5 + 560) + 256) = a2 ^ 1;
    *(*(v5 + 384) + 256) = a2 ^ 1;
    if ((a2 ^ 1))
    {
      if (!*(v5 + 48))
      {
        operator new();
      }
    }

    else
    {
      result = *(v5 + 56);
      if (result)
      {
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        v6 = *(*result + 16);

        return v6();
      }
    }
  }

  return result;
}

uint64_t mlir::Dialect::addType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v5 + 64), 160, 3);
  *v6 = *a3;
  *(v6 + 8) = v6 + 24;
  *(v6 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v6 + 8, a3 + 8);
  }

  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase(v6 + 72, (a3 + 72));
  v7 = *(a3 + 104);
  v8 = *(a3 + 120);
  v9 = *(a3 + 136);
  *(v6 + 152) = *(a3 + 152);
  *(v6 + 136) = v9;
  *(v6 + 120) = v8;
  *(v6 + 104) = v7;
  *&v16 = a2;
  *(&v16 + 1) = v6;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>(v5 + 360, &v16, &v16 + 1, v19);
  if ((v20 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Type already registered.", 1);
  }

  v16 = *(v6 + 144);
  v17[0] = v6;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>(v5 + 392, &v16, v17, v10, v19);
  if ((v20 & 1) == 0)
  {
    v12 = *(v6 + 144);
    v13 = *(v6 + 152);
    v18 = 1283;
    *&v16 = "Dialect Type with name ";
    v17[0] = v12;
    v17[1] = v13;
    v14 = " is already registered.";
    v15 = 259;
    llvm::operator+(&v16, &v14, v19);
    llvm::report_fatal_error(v19, 1);
  }

  return result;
}

uint64_t mlir::Dialect::addAttribute(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = **(a1 + 32);
  v6 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v5 + 64), 160, 3);
  *v6 = *a3;
  *(v6 + 8) = v6 + 24;
  *(v6 + 16) = 0x300000000;
  if (*(a3 + 16))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v6 + 8, a3 + 8);
  }

  llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::UniqueFunctionBase(v6 + 72, (a3 + 72));
  v7 = *(a3 + 104);
  v8 = *(a3 + 120);
  v9 = *(a3 + 136);
  *(v6 + 152) = *(a3 + 152);
  *(v6 + 136) = v9;
  *(v6 + 120) = v8;
  *(v6 + 104) = v7;
  *&v16 = a2;
  *(&v16 + 1) = v6;
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::try_emplace<mlir::AbstractAttribute *>(v5 + 536, &v16, &v16 + 1, v19);
  if ((v20 & 1) == 0)
  {
    llvm::report_fatal_error("Dialect Attribute already registered.", 1);
  }

  v16 = *(v6 + 144);
  v17[0] = v6;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::try_emplace<mlir::AbstractAttribute *>(v5 + 568, &v16, v17, v10, v19);
  if ((v20 & 1) == 0)
  {
    v12 = *(v6 + 144);
    v13 = *(v6 + 152);
    v18 = 1283;
    *&v16 = "Dialect Attribute with name ";
    v17[0] = v12;
    v17[1] = v13;
    v14 = " is already registered.";
    v15 = 259;
    llvm::operator+(&v16, &v14, v19);
    llvm::report_fatal_error(v19, 1);
  }

  return result;
}

uint64_t mlir::AbstractAttribute::lookup(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>((*a2 + 536), &v4);
  if (!v2 || (result = *(v2 + 8)) == 0)
  {
    llvm::report_fatal_error("Trying to create an Attribute that was not registered in this MLIRContext.", 1);
  }

  return result;
}

void *mlir::OperationName::Impl::Impl(void *a1, uint64_t a2, const llvm::Twine *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[6] = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 32);
  v15 = 261;
  v14[0] = a2;
  v14[1] = a3;
  v11 = mlir::StringAttr::get(v10, v14, a3);
  v16[0] = v17;
  v16[1] = 0x300000000;
  if (*(a6 + 8))
  {
    llvm::SmallVectorImpl<std::pair<mlir::TypeID,void *>>::operator=(v16, a6);
  }

  mlir::OperationName::Impl::Impl(a1, v11, a4, a5, v16);
  mlir::detail::InterfaceMap::~InterfaceMap(v16);
  v12 = *MEMORY[0x277D85DE8];
  return a1;
}

void *mlir::OperationName::OperationName(void *a1, unsigned __int8 *a2, const unsigned __int8 *a3, mlir::StringAttr *a4)
{
  v8 = 0;
  v28 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v9 = *a4;
  if (*(*a4 + 41) != 1)
  {
    goto LABEL_7;
  }

  v10 = llvm::StringMap<mlir::RegisteredOperationName,llvm::MallocAllocator>::find(v9 + 208, a2, a3);
  if (*(v9 + 208) + 8 * *(v9 + 216) == v10)
  {
    v8 = (v9 + 336);
    pthread_rwlock_rdlock(*(v9 + 336));
    v11 = llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::find(v9 + 160, a2, a3);
    if (*(v9 + 160) + 8 * *(v9 + 168) != v11)
    {
      *a1 = *(*v11 + 8);
      goto LABEL_21;
    }

    pthread_rwlock_unlock(*v8);
    pthread_rwlock_wrlock(*v8);
LABEL_7:
    v12 = llvm::xxh3_64bits(a2, a3, a3);
    v13 = llvm::StringMapImpl::LookupBucketFor((v9 + 160), a2, a3, v12);
    v14 = *(v9 + 160);
    v15 = v13;
    v16 = *(v14 + 8 * v13);
    if (v16 == -8)
    {
      --*(v9 + 176);
    }

    else if (v16)
    {
      *a1 = *(v16 + 8);
      if (!v8)
      {
        goto LABEL_22;
      }

LABEL_21:
      pthread_rwlock_unlock(*v8);
      goto LABEL_22;
    }

    buffer = llvm::allocate_buffer((a3 + 17), 8uLL);
    v18 = buffer;
    v19 = (buffer + 2);
    if (a3)
    {
      memcpy(buffer + 2, a2, a3);
    }

    a3[v19] = 0;
    *v18 = a3;
    v18[1] = 0;
    *(v14 + 8 * v15) = v18;
    ++*(v9 + 172);
    for (i = (*(v9 + 160) + 8 * llvm::StringMapImpl::RehashTable((v9 + 160), v15)); ; ++i)
    {
      if (*i)
      {
        v22 = *i == -8;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v27 = 261;
        v26[0] = a2;
        v26[1] = a3;
        v23 = *(mlir::StringAttr::get(a4, v26, v20) + 32);
        operator new();
      }
    }
  }

  *a1 = *(*v10 + 8);
LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t llvm::StringMap<mlir::RegisteredOperationName,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t llvm::StringMap<std::unique_ptr<mlir::OperationName::Impl>,llvm::MallocAllocator>::find(uint64_t a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v6 = llvm::xxh3_64bits(a2, a3, a3);
  Key = llvm::StringMapImpl::FindKey(a1, a2, a3, v6);
  if (Key == -1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = Key;
  }

  return *a1 + 8 * v8;
}

uint64_t mlir::OperationName::getDialectNamespace(mlir::OperationName *this)
{
  v3 = *this;
  if (*(*this + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v4 = (*(v3 + 8) + 32);
  }

  else
  {
    v4 = (v3 + 24);
  }

  v5 = *v4;
  if (v5)
  {
    result = *(v5 + 8);
    v7 = *(v5 + 16);
  }

  else
  {
    v11 = v1;
    v12 = v2;
    *v8 = *(*(v3 + 8) + 16);
    v10 = 46;
    llvm::StringRef::split(v8, &v10, 1uLL, &v9);
    return v9;
  }

  return result;
}

unint64_t mlir::OperationName::UnregisteredOpModel::getInherentAttr(uint64_t a1, uint64_t a2, const void *a3, size_t a4)
{
  v4 = *(a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);
  if (!v4)
  {
    v7 = 0;
    return v7 | v4;
  }

  if (*(*v4 + 136) != &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id || (v5 = mlir::impl::findAttrSorted<mlir::NamedAttribute const*>(*(v4 + 8), *(v4 + 8) + 16 * *(v4 + 16), a3, a4), (v6 & 1) == 0))
  {
    v4 = 0;
    goto LABEL_7;
  }

  v4 = *(v5 + 8);
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    return v7 | v4;
  }

  v7 = v4 & 0xFFFFFFFFFFFFFF00;
  v4 = *(v5 + 8);
  return v7 | v4;
}

void mlir::OperationName::UnregisteredOpModel::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[9] = *MEMORY[0x277D85DE8];
  v7 = a2 + 64;
  v8 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
  if (v8)
  {
    if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
    {
      v9 = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1));
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  mlir::NamedAttrList::NamedAttrList(v13, v9);
  mlir::NamedAttrList::set(v13, a3, a4);
  Dictionary = mlir::NamedAttrList::getDictionary(v13, *(***(a2 + 24) + 32));
  if (HIBYTE(*(a2 + 44)))
  {
    v11 = (v7 + 16 * ((*(a2 + 44) >> 23) & 1));
  }

  else
  {
    v11 = 0;
  }

  *v11 = Dictionary;
  if (v13[0] != v14)
  {
    free(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

unint64_t mlir::OperationName::UnregisteredOpModel::hashProperties(uint64_t a1, _DWORD *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  v6 = 0;
  v7 = 0xFF51AFD7ED558CCDLL;
  result = llvm::hashing::detail::hash_combine_recursive_helper::combine<mlir::Attribute>(v4, 0, v4, v5, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t mlir::RegisteredOperationName::lookup(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v2 = *a2;
  v3 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::doFind<mlir::TypeID>((*a2 + 184), &v6);
  if (v3)
  {
    v4 = v3 == *(v2 + 184) + 16 * *(v2 + 200);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8);
  }
}

void mlir::RegisteredOperationName::insert(uint64_t *a1, uint64_t a2, const llvm::Twine *a3)
{
  v4 = *a1;
  v5 = *(*(*a1 + 24) + 32);
  v6 = *v5;
  if (a3)
  {
    v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate((v6 + 64), 8 * a3, 3);
    v10 = v9;
    v11 = a3;
    if (a3)
    {
      v12 = (a2 + 8);
      v13 = v9;
      do
      {
        v59 = 261;
        v58[0] = *(v12 - 1);
        v14 = *v12;
        v12 += 2;
        v58[1] = v14;
        *v13++ = mlir::StringAttr::get(v5, v58, a3);
        --v11;
      }

      while (v11);
    }

    v4[12] = v10;
    v4[13] = a3;
  }

  v15 = v4[1];
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  v18 = llvm::xxh3_64bits(v17, v16, a3);
  v19 = llvm::StringMapImpl::LookupBucketFor((v6 + 160), v17, v16, v18);
  v20 = *(v6 + 160);
  v21 = v19;
  v22 = *(v20 + 8 * v19);
  if (v22 == -8)
  {
    --*(v6 + 176);
  }

  else if (v22)
  {
    goto LABEL_19;
  }

  buffer = llvm::allocate_buffer((v16 + 17), 8uLL);
  v24 = buffer;
  v25 = (buffer + 2);
  if (v16)
  {
    memcpy(buffer + 2, v17, v16);
  }

  v25[v16] = 0;
  *v24 = v16;
  v24[1] = 0;
  *(v20 + 8 * v21) = v24;
  ++*(v6 + 172);
  for (i = (*(v6 + 160) + 8 * llvm::StringMapImpl::RehashTable((v6 + 160), v21)); ; ++i)
  {
    v22 = *i;
    if (*i && v22 != -8)
    {
      break;
    }
  }

LABEL_19:
  v28 = *a1;
  *a1 = 0;
  v29 = *(v22 + 8);
  *(v22 + 8) = v28;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = v4[2];
  v31 = *(v6 + 184);
  v60 = 0;
  v32 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::LookupBucketFor<mlir::TypeID>(v31, *(v6 + 200), v30, &v60);
  v34 = v60;
  if ((v32 & 1) == 0)
  {
    v58[0] = v60;
    v35 = *(v6 + 192);
    v36 = *(v6 + 200);
    if (4 * v35 + 4 >= 3 * v36)
    {
      v36 *= 2;
    }

    else if (v36 + ~v35 - *(v6 + 196) > v36 >> 3)
    {
LABEL_24:
      *(v6 + 192) = v35 + 1;
      if (*v34 != -4096)
      {
        --*(v6 + 196);
      }

      *v34 = v30;
      v34[1] = v4;
      goto LABEL_27;
    }

    llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::grow(v6 + 184, v36);
    llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::LookupBucketFor<mlir::TypeID>(*(v6 + 184), *(v6 + 200), v30, v58);
    v35 = *(v6 + 192);
    v34 = v58[0];
    goto LABEL_24;
  }

LABEL_27:
  v37 = llvm::xxh3_64bits(v17, v16, v33);
  v38 = llvm::StringMapImpl::LookupBucketFor((v6 + 208), v17, v16, v37);
  v39 = *(v6 + 208);
  v40 = *(v39 + 8 * v38);
  if (v40)
  {
    if (v40 != -8)
    {
      goto LABEL_33;
    }

    --*(v6 + 224);
  }

  v41 = v38;
  v42 = llvm::allocate_buffer((v16 + 17), 8uLL);
  v43 = v42;
  v44 = (v42 + 2);
  if (v16)
  {
    memcpy(v42 + 2, v17, v16);
  }

  v44[v16] = 0;
  *v43 = v16;
  v43[1] = v4;
  *(v39 + 8 * v41) = v43;
  ++*(v6 + 220);
  llvm::StringMapImpl::RehashTable((v6 + 208), v41);
LABEL_33:
  v45 = *(v6 + 232);
  v46 = *(v6 + 240);
  if (v46)
  {
    v47 = *(v6 + 232);
    do
    {
      v48 = &v47[v46 >> 1];
      v58[0] = *(v34[1] + 8);
      v50 = *v48;
      v49 = v48 + 1;
      if (mlir::StringAttr::compare(v58, *(v50 + 8)))
      {
        v46 >>= 1;
      }

      else
      {
        v47 = v49;
        v46 += ~(v46 >> 1);
      }
    }

    while (v46);
    v45 = *(v6 + 232);
    v51 = *(v6 + 240);
  }

  else
  {
    v51 = 0;
    v47 = *(v6 + 232);
  }

  v52 = v34[1];
  v53 = v51;
  if ((v45 + 8 * v51) == v47)
  {
    if (v51 >= *(v6 + 244))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v51 + 1, 8);
      v53 = *(v6 + 240);
      v45 = *(v6 + 232);
    }

    *(v45 + 8 * v53) = v52;
    ++*(v6 + 240);
  }

  else
  {
    v54 = v47 - v45;
    if (v51 >= *(v6 + 244))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6 + 232, (v6 + 248), v51 + 1, 8);
      v45 = *(v6 + 232);
      v53 = *(v6 + 240);
    }

    v55 = (v45 + v54);
    *(v45 + 8 * v53) = *(v45 + 8 * v53 - 8);
    v56 = *(v6 + 240);
    v57 = *(v6 + 232) + 8 * v56 - 8;
    if (v57 != v55)
    {
      memmove(v55 + 1, v55, v57 - v55);
      LODWORD(v56) = *(v6 + 240);
    }

    *(v6 + 240) = v56 + 1;
    *v55 = v52;
  }
}

uint64_t mlir::AbstractType::lookup(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v2 = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>((*a2 + 360), &v4);
  if (!v2 || (result = *(v2 + 8)) == 0)
  {
    llvm::report_fatal_error("Trying to create a Type that was not registered in this MLIRContext.", 1);
  }

  return result;
}

uint64_t mlir::IntegerType::get(void *a1, int a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    goto LABEL_2;
  }

  if (a2 > 31)
  {
    switch(a2)
    {
      case 32:
        v6 = 504;
        break;
      case 64:
        v6 = 512;
        break;
      case 128:
        v6 = 520;
        break;
      default:
        goto LABEL_2;
    }

LABEL_16:
    v5 = *(*a1 + v6);
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_2;
  }

  switch(a2)
  {
    case 1:
      v6 = 480;
      goto LABEL_16;
    case 8:
      v6 = 488;
      goto LABEL_16;
    case 16:
      v6 = 496;
      goto LABEL_16;
  }

LABEL_2:
  v3 = *a1;
  v9[0] = &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id;
  v9[1] = &v10;
  v10 = a1;
  v13[0] = _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_;
  v13[1] = v9;
  v12 = a2 | (a3 << 32);
  memset(v15, 0, sizeof(v15));
  memset(__dst, 0, sizeof(__dst));
  v16 = 0;
  v17 = 0xFF51AFD7ED558CCDLL;
  v4 = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,mlir::IntegerType::SignednessSemantics>(__dst, __dst, v15, a2, &v12 + 1);
  v11 = &v12;
  *&__dst[0] = &v12;
  *(&__dst[0] + 1) = v13;
  v5 = mlir::detail::StorageUniquerImpl::getOrCreate(*(v3 + 384), &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, v4, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v11, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
LABEL_17:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t mlir::NoneType::get(mlir::NoneType *this, mlir::MLIRContext *a2)
{
  v4 = *this;
  result = *(*this + 528);
  if (!result)
  {
    v7[1] = v2;
    v7[2] = v3;
    v6 = *(v4 + 384);
    v7[0] = &mlir::detail::TypeIDResolver<mlir::NoneType,void>::id;
    return *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>,mlir::TypeID,mlir::StorageUniquer::BaseStorage *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::StorageUniquer::BaseStorage *>>::operator[]((v6 + 232), v7);
  }

  return result;
}

void mlir::detail::StringAttrStorage::initialize(mlir::detail::StringAttrStorage *this, mlir::MLIRContext *a2)
{
  v13 = 46;
  llvm::StringRef::split(this + 2, &v13, 1uLL, &v11);
  if (*(&v11 + 1))
  {
    v5 = v12 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    LoadedDialect = mlir::MLIRContext::getLoadedDialect(a2, v11, *(&v11 + 1), v4);
    *(this + 4) = LoadedDialect;
    if (!LoadedDialect)
    {
      v7 = *a2;
      std::recursive_mutex::lock((v7 + 640));
      v10 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[]((v7 + 712), &v11, v8, v9);
      llvm::SmallVectorTemplateBase<mlir::detail::StringAttrStorage *,true>::push_back(v10, this);
      std::recursive_mutex::unlock((v7 + 640));
    }
  }
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::operator[](uint64_t *a1, _OWORD *a2, uint64_t a3, unint64_t *a4)
{
  v9 = 0;
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, a4);
  v7 = v9;
  if ((v6 & 1) == 0)
  {
    v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, v9);
    *v7 = *a2;
    v7[2] = v7 + 4;
    v7[3] = 0x600000000;
  }

  return v7 + 2;
}

void llvm::SmallVectorTemplateBase<mlir::detail::StringAttrStorage *,true>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v4 + 1, 8);
    LODWORD(v4) = *(a1 + 8);
  }

  *(*a1 + 8 * v4) = a2;
  ++*(a1 + 8);
}

uint64_t mlir::AffineMap::getImpl(int a1, int a2, unint64_t *a3, uint64_t a4, void *a5)
{
  v9 = *a5;
  v16 = &v17;
  v17 = a5;
  v10 = mlir::detail::TypeIDResolver<mlir::detail::AffineMapStorage,void>::resolveTypeID();
  v23[0] = llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>::callback_fn<mlir::AffineMap::getImpl(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,mlir::MLIRContext *)::$_0>;
  v23[1] = &v16;
  v20[0] = a1;
  v20[1] = a2;
  v21 = a3;
  v22 = a4;
  v13 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(a3, &a3[a4], v11, v12)) | ((37 * a2) << 32));
  v14 = 0xBF58476D1CE4E5B9 * ((v13 >> 31) ^ v13 | ((37 * a1) << 32));
  v18[0] = v20;
  v18[1] = v23;
  v19 = v20;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v9 + 352), v10, (v14 >> 31) ^ v14, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v19, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v18);
}

uint64_t mlir::IntegerSet::get(int a1, int a2, unint64_t *a3, uint64_t a4, llvm::hashing::detail::hash_state *a5, uint64_t a6)
{
  v12 = ***a3;
  v13 = mlir::detail::TypeIDResolver<mlir::detail::IntegerSetStorage,void>::resolveTypeID();
  v31[0] = llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>::callback_fn<mlir::IntegerSet::get(unsigned int,unsigned int,llvm::ArrayRef<mlir::AffineExpr>,llvm::ArrayRef<BOOL>)::$_0>;
  v31[1] = &v23;
  v26[0] = a1;
  v26[1] = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v16 = llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(a3, &a3[a4], v14, v15);
  v19 = 0xBF58476D1CE4E5B9 * ((969526130 * llvm::hashing::detail::hash_combine_range_impl<BOOL const>(a5, a5 + a6, v17, v18)) | (v16 << 32));
  v20 = 0xBF58476D1CE4E5B9 * ((v19 >> 31) ^ v19 | ((37 * a2) << 32));
  v21 = 0xBF58476D1CE4E5B9 * ((v20 >> 31) ^ v20 | ((37 * a1) << 32));
  v24[0] = v26;
  v24[1] = v31;
  v25 = v26;
  return mlir::detail::StorageUniquerImpl::getOrCreate(*(v12 + 352), v13, (v21 >> 31) ^ v21, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v25, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v24);
}

void mlir::OperationName::UnregisteredOpModel::~UnregisteredOpModel(void **this)
{
  *this = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap(this + 4);
}

{
  *this = &unk_286E788F8;
  mlir::detail::InterfaceMap::~InterfaceMap(this + 4);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E78D08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void std::__shared_ptr_emplace<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState,std::allocator<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState>>::__on_zero_shared(uint64_t a1)
{
  std::recursive_mutex::~recursive_mutex((a1 + 64));
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = -24 * v3;
    v5 = &v2[24 * v3 - 24];
    do
    {
      v5 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(v5) - 3;
      v4 += 24;
    }

    while (v4);
    v2 = *(a1 + 24);
  }

  if (v2 != (a1 + 40))
  {

    free(v2);
  }
}

uint64_t *mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = a1[1];
      if (v4)
      {
        *v4 = 0;
        atomic_store(0, (v4 + 8));
      }

      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }

    v5 = a1[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  std::unique_ptr<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::reset[abi:nn200100](a1, 0);
  return a1;
}

uint64_t std::unique_ptr<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(result);

    JUMPOUT(0x25F891040);
  }

  return result;
}

uint64_t mlir::MLIRContext::getLoadedDialects(void)::$_0::__invoke(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 8);
  v4 = *(v2 + 16);
  v6 = *(*a1 + 8);
  return llvm::StringRef::compare(&v6, v3, v4) >> 31;
}

uint64_t mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::get(uint64_t *a1)
{
  StaticCache = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache();
  v4 = *a1;
  result = **llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::operator[](StaticCache, &v4);
  if (!result)
  {
    std::recursive_mutex::lock((*a1 + 40));
    llvm::SmallVectorImpl<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner>::emplace_back<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(*a1);
  }

  return result;
}

uint64_t mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache()
{
  {
    v2 = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache);
    *v2 = 1;
    v2[1] = -4096;
    v2[6] = -4096;
    v2[11] = -4096;
    v2[16] = -4096;
    _tlv_atexit(mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::~CacheType, v2);
  }

  return mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache(&mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::getStaticCache(void)::cache);
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::operator[](int *a1, void *a2)
{
  v5 = 0;
  if ((llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(a1, a2, &v5) & 1) == 0)
  {
    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(a1, v5, a2);
  }

  return v5 + 1;
}

void llvm::SmallVectorImpl<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner>::emplace_back<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 12))
  {
    v1 = *a1;
    mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::Owner();
  }

  llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(a1);
}

void mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::clearExpiredEntries(int *a1)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (v2)
    {
      v3 = a1 + 2;
      v4 = a1 + 42;
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 1);
      v5 = a1[4];
      v4 = &v3[10 * v5];
    }

    v8 = &v3[10 * v5];
    if (!v2)
    {
LABEL_16:
      v6 = *(a1 + 1);
      v9 = a1[4];
      goto LABEL_17;
    }

LABEL_13:
    v10 = a1 + 42;
    goto LABEL_18;
  }

  if (v2)
  {
    v6 = a1 + 2;
    v8 = a1 + 42;
    goto LABEL_8;
  }

  v6 = *(a1 + 1);
  v7 = a1[4];
  v8 = &v6[10 * v7];
  if (v7)
  {
LABEL_8:
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 10;
      if (v4 == v8)
      {
        v4 = v8;
        break;
      }
    }

    if ((*a1 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v9 = 0;
  v4 = *(a1 + 1);
LABEL_17:
  v10 = &v6[10 * v9];
LABEL_18:
  if (v4 != v10)
  {
    do
    {
        ;
      }

      v12 = atomic_load((*(v4 + 1) + 8));
      if ((v12 & 1) == 0)
      {
        v13 = *(v4 + 4);
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        v14 = *(v4 + 2);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v14);
        }

        *v4 = -8192;
        v15 = a1[1] + 1;
        *a1 -= 2;
        a1[1] = v15;
      }

      v4 = i;
    }

    while (i != v10);
  }
}

uint64_t mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::CacheType::~CacheType(uint64_t a1)
{
  v2 = *a1;
  if (*a1 > 1u)
  {
    v6 = (a1 + 8);
    if (v2)
    {
      v9 = (a1 + 168);
    }

    else
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      v9 = (v7 + 40 * v8);
      if (!v8)
      {
        v12 = 0;
        v4 = *(a1 + 8);
        goto LABEL_18;
      }

      v6 = *(a1 + 8);
    }

    v10 = *a1 & 1;
    v4 = v6;
    while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      v4 += 5;
      if (v4 == v9)
      {
        v4 = v9;
        break;
      }
    }
  }

  else
  {
    if (v2)
    {
      v3 = a1 + 8;
      v4 = (a1 + 168);
      v5 = 4;
    }

    else
    {
      v3 = *(a1 + 8);
      v5 = *(a1 + 16);
      v4 = (v3 + 40 * v5);
    }

    v9 = (v3 + 40 * v5);
    v10 = *a1;
  }

  v6 = (a1 + 8);
  if (v10)
  {
    v11 = (a1 + 168);
    goto LABEL_19;
  }

  v7 = *(a1 + 8);
  v12 = *(a1 + 16);
LABEL_18:
  v11 = (v7 + 40 * v12);
LABEL_19:
  if (v4 != v11)
  {
    v34 = v6;
    do
    {
      v13 = v4[4];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = v4[3];
          if (v16)
          {
            v17 = *v4[1];
            std::recursive_mutex::lock((v16 + 40));
            v18 = *v16;
            v19 = *(v16 + 8);
            v20 = *v16 + 24 * v19;
            v21 = *v16;
            if (v19)
            {
              v22 = 24 * v19;
              v21 = *v16;
              while (*v21 != v17)
              {
                v21 += 24;
                v22 -= 24;
                if (!v22)
                {
                  v21 = *v16 + 24 * v19;
                  break;
                }
              }
            }

            if (v21 + 24 != v20)
            {
              do
              {
                v23 = *(v21 + 24);
                *(v21 + 24) = 0;
                std::unique_ptr<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::reset[abi:nn200100](v21, v23);
                v24 = *(v21 + 32);
                *(v21 + 32) = 0;
                *(v21 + 40) = 0;
                v25 = *(v21 + 16);
                *(v21 + 8) = v24;
                if (v25)
                {
                  std::__shared_weak_count::__release_weak(v25);
                }

                v26 = v21 + 48;
                v21 += 24;
              }

              while (v26 != v20);
              LODWORD(v19) = *(v16 + 8);
              v18 = *v16;
            }

            v27 = v19 - 1;
            *(v16 + 8) = v27;
            mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner((v18 + 24 * v27));
            std::recursive_mutex::unlock((v16 + 40));
          }

          std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        }
      }

      do
      {
        v4 += 5;
      }

      while (v4 != v9 && (*v4 | 0x1000) == 0xFFFFFFFFFFFFF000);
    }

    while (v4 != v11);
    v2 = *a1;
    v6 = v34;
  }

  if (v2)
  {
    v29 = a1 + 8;
    v28 = 4;
  }

  else
  {
    v28 = *(a1 + 16);
    if (!v28)
    {
      goto LABEL_52;
    }

    v29 = *(a1 + 8);
  }

  v30 = (v29 + 16);
  v31 = 40 * v28;
  do
  {
    if ((*(v30 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v32 = v30[2];
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      if (*v30)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*v30);
      }
    }

    v30 += 5;
    v31 -= 40;
  }

  while (v31);
  v2 = *a1;
LABEL_52:
  if ((v2 & 1) == 0)
  {
    MEMORY[0x25F891030](*v6, 8);
  }

  return a1;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
    if (!v4)
    {
      v7 = 0;
      result = 0;
      goto LABEL_7;
    }

    v3 = *(a1 + 8);
  }

  v5 = v4 - 1;
  v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
  v7 = (v3 + 40 * v6);
  v8 = *v7;
  if (*a2 == *v7)
  {
    result = 1;
  }

  else
  {
    v10 = 0;
    v11 = 1;
    result = 1;
    while (v8 != -4096)
    {
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == -8192;
      }

      if (v12)
      {
        v10 = v7;
      }

      v13 = v6 + v11++;
      v6 = v13 & v5;
      v7 = (v3 + 40 * (v13 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        goto LABEL_7;
      }
    }

    result = 0;
    if (v10)
    {
      v7 = v10;
    }
  }

LABEL_7:
  *a3 = v7;
  return result;
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucket<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(int *a1, void *a2, void *a3)
{
  v4 = llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucketImpl<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(a1, a3, a2);
  *v4 = *a3;
  *(v4 + 3) = 0u;
  *(v4 + 1) = 0u;
  operator new();
}

void *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::InsertIntoBucketImpl<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(int *a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = *a1;
  v6 = *a1 >> 1;
  if (*a1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1[4];
  }

  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - a1[1] > v7 >> 3)
  {
    goto LABEL_6;
  }

  llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(a1, v7);
  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(a1, a2, &v9);
  v5 = *a1;
  a3 = v9;
LABEL_6:
  *a1 = v5 + 2;
  if (*a3 != -4096)
  {
    --a1[1];
  }

  return a3;
}

void llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::grow(uint64_t a1, unsigned int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2 >= 5)
  {
    v3 = (a2 - 1) | ((a2 - 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    v5 = ((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8);
    if ((v5 + 1) > 0x40)
    {
      a2 = v5 + 1;
    }

    else
    {
      a2 = 64;
    }
  }

  if ((*a1 & 1) == 0)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (a2 > 4)
    {
      v14 = a2;
      *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
      *(a1 + 16) = v14;
    }

    else
    {
      *a1 |= 1u;
    }

    llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, v6, v6 + 40 * v7);
    v15 = *MEMORY[0x277D85DE8];

    JUMPOUT(0x25F891030);
  }

  v8 = 0;
  v9 = v16;
  do
  {
    v10 = a1 + v8;
    v11 = *(a1 + v8 + 8);
    if ((v11 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      *v9 = v11;
      *(v9 + 8) = *(v10 + 16);
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v9 + 24) = *(v10 + 32);
      *(v10 + 32) = 0;
      *(v10 + 40) = 0;
      v9 += 40;
    }

    v8 += 40;
  }

  while (v8 != 160);
  if (a2 > 4)
  {
    *a1 &= ~1u;
    v12 = a2;
    *(a1 + 8) = llvm::allocate_buffer((40 * a2), 8uLL);
    *(a1 + 16) = v12;
  }

  llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(a1, v16, v9);
  v13 = *MEMORY[0x277D85DE8];
}

void llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a1 & 1;
  if (v6)
  {
    v8 = (a1 + 8);
    v9 = (a1 + 168);
  }

  else
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *(a1 + 8);
    v9 = &v8[40 * v7];
  }

  v10 = 0;
  v11 = v9 - v8 - 40;
  v12 = vdupq_n_s64(v11 / 0x28);
  do
  {
    v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_25D0A0500)));
    if (v13.i8[0])
    {
      *v8 = -4096;
    }

    if (v13.i8[4])
    {
      *(v8 + 5) = -4096;
    }

    v10 += 2;
    v8 += 80;
  }

  while (((v11 / 0x28 + 2) & 0xFFFFFFFFFFFFFFELL) != v10);
LABEL_18:
  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v17 = 0;
      llvm::DenseMapBase<llvm::SmallDenseMap<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,4u,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer,llvm::DenseMapInfo<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,void>,llvm::detail::DenseMapPair<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *,mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer>>::LookupBucketFor<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::PerInstanceState *>(a1, a2, &v17);
      *v17 = *a2;
      v14 = v17;
      *(v17 + 8) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(v14 + 24) = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a2 + 32) = 0;
      *a1 += 2;
      v15 = *(a2 + 32);
      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = *(a2 + 16);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      }
    }

    a2 += 40;
  }
}

void std::__shared_ptr_emplace<std::pair<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul> *,std::atomic<BOOL>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286E78D40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F891040);
}

void llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::growAndEmplaceBack<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Observer &>(uint64_t a1)
{
  v3 = 0;
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), 0, 24, &v3);
  v2 = *(a1 + 8);
  mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::Owner();
}

uint64_t *llvm::SmallVectorTemplateBase<mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner,false>::moveElementsForGrow(uint64_t *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (v2)
  {
    v3 = *result;
    v4 = *result + 24 * v2;
    do
    {
      v5 = *v3;
      *v3 = 0;
      *a2 = v5;
      *(a2 + 16) = *(v3 + 16);
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      a2 += 24;
      v3 += 24;
    }

    while (v3 != v4);
    v6 = *(result + 2);
    if (v6)
    {
      v7 = -24 * v6;
      result = (*result + 24 * v6 - 24);
      do
      {
        result = mlir::ThreadLocalCache<llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>>::Owner::~Owner(result) - 3;
        v7 += 24;
      }

      while (v7);
    }
  }

  return result;
}

void **llvm::object_deleter<anonymous namespace::MLIRContextOptions>::call(void **result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 46;
    result[46] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((result + 65));
    llvm::cl::Option::~Option(v2);
    v1[23] = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 42));
    llvm::cl::Option::~Option(v1 + 23);
    *v1 = &unk_286E79348;
    std::__function::__value_func<void ()(BOOL const&)>::~__value_func[abi:nn200100]((v1 + 19));
    llvm::cl::Option::~Option(v1);

    JUMPOUT(0x25F891040);
  }

  return result;
}

llvm::cl::Option *llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>::opt<char [28],llvm::cl::desc,llvm::cl::initializer<BOOL>>(llvm::cl::Option *a1, char *a2, __n128 *a3, _BYTE **a4)
{
  v8 = llvm::cl::Option::Option(a1, 0, 0);
  *(v8 + 120) = 0;
  *(v8 + 128) = &unk_286E76000;
  *(v8 + 136) = 0;
  *v8 = &unk_286E79348;
  *(v8 + 144) = &unk_286E79090;
  *(v8 + 152) = &unk_286E76020;
  *(v8 + 176) = v8 + 152;
  llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [28],llvm::cl::desc,llvm::cl::initializer<BOOL>>(v8, a2, a3, a4);
  llvm::cl::Option::addArgument(a1);
  return a1;
}

__n128 llvm::cl::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>,char [28],llvm::cl::desc,llvm::cl::initializer<BOOL>>(uint64_t a1, char *__s, __n128 *a3, _BYTE **a4)
{
  v8 = strlen(__s);
  llvm::cl::Option::setArgStr(a1, __s, v8);
  result = *a3;
  *(a1 + 32) = *a3;
  v10 = *a4;
  *(a1 + 120) = **a4;
  *(a1 + 137) = 1;
  *(a1 + 136) = *v10;
  return result;
}

void mlir::MLIRContextImpl::~MLIRContextImpl(mlir::MLIRContextImpl *this)
{
  if (*(this + 92))
  {
    v2 = *(this + 94);
    if (v2)
    {
      v3 = 16 * v2;
      v4 = *(this + 45);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 2;
        v3 -= 16;
        if (!v3)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      v4 = *(this + 45);
    }

    v35 = *(this + 45) + 16 * v2;
LABEL_58:
    if (v4 != v35)
    {
      v36 = v4[1];
      llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase((v36 + 72));
      mlir::detail::InterfaceMap::~InterfaceMap((v36 + 8));
      while (1)
      {
        v4 += 2;
        if (v4 == v35)
        {
          break;
        }

        if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_58;
        }
      }
    }
  }

LABEL_6:
  if (*(this + 136))
  {
    v5 = *(this + 138);
    if (v5)
    {
      v6 = 16 * v5;
      v7 = *(this + 67);
      while ((*v7 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v7 += 2;
        v6 -= 16;
        if (!v6)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v7 = *(this + 67);
    }

    v37 = *(this + 67) + 16 * v5;
LABEL_65:
    if (v7 != v37)
    {
      v38 = v7[1];
      llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::~UniqueFunctionBase((v38 + 72));
      mlir::detail::InterfaceMap::~InterfaceMap((v38 + 8));
      while (1)
      {
        v7 += 2;
        if (v7 == v37)
        {
          break;
        }

        if ((*v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          goto LABEL_65;
        }
      }
    }
  }

LABEL_11:
  v8 = *(this + 93);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  v9 = *(this + 182);
  v10 = *(this + 89);
  if (v9)
  {
    v11 = 80 * v9;
    v12 = (v10 + 32);
    do
    {
      if (*(v12 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = *(v12 - 2);
        if (v12 != v13)
        {
          free(v13);
        }
      }

      v12 += 10;
      v11 -= 80;
    }

    while (v11);
    v10 = *(this + 89);
  }

  MEMORY[0x25F891030](v10, 8);
  std::recursive_mutex::~recursive_mutex(this + 10);
  MEMORY[0x25F891030](*(this + 71), 8);
  mlir::StorageUniquer::~StorageUniquer((this + 560));
  MEMORY[0x25F891030](*(this + 67), 8);
  MEMORY[0x25F891030](*(this + 49), 8);
  mlir::StorageUniquer::~StorageUniquer((this + 384));
  MEMORY[0x25F891030](*(this + 45), 8);
  mlir::StorageUniquer::~StorageUniquer((this + 352));
  v14 = *(this + 42);
  pthread_rwlock_destroy(v14);
  free(v14);
  llvm::SmallVector<std::pair<mlir::TypeID,std::unique_ptr<mlir::DialectExtensionBase>>,0u>::~SmallVector(this + 40);
  MEMORY[0x25F891030](*(this + 37), 8);
  std::__tree<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::pair<mlir::TypeID,std::function<mlir::Dialect * ()(mlir::MLIRContext *)>>>>>::destroy(this + 272, *(this + 35));
  v16 = (this + 248);
  v15 = *(this + 31);
  v17 = *(this + 66);
  if (v17)
  {
    v18 = 24 * v17;
    v19 = (v15 + 16);
    do
    {
      if (*(v19 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = *v19;
        *v19 = 0;
        if (v20)
        {
          (*(*v20 + 8))(v20);
        }
      }

      v19 += 3;
      v18 -= 24;
    }

    while (v18);
    v15 = *v16;
  }

  MEMORY[0x25F891030](v15, 8);
  v21 = *(this + 29);
  if (v21 != v16)
  {
    free(v21);
  }

  if (*(this + 55))
  {
    v22 = *(this + 54);
    if (v22)
    {
      v23 = 0;
      v24 = 8 * v22;
      do
      {
        v25 = *(*(this + 26) + v23);
        if (v25 != -8 && v25 != 0)
        {
          MEMORY[0x25F891030]();
        }

        v23 += 8;
      }

      while (v24 != v23);
    }
  }

  free(*(this + 26));
  MEMORY[0x25F891030](*(this + 23), 8);
  if (*(this + 43))
  {
    v27 = *(this + 42);
    if (v27)
    {
      v28 = 0;
      v29 = 8 * v27;
      do
      {
        v30 = *(*(this + 20) + v28);
        if (v30 != -8 && v30 != 0)
        {
          v32 = *(v30 + 8);
          *(v30 + 8) = 0;
          if (v32)
          {
            (*(*v32 + 8))(v32);
          }

          MEMORY[0x25F891030](v30, 8);
        }

        v28 += 8;
      }

      while (v29 != v28);
    }
  }

  free(*(this + 20));
  llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::~BumpPtrAllocatorImpl(this + 64);
  v33 = *(this + 7);
  *(this + 7) = 0;
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  mlir::DiagnosticEngine::~DiagnosticEngine((this + 32));
  v34 = *(this + 3);
  if (v34 == this)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))(v34);
  }
}

uint64_t mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4 | (a5 << 32);
  memset(v13, 0, sizeof(v13));
  memset(__dst, 0, sizeof(__dst));
  v14 = 0;
  v15 = 0xFF51AFD7ED558CCDLL;
  v6 = llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,mlir::IntegerType::SignednessSemantics>(__dst, __dst, v13, a4, &v10 + 1);
  v9 = &v10;
  *&__dst[0] = &v10;
  *(&__dst[0] + 1) = v11;
  result = mlir::detail::StorageUniquerImpl::getOrCreate(*a1, &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id, v6, llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v9, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, __dst);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<unsigned int,mlir::IntegerType::SignednessSemantics>(uint64_t a1, _DWORD *__dst, char *a3, int a4, int *a5)
{
  v17 = 0;
  v8 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v17, __dst, a3, a4);
  v9 = v17;
  v10 = *a5;
  __src = *a5;
  v11 = v8 + 4;
  if (v8 + 4 <= a3)
  {
    *v8 = v10;
  }

  else
  {
    v12 = a3 - v8;
    memcpy(v8, &__src, a3 - v8);
    if (v9)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v13, v14);
      v9 += 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v13, v14, v18);
      v15 = v18[1];
      *(a1 + 64) = v18[0];
      *(a1 + 80) = v15;
      *(a1 + 96) = v18[2];
      *(a1 + 112) = v19;
      v9 = 64;
    }

    v11 = (a1 + 4 - v12);
    if (v11 > a3)
    {
      v11 = a1;
    }

    else
    {
      memcpy(a1, &__src + v12, 4 - v12);
    }
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v9, v11, a3);
}

_DWORD *llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(uint64_t a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return __dst + 1;
  }

  else
  {
    v8 = a4 - __dst;
    memcpy(__dst, &__src, a4 - __dst);
    if (*a2)
    {
      llvm::hashing::detail::hash_state::mix((a1 + 64), a1, v9, v10);
      v11 = *a2 + 64;
    }

    else
    {
      llvm::hashing::detail::hash_state::create(a1, *(a1 + 120), v9, v10, v14);
      v12 = v14[1];
      *(a1 + 64) = v14[0];
      *(a1 + 80) = v12;
      *(a1 + 96) = v14[2];
      *(a1 + 112) = v15;
      v11 = 64;
    }

    *a2 = v11;
    if (a1 + 4 - v8 <= a4)
    {
      memcpy(a1, &__src + v8, 4 - v8);
      a1 += 4 - v8;
    }
  }

  return a1;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,int,mlir::IntegerType::SignednessSemantics>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,int,mlir::IntegerType::SignednessSemantics &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = (v3 >> 2) & 0xC0000000 | v3 & 0x3FFFFFFF;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJiNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESE_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSG_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::AffineMapStorage,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D8B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D8B0))
  {
    v1 = llvm::getTypeName<mlir::detail::AffineMapStorage>();
    _MergedGlobals_8 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D8B0);
  }

  return _MergedGlobals_8;
}

uint64_t llvm::getTypeName<mlir::detail::AffineMapStorage>()
{
  if ((atomic_load_explicit(&qword_27FC1D8C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D8C8))
  {
    qword_27FC1D8B8 = llvm::detail::getTypeNameImpl<mlir::detail::AffineMapStorage>();
    unk_27FC1D8C0 = v1;
    __cxa_guard_release(&qword_27FC1D8C8);
  }

  return qword_27FC1D8B8;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::AffineMapStorage>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::AffineMapStorage]";
  v6 = 92;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::detail::TypeIDResolver<mlir::detail::IntegerSetStorage,void>::resolveTypeID()
{
  if ((atomic_load_explicit(&qword_27FC1D8D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D8D8))
  {
    v1 = llvm::getTypeName<mlir::detail::IntegerSetStorage>();
    qword_27FC1D8D0 = mlir::detail::FallbackTypeIDResolver::registerImplicitTypeID(v1, v2);
    __cxa_guard_release(&qword_27FC1D8D8);
  }

  return qword_27FC1D8D0;
}

uint64_t llvm::getTypeName<mlir::detail::IntegerSetStorage>()
{
  if ((atomic_load_explicit(&qword_27FC1D8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FC1D8F0))
  {
    qword_27FC1D8E0 = llvm::detail::getTypeNameImpl<mlir::detail::IntegerSetStorage>();
    *algn_27FC1D8E8 = v1;
    __cxa_guard_release(&qword_27FC1D8F0);
  }

  return qword_27FC1D8E0;
}

const char *llvm::detail::getTypeNameImpl<mlir::detail::IntegerSetStorage>()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::detail::IntegerSetStorage]";
  v6 = 93;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<mlir::Dialect *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::StringRef>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::doFind<llvm::StringRef>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    return 0;
  }

  v6 = *a1;
  v7 = v4 - 1;
  v8 = (v4 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
  v9 = v6 + 24 * v8;
  if (!llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8)))
  {
    v10 = 1;
    while (*v9 != -1)
    {
      v11 = v10 + 1;
      v8 = (v8 + v10) & v7;
      v9 = v6 + 24 * v8;
      isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v9, *(v9 + 8));
      v10 = v11;
      if (isEqual)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::LookupBucketFor<llvm::StringRef>(uint64_t a1, int a2, uint64_t a3, unint64_t *a4)
{
  if (a2)
  {
    v7 = a2 - 1;
    v8 = (a2 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a3, *a3 + *(a3 + 8), a3, a4);
    v9 = a1 + 24 * v8;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8)))
    {
      result = 1;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      while (*v9 != -1)
      {
        if (v11)
        {
          v13 = 0;
        }

        else
        {
          v13 = *v9 == -2;
        }

        if (v13)
        {
          v11 = v9;
        }

        v17 = v11;
        v14 = v12 + 1;
        v8 = (v8 + v12) & v7;
        v9 = a1 + 24 * v8;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a3, *(a3 + 8), *v9, *(v9 + 8));
        v11 = v17;
        v16 = isEqual;
        result = 1;
        v12 = v14;
        if (v16)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v11)
      {
        v9 = v11;
      }
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

LABEL_5:
  *a4 = v9;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 24 * v10;
      do
      {
        *result = xmmword_25D0A05E0;
        result = (result + 24);
        v11 -= 24;
      }

      while (v11);
    }

    if (v3)
    {
      v12 = 24 * v3;
      v13 = v4;
      do
      {
        if (*v13 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>,llvm::StringRef,std::unique_ptr<mlir::Dialect>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,std::unique_ptr<mlir::Dialect>>>::LookupBucketFor<llvm::StringRef>(*a1, *(a1 + 16), v13, &v19);
          v14 = v19;
          *v19 = *v13;
          v15 = *(v13 + 16);
          *(v13 + 16) = 0;
          *(v14 + 2) = v15;
          ++*(a1 + 8);
          v16 = *(v13 + 16);
          *(v13 + 16) = 0;
          if (v16)
          {
            (*(*v16 + 8))(v16);
          }
        }

        v13 += 24;
        v12 -= 24;
      }

      while (v12);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 24 * v17;
    do
    {
      *result = xmmword_25D0A05E0;
      result = (result + 24);
      v18 -= 24;
    }

    while (v18);
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_recursive_helper::combine<llvm::hash_code,unsigned int>(llvm::hashing::detail::hash_combine_recursive_helper *a1, unint64_t a2, void *a3, char *a4, uint64_t *a5, int *a6)
{
  v12 = a2;
  v9 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(a1, &v12, a3, a4, *a5);
  v13 = v12;
  v10 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(a1, &v13, v9, a4, *a6);
  return llvm::hashing::detail::hash_combine_recursive_helper::combine(a1, v13, v10, a4);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::LookupBucketFor<mlir::TypeID>(a1, v19, &v28);
          *v28 = *v19;
          v28[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0xFFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 16;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *(v26 - 2) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 4;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::try_emplace<mlir::AbstractType *>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13, a4);
  v10 = v13;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, v13);
    v10 = result;
    *result = *a2;
    *(result + 16) = *a3;
    v11 = 1;
  }

  v12 = *a1 + 24 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, v8);
  v5 = *(a1 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 24 * v11;
      do
      {
        *result = xmmword_25D0A05E0;
        result = (result + 24);
        v12 -= 24;
      }

      while (v12);
    }

    if (v3)
    {
      v13 = 24 * v3;
      v14 = v4;
      do
      {
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>,llvm::StringRef,mlir::AbstractType *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractType *>>::LookupBucketFor<llvm::StringRef>(a1, v14, &v18, v10);
          v15 = v18;
          *v18 = *v14;
          *(v15 + 2) = *(v14 + 16);
          ++*(a1 + 8);
        }

        v14 += 24;
        v13 -= 24;
      }

      while (v13);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 24 * v16;
    do
    {
      *result = xmmword_25D0A05E0;
      result = (result + 24);
      v17 -= 24;
    }

    while (v17);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::try_emplace<mlir::AbstractAttribute *>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::InsertIntoBucketImpl<mlir::TypeID>(a1, a2, v12);
    v9 = result;
    *result = *a2;
    *(result + 8) = *a3;
    v10 = 1;
  }

  v11 = *a1 + 16 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::LookupBucketFor<mlir::TypeID>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 16 * (v13 & v5));
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
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::InsertIntoBucketImpl<mlir::TypeID>(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::LookupBucketFor<mlir::TypeID>(a1, a2, &v8);
  v5 = *(a1 + 8);
  a3 = v8;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

char *llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v28 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::LookupBucketFor<mlir::TypeID>(a1, v19, &v28);
          *v28 = *v19;
          v28[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v20 + 0xFFFFFFFFFFFFFFFLL;
    v23 = v22 & 0xFFFFFFFFFFFFFFFLL;
    v24 = (v22 & 0xFFFFFFFFFFFFFFFLL) - (v22 & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = result + 16;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v21), xmmword_25D0A0500)));
      if (v27.i8[0])
      {
        *(v26 - 2) = -4096;
      }

      if (v27.i8[4])
      {
        *v26 = -4096;
      }

      v21 += 2;
      v26 += 4;
    }

    while (v24 != v21);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::try_emplace<mlir::AbstractAttribute *>@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v13, a4);
  v10 = v13;
  if (result)
  {
    v11 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::InsertIntoBucketImpl<llvm::StringRef>(a1, a2, v13);
    v10 = result;
    *result = *a2;
    *(result + 16) = *a3;
    v11 = 1;
  }

  v12 = *a1 + 24 * *(a1 + 16);
  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = v11;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 24 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 24 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, v8);
  v5 = *(a1 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((24 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 24 * v11;
      do
      {
        *result = xmmword_25D0A05E0;
        result = (result + 24);
        v12 -= 24;
      }

      while (v12);
    }

    if (v3)
    {
      v13 = 24 * v3;
      v14 = v4;
      do
      {
        if (*v14 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v18 = 0;
          llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>,llvm::StringRef,mlir::AbstractAttribute *,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,mlir::AbstractAttribute *>>::LookupBucketFor<llvm::StringRef>(a1, v14, &v18, v10);
          v15 = v18;
          *v18 = *v14;
          *(v15 + 2) = *(v14 + 16);
          ++*(a1 + 8);
        }

        v14 += 24;
        v13 -= 24;
      }

      while (v13);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 24 * v16;
    do
    {
      *result = xmmword_25D0A05E0;
      result = (result + 24);
      v17 -= 24;
    }

    while (v17);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>,mlir::TypeID,mlir::AbstractAttribute *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractAttribute *>>::doFind<mlir::TypeID>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::doFind<mlir::TypeID>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::LookupBucketFor<mlir::TypeID>(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -8192;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_5:
  *a4 = v6;
  return v8;
}

char *llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((16 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = 0;
      v12 = v10 + 0xFFFFFFFFFFFFFFFLL;
      v13 = v12 & 0xFFFFFFFFFFFFFFFLL;
      v14 = (v12 & 0xFFFFFFFFFFFFFFFLL) - (v12 & 1) + 2;
      v15 = vdupq_n_s64(v13);
      v16 = result + 16;
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v11), xmmword_25D0A0500)));
        if (v17.i8[0])
        {
          *(v16 - 2) = -4096;
        }

        if (v17.i8[4])
        {
          *v16 = -4096;
        }

        v11 += 2;
        v16 += 4;
      }

      while (v14 != v11);
    }

    if (v3)
    {
      v18 = 16 * v3;
      v19 = v4;
      do
      {
        v20 = *v19;
        if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v30 = 0;
          llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>,mlir::TypeID,mlir::RegisteredOperationName,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::RegisteredOperationName>>::LookupBucketFor<mlir::TypeID>(*a1, *(a1 + 16), v20, &v30);
          v21 = v30;
          *v30 = *v19;
          v21[1] = v19[1];
          ++*(a1 + 8);
        }

        v19 += 2;
        v18 -= 16;
      }

      while (v18);
    }

    JUMPOUT(0x25F891030);
  }

  *(a1 + 8) = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = 0;
    v24 = v22 + 0xFFFFFFFFFFFFFFFLL;
    v25 = v24 & 0xFFFFFFFFFFFFFFFLL;
    v26 = (v24 & 0xFFFFFFFFFFFFFFFLL) - (v24 & 1) + 2;
    v27 = vdupq_n_s64(v25);
    v28 = result + 16;
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(vdupq_n_s64(v23), xmmword_25D0A0500)));
      if (v29.i8[0])
      {
        *(v28 - 2) = -4096;
      }

      if (v29.i8[4])
      {
        *v28 = -4096;
      }

      v23 += 2;
      v28 += 4;
    }

    while (v26 != v23);
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>,mlir::TypeID,mlir::AbstractType *,llvm::DenseMapInfo<mlir::TypeID,void>,llvm::detail::DenseMapPair<mlir::TypeID,mlir::AbstractType *>>::doFind<mlir::TypeID>(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = v2 - 1;
    v5 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v6 = *(*a1 + 16 * (((*a2 >> 4) ^ (*a2 >> 9)) & v4));
    if (*a2 == v6)
    {
      return v3 + 16 * v5;
    }

    v8 = 1;
    while (v6 != -4096)
    {
      v9 = v5 + v8++;
      v5 = v9 & v4;
      v6 = *(v3 + 16 * v5);
      if (*a2 == v6)
      {
        return v3 + 16 * v5;
      }
    }
  }

  return 0;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 & 0x3FFFFFFF;
  v4 = v2 >> 30;
  return v3 == **a1 && v4 == *(*a1 + 4);
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerTypeStorage * mlir::StorageUniquer::get<mlir::detail::IntegerTypeStorage,unsigned int &,mlir::IntegerType::SignednessSemantics &>(llvm::function_ref<void ()(mlir::detail::IntegerTypeStorage *)>,mlir::TypeID,unsigned int &,mlir::IntegerType::SignednessSemantics &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(unint64_t **a1, unint64_t *a2)
{
  v3 = **a1;
  v4 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 16, 3);
  *v4 = 0;
  *(v4 + 8) = (v3 >> 2) & 0xC0000000 | v3 & 0x3FFFFFFF;
  v5 = a1[1];
  if (*v5)
  {
    (*v5)(v5[1], v4);
  }

  return v4;
}

uint64_t _ZN4llvm12function_refIFvPN4mlir6detail18IntegerTypeStorageEEE11callback_fnIZNS2_11TypeUniquer13getWithTypeIDINS1_11IntegerTypeEJRjRNSA_19SignednessSemanticsEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS4_(uint64_t a1, uint64_t *a2)
{
  result = mlir::AbstractType::lookup(*a1, **(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(uint64_t *a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = *(a1 + 4);
  if (v5)
  {
    v7 = *a1;
    v8 = v5 - 1;
    v9 = (v5 - 1) & llvm::hashing::detail::hash_combine_range_impl<char const>(*a2, *a2 + *(a2 + 8), a3, a4);
    v10 = v7 + 80 * v9;
    if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8)))
    {
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (*v10 != -1)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = *v10 == -2;
        }

        if (v14)
        {
          v12 = v10;
        }

        v18 = v12;
        v15 = v13 + 1;
        v9 = (v9 + v13) & v8;
        v10 = v7 + 80 * v9;
        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*a2, *(a2 + 8), *v10, *(v10 + 8));
        v12 = v18;
        v17 = isEqual;
        result = 1;
        v13 = v15;
        if (v17)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v12)
      {
        v10 = v12;
      }
    }
  }

  else
  {
    v10 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::InsertIntoBucketImpl<llvm::StringRef>(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, a2, &v9, v8);
  v5 = *(a1 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v5 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

_OWORD *llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer((80 * v8), 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 80 * v11;
      do
      {
        *result = xmmword_25D0A05E0;
        result += 5;
        v12 -= 80;
      }

      while (v12);
    }

    if (!v3)
    {
LABEL_27:

      JUMPOUT(0x25F891030);
    }

    v13 = 80 * v3;
    v14 = (v4 + 32);
    while (1)
    {
      v15 = (v14 - 4);
      if (*(v14 - 4) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_26:
      v14 += 10;
      v13 -= 80;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    v28 = 0;
    llvm::DenseMapBase<llvm::DenseMap<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>,llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::StringRef,llvm::SmallVector<mlir::detail::StringAttrStorage *,6u>>>::LookupBucketFor<llvm::StringRef>(a1, (v14 - 4), &v28, v10);
    v16 = v28;
    v17 = *v15;
    v18 = (v28 + 32);
    v19 = v28;
    *(v28 + 16) = v28 + 32;
    v20 = (v19 + 16);
    *v16 = v17;
    *(v16 + 24) = 0x600000000;
    v21 = *(v14 - 2);
    v22 = *(v14 - 2);
    if (v15 == v16 || v21 == 0)
    {
LABEL_24:
      ++*(a1 + 8);
      if (v14 != v22)
      {
        free(v22);
      }

      goto LABEL_26;
    }

    if (v14 != v22)
    {
      *(v16 + 16) = v22;
      v24 = *(v14 - 1);
      *(v16 + 24) = v21;
      *(v16 + 28) = v24;
      *(v14 - 2) = v14;
      *(v14 - 1) = 0;
      v22 = v14;
LABEL_23:
      *(v14 - 2) = 0;
      goto LABEL_24;
    }

    if (v21 < 7)
    {
      v25 = *(v14 - 2);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v20, v18, *(v14 - 2), 8);
      v25 = *(v14 - 2);
      v22 = *(v14 - 2);
      if (!v25)
      {
LABEL_22:
        *(v16 + 24) = v21;
        goto LABEL_23;
      }

      v18 = *v20;
    }

    memcpy(v18, v22, 8 * v25);
    v22 = *(v14 - 2);
    goto LABEL_22;
  }

  *(a1 + 8) = 0;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = 80 * v26;
    do
    {
      *result = xmmword_25D0A05E0;
      result += 5;
      v27 -= 80;
    }

    while (v27);
  }

  return result;
}

unint64_t llvm::hashing::detail::hash_combine_range_impl<mlir::AffineExpr const*>(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    v7 = 0;
LABEL_7:
    result = llvm::hashing::detail::hash_short(__src, v7, 0xFF51AFD7ED558CCDLL);
  }

  else
  {
    v5 = a1;
    v6 = 0;
    while (v6 <= 0x38)
    {
      v7 = v6 + 8;
      v8 = *v5++;
      v9 = 0x9DDFEA08EB382D69 * ((8 * v8 - 0xAE502812AA7333) ^ HIDWORD(v8));
      *&__src[v6] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v8) ^ (v9 >> 47) ^ v9)) >> 47));
      v6 += 8;
      if (v5 == a2)
      {
        goto LABEL_7;
      }
    }

    v20[0] = xmmword_25D0A0610;
    v20[1] = xmmword_25D0A0620;
    v20[2] = xmmword_25D0A0630;
    v21 = 0xF7ACCA5326449396;
    llvm::hashing::detail::hash_state::mix(v20, __src, a3, a4);
    v11 = 64;
    while (v5 != a2)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 8;
        v14 = *v5++;
        v15 = 0x9DDFEA08EB382D69 * ((8 * v14 - 0xAE502812AA7333) ^ HIDWORD(v14));
        *&__src[v12] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v15 >> 47) ^ v15)) >> 47));
        if (v5 == a2)
        {
          break;
        }

        v16 = v12 >= 0x31;
        v12 += 8;
      }

      while (!v16);
      std::__rotate[abi:nn200100]<std::_ClassicAlgPolicy,char *,char *>(__src, &__src[v13], &v23);
      llvm::hashing::detail::hash_state::mix(v20, __src, v17, v18);
      v11 += v13;
    }

    result = llvm::hashing::detail::hash_state::finalize(v20, v11);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, _DWORD *a2)
{
  v2 = *a1;
  if (**a1 != *a2)
  {
    return 0;
  }

  if (v2[1] != a2[1])
  {
    return 0;
  }

  v3 = *(v2 + 2);
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  v5 = (a2 + 6);
  v6 = 8 * v3 - 8;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v4++;
    result = v9 == v7;
    v11 = v9 != v7 || v6 == 0;
    v6 -= 8;
  }

  while (!v11);
  return result;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::AffineMapStorage * mlir::StorageUniquer::get<mlir::detail::AffineMapStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &>(llvm::function_ref<void ()(mlir::detail::AffineMapStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(void *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  v6 = 8 * v5;
  v7 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v5 + 24, 3);
  v8 = v7;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  *v7 = *v3;
  *(v7 + 4) = v3[1];
  *(v7 + 8) = v5;
  if (v5)
  {
    v9 = (v7 + 24);
    do
    {
      v10 = *v4++;
      *v9++ = v10;
      v6 -= 8;
    }

    while (v6);
  }

  v11 = a1[1];
  if (*v11)
  {
    (*v11)(*(v11 + 8), v7);
  }

  return v8;
}

BOOL llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (**a1 == *a2 && v2[1] == *(a2 + 4))
  {
    v3 = *(v2 + 2);
    if (v3 == *(a2 + 16))
    {
      if (v3)
      {
        v4 = *(v2 + 1);
        v5 = *(a2 + 8);
        v6 = 8 * v3;
        while (*v4 == *v5)
        {
          ++v4;
          ++v5;
          v6 -= 8;
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v7 = *(v2 + 4);
        if (v7 == *(a2 + 32))
        {
          return memcmp(*(v2 + 3), *(a2 + 24), v7) == 0;
        }
      }
    }
  }

  return 0;
}

unint64_t llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::detail::IntegerSetStorage * mlir::StorageUniquer::get<mlir::detail::IntegerSetStorage,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &>(llvm::function_ref<void ()(mlir::detail::IntegerSetStorage *)>,mlir::TypeID,unsigned int &,unsigned int &,llvm::ArrayRef<mlir::AffineExpr> &,llvm::ArrayRef<BOOL> &)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 40, 3);
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *v5 = *v4;
  *(v5 + 4) = *(v4 + 4);
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = *(v4 + 8);
    v8 = 8 * v6;
    v9 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, 8 * v6, 3);
    v10 = v9;
    do
    {
      v11 = *v7++;
      *v10++ = v11;
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  *(v5 + 8) = v9;
  *(v5 + 16) = v6;
  v12 = *(v4 + 32);
  if (v12)
  {
    v13 = *(v4 + 24);
    v14 = llvm::BumpPtrAllocatorImpl<llvm::MallocAllocator,4096ul,4096ul,128ul>::Allocate(a2, v12, 0);
    v15 = v12;
    v16 = v14;
    do
    {
      v17 = *v13++;
      *v16++ = v17;
      --v15;
    }

    while (v15);
  }

  else
  {
    v14 = 0;
  }

  *(v5 + 24) = v14;
  *(v5 + 32) = v12;
  v18 = a1[1];
  if (*v18)
  {
    (*v18)(*(v18 + 8), v5);
  }

  return v5;
}

void llvm::detail::UniqueFunctionBase<mlir::InFlightDiagnostic>::CallImpl<mlir::detail::getDefaultDiagnosticEmitFn(mlir::Location const&)::$_0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4 = 257;
  emitDiag(v2, 2, v3, a2);
}

uint64_t convertDenseArrayFromAttr<mlir::detail::DenseArrayAttrImpl<int>,int>(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[25] = *MEMORY[0x277D85DE8];
  if (!a3 || *(*a3 + 136) != &mlir::detail::TypeIDResolver<mlir::DenseArrayAttr,void>::id || (v10 = *(a3 + 8), *(*v10 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v10[2] != 32)
  {
    a4(&v20, a5);
    if (v20)
    {
      mlir::Diagnostic::operator<<<10ul>(v21, "expected ");
      if (v20)
      {
        v19 = 261;
        v18[0] = a6;
        v18[1] = a7;
        mlir::Diagnostic::operator<<(v21, v18);
        if (v20)
        {
        }
      }
    }

    goto LABEL_13;
  }

  if (*(a3 + 16) != a2)
  {
    a4(&v20, a5);
    if (v20)
    {
      mlir::Diagnostic::operator<<<40ul>(v21, "size mismatch in attribute conversion: ");
    }

    v18[0] = *(a3 + 16);
    v15 = mlir::InFlightDiagnostic::operator<<<long long>(&v20, v18);
    v16 = v15;
    if (*v15)
    {
      mlir::Diagnostic::operator<<<5ul>((v15 + 1), " vs ");
    }

    v17 = a2;
    mlir::InFlightDiagnostic::operator<<<unsigned long>(v16, &v17);
LABEL_13:
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v20);
    result = 0;
    goto LABEL_14;
  }

  v12 = *(a3 + 32);
  if (v12 >= 4)
  {
    memmove(a1, *(a3 + 24), v12 & 0xFFFFFFFFFFFFFFFCLL);
  }

  result = 1;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

char *mlir::Operation::create(uint64_t a1)
{
  v16[9] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 72);
  v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFF9;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  Dictionary = mlir::NamedAttrList::getDictionary((a1 + 112), *(***a1 + 32));
  mlir::NamedAttrList::NamedAttrList(v15, Dictionary);
  v9 = *(a1 + 200) | 4;
  if (!*(a1 + 208))
  {
    v9 = 0;
  }

  v11 = mlir::Operation::create(v2, v3, v5 | 2, v4, v6 & 0xFFFFFFFFFFFFFFF9, v7, v15, *(a1 + 256), v9, *(a1 + 208), 0, *(a1 + 224) & 0xFFFFFFFFFFFFFFF9 | 2, *(a1 + 232));
  if (v15[0] != v16)
  {
    free(v15[0]);
  }

  v12 = *(a1 + 248);
  if (v12)
  {
    mlir::Operation::setPropertiesFromAttribute(v11, v12, 0, v10);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, uint64_t a12, unsigned int a13)
{
  v13 = mlir::Operation::create(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13);
  if (a13)
  {
    v14 = 0;
    v15 = (a12 & 0xFFFFFFFFFFFFFFF8);
    v16 = (a12 & 0xFFFFFFFFFFFFFFF8) == 0 || (a12 & 6) != 2;
    v17 = (a12 & 0xFFFFFFFFFFFFFFF8) == 0 || (a12 & 6) != 4;
    v18 = a12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (!v16 || (v19 = v18, !v17))
      {
        v19 = *v15;
      }

      if (v19)
      {
        if (!v16 || (v20 = v18, !v17))
        {
          v20 = *v15;
        }

        mlir::Region::takeBody(((&v13[16 * ((*(v13 + 11) >> 23) & 1) + 71 + ((*(v13 + 11) >> 21) & 0x7F8)] & 0xFFFFFFFFFFFFFFF8) + 32 * *(v13 + 10) + v14), v20);
      }

      v18 += 24;
      ++v15;
      v14 += 24;
    }

    while (24 * a13 != v14);
  }

  return v13;
}

uint64_t mlir::Operation::setPropertiesFromAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 44);
  v7 = (a1 + 16 * ((v6 >> 23) & 1) + 64);
  if (v5[2] == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    if (!BYTE3(v6))
    {
      v7 = 0;
    }

    *v7 = a2;
    return 1;
  }

  else
  {
    if (BYTE3(v6))
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    return (*(*v5 + 18))(v5, v5, v9, a2, a3, a4);
  }
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, mlir::NamedAttrList *a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, unsigned int a12)
{
  v22 = a2;
  (*(*a2 + 48))(a2, &v22, a7);
  v18 = v22;
  Dictionary = mlir::NamedAttrList::getDictionary(a7, *(**a1 + 32));
  return mlir::Operation::create(a1, v18, a3, a4, a5, a6, Dictionary, a8, a9, a10, a11, a12);
}

mlir::Region *mlir::Region::takeBody(mlir::Region *this, mlir::Region *a2)
{
  result = mlir::Region::dropAllReferences(this);
  v5 = *(this + 1);
  if (v5 != this)
  {
    do
    {
      result = llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::erase(this, v5);
      v5 = result;
    }

    while (result != this);
  }

  if (*a2 != a2)
  {
    v6 = *(a2 + 1);

    return llvm::iplist_impl<llvm::simple_ilist<mlir::Block>,llvm::ilist_traits<mlir::Block>>::transfer(this, this, a2, v6, a2);
  }

  return result;
}

char *mlir::Operation::create(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, unsigned int a12)
{
  v17 = a12;
  if (a4 >= 6)
  {
    v18 = a4 - 6;
  }

  else
  {
    v18 = 0;
  }

  if (a4 >= 6)
  {
    v19 = 6;
  }

  else
  {
    v19 = a4;
  }

  v20 = (*(*a2 + 112))(a2);
  v21 = v20 - (v20 != 0) + 8 * (v20 != 0);
  v64 = v21 & 0xFFFFFFF8;
  v65 = a7;
  v60 = a6;
  v61 = a8;
  if (a6)
  {
    v22 = (v21 & 0xFFFFFFF8);
    v23 = a10;
    v24 = a6;
  }

  else
  {
    v25 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroOperands>(void)::Empty>,void>::resolveTypeID();
    v26 = (*(*a2 + 32))(a2, v25);
    v24 = 0;
    v22 = v64;
    v23 = a10;
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      goto LABEL_12;
    }
  }

  v27 = 1;
  v28 = 16;
LABEL_12:
  v29 = v23 + v24;
  v30 = 16 * v19 + 24 * v18;
  v31 = (v30 - (v30 != 0) + 8 * (v30 != 0)) & 0xFFFFFFFFFFFFFFF8;
  v58 = malloc_type_malloc(v31 + 24 * a12 + 32 * v29 + ((v28 + v22 - (v28 + v22 != 0) + 8 * (v28 + v22 != 0)) & 0xFFFFFFFFFFFFFFF8) + 64, 0x100004077774924uLL);
  v32 = &v58[v31];
  *v32 = 0;
  *(v32 + 8) = 0;
  *(v32 + 16) = 0;
  *(v32 + 24) = a1;
  *(v32 + 32) = 0;
  *(v32 + 36) = a4;
  v62 = v27;
  if (v27)
  {
    v33 = 0x800000;
  }

  else
  {
    v33 = 0;
  }

  v34 = v21 | 7;
  if (v21 < 0)
  {
    v34 = (v21 | 7) + 7;
  }

  *(v32 + 40) = a10;
  *(v32 + 44) = a12 & 0x7FFFFF | ((v34 >> 3) << 24) | v33;
  *(v32 + 48) = a2;
  *(v32 + 56) = 0;
  if (v64)
  {
    v35 = v32 + 16 * (v33 >> 23) + 64;
    if (((v34 << 21) & 0xFF000000) != 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    (*(*a2 + 120))(a2, a2, v36, v61);
  }

  v37 = v65;
  if (a4)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = v39 + 1;
      v41 = (v32 - 16 * (v39 + 1));
      v42 = mlir::TypeRange::dereference_iterator(a3, v39);
      *v41 = 0;
      v41[1] = v42 & 0xFFFFFFFFFFFFFFF8 | (v38 >> 32);
      v38 += 0x100000000;
      v39 = v40;
    }

    while (v19 != v40);
    v37 = v65;
    if (a4 >= 7)
    {
      v43 = 0;
      v44 = &v58[v31 - 120];
      do
      {
        v45 = mlir::TypeRange::dereference_iterator(a3, v19 + v43);
        *v44 = 0;
        *(v44 + 1) = v45 & 0xFFFFFFFFFFFFFFF8 | 6;
        *(v44 + 2) = v43;
        v44 -= 24;
        ++v43;
      }

      while (v18 != v43);
    }
  }

  if (a12)
  {
    v46 = 0;
    v47 = 32 * *(v32 + 40);
    do
    {
      v48 = (((v32 + 64 + 16 * ((*(v32 + 44) >> 23) & 1) + ((*(v32 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + v47 + v46);
      *v48 = v48;
      v48[1] = v48;
      v48[2] = v32;
      v46 += 24;
      --v17;
    }

    while (v17);
  }

  v49 = *(v32 + 44);
  if (v62)
  {
    mlir::detail::OperandStorage::OperandStorage(v32 + 64, v32, ((v32 + 64 + 16 * ((v49 >> 23) & 1) + ((v49 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v32 + 40) + 24 * (v49 & 0x7FFFFF), a5, v60);
    LODWORD(v49) = *(v32 + 44);
  }

  if (a10)
  {
    v50 = ((v32 + 16 * ((v49 >> 23) & 1) + ((v49 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8);
    v51 = a10;
    if ((a9 & 4) != 0)
    {
      v52 = a9 & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v52 = 0;
    }

    v53 = (a9 & 0xFFFFFFFFFFFFFFF8) + 24;
    do
    {
      if ((a9 & 4) != 0 || (a9 & 0xFFFFFFFFFFFFFFF8) == 0)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = *v54;
      v50[2] = v32;
      v50[3] = v55;
      *v50 = 0;
      v50[1] = v55;
      v56 = *v55;
      *v50 = *v55;
      if (v56)
      {
        *(v56 + 8) = v50;
      }

      *v55 = v50;
      v52 += 8;
      v53 += 32;
      v50 += 4;
      --v51;
    }

    while (v51);
  }

  mlir::Operation::setAttrs(v32, v37);
  return &v58[v31];
}

void mlir::Operation::setAttrs(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v15[6] = *MEMORY[0x277D85DE8];
  if (*(a1 + 47))
  {
    v13 = v15;
    v14 = 0x300000000;
    v4 = *(a2 + 16);
    if (v4 >= 4)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v13, v15, v4, 16);
      v4 = *(v2 + 16);
    }

    if (v4)
    {
      v5 = *(v2 + 8);
      v6 = &v5[2 * v4];
      do
      {
        v7 = *v5;
        v8 = v5[1];
        (*(**(a1 + 48) + 80))(*(a1 + 48), a1, *(*v5 + 16), *(*v5 + 24));
        if (v9)
        {
          (*(**(a1 + 48) + 88))(*(a1 + 48), a1, v7, v8);
        }

        else
        {
          llvm::SmallVectorTemplateBase<mlir::NamedAttribute,true>::push_back(&v13, v7, v8);
        }

        v5 += 2;
      }

      while (v5 != v6);
      v10 = *(v2 + 16);
    }

    else
    {
      v10 = 0;
    }

    v11 = v13;
    if (v10 != v14)
    {
      v2 = mlir::DictionaryAttr::get(*(***(a1 + 24) + 32), v13, v14);
      v11 = v13;
    }

    if (v11 != v15)
    {
      free(v11);
    }
  }

  *(a1 + 56) = v2;
  v12 = *MEMORY[0x277D85DE8];
}