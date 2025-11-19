BOOL sub_100099A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[0] = a4;
  v32[1] = a5;
  v10 = *(a1 + 136);
  v28 = a6;
  v29 = a7;
  v30 = a6;
  v31 = v10;
  v27 = 0;
  if ((sub_10009A774(&v28, &v27) & 1) == 0)
  {
    return 0;
  }

  v26 = 0;
  if ((sub_10009A774(&v28, &v26) & 1) == 0)
  {
    return 0;
  }

  v11 = v27;
  v12 = *(a1 + 32);
  if (v27 != v12)
  {
    if (v27 >= v12)
    {
      if (v27 > *(a1 + 36))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 24, (a1 + 40), v27, 40);
        v12 = *(a1 + 32);
      }

      if (v11 != v12)
      {
        bzero((*(a1 + 24) + 40 * v12), 40 * ((40 * (v11 - v12) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 32) = v11;
    LODWORD(v12) = v11;
  }

  v13 = (a1 + 80);
  v14 = v26;
  v15 = *(a1 + 88);
  if (v26 != v15)
  {
    if (v26 >= v15)
    {
      if (v26 > *(a1 + 92))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 80, (a1 + 96), v26, 40);
        v15 = *(a1 + 88);
      }

      if (v14 != v15)
      {
        bzero((*v13 + 40 * v15), 40 * ((40 * (v14 - v15) - 40) / 0x28) + 40);
      }
    }

    *(a1 + 88) = v14;
    LODWORD(v12) = *(a1 + 32);
    LODWORD(v15) = v14;
  }

  v25 = 0;
  v33 = 0;
  v38 = (a1 + 24);
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v12)
  {
    v16 = v12;
    while (1)
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      if ((sub_10009FE30(&v28, &v36, &v35, "dialect", 7) & 1) == 0)
      {
        return 0;
      }

      v34 = 0;
      if ((sub_10009A774(&v28, &v34) & 1) == 0)
      {
        return 0;
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        while ((sub_10009F230(&v38, *v18) & 1) != 0)
        {
          if (!--v17)
          {
            goto LABEL_19;
          }
        }

        return 0;
      }

LABEL_19:
      if (v33 == v16)
      {
        LODWORD(v15) = *(a1 + 88);
        v13 = (a1 + 80);
        break;
      }
    }
  }

  v33 = 0;
  v38 = v13;
  v39 = &v33;
  v40 = &v28;
  v41 = &v25;
  v42 = v32;
  if (v15)
  {
    v19 = v15;
    do
    {
      v36 = a2;
      v37 = a3;
      v35 = 0;
      if ((sub_10009FE30(&v28, &v36, &v35, "dialect", 7) & 1) == 0)
      {
        return 0;
      }

      v34 = 0;
      if ((sub_10009A774(&v28, &v34) & 1) == 0)
      {
        return 0;
      }

      v20 = v34;
      if (v34)
      {
        v21 = v35;
        while ((sub_10009F230(&v38, *v21) & 1) != 0)
        {
          if (!--v20)
          {
            goto LABEL_30;
          }
        }

        return 0;
      }

LABEL_30:
      ;
    }

    while (v33 != v19);
  }

  if (v30 == v28 + v29)
  {
    return 1;
  }

  sub_10009D7D8(&v38, v31, "unexpected trailing data in the Attribute/Type offset section");
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v38);
  if (v38)
  {
    v23 = result;
    mlir::InFlightDiagnostic::report(&v38);
    result = v23;
  }

  if (v43 == 1)
  {
    v24 = result;
    sub_100052F18(&v39);
    return v24;
  }

  return result;
}

void mlir::BytecodeReader::Impl::parseIRSection(uint64_t a1)
{
  v1 = *(a1 + 8);
  LOBYTE(v2) = 0;
  v3 = 0;
  mlir::ModuleOp::create(v1, &v2);
}

uint64_t sub_10009A774(void *a1, unint64_t *a2)
{
  v4 = a1[2];
  if (v4 == (*a1 + a1[1]))
  {
    sub_10009D7D8(__dst, a1[3], "attempting to parse a byte at the end of the bytecode");
    v8 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__dst);
    if (__dst[0])
    {
      mlir::InFlightDiagnostic::report(__dst);
    }

    if (v24 == 1)
    {
      if (v23 != &v24)
      {
        free(v23);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v22;
        v11 = __p;
        if (v22 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v22 = v9;
        operator delete(v11);
      }

      v12 = v19;
      if (v19)
      {
        v13 = v20;
        v14 = v19;
        if (v20 != v19)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v19;
        }

        v20 = v12;
        operator delete(v14);
      }

      if (v17 != &v18)
      {
        free(v17);
      }
    }

    if (!v8)
    {
      return 0;
    }

    v5 = *a2;
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (v5)
    {
      return sub_10009F960(a1, a2);
    }

    if (sub_10009F7B8(a1, 8uLL, __dst))
    {
      v6 = __dst[0];
      goto LABEL_4;
    }

    return 0;
  }

  a1[2] = v4 + 1;
  v5 = *v4;
  *a2 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = v5 >> 1;
LABEL_4:
  *a2 = v6;
  return 1;
}

uint64_t mlir::BytecodeReader::Impl::sortUseListOrder(uint64_t a1, void *a2)
{
  v101 = a2;
  v3 = *a2;
  if (!*a2 || !*v3)
  {
    return 1;
  }

  v5 = *(a1 + 528);
  if (v5)
  {
    v6 = *(a1 + 512);
    v7 = v5 - 1;
    v8 = v7 & ((a2 >> 4) ^ (a2 >> 9));
    v9 = *(v6 + 48 * v8);
    if (v9 == a2)
    {
      v10 = 0;
    }

    else
    {
      v96 = 1;
      do
      {
        v10 = v9 == -4096;
        if (v9 == -4096)
        {
          break;
        }

        v10 = 0;
        v97 = v8 + v96++;
        v8 = v97 & v7;
        v9 = *(v6 + 48 * v8);
      }

      while (v9 != a2);
    }
  }

  else
  {
    v10 = 1;
  }

  v12 = *(a1 + 704);
  v13 = *(a1 + 720);
  if (!v13)
  {
LABEL_14:
    v15 = *(a1 + 720);
    goto LABEL_15;
  }

  v14 = *(v3 + 2);
  v15 = ((v14 >> 4) ^ (v14 >> 9)) & (v13 - 1);
  v16 = *(v12 + 16 * v15);
  if (v16 != v14)
  {
    v17 = 1;
    while (v16 != -4096)
    {
      v18 = v15 + v17++;
      v15 = v18 & (v13 - 1);
      v16 = *(v12 + 16 * v15);
      if (v16 == v14)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  v19 = *(v12 + 16 * v15 + 8);
  v20 = mlir::OpOperand::getOperandNumber(v3) | (v19 << 32);
  v117 = &v119;
  v119 = 0;
  v120 = v20;
  v118 = 0x300000001;
  v21 = **a2;
  if (!v21)
  {
    if (v10)
    {
      goto LABEL_85;
    }

LABEL_38:
    v46 = *(a1 + 512);
    v47 = *(a1 + 528);
    if (v47)
    {
      v48 = ((v101 >> 4) ^ (v101 >> 9)) & (v47 - 1);
      v49 = v46 + 48 * v48;
      v50 = *v49;
      if (*v49 == v101)
      {
        goto LABEL_45;
      }

      v51 = 1;
      while (v50 != -4096)
      {
        v52 = v48 + v51++;
        v48 = v52 & (v47 - 1);
        v49 = v46 + 48 * v48;
        v50 = *v49;
        if (*v49 == v101)
        {
          goto LABEL_45;
        }
      }
    }

    v49 = v46 + 48 * v47;
LABEL_45:
    __dst = v109;
    v108 = 0x400000000;
    v53 = *(v49 + 16);
    if (&__dst == (v49 + 8) || v53 == 0)
    {
      LODWORD(v53) = 0;
      v110 = *(v49 + 40);
      v104 = v106;
      v105 = 0x400000000;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    v62 = v109;
    v63 = *(v49 + 16);
    if (v53 >= 5)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v109, *(v49 + 16), 4);
      v63 = *(v49 + 16);
      if (!v63)
      {
        goto LABEL_62;
      }

      v62 = __dst;
    }

    memcpy(v62, *(v49 + 8), 4 * v63);
LABEL_62:
    LODWORD(v108) = v53;
    v110 = *(v49 + 40);
    v104 = v106;
    v105 = 0x400000000;
    if (__dst == v109)
    {
      v85 = v53;
      if (v53 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&v104, v106, v53, 4), (v85 = v108) != 0))
      {
        memcpy(v104, __dst, 4 * v85);
      }

      LODWORD(v105) = v53;
      LODWORD(v108) = 0;
      v55 = *v101;
      if (!*v101)
      {
LABEL_64:
        v56 = 0;
        if (v110 != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v104 = __dst;
      v105 = __PAIR64__(HIDWORD(v108), v53);
      __dst = v109;
      v108 = 0;
      v55 = *v101;
      if (!*v101)
      {
        goto LABEL_64;
      }
    }

LABEL_51:
    v56 = 0;
    do
    {
      ++v56;
      v55 = *v55;
    }

    while (v55);
    if (v110 != 1)
    {
LABEL_65:
      v98 = 0;
      v99 = 0;
      v100 = 0;
      if (v53)
      {
        goto LABEL_66;
      }

      goto LABEL_103;
    }

LABEL_54:
    if (v53)
    {
      v11 = 0;
LABEL_110:
      if (v104 != v106)
      {
        free(v104);
      }

      if (__dst != v109)
      {
        free(__dst);
      }

      goto LABEL_114;
    }

    sub_10009B158(&v111, v56);
    v57 = v111;
    v58 = v112;
    if (v112)
    {
      v59 = (v112 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v59 < 7)
      {
        LODWORD(v60) = 0;
        v61 = v111;
LABEL_95:
        v92 = &v57[v58];
        do
        {
          *v61++ = v60;
          LODWORD(v60) = v60 + 1;
        }

        while (v61 != v92);
        goto LABEL_97;
      }

      v86 = v59 + 1;
      v60 = (v59 + 1) & 0x7FFFFFFFFFFFFFF8;
      v61 = v111 + 4 * v60;
      v87 = xmmword_10028FC70;
      v88 = (v111 + 16);
      v89.i64[0] = 0x400000004;
      v89.i64[1] = 0x400000004;
      v90.i64[0] = 0x800000008;
      v90.i64[1] = 0x800000008;
      v91 = v60;
      do
      {
        v88[-1] = v87;
        *v88 = vaddq_s32(v87, v89);
        v87 = vaddq_s32(v87, v90);
        v88 += 2;
        v91 -= 8;
      }

      while (v91);
      if (v86 != v60)
      {
        goto LABEL_95;
      }
    }

LABEL_97:
    if (v105)
    {
      v93 = 0;
      v94 = v104;
      do
      {
        v57[v94[v93]] = v94[v93 + 1];
        v93 += 2;
      }

      while (v93 < v105);
    }

    sub_10008BE34(&v104, &v111);
    if (v111 != v113)
    {
      free(v111);
    }

    LODWORD(v53) = v105;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    if (v105)
    {
LABEL_66:
      v64 = 0;
      v65 = v104;
      v66 = 4 * v53;
      while (1)
      {
        sub_1000A7444(&v98, v65, &v111);
        if (v113[0] != 1)
        {
          goto LABEL_108;
        }

        v67 = *v65++;
        v64 += v67;
        v66 -= 4;
        if (!v66)
        {
          if (v56 == v105)
          {
            goto LABEL_104;
          }

          goto LABEL_108;
        }
      }
    }

LABEL_103:
    v64 = 0;
    if (!v56)
    {
LABEL_104:
      if (v64 == ((v56 - 1) * v56) >> 1)
      {
        v111 = v117;
        v112 = &v104;
        v113[0] = 1;
        v114 = &v117[16 * v118];
        v115 = &v104;
        v116 = 1;
        sub_10009B1E8(v102, &v111);
        sub_10008BE34(&v104, v102);
        if (v102[0] != &v103)
        {
          free(v102[0]);
        }

        mlir::Value::shuffleUseList(&v101, v104, v105);
        v11 = 1;
        goto LABEL_109;
      }
    }

LABEL_108:
    v11 = 0;
LABEL_109:
    llvm::deallocate_buffer(v98, (4 * v100), 4uLL);
    goto LABEL_110;
  }

  v22 = 1;
  v23 = 1;
  do
  {
    v24 = *(a1 + 704);
    v25 = *(a1 + 720);
    if (v25)
    {
      v26 = *(v21 + 2);
      v27 = ((v26 >> 4) ^ (v26 >> 9)) & (v25 - 1);
      v28 = *(v24 + 16 * v27);
      if (v28 == v26)
      {
        goto LABEL_24;
      }

      v29 = 1;
      while (v28 != -4096)
      {
        v30 = v27 + v29++;
        v27 = v30 & (v25 - 1);
        v28 = *(v24 + 16 * v27);
        if (v28 == v26)
        {
          goto LABEL_24;
        }
      }
    }

    v27 = *(a1 + 720);
LABEL_24:
    v31 = *(v24 + 16 * v27 + 8);
    v32 = mlir::OpOperand::getOperandNumber(v21) | (v31 << 32);
    v33 = v20 > v32;
    v34 = v118;
    if (v118 >= HIDWORD(v118))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, &v119, v118 + 1, 16);
      v34 = v118;
    }

    v22 &= v33;
    v35 = &v117[16 * v34];
    *v35 = v23;
    *(v35 + 1) = v32;
    v36 = (v118 + 1);
    LODWORD(v118) = v118 + 1;
    ++v23;
    v21 = *v21;
    v20 = v32;
  }

  while (v21);
  if (v10 & v22)
  {
    goto LABEL_85;
  }

  if ((v22 & 1) == 0)
  {
    v37 = 126 - 2 * __clz(v36);
    if (v36)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    sub_10008A850(v117, &v117[16 * v36], v38, 1);
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v39 = v117;
  v40 = v118;
  v111 = v113;
  v112 = 0xC00000000;
  if (v118 >= 0xD)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v113, v118, 4);
    v41 = v112;
    v42 = v111;
    v43 = v111 + 4 * v112;
    v44 = (v40 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 < 0x18)
    {
      goto LABEL_36;
    }

LABEL_74:
    if (v43 >= &v39[16 * v44 + 8] || (v68 = &v42[v41 + 1 + v44], v45 = v39, v39 >= v68))
    {
      v69 = v44 + 1;
      v70 = (v44 + 1) & 7;
      if (!v70)
      {
        v70 = 8;
      }

      v71 = v69 - v70;
      v72 = &v43[4 * v71];
      v45 = &v39[16 * v71];
      v73 = (v39 + 64);
      v74 = (v43 + 16);
      do
      {
        v75 = v73 - 8;
        v76 = vld2q_f64(v75);
        v77 = v73 - 4;
        v78 = vld2q_f64(v77);
        v79 = v73 + 16;
        v81 = vld2q_f64(v73);
        v80 = v73 + 4;
        v82 = vld2q_f64(v80);
        v74[-1] = vuzp1q_s32(v76, v78);
        *v74 = vuzp1q_s32(v81, v82);
        v74 += 2;
        v73 = v79;
        v71 -= 8;
      }

      while (v71);
      v43 = v72;
    }

    goto LABEL_81;
  }

  if (v118)
  {
    v41 = 0;
    v42 = v113;
    v43 = v113;
    v44 = (v118 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v44 >= 0x18)
    {
      goto LABEL_74;
    }

LABEL_36:
    v45 = v39;
    do
    {
LABEL_81:
      v83 = *v45;
      v45 += 16;
      *v43 = v83;
      v43 += 4;
    }

    while (v45 != &v39[16 * v40]);
    v84 = v112;
  }

  else
  {
    v84 = 0;
    v42 = v113;
  }

  LODWORD(v112) = v84 + v40;
  mlir::Value::shuffleUseList(&v101, v42, (v84 + v40));
  if (v111 != v113)
  {
    free(v111);
  }

LABEL_85:
  v11 = 1;
LABEL_114:
  if (v117 != &v119)
  {
    free(v117);
  }

  return v11;
}

void *sub_10009B158(void *result, unint64_t a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  if (a2)
  {
    if (a2 < 5)
    {
      v4 = 0;
      v5 = a2;
    }

    else
    {
      v3 = result;
      llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, a2, 4);
      result = v3;
      v4 = *(v3 + 2);
      v5 = a2 - v4;
      if (a2 == v4)
      {
        goto LABEL_7;
      }
    }

    v6 = result;
    bzero((*result + 4 * v4), 4 * v5);
    result = v6;
LABEL_7:
    *(result + 2) = a2;
  }

  return result;
}

void *sub_10009B1E8(void *result, unsigned int **a2)
{
  *result = result + 2;
  result[1] = 0x400000000;
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v5 = v4 - *a2;
  if ((v5 >> 4) < 5)
  {
    v7 = 0;
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = result;
    llvm::SmallVectorBase<unsigned int>::grow_pod(result, result + 2, v5 >> 4, 4);
    result = v6;
    v7 = *(v6 + 2);
    if (v2 == v4)
    {
      goto LABEL_8;
    }
  }

  v8 = (*result + 4 * v7);
  v9 = *v3;
  do
  {
    v10 = *v2;
    v2 += 4;
    *v8++ = *(v9 + 4 * v10);
  }

  while (v2 != v4);
  v7 = *(result + 2);
LABEL_8:
  *(result + 2) = v7 + (v5 >> 4);
  return result;
}

