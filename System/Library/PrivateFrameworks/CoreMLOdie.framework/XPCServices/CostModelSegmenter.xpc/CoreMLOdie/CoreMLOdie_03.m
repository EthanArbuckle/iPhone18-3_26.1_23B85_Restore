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
    v25 = *a2;
    v105 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v26 = v7 & 7;
    v108 = v7 & 0xF;
    v107 = v8;
    v28 = (v7 & 6) != 0 && v26 != 3;
    if (v26 == 1 || v28)
    {
      v30 = *(v25 + 8);
      if ((v30 - 64) >= 0xFFFFFF80)
      {
        this = &v106;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v31 = (a2 + 8);
      }

      else
      {
        v31 = *(a2 + 1);
      }

      v32 = (v30 + 64) >> 6;
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      llvm::APInt::tcAssign(this, v31, v33);
    }

    if (v5 == v8)
    {
      v34 = 0;
      v35 = *v6 - v107;
      if (*v6 != v107)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v43 = v10 - 1;
      if (v10 < 1)
      {
        v57 = ~v10;
        *(v4 + 4) += ~v10;
        v58 = *(*v4 + 8);
        v59 = (v4 + 8);
        if ((v58 - 64) <= 0xFFFFFF7F)
        {
          v59 = *v59;
        }

        v60 = &v107;
        v61 = (v58 + 64) >> 6;
        if (v61 <= 1)
        {
          v62 = 1;
        }

        else
        {
          v62 = v61;
        }

        v63 = llvm::APInt::tcLSB(v59, v62);
        if (v63 >= v57)
        {
          v34 = 0;
        }

        else if (-2 - v63 == v10)
        {
          v34 = 2;
        }

        else if (v57 <= v62 << 6 && llvm::APInt::tcExtractBit(v59, (-2 - v10)))
        {
          v34 = 3;
        }

        else
        {
          v34 = 1;
        }

        llvm::APInt::tcShiftRight(v59, v62, ~v10);
        v82 = *(v105 + 8);
        v83 = (v82 + 64) >> 6;
        if (v83 <= 1)
        {
          v84 = 1;
        }

        else
        {
          v84 = v83;
        }

        if ((v82 - 64) >= 0xFFFFFF80)
        {
          v85 = &v106;
        }

        else
        {
          v85 = v106;
        }

        llvm::APInt::tcShiftLeft(v85, v84, 1u);
      }

      else
      {
        v107 += v43;
        v44 = *(v105 + 8);
        if ((v44 - 64) >= 0xFFFFFF80)
        {
          v45 = &v106;
        }

        else
        {
          v45 = v106;
        }

        v46 = (v44 + 64) >> 6;
        if (v46 <= 1)
        {
          v47 = 1;
        }

        else
        {
          v47 = v46;
        }

        v48 = llvm::APInt::tcLSB(v45, v47);
        if (v48 >= v43)
        {
          v34 = 0;
        }

        else
        {
          v49 = (v10 - 2);
          if (v48 == v49)
          {
            v34 = 2;
          }

          else if (v43 <= v47 << 6 && llvm::APInt::tcExtractBit(v45, v49))
          {
            v34 = 3;
          }

          else
          {
            v34 = 1;
          }
        }

        llvm::APInt::tcShiftRight(v45, v47, v10 - 1);
        v78 = (v4 + 8);
        v79 = *(*v4 + 8);
        v80 = (v79 + 64) >> 6;
        if (v80 <= 1)
        {
          v81 = 1;
        }

        else
        {
          v81 = v80;
        }

        if ((v79 - 64) <= 0xFFFFFF7F)
        {
          v78 = *v78;
        }

        llvm::APInt::tcShiftLeft(v78, v81, 1u);
        v60 = v6;
      }

      --*v60;
      v35 = *v6 - v107;
      if (*v6 != v107)
      {
LABEL_54:
        v36 = v34 != 0;
        if ((v35 & 0x80000000) == 0)
        {
LABEL_55:
          v38 = *v4;
          v37 = (v4 + 8);
          v39 = *(v38 + 8);
          if ((v39 - 64) <= 0xFFFFFF7F)
          {
            v37 = *v37;
          }

          if ((*(v105 + 8) - 64) >= 0xFFFFFF80)
          {
            v40 = &v106;
          }

          else
          {
            v40 = v106;
          }

          v41 = (v39 + 64) >> 6;
          if (v41 <= 1)
          {
            v42 = 1;
          }

          else
          {
            v42 = v41;
          }

          llvm::APInt::tcSubtract(v37, v40, v36, v42);
          goto LABEL_170;
        }

LABEL_152:
        v92 = *(v105 + 8);
        if ((v92 - 64) >= 0xFFFFFF80)
        {
          v93 = &v106;
        }

        else
        {
          v93 = v106;
        }

        v94 = (v4 + 8);
        if ((*(*v4 + 8) - 64) >= 0xFFFFFF80)
        {
          v95 = (v4 + 8);
        }

        else
        {
          v95 = *(v4 + 1);
        }

        v96 = (v92 + 64) >> 6;
        if (v96 <= 1)
        {
          v97 = 1;
        }

        else
        {
          v97 = v96;
        }

        llvm::APInt::tcSubtract(v93, v95, v36, v97);
        v98 = *(*v4 + 8);
        if ((v98 - 64) <= 0xFFFFFF7F)
        {
          v94 = *v94;
        }

        if ((*(v105 + 8) - 64) >= 0xFFFFFF80)
        {
          v99 = &v106;
        }

        else
        {
          v99 = v106;
        }

        v100 = (v98 + 64) >> 6;
        if (v100 <= 1)
        {
          v101 = 1;
        }

        else
        {
          v101 = v100;
        }

        llvm::APInt::tcAssign(v94, v99, v101);
        *(v4 + 20) ^= 8u;
LABEL_170:
        if (v34 == 3)
        {
          v102 = 1;
        }

        else
        {
          v102 = v34;
        }

        if (v34 == 1)
        {
          v24 = 3;
        }

        else
        {
          v24 = v102;
        }

        if ((*(v105 + 8) - 64) > 0xFFFFFF7F)
        {
          return v24;
        }

        goto LABEL_177;
      }
    }

    v86 = (v4 + 8);
    v87 = *(*v4 + 8);
    if ((v87 - 64) <= 0xFFFFFF7F)
    {
      v86 = *v86;
    }

    if ((*(v105 + 8) - 64) >= 0xFFFFFF80)
    {
      v88 = &v106;
    }

    else
    {
      v88 = v106;
    }

    v89 = (v87 + 64) >> 6;
    if (v89 <= 1)
    {
      v90 = 1;
    }

    else
    {
      v90 = v89;
    }

    v91 = llvm::APInt::tcCompare(v86, v88, v90);
    v36 = v34 != 0;
    if ((v91 & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_152;
  }

  if (v10 >= 1)
  {
    v11 = *a2;
    v104 = *a2;
    if ((*(*a2 + 8) + 64) >= 0x80)
    {
      operator new[]();
    }

    v12 = v7 & 7;
    v108 = v7 & 0xF;
    v107 = v9;
    v14 = (v7 & 6) != 0 && v12 != 3;
    if (v12 == 1 || v14)
    {
      v15 = *(v11 + 8);
      if ((v15 - 64) >= 0xFFFFFF80)
      {
        this = &v106;
      }

      if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
      {
        v16 = (a2 + 8);
      }

      else
      {
        v16 = *(a2 + 1);
      }

      v17 = (v15 + 64) >> 6;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      llvm::APInt::tcAssign(this, v16, v18);
      v9 = v107;
      v11 = v104;
      this = v106;
    }

    v107 = v9 + v10;
    v19 = *(v11 + 8);
    if ((v19 - 64) >= 0xFFFFFF80)
    {
      v20 = &v106;
    }

    else
    {
      v20 = this;
    }

    v21 = (v19 + 64) >> 6;
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = llvm::APInt::tcLSB(v20, v22);
    if (v23 >= v10)
    {
      v24 = 0;
    }

    else if (v23 + 1 == v10)
    {
      v24 = 2;
    }

    else if (v10 <= v22 << 6 && llvm::APInt::tcExtractBit(v20, (v10 - 1)))
    {
      v24 = 3;
    }

    else
    {
      v24 = 1;
    }

    llvm::APInt::tcShiftRight(v20, v22, v10);
    v65 = *v4;
    v64 = (v4 + 8);
    v66 = *(v65 + 8);
    if ((v66 - 64) <= 0xFFFFFF7F)
    {
      v64 = *v64;
    }

    if ((*(v104 + 8) - 64) >= 0xFFFFFF80)
    {
      v67 = &v106;
    }

    else
    {
      v67 = v106;
    }

    v68 = (v66 + 64) >> 6;
    if (v68 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = v68;
    }

    llvm::APInt::tcAdd(v64, v67, 0, v69);
    if ((*(v104 + 8) - 64) > 0xFFFFFF7F)
    {
      return v24;
    }

LABEL_177:
    if (v106)
    {
      operator delete[]();
    }

    return v24;
  }

  v50 = v8 - v5;
  *(this + 4) = v8;
  v51 = *(*this + 2);
  v52 = (this + 1);
  v53 = (this + 1);
  if ((v51 - 64) <= 0xFFFFFF7F)
  {
    v53 = *v52;
  }

  v54 = (v51 + 64) >> 6;
  if (v54 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v54;
  }

  v56 = llvm::APInt::tcLSB(v53, v55);
  if (v56 >= v50)
  {
    v24 = 0;
  }

  else if (v56 + 1 == v50)
  {
    v24 = 2;
  }

  else if (v50 <= v55 << 6 && llvm::APInt::tcExtractBit(v53, ~v10))
  {
    v24 = 3;
  }

  else
  {
    v24 = 1;
  }

  llvm::APInt::tcShiftRight(v53, v55, -v10);
  v70 = *(*v4 + 8);
  if ((v70 - 64) <= 0xFFFFFF7F)
  {
    v52 = *v52;
  }

  v71 = *(*a2 + 8) - 64;
  v74 = *(a2 + 1);
  v73 = (a2 + 8);
  v72 = v74;
  if (v71 >= 0xFFFFFF80)
  {
    v75 = v73;
  }

  else
  {
    v75 = v72;
  }

  v76 = (v70 + 64) >> 6;
  if (v76 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = v76;
  }

  llvm::APInt::tcAdd(v52, v75, 0, v77);
  return v24;
}

uint64_t llvm::detail::IEEEFloat::divideSignificand(llvm::detail::IEEEFloat *this, const llvm::detail::IEEEFloat *a2)
{
  v3 = (this + 8);
  v4 = *(*this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
  }

  if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
  {
    v5 = a2 + 8;
  }

  else
  {
    v5 = *(a2 + 1);
  }

  v6 = v4 + 64;
  v7 = (v4 + 64) >> 6;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 >= 0xC0)
  {
    operator new[]();
  }

  v9 = &v21[v8];
  v10 = v3;
  v11 = v21;
  v12 = v5;
  v13 = v8;
  do
  {
    *v11 = *v10;
    v14 = *v12++;
    v11[v8] = v14;
    *v10++ = 0;
    ++v11;
    --v13;
  }

  while (v13);
  *(this + 4) -= *(a2 + 4);
  LODWORD(v15) = *(*this + 8);
  v16 = v15 + ~llvm::APInt::tcMSB(v9, v8);
  if (v16)
  {
    *(this + 4) += v16;
    llvm::APInt::tcShiftLeft(v9, v8, v16);
  }

  v17 = v15 + ~llvm::APInt::tcMSB(v21, v8);
  if (v17)
  {
    *(this + 4) -= v17;
    llvm::APInt::tcShiftLeft(v21, v8, v17);
  }

  if ((llvm::APInt::tcCompare(v21, v9, v8) & 0x80000000) != 0)
  {
    --*(this + 4);
    llvm::APInt::tcShiftLeft(v21, v8, 1u);
  }

  while (v15)
  {
    while ((llvm::APInt::tcCompare(v21, v9, v8) & 0x80000000) == 0)
    {
      llvm::APInt::tcSubtract(v21, v9, 0, v8);
      v15 = (v15 - 1);
      llvm::APInt::tcSetBit(v3, v15);
      llvm::APInt::tcShiftLeft(v21, v8, 1u);
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v15) = v15 - 1;
    llvm::APInt::tcShiftLeft(v21, v8, 1u);
  }

