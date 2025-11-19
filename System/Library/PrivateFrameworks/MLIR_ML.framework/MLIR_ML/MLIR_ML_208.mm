uint64_t llvm::FixedPointSemantics::getCommonSemantics(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = ((*a1 | *a2) >> 29) & 1;
  v5 = *a2 < 0 && ((*a1 | *a2) & 0x40000000) == 0;
  if (v4)
  {
    v5 = 0;
  }

  if (v2 >= 0)
  {
    v5 = 0;
  }

  v6 = (8 * v2) >> 19;
  v7 = ~((v2 & 0xA0000000) != 0) + v6 + v2;
  v8 = (8 * v3) >> 19;
  v9 = ~((v3 & 0xA0000000) != 0) + v8 + v3;
  if (v7 <= v9)
  {
    LOWORD(v7) = v9;
  }

  if (v8 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  v11 = v7 - v10;
  if (v4 | v5)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v11 + v12;
  if (v4)
  {
    v14 = 0x20000000;
  }

  else
  {
    v14 = 0;
  }

  if (((*a1 | *a2) & 0x40000000) != 0)
  {
    v15 = 0x40000000;
  }

  else
  {
    v15 = 0;
  }

  if (v5)
  {
    v16 = 0x80000000;
  }

  else
  {
    v16 = 0;
  }

  return (v15 | v14) & 0xE0000000 | ((v10 & 0x1FFF) << 16) | v16 & 0xFFFF0000 | v13;
}

uint64_t llvm::APFixedPoint::add@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *(a2 + 4);
  v9 = *(this + 4);
  v10 = ((v9 | v8) >> 29) & 1;
  v11 = ((v9 | v8) & 0x40000000) == 0;
  if (v9 < 0 && (((v9 | v8) >> 29) & 1) == 0)
  {
    v7 = v8 < 0 && v11;
  }

  v12 = (8 * v9) >> 19;
  v13 = ~((v9 & 0xA0000000) != 0) + v12 + v9;
  v14 = (8 * v8) >> 19;
  v15 = ~((v8 & 0xA0000000) != 0) + v14 + v8;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v10 | v7)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v10)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v7)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFF0000 | v19 | v21 & 0xE000FFFF | ((v16 & 0x1FFF) << 16) | v20;
  v47 = v23;
  llvm::APFixedPoint::convert(this, &v47, 0, &v44);
  llvm::APFixedPoint::convert(a2, &v47, 0, &v41);
  v49 = v45;
  if (v45 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, &v44);
  }

  v39 = v45;
  v38 = v44;
  v40 = (v46 & 0x20000000) == 0;
  v49 = v42;
  if (v42 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, &v41);
  }

  v36 = v42;
  v35 = v41;
  v37 = (v43 & 0x20000000) == 0;
  v34 = 0;
  v33 = 0;
  if (v11)
  {
    if (v40)
    {
      result = llvm::APInt::uadd_ov(&v38, &v35, &v34, &v27);
      v25 = v27;
      v31 = v27;
      v26 = v28;
      v32 = v28;
      v28 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    result = llvm::APInt::sadd_ov(&v38, &v35, &v34, &v27);
    v25 = v27;
    v31 = v27;
    v26 = v28;
    v32 = v28;
    v28 = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!v10)
    {
      result = llvm::APInt::uadd_sat(&v38, &v35, &v29);
      v25 = v29;
      v31 = v29;
      v26 = v30;
      v32 = v30;
      v30 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    result = llvm::APInt::sadd_sat(&v38, &v35, &v29);
    v25 = v29;
    v31 = v29;
    v26 = v30;
    v32 = v30;
    v30 = 0;
    if (a3)
    {
LABEL_35:
      *a3 = v34;
    }
  }

LABEL_36:
  v49 = v26;
  if (v26 > 0x40)
  {
    llvm::APInt::initSlowCase(&v48, &v31);
  }

  *(a4 + 8) = v26;
  *a4 = v25;
  *(a4 + 12) = v10 ^ 1;
  *(a4 + 16) = v23;
  if (v36 >= 0x41)
  {
    result = v35;
    if (v35)
    {
      result = MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }
  }

  if (v39 >= 0x41)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  if (v42 >= 0x41)
  {
    result = v41;
    if (v41)
    {
      result = MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
      return MEMORY[0x259C63150](v44, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APFixedPoint::sub@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *(a2 + 4);
  v9 = *(this + 4);
  v10 = ((v9 | v8) >> 29) & 1;
  v11 = ((v9 | v8) & 0x40000000) == 0;
  if (v9 < 0 && (((v9 | v8) >> 29) & 1) == 0)
  {
    v7 = v8 < 0 && v11;
  }

  v12 = (8 * v9) >> 19;
  v13 = ~((v9 & 0xA0000000) != 0) + v12 + v9;
  v14 = (8 * v8) >> 19;
  v15 = ~((v8 & 0xA0000000) != 0) + v14 + v8;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v10 | v7)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v10)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v11)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v7)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFF0000 | v19 | v21 & 0xE000FFFF | ((v16 & 0x1FFF) << 16) | v20;
  v47 = v23;
  llvm::APFixedPoint::convert(this, &v47, 0, &v44);
  llvm::APFixedPoint::convert(a2, &v47, 0, &v41);
  v49 = v45;
  if (v45 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, &v44);
  }

  v39 = v45;
  v38 = v44;
  v40 = (v46 & 0x20000000) == 0;
  v49 = v42;
  if (v42 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v48, &v41);
  }

  v36 = v42;
  v35 = v41;
  v37 = (v43 & 0x20000000) == 0;
  v34 = 0;
  v33 = 0;
  if (v11)
  {
    if (v40)
    {
      result = llvm::APInt::usub_ov(&v38, &v35, &v34, &v27);
      v25 = v27;
      v31 = v27;
      v26 = v28;
      v32 = v28;
      v28 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    result = llvm::APInt::ssub_ov(&v38, &v35, &v34, &v27);
    v25 = v27;
    v31 = v27;
    v26 = v28;
    v32 = v28;
    v28 = 0;
    if (a3)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (!v10)
    {
      result = llvm::APInt::usub_sat(&v38, &v35, &v29);
      v25 = v29;
      v31 = v29;
      v26 = v30;
      v32 = v30;
      v30 = 0;
      if (!a3)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    result = llvm::APInt::ssub_sat(&v38, &v35, &v29);
    v25 = v29;
    v31 = v29;
    v26 = v30;
    v32 = v30;
    v30 = 0;
    if (a3)
    {
LABEL_35:
      *a3 = v34;
    }
  }

LABEL_36:
  v49 = v26;
  if (v26 > 0x40)
  {
    llvm::APInt::initSlowCase(&v48, &v31);
  }

  *(a4 + 8) = v26;
  *a4 = v25;
  *(a4 + 12) = v10 ^ 1;
  *(a4 + 16) = v23;
  if (v36 >= 0x41)
  {
    result = v35;
    if (v35)
    {
      result = MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }
  }

  if (v39 >= 0x41)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  if (v42 >= 0x41)
  {
    result = v41;
    if (v41)
    {
      result = MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
      return MEMORY[0x259C63150](v44, 0x1000C8000313F17);
    }
  }

  return result;
}

const void *llvm::APFixedPoint::mul@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 4);
  v8 = *(this + 4);
  v9 = ((v8 | v7) >> 29) & 1;
  v10 = ((v8 | v7) & 0x40000000) == 0;
  v11 = v7 < 0 && v10;
  if (v9)
  {
    v11 = 0;
  }

  if (v8 >= 0)
  {
    v11 = 0;
  }

  v12 = (8 * v8) >> 19;
  v13 = ~((v8 & 0xA0000000) != 0) + v12 + v8;
  v14 = (8 * v7) >> 19;
  v15 = ~((v7 & 0xA0000000) != 0) + v14 + v7;
  if (v13 > v15)
  {
    LOWORD(v15) = v13;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = v15 - v16;
  if (v9 | v11)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  v19 = v17 + v18;
  if (v9)
  {
    v20 = 0x20000000;
  }

  else
  {
    v20 = 0;
  }

  if (v10)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0x40000000;
  }

  if (v11)
  {
    v22 = 0x80000000;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 & 0xE0000000 | ((v16 & 0x1FFF) << 16) | v20 & 0xFFFF0000 | v21 & 0xFFFF0000 | v19;
  v71 = v23;
  llvm::APFixedPoint::convert(this, &v71, 0, &v68);
  llvm::APFixedPoint::convert(a2, &v71, 0, &v65);
  v35 = v69;
  if (v69 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v34, &v68);
  }

  v63 = v69;
  v62 = v68;
  v64 = (v70 & 0x20000000) == 0;
  v35 = v66;
  if (v66 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v34, &v65);
  }

  v60 = v66;
  v59 = v65;
  v61 = (v67 & 0x20000000) == 0;
  v58 = 0;
  if (v9)
  {
    llvm::APInt::sext(&v62, 2 * v19, &v56);
    if (v63 >= 0x41 && v62)
    {
      MEMORY[0x259C63150](v62, 0x1000C8000313F17);
    }

    v62 = v56;
    v63 = v57;
    v57 = 0;
    llvm::APInt::sext(&v59, 2 * v19, &v54);
    if (v60 >= 0x41 && v59)
    {
      MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }

    v59 = v54;
    v60 = v55;
    v55 = 0;
    v48 = 1;
    v47 = 0;
    v49 = 0;
    llvm::APInt::smul_ov(&v62, &v59, &v58, &v34);
    llvm::APInt::relativeAShr(&v34, -v16, &v45);
    if (v48 >= 0x41 && v47)
    {
      MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }

    v47 = v45;
    v48 = v46;
    v46 = 0;
    if (v35 < 0x41)
    {
      goto LABEL_50;
    }

LABEL_48:
    if (v34)
    {
      MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }

    goto LABEL_50;
  }

  llvm::APInt::zext(&v62, 2 * v19, &v52);
  if (v63 >= 0x41 && v62)
  {
    MEMORY[0x259C63150](v62, 0x1000C8000313F17);
  }

  v62 = v52;
  v63 = v53;
  v53 = 0;
  llvm::APInt::zext(&v59, 2 * v19, &v50);
  if (v60 >= 0x41 && v59)
  {
    MEMORY[0x259C63150](v59, 0x1000C8000313F17);
  }

  v59 = v50;
  v60 = v51;
  v51 = 0;
  v48 = 1;
  v47 = 0;
  v49 = 0;
  llvm::APInt::umul_ov(&v62, &v59, &v58, &v34);
  llvm::APInt::relativeLShr(&v34, -v16, &v43);
  if (v48 >= 0x41 && v47)
  {
    MEMORY[0x259C63150](v47, 0x1000C8000313F17);
  }

  v47 = v43;
  v48 = v44;
  v44 = 0;
  if (v35 >= 0x41)
  {
    goto LABEL_48;
  }

LABEL_50:
  v24 = v9 ^ 1;
  v49 = v24;
  llvm::APFixedPoint::getMax(&v71, &v34);
  v73 = v35;
  if (v35 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v72, &v34);
  }

  v38 = v35;
  v37 = v34;
  v39 = (v36 & 0x20000000) == 0;
  v25 = 2 * v19;
  if ((v36 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v37, v25, &v72);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v37, v25, &v72);
  }

  v41 = v73;
  v40 = v72;
  v42 = v39;
  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(&v71, &v34);
  v73 = v35;
  if (v35 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v72, &v34);
  }

  v32 = v35;
  v31 = v34;
  v33 = (v36 & 0x20000000) == 0;
  v26 = 2 * v19;
  if ((v36 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v31, v26, &v72);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v31, v26, &v72);
  }

  v38 = v73;
  v37 = v72;
  v39 = v33;
  if (v32 >= 0x41 && v31)
  {
    MEMORY[0x259C63150](v31, 0x1000C8000313F17);
  }

  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  if (v10)
  {
    if (v49)
    {
      if ((llvm::APInt::compare(&v47, &v37) & 0x80000000) == 0)
      {
        v27 = llvm::APInt::compare(&v47, &v40);
LABEL_82:
        v28 = v27 > 0;
        goto LABEL_89;
      }
    }

    else if ((llvm::APInt::compareSigned(&v47, &v37) & 0x80000000) == 0)
    {
      v27 = llvm::APInt::compareSigned(&v47, &v40);
      goto LABEL_82;
    }

    v28 = 1;
LABEL_89:
    v58 = v28;
    if (!a3)
    {
      goto LABEL_98;
    }

LABEL_97:
    *a3 = v58;
    goto LABEL_98;
  }

  if (v49)
  {
    if ((llvm::APInt::compare(&v47, &v37) & 0x80000000) == 0)
    {
      if (llvm::APInt::compare(&v47, &v40) < 1)
      {
        goto LABEL_96;
      }

      goto LABEL_85;
    }
  }

  else if ((llvm::APInt::compareSigned(&v47, &v37) & 0x80000000) == 0)
  {
    if (llvm::APInt::compareSigned(&v47, &v40) < 1)
    {
      goto LABEL_96;
    }

LABEL_85:
    if (v48 > 0x40 || v41 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v47, &v40);
    }

    else
    {
      v47 = v40;
      v48 = v41;
    }

    v49 = v42;
LABEL_96:
    if (!a3)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  if (v48 > 0x40 || v38 > 0x40)
  {
    llvm::APInt::assignSlowCase(&v47, &v37);
  }

  else
  {
    v47 = v37;
    v48 = v38;
  }

  v49 = v39;
  if (a3)
  {
    goto LABEL_97;
  }

LABEL_98:
  result = llvm::APInt::sextOrTrunc(&v47, v19, &v72);
  v35 = v73;
  if (v73 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34, &v72);
  }

  v30 = v72;
  *(a4 + 8) = v73;
  *a4 = v30;
  *(a4 + 12) = v24;
  *(a4 + 16) = v23;
  if (v38 >= 0x41)
  {
    result = v37;
    if (v37)
    {
      result = MEMORY[0x259C63150](v37, 0x1000C8000313F17);
    }
  }

  if (v41 >= 0x41)
  {
    result = v40;
    if (v40)
    {
      result = MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }
  }

  if (v48 >= 0x41)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }
  }

  if (v60 >= 0x41)
  {
    result = v59;
    if (v59)
    {
      result = MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }
  }

  if (v63 >= 0x41)
  {
    result = v62;
    if (v62)
    {
      result = MEMORY[0x259C63150](v62, 0x1000C8000313F17);
    }
  }

  if (v66 >= 0x41)
  {
    result = v65;
    if (v65)
    {
      result = MEMORY[0x259C63150](v65, 0x1000C8000313F17);
    }
  }

  if (v69 >= 0x41)
  {
    result = v68;
    if (v68)
    {
      return MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }
  }

  return result;
}

unint64_t *llvm::APFixedPoint::div@<X0>(llvm::APFixedPoint *this@<X0>, const llvm::APFixedPoint *a2@<X1>, BOOL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 4);
  v7 = *(this + 4);
  v8 = ((v7 | v6) >> 29) & 1;
  v9 = ((v7 | v6) & 0x40000000) == 0;
  v10 = v6 < 0 && v9;
  if (v8)
  {
    v10 = 0;
  }

  if (v7 >= 0)
  {
    v10 = 0;
  }

  v11 = (8 * v7) >> 19;
  v12 = ~((v7 & 0xA0000000) != 0) + v11 + v7;
  v13 = (8 * v6) >> 19;
  v14 = ~((v6 & 0xA0000000) != 0) + v13 + v6;
  if (v12 > v14)
  {
    LOWORD(v14) = v12;
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = v14 - v15;
  if (v8 | v10)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  v18 = v16 + v17;
  if (v8)
  {
    v19 = 0x20000000;
  }

  else
  {
    v19 = 0;
  }

  if (v9)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x40000000;
  }

  if (v10)
  {
    v21 = 0x80000000;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 & 0xE0000000 | ((v15 & 0x1FFF) << 16) | v19 & 0xFFFF0000 | v20 & 0xFFFF0000 | v18;
  v91 = v22;
  llvm::APFixedPoint::convert(this, &v91, 0, &v88);
  llvm::APFixedPoint::convert(a2, &v91, 0, &v85);
  v54 = v89;
  if (v89 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v53, &v88);
  }

  v83 = v89;
  v82 = v88;
  v84 = (v90 & 0x20000000) == 0;
  v54 = v86;
  if (v86 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v53, &v85);
  }

  v80 = v86;
  v79 = v85;
  v81 = (v87 & 0x20000000) == 0;
  v23 = ((1 - (v15 + v18)) & ~((1 - (v15 + v18)) >> 31)) + 2 * v18;
  if (v8)
  {
    llvm::APInt::sext(&v82, v23, &v77);
    if (v83 >= 0x41 && v82)
    {
      MEMORY[0x259C63150](v82, 0x1000C8000313F17);
    }

    v82 = v77;
    v83 = v78;
    v78 = 0;
    v24 = v76;
    llvm::APInt::sext(&v79, v23, v76);
    if (v80 < 0x41)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (v79)
    {
      MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }

    goto LABEL_38;
  }

  llvm::APInt::zext(&v82, v23, &v74);
  if (v83 >= 0x41 && v82)
  {
    MEMORY[0x259C63150](v82, 0x1000C8000313F17);
  }

  v82 = v74;
  v83 = v75;
  v75 = 0;
  v24 = v73;
  llvm::APInt::zext(&v79, v23, v73);
  if (v80 >= 0x41)
  {
    goto LABEL_36;
  }

LABEL_38:
  v28 = *v24;
  v79 = *v24;
  v29 = *(v24 + 2);
  v80 = v29;
  *(v24 + 2) = 0;
  if (v15 < 0)
  {
    v34 = -v15;
    v72 = v83;
    if (v83 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v71, &v82);
    }

    v35 = v82 << v34;
    if (v83 == v34)
    {
      v35 = 0;
    }

    if (v83)
    {
      v36 = 0xFFFFFFFFFFFFFFFFLL >> -v83;
    }

    else
    {
      v36 = 0;
    }

    v71 = v36 & v35;
    v32 = &v83;
    v33 = &v72;
    v82 = v36 & v35;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_61;
    }

    v70 = v29;
    if (v29 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v69, &v79);
    }

    v30 = v28 << v15;
    if (v29 == v15)
    {
      v30 = 0;
    }

    if (v29)
    {
      v31 = 0xFFFFFFFFFFFFFFFFLL >> -v29;
    }

    else
    {
      v31 = 0;
    }

    v69 = v31 & v30;
    v32 = &v80;
    v33 = &v70;
    if (v80 >= 0x41 && v79)
    {
      MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }

    v79 = v69;
  }

  *v32 = *v33;
  *v33 = 0;
LABEL_61:
  v67 = 1;
  v66 = 0;
  v68 = 0;
  if (((v8 ^ 1) & 1) == 0)
  {
    v54 = 1;
    v53 = 0;
    llvm::APInt::sdivrem(&v82, &v79, &v66, &v53, v25, v26, v27);
    if (v84)
    {
      if (v81)
      {
        goto LABEL_91;
      }

      v37 = 0;
    }

    else
    {
      if (v83 >= 0x41)
      {
        v38 = (v82 + 8 * ((v83 - 1) >> 6));
      }

      else
      {
        v38 = &v82;
      }

      v39 = (1 << (v83 - 1)) & *v38;
      v37 = v39 != 0;
      if (v81)
      {
        if (!v39)
        {
          goto LABEL_91;
        }

LABEL_78:
        v41 = v54;
        if (v54 > 0x40)
        {
          if (llvm::APInt::countLeadingZerosSlowCase(&v53) == v41)
          {
LABEL_92:
            if (v53)
            {
              MEMORY[0x259C63150](v53, 0x1000C8000313F17);
            }

            goto LABEL_94;
          }
        }

        else if (!v53)
        {
          goto LABEL_94;
        }

        v65 = v67;
        if (v67 > 0x40)
        {
          llvm::APInt::initSlowCase(&v64, &v66);
        }

        v64 = v66;
        llvm::APInt::operator-=(&v64, 1uLL);
        v42 = v65;
        v43 = v64;
        v65 = 0;
        if (v67 > 0x40 && v66)
        {
          MEMORY[0x259C63150](v66, 0x1000C8000313F17);
          v66 = v43;
          v67 = v42;
          if (v65 >= 0x41 && v64)
          {
            MEMORY[0x259C63150](v64, 0x1000C8000313F17);
          }
        }

        else
        {
          v66 = v64;
          v67 = v42;
        }

LABEL_91:
        if (v54 < 0x41)
        {
          goto LABEL_94;
        }

        goto LABEL_92;
      }
    }

    v40 = &v79;
    if (v80 >= 0x41)
    {
      v40 = &v79[(v80 - 1) >> 6];
    }

    if (v37 == ((*v40 >> (v80 - 1)) & 1))
    {
      goto LABEL_91;
    }

    goto LABEL_78;
  }

  llvm::APInt::udiv(&v82, &v79, &v62);
  if (v67 >= 0x41 && v66)
  {
    MEMORY[0x259C63150](v66, 0x1000C8000313F17);
  }

  v66 = v62;
  v67 = v63;
  v63 = 0;
LABEL_94:
  v68 = v8 ^ 1;
  llvm::APFixedPoint::getMax(&v91, &v53);
  v93 = v54;
  if (v54 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v92, &v53);
  }

  v57 = v54;
  v56 = v53;
  v58 = (v55 & 0x20000000) == 0;
  if ((v55 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v56, v23, &v92);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v56, v23, &v92);
  }

  v60 = v93;
  v59 = v92;
  v61 = v58;
  if (v57 >= 0x41 && v56)
  {
    MEMORY[0x259C63150](v56, 0x1000C8000313F17);
  }

  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(&v91, &v53);
  v93 = v54;
  if (v54 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v92, &v53);
  }

  v51 = v54;
  v50 = v53;
  v52 = (v55 & 0x20000000) == 0;
  if ((v55 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v50, v23, &v92);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v50, v23, &v92);
  }

  v57 = v93;
  v56 = v92;
  v58 = v52;
  if (v51 >= 0x41 && v50)
  {
    MEMORY[0x259C63150](v50, 0x1000C8000313F17);
  }

  if (v54 >= 0x41 && v53)
  {
    MEMORY[0x259C63150](v53, 0x1000C8000313F17);
  }

  if (v9)
  {
    if (v68)
    {
      if ((llvm::APInt::compare(&v66, &v56) & 0x80000000) == 0)
      {
        v44 = llvm::APInt::compare(&v66, &v59);
LABEL_126:
        v45 = v44 > 0;
        goto LABEL_134;
      }
    }

    else if ((llvm::APInt::compareSigned(&v66, &v56) & 0x80000000) == 0)
    {
      v44 = llvm::APInt::compareSigned(&v66, &v59);
      goto LABEL_126;
    }

    v45 = 1;
LABEL_134:
    v46 = a3;
    if (!a3)
    {
      goto LABEL_144;
    }

LABEL_143:
    *v46 = v45;
    goto LABEL_144;
  }

  if (v68)
  {
    if ((llvm::APInt::compare(&v66, &v56) & 0x80000000) == 0)
    {
      if (llvm::APInt::compare(&v66, &v59) < 1)
      {
LABEL_123:
        v45 = 0;
        goto LABEL_134;
      }

      goto LABEL_129;
    }

LABEL_136:
    if (v67 > 0x40 || v57 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v66, &v56);
    }

    else
    {
      v66 = v56;
      v67 = v57;
    }

    v46 = a3;
    v45 = 0;
    v68 = v58;
    if (a3)
    {
      goto LABEL_143;
    }

    goto LABEL_144;
  }

  if ((llvm::APInt::compareSigned(&v66, &v56) & 0x80000000) != 0)
  {
    goto LABEL_136;
  }

  if (llvm::APInt::compareSigned(&v66, &v59) < 1)
  {
    goto LABEL_123;
  }