uint64_t sub_10009B2A0(uint64_t a1, void *a2, uint64_t a3)
{
  if ((sub_10009A774(a2, (a3 + 112)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 112);
  *(a3 + 112) = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v20 = *(a1 + 248);
    return 1;
  }

  v7 = *(a3 + 104);
  v8 = v7 ? (v7 - 8) : 0;
  v60 = 0;
  if ((sub_10009A774(a2, &v60) & 1) == 0)
  {
    return 0;
  }

  v66 = &v68;
  v67 = 0x600000000;
  v63 = v65;
  v64 = 0x600000000;
  v10 = v60;
  if (v60 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, &v68, v60, 8);
    if (v10 > HIDWORD(v64))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v10, 8);
    }
  }

  v11 = mlir::UnknownLoc::get(**a1, v9);
  if (!v10)
  {
LABEL_28:
    mlir::TypeRange::TypeRange(&v61, v66, v67);
    mlir::Block::addArguments(v8, v61, v62, v63, v64);
    mlir::ValueRange::ValueRange(&v61, v8[6], (v8[7] - v8[6]) >> 3);
    v22 = sub_1000A4B14(a1, a2[3], v61, v62) ^ 1;
    v23 = v63;
    if (v63 == v65)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v12 = v11;
  while (1)
  {
    v59 = v12;
    if (*(a1 + 248) < 4uLL)
    {
      break;
    }

    v61 = 0;
    if ((sub_10009A774(a2, &v61) & 1) == 0)
    {
      goto LABEL_37;
    }

    v13 = v61;
    v14 = sub_1000A2044((a1 + 88), v61 >> 1);
    if (!v14)
    {
      goto LABEL_37;
    }

    v15 = v14;
    if (v13)
    {
      goto LABEL_20;
    }

LABEL_21:
    v17 = v67;
    if (v67 >= HIDWORD(v67))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v66, &v68, v67 + 1, 8);
      v17 = v67;
    }

    *(v66 + v17) = v15;
    LODWORD(v67) = v67 + 1;
    v18 = v59;
    v19 = v64;
    if (v64 >= HIDWORD(v64))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v65, v64 + 1, 8);
      v19 = v64;
    }

    *(v63 + v19) = v18;
    LODWORD(v64) = v64 + 1;
    if (!--v10)
    {
      goto LABEL_28;
    }
  }

  v61 = 0;
  if (sub_10009A774(a2, &v61))
  {
    v16 = sub_1000A2044((a1 + 88), v61);
    if (v16)
    {
      v15 = v16;
LABEL_20:
      if ((sub_1000A4410(a1, a2, &v59) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_21;
    }
  }

LABEL_37:
  v22 = 1;
  v23 = v63;
  if (v63 != v65)
  {
LABEL_29:
    free(v23);
  }

LABEL_30:
  if (v66 != &v68)
  {
    free(v66);
  }

  if (v22)
  {
    return 0;
  }

  if (*(a1 + 248) < 3uLL)
  {
    return 1;
  }

  LOBYTE(v61) = 0;
  v24 = sub_10009E478(a2, &v61);
  result = 0;
  if ((v24 & 1) == 0)
  {
    return result;
  }

  if (!v61)
  {
    return 1;
  }

  v25 = *(a3 + 104);
  if (v25)
  {
    v26 = v25 - 8;
  }

  else
  {
    v26 = 0;
  }

  sub_1000A460C(&v66, a2, ((*(v26 + 56) - *(v26 + 48)) >> 3));
  result = 0;
  v27 = v69;
  if (v69 != 1 || !v67)
  {
LABEL_81:
    if (v27)
    {
      goto LABEL_84;
    }

    return result;
  }

  v29 = *(v26 + 48);
  v28 = *(v26 + 56);
  if (((v28 - v29) & 0x7FFFFFFF8) == 0)
  {
    v27 = 1;
    result = 1;
    goto LABEL_81;
  }

  if (!v68)
  {
    result = 1;
    goto LABEL_84;
  }

  v30 = 0;
  while (2)
  {
    if (v68)
    {
      v36 = v68 - 1;
      v37 = (v68 - 1) & (37 * v30);
      v38 = v66 + 48 * v37;
      v39 = *v38;
      if (*v38 == v30)
      {
        v40 = *(v29 + 8 * v30);
        v63 = v40;
LABEL_54:
        v41 = *(a1 + 528);
        if (!v41)
        {
          v42 = 0;
          goto LABEL_56;
        }

        v31 = *(a1 + 512);
        v32 = v41 - 1;
        v33 = v32 & ((v40 >> 4) ^ (v40 >> 9));
        v34 = (v31 + 48 * v33);
        v35 = *v34;
        if (v40 != *v34)
        {
          v49 = 0;
          v50 = 1;
          while (v35 != -4096)
          {
            if (v49)
            {
              v51 = 0;
            }

            else
            {
              v51 = v35 == -8192;
            }

            if (v51)
            {
              v49 = v34;
            }

            v52 = v33 + v50++;
            v33 = v52 & v32;
            v34 = (v31 + 48 * v33);
            v35 = *v34;
            if (v40 == *v34)
            {
              goto LABEL_50;
            }
          }

          if (v49)
          {
            v42 = v49;
          }

          else
          {
            v42 = v34;
          }

LABEL_56:
          sub_1000A5E6C((a1 + 512), v42, &v63, (v38 + 8));
          v29 = *(v26 + 48);
          v28 = *(v26 + 56);
        }
      }

      else
      {
        v43 = 1;
        v44 = *v38;
        v45 = v36 & (37 * v30);
        while (v44 != -1)
        {
          v46 = v45 + v43++;
          v45 = v46 & v36;
          v44 = *(v66 + 12 * v45);
          if (v44 == v30)
          {
            v40 = *(v29 + 8 * v30);
            v63 = v40;
            if (v39 != v30)
            {
              v47 = 1;
              while (v39 != -1)
              {
                v48 = v37 + v47++;
                v37 = v48 & v36;
                v38 = v66 + 48 * (v48 & v36);
                v39 = *v38;
                if (*v38 == v30)
                {
                  goto LABEL_54;
                }
              }

              v38 = v66 + 48 * v68;
            }

            goto LABEL_54;
          }
        }
      }
    }

LABEL_50:
    if (++v30 < ((v28 - v29) >> 3))
    {
      continue;
    }

    break;
  }

  result = 1;
  if ((v69 & 1) == 0)
  {
    return result;
  }

LABEL_84:
  v53 = v66;
  v54 = result;
  if (v68)
  {
    v55 = 48 * v68;
    v56 = v66 + 24;
    v57 = v55;
    do
    {
      if (*(v56 - 6) <= 0xFFFFFFFD)
      {
        v58 = *(v56 - 2);
        if (v56 != v58)
        {
          free(v58);
        }
      }

      v56 += 48;
      v57 -= 48;
    }

    while (v57);
  }

  else
  {
    v55 = 0;
  }

  llvm::deallocate_buffer(v53, v55, 8uLL);
  return v54;
}

uint64_t mlir::BytecodeReader::Impl::parseRegions(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2;
  if (*a3 == *(a3 + 8))
  {
LABEL_409:
    if (*(a3 + 120) == 1)
    {
      v202 = a1[86];
      v203 = (v202 - 7);
      v204 = *(v202 - 4);
      if (v204 != v202 - 2)
      {
        free(v204);
      }

      v205 = *v203;
      if (*v203)
      {
        *(v202 - 6) = v205;
        operator delete(v205);
      }

      a1[86] = v203;
    }

    v206 = v5[1];
    v207 = *(v206 - 88);
    if (v207 != (v206 - 72))
    {
      free(v207);
    }

    v208 = *(v206 - 104);
    *(v206 - 104) = 0;
    if (v208)
    {
      operator delete();
    }

    v5[1] = v206 - 128;
    return 1;
  }

  v7 = (a1 + 11);
  v241 = a1 + 53;
  v242 = (a1 + 67);
  v240 = (a1 + 42);
  v243 = (a1 + 31);
  v244 = (a1 + 11);
  while (!*(a3 + 104))
  {
    if ((mlir::BytecodeReader::Impl::parseRegion(a1, a3) & 1) == 0)
    {
      return 0;
    }

    v8 = *a3;
    if (**a3 != *a3)
    {
      break;
    }

LABEL_408:
    v201 = v8 + 24;
    *a3 = v201;
    if (v201 == *(a3 + 8))
    {
      goto LABEL_409;
    }
  }

  v9 = *(a3 + 16);
  while (1)
  {
    v10 = *(a3 + 112);
    *(a3 + 112) = v10 - 1;
    v11 = v3;
    if (v10)
    {
      break;
    }

LABEL_400:
    v195 = *(*(a3 + 104) + 8);
    *(a3 + 104) = v195;
    v8 = *a3;
    if (v195 == *a3)
    {
      *(a3 + 104) = 0;
      v196 = a1[86];
      v197 = *(v196 - 7);
      v198 = (*(v196 - 6) - v197) >> 3;
      v199 = *(a3 + 32);
      v200 = v198 - v199;
      if (v198 >= v199)
      {
        *(a3 + 32);
        if (v198 > v200)
        {
          *(v196 - 6) = v197 + 8 * v200;
        }
      }

      else
      {
        sub_1000A42BC((v196 - 7), -v199);
        v8 = *a3;
      }

      --*(v196 - 6);
      v3 = v11;
      goto LABEL_408;
    }

    v3 = v11;
    v179 = 0;
    if ((sub_10009B2A0(a1, v9, a3) & 1) == 0)
    {
      return v179;
    }
  }

  while (1)
  {
    v246 = 0;
    if ((sub_10009A774(v9, &v246) & 1) == 0)
    {
      return 0;
    }

    v12 = v9[3];
    v13 = a1[45];
    v14 = *(a1 + 92);
    *__src = "operation name";
    *&__src[8] = 14;
    *v254 = v246;
    if (v246 < v14)
    {
      v15 = &v13[6 * v246];
      v16 = *(v15 + 20);
      if (v15[1])
      {
        goto LABEL_47;
      }

LABEL_34:
      if (v15[4])
      {
        v263[0] = off_1002B5B78;
        v263[1] = v7;
        v264 = v242;
        v265 = v241;
        v266 = v240;
        v267[0] = v9;
        v267[1] = v243;
        if (!sub_1000A0AD8(v15[2], v263, **a1))
        {
          return 0;
        }

        v25 = v15[2];
        WORD4(v255) = 773;
        v27 = *(v25 + 24);
        v26 = *(v25 + 32);
        *v254 = v27;
        *&v254[8] = v26;
        *&v254[16] = ".";
        v28 = v15[3];
        v29 = v15[4];
        *__src = v254;
        *&__src[16] = v28;
        *&v288 = v29;
        WORD4(v288) = 1282;
        llvm::Twine::str(__src, &v246);
        v30 = **a1;
        if (*(v15 + 8) == 1)
        {
          *(v15 + 8) = 0;
        }

        if (SHIBYTE(v247[1]) >= 0)
        {
          v31 = &v246;
        }

        else
        {
          v31 = v246;
        }

        if (SHIBYTE(v247[1]) >= 0)
        {
          v32 = SHIBYTE(v247[1]);
        }

        else
        {
          v32 = v247[0];
        }

        mlir::OperationName::OperationName(v15, v31, v32, v30);
        *(v15 + 8) = 1;
        if (SHIBYTE(v247[1]) < 0)
        {
          operator delete(v246);
        }
      }

      else
      {
        mlir::OperationName::OperationName(v15, *(v15[2] + 24), *(v15[2] + 32), **a1);
        *(v15 + 8) = 1;
      }

      goto LABEL_47;
    }

    sub_10009FB7C(v263, v12, __src, v254);
    v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
    if (v263[0])
    {
      mlir::InFlightDiagnostic::report(v263);
    }

    if (v281 == 1)
    {
      if (v279 != &v281)
      {
        free(v279);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v278;
        v20 = __p;
        if (v278 != __p)
        {
          do
          {
            v19 = sub_100052FFC(v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v278 = v18;
        operator delete(v20);
      }

      v21 = v275;
      if (v275)
      {
        v22 = v276;
        v23 = v275;
        if (v276 != v275)
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
          v23 = v275;
        }

        v276 = v21;
        operator delete(v23);
      }

      if (v265 != v267)
      {
        free(v265);
      }
    }

    if (!v17)
    {
      return 0;
    }

    v15 = 0;
    v16 = MEMORY[0x28];
    if ((MEMORY[8] & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_47:
    v33 = *v15;
    v34 = v9[2];
    v239 = v11;
    if (v34 == (*v9 + v9[1]))
    {
      sub_10009D7D8(v263, v9[3], "attempting to parse a byte at the end of the bytecode");
      v36 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
      if (v263[0])
      {
        mlir::InFlightDiagnostic::report(v263);
      }

      if (v281 == 1)
      {
        if (v279 != &v281)
        {
          free(v279);
        }

        v37 = __p;
        if (__p)
        {
          v38 = v278;
          v39 = __p;
          if (v278 != __p)
          {
            do
            {
              v38 = sub_100052FFC(v38 - 1);
            }

            while (v38 != v37);
            v39 = __p;
          }

          v278 = v37;
          operator delete(v39);
        }

        v40 = v275;
        if (v275)
        {
          v41 = v276;
          v42 = v275;
          if (v276 != v275)
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
            v42 = v275;
          }

          v276 = v40;
          operator delete(v42);
        }

        if (v265 != v267)
        {
          free(v265);
        }
      }

      if (!v36)
      {
        return 0;
      }

      v35 = 0;
      v251 = 0;
      if ((sub_1000A4410(a1, v9, &v251) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v9[2] = v34 + 1;
      v35 = *v34;
      v251 = 0;
      if ((sub_1000A4410(a1, v9, &v251) & 1) == 0)
      {
        return 0;
      }
    }

    mlir::OperationState::OperationState(v263, v251, v33);
    if (v35)
    {
      *__src = 0;
      if ((sub_10009A774(v9, __src) & 1) == 0)
      {
        goto LABEL_461;
      }

      v44 = sub_1000A10F4(v7, *__src);
      v246 = v44;
      if (!v44)
      {
        goto LABEL_461;
      }

      v45 = *(*v44 + 136);
      if (v45 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (v45 == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
      {
        v46 = v44;
      }

      else
      {
        {
          sub_100279904();
        }

        *v254 = llvm::getTypeName<mlir::DictionaryAttr>(void)::Name;
        sub_1000A4E88(__src, v9[3], v254, &v246);
        v47 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v300 == 1)
        {
          if (v299 != &v300)
          {
            free(v299);
          }

          v48 = v297;
          if (v297)
          {
            v49 = v298;
            v50 = v297;
            if (v298 != v297)
            {
              do
              {
                v49 = sub_100052FFC(v49 - 1);
              }

              while (v49 != v48);
              v50 = v297;
            }

            v298 = v48;
            operator delete(v50);
          }

          v51 = v295;
          if (v295)
          {
            v52 = v296;
            v53 = v295;
            if (v296 != v295)
            {
              do
              {
                v54 = *--v52;
                *v52 = 0;
                if (v54)
                {
                  operator delete[]();
                }
              }

              while (v52 != v51);
              v53 = v295;
            }

            v296 = v51;
            operator delete(v53);
          }

          if (v288 != &v289)
          {
            free(v288);
          }
        }

        if (!v47)
        {
          goto LABEL_461;
        }
      }

      mlir::NamedAttrList::NamedAttrList(__src, v46);
      v55 = *__src;
      if (*__src != &__src[16])
      {
        if (__dst != &v274)
        {
          free(__dst);
          v55 = *__src;
        }

        __dst = v55;
        v273 = *&__src[8];
        *__src = &__src[16];
        *&__src[8] = 0;
        v280 = v292;
        goto LABEL_108;
      }

      v78 = *&__src[8];
      v79 = v273;
      if (v273 >= *&__src[8])
      {
        if (*&__src[8])
        {
          memmove(__dst, *__src, 16 * *&__src[8]);
        }

        goto LABEL_170;
      }

      if (HIDWORD(v273) >= *&__src[8])
      {
        if (v273)
        {
          memmove(__dst, *__src, 16 * v273);
          goto LABEL_168;
        }
      }

      else
      {
        LODWORD(v273) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, &v274, *&__src[8], 16);
      }

      v79 = 0;
LABEL_168:
      if (*&__src[8] != v79)
      {
        memcpy(__dst + 16 * v79, (*__src + 16 * v79), 16 * (*&__src[8] - v79));
      }

LABEL_170:
      LODWORD(v273) = v78;
      *&__src[8] = 0;
      v280 = v292;
      if (*__src != &__src[16])
      {
        free(*__src);
      }
    }

LABEL_108:
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_199;
    }

    if ((v16 & 0x100) == 0)
    {
      v216 = a1[1];
      WORD4(v255) = 259;
      mlir::emitError(v216, v254, __src);
      if (*__src)
      {
        v217 = *v243;
        LODWORD(v246) = 5;
        v247[0] = v217;
        v218 = &v246;
        v219 = v288;
        if (DWORD2(v288) >= HIDWORD(v288))
        {
          if (v288 <= &v246 && v288 + 24 * DWORD2(v288) > &v246)
          {
            v235 = &v247[-1] - v288;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, DWORD2(v288) + 1, 24);
            v219 = v288;
            v218 = &v235[v288];
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, DWORD2(v288) + 1, 24);
            v218 = &v246;
            v219 = v288;
          }
        }

        v220 = v219 + 24 * DWORD2(v288);
        v221 = *v218;
        *(v220 + 16) = v218[2];
        *v220 = v221;
        v222 = ++DWORD2(v288);
        if (*__src)
        {
          LODWORD(v246) = 3;
          v247[0] = " with properties.";
          v247[1] = 17;
          v223 = &v246;
          v224 = v288;
          if (v222 >= HIDWORD(v288))
          {
            if (v288 <= &v246 && v288 + 24 * v222 > &v246)
            {
              v236 = &v247[-1] - v288;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, v222 + 1, 24);
              v224 = v288;
              v223 = &v236[v288];
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v288, &v289, v222 + 1, 24);
              v223 = &v246;
              v224 = v288;
            }
          }

          v225 = v224 + 24 * DWORD2(v288);
          v226 = *v223;
          *(v225 + 16) = v223[2];
          *v225 = v226;
          ++DWORD2(v288);
          if (*__src)
          {
            mlir::InFlightDiagnostic::report(__src);
          }
        }
      }

      if (v300 == 1)
      {
        if (v299 != &v300)
        {
          free(v299);
        }

        v227 = v297;
        if (v297)
        {
          v228 = v298;
          v229 = v297;
          if (v298 != v297)
          {
            do
            {
              v228 = sub_100052FFC(v228 - 1);
            }

            while (v228 != v227);
            v229 = v297;
          }

          v298 = v227;
          operator delete(v229);
        }

        v230 = v295;
        if (v295)
        {
          v231 = v296;
          v232 = v295;
          if (v296 != v295)
          {
            do
            {
              v233 = *--v231;
              *v231 = 0;
              if (v233)
              {
                operator delete[]();
              }
            }

            while (v231 != v230);
            v232 = v295;
          }

          v296 = v230;
          operator delete(v232);
        }

        if (v288 != &v289)
        {
          free(v288);
        }
      }

LABEL_461:
      mlir::OperationState::~OperationState(v263);
      return 0;
    }

    v246 = off_1002B5B78;
    v247[0] = v244;
    v247[1] = v242;
    *&v248 = v241;
    *(&v248 + 1) = v240;
    v249 = v9;
    v250 = v243;
    v56 = a1[1];
    v259 = 0;
    if ((sub_10009A774(v9, &v259) & 1) == 0)
    {
      goto LABEL_461;
    }

    if (v259 >= *(a1 + 156))
    {
      v260 = "Properties idx out-of-bound for ";
      v262 = 259;
      (*(v246 + 16))(__src, &v246, &v260);
      *v254 = *(v33 + 8);
      Value = mlir::StringAttr::getValue(v254);
      if (*__src)
      {
        WORD4(v255) = 261;
        *v254 = Value;
        *&v254[8] = v69;
        mlir::Diagnostic::operator<<(&__src[8], v254);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 == 1)
      {
        if (v299 != &v300)
        {
          free(v299);
        }

        v71 = v297;
        if (v297)
        {
          v72 = v298;
          v73 = v297;
          if (v298 != v297)
          {
            do
            {
              v72 = sub_100052FFC(v72 - 1);
            }

            while (v72 != v71);
            v73 = v297;
          }

          v298 = v71;
          operator delete(v73);
        }

        v74 = v295;
        if (v295)
        {
          v75 = v296;
          v76 = v295;
          if (v296 == v295)
          {
            goto LABEL_195;
          }

          do
          {
            v77 = *--v75;
            *v75 = 0;
            if (v77)
            {
              operator delete[]();
            }
          }

          while (v75 != v74);
LABEL_194:
          v76 = v295;
          goto LABEL_195;
        }

LABEL_196:
        if (v288 != &v289)
        {
          free(v288);
        }
      }

LABEL_198:
      if (!v70)
      {
        goto LABEL_461;
      }

      goto LABEL_199;
    }

    v57 = a1[76];
    if (v259 >= v57)
    {
      v260 = "Properties offset out-of-bound for ";
      v262 = 259;
      (*(v246 + 16))(__src, &v246, &v260);
      *v254 = *(v33 + 8);
      v80 = mlir::StringAttr::getValue(v254);
      if (*__src)
      {
        WORD4(v255) = 261;
        *v254 = v80;
        *&v254[8] = v81;
        mlir::Diagnostic::operator<<(&__src[8], v254);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 != 1)
      {
        goto LABEL_198;
      }

      if (v299 != &v300)
      {
        free(v299);
      }

      v82 = v297;
      if (v297)
      {
        v83 = v298;
        v84 = v297;
        if (v298 != v297)
        {
          do
          {
            v83 = sub_100052FFC(v83 - 1);
          }

          while (v83 != v82);
          v84 = v297;
        }

        v298 = v82;
        operator delete(v84);
      }

      v74 = v295;
      if (!v295)
      {
        goto LABEL_196;
      }

      v85 = v296;
      v76 = v295;
      if (v296 != v295)
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

        while (v85 != v74);
        goto LABEL_194;
      }

LABEL_195:
      v296 = v74;
      operator delete(v76);
      goto LABEL_196;
    }

    v58 = *(a1[77] + 8 * v259);
    *v254 = a1[75] + v58;
    *&v254[8] = v57 - v58;
    *&v254[16] = *v254;
    *&v255 = v56;
    *&__src[8] = *v247;
    v288 = v248;
    *__src = off_1002B5B78;
    v289 = v254;
    v290 = v250;
    v252[0] = 0;
    v260 = 0;
    v261 = 0;
    if ((sub_10009A774(v254, v252) & 1) == 0 || (sub_10009ED44(v289, v252[0], &v260) & 1) == 0)
    {
      goto LABEL_461;
    }

    v258[0] = v260;
    v258[1] = v261;
    v258[2] = v260;
    v258[3] = v56;
    *&v254[8] = *v247;
    v255 = v248;
    *v254 = off_1002B5B78;
    v256 = v258;
    v257 = v250;
    {
      v59 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v60 = *(v33 + 32);
      v61 = *(v33 + 40);
      if (!v61)
      {
        goto LABEL_175;
      }
    }

    else
    {
      sub_1002797C8();
      v59 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id;
      v60 = *(v33 + 32);
      v61 = *(v33 + 40);
      if (!v61)
      {
        goto LABEL_175;
      }
    }

    v62 = v60;
    v63 = v61;
    do
    {
      v64 = v63 >> 1;
      v65 = &v62[2 * (v63 >> 1)];
      v67 = *v65;
      v66 = (v65 + 2);
      v63 += ~(v63 >> 1);
      if (v67 < v59)
      {
        v62 = v66;
      }

      else
      {
        v63 = v64;
      }
    }

    while (v63);
    if (v62 != &v60[2 * v61] && *v62 == v59)
    {
      v188 = v62[1];
      if (v188)
      {
        if (((*v188)(v254, v263) & 1) == 0)
        {
          goto LABEL_461;
        }

        goto LABEL_199;
      }
    }

LABEL_175:
    if (*(v33 + 16) != &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v252[0] = "has properties but missing BytecodeOpInterface for ";
      v253 = 259;
      sub_10009FFFC(v254, v252, __src);
      v260 = *(v33 + 8);
      v87 = mlir::StringAttr::getValue(&v260);
      if (*__src)
      {
        v262 = 261;
        v260 = v87;
        v261 = v88;
        mlir::Diagnostic::operator<<(&__src[8], &v260);
      }

      v70 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
      if (*__src)
      {
        mlir::InFlightDiagnostic::report(__src);
      }

      if (v300 != 1)
      {
        goto LABEL_198;
      }

      if (v299 != &v300)
      {
        free(v299);
      }

      v89 = v297;
      if (v297)
      {
        v90 = v298;
        v91 = v297;
        if (v298 != v297)
        {
          do
          {
            v90 = sub_100052FFC(v90 - 1);
          }

          while (v90 != v89);
          v91 = v297;
        }

        v298 = v89;
        operator delete(v91);
      }

      v74 = v295;
      if (!v295)
      {
        goto LABEL_196;
      }

      v92 = v296;
      v76 = v295;
      if (v296 != v295)
      {
        do
        {
          v93 = *--v92;
          *v92 = 0;
          if (v93)
          {
            operator delete[]();
          }
        }

        while (v92 != v74);
        goto LABEL_194;
      }

      goto LABEL_195;
    }

    v171 = *&v254[8];
    *__src = 0;
    if ((sub_10009A774(v256, __src) & 1) == 0)
    {
      goto LABEL_461;
    }

    if (!sub_1000A10F4(v171, *__src))
    {
      goto LABEL_461;
    }

LABEL_199:
    if ((v35 & 2) != 0)
    {
      *v254 = 0;
      if ((sub_10009A774(v9, v254) & 1) == 0)
      {
        goto LABEL_461;
      }

      v121 = *v254;
      v122 = v269;
      if (*v254 == v269)
      {
        v123 = v244;
        if (*v254 >= 1)
        {
          goto LABEL_274;
        }
      }

      else
      {
        v123 = v244;
        if (*v254 >= v269)
        {
          if (*v254 > v270)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v268, &v271, *v254, 8);
            v122 = v269;
          }

          if (v121 != v122)
          {
            bzero((v268 + 8 * v122), 8 * (v121 - v122));
          }
        }

        v269 = v121;
        if (v121 >= 1)
        {
LABEL_274:
          v127 = 0;
          v128 = v121 & 0x7FFFFFFF;
          do
          {
            v129 = v268;
            *__src = 0;
            if ((sub_10009A774(v9, __src) & 1) == 0)
            {
              goto LABEL_461;
            }

            v130 = sub_1000A2044(v123, *__src);
            *(v129 + 8 * v127) = v130;
            if (!v130)
            {
              goto LABEL_461;
            }
          }

          while (v128 != ++v127);
        }
      }
    }

    v7 = v244;
    if ((v35 & 4) != 0)
    {
      v252[0] = 0;
      if ((sub_10009A774(v9, v252) & 1) == 0)
      {
        goto LABEL_461;
      }

      v94 = v252[0];
      v95 = v265;
      if (v252[0] != v265)
      {
        if (v252[0] >= v265)
        {
          if (v252[0] > HIDWORD(v265))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v264, &v266, v252[0], 8);
            v95 = v265;
          }

          if (v94 != v95)
          {
            bzero(&v264[v95], 8 * (v94 - v95));
          }
        }

        LODWORD(v265) = v94;
      }

      if (v94 >= 1)
      {
        v96 = 0;
        v97 = v94 & 0x7FFFFFFF;
        while (1)
        {
          v98 = a1[86];
          v260 = 0;
          if ((sub_10009A774(v9, &v260) & 1) == 0)
          {
            goto LABEL_460;
          }

          v99 = v260;
          v100 = v9[3];
          v102 = *(v98 - 7);
          v101 = *(v98 - 6);
          *v254 = "value";
          *&v254[8] = 5;
          v246 = v260;
          if (v260 >= (v101 - v102) >> 3)
          {
            break;
          }

          v103 = *(v102 + 8 * v260);
          if (v103)
          {
            v264[v96] = v103;
          }

          else
          {
            ForwardRef = mlir::BytecodeReader::Impl::createForwardRef(a1);
            *(v102 + 8 * v99) = ForwardRef;
            v264[v96] = ForwardRef;
            if (!ForwardRef)
            {
              goto LABEL_461;
            }
          }

          if (v97 == ++v96)
          {
            goto LABEL_218;
          }
        }

        sub_10009FB7C(__src, v100, v254, &v246);
        mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
        if (*__src)
        {
          mlir::InFlightDiagnostic::report(__src);
        }

        if (v300 == 1)
        {
          if (v299 != &v300)
          {
            free(v299);
          }

          v209 = v297;
          if (v297)
          {
            v210 = v298;
            v211 = v297;
            if (v298 != v297)
            {
              do
              {
                v210 = sub_100052FFC(v210 - 1);
              }

              while (v210 != v209);
              v211 = v297;
            }

            v298 = v209;
            operator delete(v211);
          }

          v212 = v295;
          if (v295)
          {
            v213 = v296;
            v214 = v295;
            if (v296 != v295)
            {
              do
              {
                v215 = *--v213;
                *v213 = 0;
                if (v215)
                {
                  operator delete[]();
                }
              }

              while (v213 != v212);
              v214 = v295;
            }

            v296 = v212;
            operator delete(v214);
          }

          if (v288 != &v289)
          {
            free(v288);
          }
        }

LABEL_460:
        v264[v96] = 0;
        goto LABEL_461;
      }
    }