LABEL_24:
  v18 = llvm::APInt::tcCompare(v21, v9, v8);
  if (v18 > 0)
  {
    return 3;
  }

  if (v18)
  {
    return !llvm::APInt::tcIsZero(v21, v8);
  }

  return 2;
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

    v12 = a1[20];
    if (v3 == 1)
    {
      llvm::detail::IEEEFloat::makeNaN(a1, 0, (v12 >> 3) & 1, 0);
    }

    else
    {
      a1[20] = v12 & 0xF8;
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

  if ((v4 + 64) >> 6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (v4 + 64) >> 6;
  }

  v9 = v4 - 65;
  if (v4 >= 0x41)
  {
    memset(v7, 255, 8 * (v9 >> 6) + 8);
    v10 = (v9 >> 6) + 1;
    v4 = v5 - (v9 & 0xFFFFFFC0);
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = 0;
  if (v4)
  {
LABEL_16:
    v7[v10++] = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  }

LABEL_17:
  if (v10 < v8)
  {
    bzero(&v7[v10], 8 * (v8 + ~v10) + 8);
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

          v33 = (v29 + 64) >> 6;
          if (v33 <= 1)
          {
            v34 = 1;
          }

          else
          {
            v34 = v33;
          }

          v35 = a2;
          llvm::APInt::tcAssign(v28, v32, v34);
          a2 = v35;
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
LABEL_60:
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
          v36 = (this + 8);
          v37 = *(*this + 8);
          v38 = this;
          if ((v37 - 64) <= 0xFFFFFF7F)
          {
            v36 = *v36;
          }

          if ((*(*a2 + 8) - 64) >= 0xFFFFFF80)
          {
            v39 = (a2 + 8);
          }

          else
          {
            v39 = *(a2 + 1);
          }

          v40 = (v37 + 64) >> 6;
          if (v40 <= 1)
          {
            v41 = 1;
          }

          else
          {
            v41 = v40;
          }

          v42 = a2;
          llvm::APInt::tcAssign(v36, v39, v41);
          a2 = v42;
          this = v38;
          if ((*(v38 + 20) & 7) != 1)
          {
            goto LABEL_71;
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

LABEL_71:
          if ((*(a2 + 20) & 7) != 1 || (*(*a2 + 16) - 1) < 2)
          {
            return 0;
          }

          v43 = *(*a2 + 8);
          v46 = *(a2 + 1);
          v44 = (a2 + 8);
          v45 = v46;
          if ((v43 - 64) >= 0xFFFFFF80)
          {
            v47 = v44;
          }

          else
          {
            v47 = v45;
          }

          return llvm::APInt::tcExtractBit(v47, (v43 - 2)) == 0;
        }

LABEL_18:
        if ((v3 & 7) != 1)
        {
          goto LABEL_71;
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
    goto LABEL_60;
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

uint64_t llvm::detail::IEEEFloat::convertFromUnsignedParts(uint64_t *a1, llvm::APInt *this, unint64_t *a3, int a4)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v8 = llvm::APInt::tcMSB(this, a3);
  v9 = (v8 + 1);
  v10 = *(*a1 + 8);
  v11 = (a1 + 1);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v12 = (v10 + 64) >> 6;
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 - v10;
  if (v9 >= v10)
  {
    *(a1 + 4) = v8;
    v16 = llvm::APInt::tcLSB(this, a3);
    if (v16 >= v14)
    {
      v15 = 0;
    }

    else if (v16 + 1 == v14)
    {
      v15 = 2;
    }

    else if (v14 <= a3 << 6 && llvm::APInt::tcExtractBit(this, (v14 - 1)))
    {
      v15 = 3;
    }

    else
    {
      v15 = 1;
    }

    llvm::APInt::tcExtract(v11, v13, this, v10, v14);
  }

  else
  {
    *(a1 + 4) = v10 - 1;
    llvm::APInt::tcExtract(v11, v13, this, v9, 0);
    v15 = 0;
  }

  return llvm::detail::IEEEFloat::normalize(a1, a4, v15);
}

uint64_t llvm::detail::IEEEFloat::convertFromHexadecimalString@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
  v10 = *(*a1 + 8);
  v11 = (a1 + 1);
  v12 = (a1 + 1);
  if ((v10 - 64) <= 0xFFFFFF7F)
  {
    v12 = *v11;
  }

  v13 = (v10 + 64) >> 6;
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  llvm::APInt::tcSet(v12, 0, v14);
  *(a1 + 4) = 0;
  v16 = *(*a1 + 8);
  if ((v16 - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v17 = (v16 + 64) >> 6;
  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v19 = &a2[a3];
  if (a3)
  {
    v20 = a3 - 1;
    v21 = a2;
    while (1)
    {
      v22 = *v21;
      if (v22 != 48)
      {
        break;
      }

      ++v21;
      if (--v20 == -1)
      {
        v23 = &a2[a3];
        goto LABEL_24;
      }
    }

    if (v22 == 46)
    {
      if (a3 == 1)
      {
        goto LABEL_58;
      }

      v23 = v21;
      do
      {
        if (!v20)
        {
          goto LABEL_58;
        }

        v24 = *++v23;
        --v20;
      }

      while (v24 == 48);
      goto LABEL_25;
    }

    v23 = v21;
  }

  else
  {
    v23 = a2;
  }

LABEL_24:
  v21 = &a2[a3];
LABEL_25:
  if (v23 == v19)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v26 = 0;
  v27 = v18 << 6;
  v28 = *(a5 + 8);
  v29 = v23;
  v30 = v27;
  do
  {
    v32 = *v29;
    if (v32 == 46)
    {
      if (v21 != v19)
      {
        goto LABEL_57;
      }

      v21 = v29++;
      continue;
    }

    v15 = word_10028F7D8[v32];
    if (v15 == -1)
    {
      break;
    }

    ++v29;
    if (v30)
    {
      v30 -= 4;
      v31 = v15 << v30;
      v15 = v30 >> 6;
      v11[v15] = (v11[v15] | v31);
    }

    else
    {
      if ((v26 & 1) == 0)
      {
        if ((v32 - 57) > 0xFFFFFFFFFFFFFFF6)
        {
          if ((word_10028F7D8[v32] & 7) != 0)
          {
            v25 = v25 & 0xFFFFFFFF00000000 | 1;
          }

          else
          {
            v33 = v29;
            if (v29 == v19)
            {
LABEL_57:
              llvm::inconvertibleErrorCode(v15);
              operator new();
            }

            while (1)
            {
              v34 = *v33;
              if (v34 != 48 && v34 != 46)
              {
                break;
              }

              if (++v33 == v19)
              {
                goto LABEL_57;
              }
            }

            v35 = v25 & 0xFFFFFFFF00000000;
            if (word_10028F7D8[v34] == -1)
            {
              v25 = v35 | (2 * (v32 != 48));
            }

            else
            {
              if (v32 == 48)
              {
                v36 = 1;
              }

              else
              {
                v36 = 3;
              }

              v25 = v36 | v35;
            }
          }
        }

        else
        {
          v25 = v25 & 0xFFFFFFFF00000000 | 3;
        }
      }

      v30 = 0;
      v26 = 1;
    }
  }

  while (v29 != v19);
  if (v29 == v19 || (*v29 | 0x20) != 0x70 || v29 == a2 || v21 != v19 && v29 - a2 == 1)
  {
    goto LABEL_58;
  }

  if (v29 != v23)
  {
    if (v21 == v19)
    {
      v37 = v29;
    }

    else
    {
      v37 = v21;
    }

    v38 = (v29 + 1);
    if (v29 + 1 == v19)
    {
      goto LABEL_58;
    }

    v39 = *v38;
    if (v39 == 45 || v39 == 43)
    {
      v38 = (v29 + 2);
      if (v29 + 2 == v19)
      {
        goto LABEL_58;
      }
    }

    if (v38 != v19)
    {
      v40 = 0;
      while (1)
      {
        v41 = *v38 - 48;
        if (v41 >= 0xA)
        {
          break;
        }

        v40 = v41 + 10 * v40;
        if (v40 >= 0x8000)
        {
          goto LABEL_80;
        }

        if (++v38 == v19)
        {
          goto LABEL_75;
        }
      }

LABEL_58:
      llvm::inconvertibleErrorCode(v15);
      operator new();
    }

    v40 = 0;
LABEL_75:
    v42 = ~v27 + 4 * (v37 - v23 + ((v37 - v23) >> 31)) + *(*a1 + 8);
    if (v42 != v42 || (v39 != 45 ? (v43 = v40) : (v43 = -v40), v44 = v43 + v42, v44 != v44))
    {
LABEL_80:
      if (v39 == 45)
      {
        v44 = -32768;
      }

      else
      {
        v44 = 0x7FFF;
      }
    }

    *(a1 + 4) = v44;
  }

  result = llvm::detail::IEEEFloat::normalize(a1, a4, v25);
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v4 = v2;
  v67 = v5;
  v66 = v6;
  v7 = v1;
  v69 = 0xFFFF800100007FFFLL;
  v70 = 0;
  v71 = 0;
  v72 = 257;
  v63 = v3;
  v9 = v3 == 1 || v3 == 4;
  v65 = v9;
  if ((*(*v1 + 8) + 74) >> 6 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = (*(*v1 + 8) + 74) >> 6;
  }

  if (v2 >= 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = -v2;
  }

  v78 = 390625;
  v73[0] = qword_10028F020[v11 & 7];
  v12 = 1;
  if (v11 >= 8)
  {
    if ((v11 & 8) != 0)
    {
      v14 = &v74;
      v13 = v73;
      llvm::APInt::tcFullMultiply(&v74, v73, &v78, 1, 1);
      if (v75)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      if (v11 >= 0x10)
      {
LABEL_16:
        v15 = v11 >> 4;
        v16 = &v79;
        v17 = 1;
        do
        {
          while (1)
          {
            llvm::APInt::tcFullMultiply(v16, v16 - v17, v16 - v17, v17, v17);
            v21 = 2 * v17 - 1;
            v17 = *(v16 + v21) ? (2 * v17) : v21;
            if (v15)
            {
              break;
            }

            v19 = v14;
            v16 = (v16 + 8 * v17);
            v20 = v15 >= 2;
            v15 >>= 1;
            if (!v20)
            {
              goto LABEL_33;
            }
          }

          llvm::APInt::tcFullMultiply(v13, v14, v16, v12, v17);
          v18 = v17 + v12 - 1;
          if (v13[v18])
          {
            v12 = (v17 + v12);
          }

          else
          {
            v12 = v18;
          }

          v19 = v13;
          v13 = v14;
          v14 = v19;
          v16 = (v16 + 8 * v17);
          v20 = v15 >= 2;
          v15 >>= 1;
        }

        while (v20);
        goto LABEL_33;
      }
    }

    else
    {
      v13 = &v74;
      v14 = v73;
      if (v11 >= 0x10)
      {
        goto LABEL_16;
      }
    }

    v19 = v14;
LABEL_33:
    if (v19 != v73)
    {
      llvm::APInt::tcAssign(v73, v19, v12);
    }
  }

  v64 = v12;
  do
  {
    LODWORD(v70) = (v10 << 6) - 1;
    v22 = *(*v7 + 8);
    llvm::detail::IEEEFloat::IEEEFloat(&v74, &v69);
    v23 = v77 & 0xF0;
    v77 = v77 & 0xF0 | *(v7 + 20) & 8 | 3;
    if (*(v74 + 20) == 2)
    {
      v77 = v23 | 3;
    }

    v24 = (v10 << 6) - 1 - v22;
    v76 = *(v74 + 4) - 1;
    v25 = *(v74 + 8);
    if ((v25 - 64) >= 0xFFFFFF80)
    {
      v26 = &v75;
    }

    else
    {
      v26 = v75;
    }

    v27 = (v25 + 64) >> 6;
    if (v27 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    llvm::APInt::tcSet(v26, 0, v28);
    llvm::detail::IEEEFloat::IEEEFloat(v68, &v69);
    v29 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v74, v66, v67, 1);
    v30 = llvm::detail::IEEEFloat::convertFromUnsignedParts(v68, v73, v12, 1);
    v76 += v4;
    if (v4 < 0)
    {
      v34 = llvm::detail::IEEEFloat::divideSignificand(&v74, v68);
      v31 = v34;
      v35 = *(*v7 + 4);
      v33 = (v10 << 6) - 1 - v22;
      v36 = v35 - v76;
      if (v35 > v76)
      {
        v33 = v36 + v24;
        if (v36 + v24 >= v70)
        {
          v24 = v70;
        }

        else
        {
          v24 += v36;
        }
      }

      v32 = 2 * ((v30 | v34) != 0);
    }

    else
    {
      llvm::detail::IEEEFloat::IEEEFloat(&v78, v74);
      v31 = llvm::detail::IEEEFloat::multiplySignificand(&v74, v68, &v78, (*(v74 + 24) & 1) == 0);
      if ((*(v78 + 8) - 64) <= 0xFFFFFF7F && v79)
      {
        operator delete[]();
      }

      v32 = v30 != 0;
      v33 = (v10 << 6) - 1 - v22;
    }

    v37 = v31 != 0;
    if (v29)
    {
      ++v32;
    }

    v38 = 2 * v37;
    v39 = v37 | (2 * v32);
    if (v32)
    {
      v40 = v39;
    }

    else
    {
      v40 = v38;
    }

    if ((*(v74 + 8) - 64) >= 0xFFFFFF80)
    {
      v41 = &v75;
    }

    else
    {
      v41 = v75;
    }

    v42 = (v24 - 1) >> 6;
    v43 = v41[v42] & (0xFFFFFFFFFFFFFFFFLL >> ((v24 - 1) & 0x3F ^ 0x3F));
    v44 = 1 << (v24 - 1);
    if (!v65)
    {
      v44 = 0;
    }

    if (v24 - 1 > 0x3F)
    {
      if (v43 == v44)
      {
        v47 = v42 - 1;
        while (v47)
        {
          if (v41[v47--])
          {
            goto LABEL_79;
          }
        }

        v46 = 2 * *v41;
        if (v46 >= v40)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v43 != v44 - 1)
        {
LABEL_79:
          v46 = -2;
LABEL_83:
          v51 = *(*v7 + 8);
          v52 = (v7 + 1);
          if ((v51 - 64) <= 0xFFFFFF7F)
          {
            v52 = v7[1];
          }

          v53 = (v51 + 64) >> 6;
          if (v53 <= 1)
          {
            v54 = 1;
          }

          else
          {
            v54 = v53;
          }

          llvm::APInt::tcExtract(v52, v54, v41, (v70 - v24), v24);
          *(v7 + 4) = v76 + v24 + *(*v7 + 8) - v70;
          v55 = *(v74 + 8);
          if ((v55 - 64) >= 0xFFFFFF80)
          {
            v56 = &v75;
          }

          else
          {
            v56 = v75;
          }

          v57 = (v55 + 64) >> 6;
          if (v57 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v57;
          }

          v59 = llvm::APInt::tcLSB(v56, v58);
          if (v59 >= v33)
          {
            v60 = 0;
          }

          else if (v59 + 1 == v33)
          {
            v60 = 2;
          }

          else if (v33 <= v58 << 6 && llvm::APInt::tcExtractBit(v56, (v33 - 1)))
          {
            v60 = 3;
          }

          else
          {
            v60 = 1;
          }

          v62 = llvm::detail::IEEEFloat::normalize(v7, v63, v60);
          goto LABEL_103;
        }

        v49 = v42 - 1;
        while (v49)
        {
          v50 = v41[v49--];
          if (v50 != -1)
          {
            goto LABEL_79;
          }
        }

        v46 = -2 * *v41;
        if (v46 >= v40)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      v45 = v43 - v44;
      if ((v43 - v44) < 0)
      {
        v45 = v44 - v43;
      }

      v46 = 2 * v45;
      if (2 * v45 >= v40)
      {
        goto LABEL_83;
      }
    }

LABEL_103:
    if ((*(v68[0] + 8) - 64) <= 0xFFFFFF7F && v68[1])
    {
      operator delete[]();
    }

    if ((*(v74 + 8) - 64) <= 0xFFFFFF7F && v75)
    {
      operator delete[]();
    }

    v10 *= 2;
    v20 = v46 >= v40;
    v12 = v64;
  }

  while (!v20);
  return v62;
}

uint64_t llvm::detail::IEEEFloat::convertFromDecimalString@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = &a2[a3];
  if (!a3)
  {
    v10 = a2;
    v8 = a2;
    if (a2 != v6)
    {
      goto LABEL_24;
    }

    goto LABEL_13;
  }

  v7 = a3 - 1;
  v8 = a2;
  do
  {
    v9 = *v8;
    if (v9 != 48)
    {
      if (v9 != 46)
      {
        v10 = v8;
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        goto LABEL_100;
      }

      v10 = v8;
      while (v7)
      {
        v11 = *++v10;
        --v7;
        if (v11 != 48)
        {
          goto LABEL_23;
        }
      }

      v10 = &a2[a3];
      goto LABEL_13;
    }

    ++v8;
    --v7;
  }

  while (v7 != -1);
  v10 = &a2[a3];
LABEL_22:
  v8 = &a2[a3];
LABEL_23:
  if (v10 == v6)
  {
LABEL_13:
    v12 = 0;
    v13 = &a2[a3];
    if (v6 == v10)
    {
      goto LABEL_46;
    }

    goto LABEL_14;
  }

LABEL_24:
  v13 = v10;
  while (1)
  {
    v19 = *v13;
    if (v19 != 46)
    {
      v18 = v13;
      if ((v19 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      goto LABEL_26;
    }

    if (v8 != v6)
    {
      goto LABEL_100;
    }

    v18 = v13 + 1;
    if (v13 + 1 == v6)
    {
      v8 = v13++;
      goto LABEL_45;
    }

    v8 = v13;
    if ((*v18 - 58) < 0xFFFFFFF6)
    {
      break;
    }

LABEL_26:
    v13 = v18 + 1;
    if (v18 + 1 == v6)
    {
      goto LABEL_32;
    }
  }

  v13 = v18;
LABEL_32:
  if (v13 == v6)
  {
LABEL_45:
    v12 = 0;
    if (v13 == v10)
    {
      goto LABEL_46;
    }

    goto LABEL_14;
  }

  if ((*v13 | 0x20) != 0x65 || v13 == a2 || v8 != v6 && v13 - a2 == 1)
  {
LABEL_100:
    llvm::inconvertibleErrorCode(a1);
    operator new();
  }

  v44 = (v13 + 1);
  if (v13 + 1 == v6 || ((v45 = *v44, v45 == 45) || v45 == 43) && v13 + 2 == v6)
  {
    v12 = 0;
    if (v8 == v6)
    {
      v8 = v13;
    }

    if (v13 == v10)
    {
      goto LABEL_46;
    }

LABEL_14:
    if (v13 != a2)
    {
LABEL_15:
      v14 = v13 - 1;
      while (v14 != a2)
      {
        v16 = *v14--;
        v15 = v16;
        if (v16 != 48)
        {
          if (v15 == 46)
          {
            v13 = v14 + 1;
            goto LABEL_15;
          }

          v17 = v14 + 1;
          goto LABEL_39;
        }
      }
    }

    v17 = a2;
LABEL_39:
    v20 = v8 - v17;
    v21 = v8 > v10;
    v22 = v8 >= v17;
    v23 = v8 > v17;
    if (v22)
    {
      v21 = 0;
    }

    v24 = v12 + v20 - v23 + v17 - v10 - v21;
    if (v10 == v6)
    {
      goto LABEL_48;
    }

LABEL_47:
    if ((*v10 - 58) <= 0xFFFFFFF5)
    {
      goto LABEL_48;
    }

    if (v24 < 51085)
    {
      v37 = *a1;
      if (v24 < -51082 || 28738 * v24 + 28738 <= 8651 * (v37[1] - v37[2]))
      {
        *(a1 + 20) = *(a1 + 20) & 0xF8 | 2;
        v38 = v37[2];
        v39 = (a1 + 1);
        if ((v38 - 64) <= 0xFFFFFF7F)
        {
          v39 = *v39;
        }

        v42 = (v38 + 64) >> 6;
        if (v42 <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = v42;
        }

        llvm::APInt::tcSet(v39, 0, v43);
        result = llvm::detail::IEEEFloat::normalize(a1, a4, 1);
        goto LABEL_72;
      }

      if (42039 * v24 - 42039 < 12655 * *v37)
      {
        operator new[]();
      }
    }

    result = llvm::detail::IEEEFloat::handleOverflow(a1, a4);
    goto LABEL_72;
  }

  if (v45 == 45 || (v46 = *v44, v45 == 43))
  {
    v44 = (v13 + 2);
    if (v13 + 2 == v6)
    {
      goto LABEL_100;
    }

    v46 = *v44;
  }

  v47 = v46 - 48;
  if (v47 > 9)
  {
    goto LABEL_100;
  }

  v48 = v44 + 1;
  while (v48 != v6)
  {
    v49 = *v48 - 48;
    if (v49 >= 0xA)
    {
      goto LABEL_100;
    }

    v47 = v49 + 10 * v47;
    ++v48;
    if (v47 >> 6 >= 0x177)
    {
      v47 = 24000;
      break;
    }
  }

  if (v45 == 45)
  {
    v12 = -v47;
  }

  else
  {
    v12 = v47;
  }

  if (v8 == v6)
  {
    v8 = v13;
  }

  if (v13 != v10)
  {
    goto LABEL_14;
  }

LABEL_46:
  v24 = 0;
  if (v10 != v6)
  {
    goto LABEL_47;
  }

LABEL_48:
  v25 = *(a1 + 20);
  v26 = v25 & 0xF8;
  *(a1 + 20) = v25 & 0xF8 | 3;
  v27 = *a1;
  if (*(*a1 + 20) == 2)
  {
    *(a1 + 20) = v25 & 0xF0 | 3;
    v26 = v25 & 0xF0;
  }

  if (*(v27 + 24))
  {
    result = 0;
  }

  else
  {
    *(a1 + 20) = v26 | 2;
    v29 = *(v27 + 8);
    v31 = (a1 + 1);
    v32 = (a1 + 1);
    if ((v29 - 64) <= 0xFFFFFF7F)
    {
      v32 = *v31;
    }

    v33 = (v29 + 64) >> 6;
    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    llvm::APInt::tcSet(v32, 0, v34);
    *(a1 + 20) &= ~8u;
    v35 = *a1;
    *(a1 + 4) = *(*a1 + 4);
    v36 = *(v35 + 8);
    if ((v36 - 64) <= 0xFFFFFF7F)
    {
      v31 = *v31;
    }

    llvm::APInt::tcSetBit(v31, (v36 - 1));
    result = 0;
  }

LABEL_72:
  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromStringSpecials(llvm::detail::IEEEFloat *a1, unsigned __int8 *a2, size_t a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v44 = v3;
  v45 = v4;
  if (a3 == 8)
  {
    v9 = "INFINITY";
LABEL_14:
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = memcmp(a2, v9, a3);
    a3 = v12;
    a2 = v11;
    v14 = v13;
    a1 = v10;
    if (!v14)
    {
LABEL_20:
      v21 = *a1;
      if (*(*a1 + 16) != 1)
      {
        *(a1 + 20) &= 0xF0u;
        *(a1 + 4) = *v21 + 1;
        v24 = v21[2];
        v25 = (a1 + 8);
        if ((v24 - 64) <= 0xFFFFFF7F)
        {
          v25 = *v25;
        }

        v26 = (v24 + 64) >> 6;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        llvm::APInt::tcSet(v25, 0, v27);
        return 1;
      }

      v22 = 0;
      v23 = 0;
      goto LABEL_48;
    }

LABEL_15:
    v8 = *a2;
    if (v8 != 45)
    {
      v7 = 0;
      v15 = a3;
      goto LABEL_33;
    }

    ++a2;
    v15 = a3 - 1;
    if (a3 == 9)
    {
      v16 = a1;
      v20 = a2;
      v17 = a2;
      v19 = "INFINITY";
    }

    else
    {
      if (a3 != 4)
      {
LABEL_32:
        v8 = *a2;
        v7 = 1;
        goto LABEL_33;
      }

      v16 = a1;
      v17 = a2;
      v18 = memcmp(a2, "inf", 3uLL);
      a1 = v16;
      if (!v18)
      {
LABEL_57:
        llvm::detail::IEEEFloat::makeInf(a1, 1);
        return 1;
      }

      v19 = "Inf";
      v20 = v17;
    }

    v28 = memcmp(v20, v19, v15);
    a2 = v17;
    v29 = v28;
    a1 = v16;
    if (v29)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

  if (a3 == 4)
  {
    v9 = "+Inf";
    goto LABEL_14;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  if (*a2 == 28265 && a2[2] == 102)
  {
    goto LABEL_20;
  }

  v7 = 0;
  v8 = *a2;
  if (v8 == 45)
  {
    return 0;
  }

  v15 = 3;
LABEL_33:
  if ((v8 | 0x20) == 0x73)
  {
    if (--v15 < 3)
    {
      return 0;
    }

    ++a2;
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  if ((*a2 != 24942 || a2[2] != 110) && (*a2 != 24910 || a2[2] != 78))
  {
    return 0;
  }

  v33 = a2 + 3;
  v34 = v15 - 3;
  v42 = a2 + 3;
  v43 = v15 - 3;
  if (v15 > 3)
  {
    v35 = *v33;
    if (v35 == 40)
    {
      if (v34 < 3 || a2[v15 - 1] != 41)
      {
        return 0;
      }

      v33 = a2 + 4;
      v34 = v15 - 5;
      v42 = a2 + 4;
      v43 = v15 - 5;
      v35 = a2[4];
    }

    v36 = v7;
    v37 = a1;
    if (v35 == 48)
    {
      v38 = v34 - 2;
      if (v34 >= 2 && __tolower(v33[1]) == 120)
      {
        v42 = v33 + 2;
        v43 = v38;
        v39 = 16;
      }

      else
      {
        v39 = 8;
      }
    }

    else
    {
      v39 = 10;
    }

    v41 = 1;
    v40 = 0;
    if ((llvm::StringRef::getAsInteger(&v42, v39, &v40) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeNaN(v37, v30, v36, &v40);
      if (v41 >= 0x41 && v40)
      {
        operator delete[]();
      }

      return 1;
    }

    if (v41 >= 0x41)
    {
      if (v40)
      {
        operator delete[]();
      }
    }

    return 0;
  }

  v23 = v7;
  v22 = v30;
LABEL_48:
  llvm::detail::IEEEFloat::makeNaN(a1, v22, v23, 0);
  return 1;
}

void llvm::detail::IEEEFloat::makeInf(llvm::detail::IEEEFloat *this, int a2)
{
  v2 = *this;
  if (*(*this + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(this, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 0;
    }

    *(this + 20) = *(this + 20) & 0xF0 | v3;
    *(this + 4) = *v2 + 1;
    v4 = v2[2];
    v5 = (this + 8);
    if ((v4 - 64) <= 0xFFFFFF7F)
    {
      v5 = *v5;
    }

    v6 = (v4 + 64) >> 6;
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    llvm::APInt::tcSet(v5, 0, v7);
  }
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::convertFromString@<X0>(llvm::detail::IEEEFloat *result@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  if (!a3)
  {
    v10 = "Invalid string length";
    goto LABEL_5;
  }

  v7 = a3;
  v8 = a2;
  v9 = result;
  result = llvm::detail::IEEEFloat::convertFromStringSpecials(result, a2, a3);
  if (result)
  {
    *(a5 + 8) &= ~1u;
    *a5 = 0;
    return result;
  }

  *(v9 + 20) = *(v9 + 20) & 0xF7 | (8 * (*v8 == 45));
  v11 = *v8;
  if (v11 == 45 || v11 == 43)
  {
    if (--v7)
    {
      ++v8;
      goto LABEL_10;
    }

    v10 = "String has no digits";
LABEL_5:
    v13 = v10;
    v14 = 259;
    llvm::inconvertibleErrorCode(result);
    operator new();
  }

LABEL_10:
  if (v7 >= 2 && *v8 == 48 && (v8[1] | 0x20) == 0x78)
  {
    if (v7 == 2)
    {
      v13 = "Invalid string";
      v14 = 259;
      sub_100024874(&v12);
    }

    return llvm::detail::IEEEFloat::convertFromHexadecimalString(v9, v8 + 2, v7 - 2, a4, a5);
  }

  else
  {

    return llvm::detail::IEEEFloat::convertFromDecimalString(v9, v8, v7, a4, a5);
  }
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    v5 = (v2 >> 3) & 1;
    v6 = *this;
    v27 = 0u;
    v28 = 0u;
    if (v3 == 1)
    {
      LOBYTE(v5) = 0;
    }

    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    __src = 0uLL;
    v29 = 0;
    v30 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(__src) = v3;
    BYTE1(__src) = v5;
    v21 = 0;
    v7 = sub_10002BE4C(&__src, &v21, (&__src + 2), &v26, *(v6 + 8));
    v8 = v21;
  }

  else
  {
    v9 = (v2 >> 3) & 1;
    v10 = *this;
    v11 = *(*this + 8);
    if ((v11 - 64) >= 0xFFFFFF80)
    {
      v12 = (this + 8);
    }

    else
    {
      v12 = *(this + 1);
    }

    v13 = (v11 + 64) >> 6;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    v15 = sub_10002C76C(v12, &v12[v13]);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    __src = 0u;
    v29 = 0;
    v30 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(__src) = v3;
    BYTE1(__src) = v9;
    v19 = 0;
    v16 = sub_10002BE4C(&__src, &v19, (&__src + 2), &v26, *(v10 + 8));
    v20 = v19;
    v17 = sub_10002BE4C(&__src, &v20, v16, &v26, *(this + 4));
    v21 = v20;
    v7 = sub_10002CAB8(&__src, &v21, v17, &v26, v15);
    v8 = v21;
  }

  return sub_10002C12C(&__src, v8, v7, &v26);
}

uint64_t llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20) & 7;
  if ((*(this + 20) & 6) == 0 || v2 == 3)
  {
    if (v2 != 3 && (*(this + 20) & 7) != 0)
    {
      v6 = (this + 8);
      if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
      {
        v6 = *v6;
      }

      v7 = *v6;
    }
  }

  else
  {
    v4 = (this + 8);
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v4 = *v4;
    }

    v5 = *v4;
    *(this + 4);
  }

  return llvm::APInt::APInt(a2, 80);
}

void *llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v4 = *this;
  v5 = *(*this + 12);
  *v60 = **this;
  *&v60[12] = v5;
  *&v60[4] = -1022;
  v56 = v4;
  if ((*(v4 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v6 = *(this + 20);
  v7 = v6 & 7;
  v59 = v6 & 0xF;
  v58 = *(this + 4);
  v9 = (v6 & 6) != 0 && v7 != 3;
  if (v7 == 1 || v9)
  {
    v10 = *(v4 + 2);
    if ((v10 - 64) >= 0xFFFFFF80)
    {
      this = &v57;
    }

    v11 = *(*v2 + 8) - 64;
    v14 = *(v2 + 1);
    v13 = (v2 + 8);
    v12 = v14;
    if (v11 >= 0xFFFFFF80)
    {
      v15 = v13;
    }

    else
    {
      v15 = v12;
    }

    v16 = (v10 + 64) >> 6;
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    llvm::APInt::tcAssign(this, v15, v17);
  }

  v61 = 0;
  llvm::detail::IEEEFloat::convert(&v56, v60, 1, &v61);
  v52 = v56;
  if ((*(v56 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v18 = v59 & 7;
  v55 = v55 & 0xF0 | v59 & 0xF;
  v54 = v58;
  v20 = (v59 & 6) != 0 && v18 != 3;
  if (v18 == 1 || v20)
  {
    v21 = *(v52 + 2);
    if ((v21 - 64) >= 0xFFFFFF80)
    {
      v22 = &v53;
    }

    else
    {
      v22 = v53;
    }

    if ((*(v56 + 2) - 64) >= 0xFFFFFF80)
    {
      v23 = &v57;
    }

    else
    {
      v23 = v57;
    }

    v24 = (v21 + 64) >> 6;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    llvm::APInt::tcAssign(v22, v23, v25);
  }

  llvm::detail::IEEEFloat::convert(&v52, &unk_10028EE24, 1, &v61);
  if (v52 == &unk_10028EF74)
  {
    v26 = 1022;
  }

  else
  {
    v26 = 1023;
  }

  v27 = v55 & 7;
  v28 = (v55 & 6) == 0 || v27 == 3;
  v29 = !v28;
  if (!v28)
  {
    v26 += v54;
    if ((*(v52 + 2) - 64) > 0xFFFFFF7F)
    {
      v30 = v53;
      if (v26 != 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v30 = *v53;
      if (v26 != 1)
      {
        goto LABEL_61;
      }
    }

    v62 = (v55 << 60) & 0x8000000000000000 | v30 & 0xFFFFFFFFFFFFFLL | (((v30 >> 52) & 1) << 52);
    if (!v29)
    {
      goto LABEL_80;
    }

    goto LABEL_62;
  }

  if ((v55 & 7) != 0)
  {
    if (v27 == 3)
    {
      v62 = (v55 << 60) & 0x8000000000000000 | (((v26 - 1023) & 0x7FFLL) << 52);
      if (!v29)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v36 = v26 | 0x400;
      if ((*(v52 + 2) - 64) >= 0xFFFFFF80)
      {
        v37 = &v53;
      }

      else
      {
        v37 = v53;
      }

      v62 = (v55 << 60) & 0x8000000000000000 | *v37 & 0xFFFFFFFFFFFFFLL | ((v36 & 0x7FF) << 52);
      if (!v29)
      {
        goto LABEL_80;
      }
    }

    goto LABEL_62;
  }

  v30 = 0;
  LOWORD(v26) = v26 | 0x400;
LABEL_61:
  v62 = (v55 << 60) & 0x8000000000000000 | v30 & 0xFFFFFFFFFFFFFLL | ((v26 & 0x7FF) << 52);
  if (!v29)
  {
LABEL_80:
    v63 = 0;
    goto LABEL_81;
  }

LABEL_62:
  if (v61 != 1)
  {
    goto LABEL_80;
  }

  v31 = llvm::detail::IEEEFloat::convert(&v52, v60, 1, &v61);
  v48 = v56;
  if ((*(v56 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v32 = v59 & 7;
  v51 = v59 & 0xF;
  v50 = v58;
  v34 = (v59 & 6) != 0 && v32 != 3;
  if (v32 == 1 || v34)
  {
    v39 = *(v56 + 2);
    if ((v39 - 64) >= 0xFFFFFF80)
    {
      v31 = &v49;
    }

    if ((*(v56 + 2) - 64) >= 0xFFFFFF80)
    {
      v40 = &v57;
    }

    else
    {
      v40 = v57;
    }

    v41 = (v39 + 64) >> 6;
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v41;
    }

    llvm::APInt::tcAssign(v31, v40, v42);
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v48, &v52, 1) != 2)
    {
LABEL_74:
      v35 = v51;
      if ((v51 & 7) != 3)
      {
        goto LABEL_103;
      }

      goto LABEL_98;
    }
  }

  else if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v48, &v52, 1) != 2)
  {
    goto LABEL_74;
  }

  v43 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v48, &v52, 1u);
  llvm::detail::IEEEFloat::normalize(&v48, 1, v43);
  v35 = v51;
  if ((v51 & 7) != 3)
  {
    goto LABEL_103;
  }

LABEL_98:
  if ((v55 & 7) != 3 || ((v55 ^ v35) & 8) == 0)
  {
    LOBYTE(v35) = v35 & 0xF3;
    v51 = v35;
  }

  if (*(v48 + 5) == 2)
  {
    v51 = v35 & 0xF3;
  }

LABEL_103:
  llvm::detail::IEEEFloat::convert(&v48, &unk_10028EE24, 1, &v61);
  if (v48 == &unk_10028EF74)
  {
    LODWORD(v44) = 1022;
  }

  else
  {
    LODWORD(v44) = 1023;
  }

  v45 = v51 & 7;
  if ((v51 & 6) == 0 || v45 == 3)
  {
    if ((v51 & 7) != 0)
    {
      if (v45 == 3)
      {
        v46 = 0;
        LOWORD(v44) = v44 - 1023;
      }

      else
      {
        LOWORD(v44) = v44 | 0x400;
        if ((*(v48 + 2) - 64) >= 0xFFFFFF80)
        {
          v47 = &v49;
        }

        else
        {
          v47 = v49;
        }

        v46 = *v47;
      }
    }

    else
    {
      v46 = 0;
      LOWORD(v44) = v44 | 0x400;
    }
  }

  else
  {
    LODWORD(v44) = v50 + v44;
    if ((*(v48 + 2) - 64) <= 0xFFFFFF7F)
    {
      v46 = *v49;
      if (v44 != 1)
      {
        goto LABEL_121;
      }

      goto LABEL_115;
    }

    v46 = v49;
    if (v44 == 1)
    {
LABEL_115:
      v44 = (v46 >> 52) & 1;
    }
  }

LABEL_121:
  v63 = (v51 << 60) & 0x8000000000000000 | v46 & 0xFFFFFFFFFFFFFLL | ((v44 & 0x7FF) << 52);
  if ((*(v48 + 2) - 64) <= 0xFFFFFF7F && v49)
  {
    operator delete[]();
  }

LABEL_81:
  result = llvm::APInt::APInt(a2, 128);
  if ((*(v52 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v53;
    if (v53)
    {
      operator delete[]();
    }
  }

  if ((*(v56 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v57;
    if (v57)
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    v3 = 16382;
  }

  else
  {
    v3 = 0x3FFF;
  }

  v4 = *(this + 20) & 7;
  if ((*(this + 20) & 6) == 0 || v4 == 3)
  {
    if ((*(this + 20) & 7) != 0 && v4 != 3)
    {
      v12 = (this + 8);
      if ((v2[2] - 64) <= 0xFFFFFF7F)
      {
        v12 = *v12;
      }

      v14 = *v12;
      v13 = v12[1];
    }
  }

  else
  {
    v6 = *(this + 4) + v3;
    if ((v2[2] - 64) > 0xFFFFFF7F)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
    }

    else
    {
      v7 = *(this + 1);
      v9 = *v7;
      v8 = v7[1];
    }
  }

  return llvm::APInt::APInt(a2, 128);
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 15;
  }

  else
  {
    LODWORD(v3) = 16;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 16;
    }

    else
    {
      LOBYTE(v3) = v3 - 16;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 2) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 3 | (4 * (v3 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 7;
      }

      else
      {
        LOBYTE(v3) = v3 | 8;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 8;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 6;
  }

  else
  {
    LODWORD(v3) = 7;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 7;
    }

    else
    {
      LOBYTE(v3) = v3 | 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 7;
  }

  else
  {
    LODWORD(v3) = 8;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 8;
    }

    else
    {
      LOBYTE(v3) = v3 - 8;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 10;
  }

  else
  {
    LODWORD(v3) = 11;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if (v5 == 3)
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 - 11;
    }

    else
    {
      LOBYTE(v3) = v3 - 11;
      v8 = v2[2] - 64;
      v9 = (this + 8);
      if (v8 <= 0xFFFFFF7F)
      {
        v9 = *v9;
      }

      v7 = *v9;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_18:
      v3 = (v7 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 7 | (8 * (v3 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 2;
  }

  else
  {
    LODWORD(v3) = 3;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOBYTE(v7) = 0;
        LOBYTE(v3) = v3 - 3;
      }

      else
      {
        LOBYTE(v3) = v3 | 4;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
      LOBYTE(v3) = v3 | 4;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 4) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 8;
  *a2 = (16 * v4) & 0x80 | v7 & 0xF | (16 * (v3 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EF74)
  {
    LODWORD(v3) = 126;
  }

  else
  {
    LODWORD(v3) = 127;
  }

  v4 = *(this + 20);
  v5 = v4 & 7;
  if ((v4 & 6) == 0 || v5 == 3)
  {
    if ((v4 & 7) != 0)
    {
      if (v5 == 3)
      {
        LOWORD(v7) = 0;
        LOBYTE(v3) = v3 - 127;
      }

      else
      {
        LOBYTE(v3) = v3 | 0x80;
        v8 = v2[2] - 64;
        v9 = (this + 8);
        if (v8 <= 0xFFFFFF7F)
        {
          v9 = *v9;
        }

        v7 = *v9;
      }
    }

    else
    {
      LOWORD(v7) = 0;
      LOBYTE(v3) = v3 | 0x80;
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) + v3;
    if ((v2[2] - 64) <= 0xFFFFFF7F)
    {
      v7 = **(this + 8);
      if (v3 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    v7 = *(this + 8);
    if (v3 == 1)
    {
LABEL_16:
      v3 = (v7 >> 10) & 1;
    }
  }

LABEL_21:
  *(a2 + 8) = 19;
  *a2 = v7 & 0x3FF | (((v4 >> 3) & 1) << 18) | (v3 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = vdup_n_s32(v2);
  if (*this == &unk_10028EF74)
  {
    LODWORD(v4) = 127;
  }

  else
  {
    LODWORD(v4) = 128;
  }

  v5 = vmvn_s8(vceq_s32(vand_s8(v3, 0x700000006), 0x300000000));
  if (v5.i32[0] & v5.i32[1])
  {
    LODWORD(v4) = *(this + 16) + v4;
    v6 = (this + 8);
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      if (v4 == 1)
      {
        goto LABEL_10;
      }
    }

    else if (v4 == 1)
    {
      v6 = *v6;
LABEL_10:
      v4 = *v6 & 1;
    }
  }

  else
  {
    LOBYTE(v4) = v4 + 0x80;
  }

  *(a2 + 8) = 8;
  *a2 = v4 | (16 * v2) & 0x80;
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  if (*this == &unk_10028EF74)
  {
    LODWORD(v2) = 2;
  }

  else
  {
    LODWORD(v2) = 3;
  }

  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    LOBYTE(v2) = v2 - 3;
  }

  else
  {
    LODWORD(v2) = *(this + 16) + v2;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (v2 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v5 = *(this + 8);
    if (v2 == 1)
    {
LABEL_14:
      v2 = (v5 >> 2) & 1;
    }
  }

LABEL_15:
  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 3 | (4 * (v2 & 7));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &unk_10028EF74)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &unk_10028EF74)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = *this[1];
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = this[1];
    if (v6 == 1)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 6;
  *a2 = (4 * v3) & 0x20 | v5 & 7 | (8 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 20);
  if ((v3 & 6) == 0 || (v3 & 7) == 3)
  {
    LOBYTE(v5) = 0;
    if (v2 == &unk_10028EF74)
    {
      LOBYTE(v6) = -1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 4);
    if (v2 != &unk_10028EF74)
    {
      LODWORD(v6) = v6 + 1;
    }

    if ((*(v2 + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = *this[1];
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = this[1];
    if (v6 == 1)
    {
LABEL_15:
      v6 = (v5 >> 1) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 4;
  *a2 = v3 & 8 | v5 & 1 | (2 * (v6 & 3));
  return this;
}

uint64_t *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*this == &unk_10028EDD0)
  {
    v3 = *(this + 20);
    v4 = v3 & 7;
    if ((v3 & 6) == 0 || v4 == 3)
    {
      if (v4 == 3)
      {
        LOWORD(v6) = 0;
        LOBYTE(v11) = 0;
      }

      else
      {
        if ((v3 & 7) != 0)
        {
          v6 = this[1];
        }

        else
        {
          LOWORD(v6) = 0;
        }

        LOBYTE(v11) = 31;
      }
    }

    else
    {
      LODWORD(v11) = *(this + 4) + 15;
      v6 = this[1];
      if (*(this + 4) == -14)
      {
        v11 = (v6 >> 10) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = v6 & 0x3FF | (((v3 >> 3) & 1) << 15) | ((v11 & 0x1F) << 10);
  }

  else if (v2 == &unk_10028EDEC)
  {
    v7 = *(this + 20);
    v8 = v7 & 7;
    if ((v7 & 6) == 0 || v8 == 3)
    {
      if (v8 == 3)
      {
        LOBYTE(v10) = 0;
        LOBYTE(v16) = 0;
      }

      else
      {
        if ((v7 & 7) != 0)
        {
          v10 = this[1];
        }

        else
        {
          LOBYTE(v10) = 0;
        }

        LOBYTE(v16) = -1;
      }
    }

    else
    {
      LODWORD(v16) = *(this + 4) + 127;
      v10 = this[1];
      if (*(this + 4) == -126)
      {
        v16 = (v10 >> 7) & 1;
      }
    }

    *(a2 + 8) = 16;
    *a2 = v10 & 0x7F | (((v7 >> 3) & 1) << 15) | (v16 << 7);
  }

  else if (v2 == &unk_10028EE08)
  {
    v12 = *(this + 20);
    v13 = v12 & 7;
    if ((v12 & 6) == 0 || v13 == 3)
    {
      if (v13 == 3)
      {
        LODWORD(v15) = 0;
        LOBYTE(v14) = 0;
      }

      else
      {
        if ((v12 & 7) != 0)
        {
          v15 = this[1];
        }

        else
        {
          LODWORD(v15) = 0;
        }

        LOBYTE(v14) = -1;
      }
    }

    else
    {
      LODWORD(v14) = *(this + 4) + 127;
      v15 = this[1];
      if (*(this + 4) == -126)
      {
        v14 = (v15 >> 23) & 1;
      }
    }

    *(a2 + 8) = 32;
    *a2 = v15 & 0x7FFFFF | (((v12 >> 3) & 1) << 31) | (v14 << 23);
  }

  else if (v2 == &unk_10028EE24)
  {
    v17 = *(this + 20);
    v18 = v17 & 7;
    if ((v17 & 6) == 0 || v18 == 3)
    {
      if (v18 == 3)
      {
        v20 = 0;
        LOWORD(v19) = 0;
      }

      else
      {
        if ((v17 & 7) != 0)
        {
          v20 = this[1];
        }

        else
        {
          v20 = 0;
        }

        LOWORD(v19) = 2047;
      }
    }

    else
    {
      LODWORD(v19) = *(this + 4) + 1023;
      v20 = this[1];
      if (*(this + 4) == -1022)
      {
        v19 = (v20 >> 52) & 1;
      }
    }

    *(a2 + 8) = 64;
    *a2 = (v17 << 60) & 0x8000000000000000 | v20 & 0xFFFFFFFFFFFFFLL | ((v19 & 0x7FF) << 52);
  }

  else if (v2 == &unk_10028EE40)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EE78)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleLegacyAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EE94)
  {
    v21 = *(this + 20);
    v22 = v21 & 7;
    if ((v21 & 6) == 0 || v22 == 3)
    {
      if (v22 == 3)
      {
        LOBYTE(v24) = 0;
        LOBYTE(v23) = 0;
      }

      else
      {
        if ((v21 & 7) != 0)
        {
          v24 = this[1];
        }

        else
        {
          LOBYTE(v24) = 0;
        }

        LOBYTE(v23) = 31;
      }
    }

    else
    {
      LODWORD(v23) = *(this + 4) + 15;
      v24 = this[1];
      if (*(this + 4) == -14)
      {
        v23 = (v24 >> 2) & 1;
      }
    }

    *(a2 + 8) = 8;
    *a2 = (16 * v21) & 0x80 | v24 & 3 | (4 * (v23 & 0x1F));
  }

  else if (v2 == &unk_10028EEB0)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EECC)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EEE8)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF04)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF20)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF3C)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF58)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF74)
  {
    return llvm::detail::IEEEFloat::convertFloat8E8M0FNUAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EF90)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EFAC)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a2);
  }

  else if (v2 == &unk_10028EFC8)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a2);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(this, a2);
  }

  return this;
}

void llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v2 = *a2;
  }

  else
  {
    v2 = a2;
  }

  v3 = *v2;
  v4 = *(v2 + 1) & 0x7FFFLL;
  *this = &unk_10028EFE4;
  operator new[]();
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  if (*(a2 + 2) >= 0x41u)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = *(v3 + 1);
  LODWORD(v13) = 64;
  v12 = v4;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v12);
  result = llvm::detail::IEEEFloat::convert(this, &unk_10028EE78, 1, &v15);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v11 = 64;
    v10 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v12, &v10);
    llvm::detail::IEEEFloat::convert(&v12, &unk_10028EE78, 1, &v15);
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials(this, &v12, 0);
    if (result == 2)
    {
      v8 = llvm::detail::IEEEFloat::addOrSubtractSignificand(this, &v12, 0);
      result = llvm::detail::IEEEFloat::normalize(this, 1, v8);
    }

    v9 = *(this + 20);
    if ((v9 & 7) == 3)
    {
      if ((v14 & 7) != 3 || ((v14 ^ v9) & 8) != 0)
      {
        LOBYTE(v9) = v9 & 0xF3;
        *(this + 20) = v9;
      }

      if (*(*this + 20) == 2)
      {
        *(this + 20) = v9 & 0xF3;
      }
    }

    if ((*(v12 + 2) - 64) <= 0xFFFFFF7F)
    {
      result = v13;
      if (v13)
      {
        operator delete[]();
      }
    }
  }

  return result;
}

void llvm::detail::IEEEFloat::initFromDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFFFFFFFFFFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 52) & 0x7FF;
  *this = &unk_10028EE24;
  v7 = *(this + 20);
  v8 = (v5 >> 60) & 8;
  if (v6 == 2047 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 1024;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 2047 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 1023;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x10000000000000;
      }

      else
      {
        *(this + 4) = -1022;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -1023;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 1024;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromQuadrupleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  if (v2 < 0x41)
  {
    v3 = a2;
  }

  v4 = *v3;
  v5 = *(v3 + 1) & 0xFFFFFFFFFFFFLL;
  v6 = *(v3 + ((v2 + 63) >> 6) - 1);
  *this = &unk_10028EE40;
  operator new[]();
}

void llvm::detail::IEEEFloat::initFromFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FFFFFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 23);
  *this = &unk_10028EE08;
  v7 = *(this + 20);
  v8 = (v5 >> 28) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x800000;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromBFloatAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x7FLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 7);
  *this = &unk_10028EDEC;
  v7 = *(this + 20);
  v8 = (v5 >> 12) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x80;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromHalfAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 10) & 0x1F;
  *this = &unk_10028EDD0;
  v7 = *(this + 20);
  v8 = (v5 >> 12) & 8;
  if (v6 == 31 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 31 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 15;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x400;
      }

      else
      {
        *(this + 4) = -14;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 16;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 0x1F;
  *this = &unk_10028EE94;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 31 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 31 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 15;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 4;
      }

      else
      {
        *(this + 4) = -14;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -15;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 16;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 0x1F;
  *this = &unk_10028EEB0;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 16;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 4;
    }

    else
    {
      *(this + 4) = -15;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -16;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -16;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &unk_10028EECC;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 15 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 15 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 7;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 8;
      }

      else
      {
        *(this + 4) = -6;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -7;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 8;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &unk_10028EEE8;
  v7 = *(this + 20);
  if (v6 == 15 && v4 == 7)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = 8;
    *(this + 1) = 7;
  }

  else if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 7;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -6;
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 3;
    *(this + 4) = -7;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &unk_10028EF04;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 8;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -7;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -8;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -8;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 0xF;
  *this = &unk_10028EF20;
  v7 = *(this + 20);
  if (v6 | v4)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 2;
    *(this + 4) = v6 - 11;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = -10;
    }
  }

  else if (((v5 >> 4) & 8) != 0)
  {
    *(this + 20) = v7 & 0xF0 | (v5 >> 4) & 8 | 1;
    *(this + 4) = -11;
    *(this + 1) = 0;
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | 3;
    *(this + 4) = -11;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0xFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 4) & 7;
  *this = &unk_10028EF3C;
  v7 = *(this + 20);
  v8 = (v5 >> 4) & 8;
  if (v6 == 7 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 4;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 7 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 3;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x10;
      }

      else
      {
        *(this + 4) = -2;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -3;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 4;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloatTF32APInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 0x3FFLL;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 10);
  *this = &unk_10028EF58;
  v7 = *(this + 20);
  v8 = (v5 >> 15) & 8;
  if (v6 == 255 && v4 == 0)
  {
    *(this + 20) = v7 & 0xF0 | v8;
    *(this + 4) = 128;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }

  else if (v6 != 255 || v4 == 0)
  {
    if (v6 | v4)
    {
      *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 2;
      *(this + 4) = v6 - 127;
      *(this + 1) = v4;
      if (v6)
      {
        *(this + 1) = v4 | 0x400;
      }

      else
      {
        *(this + 4) = -126;
      }
    }

    else
    {
      *(this + 20) = v7 & 0xF0 | v8 | 3;
      *(this + 4) = -127;
      llvm::APInt::tcSet((this + 8), 0, 1u);
    }
  }

  else
  {
    *(this + 20) = v7 & 0xF0 | v8 & 0xF8 | 1;
    *(this + 4) = 128;
    *(this + 1) = v4;
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 3;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 2) & 7;
  *this = &unk_10028EF90;
  v7 = (v5 >> 2) & 8;
  v8 = *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | v8 | 2;
    *(this + 4) = v6 - 3;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 4;
    }

    else
    {
      *(this + 4) = -2;
    }
  }

  else
  {
    *(this + 20) = v8 | v7 | 3;
    *(this + 4) = -3;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 7;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 3) & 3;
  *this = &unk_10028EFAC;
  v7 = (v5 >> 2) & 8;
  v8 = *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | v8 | 2;
    *(this + 4) = v6 - 1;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 8;
    }

    else
    {
      *(this + 4) = 0;
    }
  }

  else
  {
    *(this + 20) = v8 | v7 | 3;
    *(this + 4) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
{
  v2 = *(a2 + 2);
  if (v2 >= 0x41)
  {
    v3 = *a2;
  }

  else
  {
    v3 = a2;
  }

  v4 = *v3 & 1;
  v5 = *(v3 + ((v2 + 63) >> 6) - 1);
  v6 = (v5 >> 1) & 3;
  *this = &unk_10028EFC8;
  v7 = v5 & 8 | *(this + 20) & 0xF0;
  if (v6 | v4)
  {
    *(this + 20) = v7 | 2;
    *(this + 4) = v6 - 1;
    *(this + 1) = v4;
    if (v6)
    {
      *(this + 1) = v4 | 2;
    }

    else
    {
      *(this + 4) = 0;
    }
  }

  else
  {
    *(this + 20) = v7 | 3;
    *(this + 4) = -1;
    llvm::APInt::tcSet((this + 8), 0, 1u);
  }
}

void llvm::detail::IEEEFloat::initFromAPInt(uint64_t a1, void *a2, const llvm::APInt **a3)
{
  if (a2 == &unk_10028EDD0)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(a1, a3);
  }

  else if (a2 == &unk_10028EDEC)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(a1, a3);
  }

  else if (a2 == &unk_10028EE08)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(a1, a3);
  }

  else if (a2 == &unk_10028EE24)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(a1, a3);
  }

  else
  {
    if (a2 == &unk_10028EFE4)
    {
      llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(a1, a3);
    }

    if (a2 == &unk_10028EE40)
    {
      llvm::detail::IEEEFloat::initFromQuadrupleAPInt(a1, a3);
    }

    if (a2 == &unk_10028EE78)
    {
      llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EE94)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(a1, a3);
    }

    else if (a2 == &unk_10028EEB0)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EECC)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(a1, a3);
    }

    else if (a2 == &unk_10028EEE8)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EF04)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EF20)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EF3C)
    {
      llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(a1, a3);
    }

    else if (a2 == &unk_10028EF58)
    {
      llvm::detail::IEEEFloat::initFromFloatTF32APInt(a1, a3);
    }

    else if (a2 == &unk_10028EF74)
    {
      if (*(a3 + 2) >= 0x41u)
      {
        v3 = *a3;
      }

      else
      {
        v3 = a3;
      }

      v4 = *v3;
      v5 = *(a1 + 20);
      *a1 = &unk_10028EF74;
      *(a1 + 8) = 1;
      v6 = v5 & 0xF0;
      v7 = v4 - 127;
      if (v4 == 255)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      *(a1 + 20) = v6 | v8;
      *(a1 + 16) = v7;
    }

    else if (a2 == &unk_10028EF90)
    {
      llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(a1, a3);
    }

    else if (a2 == &unk_10028EFAC)
    {
      llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(a1, a3);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(a1, a3);
    }
  }
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, double a2)
{
  v5 = 64;
  v4 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v4);
  return this;
}