LABEL_129:
  if (v67 <= 0x40 && v60 <= 0x40)
  {
    v66 = v59;
    v67 = v60;
    v46 = a3;
    v45 = 0;
    v68 = v61;
    if (!a3)
    {
      goto LABEL_144;
    }

    goto LABEL_143;
  }

  llvm::APInt::assignSlowCase(&v66, &v59);
  v46 = a3;
  v45 = 0;
  v68 = v61;
  if (a3)
  {
    goto LABEL_143;
  }

LABEL_144:
  result = llvm::APInt::sextOrTrunc(&v66, v18, &v92);
  v54 = v93;
  if (v93 > 0x40)
  {
    llvm::APInt::initSlowCase(&v53, &v92);
  }

  v48 = v92;
  *(a4 + 8) = v93;
  *a4 = v48;
  *(a4 + 12) = v8 ^ 1;
  *(a4 + 16) = v22;
  if (v57 >= 0x41)
  {
    result = v56;
    if (v56)
    {
      result = MEMORY[0x259C63150](v56, 0x1000C8000313F17);
    }
  }

  if (v60 >= 0x41)
  {
    result = v59;
    if (v59)
    {
      result = MEMORY[0x259C63150](v59, 0x1000C8000313F17);
    }
  }

  if (v67 >= 0x41)
  {
    result = v66;
    if (v66)
    {
      result = MEMORY[0x259C63150](v66, 0x1000C8000313F17);
    }
  }

  if (v80 >= 0x41)
  {
    result = v79;
    if (v79)
    {
      result = MEMORY[0x259C63150](v79, 0x1000C8000313F17);
    }
  }

  if (v83 >= 0x41)
  {
    result = v82;
    if (v82)
    {
      result = MEMORY[0x259C63150](v82, 0x1000C8000313F17);
    }
  }

  if (v86 >= 0x41)
  {
    result = v85;
    if (v85)
    {
      result = MEMORY[0x259C63150](v85, 0x1000C8000313F17);
    }
  }

  if (v89 >= 0x41)
  {
    result = v88;
    if (v88)
    {
      return MEMORY[0x259C63150](v88, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::APFixedPoint::shl@<X0>(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  v40 = *(this + 2);
  if (v40 > 0x40)
  {
    llvm::APInt::initSlowCase(&v39, this);
  }

  v39 = *this;
  v8 = *(this + 4);
  v7 = (this + 16);
  v41 = *(this + 12);
  v9 = 2 * v8;
  if ((v8 & 0x20000000) != 0)
  {
    v10 = v38;
    llvm::APInt::sext(&v39, v9, v38);
    if (v40 >= 0x41 && v39 != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = v37;
    llvm::APInt::zext(&v39, v9, v37);
    if (v40 >= 0x41 && v39 != 0)
    {
LABEL_15:
      MEMORY[0x259C63150]();
    }
  }

  v13 = *v10;
  v39 = *v10;
  v40 = *(v10 + 2);
  v14 = v40;
  *(v10 + 2) = 0;
  if (v14 < a3)
  {
    a3 = v14;
  }

  v26 = v14;
  if (v14 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, &v39);
  }

  v15 = v13 << a3;
  if (v14 == a3)
  {
    v15 = 0;
  }

  v16 = 0xFFFFFFFFFFFFFFFFLL >> -v14;
  if (!v14)
  {
    v16 = 0;
  }

  v35 = v14;
  v34 = v16 & v15;
  v36 = (*v7 & 0x20000000) == 0;
  llvm::APFixedPoint::getMax(v7, &v25);
  v43 = v26;
  if (v26 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v42, &v25);
  }

  v29 = v26;
  v28 = v25;
  v30 = (v27 & 0x20000000) == 0;
  if ((v27 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v28, v9, &v42);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v28, v9, &v42);
  }

  v32 = v43;
  v31 = v42;
  v33 = v30;
  if (v29 >= 0x41 && v28)
  {
    MEMORY[0x259C63150](v28, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  llvm::APFixedPoint::getMin(v7, &v25);
  v43 = v26;
  if (v26 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v42, &v25);
  }

  v23 = v26;
  v22 = v25;
  v24 = (v27 & 0x20000000) == 0;
  if ((v27 & 0x20000000) != 0)
  {
    llvm::APInt::sextOrTrunc(&v22, v9, &v42);
  }

  else
  {
    llvm::APInt::zextOrTrunc(&v22, v9, &v42);
  }

  v29 = v43;
  v28 = v42;
  v30 = v24;
  if (v23 >= 0x41 && v22)
  {
    MEMORY[0x259C63150](v22, 0x1000C8000313F17);
  }

  if (v26 >= 0x41 && v25)
  {
    MEMORY[0x259C63150](v25, 0x1000C8000313F17);
  }

  if ((*(v7 + 3) & 0x40) != 0)
  {
    if (v36)
    {
      if ((llvm::APInt::compare(&v34, &v28) & 0x80000000) == 0)
      {
        if (llvm::APInt::compare(&v34, &v31) < 1)
        {
          goto LABEL_54;
        }

        goto LABEL_61;
      }
    }

    else if ((llvm::APInt::compareSigned(&v34, &v28) & 0x80000000) == 0)
    {
      if (llvm::APInt::compareSigned(&v34, &v31) < 1)
      {
LABEL_54:
        v17 = 0;
        if (a2)
        {
          goto LABEL_71;
        }

        goto LABEL_72;
      }

LABEL_61:
      if (v35 > 0x40 || v32 > 0x40)
      {
        llvm::APInt::assignSlowCase(&v34, &v31);
      }

      else
      {
        v34 = v31;
        v35 = v32;
      }

      v17 = 0;
      v36 = v33;
      if (a2)
      {
        goto LABEL_71;
      }

      goto LABEL_72;
    }

    if (v35 > 0x40 || v29 > 0x40)
    {
      llvm::APInt::assignSlowCase(&v34, &v28);
    }

    else
    {
      v34 = v28;
      v35 = v29;
    }

    v17 = 0;
    v36 = v30;
    if (a2)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  if (v36)
  {
    if ((llvm::APInt::compare(&v34, &v28) & 0x80000000) == 0)
    {
      v17 = llvm::APInt::compare(&v34, &v31) > 0;
      if (!a2)
      {
        goto LABEL_72;
      }

LABEL_71:
      *a2 = v17;
      goto LABEL_72;
    }

    goto LABEL_64;
  }

  if ((llvm::APInt::compareSigned(&v34, &v28) & 0x80000000) != 0)
  {
LABEL_64:
    v17 = 1;
    if (a2)
    {
      goto LABEL_71;
    }

    goto LABEL_72;
  }

  v17 = llvm::APInt::compareSigned(&v34, &v31) > 0;
  if (a2)
  {
    goto LABEL_71;
  }

LABEL_72:
  result = llvm::APInt::sextOrTrunc(&v34, *v7, &v42);
  v26 = v43;
  if (v43 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v25, &v42);
  }

  v19 = v42;
  v20 = *v7;
  v21 = (*v7 & 0x20000000) == 0;
  *(a4 + 8) = v43;
  *a4 = v19;
  *(a4 + 12) = v21;
  *(a4 + 16) = v20;
  if (v29 >= 0x41)
  {
    result = v28;
    if (v28)
    {
      result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
    }
  }

  if (v32 >= 0x41)
  {
    result = v31;
    if (v31)
    {
      result = MEMORY[0x259C63150](v31, 0x1000C8000313F17);
    }
  }

  if (v35 >= 0x41)
  {
    result = v34;
    if (v34)
    {
      result = MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }

  if (v40 >= 0x41)
  {
    result = v39;
    if (v39)
    {
      return MEMORY[0x259C63150](v39, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::APFixedPoint::toString(llvm::APInt *a1, void *a2)
{
  v4 = *(a1 + 2);
  v45 = v4;
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v44, a1);
  }

  v5 = *a1;
  v6 = *(a1 + 4);
  v42 = v4;
  v41 = v5;
  v43 = (v6 & 0x20000000) == 0;
  v7 = (8 * v6) >> 19;
  if ((v7 & 0x80000000) == 0)
  {
    v39 = v4;
    v38 = v5;
    v40 = (v6 & 0x20000000) == 0;
    v8 = v4 + v7;
    if ((v6 & 0x20000000) != 0)
    {
      llvm::APInt::sext(&v38, v8, &v44);
      v9 = v45;
      v10 = v40;
      v11 = v44;
      if (v39 < 0x41)
      {
        goto LABEL_16;
      }
    }

    else
    {
      llvm::APInt::zext(&v38, v8, &v44);
      v9 = v45;
      v10 = v40;
      v11 = v44;
      if (v39 < 0x41)
      {
        goto LABEL_16;
      }
    }

    if (v38)
    {
      MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }

LABEL_16:
    v38 = v11;
    v39 = v9;
    v40 = v10;
    if (v9 > 0x40)
    {
      llvm::APInt::shlSlowCase(&v38, v7);
      v10 = v40;
    }

    else
    {
      v15 = v11 << v7;
      if (v9 == v7)
      {
        v15 = 0;
      }

      v16 = 0xFFFFFFFFFFFFFFFFLL >> -v9;
      if (!v9)
      {
        v16 = 0;
      }

      v38 = (v15 & v16);
    }

    result = llvm::APInt::toString(&v38, a2, 0xAu, !v10, 0, 1, 0);
    v18 = a2[1];
    if ((v18 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v18) = 46;
    v19 = a2[1];
    v20 = a2[2];
    a2[1] = v19 + 1;
    if (v19 + 2 > v20)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v19 + 1) = 48;
    ++a2[1];
    if (v39 >= 0x41)
    {
      result = v38;
      if (v38)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_89;
  }

  v12 = 8 * v6;
  v13 = v6;
  if (v6 & 0x20000000) != 0 && ((v41 >> (v4 - 1)))
  {
    v45 = v4;
    if (v4)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
    }

    else
    {
      v14 = 0;
    }

    v44 = (v14 & ~v5);
    llvm::APInt::operator++(&v44);
    v41 = v44;
    v42 = v45;
    v43 = 1;
    v21 = a2[1];
    if ((v21 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    *(*a2 + v21) = 45;
    ++a2[1];
    v12 = 8 * *(a1 + 4);
    v7 = v12 >> 19;
  }

  v22 = -v7;
  if (v13 <= -v7)
  {
    v45 = 64;
    v44 = 0;
    v46 = 0;
  }

  else
  {
    llvm::APSInt::operator>>(&v41, -v7, &v44);
  }

  if (v13 <= v22)
  {
    v23 = -v7;
  }

  else
  {
    v23 = v13;
  }

  llvm::APInt::zextOrTrunc(&v41, -v7, &v36);
  llvm::APInt::zext(&v36, v23 + 4, &v38);
  if (v37 >= 0x41 && v36)
  {
    MEMORY[0x259C63150](v36, 0x1000C8000313F17);
  }

  v35 = -v7;
  if (v22 > 0x40)
  {
    llvm::APInt::initSlowCase(&v34);
  }

  v24 = 0xFFFFFFFFFFFFFFFFLL >> ~(63 - v7);
  if (v12 < 0x80000)
  {
    v24 = 0;
  }

  v34 = v24;
  llvm::APInt::zext(&v34, v23 + 4, &v36);
  if (v35 >= 0x41 && v34)
  {
    MEMORY[0x259C63150](v34, 0x1000C8000313F17);
  }

  v35 = v23 + 4;
  if (v23 > 0x3C)
  {
    llvm::APInt::initSlowCase(&v34);
  }

  v34 = (0xFFFFFFFFFFFFFFFFLL >> ((v23 + 3) ^ 0x3F)) & 0xA;
  llvm::APInt::toString(&v44, a2, 0xAu, (v46 & 1) == 0, 0, 1, 0);
  v25 = a2[1];
  if ((v25 + 1) > a2[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*a2 + v25) = 46;
  ++a2[1];
  do
  {
    while (1)
    {
      llvm::APInt::operator*(&v38, &v34, &v30);
      v33 = v31;
      if (v31 > 0x40)
      {
        llvm::APInt::initSlowCase(&v32, &v30);
      }

      v32 = v30;
      if (v31 == v22)
      {
        v32 = 0;
      }

      else
      {
        v32 >>= v22;
      }

      llvm::APInt::toString(&v32, a2, 0xAu, !v43, 0, 1, 0);
      if (v33 >= 0x41 && v32)
      {
        MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }

      if (v31 >= 0x41 && v30)
      {
        MEMORY[0x259C63150](v30, 0x1000C8000313F17);
      }

      result = llvm::APInt::operator*(&v38, &v34, &v28);
      v26 = v29;
      if (v29 > 0x40)
      {
        result = llvm::APInt::andAssignSlowCase(&v28, &v36);
        v26 = v29;
        v27 = v28;
        v29 = 0;
        if (v39 <= 0x40)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v27 = (v28 & v36);
        v28 &= v36;
        v29 = 0;
        if (v39 <= 0x40)
        {
          goto LABEL_73;
        }
      }

      result = v38;
      if (!v38)
      {
LABEL_73:
        v38 = v27;
        v39 = v26;
        goto LABEL_74;
      }

      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
      v38 = v27;
      v39 = v26;
      if (v29 >= 0x41)
      {
        result = v28;
        if (v28)
        {
          result = MEMORY[0x259C63150](v28, 0x1000C8000313F17);
          v26 = v39;
        }
      }

LABEL_74:
      if (v26 >= 0x41)
      {
        break;
      }

      if (!v38)
      {
        goto LABEL_77;
      }
    }

    result = llvm::APInt::countLeadingZerosSlowCase(&v38);
  }

  while (v26 - result > 0x40 || *v38);
LABEL_77:
  if (v35 >= 0x41)
  {
    result = v34;
    if (v34)
    {
      result = MEMORY[0x259C63150](v34, 0x1000C8000313F17);
    }
  }

  if (v37 >= 0x41)
  {
    result = v36;
    if (v36)
    {
      result = MEMORY[0x259C63150](v36, 0x1000C8000313F17);
    }
  }

  if (v39 >= 0x41)
  {
    result = v38;
    if (v38)
    {
      result = MEMORY[0x259C63150](v38, 0x1000C8000313F17);
    }
  }

  if (v45 >= 0x41)
  {
    result = v44;
    if (v44)
    {
LABEL_88:
      result = MEMORY[0x259C63150](result, 0x1000C8000313F17);
    }
  }

LABEL_89:
  if (v42 >= 0x41)
  {
    result = v41;
    if (v41)
    {
      return MEMORY[0x259C63150](v41, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t *llvm::APSInt::operator>>@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  if (*(result + 12) == 1)
  {
    v5 = *(result + 2);
    v16 = v5;
    if (v5 > 0x40)
    {
      llvm::APInt::initSlowCase(&v15, result);
    }

    v15 = *result;
    if (v5 == a2)
    {
      v12 = 0;
      v7 = 1;
    }

    else
    {
      v12 = v15 >> a2;
      v7 = 1;
      v3 = v5;
    }
  }

  else
  {
    v6 = *(result + 2);
    v14 = v6;
    if (v6 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v13, result);
    }

    v7 = 0;
    v8 = *result << -v6 >> -v6;
    if (v6 == a2)
    {
      v9 = 63;
    }

    else
    {
      v9 = a2;
    }

    if (!v6)
    {
      v8 = 0;
    }

    v10 = v8 >> v9;
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v11 = 0;
    }

    v12 = v10 & v11;
    v3 = v6;
  }

  *(a3 + 8) = v3;
  *a3 = v12;
  *(a3 + 12) = v7;
  return result;
}

llvm::raw_ostream *llvm::APFixedPoint::print(llvm::APFixedPoint *this, llvm::raw_ostream *a2)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 4);
  if (*(a2 + 3) - v4 > 0xCuLL)
  {
    qmemcpy(v4, "APFixedPoint(", 13);
    *(a2 + 4) += 13;
    v5 = a2;
  }

  else
  {
    v5 = llvm::raw_ostream::write(a2, "APFixedPoint(", 0xDuLL);
  }

  __src = v18;
  *__len = xmmword_2573695B0;
  llvm::APFixedPoint::toString(this, &__src);
  v6 = __len[0];
  if (__len[0] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (__len[0] >= 0x17)
  {
    operator new();
  }

  v15 = __len[0];
  if (!__len[0])
  {
    LOBYTE(__p[0]) = 0;
    v7 = __src;
    if (__src == v18)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  memmove(__p, __src, __len[0]);
  *(__p + v6) = 0;
  v7 = __src;
  if (__src != v18)
  {
LABEL_8:
    free(v7);
  }

LABEL_9:
  if ((v15 & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = llvm::raw_ostream::write(v5, v8, v9);
  v11 = v10[4];
  if ((v10[3] - v11) > 2)
  {
    *(v11 + 2) = 123;
    *v11 = 8236;
    v10[4] += 3;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, ", {", 3uLL);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }
  }

  operator delete(__p[0]);
LABEL_23:
  result = llvm::FixedPointSemantics::print((this + 16), a2);
  v13 = *(a2 + 4);
  if (*(a2 + 3) - v13 <= 1uLL)
  {
    return llvm::raw_ostream::write(a2, "})", 2uLL);
  }

  *v13 = 10621;
  *(a2 + 4) += 2;
  return result;
}

llvm::raw_ostream *llvm::APFixedPoint::dump(llvm::APFixedPoint *this)
{
  v2 = llvm::errs(this);

  return llvm::APFixedPoint::print(this, v2);
}

int *llvm::APFixedPoint::negate@<X0>(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (this + 16);
  v5 = *(this + 4);
  if ((v5 & 0x40000000) == 0)
  {
    if (!a2)
    {
LABEL_37:
      v20 = *(this + 2);
      v30 = v20;
      if (v20 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v29, this);
      }

      if (v20)
      {
        v21 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
      }

      else
      {
        v21 = 0;
      }

      v29 = (v21 & ~*this);
LABEL_43:
      result = llvm::APInt::operator++(&v29);
      v22 = v29;
      v23 = *(this + 12);
      v27 = v30;
      v26 = v29;
      v28 = v23;
      if (v30 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v29, &v26);
      }

      v24 = *v6;
      v25 = (*v6 & 0x20000000) == 0;
      *(a3 + 8) = v30;
      *a3 = v22;
      *(a3 + 12) = v25;
      *(a3 + 16) = v24;
      return result;
    }

    if ((v5 & 0x20000000) != 0)
    {
      goto LABEL_28;
    }

    v7 = a2;
    v30 = 64;
    v29 = 0;
    v31 = 0;
    v8 = llvm::APSInt::compareValues(this, &v29);
    if (v30 >= 0x41 && v29)
    {
      v9 = v8;
      MEMORY[0x259C63150](v29, 0x1000C8000313F17);
      v8 = v9;
    }

    a2 = v7;
    if (v8)
    {
      v10 = 1;
LABEL_36:
      *a2 = v10;
      goto LABEL_37;
    }

    if ((*(v6 + 3) & 0x20) != 0)
    {
LABEL_28:
      v15 = *(this + 2);
      if (v15 <= 0x40)
      {
        v16 = *this == 1 << (v15 - 1);
        goto LABEL_32;
      }

      v17 = v15 - 1;
      if ((*(*this + 8 * ((v15 - 1) >> 6)) >> (v15 - 1)))
      {
        v18 = a2;
        v19 = llvm::APInt::countTrailingZerosSlowCase(this);
        a2 = v18;
        v16 = v19 == v17;
LABEL_32:
        v10 = v16;
        goto LABEL_36;
      }
    }

    v10 = 0;
    goto LABEL_36;
  }

  if (a2)
  {
    *a2 = 0;
    v5 = *v6;
  }

  if ((v5 & 0x20000000) != 0)
  {
    v12 = *(this + 2);
    if (v12 > 0x40)
    {
      if (((*(*this + 8 * ((v12 - 1) >> 6)) >> (v12 - 1)) & 1) == 0 || llvm::APInt::countTrailingZerosSlowCase(this) != v12 - 1)
      {
        v30 = v12;
        llvm::APInt::initSlowCase(&v29, this);
      }
    }

    else
    {
      v13 = *this;
      if (*this != 1 << (v12 - 1))
      {
        v30 = *(this + 2);
        v14 = 0xFFFFFFFFFFFFFFFFLL >> -v12;
        if (!v12)
        {
          v14 = 0;
        }

        v29 = (v14 & ~v13);
        goto LABEL_43;
      }
    }

    return llvm::APFixedPoint::getMax(v6, a3);
  }

  else
  {

    return llvm::APFixedPoint::APFixedPoint(a3, 0, v6);
  }
}

uint64_t llvm::APFixedPoint::convertToInt@<X0>(llvm::APFixedPoint *this@<X0>, BOOL *a2@<X3>, unsigned int a3@<W1>, int a4@<W2>, uint64_t a5@<X8>)
{
  llvm::APFixedPoint::getIntPart(this, &v35);
  v10 = *(this + 8);
  v39 = a3;
  if (a4)
  {
    if (a3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v38);
    }

    v38 = 1 << (a3 - 1);
  }

  else
  {
    if (a3 > 0x40)
    {
      llvm::APInt::initSlowCase(&v38);
    }

    v38 = 0;
  }

  v33 = v39;
  v32 = v38;
  v34 = a4 ^ 1;
  v39 = a3;
  if (a4)
  {
    v11 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v11 = 0;
    }

    v38 = v11 & ~(1 << (a3 - 1));
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> -a3;
    if (!a3)
    {
      v12 = 0;
    }

    v38 = v12;
  }

  v30 = v39;
  v29 = v38;
  v31 = a4 ^ 1;
  if (v10 < a3)
  {
    if (v37 == 1)
    {
      llvm::APInt::zext(&v35, a3, &v38);
      v13 = v39;
      v14 = v37;
      v15 = v38;
      if (v36 < 0x41)
      {
        goto LABEL_26;
      }
    }

    else
    {
      llvm::APInt::sext(&v35, a3, &v38);
      v13 = v39;
      v14 = v37;
      v15 = v38;
      if (v36 < 0x41)
      {
LABEL_26:
        v35 = v15;
        v36 = v13;
        v37 = v14;
LABEL_27:
        if (!a2)
        {
          goto LABEL_41;
        }

LABEL_28:
        if ((v37 & 1) == 0 && (a4 & 1) == 0)
        {
          v19 = v36 - 1;
          v20 = &v35;
          if (v36 >= 0x41)
          {
            v20 = (v35 + 8 * (v19 >> 6));
          }

          if ((*v20 >> v19))
          {
            goto LABEL_33;
          }

          goto LABEL_38;
        }

        if (!v37 || !a4)
        {
          if (v37)
          {
            if ((llvm::APInt::compare(&v35, &v32) & 0x80000000) == 0)
            {
              goto LABEL_38;
            }
          }

          else if ((llvm::APInt::compareSigned(&v35, &v32) & 0x80000000) == 0)
          {
            v22 = llvm::APInt::compareSigned(&v35, &v29);
            goto LABEL_39;
          }

LABEL_33:
          v21 = 1;
LABEL_40:
          *a2 = v21;
          goto LABEL_41;
        }

LABEL_38:
        v22 = llvm::APInt::compare(&v35, &v29);
LABEL_39:
        v21 = v22 > 0;
        goto LABEL_40;
      }
    }

    if (v35)
    {
      MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }

    goto LABEL_26;
  }

  if (v10 <= a3)
  {
    goto LABEL_27;
  }

  if (v34 == 1)
  {
    llvm::APInt::zext(&v32, v10, &v38);
    v16 = v39;
    v17 = v34;
    v18 = v38;
    if (v33 < 0x41)
    {
      goto LABEL_57;
    }
  }

  else
  {
    llvm::APInt::sext(&v32, v10, &v38);
    v16 = v39;
    v17 = v34;
    v18 = v38;
    if (v33 < 0x41)
    {
      goto LABEL_57;
    }
  }

  if (v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
  }

LABEL_57:
  v32 = v18;
  v33 = v16;
  v34 = v17;
  if (v31 == 1)
  {
    llvm::APInt::zext(&v29, v10, &v38);
    v26 = v39;
    v27 = v31;
    v28 = v38;
    if (v30 < 0x41)
    {
      goto LABEL_63;
    }
  }

  else
  {
    llvm::APInt::sext(&v29, v10, &v38);
    v26 = v39;
    v27 = v31;
    v28 = v38;
    if (v30 < 0x41)
    {
      goto LABEL_63;
    }
  }

  if (v29)
  {
    MEMORY[0x259C63150](v29, 0x1000C8000313F17);
  }

LABEL_63:
  v29 = v28;
  v30 = v26;
  v31 = v27;
  if (a2)
  {
    goto LABEL_28;
  }

LABEL_41:
  v37 = a4 ^ 1;
  if (a4)
  {
    result = llvm::APInt::sextOrTrunc(&v35, a3, &v38);
  }

  else
  {
    result = llvm::APInt::zextOrTrunc(&v35, a3, &v38);
  }

  v24 = v37;
  v25 = v38;
  *(a5 + 8) = v39;
  *a5 = v25;
  *(a5 + 12) = v24;
  if (v30 >= 0x41)
  {
    result = v29;
    if (v29)
    {
      result = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
    }
  }

  if (v33 >= 0x41)
  {
    result = v32;
    if (v32)
    {
      result = MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    }
  }

  if (v36 >= 0x41)
  {
    result = v35;
    if (v35)
    {
      return MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    }
  }

  return result;
}

unsigned int *llvm::APFixedPoint::getIntPart@<X0>(unsigned int *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = (8 * this[4]) >> 19;
  v5 = this[4];
  v6 = v4 + v5;
  if (!(((v4 + v5) < 0) ^ __OFADD__(v4, v5) | (v4 + v5 == 0)))
  {
    if (v4 < 1)
    {
      v33 = this[2];
      if (v33 > 0x40)
      {
        llvm::APInt::initSlowCase(&v32, this);
      }

      v32 = *this;
      v34 = *(this + 12);
    }

    else
    {
      if (*(this + 12) == 1)
      {
        llvm::APInt::zext(this, v6, &v37);
      }

      else
      {
        llvm::APInt::sext(this, v6, &v37);
      }

      v7 = *(v2 + 12);
      v33 = v38;
      v32 = v37;
      v34 = v7;
    }

    v38 = 64;
    v37 = 0;
    v39 = 0;
    v9 = llvm::APSInt::compareValues(v2, &v37);
    if (v38 >= 0x41 && v37)
    {
      v10 = v9;
      MEMORY[0x259C63150](v37, 0x1000C8000313F17);
      v9 = v10;
    }

    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    v11 = *(v2 + 8);
    v38 = v11;
    if (v11 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v37, v2);
    }

    if (v11)
    {
      v12 = 0xFFFFFFFFFFFFFFFFLL >> -v11;
    }

    else
    {
      v12 = 0;
    }

    v37 = v12 & ~*v2;
    llvm::APInt::operator++(&v37);
    v13 = v38;
    v14 = v37;
    v15 = *(v2 + 12);
    v30 = v38;
    v29 = v37;
    v31 = v15;
    if (*(v2 + 8) > 0x40u)
    {
      v16 = llvm::APInt::equalSlowCase(v2, &v29);
      if (v13 < 0x41)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v16 = *v2 == v37;
      if (v38 < 0x41)
      {
        goto LABEL_29;
      }
    }

    if (v14)
    {
      MEMORY[0x259C63150](v14, 0x1000C8000313F17);
    }

LABEL_29:
    if (!v16)
    {
      v38 = v33;
      if (v33 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v37, &v32);
      }

      if (v33)
      {
        v20 = 0xFFFFFFFFFFFFFFFFLL >> -v33;
      }

      else
      {
        v20 = 0;
      }

      v37 = v20 & ~v32;
      llvm::APInt::operator++(&v37);
      v27 = v38;
      v26 = v37;
      v28 = v34;
      v21 = -((8 * *(v2 + 16)) >> 19);
      if (v34)
      {
        llvm::APInt::relativeLShr(&v26, v21, &v37);
        v22 = 1;
      }

      else
      {
        llvm::APInt::relativeAShr(&v26, v21, &v37);
        v22 = 0;
      }

      v30 = v38;
      v29 = v37;
      v31 = v22;
      if (v38 >= 0x41)
      {
        llvm::APInt::initSlowCase(&v37, &v29);
      }

      if (v38)
      {
        v23 = 0xFFFFFFFFFFFFFFFFLL >> -v38;
      }

      else
      {
        v23 = 0;
      }

      v37 = v23 & ~v37;
      this = llvm::APInt::operator++(&v37);
      v24 = v37;
      v25 = v31;
      *(a2 + 8) = v38;
      *a2 = v24;
      *(a2 + 12) = v25;
      if (v30 >= 0x41)
      {
        this = v29;
        if (v29)
        {
          this = MEMORY[0x259C63150](v29, 0x1000C8000313F17);
        }
      }

      if (v27 >= 0x41)
      {
        this = v26;
        if (v26)
        {
          this = MEMORY[0x259C63150](v26, 0x1000C8000313F17);
        }
      }

      goto LABEL_34;
    }

LABEL_30:
    v17 = -((8 * *(v2 + 16)) >> 19);
    if (v34)
    {
      this = llvm::APInt::relativeLShr(&v32, v17, &v37);
      v18 = 1;
    }

    else
    {
      this = llvm::APInt::relativeAShr(&v32, v17, &v37);
      v18 = 0;
    }

    v19 = v37;
    *(a2 + 8) = v38;
    *a2 = v19;
    *(a2 + 12) = v18;
LABEL_34:
    if (v33 >= 0x41)
    {
      this = v32;
      if (v32)
      {
        return MEMORY[0x259C63150](v32, 0x1000C8000313F17);
      }
    }

    return this;
  }

  v36 = this[4];
  if (v5 >= 0x41)
  {
    llvm::APInt::initSlowCase(&v35);
  }

  v8 = *(this + 12);
  *(a2 + 8) = v5;
  *a2 = 0;
  *(a2 + 12) = v8;
  return this;
}

llvm::APFloatBase *llvm::APFixedPoint::promoteFloatSemantics(llvm::APFloatBase *a1)
{
  v2 = llvm::APFloatBase::BFloat(a1);
  if (v2 != a1)
  {
    v3 = llvm::APFloatBase::IEEEhalf(v2);
    v4 = llvm::APFloatBase::IEEEsingle(v3);
    v5 = v4;
    if (v3 != a1)
    {
      v6 = llvm::APFloatBase::IEEEdouble(v4);
      if (v5 != a1)
      {

        return llvm::APFloatBase::IEEEquad(v6);
      }

      return v6;
    }

    return v5;
  }

  return llvm::APFloatBase::IEEEdouble(v2);
}

void llvm::APFixedPoint::convertToFloat(unsigned int *a1@<X0>, llvm::APFloatBase *a2@<X1>, uint64_t a3@<X8>)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), a2);
  v7 = a2;
  if ((v6 & 1) == 0)
  {
    v6 = llvm::APFloatBase::BFloat(v6);
    v9 = v6;
    v7 = a2;
    while (1)
    {
      while (v9 == v7)
      {
        v10 = llvm::APFloatBase::IEEEdouble(v6);
LABEL_6:
        v7 = v10;
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v10);
        if (v6)
        {
          goto LABEL_2;
        }
      }

      v11 = llvm::APFloatBase::IEEEhalf(v6);
      v12 = llvm::APFloatBase::IEEEsingle(v11);
      v13 = v12;
      if (v11 == v7)
      {
        v7 = v12;
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v12);
        if (v6)
        {
          break;
        }
      }

      else
      {
        v10 = llvm::APFloatBase::IEEEdouble(v12);
        if (v13 == v7)
        {
          goto LABEL_6;
        }

        v7 = llvm::APFloatBase::IEEEquad(v10);
        v6 = llvm::FixedPointSemantics::fitsInFloatSemantics((a1 + 4), v7);
        if (v6)
        {
          break;
        }
      }
    }
  }