LABEL_218:
    if ((v35 & 8) != 0)
    {
      v252[0] = 0;
      if ((sub_10009A774(v9, v252) & 1) == 0)
      {
        goto LABEL_461;
      }

      v105 = v252[0];
      v106 = v282;
      if (v252[0] != v282)
      {
        if (v252[0] >= v282)
        {
          if (v252[0] > v283)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v281, &v284, v252[0], 8);
            v106 = v282;
          }

          if (v105 != v106)
          {
            bzero((v281 + 8 * v106), 8 * (v105 - v106));
          }
        }

        v282 = v105;
      }

      if (v105 >= 1)
      {
        v107 = 0;
        v108 = v105 & 0x7FFFFFFF;
        do
        {
          v109 = v281;
          v260 = 0;
          if ((sub_10009A774(v9, &v260) & 1) == 0)
          {
            goto LABEL_461;
          }

          v110 = v9[3];
          v111 = *(a3 + 40);
          v112 = *(a3 + 48);
          *v254 = "successor";
          *&v254[8] = 9;
          v246 = v260;
          if (v260 < v112)
          {
            *(v109 + 8 * v107) = *(v111 + 8 * v260);
          }

          else
          {
            sub_10009FB7C(__src, v110, v254, &v246);
            v113 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(__src);
            if (*__src)
            {
              mlir::InFlightDiagnostic::report(__src);
            }

            if (v300 == 1)
            {
              if (v299 != &v300)
              {
                free(v299);
              }

              v114 = v297;
              if (v297)
              {
                v115 = v298;
                v116 = v297;
                if (v298 != v297)
                {
                  do
                  {
                    v115 = sub_100052FFC(v115 - 1);
                  }

                  while (v115 != v114);
                  v116 = v297;
                }

                v298 = v114;
                operator delete(v116);
              }

              v117 = v295;
              if (v295)
              {
                v118 = v296;
                v119 = v295;
                if (v296 != v295)
                {
                  do
                  {
                    v120 = *--v118;
                    *v118 = 0;
                    if (v120)
                    {
                      operator delete[]();
                    }
                  }

                  while (v118 != v117);
                  v119 = v295;
                }

                v296 = v117;
                operator delete(v119);
              }

              if (v288 != &v289)
              {
                free(v288);
              }
            }

            if (!v113)
            {
              goto LABEL_461;
            }
          }
        }

        while (++v107 != v108);
      }
    }

    v124 = *v243 > 2 && (v35 >> 5) & 1;
    if (v124)
    {
      sub_1000A460C(__src, v9, v269);
      if ((v288 & 1) == 0)
      {
        goto LABEL_461;
      }

      v245 = *__src;
      v237 = *&__src[16];
      llvm::deallocate_buffer(0, 0, 8uLL);
      if ((v35 & 0x10) == 0)
      {
LABEL_280:
        v125 = 0;
        v11 = v239;
        goto LABEL_281;
      }
    }

    else
    {
      v245 &= 0xFFFFFFFFFFFFFF00;
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_280;
      }
    }

    *__src = 0;
    if ((sub_10009A774(v9, __src) & 1) == 0)
    {
      v125 = 0;
      v131 = 0;
      v162 = 0;
      v11 = v239;
      if (!v124)
      {
        goto LABEL_341;
      }

      goto LABEL_323;
    }

    v125 = __src[0];
    v126 = *__src >> 1;
    sub_1000A49AC(&v285, *__src >> 1);
    v11 = v239;
    if (v126 >= 1)
    {
      operator new();
    }

LABEL_281:
    v131 = mlir::Operation::create(v263);
    v132 = *(a3 + 104);
    if (v132)
    {
      v133 = v132 - 8;
    }

    else
    {
      v133 = 0;
    }

    llvm::ilist_traits<mlir::Operation>::addNodeToList(v133 + 32, v131);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v131);
    v135 = *(v133 + 32);
    *NodePtr = v135;
    NodePtr[1] = v133 + 32;
    *(v135 + 8) = NodePtr;
    *(v133 + 32) = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v131);
    if (*(a3 + 32))
    {
      v136 = v131[9];
      if (v136)
      {
        mlir::ValueRange::ValueRange(__src, (v131 - 4), v136);
        if ((sub_1000A4B14(a1, v9[3], *__src, *&__src[8]) & 1) == 0)
        {
          v131 = 0;
          v162 = 0;
          if (!v124)
          {
            goto LABEL_341;
          }

LABEL_323:
          v163 = v237;
          if (!v237)
          {
LABEL_335:
            v237 = 0;
            v170 = 0;
LABEL_340:
            llvm::deallocate_buffer(v245, v170, 8uLL);
            goto LABEL_341;
          }

LABEL_324:
          v164 = v125;
          v165 = v11;
          v166 = v163;
          v167 = 48 * v163;
          v168 = (v245 + 24);
          do
          {
            if (*(v168 - 6) <= 0xFFFFFFFD)
            {
              v169 = *(v168 - 2);
              if (v168 != v169)
              {
                free(v169);
              }
            }

            v168 += 48;
            v167 -= 48;
          }

          while (v167);
          v170 = 48 * v166;
          v11 = v165;
          v125 = v164;
          v7 = v244;
          goto LABEL_340;
        }
      }
    }

    if (!v124)
    {
      mlir::OperationState::~OperationState(v263);
      goto LABEL_342;
    }

    v137 = v131[9];
    if (!v137)
    {
      v162 = 1;
      v163 = v237;
      if (!v237)
      {
        goto LABEL_335;
      }

      goto LABEL_324;
    }

    if (!v237)
    {
      v237 = 0;
      v170 = 0;
      v162 = 1;
      goto LABEL_340;
    }

    v138 = v11;
    v139 = 0;
    v140 = v237 - 1;
    do
    {
      v146 = (37 * v139) & v140;
      v147 = (v245 + 48 * v146);
      v148 = *v147;
      if (*v147 == v139)
      {
LABEL_294:
        v149 = &v131[-6 * (v139 - 5) - 24];
        if (v139 <= 5)
        {
          v149 = &v131[4 * ~v139];
        }

        *__src = v149;
        if (v148 != v139)
        {
          v156 = 1;
          while (v148 != -1)
          {
            v157 = v146 + v156++;
            v146 = v157 & v140;
            v147 = (v245 + 48 * (v157 & v140));
            v148 = *v147;
            if (*v147 == v139)
            {
              goto LABEL_297;
            }
          }

          v147 = (v245 + 48 * v237);
        }

LABEL_297:
        v150 = *(a1 + 132);
        if (v150)
        {
          v141 = a1[64];
          v142 = v150 - 1;
          v143 = v142 & ((v149 >> 4) ^ (v149 >> 9));
          v144 = &v141[6 * v143];
          v145 = *v144;
          if (v149 == *v144)
          {
            goto LABEL_292;
          }

          v158 = 0;
          v159 = 1;
          while (v145 != -4096)
          {
            if (v158)
            {
              v160 = 0;
            }

            else
            {
              v160 = v145 == -8192;
            }

            if (v160)
            {
              v158 = v144;
            }

            v161 = v143 + v159++;
            v143 = v161 & v142;
            v144 = &v141[6 * v143];
            v145 = *v144;
            if (v149 == *v144)
            {
              goto LABEL_292;
            }
          }

          if (v158)
          {
            v151 = v158;
          }

          else
          {
            v151 = v144;
          }
        }

        else
        {
          v151 = 0;
        }

        sub_1000A5E6C(a1 + 64, v151, __src, (v147 + 2));
        v137 = v131[9];
      }

      else
      {
        v152 = 1;
        v153 = *v147;
        v154 = (37 * v139) & v140;
        while (v153 != -1)
        {
          v155 = v154 + v152++;
          v154 = v155 & v140;
          v153 = *(v245 + 48 * v154);
          if (v153 == v139)
          {
            goto LABEL_294;
          }
        }
      }

LABEL_292:
      ++v139;
    }

    while (v139 < v137);
    v162 = 1;
    v7 = v244;
    v11 = v138;
    if (v124)
    {
      goto LABEL_323;
    }

LABEL_341:
    mlir::OperationState::~OperationState(v263);
    if (!v162)
    {
      return 0;
    }