void llvm::detail::IEEEFloat::toString(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v12 = a2[1];
      if (v12 + 1 > a2[2])
      {
        v116 = a3;
        v117 = a4;
        v118 = a5;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v12 + 1, 1);
        a3 = v116;
        a4 = v117;
        a5 = v118;
        v12 = a2[1];
      }

      *(*a2 + v12) = 45;
      ++a2[1];
    }

    v13 = a2[1];
    if (a4)
    {
      if (v13 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 1, 1);
        v13 = a2[1];
      }

      *(*a2 + v13) = 48;
      ++a2[1];
    }

    else
    {
      v33 = a2[2];
      if (!a5)
      {
        if (v33 < v13 + 3)
        {
          v41 = a3;
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 3, 1);
          a3 = v41;
          v13 = a2[1];
        }

        v42 = *a2 + v13;
        *(v42 + 2) = 48;
        *v42 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v43 = a3 - 1;
          if (v7 + v43 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + v43, 1);
            v7 = a2[1];
          }

          memset((*a2 + v7), 48, v43);
          v7 = a2[1] + v43;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v7 + 4, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 808463205;
        goto LABEL_73;
      }

      if (v33 < v13 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v13 + 6, 1);
        v13 = a2[1];
      }

      v34 = *a2 + v13;
      *(v34 + 4) = 12331;
      *v34 = 1160785456;
      a2[1] += 6;
    }
  }

  else
  {
    if (v6 != 1)
    {
      if ((*(a1 + 20) & 7) == 0)
      {
        v7 = a2[1];
        v8 = a2[2];
        v9 = v7 + 4;
        if ((*(a1 + 20) & 8) == 0)
        {
          if (v8 < v7 + 4)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
            v7 = a2[1];
          }

          *(*a2 + v7) = 1718503723;
          goto LABEL_74;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
          v7 = a2[1];
        }

        v27 = *a2;
        v28 = 1718503725;
LABEL_73:
        *(v27 + v7) = v28;
LABEL_74:
        a2[1] += 4;
        return;
      }

      v14 = *(*a1 + 8);
      v15 = a3;
      v16 = a4;
      v17 = a5;
      if ((v14 - 64) <= 0xFFFFFF7F)
      {
        v18 = *(a1 + 8);
      }

      v19 = *(a1 + 16);
      llvm::APInt::APInt(&v121, v14);
      v24 = *(a1 + 20);
      v25 = v122;
      v120 = v122;
      if (v122 > 0x40)
      {
        llvm::APInt::initSlowCase(&v119, &v121);
      }

      v119 = v121;
      v26 = v15;
      if ((v24 & 8) != 0)
      {
        v29 = a2[1];
        if (v29 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v29 + 1, 1);
          v26 = v15;
          v29 = a2[1];
        }

        *(*a2 + v29) = 45;
        ++a2[1];
      }

      if (v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = (59 * v25) / 196 + 2;
      }

      if (v120 > 0x40)
      {
        v32 = llvm::APInt::countTrailingZerosSlowCase(&v119);
        llvm::APInt::lshrSlowCase(&v119, v32);
      }

      else
      {
        v31 = __clz(__rbit64(v119));
        if (v120 >= v31)
        {
          v32 = v31;
        }

        else
        {
          v32 = v120;
        }

        if (v120 > v31)
        {
          v119 >>= v32;
        }

        else
        {
          v119 = 0;
        }
      }

      v35 = v19 - v14 + v32;
      v36 = v35 + 1;
      if (v35 != -1)
      {
        if (v36 < 1)
        {
          v39 = (-137 * v36 + 136) / 0x3Bu + v25;
          llvm::APInt::zext(&v119, v39, &__dst);
          if (v120 >= 0x41 && v119)
          {
            operator delete[]();
          }

          v40 = -v36;
          v119 = __dst;
          v120 = v131;
          LODWORD(v131) = v39;
          if (v39 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst);
          }

          for (__dst = 5; ; llvm::APInt::operator*=(&__dst, &__dst))
          {
            if (v40)
            {
              llvm::APInt::operator*=(&v119, &__dst);
            }

            if (v40 < 2)
            {
              break;
            }

            v40 >>= 1;
          }

          if (v131 >= 0x41 && __dst)
          {
            operator delete[]();
          }
        }

        else
        {
          llvm::APInt::zext(&v119, v36 + v25, &__dst);
          if (v120 >= 0x41 && v119)
          {
            operator delete[]();
          }

          v119 = __dst;
          v120 = v131;
          if (v131 > 0x40)
          {
            llvm::APInt::shlSlowCase(&v119, v36);
            v36 = 0;
          }

          else
          {
            v37 = __dst << v36;
            if (v131 == v36)
            {
              v37 = 0;
            }

            if (v131)
            {
              v38 = 0xFFFFFFFFFFFFFFFFLL >> -v131;
            }

            else
            {
              v38 = 0;
            }

            v119 = v38 & v37;
            v36 = 0;
          }
        }
      }

      v44 = v120;
      if (v120 > 0x40)
      {
        v45 = llvm::APInt::countLeadingZerosSlowCase(&v119);
      }

      else
      {
        v45 = v120 + __clz(v119) - 64;
      }

      v46 = (196 * v30 + 58) / 0x3B;
      if (v44 - v45 > v46)
      {
        v47 = 59 * (v44 - v45 - v46);
        if (v47 >= 0xC4)
        {
          v48 = v47 / 0xC4;
          v36 += v47 / 0xC4;
          LODWORD(v131) = v44;
          if (v44 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst);
          }

          __dst = 1;
          LODWORD(v124) = v44;
          for (i = 10; ; llvm::APInt::operator*=(&i, &i))
          {
            if (v48)
            {
              llvm::APInt::operator*=(&__dst, &i);
            }

            if (v48 < 2)
            {
              break;
            }

            v48 >>= 1;
          }

          llvm::APInt::udiv(&v119, &__dst, &v128);
          if (v120 >= 0x41 && v119)
          {
            operator delete[]();
          }

          v119 = v128;
          v49 = v129;
          v120 = v129;
          if (v129 > 0x40)
          {
            v50 = llvm::APInt::countLeadingZerosSlowCase(&v119);
          }

          else
          {
            v50 = v129 + __clz(v128) - 64;
          }

          llvm::APInt::trunc(&v119, v49 - v50, &v128);
          if (v120 >= 0x41 && v119)
          {
            operator delete[]();
          }

          v119 = v128;
          v120 = v129;
          if (v124 >= 0x41 && i)
          {
            operator delete[]();
          }

          if (v131 >= 0x41 && __dst)
          {
            operator delete[]();
          }

          v44 = v120;
        }
      }

      __dst = v132;
      v131 = xmmword_10028ED90;
      if (v44 > 3)
      {
        v129 = v44;
        if (v44 > 0x40)
        {
          llvm::APInt::initSlowCase(&v128);
        }
      }

      else
      {
        v44 = 4;
        llvm::APInt::zext(&v119, 4u, &i);
        if (v120 >= 0x41 && v119)
        {
          operator delete[]();
        }

        v119 = i;
        v120 = v124;
        v129 = 4;
      }

      v128 = 10;
      v127 = v44;
      v126 = 0;
      v51 = v120;
      if (v120 < 0x41)
      {
        goto LABEL_124;
      }

