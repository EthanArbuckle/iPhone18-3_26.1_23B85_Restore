void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertEdge(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = *(a1 + 88);
    v6 = v4 - 1;
    v7 = (v4 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v8 = *(v5 + 16 * v7);
    if (v8 == a3)
    {
LABEL_3:
      if (v7 != v4)
      {
        v9 = *(v5 + 16 * v7 + 8);
        v10 = *(a1 + 32);
        if (v10 > v9)
        {
          v11 = *(a1 + 24);
          v12 = *(v11 + 8 * v9);
          if (v12)
          {
            *(a1 + 128) = 0;
            v13 = v6 & ((a4 >> 4) ^ (a4 >> 9));
            v14 = *(v5 + 16 * v13);
            if (v14 == a4)
            {
LABEL_7:
              if (v13 != v4)
              {
                v15 = *(v5 + 16 * v13 + 8);
                if (v10 > v15)
                {
                  v16 = *(v11 + 8 * v15);
                  if (v16)
                  {
                    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertReachable(a1, a2, v12, v16);
                    return;
                  }
                }
              }
            }

            else
            {
              v19 = 1;
              while (v14 != -4096)
              {
                v20 = v13 + v19++;
                v13 = v20 & v6;
                v14 = *(v5 + 16 * v13);
                if (v14 == a4)
                {
                  goto LABEL_7;
                }
              }
            }

            llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertUnreachable(a1, a2, v12, a4);
          }
        }
      }
    }

    else
    {
      v17 = 1;
      while (v8 != -4096)
      {
        v18 = v7 + v17++;
        v7 = v18 & v6;
        v8 = *(v5 + 16 * v7);
        if (v8 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteEdge(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 104);
  if (v4)
  {
    v5 = *(result + 88);
    v6 = v4 - 1;
    v7 = (v4 - 1) & ((a3 >> 4) ^ (a3 >> 9));
    v8 = *(v5 + 16 * v7);
    if (v8 == a3)
    {
LABEL_3:
      if (v7 != v4)
      {
        v9 = *(v5 + 16 * v7 + 8);
        v10 = *(result + 32);
        if (v10 > v9)
        {
          v11 = *(result + 24);
          if (*(v11 + 8 * v9))
          {
            v12 = v6 & ((a4 >> 4) ^ (a4 >> 9));
            v13 = *(v5 + 16 * v12);
            if (v13 == a4)
            {
LABEL_7:
              if (v12 != v4)
              {
                v14 = *(v5 + 16 * v12 + 8);
                if (v10 > v14)
                {
                  if (*(v11 + 8 * v14))
                  {
                    llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator();
                  }
                }
              }
            }

            else
            {
              v17 = 1;
              while (v13 != -4096)
              {
                v18 = v12 + v17++;
                v12 = v18 & v6;
                v13 = *(v5 + 16 * v12);
                if (v13 == a4)
                {
                  goto LABEL_7;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = 1;
      while (v8 != -4096)
      {
        v16 = v7 + v15++;
        v7 = v16 & v6;
        v8 = *(v5 + 16 * v7);
        if (v8 == a3)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertUnreachable(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5[16] = *MEMORY[0x277D85DE8];
  v4[0] = v5;
  v4[1] = 0x800000000;
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(a1, a2, a4, a3, v4);
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InsertReachable(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v137[8] = *MEMORY[0x277D85DE8];
  v111 = a4;
  if (*a3 && *a4)
  {
    llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator();
  }

  v6 = *(a1 + 104);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 88);
  v8 = 0;
  v9 = *v7;
  if (*v7)
  {
    v13 = 1;
    while (v9 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & (v6 - 1);
      v9 = v7[2 * v8];
      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_14:
    v11 = 0;
    v12 = MEMORY[0x10] + 1;
    if ((MEMORY[0x10] + 1) >= *(a4 + 16))
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_6:
  if (v8 == v6)
  {
    goto LABEL_14;
  }

  v10 = LODWORD(v7[2 * v8 + 1]);
  if (*(a1 + 32) <= v10)
  {
    goto LABEL_14;
  }

  v11 = *(*(a1 + 24) + 8 * v10);
  v12 = *(v11 + 16) + 1;
  if (v12 >= *(a4 + 16))
  {
    return;
  }

LABEL_15:
  v120 = v122;
  v123 = 1;
  v124 = -4096;
  v125 = -4096;
  v126 = -4096;
  v127 = -4096;
  v128 = -4096;
  v129 = -4096;
  v130 = -4096;
  v131 = -4096;
  v132 = v134;
  v133 = 0x800000000;
  v135 = v137;
  v136 = 0x800000000;
  v117 = v119;
  v118 = 0x800000000;
  v122[0] = a4;
  v121 = 0x800000001;
  llvm::DenseMapBase<llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>,llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v123, &v111, &v114);
  v15 = v121;
  if (v121)
  {
    while (1)
    {
      v16 = v120;
      v17 = *v120;
      v18 = v15;
      if (v15 != 1)
      {
        v19 = 0;
        v20 = v120 + 8 * v15;
        v21 = (v15 - 2) >> 1;
        v22 = v120;
        do
        {
          while (1)
          {
            v28 = &v22[v19];
            v27 = (v28 + 1);
            v26 = v28[1];
            v29 = (2 * v19) | 1;
            v19 = 2 * v19 + 2;
            if (v19 < v18)
            {
              break;
            }

            v19 = v29;
            *v22 = v26;
            v22 = v28 + 1;
            if (v29 > v21)
            {
              goto LABEL_24;
            }
          }

          v25 = v28[2];
          v24 = (v28 + 2);
          v23 = v25;
          if (*(v26 + 16) >= *(v25 + 16))
          {
            v19 = v29;
          }

          else
          {
            v26 = v23;
            v27 = v24;
          }

          *v22 = v26;
          v22 = v27;
        }

        while (v19 <= v21);
LABEL_24:
        v30 = v20 - 8;
        if (v27 == v30)
        {
          *v27 = v17;
        }

        else
        {
          *v27 = *v30;
          *v30 = v17;
          v31 = (v27 - v16 + 8) >> 3;
          v32 = v31 < 2;
          v33 = v31 - 2;
          if (!v32)
          {
            v34 = v33 >> 1;
            v35 = &v16[8 * v34];
            v36 = *v35;
            v37 = *v27;
            v38 = *(*v27 + 16);
            if (*(*v35 + 16) < v38)
            {
              do
              {
                v39 = v35;
                *v27 = v36;
                if (!v34)
                {
                  break;
                }

                v34 = (v34 - 1) >> 1;
                v35 = &v16[8 * v34];
                v36 = *v35;
                v27 = v39;
              }

              while (*(*v35 + 16) < v38);
              *v39 = v37;
            }
          }
        }
      }

      LODWORD(v121) = v18 - 1;
      if (v133 >= HIDWORD(v133))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v132 + v133) = v17;
      LODWORD(v133) = v133 + 1;
      v40 = *(v17 + 16);
      v41 = *v17;
      if (!a2)
      {
        break;
      }

      while (1)
      {
        llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(a2 + 8), v41, &v114);
        v43 = v114;
        v44 = v115;
        if (v115)
        {
          goto LABEL_55;
        }

LABEL_124:
        if (v43 != v116)
        {
          free(v43);
        }

        if (!v118)
        {
          break;
        }

        v42 = *(v117 + v118 - 1);
        LODWORD(v118) = v118 - 1;
        v41 = *v42;
        if (!a2)
        {
          goto LABEL_37;
        }
      }

      v15 = v121;
      if (!v121)
      {
        goto LABEL_130;
      }
    }

LABEL_37:
    v45 = v41;
    mlir::SuccessorRange::SuccessorRange(&v112, v41);
    mlir::SuccessorRange::SuccessorRange(&v112, v45);
    v46 = v113;
    v114 = v116;
    v115 = 0x800000000;
    if (v113 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v113)
    {
      v43 = v116;
      v47 = (v112 + 32 * v113 - 8);
      v48 = 0;
      v49 = v113;
      do
      {
        v50 = *v47;
        v47 -= 4;
        *&v116[v48] = v50;
        v48 += 8;
        --v49;
      }

      while (v49);
      v51 = v116;
      v52 = v46;
      v53 = &v116[8 * v46];
      if (v46)
      {
        v54 = 8 * v46;
        v51 = v116;
        do
        {
          if (!*v51)
          {
            goto LABEL_48;
          }

          v51 += 8;
          v54 -= 8;
        }

        while (v54);
        v51 = &v116[8 * v46];
LABEL_54:
        v57 = (v51 - v116) >> 3;
        v44 = v57;
        LODWORD(v115) = v57;
        if (!v57)
        {
          goto LABEL_124;
        }

LABEL_55:
        v58 = &v43[v44];
        while (1)
        {
          v65 = *(a1 + 104);
          if (v65)
          {
            v66 = *(a1 + 88);
            v67 = ((*v43 >> 4) ^ (*v43 >> 9)) & (v65 - 1);
            v68 = *(v66 + 16 * v67);
            if (v68 == *v43)
            {
LABEL_61:
              if (v67 != v65)
              {
                v69 = *(v66 + 16 * v67 + 8);
                if (*(a1 + 32) > v69)
                {
                  v70 = *(*(a1 + 24) + 8 * v69);
                  v71 = *(v70 + 16);
                  if (v71 <= v12)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_70;
                }
              }
            }

            else
            {
              v72 = 1;
              while (v68 != -4096)
              {
                v73 = v67 + v72++;
                v67 = v73 & (v65 - 1);
                v68 = *(v66 + 16 * v67);
                if (v68 == *v43)
                {
                  goto LABEL_61;
                }
              }
            }
          }

          v70 = 0;
          v71 = MEMORY[0x10];
          if (MEMORY[0x10] <= v12)
          {
            goto LABEL_58;
          }

LABEL_70:
          v74 = v123;
          v75 = v123 & 1;
          if (v123)
          {
            v59 = 8;
            v60 = &v124;
          }

          else
          {
            v59 = v125;
            if (!v125)
            {
              v76 = 0;
              goto LABEL_102;
            }

            v60 = v124;
          }

          v61 = v59 - 1;
          v62 = v61 & ((v70 >> 4) ^ (v70 >> 9));
          v63 = &v60[8 * v62];
          v64 = *v63;
          if (v70 != *v63)
          {
            v88 = 0;
            v89 = 1;
            while (v64 != -4096)
            {
              if (v88)
              {
                v90 = 0;
              }

              else
              {
                v90 = v64 == -8192;
              }

              if (v90)
              {
                v88 = v63;
              }

              v91 = v62 + v89++;
              v62 = v91 & v61;
              v63 = &v60[8 * v62];
              v64 = *v63;
              if (v70 == *v63)
              {
                goto LABEL_58;
              }
            }

            if (v88)
            {
              v92 = v88;
            }

            else
            {
              v92 = v63;
            }

            if (v123)
            {
              v76 = 8;
            }

            else
            {
              v76 = v125;
            }

            if (4 * (v123 >> 1) + 4 < 3 * v76)
            {
              if (v76 + ~(v123 >> 1) - HIDWORD(v123) <= v76 >> 3)
              {
                goto LABEL_103;
              }
            }

            else
            {
LABEL_102:
              v76 *= 2;
LABEL_103:
              v110 = v43;
              llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::grow(&v123, v76);
              v74 = v123;
              if (v123)
              {
                v93 = 8;
                v94 = &v124;
                goto LABEL_107;
              }

              v93 = v125;
              if (v125)
              {
                v94 = v124;
LABEL_107:
                v43 = v110;
                v75 = v123 & 1;
                v95 = v93 - 1;
                v96 = (v93 - 1) & ((v70 >> 4) ^ (v70 >> 9));
                v92 = &v94[8 * v96];
                v97 = *v92;
                if (v70 != *v92)
                {
                  v98 = 0;
                  v99 = 1;
                  while (v97 != -4096)
                  {
                    if (v98)
                    {
                      v100 = 0;
                    }

                    else
                    {
                      v100 = v97 == -8192;
                    }

                    if (v100)
                    {
                      v98 = v92;
                    }

                    v101 = v96 + v99++;
                    v96 = v101 & v95;
                    v92 = &v94[8 * (v101 & v95)];
                    v97 = *v92;
                    if (v70 == *v92)
                    {
                      goto LABEL_75;
                    }
                  }

                  if (v98)
                  {
                    v92 = v98;
                  }
                }
              }

              else
              {
                v75 = 0;
                v92 = 0;
                v43 = v110;
              }
            }

LABEL_75:
            LODWORD(v123) = (v74 & 0xFFFFFFFE | v75) + 2;
            if (*v92 != -4096)
            {
              --HIDWORD(v123);
            }

            *v92 = v70;
            if (v71 <= v40)
            {
              if (v121 >= HIDWORD(v121))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v120 + v121) = v70;
              v77 = (v121 + 1);
              LODWORD(v121) = v77;
              if (v77 >= 2)
              {
                v78 = v120;
                v79 = v120 + 8 * v77;
                v80 = (v77 - 2) >> 1;
                v81 = v120 + 8 * v80;
                v82 = *v81;
                v85 = *(v79 - 1);
                v84 = v79 - 8;
                v83 = v85;
                v86 = *(v85 + 16);
                if (*(*v81 + 16) < v86)
                {
                  do
                  {
                    v87 = v81;
                    *v84 = v82;
                    if (!v80)
                    {
                      break;
                    }

                    v80 = (v80 - 1) >> 1;
                    v81 = &v78[8 * v80];
                    v82 = *v81;
                    v84 = v87;
                  }

                  while (*(*v81 + 16) < v86);
                  *v87 = v83;
                }
              }
            }

            else
            {
              if (v118 >= HIDWORD(v118))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v117 + v118) = v70;
              LODWORD(v118) = v118 + 1;
            }
          }

LABEL_58:
          if (++v43 == v58)
          {
            v43 = v114;
            goto LABEL_124;
          }
        }
      }
    }

    else
    {
      v43 = v116;
      v51 = v116;
      v52 = 0;
      v53 = v116;
    }

LABEL_48:
    if (v51 != v53)
    {
      v55 = v51 + 8;
      if (v51 + 8 != v53)
      {
        v56 = (&v116[8 * v52] - v51 - 8);
        do
        {
          if (*v55)
          {
            *v51 = *v55;
            v51 += 8;
          }

          ++v55;
          v56 -= 8;
        }

        while (v56);
      }
    }

    goto LABEL_54;
  }

LABEL_130:
  if (v133)
  {
    v102 = v132;
    do
    {
      v104 = *v102;
      v105 = *(*v102 + 8);
      if (v105 != v11)
      {
        v106 = *(v105 + 24);
        v107 = *(v105 + 32);
        v108 = &v106[v107];
        if (v107)
        {
          v109 = 8 * v107;
          do
          {
            if (*v106 == v104)
            {
              goto LABEL_141;
            }

            ++v106;
            v109 -= 8;
          }

          while (v109);
          v106 = v108;
        }

LABEL_141:
        if (v108 != v106 + 1)
        {
          memmove(v106, v106 + 1, v108 - (v106 + 1));
          LODWORD(v107) = *(v105 + 32);
        }

        *(v105 + 32) = v107 - 1;
        *(v104 + 8) = v11;
        v103 = *(v11 + 32);
        if (v103 < *(v11 + 36))
        {
          *(*(v11 + 24) + 8 * v103) = v104;
          ++*(v11 + 32);
          llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v102 += 8;
    }

    while (v102 != v132 + 8 * v133);
  }

  if (v117 != v119)
  {
    free(v117);
  }

  if (v135 != v137)
  {
    free(v135);
  }

  if (v132 != v134)
  {
    free(v132);
  }

  if ((v123 & 1) == 0)
  {
    llvm::deallocate_buffer(v124, (8 * v125));
  }

  if (v120 != v122)
  {
    free(v120);
  }
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v10[0] = &v11;
  v10[1] = 0x4000000001;
  v11 = 0;
  v12 = 0u;
  v13 = 0;
  v14 = a2;
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(v10, a3, 0, a1, a5, 0, 0);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(v10);
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::attachNewSubtree(v10, a1, a4);
  if (v13)
  {
    v7 = (v12 + 48);
    v8 = v13 << 6;
    while (1)
    {
      if ((*(v7 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v9 = *(v7 - 2);
        if (v7 != v9)
        {
          free(v9);
        }
      }

      v7 += 8;
      v8 -= 64;
      if (!v8)
      {
        llvm::deallocate_buffer(v12, (v13 << 6));
      }
    }
  }

  llvm::deallocate_buffer(v12, 0);
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v46 = *MEMORY[0x277D85DE8];
  v42 = &v44;
  v44 = a2;
  v45 = a6;
  v43 = 0x4000000001;
  v39 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v39) + 1) = a6;
  v12 = v43;
  if (v43)
  {
    v13 = a7;
    do
    {
      v14 = v42 + 16 * v12;
      v15 = *(v14 - 2);
      v16 = *(v14 - 2);
      LODWORD(v43) = v12 - 1;
      v39 = v15;
      v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v39);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 9))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v17[3] + 4 * v18) = v16;
      ++*(v17 + 8);
      if (*v17)
      {
        goto LABEL_3;
      }

      a3 = (a3 + 1);
      *(v17 + 2) = a3;
      *(v17 + 3) = a3;
      *v17 = a3;
      *(v17 + 1) = v16;
      v19 = *(a1 + 8);
      if (v19 >= *(a1 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*a1 + 8 * v19) = v15;
      ++*(a1 + 8);
      v20 = *(a1 + 552);
      if (v20)
      {
        llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v20 + 8), v15, &v39);
        v21 = v40;
        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v15, &v39);
        v21 = v40;
        if (v13)
        {
LABEL_11:
          if (v21 >= 2)
          {
            v38 = v13;
            std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v39, v39 + v21, &v38, 126 - 2 * __clz(v21), 1);
            v21 = v40;
          }
        }
      }

      v22 = v39;
      if (v21)
      {
        v23 = v39 + 8 * v21;
        while (1)
        {
          v27 = *v22;
          v28 = *(a4 + 104);
          if (!v28)
          {
            goto LABEL_15;
          }

          v29 = *(a4 + 88);
          v30 = ((v27 >> 4) ^ (v27 >> 9)) & (v28 - 1);
          v31 = *(v29 + 16 * v30);
          if (v31 != v27)
          {
            break;
          }

LABEL_20:
          if (v30 == v28)
          {
            goto LABEL_15;
          }

          v32 = *(v29 + 16 * v30 + 8);
          if (*(a4 + 32) <= v32)
          {
            goto LABEL_15;
          }

          v24 = *(*(a4 + 24) + 8 * v32);
          if (!v24)
          {
            goto LABEL_15;
          }

          v33 = *(a5 + 8);
          if (v33 >= *(a5 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v25 = (*a5 + 16 * v33);
          *v25 = v15;
          v26 = (a5 + 8);
LABEL_17:
          v25[1] = v24;
          ++*v26;
          if (++v22 == v23)
          {
            v22 = v39;
            v13 = a7;
            goto LABEL_32;
          }
        }

        v34 = 1;
        while (v31 != -4096)
        {
          v35 = v30 + v34++;
          v30 = v35 & (v28 - 1);
          v31 = *(v29 + 16 * v30);
          if (v31 == v27)
          {
            goto LABEL_20;
          }
        }

LABEL_15:
        if (v43 >= HIDWORD(v43))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v24 = v7 & 0xFFFFFFFF00000000 | a3;
        v25 = v42 + 16 * v43;
        *v25 = v27;
        v26 = &v43;
        v7 = v24;
        goto LABEL_17;
      }

LABEL_32:
      if (v22 != &v41)
      {
        free(v22);
      }

LABEL_3:
      v12 = v43;
    }

    while (v43);
  }

  if (v42 != &v44)
  {
    free(v42);
  }

  return a3;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runSemiNCA(uint64_t a1)
{
  v65[8] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v63 = v65;
  v64 = 0x800000001;
  v65[0] = 0;
  if (v2 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v2 >= 2)
  {
    for (i = 1; i != v2; ++i)
    {
      v60 = *(*a1 + 8 * i);
      v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v60);
      v4[2] = *(*a1 + 8 * *(v4 + 1));
      if (v64 >= HIDWORD(v64))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v63[v64] = v4;
      LODWORD(v64) = v64 + 1;
    }
  }

  v60 = v62;
  v61 = 0x2000000000;
  v5 = (v2 - 1);
  if (v5 >= 2)
  {
    v6 = v63;
    v7 = v62;
    v8 = v2;
    do
    {
      v9 = v6[v5];
      v10 = *(v9 + 4);
      *(v9 + 8) = v10;
      v11 = *(v9 + 32);
      if (v11)
      {
        v12 = *(v9 + 24);
        v13 = &v12[v11];
        do
        {
          v14 = v6[*v12];
          if (*(v14 + 4) >= v8)
          {
            v16 = 0;
            do
            {
              if (v16 >= HIDWORD(v61))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              *(v60 + v16) = v14;
              v16 = v61 + 1;
              LODWORD(v61) = v61 + 1;
              v14 = v6[*(v14 + 4)];
              v17 = *(v14 + 4);
            }

            while (v17 >= v8);
            v18 = v6[*(v14 + 12)];
            v7 = v60;
            v19 = v60 - 8;
            do
            {
              v20 = *&v19[8 * v16];
              *(v20 + 4) = v17;
              v21 = *(v20 + 12);
              v22 = v6[v21];
              if (*(v18 + 8) < *(v22 + 8))
              {
                v21 = *(v14 + 12);
                *(v20 + 12) = v21;
                v22 = v18;
              }

              v14 = v20;
              v18 = v22;
              --v16;
            }

            while (v16);
            LODWORD(v61) = 0;
            v6 = v63;
            v10 = *(v9 + 8);
            v15 = *(v63[v21] + 8);
            if (v15 >= v10)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v15 = *(v6[*(v14 + 12)] + 8);
            if (v15 >= v10)
            {
              goto LABEL_15;
            }
          }

          *(v9 + 8) = v15;
          v10 = v15;
LABEL_15:
          ++v12;
        }

        while (v12 != v13);
      }

      v8 = v5--;
    }

    while ((v5 & 0xFFFFFFFE) != 0);
    if (v2 >= 3)
    {
      v23 = 2;
      v24 = 0uLL;
      while (1)
      {
        v25 = v63[v23];
        v26 = *v63[*(v25 + 8)];
        v27 = (v25 + 16);
        v28 = (v25 + 16);
        do
        {
          v33 = *v28;
          v34 = *(a1 + 528);
          v35 = *(a1 + 544);
          if (!v35)
          {
            goto LABEL_53;
          }

          v29 = ((v33 >> 4) ^ (v33 >> 9)) & (v35 - 1);
          v30 = &v34[8 * v29];
          v31 = *v30;
          if (v33 == *v30)
          {
            goto LABEL_34;
          }

          v36 = 0;
          v37 = 1;
          while (v31 != -4096)
          {
            if (v36)
            {
              v38 = 0;
            }

            else
            {
              v38 = v31 == -8192;
            }

            if (v38)
            {
              v36 = v30;
            }

            v39 = v29 + v37++;
            v29 = v39 & (v35 - 1);
            v30 = &v34[8 * v29];
            v31 = *v30;
            if (v33 == *v30)
            {
              goto LABEL_34;
            }
          }

          if (v36)
          {
            v30 = v36;
          }

          v40 = *(a1 + 536);
          if (4 * v40 + 4 >= (3 * v35))
          {
LABEL_53:
            v41 = 2 * v35;
            goto LABEL_55;
          }

          if (v35 + ~v40 - *(a1 + 540) <= v35 >> 3)
          {
            v41 = *(a1 + 544);
LABEL_55:
            v42 = (v41 - 1) | ((v41 - 1) >> 1);
            v43 = v42 | (v42 >> 2) | ((v42 | (v42 >> 2)) >> 4);
            v44 = ((v43 | (v43 >> 8)) >> 16) | v43 | (v43 >> 8);
            if ((v44 + 1) > 0x40)
            {
              v45 = v44 + 1;
            }

            else
            {
              v45 = 64;
            }

            *(a1 + 544) = v45;
            buffer = llvm::allocate_buffer(v45 << 6, 8uLL);
            *(a1 + 528) = buffer;
            if (v34)
            {
              v47 = (v35 << 6);
              llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1 + 528, v34, &v47[v34]);
              llvm::deallocate_buffer(v34, v47);
            }

            v24 = 0uLL;
            *(a1 + 536) = 0;
            v48 = *(a1 + 544);
            if (v48)
            {
              v49 = buffer;
              if (((v48 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
              {
                goto LABEL_89;
              }

              v50 = ((v48 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
              v49 = &buffer[8 * (v50 & 0x7FFFFFFFFFFFFFELL)];
              v51 = buffer + 8;
              v52 = v50 & 0x7FFFFFFFFFFFFFELL;
              do
              {
                *(v51 - 8) = -4096;
                *v51 = -4096;
                v51 += 16;
                v52 -= 2;
              }

              while (v52);
              if (v50 != (v50 & 0x7FFFFFFFFFFFFFELL))
              {
LABEL_89:
                do
                {
                  *v49 = -4096;
                  v49 += 8;
                }

                while (v49 != &buffer[8 * v48]);
              }

              v53 = v48 - 1;
              v54 = (v48 - 1) & ((v33 >> 4) ^ (v33 >> 9));
              v30 = &buffer[8 * v54];
              v55 = *v30;
              if (v33 != *v30)
              {
                v56 = 0;
                v57 = 1;
                while (v55 != -4096)
                {
                  if (v56)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v55 == -8192;
                  }

                  if (v58)
                  {
                    v56 = v30;
                  }

                  v59 = v54 + v57++;
                  v54 = v59 & v53;
                  v30 = &buffer[8 * v54];
                  v55 = *v30;
                  v24 = 0uLL;
                  if (v33 == *v30)
                  {
                    goto LABEL_77;
                  }
                }

                if (v56)
                {
                  v30 = v56;
                }

                v24 = 0uLL;
              }
            }

            else
            {
              v30 = 0;
            }

LABEL_77:
            ++*(a1 + 536);
            if (*v30 == -4096)
            {
              goto LABEL_40;
            }

LABEL_39:
            --*(a1 + 540);
            goto LABEL_40;
          }

          *(a1 + 536) = v40 + 1;
          if (*v30 != -4096)
          {
            goto LABEL_39;
          }

LABEL_40:
          *v30 = v33;
          *(v30 + 3) = v24;
          *(v30 + 5) = v24;
          *(v30 + 1) = v24;
          v30[7] = 0;
          v30[4] = (v30 + 6);
          *(v30 + 11) = 4;
LABEL_34:
          v32 = *(v30 + 2);
          v28 = v30 + 3;
        }

        while (v32 > v26);
        *v27 = v33;
        if (++v23 == v2)
        {
          v7 = v60;
          break;
        }
      }
    }

    if (v7 != v62)
    {
      free(v7);
    }
  }

  if (v63 != v65)
  {
    free(v63);
  }
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::attachNewSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v19 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v19);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    v9 = (*a1 + 8);
    while (1)
    {
      v11 = *v9;
      v12 = *(a2 + 104);
      if (!v12)
      {
        goto LABEL_4;
      }

      v13 = *(a2 + 88);
      v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 != v11)
      {
        break;
      }

LABEL_8:
      if (v14 == v12)
      {
        goto LABEL_4;
      }

      v16 = *(v13 + 16 * v14 + 8);
      if (*(a2 + 32) <= v16 || !*(*(a2 + 24) + 8 * v16))
      {
        goto LABEL_4;
      }

      if (++v9 == v8)
      {
        return result;
      }
    }

    v17 = 1;
    while (v15 != -4096)
    {
      v18 = v14 + v17++;
      v14 = v18 & (v12 - 1);
      v15 = *(v13 + 16 * v14);
      if (v15 == v11)
      {
        goto LABEL_8;
      }
    }

LABEL_4:
    v19 = *v9;
    v10 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v19);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, v10[2], a2);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

  return result;
}

uint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
    v4 = (*a1 + (v3 << 6));
    v5 = *v4;
    if (*a2 == *v4)
    {
      return v4 + 1;
    }

    v8 = 0;
    v9 = 1;
    while (v5 != -4096)
    {
      if (v8)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 == -8192;
      }

      if (v10)
      {
        v8 = v4;
      }

      v11 = v3 + v9++;
      v3 = v11 & (v2 - 1);
      v4 = (*a1 + (v3 << 6));
      v5 = *v4;
      if (*a2 == *v4)
      {
        return v4 + 1;
      }
    }

    if (v8)
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  v14 = v4;
  v7 = *(a1 + 8);
  if (4 * v7 + 4 >= 3 * v2)
  {
    v12 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v7 - *(a1 + 12) <= v2 >> 3)
  {
    v12 = a2;
LABEL_24:
    v13 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(v13, v12, &v14);
    a1 = v13;
    a2 = v12;
    v4 = v14;
    ++*(v13 + 8);
    if (*v4 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v7 + 1;
  if (*v4 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v4 = *a2;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 1) = 0u;
  v4[7] = 0;
  v4[4] = (v4 + 6);
  *(v4 + 11) = 4;
  return v4 + 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::LookupBucketFor<mlir::Block *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + (v6 << 6));
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
        v7 = (v4 + (v6 << 6));
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

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(v8 << 6, 8uLL);
  *a1 = result;
  if (v4)
  {
    v10 = (v3 << 6);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1, v4, &v10[v4]);

    llvm::deallocate_buffer(v4, v10);
  }

  *(a1 + 8) = 0;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = (v11 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = v12 + 1;
      v14 = (v12 + 1) & 0x7FFFFFFFFFFFFFELL;
      v15 = &result[8 * v14];
      v16 = result + 8;
      v17 = v14;
      do
      {
        *(v16 - 8) = -4096;
        *v16 = -4096;
        v16 += 16;
        v17 -= 2;
      }

      while (v17);
      if (v13 == v14)
      {
        return result;
      }
    }

    else
    {
      v15 = result;
    }

    v18 = &result[8 * v11];
    do
    {
      *v15 = -4096;
      v15 += 8;
    }

    while (v15 != v18);
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = (v6 - 1) & 0x3FFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = v8 + 1;
      v10 = (v8 + 1) & 0x7FFFFFFFFFFFFFELL;
      v11 = &v7[8 * v10];
      v12 = v7 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = -4096;
        *v12 = -4096;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v11 = *a1;
    }

    v14 = &v7[8 * v6];
    do
    {
      *v11 = -4096;
      v11 += 8;
    }

    while (v11 != v14);
  }

LABEL_10:
  if (a2 != a3)
  {
    do
    {
      v15 = *v4;
      if ((*v4 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v16 = *(a1 + 16) - 1;
        v17 = v16 & ((v15 >> 4) ^ (v15 >> 9));
        v18 = (*a1 + (v17 << 6));
        v19 = *v18;
        if (v15 != *v18)
        {
          v24 = 0;
          v25 = 1;
          while (v19 != -4096)
          {
            if (v24)
            {
              v26 = 0;
            }

            else
            {
              v26 = v19 == -8192;
            }

            if (v26)
            {
              v24 = v18;
            }

            v27 = v17 + v25++;
            v17 = v27 & v16;
            v18 = (*a1 + (v17 << 6));
            v19 = *v18;
            if (v15 == *v18)
            {
              goto LABEL_15;
            }
          }

          if (v24)
          {
            v18 = v24;
          }
        }

LABEL_15:
        *v18 = v15;
        v20 = *(v4 + 1);
        v21 = v4[3];
        v18[4] = v18 + 6;
        v22 = (v18 + 4);
        *(v22 - 8) = v21;
        *(v22 - 24) = v20;
        *(v22 + 8) = 0x400000000;
        if (*(v4 + 10))
        {
          llvm::SmallVectorImpl<unsigned int>::operator=(v22, v4 + 4);
        }

        ++*(a1 + 8);
        v23 = v4[4];
        if (v23 != v4 + 6)
        {
          free(v23);
        }
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void *llvm::GraphDiff<mlir::Block *,false>::getChildren<false>@<X0>(int *a1@<X0>, mlir::Block *a2@<X1>, uint64_t *a3@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v43, a2);
  result = mlir::SuccessorRange::SuccessorRange(v43, a2);
  v8 = v43[0];
  v7 = v43[1];
  v9 = a3 + 2;
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v7 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v7)
  {
    v10 = (v8 + 32 * v7 - 8);
    v11 = 0;
    v12 = v7;
    do
    {
      v13 = *v10;
      v10 -= 4;
      v9[v11++] = v13;
      --v12;
    }

    while (v12);
  }

  v14 = a3 + 2;
  v15 = &v9[v7];
  if (v7)
  {
    v16 = 8 * v7;
    v14 = a3 + 2;
    while (*v14)
    {
      ++v14;
      v16 -= 8;
      if (!v16)
      {
        v14 = &v9[v7];
        goto LABEL_17;
      }
    }
  }

  if (v14 != v15)
  {
    v17 = v14 + 1;
    if (v14 + 1 != v15)
    {
      v18 = &v9[v7] - v14 - 8;
      do
      {
        if (*v17)
        {
          *v14++ = *v17;
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }
  }

LABEL_17:
  v19 = v14 - v9;
  v20 = (v14 - v9) >> 3;
  *(a3 + 2) = v20;
  v21 = a1 + 2;
  v22 = *a1;
  if (*a1)
  {
    v23 = 4;
  }

  else
  {
    v21 = *(a1 + 1);
    v23 = a1[4];
    if (!v23)
    {
      v24 = 0;
LABEL_20:
      v25 = &v21[18 * v24];
      goto LABEL_24;
    }
  }

  v26 = v23 - 1;
  v27 = (v23 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v25 = &v21[18 * v27];
  v28 = *v25;
  if (*v25 != a2)
  {
    v29 = 1;
    while (v28 != -4096)
    {
      v30 = v27 + v29++;
      v27 = v30 & v26;
      v25 = &v21[18 * (v30 & v26)];
      v28 = *v25;
      if (*v25 == a2)
      {
        goto LABEL_23;
      }
    }

    if ((v22 & 1) == 0)
    {
      v21 = *(a1 + 1);
      v24 = a1[4];
      goto LABEL_20;
    }

    v25 = a1 + 74;
LABEL_33:
    if (v25 == a1 + 74)
    {
      return result;
    }

    goto LABEL_34;
  }

LABEL_23:
  if (v22)
  {
    goto LABEL_33;
  }

LABEL_24:
  if (v25 == (*(a1 + 1) + 72 * a1[4]))
  {
    return result;
  }

LABEL_34:
  v31 = v25[4];
  if (v31)
  {
    v32 = (v19 >> 3);
    v33 = *(v25 + 1);
    v34 = &v33[v31];
    do
    {
      v35 = *v33;
      v36 = &v9[v32];
      if (v32)
      {
        v37 = 8 * v32;
        v38 = a3 + 2;
        v39 = a3 + 2;
        while (*v39 != v35)
        {
          ++v39;
          ++v38;
          v37 -= 8;
          if (!v37)
          {
            v38 = &v9[v32];
            goto LABEL_36;
          }
        }
      }

      else
      {
        v38 = a3 + 2;
        v39 = a3 + 2;
      }

      v40 = v38 + 1;
      if (v39 != v36 && v40 != v36)
      {
        v42 = &a3[v32 + 1] - v38;
        do
        {
          if (*v40 != v35)
          {
            *v38++ = *v40;
          }

          ++v40;
          v42 -= 8;
        }

        while (v42);
      }

LABEL_36:
      v32 = ((v38 - v9) >> 3);
      ++v33;
    }

    while (v33 != v34);
    v20 = (v38 - v9) >> 3;
    *(a3 + 2) = v32;
  }

  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, &v9[v20], *(v25 + 5), (*(v25 + 5) + 8 * v25[12]));
}

void *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>@<X0>(mlir::Block *a1@<X0>, void *a2@<X8>)
{
  mlir::SuccessorRange::SuccessorRange(v17, a1);
  result = mlir::SuccessorRange::SuccessorRange(v17, a1);
  v6 = v17[0];
  v5 = v17[1];
  v7 = (a2 + 2);
  *a2 = a2 + 2;
  a2[1] = 0x800000000;
  if (v5 >= 9)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v5)
  {
    v8 = (v6 + 32 * v5 - 8);
    v9 = 0;
    v10 = v5;
    do
    {
      v11 = *v8;
      v8 -= 4;
      *&v7[v9] = v11;
      v9 += 8;
      --v10;
    }

    while (v10);
  }

  v12 = (a2 + 2);
  v13 = &v7[8 * v5];
  if (v5)
  {
    v14 = 8 * v5;
    v12 = (a2 + 2);
    while (*v12)
    {
      v12 += 8;
      v14 -= 8;
      if (!v14)
      {
        v12 = &v7[8 * v5];
        goto LABEL_17;
      }
    }
  }

  if (v12 != v13)
  {
    v15 = v12 + 8;
    if (v12 + 8 != v13)
    {
      v16 = &v7[8 * v5] - v12 - 8;
      do
      {
        if (*v15)
        {
          *v12 = *v15;
          v12 += 8;
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }
  }

LABEL_17:
  *(a2 + 2) = (v12 - v7) >> 3;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
  while (2)
  {
    v10 = a2 - 1;
    v11 = v9;
    while (1)
    {
      while (1)
      {
        v9 = v11;
        v12 = a2 - v11;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:

              return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v10, a3);
            case 4:

              return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v10, a3);
            case 5:

              return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, v11 + 1, v11 + 2, v11 + 3, v10, a3);
          }
        }

        else
        {
          if (v12 < 2)
          {
            return result;
          }

          if (v12 == 2)
          {
            v32 = *(a2 - 1);
            v33 = *v11;
            v34 = **a3;
            v35 = *(*a3 + 4);
            if (v35)
            {
              v36 = v35 - 1;
              v37 = (v35 - 1) & ((v32 >> 4) ^ (v32 >> 9));
              v38 = *(v34 + 16 * v37);
              if (v38 == v32)
              {
                v39 = *(v34 + 16 * v37 + 8);
LABEL_75:
                v47 = v36 & ((v33 >> 4) ^ (v33 >> 9));
                v48 = *(v34 + 16 * v47);
                if (v48 == v33)
                {
LABEL_76:
                  v35 = v47;
                }

                else
                {
                  v49 = 1;
                  while (v48 != -4096)
                  {
                    v50 = v47 + v49++;
                    v47 = v50 & v36;
                    v48 = *(v34 + 16 * v47);
                    if (v48 == v33)
                    {
                      goto LABEL_76;
                    }
                  }
                }

                goto LABEL_77;
              }

              v45 = 1;
              while (v38 != -4096)
              {
                v46 = v37 + v45++;
                v37 = v46 & v36;
                v38 = *(v34 + 16 * v37);
                if (v38 == v32)
                {
                  goto LABEL_73;
                }
              }
            }

            v37 = *(*a3 + 4);
LABEL_73:
            v39 = *(v34 + 16 * v37 + 8);
            if (v35)
            {
              v36 = v35 - 1;
              goto LABEL_75;
            }

LABEL_77:
            if (v39 < *(v34 + 16 * v35 + 8))
            {
              *v11 = v32;
              *(a2 - 1) = v33;
            }

            return result;
          }
        }

        if (v12 <= 23)
        {
          if (a5)
          {

            return std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }

          else
          {

            return std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a2, a3);
          }
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v40 = (v12 - 2) >> 1;
            v41 = v40 + 1;
            v42 = &v11[v40];
            do
            {
              std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12, v42--);
              --v41;
            }

            while (v41);
            do
            {
              while (1)
              {
                v44 = *v11;
                result = std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, a3, v12);
                if (v10 == result)
                {
                  break;
                }

                *result = *v10;
                *v10-- = v44;
                result = std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, result + 8, a3, (result + 8 - v11) >> 3);
                v43 = v12-- <= 2;
                if (v43)
                {
                  return result;
                }
              }

              *result = v44;
              --v10;
              v43 = v12-- <= 2;
            }

            while (!v43);
          }

          return result;
        }

        if (v12 >= 0x81)
        {
          break;
        }

        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v12 >> 1], v11, v10, a3);
        --a4;
        if (a5)
        {
          goto LABEL_29;
        }

LABEL_16:
        v15 = *v11;
        v16 = **a3;
        v17 = *(*a3 + 4);
        if (v17)
        {
          v18 = *(v11 - 1);
          v19 = v17 - 1;
          v20 = (v17 - 1) & ((v18 >> 4) ^ (v18 >> 9));
          v21 = *(v16 + 16 * v20);
          if (v21 == v18)
          {
            v22 = *(v16 + 16 * v20 + 8);
            goto LABEL_26;
          }

          v23 = 1;
          while (v21 != -4096)
          {
            v24 = v20 + v23++;
            v20 = v24 & v19;
            v21 = *(v16 + 16 * v20);
            if (v21 == v18)
            {
              goto LABEL_24;
            }
          }
        }

        v20 = *(*a3 + 4);
LABEL_24:
        v22 = *(v16 + 16 * v20 + 8);
        if (v17)
        {
          v19 = v17 - 1;
LABEL_26:
          v25 = v19 & ((v15 >> 4) ^ (v15 >> 9));
          v26 = *(v16 + 16 * v25);
          if (v26 == v15)
          {
LABEL_27:
            v17 = v25;
          }

          else
          {
            v30 = 1;
            while (v26 != -4096)
            {
              v31 = v25 + v30++;
              v25 = v31 & v19;
              v26 = *(v16 + 16 * v25);
              if (v26 == v15)
              {
                goto LABEL_27;
              }
            }
          }
        }

        if (v22 < *(v16 + 16 * v17 + 8))
        {
          goto LABEL_29;
        }

        result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1}>(mlir::Block *,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1},unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
        v11 = result;
        a5 = 0;
      }

      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11, &v11[v12 >> 1], v10, a3);
      v13 = v12 >> 1;
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 1, &v11[v13 - 1], a2 - 2, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(v11 + 2, &v11[v13 + 1], a2 - 3, a3);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(&v11[v13 - 1], &v11[v13], &v11[v13 + 1], a3);
      v14 = *v11;
      *v11 = v11[v13];
      v11[v13] = v14;
      v10 = a2 - 1;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_29:
      v27 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1}>(mlir::Block *,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1},unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(v11, a2, a3);
      if ((v28 & 1) == 0)
      {
        goto LABEL_32;
      }

      v29 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v11, v27, a3);
      v11 = v27 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(v27 + 1, a2, a3);
      if (result)
      {
        break;
      }

      if (!v29)
      {
LABEL_32:
        result = std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v9, v27, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v27 + 1;
      }
    }

    a2 = v27;
    if (!v29)
    {
      continue;
    }

    return result;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = *a1;
  v6 = **a4;
  v7 = *(*a4 + 4);
  v8 = *a2 >> 4;
  v9 = *a1 >> 4;
  if (v7)
  {
    v10 = v7 - 1;
    v11 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v12 = *(v6 + 16 * v11);
    if (v12 == v4)
    {
      v13 = *(v6 + 16 * v11 + 8);
      v14 = v10 & (v9 ^ (v5 >> 9));
      v15 = *(v6 + 16 * v14);
      if (v15 == v5)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    v30 = 1;
    while (v12 != -4096)
    {
      v31 = v11 + v30++;
      v11 = v31 & v10;
      v12 = *(v6 + 16 * v11);
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }
  }

  v11 = *(*a4 + 4);
LABEL_22:
  v13 = *(v6 + 16 * v11 + 8);
  if (!v7)
  {
    goto LABEL_28;
  }

  v10 = v7 - 1;
  v14 = (v7 - 1) & (v9 ^ (v5 >> 9));
  v15 = *(v6 + 16 * v14);
  if (v15 == v5)
  {
LABEL_4:
    v16 = *(v6 + 16 * v14 + 8);
    v17 = *a3;
    if (v13 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_34;
  }

LABEL_24:
  v32 = 1;
  while (v15 != -4096)
  {
    v33 = v14 + v32++;
    v14 = v33 & v10;
    v15 = *(v6 + 16 * v14);
    if (v15 == v5)
    {
      goto LABEL_29;
    }
  }

LABEL_28:
  v14 = v7;
LABEL_29:
  v34 = *(v6 + 16 * v14 + 8);
  v17 = *a3;
  if (v13 < v34)
  {
    if (!v7)
    {
      goto LABEL_45;
    }

    v10 = v7 - 1;
LABEL_5:
    v18 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
    v19 = *(v6 + 16 * v18);
    if (v19 == v17)
    {
      v20 = *(v6 + 16 * v18 + 8);
      v21 = v10 & (v8 ^ (v4 >> 9));
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
LABEL_7:
        if (v20 < *(v6 + 16 * v21 + 8))
        {
LABEL_8:
          *a1 = v17;
          goto LABEL_15;
        }

        *a1 = v4;
        *a2 = v5;
        v23 = *a3;
        goto LABEL_10;
      }

      goto LABEL_48;
    }

    v46 = 1;
    while (v19 != -4096)
    {
      v47 = v18 + v46++;
      v18 = v47 & v10;
      v19 = *(v6 + 16 * v18);
      if (v19 == v17)
      {
        goto LABEL_46;
      }
    }

LABEL_45:
    v18 = v7;
LABEL_46:
    v20 = *(v6 + 16 * v18 + 8);
    if (!v7)
    {
      goto LABEL_52;
    }

    v10 = v7 - 1;
    v21 = (v7 - 1) & (v8 ^ (v4 >> 9));
    v22 = *(v6 + 16 * v21);
    if (v22 == v4)
    {
      goto LABEL_7;
    }

LABEL_48:
    v48 = 1;
    while (v22 != -4096)
    {
      v49 = v21 + v48++;
      v21 = v49 & v10;
      v22 = *(v6 + 16 * v21);
      if (v22 == v4)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    v21 = v7;
LABEL_53:
    if (v20 < *(v6 + 16 * v21 + 8))
    {
      goto LABEL_8;
    }

    *a1 = v4;
    *a2 = v5;
    v23 = *a3;
    if (!v7)
    {
      goto LABEL_72;
    }

    v10 = v7 - 1;
LABEL_10:
    v24 = ((v23 >> 4) ^ (v23 >> 9)) & v10;
    v25 = *(v6 + 16 * v24);
    if (v25 == v23)
    {
      v26 = *(v6 + 16 * v24 + 8);
      v27 = v10 & (v9 ^ (v5 >> 9));
      v28 = *(v6 + 16 * v27);
      if (v28 == v5)
      {
LABEL_12:
        v7 = v27;
LABEL_13:
        if (v26 >= *(v6 + 16 * v7 + 8))
        {
          return 1;
        }

        *a2 = v23;
LABEL_15:
        *a3 = v5;
        return 1;
      }

LABEL_75:
      v56 = 1;
      while (v28 != -4096)
      {
        v57 = v27 + v56++;
        v27 = v57 & v10;
        v28 = *(v6 + 16 * v27);
        if (v28 == v5)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_13;
    }

    v54 = 1;
    while (v25 != -4096)
    {
      v55 = v24 + v54++;
      v24 = v55 & v10;
      v25 = *(v6 + 16 * v24);
      if (v25 == v23)
      {
        goto LABEL_73;
      }
    }

LABEL_72:
    v24 = v7;
LABEL_73:
    v26 = *(v6 + 16 * v24 + 8);
    if (!v7)
    {
      goto LABEL_13;
    }

    v10 = v7 - 1;
    v27 = (v7 - 1) & (v9 ^ (v5 >> 9));
    v28 = *(v6 + 16 * v27);
    if (v28 == v5)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

  if (!v7)
  {
    goto LABEL_60;
  }

  v10 = v7 - 1;
LABEL_34:
  v35 = ((v17 >> 4) ^ (v17 >> 9)) & v10;
  v36 = *(v6 + 16 * v35);
  if (v36 == v17)
  {
    v37 = *(v6 + 16 * v35 + 8);
    v38 = v10 & (v8 ^ (v4 >> 9));
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }

    goto LABEL_63;
  }

  v50 = 1;
  while (v36 != -4096)
  {
    v51 = v35 + v50++;
    v35 = v51 & v10;
    v36 = *(v6 + 16 * v35);
    if (v36 == v17)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  v35 = v7;
LABEL_61:
  v37 = *(v6 + 16 * v35 + 8);
  if (!v7)
  {
    goto LABEL_67;
  }

  v10 = v7 - 1;
  v38 = (v7 - 1) & (v8 ^ (v4 >> 9));
  v39 = *(v6 + 16 * v38);
  if (v39 == v4)
  {
    goto LABEL_36;
  }

LABEL_63:
  v52 = 1;
  while (v39 != -4096)
  {
    v53 = v38 + v52++;
    v38 = v53 & v10;
    v39 = *(v6 + 16 * v38);
    if (v39 == v4)
    {
      goto LABEL_36;
    }
  }

LABEL_67:
  v38 = v7;
LABEL_36:
  if (v37 >= *(v6 + 16 * v38 + 8))
  {
    return 0;
  }

  *a2 = v17;
  *a3 = v4;
  v40 = *a2;
  v41 = *a1;
  if (v7)
  {
    v42 = v7 - 1;
    v43 = ((v40 >> 4) ^ (v40 >> 9)) & (v7 - 1);
    v44 = *(v6 + 16 * v43);
    if (v44 == v40)
    {
      v45 = *(v6 + 16 * v43 + 8);
      goto LABEL_86;
    }

    v58 = 1;
    while (v44 != -4096)
    {
      v59 = v43 + v58++;
      v43 = v59 & v42;
      v44 = *(v6 + 16 * v43);
      if (v44 == v40)
      {
        goto LABEL_84;
      }
    }
  }

  v43 = v7;
LABEL_84:
  v45 = *(v6 + 16 * v43 + 8);
  if (!v7)
  {
    goto LABEL_88;
  }

  v42 = v7 - 1;
LABEL_86:
  v60 = ((v41 >> 4) ^ (v41 >> 9)) & v42;
  v61 = *(v6 + 16 * v60);
  if (v61 == v41)
  {
LABEL_87:
    v7 = v60;
  }

  else
  {
    v62 = 1;
    while (v61 != -4096)
    {
      v63 = v60 + v62++;
      v60 = v63 & v42;
      v61 = *(v6 + 16 * v60);
      if (v61 == v41)
      {
        goto LABEL_87;
      }
    }
  }

LABEL_88:
  if (v45 >= *(v6 + 16 * v7 + 8))
  {
    return 1;
  }

  *a1 = v40;
  *a2 = v41;
  return 1;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t **a5)
{
  result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a5);
  v11 = *a4;
  v12 = *a3;
  v13 = **a5;
  v14 = *(*a5 + 4);
  if (v14)
  {
    v15 = v14 - 1;
    v16 = (v14 - 1) & ((v11 >> 4) ^ (v11 >> 9));
    v17 = *(v13 + 16 * v16);
    if (v17 == v11)
    {
      v18 = *(v13 + 16 * v16 + 8);
      goto LABEL_11;
    }

    v19 = 1;
    while (v17 != -4096)
    {
      v20 = v16 + v19++;
      v16 = v20 & v15;
      v17 = *(v13 + 16 * v16);
      if (v17 == v11)
      {
        goto LABEL_9;
      }
    }
  }

  v16 = *(*a5 + 4);
LABEL_9:
  v18 = *(v13 + 16 * v16 + 8);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14 - 1;
LABEL_11:
  v21 = v15 & ((v12 >> 4) ^ (v12 >> 9));
  v22 = *(v13 + 16 * v21);
  if (v22 == v12)
  {
    goto LABEL_12;
  }

  v29 = 1;
  while (v22 != -4096)
  {
    v30 = v21 + v29++;
    v21 = v30 & v15;
    v22 = *(v13 + 16 * v21);
    if (v22 == v12)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v21 = *(*a5 + 4);
LABEL_12:
  if (v18 >= *(v13 + 16 * v21 + 8))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v12;
  v23 = *a3;
  v24 = *a2;
  if (v14)
  {
    v25 = v14 - 1;
    v26 = ((v23 >> 4) ^ (v23 >> 9)) & (v14 - 1);
    v27 = *(v13 + 16 * v26);
    if (v27 == v23)
    {
      v28 = *(v13 + 16 * v26 + 8);
      goto LABEL_28;
    }

    v31 = 1;
    while (v27 != -4096)
    {
      v32 = v26 + v31++;
      v26 = v32 & v25;
      v27 = *(v13 + 16 * v26);
      if (v27 == v23)
      {
        goto LABEL_26;
      }
    }
  }

  v26 = v14;
LABEL_26:
  v28 = *(v13 + 16 * v26 + 8);
  if (!v14)
  {
    goto LABEL_37;
  }

  v25 = v14 - 1;
LABEL_28:
  v33 = ((v24 >> 4) ^ (v24 >> 9)) & v25;
  v34 = *(v13 + 16 * v33);
  if (v34 == v24)
  {
    goto LABEL_29;
  }

  v41 = 1;
  while (v34 != -4096)
  {
    v42 = v33 + v41++;
    v33 = v42 & v25;
    v34 = *(v13 + 16 * v33);
    if (v34 == v24)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v33 = v14;
LABEL_29:
  if (v28 >= *(v13 + 16 * v33 + 8))
  {
    return result;
  }

  *a2 = v23;
  *a3 = v24;
  v35 = *a2;
  v36 = *a1;
  if (v14)
  {
    v37 = v14 - 1;
    v38 = ((v35 >> 4) ^ (v35 >> 9)) & (v14 - 1);
    v39 = *(v13 + 16 * v38);
    if (v39 == v35)
    {
      v40 = *(v13 + 16 * v38 + 8);
      goto LABEL_45;
    }

    v43 = 1;
    while (v39 != -4096)
    {
      v44 = v38 + v43++;
      v38 = v44 & v37;
      v39 = *(v13 + 16 * v38);
      if (v39 == v35)
      {
        goto LABEL_43;
      }
    }
  }

  v38 = v14;
LABEL_43:
  v40 = *(v13 + 16 * v38 + 8);
  if (!v14)
  {
    goto LABEL_47;
  }

  v37 = v14 - 1;
LABEL_45:
  v45 = ((v36 >> 4) ^ (v36 >> 9)) & v37;
  v46 = *(v13 + 16 * v45);
  if (v46 == v36)
  {
LABEL_46:
    v14 = v45;
  }

  else
  {
    v47 = 1;
    while (v46 != -4096)
    {
      v48 = v45 + v47++;
      v45 = v48 & v37;
      v46 = *(v13 + 16 * v45);
      if (v46 == v36)
      {
        goto LABEL_46;
      }
    }
  }

LABEL_47:
  if (v40 < *(v13 + 16 * v14 + 8))
  {
    *a1 = v35;
    *a2 = v36;
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t **a6)
{
  result = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = *a4;
  v15 = **a6;
  v16 = *(*a6 + 4);
  if (v16)
  {
    v17 = v16 - 1;
    v18 = (v16 - 1) & ((v13 >> 4) ^ (v13 >> 9));
    v19 = *(v15 + 16 * v18);
    if (v19 == v13)
    {
      v20 = *(v15 + 16 * v18 + 8);
      goto LABEL_11;
    }

    v21 = 1;
    while (v19 != -4096)
    {
      v22 = v18 + v21++;
      v18 = v22 & v17;
      v19 = *(v15 + 16 * v18);
      if (v19 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v18 = *(*a6 + 4);
LABEL_9:
  v20 = *(v15 + 16 * v18 + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16 - 1;
LABEL_11:
  v23 = v17 & ((v14 >> 4) ^ (v14 >> 9));
  v24 = *(v15 + 16 * v23);
  if (v24 == v14)
  {
    goto LABEL_12;
  }

  v31 = 1;
  while (v24 != -4096)
  {
    v32 = v23 + v31++;
    v23 = v32 & v17;
    v24 = *(v15 + 16 * v23);
    if (v24 == v14)
    {
      goto LABEL_12;
    }
  }

LABEL_20:
  v23 = *(*a6 + 4);
LABEL_12:
  if (v20 >= *(v15 + 16 * v23 + 8))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v14;
  v25 = *a4;
  v26 = *a3;
  if (v16)
  {
    v27 = v16 - 1;
    v28 = ((v25 >> 4) ^ (v25 >> 9)) & (v16 - 1);
    v29 = *(v15 + 16 * v28);
    if (v29 == v25)
    {
      v30 = *(v15 + 16 * v28 + 8);
      goto LABEL_28;
    }

    v33 = 1;
    while (v29 != -4096)
    {
      v34 = v28 + v33++;
      v28 = v34 & v27;
      v29 = *(v15 + 16 * v28);
      if (v29 == v25)
      {
        goto LABEL_26;
      }
    }
  }

  v28 = v16;
LABEL_26:
  v30 = *(v15 + 16 * v28 + 8);
  if (!v16)
  {
    goto LABEL_37;
  }

  v27 = v16 - 1;
LABEL_28:
  v35 = ((v26 >> 4) ^ (v26 >> 9)) & v27;
  v36 = *(v15 + 16 * v35);
  if (v36 == v26)
  {
    goto LABEL_29;
  }

  v43 = 1;
  while (v36 != -4096)
  {
    v44 = v35 + v43++;
    v35 = v44 & v27;
    v36 = *(v15 + 16 * v35);
    if (v36 == v26)
    {
      goto LABEL_29;
    }
  }

LABEL_37:
  v35 = v16;
LABEL_29:
  if (v30 >= *(v15 + 16 * v35 + 8))
  {
    return result;
  }

  *a3 = v25;
  *a4 = v26;
  v37 = *a3;
  v38 = *a2;
  if (v16)
  {
    v39 = v16 - 1;
    v40 = ((v37 >> 4) ^ (v37 >> 9)) & (v16 - 1);
    v41 = *(v15 + 16 * v40);
    if (v41 == v37)
    {
      v42 = *(v15 + 16 * v40 + 8);
      goto LABEL_45;
    }

    v45 = 1;
    while (v41 != -4096)
    {
      v46 = v40 + v45++;
      v40 = v46 & v39;
      v41 = *(v15 + 16 * v40);
      if (v41 == v37)
      {
        goto LABEL_43;
      }
    }
  }

  v40 = v16;
LABEL_43:
  v42 = *(v15 + 16 * v40 + 8);
  if (!v16)
  {
    goto LABEL_54;
  }

  v39 = v16 - 1;
LABEL_45:
  v47 = ((v38 >> 4) ^ (v38 >> 9)) & v39;
  v48 = *(v15 + 16 * v47);
  if (v48 == v38)
  {
    goto LABEL_46;
  }

  v55 = 1;
  while (v48 != -4096)
  {
    v56 = v47 + v55++;
    v47 = v56 & v39;
    v48 = *(v15 + 16 * v47);
    if (v48 == v38)
    {
      goto LABEL_46;
    }
  }

LABEL_54:
  v47 = v16;
LABEL_46:
  if (v42 >= *(v15 + 16 * v47 + 8))
  {
    return result;
  }

  *a2 = v37;
  *a3 = v38;
  v49 = *a2;
  v50 = *a1;
  if (v16)
  {
    v51 = v16 - 1;
    v52 = ((v49 >> 4) ^ (v49 >> 9)) & (v16 - 1);
    v53 = *(v15 + 16 * v52);
    if (v53 == v49)
    {
      v54 = *(v15 + 16 * v52 + 8);
      goto LABEL_62;
    }

    v57 = 1;
    while (v53 != -4096)
    {
      v58 = v52 + v57++;
      v52 = v58 & v51;
      v53 = *(v15 + 16 * v52);
      if (v53 == v49)
      {
        goto LABEL_60;
      }
    }
  }

  v52 = v16;
LABEL_60:
  v54 = *(v15 + 16 * v52 + 8);
  if (!v16)
  {
    goto LABEL_64;
  }

  v51 = v16 - 1;
LABEL_62:
  v59 = ((v50 >> 4) ^ (v50 >> 9)) & v51;
  v60 = *(v15 + 16 * v59);
  if (v60 == v50)
  {
LABEL_63:
    v16 = v59;
  }

  else
  {
    v61 = 1;
    while (v60 != -4096)
    {
      v62 = v59 + v61++;
      v59 = v62 & v51;
      v60 = *(v15 + 16 * v59);
      if (v60 == v50)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_64:
  if (v54 < *(v15 + 16 * v16 + 8))
  {
    *a1 = v49;
    *a2 = v50;
  }

  return result;
}

void *std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      v8 = result;
      do
      {
        v10 = v3;
        v12 = *v8;
        v11 = v8[1];
        v13 = v11 >> 4;
        if (v5)
        {
          v14 = v6 & (v13 ^ (v11 >> 9));
          v15 = *(v4 + 16 * v14);
          if (v15 != v11)
          {
            v33 = 1;
            while (v15 != -4096)
            {
              v34 = v14 + v33++;
              v14 = v34 & v6;
              v15 = *(v4 + 16 * v14);
              if (v15 == v11)
              {
                goto LABEL_9;
              }
            }

            v14 = v5;
          }

LABEL_9:
          v16 = *(v4 + 16 * v14 + 8);
          v17 = v6 & ((v12 >> 4) ^ (v12 >> 9));
          v18 = *(v4 + 16 * v17);
          if (v18 != v12)
          {
            v19 = 1;
            while (v18 != -4096)
            {
              v20 = v17 + v19++;
              v17 = v20 & v6;
              v18 = *(v4 + 16 * v17);
              if (v18 == v12)
              {
                goto LABEL_15;
              }
            }

            if (v16 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_6;
            }

LABEL_16:
            v21 = v6 & (v13 ^ (v11 >> 9));
            v22 = (v4 + 16 * v21);
            v9 = v10;
            while (1)
            {
              *v9 = v12;
              if (v8 == result)
              {
                break;
              }

              v9 = v8;
              v25 = *--v8;
              v12 = v25;
              if (v5)
              {
                v26 = *v22;
                v27 = v21;
                if (*v22 != v11)
                {
                  v31 = 1;
                  LODWORD(v27) = v21;
                  while (v26 != -4096)
                  {
                    v32 = v27 + v31++;
                    v27 = v32 & v6;
                    v26 = *(v4 + 16 * v27);
                    if (v26 == v11)
                    {
                      goto LABEL_22;
                    }
                  }

                  v27 = v5;
                }

LABEL_22:
                v24 = *(v4 + 16 * v27 + 8);
                v23 = ((v12 >> 4) ^ (v12 >> 9)) & v6;
                v28 = *(v4 + 16 * v23);
                if (v28 != v12)
                {
                  v29 = 1;
                  while (v28 != -4096)
                  {
                    v30 = v23 + v29++;
                    v23 = v30 & v6;
                    v28 = *(v4 + 16 * v23);
                    if (v28 == v12)
                    {
                      goto LABEL_18;
                    }
                  }

                  v23 = v5;
                }
              }

              else
              {
                v23 = 0;
                v24 = *(v7 + 8);
              }

LABEL_18:
              if (v24 >= *(v4 + 16 * v23 + 8))
              {
                goto LABEL_5;
              }
            }

            v9 = result;
LABEL_5:
            *v9 = v11;
            goto LABEL_6;
          }
        }

        else
        {
          v17 = 0;
          v16 = *(v7 + 8);
        }

LABEL_15:
        if (v16 < *(v4 + 16 * v17 + 8))
        {
          goto LABEL_16;
        }

LABEL_6:
        v3 = v10 + 1;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *result, void *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = **a3;
      v5 = *(*a3 + 4);
      v6 = v5 - 1;
      v7 = v4 + 16 * v5;
      do
      {
        v8 = v3;
        v10 = *result;
        v9 = result[1];
        v11 = v9 >> 4;
        if (v5)
        {
          v12 = v6 & (v11 ^ (v9 >> 9));
          v13 = *(v4 + 16 * v12);
          if (v13 != v9)
          {
            v32 = 1;
            while (v13 != -4096)
            {
              v33 = v12 + v32++;
              v12 = v33 & v6;
              v13 = *(v4 + 16 * v12);
              if (v13 == v9)
              {
                goto LABEL_8;
              }
            }

            v12 = v5;
          }

LABEL_8:
          v14 = *(v4 + 16 * v12 + 8);
          v15 = v6 & ((v10 >> 4) ^ (v10 >> 9));
          v16 = *(v4 + 16 * v15);
          if (v16 != v10)
          {
            v17 = 1;
            while (v16 != -4096)
            {
              v18 = v15 + v17++;
              v15 = v18 & v6;
              v16 = *(v4 + 16 * v15);
              if (v16 == v10)
              {
                goto LABEL_14;
              }
            }

            if (v14 >= *(v4 + 16 * v5 + 8))
            {
              goto LABEL_5;
            }

LABEL_15:
            v19 = v6 & (v11 ^ (v9 >> 9));
            v20 = (v4 + 16 * v19);
            v21 = v8;
            do
            {
              *v21 = v10;
              v21 = result;
              v24 = *--result;
              v10 = v24;
              if (v5)
              {
                v25 = *v20;
                v26 = v19;
                if (*v20 != v9)
                {
                  v30 = 1;
                  LODWORD(v26) = v19;
                  while (v25 != -4096)
                  {
                    v31 = v26 + v30++;
                    v26 = v31 & v6;
                    v25 = *(v4 + 16 * v26);
                    if (v25 == v9)
                    {
                      goto LABEL_20;
                    }
                  }

                  v26 = v5;
                }

LABEL_20:
                v23 = *(v4 + 16 * v26 + 8);
                v22 = ((v10 >> 4) ^ (v10 >> 9)) & v6;
                v27 = *(v4 + 16 * v22);
                if (v27 != v10)
                {
                  v28 = 1;
                  while (v27 != -4096)
                  {
                    v29 = v22 + v28++;
                    v22 = v29 & v6;
                    v27 = *(v4 + 16 * v22);
                    if (v27 == v10)
                    {
                      goto LABEL_17;
                    }
                  }

                  v22 = v5;
                }
              }

              else
              {
                v22 = 0;
                v23 = *(v7 + 8);
              }

LABEL_17:
              ;
            }

            while (v23 < *(v4 + 16 * v22 + 8));
            *v21 = v9;
            goto LABEL_5;
          }
        }

        else
        {
          v15 = 0;
          v14 = *(v7 + 8);
        }

LABEL_14:
        if (v14 < *(v4 + 16 * v15 + 8))
        {
          goto LABEL_15;
        }

LABEL_5:
        v3 = v8 + 1;
        result = v8;
      }

      while (v8 + 1 != a2);
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1}>(mlir::Block *,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1},unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = *(a2 - 1);
  v5 = **a3;
  v6 = *(*a3 + 4);
  v7 = *a1 >> 4;
  if (v6)
  {
    v8 = v6 - 1;
    v9 = (v6 - 1) & (v7 ^ (v3 >> 9));
    v10 = *(v5 + 16 * v9);
    if (v10 == v3)
    {
      v11 = *(v5 + 16 * v9 + 8);
      goto LABEL_11;
    }

    v12 = 1;
    while (v10 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & v8;
      v10 = *(v5 + 16 * v9);
      if (v10 == v3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = *(*a3 + 4);
LABEL_9:
  v11 = *(v5 + 16 * v9 + 8);
  if (!v6)
  {
    goto LABEL_107;
  }

  v8 = v6 - 1;
LABEL_11:
  v14 = v8 & ((v4 >> 4) ^ (v4 >> 9));
  v15 = *(v5 + 16 * v14);
  if (v15 == v4)
  {
    goto LABEL_12;
  }

  v81 = 1;
  while (v15 != -4096)
  {
    v82 = v14 + v81++;
    v14 = v82 & v8;
    v15 = *(v5 + 16 * v14);
    if (v15 == v4)
    {
      goto LABEL_12;
    }
  }

LABEL_107:
  v14 = *(*a3 + 4);
LABEL_12:
  v16 = *(v5 + 16 * v14 + 8);
  v17 = v6 - 1;
  v18 = (v6 - 1) & (v7 ^ (v3 >> 9));
  v19 = (v5 + 16 * v18);
  v20 = v5 + 16 * v6;
  v21 = a1;
  if (v11 < v16)
  {
    do
    {
      v25 = v21[1];
      ++v21;
      v24 = v25;
      if (v6)
      {
        v26 = *v19;
        v27 = (v19 + 1);
        if (*v19 != v3)
        {
          v31 = 1;
          LODWORD(v32) = v18;
          while (v26 != -4096)
          {
            v33 = v32 + v31++;
            v32 = v33 & v17;
            v26 = *(v5 + 16 * v32);
            if (v26 == v3)
            {
              goto LABEL_29;
            }
          }

          v32 = v6;
LABEL_29:
          v27 = (v5 + 16 * v32 + 8);
        }

        v23 = *v27;
        v22 = ((v24 >> 4) ^ (v24 >> 9)) & v17;
        v28 = *(v5 + 16 * v22);
        if (v28 != v24)
        {
          v29 = 1;
          while (v28 != -4096)
          {
            v30 = v22 + v29++;
            v22 = v30 & v17;
            v28 = *(v5 + 16 * v22);
            if (v28 == v24)
            {
              goto LABEL_15;
            }
          }

          v22 = v6;
        }
      }

      else
      {
        v22 = 0;
        v23 = *(v20 + 8);
      }

LABEL_15:
      ;
    }

    while (v23 >= *(v5 + 16 * v22 + 8));
  }

  else
  {
    do
    {
      if (++v21 >= a2)
      {
        break;
      }

      if (v6)
      {
        v36 = *v19;
        v37 = (v19 + 1);
        if (*v19 != v3)
        {
          v41 = 1;
          LODWORD(v42) = v18;
          while (v36 != -4096)
          {
            v43 = v42 + v41++;
            v42 = v43 & v17;
            v36 = *(v5 + 16 * v42);
            if (v36 == v3)
            {
              goto LABEL_46;
            }
          }

          v42 = v6;
LABEL_46:
          v37 = (v5 + 16 * v42 + 8);
        }

        v35 = *v37;
        v34 = ((*v21 >> 4) ^ (*v21 >> 9)) & v17;
        v38 = *(v5 + 16 * v34);
        if (v38 != *v21)
        {
          v39 = 1;
          while (v38 != -4096)
          {
            v40 = v34 + v39++;
            v34 = v40 & v17;
            v38 = *(v5 + 16 * v34);
            if (v38 == *v21)
            {
              goto LABEL_31;
            }
          }

          v34 = v6;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v20 + 8);
      }

LABEL_31:
      ;
    }

    while (v35 >= *(v5 + 16 * v34 + 8));
  }

  if (v21 < a2)
  {
    do
    {
      v71 = *--a2;
      v70 = v71;
      if (v6)
      {
        v72 = *v19;
        v73 = (v19 + 1);
        if (*v19 != v3)
        {
          v77 = 1;
          LODWORD(v78) = v18;
          while (v72 != -4096)
          {
            v79 = v78 + v77++;
            v78 = v79 & v17;
            v72 = *(v5 + 16 * v78);
            if (v72 == v3)
            {
              goto LABEL_99;
            }
          }

          v78 = v6;
LABEL_99:
          v73 = (v5 + 16 * v78 + 8);
        }

        v69 = *v73;
        v68 = ((v70 >> 4) ^ (v70 >> 9)) & v17;
        v74 = *(v5 + 16 * v68);
        if (v74 != v70)
        {
          v75 = 1;
          while (v74 != -4096)
          {
            v76 = v68 + v75++;
            v68 = v76 & v17;
            v74 = *(v5 + 16 * v68);
            if (v74 == v70)
            {
              goto LABEL_85;
            }
          }

          v68 = v6;
        }
      }

      else
      {
        v68 = 0;
        v69 = *(v20 + 8);
      }

LABEL_85:
      ;
    }

    while (v69 < *(v5 + 16 * v68 + 8));
  }

  if (v21 < a2)
  {
    v44 = *v21;
    v45 = *a2;
    do
    {
      *v21 = v45;
      *a2 = v44;
      do
      {
        v48 = v21[1];
        ++v21;
        v44 = v48;
        if (v6)
        {
          v49 = *v19;
          v50 = (v19 + 1);
          if (*v19 != v3)
          {
            v54 = 1;
            LODWORD(v55) = v18;
            while (v49 != -4096)
            {
              v56 = v55 + v54++;
              v55 = v56 & v17;
              v49 = *(v5 + 16 * v55);
              if (v49 == v3)
              {
                goto LABEL_67;
              }
            }

            v55 = v6;
LABEL_67:
            v50 = (v5 + 16 * v55 + 8);
          }

          v47 = *v50;
          v46 = ((v44 >> 4) ^ (v44 >> 9)) & v17;
          v51 = *(v5 + 16 * v46);
          if (v51 != v44)
          {
            v52 = 1;
            while (v51 != -4096)
            {
              v53 = v46 + v52++;
              v46 = v53 & v17;
              v51 = *(v5 + 16 * v46);
              if (v51 == v44)
              {
                goto LABEL_53;
              }
            }

            v46 = v6;
          }
        }

        else
        {
          v46 = 0;
          v47 = *(v20 + 8);
        }

LABEL_53:
        ;
      }

      while (v47 >= *(v5 + 16 * v46 + 8));
      do
      {
        v59 = *--a2;
        v45 = v59;
        if (v6)
        {
          v60 = *v19;
          v61 = (v19 + 1);
          if (*v19 != v3)
          {
            v65 = 1;
            LODWORD(v66) = v18;
            while (v60 != -4096)
            {
              v67 = v66 + v65++;
              v66 = v67 & v17;
              v60 = *(v5 + 16 * v66);
              if (v60 == v3)
              {
                goto LABEL_83;
              }
            }

            v66 = v6;
LABEL_83:
            v61 = (v5 + 16 * v66 + 8);
          }

          v58 = *v61;
          v57 = ((v45 >> 4) ^ (v45 >> 9)) & v17;
          v62 = *(v5 + 16 * v57);
          if (v62 != v45)
          {
            v63 = 1;
            while (v62 != -4096)
            {
              v64 = v57 + v63++;
              v57 = v64 & v17;
              v62 = *(v5 + 16 * v57);
              if (v62 == v45)
              {
                goto LABEL_69;
              }
            }

            v57 = v6;
          }
        }

        else
        {
          v57 = 0;
          v58 = *(v20 + 8);
        }

LABEL_69:
        ;
      }

      while (v58 < *(v5 + 16 * v57 + 8));
    }

    while (v21 < a2);
  }

  if (v21 - 1 != a1)
  {
    *a1 = *(v21 - 1);
  }

  *(v21 - 1) = v3;
  return v21;
}

void *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,mlir::Block **,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1}>(mlir::Block *,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block *,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block *,mlir::Block *)#1},unsigned int,llvm::DenseMap<mlir::Block *,unsigned int,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,unsigned int>> const*)::{lambda(mlir::Block *,mlir::Block *)#1} &>(void *a1, void *a2, uint64_t **a3)
{
  v3 = *a1;
  v4 = **a3;
  v5 = *(*a3 + 4);
  v6 = v5 - 1;
  v7 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
  v8 = (v4 + 16 * v7);
  v9 = v4 + 16 * v5;
  v10 = a1;
  do
  {
    v13 = v10;
    v15 = v10[1];
    ++v10;
    v14 = v15;
    if (v5)
    {
      v16 = v6 & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v4 + 16 * v16);
      if (v17 != v14)
      {
        v19 = 1;
        while (v17 != -4096)
        {
          v20 = v16 + v19++;
          v16 = v20 & v6;
          v17 = *(v4 + 16 * v16);
          if (v17 == v14)
          {
            goto LABEL_6;
          }
        }

        v16 = v5;
      }

LABEL_6:
      v12 = *(v4 + 16 * v16 + 8);
      v18 = *v8;
      if (*v8 == v3)
      {
        v11 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
      }

      else
      {
        v21 = 1;
        LODWORD(v11) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        while (v18 != -4096)
        {
          v22 = v11 + v21++;
          v11 = v22 & v6;
          v18 = *(v4 + 16 * v11);
          if (v18 == v3)
          {
            goto LABEL_3;
          }
        }

        v11 = v5;
      }
    }

    else
    {
      v11 = 0;
      v12 = *(v9 + 8);
    }

LABEL_3:
    ;
  }

  while (v12 < *(v4 + 16 * v11 + 8));
  if (v13 == a1)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v37 = *--a2;
      v36 = v37;
      if (v5)
      {
        v38 = ((v36 >> 4) ^ (v36 >> 9)) & v6;
        v39 = *(v4 + 16 * v38);
        if (v39 != v36)
        {
          v41 = 1;
          while (v39 != -4096)
          {
            v42 = v38 + v41++;
            v38 = v42 & v6;
            v39 = *(v4 + 16 * v38);
            if (v39 == v36)
            {
              goto LABEL_41;
            }
          }

          v38 = v5;
        }

LABEL_41:
        v35 = *(v4 + 16 * v38 + 8);
        v40 = *v8;
        if (*v8 == v3)
        {
          v34 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v43 = 1;
          LODWORD(v34) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v40 != -4096)
          {
            v44 = v34 + v43++;
            v34 = v44 & v6;
            v40 = *(v4 + 16 * v34);
            if (v40 == v3)
            {
              goto LABEL_37;
            }
          }

          v34 = v5;
        }
      }

      else
      {
        v34 = 0;
        v35 = *(v9 + 8);
      }

LABEL_37:
      ;
    }

    while (v35 >= *(v4 + 16 * v34 + 8));
  }

  else
  {
    do
    {
      v26 = *--a2;
      v25 = v26;
      if (v5)
      {
        v27 = ((v25 >> 4) ^ (v25 >> 9)) & v6;
        v28 = *(v4 + 16 * v27);
        if (v28 != v25)
        {
          v30 = 1;
          while (v28 != -4096)
          {
            v31 = v27 + v30++;
            v27 = v31 & v6;
            v28 = *(v4 + 16 * v27);
            if (v28 == v25)
            {
              goto LABEL_24;
            }
          }

          v27 = v5;
        }

LABEL_24:
        v24 = *(v4 + 16 * v27 + 8);
        v29 = *v8;
        if (*v8 == v3)
        {
          v23 = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
        }

        else
        {
          v32 = 1;
          LODWORD(v23) = (v5 - 1) & ((*a1 >> 4) ^ (*a1 >> 9));
          while (v29 != -4096)
          {
            v33 = v23 + v32++;
            v23 = v33 & v6;
            v29 = *(v4 + 16 * v23);
            if (v29 == v3)
            {
              goto LABEL_21;
            }
          }

          v23 = v5;
        }
      }

      else
      {
        v23 = 0;
        v24 = *(v9 + 8);
      }

LABEL_21:
      ;
    }

    while (v24 >= *(v4 + 16 * v23 + 8));
  }

  if (v10 < a2)
  {
    v45 = *a2;
    v46 = v10;
    v47 = a2;
    do
    {
      *v46 = v45;
      *v47 = v14;
      do
      {
        v13 = v46;
        v50 = v46[1];
        ++v46;
        v14 = v50;
        if (v5)
        {
          v51 = ((v14 >> 4) ^ (v14 >> 9)) & v6;
          v52 = *(v4 + 16 * v51);
          if (v52 != v14)
          {
            v54 = 1;
            while (v52 != -4096)
            {
              v55 = v51 + v54++;
              v51 = v55 & v6;
              v52 = *(v4 + 16 * v51);
              if (v52 == v14)
              {
                goto LABEL_61;
              }
            }

            v51 = v5;
          }

LABEL_61:
          v49 = *(v4 + 16 * v51 + 8);
          v53 = *v8;
          if (*v8 == v3)
          {
            v48 = v7;
          }

          else
          {
            v56 = 1;
            LODWORD(v48) = v7;
            while (v53 != -4096)
            {
              v57 = v48 + v56++;
              v48 = v57 & v6;
              v53 = *(v4 + 16 * v48);
              if (v53 == v3)
              {
                goto LABEL_58;
              }
            }

            v48 = v5;
          }
        }

        else
        {
          v48 = 0;
          v49 = *(v9 + 8);
        }

LABEL_58:
        ;
      }

      while (v49 < *(v4 + 16 * v48 + 8));
      do
      {
        v60 = *--v47;
        v45 = v60;
        if (v5)
        {
          v61 = ((v45 >> 4) ^ (v45 >> 9)) & v6;
          v62 = *(v4 + 16 * v61);
          if (v62 != v45)
          {
            v64 = 1;
            while (v62 != -4096)
            {
              v65 = v61 + v64++;
              v61 = v65 & v6;
              v62 = *(v4 + 16 * v61);
              if (v62 == v45)
              {
                goto LABEL_77;
              }
            }

            v61 = v5;
          }

LABEL_77:
          v59 = *(v4 + 16 * v61 + 8);
          v63 = *v8;
          if (*v8 == v3)
          {
            v58 = v7;
          }

          else
          {
            v66 = 1;
            LODWORD(v58) = v7;
            while (v63 != -4096)
            {
              v67 = v58 + v66++;
              v58 = v67 & v6;
              v63 = *(v4 + 16 * v58);
              if (v63 == v3)
              {
                goto LABEL_74;
              }
            }

            v58 = v5;
          }
        }

        else
        {
          v58 = 0;
          v59 = *(v9 + 8);
        }

LABEL_74:
        ;
      }

      while (v59 >= *(v4 + 16 * v58 + 8));
    }

    while (v46 < v47);
  }

  if (v13 != a1)
  {
    *a1 = *v13;
  }

  *v13 = v3;
  return v13;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t *a1, uint64_t *a2, uint64_t **a3)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 1);
      v6 = *a1;
      v7 = **a3;
      v8 = *(*a3 + 4);
      if (v8)
      {
        v9 = v8 - 1;
        v10 = (v8 - 1) & ((v5 >> 4) ^ (v5 >> 9));
        v11 = *(v7 + 16 * v10);
        if (v11 == v5)
        {
          v12 = *(v7 + 16 * v10 + 8);
          goto LABEL_59;
        }

        v48 = 1;
        while (v11 != -4096)
        {
          v49 = v10 + v48++;
          v10 = v49 & v9;
          v11 = *(v7 + 16 * v10);
          if (v11 == v5)
          {
            goto LABEL_57;
          }
        }
      }

      v10 = *(*a3 + 4);
LABEL_57:
      v12 = *(v7 + 16 * v10 + 8);
      if (!v8)
      {
        goto LABEL_61;
      }

      v9 = v8 - 1;
LABEL_59:
      v50 = v9 & ((v6 >> 4) ^ (v6 >> 9));
      v51 = *(v7 + 16 * v50);
      if (v51 == v6)
      {
LABEL_60:
        v8 = v50;
      }

      else
      {
        v52 = 1;
        while (v51 != -4096)
        {
          v53 = v50 + v52++;
          v50 = v53 & v9;
          v51 = *(v7 + 16 * v50);
          if (v51 == v6)
          {
            goto LABEL_60;
          }
        }
      }

LABEL_61:
      if (v12 < *(v7 + 16 * v8 + 8))
      {
        *a1 = v5;
        *(a2 - 1) = v6;
      }

      return 1;
    }
  }

  v14 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,0>(a1, a1 + 1, a1 + 2, a3);
  v17 = a1 + 3;
  if (a1 + 3 != a2)
  {
    v18 = 0;
    v19 = **a3;
    v20 = *(*a3 + 4);
    v21 = v20 - 1;
    v22 = v19 + 16 * v20;
    while (1)
    {
      v24 = *v17;
      v25 = *v14;
      v26 = *v17 >> 4;
      if (!v20)
      {
        break;
      }

      v27 = v21 & (v26 ^ (v24 >> 9));
      v28 = *(v19 + 16 * v27);
      if (v28 != v24)
      {
        v46 = 1;
        while (v28 != -4096)
        {
          v47 = v27 + v46++;
          v27 = v47 & v21;
          v28 = *(v19 + 16 * v27);
          if (v28 == v24)
          {
            goto LABEL_19;
          }
        }

        v27 = v20;
      }

LABEL_19:
      v29 = *(v19 + 16 * v27 + 8);
      v30 = v21 & ((v25 >> 4) ^ (v25 >> 9));
      v31 = *(v19 + 16 * v30);
      if (v31 == v25)
      {
        goto LABEL_25;
      }

      v32 = 1;
      while (v31 != -4096)
      {
        v33 = v30 + v32++;
        v30 = v33 & v21;
        v31 = *(v19 + 16 * v30);
        if (v31 == v25)
        {
          goto LABEL_25;
        }
      }

      if (v29 >= *(v19 + 16 * v20 + 8))
      {
        goto LABEL_16;
      }

LABEL_26:
      v34 = v21 & (v26 ^ (v24 >> 9));
      v35 = (v19 + 16 * v34);
      v23 = v17;
      while (1)
      {
        *v23 = v25;
        if (v14 == a1)
        {
          break;
        }

        v23 = v14;
        v38 = *--v14;
        v25 = v38;
        if (v20)
        {
          v39 = *v35;
          v40 = v34;
          if (*v35 != v24)
          {
            v44 = 1;
            LODWORD(v40) = v34;
            while (v39 != -4096)
            {
              v45 = v40 + v44++;
              v40 = v45 & v21;
              v39 = *(v19 + 16 * v40);
              if (v39 == v24)
              {
                goto LABEL_32;
              }
            }

            v40 = v20;
          }

LABEL_32:
          v37 = *(v19 + 16 * v40 + 8);
          v36 = ((v25 >> 4) ^ (v25 >> 9)) & v21;
          v41 = *(v19 + 16 * v36);
          if (v41 != v25)
          {
            v42 = 1;
            while (v41 != -4096)
            {
              v43 = v36 + v42++;
              v36 = v43 & v21;
              v41 = *(v19 + 16 * v36);
              if (v41 == v25)
              {
                goto LABEL_28;
              }
            }

            v36 = v20;
          }
        }

        else
        {
          v36 = 0;
          v37 = *(v22 + 8);
        }

LABEL_28:
        if (v37 >= *(v19 + 16 * v36 + 8))
        {
          goto LABEL_15;
        }
      }

      v23 = a1;
LABEL_15:
      *v23 = v24;
      if (++v18 == 8)
      {
        return v17 + 1 == a2;
      }

LABEL_16:
      v14 = v17++;
      if (v17 == a2)
      {
        return 1;
      }
    }

    v30 = 0;
    v29 = *(v22 + 8);
LABEL_25:
    if (v29 >= *(v19 + 16 * v30 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  return 1;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t result, uint64_t **a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (a4 - result) >> 3)
    {
      v5 = (a4 - result) >> 2;
      v6 = v5 + 1;
      v7 = (result + 8 * (v5 + 1));
      v8 = v5 + 2;
      v9 = *a2;
      v10 = **a2;
      if (v8 >= a3)
      {
        LODWORD(v9) = *(v9 + 4);
        v16 = *v7;
        v17 = *a4;
        v18 = *a4 >> 4;
        if (!v9)
        {
          goto LABEL_27;
        }

        goto LABEL_20;
      }

      v11 = v7[1];
      v9 = *(v9 + 4);
      if (v9)
      {
        v12 = v9 - 1;
        v13 = (v9 - 1) & ((*v7 >> 4) ^ (*v7 >> 9));
        v14 = *(v10 + 16 * v13);
        if (v14 == *v7)
        {
          v15 = *(v10 + 16 * v13 + 8);
          goto LABEL_16;
        }

        v19 = 1;
        while (v14 != -4096)
        {
          v20 = v13 + v19++;
          v13 = v20 & v12;
          v14 = *(v10 + 16 * v13);
          if (v14 == *v7)
          {
            goto LABEL_14;
          }
        }
      }

      v13 = v9;
LABEL_14:
      v15 = *(v10 + 16 * v13 + 8);
      if (!v9)
      {
        goto LABEL_80;
      }

      v12 = v9 - 1;
LABEL_16:
      v21 = v12 & ((v11 >> 4) ^ (v11 >> 9));
      v22 = *(v10 + 16 * v21);
      if (v22 == v11)
      {
        goto LABEL_17;
      }

      v59 = 1;
      while (v22 != -4096)
      {
        v60 = v21 + v59++;
        v21 = v60 & v12;
        v22 = *(v10 + 16 * v21);
        if (v22 == v11)
        {
          goto LABEL_17;
        }
      }

LABEL_80:
      v21 = v9;
LABEL_17:
      if (v15 < *(v10 + 16 * v21 + 8))
      {
        ++v7;
        v6 = v8;
      }

      v16 = *v7;
      v17 = *a4;
      v18 = *a4 >> 4;
      if (!v9)
      {
        goto LABEL_27;
      }

LABEL_20:
      v23 = v9 - 1;
      v24 = (v9 - 1) & ((v16 >> 4) ^ (v16 >> 9));
      v25 = *(v10 + 16 * v24);
      if (v25 == v16)
      {
        v26 = *(v10 + 16 * v24 + 8);
        v27 = v23 & (v18 ^ (v17 >> 9));
        v28 = *(v10 + 16 * v27);
        if (v28 != v17)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      v29 = 1;
      while (v25 != -4096)
      {
        v30 = v24 + v29++;
        v24 = v30 & v23;
        v25 = *(v10 + 16 * v24);
        if (v25 == v16)
        {
          goto LABEL_28;
        }
      }

LABEL_27:
      v24 = v9;
LABEL_28:
      v26 = *(v10 + 16 * v24 + 8);
      if (!v9)
      {
        goto LABEL_34;
      }

      v23 = v9 - 1;
      v27 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v28 = *(v10 + 16 * v27);
      if (v28 != v17)
      {
LABEL_30:
        v31 = 1;
        while (v28 != -4096)
        {
          v32 = v27 + v31++;
          v27 = v32 & v23;
          v28 = *(v10 + 16 * v27);
          if (v28 == v17)
          {
            goto LABEL_35;
          }
        }

LABEL_34:
        v27 = v9;
      }

LABEL_35:
      if (v26 < *(v10 + 16 * v27 + 8))
      {
        return result;
      }

      v33 = v9 - 1;
      v34 = (v9 - 1) & (v18 ^ (v17 >> 9));
      v35 = (v10 + 16 * v34);
      v36 = v10 + 16 * v9;
      while (1)
      {
        v40 = v7;
        *a4 = v16;
        if (v4 < v6)
        {
LABEL_74:
          *v40 = v17;
          return result;
        }

        v41 = (2 * v6) | 1;
        v7 = (result + 8 * v41);
        v6 = 2 * v6 + 2;
        if (v6 >= a3)
        {
          v6 = v41;
          v16 = *v7;
          if (v9)
          {
            goto LABEL_55;
          }
        }

        else
        {
          v42 = v7[1];
          if (v9)
          {
            v43 = ((*v7 >> 4) ^ (*v7 >> 9)) & v33;
            v44 = *(v10 + 16 * v43);
            if (v44 != *v7)
            {
              v57 = 1;
              while (v44 != -4096)
              {
                v58 = v43 + v57++;
                v43 = v58 & v33;
                v44 = *(v10 + 16 * v43);
                if (v44 == *v7)
                {
                  goto LABEL_43;
                }
              }

              v43 = v9;
            }

LABEL_43:
            v45 = *(v10 + 16 * v43 + 8);
            v46 = ((v42 >> 4) ^ (v42 >> 9)) & v33;
            v47 = *(v10 + 16 * v46);
            if (v47 != v42)
            {
              v48 = 1;
              while (v47 != -4096)
              {
                v49 = v46 + v48++;
                v46 = v49 & v33;
                v47 = *(v10 + 16 * v46);
                if (v47 == v42)
                {
                  goto LABEL_51;
                }
              }

              v46 = v9;
            }
          }

          else
          {
            v46 = 0;
            v45 = *(v36 + 8);
          }

LABEL_51:
          if (v45 >= *(v10 + 16 * v46 + 8))
          {
            v6 = v41;
          }

          else
          {
            ++v7;
          }

          v16 = *v7;
          if (v9)
          {
LABEL_55:
            v50 = ((v16 >> 4) ^ (v16 >> 9)) & v33;
            v51 = *(v10 + 16 * v50);
            if (v51 != v16)
            {
              v53 = 1;
              while (v51 != -4096)
              {
                v54 = v50 + v53++;
                v50 = v54 & v33;
                v51 = *(v10 + 16 * v50);
                if (v51 == v16)
                {
                  goto LABEL_56;
                }
              }

              v50 = v9;
            }

LABEL_56:
            v38 = *(v10 + 16 * v50 + 8);
            v52 = *v35;
            if (*v35 == v17)
            {
              v37 = v34;
            }

            else
            {
              v55 = 1;
              LODWORD(v37) = v34;
              while (v52 != -4096)
              {
                v56 = v37 + v55++;
                v37 = v56 & v33;
                v52 = *(v10 + 16 * v37);
                if (v52 == v17)
                {
                  goto LABEL_38;
                }
              }

              v37 = v9;
            }

            goto LABEL_38;
          }
        }

        v37 = 0;
        v38 = *(v36 + 8);
LABEL_38:
        v39 = *(v10 + 16 * v37 + 8);
        a4 = v40;
        if (v38 < v39)
        {
          goto LABEL_74;
        }
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(void *a1, uint64_t **a2, uint64_t a3)
{
  v3 = 0;
  v4 = (a3 - 2) / 2;
  v5 = *a2;
  do
  {
    while (1)
    {
      v6 = &a1[v3];
      v7 = v6 + 1;
      v8 = (2 * v3) | 1;
      v3 = 2 * v3 + 2;
      if (v3 < a3)
      {
        break;
      }

      v3 = v8;
      *a1 = *v7;
      a1 = v6 + 1;
      if (v8 > v4)
      {
        return v7;
      }
    }

    v11 = v6[2];
    v9 = v6 + 2;
    v10 = v11;
    v12 = *v5;
    v13 = *(v5 + 4);
    if (v13)
    {
      v14 = *(v9 - 1);
      v15 = v13 - 1;
      v16 = (v13 - 1) & ((v14 >> 4) ^ (v14 >> 9));
      v17 = *(v12 + 16 * v16);
      if (v17 == v14)
      {
        v18 = *(v12 + 16 * v16 + 8);
        goto LABEL_14;
      }

      v19 = 1;
      while (v17 != -4096)
      {
        v20 = v16 + v19++;
        v16 = v20 & v15;
        v17 = *(v12 + 16 * v16);
        if (v17 == v14)
        {
          goto LABEL_12;
        }
      }
    }

    v16 = *(v5 + 4);
LABEL_12:
    v18 = *(v12 + 16 * v16 + 8);
    if (v13)
    {
      v15 = v13 - 1;
LABEL_14:
      v21 = v15 & ((v10 >> 4) ^ (v10 >> 9));
      v22 = *(v12 + 16 * v21);
      if (v22 == v10)
      {
LABEL_15:
        v13 = v21;
      }

      else
      {
        v23 = 1;
        while (v22 != -4096)
        {
          v24 = v21 + v23++;
          v21 = v24 & v15;
          v22 = *(v12 + 16 * v21);
          if (v22 == v10)
          {
            goto LABEL_15;
          }
        }
      }
    }

    if (v18 >= *(v12 + 16 * v13 + 8))
    {
      v3 = v8;
    }

    else
    {
      v7 = v9;
    }

    *a1 = *v7;
    a1 = v7;
  }

  while (v3 <= v4);
  return v7;
}

uint64_t std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**>(uint64_t result, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return result;
  }

  v5 = v4 >> 1;
  v6 = (result + 8 * (v4 >> 1));
  v7 = *v6;
  v10 = *(a2 - 8);
  v8 = (a2 - 8);
  v9 = v10;
  v11 = **a3;
  v12 = *(*a3 + 4);
  v13 = v10 >> 4;
  if (v12)
  {
    v14 = v12 - 1;
    v15 = (v12 - 1) & ((v7 >> 4) ^ (v7 >> 9));
    v16 = *(v11 + 16 * v15);
    if (v16 == v7)
    {
      v17 = *(v11 + 16 * v15 + 8);
      v18 = v14 & (v13 ^ (v9 >> 9));
      v19 = *(v11 + 16 * v18);
      if (v19 == v9)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v20 = 1;
    while (v16 != -4096)
    {
      v21 = v15 + v20++;
      v15 = v21 & v14;
      v16 = *(v11 + 16 * v15);
      if (v16 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  v15 = v12;
LABEL_11:
  v17 = *(v11 + 16 * v15 + 8);
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = v12 - 1;
  v18 = (v12 - 1) & (v13 ^ (v9 >> 9));
  v19 = *(v11 + 16 * v18);
  if (v19 == v9)
  {
    goto LABEL_18;
  }

LABEL_13:
  v22 = 1;
  while (v19 != -4096)
  {
    v23 = v18 + v22++;
    v18 = v23 & v14;
    v19 = *(v11 + 16 * v18);
    if (v19 == v9)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v18 = v12;
LABEL_18:
  if (v17 < *(v11 + 16 * v18 + 8))
  {
    if (v12)
    {
      v24 = v12 - 1;
      v25 = (v12 - 1) & (v13 ^ (v9 >> 9));
      v26 = (v11 + 16 * v25);
      do
      {
        v27 = v6;
        *v8 = v7;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (result + 8 * v5);
        v7 = *v6;
        v28 = ((*v6 >> 4) ^ (*v6 >> 9)) & v24;
        v29 = *(v11 + 16 * v28);
        if (v29 != *v6)
        {
          v33 = 1;
          while (v29 != -4096)
          {
            v34 = v28 + v33++;
            v28 = v34 & v24;
            v29 = *(v11 + 16 * v28);
            if (v29 == v7)
            {
              goto LABEL_23;
            }
          }

          v28 = v12;
        }

LABEL_23:
        v30 = *v26;
        v31 = v25;
        if (*v26 != v9)
        {
          v35 = 1;
          LODWORD(v31) = v25;
          while (v30 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & v24;
            v30 = *(v11 + 16 * v31);
            if (v30 == v9)
            {
              goto LABEL_24;
            }
          }

          v31 = v12;
        }

LABEL_24:
        v32 = *(v11 + 16 * v28 + 8);
        v8 = v27;
      }

      while (v32 < *(v11 + 16 * v31 + 8));
    }

    else
    {
      *v8 = v7;
      v27 = v6;
    }

    *v27 = v9;
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 104);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = *(a3 + 88);
  v6 = (v4 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v7 = *(v5 + 16 * v6);
  if (v7 != a2)
  {
    v11 = 1;
    while (v7 != -4096)
    {
      v12 = v6 + v11++;
      v6 = v12 & (v4 - 1);
      v7 = *(v5 + 16 * v6);
      if (v7 == a2)
      {
        goto LABEL_3;
      }
    }

LABEL_11:
    v15 = a2;
    v14 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v15);
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getNodeForBlock(a1, v14[2], a3);
    llvm::DominatorTreeBase<mlir::Block,false>::createNode();
  }

LABEL_3:
  if (v6 == v4)
  {
    goto LABEL_11;
  }

  v8 = *(v5 + 16 * v6 + 8);
  if (*(a3 + 32) <= v8)
  {
    goto LABEL_11;
  }

  v9 = *(*(a3 + 24) + 8 * v8);
  if (!v9)
  {
    goto LABEL_11;
  }

  return v9;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>,llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::try_emplace<llvm::detail::DenseSetEmpty&>@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 8;
  v3 = *result;
  v5 = *result & 1;
  if (v5)
  {
    v6 = 8;
    v7 = result + 8;
  }

  else
  {
    v6 = *(result + 16);
    if (!v6)
    {
      v10 = 0;
      v13 = 0;
      v22 = 0;
      goto LABEL_11;
    }

    v7 = *(result + 8);
  }

  v8 = v6 - 1;
  v9 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v6 - 1);
  v10 = (v7 + 8 * v9);
  v11 = *v10;
  if (*a2 == *v10)
  {
LABEL_6:
    if (v5)
    {
      v12 = 8;
    }

    else
    {
      v4 = *(result + 8);
      v12 = *(result + 16);
    }

    *a3 = v10;
    *(a3 + 8) = v4 + 8 * v12;
    *(a3 + 16) = 0;
    return result;
  }

  v15 = 0;
  v16 = 1;
  while (v11 != -4096)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v11 == -8192;
    }

    if (v17)
    {
      v15 = v10;
    }

    v18 = v9 + v16++;
    v9 = v18 & v8;
    v10 = (v7 + 8 * (v18 & v8));
    v11 = *v10;
    if (*a2 == *v10)
    {
      goto LABEL_6;
    }
  }

  if (v15)
  {
    v10 = v15;
  }

  v22 = v10;
  if (v5)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(result + 16);
  }

LABEL_11:
  if (4 * (v3 >> 1) + 4 >= 3 * v13)
  {
    v13 *= 2;
    goto LABEL_34;
  }

  if (v13 + ~(v3 >> 1) - *(result + 4) <= v13 >> 3)
  {
LABEL_34:
    v20 = a2;
    v21 = result;
    v19 = a3;
    llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::grow(result, v13);
    llvm::DenseMapBase<llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>,llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::LookupBucketFor<llvm::DomTreeNodeBase<mlir::Block> *>(v21, v20, &v22);
    a2 = v20;
    result = v21;
    a3 = v19;
    v3 = *v21;
    v10 = v22;
    v5 = *v21 & 1;
  }

  *result = (v3 & 0xFFFFFFFE | v5) + 2;
  if (*v10 != -4096)
  {
    --*(result + 4);
  }

  *v10 = *a2;
  if (*result)
  {
    v14 = 8;
  }

  else
  {
    v4 = *(result + 8);
    v14 = *(result + 16);
  }

  *a3 = v10;
  *(a3 + 8) = v4 + 8 * v14;
  *(a3 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>,llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::LookupBucketFor<llvm::DomTreeNodeBase<mlir::Block> *>(uint64_t a1, void *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 8;
LABEL_5:
    v5 = v4 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v4 - 1);
    v7 = (v3 + 8 * v6);
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
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

uint64_t llvm::SmallDenseMap<llvm::DomTreeNodeBase<mlir::Block> *,llvm::detail::DenseSetEmpty,8u,llvm::DenseMapInfo<llvm::DomTreeNodeBase<mlir::Block> *,void>,llvm::detail::DenseSetPair<llvm::DomTreeNodeBase<mlir::Block> *>>::grow(uint64_t result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v61[7] = *MEMORY[0x277D85DE8];
  if (a2 >= 9)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  if ((*result & 1) == 0)
  {
    v8 = (result + 8);
    v7 = *(result + 8);
    v9 = *(result + 16);
    if (v2 > 8)
    {
      buffer = llvm::allocate_buffer(8 * v2, 8uLL);
      *(v3 + 8) = buffer;
      *(v3 + 16) = v2;
      v27 = *v3;
      v10 = (v7 + 8 * v9);
      *v3 = *v3 & 1;
      if ((v27 & 1) == 0)
      {
        v28 = &buffer->i8[8 * v2];
        v29 = 8 * v2 - 8;
        if (v29 < 0x18)
        {
          v31 = buffer;
          goto LABEL_28;
        }

LABEL_22:
        v30 = (v29 >> 3) + 1;
        v31 = &buffer->i8[8 * (v30 & 0x3FFFFFFFFFFFFFFCLL)];
        v32 = buffer + 1;
        v33 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v34 = v30 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v32[-1] = v33;
          *v32 = v33;
          v32 += 2;
          v34 -= 4;
        }

        while (v34);
        if (v30 == (v30 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_29:
          if (v9)
          {
            v35 = v7;
            do
            {
              v41 = *v35;
              if ((*v35 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (*v3)
                {
                  v37 = 7;
                  v36 = v3 + 8;
                }

                else
                {
                  v36 = *v8;
                  v37 = v2 - 1;
                }

                v38 = v37 & ((v41 >> 4) ^ (v41 >> 9));
                v39 = (v36 + 8 * v38);
                v40 = *v39;
                if (v41 != *v39)
                {
                  v42 = 0;
                  v43 = 1;
                  while (v40 != -4096)
                  {
                    if (v42)
                    {
                      v44 = 0;
                    }

                    else
                    {
                      v44 = v40 == -8192;
                    }

                    if (v44)
                    {
                      v42 = v39;
                    }

                    v45 = v38 + v43++;
                    v38 = v45 & v37;
                    v39 = (v36 + 8 * (v45 & v37));
                    v40 = *v39;
                    if (v41 == *v39)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v42)
                  {
                    v39 = v42;
                  }
                }

LABEL_33:
                *v39 = v41;
                *v3 += 2;
              }

              v35 = (v35 + 8);
            }

            while (v35 != v10);
          }

          llvm::deallocate_buffer(v7, (8 * v9));
        }

        do
        {
LABEL_28:
          *v31 = -4096;
          v31 += 8;
        }

        while (v31 != v28);
        goto LABEL_29;
      }
    }

    else
    {
      v10 = (v7 + 8 * v9);
      *result = 1;
      v2 = v9;
    }

    v28 = (v3 + 72);
    buffer = (v3 + 8);
    v29 = 56;
    goto LABEL_22;
  }

  v11 = (result + 8);
  v12 = &v60;
  if ((*(result + 8) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v60 = *(result + 8);
    v12 = v61;
    v13 = *(result + 16);
    if ((v13 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
LABEL_10:
      v14 = *(result + 24);
      if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  *v12++ = v13;
  v14 = *(result + 24);
  if ((v14 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_11:
    v15 = *(result + 32);
    if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  *v12++ = v14;
  v15 = *(result + 32);
  if ((v15 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_12:
    v16 = *(result + 40);
    if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  *v12++ = v15;
  v16 = *(result + 40);
  if ((v16 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_13:
    v17 = *(result + 48);
    if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  *v12++ = v16;
  v17 = *(result + 48);
  if ((v17 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_14:
    v18 = *(result + 56);
    if ((v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  *v12++ = v17;
  v18 = *(result + 56);
  if ((v18 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_15:
    v19 = *(result + 64);
    if ((v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  *v12++ = v18;
  v19 = *(result + 64);
  if ((v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
LABEL_16:
    v20 = *result;
    if (v2 >= 9)
    {
      goto LABEL_17;
    }

LABEL_61:
    v2 = v13;
    *result = v20 & 1;
    if (v20)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_60:
  *v12++ = v19;
  v20 = *result;
  if (v2 < 9)
  {
    goto LABEL_61;
  }

LABEL_17:
  *result = v20 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v2, 8uLL);
  *(v3 + 8) = result;
  *(v3 + 16) = v2;
  v21 = *v3;
  *v3 = *v3 & 1;
  if (v21)
  {
LABEL_18:
    v22 = v3 + 72;
    v23 = (v3 + 8);
    v24 = 56;
    goto LABEL_64;
  }

LABEL_62:
  if (!v2)
  {
    goto LABEL_68;
  }

  v23 = *v11;
  v22 = &(*v11)->i64[v2];
  v24 = 8 * v2 - 8;
  if (v24 < 0x18)
  {
    v25 = *v11;
    do
    {
LABEL_67:
      v25->i64[0] = -4096;
      v25 = (v25 + 8);
    }

    while (v25 != v22);
    goto LABEL_68;
  }

LABEL_64:
  v46 = (v24 >> 3) + 1;
  v25 = (v23 + 8 * (v46 & 0x3FFFFFFFFFFFFFFCLL));
  v47 = v23 + 1;
  v48 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
  v49 = v46 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v47[-1] = v48;
    *v47 = v48;
    v47 += 2;
    v49 -= 4;
  }

  while (v49);
  if (v46 != (v46 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_67;
  }

LABEL_68:
  if (&v60 != v12)
  {
    v50 = &v60;
    do
    {
      v56 = *v50;
      if ((*v50 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        if (*v3)
        {
          v52 = 7;
          v51 = (v3 + 8);
        }

        else
        {
          v51 = *v11;
          v52 = v2 - 1;
        }

        v53 = v52 & ((v56 >> 4) ^ (v56 >> 9));
        v54 = &v51->i64[v53];
        v55 = *v54;
        if (v56 != *v54)
        {
          v57 = 0;
          result = 1;
          while (v55 != -4096)
          {
            if (v57)
            {
              v58 = 0;
            }

            else
            {
              v58 = v55 == -8192;
            }

            if (v58)
            {
              v57 = v54;
            }

            v59 = v53 + result;
            result = (result + 1);
            v53 = v59 & v52;
            v54 = &v51->i64[v59 & v52];
            v55 = *v54;
            if (v56 == *v54)
            {
              goto LABEL_72;
            }
          }

          if (v57)
          {
            v54 = v57;
          }
        }

LABEL_72:
        *v54 = v56;
        *v3 += 2;
      }

      ++v50;
    }

    while (v50 != v12);
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::HasProperSupport(uint64_t a1, uint64_t a2, void ***a3)
{
  v17[8] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    llvm::GraphDiff<mlir::Block *,false>::getChildren<true>(*(a2 + 8), *a3, &v15);
    v4 = v15;
    v5 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>(*a3, &v15);
    v4 = v15;
    v5 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    v7 = &v4[v5];
LABEL_7:
    v8 = *(a1 + 88);
    v9 = ((*v4 >> 4) ^ (*v4 >> 9)) & (v6 - 1);
    v10 = *(v8 + 16 * v9);
    if (v10 != *v4)
    {
      v12 = 1;
      do
      {
        if (v10 == -4096)
        {
          goto LABEL_12;
        }

        v13 = v9 + v12++;
        v9 = v13 & (v6 - 1);
        v10 = *(v8 + 16 * v9);
      }

      while (v10 != *v4);
    }

    if (v9 != v6)
    {
      v11 = *(v8 + 16 * v9 + 8);
      if (*(a1 + 32) > v11)
      {
        if (*(*(a1 + 24) + 8 * v11))
        {
          llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator();
        }
      }
    }

LABEL_12:
    while (++v4 != v7)
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        goto LABEL_7;
      }
    }

    v4 = v15;
  }

LABEL_20:
  if (v4 != v17)
  {
    free(v4);
  }

  return 0;
}

void llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteUnreachable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[16] = *MEMORY[0x277D85DE8];
  v25 = v27;
  v26 = 0x1000000000;
  v5 = *(a3 + 16);
  v19 = a1;
  v20[0] = &v21;
  v20[1] = 0x4000000001;
  v21 = 0;
  *v22 = 0u;
  v23 = 0;
  v24 = a2;
  v6 = *a3;
  v17 = v5;
  v18 = &v25;
  v7 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteUnreachable(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,llvm::DomTreeNodeBase<mlir::Block> *)::{lambda(mlir::Block*,mlir::Block*)#1}>(v20, v6, 0, &v17, 0, 0);
  if (v26)
  {
    v8 = *(a1 + 88);
    v9 = *v25;
    v10 = *(a1 + 104) - 1;
    v11 = ((v9 >> 4) ^ (v9 >> 9)) & v10;
    if (*(v8 + 16 * (((*v25 >> 4) ^ (*v25 >> 9)) & v10)) != *v25)
    {
      v12 = 1;
      do
      {
        v13 = v11 + v12++;
        v11 = v13 & v10;
      }

      while (*(v8 + 16 * v11) != v9);
    }

    llvm::DominatorTreeBase<mlir::Block,false>::findNearestCommonDominator();
  }

  if (*(a3 + 8))
  {
    if (v7)
    {
      llvm::DominatorTreeBase<mlir::Block,false>::eraseNode();
    }

    if (v23)
    {
      v14 = v22[0] + 48;
      v15 = v23 << 6;
      while (1)
      {
        if ((*(v14 - 6) | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v16 = *(v14 - 2);
          if (v14 != v16)
          {
            free(v16);
          }
        }

        v14 += 64;
        v15 -= 64;
        if (!v15)
        {
          llvm::deallocate_buffer(v22[0], (v23 << 6));
        }
      }
    }

    llvm::deallocate_buffer(v22[0], 0);
  }

  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::CalculateFromScratch();
}

_DWORD *llvm::GraphDiff<mlir::Block *,false>::getChildren<true>@<X0>(_DWORD *result@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result;
  v6 = *a2;
  v7 = a3 + 2;
  *a3 = (a3 + 2);
  a3[1] = 0x800000000;
  if (v6)
  {
    v8 = 0;
    v9 = v6;
    do
    {
      v9 = *v9;
      --v8;
    }

    while (v9);
    if (v8 <= 0xFFFFFFFFFFFFFFF7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = v7;
    do
    {
      result = mlir::PredecessorIterator::unwrap(v6);
      *v11++ = result;
      v6 = *v6;
    }

    while (v6);
    v12 = *(a3 + 2);
    v7 = *a3;
    v10 = *a3;
    v13 = *a3 + 8 * (v12 - v8);
    if (v12 != v8)
    {
      v17 = 8 * (v12 - v8);
      v10 = *a3;
      while (*v10)
      {
        v10 += 8;
        v17 -= 8;
        if (!v17)
        {
          v10 = (*a3 + 8 * (v12 - v8));
          goto LABEL_20;
        }
      }
    }

    if (v10 != v13 && v10 + 8 != v13)
    {
      v14 = 8 * (v12 - v8);
      v15 = v10 - v7 + 8;
      do
      {
        v16 = *(v7 + v15);
        if (v16)
        {
          *v10 = v16;
          v10 += 8;
        }

        v15 += 8;
      }

      while (v14 != v15);
    }
  }

  else
  {
    v10 = (a3 + 2);
  }

LABEL_20:
  v18 = v10 - v7;
  v19 = (v10 - v7) >> 3;
  *(a3 + 2) = v19;
  v20 = v4[74];
  if (v20)
  {
    v21 = (v4 + 76);
    v22 = 4;
  }

  else
  {
    v21 = *(v4 + 38);
    v22 = v4[78];
    if (!v22)
    {
      v23 = 0;
LABEL_23:
      v24 = &v21[72 * v23];
      goto LABEL_27;
    }
  }

  v25 = v22 - 1;
  v26 = (v22 - 1) & ((a2 >> 4) ^ (a2 >> 9));
  v24 = &v21[72 * v26];
  v27 = *v24;
  if (*v24 != a2)
  {
    v43 = 1;
    while (v27 != -4096)
    {
      v44 = v26 + v43++;
      v26 = v44 & v25;
      v24 = &v21[72 * (v44 & v25)];
      v27 = *v24;
      if (*v24 == a2)
      {
        goto LABEL_26;
      }
    }

    if ((v20 & 1) == 0)
    {
      v21 = *(v4 + 38);
      v23 = v4[78];
      goto LABEL_23;
    }

    v24 = (v4 + 148);
LABEL_56:
    if (v24 == (v4 + 148))
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_26:
  if (v20)
  {
    goto LABEL_56;
  }

LABEL_27:
  if (v24 == (*(v4 + 38) + 72 * v4[78]))
  {
    return result;
  }

LABEL_28:
  v28 = *(v24 + 4);
  if (v28)
  {
    v29 = (v18 >> 3);
    v30 = *(v24 + 1);
    v31 = &v30[v28];
    do
    {
      v32 = *v30;
      v33 = &v7[v29];
      if (v29)
      {
        v34 = 8 * v29;
        v35 = v7;
        v36 = v7;
        while (*v36 != v32)
        {
          ++v36;
          ++v35;
          v34 -= 8;
          if (!v34)
          {
            v35 = &v7[v29];
            goto LABEL_30;
          }
        }
      }

      else
      {
        v35 = v7;
        v36 = v7;
      }

      v37 = v35 + 1;
      if (v36 != v33 && v37 != v33)
      {
        v39 = &v7[v29 - 1] - v35;
        do
        {
          if (*v37 != v32)
          {
            *v35++ = *v37;
          }

          ++v37;
          v39 -= 8;
        }

        while (v39);
      }

LABEL_30:
      v29 = ((v35 - v7) >> 3);
      ++v30;
    }

    while (v30 != v31);
    v19 = (v35 - v7) >> 3;
    *(a3 + 2) = v29;
  }

  v40 = &v7[v19];
  v41 = *(v24 + 5);
  v42 = &v41[8 * *(v24 + 12)];

  return llvm::SmallVectorImpl<long long>::insert<long long const*,void>(a3, v40, v41, v42);
}

void **llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<true>@<X0>(void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = a2 + 2;
  *a2 = a2 + 2;
  a2[1] = 0x800000000;
  if (v3)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v6 = *v6;
      --v5;
    }

    while (v6);
    if (v5 <= 0xFFFFFFFFFFFFFFF7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v8 = v4;
    do
    {
      result = mlir::PredecessorIterator::unwrap(v3);
      *v8++ = result;
      v3 = *v3;
    }

    while (v3);
    v9 = *(a2 + 2);
    v7 = *a2;
    v4 = *a2;
    v10 = *a2 + 8 * (v9 - v5);
    if (v9 != v5)
    {
      v13 = 8 * (v9 - v5);
      v4 = *a2;
      while (*v4)
      {
        ++v4;
        v13 -= 8;
        if (!v13)
        {
          v4 = (*a2 + 8 * (v9 - v5));
          goto LABEL_20;
        }
      }
    }

    if (v4 != v10)
    {
      v11 = v4 + 1;
      if (v4 + 1 != v10)
      {
        v12 = v7 - v4 + 8 * (v9 - v5) - 8;
        do
        {
          if (*v11)
          {
            *v4++ = *v11;
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  else
  {
    v7 = (a2 + 2);
  }

LABEL_20:
  *(a2 + 2) = (v4 - v7) >> 3;
  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteReachable(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v40 = *MEMORY[0x277D85DE8];
  v36 = &v38;
  v38 = a2;
  v39 = a6;
  v37 = 0x4000000001;
  v33 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v33) + 1) = a6;
  v13 = v37;
  while (v37)
  {
    v14 = v36 + 16 * v13;
    v15 = *(v14 - 2);
    v16 = *(v14 - 2);
    LODWORD(v37) = v13 - 1;
    v33 = v15;
    v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v33);
    v18 = *(v17 + 8);
    if (v18 >= *(v17 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v17[3] + 4 * v18) = v16;
    ++*(v17 + 8);
    if (*v17)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v17 + 2) = a3;
    *(v17 + 3) = a3;
    *v17 = a3;
    *(v17 + 1) = v16;
    v19 = *(a1 + 8);
    if (v19 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v19) = v15;
    ++*(a1 + 8);
    v20 = *(a1 + 552);
    if (v20)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v20 + 8), v15, &v33);
      v21 = v34;
      if (a7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v15, &v33);
      v21 = v34;
      if (a7)
      {
LABEL_11:
        if (v21 >= 2)
        {
          v32 = a7;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v33, v33 + v21, &v32, 126 - 2 * __clz(v21), 1);
          v21 = v34;
        }
      }
    }

    v22 = v33;
    if (v21)
    {
      v23 = v33 + 8 * v21;
      do
      {
        v25 = *v22;
        v26 = *(a5 + 88);
        v27 = *(a5 + 104) - 1;
        v28 = ((*v22 >> 4) ^ (*v22 >> 9)) & v27;
        if (*(v26 + 16 * v28) != *v22)
        {
          v29 = 1;
          do
          {
            v30 = v28 + v29++;
            v28 = v30 & v27;
          }

          while (*(v26 + 16 * v28) != v25);
        }

        if (*(*(*(a5 + 24) + 8 * *(v26 + 16 * v28 + 8)) + 16) > a4)
        {
          if (v37 >= HIDWORD(v37))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v7 = v7 & 0xFFFFFFFF00000000 | a3;
          v24 = v36 + 16 * v37;
          *v24 = v25;
          v24[1] = v7;
          LODWORD(v37) = v37 + 1;
        }

        v22 += 8;
      }

      while (v22 != v23);
      v22 = v33;
    }

    if (v22 != &v35)
    {
      free(v22);
    }

LABEL_3:
    v13 = v37;
  }

  if (v36 != &v38)
  {
    free(v36);
  }

  return a3;
}

uint64_t *llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::reattachExistingSubtree(unsigned int *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v34 = *(*a1 + 8);
  result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
  result[2] = v5;
  v7 = a1[2];
  if (v7 != 1)
  {
    v8 = *a1 + 8 * v7;
    for (i = (*a1 + 8); i != v8; ++i)
    {
      v11 = *i;
      v12 = *(a2 + 104);
      if (v12)
      {
        v13 = *(a2 + 88);
        v14 = ((v11 >> 4) ^ (v11 >> 9)) & (v12 - 1);
        v15 = *(v13 + 16 * v14);
        if (v15 == v11)
        {
LABEL_9:
          if (v14 != v12)
          {
            v16 = *(v13 + 16 * v14 + 8);
            if (*(a2 + 32) > v16)
            {
              v17 = *(*(a2 + 24) + 8 * v16);
              v34 = *i;
              result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
              v18 = *(a2 + 104);
              if (!v18)
              {
                goto LABEL_27;
              }

              goto LABEL_18;
            }
          }
        }

        else
        {
          v19 = 1;
          while (v15 != -4096)
          {
            v20 = v14 + v19++;
            v14 = v20 & (v12 - 1);
            v15 = *(v13 + 16 * v14);
            if (v15 == v11)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v17 = 0;
      v34 = *i;
      result = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[]((a1 + 132), &v34);
      v18 = *(a2 + 104);
      if (!v18)
      {
        goto LABEL_27;
      }

LABEL_18:
      v21 = result[2];
      v22 = *(a2 + 88);
      v23 = ((v21 >> 4) ^ (v21 >> 9)) & (v18 - 1);
      v24 = *(v22 + 16 * v23);
      if (v24 == v21)
      {
LABEL_19:
        if (v23 != v18)
        {
          v25 = *(v22 + 16 * v23 + 8);
          if (*(a2 + 32) > v25)
          {
            v26 = *(*(a2 + 24) + 8 * v25);
            v27 = *(v17 + 8);
            if (v27 != v26)
            {
              goto LABEL_28;
            }

            continue;
          }
        }
      }

      else
      {
        v28 = 1;
        while (v24 != -4096)
        {
          v29 = v23 + v28++;
          v23 = v29 & (v18 - 1);
          v24 = *(v22 + 16 * v23);
          if (v24 == v21)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_27:
      v26 = 0;
      v27 = *(v17 + 8);
      if (v27)
      {
LABEL_28:
        v30 = *(v27 + 24);
        v31 = *(v27 + 32);
        v32 = &v30[v31];
        if (v31)
        {
          v33 = 8 * v31;
          do
          {
            if (*v30 == v17)
            {
              goto LABEL_33;
            }

            ++v30;
            v33 -= 8;
          }

          while (v33);
          v30 = v32;
        }

LABEL_33:
        if (v32 != v30 + 1)
        {
          memmove(v30, v30 + 1, v32 - (v30 + 1));
          LODWORD(v31) = *(v27 + 32);
        }

        *(v27 + 32) = v31 - 1;
        *(v17 + 8) = v26;
        v10 = *(v26 + 32);
        if (v10 < *(v26 + 36))
        {
          *(*(v26 + 24) + 8 * v10) = v17;
          ++*(v26 + 32);
          llvm::DomTreeNodeBase<mlir::Block>::UpdateLevel();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }
    }
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteUnreachable(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,llvm::DomTreeNodeBase<mlir::Block> *)::{lambda(mlir::Block*,mlir::Block*)#1}>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v41 = &v43;
  v43 = a2;
  v44 = a5;
  v42 = 0x4000000001;
  v38 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v38) + 1) = a5;
  v11 = v42;
  while (v42)
  {
    v12 = v41 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v42) = v11 - 1;
    v38 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v38);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v18 + 8), v13, &v38);
      v19 = v39;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v13, &v38);
      v19 = v39;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v37 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v38, v38 + v19, &v37, 126 - 2 * __clz(v19), 1);
          v19 = v39;
        }
      }
    }

    v20 = v38;
    if (v19)
    {
      v21 = v38 + 8 * v19;
      while (1)
      {
        v24 = *v20;
        v25 = *(a4 + 16);
        v26 = *(v25 + 88);
        v27 = *(v25 + 104) - 1;
        v28 = v27 & ((*v20 >> 4) ^ (*v20 >> 9));
        if (*(v26 + 16 * v28) != *v20)
        {
          v34 = 1;
          do
          {
            v35 = v28 + v34++;
            v28 = v35 & v27;
          }

          while (*(v26 + 16 * v28) != v24);
        }

        if (*(*(*(v25 + 24) + 8 * *(v26 + 16 * v28 + 8)) + 16) > *a4)
        {
          if (v42 >= HIDWORD(v42))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v41 + 16 * v42;
          *v22 = v24;
          v22[1] = v6;
          v23 = &v42;
        }

        else
        {
          v29 = *(a4 + 8);
          v30 = *v29;
          v23 = (v29 + 8);
          v31 = *(v29 + 8);
          v32 = *v29;
          if (*(v29 + 8))
          {
            v33 = 8 * v31;
            v32 = *v29;
            while (*v32 != v24)
            {
              ++v32;
              v33 -= 8;
              if (!v33)
              {
                goto LABEL_27;
              }
            }
          }

          if (v32 != &v30[v31])
          {
            goto LABEL_18;
          }

LABEL_27:
          if (v31 >= *(v29 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v30[v31] = v24;
        }

        ++*v23;
LABEL_18:
        if (++v20 == v21)
        {
          v20 = v38;
          break;
        }
      }
    }

    if (v20 != &v40)
    {
      free(v20);
    }

LABEL_3:
    v11 = v42;
  }

  if (v41 != &v43)
  {
    free(v41);
  }

  return a3;
}

double llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(uint64_t a1)
{
  *(a1 + 8) = 0;
  if (!*(a1 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  **a1 = 0;
  ++*(a1 + 8);
  v2 = *(a1 + 536);
  if (v2 || *(a1 + 540))
  {
    v3 = (a1 + 528);
    v4 = *(a1 + 544);
    if (v4 > 4 * v2 && v4 >= 0x41)
    {

      llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::shrink_and_clear(v3);
      return result;
    }

    if (!v4)
    {
LABEL_18:
      result = 0.0;
      *(a1 + 536) = 0;
      return result;
    }

    v6 = *v3 + 48;
    v7 = v4 << 6;
    while (1)
    {
      v8 = *(v6 - 48);
      if (v8 != -8192)
      {
        if (v8 == -4096)
        {
          goto LABEL_13;
        }

        v9 = *(v6 - 16);
        if (v6 != v9)
        {
          free(v9);
        }
      }

      *(v6 - 48) = -4096;
LABEL_13:
      v6 += 64;
      v7 -= 64;
      if (!v7)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::DeleteUnreachable(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,llvm::DomTreeNodeBase<mlir::Block> *)::{lambda(mlir::Block*,mlir::Block*)#2}>(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = &v41;
  v41 = a2;
  v42 = a6;
  v40 = 0x4000000001;
  v36 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v36) + 1) = a6;
  v13 = v40;
  if (v40)
  {
    while (1)
    {
      v14 = v39 + 16 * v13;
      v15 = *(v14 - 2);
      v16 = *(v14 - 2);
      LODWORD(v40) = v13 - 1;
      v36 = v15;
      v17 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v36);
      v18 = *(v17 + 8);
      if (v18 >= *(v17 + 9))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v17[3] + 4 * v18) = v16;
      ++*(v17 + 8);
      if (!*v17)
      {
        break;
      }

LABEL_3:
      v13 = v40;
      if (!v40)
      {
        goto LABEL_36;
      }
    }

    a3 = (a3 + 1);
    *(v17 + 2) = a3;
    *(v17 + 3) = a3;
    *v17 = a3;
    *(v17 + 1) = v16;
    v19 = *(a1 + 8);
    if (v19 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v19) = v15;
    ++*(a1 + 8);
    v20 = *(a1 + 552);
    if (v20)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v20 + 8), v15, &v36);
      v21 = v37;
      if (!a7)
      {
LABEL_13:
        v22 = v36;
        if (v21)
        {
          v23 = *(a5 + 104);
          if (v23)
          {
            v24 = v36 + 8 * v21;
LABEL_16:
            v25 = *v22;
            v26 = *(a5 + 88);
            v27 = ((*v22 >> 4) ^ (*v22 >> 9)) & (v23 - 1);
            v28 = *(v26 + 16 * v27);
            if (v28 != *v22)
            {
              v32 = 1;
              do
              {
                if (v28 == -4096)
                {
                  goto LABEL_23;
                }

                v33 = v27 + v32++;
                v27 = v33 & (v23 - 1);
                v28 = *(v26 + 16 * v27);
              }

              while (v28 != v25);
            }

            if (v27 != v23)
            {
              v29 = *(v26 + 16 * v27 + 8);
              if (*(a5 + 32) > v29)
              {
                v30 = *(*(a5 + 24) + 8 * v29);
                if (v30)
                {
                  if (*(v30 + 16) > a4)
                  {
                    if (v40 >= HIDWORD(v40))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod();
                    }

                    v7 = v7 & 0xFFFFFFFF00000000 | a3;
                    v31 = v39 + 16 * v40;
                    *v31 = v25;
                    v31[1] = v7;
                    LODWORD(v40) = v40 + 1;
                  }
                }
              }
            }

LABEL_23:
            while (++v22 != v24)
            {
              v23 = *(a5 + 104);
              if (v23)
              {
                goto LABEL_16;
              }
            }

            v22 = v36;
          }
        }

        if (v22 != &v38)
        {
          free(v22);
        }

        goto LABEL_3;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v15, &v36);
      v21 = v37;
      if (!a7)
      {
        goto LABEL_13;
      }
    }

    if (v21 >= 2)
    {
      v35 = a7;
      std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v36, v36 + v21, &v35, 126 - 2 * __clz(v21), 1);
      v21 = v37;
    }

    goto LABEL_13;
  }

LABEL_36:
  if (v39 != &v41)
  {
    free(v39);
  }

  return a3;
}

void llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  v4 = (v2 << 6);
  if (v2)
  {
    v5 = *a1 + 48;
    v6 = v2 << 6;
    do
    {
      if ((*(v5 - 48) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v7 = *(v5 - 16);
        if (v5 != v7)
        {
          free(v7);
        }
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  if (!v3)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 8) = 0;
      return;
    }

LABEL_18:
    llvm::deallocate_buffer(*a1, v4);
  }

  v8 = 1 << (33 - __clz(v3 - 1));
  if (v8 <= 64)
  {
    v9 = 64;
  }

  else
  {
    v9 = v8;
  }

  if (v9 != *(a1 + 16))
  {
    goto LABEL_18;
  }

  *(a1 + 8) = 0;
  v10 = *a1;
  v11 = (v9 - 1) & 0x3FFFFFFFFFFFFFFLL;
  if (!v11)
  {
    v14 = *a1;
LABEL_21:
    v17 = (v10 + 64 * v9);
    do
    {
      *v14 = -4096;
      v14 = (v14 + 64);
    }

    while (v14 != v17);
    return;
  }

  v12 = v11 + 1;
  v13 = (v11 + 1) & 0x7FFFFFFFFFFFFFELL;
  v14 = (v10 + 64 * v13);
  v15 = (v10 + 64);
  v16 = v13;
  do
  {
    *(v15 - 8) = -4096;
    *v15 = -4096;
    v15 += 16;
    v16 -= 2;
  }

  while (v16);
  if (v12 != v13)
  {
    goto LABEL_21;
  }
}

_DWORD *llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom(int *a1, _DWORD *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v6 = a1 + 2;
    v5 = 4;
  }

  else
  {
    v5 = a1[4];
    if (!v5)
    {
      goto LABEL_13;
    }

    v6 = *(a1 + 1);
  }

  v7 = v6 + 14;
  v8 = 72 * v5;
  do
  {
    if ((*(v7 - 7) | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v9 = *(v7 - 2);
      if (v7 != v9)
      {
        free(v9);
      }

      v10 = *(v7 - 6);
      if (v7 - 4 != v10)
      {
        free(v10);
      }
    }

    v7 += 9;
    v8 -= 72;
  }

  while (v8);
  v4 = *a1;
LABEL_13:
  if ((v4 & 1) == 0)
  {
    llvm::deallocate_buffer(*(a1 + 1), (72 * a1[4]));
  }

  *a1 = v4 | 1;
  if ((*a2 & 1) == 0 && a2[4] >= 5u)
  {
    *a1 = v4 & 0xFFFFFFFE;
    if (*a2)
    {
      v11 = 4;
    }

    else
    {
      v11 = a2[4];
    }

    *(a1 + 1) = llvm::allocate_buffer(8 * (v11 + 8 * v11), 8uLL);
    *(a1 + 2) = v11;
  }

  return llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(a1, a2);
}

_DWORD *llvm::DenseMapBase<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>,mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>::copyFrom<llvm::SmallDenseMap<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts,4u,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::GraphDiff<mlir::Block *,false>::DeletesInserts>>>(_DWORD *result, _DWORD *a2)
{
  v2 = *result & 1;
  *result = *a2 & 0xFFFFFFFE | v2;
  result[1] = a2[1];
  v3 = (result + 2);
  if (v2)
  {
    v4 = (a2 + 2);
    if (*a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *v3;
    v4 = (a2 + 2);
    if (*a2)
    {
LABEL_3:
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v4 = *v4;
  if (!v2)
  {
LABEL_4:
    v5 = result[4];
    if (!v5)
    {
      return result;
    }

    if (v3 == v4)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 4;
  if (v3 == v4)
  {
LABEL_6:
    v6 = v3 + 7;
    do
    {
      v7 = *v4;
      *(v6 - 7) = *v4;
      if ((v7 | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        *(v6 - 6) = v6 - 4;
        *(v6 - 5) = 0x200000000;
        *(v6 - 2) = v6;
        *(v6 - 1) = 0x200000000;
      }

      v4 += 9;
      v6 += 9;
      --v5;
    }

    while (v5);
    return result;
  }

LABEL_13:
  v8 = 0;
  do
  {
    v9 = v4[v8];
    v3[v8] = v9;
    if ((v9 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v10 = &v3[v8];
      v11 = &v3[v8 + 3];
      v3[v8 + 1] = v11;
      v12 = &v4[v8];
      v3[v8 + 2] = 0x200000000;
      v13 = LODWORD(v4[v8 + 2]);
      if (v13)
      {
        if (v13 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        result = memcpy(v11, v12[1], 8 * LODWORD(v4[v8 + 2]));
        *(v10 + 4) = v13;
      }

      v10[5] = (v10 + 7);
      v10[6] = 0x200000000;
      v14 = *(v12 + 12);
      if (v14)
      {
        if (v14 >= 3)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        result = memcpy(v10 + 7, v12[5], 8 * *(v12 + 12));
        *(v10 + 12) = v14;
      }
    }

    v8 += 9;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(uint64_t a1, void *a2, uint64_t a3, unsigned int (*a4)(void *, uint64_t), int a5, uint64_t *a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = &v31;
  v31 = a2;
  v32 = a5;
  v30 = 0x4000000001;
  v26 = a2;
  *(llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26) + 1) = a5;
  v11 = v30;
  while (v30)
  {
    v12 = v29 + 16 * v11;
    v13 = *(v12 - 2);
    v14 = *(v12 - 2);
    LODWORD(v30) = v11 - 1;
    v26 = v13;
    v15 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v26);
    v16 = *(v15 + 8);
    if (v16 >= *(v15 + 9))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(v15[3] + 4 * v16) = v14;
    ++*(v15 + 8);
    if (*v15)
    {
      goto LABEL_3;
    }

    a3 = (a3 + 1);
    *(v15 + 2) = a3;
    *(v15 + 3) = a3;
    *v15 = a3;
    *(v15 + 1) = v14;
    v17 = *(a1 + 8);
    if (v17 >= *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    *(*a1 + 8 * v17) = v13;
    ++*(a1 + 8);
    v18 = *(a1 + 552);
    if (v18)
    {
      llvm::GraphDiff<mlir::Block *,false>::getChildren<false>(*(v18 + 8), v13, &v26);
      v19 = v27;
      if (a6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::getChildren<false>(v13, &v26);
      v19 = v27;
      if (a6)
      {
LABEL_11:
        if (v19 >= 2)
        {
          v25 = a6;
          std::__introsort<std::_ClassicAlgPolicy,unsigned int llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1}>(mlir::Block*,unsigned int,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::ComputeUnreachableDominators(llvm::DominatorTreeBase<mlir::Block,false>&,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::BatchUpdateInfo *,mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *,llvm::SmallVectorImpl<std::pair<mlir::Block*,llvm::DomTreeNodeBase<mlir::Block> *>> &)::{lambda(mlir::Block*,mlir::Block*)#1},unsigned int,llvm::DenseMap<mlir::Block*,unsigned int,llvm::DenseMapInfo<mlir::Block*,void>,llvm::detail::DenseMapPair<mlir::Block*,unsigned int>> const*)::{lambda(mlir::Block*,mlir::Block*)#1} &,mlir::Block**,false>(v26, v26 + v19, &v25, 126 - 2 * __clz(v19), 1);
          v19 = v27;
        }
      }
    }

    v20 = v26;
    if (v19)
    {
      v21 = 8 * v19;
      do
      {
        v23 = *v20;
        if (a4(v13, *v20))
        {
          if (v30 >= HIDWORD(v30))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          v22 = v29 + 16 * v30;
          *v22 = v23;
          v22[1] = v6;
          LODWORD(v30) = v30 + 1;
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
      v20 = v26;
    }

    if (v20 != &v28)
    {
      free(v20);
    }

LABEL_3:
    v11 = v30;
  }

  if (v29 != &v31)
  {
    free(v29);
  }

  return a3;
}

char *llvm::SmallVectorImpl<llvm::cfg::Update<mlir::Block *>>::insert<llvm::cfg::Update<mlir::Block *> const*,void>(uint64_t *a1, uint64_t a2, char *__src, char *a4)
{
  v5 = __src;
  v7 = *a1;
  v8 = a2 - *a1;
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = a4 - __src;
  v12 = (a4 - __src) >> 4;
  v13 = v12 + v9;
  if (*a1 + 16 * v9 == a2)
  {
    if (v13 > v10)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v5 != a4)
    {
      memcpy((v7 + 16 * v9), v5, v11);
      LODWORD(v9) = *(a1 + 2);
      v7 = *a1;
    }

    *(a1 + 2) = v9 + (v11 >> 4);
    return (v7 + v8);
  }

  if (v13 > v10)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v14 = (v7 + v8);
  v15 = 16 * v9;
  v16 = (v7 + 16 * v9);
  v17 = 16 * v9 - v8;
  v18 = v17 >> 4;
  if (v17 >> 4 < v12)
  {
    v19 = v9 + (v11 >> 4);
    *(a1 + 2) = v19;
    if (v15 != v8)
    {
      memcpy((v7 + 16 * v19 - 16 * v18), (v7 + v8), v17);
      v20 = v14;
      do
      {
        v21 = *v5;
        v5 += 16;
        *v20++ = v21;
        --v18;
      }

      while (v18);
    }

    if (v5 != a4)
    {
      memcpy(v16, v5, a4 - v5);
    }

    return v14;
  }

  if (v12 + v9 > *(a1 + 3))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4 != v5)
  {
    v22 = (*a1 + 16 * v9);
    v23 = -16 * v12;
    do
    {
      *v22++ = *&v16[v23];
      v23 += 16;
    }

    while (v23);
    LODWORD(v9) = *(a1 + 2);
  }

  *(a1 + 2) = v9 + v12;
  if (&v16[-16 * v12] != v14)
  {
    memmove(&v14[16 * v12], v14, &v16[-16 * v12] - v14);
  }

  if (a4 == v5)
  {
    return v14;
  }

  return memmove(v14, v5, v11);
}

llvm::raw_ostream *llvm::operator<<<mlir::Block>(llvm::raw_ostream *a1, uint64_t a2)
{
  if (!*a2)
  {
    v5 = *(a1 + 4);
    if (*(a1 + 3) - v5 > 0xDuLL)
    {
      qmemcpy(v5, " <<exit node>>", 14);
      *(a1 + 4) += 14;
      v4 = *(a1 + 4);
      if (*(a1 + 3) - v4 <= 1uLL)
      {
        goto LABEL_11;
      }
    }

    else
    {
      llvm::raw_ostream::write(a1, " <<exit node>>", 0xEuLL);
      v4 = *(a1 + 4);
      if (*(a1 + 3) - v4 <= 1uLL)
      {
        goto LABEL_11;
      }
    }

LABEL_6:
    *v4 = 31520;
    *(a1 + 4) += 2;
    v6 = llvm::raw_ostream::operator<<(a1, *(a2 + 72));
    v7 = *(v6 + 4);
    if (*(v6 + 3) == v7)
    {
      goto LABEL_12;
    }

LABEL_7:
    *v7 = 44;
    ++*(v6 + 4);
    v8 = llvm::raw_ostream::operator<<(v6, *(a2 + 76));
    v9 = *(v8 + 4);
    if ((*(v8 + 3) - v9) > 2)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  mlir::Block::printAsOperand(*a2, a1);
  v4 = *(a1 + 4);
  if (*(a1 + 3) - v4 > 1uLL)
  {
    goto LABEL_6;
  }

LABEL_11:
  v14 = llvm::raw_ostream::write(a1, " {", 2uLL);
  v6 = llvm::raw_ostream::operator<<(v14, *(a2 + 72));
  v7 = *(v6 + 4);
  if (*(v6 + 3) != v7)
  {
    goto LABEL_7;
  }

LABEL_12:
  v15 = llvm::raw_ostream::write(v6, ",", 1uLL);
  v8 = llvm::raw_ostream::operator<<(v15, *(a2 + 76));
  v9 = *(v8 + 4);
  if ((*(v8 + 3) - v9) > 2)
  {
LABEL_13:
    *(v9 + 2) = 91;
    *v9 = 8317;
    *(v8 + 4) += 3;
    v11 = llvm::raw_ostream::operator<<(v8, *(a2 + 16));
    v12 = *(v11 + 4);
    if (*(v11 + 3) - v12 <= 1uLL)
    {
      goto LABEL_14;
    }

LABEL_9:
    *v12 = 2653;
    *(v11 + 4) += 2;
    return a1;
  }

LABEL_8:
  v10 = llvm::raw_ostream::write(v8, "} [", 3uLL);
  v11 = llvm::raw_ostream::operator<<(v10, *(a2 + 16));
  v12 = *(v11 + 4);
  if (*(v11 + 3) - v12 > 1uLL)
  {
    goto LABEL_9;
  }

LABEL_14:
  llvm::raw_ostream::write(v11, "]\n", 2uLL);
  return a1;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyRoots(llvm *a1, uint64_t a2)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 120);
  v3 = *(a2 + 8);
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    v9 = llvm::errs(a1);
    v10 = *(v9 + 4);
    if (*(v9 + 3) - v10 <= 0x21uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "Tree has no parent but has roots!\n", 0x22uLL);
      goto LABEL_25;
    }

    qmemcpy(v10, "Tree has no parent but has roots!\n", 34);
    v11 = *(v9 + 4) + 34;
    goto LABEL_24;
  }

  if (!v3)
  {
    v9 = llvm::errs(a1);
    v12 = *(v9 + 4);
    if (*(v9 + 3) - v12 <= 0x19uLL)
    {
      v9 = llvm::raw_ostream::write(v9, "Tree doesn't have a root!\n", 0x1AuLL);
      goto LABEL_25;
    }

    qmemcpy(v12, "Tree doesn't have a root!\n", 26);
    v11 = *(v9 + 4) + 26;
    goto LABEL_24;
  }

  v5 = **a2;
  v6 = *(v2 + 8);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7)
  {
    v9 = llvm::errs(a1);
    v8 = *(v9 + 4);
    if (*(v9 + 3) - v8 <= 0x2BuLL)
    {
      v9 = llvm::raw_ostream::write(v9, "Tree's root is not its parent's entry node!\n", 0x2CuLL);
LABEL_25:
      v20 = llvm::errs(v9);
      if (*(v20 + 4) != *(v20 + 2))
      {
        llvm::raw_ostream::flush_nonempty(v20);
      }

      return 0;
    }

    qmemcpy(v8, "Tree's root is not its parent's entry node!\n", 44);
    v11 = *(v9 + 4) + 44;
LABEL_24:
    *(v9 + 4) = v11;
    goto LABEL_25;
  }

  v41 = v43;
  v43[0] = v5;
  v42 = 0x100000001;
  result = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::isPermutation(a2, &v41);
  if (result)
  {
    goto LABEL_61;
  }

  v40 = result;
  v15 = llvm::errs(result);
  v16 = *(v15 + 4);
  if (*(v15 + 3) - v16 > 0x34uLL)
  {
    qmemcpy(v16, "Tree has different roots than freshly computed ones!\n", 53);
    *(v15 + 4) += 53;
    v18 = llvm::errs(v15);
    v19 = *(v18 + 4);
    if ((*(v18 + 3) - v19) > 0xB)
    {
      goto LABEL_21;
    }

LABEL_30:
    v18 = llvm::raw_ostream::write(v18, "\tPDT roots: ", 0xCuLL);
    goto LABEL_31;
  }

  v17 = llvm::raw_ostream::write(v15, "Tree has different roots than freshly computed ones!\n", 0x35uLL);
  v18 = llvm::errs(v17);
  v19 = *(v18 + 4);
  if ((*(v18 + 3) - v19) <= 0xB)
  {
    goto LABEL_30;
  }

LABEL_21:
  *(v19 + 8) = 540701556;
  *v19 = *"\tPDT roots: ";
  *(v18 + 4) += 12;
LABEL_31:
  v21 = *(a2 + 8);
  if (v21)
  {
    v22 = *a2;
    for (i = 8 * v21; i; i -= 8)
    {
      while (1)
      {
        v24 = *v22;
        v18 = llvm::errs(v18);
        v25 = v18;
        if (!v24)
        {
          break;
        }

        mlir::Block::printAsOperand(v24, v18);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 <= 1uLL)
        {
          goto LABEL_41;
        }

LABEL_33:
        *v26 = 8236;
        *(v25 + 4) += 2;
        ++v22;
        i -= 8;
        if (!i)
        {
          goto LABEL_42;
        }
      }

      v27 = *(v18 + 4);
      if (*(v18 + 3) - v27 <= 6uLL)
      {
        v18 = llvm::raw_ostream::write(v18, "nullptr", 7uLL);
        v26 = *(v25 + 4);
        if (*(v25 + 3) - v26 <= 1uLL)
        {
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      *(v27 + 3) = 1920233580;
      *v27 = 1819047278;
      *(v18 + 4) += 7;
      v26 = *(v18 + 4);
      if (*(v18 + 3) - v26 > 1uLL)
      {
        goto LABEL_33;
      }

LABEL_41:
      v18 = llvm::raw_ostream::write(v25, ", ", 2uLL);
      ++v22;
    }
  }

LABEL_42:
  v28 = llvm::errs(v18);
  v29 = *(v28 + 4);
  if ((*(v28 + 3) - v29) > 0x11)
  {
    *(v29 + 16) = 8250;
    *v29 = *"\n\tComputed roots: ";
    *(v28 + 4) += 18;
  }

  else
  {
    v28 = llvm::raw_ostream::write(v28, "\n\tComputed roots: ", 0x12uLL);
  }

  if (v42)
  {
    v30 = v41;
    for (j = 8 * v42; j; j -= 8)
    {
      while (1)
      {
        v32 = *v30;
        v28 = llvm::errs(v28);
        v33 = v28;
        if (!v32)
        {
          break;
        }

        mlir::Block::printAsOperand(v32, v28);
        v34 = *(v33 + 4);
        if (*(v33 + 3) - v34 <= 1uLL)
        {
          goto LABEL_55;
        }

LABEL_47:
        *v34 = 8236;
        *(v33 + 4) += 2;
        ++v30;
        j -= 8;
        if (!j)
        {
          goto LABEL_56;
        }
      }

      v35 = *(v28 + 4);
      if (*(v28 + 3) - v35 <= 6uLL)
      {
        v28 = llvm::raw_ostream::write(v28, "nullptr", 7uLL);
        v34 = *(v33 + 4);
        if (*(v33 + 3) - v34 <= 1uLL)
        {
          goto LABEL_55;
        }

        goto LABEL_47;
      }

      *(v35 + 3) = 1920233580;
      *v35 = 1819047278;
      *(v28 + 4) += 7;
      v34 = *(v28 + 4);
      if (*(v28 + 3) - v34 > 1uLL)
      {
        goto LABEL_47;
      }

LABEL_55:
      v28 = llvm::raw_ostream::write(v33, ", ", 2uLL);
      ++v30;
    }
  }

LABEL_56:
  v36 = llvm::errs(v28);
  v37 = *(v36 + 4);
  if (*(v36 + 3) == v37)
  {
    v36 = llvm::raw_ostream::write(v36, "\n", 1uLL);
  }

  else
  {
    *v37 = 10;
    ++*(v36 + 4);
  }

  v38 = llvm::errs(v36);
  result = v40;
  if (*(v38 + 4) != *(v38 + 2))
  {
    llvm::raw_ostream::flush_nonempty(v38);
    result = v40;
  }

LABEL_61:
  if (v41 != v43)
  {
    v39 = result;
    free(v41);
    return v39;
  }

  return result;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyReachability(uint64_t a1, uint64_t a2)
{
  llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(a1);
  v4 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,BOOL (*)(mlir::Block*,mlir::Block*)>(a1, **a2, 0, llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::AlwaysDescend, 0, 0);
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 24);
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if (*v6)
      {
        v9 = *v8;
        v39 = *v8;
        v4 = llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::operator[](a1 + 528, &v39);
        if (!*v4)
        {
          break;
        }
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_10;
      }
    }

    v10 = llvm::errs(v4);
    v11 = v10;
    v12 = *(v10 + 4);
    if (*(v10 + 3) - v12 > 0xCuLL)
    {
      qmemcpy(v12, "DomTree node ", 13);
      *(v10 + 4) += 13;
      if (v9)
      {
LABEL_8:
        mlir::Block::printAsOperand(v9, v11);
        v13 = *(v11 + 4);
        if (*(v11 + 3) - v13 <= 0x17uLL)
        {
LABEL_42:
          v38 = llvm::raw_ostream::write(v11, " not found by DFS walk!\n", 0x18uLL);
          v36 = llvm::errs(v38);
          if (*(v36 + 4) == *(v36 + 2))
          {
            return 0;
          }

          goto LABEL_43;
        }

LABEL_39:
        qmemcpy(v13, " not found by DFS walk!\n", 24);
        *(v11 + 4) += 24;
        v36 = llvm::errs(v10);
        if (*(v36 + 4) != *(v36 + 2))
        {
          goto LABEL_43;
        }

        return 0;
      }
    }

    else
    {
      v10 = llvm::raw_ostream::write(v10, "DomTree node ", 0xDuLL);
      v11 = v10;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v37 = *(v11 + 4);
    if (*(v11 + 3) - v37 > 6uLL)
    {
      *(v37 + 3) = 1920233580;
      *v37 = 1819047278;
      *(v11 + 4) += 7;
      v13 = *(v11 + 4);
      if (*(v11 + 3) - v13 <= 0x17uLL)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v10 = llvm::raw_ostream::write(v11, "nullptr", 7uLL);
      v13 = *(v11 + 4);
      if (*(v11 + 3) - v13 <= 0x17uLL)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_10:
  v14 = *(a1 + 8);
  if (!v14)
  {
    return 1;
  }

  v15 = *a1;
  v16 = *(a2 + 104);
  if (!v16)
  {
    v28 = 8 * v14;
    do
    {
      v22 = *v15;
      if (*v15)
      {
        goto LABEL_28;
      }

      ++v15;
      v28 -= 8;
    }

    while (v28);
    return 1;
  }

  v17 = &v15[v14];
  v18 = *(a2 + 88);
  v19 = v16 - 1;
  v20 = *(a2 + 32);
  v21 = *(a2 + 24);
  while (1)
  {
    v22 = *v15;
    if (!*v15)
    {
      goto LABEL_13;
    }

    v23 = v19 & ((v22 >> 4) ^ (v22 >> 9));
    v24 = *(v18 + 16 * v23);
    if (v24 != v22)
    {
      break;
    }

LABEL_16:
    if (v23 == v16)
    {
      goto LABEL_28;
    }

    v25 = *(v18 + 16 * v23 + 8);
    if (v20 <= v25 || !*(v21 + 8 * v25))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (++v15 == v17)
    {
      return 1;
    }
  }

  v26 = 1;
  while (v24 != -4096)
  {
    v27 = v23 + v26++;
    v23 = v27 & v19;
    v24 = *(v18 + 16 * v23);
    if (v24 == v22)
    {
      goto LABEL_16;
    }
  }

LABEL_28:
  v30 = llvm::errs(v4);
  v31 = v30;
  v32 = *(v30 + 4);
  if ((*(v30 + 3) - v32) > 8)
  {
    *(v32 + 8) = 32;
    *v32 = *"CFG node ";
    *(v30 + 4) += 9;
  }

  else
  {
    v31 = llvm::raw_ostream::write(v30, "CFG node ", 9uLL);
  }

  mlir::Block::printAsOperand(v22, v31);
  v34 = *(v31 + 4);
  if (*(v31 + 3) - v34 <= 0x1AuLL)
  {
    v35 = llvm::raw_ostream::write(v31, " not found in the DomTree!\n", 0x1BuLL);
    v36 = llvm::errs(v35);
    if (*(v36 + 4) == *(v36 + 2))
    {
      return 0;
    }

LABEL_43:
    llvm::raw_ostream::flush_nonempty(v36);
    return 0;
  }

  qmemcpy(v34, " not found in the DomTree!\n", 27);
  *(v31 + 4) += 27;
  v36 = llvm::errs(v33);
  if (*(v36 + 4) != *(v36 + 2))
  {
    goto LABEL_43;
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyLevels(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = 8 * v1;
  while (1)
  {
    v4 = *v2;
    if (!*v2)
    {
      goto LABEL_4;
    }

    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_4;
    }

    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    if (v6)
    {
      break;
    }

    if (v7)
    {
      v12 = llvm::errs(a1);
      v13 = v12;
      v14 = *(v12 + 4);
      if (*(v12 + 3) - v14 > 0x14uLL)
      {
        qmemcpy(v14, "Node without an IDom ", 21);
        *(v12 + 4) += 21;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v12, "Node without an IDom ", 0x15uLL);
      }

      mlir::Block::printAsOperand(v5, v13);
      v29 = *(v13 + 4);
      if (*(v13 + 3) - v29 > 0x14uLL)
      {
        qmemcpy(v29, " has a nonzero level ", 21);
        *(v13 + 4) += 21;
      }

      else
      {
        v13 = llvm::raw_ostream::write(v13, " has a nonzero level ", 0x15uLL);
      }

      v27 = llvm::raw_ostream::operator<<(v13, *(v4 + 16));
      v28 = *(v27 + 4);
      if (*(v27 + 3) - v28 > 1uLL)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }

LABEL_4:
    ++v2;
    v3 -= 8;
    if (!v3)
    {
      return 1;
    }
  }

  if (v7 == *(v6 + 16) + 1)
  {
    goto LABEL_4;
  }

  v8 = llvm::errs(a1);
  v9 = *(v8 + 4);
  if ((*(v8 + 3) - v9) > 4)
  {
    *(v9 + 4) = 32;
    *v9 = 1701080910;
    v10 = v8;
    *(v8 + 4) += 5;
  }

  else
  {
    v10 = llvm::raw_ostream::write(v8, "Node ", 5uLL);
  }

  v15 = v5;
  v16 = v10;
  mlir::Block::printAsOperand(v15, v10);
  v17 = *(v16 + 4);
  if ((*(v16 + 3) - v17) <= 0xA)
  {
    v18 = llvm::raw_ostream::write(v16, " has level ", 0xBuLL);
    v19 = llvm::raw_ostream::operator<<(v18, *(v4 + 16));
    v20 = *(v19 + 4);
    if (*(v19 + 3) - v20 <= 0xFuLL)
    {
      goto LABEL_18;
    }

LABEL_23:
    *v20 = *" while its IDom ";
    *(v19 + 4) += 16;
    v21 = *v6;
    if (*v6)
    {
      goto LABEL_24;
    }

LABEL_19:
    v22 = *(v19 + 4);
    if (*(v19 + 3) - v22 > 6uLL)
    {
      *(v22 + 3) = 1920233580;
      *v22 = 1819047278;
      *(v19 + 4) += 7;
      v24 = *(v19 + 4);
      if ((*(v19 + 3) - v24) > 0xA)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v23 = v19;
      llvm::raw_ostream::write(v19, "nullptr", 7uLL);
      v19 = v23;
      v24 = *(v23 + 4);
      if ((*(v23 + 3) - v24) > 0xA)
      {
        goto LABEL_35;
      }
    }

LABEL_25:
    v26 = llvm::raw_ostream::write(v19, " has level ", 0xBuLL);
    v27 = llvm::raw_ostream::operator<<(v26, *(v6 + 16));
    v28 = *(v27 + 4);
    if (*(v27 + 3) - v28 > 1uLL)
    {
      goto LABEL_36;
    }

LABEL_32:
    v30 = llvm::raw_ostream::write(v27, "!\n", 2uLL);
    v31 = llvm::errs(v30);
    if (*(v31 + 4) == *(v31 + 2))
    {
      return 0;
    }

    goto LABEL_37;
  }

  *(v17 + 7) = 543974774;
  *v17 = *" has level ";
  *(v16 + 4) += 11;
  v19 = llvm::raw_ostream::operator<<(v16, *(v4 + 16));
  v20 = *(v19 + 4);
  if (*(v19 + 3) - v20 > 0xFuLL)
  {
    goto LABEL_23;
  }

LABEL_18:
  v19 = llvm::raw_ostream::write(v19, " while its IDom ", 0x10uLL);
  v21 = *v6;
  if (!*v6)
  {
    goto LABEL_19;
  }

LABEL_24:
  v25 = v19;
  mlir::Block::printAsOperand(v21, v19);
  v19 = v25;
  v24 = *(v25 + 4);
  if ((*(v25 + 3) - v24) <= 0xA)
  {
    goto LABEL_25;
  }

LABEL_35:
  *(v24 + 7) = 543974774;
  *v24 = *" has level ";
  *(v19 + 4) += 11;
  v27 = llvm::raw_ostream::operator<<(v19, *(v6 + 16));
  v28 = *(v27 + 4);
  if (*(v27 + 3) - v28 <= 1uLL)
  {
    goto LABEL_32;
  }

LABEL_36:
  *v28 = 2593;
  *(v27 + 4) += 2;
  v31 = llvm::errs(v27);
  if (*(v31 + 4) == *(v31 + 2))
  {
    return 0;
  }

LABEL_37:
  llvm::raw_ostream::flush_nonempty(v31);
  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(unsigned int *a1)
{
  v40[8] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 128) != 1 || *(a1 + 15) == 0;
  if (v1)
  {
    return 1;
  }

  v3 = **a1;
  v4 = *(a1 + 11);
  v5 = a1[26] - 1;
  v6 = ((v3 >> 4) ^ (v3 >> 9)) & v5;
  if (*(v4 + 16 * v6) != v3)
  {
    v35 = 1;
    do
    {
      v36 = v6 + v35++;
      v6 = v36 & v5;
    }

    while (*(v4 + 16 * v6) != v3);
  }

  v7 = *(a1 + 3);
  v8 = v7[*(v4 + 16 * v6 + 8)];
  if (*(v8 + 72))
  {
    v9 = llvm::errs(a1);
    v10 = v9[4];
    if (v9[3] - v10 > 0x27uLL)
    {
      qmemcpy(v10, "DFSIn number for the tree root is not:\n\t", 40);
      v9[4] += 40;
    }

    else
    {
      llvm::raw_ostream::write(v9, "DFSIn number for the tree root is not:\n\t", 0x28uLL);
    }

    v27 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()(&v38, v8);
    v28 = llvm::errs(v27);
    v29 = *(v28 + 4);
    if (v29 >= *(v28 + 3))
    {
      goto LABEL_44;
    }

LABEL_38:
    *(v28 + 4) = v29 + 1;
    *v29 = 10;
    v30 = llvm::errs(v28);
    if (*(v30 + 4) != *(v30 + 2))
    {
      goto LABEL_45;
    }

    return 0;
  }

  v11 = &v7[a1[8]];
  while (1)
  {
    v12 = *v7;
    if (!*v7)
    {
      goto LABEL_13;
    }

    v13 = *(v12 + 32);
    if (!v13)
    {
      break;
    }

    v14 = *(v12 + 24);
    v38 = v40;
    v39 = 0x800000000;
    if (v13 >= 9)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    memcpy(v38, v14, 8 * v13);
    v15 = (v39 + v13);
    v1 = v39 + v13 == 0;
    LODWORD(v39) = v15;
    v16 = v38 + 8 * v15;
    v17 = 126 - 2 * __clz(v15);
    if (v1)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17;
    }

    std::__introsort<std::_ClassicAlgPolicy,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#1} &,llvm::DomTreeNodeBase<mlir::Block> **,false>(v38, v16, v37, v18, 1);
    v37[0] = v12;
    v37[1] = &v38;
    v19 = *v38;
    if (*(*v38 + 72) == *(v12 + 72) + 1)
    {
      v20 = *(v38 + v39 - 1);
      if (*(v20 + 76) + 1 != *(v12 + 76))
      {
        llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v37, v20, 0);
        v26 = 0;
        a1 = v38;
        if (v38 == v40)
        {
          goto LABEL_32;
        }

LABEL_31:
        free(a1);
        goto LABEL_32;
      }

      v21 = v39 - 1;
      v22 = (v38 + 8);
      while (v21)
      {
        v23 = v19;
        v24 = *(v19 + 76) + 1;
        v25 = *v22++;
        v19 = v25;
        --v21;
        if (v24 != *(v25 + 72))
        {
          llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v37, v23, v19);
          v26 = 0;
          a1 = v38;
          if (v38 != v40)
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }
      }

      v26 = 1;
      a1 = v38;
      if (v38 != v40)
      {
        goto LABEL_31;
      }
    }

    else
    {
      llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *,llvm::DomTreeNodeBase<mlir::Block> *)#2}::operator()(v37, *v38, 0);
      v26 = 0;
      a1 = v38;
      if (v38 != v40)
      {
        goto LABEL_31;
      }
    }

LABEL_32:
    if (!v26)
    {
      return 0;
    }

LABEL_13:
    if (++v7 == v11)
    {
      return 1;
    }
  }

  if (*(v12 + 72) + 1 == *(v12 + 76))
  {
    goto LABEL_13;
  }

  v31 = llvm::errs(a1);
  v32 = v31[4];
  if (v31[3] - v32 > 0x2AuLL)
  {
    qmemcpy(v32, "Tree leaf should have DFSOut = DFSIn + 1:\n\t", 43);
    v31[4] += 43;
  }

  else
  {
    llvm::raw_ostream::write(v31, "Tree leaf should have DFSOut = DFSIn + 1:\n\t", 0x2BuLL);
  }

  v33 = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::VerifyDFSNumbers(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(llvm::DomTreeNodeBase<mlir::Block> *)#1}::operator()(&v38, v12);
  v28 = llvm::errs(v33);
  v29 = *(v28 + 4);
  if (v29 < *(v28 + 3))
  {
    goto LABEL_38;
  }

LABEL_44:
  v34 = llvm::raw_ostream::write(v28, 10);
  v30 = llvm::errs(v34);
  if (*(v30 + 4) != *(v30 + 2))
  {
LABEL_45:
    llvm::raw_ostream::flush_nonempty(v30);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyParentProperty(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 1;
  }

  v4 = *(a2 + 24);
  v5 = &v4[v2];
  while (1)
  {
    v6 = *v4;
    if (*v4)
    {
      v7 = *v6;
      if (*v6)
      {
        if (*(v6 + 32))
        {
          llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::clear(a1);
          buffer = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(a1, **a2, 0, v7, 0, 0);
          v9 = 0uLL;
          v10 = *(v6 + 32);
          if (v10)
          {
            break;
          }
        }
      }
    }

LABEL_3:
    if (++v4 == v5)
    {
      return 1;
    }
  }

  v11 = *(v6 + 24);
  v12 = &v11[v10];
  while (1)
  {
    v13 = *v11;
    v14 = **v11;
    v15 = *(a1 + 528);
    v16 = *(a1 + 544);
    if (!v16)
    {
      goto LABEL_31;
    }

    v17 = ((v14 >> 4) ^ (v14 >> 9)) & (v16 - 1);
    v18 = &v15[8 * v17];
    v19 = *v18;
    if (v14 == *v18)
    {
      goto LABEL_25;
    }

    v20 = 0;
    v21 = 1;
    while (v19 != -4096)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == -8192;
      }

      if (v22)
      {
        v20 = v18;
      }

      v23 = v17 + v21++;
      v17 = v23 & (v16 - 1);
      v18 = &v15[8 * v17];
      v19 = *v18;
      if (v14 == *v18)
      {
        goto LABEL_25;
      }
    }

    if (v20)
    {
      v18 = v20;
    }

    v24 = *(a1 + 536);
    if (4 * v24 + 4 >= (3 * v16))
    {
LABEL_31:
      v25 = 2 * v16;
      goto LABEL_33;
    }

    if (v16 + ~v24 - *(a1 + 540) <= v16 >> 3)
    {
      v25 = *(a1 + 544);
LABEL_33:
      v26 = (v25 - 1) | ((v25 - 1) >> 1);
      v27 = v26 | (v26 >> 2) | ((v26 | (v26 >> 2)) >> 4);
      v28 = ((v27 | (v27 >> 8)) >> 16) | v27 | (v27 >> 8);
      if ((v28 + 1) > 0x40)
      {
        v29 = v28 + 1;
      }

      else
      {
        v29 = 64;
      }

      *(a1 + 544) = v29;
      buffer = llvm::allocate_buffer(v29 << 6, 8uLL);
      *(a1 + 528) = buffer;
      if (v15)
      {
        v30 = (v16 << 6);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(a1 + 528, v15, &v30[v15]);
        llvm::deallocate_buffer(v15, v30);
      }

      v9 = 0uLL;
      *(a1 + 536) = 0;
      v31 = *(a1 + 544);
      if (v31)
      {
        v32 = buffer;
        if (((v31 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_80;
        }

        v33 = ((v31 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
        v32 = (buffer + 64 * (v33 & 0x7FFFFFFFFFFFFFELL));
        v34 = (buffer + 64);
        v35 = v33 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          *(v34 - 8) = -4096;
          *v34 = -4096;
          v34 += 16;
          v35 -= 2;
        }

        while (v35);
        if (v33 != (v33 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_80:
          do
          {
            *v32 = -4096;
            v32 = (v32 + 64);
          }

          while (v32 != (buffer + 64 * v31));
        }

        v36 = v31 - 1;
        v37 = (v31 - 1) & ((v14 >> 4) ^ (v14 >> 9));
        v18 = (buffer + 64 * v37);
        v38 = *v18;
        if (v14 != *v18)
        {
          v39 = 0;
          v40 = 1;
          while (v38 != -4096)
          {
            if (v39)
            {
              v41 = 0;
            }

            else
            {
              v41 = v38 == -8192;
            }

            if (v41)
            {
              v39 = v18;
            }

            v42 = v37 + v40++;
            v37 = v42 & v36;
            v18 = (buffer + 64 * v37);
            v38 = *v18;
            v9 = 0uLL;
            if (v14 == *v18)
            {
              goto LABEL_55;
            }
          }

          if (v39)
          {
            v18 = v39;
          }

          v9 = 0uLL;
        }
      }

      else
      {
        v18 = 0;
      }

LABEL_55:
      ++*(a1 + 536);
      if (*v18 == -4096)
      {
        goto LABEL_24;
      }

LABEL_23:
      --*(a1 + 540);
      goto LABEL_24;
    }

    *(a1 + 536) = v24 + 1;
    if (*v18 != -4096)
    {
      goto LABEL_23;
    }

LABEL_24:
    *v18 = v14;
    *(v18 + 3) = v9;
    *(v18 + 5) = v9;
    *(v18 + 1) = v9;
    v18[7] = 0;
    v18[4] = (v18 + 6);
    *(v18 + 11) = 4;
LABEL_25:
    if (*(v18 + 2))
    {
      break;
    }

    if (++v11 == v12)
    {
      goto LABEL_3;
    }
  }

  v43 = llvm::errs(buffer);
  v44 = v43;
  v45 = *(v43 + 4);
  if ((*(v43 + 3) - v45) > 5)
  {
    *(v45 + 4) = 8292;
    *v45 = 1818847299;
    *(v43 + 4) += 6;
    v46 = *v13;
    if (!*v13)
    {
      goto LABEL_66;
    }

LABEL_62:
    mlir::Block::printAsOperand(v46, v44);
    v47 = *(v44 + 4);
    if (*(v44 + 3) - v47 <= 0x1BuLL)
    {
      goto LABEL_63;
    }

LABEL_71:
    qmemcpy(v47, " reachable after its parent ", 28);
    *(v44 + 4) += 28;
  }

  else
  {
    v44 = llvm::raw_ostream::write(v43, "Child ", 6uLL);
    v46 = *v13;
    if (*v13)
    {
      goto LABEL_62;
    }

LABEL_66:
    v49 = *(v44 + 4);
    if (*(v44 + 3) - v49 > 6uLL)
    {
      *(v49 + 3) = 1920233580;
      *v49 = 1819047278;
      *(v44 + 4) += 7;
      v47 = *(v44 + 4);
      if (*(v44 + 3) - v47 > 0x1BuLL)
      {
        goto LABEL_71;
      }
    }

    else
    {
      llvm::raw_ostream::write(v44, "nullptr", 7uLL);
      v47 = *(v44 + 4);
      if (*(v44 + 3) - v47 > 0x1BuLL)
      {
        goto LABEL_71;
      }
    }

LABEL_63:
    v44 = llvm::raw_ostream::write(v44, " reachable after its parent ", 0x1CuLL);
  }

  mlir::Block::printAsOperand(v7, v44);
  v51 = *(v44 + 4);
  if (*(v44 + 3) - v51 > 0xCuLL)
  {
    qmemcpy(v51, " is removed!\n", 13);
    *(v44 + 4) += 13;
    v53 = llvm::errs(v50);
    if (*(v53 + 4) == *(v53 + 2))
    {
      return 0;
    }

    goto LABEL_76;
  }

  v52 = llvm::raw_ostream::write(v44, " is removed!\n", 0xDuLL);
  v53 = llvm::errs(v52);
  if (*(v53 + 4) != *(v53 + 2))
  {
LABEL_76:
    llvm::raw_ostream::flush_nonempty(v53);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifySiblingProperty(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 1;
  }

  v3 = a2;
  v5 = *(a2 + 24);
  v65 = &v5[v2];
  v62 = (a1 + 528);
  while (1)
  {
    v6 = *v5;
    if (*v5)
    {
      if (*v6)
      {
        v7 = *(v6 + 32);
        if (v7)
        {
          break;
        }
      }
    }

LABEL_3:
    if (++v5 == v65)
    {
      return 1;
    }
  }

  v8 = *(v6 + 24);
  v63 = &v8[v7];
  v64 = v3;
  v66 = *v5;
  while (1)
  {
    v9 = *v8;
    *(a1 + 8) = 0;
    if (!*(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    **a1 = 0;
    ++*(a1 + 8);
    v10 = *(a1 + 536);
    if (v10 || *(a1 + 540))
    {
      v11 = *(a1 + 544);
      if (v11 > 4 * v10 && v11 >= 0x41)
      {
        llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::shrink_and_clear(v62);
        goto LABEL_25;
      }

      if (v11)
      {
        v12 = *v62 + 48;
        for (i = v11 << 6; i; i -= 64)
        {
          v14 = *(v12 - 48);
          if (v14 != -8192)
          {
            if (v14 == -4096)
            {
              goto LABEL_19;
            }

            v15 = *(v12 - 16);
            if (v12 != v15)
            {
              free(v15);
            }
          }

          *(v12 - 48) = -4096;
LABEL_19:
          v12 += 64;
        }
      }

      *(a1 + 536) = 0;
    }

LABEL_25:
    buffer = llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::runDFS<false,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::verifyParentProperty(llvm::DominatorTreeBase<mlir::Block,false> const&)::{lambda(mlir::Block*,mlir::Block*)#1}>(a1, **v3, 0, *v9, 0, 0);
    v17 = *(v66 + 32);
    if (v17)
    {
      break;
    }

LABEL_8:
    ++v8;
    v3 = v64;
    if (v8 == v63)
    {
      goto LABEL_3;
    }
  }

  v18 = *(v66 + 24);
  v19 = &v18[v17];
  while (2)
  {
    v23 = *v18;
    if (*v18 == v9)
    {
      goto LABEL_29;
    }

    v24 = *v23;
    v25 = *(a1 + 528);
    v26 = *(a1 + 544);
    if (!v26)
    {
      goto LABEL_49;
    }

    v20 = ((v24 >> 4) ^ (v24 >> 9)) & (v26 - 1);
    v21 = &v25[8 * v20];
    v22 = *v21;
    if (v24 == *v21)
    {
      goto LABEL_28;
    }

    v27 = 0;
    v28 = 1;
    while (v22 != -4096)
    {
      if (v27)
      {
        v29 = 0;
      }

      else
      {
        v29 = v22 == -8192;
      }

      if (v29)
      {
        v27 = v21;
      }

      v30 = v20 + v28++;
      v20 = v30 & (v26 - 1);
      v21 = &v25[8 * v20];
      v22 = *v21;
      if (v24 == *v21)
      {
        goto LABEL_28;
      }
    }

    if (v27)
    {
      v21 = v27;
    }

    v31 = *(a1 + 536);
    if (4 * v31 + 4 >= (3 * v26))
    {
LABEL_49:
      v32 = 2 * v26;
      goto LABEL_51;
    }

    if (v26 + ~v31 - *(a1 + 540) <= v26 >> 3)
    {
      v32 = *(a1 + 544);
LABEL_51:
      v33 = (v32 - 1) | ((v32 - 1) >> 1);
      v34 = v33 | (v33 >> 2) | ((v33 | (v33 >> 2)) >> 4);
      v35 = ((v34 | (v34 >> 8)) >> 16) | v34 | (v34 >> 8);
      if ((v35 + 1) > 0x40)
      {
        v36 = v35 + 1;
      }

      else
      {
        v36 = 64;
      }

      *(a1 + 544) = v36;
      buffer = llvm::allocate_buffer(v36 << 6, 8uLL);
      *(a1 + 528) = buffer;
      if (v25)
      {
        v37 = (v26 << 6);
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>,mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseMapPair<mlir::Block *,llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::InfoRec>>::moveFromOldBuckets(v62, v25, &v37[v25]);
        llvm::deallocate_buffer(v25, v37);
      }

      *(a1 + 536) = 0;
      v38 = *(a1 + 544);
      if (v38)
      {
        v39 = buffer;
        if (((v38 - 1) & 0x3FFFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_102;
        }

        v40 = ((v38 - 1) & 0x3FFFFFFFFFFFFFFLL) + 1;
        v39 = (buffer + 64 * (v40 & 0x7FFFFFFFFFFFFFELL));
        v41 = (buffer + 64);
        v42 = v40 & 0x7FFFFFFFFFFFFFELL;
        do
        {
          *(v41 - 8) = -4096;
          *v41 = -4096;
          v41 += 16;
          v42 -= 2;
        }

        while (v42);
        if (v40 != (v40 & 0x7FFFFFFFFFFFFFELL))
        {
LABEL_102:
          do
          {
            *v39 = -4096;
            v39 = (v39 + 64);
          }

          while (v39 != (buffer + 64 * v38));
        }

        v43 = v38 - 1;
        v44 = (v38 - 1) & ((v24 >> 4) ^ (v24 >> 9));
        v21 = (buffer + 64 * v44);
        v45 = *v21;
        if (v24 != *v21)
        {
          v46 = 0;
          v47 = 1;
          while (v45 != -4096)
          {
            if (v46)
            {
              v48 = 0;
            }

            else
            {
              v48 = v45 == -8192;
            }

            if (v48)
            {
              v46 = v21;
            }

            v49 = v44 + v47++;
            v44 = v49 & v43;
            v21 = (buffer + 64 * v44);
            v45 = *v21;
            if (v24 == *v21)
            {
              goto LABEL_73;
            }
          }

          if (v46)
          {
            v21 = v46;
          }
        }
      }

      else
      {
        v21 = 0;
      }

LABEL_73:
      ++*(a1 + 536);
      if (*v21 != -4096)
      {
LABEL_35:
        --*(a1 + 540);
      }
    }

    else
    {
      *(a1 + 536) = v31 + 1;
      if (*v21 != -4096)
      {
        goto LABEL_35;
      }
    }

    *v21 = v24;
    *(v21 + 3) = 0u;
    *(v21 + 5) = 0u;
    *(v21 + 1) = 0u;
    v21[7] = 0;
    v21[4] = (v21 + 6);
    *(v21 + 11) = 4;
LABEL_28:
    if (*(v21 + 2))
    {
LABEL_29:
      if (++v18 == v19)
      {
        goto LABEL_8;
      }

      continue;
    }

    break;
  }

  v50 = llvm::errs(buffer);
  v51 = v50;
  v52 = *(v50 + 4);
  if ((*(v50 + 3) - v52) > 4)
  {
    *(v52 + 4) = 32;
    *v52 = 1701080910;
    *(v50 + 4) += 5;
    v53 = *v23;
    if (!*v23)
    {
      goto LABEL_87;
    }

LABEL_80:
    mlir::Block::printAsOperand(v53, v51);
    v54 = *(v51 + 4);
    if (*(v51 + 3) - v54 <= 0x1FuLL)
    {
      goto LABEL_81;
    }

LABEL_94:
    qmemcpy(v54, " not reachable when its sibling ", 32);
    *(v51 + 4) += 32;
    v55 = *v9;
    if (*v9)
    {
      goto LABEL_95;
    }

LABEL_82:
    v56 = *(v51 + 4);
    if (*(v51 + 3) - v56 > 6uLL)
    {
      *(v56 + 3) = 1920233580;
      *v56 = 1819047278;
      *(v51 + 4) += 7;
      v57 = *(v51 + 4);
      if (*(v51 + 3) - v57 <= 0xCuLL)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v55 = llvm::raw_ostream::write(v51, "nullptr", 7uLL);
      v57 = *(v51 + 4);
      if (*(v51 + 3) - v57 <= 0xCuLL)
      {
        goto LABEL_96;
      }
    }

LABEL_91:
    qmemcpy(v57, " is removed!\n", 13);
    *(v51 + 4) += 13;
    v60 = llvm::errs(v55);
    if (*(v60 + 4) != *(v60 + 2))
    {
      goto LABEL_97;
    }

    return 0;
  }

  v51 = llvm::raw_ostream::write(v50, "Node ", 5uLL);
  v53 = *v23;
  if (*v23)
  {
    goto LABEL_80;
  }

LABEL_87:
  v59 = *(v51 + 4);
  if (*(v51 + 3) - v59 > 6uLL)
  {
    *(v59 + 3) = 1920233580;
    *v59 = 1819047278;
    *(v51 + 4) += 7;
    v54 = *(v51 + 4);
    if (*(v51 + 3) - v54 > 0x1FuLL)
    {
      goto LABEL_94;
    }
  }

  else
  {
    llvm::raw_ostream::write(v51, "nullptr", 7uLL);
    v54 = *(v51 + 4);
    if (*(v51 + 3) - v54 > 0x1FuLL)
    {
      goto LABEL_94;
    }
  }

LABEL_81:
  v51 = llvm::raw_ostream::write(v51, " not reachable when its sibling ", 0x20uLL);
  v55 = *v9;
  if (!*v9)
  {
    goto LABEL_82;
  }

LABEL_95:
  mlir::Block::printAsOperand(v55, v51);
  v57 = *(v51 + 4);
  if (*(v51 + 3) - v57 > 0xCuLL)
  {
    goto LABEL_91;
  }

LABEL_96:
  v61 = llvm::raw_ostream::write(v51, " is removed!\n", 0xDuLL);
  v60 = llvm::errs(v61);
  if (*(v60 + 4) != *(v60 + 2))
  {
LABEL_97:
    llvm::raw_ostream::flush_nonempty(v60);
  }

  return 0;
}

uint64_t llvm::DomTreeBuilder::SemiNCAInfo<llvm::DominatorTreeBase<mlir::Block,false>>::isPermutation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  v3 = *a1;
  v4 = v30;
  v26 = v30;
  v27 = v30;
  v28 = 4;
  v29 = 0;
  if (!v2)
  {
    return 1;
  }

  v6 = &v3[v2];
  do
  {
    v7 = *v3;
    if (v27 != v4)
    {
      goto LABEL_4;
    }

    v8 = HIDWORD(v28);
    if (!HIDWORD(v28))
    {
LABEL_12:
      if (HIDWORD(v28) >= v28)
      {
LABEL_4:
        llvm::SmallPtrSetImplBase::insert_imp_big(&v26, v7);
      }

      else
      {
        ++HIDWORD(v28);
        v4[v8] = v7;
      }

      v4 = v26;
      goto LABEL_6;
    }

    v9 = 0;
    while (v4[v9] != v7)
    {
      if (HIDWORD(v28) == ++v9)
      {
        goto LABEL_12;
      }
    }

LABEL_6:
    ++v3;
  }

  while (v3 != v6);
  v12 = *(a2 + 8);
  v13 = v27;
  if (v12)
  {
    v14 = *a2;
    v15 = *a2 + 8 * v12;
    if (v27 == v4)
    {
      if (!HIDWORD(v28))
      {
        return 0;
      }

      v16 = (v27 + 8 * HIDWORD(v28));
      do
      {
        v17 = 8 * HIDWORD(v28);
        for (i = v4; *i != *v14; ++i)
        {
          v17 -= 8;
          if (!v17)
          {
            return 0;
          }
        }

        v10 = i != v16;
        if (i == v16)
        {
          break;
        }

        ++v14;
      }

      while (v14 != v15);
      return v10;
    }

    do
    {
      v23 = *v14;
      if (v13 == v4)
      {
        v20 = HIDWORD(v28);
        if (HIDWORD(v28))
        {
          v25 = 8 * HIDWORD(v28);
          v19 = v4;
          while (*v19 != v23)
          {
            ++v19;
            v25 -= 8;
            if (!v25)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          v19 = &v13[HIDWORD(v28)];
        }
      }

      else
      {
        v19 = llvm::SmallPtrSetImplBase::doFind(&v26, v23);
        v4 = v26;
        v13 = v27;
        v20 = HIDWORD(v28);
        if (!v19)
        {
          v24 = v28;
          if (v27 == v26)
          {
            v24 = HIDWORD(v28);
          }

          v19 = (v27 + 8 * v24);
        }
      }

      if (v13 != v4)
      {
        v20 = v28;
      }

      v21 = &v13[v20];
      v10 = v19 != v21;
      ++v14;
    }

    while (v19 != v21 && v14 != v15);
  }

  else
  {
    v10 = 1;
  }

  if (v13 == v4)
  {
    return v10;
  }

  free(v13);
  return v10;
}