LABEL_2:
  v8 = llvm::APFloatBase::PPCDoubleDouble(v6);
  if (v8 == v7)
  {
    llvm::detail::DoubleAPFloat::DoubleAPFloat((a3 + 8), v7);
  }

  llvm::detail::IEEEFloat::IEEEFloat(a3 + 8, v7);
  if (v8 == *(a3 + 8))
  {
    llvm::detail::DoubleAPFloat::convertFromAPInt();
  }

  llvm::detail::IEEEFloat::convertFromAPInt(a3 + 8, a1, (a1[4] >> 29) & 1, 1);
  v14 = ldexp(1.0, (8 * a1[4]) >> 19);
  v15 = llvm::detail::IEEEFloat::IEEEFloat(v18, v14);
  v16 = llvm::APFloatBase::IEEEdouble(v15);
  llvm::APFloat::Storage::Storage(v20, v18, v16);
  llvm::detail::IEEEFloat::~IEEEFloat(v18);
  v18[0] = 0;
  llvm::APFloat::convert(v19, v7, 0, v18);
  v17 = (a3 + 8);
  if (v8 != *(a3 + 8))
  {
    llvm::detail::IEEEFloat::multiply(v17, v20, 0);
    if (v7 == a2)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  llvm::detail::DoubleAPFloat::multiply(v17, v20, 0);
  if (v7 != a2)
  {
LABEL_20:
    llvm::APFloat::convert(a3, a2, 1, v18);
  }

LABEL_21:
  if (v8 == v20[0])
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(v20);
  }
}

uint64_t llvm::APFixedPoint::getFromIntValue@<X0>(llvm::APInt *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 12);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x20000000;
  }

  v7 = v6 & 0xFFFF0000 | *(a1 + 2);
  v15 = *(a1 + 2);
  if (v4 >= 0x41)
  {
    llvm::APInt::initSlowCase(v14, a1);
  }

  v8 = *a1;
  v11 = v4;
  v10 = v8;
  v12 = v5;
  v13 = v7;
  result = llvm::APFixedPoint::convert(&v10, a2, a3, a4);
  if (v11 >= 0x41)
  {
    result = v10;
    if (v10)
    {
      return MEMORY[0x259C63150](v10, 0x1000C8000313F17);
    }
  }

  return result;
}

void llvm::APFixedPoint::getFromFloatValue(llvm::APFixedPoint *this@<X0>, const llvm::APFloat *a2@<X1>, const llvm::FixedPointSemantics *a3@<X2>, uint64_t a4@<X8>)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v10 = (this + 8);
  v9 = *(this + 1);
  v11 = llvm::APFloatBase::PPCDoubleDouble(this);
  v12 = *(this + 2);
  if (v11 != v9)
  {
    v12 = this;
  }

  if ((*(v12 + 28) & 7) != 1)
  {
    v13 = v11;
    v14 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v9);
    if (v14)
    {
      v15 = v9;
LABEL_11:
      if (v13 == *v10)
      {
        llvm::detail::DoubleAPFloat::DoubleAPFloat(v51, v10);
        v41 = 0;
        if (v9 == v15)
        {
LABEL_14:
          v16 = ldexp(1.0, -((8 * *a2) >> 19));
          v17 = llvm::detail::IEEEFloat::IEEEFloat(v46, v16);
          v18 = llvm::APFloatBase::IEEEdouble(v17);
          llvm::APFloat::Storage::Storage(v49, v46, v18);
          llvm::detail::IEEEFloat::~IEEEFloat(v46);
          llvm::APFloat::convert(v48, v15, 0, &v41);
          if (v13 == v51[0])
          {
            llvm::detail::DoubleAPFloat::multiply(v51, v49, 0);
            v19 = *a2;
            v39 = *a2;
            if (v39 <= 0x40)
            {
              goto LABEL_16;
            }
          }

          else
          {
            llvm::detail::IEEEFloat::multiply(v51, v49, 0);
            v19 = *a2;
            v39 = *a2;
            if (v39 <= 0x40)
            {
LABEL_16:
              v38 = 0;
              v40 = (v19 & 0x20000000) == 0;
              llvm::APFloat::convertToInteger(v50, &v38, 0, &v41);
              v26 = ldexp(1.0, (8 * *a2) >> 19);
              llvm::detail::IEEEFloat::IEEEFloat(&v44, v26);
              llvm::APFloat::Storage::Storage(&v47, &v44, v18);
              llvm::detail::IEEEFloat::~IEEEFloat(&v44);
              llvm::APFloat::Storage::operator=(v49, &v47);
              if (v13 == v47.n128_u64[0])
              {
                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v47);
              }

              else
              {
                llvm::detail::IEEEFloat::~IEEEFloat(&v47);
              }

              llvm::APFloat::convert(v48, v15, 0, &v41);
              if (v13 == v51[0])
              {
                llvm::detail::DoubleAPFloat::roundToIntegral(v51, 0);
              }

              llvm::detail::IEEEFloat::roundToIntegral(v51, 0);
              if (v13 == v51[0])
              {
                llvm::detail::DoubleAPFloat::multiply(v51, v49, 0);
              }

              else
              {
                llvm::detail::IEEEFloat::multiply(v51, v49, 0);
              }

              llvm::APFixedPoint::getMax(a2, &v44);
              llvm::APFixedPoint::convertToFloat(&v44, v15, v46);
              if (LODWORD(v45[0]) >= 0x41 && v44)
              {
                MEMORY[0x259C63150](v44, 0x1000C8000313F17);
              }

              llvm::APFixedPoint::getMin(a2, &v35);
              llvm::APFixedPoint::convertToFloat(&v35, v15, &v44);
              if (v36 >= 0x41 && v35)
              {
                MEMORY[0x259C63150](v35, 0x1000C8000313F17);
              }

              if ((*(a2 + 3) & 0x40) == 0)
              {
                if (v13 == v51[0])
                {
                  if (llvm::detail::DoubleAPFloat::compare(v51, &v47) == 2)
                  {
                    goto LABEL_48;
                  }
                }

                else if (llvm::detail::IEEEFloat::compare(v51, &v47) == 2)
                {
LABEL_48:
                  v27 = 1;
                  goto LABEL_69;
                }

                if (v13 == v51[0])
                {
                  v31 = llvm::detail::DoubleAPFloat::compare(v51, v45);
                }

                else
                {
                  v31 = llvm::detail::IEEEFloat::compare(v51, v45);
                }

                v27 = v31 == 0;
LABEL_69:
                if (a3)
                {
                  *a3 = v27;
                }

                v36 = v39;
                if (v39 >= 0x41)
                {
                  llvm::APInt::initSlowCase(&v35, &v38);
                }

                v32 = v38;
                v33 = *a2;
                v34 = (*a2 & 0x20000000) == 0;
                *(a4 + 8) = v39;
                *a4 = v32;
                *(a4 + 12) = v34;
                *(a4 + 16) = v33;
                if (v13 == v45[0])
                {
                  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v45);
                  if (v13 != v47.n128_u64[0])
                  {
LABEL_76:
                    llvm::detail::IEEEFloat::~IEEEFloat(&v47);
                    if (v39 < 0x41)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_80;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v45);
                  if (v13 != v47.n128_u64[0])
                  {
                    goto LABEL_76;
                  }
                }

                llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v47);
                if (v39 < 0x41)
                {
                  goto LABEL_82;
                }

LABEL_80:
                if (v38)
                {
                  MEMORY[0x259C63150](v38, 0x1000C8000313F17);
                }

LABEL_82:
                if (v13 == v49[0])
                {
                  llvm::detail::DoubleAPFloat::~DoubleAPFloat(v49);
                  if (v13 != v51[0])
                  {
                    goto LABEL_84;
                  }
                }

                else
                {
                  llvm::detail::IEEEFloat::~IEEEFloat(v49);
                  if (v13 != v51[0])
                  {
LABEL_84:
                    llvm::detail::IEEEFloat::~IEEEFloat(v51);
                    return;
                  }
                }

                llvm::detail::DoubleAPFloat::~DoubleAPFloat(v51);
                return;
              }

              if (v13 == v51[0])
              {
                if (llvm::detail::DoubleAPFloat::compare(v51, &v47) == 2)
                {
LABEL_51:
                  llvm::APFixedPoint::getMax(a2, &v35);
                  v28 = v36;
                  v43 = v36;
                  if (v36 >= 0x41)
                  {
                    goto LABEL_52;
                  }

                  goto LABEL_53;
                }
              }

              else if (llvm::detail::IEEEFloat::compare(v51, &v47) == 2)
              {
                goto LABEL_51;
              }

              if (v13 == v51[0])
              {
                if (llvm::detail::DoubleAPFloat::compare(v51, v45))
                {
                  goto LABEL_66;
                }
              }

              else if (llvm::detail::IEEEFloat::compare(v51, v45))
              {
LABEL_66:
                v27 = 0;
                goto LABEL_69;
              }

              llvm::APFixedPoint::getMin(a2, &v35);
              v28 = v36;
              v43 = v36;
              if (v36 >= 0x41)
              {
LABEL_52:
                llvm::APInt::initSlowCase(v42, &v35);
              }

LABEL_53:
              v29 = v35;
              v30 = (v37 & 0x20000000) == 0;
              if (v39 >= 0x41 && v38)
              {
                MEMORY[0x259C63150](v38, 0x1000C8000313F17);
              }

              v38 = v29;
              v39 = v28;
              v40 = v30;
              if (v36 >= 0x41 && v35)
              {
                MEMORY[0x259C63150](v35, 0x1000C8000313F17);
              }

              v27 = 0;
              goto LABEL_69;
            }
          }

          llvm::APInt::initSlowCase(&v38);
        }
      }

      else
      {
        llvm::detail::IEEEFloat::IEEEFloat(v51, v10);
        v41 = 0;
        if (v9 == v15)
        {
          goto LABEL_14;
        }
      }

      llvm::APFloat::convert(v50, v15, 0, &v41);
      goto LABEL_14;
    }

    v20 = llvm::APFloatBase::BFloat(v14);
    v21 = v20;
    v15 = v9;
    while (1)
    {
      while (v21 == v15)
      {
        v22 = llvm::APFloatBase::IEEEdouble(v20);
LABEL_19:
        v15 = v22;
        v20 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v22);
        if (v20)
        {
          goto LABEL_11;
        }
      }

      v23 = llvm::APFloatBase::IEEEhalf(v20);
      v24 = llvm::APFloatBase::IEEEsingle(v23);
      v25 = v24;
      if (v23 == v15)
      {
        v15 = v24;
        v20 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v24);
        if (v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v22 = llvm::APFloatBase::IEEEdouble(v24);
        if (v25 == v15)
        {
          goto LABEL_19;
        }

        v15 = llvm::APFloatBase::IEEEquad(v22);
        v20 = llvm::FixedPointSemantics::fitsInFloatSemantics(a2, v15);
        if (v20)
        {
          goto LABEL_11;
        }
      }
    }
  }

  if (a3)
  {
    *a3 = 1;
  }

  llvm::APFixedPoint::APFixedPoint(a4, 0, a2);
}