LABEL_121:
      if (v51 - llvm::APInt::countLeadingZerosSlowCase(&v119) > 0x40 || *v119)
      {
        while (1)
        {
          llvm::APInt::udivrem(&v119, &v128, &v119, &v126, v21, v22, v23);
          v52 = v127 >= 0x41 ? v126 : &v126;
          v53 = *v52;
          if (v53)
          {
            break;
          }

          ++v36;
          v51 = v120;
          if (v120 >= 0x41)
          {
            goto LABEL_121;
          }

LABEL_124:
          if (!v119)
          {
            goto LABEL_143;
          }
        }

        v54 = v53 + 48;
        v55 = v131;
        if ((v131 + 1) > *(&v131 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v132, v131 + 1, 1);
          v55 = v131;
        }

        *(__dst + v55) = v54;
        *&v131 = v131 + 1;
        v56 = v120;
        if (v120 < 0x41)
        {
          goto LABEL_135;
        }

        while (v56 - llvm::APInt::countLeadingZerosSlowCase(&v119) > 0x40 || *v119)
        {
          while (1)
          {
            llvm::APInt::udivrem(&v119, &v128, &v119, &v126, v21, v22, v23);
            if (v127 >= 0x41)
            {
              v57 = v126;
            }

            else
            {
              v57 = &v126;
            }

            v58 = *v57;
            v59 = v131;
            if ((v131 + 1) > *(&v131 + 1))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v132, v131 + 1, 1);
              v59 = v131;
            }

            *(__dst + v59) = v58 + 48;
            *&v131 = v131 + 1;
            v56 = v120;
            if (v120 >= 0x41)
            {
              break;
            }

LABEL_135:
            if (!v119)
            {
              goto LABEL_143;
            }
          }
        }
      }

LABEL_143:
      v60 = v131;
      v61 = v131 - v30;
      if (v131 <= v30)
      {
        v63 = v16;
        if (!v16)
        {
          goto LABEL_179;
        }

        goto LABEL_168;
      }

      v62 = __dst;
      v63 = v16;
      if (*(__dst + (v61 - 1)) >= 53)
      {
        if (v30)
        {
          v67 = v30;
          while (1)
          {
            v68 = *(__dst + v61);
            if (v68 != 57)
            {
              break;
            }

            LODWORD(v61) = v61 + 1;
            if (!--v67)
            {
              goto LABEL_162;
            }
          }

          *(__dst + v61) = v68 + 1;
        }

        if (v61 == v60)
        {
LABEL_162:
          v69 = 0;
          *&v131 = 0;
          if (!*(&v131 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&__dst, v132, 1uLL, 1);
            v63 = v16;
            v69 = v131;
          }

          *(__dst + v69) = 49;
          v70 = v60;
          v60 = v131 + 1;
          v36 += v70;
          *&v131 = v131 + 1;
          if (!v63)
          {
            goto LABEL_179;
          }

          goto LABEL_168;
        }

        v65 = v61;
        v62 = __dst;
        v66 = v131 - v61;
        if (v131 == v61)
        {
          goto LABEL_151;
        }
      }

      else
      {
        if (v61 < v131)
        {
          v64 = v30;
          while (*(__dst + v61) == 48)
          {
            ++v61;
            if (!--v64)
            {
              LODWORD(v61) = v131;
              break;
            }
          }
        }

        v65 = v61;
        v66 = v131 - v61;
        if (v131 == v61)
        {
LABEL_151:
          v60 = v66;
          v36 += v61;
          *&v131 = v66;
          if (!v63)
          {
            goto LABEL_179;
          }

          goto LABEL_168;
        }
      }

      v71 = v63;
      memmove(v62, &v62[v65], v66);
      v63 = v71;
      v60 = v62 + v66 - __dst;
      v36 += v61;
      *&v131 = &v62[v66] - __dst;
      if (!v63)
      {
        goto LABEL_179;
      }

LABEL_168:
      if (v36 < 0)
      {
        v76 = v36 + v60;
        if (((v76 - 1) & 0x80000000) == 0 || 1 - v76 <= v63)
        {
          if (v76 < 1)
          {
            v109 = a2[1];
            if (v109 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v109 + 1, 1);
              v109 = a2[1];
            }

            *(*a2 + v109) = 48;
            v110 = a2[1];
            v111 = a2[2];
            v112 = v110 + 1;
            a2[1] = v110 + 1;
            if (v110 + 2 > v111)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v110 + 2, 1);
              v112 = a2[1];
            }

            *(*a2 + v112) = 46;
            v108 = a2[1] + 1;
            a2[1] = v108;
            if (v76)
            {
              do
              {
                if (v108 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v108 + 1, 1);
                  v108 = a2[1];
                }

                *(*a2 + v108) = 48;
                v108 = a2[1] + 1;
                a2[1] = v108;
                v113 = __CFADD__(v76, 1);
                LODWORD(v76) = v76 + 1;
              }

              while (!v113);
              LODWORD(v76) = 0;
            }
          }

          else
          {
            v103 = a2[1];
            v104 = v60 - 1;
            v105 = v76;
            do
            {
              v106 = *(__dst + v104);
              if (v103 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v103 + 1, 1);
                v103 = a2[1];
              }

              *(*a2 + v103) = v106;
              v107 = a2[1];
              v103 = v107 + 1;
              a2[1] = v107 + 1;
              --v104;
              --v105;
            }

            while (v105);
            if (v107 + 2 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v107 + 2, 1);
              v103 = a2[1];
            }

            *(*a2 + v103) = 46;
            v108 = a2[1] + 1;
            a2[1] = v108;
          }

          if (v76 != v60)
          {
            v114 = ~v76 + v60;
            do
            {
              v115 = *(__dst + v114);
              if (v108 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v108 + 1, 1);
                v108 = a2[1];
              }

              *(*a2 + v108) = v115;
              v108 = a2[1] + 1;
              a2[1] = v108;
              --v114;
            }

            while (v114 != -1);
          }

          goto LABEL_223;
        }
      }

      else if (v36 <= v63 && v36 + v60 <= v30)
      {
        if (v60)
        {
          v72 = v60;
          v73 = a2[1];
          v74 = v60 - 1;
          do
          {
            v75 = *(__dst + v74);
            if (v73 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v73 + 1, 1);
              v73 = a2[1];
            }

            *(*a2 + v73) = v75;
            v73 = a2[1] + 1;
            a2[1] = v73;
            --v74;
            --v72;
          }

          while (v72);
        }

        if (v36)
        {
          v100 = a2[1];
          do
          {
            if (v100 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v100 + 1, 1);
              v100 = a2[1];
            }

            *(*a2 + v100) = 48;
            v100 = a2[1] + 1;
            a2[1] = v100;
            --v36;
          }

          while (v36);
        }

        goto LABEL_223;
      }