LABEL_342:
    v172 = v131[11];
    if ((v172 & 0x7FFFFF) != 0)
    {
      break;
    }

    v5 = a2;
    v194 = *(a3 + 112);
    *(a3 + 112) = v194 - 1;
    if (!v194)
    {
      goto LABEL_400;
    }
  }

  *__src = ((&v131[4 * ((v172 >> 23) & 1) + 17] + ((v172 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v131[10];
  *&__src[8] = *__src + 24 * (v172 & 0x7FFFFF);
  *&__src[16] = v9;
  *&v288 = 0;
  DWORD2(v288) = 0;
  v289 = v291;
  v290 = 0x600000000;
  v293 = 0uLL;
  v294 = v125 & 1;
  if (*v243 < 2 || (v125 & 1) == 0)
  {
    v173 = a2[1];
    if (v173 >= a2[2])
    {
      a2[1] = sub_1000A6B4C(a2, __src);
      if (v125)
      {
LABEL_383:
        v191 = a1[86];
        if (v191 >= a1[87])
        {
          v192 = sub_1000A68A8(a1 + 85);
        }

        else
        {
          *(v191 + 1) = 0u;
          *(v191 + 2) = 0u;
          v191[6] = 0;
          *v191 = 0u;
          v191[3] = v191 + 5;
          v192 = (v191 + 7);
          *(v191 + 9) = 4;
        }

        a1[86] = v192;
      }

LABEL_387:
      v179 = 1;
      goto LABEL_388;
    }

    v174 = *__src;
    *(v173 + 16) = *&__src[16];
    *v173 = v174;
    v175 = v288;
    *&v288 = 0;
    *(v173 + 24) = v175;
    *(v173 + 32) = DWORD2(v288);
    v176 = (v173 + 56);
    *(v173 + 40) = v173 + 56;
    *(v173 + 48) = 0x600000000;
    if (v173 == __src || (v177 = v290) == 0)
    {
LABEL_382:
      v190 = v293;
      *(v173 + 120) = v294;
      *(v173 + 104) = v190;
      a2[1] = v173 + 128;
      if (v125)
      {
        goto LABEL_383;
      }

      goto LABEL_387;
    }

    v178 = v289;
    if (v289 != v291)
    {
      *(v173 + 40) = v289;
      *(v173 + 48) = v177;
      *(v173 + 52) = HIDWORD(v290);
      v289 = v291;
      HIDWORD(v290) = 0;
LABEL_381:
      LODWORD(v290) = 0;
      goto LABEL_382;
    }

    if (v290 < 7)
    {
      v189 = v290;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v173 + 40, (v173 + 56), v290, 8);
      v189 = v290;
      if (!v290)
      {
LABEL_380:
        *(v173 + 48) = v177;
        goto LABEL_381;
      }

      v178 = v289;
      v176 = *(v173 + 40);
    }

    memcpy(v176, v178, 8 * v189);
    goto LABEL_380;
  }

  LOBYTE(v260) = 0;
  v246 = 0;
  v247[0] = 0;
  if (sub_1000978A4(v9, &v260, &v246))
  {
    if (v260 == 4)
    {
      operator new();
    }

    v180 = a1[1];
    *v254 = "expected IR section for region";
    WORD4(v255) = 259;
    mlir::emitError(v180, v254, v263);
    v179 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v263);
    if (v263[0])
    {
      mlir::InFlightDiagnostic::report(v263);
    }

    if (v281 == 1)
    {
      if (v279 != &v281)
      {
        free(v279);
      }

      v181 = __p;
      if (__p)
      {
        v182 = v278;
        v183 = __p;
        if (v278 != __p)
        {
          do
          {
            v182 = sub_100052FFC(v182 - 1);
          }

          while (v182 != v181);
          v183 = __p;
        }

        v278 = v181;
        operator delete(v183);
      }

      v184 = v275;
      if (v275)
      {
        v185 = v276;
        v186 = v275;
        if (v276 != v275)
        {
          do
          {
            v187 = *--v185;
            *v185 = 0;
            if (v187)
            {
              operator delete[]();
            }
          }

          while (v185 != v184);
          v186 = v275;
        }

        v276 = v184;
        operator delete(v186);
      }

      if (v265 != v267)
      {
        free(v265);
      }
    }
  }

  else
  {
    v179 = 0;
  }

LABEL_388:
  if (v289 != v291)
  {
    free(v289);
  }

  v193 = v288;
  *&v288 = 0;
  if (v193)
  {
    operator delete();
  }

  return v179;
}

void sub_10009D7D8(uint64_t a1, uint64_t a2, const char *a3)
{
  mlir::emitError(a2, v20);
  if (v20[0])
  {
    v17 = 3;
    v18 = a3;
    v19 = strlen(a3);
    v5 = &v17;
    v6 = v21;
    if (v22 >= v23)
    {
      if (v21 <= &v17 && v21 + 24 * v22 > &v17)
      {
        v16 = &v17 - v21;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v6 = v21;
        v5 = (v21 + v16);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v24, v22 + 1, 24);
        v5 = &v17;
        v6 = v21;
      }
    }

    v7 = &v6[24 * v22];
    v8 = *v5;
    *(v7 + 2) = *(v5 + 2);
    *v7 = v8;
    ++v22;
  }

  sub_100062C04(a1, v20);
  if (v20[0])
  {
    mlir::InFlightDiagnostic::report(v20);
  }

  if (v30 == 1)
  {
    if (v29 != &v30)
    {
      free(v29);
    }

    v9 = __p;
    if (__p)
    {
      v10 = v28;
      v11 = __p;
      if (v28 != __p)
      {
        do
        {
          v10 = sub_100052FFC(v10 - 1);
        }

        while (v10 != v9);
        v11 = __p;
      }

      v28 = v9;
      operator delete(v11);
    }

    v12 = v25;
    if (v25)
    {
      v13 = v26;
      v14 = v25;
      if (v26 != v25)
      {
        do
        {
          v15 = *--v13;
          *v13 = 0;
          if (v15)
          {
            operator delete[]();
          }
        }

        while (v13 != v12);
        v14 = v25;
      }

      v26 = v12;
      operator delete(v14);
    }

    if (v21 != v24)
    {
      free(v21);
    }
  }
}

uint64_t sub_10009D9F4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a4 != a5 && a2 != a5)
  {
    result = llvm::ilist_traits<mlir::Operation>::transferNodesFromList(result, a3, a4, a5);
    v8 = *a5;
    v9 = *a4;
    *(v9 + 8) = a5;
    *a5 = v9;
    v10 = *a2;
    *(v8 + 8) = a2;
    *a4 = v10;
    *(v10 + 8) = a4;
    *a2 = v8;
  }

  return result;
}

uint64_t mlir::BytecodeReader::Impl::parseRegion(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v7 = 0;
  if ((sub_10009A774(v3, &v7) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  if (v7)
  {
    v6 = 0;
    if (sub_10009A774(v3, &v6))
    {
      *(a2 + 32) = v6;
      *(a2 + 48) = 0;
      if (v4 > *(a2 + 52))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 40, (a2 + 56), v4, 8);
      }

      operator new();
    }

    return 0;
  }

  return 1;
}

uint64_t mlir::BytecodeReader::Impl::createForwardRef(mlir::BytecodeReader::Impl *this)
{
  v2 = this + 832;
  v3 = *(this + 104);
  v4 = (this + 760);
  if (v3 == v2)
  {
    v6 = mlir::Operation::create(this + 872);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(this + 760, v6);
    NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6);
    v8 = *(this + 95);
    *NodePtr = v8;
    NodePtr[1] = v4;
    *(v8 + 8) = NodePtr;
    *(this + 95) = NodePtr;
    llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(v6);
  }

  else
  {
    ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v3);
    mlir::Operation::moveBefore(ValuePtr, (this + 728), this + 95);
  }

  return llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(*v4) - 16;
}

BOOL mlir::readBytecodeFile(_OWORD *a1, uint64_t a2, mlir::StringAttr **a3)
{
  v3 = a1[1];
  v9[0] = *a1;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  result = sub_10009DDDC(v9, a2, a3, &v7);
  v5 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

BOOL sub_10009DDDC(uint64_t a1, uint64_t a2, mlir::StringAttr **a3, uint64_t a4)
{
  v8 = mlir::FileLineColLoc::get(*a3, *(a1 + 16), *(a1 + 24), 0, 0);
  if (*(a1 + 8) >= 4uLL && **a1 == 1391414349)
  {
    v17 = *(a1 + 16);
    v20[0] = *a1;
    v20[1] = v17;
    sub_1000A62D8(v22, v8, a3, 0, v20, a4);
    v9 = mlir::BytecodeReader::Impl::read(v22, a2, 0, v18);
    sub_1000A6508(v22);
  }

  else
  {
    *&v20[0] = "input buffer is not an MLIR bytecode file";
    v21 = 259;
    mlir::emitError(v8, v20, v22);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v22);
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

      v10 = __p;
      if (__p)
      {
        v11 = v28;
        v12 = __p;
        if (v28 != __p)
        {
          do
          {
            v11 = sub_100052FFC(v11 - 1);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v28 = v10;
        operator delete(v12);
      }

      v13 = v25;
      if (v25)
      {
        v14 = v26;
        v15 = v25;
        if (v26 != v25)
        {
          do
          {
            v16 = *--v14;
            *v14 = 0;
            if (v16)
            {
              operator delete[]();
            }
          }

          while (v14 != v13);
          v15 = v25;
        }

        v26 = v13;
        operator delete(v15);
      }

      if (v23 != &v24)
      {
        free(v23);
      }
    }
  }

  return v9;
}

uint64_t sub_10009DFD4(uint64_t a1, char *__s, char **a3, char *a4, char **a5, char *a6)
{
  v12 = strlen(__s);
  v13 = a1;
  v16 = *(a1 + 16);
  v15 = a1 + 16;
  v14 = v16;
  v35 = 3;
  v36 = __s;
  v37 = v12;
  v17 = *(v15 + 8);
  v18 = &v35;
  if (v17 >= *(v15 + 12))
  {
    if (v14 <= &v35 && v14 + 24 * v17 > &v35)
    {
      v31 = &v35 - v14;
      v32 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v32;
      v14 = *(v32 + 16);
      v18 = &v31[v14];
    }

    else
    {
      v29 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v17 + 1, 24);
      v13 = v29;
      v14 = *(v29 + 16);
      v18 = &v35;
    }
  }

  v19 = v14 + 24 * *(v13 + 24);
  v20 = *v18;
  *(v19 + 16) = *(v18 + 2);
  *v19 = v20;
  v21 = *(v13 + 28);
  v22 = (*(v13 + 24) + 1);
  *(v13 + 24) = v22;
  v23 = *a3;
  v35 = 5;
  v36 = v23;
  v24 = *(v13 + 16);
  v25 = &v35;
  if (v22 >= v21)
  {
    if (v24 <= &v35 && v24 + 24 * v22 > &v35)
    {
      v33 = &v35 - v24;
      v34 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v34;
      v24 = *(v34 + 16);
      v25 = &v33[v24];
    }

    else
    {
      v30 = v13;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v15, (v13 + 32), v22 + 1, 24);
      v13 = v30;
      v24 = *(v30 + 16);
      v25 = &v35;
    }
  }

  v26 = v24 + 24 * *(v13 + 24);
  v27 = *v25;
  *(v26 + 16) = *(v25 + 2);
  *v26 = v27;
  ++*(v13 + 24);
  return sub_10009E1C0(v13, a4, a5, a6);
}

uint64_t sub_10009E1C0(uint64_t a1, char *__s, char **a3, char *a4)
{
  v8 = strlen(__s);
  v9 = a1;
  v10 = a1 + 16;
  v11 = *(a1 + 16);
  v19 = 3;
  v20 = __s;
  v21 = v8;
  v12 = *(a1 + 24);
  v13 = &v19;
  if (v12 >= *(a1 + 28))
  {
    if (v11 <= &v19 && v11 + 24 * v12 > &v19)
    {
      v17 = &v19 - v11;
      v18 = v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v10, (v9 + 32), v12 + 1, 24);
      v9 = v18;
      v11 = *(v18 + 16);
      v13 = &v17[v11];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v12 + 1, 24);
      v9 = a1;
      v11 = *(a1 + 16);
      v13 = &v19;
    }
  }

  v14 = v11 + 24 * *(v9 + 24);
  v15 = *v13;
  *(v14 + 16) = *(v13 + 2);
  *v14 = v15;
  ++*(v9 + 24);
  return sub_10009E2D8(v9, a3, a4);
}