const llvm::APInt *llvm::APInt::relativeAShr@<X0>(const llvm::APInt *this@<X0>, int a2@<W1>, llvm::APInt *a3@<X8>)
{
  if (a2 < 1)
  {
    v11 = -a2;
    v12 = *(this + 2);
    *(a3 + 2) = v12;
    if (v12 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    v13 = *this << v11;
    if (v12 == v11)
    {
      v13 = 0;
    }

    if (v12)
    {
      v14 = 0xFFFFFFFFFFFFFFFFLL >> -v12;
    }

    else
    {
      v14 = 0;
    }

    *a3 = v14 & v13;
  }

  else
  {
    v4 = *(this + 2);
    *(a3 + 2) = v4;
    if (v4 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    if (v4 == a2)
    {
      v5 = 63;
    }

    else
    {
      v5 = a2;
    }

    v6 = -v4;
    v7 = v4 == 0;
    if (v4)
    {
      v8 = (*this << -v4) >> -v4;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8 >> v5;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> v6;
    if (v7)
    {
      v10 = 0;
    }

    *a3 = v9 & v10;
  }

  return this;
}

const llvm::APInt *llvm::APInt::relativeLShr@<X0>(const llvm::APInt *this@<X0>, int a2@<W1>, llvm::APInt *a3@<X8>)
{
  if (a2 < 1)
  {
    v5 = -a2;
    v6 = *(this + 2);
    *(a3 + 2) = v6;
    if (v6 >= 0x41)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    v7 = *this << v5;
    if (v6 == v5)
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8 & v7;
  }

  else
  {
    v4 = *(this + 2);
    *(a3 + 2) = v4;
    if (v4 > 0x40)
    {
      llvm::APInt::initSlowCase(a3, this);
    }

    *a3 = *this;
    if (v4 == a2)
    {
      *a3 = 0;
    }

    else
    {
      *a3 >>= a2;
    }
  }

  return this;
}

uint64_t llvm::APSInt::compareValues(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3 && *(a1 + 12) == *(a2 + 12))
  {
    if (!*(a1 + 12))
    {

      return llvm::APInt::compareSigned(a1, a2);
    }

    goto LABEL_31;
  }

  if (v2 <= v3)
  {
    if (v3 <= v2)
    {
      if (*(a1 + 12))
      {
        if ((*(a2 + 12) & 1) == 0)
        {
          v10 = v3 - 1;
          v11 = (v3 >= 0x41 ? *a2 + 8 * ((v3 - 1) >> 6) : a2);
          if ((*v11 >> v10))
          {
            return 1;
          }
        }
      }

      else
      {
        v14 = (*a1 + 8 * ((v2 - 1) >> 6));
        if (v2 < 0x41)
        {
          v14 = a1;
        }

        if ((*v14 >> (v2 - 1)))
        {
          return 0xFFFFFFFFLL;
        }
      }

LABEL_31:

      return llvm::APInt::compare(a1, a2);
    }

    if (*(a1 + 12) == 1)
    {
      llvm::APInt::zext(a1, *(a2 + 8), &v18);
    }

    else
    {
      llvm::APInt::sext(a1, *(a2 + 8), &v18);
    }

    v12 = *(a1 + 12);
    v16 = v19;
    v15 = v18;
    v17 = v12;
    result = llvm::APSInt::compareValues(&v15, a2);
    if (v16 < 0x41)
    {
      return result;
    }
  }

  else
  {
    if (*(a2 + 12) == 1)
    {
      llvm::APInt::zext(a2, v2, &v18);
    }

    else
    {
      llvm::APInt::sext(a2, v2, &v18);
    }

    v9 = *(a2 + 12);
    v16 = v19;
    v15 = v18;
    v17 = v9;
    result = llvm::APSInt::compareValues(a1, &v15);
    if (v16 < 0x41)
    {
      return result;
    }
  }

  if (v15)
  {
    v13 = result;
    MEMORY[0x259C63150](v15, 0x1000C8000313F17);
    return v13;
  }

  return result;
}

uint64_t llvm::APFixedPoint::APFixedPoint(uint64_t result, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *a3;
  v8 = v4;
  if (v4 > 0x40)
  {
    llvm::APInt::initSlowCase(&v7);
  }

  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v3;
  if (!v4)
  {
    v5 = 0;
  }

  v7 = v5 & a2;
  v6 = (*a3 & 0x20000000) == 0;
  *(result + 8) = v4;
  *result = v5 & a2;
  *(result + 12) = v6;
  *(result + 16) = *a3;
  return result;
}

uint64_t llvm::APFloatBase::SemanticsToEnum(void *a1)
{
  if (a1 == &llvm::semIEEEhalf)
  {
    return 0;
  }

  if (a1 == &llvm::semBFloat)
  {
    return 1;
  }

  if (a1 == &llvm::semIEEEsingle)
  {
    return 2;
  }

  if (a1 == &llvm::semIEEEdouble)
  {
    return 3;
  }

  if (a1 == &llvm::semIEEEquad)
  {
    return 4;
  }

  if (a1 == &llvm::semPPCDoubleDouble)
  {
    return 5;
  }

  if (a1 == &llvm::semFloat8E5M2)
  {
    return 6;
  }

  if (a1 == &llvm::semFloat8E5M2FNUZ)
  {
    return 7;
  }

  if (a1 == &llvm::semFloat8E4M3)
  {
    return 8;
  }

  if (a1 == &llvm::semFloat8E4M3FN)
  {
    return 9;
  }

  if (a1 == &llvm::semFloat8E4M3FNUZ)
  {
    return 10;
  }

  if (a1 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return 11;
  }

  if (a1 == &llvm::semFloat8E3M4)
  {
    return 12;
  }

  if (a1 == &llvm::semFloatTF32)
  {
    return 13;
  }

  if (a1 == &llvm::semFloat6E3M2FN)
  {
    return 14;
  }

  if (a1 == &llvm::semFloat6E2M3FN)
  {
    return 15;
  }

  if (a1 == &llvm::semFloat4E2M1FN)
  {
    return 16;
  }

  return 17;
}

uint64_t llvm::APFloatBase::semanticsIntSizeInBits(_DWORD *a1, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return (*a1 + v2);
}

void *llvm::detail::IEEEFloat::initialize(void *result, uint64_t a2)
{
  *result = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  return result;
}

void *llvm::detail::IEEEFloat::freeSignificand(void *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    this = this[1];
    if (this)
    {
      JUMPOUT(0x259C63150);
    }
  }

  return this;
}

uint64_t *llvm::detail::IEEEFloat::assign(uint64_t *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v2;
  v3 = *(a2 + 20);
  v4 = v3 & 7;
  *(this + 20) = v2 & 0xF8 | v3 & 7;
  *(this + 4) = *(a2 + 4);
  v6 = (v3 & 6) != 0 && v4 != 3;
  if (v4 == 1 || v6)
  {
    v9 = *this;
    v8 = this + 1;
    v10 = *(v9 + 8);
    if ((v10 - 64) <= 0xFFFFFF7F)
    {
      v8 = *v8;
    }

    v11 = *(*a2 + 8) - 64;
    v14 = *(a2 + 1);
    v12 = (a2 + 8);
    v13 = v14;
    if (v11 < 0xFFFFFF80)
    {
      v12 = v13;
    }

    return llvm::APInt::tcAssign(v8, v12, ((v10 + 64) >> 6));
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::copySignificand(llvm::detail::IEEEFloat *this, unint64_t **a2)
{
  v3 = *this;
  v2 = (this + 8);
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v2 = *v2;
  }

  v5 = *(*a2 + 2) - 64;
  v8 = a2[1];
  v6 = (a2 + 1);
  v7 = v8;
  if (v5 < 0xFFFFFF80)
  {
    v6 = v7;
  }

  return llvm::APInt::tcAssign(v2, v6, ((v4 + 64) >> 6));
}

uint64_t llvm::detail::IEEEFloat::significandParts(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  result = this + 8;
  if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
  {
    return *result;
  }

  return result;
}

{
  v2 = *this;
  result = this + 8;
  if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
  {
    return *result;
  }

  return result;
}

void llvm::detail::IEEEFloat::makeNaN(llvm::detail::IEEEFloat *this, int a2, int a3, const llvm::APInt *a4)
{
  v4 = a4;
  v7 = *this;
  v8 = *(this + 20) & 0xF0;
  if (a3)
  {
    v9 = 9;
  }

  else
  {
    v9 = 1;
  }

  *(this + 20) = v9 | v8;
  v10 = v7[4];
  if (v10 != 1)
  {
    *(this + 4) = *v7 + 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7[5] == 2)
  {
    *(this + 4) = v7[1] - 1;
    v11 = v7[2];
    v12 = (this + 8);
    if ((v11 - 64) > 0xFFFFFF7F)
    {
      goto LABEL_10;
    }

LABEL_9:
    v12 = *v12;
    goto LABEL_10;
  }

  *(this + 4) = *v7;
  v11 = v7[2];
  v12 = (this + 8);
  if ((v11 - 64) <= 0xFFFFFF7F)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = ((v11 + 64) >> 6);
  v31 = 1;
  v30 = 0;
  if (v10 == 1)
  {
    v14 = &v31;
    if (v7[5] == 2)
    {
      *(this + 20) = v8 | 9;
      v29 = v7[2] - 1;
      if (v29 <= 0x40)
      {
        v28 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v29 = v11 - 1;
      if ((v11 - 1) <= 0x40)
      {
        if (v11 == 1)
        {
          v16 = 0;
        }

        else
        {
          v16 = 0xFFFFFFFFFFFFFFFFLL >> ~(v11 + 62);
        }

        v28 = v16;
LABEL_28:
        a2 = 0;
        v30 = v28;
        v15 = v29;
        v31 = v29;
        v4 = &v30;
        if (v13 <= ((v29 + 63) >> 6))
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    llvm::APInt::initSlowCase(&v28);
  }

  if (a4)
  {
    v14 = (a4 + 8);
    v15 = *(a4 + 2);
    if (v13 <= ((v15 + 63) >> 6))
    {
LABEL_30:
      if (v15 >= 0x41)
      {
        v4 = *v4;
      }

      v20 = (v15 + 63) >> 6;
      if (v13 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v13;
      }

      llvm::APInt::tcAssign(v12, v4, v21);
      v17 = *this;
      v18 = *(*this + 8);
      v22 = (v18 - 1) >> 6;
      *(v12 + v22) &= ~(-1 << (v18 - 1));
      v23 = v22 + 1;
      if (v22 + 1 != v13)
      {
        v24 = v13 + ~v22;
        if (v24 < 0xA)
        {
          v25 = v22 + 1;
        }

        else if (v13 - 1 <= v22)
        {
          v25 = v22 + 1;
        }

        else
        {
          v25 = v23 + (v24 & 0xFFFFFFFC);
          v26 = v24 & 0xFFFFFFFC;
          do
          {
            v27 = (v12 + 8 * v23);
            *v27 = 0uLL;
            v27[1] = 0uLL;
            v23 += 4;
            v26 -= 4;
          }

          while (v26);
          if (v24 == (v24 & 0xFFFFFFFC))
          {
            goto LABEL_45;
          }
        }

        do
        {
          *(v12 + v25++) = 0;
        }

        while (v13 != v25);
      }

LABEL_45:
      v19 = (v18 - 2);
      if (a2)
      {
        goto LABEL_46;
      }

      goto LABEL_25;
    }

LABEL_29:
    llvm::APInt::tcSet(v12, 0, v13);
    v15 = *v14;
    goto LABEL_30;
  }

  llvm::APInt::tcSet(v12, 0, (v11 + 64) >> 6);
  v17 = *this;
  v18 = *(*this + 8);
  v19 = (v18 - 2);
  if (a2)
  {
LABEL_46:
    llvm::APInt::tcClearBit(v12, v19);
    if (!llvm::APInt::tcIsZero(v12, v13))
    {
      goto LABEL_49;
    }

    v19 = (v18 - 3);
    goto LABEL_48;
  }

LABEL_25:
  if (*(v17 + 20) != 2)
  {
LABEL_48:
    llvm::APInt::tcSetBit(v12, v19);
  }

LABEL_49:
  if (*this == &llvm::semX87DoubleExtended)
  {
    llvm::APInt::tcSetBit(v12, (v18 - 1));
    if (v31 < 0x41)
    {
      return;
    }
  }

  else if (v31 < 0x41)
  {
    return;
  }

  if (v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }
}

uint64_t llvm::detail::IEEEFloat::exponentNaN(llvm::detail::IEEEFloat *this)
{
  v1 = *this;
  if (*(*this + 16) != 1)
  {
    return *v1 + 1;
  }

  if (v1[5] == 2)
  {
    return v1[1] - 1;
  }

  return *v1;
}

void *llvm::detail::IEEEFloat::operator=(void *this, void *a2)
{
  if (this != a2)
  {
    v2 = *a2;
    if (*this != *a2)
    {
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F && this[1])
      {
        v3 = this;
        v4 = a2;
        MEMORY[0x259C63150](this[1], 0x1000C8000313F17);
        a2 = v4;
        this = v3;
        v2 = *v4;
      }

      *this = v2;
      if ((*(v2 + 8) + 64) >= 0x80)
      {
        operator new[]();
      }
    }

    v5 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
    *(this + 20) = v5;
    v6 = *(a2 + 20);
    v7 = v6 & 7;
    *(this + 20) = v5 & 0xF8 | v6 & 7;
    *(this + 4) = *(a2 + 4);
    v9 = (v6 & 6) != 0 && v7 != 3;
    if (v7 == 1 || v9)
    {
      v11 = this + 1;
      v12 = *(*this + 8);
      v13 = this;
      if ((v12 - 64) <= 0xFFFFFF7F)
      {
        v11 = *v11;
      }

      v14 = *(*a2 + 8) - 64;
      v17 = a2[1];
      v15 = a2 + 1;
      v16 = v17;
      if (v14 < 0xFFFFFF80)
      {
        v15 = v16;
      }

      llvm::APInt::tcAssign(v11, v15, ((v12 + 64) >> 6));
      return v13;
    }
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::operator=(uint64_t result, uint64_t a2)
{
  if ((*(*result + 8) - 64) <= 0xFFFFFF7F)
  {
    v2 = *(result + 8);
    if (v2)
    {
      v3 = result;
      v4 = a2;
      MEMORY[0x259C63150](v2, 0x1000C8000313F17);
      a2 = v4;
      result = v3;
    }
  }

  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v5 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v5;
  *(result + 20) = v5 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

BOOL llvm::detail::IEEEFloat::isDenormal(llvm::detail::IEEEFloat *this)
{
  v1 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v1 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return llvm::APInt::tcExtractBit(v3, (v2 - 1)) == 0;
}

BOOL llvm::detail::IEEEFloat::isSmallest(llvm::detail::IEEEFloat *this)
{
  v1 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v1 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return llvm::APInt::tcMSB(v3, ((v2 + 64) >> 6)) == 0;
}

uint64_t llvm::detail::IEEEFloat::significandMSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  return llvm::APInt::tcMSB(v1, ((v3 + 64) >> 6));
}

BOOL llvm::detail::IEEEFloat::isSmallestNormalized(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 2 || *(this + 4) != *(*this + 4))
  {
    return 0;
  }

  v1 = *(*this + 8);
  v2 = (this + 8);
  if ((v1 - 64) <= 0xFFFFFF7F)
  {
    v2 = *v2;
  }

  v3 = v1 + 63;
  if (v3 >> 6 != 1)
  {
    v4 = v2;
    v5 = (v3 >> 6) - 1;
    while (!*v4++)
    {
      if (!--v5)
      {
        return v2[(v3 >> 6) - 1] == 1 << v3;
      }
    }

    return 0;
  }

  return *v2 == 1 << v3;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllZerosExceptMSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  if (v4 >> 6 == 1)
  {
    return *v1 == 1 << v4;
  }

  v5 = (v4 >> 6) - 1;
  v6 = v1;
  while (!*v6++)
  {
    if (!--v5)
    {
      return v1[(v4 >> 6) - 1] == 1 << v4;
    }
  }

  return 0;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnes(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 == 1)
  {
    v5 = 0;
    return (v1[v5] | (-1 << v4)) == -1;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (1)
    {
      v8 = *v7++;
      if (v8 != -1)
      {
        break;
      }

      if (!--v6)
      {
        return (v1[v5] | (-1 << v4)) == -1;
      }
    }

    return 0;
  }
}

BOOL llvm::detail::IEEEFloat::isSignificandAllOnesExceptLSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  if (*v1)
  {
    return 0;
  }

  v4 = v3 + 63;
  v5 = (v4 >> 6) - 1;
  if (v4 >> 6 != 1)
  {
    v6 = 0;
    while ((LODWORD(v1[v6]) | (v6 == 0)) == 0xFFFFFFFF)
    {
      if ((v4 >> 6) - 1 == ++v6)
      {
        return (~(v1[v5] | (-1 << v4)) & 0x7FFFFFFFFFFFFFFELL) == 0;
      }
    }

    return 0;
  }

  v5 = 0;
  return (~(v1[v5] | (-1 << v4)) & 0x7FFFFFFFFFFFFFFELL) == 0;
}

BOOL llvm::detail::IEEEFloat::isSignificandAllZeros(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  v4 = v3 + 63;
  v5 = ((v3 + 63) >> 6) - 1;
  if ((v3 + 63) >> 6 == 1)
  {
    v5 = 0;
    return v1[v5] << ((v4 & 0xC0) - v3 + 1) == 0;
  }

  else
  {
    v6 = (v4 >> 6) - 1;
    v7 = v1;
    while (!*v7++)
    {
      if (!--v6)
      {
        return v1[v5] << ((v4 & 0xC0) - v3 + 1) == 0;
      }
    }

    return 0;
  }
}

BOOL llvm::detail::IEEEFloat::isLargest(llvm::detail::IEEEFloat *this)
{
  v1 = *this;
  if (*(*this + 16) == 1 && v1[5] == 1)
  {
    v2 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
    if (!v2 && *(this + 4) == *v1)
    {
      v3 = v1[2];
      v4 = (this + 8);
      if ((v3 - 64) <= 0xFFFFFF7F)
      {
        v4 = *v4;
      }

      v5 = *v4;
      if ((*v4 & 1) == 0)
      {
        v6 = v3 + 63;
        if (v6 >> 6 == 1)
        {
          return (~(v5 | (-1 << v6)) & 0x7FFFFFFFFFFFFFFELL) == 0;
        }

        v7 = 0;
        while ((LODWORD(v4[v7]) | (v7 == 0)) == 0xFFFFFFFF)
        {
          if ((v6 >> 6) - 1 == ++v7)
          {
            v5 = v4[(v6 >> 6) - 1];
            return (~(v5 | (-1 << v6)) & 0x7FFFFFFFFFFFFFFELL) == 0;
          }
        }
      }
    }

    return 0;
  }

  v9 = (*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3;
  if (v9 || *(this + 4) != *v1)
  {
    return 0;
  }

  v10 = v1[2];
  v11 = (this + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = v10 + 63;
  v13 = (v12 >> 6) - 1;
  if (v12 >> 6 != 1)
  {
    v14 = v11;
    v15 = (v12 >> 6) - 1;
    while (1)
    {
      v16 = *v14++;
      if (v16 != -1)
      {
        break;
      }

      if (!--v15)
      {
        return (v11[v13] | (-1 << v12)) == -1;
      }
    }

    return 0;
  }

  v13 = 0;
  return (v11[v13] | (-1 << v12)) == -1;
}

BOOL llvm::detail::IEEEFloat::isInteger(llvm::detail::IEEEFloat *this)
{
  v3 = *(this + 20);
  if ((v3 & 6) == 0)
  {
    return 0;
  }

  v16 = v1;
  v17 = v2;
  v4 = this;
  v5 = *this;
  v12 = v5;
  if ((*(v5 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v7 = v3 & 7;
  v15 = v3 & 0xF;
  v14 = *(this + 4);
  if (v7 == 1 || v7 != 3)
  {
    v9 = *(v5 + 8);
    if ((v9 - 64) >= 0xFFFFFF80)
    {
      this = &v13;
    }

    if ((*(*v4 + 8) - 64) >= 0xFFFFFF80)
    {
      v10 = (v4 + 8);
    }

    else
    {
      v10 = *(v4 + 1);
    }

    llvm::APInt::tcAssign(this, v10, ((v9 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::roundToIntegral(&v12, 0);
  result = llvm::detail::IEEEFloat::compare(v4, &v12) == 1;
  if ((*(v12 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v13)
    {
      v11 = result;
      MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      return v11;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::roundToIntegral(unsigned __int8 *a1, int a2)
{
  v4 = a1[20] & 7;
  if ((a1[20] & 7) == 0 || v4 == 3)
  {
    return 0;
  }

  v39 = v2;
  v40 = v3;
  if (v4 == 1)
  {
    if ((*(*a1 + 16) - 1) >= 2)
    {
      v8 = *(*a1 + 8);
      v9 = (a1 + 8);
      v10 = (a1 + 8);
      if ((v8 - 64) <= 0xFFFFFF7F)
      {
        v10 = *v9;
      }

      if (!llvm::APInt::tcExtractBit(v10, (v8 - 2)))
      {
        if (*(*a1 + 16) != 1)
        {
          v11 = *(*a1 + 8);
          if ((v11 - 64) <= 0xFFFFFF7F)
          {
            v9 = *v9;
          }

          llvm::APInt::tcSetBit(v9, (v11 - 2));
        }

        return 1;
      }
    }

    return 0;
  }

  v12 = *a1;
  v13 = *(*a1 + 8);
  if (*(a1 + 4) + 1 >= v13)
  {
    return 0;
  }

  v14 = v13 | (v13 >> 1) | ((v13 | (v13 >> 1)) >> 2);
  v15 = v14 | (v14 >> 4) | ((v14 | (v14 >> 4)) >> 8);
  v16 = ((v15 >> 16) | v15) + 1;
  v36 = v16;
  if (v16 > 0x40)
  {
    llvm::APInt::initSlowCase(&v35);
  }

  v35 = v16 != 0;
  v18 = v13 - 1;
  v19 = v35 << v18;
  if (v16 == v18)
  {
    v19 = 0;
  }

  if (v16)
  {
    v20 = 0xFFFFFFFFFFFFFFFFLL >> -v16;
  }

  else
  {
    v20 = 0;
  }

  v35 = v19 & v20;
  v31 = v12;
  if ((v13 + 64) > 0x7F)
  {
    operator new[]();
  }

  v21 = v32;
  v34 = v34 & 0xF0 | 3;
  v23 = *(v12 + 4);
  v22 = *(v12 + 8);
  v33 = v23 - 1;
  if ((v22 - 64) >= 0xFFFFFF80)
  {
    v21 = &v32;
  }

  llvm::APInt::tcSet(v21, 0, (v22 + 64) >> 6);
  v38 = v36;
  if (v36 > 0x40)
  {
    llvm::APInt::initSlowCase(&v37, &v35);
  }

  v37 = v35;
  v34 &= ~8u;
  llvm::detail::IEEEFloat::convertFromUnsignedParts(&v31, &v37, ((v36 + 63) >> 6), 1);
  if (v38 >= 0x41 && v37)
  {
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  v24 = a1[20] & 8;
  v34 = v34 & 0xF7 | v24;
  v25 = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, &v31, 0);
  if (v25 == 2)
  {
    v26 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v31, 0);
    v25 = llvm::detail::IEEEFloat::normalize(a1, a2, v26);
  }

  v27 = a1[20];
  if ((v27 & 7) == 3)
  {
    if ((v34 & 7) != 3 || ((v34 ^ v27) & 8) != 0)
    {
      LOBYTE(v27) = v27 & 0xF3 | (8 * (a2 == 3));
      a1[20] = v27;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v27 & 0xF7;
    }
  }

  v28 = v25;
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, &v31, 1) == 2)
  {
    v29 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v31, 1u);
    llvm::detail::IEEEFloat::normalize(a1, a2, v29);
  }

  v30 = a1[20];
  if ((v30 & 7) == 3)
  {
    result = v28;
    if ((v34 & 7) == 3 && ((v34 ^ v30) & 8) != 0)
    {
      if (*(*a1 + 20) != 2)
      {
LABEL_52:
        if ((v24 != 0) == (v30 & 8) >> 3)
        {
          goto LABEL_61;
        }

LABEL_58:
        if (*(*a1 + 20) != 2 || (v30 & 5 | 2) != 3)
        {
          a1[20] = v30 ^ 8;
        }

        goto LABEL_61;
      }
    }

    else
    {
      LOBYTE(v30) = v30 & 0xF3 | (8 * (a2 == 3));
      a1[20] = v30;
      if (*(*a1 + 20) != 2)
      {
        goto LABEL_52;
      }
    }

    LOBYTE(v30) = v30 & 0xF7;
    a1[20] = v30;
    if ((v24 != 0) == (v30 & 8) >> 3)
    {
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  result = v28;
  if ((v24 != 0) != (v30 & 8) >> 3)
  {
    goto LABEL_58;
  }

LABEL_61:
  if ((*(v31 + 8) - 64) <= 0xFFFFFF7F && v32)
  {
    MEMORY[0x259C63150](v32, 0x1000C8000313F17);
    result = v28;
  }

  if (v36 >= 0x41 && v35)
  {
    MEMORY[0x259C63150](v35, 0x1000C8000313F17);
    return v28;
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::compare(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  result = 3;
  if (v5 <= 7)
  {
    if (v5 > 3)
    {
      return result;
    }

    if ((v5 - 2) >= 2)
    {
      v7 = (v3 >> 3) & 1;
      v8 = v7 == ((v4 >> 3) & 1);
      v9 = (2 * v7) ^ 2;
      if (v8)
      {
        v9 = 1;
      }

      if (v5)
      {
        return 3;
      }

      else
      {
        return v9;
      }
    }

    return ~(v3 >> 2) & 2;
  }

  if (v5 > 11)
  {
    if (v5 > 13)
    {
      if (v5 != 14)
      {
        return 1;
      }
    }

    else if (v5 != 12)
    {
      return result;
    }

    return (v4 >> 2) & 2;
  }

  if (v5 <= 9)
  {
    if (v5 != 8)
    {
      return result;
    }

    return (v4 >> 2) & 2;
  }

  if (v5 != 10)
  {
    return ~(v3 >> 2) & 2;
  }

  v10 = (v3 >> 3) & 1;
  if (v10 != ((v4 >> 3) & 1))
  {
    return (2 * v10) ^ 2u;
  }

  v11 = *(this + 4) - *(a2 + 4);
  if (!v11)
  {
    v12 = (this + 8);
    v13 = *(*this + 8);
    if ((v13 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    v14 = *(*a2 + 8) - 64;
    v17 = *(a2 + 1);
    v15 = (a2 + 8);
    v16 = v17;
    if (v14 < 0xFFFFFF80)
    {
      v15 = v16;
    }

    v11 = llvm::APInt::tcCompare(v12, v15, ((v13 + 64) >> 6));
    LOBYTE(v3) = *(this + 20);
  }

  if (v11 <= 0)
  {
    result = v11 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((v3 & 8) != 0)
  {
    v18 = v11 <= 0 && v11 >= 0;
    if (result)
    {
      return v18;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::~IEEEFloat(llvm::detail::IEEEFloat *this)
{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v1 = *(this + 1);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8000313F17);
    }
  }
}

{
  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v1 = *(this + 1);
    if (v1)
    {
      MEMORY[0x259C63150](v1, 0x1000C8000313F17);
    }
  }
}

BOOL llvm::detail::IEEEFloat::bitwiseIsEqual(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v2 = *a2;
  if (*this == *a2)
  {
    v3 = *(this + 20);
    v4 = *(a2 + 20);
    if ((v3 & 7) == (v4 & 7) && ((v4 ^ v3) & 8) == 0)
    {
      v5 = 1;
      if ((v3 & 7) == 0 || (v3 & 7) == 3)
      {
        return v5;
      }

      if ((v3 & 6) == 0 || *(this + 4) == *(a2 + 4))
      {
        v6 = *(*this + 8);
        v7 = (this + 8);
        if ((v6 - 64) <= 0xFFFFFF7F)
        {
          v7 = *v7;
        }

        v8 = v6 + 64;
        v11 = *(a2 + 1);
        v9 = a2 + 8;
        v10 = v11;
        if ((*(v2 + 8) - 64) < 0xFFFFFF80)
        {
          v9 = v10;
        }

        return memcmp(v7, v9, (v8 >> 3) & 0x1FFFFFF8) == 0;
      }
    }
  }

  return 0;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2, llvm::APInt *a3)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v6 = *(a2 + 8);
  v7 = (a1 + 8);
  v8 = (a1 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v7;
  }

  llvm::APInt::tcSet(v8, 0, (v6 + 64) >> 6);
  *(a1 + 16) = *(a2 + 8) - 1;
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  *v7 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 2;
  v6 = *(a2 + 8);
  v7 = (a1 + 8);
  v8 = (a1 + 8);
  if ((v6 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v7;
  }

  llvm::APInt::tcSet(v8, 0, (v6 + 64) >> 6);
  *(a1 + 16) = *(a2 + 8) - 1;
  if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
  {
    v7 = *v7;
  }

  *v7 = a3;
  llvm::detail::IEEEFloat::normalize(a1, 1, 0);
  return a1;
}

void llvm::detail::IEEEFloat::zeroSignificand(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  llvm::APInt::tcSet(v1, 0, (v3 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::normalize(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 20) & 6) == 0 || (*(a1 + 20) & 7) == 3)
  {
    return 0;
  }

  v8 = (a1 + 8);
  v9 = *(*a1 + 8);
  v10 = (a1 + 8);
  if ((v9 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v8;
  }

  v11 = llvm::APInt::tcMSB(v10, ((v9 + 64) >> 6));
  v12 = *a1;
  v13 = v11 + 1;
  if (v11 == -1)
  {
    v13 = 0;
  }

  else
  {
    v21 = v12[2];
    v22 = *(a1 + 16);
    v23 = v22 + v13 - v21;
    if (v23 > *v12)
    {
      goto LABEL_22;
    }

    v26 = v12[1];
    if (v23 >= v26)
    {
      v27 = v13 - v21;
    }

    else
    {
      v27 = v26 - v22;
    }

    if ((v27 & 0x80000000) != 0)
    {
      if ((v21 - 64) <= 0xFFFFFF7F)
      {
        v8 = *v8;
      }

      llvm::APInt::tcShiftLeft(v8, ((v21 + 64) >> 6), -v27);
      result = 0;
      *(a1 + 16) += v27;
      return result;
    }

    if (v27)
    {
      *(a1 + 16) = v27 + v22;
      v28 = v8;
      if ((v21 - 64) <= 0xFFFFFF7F)
      {
        v28 = *v8;
      }

      v29 = v21 + 64;
      v30 = ((v21 + 64) >> 6);
      v31 = llvm::APInt::tcLSB(v28, v30);
      if (v31 >= v27)
      {
        llvm::APInt::tcShiftRight(v28, (v29 >> 6), v27);
        a3 = a3 != 0;
      }

      else
      {
        if (v31 + 1 == v27)
        {
          v32 = 2;
          v33 = 3;
        }

        else if ((v29 & 0xFFFFFFC0) >= v27 && llvm::APInt::tcExtractBit(v28, (v27 - 1)))
        {
          v33 = 3;
          v32 = 3;
        }

        else
        {
          v33 = 1;
          v32 = 1;
        }

        llvm::APInt::tcShiftRight(v28, v30, v27);
        if (a3)
        {
          a3 = v33;
        }

        else
        {
          a3 = v32;
        }
      }

      if (v13 >= v27)
      {
        v13 -= v27;
      }

      else
      {
        v13 = 0;
      }

      v12 = *a1;
    }
  }

  if (v12[4] == 1 && v12[5] == 1 && *(a1 + 16) == *v12)
  {
    v14 = v12[2];
    v15 = v8;
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v15 = *v8;
    }

    v16 = v14 + 63;
    v17 = (v16 >> 6) - 1;
    if (v16 >> 6 == 1)
    {
      v17 = 0;
LABEL_41:
      if ((*(v15 + v17) | (-1 << v16)) == 0xFFFFFFFFFFFFFFFFLL)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v18 = v15;
      v19 = (v16 >> 6) - 1;
      while (1)
      {
        v20 = *v18;
        v18 = (v18 + 8);
        if (v20 != -1)
        {
          break;
        }

        if (!--v19)
        {
          goto LABEL_41;
        }
      }
    }
  }

  if (!a3)
  {
    if (!v13)
    {
      v34 = *(a1 + 20) & 0xF8 | 3;
      *(a1 + 20) = v34;
      if (v12[5] == 2)
      {
        result = 0;
        *(a1 + 20) = v34 & 0xF3;
        return result;
      }
    }

    return 0;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      goto LABEL_78;
    }

    if (a3 != 3)
    {
      if (a3 != 2 || (*(a1 + 20) & 7) == 3)
      {
        goto LABEL_78;
      }

      v35 = v8;
      if ((v12[2] - 64) <= 0xFFFFFF7F)
      {
        v35 = *v8;
      }

      Bit = llvm::APInt::tcExtractBit(v35, 0);
      v12 = *a1;
      if (!Bit)
      {
        goto LABEL_78;
      }
    }
  }

  else if (a2 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_78;
    }
  }

  else if (a2 == 3)
  {
    if ((*(a1 + 20) & 8) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((a3 & 0xFFFFFFFE) != 2)
  {
    goto LABEL_78;
  }

  if (!v13)
  {
    *(a1 + 16) = v12[1];
  }

  v37 = v12[2];
  v38 = v8;
  if ((v37 - 64) <= 0xFFFFFF7F)
  {
    v38 = *v8;
  }

  llvm::APInt::tcAddPart(v38, 1, (v37 + 64) >> 6);
  v39 = *(*a1 + 8);
  v40 = v8;
  if ((v39 - 64) <= 0xFFFFFF7F)
  {
    v40 = *v8;
  }

  v41 = llvm::APInt::tcMSB(v40, ((v39 + 64) >> 6));
  v12 = *a1;
  if (v41 != *(*a1 + 8))
  {
    v13 = v41 + 1;
    if (v12[4] != 1 || v12[5] != 1 || *(a1 + 16) != *v12 || !llvm::detail::IEEEFloat::isSignificandAllOnes(a1))
    {
LABEL_78:
      if (v13 == v12[2])
      {
        return 16;
      }

      if (!v13)
      {
        v43 = *(a1 + 20) & 0xF8 | 3;
        *(a1 + 20) = v43;
        if (v12[5] == 2)
        {
          *(a1 + 20) = v43 & 0xF3;
        }
      }

      return 24;
    }

LABEL_22:
    v24 = a1;
    v25 = a2;
LABEL_23:

    return llvm::detail::IEEEFloat::handleOverflow(v24, v25);
  }

  v42 = *(a1 + 16);
  if (v42 == *v12)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v24 = a1;
    goto LABEL_23;
  }

  *(a1 + 16) = v42 + 1;
  if ((v41 - 64) <= 0xFFFFFF7F)
  {
    v8 = *v8;
  }

  v44 = ((v41 + 64) >> 6);
  llvm::APInt::tcLSB(v8, v44);
  llvm::APInt::tcShiftRight(v8, v44, 1u);
  return 16;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4) - 1;
  v4 = (a1 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 0, (v3 + 64) >> 6);
  return a1;
}

{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4) - 1;
  v4 = (a1 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 0, (v3 + 64) >> 6);
  return a1;
}

{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4) - 1;
  v4 = (a1 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 0, (v3 + 64) >> 6);
  return a1;
}

{
  *a1 = a2;
  if ((*(a2 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  *(a1 + 20) = *(a1 + 20) & 0xF0 | 3;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 4) - 1;
  v4 = (a1 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 0, (v3 + 64) >> 6);
  return a1;
}

void llvm::detail::IEEEFloat::makeZero(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *(this + 20) & 0xF0;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(this + 20) = v2 | v3 | 3;
  v4 = *this;
  if (*(*this + 20) == 2)
  {
    *(this + 20) = v2 | 3;
  }

  v5 = *(v4 + 8);
  *(this + 4) = *(v4 + 4) - 1;
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  llvm::APInt::tcSet(v6, 0, (v5 + 64) >> 6);
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = *a2;
  *this = *a2;
  if ((*(v3 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v4 = *(this + 20) & 0xF7 | *(a2 + 20) & 8;
  *(this + 20) = v4;
  v5 = *(a2 + 20);
  v6 = v5 & 7;
  *(this + 20) = v4 & 0xF8 | v5 & 7;
  *(this + 4) = *(a2 + 4);
  v8 = (v5 & 6) != 0 && v6 != 3;
  if (v6 == 1 || v8)
  {
    v10 = (this + 8);
    v11 = *(*this + 8);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v12 = (a2 + 8);
    }

    else
    {
      v12 = *(a2 + 1);
    }

    llvm::APInt::tcAssign(v10, v12, ((v11 + 64) >> 6));
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::IEEEFloat(uint64_t result, uint64_t a2)
{
  *result = &llvm::semBogus;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

{
  *result = &llvm::semBogus;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v2 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v2;
  *(result + 20) = v2 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &llvm::semBogus;
  return result;
}

BOOL llvm::detail::IEEEFloat::incrementSignificand(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  return llvm::APInt::tcAddPart(v1, 1, (v3 + 64) >> 6);
}

unint64_t llvm::detail::IEEEFloat::addSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2)
{
  v3 = *this;
  v2 = (this + 8);
  v4 = *(v3 + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v2 = *v2;
  }

  v5 = *(*a2 + 2) - 64;
  v8 = a2[1];
  v6 = (a2 + 1);
  v7 = v8;
  if (v5 < 0xFFFFFF80)
  {
    v6 = v7;
  }

  return llvm::APInt::tcAdd(v2, v6, 0, (v4 + 64) >> 6);
}

unint64_t llvm::detail::IEEEFloat::subtractSignificand(llvm::detail::IEEEFloat *this, unint64_t **a2, unint64_t a3)
{
  v4 = *this;
  v3 = (this + 8);
  v5 = *(v4 + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  v6 = *(*a2 + 2) - 64;
  v9 = a2[1];
  v7 = (a2 + 1);
  v8 = v9;
  if (v6 < 0xFFFFFF80)
  {
    v7 = v8;
  }

  return llvm::APInt::tcSubtract(v3, v7, a3, (v5 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v49[4] = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 2);
  v7 = 2 * v6;
  v8 = ((2 * v6 + 64) >> 6);
  if (2 * v6 + 64 >= 0x140)
  {
    operator new[]();
  }

  v9 = a1 + 1;
  v10 = (a1 + 1);
  if (v6 - 64 <= 0xFFFFFF7F)
  {
    v10 = *v9;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v11 = (a2 + 8);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v41 = v10;
  llvm::APInt::tcFullMultiply(v49, v10, v11, ((v6 + 64) >> 6), ((v6 + 64) >> 6));
  v12 = llvm::APInt::tcMSB(v49, v8);
  v13 = v12 + 1;
  v14 = *(a2 + 16) + *(a1 + 4) + 2;
  *(a1 + 4) = v14;
  if ((*(a3 + 20) & 7) == 3)
  {
    v15 = 0;
    *(a1 + 4) = v14 + ~v6;
    v16 = v13 - v6;
    if (v13 <= v6)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  v17 = *a1;
  v39 = *a1;
  v40 = a1[1];
  if (v7 != v13)
  {
    llvm::APInt::tcShiftLeft(v49, v8, v7 - v13);
    *(a1 + 4) -= v7 - v13;
    v17 = *a1;
  }

  v18 = *(v17 + 2);
  v46 = *v17;
  v47 = v18;
  DWORD2(v46) = (2 * v6) | 1;
  v19 = v49;
  if (v8 == 1)
  {
    v19 = v49[0];
  }

  *a1 = &v46;
  a1[1] = v19;
  v20 = *a3;
  v42 = v20;
  if ((*(v20 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v21 = *(a3 + 20);
  v22 = v21 & 7;
  v45 = v21 & 0xF;
  v44 = *(a3 + 4);
  v24 = (v21 & 6) != 0 && v22 != 3;
  if (v22 == 1 || v24)
  {
    v25 = *(v20 + 8);
    if ((v25 - 64) >= 0xFFFFFF80)
    {
      v12 = &v43;
    }

    v26 = *(*a3 + 8) - 64;
    v29 = a3[1];
    v28 = (a3 + 1);
    v27 = v29;
    if (v26 >= 0xFFFFFF80)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }

    llvm::APInt::tcAssign(v12, v30, ((v25 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v42, &v46, 0, &v48);
  ++v44;
  v31 = *(v42 + 8);
  if ((v31 - 64) >= 0xFFFFFF80)
  {
    v32 = &v43;
  }

  else
  {
    v32 = v43;
  }

  v33 = ((v31 + 64) >> 6);
  llvm::APInt::tcLSB(v32, v33);
  llvm::APInt::tcShiftRight(v32, v33, 1u);
  v15 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, &v42, 0);
  if (v8 == 1)
  {
    v49[0] = *v9;
  }

  *a1 = v39;
  a1[1] = v40;
  v13 = llvm::APInt::tcMSB(v49, v8) + 1;
  if ((*(v42 + 8) - 64) <= 0xFFFFFF7F && v43)
  {
    MEMORY[0x259C63150](v43, 0x1000C8000313F17);
  }

  *(a1 + 4) += ~v6;
  v16 = v13 - v6;
  if (v13 > v6)
  {
LABEL_40:
    v34 = v13 + 63;
    v35 = llvm::APInt::tcLSB(v49, ((v13 + 63) >> 6));
    if (v35 >= v16)
    {
      llvm::APInt::tcShiftRight(v49, (v34 >> 6), v16);
      v15 = v15 != 0;
    }

    else
    {
      if (v35 + 1 == v16)
      {
        v36 = 2;
        v37 = 3;
      }

      else if ((v34 & 0xFFFFFFC0) >= v16 && llvm::APInt::tcExtractBit(v49, (v16 - 1)))
      {
        v37 = 3;
        v36 = 3;
      }

      else
      {
        v37 = 1;
        v36 = 1;
      }

      llvm::APInt::tcShiftRight(v49, ((v13 + 63) >> 6), v16);
      if (v15)
      {
        v15 = v37;
      }

      else
      {
        v15 = v36;
      }
    }

    *(a1 + 4) += v16;
  }

LABEL_52:
  llvm::APInt::tcAssign(v41, v49, ((v6 + 64) >> 6));
  if (2 * v6 + 64 >= 0x140)
  {
    MEMORY[0x259C63150](v49, 0x1000C8000313F17);
  }

  return v15;
}

uint64_t llvm::detail::IEEEFloat::convert(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v7 = *a1;
  if ((*(a1 + 20) & 7) == 1 && (*(v7 + 16) - 1) >= 2)
  {
    v9 = *(v7 + 8);
    v10 = (a1 + 8);
    if ((v9 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    v54 = llvm::APInt::tcExtractBit(v10, (v9 - 2)) == 0;
    v8 = *a1;
  }

  else
  {
    v54 = 0;
    v8 = *a1;
  }

  v11 = 0;
  v12 = *(a2 + 8);
  v13 = v12 + 64;
  v14 = *(v8 + 8);
  v15 = v14 + 64;
  v16 = (v14 + 64) >> 6;
  v17 = v12 - *(v7 + 8);
  if (a2 == &llvm::semX87DoubleExtended || v7 != &llvm::semX87DoubleExtended)
  {
LABEL_16:
    v53 = v11;
    v19 = (v13 >> 6);
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_19;
  }

  if ((*(a1 + 20) & 7) != 1)
  {
    goto LABEL_18;
  }

  if ((v14 - 64) > 0xFFFFFF7F)
  {
    v18 = *(a1 + 8);
    if (v18 < 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v18 = **(a1 + 8);
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  if ((v18 & 0x4000000000000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v53 = 0;
  v19 = (v13 >> 6);
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  if ((*(a1 + 20) & 6) != 0 && (*(a1 + 20) & 7) != 3)
  {
    v20 = (a1 + 8);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v20 = *v20;
    }

    v21 = llvm::APInt::tcMSB(v20, (v15 >> 6));
    v22 = v21 + 1 - *(v7 + 8);
    v23 = *(a1 + 16);
    v24 = *(a2 + 4);
    if ((v23 + v22) < v24)
    {
      v22 = v24 - v23;
    }

    if ((v22 & 0x80000000) != 0)
    {
      if (v22 <= v17)
      {
        v26 = v17;
      }

      else
      {
        v26 = v22;
      }

      v17 -= v26;
      *(a1 + 16) = v26 + v23;
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v21 + 1 <= -v17)
    {
      v25 = v21 + v17;
      v17 = -v21;
      *(a1 + 16) = v25 + v23;
      if ((-v21 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  v27 = *(a1 + 20) & 7;
  if ((*(a1 + 20) & 6) != 0 && v27 != 3)
  {
    v28 = *a1;
    goto LABEL_36;
  }

  if (v27 != 1 || (v28 = *a1, *(*a1 + 16) == 1))
  {
LABEL_43:
    v32 = 0;
    if (v19 <= v16)
    {
      goto LABEL_50;
    }

LABEL_44:
    operator new[]();
  }

LABEL_36:
  v29 = (a1 + 8);
  v52 = a4;
  if ((*(v28 + 8) - 64) <= 0xFFFFFF7F)
  {
    v29 = *v29;
  }

  v30 = -v17;
  v31 = llvm::APInt::tcLSB(v29, (v15 >> 6));
  v32 = 0;
  if (v31 < -v17)
  {
    if (v31 + 1 == v30)
    {
      v32 = 2;
    }

    else if ((v15 & 0xFFFFFFC0) >= v30 && llvm::APInt::tcExtractBit(v29, ~v17))
    {
      v32 = 3;
    }

    else
    {
      v32 = 1;
    }
  }

  llvm::APInt::tcShiftRight(v29, (v15 >> 6), -v17);
  a4 = v52;
  if (v19 > v16)
  {
    goto LABEL_44;
  }

LABEL_50:
  if (v19 == 1 && v16 != 1)
  {
    v34 = *(a1 + 20) & 7;
    v36 = (*(a1 + 20) & 6) != 0 && v34 != 3;
    v37 = *(*a1 + 8) - 64;
    if (v34 == 1 || v36)
    {
      v39 = (a1 + 8);
      if (v37 <= 0xFFFFFF7F)
      {
        v39 = *v39;
      }

      v38 = *v39;
      if (v37 > 0xFFFFFF7F)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v38 = 0;
      if (v37 > 0xFFFFFF7F)
      {
LABEL_69:
        *(a1 + 8) = v38;
        goto LABEL_70;
      }
    }

    v40 = *(a1 + 8);
    if (v40)
    {
      MEMORY[0x259C63150](v40, 0x1000C8000313F17);
    }

    goto LABEL_69;
  }

LABEL_70:
  *a1 = a2;
  v41 = *(a1 + 20);
  if (v17 >= 1)
  {
    v42 = v41 & 7;
    v43 = (v41 & 6) == 0 || v42 == 3;
    v44 = !v43;
    if (v42 == 1 || v44)
    {
      v45 = (a1 + 8);
      if ((*(a2 + 8) - 64) <= 0xFFFFFF7F)
      {
        v45 = *v45;
      }

      llvm::APInt::tcShiftLeft(v45, v19, v17);
      v41 = *(a1 + 20);
    }
  }

  v46 = v41 & 7;
  if ((v41 & 6) != 0 && v46 != 3)
  {
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v32);
    *a4 = result != 0;
    return result;
  }

  if ((v41 & 7) == 0)
  {
    if (*(*a1 + 16) == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v41 >> 3) & 1, 0);
      *a4 = 1;
      return 16;
    }

    goto LABEL_97;
  }

  if (v46 == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      v48 = (*(v7 + 20) != 2) & (v41 >> 3);
      *a4 = v48;
      if (v48)
      {
        result = 16;
      }

      else
      {
        result = 0;
      }

      *(a1 + 20) &= ~8u;
      return result;
    }

LABEL_97:
    result = 0;
    *a4 = 0;
    return result;
  }

  if (v46 != 1)
  {
    goto LABEL_97;
  }

  if (*(*a1 + 16) == 1)
  {
    *a4 = *(v7 + 16) != 1;
    llvm::detail::IEEEFloat::makeNaN(a1, 0, (*(a1 + 20) >> 3) & 1, 0);
    return v54;
  }

  else
  {
    if (*(v7 + 20) == 2 && *(*a1 + 20) != 2)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, 0, 0);
    }

    if (v32)
    {
      v49 = 1;
    }

    else
    {
      v49 = v53;
    }

    *a4 = v49;
    if ((v53 & 1) == 0 && *a1 == &llvm::semX87DoubleExtended)
    {
      llvm::APInt::tcSetBit(*(a1 + 8), 0x3F);
    }

    if (v54)
    {
      if (*(*a1 + 16) == 1)
      {
        return 1;
      }

      else
      {
        v50 = *(*a1 + 8);
        v51 = (a1 + 8);
        if ((v50 - 64) <= 0xFFFFFF7F)
        {
          v51 = *v51;
        }

        llvm::APInt::tcSetBit(v51, (v50 - 2));
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t llvm::detail::IEEEFloat::shiftSignificandRight(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  *(this + 4) += a2;
  v3 = *(*this + 8);
  v4 = (this + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  v5 = v3 + 64;
  v6 = ((v3 + 64) >> 6);
  v7 = llvm::APInt::tcLSB(v4, v6);
  if (v7 >= a2)
  {
    v8 = 0;
  }

  else if (v7 + 1 == a2)
  {
    v8 = 2;
  }

  else if ((v5 & 0xFFFFFFC0) >= a2 && llvm::APInt::tcExtractBit(v4, (a2 - 1)))
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  llvm::APInt::tcShiftRight(v4, v6, a2);
  return v8;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSignificand(llvm::detail::IEEEFloat **this, const llvm::detail::IEEEFloat *a2, unsigned __int8 a3)
{
  v4 = this;
  v6 = (this + 2);
  v5 = *(this + 4);
  v7 = *(a2 + 20);
  v8 = *(a2 + 4);
  v9 = v8;
  v10 = v5 - v8;
  if ((((((v7 ^ *(this + 20)) & 8) == 0) ^ a3) & 1) == 0)
  {
    v22 = *a2;
    v84 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v23 = v7 & 7;
    v87 = v7 & 0xF;
    v86 = v8;
    v25 = (v7 & 6) != 0 && v23 != 3;
    if (v23 == 1 || v25)
    {
      v27 = *(v22 + 8);
      if ((v27 - 64) >= 0xFFFFFF80)
      {
        this = &v85;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v28 = (a2 + 8);
      }

      else
      {
        v28 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(this, v28, ((v27 + 64) >> 6));
    }

    if (v5 == v8)
    {
      v29 = 0;
      v30 = *v6 - v86;
      if (*v6 != v86)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v36 = v10 - 1;
      if (v10 < 1)
      {
        v50 = ~v10;
        *(v4 + 4) += ~v10;
        v51 = *(*v4 + 8);
        v52 = (v4 + 8);
        if ((v51 - 64) <= 0xFFFFFF7F)
        {
          v52 = *v52;
        }

        v53 = &v86;
        v54 = v51 + 64;
        v55 = ((v51 + 64) >> 6);
        v56 = llvm::APInt::tcLSB(v52, v55);
        if (v56 >= v50)
        {
          v29 = 0;
        }

        else if (-2 - v56 == v10)
        {
          v29 = 2;
        }

        else if ((v54 & 0xFFFFFFC0) >= v50 && llvm::APInt::tcExtractBit(v52, (-2 - v10)))
        {
          v29 = 3;
        }

        else
        {
          v29 = 1;
        }

        llvm::APInt::tcShiftRight(v52, v55, ~v10);
        v69 = *(v84 + 8);
        if ((v69 - 64) >= 0xFFFFFF80)
        {
          v70 = &v85;
        }

        else
        {
          v70 = v85;
        }

        llvm::APInt::tcShiftLeft(v70, ((v69 + 64) >> 6), 1u);
      }

      else
      {
        v86 += v36;
        v37 = *(v84 + 8);
        if ((v37 - 64) >= 0xFFFFFF80)
        {
          v38 = &v85;
        }

        else
        {
          v38 = v85;
        }

        v39 = v37 + 64;
        v40 = ((v37 + 64) >> 6);
        v41 = llvm::APInt::tcLSB(v38, v40);
        if (v41 >= v36)
        {
          v29 = 0;
        }

        else
        {
          v42 = (v10 - 2);
          if (v41 == v42)
          {
            v29 = 2;
          }

          else if ((v39 & 0xFFFFFFC0) >= v36 && llvm::APInt::tcExtractBit(v38, v42))
          {
            v29 = 3;
          }

          else
          {
            v29 = 1;
          }
        }

        llvm::APInt::tcShiftRight(v38, v40, v10 - 1);
        v67 = (v4 + 8);
        v68 = *(*v4 + 8);
        if ((v68 - 64) <= 0xFFFFFF7F)
        {
          v67 = *v67;
        }

        llvm::APInt::tcShiftLeft(v67, ((v68 + 64) >> 6), 1u);
        v53 = v6;
      }

      --*v53;
      v30 = *v6 - v86;
      if (*v6 != v86)
      {
LABEL_45:
        v31 = v29 != 0;
        if ((v30 & 0x80000000) == 0)
        {
LABEL_46:
          v33 = *v4;
          v32 = (v4 + 8);
          v34 = *(v33 + 8);
          if ((v34 - 64) <= 0xFFFFFF7F)
          {
            v32 = *v32;
          }

          if ((*(v84 + 8) - 64) >= 0xFFFFFF80)
          {
            v35 = &v85;
          }

          else
          {
            v35 = v85;
          }

          llvm::APInt::tcSubtract(v32, v35, v31, (v34 + 64) >> 6);
          goto LABEL_128;
        }

LABEL_116:
        v75 = *(v84 + 8);
        if ((v75 - 64) >= 0xFFFFFF80)
        {
          v76 = &v85;
        }

        else
        {
          v76 = v85;
        }

        v77 = (v4 + 8);
        if ((*(*v4 + 8) - 64) >= 0xFFFFFF80)
        {
          v78 = (v4 + 8);
        }

        else
        {
          v78 = *(v4 + 1);
        }

        llvm::APInt::tcSubtract(v76, v78, v31, (v75 + 64) >> 6);
        v79 = *(*v4 + 8);
        if ((v79 - 64) <= 0xFFFFFF7F)
        {
          v77 = *v77;
        }

        if ((*(v84 + 8) - 64) >= 0xFFFFFF80)
        {
          v80 = &v85;
        }

        else
        {
          v80 = v85;
        }

        llvm::APInt::tcAssign(v77, v80, ((v79 + 64) >> 6));
        *(v4 + 20) ^= 8u;
LABEL_128:
        if (v29 == 3)
        {
          v81 = 1;
        }

        else
        {
          v81 = v29;
        }

        if (v29 == 1)
        {
          v21 = 3;
        }

        else
        {
          v21 = v81;
        }

        if ((*(v84 + 8) - 64) > 0xFFFFFF7F)
        {
          return v21;
        }

        goto LABEL_135;
      }
    }

    v71 = (v4 + 8);
    v72 = *(*v4 + 8);
    if ((v72 - 64) <= 0xFFFFFF7F)
    {
      v71 = *v71;
    }

    if ((*(v84 + 8) - 64) >= 0xFFFFFF80)
    {
      v73 = &v85;
    }

    else
    {
      v73 = v85;
    }

    v74 = llvm::APInt::tcCompare(v71, v73, ((v72 + 64) >> 6));
    v31 = v29 != 0;
    if ((v74 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_116;
  }

  if (v10 >= 1)
  {
    v11 = *a2;
    v83 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v12 = v7 & 7;
    v87 = v7 & 0xF;
    v86 = v9;
    v14 = (v7 & 6) != 0 && v12 != 3;
    if (v12 == 1 || v14)
    {
      v15 = *(v11 + 8);
      if ((v15 - 64) >= 0xFFFFFF80)
      {
        this = &v85;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v16 = (a2 + 8);
      }

      else
      {
        v16 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(this, v16, ((v15 + 64) >> 6));
      v9 = v86;
      v11 = v83;
      this = v85;
    }

    v86 = v9 + v10;
    v17 = *(v11 + 8);
    if ((v17 - 64) >= 0xFFFFFF80)
    {
      v18 = &v85;
    }

    else
    {
      v18 = this;
    }

    v19 = v17 + 64;
    v20 = llvm::APInt::tcLSB(v18, ((v17 + 64) >> 6));
    if (v20 >= v10)
    {
      v21 = 0;
    }

    else if (v20 + 1 == v10)
    {
      v21 = 2;
    }

    else if ((v19 & 0xFFFFFFC0) >= v10 && llvm::APInt::tcExtractBit(v18, (v10 - 1)))
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    llvm::APInt::tcShiftRight(v18, (v19 >> 6), v10);
    v58 = *v4;
    v57 = (v4 + 8);
    v59 = *(v58 + 8);
    if ((v59 - 64) <= 0xFFFFFF7F)
    {
      v57 = *v57;
    }

    if ((*(v83 + 8) - 64) >= 0xFFFFFF80)
    {
      v60 = &v85;
    }

    else
    {
      v60 = v85;
    }

    llvm::APInt::tcAdd(v57, v60, 0, (v59 + 64) >> 6);
    if ((*(v83 + 8) - 64) > 0xFFFFFF7F)
    {
      return v21;
    }

LABEL_135:
    if (v85)
    {
      MEMORY[0x259C63150](v85, 0x1000C8000313F17);
    }

    return v21;
  }

  v43 = v8 - v5;
  *(this + 4) = v8;
  v44 = *(*this + 2);
  v45 = (this + 1);
  v46 = (this + 1);
  if ((v44 - 64) <= 0xFFFFFF7F)
  {
    v46 = *v45;
  }

  v47 = v44 + 64;
  v48 = ((v44 + 64) >> 6);
  v49 = llvm::APInt::tcLSB(v46, v48);
  if (v49 >= v43)
  {
    v21 = 0;
  }

  else if (v49 + 1 == v43)
  {
    v21 = 2;
  }

  else if ((v47 & 0xFFFFFFC0) >= v43 && llvm::APInt::tcExtractBit(v46, ~v10))
  {
    v21 = 3;
  }

  else
  {
    v21 = 1;
  }

  llvm::APInt::tcShiftRight(v46, v48, -v10);
  v61 = *(*v4 + 8);
  if ((v61 - 64) <= 0xFFFFFF7F)
  {
    v45 = *v45;
  }

  v62 = *(*a2 + 8) - 64;
  v65 = *(a2 + 1);
  v64 = (a2 + 8);
  v63 = v65;
  if (v62 >= 0xFFFFFF80)
  {
    v66 = v64;
  }

  else
  {
    v66 = v63;
  }

  llvm::APInt::tcAdd(v45, v66, 0, (v61 + 64) >> 6);
  return v21;
}

uint64_t llvm::detail::IEEEFloat::multiplySignificand(unint64_t **this, const llvm::detail::IEEEFloat *a2)
{
  v3 = this;
  v4 = *this;
  v8 = v4;
  v5 = *(v4 + 8);
  if ((v5 + 64) >= 0x80)
  {
    operator new[]();
  }

  v11 = 3;
  v10 = *(v4 + 4) - 1;
  if ((v5 - 64) >= 0xFFFFFF80)
  {
    this = &v9;
  }

  llvm::APInt::tcSet(this, 0, (v5 + 64) >> 6);
  result = llvm::detail::IEEEFloat::multiplySignificand(v3, a2, &v8);
  if ((*(v8 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v9)
    {
      v7 = result;
      MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      return v7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = (this + 8);
  v4 = *(*this + 8);
  if (v4 - 64 <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = *(a2 + 1);
  }

  v6 = v4 + 64;
  v7 = (v4 + 64) >> 6;
  if (v4 + 64 >= 0xC0)
  {
    operator new[]();
  }

  v8 = &v37[v7];
  if (v4 <= 0xFFFFFFBF)
  {
    if (v7 >= 0x14)
    {
      v9 = 0;
      v10 = &v37[v7];
      v11 = v8 + 8 * v7;
      v12 = (v3 + 8 * v7);
      v13 = v5 + 8 * v7;
      v15 = v37 < v12 && v3 < v10;
      v17 = v37 < v13 && v5 < v10;
      v19 = v8 < v12 && v3 < v11;
      v21 = v8 < v13 && v5 < v11;
      v23 = v3 < v13 && v5 < v12;
      v24 = v8 >= v10 || v37 >= v11;
      if (v24 && !v15 && !v17 && !v19 && !v21 && !v23)
      {
        v25 = 0;
        v9 = v7 & 0x3FFFFFC;
        v26 = (v3 + 16);
        do
        {
          v27 = *v26;
          v28 = &v37[v25 / 8];
          *v28 = *(v26 - 1);
          v28[1] = v27;
          v29 = *(v5 + v25 + 16);
          v30 = (v8 + v25);
          *v30 = *(v5 + v25);
          v30[1] = v29;
          *(v26 - 1) = 0uLL;
          *v26 = 0uLL;
          v26 += 2;
          v25 += 32;
        }

        while (((8 * v7) & 0x1FFFFFE0) != v25);
        goto LABEL_55;
      }
    }

    else
    {
      v9 = 0;
    }

    do
    {
      v37[v9] = *(v3 + v9);
      *(v8 + v9) = *(v5 + v9);
      *(v3 + v9++) = 0;
LABEL_55:
      ;
    }

    while (v7 != v9);
  }

  *(this + 4) -= *(a2 + 4);
  LODWORD(v31) = *(*this + 8);
  v32 = v31 + ~llvm::APInt::tcMSB(v8, (v6 >> 6));
  if (v32)
  {
    *(this + 4) += v32;
    llvm::APInt::tcShiftLeft(v8, (v6 >> 6), v32);
  }

  v33 = v31 + ~llvm::APInt::tcMSB(v37, (v6 >> 6));
  if (v33)
  {
    *(this + 4) -= v33;
    llvm::APInt::tcShiftLeft(v37, (v6 >> 6), v33);
  }

  if ((llvm::APInt::tcCompare(v37, v8, (v6 >> 6)) & 0x80000000) != 0)
  {
    --*(this + 4);
    llvm::APInt::tcShiftLeft(v37, (v6 >> 6), 1u);
  }

  while (v31)
  {
    while ((llvm::APInt::tcCompare(v37, v8, (v6 >> 6)) & 0x80000000) == 0)
    {
      llvm::APInt::tcSubtract(v37, v8, 0, v6 >> 6);
      v31 = (v31 - 1);
      llvm::APInt::tcSetBit(v3, v31);
      llvm::APInt::tcShiftLeft(v37, (v6 >> 6), 1u);
      if (!v31)
      {
        goto LABEL_67;
      }
    }

    LODWORD(v31) = v31 - 1;
    llvm::APInt::tcShiftLeft(v37, (v6 >> 6), 1u);
  }

LABEL_67:
  v34 = llvm::APInt::tcCompare(v37, v8, (v6 >> 6));
  if (v34 > 0)
  {
    v35 = 3;
    if (v6 < 0xC0)
    {
      return v35;
    }

    goto LABEL_72;
  }

  if (!v34)
  {
    v35 = 2;
    if (v6 < 0xC0)
    {
      return v35;
    }

    goto LABEL_72;
  }

  v35 = !llvm::APInt::tcIsZero(v37, (v6 >> 6));
  if (v6 >= 0xC0)
  {
LABEL_72:
    MEMORY[0x259C63150](v37, 0x1000C8000313F17);
  }

  return v35;
}

uint64_t llvm::detail::IEEEFloat::significandLSB(llvm::detail::IEEEFloat *this)
{
  v2 = *this;
  v1 = (this + 8);
  v3 = *(v2 + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v1 = *v1;
  }

  return llvm::APInt::tcLSB(v1, ((v3 + 64) >> 6));
}

void llvm::detail::IEEEFloat::shiftSignificandLeft(llvm::detail::IEEEFloat *this, unsigned int a2)
{
  if (a2)
  {
    v5 = *this;
    v4 = (this + 8);
    v6 = *(v5 + 8);
    if ((v6 - 64) <= 0xFFFFFF7F)
    {
      v4 = *v4;
    }

    llvm::APInt::tcShiftLeft(v4, ((v6 + 64) >> 6), a2);
    *(this + 4) -= a2;
  }
}

uint64_t llvm::detail::IEEEFloat::compareAbsoluteValue(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 4) - *(a2 + 4);
  if (v2)
  {
    if (v2 <= 0)
    {
      return v2 >= 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v5 = *this;
    v4 = (this + 8);
    v6 = *(v5 + 8);
    if ((v6 - 64) <= 0xFFFFFF7F)
    {
      v4 = *v4;
    }

    v7 = *(*a2 + 8) - 64;
    v10 = *(a2 + 1);
    v8 = (a2 + 8);
    v9 = v10;
    if (v7 < 0xFFFFFF80)
    {
      v8 = v9;
    }

    v11 = llvm::APInt::tcCompare(v4, v8, ((v6 + 64) >> 6));
    if (v11 <= 0)
    {
      return v11 >= 0;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t llvm::detail::IEEEFloat::handleOverflow(_BYTE *a1, int a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3 != 2)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if ((a1[20] & 8) == 0)
        {
          goto LABEL_2;
        }
      }

      else if (a2 != 4)
      {
        goto LABEL_2;
      }
    }

    else if (a2 != 1 && (a2 != 2 || (a1[20] & 8) != 0))
    {
      goto LABEL_2;
    }

    v13 = a1[20];
    if (v3 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v13 >> 3) & 1, 0);
    }

    else
    {
      a1[20] = v13 & 0xF8;
    }

    return 20;
  }

LABEL_2:
  a1[20] = a1[20] & 0xF8 | 2;
  *(a1 + 4) = *v2;
  v4 = v2[2];
  v5 = v4 - 64;
  v6 = a1 + 8;
  v7 = a1 + 8;
  if (v4 - 64 <= 0xFFFFFF7F)
  {
    v7 = *v6;
  }

  v8 = v4 + 64;
  v9 = v4 - 65;
  if (v4 >= 0x41)
  {
    memset(v7, 255, 8 * (v9 >> 6) + 8);
    v10 = (v9 >> 6) + 1;
    v4 = v5 - (v9 & 0xFFFFFFC0);
    v11 = v8 >> 6;
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = 0;
  v11 = v8 >> 6;
  if (v4)
  {
LABEL_13:
    v7[v10++] = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  }

LABEL_14:
  if (v10 < v11)
  {
    bzero(&v7[v10], 8 * (v11 + ~v10) + 8);
  }

  if (v2[4] == 1 && v2[5] == 1)
  {
    if (v5 <= 0xFFFFFF7F)
    {
      v6 = *v6;
    }

    llvm::APInt::tcClearBit(v6, 0);
  }

  return 16;
}

BOOL llvm::detail::IEEEFloat::roundAwayFromZero(uint64_t *a1, int a2, int a3, unint64_t *a4)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a3 == 3)
      {
        return 1;
      }

      else if (a3 == 2 && (*(a1 + 20) & 7) != 3)
      {
        v6 = *a1;
        v5 = (a1 + 1);
        if ((*(v6 + 8) - 64) <= 0xFFFFFF7F)
        {
          v5 = *v5;
        }

        return llvm::APInt::tcExtractBit(v5, a4) != 0;
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

  else if (a2 == 2)
  {
    return (*(a1 + 20) & 8) == 0;
  }

  else if (a2 == 3)
  {
    return (*(a1 + 20) >> 3) & 1;
  }

  else
  {
    return (a3 & 0xFFFFFFFE) == 2;
  }
}

uint64_t llvm::detail::IEEEFloat::addOrSubtractSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, int a3)
{
  v3 = *(this + 20);
  v4 = *(a2 + 20);
  v5 = 4 * (v3 & 7) + (v4 & 7);
  if (v5 > 7)
  {
    if (v5 > 11)
    {
      if (v5 > 13)
      {
        if (v5 != 14)
        {
          return 0;
        }

        v22 = v4 & 8 | v3 & 0xF7;
        *(this + 20) = v22;
        v23 = *(a2 + 20);
        v24 = v23 & 7;
        v25 = v22 & 0xF8 | v23 & 7;
        *(this + 20) = v25;
        *(this + 4) = *(a2 + 4);
        v27 = (v23 & 6) != 0 && v24 != 3;
        if (v24 == 1 || v27)
        {
          v28 = (this + 8);
          v29 = *(*this + 8);
          v30 = a3;
          v31 = this;
          if ((v29 - 64) <= 0xFFFFFF7F)
          {
            v28 = *v28;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v32 = (a2 + 8);
          }

          else
          {
            v32 = *(a2 + 1);
          }

          v33 = a2;
          llvm::APInt::tcAssign(v28, v32, ((v29 + 64) >> 6));
          a2 = v33;
          this = v31;
          v25 = *(v31 + 20);
          a3 = v30;
        }

        if (a3 != (*(a2 + 20) & 8) >> 3)
        {
          v19 = 8;
        }

        else
        {
          v19 = 0;
        }

        v20 = v25 & 0xF7;
LABEL_57:
        *(this + 20) = v19 | v20;
        return 0;
      }

      if (v5 != 12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v5 > 9)
      {
        if (v5 == 10)
        {
          return 2;
        }

        else
        {
          return 0;
        }
      }

      if (v5 != 8)
      {
LABEL_10:
        v6 = v4 & 8 | v3 & 0xF7;
        *(this + 20) = v6;
        v7 = *(a2 + 20);
        v8 = v7 & 7;
        v3 = v6 & 0xF8 | v7 & 7;
        *(this + 20) = v3;
        *(this + 4) = *(a2 + 4);
        v10 = (v7 & 6) != 0 && v8 != 3;
        if (v8 == 1 || v10)
        {
          v34 = (this + 8);
          v35 = *(*this + 8);
          v36 = this;
          if ((v35 - 64) <= 0xFFFFFF7F)
          {
            v34 = *v34;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v37 = (a2 + 8);
          }

          else
          {
            v37 = *(a2 + 1);
          }

          v38 = a2;
          llvm::APInt::tcAssign(v34, v37, ((v35 + 64) >> 6));
          a2 = v38;
          this = v36;
          if ((*(v36 + 20) & 7) != 1)
          {
            goto LABEL_65;
          }

LABEL_19:
          if ((*(*this + 16) - 1) >= 2)
          {
            v11 = a2;
            v12 = *(*this + 8);
            v13 = this;
            v14 = (this + 8);
            v15 = (this + 8);
            if ((v12 - 64) <= 0xFFFFFF7F)
            {
              v15 = *v14;
            }

            Bit = llvm::APInt::tcExtractBit(v15, (v12 - 2));
            a2 = v11;
            if (!Bit)
            {
              if (*(*v13 + 16) != 1)
              {
                v17 = *(*v13 + 8);
                if ((v17 - 64) <= 0xFFFFFF7F)
                {
                  v14 = *v14;
                }

                llvm::APInt::tcSetBit(v14, (v17 - 2));
              }

              return 1;
            }
          }

LABEL_65:
          if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
          {
            return 0;
          }

          v39 = *(*a2 + 8);
          v42 = *(a2 + 1);
          v40 = (a2 + 8);
          v41 = v42;
          if ((v39 - 64) >= 0xFFFFFF80)
          {
            v43 = v40;
          }

          else
          {
            v43 = v41;
          }

          return llvm::APInt::tcExtractBit(v43, (v39 - 2)) == 0;
        }

LABEL_18:
        if ((v3 & 7) != 1)
        {
          goto LABEL_65;
        }

        goto LABEL_19;
      }
    }

    *(this + 20) = v3 & 0xF8;
    if (a3 != (*(a2 + 20) & 8) >> 3)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    v20 = v3 & 0xF0;
    goto LABEL_57;
  }

  if (v5 > 3)
  {
    goto LABEL_18;
  }

  if ((v5 - 2) < 2)
  {
    return 0;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (((((v4 ^ v3) & 8) == 0) ^ a3))
  {
    return 0;
  }

  llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
  return 1;
}

BOOL llvm::detail::IEEEFloat::isSignaling(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    return 0;
  }

  v2 = *(*this + 8);
  v3 = (this + 8);
  if ((v2 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  return llvm::APInt::tcExtractBit(v3, (v2 - 2)) == 0;
}

void *llvm::detail::IEEEFloat::makeQuiet(void *this)
{
  if (*(*this + 16) != 1)
  {
    v1 = *(*this + 8);
    v2 = this + 1;
    if ((v1 - 64) <= 0xFFFFFF7F)
    {
      v2 = *v2;
    }

    return llvm::APInt::tcSetBit(v2, (v1 - 2));
  }

  return this;
}

BOOL llvm::detail::IEEEFloat::multiplySpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 <= 2)
    {
      if (v4)
      {
        v5 = v4 == 1;
      }

      else
      {
        v5 = 0;
      }

      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    if ((v4 - 4) < 4)
    {
      *(this + 20) = v3 & 8 ^ v2;
      if ((v2 & 7) != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_35;
    }

LABEL_18:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v4 > 11)
  {
    if ((v4 - 14) >= 2)
    {
      if (v4 != 12)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_47:
    *(this + 20) = v2 & 0xF8 | 3;
    return 0;
  }

  if (v4 > 9)
  {
    if (v4 == 10)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (v4 == 8)
  {
LABEL_12:
    *(this + 20) = v2 & 0xF8;
    return 0;
  }

LABEL_20:
  v7 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v7;
  v8 = *(a2 + 20);
  v9 = v8 & 7;
  v10 = v7 & 0xF8 | v8 & 7;
  *(this + 20) = v10;
  *(this + 4) = *(a2 + 4);
  v12 = (v8 & 6) != 0 && v9 != 3;
  if (v9 == 1 || v12)
  {
    v13 = (this + 8);
    v14 = *(*this + 8);
    v15 = this;
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v16 = (a2 + 8);
    }

    else
    {
      v16 = *(a2 + 1);
    }

    v17 = a2;
    llvm::APInt::tcAssign(v13, v16, ((v14 + 64) >> 6));
    a2 = v17;
    this = v15;
    v10 = *(v15 + 20);
  }

  *(this + 20) = v10 & 0xF7;
  *(this + 20) = *(a2 + 20) & 8 ^ v10 & 0xF7;
  if ((v10 & 7) != 1)
  {
LABEL_39:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v24 = *(*a2 + 8);
      v27 = *(a2 + 1);
      v25 = (a2 + 8);
      v26 = v27;
      if ((v24 - 64) >= 0xFFFFFF80)
      {
        v28 = v25;
      }

      else
      {
        v28 = v26;
      }

      return llvm::APInt::tcExtractBit(v28, (v24 - 2)) == 0;
    }

    return 0;
  }

LABEL_35:
  if ((*(*this + 16) - 1) < 2)
  {
    goto LABEL_39;
  }

  v18 = a2;
  v19 = *(*this + 8);
  v20 = this;
  v21 = (this + 8);
  v22 = (this + 8);
  if ((v19 - 64) <= 0xFFFFFF7F)
  {
    v22 = *v21;
  }

  Bit = llvm::APInt::tcExtractBit(v22, (v19 - 2));
  a2 = v18;
  if (Bit)
  {
    goto LABEL_39;
  }

  if (*(*v20 + 16) == 1)
  {
    return 1;
  }

  v29 = *(*v20 + 8);
  if ((v29 - 64) <= 0xFFFFFF7F)
  {
    v21 = *v21;
  }

  llvm::APInt::tcSetBit(v21, (v29 - 2));
  return 1;
}

uint64_t llvm::detail::IEEEFloat::divideSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 > 3)
    {
      goto LABEL_27;
    }

    if ((v4 - 2) >= 2)
    {
      if (!v4)
      {
        goto LABEL_41;
      }

      goto LABEL_12;
    }

    return 0;
  }

  if (v4 > 11)
  {
    if (v4 > 13)
    {
      if (v4 != 14)
      {
LABEL_41:
        llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
        return 1;
      }

      return 0;
    }

    if (v4 == 12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 > 9)
    {
      if (v4 != 10)
      {
        if (*(*this + 16) == 1)
        {
          llvm::detail::IEEEFloat::makeNaN(this, 0, (v2 >> 3) & 1, 0);
        }

        else
        {
          *(this + 20) = v2 & 0xF8;
        }

        return 2;
      }

      return 0;
    }

    if (v4 == 8)
    {
      *(this + 20) = v2 & 0xF8 | 3;
      return 0;
    }
  }

LABEL_12:
  v6 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v6;
  v7 = *(a2 + 20);
  v8 = v7 & 7;
  v9 = v6 & 0xF8 | v7 & 7;
  *(this + 20) = v9;
  *(this + 4) = *(a2 + 4);
  v11 = (v7 & 6) != 0 && v8 != 3;
  if (v8 == 1 || v11)
  {
    v12 = (this + 8);
    v13 = *(*this + 8);
    v14 = this;
    if ((v13 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
    {
      v15 = (a2 + 8);
    }

    else
    {
      v15 = *(a2 + 1);
    }

    v16 = a2;
    llvm::APInt::tcAssign(v12, v15, ((v13 + 64) >> 6));
    a2 = v16;
    this = v14;
    v9 = *(v14 + 20);
  }

  LOBYTE(v2) = v9 & 0xF7;
  *(this + 20) = v9 & 0xF7;
  v3 = *(a2 + 20);
LABEL_27:
  *(this + 20) = v3 & 8 ^ v2;
  if ((v2 & 7) != 1 || (*(*this + 16) - 1) < 2)
  {
    goto LABEL_33;
  }

  v17 = a2;
  v18 = *(*this + 8);
  v19 = this;
  v20 = (this + 8);
  v21 = (this + 8);
  if ((v18 - 64) <= 0xFFFFFF7F)
  {
    v21 = *v20;
  }

  Bit = llvm::APInt::tcExtractBit(v21, (v18 - 2));
  a2 = v17;
  if (!Bit)
  {
    if (*(*v19 + 16) == 1)
    {
      return 1;
    }

    v28 = *(*v19 + 8);
    if ((v28 - 64) <= 0xFFFFFF7F)
    {
      v20 = *v20;
    }

    llvm::APInt::tcSetBit(v20, (v28 - 2));
    return 1;
  }

  else
  {
LABEL_33:
    if ((*(a2 + 20) & 7) == 1 && (*(*a2 + 16) - 1) >= 2)
    {
      v23 = *(*a2 + 8);
      v26 = *(a2 + 1);
      v24 = (a2 + 8);
      v25 = v26;
      if ((v23 - 64) >= 0xFFFFFF80)
      {
        v27 = v24;
      }

      else
      {
        v27 = v25;
      }

      return llvm::APInt::tcExtractBit(v27, (v23 - 2)) == 0;
    }

    else
    {
      return 0;
    }
  }
}

BOOL llvm::detail::IEEEFloat::modSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 > 3)
    {
      goto LABEL_21;
    }

    if ((v4 - 2) >= 2 && v4 != 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  v7 = 1 << v4;
  if ((v7 & 0x5500) != 0)
  {
    return 0;
  }

  if ((v7 & 0x2200) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  v8 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v8;
  v9 = *(a2 + 20);
  v10 = v9 & 7;
  v2 = v8 & 0xF8 | v9 & 7;
  *(this + 20) = v2;
  *(this + 4) = *(a2 + 4);
  v12 = (v9 & 6) != 0 && v10 != 3;
  if (v10 != 1 && !v12)
  {
LABEL_21:
    if ((v2 & 7) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_22;
  }

  v20 = (this + 8);
  v21 = *(*this + 8);
  v22 = this;
  if ((v21 - 64) <= 0xFFFFFF7F)
  {
    v20 = *v20;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v23 = (a2 + 8);
  }

  else
  {
    v23 = *(a2 + 1);
  }

  v24 = a2;
  llvm::APInt::tcAssign(v20, v23, ((v21 + 64) >> 6));
  a2 = v24;
  this = v22;
  if ((*(v22 + 20) & 7) != 1)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((*(*this + 16) - 1) >= 2)
  {
    v13 = a2;
    v14 = *(*this + 8);
    v15 = this;
    v16 = (this + 8);
    v17 = (this + 8);
    if ((v14 - 64) <= 0xFFFFFF7F)
    {
      v17 = *v16;
    }

    Bit = llvm::APInt::tcExtractBit(v17, (v14 - 2));
    a2 = v13;
    if (!Bit)
    {
      if (*(*v15 + 16) != 1)
      {
        v19 = *(*v15 + 8);
        if ((v19 - 64) <= 0xFFFFFF7F)
        {
          v16 = *v16;
        }

        llvm::APInt::tcSetBit(v16, (v19 - 2));
        return 1;
      }

      return 1;
    }
  }

LABEL_36:
  if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
  {
    return 0;
  }

  v25 = *(*a2 + 8);
  v28 = *(a2 + 1);
  v26 = (a2 + 8);
  v27 = v28;
  if ((v25 - 64) >= 0xFFFFFF80)
  {
    v29 = v26;
  }

  else
  {
    v29 = v27;
  }

  return llvm::APInt::tcExtractBit(v29, (v25 - 2)) == 0;
}

uint64_t llvm::detail::IEEEFloat::remainderSpecials(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = *(a2 + 20);
  v4 = 4 * (v2 & 7) + (v3 & 7);
  if (v4 <= 7)
  {
    if (v4 > 3)
    {
      goto LABEL_22;
    }

    if ((v4 - 2) >= 2 && v4 != 0)
    {
      goto LABEL_14;
    }

LABEL_33:
    llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
    return 1;
  }

  if (v4 > 11)
  {
    if (v4 > 13)
    {
      if (v4 != 14)
      {
        goto LABEL_33;
      }

      return 0;
    }

    if (v4 == 12)
    {
      return 0;
    }
  }

  else
  {
    if (v4 > 9)
    {
      if (v4 == 10)
      {
        return 2;
      }

      goto LABEL_33;
    }

    if (v4 == 8)
    {
      return 0;
    }
  }

LABEL_14:
  v6 = v3 & 8 | v2 & 0xF7;
  *(this + 20) = v6;
  v7 = *(a2 + 20);
  v8 = v7 & 7;
  v2 = v6 & 0xF8 | v7 & 7;
  *(this + 20) = v2;
  *(this + 4) = *(a2 + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 != 1 && !v10)
  {
LABEL_22:
    if ((v2 & 7) != 1)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  v18 = (this + 8);
  v19 = *(*this + 8);
  v20 = this;
  if ((v19 - 64) <= 0xFFFFFF7F)
  {
    v18 = *v18;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v21 = (a2 + 8);
  }

  else
  {
    v21 = *(a2 + 1);
  }

  v22 = a2;
  llvm::APInt::tcAssign(v18, v21, ((v19 + 64) >> 6));
  a2 = v22;
  this = v20;
  if ((*(v20 + 20) & 7) != 1)
  {
    goto LABEL_40;
  }

LABEL_23:
  if ((*(*this + 16) - 1) >= 2)
  {
    v11 = a2;
    v12 = *(*this + 8);
    v13 = this;
    v14 = (this + 8);
    v15 = (this + 8);
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v15 = *v14;
    }

    Bit = llvm::APInt::tcExtractBit(v15, (v12 - 2));
    a2 = v11;
    if (!Bit)
    {
      if (*(*v13 + 16) == 1)
      {
        return 1;
      }

      v28 = *(*v13 + 8);
      if ((v28 - 64) <= 0xFFFFFF7F)
      {
        v14 = *v14;
      }

      llvm::APInt::tcSetBit(v14, (v28 - 2));
      return 1;
    }
  }

LABEL_40:
  if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
  {
    return 0;
  }

  v23 = *(*a2 + 8);
  v26 = *(a2 + 1);
  v24 = (a2 + 8);
  v25 = v26;
  if ((v23 - 64) >= 0xFFFFFF80)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

  return llvm::APInt::tcExtractBit(v27, (v23 - 2)) == 0;
}

_BYTE *llvm::detail::IEEEFloat::changeSign(_BYTE *this)
{
  v1 = this[20];
  if (*(*this + 20) != 2 || (v1 & 5 | 2) != 3)
  {
    this[20] = v1 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::IEEEFloat::addOrSubtract(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3, int a4)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, a4);
  if (result == 2)
  {
    v9 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, a4);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v9);
  }

  v10 = *(a1 + 20);
  if ((v10 & 7) == 3)
  {
    v11 = *(a2 + 20);
    if ((v11 & 7) != 3 || a4 != ((v11 ^ v10) & 8) >> 3)
    {
      v10 = v10 & 0xF3 | (8 * (a3 == 3));
      *(a1 + 20) = v10;
    }

    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v10 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::add(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 0);
  if (result == 2)
  {
    v7 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 0);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v7);
  }

  v8 = a1[20];
  if ((v8 & 7) == 3)
  {
    v9 = a2[20];
    if ((v9 & 7) != 3 || ((v9 ^ v8) & 8) != 0)
    {
      LOBYTE(v8) = v8 & 0xF3 | (8 * (a3 == 3));
      a1[20] = v8;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v8 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::subtract(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  result = llvm::detail::IEEEFloat::addOrSubtractSpecials(a1, a2, 1);
  if (result == 2)
  {
    v7 = llvm::detail::IEEEFloat::addOrSubtractSignificand(a1, a2, 1u);
    result = llvm::detail::IEEEFloat::normalize(a1, a3, v7);
  }

  v8 = a1[20];
  if ((v8 & 7) == 3)
  {
    v9 = a2[20];
    if ((v9 & 7) != 3 || ((v9 ^ v8) & 8) == 0)
    {
      LOBYTE(v8) = v8 & 0xF3 | (8 * (a3 == 3));
      a1[20] = v8;
    }

    if (*(*a1 + 20) == 2)
    {
      a1[20] = v8 & 0xF7;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::multiply(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::multiplySpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::multiplySignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::divide(llvm::detail::IEEEFloat *a1, const llvm::detail::IEEEFloat *a2, int a3)
{
  *(a1 + 20) ^= *(a2 + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(a1, a2);
  v7 = *(a1 + 20);
  if ((v7 & 7) == 3)
  {
    if (*(*a1 + 20) == 2)
    {
      *(a1 + 20) = v7 & 0xF3;
    }
  }

  else if ((*(a1 + 20) & 6) != 0)
  {
    v8 = llvm::detail::IEEEFloat::divideSignificand(a1, a2);
    LODWORD(result) = llvm::detail::IEEEFloat::normalize(a1, a3, v8);
    if (v8)
    {
      return result | 0x10;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::remainder(__int128 **this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = llvm::detail::IEEEFloat::remainderSpecials(this, a2);
  v6 = v5;
  if (v5 != 2)
  {
    return v6;
  }

  v74 = *a2;
  if ((*(v74 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v7 = *(a2 + 20);
  v8 = v7 & 7;
  v77 = v7 & 0xF;
  v76 = *(a2 + 4);
  v10 = (v7 & 6) != 0 && v8 != 3;
  if (v8 != 1 && !v10)
  {
    v12 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v74, a2, 0);
    if (v12 == 2)
    {
      goto LABEL_24;
    }

LABEL_16:
    v13 = v77;
    if ((v77 & 7) != 3)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v14 = *(v74 + 2);
  if ((v14 - 64) >= 0xFFFFFF80)
  {
    v5 = &v75;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = *(a2 + 1);
  }

  llvm::APInt::tcAssign(v5, v15, ((v14 + 64) >> 6));
  v12 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v74, a2, 0);
  if (v12 != 2)
  {
    goto LABEL_16;
  }

LABEL_24:
  v16 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v74, a2, 0);
  v12 = llvm::detail::IEEEFloat::normalize(&v74, 1, v16);
  v13 = v77;
  if ((v77 & 7) != 3)
  {
    goto LABEL_30;
  }

LABEL_25:
  v17 = *(a2 + 20);
  if ((v17 & 7) != 3 || ((v17 ^ v13) & 8) != 0)
  {
    LOBYTE(v13) = v13 & 0xF3;
    v77 = v13;
  }

  if (*(v74 + 5) == 2)
  {
    v77 = v13 & 0xF3;
  }

LABEL_30:
  if (v12)
  {
    v70 = *a2;
    if ((*(v70 + 8) + 64) >= 0x80)
    {
      goto LABEL_32;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::mod(this, &v74);
    v70 = *a2;
    if ((*(v70 + 8) + 64) >= 0x80)
    {
LABEL_32:
      operator new[]();
    }
  }

  v18 = *(a2 + 20);
  v19 = v18 & 7;
  v20 = v73 & 0xF0 | v18 & 0xF;
  v73 = v20;
  v72 = *(a2 + 4);
  v22 = (v18 & 6) != 0 && v19 != 3;
  if (v19 == 1 || v22)
  {
    v23 = *(v70 + 8);
    if ((v23 - 64) >= 0xFFFFFF80)
    {
      v24 = &v71;
    }

    else
    {
      v24 = v71;
    }

    v25 = *(*a2 + 8) - 64;
    v28 = *(a2 + 1);
    v27 = (a2 + 8);
    v26 = v28;
    if (v25 >= 0xFFFFFF80)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    llvm::APInt::tcAssign(v24, v29, ((v23 + 64) >> 6));
    v20 = v73;
  }

  v73 = v20 & 0xF7;
  v30 = *(this + 20) & 0xF7;
  *(this + 20) = v30;
  v31 = *this;
  v32 = *(*this + 2);
  v67 = **this;
  v68 = v32;
  *&v67 = vadd_s32(*&v67, 0xFFFFFFFF00000001);
  DWORD2(v67) += 2;
  v63 = v31;
  if ((*(v31 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v33 = v30 & 7;
  v66 = v66 & 0xF0 | v30 & 0xF;
  v65 = *(this + 4);
  v35 = (v30 & 6) != 0 && v33 != 3;
  if (v33 == 1 || v35)
  {
    v36 = *(v63 + 2);
    if ((v36 - 64) >= 0xFFFFFF80)
    {
      v37 = &v64;
    }

    else
    {
      v37 = v64;
    }

    if ((*(*this + 2) - 64) >= 0xFFFFFF80)
    {
      v38 = (this + 1);
    }

    else
    {
      v38 = this[1];
    }

    llvm::APInt::tcAssign(v37, v38, ((v36 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v63, &v67, 1, &v69);
  v59 = v70;
  if ((*(v70 + 8) + 64) >= 0x80)
  {
    operator new[]();
  }

  v39 = v73 & 7;
  v62 = v62 & 0xF0 | v73 & 0xF;
  v61 = v72;
  v41 = (v73 & 6) != 0 && v39 != 3;
  if (v39 == 1 || v41)
  {
    v42 = *(v59 + 8);
    if ((v42 - 64) >= 0xFFFFFF80)
    {
      v43 = &v60;
    }

    else
    {
      v43 = v60;
    }

    if ((*(v70 + 8) - 64) >= 0xFFFFFF80)
    {
      v44 = &v71;
    }

    else
    {
      v44 = v71;
    }

    llvm::APInt::tcAssign(v43, v44, ((v42 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v59, &v67, 1, &v69);
  v6 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v63, &v63, 0);
  if (v6 == 2)
  {
    v45 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v63, &v63, 0);
    v6 = llvm::detail::IEEEFloat::normalize(&v63, 1, v45);
  }

  if ((v66 & 7) == 3 && *(v63 + 5) == 2)
  {
    v66 &= 0xF3u;
  }

  if (llvm::detail::IEEEFloat::compare(&v63, &v59) == 2)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v70, 1) == 2)
    {
      v46 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v70, 1u);
      llvm::detail::IEEEFloat::normalize(this, 1, v46);
    }

    v47 = *(this + 20);
    if ((v47 & 7) == 3)
    {
      if ((v73 & 7) != 3 || ((v73 ^ v47) & 8) == 0)
      {
        LOBYTE(v47) = v47 & 0xF3;
        *(this + 20) = v47;
      }

      if (*(*this + 5) == 2)
      {
        *(this + 20) = v47 & 0xF3;
      }
    }

    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v63, &v59, 1) == 2)
    {
      v48 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v63, &v59, 1u);
      llvm::detail::IEEEFloat::normalize(&v63, 1, v48);
    }

    v49 = v66;
    if ((v66 & 7) == 3)
    {
      if ((v62 & 7) != 3 || ((v62 ^ v66) & 8) == 0)
      {
        v49 = v66 & 0xF3;
        v66 &= 0xF3u;
      }

      if (*(v63 + 5) == 2)
      {
        v66 = v49 & 0xF3;
      }
    }

    v6 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v63, &v59, 1);
    if (v6 == 2)
    {
      v50 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v63, &v59, 1u);
      v6 = llvm::detail::IEEEFloat::normalize(&v63, 1, v50);
    }

    v51 = v66;
    if ((v66 & 7) == 3)
    {
      if ((v62 & 7) != 3 || ((v62 ^ v66) & 8) == 0)
      {
        v51 = v66 & 0xF3;
        v66 &= 0xF3u;
      }

      if (*(v63 + 5) == 2)
      {
        v66 = v51 & 0xF3;
      }
    }

    if (llvm::detail::IEEEFloat::compare(&v63, &v59) - 1 <= 1)
    {
      v6 = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v70, 1);
      if (v6 == 2)
      {
        v52 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v70, 1u);
        v6 = llvm::detail::IEEEFloat::normalize(this, 1, v52);
      }

      v53 = *(this + 20);
      if ((v53 & 7) == 3)
      {
        if ((v73 & 7) != 3 || ((v73 ^ v53) & 8) == 0)
        {
          LOBYTE(v53) = v53 & 0xF3;
          *(this + 20) = v53;
        }

        if (*(*this + 5) == 2)
        {
          *(this + 20) = v53 & 0xF3;
        }
      }
    }
  }

  v54 = v4 & 8;
  v55 = *(this + 20);
  if ((v55 & 7) == 3)
  {
    v56 = v55 & 0xF3;
    v57 = v56 | v54;
    *(this + 20) = v57;
    if (*(*this + 5) == 2)
    {
      v57 = v56;
    }

    *(this + 20) = v57;
    if ((*(v59 + 8) - 64) > 0xFFFFFF7F)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

  *(this + 20) = v55 ^ v54;
  if ((*(v59 + 8) - 64) <= 0xFFFFFF7F)
  {
LABEL_127:
    if (v60)
    {
      MEMORY[0x259C63150](v60, 0x1000C8000313F17);
    }
  }

LABEL_129:
  if ((*(v63 + 2) - 64) <= 0xFFFFFF7F && v64)
  {
    MEMORY[0x259C63150](v64, 0x1000C8000313F17);
  }

  if ((*(v70 + 8) - 64) <= 0xFFFFFF7F && v71)
  {
    MEMORY[0x259C63150](v71, 0x1000C8000313F17);
  }

  if ((*(v74 + 2) - 64) <= 0xFFFFFF7F && v75)
  {
    MEMORY[0x259C63150](v75, 0x1000C8000313F17);
  }

  return v6;
}

uint64_t llvm::detail::IEEEFloat::mod(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  result = llvm::detail::IEEEFloat::modSpecials(this, a2);
  v6 = *(this + 20);
  v7 = (v6 & 6) == 0 || (v6 & 7) == 3;
  if (v7 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
  {
    LOBYTE(v8) = *(this + 20);
    goto LABEL_7;
  }

  v11 = (this + 8);
  while (1)
  {
    v12 = *(this + 4) - *(a2 + 4);
    if (!v12)
    {
      v13 = result;
      v14 = *(*this + 8);
      v15 = (this + 8);
      if ((v14 - 64) <= 0xFFFFFF7F)
      {
        v15 = *v11;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v16 = (a2 + 8);
      }

      else
      {
        v16 = *(a2 + 1);
      }

      v12 = llvm::APInt::tcCompare(v15, v16, ((v14 + 64) >> 6));
      result = v13;
    }

    if (v12 < 0)
    {
      break;
    }

    v17 = llvm::detail::ilogb(this, v5);
    v19 = llvm::detail::ilogb(a2, v18);
    v20 = *a2;
    v68 = v20;
    if ((v20[2] + 64) >= 0x80)
    {
      operator new[]();
    }

    v21 = *(a2 + 20);
    v22 = v21 & 7;
    v71 = v71 & 0xF0 | v21 & 0xF;
    v23 = *(a2 + 4);
    v70 = v23;
    v25 = (v21 & 6) != 0 && v22 != 3;
    if (v22 == 1 || v25)
    {
      v27 = v20[2];
      if ((v27 - 64) >= 0xFFFFFF80)
      {
        v28 = &v69;
      }

      else
      {
        v28 = v69;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v29 = (a2 + 8);
      }

      else
      {
        v29 = *(a2 + 1);
      }

      llvm::APInt::tcAssign(v28, v29, ((v27 + 64) >> 6));
      v20 = v68;
      v23 = v70;
    }

    v30 = v17 - v19;
    v31 = *v20 + v20[2] + ~v20[1];
    v32 = -2 - v31;
    if (v31 + 1 < v30)
    {
      v33 = v31 + 1;
    }

    else
    {
      v33 = v30;
    }

    if (v32 > v30)
    {
      v33 = v32;
    }

    v70 = v33 + v23;
    llvm::detail::IEEEFloat::normalize(&v68, 1, 0);
    v34 = v71;
    v35 = v68;
    if ((v71 & 7) == 1)
    {
      v36 = v68[4];
      if (v36 != 1)
      {
        v37 = v68[2];
        if ((v37 - 64) >= 0xFFFFFF80)
        {
          v38 = &v69;
        }

        else
        {
          v38 = v69;
        }

        llvm::APInt::tcSetBit(v38, (v37 - 2));
        v35 = v68;
        v34 = v71;
        LOBYTE(v36) = (v71 & 7) == 1;
      }
    }

    else
    {
      LOBYTE(v36) = 0;
    }

    v72 = v35;
    v73 = v69;
    v74 = v70;
    v75 = v75 & 0xF0 | v34 & 0xF;
    v68 = &llvm::semBogus;
    if (v36)
    {
      goto LABEL_64;
    }

    v39 = *(this + 4);
    if (v39 == v70)
    {
      v40 = *(*this + 8);
      v41 = (this + 8);
      if ((v40 - 64) <= 0xFFFFFF7F)
      {
        v41 = *v11;
      }

      if ((v35[2] - 64) >= 0xFFFFFF80)
      {
        v42 = &v73;
      }

      else
      {
        v42 = v69;
      }

      if ((llvm::APInt::tcCompare(v41, v42, ((v40 + 64) >> 6)) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

LABEL_64:
      v43 = *a2;
      v64 = v43;
      if ((v43[2] + 64) >= 0x80)
      {
        operator new[]();
      }

      v44 = *(a2 + 20);
      v45 = v44 & 7;
      v67 = v67 & 0xF0 | v44 & 0xF;
      v46 = *(a2 + 4);
      v66 = v46;
      v48 = (v44 & 6) != 0 && v45 != 3;
      if (v45 == 1 || v48)
      {
        v49 = v43[2];
        if ((v49 - 64) >= 0xFFFFFF80)
        {
          v50 = &v65;
        }

        else
        {
          v50 = v65;
        }

        if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
        {
          v51 = (a2 + 8);
        }

        else
        {
          v51 = *(a2 + 1);
        }

        llvm::APInt::tcAssign(v50, v51, ((v49 + 64) >> 6));
        v43 = v64;
        v46 = v66;
      }

      v52 = *v43 + v43[2] + ~v43[1];
      v53 = -2 - v52;
      if (v52 + 1 < v30 - 1)
      {
        v54 = v52 + 1;
      }

      else
      {
        v54 = v30 - 1;
      }

      if (v53 >= v30)
      {
        v54 = v53;
      }

      v66 = v54 + v46;
      llvm::detail::IEEEFloat::normalize(&v64, 1, 0);
      v55 = v67;
      v56 = v64;
      if ((v67 & 7) == 1 && v64[4] != 1)
      {
        v57 = v64[2];
        if ((v57 - 64) >= 0xFFFFFF80)
        {
          v58 = &v65;
        }

        else
        {
          v58 = v65;
        }

        llvm::APInt::tcSetBit(v58, (v57 - 2));
        v56 = v64;
        v55 = v67;
      }

      v59 = v65;
      v60 = v66;
      v64 = &llvm::semBogus;
      if ((v72[2] - 64) <= 0xFFFFFF7F && v73)
      {
        MEMORY[0x259C63150](v73, 0x1000C8000313F17);
        v61 = v64;
      }

      else
      {
        v61 = &llvm::semBogus;
      }

      v72 = v56;
      v73 = v59;
      v74 = v60;
      v75 = v75 & 0xF0 | v55 & 0xF;
      if ((v61[2] - 64) <= 0xFFFFFF7F && v65)
      {
        MEMORY[0x259C63150](v65, 0x1000C8000313F17);
      }

      goto LABEL_99;
    }

    if (v39 - v70 < 0)
    {
      goto LABEL_64;
    }

LABEL_99:
    v75 = v75 & 0xF7 | *(this + 20) & 8;
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v72, 1);
    if (result == 2)
    {
      v62 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v72, 1u);
      result = llvm::detail::IEEEFloat::normalize(this, 1, v62);
    }

    v8 = *(this + 20);
    if ((v8 & 7) == 3)
    {
      if ((v75 & 7) != 3 || ((v75 ^ v8) & 8) == 0)
      {
        LOBYTE(v8) = v8 & 0xF3;
        *(this + 20) = v8;
      }

      if (*(*this + 20) == 2)
      {
        LOBYTE(v8) = v8 & 0xF3;
        *(this + 20) = v8;
      }
    }

    if ((v72[2] - 64) <= 0xFFFFFF7F && v73)
    {
      v63 = result;
      MEMORY[0x259C63150](v73, 0x1000C8000313F17);
      result = v63;
      LOBYTE(v8) = *(this + 20);
    }

    if ((v8 & 6) == 0 || (v8 & 7) == 3 || (*(a2 + 20) & 6) == 0 || (*(a2 + 20) & 7) == 3)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(v8) = *(this + 20);
LABEL_7:
  if ((v8 & 7) == 3)
  {
    v9 = v8 & 0xF3;
    v10 = v9 | v6 & 8;
    *(this + 20) = v10;
    if (*(*this + 20) == 2)
    {
      v10 = v9;
    }

    *(this + 20) = v10;
  }

  return result;
}

uint64_t llvm::detail::ilogb(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 7) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v5 == 1)
  {
    return 0x80000000;
  }

  if (v5 == 3)
  {
    return 2147483649;
  }

  v29 = v2;
  v30 = v3;
  v7 = (v4 & 6) == 0 || v5 == 3;
  if (v7 || *(this + 4) != *(*this + 4))
  {
    return *(this + 4);
  }

  v8 = *(*this + 8);
  v9 = (this + 8);
  v10 = (v8 - 64) >= 0xFFFFFF80 ? (this + 8) : *(this + 1);
  v11 = this;
  Bit = llvm::APInt::tcExtractBit(v10, (v8 - 1));
  this = v11;
  if (Bit)
  {
    return *(this + 4);
  }

  v13 = *v11;
  v25 = v13;
  v14 = *(v13 + 8);
  v15 = v13;
  if ((v14 + 64) >= 0x80)
  {
    operator new[]();
  }

  v16 = *(v11 + 20);
  v17 = v16 & 7;
  v28 = v16 & 0xF;
  v18 = *(v11 + 4);
  v27 = v18;
  v20 = (v16 & 6) != 0 && v17 != 3;
  if (v17 == 1 || v20)
  {
    v21 = *(v13 + 8);
    if ((v21 - 64) >= 0xFFFFFF80)
    {
      v14 = &v26;
    }

    if ((*(v13 + 8) - 64) >= 0xFFFFFF80)
    {
      v22 = v9;
    }

    else
    {
      v22 = *(v11 + 1);
    }

    llvm::APInt::tcAssign(v14, v22, ((v21 + 64) >> 6));
    v15 = *v11;
    v18 = v27;
  }

  v23 = *(v15 + 8) - 1;
  v27 = v18 + v23;
  llvm::detail::IEEEFloat::normalize(&v25, 1, 0);
  result = (v27 - v23);
  if ((*(v25 + 8) - 64) <= 0xFFFFFF7F)
  {
    if (v26)
    {
      v24 = (v27 - v23);
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
      return v24;
    }
  }

  return result;
}

uint64_t llvm::detail::scalbn@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = **a1 + *(*a1 + 8) + ~*(*a1 + 4);
  v7 = -2 - v6;
  if (v6 + 1 < a2)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = a2;
  }

  if (v7 > a2)
  {
    v8 = v7;
  }

  *(a1 + 16) += v8;
  result = llvm::detail::IEEEFloat::normalize(a1, a3, 0);
  v10 = *(a1 + 20);
  v11 = *a1;
  if ((v10 & 7) == 1 && *(v11 + 16) != 1)
  {
    v12 = *(v11 + 8);
    v13 = (a1 + 8);
    if ((v12 - 64) <= 0xFFFFFF7F)
    {
      v13 = *v13;
    }

    result = llvm::APInt::tcSetBit(v13, (v12 - 2));
    v11 = *a1;
    v10 = *(a1 + 20);
  }

  v14 = *(a1 + 8);
  *a4 = v11;
  *(a4 + 8) = v14;
  *(a4 + 16) = *(a1 + 16);
  *(a4 + 20) = *(a4 + 20) & 0xF0 | v10 & 0xF;
  *a1 = &llvm::semBogus;
  return result;
}

uint64_t llvm::detail::IEEEFloat::fusedMultiplyAdd(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2, uint64_t a3, int a4)
{
  v6 = this;
  v7 = *(this + 20);
  *(this + 20) = *(a2 + 20) & 8 ^ v7;
  v8 = v7 & 6;
  v9 = v7 & 7;
  if (v8)
  {
    v10 = v9 == 3;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || ((*(a2 + 20) & 6) != 0 ? (v11 = (*(a2 + 20) & 7) == 3) : (v11 = 1), v11 || (v12 = *(a3 + 20), (v12 & 6) == 0)))
  {
    if (llvm::detail::IEEEFloat::multiplySpecials(this, a2))
    {
      return 1;
    }

    else
    {
      result = llvm::detail::IEEEFloat::addOrSubtractSpecials(v6, a3, 0);
      if (result == 2)
      {
        v15 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v6, a3, 0);
        result = llvm::detail::IEEEFloat::normalize(v6, a4, v15);
      }

      v16 = v6[20];
      if ((v16 & 7) == 3)
      {
        v17 = *(a3 + 20);
        if ((v17 & 7) != 3 || ((v17 ^ v16) & 8) != 0)
        {
          LOBYTE(v16) = v16 & 0xF3 | (8 * (a4 == 3));
          v6[20] = v16;
        }

        if (*(*v6 + 20) == 2)
        {
          v18 = v16 & 0xF7;
LABEL_41:
          v6[20] = v18;
        }
      }
    }
  }

  else
  {
    v13 = *a3;
    v25 = v13;
    if ((*(v13 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v19 = v12 & 7;
    v28 = v12 & 0xF;
    v27 = *(a3 + 16);
    if (v19 != 3)
    {
      v20 = *(v13 + 8);
      if ((v20 - 64) >= 0xFFFFFF80)
      {
        this = &v26;
      }

      if ((*(*a3 + 8) - 64) >= 0xFFFFFF80)
      {
        v21 = (a3 + 8);
      }

      else
      {
        v21 = *(a3 + 8);
      }

      v22 = a2;
      llvm::APInt::tcAssign(this, v21, ((v20 + 64) >> 6));
      a2 = v22;
    }

    v23 = llvm::detail::IEEEFloat::multiplySignificand(v6, a2, &v25);
    if ((*(v25 + 8) - 64) <= 0xFFFFFF7F && v26)
    {
      MEMORY[0x259C63150](v26, 0x1000C8000313F17);
    }

    LODWORD(result) = llvm::detail::IEEEFloat::normalize(v6, a4, v23);
    if (v23)
    {
      result = result | 0x10;
    }

    else
    {
      result = result;
    }

    v24 = v6[20];
    if ((v24 & 7) == 3 && (result & 8) == 0 && ((*(a3 + 20) ^ v24) & 8) != 0)
    {
      v18 = v24 & 0xF3;
      v6[20] = v18 | (8 * (a4 == 3));
      if (*(*v6 + 20) != 2)
      {
        v18 |= 8 * (a4 == 3);
      }

      goto LABEL_41;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromAPInt(uint64_t a1, unsigned int *a2, int a3, int a4)
{
  v6 = a2[2];
  v7 = ((v6 + 63) >> 6);
  v17 = a2[2];
  if (v6 > 0x40)
  {
    llvm::APInt::initSlowCase(&v16, a2);
  }

  v8 = *a2;
  v16 = *a2;
  v9 = *(a1 + 20);
  *(a1 + 20) = v9 & 0xF7;
  if (a3 && ((v16 >> (v6 - 1)) & 1) != 0)
  {
    *(a1 + 20) = v9 | 8;
    v15 = v6;
    v10 = 0xFFFFFFFFFFFFFFFFLL >> -v6;
    if (!v6)
    {
      v10 = 0;
    }

    v14 = (v10 & ~v8);
    llvm::APInt::operator++(&v14);
    LODWORD(v6) = v15;
    v8 = v14;
    v15 = 0;
    if (v17 > 0x40 && v16)
    {
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      v16 = v8;
      v17 = v6;
      if (v15 >= 0x41 && v14)
      {
        MEMORY[0x259C63150](v14, 0x1000C8000313F17);
        LODWORD(v6) = v17;
        v8 = v16;
      }
    }

    else
    {
      v16 = v14;
      v17 = v6;
    }
  }

  if (v6 >= 0x41)
  {
    v11 = v8;
  }

  else
  {
    v11 = &v16;
  }

  result = llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, v11, v7, a4);
  if (v17 >= 0x41)
  {
    if (v16)
    {
      v13 = result;
      MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      return v13;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertToSignExtendedInteger(uint64_t a1, llvm::APInt *this, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  *a7 = 0;
  v7 = *(a1 + 20) & 7;
  if (v7 < 2)
  {
    return 1;
  }

  v11 = ((a4 + 63) >> 6);
  if (v7 == 3)
  {
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    LOBYTE(v12) = ((*(a1 + 20) >> 3) & 1) == 0;
LABEL_5:
    v8 = 0;
    *a7 = v12;
    return v8;
  }

  v14 = (a1 + 8);
  v15 = *(*a1 + 8);
  v16 = (a1 + 8);
  if ((v15 - 64) <= 0xFFFFFF7F)
  {
    v16 = *v14;
  }

  v17 = *(a1 + 16);
  if ((v17 & 0x80000000) != 0)
  {
    v22 = a6;
    v19 = a5;
    v39 = a4;
    llvm::APInt::tcSet(this, 0, (a4 + 63) >> 6);
    v21 = (*(*a1 + 8) + ~*(a1 + 16));
    if (!v21)
    {
LABEL_18:
      v29 = 1;
      goto LABEL_19;
    }
  }

  else
  {
    if (v17 >= a4)
    {
      return 1;
    }

    v19 = a5;
    v39 = a4;
    v20 = v17 + 1;
    v21 = v15 - (v17 + 1);
    if (v15 <= v17 + 1)
    {
      llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, v15, 0);
      llvm::APInt::tcShiftLeft(this, v11, v20 - *(*a1 + 8));
      v29 = 1;
      v30 = llvm::APInt::tcMSB(this, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_52;
    }

    v22 = a6;
    llvm::APInt::tcExtract(this, ((a4 + 63) >> 6), v16, (v17 + 1), v15 - v20);
    if (!v21)
    {
      goto LABEL_18;
    }
  }

  v23 = *(*a1 + 8) + 64;
  v24 = llvm::APInt::tcLSB(v16, (v23 >> 6));
  if (v24 >= v21)
  {
    goto LABEL_18;
  }

  v25 = v24 + 1;
  v26 = this;
  if (v25 == v21)
  {
    v27 = 0;
    v28 = 2;
  }

  else if ((v23 & 0xFFFFFFC0) >= v21 && (Bit = llvm::APInt::tcExtractBit(v16, (v21 - 1)), v26 = this, Bit))
  {
    v27 = 0;
    v28 = 3;
  }

  else
  {
    v27 = 1;
    v28 = 1;
  }

  if (v22 <= 1)
  {
    if (v22)
    {
      if (v28 == 3)
      {
        goto LABEL_48;
      }

      if (v28 == 2 && (*(a1 + 20) & 7) != 3)
      {
        if ((*(*a1 + 8) - 64) <= 0xFFFFFF7F)
        {
          v14 = *v14;
        }

        v35 = llvm::APInt::tcExtractBit(v14, v21);
        v26 = this;
        if (v35)
        {
          goto LABEL_48;
        }
      }
    }

    goto LABEL_51;
  }

  if (v22 == 2)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (v22 == 3)
    {
      if ((*(a1 + 20) & 8) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_51;
    }

    if (v27)
    {
LABEL_51:
      v29 = 0;
      v30 = llvm::APInt::tcMSB(v26, v11);
      v31 = v30 + 1;
      if ((*(a1 + 20) & 8) == 0)
      {
        goto LABEL_22;
      }

LABEL_52:
      if (v19)
      {
        v36 = this;
        if (v31 == v39)
        {
          v37 = v30;
          v38 = llvm::APInt::tcLSB(this, v11);
          v36 = this;
          if (v38 == v37)
          {
            goto LABEL_59;
          }
        }

        else if (v31 <= v39)
        {
LABEL_59:
          llvm::APInt::tcNegate(v36, v11);
          if ((v29 & 1) == 0)
          {
            return 16;
          }

          LOBYTE(v12) = 1;
          goto LABEL_5;
        }
      }

      else
      {
        v36 = this;
        if (!v31)
        {
          goto LABEL_59;
        }
      }

      return 1;
    }
  }

LABEL_48:
  v8 = 1;
  if (llvm::APInt::tcAddPart(v26, 1, v11))
  {
    return v8;
  }

  v29 = 0;
LABEL_19:
  v30 = llvm::APInt::tcMSB(this, v11);
  v31 = v30 + 1;
  if ((*(a1 + 20) & 8) != 0)
  {
    goto LABEL_52;
  }

LABEL_22:
  v32 = (v19 ^ 1) + v39;
  v33 = v31 >= v32;
  if (v31 < v32)
  {
    v12 = v29;
  }

  else
  {
    v12 = 0;
  }

  if (v33)
  {
    v8 = 1;
  }

  else
  {
    v8 = 16;
  }

  if (v12 == 1)
  {
    goto LABEL_5;
  }

  return v8;
}

uint64_t llvm::detail::IEEEFloat::convertToInteger(uint64_t a1, llvm::APInt *a2, uint64_t a3, unsigned int a4, int a5, int a6, _BYTE *a7)
{
  result = llvm::detail::IEEEFloat::convertToSignExtendedInteger(a1, a2, a3, a4, a5, a6, a7);
  if (result != 1)
  {
    return result;
  }

  v12 = ((a4 + 63) >> 6);
  if ((*(a1 + 20) & 7) != 1)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v13 = 0;
      LOBYTE(v14) = a5;
      if (!a5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v14 = a4 - a5;
      v15 = a4 - a5 - 65;
      if (a4 - a5 < 0x41)
      {
        v13 = 0;
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v16 = result;
        memset(a2, 255, 8 * (v15 >> 6) + 8);
        result = v16;
        v13 = (v15 >> 6) + 1;
        v17 = v14 - (v15 & 0xFFFFFFC0);
        LOBYTE(v14) = v17 - 64;
        if (v17 == 64)
        {
          goto LABEL_10;
        }
      }
    }

    *(a2 + v13++) = 0xFFFFFFFFFFFFFFFFLL >> -v14;
    goto LABEL_10;
  }

  v13 = 0;
LABEL_10:
  if (v13 < v12)
  {
    v18 = result;
    bzero(a2 + 8 * v13, 8 * (v12 + ~v13) + 8);
    result = v18;
  }

  if ((*(a1 + 20) & 8) != 0)
  {
    if (a5)
    {
      v19 = a4 - 1;
      v20 = result;
      llvm::APInt::tcShiftLeft(a2, v12, v19);
      return v20;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(uint64_t a1, llvm::APInt *this, unint64_t *a3, int a4)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v8 = llvm::APInt::tcMSB(this, a3);
  v9 = (v8 + 1);
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = ((v10 + 64) >> 6);
  v13 = v9 - v10;
  if (v9 >= v10)
  {
    *(a1 + 16) = v8;
    v15 = llvm::APInt::tcLSB(this, a3);
    if (v15 >= v13)
    {
      v14 = 0;
    }

    else if (v15 + 1 == v13)
    {
      v14 = 2;
    }

    else if (v13 <= a3 << 6 && llvm::APInt::tcExtractBit(this, (v13 - 1)))
    {
      v14 = 3;
    }

    else
    {
      v14 = 1;
    }

    llvm::APInt::tcExtract(v11, v12, this, v10, v13);
  }

  else
  {
    *(a1 + 16) = v10 - 1;
    llvm::APInt::tcExtract(v11, v12, this, v9, 0);
    v14 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(a1, a4, v14);
}

uint64_t llvm::detail::IEEEFloat::convertFromSignExtendedInteger(uint64_t a1, llvm::APInt *this, unint64_t *a3, int a4, int a5)
{
  if (a4)
  {
    v8 = a1;
    Bit = llvm::APInt::tcExtractBit(this, ((a3 << 6) - 1));
    a1 = v8;
    if (Bit)
    {
      *(v8 + 20) |= 8u;
      operator new[]();
    }
  }

  *(a1 + 20) &= ~8u;

  return llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, this, a3, a5);
}

uint64_t llvm::detail::IEEEFloat::convertFromZeroExtendedInteger(uint64_t a1, llvm::APInt *a2, int a3, int a4, int a5)
{
  v10 = ((a3 + 63) >> 6);
  llvm::APInt::APInt(&v19, a3);
  *(a1 + 20) &= ~8u;
  if (a4 && llvm::APInt::tcExtractBit(a2, (a3 - 1)))
  {
    *(a1 + 20) |= 8u;
    v18 = v20;
    if (v20 >= 0x41)
    {
      llvm::APInt::initSlowCase(&v17, &v19);
    }

    if (v20)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> -v20;
    }

    else
    {
      v11 = 0;
    }

    v17 = (v11 & ~v19);
    llvm::APInt::operator++(&v17);
    v12 = v18;
    v13 = v17;
    v18 = 0;
    if (v20 > 0x40 && v19)
    {
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      v19 = v13;
      v20 = v12;
      if (v18 >= 0x41 && v17)
      {
        MEMORY[0x259C63150](v17, 0x1000C8000313F17);
      }
    }

    else
    {
      v19 = v17;
      v20 = v12;
    }
  }

  if (v20 >= 0x41)
  {
    v14 = v19;
  }

  else
  {
    v14 = &v19;
  }

  result = llvm::detail::IEEEFloat::convertFromUnsignedParts(a1, v14, v10, a5);
  if (v20 >= 0x41)
  {
    if (v19)
    {
      v16 = result;
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      return v16;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v10 = *(*a1 + 8);
  v11 = (a1 + 8);
  v12 = (a1 + 8);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v11;
  }

  llvm::APInt::tcSet(v12, 0, (v10 + 64) >> 6);
  *(a1 + 16) = 0;
  v14 = *(*a1 + 8);
  if ((v14 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v15 = &a2[a3];
  if (a3)
  {
    v16 = a3 - 1;
    v17 = a2;
    while (1)
    {
      v18 = *v17;
      if (v18 != 48)
      {
        break;
      }

      ++v17;
      if (--v16 == -1)
      {
        v19 = &a2[a3];
        goto LABEL_18;
      }
    }

    if (v18 == 46)
    {
      if (a3 == 1)
      {
        goto LABEL_52;
      }

      v19 = v17;
      do
      {
        if (!v16)
        {
          goto LABEL_52;
        }

        v20 = *++v19;
        --v16;
      }

      while (v20 == 48);
      goto LABEL_19;
    }

    v19 = v17;
  }

  else
  {
    v19 = a2;
  }

LABEL_18:
  v17 = &a2[a3];
LABEL_19:
  if (v19 == v15)
  {
    goto LABEL_52;
  }

  v21 = 0;
  v22 = 0;
  v23 = v14 & 0xFFFFFFC0;
  v24 = v23 + 64;
  v25 = v19;
  do
  {
    v27 = *v25;
    if (v27 == 46)
    {
      if (v17 != v15)
      {
        goto LABEL_51;
      }

      v17 = v25++;
      continue;
    }

    v13 = llvm::hexDigitValue(char)::LUT[v27];
    if (v13 == -1)
    {
      break;
    }

    ++v25;
    if (v24)
    {
      v24 -= 4;
      v26 = v13 << v24;
      v13 = v24 >> 6;
      v11[v13] = (v11[v13] | v26);
    }

    else
    {
      if ((v22 & 1) == 0)
      {
        if ((v27 - 57) > 0xFFFFFFFFFFFFFFF6)
        {
          if ((llvm::hexDigitValue(char)::LUT[v27] & 7) != 0)
          {
            v21 = v21 & 0xFFFFFFFF00000000 | 1;
          }

          else
          {
            v28 = v25;
            if (v25 == v15)
            {
LABEL_51:
              llvm::inconvertibleErrorCode(v13);
              operator new();
            }

            while (1)
            {
              v29 = *v28;
              if (v29 != 48 && v29 != 46)
              {
                break;
              }

              if (++v28 == v15)
              {
                goto LABEL_51;
              }
            }

            v30 = v21 & 0xFFFFFFFF00000000;
            if (llvm::hexDigitValue(char)::LUT[v29] == -1)
            {
              v21 = v30 | (2 * (v27 != 48));
            }

            else
            {
              if (v27 == 48)
              {
                v31 = 1;
              }

              else
              {
                v31 = 3;
              }

              v21 = v31 | v30;
            }
          }
        }

        else
        {
          v21 = v21 & 0xFFFFFFFF00000000 | 3;
        }
      }

      v24 = 0;
      v22 = 1;
    }
  }

  while (v25 != v15);
  if (v25 == v15 || (*v25 | 0x20) != 0x70 || v25 == a2 || v17 != v15 && v25 - a2 == 1)
  {
    goto LABEL_52;
  }

  if (v25 != v19)
  {
    if (v17 == v15)
    {
      v32 = v25;
    }

    else
    {
      v32 = v17;
    }

    v33 = (v25 + 1);
    if (v25 + 1 == v15)
    {
      goto LABEL_52;
    }

    v34 = *v33;
    if (v34 == 45 || v34 == 43)
    {
      v33 = (v25 + 2);
      if (v25 + 2 == v15)
      {
        goto LABEL_52;
      }
    }

    if (v33 != v15)
    {
      v35 = 0;
      while (1)
      {
        v36 = *v33 - 48;
        if (v36 >= 0xA)
        {
          break;
        }

        v35 = v36 + 10 * v35;
        if (v35 >= 0x8000)
        {
          goto LABEL_74;
        }

        if (++v33 == v15)
        {
          goto LABEL_69;
        }
      }

LABEL_52:
      llvm::inconvertibleErrorCode(v13);
      operator new();
    }

    v35 = 0;
LABEL_69:
    v37 = *(*a1 + 8) - v23 + 4 * (v32 - v19 + ((v32 - v19) >> 31)) - 65;
    if (v37 != v37 || (v34 != 45 ? (v38 = v35) : (v38 = -v35), v39 = v38 + v37, v39 != v39))
    {
LABEL_74:
      if (v34 == 45)
      {
        v39 = -32768;
      }

      else
      {
        v39 = 0x7FFF;
      }
    }

    *(a1 + 16) = v39;
  }

  result = llvm::detail::IEEEFloat::normalize(a1, a4, v21);
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}