LABEL_179:
      v77 = v60 - 1;
      v78 = *(__dst + v60 - 1);
      v79 = a2[1];
      if (v79 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v79 + 1, 1);
        v79 = a2[1];
      }

      *(*a2 + v79) = v78;
      v80 = a2[1];
      v81 = a2[2];
      v82 = v80 + 1;
      a2[1] = v80 + 1;
      if (v80 + 2 > v81)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v80 + 2, 1);
        v82 = a2[1];
      }

      *(*a2 + v82) = 46;
      v83 = a2[1];
      v84 = v83 + 1;
      a2[1] = v83 + 1;
      if (v60 == 1 && (v17 & 1) != 0)
      {
        if (v83 + 2 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v83 + 2, 1);
          v84 = a2[1];
        }

        *(*a2 + v84) = 48;
        v84 = a2[1] + 1;
        a2[1] = v84;
      }

      else if (v60 != 1)
      {
        v101 = v60 - 2;
        do
        {
          v102 = *(__dst + v101);
          if (v84 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
            v84 = a2[1];
          }

          *(*a2 + v84) = v102;
          v84 = a2[1] + 1;
          a2[1] = v84;
          --v101;
        }

        while (v101 != -1);
      }

      if (v17)
      {
        v85 = 69;
LABEL_197:
        v87 = v77 + v36;
        if (v84 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + 1, 1);
          v84 = a2[1];
        }

        *(*a2 + v84) = v85;
        v88 = a2[1];
        v89 = a2[2];
        v90 = v88 + 1;
        a2[1] = v88 + 1;
        if (v87 < 0)
        {
          v91 = 45;
        }

        else
        {
          v91 = 43;
        }

        if (v88 + 2 > v89)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v88 + 2, 1);
          v90 = a2[1];
        }

        v92 = 0;
        *(*a2 + v90) = v91;
        ++a2[1];
        if (v87 >= 0)
        {
          v93 = v87;
        }

        else
        {
          v93 = -v87;
        }

        i = &v125;
        v124 = xmmword_10028EDA0;
        do
        {
          if (v92 + 1 > *(&v124 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&i, &v125, v92 + 1, 1);
            v92 = v124;
          }

          *(i + v92) = (v93 % 0xA) | 0x30;
          v94 = v124;
          v92 = v124 + 1;
          *&v124 = v124 + 1;
          v95 = v93 > 9;
          v93 /= 0xAu;
        }

        while (v95);
        if ((v17 & 1) == 0 && v92 <= 1)
        {
          if ((v94 + 2) > *(&v124 + 1))
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod(&i, &v125, v94 + 2, 1);
            v92 = v124;
          }

          *(i + v92) = 48;
          LODWORD(v92) = v124 + 1;
          *&v124 = v124 + 1;
        }

        v96 = v92;
        if (v92)
        {
          v97 = a2[1];
          v98 = v92 - 1;
          do
          {
            v99 = *(i + v98);
            if (v97 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v97 + 1, 1);
              v97 = a2[1];
            }

            *(*a2 + v97) = v99;
            v97 = a2[1] + 1;
            a2[1] = v97;
            --v98;
            --v96;
          }

          while (v96);
        }

        if (i != &v125)
        {
          free(i);
        }

LABEL_223:
        if (v127 >= 0x41 && v126)
        {
          operator delete[]();
        }

        if (v129 >= 0x41 && v128)
        {
          operator delete[]();
        }

        if (__dst != v132)
        {
          free(__dst);
        }

        if (v120 >= 0x41 && v119)
        {
          operator delete[]();
        }

        if (v122 >= 0x41 && v121)
        {
          operator delete[]();
        }

        return;
      }

      if (v30 <= v77)
      {
LABEL_196:
        v85 = 101;
        goto LABEL_197;
      }

      v86 = v30 - v60 + 1;
      if (v84 + v86 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v84 + v86, 1);
        v84 = a2[1];
        if (v30 - v60 == -1)
        {
          goto LABEL_195;
        }
      }

      else if (v30 - v60 == -1)
      {
LABEL_195:
        v84 += v86;
        a2[1] = v84;
        goto LABEL_196;
      }

      memset((*a2 + v84), 48, v30 - v60 + 1);
      v84 = a2[1];
      goto LABEL_195;
    }

    v10 = a2[1];
    if (a2[2] < (v10 + 3))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v10 + 3, 1);
      v10 = a2[1];
    }

    v11 = *a2 + v10;
    *(v11 + 2) = 78;
    *v11 = 24910;
    a2[1] += 3;
  }
}

void *sub_10002999C(void *result)
{
  if (*result == &unk_10028EE5C)
  {
    return sub_100029F40(result);
  }

  if ((*(*result + 8) - 64) <= 0xFFFFFF7F)
  {
    if (result[1])
    {
      v1 = result[1];
      operator delete[]();
    }
  }

  return result;
}

void llvm::detail::DoubleAPFloat::DoubleAPFloat(void *a1, uint64_t a2)
{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  if (v2)
  {
    operator new[]();
  }

  result[1] = 0;
  return result;
}

__n128 llvm::detail::DoubleAPFloat::DoubleAPFloat(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &unk_10028F000;
  return result;
}

llvm::detail::IEEEFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::IEEEFloat *a1, llvm::detail::IEEEFloat *a2)
{
  v2 = a2;
  if (*a1 != *a2 || (v7 = *(a2 + 1)) == 0)
  {
    v4 = 0;
    v5 = a1;
    if (a1 != v2)
    {
LABEL_3:
      sub_100029F40(v5);
      v6 = *(v2 + 1);
      *v5 = *v2;
      if (v6)
      {
        operator new[]();
      }

      *(v5 + 1) = 0;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 1);
  v9 = *v7;
  if (*v8 != &unk_10028EE5C)
  {
    if (v9 != &unk_10028EE5C)
    {
      llvm::detail::IEEEFloat::operator=(v8, v7);
      goto LABEL_22;
    }

    if (v8 == v7)
    {
      goto LABEL_22;
    }

    if ((*(*v8 + 8) - 64) <= 0xFFFFFF7F && v8[1])
    {
      v12 = *(a1 + 1);
      v13 = v8[1];
      v14 = *(v2 + 1);
      operator delete[]();
    }

LABEL_20:
    sub_10002B260(v8, v7);
    goto LABEL_22;
  }

  if (v9 == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::operator=();
    goto LABEL_22;
  }

  if (v8 != v7)
  {
    v11 = *(v2 + 1);
    v8 = sub_100029F40(v8);
    v7 = v11;
    goto LABEL_20;
  }

LABEL_22:
  v15 = *(v2 + 1);
  v2 = (v15 + 24);
  v16 = *(v15 + 24);
  v17 = *(a1 + 1);
  v18 = (v17 + 24);
  v19 = *(v17 + 24);
  v20 = v16 == &unk_10028EE5C;
  v4 = v19 == &unk_10028EE5C;
  if (v19 != &unk_10028EE5C)
  {
    v5 = a1;
    if (v16 != &unk_10028EE5C)
    {
      goto LABEL_53;
    }

LABEL_24:
    if (v17 == v15)
    {
      goto LABEL_10;
    }

    if ((v19[2] - 64) <= 0xFFFFFF7F && *(v17 + 32))
    {
      v21 = *(v17 + 32);
      operator delete[]();
    }

LABEL_32:
    sub_10002B260(v18, v2);
    goto LABEL_10;
  }

  if (v16 != &unk_10028EE5C)
  {
    v5 = a1;
LABEL_30:
    if (v17 == v15)
    {
      v4 = v20;
      goto LABEL_10;
    }

    v18 = sub_100029F40(v18);
    v4 = v20;
    goto LABEL_32;
  }

  while (1)
  {
    v5 = v18;
    v22 = *(v2 + 1);
    if (!v22)
    {
      v4 = 1;
      if (v18 != v2)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v23 = *(v18 + 1);
    v24 = *v22;
    if (*v23 == &unk_10028EE5C)
    {
      if (v24 != &unk_10028EE5C)
      {
        if (v23 == v22)
        {
          goto LABEL_46;
        }

        v25 = *(v2 + 1);
        v23 = sub_100029F40(v23);
        v22 = v25;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=();
    }

    else
    {
      if (v24 != &unk_10028EE5C)
      {
        llvm::detail::IEEEFloat::operator=(v23, v22);
        goto LABEL_46;
      }

      if (v23 != v22)
      {
        if ((*(*v23 + 8) - 64) <= 0xFFFFFF7F && v23[1])
        {
          v26 = *(v5 + 1);
          v27 = v23[1];
          v28 = *(v2 + 1);
          operator delete[]();
        }

LABEL_44:
        sub_10002B260(v23, v22);
      }
    }

LABEL_46:
    v15 = *(v2 + 1);
    v2 = (v15 + 24);
    v29 = *(v15 + 24);
    v17 = *(v5 + 1);
    v18 = (v17 + 24);
    v19 = *(v17 + 24);
    if (v19 != &unk_10028EE5C)
    {
      break;
    }

    if (v29 != &unk_10028EE5C)
    {
      goto LABEL_30;
    }
  }

  if (v29 == &unk_10028EE5C)
  {
    goto LABEL_24;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v18, v2);
LABEL_10:
  if (v4)
  {
    return a1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100029F40(uint64_t result)
{
  v1 = *(result + 8);
  *(result + 8) = 0;
  if (v1)
  {
    v2 = *(v1 - 8);
    if (v2)
    {
      v3 = (v1 + 24 * v2 - 24);
      v4 = -24 * v2;
      do
      {
        if (*v3 == &unk_10028EE5C)
        {
          sub_100029F40(v3);
        }

        else if ((*(*v3 + 8) - 64) <= 0xFFFFFF7F)
        {
          if (v3[1])
          {
            operator delete[]();
          }
        }

        v3 -= 3;
        v4 += 24;
      }

      while (v4);
    }

    operator delete[]();
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::detail::DoubleAPFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v4 = *(this + 1);
  if (*v4 == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v12, v4);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v4, &v12);
  }

  v5 = &v12;
  if (v13 >= 0x41)
  {
    v5 = v12;
  }

  v14 = *v5;
  v6 = *(this + 1);
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  if (v8 == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v10, v7);
    if (v11 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v15 = *v10;
    operator delete[]();
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v7, &v10);
  if (v11 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v15 = v10;
  if (v13 >= 0x41 && v12)
  {
    operator delete[]();
  }

  return llvm::APInt::APInt(a2, 128, 2u, &v14);
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(uint64_t a1, uint64_t a2)
{
  result = sub_10002A1D0(*(a1 + 8), *(a2 + 8));
  if (result)
  {
    v5 = (*(a1 + 8) + 24);
    v6 = (*(a2 + 8) + 24);

    return sub_10002A1D0(v5, v6);
  }

  return result;
}

uint64_t sub_10002A1D0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = a2;
  v6 = a1;
  while (v2 == &unk_10028EE5C)
  {
    result = sub_10002A1D0(v6[1], v5[1]);
    if (!result)
    {
      return result;
    }

    v7 = v6[1];
    v8 = *(v7 + 24);
    v6 = (v7 + 24);
    v2 = v8;
    v9 = v5[1];
    v10 = *(v9 + 24);
    v5 = (v9 + 24);
    v3 = v10;
    if (v2 != v10)
    {
      return 0;
    }
  }

  if (v6 == v5)
  {
    return 1;
  }

  v11 = *(v6 + 20);
  v12 = *(v5 + 20);
  if ((v11 & 7) != (v12 & 7) || ((v12 ^ v11) & 8) != 0)
  {
    return 0;
  }

  result = 1;
  if ((v11 & 7) == 0 || (v11 & 7) == 3)
  {
    return result;
  }

  if ((v11 & 6) != 0 && *(v6 + 4) != *(v5 + 4))
  {
    return 0;
  }

  v13 = *(v2 + 8);
  v14 = v6 + 1;
  if ((v13 - 64) <= 0xFFFFFF7F)
  {
    v14 = *v14;
  }

  v15 = (v13 + 64) >> 6;
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v18 = v5[1];
  v17 = v5 + 1;
  v16 = v18;
  if ((*(v3 + 8) - 64) >= 0xFFFFFF80)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  return memcmp(v14, v19, 8 * v15) == 0;
}

unint64_t llvm::detail::hash_value(void *a1, const llvm::detail::DoubleAPFloat *a2)
{
  v3 = a1[1];
  if (!v3)
  {
    v10 = HIDWORD(*a1) ^ 0xFF51AFD7ED558CCDLL;
    v11 = 0x9DDFEA08EB382D69 * ((8 * *a1 + 8) ^ v10);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 47));
  }

  if (*v3 == &unk_10028EE5C)
  {
    v5 = llvm::detail::hash_value(v3, a2);
    v13 = a1[1];
    v14 = *(v13 + 24);
    v7 = (v13 + 24);
    if (v14 != &unk_10028EE5C)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = llvm::detail::hash_value(v7, v4);
    goto LABEL_8;
  }

  v5 = llvm::detail::hash_value(v3, a2);
  v6 = a1[1];
  v8 = *(v6 + 24);
  v7 = (v6 + 24);
  if (v8 == &unk_10028EE5C)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = llvm::detail::hash_value(v7, v4);
LABEL_8:
  v15 = __ROR8__(v9 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)))) ^ ((0x9DDFEA08EB382D69 * (v15 ^ ((0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ 0xFF51AFD7ED558CCDLL ^ v15)))) >> 47))) ^ v9;
}

unint64_t llvm::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  if (*this == &unk_10028EE5C)
  {
    return llvm::detail::hash_value(this, a2);
  }

  else
  {
    return llvm::detail::hash_value(this, a2);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString(unsigned __int8 *a1@<X1>, size_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  llvm::detail::IEEEFloat::IEEEFloat(&v9, &unk_10028EE78);
  if (v9 == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(&v9, a1, a2, a3);
    if (v9 != &unk_10028EE5C)
    {
      goto LABEL_3;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::convertFromString(&v9, a1, a2, a3, a4);
    if (v9 != &unk_10028EE5C)
    {
LABEL_3:
      llvm::detail::IEEEFloat::bitcastToAPInt(&v9, v8);
      goto LABEL_6;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v9, v8);
LABEL_6:
  v8[2] = &unk_10028EE5C;
  operator new[]();
}

llvm::detail::IEEEFloat *llvm::APFloat::convertFromString@<X0>(llvm::detail::IEEEFloat *result@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*result == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a2, a3, a4, a5);
  }

  return llvm::detail::IEEEFloat::convertFromString(result, a2, a3, a4, a5);
}

void llvm::detail::DoubleAPFloat::toString(llvm::detail::DoubleAPFloat *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v10);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleLegacyAPInt(v12, &v10);
  if (v12[0] == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::toString(v12, a2, a3, a4, a5);
    v9 = v12[0];
    if (v12[0] != &unk_10028EE5C)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_100029F40(v12);
    goto LABEL_8;
  }

  llvm::detail::IEEEFloat::toString(v12, a2, a3, a4, a5);
  v9 = v12[0];
  if (v12[0] == &unk_10028EE5C)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((*(v9 + 8) - 64) <= 0xFFFFFF7F && v12[1])
  {
    operator delete[]();
  }

LABEL_8:
  if (v11 >= 0x41)
  {
    if (v10)
    {
      operator delete[]();
    }
  }
}

uint64_t llvm::APFloat::Storage::Storage(uint64_t result, uint64_t a2, void *a3)
{
  v3 = result;
  if (a3 == &unk_10028EE5C)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = *(a2 + 16);
    v8 = *(a2 + 20);
    *a2 = &unk_10028F000;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8 & 0xF;
    llvm::APFloat::Storage::Storage(&v9, &v10);
    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F && v11)
    {
      operator delete[]();
    }

    llvm::detail::IEEEFloat::IEEEFloat(&v10, &unk_10028EE24);
    *v3 = &unk_10028EE5C;
    operator new[]();
  }

  *result = &unk_10028F000;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  v4 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
  *(result + 20) = v4;
  *(result + 20) = v4 & 0xF7 | *(a2 + 20) & 8;
  *a2 = &unk_10028F000;
  return result;
}