uint64_t sub_10009E2D8(uint64_t a1, char **a2, char *__s)
{
  v6 = a1 + 16;
  v5 = *(a1 + 16);
  v7 = *a2;
  v21 = 5;
  v22 = v7;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v5 <= &v21 && v5 + 24 * v8 > &v21)
    {
      v19 = &v21 - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v19[v5];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v5 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v5 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  v12 = (*(a1 + 24) + 1);
  *(a1 + 24) = v12;
  v13 = strlen(__s);
  v21 = 3;
  v22 = __s;
  v23 = v13;
  v14 = *(a1 + 16);
  v15 = &v21;
  if (v12 >= *(a1 + 28))
  {
    if (v14 <= &v21 && v14 + 24 * v12 > &v21)
    {
      v20 = &v21 - v14;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v20[v14];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (a1 + 32), v12 + 1, 24);
      v14 = *(a1 + 16);
      v15 = &v21;
    }
  }

  v16 = v14 + 24 * *(a1 + 24);
  v17 = *v15;
  *(v16 + 16) = *(v15 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

uint64_t sub_10009E478(void *a1, _BYTE *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_10009D7D8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
    if (v12[0])
    {
      mlir::InFlightDiagnostic::report(v12);
    }

    if (v20 == 1)
    {
      if (v19 != &v20)
      {
        free(v19);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_100052FFC(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

uint64_t sub_10009E604(void *a1, int a2)
{
  v3 = (a2 - 1);
  if ((a2 ^ v3) > v3)
  {
    do
    {
      if ((v3 & a1[2]) == 0)
      {
        return 1;
      }

      v52 = 0;
      if ((sub_10009E478(a1, &v52) & 1) == 0)
      {
        return 0;
      }

      v4 = v52;
    }

    while (v52 == 203);
    if (v52)
    {
      v5 = 16;
      do
      {
        v64[v5-- - 8] = a0123456789abcd_3[v4 & 0xF];
        v6 = v4 > 0xF;
        v4 >>= 4;
      }

      while (v6);
      v7 = v5 + 1;
      v8 = 16 - v5;
      if ((16 - v5) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10002BC08();
      }
    }

    else
    {
      v64[8] = 48;
      v7 = 16;
      v8 = 1;
    }

    if (v8 > 0x16)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v8;
    if (v7 != 17)
    {
      memcpy(&__dst, &v64[v7 - 8], v8);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v28 = std::string::insert(&__dst, 0, "expected alignment byte (0xCB), but got: '0x");
    v29 = v28->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v49, "'");
    v31 = v30->__r_.__value_.__r.__words[2];
    *v50 = *&v30->__r_.__value_.__l.__data_;
    v51 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    mlir::emitError(a1[3], &v63);
    if (v63)
    {
      v55 = 260;
      v53[0] = v50;
      mlir::Diagnostic::operator<<(v64, v53);
    }

    sub_100062C04(v53, &v63);
    if (v63)
    {
      mlir::InFlightDiagnostic::report(&v63);
    }

    if (v74 == 1)
    {
      if (v73 != &v74)
      {
        free(v73);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v72;
        v34 = __p;
        if (v72 != __p)
        {
          do
          {
            v33 = sub_100052FFC(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v72 = v32;
        operator delete(v34);
      }

      v35 = v69;
      if (v69)
      {
        v36 = v70;
        v37 = v69;
        if (v70 != v69)
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
          v37 = v69;
        }

        v70 = v35;
        operator delete(v37);
      }

      if (v65 != v68)
      {
        free(v65);
      }
    }

    v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
    if (v53[0])
    {
      mlir::InFlightDiagnostic::report(v53);
    }

    if (v62 == 1)
    {
      if (v61 != &v62)
      {
        free(v61);
      }

      v39 = v59;
      if (v59)
      {
        v40 = v60;
        v41 = v59;
        if (v60 != v59)
        {
          do
          {
            v40 = sub_100052FFC(v40 - 1);
          }

          while (v40 != v39);
          v41 = v59;
        }

        v60 = v39;
        operator delete(v41);
      }

      v42 = v57;
      if (v57)
      {
        v43 = v58;
        v44 = v57;
        if (v58 != v57)
        {
          do
          {
            v45 = *--v43;
            *v43 = 0;
            if (v45)
            {
              operator delete[]();
            }
          }

          while (v43 != v42);
          v44 = v57;
        }

        v58 = v42;
        operator delete(v44);
      }

      if (v54 != v56)
      {
        free(v54);
      }
    }

    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
      if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_105:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return v20;
        }

LABEL_109:
        operator delete(__dst.__r_.__value_.__l.__data_);
        return v20;
      }
    }

    else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

    operator delete(v49.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v20;
    }

    goto LABEL_109;
  }

  mlir::emitError(a1[3], &v63);
  if (v63)
  {
    LODWORD(v53[0]) = 3;
    v53[1] = "expected alignment to be a power-of-two";
    v53[2] = 39;
    v9 = v53;
    v10 = v65;
    if (v66 >= v67)
    {
      if (v65 <= v53 && v65 + 24 * v66 > v53)
      {
        v47 = v53 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v10 = v65;
        v9 = (v65 + v47);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v9 = v53;
        v10 = v65;
      }
    }

    v11 = &v10[24 * v66];
    v12 = *v9;
    *(v11 + 2) = v9[2];
    *v11 = v12;
    ++v66;
  }

  sub_100062C04(v53, &v63);
  if (v63)
  {
    mlir::InFlightDiagnostic::report(&v63);
  }

  if (v74 == 1)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v72;
      v15 = __p;
      if (v72 != __p)
      {
        do
        {
          v14 = sub_100052FFC(v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v72 = v13;
      operator delete(v15);
    }

    v16 = v69;
    if (v69)
    {
      v17 = v70;
      v18 = v69;
      if (v70 != v69)
      {
        do
        {
          v19 = *--v17;
          *v17 = 0;
          if (v19)
          {
            operator delete[]();
          }
        }

        while (v17 != v16);
        v18 = v69;
      }

      v70 = v16;
      operator delete(v18);
    }

    if (v65 != v68)
    {
      free(v65);
    }
  }

  v20 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v53);
  if (v53[0])
  {
    mlir::InFlightDiagnostic::report(v53);
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
    }

    v21 = v59;
    if (v59)
    {
      v22 = v60;
      v23 = v59;
      if (v60 != v59)
      {
        do
        {
          v22 = sub_100052FFC(v22 - 1);
        }

        while (v22 != v21);
        v23 = v59;
      }

      v60 = v21;
      operator delete(v23);
    }

    v24 = v57;
    if (v57)
    {
      v25 = v58;
      v26 = v57;
      if (v58 != v57)
      {
        do
        {
          v27 = *--v25;
          *v25 = 0;
          if (v27)
          {
            operator delete[]();
          }
        }

        while (v25 != v24);
        v26 = v57;
      }

      v58 = v24;
      operator delete(v26);
    }

    if (v54 != v56)
    {
      free(v54);
    }
  }

  return v20;
}

uint64_t sub_10009ED44(void *a1, char *a2, void *a3)
{
  v14 = a2;
  v3 = a1[2];
  if (*a1 + a1[1] - v3 >= a2)
  {
    *a3 = v3;
    a3[1] = a2;
    a1[2] += a2;
    return 1;
  }

  else
  {
    v13 = (*a1 + a1[1] - v3);
    sub_10009F09C(v15, a1[3], &v14, &v13);
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
            v6 = sub_100052FFC(v6 - 1);
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

__n128 sub_10009EEDC(uint64_t a1, char *__s, unsigned int *a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

void sub_10009F09C(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_10009DFD4(&v15, "attempting to parse ", a3, " bytes when only ", a4, " remain");
  }

  sub_100062C04(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
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
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_10009F230(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (*v5)++;
  v7 = *v4;
  v23 = 0;
  if ((sub_10009A774(*(a1 + 16), &v23) & 1) == 0)
  {
    return 0;
  }

  v8 = v7 + 40 * v6;
  v9 = v23;
  *(v8 + 16) = v23 & 1;
  v10 = v9 >> 1;
  v23 = v10;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *v11 + v10;
  if (v13 <= v12[1])
  {
    *(v8 + 24) = *v12 + *v11;
    *(v8 + 32) = v10;
    *(v8 + 8) = a2;
    *v11 = v13;
    return 1;
  }

  else
  {
    sub_10009D7D8(v24, *(*(a1 + 16) + 24), "Attribute or Type entry offset points past the end of section");
    v14 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
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

      v15 = __p;
      if (__p)
      {
        v16 = v30;
        v17 = __p;
        if (v30 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v30 = v15;
        operator delete(v17);
      }

      v18 = v27;
      if (v27)
      {
        v19 = v28;
        v20 = v27;
        if (v28 != v27)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v27;
        }

        v28 = v18;
        operator delete(v20);
      }

      if (v25 != &v26)
      {
        free(v25);
      }
    }
  }

  return v14;
}

double sub_10009F41C(uint64_t a1, char *__s, char **a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1;
  v14 = *(a1 + 16);
  v13 = a1 + 16;
  v12 = v14;
  v33 = 3;
  v34 = __s;
  v35 = v10;
  v15 = *(v13 + 8);
  v16 = &v33;
  if (v15 >= *(v13 + 12))
  {
    if (v12 <= &v33 && v12 + 24 * v15 > &v33)
    {
      v29 = &v33 - v12;
      v30 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v30;
      v12 = *(v30 + 16);
      v16 = &v29[v12];
    }

    else
    {
      v27 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v15 + 1, 24);
      v11 = v27;
      v12 = *(v27 + 16);
      v16 = &v33;
    }
  }

  v17 = v12 + 24 * *(v11 + 24);
  v18 = *v16;
  *(v17 + 16) = *(v16 + 2);
  *v17 = v18;
  v19 = *(v11 + 28);
  v20 = (*(v11 + 24) + 1);
  *(v11 + 24) = v20;
  v21 = *a3;
  v33 = 5;
  v34 = v21;
  v22 = *(v11 + 16);
  v23 = &v33;
  if (v20 >= v19)
  {
    if (v22 <= &v33 && v22 + 24 * v20 > &v33)
    {
      v31 = &v33 - v22;
      v32 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v32;
      v22 = *(v32 + 16);
      v23 = &v31[v22];
    }

    else
    {
      v28 = v11;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v13, (v11 + 32), v20 + 1, 24);
      v11 = v28;
      v22 = *(v28 + 16);
      v23 = &v33;
    }
  }

  v24 = v22 + 24 * *(v11 + 24);
  v25 = *v23;
  *(v24 + 16) = *(v23 + 2);
  *v24 = v25;
  ++*(v11 + 24);
  *&result = sub_10009F5F8(v11, a4, a5).n128_u64[0];
  return result;
}

__n128 sub_10009F5F8(uint64_t a1, char *__s, char **a3)
{
  v6 = strlen(__s);
  v7 = a1;
  v10 = *(a1 + 16);
  v9 = a1 + 16;
  v8 = v10;
  v28 = 3;
  v29 = __s;
  v30 = v6;
  v11 = *(v9 + 8);
  v12 = &v28;
  if (v11 >= *(v9 + 12))
  {
    if (v8 <= &v28 && v8 + 24 * v11 > &v28)
    {
      v24 = &v28 - v8;
      v25 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v25;
      v8 = *(v25 + 16);
      v12 = &v24[v8];
    }

    else
    {
      v22 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v11 + 1, 24);
      v7 = v22;
      v8 = *(v22 + 16);
      v12 = &v28;
    }
  }

  v13 = v8 + 24 * *(v7 + 24);
  v14 = *v12;
  *(v13 + 16) = *(v12 + 2);
  *v13 = v14;
  v15 = *(v7 + 28);
  v16 = (*(v7 + 24) + 1);
  *(v7 + 24) = v16;
  v17 = *a3;
  v28 = 5;
  v29 = v17;
  v18 = *(v7 + 16);
  v19 = &v28;
  if (v16 >= v15)
  {
    if (v18 <= &v28 && v18 + 24 * v16 > &v28)
    {
      v26 = &v28 - v18;
      v27 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v27;
      v18 = *(v27 + 16);
      v19 = &v26[v18];
    }

    else
    {
      v23 = v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v9, (v7 + 32), v16 + 1, 24);
      v7 = v23;
      v18 = *(v23 + 16);
      v19 = &v28;
    }
  }

  v20 = (v18 + 24 * *(v7 + 24));
  result = *v19;
  v20[1].n128_u64[0] = v19[1].n128_u64[0];
  *v20 = result;
  ++*(v7 + 24);
  return result;
}

BOOL sub_10009F7B8(void *a1, size_t __n, void *__dst)
{
  v16 = __n;
  v5 = a1[2];
  if (*a1 + a1[1] - v5 >= __n)
  {
    memcpy(__dst, v5, __n);
    a1[2] += __n;
    return 1;
  }

  else
  {
    v15 = (*a1 + a1[1] - v5);
    sub_10009F09C(v17, a1[3], &v16, &v15);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v17);
    if (v17[0])
    {
      mlir::InFlightDiagnostic::report(v17);
    }

    if (v25 == 1)
    {
      if (v24 != &v25)
      {
        free(v24);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v23;
        v9 = __p;
        if (v23 != __p)
        {
          do
          {
            v8 = sub_100052FFC(v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v23 = v7;
        operator delete(v9);
      }

      v10 = v20;
      if (v20)
      {
        v11 = v21;
        v12 = v20;
        if (v21 != v20)
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
          v12 = v20;
        }

        v21 = v10;
        operator delete(v12);
      }

      if (v18 != &v19)
      {
        free(v18);
      }
    }
  }

  return v6;
}

uint64_t sub_10009F960(void *a1, unint64_t *a2)
{
  v3 = __clz(__rbit32(*a2));
  v5 = *a2;
  if (!sub_10009F7B8(a1, v3, &v5 + 1))
  {
    return 0;
  }

  *a2 = v5 >> (v3 + 1);
  return 1;
}

uint64_t sub_10009F9F4(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v17[0] = a6;
  v17[1] = a7;
  v16 = a4;
  if (a3 <= a4)
  {
    sub_10009FB7C(v18, a1, v17, &v16);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
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
            v9 = sub_100052FFC(v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v24 = v8;
        operator delete(v10);
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
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  else
  {
    *a5 = *(a2 + 16 * a4);
    return 1;
  }

  return v7;
}

void sub_10009FB7C(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_10009FD08(&v15, "invalid ", a3, " index: ", a4);
  }

  sub_100062C04(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
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
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

double sub_10009FD08(uint64_t a1, char *__s, uint64_t a3, char *a4, char **a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  *&result = sub_10009F5F8(a1, a4, a5).n128_u64[0];
  return result;
}

uint64_t sub_10009FE30(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  if ((sub_10009A774(a1, &v22) & 1) == 0)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = *a2;
  v12 = a2[1];
  v24[0] = a4;
  v24[1] = a5;
  v23 = v22;
  if (v12 <= v22)
  {
    sub_10009FB7C(v25, v10, v24, &v23);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
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

      v15 = __p;
      if (__p)
      {
        v16 = v31;
        v17 = __p;
        if (v31 != __p)
        {
          do
          {
            v16 = sub_100052FFC(v16 - 1);
          }

          while (v16 != v15);
          v17 = __p;
        }

        v31 = v15;
        operator delete(v17);
      }

      v18 = v28;
      if (v28)
      {
        v19 = v29;
        v20 = v28;
        if (v29 != v28)
        {
          do
          {
            v21 = *--v19;
            *v19 = 0;
            if (v21)
            {
              operator delete[]();
            }
          }

          while (v19 != v18);
          v20 = v28;
        }

        v29 = v18;
        operator delete(v20);
      }

      if (v26 != &v27)
      {
        free(v26);
      }
    }
  }

  else
  {
    *a3 = v11 + 8 * v22;
    return 1;
  }

  return v13;
}

void sub_10009FFFC(uint64_t a1@<X0>, void ***a2@<X1>, uint64_t a3@<X8>)
{
  mlir::emitError(*(*(a1 + 40) + 24), &v12);
  if (v12)
  {
    mlir::Diagnostic::operator<<(&v13, a2);
  }

  sub_100062C04(a3, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
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
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

uint64_t sub_1000A016C(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = llvm::StringMapImpl::hash(a2, a3);
  Key = llvm::StringMapImpl::FindKey(v6, a2, a3, v7);
  if (Key == -1)
  {
    v9 = *(v6 + 8);
  }

  else
  {
    v9 = Key;
  }

  v10 = *v6 + 8 * v9;
  if (v10 == **(a1 + 32) + 8 * *(*(a1 + 32) + 8))
  {
    return 0;
  }

  v11 = *(*v10 + 8);
  v14 = *(*(a1 + 40) + 24);
  Context = mlir::Attribute::getContext(&v14);
  if (!sub_1000A0AD8(v11, a1, Context))
  {
    return 0;
  }

  else
  {
    return *(*(*v10 + 8) + 56);
  }
}

BOOL sub_1000A0298(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_10009A774(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1000A10F4(v3, v7);
  *a2 = v5;
  return v5 != 0;
}

BOOL sub_1000A0304(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_10009A774(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  v5 = sub_1000A10F4(v3, v7 >> 1);
  *a2 = v5;
  return v5 != 0;
}

BOOL sub_1000A038C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 40);
  v7 = 0;
  if ((sub_10009A774(v4, &v7) & 1) == 0)
  {
    return 0;
  }

  v5 = sub_1000A2044(v3, v7);
  *a2 = v5;
  return v5 != 0;
}

uint64_t sub_1000A0400(uint64_t a1, unint64_t *a2)
{
  v4 = 0;
  if ((sub_10009A774(*(a1 + 40), &v4) & 1) == 0)
  {
    return 0;
  }

  *a2 = -(v4 & 1) ^ (v4 >> 1);
  return 1;
}

void sub_1000A0468(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 8)
  {
    LOBYTE(v15) = 0;
    if (sub_10009E478(*(a1 + 40), &v15))
    {
      v6 = v15;
LABEL_7:
      *(a3 + 8) = a2;
      *a3 = v6;
      *(a3 + 16) = 1;
      return;
    }

    goto LABEL_12;
  }

  if (a2 <= 0x40)
  {
    v15 = 0;
    if (sub_10009A774(*(a1 + 40), &v15))
    {
      v6 = -(v15 & 1) ^ (v15 >> 1);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = 0;
  if ((sub_10009A774(*(a1 + 40), &v14) & 1) == 0)
  {
LABEL_12:
    *a3 = 0;
    *(a3 + 16) = 0;
    return;
  }

  v7 = v14;
  v15 = v17;
  v16 = 0x400000000;
  if (v14)
  {
    if (v14 < 5)
    {
      v8 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v15, v17, v14, 8);
      v8 = v16;
    }

    if (v7 != v8)
    {
      bzero(v15 + 8 * v8, 8 * (v7 - v8));
    }

    v9 = 0;
    LODWORD(v16) = v7;
    while (1)
    {
      v10 = v15;
      if ((sub_10009A774(*(a1 + 40), (v15 + v9)) & 1) == 0)
      {
        break;
      }

      *&v10[v9] = -(*&v10[v9] & 1) ^ (*&v10[v9] >> 1);
      v9 += 8;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }

    *a3 = 0;
    *(a3 + 16) = 0;
    v11 = v15;
    if (v15 != v17)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_21:
    llvm::APInt::APInt(&v12, a2);
    *(a3 + 8) = v13;
    *a3 = v12;
    *(a3 + 16) = 1;
    v11 = v15;
    if (v15 != v17)
    {
LABEL_24:
      free(v11);
    }
  }
}

void sub_1000A0658(uint64_t a1@<X0>, void *a2@<X1>, __n128 *a3@<X8>)
{
  SizeInBits = llvm::APFloatBase::getSizeInBits(a2);
  v7 = (*(*a1 + 88))(&v9, a1, SizeInBits);
  if ((v11 & 1) == 0)
  {
    a3->n128_u8[0] = 0;
    a3[1].n128_u8[8] = 0;
    return;
  }

  v8 = llvm::APFloatBase::PPCDoubleDouble(v7);
  if (v8 == a2)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(&v12, a2);
  }

  llvm::detail::IEEEFloat::IEEEFloat(&v12, a2, &v9);
  if (v8 == v12.n128_u64[0])
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat(a3, &v12);
    a3[1].n128_u8[8] = 1;
    if (v8 != v12.n128_u64[0])
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_100029F40(&v12);
    goto LABEL_10;
  }

  llvm::detail::IEEEFloat::IEEEFloat(a3, &v12);
  a3[1].n128_u8[8] = 1;
  if (v8 == v12.n128_u64[0])
  {
    goto LABEL_9;
  }

LABEL_5:
  llvm::detail::IEEEFloat::~IEEEFloat(&v12);
LABEL_10:
  if ((v11 & 1) != 0 && v10 >= 0x41)
  {
    if (v9)
    {
      operator delete[]();
    }
  }
}

uint64_t sub_1000A07DC(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 40);
  v10 = 0;
  if ((sub_10009A774(v4, &v10) & 1) == 0)
  {
    return 0;
  }

  v5 = v10;
  v6 = v4[3];
  v7 = *v3;
  v8 = *(v3 + 8);

  return sub_10009F9F4(v6, v7, v8, v5, a2, "string", 6);
}

uint64_t sub_1000A0870(uint64_t a1, void *a2)
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  if ((sub_10009A774(*(a1 + 40), &v8) & 1) == 0 || (sub_10009ED44(*(a1 + 40), v8, &v6) & 1) == 0)
  {
    return 0;
  }

  v4 = v7;
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

void sub_1000A08F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v20 = 0;
  if ((sub_10009A774(v4, &v20) & 1) == 0)
  {
    goto LABEL_27;
  }

  v5 = v4[3];
  v6 = *v3;
  v7 = *(v3 + 2);
  v22[0] = "resource handle";
  v22[1] = 15;
  v21 = v20;
  if (v20 >= v7)
  {
    sub_10009FB7C(v23, v5, v22, &v21);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v23);
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

      v12 = __p;
      if (__p)
      {
        v13 = v29;
        v14 = __p;
        if (v29 != __p)
        {
          do
          {
            v13 = sub_100052FFC(v13 - 1);
          }

          while (v13 != v12);
          v14 = __p;
        }

        v29 = v12;
        operator delete(v14);
      }

      v15 = v26;
      if (v26)
      {
        v16 = v27;
        v17 = v26;
        if (v27 != v26)
        {
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
          v17 = v26;
        }

        v27 = v15;
        operator delete(v17);
      }

      if (v24 != &v25)
      {
        free(v24);
      }
    }

    if (v11)
    {
      v9 = 0;
      *&v10 = &mlir::detail::TypeIDResolver<void,void>::id;
      goto LABEL_26;
    }

LABEL_27:
    v19 = 0;
    *a2 = 0;
    goto LABEL_28;
  }

  v8 = (v6 + 24 * v20);
  v9 = *v8;
  v10 = *(v8 + 1);
LABEL_26:
  *a2 = v9;
  *(a2 + 8) = v10;
  v19 = 1;
LABEL_28:
  *(a2 + 24) = v19;
}

BOOL sub_1000A0AD8(uint64_t a1, uint64_t a2, mlir::MLIRContext *a3)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  Dialect = mlir::MLIRContext::getOrLoadDialect(a3, *(a1 + 24), *(a1 + 32));
  if (Dialect)
  {
    *a1 = Dialect;
    *(a1 + 8) = 1;
    v7 = Dialect;
    v8 = sub_100090E6C(Dialect);
    if (v8)
    {
      v8 = sub_100090E6C(v7);
    }

    *(a1 + 16) = v8;
    v9 = *(a1 + 48);
    if (!v9)
    {
      return 1;
    }

LABEL_9:
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a2 + 48);
      v12 = *(*(a2 + 40) + 24);
      v45 = *(a1 + 40);
      v46 = v9;
      v47 = v45;
      v48 = v12;
      v50 = off_1002B5B78;
      v13 = *(a2 + 24);
      v51 = *(a2 + 8);
      *v52 = v13;
      v53[0] = &v45;
      v53[1] = v11;
      (*(*v10 + 56))(v43);
      v14 = v43[0];
      v43[0] = 0;
      v15 = *(a1 + 56);
      *(a1 + 56) = v14;
      if (v15)
      {
        (*(*v15 + 8))(v15);
        v16 = v43[0];
        v43[0] = 0;
        if (v16)
        {
          (*(*v16 + 8))(v16);
        }

        v14 = *(a1 + 56);
      }

      return v14 != 0;
    }

    v43[0] = "dialect '";
    v44 = 259;
    (*(*a2 + 16))(&v50, a2, v43);
    if (v50)
    {
      v49 = 261;
      v18 = *(a1 + 32);
      v45 = *(a1 + 24);
      v46 = v18;
      mlir::Diagnostic::operator<<(&v51, &v45);
      if (v50)
      {
        LODWORD(v45) = 3;
        v46 = "' does not implement the bytecode interface, but found a version entry";
        v47 = 70;
        v19 = &v45;
        v20 = v52[0];
        if (LODWORD(v52[1]) >= HIDWORD(v52[1]))
        {
          if (v52[0] <= &v45 && v52[0] + 24 * LODWORD(v52[1]) > &v45)
          {
            v41 = &v45 - v52[0];
            llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
            v20 = v52[0];
            v19 = (v52[0] + v41);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
            v19 = &v45;
            v20 = v52[0];
          }
        }

        v21 = &v20[24 * LODWORD(v52[1])];
        v22 = *v19;
        *(v21 + 2) = v19[2];
        *v21 = v22;
        ++LODWORD(v52[1]);
      }
    }

    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    v23 = result;
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
      result = v23;
    }

    if (v59 == 1)
    {
      if (v58 != &v59)
      {
        free(v58);
        result = v23;
      }

      v24 = __p;
      if (__p)
      {
        v25 = v57;
        v26 = __p;
        if (v57 != __p)
        {
          do
          {
            v25 = sub_100052FFC(v25 - 1);
          }

          while (v25 != v24);
          v26 = __p;
        }

        v57 = v24;
        operator delete(v26);
        result = v23;
      }

      v27 = v54;
      if (!v54)
      {
        goto LABEL_60;
      }

      v28 = v55;
      v29 = v54;
      if (v55 == v54)
      {
LABEL_59:
        v55 = v27;
        operator delete(v29);
        result = v23;
LABEL_60:
        if (v52[0] != v53)
        {
          free(v52[0]);
          return v23;
        }

        return result;
      }

      do
      {
        v30 = *--v28;
        *v28 = 0;
        if (v30)
        {
          operator delete[]();
        }
      }

      while (v28 != v27);
LABEL_58:
      v29 = v54;
      goto LABEL_59;
    }

    return result;
  }

  if (mlir::MLIRContext::allowsUnregisteredDialects(a3))
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    v9 = *(a1 + 48);
    if (v9)
    {
      goto LABEL_9;
    }

    return 1;
  }

  v43[0] = "dialect '";
  v44 = 259;
  (*(*a2 + 16))(&v50, a2, v43);
  if (v50)
  {
    v49 = 261;
    v31 = *(a1 + 32);
    v45 = *(a1 + 24);
    v46 = v31;
    mlir::Diagnostic::operator<<(&v51, &v45);
    if (v50)
    {
      LODWORD(v45) = 3;
      v46 = "' is unknown. If this is intended, please call allowUnregisteredDialects() on the MLIRContext, or use -allow-unregistered-dialect with the MLIR tool used.";
      v47 = 154;
      v32 = &v45;
      v33 = v52[0];
      if (LODWORD(v52[1]) >= HIDWORD(v52[1]))
      {
        if (v52[0] <= &v45 && v52[0] + 24 * LODWORD(v52[1]) > &v45)
        {
          v42 = &v45 - v52[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
          v33 = v52[0];
          v32 = (v52[0] + v42);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(v52, v53, LODWORD(v52[1]) + 1, 24);
          v32 = &v45;
          v33 = v52[0];
        }
      }

      v34 = &v33[24 * LODWORD(v52[1])];
      v35 = *v32;
      *(v34 + 2) = v32[2];
      *v34 = v35;
      ++LODWORD(v52[1]);
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
  v23 = result;
  if (v50)
  {
    mlir::InFlightDiagnostic::report(&v50);
    result = v23;
  }

  if (v59 == 1)
  {
    if (v58 != &v59)
    {
      free(v58);
      result = v23;
    }

    v36 = __p;
    if (__p)
    {
      v37 = v57;
      v38 = __p;
      if (v57 != __p)
      {
        do
        {
          v37 = sub_100052FFC(v37 - 1);
        }

        while (v37 != v36);
        v38 = __p;
      }

      v57 = v36;
      operator delete(v38);
      result = v23;
    }

    v27 = v54;
    if (!v54)
    {
      goto LABEL_60;
    }

    v39 = v55;
    v29 = v54;
    if (v55 == v54)
    {
      goto LABEL_59;
    }

    do
    {
      v40 = *--v39;
      *v39 = 0;
      if (v40)
      {
        operator delete[]();
      }
    }

    while (v39 != v27);
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_1000A10F4(mlir::Attribute *this, unint64_t a2)
{
  if (*(this + 8) <= a2)
  {
    mlir::emitError(*(this + 17), &v82);
    if (v82)
    {
      LODWORD(v74) = 3;
      v75 = "invalid ";
      *&v76 = 8;
      v19 = &v74;
      v20 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v74 && v84 + 24 * v85 > &v74)
        {
          v63 = &v74 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v20 = v84;
          v19 = (v84 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v19 = &v74;
          v20 = v84;
        }
      }

      v21 = &v20[24 * v85];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v85;
      if (v82)
      {
        LOWORD(v77) = 261;
        v74 = "Attribute";
        v75 = 9;
        mlir::Diagnostic::operator<<(&v83, &v74);
        if (v82)
        {
          LODWORD(v74) = 3;
          v75 = " index: ";
          *&v76 = 8;
          v23 = &v74;
          v24 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v74 && v84 + 24 * v85 > &v74)
            {
              v64 = &v74 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v24 = v84;
              v23 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v23 = &v74;
              v24 = v84;
            }
          }

          v25 = &v24[24 * v85];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v85;
          if (v82)
          {
            LODWORD(v74) = 5;
            v75 = a2;
            v28 = &v74;
            v29 = v84;
            if (v27 >= v86)
            {
              if (v84 <= &v74 && v84 + 24 * v27 > &v74)
              {
                v65 = &v74 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v29 = v84;
                v28 = (v84 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v28 = &v74;
                v29 = v84;
              }
            }

            v30 = &v29[24 * v85];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v85;
            if (v82)
            {
              mlir::InFlightDiagnostic::report(&v82);
            }
          }
        }
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v91;
      v34 = __p;
      if (v91 != __p)
      {
        do
        {
          v33 = sub_100052FFC(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v91 = v32;
      operator delete(v34);
    }

    v35 = v88;
    if (!v88)
    {
      goto LABEL_97;
    }

    v36 = v89;
    v37 = v88;
    if (v89 == v88)
    {
      goto LABEL_96;
    }

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
    goto LABEL_95;
  }

  v3 = *(this + 3) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v71 = *(v3 + 24);
    v72 = v71;
    v73 = v5;
    if (*(v3 + 16) == 1)
    {
      v7 = *(this + 2);
      v8 = *(this + 18);
      v74 = off_1002B5B78;
      v75 = this;
      v76 = *this;
      v77 = v7;
      v78 = &v71;
      v79 = v8;
      v10 = *(v3 + 8);
      Context = mlir::Attribute::getContext((this + 136));
      if (!sub_1000A0AD8(v10, &v74, Context))
      {
        return 0;
      }

      v12 = *(this + 19);
      v13 = *(v12 + 56);
      if (v13)
      {
        v14 = *(v12 + 48);
        v15 = 8 * v13;
        while (((*(**v14 + 16))(*v14, &v74, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
        {
          if (*v3)
          {
            goto LABEL_78;
          }

          v71 = *(v3 + 24);
          v72 = v71;
          ++v14;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v16 = *(v3 + 8);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (*(*v17 + 16))(v17, &v74);
        *v3 = v18;
        if (!v18)
        {
          return 0;
        }

        goto LABEL_78;
      }

      sub_1000A1B08(&v82, v73, v16 + 24);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
LABEL_77:
        if (v44)
        {
LABEL_78:
          if (v72 == v71 + *(&v71 + 1))
          {
            return *v3;
          }

          v70 = 1283;
          v66 = "unexpected trailing bytes after ";
          v68 = "Attribute";
          v69 = 9;
          v74 = &v66;
          *&v76 = " entry";
          LOWORD(v77) = 770;
          sub_1000A199C(&v82, v73, &v74);
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }

          if (v93 != 1)
          {
            return 0;
          }

          if (v92 != &v93)
          {
            free(v92);
          }

          v57 = __p;
          if (__p)
          {
            v58 = v91;
            v59 = __p;
            if (v91 != __p)
            {
              do
              {
                v58 = sub_100052FFC(v58 - 1);
              }

              while (v58 != v57);
              v59 = __p;
            }

            v91 = v57;
            operator delete(v59);
          }

          v35 = v88;
          if (!v88)
          {
            goto LABEL_97;
          }

          v60 = v89;
          v37 = v88;
          if (v89 == v88)
          {
LABEL_96:
            v89 = v35;
            operator delete(v37);
LABEL_97:
            if (v84 != v87)
            {
              free(v84);
            }

            return 0;
          }

          do
          {
            v61 = *--v60;
            *v60 = 0;
            if (v61)
            {
              operator delete[]();
            }
          }

          while (v60 != v35);
LABEL_95:
          v37 = v88;
          goto LABEL_96;
        }

        return 0;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v91;
        v54 = __p;
        if (v91 != __p)
        {
          do
          {
            v53 = sub_100052FFC(v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v91 = v52;
        operator delete(v54);
      }

      v48 = v88;
      if (!v88)
      {
LABEL_75:
        if (v84 != v87)
        {
          free(v84);
        }

        goto LABEL_77;
      }

      v55 = v89;
      v50 = v88;
      if (v89 == v88)
      {
LABEL_74:
        v89 = v48;
        operator delete(v50);
        goto LABEL_75;
      }

      do
      {
        v56 = *--v55;
        *v55 = 0;
        if (v56)
        {
          operator delete[]();
        }
      }

      while (v55 != v48);
    }

    else
    {
      v74 = "Attribute";
      v75 = 9;
      v66 = 0;
      v67 = 0;
      if ((sub_100097558(&v71, &v66) & 1) == 0)
      {
        return 0;
      }

      v81 = 0;
      v39 = mlir::Attribute::getContext(v6);
      v40 = v66;
      v41 = v67;
      v42 = mlir::parseAttribute(v66, v67, v39, 0, &v81, 1);
      *v3 = v42;
      if (!v42)
      {
        return 0;
      }

      v43 = v81;
      if (v81 == v41)
      {
        goto LABEL_78;
      }

      if (v41 < v81)
      {
        v43 = v41;
      }

      v80[0] = v40 + v43;
      v80[1] = v41 - v43;
      sub_1000A1C84(&v82, v73, &v74, v80);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
        goto LABEL_77;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v91;
        v47 = __p;
        if (v91 != __p)
        {
          do
          {
            v46 = sub_100052FFC(v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v91 = v45;
        operator delete(v47);
      }

      v48 = v88;
      if (!v88)
      {
        goto LABEL_75;
      }

      v49 = v89;
      v50 = v88;
      if (v89 == v88)
      {
        goto LABEL_74;
      }

      do
      {
        v51 = *--v49;
        *v49 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v49 != v48);
    }

    v50 = v88;
    goto LABEL_74;
  }

  return v4;
}

void sub_1000A199C(uint64_t a1, uint64_t a2, void ***a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    mlir::Diagnostic::operator<<(&v13, a3);
  }

  sub_100062C04(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
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
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000A1B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    sub_10007BBF0(&v13, "dialect '", a3, "' does not implement the bytecode interface");
  }

  sub_100062C04(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
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
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000A1C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000A1E10(&v15, "trailing characters found after ", a3, " assembly format: ", a4);
  }

  sub_100062C04(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
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
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_1000A1E10(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return sub_1000A1F38(a1, a4, a5);
}

uint64_t sub_1000A1F38(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  v7 = a1 + 16;
  v8 = *(a1 + 16);
  LODWORD(v16) = 3;
  v17 = __s;
  v18 = v6;
  v9 = *(a1 + 24);
  v10 = &v16;
  if (v9 >= *(a1 + 28))
  {
    if (v8 <= &v16 && v8 + 24 * v9 > &v16)
    {
      v15 = &v16 - v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v15[v8];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v7, (a1 + 32), v9 + 1, 24);
      v8 = *(a1 + 16);
      v10 = &v16;
    }
  }

  v11 = v8 + 24 * *(a1 + 24);
  v12 = *v10;
  *(v11 + 16) = v10[2];
  *v11 = v12;
  ++*(a1 + 24);
  v19 = 261;
  v13 = *(a3 + 8);
  v16 = *a3;
  v17 = v13;
  mlir::Diagnostic::operator<<(a1, &v16);
  return a1;
}

uint64_t sub_1000A2044(mlir::Attribute *this, unint64_t a2)
{
  if (*(this + 22) <= a2)
  {
    mlir::emitError(*(this + 17), &v82);
    if (v82)
    {
      LODWORD(v74) = 3;
      v75 = "invalid ";
      *&v76 = 8;
      v19 = &v74;
      v20 = v84;
      if (v85 >= v86)
      {
        if (v84 <= &v74 && v84 + 24 * v85 > &v74)
        {
          v63 = &v74 - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v20 = v84;
          v19 = (v84 + v63);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
          v19 = &v74;
          v20 = v84;
        }
      }

      v21 = &v20[24 * v85];
      v22 = *v19;
      *(v21 + 2) = v19[2];
      *v21 = v22;
      ++v85;
      if (v82)
      {
        LOWORD(v77) = 261;
        v74 = "Type";
        v75 = 4;
        mlir::Diagnostic::operator<<(&v83, &v74);
        if (v82)
        {
          LODWORD(v74) = 3;
          v75 = " index: ";
          *&v76 = 8;
          v23 = &v74;
          v24 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &v74 && v84 + 24 * v85 > &v74)
            {
              v64 = &v74 - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v24 = v84;
              v23 = (v84 + v64);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v23 = &v74;
              v24 = v84;
            }
          }

          v25 = &v24[24 * v85];
          v26 = *v23;
          *(v25 + 2) = v23[2];
          *v25 = v26;
          v27 = ++v85;
          if (v82)
          {
            LODWORD(v74) = 5;
            v75 = a2;
            v28 = &v74;
            v29 = v84;
            if (v27 >= v86)
            {
              if (v84 <= &v74 && v84 + 24 * v27 > &v74)
              {
                v65 = &v74 - v84;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v29 = v84;
                v28 = (v84 + v65);
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v27 + 1, 24);
                v28 = &v74;
                v29 = v84;
              }
            }

            v30 = &v29[24 * v85];
            v31 = *v28;
            *(v30 + 2) = v28[2];
            *v30 = v31;
            ++v85;
            if (v82)
            {
              mlir::InFlightDiagnostic::report(&v82);
            }
          }
        }
      }
    }

    if (v93 != 1)
    {
      return 0;
    }

    if (v92 != &v93)
    {
      free(v92);
    }

    v32 = __p;
    if (__p)
    {
      v33 = v91;
      v34 = __p;
      if (v91 != __p)
      {
        do
        {
          v33 = sub_100052FFC(v33 - 1);
        }

        while (v33 != v32);
        v34 = __p;
      }

      v91 = v32;
      operator delete(v34);
    }

    v35 = v88;
    if (!v88)
    {
      goto LABEL_97;
    }

    v36 = v89;
    v37 = v88;
    if (v89 == v88)
    {
      goto LABEL_96;
    }

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
    goto LABEL_95;
  }

  v3 = *(this + 10) + 40 * a2;
  v4 = *v3;
  if (!*v3)
  {
    v6 = (this + 136);
    v5 = *(this + 17);
    v71 = *(v3 + 24);
    v72 = v71;
    v73 = v5;
    if (*(v3 + 16) == 1)
    {
      v7 = *(this + 2);
      v8 = *(this + 18);
      v74 = off_1002B5B78;
      v75 = this;
      v76 = *this;
      v77 = v7;
      v78 = &v71;
      v79 = v8;
      v10 = *(v3 + 8);
      Context = mlir::Attribute::getContext((this + 136));
      if (!sub_1000A0AD8(v10, &v74, Context))
      {
        return 0;
      }

      v12 = *(this + 19);
      v13 = *(v12 + 120);
      if (v13)
      {
        v14 = *(v12 + 112);
        v15 = 8 * v13;
        while (((*(**v14 + 16))(*v14, &v74, *(*(v3 + 8) + 24), *(*(v3 + 8) + 32), v3) & 1) != 0)
        {
          if (*v3)
          {
            goto LABEL_78;
          }

          v71 = *(v3 + 24);
          v72 = v71;
          ++v14;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_10;
          }
        }

        return 0;
      }

LABEL_10:
      v16 = *(v3 + 8);
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = (*(*v17 + 24))(v17, &v74);
        *v3 = v18;
        if (!v18)
        {
          return 0;
        }

        goto LABEL_78;
      }

      sub_1000A1B08(&v82, v73, v16 + 24);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
LABEL_77:
        if (v44)
        {
LABEL_78:
          if (v72 == v71 + *(&v71 + 1))
          {
            return *v3;
          }

          v70 = 1283;
          v66 = "unexpected trailing bytes after ";
          v68 = "Type";
          v69 = 4;
          v74 = &v66;
          *&v76 = " entry";
          LOWORD(v77) = 770;
          sub_1000A199C(&v82, v73, &v74);
          if (v82)
          {
            mlir::InFlightDiagnostic::report(&v82);
          }

          if (v93 != 1)
          {
            return 0;
          }

          if (v92 != &v93)
          {
            free(v92);
          }

          v57 = __p;
          if (__p)
          {
            v58 = v91;
            v59 = __p;
            if (v91 != __p)
            {
              do
              {
                v58 = sub_100052FFC(v58 - 1);
              }

              while (v58 != v57);
              v59 = __p;
            }

            v91 = v57;
            operator delete(v59);
          }

          v35 = v88;
          if (!v88)
          {
            goto LABEL_97;
          }

          v60 = v89;
          v37 = v88;
          if (v89 == v88)
          {
LABEL_96:
            v89 = v35;
            operator delete(v37);
LABEL_97:
            if (v84 != v87)
            {
              free(v84);
            }

            return 0;
          }

          do
          {
            v61 = *--v60;
            *v60 = 0;
            if (v61)
            {
              operator delete[]();
            }
          }

          while (v60 != v35);
LABEL_95:
          v37 = v88;
          goto LABEL_96;
        }

        return 0;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v52 = __p;
      if (__p)
      {
        v53 = v91;
        v54 = __p;
        if (v91 != __p)
        {
          do
          {
            v53 = sub_100052FFC(v53 - 1);
          }

          while (v53 != v52);
          v54 = __p;
        }

        v91 = v52;
        operator delete(v54);
      }

      v48 = v88;
      if (!v88)
      {
LABEL_75:
        if (v84 != v87)
        {
          free(v84);
        }

        goto LABEL_77;
      }

      v55 = v89;
      v50 = v88;
      if (v89 == v88)
      {
LABEL_74:
        v89 = v48;
        operator delete(v50);
        goto LABEL_75;
      }

      do
      {
        v56 = *--v55;
        *v55 = 0;
        if (v56)
        {
          operator delete[]();
        }
      }

      while (v55 != v48);
    }

    else
    {
      v74 = "Type";
      v75 = 4;
      v66 = 0;
      v67 = 0;
      if ((sub_100097558(&v71, &v66) & 1) == 0)
      {
        return 0;
      }

      v81 = 0;
      v39 = mlir::Attribute::getContext(v6);
      v40 = v66;
      v41 = v67;
      v42 = mlir::parseType(v66, v67, v39, &v81, 1);
      *v3 = v42;
      if (!v42)
      {
        return 0;
      }

      v43 = v81;
      if (v81 == v41)
      {
        goto LABEL_78;
      }

      if (v41 < v81)
      {
        v43 = v41;
      }

      v80[0] = &v40[v43];
      v80[1] = v41 - v43;
      sub_1000A1C84(&v82, v73, &v74, v80);
      v44 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
      if (v82)
      {
        mlir::InFlightDiagnostic::report(&v82);
      }

      if (v93 != 1)
      {
        goto LABEL_77;
      }

      if (v92 != &v93)
      {
        free(v92);
      }

      v45 = __p;
      if (__p)
      {
        v46 = v91;
        v47 = __p;
        if (v91 != __p)
        {
          do
          {
            v46 = sub_100052FFC(v46 - 1);
          }

          while (v46 != v45);
          v47 = __p;
        }

        v91 = v45;
        operator delete(v47);
      }

      v48 = v88;
      if (!v88)
      {
        goto LABEL_75;
      }

      v49 = v89;
      v50 = v88;
      if (v89 == v88)
      {
        goto LABEL_74;
      }

      do
      {
        v51 = *--v49;
        *v49 = 0;
        if (v51)
        {
          operator delete[]();
        }
      }

      while (v49 != v48);
    }

    v50 = v88;
    goto LABEL_74;
  }

  return v4;
}

uint64_t sub_1000A28E8(void *a1, BOOL *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_10009D7D8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
    if (v12[0])
    {
      mlir::InFlightDiagnostic::report(v12);
    }

    if (v20 == 1)
    {
      if (v19 != &v20)
      {
        free(v19);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_100052FFC(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2 != 0;
    return 1;
  }

  return v3;
}

uint64_t sub_1000A2A7C(void *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 == (*a1 + a1[1]))
  {
    sub_10009D7D8(v12, a1[3], "attempting to parse a byte at the end of the bytecode");
    v3 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
    if (v12[0])
    {
      mlir::InFlightDiagnostic::report(v12);
    }

    if (v20 == 1)
    {
      if (v19 != &v20)
      {
        free(v19);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v18;
        v6 = __p;
        if (v18 != __p)
        {
          do
          {
            v5 = sub_100052FFC(v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v18 = v4;
        operator delete(v6);
      }

      v7 = v15;
      if (v15)
      {
        v8 = v16;
        v9 = v15;
        if (v16 != v15)
        {
          do
          {
            v10 = *--v8;
            *v8 = 0;
            if (v10)
            {
              operator delete[]();
            }
          }

          while (v8 != v7);
          v9 = v15;
        }

        v16 = v7;
        operator delete(v9);
      }

      if (v13 != &v14)
      {
        free(v13);
      }
    }
  }

  else
  {
    a1[2] = v2 + 1;
    *a2 = *v2;
    return 1;
  }

  return v3;
}

void sub_1000A2C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mlir::emitError(a2, &v12);
  if (v12)
  {
    sub_10007BBF0(&v13, "unexpected trailing bytes in resource entry '", a3, "'");
  }

  sub_100062C04(a1, &v12);
  if (v12)
  {
    mlir::InFlightDiagnostic::report(&v12);
  }

  if (v21 == 1)
  {
    if (v20 != &v21)
    {
      free(v20);
    }

    v5 = __p;
    if (__p)
    {
      v6 = v19;
      v7 = __p;
      if (v19 != __p)
      {
        do
        {
          v6 = sub_100052FFC(v6 - 1);
        }

        while (v6 != v5);
        v7 = __p;
      }

      v19 = v5;
      operator delete(v7);
    }

    v8 = v16;
    if (v16)
    {
      v9 = v17;
      v10 = v16;
      if (v17 != v16)
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
        v10 = v16;
      }

      v17 = v8;
      operator delete(v10);
    }

    if (v14 != &v15)
    {
      free(v14);
    }
  }
}

void sub_1000A2D88(mlir::AsmParsedResourceEntry *a1)
{
  mlir::AsmParsedResourceEntry::~AsmParsedResourceEntry(a1);

  operator delete();
}

uint64_t sub_1000A2DE0(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    LOBYTE(v28) = 0;
    v2 = sub_1000A28E8(*(a1 + 32), &v28) & 1;
    if (v2)
    {
      v3 = v28;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    mlir::emitError(*(*(a1 + 32) + 24), &v28);
    if (v28)
    {
      LODWORD(v24) = 3;
      v25 = "expected a BOOL resource entry, but found a ";
      v26 = 44;
      v4 = &v24;
      v5 = v30;
      if (v31 >= v32)
      {
        if (v30 <= &v24 && v30 + 24 * v31 > &v24)
        {
          v22 = &v24 - v30;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v5 = v30;
          v4 = (v30 + v22);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
          v4 = &v24;
          v5 = v30;
        }
      }

      v6 = &v5[24 * v31];
      v7 = *v4;
      *(v6 + 2) = v4[2];
      *v6 = v7;
      ++v31;
    }

    v8 = mlir::toString(*(a1 + 24));
    if (v28)
    {
      v27 = 261;
      v24 = v8;
      v25 = v9;
      mlir::Diagnostic::operator<<(&v29, &v24);
      if (v28)
      {
        LODWORD(v24) = 3;
        v25 = " entry instead";
        v26 = 14;
        v10 = &v24;
        v11 = v30;
        if (v31 >= v32)
        {
          if (v30 <= &v24 && v30 + 24 * v31 > &v24)
          {
            v23 = &v24 - v30;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v11 = v30;
            v10 = (v30 + v23);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v30, v33, v31 + 1, 24);
            v10 = &v24;
            v11 = v30;
          }
        }

        v12 = &v11[24 * v31];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v31;
        if (v28)
        {
          mlir::InFlightDiagnostic::report(&v28);
        }
      }
    }

    if (v39 == 1)
    {
      if (v38 != &v39)
      {
        free(v38);
      }

      v14 = __p;
      if (__p)
      {
        v15 = v37;
        v16 = __p;
        if (v37 != __p)
        {
          do
          {
            v15 = sub_100052FFC(v15 - 1);
          }

          while (v15 != v14);
          v16 = __p;
        }

        v37 = v14;
        operator delete(v16);
      }

      v17 = v34;
      if (v34)
      {
        v18 = v35;
        v19 = v34;
        if (v35 != v34)
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
          v19 = v34;
        }

        v35 = v17;
        operator delete(v19);
      }

      if (v30 != v33)
      {
        free(v30);
      }
    }

    v3 = 0;
    v2 = 0;
  }

  return v3 | (v2 << 8);
}

double sub_1000A3120@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 24) == 2)
  {
    __src = 0uLL;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *&__dst = 0;
    if (sub_10009A774(v4, &__dst) & 1) != 0 && (sub_10009F9F4(v4[3], *v5, *(v5 + 8), __dst, &__src, "string", 6))
    {
      if (__src)
      {
        v7 = *(&__src + 1);
        if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          sub_10002BC08();
        }

        if (*(&__src + 1) >= 0x17uLL)
        {
          operator new();
        }

        HIBYTE(v32) = BYTE8(__src);
        if (*(&__src + 1))
        {
          memmove(&__dst, __src, *(&__src + 1));
        }

        *(&__dst + v7) = 0;
      }

      else
      {
        __dst = 0uLL;
        v32 = 0;
      }

      *&v6 = __dst;
      *a2 = __dst;
      *(a2 + 16) = v32;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }

    return *&v6;
  }

  mlir::emitError(*(*(a1 + 32) + 24), &__dst);
  if (__dst)
  {
    LODWORD(__src) = 3;
    *(&__src + 1) = "expected a string resource entry, but found a ";
    v29 = 46;
    p_src = &__src;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &__src && v33 + 24 * v34 > &__src)
      {
        v25 = &__src - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        p_src = (v33 + v25);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        p_src = &__src;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *p_src;
    *(v10 + 2) = *(p_src + 2);
    *v10 = v11;
    ++v34;
  }

  v12 = mlir::toString(*(a1 + 24));
  if (!__dst || (v30 = 261, *&__src = v12, *(&__src + 1) = v13, mlir::Diagnostic::operator<<(&__dst + 8, &__src), !__dst))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v42 != 1)
    {
      return *&v6;
    }

    goto LABEL_21;
  }

  LODWORD(__src) = 3;
  *(&__src + 1) = " entry instead";
  v29 = 14;
  v14 = &__src;
  v15 = v33;
  if (v34 >= v35)
  {
    if (v33 <= &__src && v33 + 24 * v34 > &__src)
    {
      v26 = &__src - v33;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
      v15 = v33;
      v14 = (v33 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
      v14 = &__src;
      v15 = v33;
    }
  }

  v16 = &v15[24 * v34];
  v6 = *v14;
  *(v16 + 2) = *(v14 + 2);
  *v16 = v6;
  ++v34;
  v17 = __dst;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v17)
  {
    mlir::InFlightDiagnostic::report(&__dst);
  }

  if (v42 == 1)
  {
LABEL_21:
    if (v41 != &v42)
    {
      free(v41);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v40;
      v20 = __p;
      if (v40 != __p)
      {
        do
        {
          v19 = sub_100052FFC(v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v40 = v18;
      operator delete(v20);
    }

    v21 = v37;
    if (v37)
    {
      v22 = v38;
      v23 = v37;
      if (v38 != v37)
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
        v23 = v37;
      }

      v38 = v21;
      operator delete(v23);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return *&v6;
}

void sub_1000A3584(uint64_t a1@<X0>, void (*a2)(void **__return_ptr, uint64_t, void *, unint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 24))
  {
    mlir::emitError(*(*(a1 + 32) + 24), __dst);
    if (__dst[0])
    {
      v61.n128_u32[0] = 3;
      v61.n128_u64[1] = "expected a blob resource entry, but found a ";
      v62 = 44;
      v6 = &v61;
      v7 = v51.n128_u64[0];
      if (v51.n128_u32[2] >= v51.n128_u32[3])
      {
        if (v51.n128_u64[0] <= &v61 && v51.n128_u64[0] + 24 * v51.n128_u32[2] > &v61)
        {
          v41 = &v61 - v51.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v7 = v51.n128_u64[0];
          v6 = &v41[v51.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v6 = &v61;
          v7 = v51.n128_u64[0];
        }
      }

      v8 = v7 + 24 * v51.n128_u32[2];
      v9 = *v6;
      *(v8 + 16) = v6[1].n128_u64[0];
      *v8 = v9;
      ++v51.n128_u32[2];
    }

    v10 = mlir::toString(*(a1 + 24));
    if (__dst[0] && (v64 = 261, v61.n128_u64[0] = v10, v61.n128_u64[1] = v11, mlir::Diagnostic::operator<<(&__dst[1], &v61), __dst[0]))
    {
      v61.n128_u32[0] = 3;
      v61.n128_u64[1] = " entry instead";
      v62 = 14;
      v12 = &v61;
      v13 = v51.n128_u64[0];
      if (v51.n128_u32[2] >= v51.n128_u32[3])
      {
        if (v51.n128_u64[0] <= &v61 && v51.n128_u64[0] + 24 * v51.n128_u32[2] > &v61)
        {
          v42 = &v61 - v51.n128_u64[0];
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v13 = v51.n128_u64[0];
          v12 = &v42[v51.n128_u64[0]];
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v51, &v52, v51.n128_u32[2] + 1, 24);
          v12 = &v61;
          v13 = v51.n128_u64[0];
        }
      }

      v14 = v13 + 24 * v51.n128_u32[2];
      v15 = *v12;
      *(v14 + 16) = v12[1].n128_u64[0];
      *v14 = v15;
      ++v51.n128_u32[2];
      v16 = __dst[0];
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v16)
      {
        mlir::InFlightDiagnostic::report(__dst);
      }

      if (v60 != 1)
      {
        return;
      }
    }

    else
    {
      *a4 = 0;
      *(a4 + 64) = 0;
      if (v60 != 1)
      {
        return;
      }
    }

    if (v59 != &v60)
    {
      free(v59);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v58;
      v19 = __p;
      if (v58 != __p)
      {
        do
        {
          v18 = sub_100052FFC(v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v58 = v17;
      operator delete(v19);
    }

    v20 = v55;
    if (v55)
    {
      v21 = v56;
      v22 = v55;
      if (v56 != v55)
      {
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
        v22 = v55;
      }

      v56 = v20;
      operator delete(v22);
    }

    if (v51.n128_u64[0] != &v52)
    {
      free(v51.n128_u64[0]);
    }

    return;
  }

  __src = 0;
  v45 = 0;
  v43 = 0;
  v26 = *(a1 + 32);
  if ((sub_10009A774(v26, &v43) & 1) == 0 || (__dst[0] = 0, (sub_10009A774(v26, __dst) & 1) == 0) || (v27 = v43, (sub_10009E604(v26, v43) & 1) == 0) || (sub_10009ED44(v26, __dst[0], &__src) & 1) == 0)
  {
    *a4 = 0;
    *(a4 + 64) = 0;
    return;
  }

  v28 = *(a1 + 48);
  v29 = *v28;
  if (*v28)
  {
    v30 = __src;
    v31 = v45;
    v32 = v28[1];
    if (v32)
    {
      atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
    }

    v46.n128_u64[0] = v29;
    v46.n128_u64[1] = v32;
    v48 = &off_1002C05A0 + 6;
    v63 = &off_1002C05A0 + 6;
    off_1002C05A8(&v61, &v46);
    (*((v63 & 0xFFFFFFFFFFFFFFF8) + 16))(&v46);
    v33 = v63;
    v48 = 0;
    __dst[0] = v30;
    __dst[1] = v31;
    v50 = v27;
    v53 = v63;
    if (v63 <= 7)
    {
      v34 = 0;
      v54 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      goto LABEL_54;
    }

    if ((~v63 & 6) != 0)
    {
      v51 = v61;
      v52 = v62;
      v54 = 0;
      *a4 = *__dst;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      v35 = (a4 + 48);
    }

    else
    {
      (*((v63 & 0xFFFFFFFFFFFFFFF8) + 8))(&v51, &v61);
      (*((v53 & 0xFFFFFFFFFFFFFFF8) + 16))(&v61);
      v34 = 0;
      v54 = 0;
      *a4 = *__dst;
      v33 = v53;
      *(a4 + 16) = v50;
      *(a4 + 48) = v33;
      v35 = (a4 + 48);
      if (v33 < 8)
      {
        goto LABEL_54;
      }
    }

    if ((v33 & 2) != 0 && (v33 & 4) != 0)
    {
      v38 = (*((v33 & 0xFFFFFFFFFFFFFFF8) + 8))((a4 + 24), &v51);
      (*((*v35 & 0xFFFFFFFFFFFFFFF8) + 16))(&v51, v38);
      v34 = v54;
    }

    else
    {
      v34 = 0;
      *(a4 + 24) = v51;
      *(a4 + 40) = v52;
    }

    v53 = 0;
LABEL_54:
    *(a4 + 56) = v34;
    *(a4 + 64) = 1;
    v39 = v48;
    if (v48 >= 8)
    {
      if ((v48 & 4) != 0)
      {
        if ((v48 & 2) != 0)
        {
          v40 = &v46;
        }

        else
        {
          v40 = v46.n128_u64[0];
        }

        (*((v48 & 0xFFFFFFFFFFFFFFF8) + 16))(v40);
      }

      if ((v39 & 2) == 0)
      {
        llvm::deallocate_buffer(v46.n128_u64[0], v46.n128_u64[1], v47);
      }
    }

    return;
  }

  v36 = v45;
  a2(__dst, a3, v45, v27);
  memcpy(__dst[0], __src, v36);
  *a4 = *__dst;
  v37 = v53;
  *(a4 + 16) = v50;
  *(a4 + 48) = v37;
  if (v37 >= 8)
  {
    if ((v37 & 2) != 0 && (v37 & 4) != 0)
    {
      (*((v37 & 0xFFFFFFFFFFFFFFF8) + 8))(a4 + 24, &v51);
      (*((*(a4 + 48) & 0xFFFFFFFFFFFFFFF8) + 16))(&v51);
    }

    else
    {
      *(a4 + 24) = v51;
      *(a4 + 40) = v52;
    }
  }

  *(a4 + 56) = v54;
  *(a4 + 64) = 1;
}

__n128 sub_1000A3B9C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_1000A3BAC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1000A3C28(uint64_t a1, int8x16_t *a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  (*(***a1 + 32))(v44);
  if (v45)
  {
    (*(***a1 + 40))(&v50);
    v7 = llvm::StringMapImpl::hash(a2, a3);
    v8 = sub_1000A419C((v6 + 64), a2, a3, v7);
    v9 = *v8;
    if (*(*v8 + 31) < 0)
    {
      operator delete(*(v9 + 8));
    }

    v10 = v50;
    *(v9 + 24) = v51;
    *(v9 + 8) = v10;
    v11 = *(v6 + 8);
    v12 = *v6;
    v13 = v44;
    if (v11 >= *(v6 + 12))
    {
      if (v12 <= v44 && v12 + 24 * v11 > v44)
      {
        v40 = v44 - v12;
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v11 + 1, 24);
        v12 = *v6;
        v13 = &v40[*v6];
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(v6, (v6 + 16), v11 + 1, 24);
        v12 = *v6;
        v13 = v44;
      }
    }

    v14 = v12 + 24 * *(v6 + 8);
    v15 = *v13;
    *(v14 + 16) = *(v13 + 2);
    *v14 = v15;
    ++*(v6 + 8);
    return 1;
  }

  else
  {
    mlir::emitError(*(*(a1 + 8) + 24), &v50);
    if (v50)
    {
      LODWORD(v46) = 3;
      v47 = "unknown 'resource' key '";
      v48 = 24;
      v17 = &v46;
      v18 = v52;
      if (v53 >= v54)
      {
        if (v52 <= &v46 && v52 + 24 * v53 > &v46)
        {
          v41 = &v46 - v52;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v18 = v52;
          v17 = (v52 + v41);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
          v17 = &v46;
          v18 = v52;
        }
      }

      v19 = &v18[24 * v53];
      v20 = *v17;
      *(v19 + 2) = v17[2];
      *v19 = v20;
      ++v53;
      if (v50)
      {
        v49 = 261;
        v46 = a2;
        v47 = a3;
        mlir::Diagnostic::operator<<(&v50 + 8, &v46);
        if (v50)
        {
          LODWORD(v46) = 3;
          v47 = "' for dialect '";
          v48 = 15;
          v21 = &v46;
          v22 = v52;
          if (v53 >= v54)
          {
            if (v52 <= &v46 && v52 + 24 * v53 > &v46)
            {
              v42 = &v46 - v52;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v22 = v52;
              v21 = (v52 + v42);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
              v21 = &v46;
              v22 = v52;
            }
          }

          v23 = &v22[24 * v53];
          v24 = *v21;
          *(v23 + 2) = v21[2];
          *v23 = v24;
          ++v53;
          if (v50)
          {
            v25 = ***(a1 + 16);
            v49 = 261;
            v27 = *(v25 + 24);
            v26 = *(v25 + 32);
            v46 = v27;
            v47 = v26;
            mlir::Diagnostic::operator<<(&v50 + 8, &v46);
            if (v50)
            {
              LODWORD(v46) = 3;
              v47 = "'";
              v48 = 1;
              v28 = &v46;
              v29 = v52;
              if (v53 >= v54)
              {
                if (v52 <= &v46 && v52 + 24 * v53 > &v46)
                {
                  v43 = &v46 - v52;
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                  v29 = v52;
                  v28 = (v52 + v43);
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v52, v55, v53 + 1, 24);
                  v28 = &v46;
                  v29 = v52;
                }
              }

              v30 = &v29[24 * v53];
              v31 = *v28;
              *(v30 + 2) = v28[2];
              *v30 = v31;
              ++v53;
            }
          }
        }
      }
    }

    v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v50);
    if (v50)
    {
      mlir::InFlightDiagnostic::report(&v50);
    }

    if (v61 == 1)
    {
      if (v60 != &v61)
      {
        free(v60);
      }

      v32 = __p;
      if (__p)
      {
        v33 = v59;
        v34 = __p;
        if (v59 != __p)
        {
          do
          {
            v33 = sub_100052FFC(v33 - 1);
          }

          while (v33 != v32);
          v34 = __p;
        }

        v59 = v32;
        operator delete(v34);
      }

      v35 = v56;
      if (v56)
      {
        v36 = v57;
        v37 = v56;
        if (v57 != v56)
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
          v37 = v56;
        }

        v57 = v35;
        operator delete(v37);
      }

      if (v52 != v55)
      {
        free(v52);
      }
    }
  }

  return v16;
}

uint64_t *sub_1000A419C(llvm::StringMapImpl *a1, void *a2, size_t a3, unsigned int a4)
{
  v7 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 4);
    buffer = llvm::allocate_buffer((a3 + 33), 8uLL);
    v11 = buffer + 4;
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

    buffer = llvm::allocate_buffer((a3 + 33), 8uLL);
    v11 = buffer + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v11 + a3) = 0;
  *buffer = a3;
  buffer[1] = 0;
  buffer[2] = 0;
  buffer[3] = 0;
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

void sub_1000A42BC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_10002BC08();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_10002BC08();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_1000A4410(uint64_t a1, void *a2, uint64_t *a3)
{
  v19[0] = 0;
  if ((sub_10009A774(a2, v19) & 1) == 0)
  {
    return 0;
  }

  result = sub_1000A10F4((a1 + 88), v19[0]);
  v18 = result;
  if (result)
  {
    v7 = result;
    if (mlir::LocationAttr::classof(result))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
    if (v8)
    {
      return 1;
    }

    else
    {
      if ((atomic_load_explicit(&qword_1002C05C8, memory_order_acquire) & 1) == 0)
      {
        sub_100279944();
      }

      v17 = xmmword_1002C05B8;
      sub_1000A4E88(v19, a2[3], &v17, &v18);
      result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
      v9 = result;
      if (v19[0])
      {
        mlir::InFlightDiagnostic::report(v19);
        result = v9;
      }

      if (v27 == 1)
      {
        if (v26 != &v27)
        {
          free(v26);
          result = v9;
        }

        v10 = __p;
        if (__p)
        {
          v11 = v25;
          v12 = __p;
          if (v25 != __p)
          {
            do
            {
              v11 = sub_100052FFC(v11 - 1);
            }

            while (v11 != v10);
            v12 = __p;
          }

          v25 = v10;
          operator delete(v12);
          result = v9;
        }

        v13 = v22;
        if (v22)
        {
          v14 = v23;
          v15 = v22;
          if (v23 != v22)
          {
            do
            {
              v16 = *--v14;
              *v14 = 0;
              if (v16)
              {
                operator delete[]();
              }
            }

            while (v14 != v13);
            v15 = v22;
          }

          v23 = v13;
          operator delete(v15);
          result = v9;
        }

        if (v20 != &v21)
        {
          free(v20);
          return v9;
        }
      }
    }
  }

  return result;
}

void sub_1000A460C(uint64_t a1, void *a2, unint64_t a3)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v6 = 1;
  v31 = 1;
  if (a3 < 2)
  {
    goto LABEL_4;
  }

  if (sub_10009A774(a2, &v31))
  {
    v6 = v31;
    if (v31)
    {
LABEL_4:
      v7 = 0;
      while (1)
      {
        v30 = 0;
        if (a3 >= 2 && (sub_10009A774(a2, &v30) & 1) == 0)
        {
          goto LABEL_47;
        }

        v29 = 0;
        if ((sub_10009A774(a2, &v29) & 1) == 0)
        {
          goto LABEL_47;
        }

        v8 = v29;
        v9 = v29 >> 1;
        v29 >>= 1;
        __src = v40;
        v39 = 0x400000000;
        if (v8 >= 2)
        {
          while (1)
          {
            __dst = 0;
            if ((sub_10009A774(a2, &__dst) & 1) == 0)
            {
              break;
            }

            v10 = __dst;
            v11 = v39;
            if (v39 >= HIDWORD(v39))
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v40, v39 + 1, 4);
              v11 = v39;
            }

            *(__src + v11) = v10;
            v12 = (v39 + 1);
            LODWORD(v39) = v39 + 1;
            if (!--v9)
            {
              v28 = v30;
              __dst = v37;
              v36 = 0x400000000;
              if (v12)
              {
                if (__src == v40)
                {
                  v13 = v12;
                  if (v12 < 5 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v37, v12, 4), (v13 = v39) != 0))
                  {
                    memcpy(__dst, __src, 4 * v13);
                  }

                  LODWORD(v36) = v12;
                }

                else
                {
                  __dst = __src;
                  v36 = __PAIR64__(HIDWORD(v39), v12);
                  __src = v40;
                  HIDWORD(v39) = 0;
                }

                LODWORD(v39) = 0;
              }

              goto LABEL_22;
            }
          }

          *a1 = 0;
          *(a1 + 24) = 0;
          if (__src == v40)
          {
            goto LABEL_48;
          }

          free(__src);
          v22 = v34;
          v23 = v32;
          if (v34)
          {
            goto LABEL_49;
          }

          goto LABEL_56;
        }

        v28 = v30;
        __dst = v37;
        v36 = 0x400000000;
LABEL_22:
        v37[16] = v8 & 1;
        if (!v34)
        {
          break;
        }

        v14 = (37 * v28) & (v34 - 1);
        v15 = (v32 + 48 * v14);
        v16 = *v15;
        if (v28 != *v15)
        {
          v17 = 0;
          v18 = 1;
          while (v16 != -1)
          {
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v16 == -2;
            }

            if (v19)
            {
              v17 = v15;
            }

            v20 = v14 + v18++;
            v14 = v20 & (v34 - 1);
            v15 = (v32 + 48 * v14);
            v16 = *v15;
            if (v28 == *v15)
            {
              goto LABEL_35;
            }
          }

          if (v17)
          {
            v21 = v17;
          }

          else
          {
            v21 = v15;
          }

          goto LABEL_34;
        }

LABEL_35:
        if (__dst != v37)
        {
          free(__dst);
        }

        if (__src != v40)
        {
          free(__src);
        }

        if (++v7 == v6)
        {
          goto LABEL_55;
        }
      }

      v21 = 0;
LABEL_34:
      sub_1000A5480(&v32, v21, &v28, &__dst);
      goto LABEL_35;
    }

LABEL_55:
    *a1 = v32;
    *(a1 + 8) = v33;
    v32 = 0;
    v33 = 0;
    *(a1 + 16) = v34;
    v34 = 0;
    *(a1 + 24) = 1;
    v23 = v32;
    goto LABEL_56;
  }