uint64_t *llvm::APFloat::APFloat(uint64_t *a1, void *a2, unsigned __int8 *a3, size_t a4)
{
  if (a2 == &unk_10028EE5C)
  {
    *a1 = &unk_10028EE5C;
    operator new[]();
  }

  llvm::detail::IEEEFloat::IEEEFloat(a1, a2);
  if (*a1 == &unk_10028EE5C)
  {
    llvm::detail::DoubleAPFloat::convertFromString(a3, a4, 1, &v12);
  }

  llvm::detail::IEEEFloat::convertFromString(a1, a3, a4, 1, &v12);
  v7 = v13;
  if (v13)
  {
    v8 = v12;
    v12 = 0;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  sub_10002B334(&v10, &v11);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if ((v7 & 1) != 0 && v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t llvm::APFloat::convert(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  if (*a1 == a2)
  {
    result = 0;
    *a4 = 0;
  }

  else if (*a1 == &unk_10028EE5C)
  {
    v7 = llvm::detail::IEEEFloat::convert(*(a1 + 8), a2, a3, a4);
    v8 = *a1;
    v9 = a1;
    if (*a1 == &unk_10028EE5C)
    {
      v9 = *(a1 + 8);
      v8 = *v9;
    }

    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = *(v9 + 20) & 0xF;
    *v9 = &unk_10028F000;
    v16 = v8;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    llvm::APFloat::Storage::Storage(&v15, &v16, a2);
    if ((v16[2] - 64) <= 0xFFFFFF7F && v17)
    {
      operator delete[]();
    }

    sub_10002B0F0(a1, &v15);
    if (v15 == &unk_10028EE5C)
    {
      sub_100029F40(&v15);
    }

    else if ((*(v15 + 8) - 64) <= 0xFFFFFF7F && *(&v15 + 1))
    {
      operator delete[]();
    }

    return v7;
  }

  else
  {
    if (a2 == &unk_10028EE5C)
    {
      llvm::detail::IEEEFloat::convert(a1, &unk_10028EE78, a3, a4);
      llvm::detail::IEEEFloat::bitcastToAPInt(a1, &v14);
      v16 = &unk_10028EE5C;
      operator new[]();
    }

    return llvm::detail::IEEEFloat::convert(a1, a2, a3, a4);
  }

  return result;
}

double llvm::APFloat::convertToDouble(llvm::APFloat *this)
{
  if (*this == &unk_10028EE24)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(this, &v9);
    if (v10 <= 0x40)
    {
      return v9;
    }

    v4 = **&v9;
LABEL_15:
    operator delete[]();
  }

  sub_10002B260(&v9, this);
  llvm::APFloat::convert(&v9, &unk_10028EE24, 1, &v6);
  if (*&v9 == &unk_10028EE5C)
  {
    v1 = v10;
  }

  else
  {
    v1 = &v9;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v1, &v7);
  if (v8 > 0x40)
  {
    v3 = *v7;
    operator delete[]();
  }

  v2 = *&v7;
  if (*&v9 == &unk_10028EE5C)
  {
    sub_100029F40(&v9);
    return v2;
  }

  if ((*(*&v9 + 8) - 64) <= 0xFFFFFF7F && v10)
  {
    goto LABEL_15;
  }

  return v2;
}

float llvm::APFloat::convertToFloat(llvm::APFloat *this)
{
  if (*this == &unk_10028EE08)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(this, &v9);
    if (v10 <= 0x40)
    {
      return *&v9;
    }

    v4 = *v9;
LABEL_15:
    operator delete[]();
  }

  sub_10002B260(&v9, this);
  llvm::APFloat::convert(&v9, &unk_10028EE08, 1, &v6);
  if (v9 == &unk_10028EE5C)
  {
    v1 = v10;
  }

  else
  {
    v1 = &v9;
  }

  llvm::detail::IEEEFloat::bitcastToAPInt(v1, &v7);
  if (v8 > 0x40)
  {
    v3 = *v7;
    operator delete[]();
  }

  v2 = *&v7;
  if (v9 == &unk_10028EE5C)
  {
    sub_100029F40(&v9);
    return v2;
  }

  if ((*(v9 + 2) - 64) <= 0xFFFFFF7F && v10)
  {
    goto LABEL_15;
  }

  return v2;
}

uint64_t sub_10002B0F0(uint64_t result, __int128 *a2)
{
  v3 = *result;
  v4 = *a2;
  if (*result != &unk_10028EE5C)
  {
    if (v4 != &unk_10028EE5C)
    {
      if ((v3[2] - 64) <= 0xFFFFFF7F)
      {
        if (*(result + 8))
        {
          v5 = *(result + 8);
          operator delete[]();
        }
      }

      *result = v4;
LABEL_16:
      *(result + 8) = *(a2 + 1);
      *(result + 16) = *(a2 + 4);
      v7 = *(result + 20) & 0xF8 | *(a2 + 20) & 7;
      *(result + 20) = v7;
      *(result + 20) = v7 & 0xF7 | *(a2 + 20) & 8;
LABEL_17:
      *a2 = &unk_10028F000;
      return result;
    }

    if (result == a2)
    {
      return result;
    }

    if ((v3[2] - 64) <= 0xFFFFFF7F && *(result + 8))
    {
      v6 = *(result + 8);
      operator delete[]();
    }

LABEL_14:
    if (*a2 == &unk_10028EE5C)
    {
      v9 = *(a2 + 1);
      *(a2 + 1) = 0;
      *result = &unk_10028EE5C;
      *(result + 8) = v9;
      goto LABEL_17;
    }

    *result = &unk_10028F000;
    *result = *a2;
    goto LABEL_16;
  }

  if (v4 != &unk_10028EE5C)
  {
    if (result == a2)
    {
      return result;
    }

    result = sub_100029F40(result);
    goto LABEL_14;
  }

  if (result != a2)
  {
    result = sub_100029F40(result);
    v8 = *a2;
    *(a2 + 1) = 0;
    *result = v8;
    goto LABEL_17;
  }

  return result;
}

llvm::detail::IEEEFloat *sub_10002B260(llvm::detail::IEEEFloat *result, const llvm::detail::IEEEFloat *a2)
{
  if (*a2 != &unk_10028EE5C)
  {
    return llvm::detail::IEEEFloat::IEEEFloat(result, a2);
  }

  *result = &unk_10028EE5C;
  if (*(a2 + 1))
  {
    operator new[]();
  }

  *(result + 1) = 0;
  return result;
}

void **sub_10002B334@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          sub_10002B5A0(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_10002B5A0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &llvm::ErrorList::ID))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    sub_10002B9D4(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    sub_10002B8B4(v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    sub_10002B8B4(v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

void sub_10002B8B4(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_10002BC08();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *sub_10002B9D4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 1;
      return v4;
    }

    v8 = a2 + 1;
    v9 = v6 - 1;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 1;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = a2 - v6 + 8;
    v24 = v6 - 2;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      --v9;
      --v24;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = ((v6 - *a1) >> 3) + 1;
  if (v12 >> 61)
  {
    sub_10002BC08();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_10002BC08();
  }

  v30 = 0;
  v31 = 8 * ((a2 - v11) >> 3);
  v32 = v31;
  sub_10002BC18(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void *sub_10002BC18(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = v5 - *result;
    if (v5 <= *result)
    {
      v10 = (v4 - *result) >> 2;
      if (v4 == *result)
      {
        v10 = 1;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_10002BC08();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = &v5[-(((v6 >> 3) + 1) / 2)];
    if (v5 != v4)
    {
      do
      {
        v9 = *v5;
        *v5 = 0;
        result = *v8;
        *v8 = v9;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v5;
        ++v8;
      }

      while (v5 != v4);
      v5 = v3[1];
    }

    v3[1] = &v5[v7];
    v3[2] = v8;
  }

  v11 = v3[2];
  v12 = *a2;
  *a2 = 0;
  *v11 = v12;
  v3[2] = v11 + 1;
  return result;
}

char *sub_10002BE4C(char *a1, uint64_t *a2, _DWORD *__dst, unint64_t a4, int a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 4 - v8;
    v32 = &a1[4 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 4 - v8;
  v32 = &a1[4 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_10002C12C(unint64_t __src, uint64_t a2, unint64_t a3, char *a4)
{
  if (a2)
  {
    if (__src == a3 || a3 == a4)
    {
      goto LABEL_43;
    }

    if (__src + 1 == a3)
    {
      v15 = *__src;
      v16 = &a4[-a3];
      v17 = __src;
      v18 = a2;
      v19 = a3;
      memmove(__src, (__src + 1), &a4[-a3]);
      a2 = v18;
      a3 = v19;
      __src = v17;
      v16[v17] = v15;
LABEL_43:
      v50 = *(__src + 72);
      v51 = *(__src + 88);
      v52 = *(__src + 8);
      v53 = *(__src + 96);
      v54 = *(__src + 104);
      v56 = *(__src + 48);
      v55 = *(__src + 56);
      v57 = *(__src + 112);
      v58 = v57 ^ (0xB492B66FBE98F273 * __ROR8__(v50 + *(__src + 64) + v51 + v52, 37));
      v59 = v51 - 0x4B6D499041670D8DLL * __ROR8__(v53 + v50 + v56, 42);
      v60 = v54 + *(__src + 80);
      v61 = *__src - 0x4B6D499041670D8DLL * v53;
      v62 = v61 + v54;
      v64 = *(__src + 16);
      v63 = *(__src + 24);
      v65 = v61 + v52 + v64;
      v66 = *(__src + 40);
      v67 = v59 + v66;
      v68 = __ROR8__(v60, 33);
      v69 = __ROR8__(v62 + v63 + v58, 21) + v61 + __ROR8__(v65, 44);
      v70 = v65 + v63;
      v71 = v64 + v67;
      v72 = *(__src + 32) + v57 - 0x4B6D499041670D8DLL * v68;
      v73 = v66 + v56 + v72;
      v74 = __ROR8__(v72 + v55 + v71, 21) + v72 + __ROR8__(v73, 44);
      *(__src + 88) = v70;
      *(__src + 96) = v69;
      *(__src + 104) = v73 + v55;
      *(__src + 112) = v74;
      *(__src + 72) = v67;
      *(__src + 80) = v58;
      *(__src + 64) = 0xB492B66FBE98F273 * v68;
      v75 = 0x9DDFEA08EB382D69 * (v74 ^ ((0x9DDFEA08EB382D69 * (v74 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v74 ^ v69)));
      v76 = 0xB492B66FBE98F273 * (v68 + ((a3 - __src + a2) ^ ((a3 - __src + a2) >> 47))) - 0x622015F714C7D297 * (v75 ^ (v75 >> 47));
      v77 = 0x9DDFEA08EB382D69 * (v76 ^ (v58 - 0x4B6D499041670D8DLL * (v67 ^ (v67 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ ((0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v73 + v55) ^ v70)))) >> 47))));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) ^ ((0x9DDFEA08EB382D69 * (v76 ^ (v77 >> 47) ^ v77)) >> 47));
    }

    if ((a3 + 1) == a4)
    {
      v20 = *(a4 - 1);
      if (a4 - 1 != __src)
      {
        v21 = __src;
        v22 = a2;
        v23 = a3;
        memmove((__src + 1), __src, &a4[-__src - 1]);
        a2 = v22;
        a3 = v23;
        __src = v21;
      }

      *__src = v20;
      goto LABEL_43;
    }

    v5 = (a3 - __src);
    v6 = &a4[-a3];
    if ((a3 - __src) != &a4[-a3])
    {
      v24 = (a3 - __src);
      do
      {
        v25 = v24;
        v24 = v6;
        v6 = v25 % v6;
      }

      while (v6);
      v26 = &v24[__src];
      do
      {
        v28 = *--v26;
        v27 = v28;
        v29 = &v5[v26];
        v30 = v26;
        do
        {
          v31 = v30;
          v30 = v29;
          *v31 = *v29;
          v32 = a4 - v29;
          v33 = __OFSUB__(v5, v32);
          v35 = &v5[-v32];
          v34 = (v35 < 0) ^ v33;
          v29 = (__src + v35);
          if (v34)
          {
            v29 = &v5[v30];
          }
        }

        while (v29 != v26);
        *v30 = v27;
      }

      while (v26 != __src);
      goto LABEL_43;
    }

    v7 = &a4[~a3];
    if (v7 >= ~__src + a3)
    {
      v7 = (~__src + a3);
    }

    v8 = (v7 + 1);
    v9 = a3;
    v10 = __src;
    if (v8 >= 8)
    {
      if (a3 + v8 <= __src || (v9 = a3, v10 = __src, __src + v8 <= a3))
      {
        if (v8 >= 0x20)
        {
          v11 = v8 & 0xFFFFFFFFFFFFFFE0;
          v36 = (__src + 16);
          v37 = (a3 + 16);
          v38 = v8 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v39 = *(v36 - 1);
            v40 = *v36;
            v41 = *v37;
            *(v36 - 1) = *(v37 - 1);
            *v36 = v41;
            *(v37 - 1) = v39;
            *v37 = v40;
            v36 += 2;
            v37 += 2;
            v38 -= 32;
          }

          while (v38);
          if (v8 == v11)
          {
            goto LABEL_43;
          }

          if ((v8 & 0x18) == 0)
          {
            v10 = (__src + v11);
            v9 = (a3 + v11);
            goto LABEL_39;
          }
        }

        else
        {
          v11 = 0;
        }

        v9 = (a3 + (v8 & 0xFFFFFFFFFFFFFFF8));
        v10 = (__src + (v8 & 0xFFFFFFFFFFFFFFF8));
        v42 = (__src + v11);
        v43 = (a3 + v11);
        v44 = v11 - (v8 & 0xFFFFFFFFFFFFFFF8);
        do
        {
          v45 = *v42;
          *v42++ = *v43;
          *v43++ = v45;
          v44 += 8;
        }

        while (v44);
        if (v8 == (v8 & 0xFFFFFFFFFFFFFFF8))
        {
          goto LABEL_43;
        }
      }
    }

LABEL_39:
    v46 = v9 + 1;
    v47 = v10 + 1;
    do
    {
      v48 = *(v47 - 1);
      *(v47 - 1) = *(v46 - 1);
      *(v46 - 1) = v48;
      if (v47 == a3)
      {
        break;
      }

      ++v47;
    }

    while (v46++ != a4);
    goto LABEL_43;
  }

  v12 = a3 - __src;
  v13 = *(__src + 120);

  return sub_10002C4F4(__src, v12, v13);
}

unint64_t sub_10002C4F4(void *a1, unint64_t a2, unint64_t a3)
{
  if (a2 - 4 > 4)
  {
    if (a2 - 9 > 7)
    {
      if (a2 - 17 > 0xF)
      {
        if (a2 < 0x21)
        {
          if (a2)
          {
            v32 = (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8))) ^ (0xC949D7C7509E6557 * (a2 + 4 * *(a1 + a2 - 1))) ^ a3;
            return 0x9AE16A3B2F90404FLL * (v32 ^ (v32 >> 47));
          }

          else
          {
            return a3 ^ 0x9AE16A3B2F90404FLL;
          }
        }

        else
        {
          v12 = a1 + a2;
          v13 = *(a1 + a2 - 16);
          v14 = *(a1 + a2 - 8);
          v15 = *a1 - 0x3C5A37A36834CED9 * (v13 + a2);
          v17 = a1[2];
          v16 = a1[3];
          v18 = __ROR8__(v15 + v16, 52);
          v19 = v15 + a1[1];
          v20 = __ROR8__(v19, 7);
          v21 = v19 + v17;
          v22 = v20 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v13 + a2), 37) + v18;
          v23 = *(a1 + a2 - 32) + v17;
          v24 = __ROR8__(v23 + v14, 52);
          v25 = v22 + __ROR8__(v21, 31);
          v26 = __ROR8__(v23, 37);
          v27 = *(v12 - 3) + v23;
          v28 = __ROR8__(v27, 7);
          v29 = v27 + v13;
          v30 = __ROR8__(v29, 31);
          v31 = ((0xC3A5C85C97CB3127 * ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) ^ ((0xC3A5C85C97CB3127 * (v29 + v14 + v25) - 0x651E95C4D06FBFB1 * (v21 + v16 + v26 + v24 + v28 + v30)) >> 47))) ^ a3) + v25;
          return 0x9AE16A3B2F90404FLL * (v31 ^ (v31 >> 47));
        }
      }

      else
      {
        v8 = a1[1];
        v9 = 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
        v10 = __ROR8__(0xB492B66FBE98F273 * *a1 - v8, 43) - 0x3C5A37A36834CED9 * *(a1 + a2 - 16) + __ROR8__(v9 ^ a3, 30);
        v11 = a3 + a2 + __ROR8__(v8 ^ 0xC949D7C7509E6557, 20) - 0x4B6D499041670D8DLL * *a1 - v9;
        return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v11)))) >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 8);
      v7 = __ROR8__(v6 + a2, a2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a1 ^ a3 ^ v7)))) >> 47))) ^ v6;
    }
  }

  else
  {
    v3 = *(a1 + a2 - 4) ^ a3;
    v4 = 0x9DDFEA08EB382D69 * (v3 ^ (a2 + 8 * *a1));
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  }
}

unint64_t sub_10002C76C(void *a1, uint64_t a2)
{
  v4 = a2 - a1;
  if (v4 > 0x40)
  {
    v6 = a1[1];
    v7 = a1[6];
    v8 = a1[7];
    v9 = (0xB492B66FBE98F273 * __ROR8__(v6 - 0x73D22641534B4D52, 37)) ^ 0xF7ACCA5326449396;
    v10 = a1[5];
    v11 = v10 - 0x4B6D499041670D8DLL * __ROR8__(v7 - 0x414BFF9ED66A691CLL, 42) - 0x7323D61940A0DA1FLL;
    v12 = *a1 + 0x298DF016A9F64655;
    v13 = a1[2];
    v14 = a1[3];
    v15 = v12 + v6 + v13;
    v16 = 0x544962662A7EE1A4;
    v17 = __ROR8__(v15, 44) + v12 + __ROR8__(v9 + v12 + v14 - 0xAE502812AB8D92, 21);
    v18 = v15 + v14;
    v19 = a1[4] + 0x4BF62CB950C3753ALL;
    v20 = v10 + v7 + v19;
    v21 = __ROR8__(v20, 44) + v19 + __ROR8__(v11 + v13 + v19 + v8, 21);
    v22 = v20 + v8;
    v23 = (v4 & 0xFFFFFFFFFFFFFFC0) - 64;
    if ((v4 & 0xFFFFFFFFFFFFFFC0) == 0x40)
    {
      v24 = v9;
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v25 = a1 + 15;
      do
      {
        v26 = *(v25 - 6);
        v27 = v11 + v18 + v16 + v26;
        v28 = *(v25 - 1);
        v29 = *(v25 - 2);
        v11 = v29 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v28, 42);
        v30 = v9 + v22;
        v31 = *(v25 - 7) - 0x4B6D499041670D8DLL * v17;
        v32 = *(v25 - 5);
        v33 = *(v25 - 4);
        v34 = v31 + v26 + v32;
        v24 = (0xB492B66FBE98F273 * __ROR8__(v27, 37)) ^ v21;
        v17 = __ROR8__(v34, 44) + v31 + __ROR8__(v24 + v22 + v31 + v33, 21);
        v16 = 0xB492B66FBE98F273 * __ROR8__(v30, 33);
        v18 = v34 + v33;
        v35 = v16 + v21 + *(v25 - 3);
        v36 = v29 + v28 + v35;
        v21 = __ROR8__(v11 + v32 + v35 + *v25, 21) + v35 + __ROR8__(v36, 44);
        v22 = v36 + *v25;
        v25 += 8;
        v9 = v24;
        v23 -= 64;
      }

      while (v23);
      if ((v4 & 0x3F) == 0)
      {
        goto LABEL_12;
      }
    }

    v37 = *(a2 - 56);
    v39 = *(a2 - 16);
    v38 = *(a2 - 8);
    v40 = v24 + v22;
    v41 = (0xB492B66FBE98F273 * __ROR8__(v11 + v18 + v16 + v37, 37)) ^ v21;
    v43 = *(a2 - 32);
    v42 = *(a2 - 24);
    v11 = v42 + v18 - 0x4B6D499041670D8DLL * __ROR8__(v11 + v17 + v39, 42);
    v44 = v41 + v22;
    v45 = *(a2 - 64) - 0x4B6D499041670D8DLL * v17;
    v48 = a2 - 48;
    v46 = *(a2 - 48);
    v47 = *(v48 + 8);
    v49 = v45 + v37 + v46;
    v16 = 0xB492B66FBE98F273 * __ROR8__(v40, 33);
    v17 = __ROR8__(v49, 44) + v45 + __ROR8__(v44 + v45 + v47, 21);
    v18 = v49 + v47;
    v50 = v16 + v21 + v43;
    v51 = v42 + v39 + v50;
    v21 = __ROR8__(v11 + v46 + v50 + v38, 21) + v50 + __ROR8__(v51, 44);
    v22 = v51 + v38;
    v24 = v41;
LABEL_12:
    v52 = 0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v17 ^ v21)) >> 47) ^ (0x9DDFEA08EB382D69 * (v17 ^ v21)));
    v53 = v16 - 0x4B6D499041670D8DLL * (v4 ^ (v4 >> 47)) - 0x622015F714C7D297 * (v52 ^ (v52 >> 47));
    v54 = 0x9DDFEA08EB382D69 * ((v24 - 0x4B6D499041670D8DLL * (v11 ^ (v11 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v18 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v18 ^ v22)))) >> 47))) ^ v53);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) ^ ((0x9DDFEA08EB382D69 * (v53 ^ (v54 >> 47) ^ v54)) >> 47));
  }

  return sub_10002C4F4(a1, v4, 0xFF51AFD7ED558CCDLL);
}

char *sub_10002CAB8(char *a1, uint64_t *a2, void *__dst, unint64_t a4, uint64_t a5)
{
  __src = a5;
  if ((__dst + 1) <= a4)
  {
    *__dst = a5;
    return (__dst + 1);
  }

  v8 = a4 - __dst;
  memcpy(__dst, &__src, a4 - __dst);
  v9 = *a2;
  if (*a2)
  {
    result = a1;
    v11 = *(a1 + 9);
    v12 = *(a1 + 11);
    v13 = *(a1 + 1);
    v14 = *(a1 + 12);
    v15 = *(a1 + 13);
    v17 = *(a1 + 6);
    v16 = *(a1 + 7);
    v18 = *(a1 + 14);
    v19 = v18 ^ (0xB492B66FBE98F273 * __ROR8__(v11 + *(a1 + 8) + v12 + v13, 37));
    v20 = v12 - 0x4B6D499041670D8DLL * __ROR8__(v14 + v11 + v17, 42);
    v21 = 0xB492B66FBE98F273 * __ROR8__(v15 + *(a1 + 10), 33);
    v22 = *a1 - 0x4B6D499041670D8DLL * v14;
    v23 = v22 + v15;
    v25 = *(a1 + 2);
    v24 = *(a1 + 3);
    v26 = *(a1 + 5);
    v27 = v20 + v26;
    v28 = *(a1 + 4) + v18 + v21;
    v29 = v22 + v13 + v25;
    v30 = v26 + v17 + v28;
    *(a1 + 12) = __ROR8__(v23 + v24 + v19, 21) + v22 + __ROR8__(v29, 44);
    *(a1 + 13) = v30 + v16;
    *(a1 + 14) = __ROR8__(v28 + v16 + v25 + v27, 21) + v28 + __ROR8__(v30, 44);
    *(a1 + 10) = v19;
    *(a1 + 11) = v29 + v24;
    *(a1 + 8) = v21;
    *(a1 + 9) = v27;
    *a2 = v9 + 64;
    v31 = 8 - v8;
    v32 = &a1[8 - v8];
    if (v32 > a4)
    {
      return result;
    }

LABEL_7:
    memcpy(result, &__src + v8, v31);
    return v32;
  }

  result = a1;
  v33 = *(a1 + 15);
  v34 = __ROR8__(v33 ^ 0xB492B66FBE98F273, 49);
  v35 = v33 ^ (v33 >> 47);
  v36 = *(a1 + 1);
  v37 = v36 + v33 + v34;
  v38 = *(a1 + 6);
  v39 = *(a1 + 7);
  v40 = *(a1 + 5);
  v41 = v40 + v34 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v33 - 0x4B6D499041670D8DLL * v33, 42);
  v42 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v43 = 0x9DDFEA08EB382D69 * (v33 ^ (((0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))) ^ v33) >> 47) ^ (0x9DDFEA08EB382D69 * (v35 ^ (0xB492B66FBE98F273 * v33))));
  v44 = 0x9DDFEA08EB382D69 * (v43 ^ (v43 >> 47));
  v45 = 0xB492B66FBE98F273 * __ROR8__(v35 - 0x622015F714C7D297 * (v42 ^ (v42 >> 47)), 33);
  v46 = *a1 - 0x6D8ED9027DD26057 * v33;
  v48 = *(a1 + 2);
  v47 = *(a1 + 3);
  v49 = v46 + v36 + v48;
  v50 = v44 ^ (0xB492B66FBE98F273 * __ROR8__(v37, 37));
  v51 = __ROR8__(v49, 44) + v46 + __ROR8__(v46 + v35 + v47 + v50, 21);
  v52 = v45 + *(a1 + 4) + v44;
  *(a1 + 8) = v45;
  *(a1 + 9) = v41;
  *(a1 + 10) = v50;
  *(a1 + 11) = v49 + v47;
  *(a1 + 12) = v51;
  *(a1 + 13) = v40 + v38 + v52 + v39;
  *(a1 + 14) = __ROR8__(v40 + v38 + v52, 44) + v52 + __ROR8__(v41 + v48 + v39 + v52, 21);
  *a2 = 64;
  v31 = 8 - v8;
  v32 = &a1[8 - v8];
  if (v32 <= a4)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t **llvm::APInt::operator++(uint64_t **result)
{
  v1 = *(result + 2);
  if (v1 >= 0x41)
  {
    v4 = *result;
    v5 = (v1 + 63) >> 6;
    v6 = **result;
    **result = v6 + 1;
    if (v6 == -1)
    {
      v7 = v4[1];
      v4[1] = v7 + 1;
      if (v7 == -1)
      {
        v8 = v4 + 2;
        v9 = v5 - 2;
        do
        {
          if (!v9)
          {
            break;
          }

          --v9;
        }

        while (__CFADD__((*v8++)++, 1));
      }
    }

    v11 = &(*result)[(v5 - 1)];
    *v11 &= 0xFFFFFFFFFFFFFFFFLL >> -v1;
  }

  else
  {
    v2 = *result + 1;
    *result = v2;
    if (v1)
    {
      v3 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
    }

    else
    {
      v3 = 0;
    }

    *result = (v2 & v3);
  }

  return result;
}