LABEL_47:
  *a1 = 0;
  *(a1 + 24) = 0;
LABEL_48:
  v22 = v34;
  v23 = v32;
  if (!v34)
  {
LABEL_56:
    v27 = 0;
    goto LABEL_57;
  }

LABEL_49:
  v24 = 48 * v22;
  v25 = v23 + 24;
  do
  {
    if (*(v25 - 6) <= 0xFFFFFFFD)
    {
      v26 = *(v25 - 2);
      if (v25 != v26)
      {
        free(v26);
      }
    }

    v25 += 48;
    v24 -= 48;
  }

  while (v24);
  v23 = v32;
  v27 = 48 * v34;
LABEL_57:
  llvm::deallocate_buffer(v23, v27, 8uLL);
}

void sub_1000A49AC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 12) >= a2)
  {
    return;
  }

  v26[7] = v2;
  v26[8] = v3;
  v26[0] = 0;
  v5 = (a1 + 16);
  v6 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, v26);
  v7 = *a1;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = (v8 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 8 * v8;
    if (v9 >= 0xB)
    {
      v13 = v7 >= &v6[v10] || v6 >= &v7[v10];
      v11 = v6;
      v12 = *a1;
      if (v13)
      {
        v14 = v9 + 1;
        v15 = 8 * (v14 & 0x3FFFFFFFFFFFFFFCLL);
        v11 = &v6[v15];
        v12 = &v7[v15];
        v16 = (v7 + 16);
        v17 = v6 + 16;
        v18 = v14 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v19 = *(v16 - 1);
          v20 = *v16;
          *(v16 - 1) = 0uLL;
          *v16 = 0uLL;
          *(v17 - 1) = v19;
          *v17 = v20;
          v16 += 2;
          v17 += 2;
          v18 -= 4;
        }

        while (v18);
        if (v14 == (v14 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_15:
          v23 = v7 - 8;
          do
          {
            v24 = *&v23[v10];
            *&v23[v10] = 0;
            if (v24)
            {
              mlir::Region::~Region(v24);
              operator delete();
            }

            v10 -= 8;
          }

          while (v10);
          v7 = *a1;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v11 = v6;
      v12 = *a1;
    }

    v21 = &v7[8 * v8];
    do
    {
      v22 = *v12;
      *v12 = 0;
      v12 += 8;
      *v11 = v22;
      v11 += 8;
    }

    while (v12 != v21);
    goto LABEL_15;
  }

LABEL_20:
  v25 = v26[0];
  if (v7 != v5)
  {
    free(v7);
  }

  *a1 = v6;
  *(a1 + 12) = v25;
}

uint64_t sub_1000A4B14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50[0] = a3;
  v50[1] = a4;
  v4 = a1[86];
  v5 = *(v4 - 32) + 4 * *(v4 - 24);
  v7 = *(v5 - 4);
  v6 = (v5 - 4);
  v40 = v7 + a4;
  v8 = (*(v4 - 48) - *(v4 - 56)) >> 3;
  if (v8 >= (v7 + a4))
  {
    if (a4)
    {
      v17 = 0;
      v18 = a4;
      do
      {
        v20 = mlir::ValueRange::dereference_iterator(v50, v17);
        v19 = *v6;
        v21 = *(v4 - 56);
        v22 = *(v21 + 8 * v19);
        *(v21 + 8 * v19) = v20;
        v51 = v22;
        if (v22)
        {
          v23 = v20;
          DefiningOp = mlir::Value::getDefiningOp(&v51);
          v25 = v51;
          while (1)
          {
            v26 = *v25;
            if (!*v25)
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

            v26[3] = v23;
            v26[1] = v23;
            v29 = *v23;
            *v26 = *v23;
            if (v29)
            {
              *(v29 + 8) = v26;
            }

            *v23 = v26;
          }

          mlir::Operation::moveBefore(DefiningOp, (a1 + 100), a1 + 104);
          LODWORD(v19) = *v6;
        }

        ++v17;
        *v6 = v19 + 1;
      }

      while (v17 != v18);
    }

    return 1;
  }

  else
  {
    v39 = (v8 - 1);
    mlir::emitError(a2, &v51);
    if (v51)
    {
      sub_1000A59F4(&v52, "value index range was outside of the expected range for the parent region, got [", v6, ", ", &v40, "), but the maximum index was ", &v39);
    }

    sub_100062C04(v41, &v51);
    if (v51)
    {
      mlir::InFlightDiagnostic::report(&v51);
    }

    if (v60 == 1)
    {
      if (v59 != &v60)
      {
        free(v59);
      }

      v9 = __p;
      if (__p)
      {
        v10 = v58;
        v11 = __p;
        if (v58 != __p)
        {
          do
          {
            v10 = sub_100052FFC(v10 - 1);
          }

          while (v10 != v9);
          v11 = __p;
        }

        v58 = v9;
        operator delete(v11);
      }

      v12 = v55;
      if (v55)
      {
        v13 = v56;
        v14 = v55;
        if (v56 != v55)
        {
          do
          {
            v15 = *--v13;
            *v13 = 0;
            if (v15)
            {
              operator delete[]();
            }
          }

          while (v13 != v12);
          v14 = v55;
        }

        v56 = v12;
        operator delete(v14);
      }

      if (v53 != &v54)
      {
        free(v53);
      }
    }

    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
    if (v41[0])
    {
      mlir::InFlightDiagnostic::report(v41);
    }

    if (v49 == 1)
    {
      if (v48 != &v49)
      {
        free(v48);
      }

      v31 = v46;
      if (v46)
      {
        v32 = v47;
        v33 = v46;
        if (v47 != v46)
        {
          do
          {
            v32 = sub_100052FFC(v32 - 1);
          }

          while (v32 != v31);
          v33 = v46;
        }

        v47 = v31;
        operator delete(v33);
      }

      v34 = v44;
      if (v44)
      {
        v35 = v45;
        v36 = v44;
        if (v45 != v44)
        {
          do
          {
            v37 = *--v35;
            *v35 = 0;
            if (v37)
            {
              operator delete[]();
            }
          }

          while (v35 != v34);
          v36 = v44;
        }

        v45 = v34;
        operator delete(v36);
      }

      if (v42 != &v43)
      {
        free(v42);
      }
    }
  }

  return v30;
}

void sub_1000A4E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  mlir::emitError(a2, &v14);
  if (v14)
  {
    sub_1000A5014(&v15, "expected attribute of type: ", a3, ", but got: ", a4);
  }

  sub_100062C04(a1, &v14);
  if (v14)
  {
    mlir::InFlightDiagnostic::report(&v14);
  }

  if (v23 == 1)
  {
    if (v22 != &v23)
    {
      free(v22);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v21;
      v9 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = sub_100052FFC(v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v21 = v7;
      operator delete(v9);
    }

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      v12 = v18;
      if (v19 != v18)
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
        v12 = v18;
      }

      v19 = v10;
      operator delete(v12);
    }

    if (v16 != &v17)
    {
      free(v16);
    }
  }
}

uint64_t sub_1000A5014(uint64_t a1, char *__s, uint64_t a3, char *a4, uint64_t *a5)
{
  v10 = strlen(__s);
  v11 = a1 + 16;
  v12 = *(a1 + 16);
  LODWORD(v20) = 3;
  v21 = __s;
  v22 = v10;
  v13 = *(a1 + 24);
  v14 = &v20;
  if (v13 >= *(a1 + 28))
  {
    if (v12 <= &v20 && v12 + 24 * v13 > &v20)
    {
      v19 = &v20 - v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v19[v12];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v11, (a1 + 32), v13 + 1, 24);
      v12 = *(a1 + 16);
      v14 = &v20;
    }
  }

  v15 = v12 + 24 * *(a1 + 24);
  v16 = *v14;
  *(v15 + 16) = v14[2];
  *v15 = v16;
  ++*(a1 + 24);
  v23 = 261;
  v17 = *(a3 + 8);
  v20 = *a3;
  v21 = v17;
  mlir::Diagnostic::operator<<(a1, &v20);
  return sub_1000A513C(a1, a4, a5);
}

uint64_t sub_1000A513C(uint64_t a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *(a1 + 16);
  v21 = 3;
  v22 = __s;
  v23 = v6;
  v8 = *(a1 + 24);
  v9 = &v21;
  if (v8 >= *(a1 + 28))
  {
    if (v7 <= &v21 && v7 + 24 * v8 > &v21)
    {
      v19 = &v21 - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v19[v7];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v8 + 1, 24);
      v7 = *(a1 + 16);
      v9 = &v21;
    }
  }

  v10 = v7 + 24 * *(a1 + 24);
  v11 = *v9;
  *(v10 + 16) = *(v9 + 2);
  *v10 = v11;
  ++*(a1 + 24);
  v12 = *a3;
  v13 = &v21;
  mlir::DiagnosticArgument::DiagnosticArgument(&v21, v12);
  v14 = *(a1 + 24);
  v15 = *(a1 + 16);
  if (v14 >= *(a1 + 28))
  {
    if (v15 <= &v21 && v15 + 24 * v14 > &v21)
    {
      v20 = &v21 - v15;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v20[v15];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v14 + 1, 24);
      v15 = *(a1 + 16);
      v13 = &v21;
    }
  }

  v16 = v15 + 24 * *(a1 + 24);
  v17 = *v13;
  *(v16 + 16) = *(v13 + 2);
  *v16 = v17;
  ++*(a1 + 24);
  return a1;
}

const char *sub_1000A52DC()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::LocationAttr]";
  v6 = 80;
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

const char *sub_1000A535C()
{
  v5 = "StringRef llvm::detail::getTypeNameImpl() [DesiredTypeName = mlir::DictionaryAttr]";
  v6 = 82;
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

uint64_t sub_1000A53DC(uint64_t *a1, _DWORD *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = (37 * *a2) & (v3 - 1);
    v7 = (*a1 + 48 * v6);
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
        v7 = (v4 + 48 * (v13 & v5));
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

uint64_t sub_1000A5480(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2;
  v12 = a2;
  v6 = *(a1 + 2);
  v7 = *(a1 + 4);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v9 = a3;
    v7 *= 2;
  }

  else
  {
    if (v7 + ~v6 - *(a1 + 3) > v7 >> 3)
    {
      *(a1 + 2) = v6 + 1;
      if (*v5 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = a3;
  }

  v10 = a1;
  sub_1000A5598(a1, v7);
  sub_1000A53DC(v10, v9, &v12);
  a1 = v10;
  a3 = v9;
  v11 = *(v10 + 2);
  v5 = v12;
  *(a1 + 2) = v11 + 1;
  if (*v5 != -1)
  {
LABEL_4:
    --*(a1 + 3);
  }

LABEL_5:
  *v5 = *a3;
  *(v5 + 8) = v5 + 24;
  *(v5 + 16) = 0x400000000;
  if (*(a4 + 8))
  {
    sub_10008BE34(v5 + 8, a4);
  }

  *(v5 + 40) = *(a4 + 32);
  return v5;
}

void sub_1000A5598(uint64_t a1, int a2)
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
  buffer = llvm::allocate_buffer((48 * v8), 8uLL);
  *a1 = buffer;
  if (!v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (!v11)
    {
      return;
    }

    v12 = 48 * v11 - 48;
    if (v12 >= 0x30)
    {
      v14 = v12 / 0x30 + 1;
      v13 = &buffer[12 * (v14 & 0xFFFFFFFFFFFFFFELL)];
      v15 = buffer;
      v16 = v14 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *v15 = -1;
        v15[12] = -1;
        v15 += 24;
        v16 -= 2;
      }

      while (v16);
      if (v14 == (v14 & 0xFFFFFFFFFFFFFFELL))
      {
        return;
      }
    }

    else
    {
      v13 = buffer;
    }

    v17 = &buffer[12 * v11];
    do
    {
      *v13 = -1;
      v13 += 12;
    }

    while (v13 != v17);
    return;
  }

  v10 = 12 * v3;
  sub_1000A56DC(a1, v4, &v4[v10]);

  llvm::deallocate_buffer(v4, (v10 * 4), 8uLL);
}

void sub_1000A56DC(uint64_t a1, int *a2, int *a3)
{
  v4 = a2;
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *a1;
    v8 = 48 * v6 - 48;
    if (v8 < 0x30)
    {
      v9 = *a1;
LABEL_7:
      v13 = &v7[12 * v6];
      do
      {
        *v9 = -1;
        v9 += 12;
      }

      while (v9 != v13);
      goto LABEL_9;
    }

    v10 = v8 / 0x30 + 1;
    v9 = &v7[12 * (v10 & 0xFFFFFFFFFFFFFFELL)];
    v11 = *a1;
    v12 = v10 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *v11 = -1;
      v11[12] = -1;
      v11 += 24;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0xFFFFFFFFFFFFFFELL))
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
      if (*v4 <= 0xFFFFFFFD)
      {
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = v15 - 1;
          v17 = v16 & (37 * v14);
          v18 = *a1 + 48 * v17;
          v19 = *v18;
          if (v14 != *v18)
          {
            v20 = 0;
            v21 = 1;
            while (v19 != -1)
            {
              if (v20)
              {
                v22 = 0;
              }

              else
              {
                v22 = v19 == -2;
              }

              if (v22)
              {
                v20 = v18;
              }

              v23 = v17 + v21++;
              v17 = v23 & v16;
              v18 = *a1 + 48 * v17;
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
          }
        }

        else
        {
          v18 = 0;
        }

LABEL_25:
        *v18 = v14;
        *(v18 + 8) = v18 + 24;
        *(v18 + 16) = 0x400000000;
        if (*(v4 + 4))
        {
          sub_10008BE34(v18 + 8, v4 + 1);
        }

        *(v18 + 40) = *(v4 + 40);
        ++*(a1 + 8);
        v24 = v4[1];
        if (v24 != (v4 + 3))
        {
          free(v24);
        }
      }

      v4 += 6;
    }

    while (v4 != a3);
  }
}

void sub_1000A58A0(uint64_t a1, unint64_t a2)
{
  v24 = 0;
  v3 = (a1 + 16);
  v4 = llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 8, &v24);
  v5 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = (v7 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  v9 = 8 * v7;
  if (v8 < 0xB)
  {
    v10 = v4;
LABEL_12:
    v19 = &v5[8 * v7];
    do
    {
      v20 = *v6;
      *v6 = 0;
      v6 += 8;
      *v10 = v20;
      v10 += 8;
    }

    while (v6 != v19);
    goto LABEL_14;
  }

  v11 = v5 >= &v4[v9] || v4 >= &v5[v9];
  v10 = v4;
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v8 + 1;
  v13 = 8 * (v12 & 0x3FFFFFFFFFFFFFFCLL);
  v10 = &v4[v13];
  v6 = &v5[v13];
  v14 = (v5 + 16);
  v15 = v4 + 16;
  v16 = v12 & 0x3FFFFFFFFFFFFFFCLL;
  do
  {
    v17 = *(v14 - 1);
    v18 = *v14;
    *(v14 - 1) = 0uLL;
    *v14 = 0uLL;
    *(v15 - 1) = v17;
    *v15 = v18;
    v14 += 2;
    v15 += 2;
    v16 -= 4;
  }

  while (v16);
  if (v12 != (v12 & 0x3FFFFFFFFFFFFFFCLL))
  {
    goto LABEL_12;
  }

LABEL_14:
  v21 = v5 - 8;
  do
  {
    v22 = *&v21[v9];
    *&v21[v9] = 0;
    if (v22)
    {
      mlir::Region::~Region(v22);
      operator delete();
    }

    v9 -= 8;
  }

  while (v9);
  v6 = *a1;
LABEL_19:
  v23 = v24;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v4;
  *(a1 + 12) = v23;
}