uint64_t llvm::APInt::operator+=(uint64_t result, uint64_t **a2)
{
  v2 = *(result + 8);
  if (v2 >= 0x41)
  {
    v5 = 0;
    v6 = *result;
    v7 = *a2;
    v8 = (v2 + 63) >> 6;
    v9 = v8;
    do
    {
      v10 = *v7++;
      v11 = v10 + *v6;
      v12 = __CFADD__(v10, *v6);
      v13 = (v11 + 1) <= *v6;
      if (v5)
      {
        ++v11;
        v5 = v13;
      }

      else
      {
        v5 = v12;
      }

      *v6++ = v11;
      --v9;
    }

    while (v9);
    v14 = (*result + 8 * (v8 - 1));
    *v14 &= 0xFFFFFFFFFFFFFFFFLL >> -v2;
  }

  else
  {
    v3 = *a2 + *result;
    *result = v3;
    if (v2)
    {
      v4 = 0xFFFFFFFFFFFFFFFFLL >> -v2;
    }

    else
    {
      v4 = 0;
    }

    *result = v3 & v4;
  }

  return result;
}

unint64_t llvm::APInt::tcAdd(llvm::APInt *this, unint64_t *a2, unint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *this;
      v7 = *a2++;
      v6 = v7;
      v8 = v7 + *this;
      v9 = __CFADD__(v7, *this);
      v10 = v5 + v6;
      v11 = v10 + 1 <= v5;
      if (a3)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v8;
      }

      if (a3)
      {
        a3 = v11;
      }

      else
      {
        a3 = v9;
      }

      *this = v12;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

BOOL llvm::APInt::tcAddPart(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = __CFADD__(*this, a2);
    *this += a2;
    if (!v3)
    {
      return 0;
    }

    v4 = a3 == 1;
    if (a3 != 1)
    {
      v5 = *(this + 1);
      *(this + 1) = v5 + 1;
      if (v5 != -1)
      {
        return 0;
      }

      v6 = 2;
      do
      {
        v7 = v6;
        if (a3 == v6)
        {
          break;
        }

        v8 = *(this + v6++);
        *(this + v7) = v8 + 1;
      }

      while (v8 == -1);
      return v7 >= a3;
    }

    return v4;
  }

  return 1;
}

unint64_t llvm::APInt::tcSubtract(llvm::APInt *this, unint64_t *a2, unint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    do
    {
      v5 = *a2++;
      v6 = *this - v5;
      v7 = *this < v5;
      v8 = *this + ~v5;
      if (a3)
      {
        a3 = v8 >= *this;
      }

      else
      {
        v8 = v6;
        a3 = v7;
      }

      *this = v8;
      this = (this + 8);
      --v4;
    }

    while (v4);
  }

  return a3;
}

uint64_t llvm::APInt::operator*@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 8);
  if (v4 > 0x40)
  {
    operator new[]();
  }

  v5 = *a2 * *result;
  *(a3 + 8) = v4;
  if (v4)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> -v4;
  }

  else
  {
    v6 = 0;
  }

  *a3 = v5 & v6;
  return result;
}

uint64_t llvm::APInt::operator*=(uint64_t a1, void *a2)
{
  llvm::APInt::operator*(a1, a2, &v4);
  if (*(a1 + 8) >= 0x41u && *a1)
  {
    operator delete[]();
  }

  *a1 = v4;
  *(a1 + 8) = v5;
  return a1;
}

uint64_t llvm::APInt::tcMultiplyPart(llvm::APInt *this, unint64_t *a2, const unint64_t *a3, unint64_t a4, unsigned int a5, unsigned int a6, int a7)
{
  if (a5 >= a6)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (v7)
  {
    if (a3)
    {
      v8 = this;
      v9 = a2;
      if (a7)
      {
        do
        {
          v11 = *v9++;
          v10 = v11;
          if (v11)
          {
            v12 = v10;
            v13 = v10 * a3;
            v14 = HIDWORD(v10);
            v15 = v12 * HIDWORD(a3);
            v16 = HIDWORD(v15) + v14 * HIDWORD(a3);
            v17 = v14 * a3;
            v18 = HIDWORD(v17);
            v19 = ((v15 + v17) << 32) + v12 * a3;
            v20 = v19 + a4;
            v10 = (__PAIR128__((__PAIR128__(v16, v13) + __PAIR128__(v18, v15 << 32)) >> 64, v19) + __PAIR128__(v19 < v13 + (v15 << 32), a4)) >> 64;
            a4 = v20;
          }

          if (__CFADD__(a4, *v8))
          {
            ++v10;
          }

          *v8 += a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v21 = *v9++;
          v10 = v21;
          if (v21)
          {
            v22 = v10;
            v23 = v10 * a3;
            v24 = HIDWORD(v10);
            v25 = v22 * HIDWORD(a3);
            v26 = HIDWORD(v25) + v24 * HIDWORD(a3);
            v27 = v24 * a3;
            v28 = HIDWORD(v27);
            v29 = ((v25 + v27) << 32) + v22 * a3;
            v30 = v29 + a4;
            v10 = (__PAIR128__((__PAIR128__(v26, v23) + __PAIR128__(v28, v25 << 32)) >> 64, v29) + __PAIR128__(v29 < v23 + (v25 << 32), a4)) >> 64;
            a4 = v30;
          }

          *v8 = a4;
          v8 = (v8 + 8);
          a4 = v10;
          --v7;
        }

        while (v7);
      }

LABEL_24:
      if (a5 < a6)
      {
        goto LABEL_25;
      }

      goto LABEL_35;
    }

    if (a7)
    {
      v31 = this;
      do
      {
        v10 = __CFADD__(a4, *v31);
        *v31 += a4;
        v31 = (v31 + 8);
        a4 = v10;
        --v7;
      }

      while (v7);
      goto LABEL_24;
    }

    *this = a4;
    if (v7 != 1)
    {
      if (v7 <= 4)
      {
        v33 = 1;
LABEL_32:
        v37 = (this + 8 * v33);
        v38 = v7 - v33;
        do
        {
          *v37++ = 0;
          --v38;
        }

        while (v38);
        goto LABEL_34;
      }

      v34 = (v7 - 1) & 0xFFFFFFFFFFFFFFFCLL;
      v33 = v34 | 1;
      v35 = (this + 24);
      v36 = v34;
      do
      {
        *(v35 - 1) = 0uLL;
        *v35 = 0uLL;
        v35 += 2;
        v36 -= 4;
      }

      while (v36);
      if (v7 - 1 != v34)
      {
        goto LABEL_32;
      }
    }

LABEL_34:
    v10 = 0;
    if (a5 < a6)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v10 = a4;
  if (a5 < a6)
  {
LABEL_25:
    *(this + a5) = v10;
    return 0;
  }

LABEL_35:
  if (!v10)
  {
    v39 = 0;
    if (!a3 || a6 >= a5)
    {
      return v39;
    }

    v40 = &a2[a6];
    v41 = a5 - a6;
    while (!*v40++)
    {
      if (!--v41)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t llvm::APInt::tcCompare(llvm::APInt *this, const unint64_t *a2, const unint64_t *a3)
{
  v3 = a3;
  do
  {
    if (!(v3 * 8))
    {
      return 0;
    }

    v4 = *(this + v3 * 8 - 8);
    v5 = a2[--v3];
  }

  while (v4 == v5);
  if (v4 > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t llvm::APInt::flipAllBitsSlowCase(uint64_t this)
{
  v1 = *(this + 8);
  if (!v1)
  {
    v5 = 0;
LABEL_5:
    *this &= v5;
    return this;
  }

  v2 = *this;
  v3 = (v1 + 63) >> 6;
  if (v1 < 0xC1)
  {
    v4 = 0;
LABEL_9:
    v9 = v3 - v4;
    v10 = &v2->i64[v4];
    do
    {
      *v10 = ~*v10;
      ++v10;
      --v9;
    }

    while (v9);
    goto LABEL_11;
  }

  v4 = ((v1 + 63) >> 6) & 0x7FFFFFC;
  v6 = v2 + 1;
  v7 = v4;
  do
  {
    v8 = vmvnq_s8(*v6);
    v6[-1] = vmvnq_s8(v6[-1]);
    *v6 = v8;
    v6 += 2;
    v7 -= 4;
  }

  while (v7);
  if (v3 != v4)
  {
    goto LABEL_9;
  }

LABEL_11:
  v5 = 0xFFFFFFFFFFFFFFFFLL >> -v1;
  if (v1 < 0x41)
  {
    goto LABEL_5;
  }

  this = *this + 8 * (v3 - 1);
  *this &= v5;
  return this;
}

uint64_t *llvm::APInt::zext@<X0>(uint64_t *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 2) == a2)
    {
      *(a3 + 8) = a2;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *this;
  *(a3 + 8) = a2;
  *a3 = v4;
  return this;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APInt *a2)
{
  v2 = *(this + 2);
  if (v2 > 0x40)
  {
    v4 = sub_10002C76C(*this, *this + (((v2 + 63) >> 3) & 0x3FFFFFF8));
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    __src = *(this + 2);
    *v7 = v4;
  }

  else
  {
    *&v7[4] = 0u;
    v8 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v14 = 0xFF51AFD7ED558CCDLL;
    __src = v2;
    *v7 = *this;
  }

  return sub_10002C12C(&__src, 0, &v7[8], &v10 + 8);
}

uint64_t llvm::APInt::countLeadingZerosSlowCase(llvm::APInt *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = ((v1 + 63) >> 6) + 1;
  while (1)
  {
    v4 = *(*this + 8 * (v3 - 2));
    if (v4)
    {
      break;
    }

    v2 += 64;
    if (--v3 <= 1)
    {
      if ((v1 & 0x3F) != 0)
      {
        v5 = v1 | 0xFFFFFFC0;
      }

      else
      {
        v5 = 0;
      }

      return (v2 + v5);
    }
  }

  v7 = __clz(v4) + v2;
  if ((v1 & 0x3F) != 0)
  {
    v8 = v1 | 0xFFFFFFC0;
  }

  else
  {
    v8 = 0;
  }

  return (v7 + v8);
}

uint64_t llvm::APInt::countTrailingZerosSlowCase(unint64_t **this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = (v1 + 63) >> 6;
  v4 = *this;
  v5 = v3 << 6;
  while (!*v4)
  {
    ++v4;
    v2 -= 64;
    if (!--v3)
    {
      if (v1 >= v5)
      {
        return v5;
      }

      else
      {
        return v1;
      }
    }
  }

  v7 = __clz(__rbit64(*v4)) - v2;
  if (v1 >= v7)
  {
    return v7;
  }

  else
  {
    return v1;
  }
}

uint64_t llvm::APInt::trunc@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = this;
  v5 = *(this + 8);
  if (a2 > 0x40)
  {
    if (v5 == a2)
    {
      *(a3 + 8) = a2;
      operator new[]();
    }

    operator new[]();
  }

  if (v5 >= 0x41)
  {
    v3 = *this;
  }

  v6 = *v3;
  *(a3 + 8) = a2;
  v7 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
  if (!a2)
  {
    v7 = 0;
  }

  *a3 = v6 & v7;
  return this;
}

uint64_t llvm::APInt::sext@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 0x40)
  {
    if (*(this + 8) == a2)
    {
      *(a3 + 8) = a2;
      operator new[]();
    }

    operator new[]();
  }

  v4 = *(this + 8);
  v5 = (*this << -v4) >> -v4;
  if (!v4)
  {
    v5 = 0;
  }

  *(a3 + 8) = a2;
  v6 = 0xFFFFFFFFFFFFFFFFLL >> -a2;
  if (!a2)
  {
    v6 = 0;
  }

  *a3 = v5 & v6;
  return this;
}

uint64_t llvm::APInt::sextOrTrunc@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 8);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      *(a3 + 8) = v4;
      if (v4 > 0x40)
      {
        operator new[]();
      }

      *a3 = *this;
    }

    else
    {

      return llvm::APInt::trunc(this, a2, a3);
    }
  }

  else
  {

    return llvm::APInt::sext(this, a2, a3);
  }

  return this;
}

void llvm::APInt::lshrSlowCase(void **this, unsigned int a2)
{
  if (a2)
  {
    v2 = *this;
    v3 = (*(this + 2) + 63) >> 6;
    if (a2 >> 6 >= v3)
    {
      v4 = (*(this + 2) + 63) >> 6;
    }

    else
    {
      v4 = a2 >> 6;
    }

    v5 = (v3 - v4);
    v6 = a2 & 0x3F;
    if ((a2 & 0x3F) != 0)
    {
      if (a2 >> 6 < v3)
      {
        v7 = v2[v4] >> v6;
        *v2 = v7;
        if (v5 != 1)
        {
          v8 = v4 + 1;
          v9 = v2 + 1;
          v10 = 1 - v5;
          do
          {
            *(v9 - 1) = (v2[v8] << (64 - v6)) | v7;
            v7 = v2[v8] >> v6;
            *v9++ = v7;
            ++v8;
          }

          while (!__CFADD__(v10++, 1));
        }
      }
    }

    else
    {
      memmove(*this, &v2[v4], (8 * v5));
    }

    bzero(&v2[v5], (8 * v4));
  }
}

void llvm::APInt::tcShiftRight(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a2 - v3;
    v5 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v6 = *(this + v3) >> v5;
        *this = v6;
        if (v4 != 1)
        {
          v7 = 1 - v4;
          v8 = v3 + 1;
          v9 = (this + 8);
          do
          {
            *(v9 - 1) = (*(this + v8) << (64 - v5)) | v6;
            v6 = *(this + v8) >> v5;
            *v9++ = v6;
            ++v8;
          }

          while (!__CFADD__(v7++, 1));
        }
      }
    }

    else
    {
      v11 = this;
      memmove(this, this + 8 * v3, (8 * v4));
      this = v11;
    }

    v12 = this + 8 * v4;

    bzero(v12, 8 * v3);
  }
}

void llvm::APInt::tcShiftLeft(llvm::APInt *this, unint64_t *a2, unsigned int a3)
{
  if (a3)
  {
    if (a3 >> 6 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a3 >> 6;
    }

    v4 = a3 & 0x3F;
    if ((a3 & 0x3F) != 0)
    {
      if (a3 >> 6 < a2)
      {
        v5 = a2 - 1;
        v6 = *(this + v5 - v3) << v4;
        v7 = (this + 8 * v5);
        *v7 = v6;
        if (v5 > v3)
        {
          v8 = a2 - 2 - v3;
          v9 = (this + 8 * (a2 - 2));
          do
          {
            *v7 = (*(this + v8) >> (64 - v4)) | v6;
            --v5;
            v6 = *(this + v8) << v4;
            v7 = (this + 8 * v5);
            *v9-- = v6;
            --v8;
          }

          while (v3 < v5);
        }
      }

      v10 = 8 * v3;
    }

    else
    {
      v11 = this;
      memmove(this + 8 * v3, this, 8 * (a2 - v3));
      this = v11;
      v10 = 8 * v3;
    }

    bzero(this, v10);
  }
}

uint64_t llvm::APInt::udiv@<X0>(uint64_t this@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(this + 8);
  if (v3 > 0x40)
  {
    v5 = 0;
    v6 = (v3 + 63) >> 6;
    v7 = *this;
    v8 = v6 + 1;
    while (1)
    {
      v9 = v7[(v8 - 2)];
      if (v9)
      {
        break;
      }

      v5 += 64;
      if (--v8 <= 1)
      {
        goto LABEL_8;
      }
    }

    v5 += __clz(v9);
LABEL_8:
    v10 = v3 | 0xFFFFFFC0;
    if ((v3 & 0x3F) == 0)
    {
      v10 = 0;
    }

    v11 = v5 + v10;
    v12 = *(a2 + 2);
    if (v12 > 0x40)
    {
      v15 = 0;
      v13 = *a2;
      v16 = ((v12 + 63) >> 6) + 1;
      while (1)
      {
        v17 = v13[(v16 - 2)];
        if (v17)
        {
          break;
        }

        v15 += 64;
        if (--v16 <= 1)
        {
          goto LABEL_18;
        }
      }

      v15 += __clz(v17);
LABEL_18:
      v18 = v12 | 0xFFFFFFC0;
      if ((v12 & 0x3F) == 0)
      {
        v18 = 0;
      }

      v14 = v15 + v18;
      if (v3 == v11)
      {
LABEL_24:
        *(a3 + 8) = v3;
        operator new[]();
      }
    }

    else
    {
      v13 = *a2;
      v14 = v12 + __clz(*a2) - 64;
      if (v3 == v11)
      {
        goto LABEL_24;
      }
    }

    v19 = (v12 - v14);
    if (v19 == 1)
    {
      *(a3 + 8) = v3;
      operator new[]();
    }

    v20 = ((v3 - v11) + 63) >> 6;
    if (v20 >= (v19 + 63) >> 6)
    {
      v21 = v6;
      do
      {
        if (!(v21 * 8))
        {
          goto LABEL_29;
        }

        v22 = v7[v21 - 1];
        v23 = v13[--v21];
      }

      while (v22 == v23);
      if (v22 > v23)
      {
LABEL_29:
        if (memcmp(*this, v13, ((v3 + 63) >> 3) & 0x3FFFFFF8))
        {
          if (v20 == 1)
          {
            v25 = *v7;
            v26 = *v13;
            *(a3 + 8) = v3;
            operator new[]();
          }

          *(a3 + 8) = v3;
          operator new[]();
        }

        *(a3 + 8) = v3;
        operator new[]();
      }
    }

    goto LABEL_24;
  }

  v4 = *this / *a2;
  *(a3 + 8) = v3;
  *a3 = v4;
  return this;
}

void llvm::APInt::divide(llvm::APInt *this, const unint64_t *a2, int32x4_t *a3, const unint64_t *a4, int8x16_t *a5, int8x16_t *a6, unint64_t *a7)
{
  v166 = a5;
  v164 = a3;
  v167 = a4;
  v9 = (2 * a4);
  v10 = (2 * a2);
  if (a6)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = (v11 * v9 + 2 * (v10 - v9)) | 1;
  v165 = a2;
  v13 = (2 * a2) | 1u;
  v14 = 4 * v13;
  if (v12 > 0x80)
  {
    operator new[]();
  }

  v15 = &v168[v13];
  v16 = v9 + v13;
  v17 = &v168[v16];
  v18 = &v168[(v16 + v10)];
  if (a6)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v167;
  bzero(v168, v14);
  v21 = v165;
  if (v165)
  {
    if (v165 > 0xF)
    {
      v22 = 0;
      v47 = 8 * v165 - 8;
      if (&v169[v47] >= v169 && (v168 + v47) >= v168)
      {
        v48 = 0;
        v22 = v165 & 0xFFFFFFF8;
        v49 = (this + 32);
        do
        {
          v51 = v49[-2];
          v50 = v49[-1];
          v53 = *v49;
          v52 = v49[1];
          v49 += 4;
          v177.val[0] = vuzp1q_s32(v51, v50);
          v177.val[1] = vuzp2q_s32(v51, v50);
          v171.val[0] = vuzp1q_s32(v53, v52);
          v54 = (4 * v48) & 0x3FFFFFFC0;
          v55 = (v168 + v54);
          vst2q_f32(v55, v177);
          v171.val[1] = vuzp2q_s32(v53, v52);
          v56 = &v170[v54 + 16];
          vst2q_f32(v56, v171);
          v48 += 16;
        }

        while (((2 * v165) & 0x1FFFFFFF0) != v48);
        if (v22 == v165)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = 2 * v22;
    v24 = v165 - v22;
    v25 = (this + 8 * v22);
    do
    {
      v26 = *v25++;
      v168[v23] = v26;
      v168[v23 + 1] = HIDWORD(v26);
      v23 += 2;
      --v24;
    }

    while (v24);
  }

LABEL_15:
  v168[v10] = 0;
  bzero(v15, 4 * v9);
  if (!v20)
  {
    goto LABEL_20;
  }

  if (v20 <= 0xF)
  {
    v27 = 0;
LABEL_18:
    v28 = 2 * v27;
    v29 = v20 - v27;
    v30 = &v164->i64[v27];
    do
    {
      v31 = *v30++;
      v15->i32[v28] = v31;
      v15->i32[v28 + 1] = HIDWORD(v31);
      v28 += 2;
      --v29;
    }

    while (v29);
    goto LABEL_20;
  }

  v27 = 0;
  v57 = 8 * v20 - 8;
  if (v15->i64 + v57 + 4 < v15->i64 + 4)
  {
    goto LABEL_18;
  }

  if (&v15->i8[v57] < v15)
  {
    goto LABEL_18;
  }

  v58 = 0;
  v27 = v20 & 0xFFFFFFF8;
  v59 = v164 + 2;
  do
  {
    v61 = v59[-2];
    v60 = v59[-1];
    v63 = *v59;
    v62 = v59[1];
    v59 += 4;
    v178.val[0] = vuzp1q_s32(v61, v60);
    v178.val[1] = vuzp2q_s32(v61, v60);
    v172.val[0] = vuzp1q_s32(v63, v62);
    v64 = (4 * v58) & 0x3FFFFFFC0;
    v65 = (v15->i32 + v64);
    vst2q_f32(v65, v178);
    v172.val[1] = vuzp2q_s32(v63, v62);
    v66 = (v15[2].i32 + v64);
    vst2q_f32(v66, v172);
    v58 += 16;
  }

  while (((2 * v20) & 0x1FFFFFFF0) != v58);
  if (v27 != v20)
  {
    goto LABEL_18;
  }

LABEL_20:
  bzero(v17, 4 * v10);
  if (a6)
  {
    bzero(v19, 4 * v9);
  }

  if (v9)
  {
    while (!v15[-1].i32[v9 + 3])
    {
      if (!--v9)
      {
        v32 = v10;
        if (v10)
        {
          goto LABEL_30;
        }

        goto LABEL_34;
      }
    }

    LODWORD(v10) = v10 - v9;
    v32 = v9 + v10;
    if (!(v9 + v10))
    {
      goto LABEL_34;
    }
  }

  else
  {
    v32 = v10 - v9;
    if (v10 == v9)
    {
      goto LABEL_34;
    }
  }

LABEL_30:
  v33 = v32;
  while (!v168[v33 - 1])
  {
    LODWORD(v10) = v10 - 1;
    if (!(--v33 * 4))
    {
      LODWORD(v10) = -v9;
      break;
    }
  }

LABEL_34:
  v34 = (v9 - 1);
  if (v9 != 1)
  {
    v42 = __clz(v15->u32[v34]);
    v43 = (v10 + v9);
    if (!v42)
    {
      v67 = 0;
      goto LABEL_80;
    }

    if (!v43)
    {
      v67 = 0;
      goto LABEL_71;
    }

    v44 = 32 - v42;
    if (v43 > 7)
    {
      v45 = v43 & 0xFFFFFFF8;
      v68 = vdupq_n_s32(v42);
      v69 = v170;
      v70 = 0uLL;
      v71 = vnegq_s32(vdupq_n_s32(v44));
      v72 = v45;
      do
      {
        v73 = v69[-1];
        v74 = vshlq_u32(v73, v71);
        v75 = vextq_s8(v70, v74, 0xCuLL);
        v70 = vshlq_u32(*v69, v71);
        v76 = vorrq_s8(vshlq_u32(*v69, v68), vextq_s8(v74, v70, 0xCuLL));
        v69[-1] = vorrq_s8(vshlq_u32(v73, v68), v75);
        *v69 = v76;
        v69 += 2;
        v72 -= 8;
      }

      while (v72);
      v46 = v70.i32[3];
      v67 = v70.i32[3];
      if (v45 == v43)
      {
LABEL_71:
        if (!v9)
        {
          goto LABEL_80;
        }

        v79 = 32 - v42;
        if (v9 > 7)
        {
          v80 = v9 & 0xFFFFFFF8;
          v82 = vdupq_n_s32(v42);
          v83 = v15 + 1;
          v84 = 0uLL;
          v85 = vnegq_s32(vdupq_n_s32(v79));
          v86 = v80;
          do
          {
            v87 = v83[-1];
            v88 = vshlq_u32(v87, v85);
            v89 = vextq_s8(v84, v88, 0xCuLL);
            v84 = vshlq_u32(*v83, v85);
            v90 = vorrq_s8(vshlq_u32(*v83, v82), vextq_s8(v88, v84, 0xCuLL));
            v83[-1] = vorrq_s8(vshlq_u32(v87, v82), v89);
            *v83 = v90;
            v83 += 2;
            v86 -= 8;
          }

          while (v86);
          if (v80 == v9)
          {
LABEL_80:
            v168[v43] = v67;
            v94 = v9 - 2;
            v95 = v10;
            do
            {
              v97 = (v9 + v95);
              v98 = v168[(v97 - 1)] | (v168[v97] << 32);
              v99 = v15->u32[v34];
              v100 = v98 / v99;
              v101 = v98 % v99;
              if ((v98 / v99) == &_mh_execute_header || (v102 = v98 / v99, v100 * v15->u32[v94] > (v168[(v97 - 2)] | (v101 << 32))))
              {
                v102 = v100 - 1;
                v103 = v101 + v99;
                if (!HIDWORD(v103) && (v102 == &_mh_execute_header || v102 * v15->u32[v94] > (v168[(v97 - 2)] | (v103 << 32))))
                {
                  v102 = v100 - 2;
                }
              }

              if (v9)
              {
                v104 = 0;
                v105 = v15;
                v106 = v95;
                v107 = v9;
                do
                {
                  v108 = v105->i32[0];
                  v105 = (v105 + 4);
                  v109 = v102 * v108;
                  v110 = v168[v106] - (v104 + v109);
                  v168[v106] = v110;
                  v111 = HIDWORD(v109) - HIDWORD(v110);
                  v104 = v111;
                  ++v106;
                  --v107;
                }

                while (v107);
                v112 = v168[v97];
                v168[v97] = v112 - v111;
                v17[v95] = v102;
                if (v111 > v112)
                {
                  LOBYTE(v113) = 0;
                  v17[v95] = v102 - 1;
                  v114 = v95;
                  v115 = v15;
                  v116 = v9;
                  do
                  {
                    while (1)
                    {
                      v118 = v115->i32[0];
                      v115 = (v115 + 4);
                      v117 = v118;
                      v119 = v168[v114];
                      v120 = v118 >= v119 ? v168[v114] : v117;
                      v121 = v117 + (v113 & 1) + v119;
                      v168[v114] = v121;
                      if (v121 < v120)
                      {
                        break;
                      }

                      v113 = v113 & (v121 == v120);
                      ++v114;
                      if (!--v116)
                      {
                        goto LABEL_100;
                      }
                    }

                    v113 = 1;
                    ++v114;
                    --v116;
                  }

                  while (v116);
LABEL_100:
                  v168[v97] += v113;
                }
              }

              else
              {
                v17[v95] = v102;
              }

              v96 = v95-- <= 0;
            }

            while (!v96);
            v38 = v166;
            if (v19)
            {
              if (v42)
              {
                if ((v34 & 0x80000000) == 0)
                {
                  v122 = 0;
                  do
                  {
                    v123 = v168[v34];
                    *(v19 + 4 * v34) = (v123 >> v42) | v122;
                    v122 = v123 << (32 - v42);
                    v96 = v34-- <= 0;
                  }

                  while (!v96);
                }
              }

              else if ((v34 & 0x80000000) == 0)
              {
                if (v34 <= 0x1A)
                {
                  goto LABEL_111;
                }

                v156 = 4 * v34;
                if (v19 > v19 + 4 * v34)
                {
                  goto LABEL_111;
                }

                if (v168 > &v168[v156 / 4])
                {
                  goto LABEL_111;
                }

                if (v168 - v19 < 0x20)
                {
                  goto LABEL_111;
                }

                v157 = v34 + 1;
                v158 = (v34 + 1) & 0xFFFFFFF8;
                v34 -= v158;
                v159 = v156 - 12;
                v160 = (v19 + v156 - 12);
                v161 = (v168 + v159);
                v162 = v158;
                do
                {
                  v163 = *v161;
                  *(v160 - 1) = *(v161 - 1);
                  *v160 = v163;
                  v160 -= 2;
                  v161 -= 2;
                  v162 -= 8;
                }

                while (v162);
                if (v157 != v158)
                {
LABEL_111:
                  do
                  {
                    *(v19 + 4 * v34) = v168[v34];
                    v96 = v34-- <= 0;
                  }

                  while (!v96);
                }
              }
            }

            goto LABEL_112;
          }

          v81 = v84.i32[3];
        }

        else
        {
          v80 = 0;
          v81 = 0;
        }

        v91 = v9 - v80;
        v92 = &v15->i32[v80];
        do
        {
          v93 = *v92 >> v79;
          *v92 = (*v92 << v42) | v81;
          ++v92;
          v81 = v93;
          --v91;
        }

        while (v91);
        goto LABEL_80;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
    }

    v77 = v43 - v45;
    v78 = &v168[v45];
    do
    {
      v67 = *v78 >> v44;
      *v78 = (*v78 << v42) | v46;
      ++v78;
      v46 = v67;
      --v77;
    }

    while (v77);
    goto LABEL_71;
  }

  v35 = 0;
  if ((v10 & 0x80000000) == 0)
  {
    v36 = v15->u32[0];
    v37 = v10;
    v38 = v166;
    while (1)
    {
      v39 = v35;
      v35 = v168[v37];
      v40 = v35 | (v39 << 32);
      if (v40)
      {
        if (v40 >= v36)
        {
          if (v40 == v36)
          {
            v35 = 0;
            v17[v37] = 1;
          }

          else
          {
            v41 = v40 / v36;
            v17[v37] = v41;
            v35 = (v35 - v36 * v41);
          }

          goto LABEL_39;
        }
      }

      else
      {
        v35 = 0;
      }

      v17[v37] = 0;
LABEL_39:
      if (--v37 == -1)
      {
        goto LABEL_62;
      }
    }
  }

  v38 = v166;
LABEL_62:
  if (v19)
  {
    *v19 = v35;
  }

LABEL_112:
  if (v38 && v21)
  {
    if (v21 < 8)
    {
      v124 = 0;
LABEL_119:
      v139 = 2 * v124;
      v140 = v21 - v124;
      v141 = v38 + v124;
      do
      {
        *v141++ = v17[v139] | (v17[v139 + 1] << 32);
        v139 += 2;
        --v140;
      }

      while (v140);
      goto LABEL_121;
    }

    v125 = 0;
    v124 = v21 & 0xFFFFFFF8;
    v126 = v38 + 2;
    do
    {
      v127 = (4 * v125) & 0x3FFFFFFC0;
      v128 = (v17 + v127);
      v173 = vld2q_f32(v128);
      v129 = (v17 + v127 + 32);
      v175 = vld2q_f32(v129);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v135 = vshll_n_s32(*v173.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v137.i64[0] = v173.val[0].u32[2];
      v137.i64[1] = v173.val[0].u32[3];
      v138 = v137;
      v137.i64[0] = v173.val[0].u32[0];
      v137.i64[1] = v173.val[0].u32[1];
      v173.val[0] = v137;
      v137.i64[0] = v175.val[0].u32[2];
      v137.i64[1] = v175.val[0].u32[3];
      v173.val[1] = v137;
      v137.i64[0] = v175.val[0].u32[0];
      v137.i64[1] = v175.val[0].u32[1];
      v126[-2] = vorrq_s8(v135, v173.val[0]);
      v126[-1] = vorrq_s8(_Q4, v138);
      *v126 = vorrq_s8(vshll_n_s32(*v175.val[1].f32, 0x20uLL), v137);
      v126[1] = vorrq_s8(_Q6, v173.val[1]);
      v126 += 4;
      v125 += 16;
    }

    while (((2 * v21) & 0x1FFFFFFF0) != v125);
    if (v124 != v21)
    {
      goto LABEL_119;
    }
  }

LABEL_121:
  if (a6 && v20)
  {
    if (v20 < 8)
    {
      v142 = 0;
LABEL_128:
      v153 = 2 * v142;
      v154 = v20 - v142;
      v155 = a6 + v142;
      do
      {
        *v155++ = *(v19 + 4 * v153) | (*(v19 + 4 * (v153 + 1)) << 32);
        v153 += 2;
        --v154;
      }

      while (v154);
      return;
    }

    v143 = 0;
    v142 = v20 & 0xFFFFFFF8;
    v144 = a6 + 2;
    do
    {
      v145 = (4 * v143) & 0x3FFFFFFC0;
      v146 = (v19 + v145);
      v174 = vld2q_f32(v146);
      v147 = (v19 + 32 + v145);
      v176 = vld2q_f32(v147);
      __asm { SHLL2           V4.2D, V1.4S, #0x20 ; ' ' }

      v149 = vshll_n_s32(*v174.val[1].f32, 0x20uLL);
      __asm { SHLL2           V6.2D, V3.4S, #0x20 ; ' ' }

      v151.i64[0] = v174.val[0].u32[2];
      v151.i64[1] = v174.val[0].u32[3];
      v152 = v151;
      v151.i64[0] = v174.val[0].u32[0];
      v151.i64[1] = v174.val[0].u32[1];
      v174.val[0] = v151;
      v151.i64[0] = v176.val[0].u32[2];
      v151.i64[1] = v176.val[0].u32[3];
      v174.val[1] = v151;
      v151.i64[0] = v176.val[0].u32[0];
      v151.i64[1] = v176.val[0].u32[1];
      v144[-2] = vorrq_s8(v149, v174.val[0]);
      v144[-1] = vorrq_s8(_Q4, v152);
      *v144 = vorrq_s8(vshll_n_s32(*v176.val[1].f32, 0x20uLL), v151);
      v144[1] = vorrq_s8(_Q6, v174.val[1]);
      v144 += 4;
      v143 += 16;
    }

    while (((2 * v20) & 0x1FFFFFFF0) != v143);
    if (v142 != v20)
    {
      goto LABEL_128;
    }
  }
}

void llvm::APInt::udivrem(llvm::APInt *this, const llvm::APInt *a2, const llvm::APInt *a3, llvm::APInt *a4, llvm::APInt *a5, uint64_t a6, unint64_t *a7)
{
  v9 = *(this + 2);
  if (v9 <= 0x40)
  {
    if (*(a3 + 2) >= 0x41u && *a3)
    {
      operator delete[]();
    }

    v10 = *this % *a2;
    *a3 = *this / *a2;
    *(a3 + 2) = v9;
    if (*(a4 + 2) >= 0x41u)
    {
      if (*a4)
      {
        operator delete[]();
      }
    }

    *a4 = v10;
    *(a4 + 2) = v9;
    return;
  }

  v11 = 0;
  v12 = (v9 + 63) >> 6;
  v13 = v12 + 1;
  while (1)
  {
    v14 = *(*this + 8 * (v13 - 2));
    if (v14)
    {
      break;
    }

    v11 += 64;
    if (--v13 <= 1)
    {
      goto LABEL_14;
    }
  }

  v11 += __clz(v14);
LABEL_14:
  v15 = v9 | 0xFFFFFFC0;
  if ((v9 & 0x3F) == 0)
  {
    v15 = 0;
  }

  v16 = v11 + v15;
  v17 = *(a2 + 2);
  if (v17 <= 0x40)
  {
    v18 = v17 + __clz(*a2) - 64;
    if (v9 != v16)
    {
      goto LABEL_18;
    }

LABEL_30:
    operator new[]();
  }

  v24 = 0;
  v25 = ((v17 + 63) >> 6) + 1;
  while (1)
  {
    v26 = *(*a2 + 8 * (v25 - 2));
    if (v26)
    {
      break;
    }

    v24 += 64;
    if (--v25 <= 1)
    {
      goto LABEL_27;
    }
  }

  v24 += __clz(v26);
LABEL_27:
  v27 = v17 | 0xFFFFFFC0;
  if ((v17 & 0x3F) == 0)
  {
    v27 = 0;
  }

  v18 = v24 + v27;
  if (v9 == v16)
  {
    goto LABEL_30;
  }

LABEL_18:
  v19 = ((v9 - v16) + 63) >> 6;
  v20 = (v17 - v18);
  v21 = (v20 + 63) >> 6;
  v22 = *(this + 2);
  if (v20 == 1)
  {
    if (a3 != this)
    {
      v23 = *(a3 + 2);
      if (v12 != (v23 + 63) >> 6)
      {
        if (v23 >= 0x41 && *a3)
        {
          operator delete[]();
        }

        *(a3 + 2) = v9;
        operator new[]();
      }

      *(a3 + 2) = v9;
      memcpy(*a3, *this, ((v9 + 63) >> 3) & 0x3FFFFFF8);
    }

    operator new[]();
  }

  if (v19 < v21)
  {
    goto LABEL_37;
  }

  if (v22 > 0x40)
  {
    v29 = *a2;
    v30 = (v22 + 63) >> 3;
    v31 = v30 & 0x3FFFFFF8;
    do
    {
      if (!v31)
      {
        goto LABEL_52;
      }

      v32 = *(*this + v31 - 8);
      v33 = *&v29[v31 - 8];
      v31 -= 8;
    }

    while (v32 == v33);
    if (v32 <= v33)
    {
LABEL_37:
      v28 = *(a4 + 2);
      if (v28 <= 0x40 && v22 <= 0x40)
      {
        *a4 = *this;
        *(a4 + 2) = *(this + 2);
        goto LABEL_76;
      }

      if (a4 != this)
      {
        if ((v22 + 63) >> 6 == (v28 + 63) >> 6)
        {
          *(a4 + 2) = v22;
          if (v22 > 0x40)
          {
            memcpy(*a4, *this, ((v22 + 63) >> 3) & 0x3FFFFFF8);
            goto LABEL_76;
          }
        }

        else
        {
          if (v28 >= 0x41 && *a4)
          {
            v37 = *a4;
            operator delete[]();
          }

          *(a4 + 2) = v22;
          if (v22 >= 0x41)
          {
            operator new[]();
          }
        }

        *a4 = *this;
      }

LABEL_76:
      operator new[]();
    }

LABEL_52:
    if (!memcmp(*this, v29, v30 & 0x3FFFFFF8))
    {
LABEL_43:
      operator new[]();
    }
  }

  else
  {
    if (*this < *a2)
    {
      goto LABEL_37;
    }

    if (*this == *a2)
    {
      goto LABEL_43;
    }
  }

  v34 = *(a3 + 2);
  if (v12 != (v34 + 63) >> 6)
  {
    if (v34 >= 0x41 && *a3)
    {
      operator delete[]();
    }

    *(a3 + 2) = v9;
    operator new[]();
  }

  *(a3 + 2) = v9;
  v35 = *(a4 + 2);
  if (v12 != (v35 + 63) >> 6)
  {
    if (v35 >= 0x41 && *a4)
    {
      operator delete[]();
    }

    *(a4 + 2) = v9;
    operator new[]();
  }

  *(a4 + 2) = v9;
  v38 = *this;
  if (v19 == 1)
  {
    v39 = *v38;
    v40 = **a2;
    v41 = *v38 / v40;
    sub_10002F308(a3, v41);

    sub_10002F308(a4, v39 - v41 * v40);
  }

  else
  {
    llvm::APInt::divide(v38, v19, *a2, v21, *a3, *a4, a7);
    bzero((*a3 + 8 * v19), (8 * (v12 - v19)));
    v36 = (*a4 + 8 * v21);

    bzero(v36, (8 * (v12 - v21)));
  }
}