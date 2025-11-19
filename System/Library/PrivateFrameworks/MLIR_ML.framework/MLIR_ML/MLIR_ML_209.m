uint64_t llvm::detail::IEEEFloat::roundSignificandWithExponent()
{
  v0 = MEMORY[0x28223BE20]();
  v63[0] = v3;
  v62 = v4;
  v5 = v0;
  v75 = *MEMORY[0x277D85DE8];
  *&v63[1] = 0xFFFF800100007FFFLL;
  v64 = 0;
  v65 = 0;
  v59 = v2;
  v7 = v2 == 1 || v2 == 4;
  v60 = v1;
  v61 = v7;
  v8 = (*(*v0 + 8) + 74) >> 6;
  if (v1 >= 0)
  {
    v9 = v1;
  }

  else
  {
    v9 = -v1;
  }

  v71 = 390625;
  v66[0] = llvm::powerOf5(unsigned long long *,unsigned int)::firstEightPowers[v9 & 7];
  if (v9 < 8)
  {
    v10 = 1;
    goto LABEL_34;
  }

  v11 = 1;
  if ((v9 & 8) != 0)
  {
    v13 = &v67;
    v12 = v66;
    llvm::APInt::tcFullMultiply(&v67, v66, &v71, 1, 1);
    if (v68)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    if (v9 >= 0x10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v12 = &v67;
    v13 = v66;
    if (v9 >= 0x10)
    {
LABEL_14:
      v14 = v9 >> 4;
      v15 = &v72;
      v16 = 1;
      do
      {
        while (1)
        {
          llvm::APInt::tcFullMultiply(v15, v15 - v16, v15 - v16, v16, v16);
          v20 = 2 * v16 - 1;
          v16 = *(v15 + v20) ? (2 * v16) : v20;
          if (v14)
          {
            break;
          }

          v18 = v13;
          v15 = (v15 + 8 * v16);
          v19 = v14 >= 2;
          v14 >>= 1;
          if (!v19)
          {
            goto LABEL_25;
          }
        }

        llvm::APInt::tcFullMultiply(v12, v13, v15, v11, v16);
        v17 = v16 + v11 - 1;
        if (v12[v17])
        {
          v11 = (v16 + v11);
        }

        else
        {
          v11 = v17;
        }

        v18 = v12;
        v12 = v13;
        v13 = v18;
        v15 = (v15 + 8 * v16);
        v19 = v14 >= 2;
        v14 >>= 1;
      }

      while (v19);
LABEL_25:
      if (v18 != v66)
      {
LABEL_26:
        v10 = v11;
        llvm::APInt::tcAssign(v66, v18, v11);
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

  v18 = v13;
  if (v13 != v66)
  {
    goto LABEL_26;
  }

LABEL_32:
  v10 = v11;
  do
  {
LABEL_34:
    LODWORD(v64) = (v8 << 6) - 1;
    v21 = *(*v5 + 8);
    v71 = &v63[1];
    if (v8 << 6 > 0x7F)
    {
      operator new[]();
    }

    v22 = v72;
    v74 = v74 & 0xF0 | 3;
    v73 = v63[2] - 1;
    if ((v64 - 64) >= 0xFFFFFF80)
    {
      v22 = &v72;
    }

    llvm::APInt::tcSet(v22, 0, (v64 + 64) >> 6);
    v23 = v74 & 0xF0;
    v74 = v74 & 0xF0 | v5[20] & 8 | 3;
    if (*(v71 + 20) == 2)
    {
      v74 = v23 | 3;
    }

    v73 = *(v71 + 4) - 1;
    v24 = *(v71 + 8);
    if ((v24 - 64) >= 0xFFFFFF80)
    {
      v25 = &v72;
    }

    else
    {
      v25 = v72;
    }

    llvm::APInt::tcSet(v25, 0, (v24 + 64) >> 6);
    v67 = &v63[1];
    if ((v64 + 64) > 0x7F)
    {
      operator new[]();
    }

    v26 = v68;
    v27 = (v8 << 6) - 1 - v21;
    v70 = v70 & 0xF0 | 3;
    v69 = v63[2] - 1;
    if ((v64 - 64) >= 0xFFFFFF80)
    {
      v26 = &v68;
    }

    llvm::APInt::tcSet(v26, 0, (v64 + 64) >> 6);
    v28 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v71, v62, v63[0], 1);
    v29 = v10;
    v30 = llvm::detail::IEEEFloat::convertFromUnsignedParts(&v67, v66, v10, 1);
    v73 += v60;
    if (v60 < 0)
    {
      v31 = llvm::detail::IEEEFloat::divideSignificand(&v71, &v67);
      v34 = *(*v5 + 4);
      v33 = (v8 << 6) - 1 - v21;
      v35 = v34 - v73;
      if (v34 > v73)
      {
        v33 = v35 + v27;
        if (v35 + v27 >= v64)
        {
          v27 = v64;
        }

        else
        {
          v27 += v35;
        }
      }

      v32 = 2 * ((v30 | v31) != 0);
    }

    else
    {
      v31 = llvm::detail::IEEEFloat::multiplySignificand(&v71, &v67);
      v32 = v30 != 0;
      v33 = (v8 << 6) - 1 - v21;
    }

    v36 = v31 != 0;
    if (v28)
    {
      ++v32;
    }

    v37 = 2 * v36;
    v38 = v36 | (2 * v32);
    if (v32)
    {
      v39 = v38;
    }

    else
    {
      v39 = v37;
    }

    if ((*(v71 + 8) - 64) >= 0xFFFFFF80)
    {
      v40 = &v72;
    }

    else
    {
      v40 = v72;
    }

    v41 = (v27 - 1) >> 6;
    v42 = v40[v41] & (0xFFFFFFFFFFFFFFFFLL >> ((v27 - 1) & 0x3F ^ 0x3F));
    v43 = 1 << (v27 - 1);
    if (!v61)
    {
      v43 = 0;
    }

    if (v27 - 1 > 0x3F)
    {
      if (v42 == v43)
      {
        v46 = v41 - 1;
        while (v46)
        {
          if (v40[v46--])
          {
            goto LABEL_78;
          }
        }

        v45 = 2 * *v40;
        if (v45 >= v39)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (v42 != v43 - 1)
        {
LABEL_78:
          v45 = -2;
LABEL_82:
          v50 = *(*v5 + 8);
          v51 = (v5 + 8);
          if ((v50 - 64) <= 0xFFFFFF7F)
          {
            v51 = *(v5 + 1);
          }

          llvm::APInt::tcExtract(v51, ((v50 + 64) >> 6), v40, (v64 - v27), v27);
          *(v5 + 4) = v73 + v27 + *(*v5 + 8) - v64;
          v52 = *(v71 + 8);
          if ((v52 - 64) >= 0xFFFFFF80)
          {
            v53 = &v72;
          }

          else
          {
            v53 = v72;
          }

          v54 = v52 + 64;
          v55 = llvm::APInt::tcLSB(v53, ((v52 + 64) >> 6));
          if (v55 >= v33)
          {
            v56 = 0;
          }

          else if (v55 + 1 == v33)
          {
            v56 = 2;
          }

          else if ((v54 & 0xFFFFFFC0) >= v33 && llvm::APInt::tcExtractBit(v53, (v33 - 1)))
          {
            v56 = 3;
          }

          else
          {
            v56 = 1;
          }

          v58 = llvm::detail::IEEEFloat::normalize(v5, v59, v56);
          goto LABEL_96;
        }

        v48 = v41 - 1;
        while (v48)
        {
          v49 = v40[v48--];
          if (v49 != -1)
          {
            goto LABEL_78;
          }
        }

        v45 = -2 * *v40;
        if (v45 >= v39)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      v44 = v42 - v43;
      if ((v42 - v43) < 0)
      {
        v44 = v43 - v42;
      }

      v45 = 2 * v44;
      if (2 * v44 >= v39)
      {
        goto LABEL_82;
      }
    }

LABEL_96:
    if ((v67[2] - 64) <= 0xFFFFFF7F && v68)
    {
      MEMORY[0x259C63150](v68, 0x1000C8000313F17);
    }

    v10 = v29;
    if ((*(v71 + 8) - 64) <= 0xFFFFFF7F && v72)
    {
      MEMORY[0x259C63150](v72, 0x1000C8000313F17);
    }

    v8 *= 2;
  }

  while (v45 < v39);
  return v58;
}

_BYTE *llvm::detail::IEEEFloat::convertFromDecimalString@<X0>(_BYTE *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
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
        goto LABEL_89;
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
      goto LABEL_89;
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
LABEL_89:
    llvm::inconvertibleErrorCode(result);
    operator new();
  }

  v32 = (v13 + 1);
  if (v13 + 1 == v6 || ((v33 = *v32, v33 == 45) || v33 == 43) && v13 + 2 == v6)
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
      v27 = *result;
      if (v24 < -51082 || 28738 * v24 + 28738 <= 8651 * (v27[1] - v27[2]))
      {
        result[20] = result[20] & 0xF8 | 2;
        v28 = v27[2];
        v29 = (result + 8);
        v31 = result;
        if ((v28 - 64) <= 0xFFFFFF7F)
        {
          v29 = *v29;
        }

        llvm::APInt::tcSet(v29, 0, (v28 + 64) >> 6);
        result = llvm::detail::IEEEFloat::normalize(v31, a4, 1);
        goto LABEL_60;
      }

      if (42039 * v24 - 42039 < 12655 * *v27)
      {
        operator new[]();
      }
    }

    result = llvm::detail::IEEEFloat::handleOverflow(result, a4);
LABEL_60:
    v26 = result;
    goto LABEL_61;
  }

  if (v33 == 45 || (v34 = *v32, v33 == 43))
  {
    v32 = (v13 + 2);
    if (v13 + 2 == v6)
    {
      goto LABEL_89;
    }

    v34 = *v32;
  }

  v35 = v34 - 48;
  if (v35 > 9)
  {
    goto LABEL_89;
  }

  v36 = v32 + 1;
  while (v36 != v6)
  {
    v37 = *v36 - 48;
    if (v37 >= 0xA)
    {
      goto LABEL_89;
    }

    v35 = v37 + 10 * v35;
    ++v36;
    if (v35 >> 6 >= 0x177)
    {
      v35 = 24000;
      break;
    }
  }

  if (v33 == 45)
  {
    v12 = -v35;
  }

  else
  {
    v12 = v35;
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
  v25 = result[20] & 0xF8 | 3;
  result[20] = v25;
  v26 = 0;
  if (*(*result + 20) == 2)
  {
    result[20] = v25 & 0xF3;
  }

LABEL_61:
  *(a5 + 8) &= ~1u;
  *a5 = v26;
  return result;
}

uint64_t llvm::detail::IEEEFloat::convertFromStringSpecials(llvm::detail::IEEEFloat *a1, unsigned __int8 *a2, size_t a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v42 = v3;
  v43 = v4;
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

        llvm::APInt::tcSet(v25, 0, (v24 + 64) >> 6);
        return 1;
      }

      v22 = 0;
      v23 = 0;
      goto LABEL_45;
    }

LABEL_15:
    v8 = *a2;
    if (v8 != 45)
    {
      v7 = 0;
      v15 = a3;
      goto LABEL_30;
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
LABEL_29:
        v8 = *a2;
        v7 = 1;
        goto LABEL_30;
      }

      v16 = a1;
      v17 = a2;
      v18 = memcmp(a2, "inf", 3uLL);
      a1 = v16;
      if (!v18)
      {
LABEL_54:
        llvm::detail::IEEEFloat::makeInf(a1, 1);
        return 1;
      }

      v19 = "Inf";
      v20 = v17;
    }

    v26 = memcmp(v20, v19, v15);
    a2 = v17;
    v27 = v26;
    a1 = v16;
    if (v27)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
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
LABEL_30:
  if ((v8 | 0x20) == 0x73)
  {
    if (--v15 < 3)
    {
      return 0;
    }

    ++a2;
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  if ((*a2 != 24942 || a2[2] != 110) && (*a2 != 24910 || a2[2] != 78))
  {
    return 0;
  }

  v31 = a2 + 3;
  v32 = v15 - 3;
  v40 = a2 + 3;
  v41 = v15 - 3;
  if (v15 > 3)
  {
    v33 = *v31;
    if (v33 == 40)
    {
      if (v32 < 3 || a2[v15 - 1] != 41)
      {
        return 0;
      }

      v31 = a2 + 4;
      v32 = v15 - 5;
      v40 = a2 + 4;
      v41 = v15 - 5;
      v33 = a2[4];
    }

    v34 = v7;
    v35 = a1;
    if (v33 == 48)
    {
      v36 = v32 - 2;
      if (v32 >= 2 && __tolower(v31[1]) == 120)
      {
        v40 = v31 + 2;
        v41 = v36;
        v37 = 16;
      }

      else
      {
        v37 = 8;
      }
    }

    else
    {
      v37 = 10;
    }

    v39 = 1;
    v38 = 0;
    if ((llvm::StringRef::getAsInteger(&v40, v37, &v38) & 1) == 0)
    {
      llvm::detail::IEEEFloat::makeNaN(v35, v28, v34, &v38);
      if (v39 >= 0x41 && v38)
      {
        MEMORY[0x259C63150](v38, 0x1000C8000313F17);
      }

      return 1;
    }

    if (v39 >= 0x41)
    {
      if (v38)
      {
        MEMORY[0x259C63150](v38, 0x1000C8000313F17);
      }
    }

    return 0;
  }

  v23 = v7;
  v22 = v28;
LABEL_45:
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

    llvm::APInt::tcSet(v5, 0, (v4 + 64) >> 6);
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
      llvm::createError(&v12, &v13);
    }

    return llvm::detail::IEEEFloat::convertFromHexadecimalString(v9, v8 + 2, v7 - 2, a4, a5);
  }

  else
  {

    return llvm::detail::IEEEFloat::convertFromDecimalString(v9, v8, v7, a4, a5);
  }
}

uint64_t llvm::detail::IEEEFloat::convertToHexString(llvm::APInt *a1, _BYTE *a2, unsigned int a3, int a4, int a5)
{
  v5 = a2;
  v6 = *(a1 + 20);
  if ((v6 & 8) != 0)
  {
    *a2++ = 45;
    v6 = *(a1 + 20);
  }

  v7 = v6 & 7;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      a2 = llvm::detail::IEEEFloat::convertNormalToHexString(a1, a2, a3, a4, a5);
    }

    else if (v7 == 3)
    {
      *a2 = 48;
      if (a4)
      {
        v9 = 88;
      }

      else
      {
        v9 = 120;
      }

      a2[1] = v9;
      a2[2] = 48;
      if (a3 < 2)
      {
        v13 = a2 + 3;
      }

      else
      {
        v10 = a2 + 4;
        a2[3] = 46;
        v11 = a3 - 1;
        v12 = a4;
        memset(a2 + 4, 48, v11);
        a4 = v12;
        v13 = &v10[v11];
      }

      if (a4)
      {
        v15 = 80;
      }

      else
      {
        v15 = 112;
      }

      *v13 = v15;
      a2 = v13 + 2;
      v13[1] = 48;
    }
  }

  else if (v7)
  {
    v8 = "nan";
    if (a4)
    {
      v8 = "NAN";
    }

    *a2 = *v8;
    a2[2] = v8[2];
    a2 += 3;
  }

  else
  {
    v14 = 0x7974696E69666E69;
    if (a4)
    {
      v14 = 0x5954494E49464E49;
    }

    *a2 = v14;
    a2 += 8;
  }

  *a2 = 0;
  return (a2 - v5);
}

_BYTE *llvm::detail::IEEEFloat::convertNormalToHexString(llvm::APInt *this, _BYTE *a2, unsigned int a3, int a4, int a5)
{
  v64 = *MEMORY[0x277D85DE8];
  *a2 = 48;
  v62 = a4;
  if (a4)
  {
    v8 = 88;
  }

  else
  {
    v8 = 120;
  }

  a2[1] = v8;
  if (a4)
  {
    v9 = "0123456789ABCDEF0";
  }

  else
  {
    v9 = "0123456789abcdef0";
  }

  v11 = (this + 8);
  v12 = *(*this + 8);
  v13 = (this + 8);
  if ((v12 - 64) <= 0xFFFFFF7F)
  {
    v13 = *v11;
  }

  v14 = v12 + 64;
  v61 = v12 + 3;
  v15 = (v12 - llvm::APInt::tcLSB(v13, ((v12 + 64) >> 6)) + 6) >> 2;
  if (!a3)
  {
    v20 = 0;
    a3 = v15;
    goto LABEL_29;
  }

  if (v15 <= a3)
  {
    goto LABEL_28;
  }

  *&v60[3] = a5;
  v16 = llvm::APInt::tcLSB(v13, (v14 >> 6));
  v17 = (v61 - 4 * a3);
  if (v16 >= v17)
  {
    v20 = 0;
    v19 = 0;
    v18 = *&v60[3];
  }

  else
  {
    v18 = *&v60[3];
    if (v16 + 1 == v17)
    {
      v19 = 2;
      v20 = 1;
    }

    else if ((v14 & 0xFFFFFFC0) >= v17 && (Bit = llvm::APInt::tcExtractBit(v13, (v17 - 1)), v17 = (v61 - 4 * a3), Bit))
    {
      v19 = 3;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 1;
    }
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v20 = (*(this + 20) & 8) == 0;
    }

    else if (v18 == 3)
    {
      v20 = (*(this + 20) >> 3) & 1;
    }

    goto LABEL_29;
  }

  if (!v18)
  {
    goto LABEL_28;
  }

  if (v19 == 3)
  {
    v20 = 1;
    goto LABEL_29;
  }

  if (v19 != 2 || (*(this + 20) & 7) == 3)
  {
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
  {
    v11 = *v11;
  }

  v20 = llvm::APInt::tcExtractBit(v11, v17) != 0;
LABEL_29:
  v22 = 3;
  if (a3 && (v12 + 66) >= 0x40)
  {
    v23 = v61 & 0x3F;
    v24 = 64 - (v61 & 0x3F);
    v25 = (v12 + 66) >> 6;
    v22 = 3;
    while (1)
    {
      v26 = v25 - 1;
      if ((v12 + 64) >> 6 == v25 - 1)
      {
        break;
      }

      v27 = *(v13 + v26) << v24;
      if (v25 != 1)
      {
        goto LABEL_36;
      }

LABEL_37:
      if (a3 >= 0x10)
      {
        v28 = 16;
      }

      else
      {
        v28 = a3;
      }

      v29 = v27 >> (-4 * v28);
      v30 = v28;
      do
      {
        a2[v22 - 1 + v30] = v9[v29 & 0xF];
        v29 >>= 4;
        --v30;
      }

      while (v30);
      v22 += v28;
      a3 -= v28;
      if (a3)
      {
        v25 = v26;
        if (v26)
        {
          continue;
        }
      }

      v31 = &a2[v22];
      if (!v20)
      {
        goto LABEL_45;
      }

LABEL_48:
      v32 = v31 - 1;
      do
      {
        v33 = v9[llvm::hexDigitValue(char)::LUT[*v32] + 1];
        *v32-- = v33;
      }

      while (v33 == 48);
      a2[2] = a2[3];
      if (v22 == 4)
      {
        goto LABEL_51;
      }

LABEL_46:
      a2[3] = 46;
      goto LABEL_52;
    }

    v27 = 0;
    if (v25 == 1)
    {
      goto LABEL_37;
    }

LABEL_36:
    v27 |= *(v13 + v25 - 2) >> v23;
    goto LABEL_37;
  }

  v31 = a2 + 3;
  if (v20)
  {
    goto LABEL_48;
  }

LABEL_45:
  memset(v31, 48, a3);
  v22 += a3;
  a2[2] = a2[3];
  if (v22 != 4)
  {
    goto LABEL_46;
  }

LABEL_51:
  v22 = 3;
LABEL_52:
  v34 = &a2[v22];
  if (v62)
  {
    v35 = 80;
  }

  else
  {
    v35 = 112;
  }

  *v34 = v35;
  result = v34 + 1;
  v37 = *(this + 4);
  if ((v37 & 0x80000000) != 0)
  {
    v47 = 0;
    *result = 45;
    v48 = -v37;
    v49 = v63;
    v50 = v60;
    v51 = 1;
    do
    {
      v52 = v47;
      v53 = v50;
      *v49++ = (v48 % 0xA) | 0x30;
      v54 = v51;
      ++v47;
      v50 = (v50 + 1);
      ++v51;
      v39 = v48 > 9;
      v48 /= 0xAu;
    }

    while (v39);
    result = v34 + 2;
    if (v47 < 0x20 || result < v49 && v63 < &a2[v52 + 3 + v22])
    {
      goto LABEL_83;
    }

    result += v47 & 0xFFFFFFFFFFFFFFE0;
    v49 -= v47 & 0xFFFFFFFFFFFFFFE0;
    v55 = &a2[v22 + 18];
    v56 = v54 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v57 = vrev64q_s8(*v53);
      v58 = vrev64q_s8(v53[-1]);
      v55[-1] = vextq_s8(v57, v57, 8uLL);
      *v55 = vextq_s8(v58, v58, 8uLL);
      v53 -= 2;
      v55 += 2;
      v56 -= 32;
    }

    while (v56);
    if (v47 != (v47 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_83:
      do
      {
        v59 = *--v49;
        *result++ = v59;
      }

      while (v49 != v63);
    }
  }

  else
  {
    v38 = 0;
    do
    {
      v63[v38++] = (v37 % 0xA) | 0x30;
      v39 = v37 > 9;
      v37 /= 0xAu;
    }

    while (v39);
    v40 = &v63[v38];
    if (v38 < 0x20 || v34 < v40 - 1 && v63 < &result[v38])
    {
      goto LABEL_84;
    }

    v41 = (v40 - 16);
    result += v38 & 0xFFFFFFFFFFFFFFE0;
    v40 = &v63[v38 - (v38 & 0xFFFFFFFFFFFFFFE0)];
    v42 = &a2[v22 + 17];
    v43 = v38 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v44 = vrev64q_s8(*v41);
      v45 = vrev64q_s8(v41[-1]);
      v42[-1] = vextq_s8(v44, v44, 8uLL);
      *v42 = vextq_s8(v45, v45, 8uLL);
      v41 -= 2;
      v42 += 2;
      v43 -= 32;
    }

    while (v43);
    if (v38 != (v38 & 0xFFFFFFFFFFFFFFE0))
    {
LABEL_84:
      do
      {
        v46 = *--v40;
        *result++ = v46;
      }

      while (v40 != v63);
    }
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::IEEEFloat *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    v5 = (v2 >> 3) & 1;
    v6 = *this;
    v26 = 0u;
    v27 = 0u;
    if (v3 == 1)
    {
      LOBYTE(v5) = 0;
    }

    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v21 = 0uLL;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v5;
    v20 = 0;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v20, (&v21 + 2), &v25, *(v6 + 8));
    v8 = v20;
  }

  else
  {
    v9 = (v2 >> 3) & 1;
    v10 = *this;
    v11 = *(*this + 8);
    v12 = (this + 8);
    if ((v11 - 64) < 0xFFFFFF80)
    {
      v12 = *(this + 1);
    }

    v14 = llvm::hashing::detail::hash_combine_range_impl<unsigned char const>(v12, &v12[(v11 + 64) >> 6]);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v28 = 0;
    v29 = 0xFF51AFD7ED558CCDLL;
    LOBYTE(v21) = v3;
    BYTE1(v21) = v9;
    v18 = 0;
    v15 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v18, (&v21 + 2), &v25, *(v10 + 8));
    v19 = v18;
    v16 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned int>(&v21, &v19, v15, &v25, *(this + 4));
    v20 = v19;
    v7 = llvm::hashing::detail::hash_combine_recursive_helper::combine_data<unsigned long>(&v21, &v20, v16, &v25, v14);
    v8 = v20;
  }

  return llvm::hashing::detail::hash_combine_recursive_helper::combine(&v21, v8, v7, &v25);
}

void *llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt@<X0>(llvm::detail::IEEEFloat *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this;
  v59 = *MEMORY[0x277D85DE8];
  v4 = *this;
  v5 = *(*this + 16);
  v54 = **this;
  v55 = v5;
  DWORD1(v54) = -1022;
  v50 = v4;
  if ((*(v4 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v6 = *(this + 20);
  v7 = v6 & 7;
  v53 = v6 & 0xF;
  v52 = *(this + 4);
  v9 = (v6 & 6) != 0 && v7 != 3;
  if (v7 == 1 || v9)
  {
    v10 = *(v4 + 2);
    if ((v10 - 64) >= 0xFFFFFF80)
    {
      this = &v51;
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

    llvm::APInt::tcAssign(this, v15, ((v10 + 64) >> 6));
  }

  v56 = 0;
  llvm::detail::IEEEFloat::convert(&v50, &v54, 1, &v56);
  v46 = v50;
  if ((*(v50 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v16 = v53 & 7;
  v49 = v49 & 0xF0 | v53 & 0xF;
  v48 = v52;
  v18 = (v53 & 6) != 0 && v16 != 3;
  if (v16 == 1 || v18)
  {
    v19 = *(v46 + 2);
    if ((v19 - 64) >= 0xFFFFFF80)
    {
      v20 = &v47;
    }

    else
    {
      v20 = v47;
    }

    if ((*(v50 + 2) - 64) >= 0xFFFFFF80)
    {
      v21 = &v51;
    }

    else
    {
      v21 = v51;
    }

    llvm::APInt::tcAssign(v20, v21, ((v19 + 64) >> 6));
  }

  llvm::detail::IEEEFloat::convert(&v46, &llvm::semIEEEdouble, 1, &v56);
  v22 = v49 & 7;
  v23 = (v49 & 6) == 0 || v22 == 3;
  v24 = !v23;
  if (v23)
  {
    if (v22 != 3)
    {
      if ((v49 & 7) != 0)
      {
        if ((*(v46 + 2) - 64) >= 0xFFFFFF80)
        {
          v28 = &v47;
        }

        else
        {
          v28 = v47;
        }

        v27 = *v28;
      }

      else
      {
        v27 = 0;
      }

      v57 = (v49 << 60) & 0x8000000000000000 | v27 & 0xFFFFFFFFFFFFFLL | 0x7FF0000000000000;
      if (!v24)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }

    v26 = 0;
    v25 = 0;
    goto LABEL_51;
  }

  v25 = v48 + 1023;
  if ((*(v46 + 2) - 64) > 0xFFFFFF7F)
  {
    v26 = v47;
    if (v48 != -1022)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v26 = *v47;
    if (v48 != -1022)
    {
LABEL_51:
      v57 = (v49 << 60) & 0x8000000000000000 | v26 & 0xFFFFFFFFFFFFFLL | ((v25 & 0x7FF) << 52);
      if (!v24)
      {
        goto LABEL_72;
      }

      goto LABEL_58;
    }
  }

  v57 = (v49 << 60) & 0x8000000000000000 | v26 & 0xFFFFFFFFFFFFFLL | (((v26 >> 52) & 1) << 52);
  if (!v24)
  {
    goto LABEL_72;
  }

LABEL_58:
  if (v56 != 1)
  {
LABEL_72:
    v58 = 0;
    goto LABEL_73;
  }

  v29 = llvm::detail::IEEEFloat::convert(&v46, &v54, 1, &v56);
  v42 = v50;
  if ((*(v50 + 2) + 64) >= 0x80)
  {
    operator new[]();
  }

  v30 = v53 & 7;
  v45 = v53 & 0xF;
  v44 = v52;
  v32 = (v53 & 6) != 0 && v30 != 3;
  if (v30 != 1 && !v32)
  {
    if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v42, &v46, 1) != 2)
    {
      goto LABEL_70;
    }

LABEL_86:
    v37 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v42, &v46, 1u);
    llvm::detail::IEEEFloat::normalize(&v42, 1, v37);
    v33 = v45;
    if ((v45 & 7) != 3)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

  v35 = *(v50 + 2);
  if ((v35 - 64) >= 0xFFFFFF80)
  {
    v29 = &v43;
  }

  if ((*(v50 + 2) - 64) >= 0xFFFFFF80)
  {
    v36 = &v51;
  }

  else
  {
    v36 = v51;
  }

  llvm::APInt::tcAssign(v29, v36, ((v35 + 64) >> 6));
  if (llvm::detail::IEEEFloat::addOrSubtractSpecials(&v42, &v46, 1) == 2)
  {
    goto LABEL_86;
  }

LABEL_70:
  v33 = v45;
  if ((v45 & 7) != 3)
  {
    goto LABEL_92;
  }

LABEL_87:
  if ((v49 & 7) != 3 || ((v49 ^ v33) & 8) == 0)
  {
    LOBYTE(v33) = v33 & 0xF3;
    v45 = v33;
  }

  if (*(v42 + 5) == 2)
  {
    v45 = v33 & 0xF3;
  }

LABEL_92:
  llvm::detail::IEEEFloat::convert(&v42, &llvm::semIEEEdouble, 1, &v56);
  v38 = v45 & 7;
  if ((v45 & 6) == 0 || v38 == 3)
  {
    if (v38 == 3)
    {
      v40 = 0;
      LOWORD(v39) = 0;
    }

    else
    {
      if ((v45 & 7) != 0)
      {
        if ((*(v42 + 2) - 64) >= 0xFFFFFF80)
        {
          v41 = &v43;
        }

        else
        {
          v41 = v43;
        }

        v40 = *v41;
      }

      else
      {
        v40 = 0;
      }

      LOWORD(v39) = 2047;
    }
  }

  else
  {
    LOWORD(v39) = v44 + 1023;
    if ((*(v42 + 2) - 64) <= 0xFFFFFF7F)
    {
      v40 = *v43;
      if (v44 != -1022)
      {
        goto LABEL_108;
      }

      goto LABEL_101;
    }

    v40 = v43;
    if (v44 == -1022)
    {
LABEL_101:
      v39 = (v40 >> 52) & 1;
    }
  }

LABEL_108:
  v58 = (v45 << 60) & 0x8000000000000000 | v40 & 0xFFFFFFFFFFFFFLL | ((v39 & 0x7FF) << 52);
  if ((*(v42 + 2) - 64) <= 0xFFFFFF7F && v43)
  {
    MEMORY[0x259C63150](v43, 0x1000C8000313F17);
  }

LABEL_73:
  result = llvm::APInt::APInt(a2, 128);
  if ((*(v46 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v47;
    if (v47)
    {
      result = MEMORY[0x259C63150](v47, 0x1000C8000313F17);
    }
  }

  if ((*(v50 + 2) - 64) <= 0xFFFFFF7F)
  {
    result = v51;
    if (v51)
    {
      return MEMORY[0x259C63150](v51, 0x1000C8000313F17);
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::convertDoubleAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      v5 = 0;
      LOWORD(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        v5 = 0;
      }

      LOWORD(v6) = 2047;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 1023;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -1022)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -1022)
    {
LABEL_13:
      v6 = (v5 >> 52) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 64;
  *a2 = (v2 << 60) & 0x8000000000000000 | v5 & 0xFFFFFFFFFFFFFLL | ((v6 & 0x7FF) << 52);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LODWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LODWORD(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 23) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 32;
  *a2 = (v2 << 28) & 0x80000000 | v5 & 0x7FFFFF | (v6 << 23);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertBFloatAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 7) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 16;
  *a2 = (v2 << 12) & 0x8000 | v5 & 0x7F | (v6 << 7);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertHalfAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOWORD(v5) = 0;
      }

      LOBYTE(v6) = 31;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 15;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -14)
    {
LABEL_13:
      v6 = (v5 >> 10) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 16;
  *a2 = (v2 << 12) & 0x8000 | v5 & 0x3FF | ((v6 & 0x1F) << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 31;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 15;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -14)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -14)
    {
LABEL_13:
      v6 = (v5 >> 2) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 3 | (4 * (v6 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 16;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -15)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -15)
    {
LABEL_15:
      v6 = (v5 >> 2) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 3 | (4 * (v6 & 0x1F));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_13:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      v5 = *this;
      LOBYTE(v6) = 15;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 7;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -6)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -6)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 8;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -7)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -7)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      v7 = *this;
      this += 8;
      if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
      {
        this = *this;
      }

      LOBYTE(v6) = 0;
      v5 = *this;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 11;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -10)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -10)
    {
LABEL_15:
      v6 = (v5 >> 3) & 1;
    }
  }

LABEL_16:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 7 | (8 * (v6 & 0xF));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOBYTE(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOBYTE(v5) = 0;
      }

      LOBYTE(v6) = 7;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_13:
      v6 = (v5 >> 4) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 8;
  *a2 = (16 * v2) & 0x80 | v5 & 0xF | (16 * (v6 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  v3 = v2 & 7;
  if ((v2 & 6) == 0 || v3 == 3)
  {
    if (v3 == 3)
    {
      LOWORD(v5) = 0;
      LOBYTE(v6) = 0;
    }

    else
    {
      if ((v2 & 7) != 0)
      {
        v7 = *this;
        this += 8;
        if ((*(v7 + 8) - 64) <= 0xFFFFFF7F)
        {
          this = *this;
        }

        v5 = *this;
      }

      else
      {
        LOWORD(v5) = 0;
      }

      LOBYTE(v6) = -1;
    }
  }

  else
  {
    LODWORD(v6) = *(this + 16) + 127;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v5 = **(this + 8);
      if (*(this + 16) != -126)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    v5 = *(this + 8);
    if (*(this + 16) == -126)
    {
LABEL_13:
      v6 = (v5 >> 10) & 1;
    }
  }

LABEL_19:
  *(a2 + 8) = 19;
  *a2 = (v2 << 15) & 0x40000 | v5 & 0x3FF | (v6 << 10);
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    LODWORD(v5) = *(this + 16) + 3;
    if ((*(*this + 8) - 64) <= 0xFFFFFF7F)
    {
      v4 = **(this + 8);
      if (*(this + 16) != -2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 8);
    if (*(this + 16) == -2)
    {
LABEL_11:
      v5 = (v4 >> 2) & 1;
    }
  }

LABEL_12:
  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 3 | (4 * (v5 & 7));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 3) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 6;
  *a2 = (4 * v2) & 0x20 | v4 & 7 | (8 * (v5 & 3));
  return this;
}

uint64_t llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 20);
  if ((v2 & 6) == 0 || (v2 & 7) == 3)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(this + 16);
    LOBYTE(v5) = v6 + 1;
    if ((*(*this + 8) - 64) > 0xFFFFFF7F)
    {
      v4 = *(this + 8);
      if (!v6)
      {
LABEL_11:
        v5 = (v4 >> 1) & 1;
      }
    }

    else
    {
      v4 = **(this + 8);
      if (!v6)
      {
        goto LABEL_11;
      }
    }
  }

  *(a2 + 8) = 4;
  *a2 = v2 & 8 | v4 & 1 | (2 * (v5 & 3));
  return this;
}

void *llvm::detail::IEEEFloat::bitcastToAPInt@<X0>(void *this@<X0>, uint64_t a1@<X8>)
{
  v2 = *this;
  if (*this == &llvm::semIEEEhalf)
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

    *(a1 + 8) = 16;
    *a1 = (v3 << 12) & 0x8000 | v6 & 0x3FF | ((v11 & 0x1F) << 10);
  }

  else if (v2 == &llvm::semBFloat)
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

    *(a1 + 8) = 16;
    *a1 = (v7 << 12) & 0x8000 | v10 & 0x7F | (v16 << 7);
  }

  else if (v2 == &llvm::semIEEEsingle)
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

    *(a1 + 8) = 32;
    *a1 = (v12 << 28) & 0x80000000 | v15 & 0x7FFFFF | (v14 << 23);
  }

  else if (v2 == &llvm::semIEEEdouble)
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

    *(a1 + 8) = 64;
    *a1 = (v17 << 60) & 0x8000000000000000 | v20 & 0xFFFFFFFFFFFFFLL | ((v19 & 0x7FF) << 52);
  }

  else if (v2 == &llvm::semIEEEquad)
  {
    return llvm::detail::IEEEFloat::convertQuadrupleAPFloatToAPInt(a1);
  }

  else if (v2 == &llvm::semPPCDoubleDoubleLegacy)
  {
    return llvm::detail::IEEEFloat::convertPPCDoubleDoubleAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E5M2)
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

    *(a1 + 8) = 8;
    *a1 = (16 * v21) & 0x80 | v24 & 3 | (4 * (v23 & 0x1F));
  }

  else if (v2 == &llvm::semFloat8E5M2FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E5M2FNUZAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E4M3)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3APFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E4M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E4M3FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3FNUZAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E4M3B11FNUZ)
  {
    return llvm::detail::IEEEFloat::convertFloat8E4M3B11FNUZAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat8E3M4)
  {
    return llvm::detail::IEEEFloat::convertFloat8E3M4APFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloatTF32)
  {
    return llvm::detail::IEEEFloat::convertFloatTF32APFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat6E3M2FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E3M2FNAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat6E2M3FN)
  {
    return llvm::detail::IEEEFloat::convertFloat6E2M3FNAPFloatToAPInt(this, a1);
  }

  else if (v2 == &llvm::semFloat4E2M1FN)
  {
    return llvm::detail::IEEEFloat::convertFloat4E2M1FNAPFloatToAPInt(this, a1);
  }

  else
  {
    return llvm::detail::IEEEFloat::convertF80LongDoubleAPFloatToAPInt(a1);
  }

  return this;
}

float llvm::detail::IEEEFloat::convertToFloat(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 <= 0x40)
  {
    return *&v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return *&v2;
}

double llvm::detail::IEEEFloat::convertToDouble(llvm::detail::IEEEFloat *this)
{
  llvm::detail::IEEEFloat::bitcastToAPInt(this, &v3);
  if (v4 <= 0x40)
  {
    return *&v3;
  }

  v2 = *v3;
  MEMORY[0x259C63150]();
  return v2;
}

uint64_t llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(llvm::detail::IEEEFloat *this, const llvm::APInt **a2)
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
  result = llvm::detail::IEEEFloat::convert(this, &llvm::semPPCDoubleDoubleLegacy, 1, &v15);
  if ((*(this + 20) & 6) != 0 && (*(this + 20) & 7) != 3)
  {
    v11 = 64;
    v10 = v5;
    llvm::detail::IEEEFloat::initFromDoubleAPInt(&v12, &v10);
    llvm::detail::IEEEFloat::convert(&v12, &llvm::semPPCDoubleDoubleLegacy, 1, &v15);
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
        return MEMORY[0x259C63150](v13, 0x1000C8000313F17);
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
  *this = &llvm::semIEEEdouble;
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

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt **a3)
{
  llvm::detail::IEEEFloat::initFromAPInt(a1, a2, a3);
  return a1;
}

{
  llvm::detail::IEEEFloat::initFromAPInt(a1, a2, a3);
  return a1;
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
  *this = &llvm::semIEEEsingle;
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
  *this = &llvm::semBFloat;
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
  *this = &llvm::semIEEEhalf;
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
  *this = &llvm::semFloat8E5M2;
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
  *this = &llvm::semFloat8E5M2FNUZ;
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
  *this = &llvm::semFloat8E4M3;
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
  *this = &llvm::semFloat8E4M3FN;
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
  *this = &llvm::semFloat8E4M3FNUZ;
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
  *this = &llvm::semFloat8E4M3B11FNUZ;
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
  *this = &llvm::semFloat8E3M4;
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
  *this = &llvm::semFloatTF32;
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
  *this = &llvm::semFloat6E3M2FN;
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
  *this = &llvm::semFloat6E2M3FN;
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
  *this = &llvm::semFloat4E2M1FN;
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

void llvm::detail::IEEEFloat::initFromAPInt(llvm::detail::IEEEFloat *a1, void *a2, const llvm::APInt **a3)
{
  if (a2 == &llvm::semIEEEhalf)
  {
    llvm::detail::IEEEFloat::initFromHalfAPInt(a1, a3);
  }

  else if (a2 == &llvm::semBFloat)
  {
    llvm::detail::IEEEFloat::initFromBFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEsingle)
  {
    llvm::detail::IEEEFloat::initFromFloatAPInt(a1, a3);
  }

  else if (a2 == &llvm::semIEEEdouble)
  {
    llvm::detail::IEEEFloat::initFromDoubleAPInt(a1, a3);
  }

  else
  {
    if (a2 == &llvm::semX87DoubleExtended)
    {
      llvm::detail::IEEEFloat::initFromF80LongDoubleAPInt(a1, a3);
    }

    if (a2 == &llvm::semIEEEquad)
    {
      llvm::detail::IEEEFloat::initFromQuadrupleAPInt(a1, a3);
    }

    if (a2 == &llvm::semPPCDoubleDoubleLegacy)
    {
      llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E5M2)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2APInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E5M2FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E5M2FNUZAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3APInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3FN)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3FNUZAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E4M3B11FNUZ)
    {
      llvm::detail::IEEEFloat::initFromFloat8E4M3B11FNUZAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat8E3M4)
    {
      llvm::detail::IEEEFloat::initFromFloat8E3M4APInt(a1, a3);
    }

    else if (a2 == &llvm::semFloatTF32)
    {
      llvm::detail::IEEEFloat::initFromFloatTF32APInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat6E3M2FN)
    {
      llvm::detail::IEEEFloat::initFromFloat6E3M2FNAPInt(a1, a3);
    }

    else if (a2 == &llvm::semFloat6E2M3FN)
    {
      llvm::detail::IEEEFloat::initFromFloat6E2M3FNAPInt(a1, a3);
    }

    else
    {
      llvm::detail::IEEEFloat::initFromFloat4E2M1FNAPInt(a1, a3);
    }
  }
}

void *llvm::detail::IEEEFloat::makeLargest(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v3 = 10;
  }

  else
  {
    v3 = 2;
  }

  *(this + 20) = v3 | *(this + 20) & 0xF0;
  v4 = *this;
  *(this + 4) = **this;
  v5 = *(v4 + 8);
  v6 = (this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v6;
  }

  v7 = v5 + 64;
  result = memset(v6, 255, 8 * (((v5 + 64) >> 6) - 1));
  v9 = *this;
  if ((v7 & 0xFFFFFFC0) - *(*this + 8) >= 0x40)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0xFFFFFFFFFFFFFFFFLL >> ((v7 & 0xC0) - *(*this + 8));
  }

  v6[(v7 >> 6) - 1] = v10;
  if (*(v9 + 16) == 1 && *(v9 + 20) == 1)
  {
    *v6 &= ~1uLL;
  }

  return result;
}

void llvm::detail::IEEEFloat::makeSmallest(llvm::detail::IEEEFloat *this, int a2)
{
  if (a2)
  {
    v2 = 10;
  }

  else
  {
    v2 = 2;
  }

  *(this + 20) = v2 | *(this + 20) & 0xF0;
  v3 = *(*this + 8);
  *(this + 4) = *(*this + 4);
  v4 = (this + 8);
  if ((v3 - 64) <= 0xFFFFFF7F)
  {
    v4 = *v4;
  }

  llvm::APInt::tcSet(v4, 1, (v3 + 64) >> 6);
}

uint64_t llvm::detail::IEEEFloat::makeSmallestNormalized(llvm::detail::IEEEFloat *this, int a2)
{
  *(this + 20) = *(this + 20) & 0xF8 | 2;
  v4 = *(*this + 8);
  v5 = (this + 8);
  v6 = (this + 8);
  if ((v4 - 64) <= 0xFFFFFF7F)
  {
    v6 = *v5;
  }

  llvm::APInt::tcSet(v6, 0, (v4 + 64) >> 6);
  if (a2)
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  *(this + 20) = *(this + 20) & 0xF7 | v7;
  v8 = *(*this + 8);
  *(this + 4) = *(*this + 4);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  return llvm::APInt::tcSetBit(v5, (v8 - 1));
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, float a2)
{
  v5 = 32;
  v4 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(this, &v4);
  return this;
}

{
  v5 = 32;
  v4 = LODWORD(a2);
  llvm::detail::IEEEFloat::initFromFloatAPInt(this, &v4);
  return this;
}

llvm::detail::IEEEFloat *llvm::detail::IEEEFloat::IEEEFloat(llvm::detail::IEEEFloat *this, double a2)
{
  v5 = 64;
  v4 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v4);
  return this;
}

{
  v5 = 64;
  v4 = *&a2;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(this, &v4);
  return this;
}

void llvm::detail::IEEEFloat::toString(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, int a5)
{
  v114[32] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 20) & 7;
  if (v6 == 3)
  {
    if ((*(a1 + 20) & 8) != 0)
    {
      v11 = a2[1];
      if (v11 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v11) = 45;
      ++a2[1];
    }

    v12 = a2[1];
    if (a4)
    {
      if (v12 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v12) = 48;
      ++a2[1];
    }

    else
    {
      v30 = a2[2];
      if (!a5)
      {
        if (v30 < v12 + 3)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v39 = *a2 + v12;
        *(v39 + 2) = 48;
        *v39 = 11824;
        v7 = a2[1] + 3;
        a2[1] = v7;
        if (a3 >= 2)
        {
          v40 = a3 - 1;
          if (v7 + v40 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          memset((*a2 + v7), 48, v40);
          v7 = a2[1] + v40;
          a2[1] = v7;
        }

        if (a2[2] < (v7 + 4))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v24 = *a2;
        v25 = 808463205;
        goto LABEL_69;
      }

      if (v30 < v12 + 6)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v31 = *a2 + v12;
      *(v31 + 4) = 12331;
      *v31 = 1160785456;
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
        if ((*(a1 + 20) & 8) == 0)
        {
          if (v8 < v7 + 4)
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v7) = 1718503723;
          goto LABEL_70;
        }

        if (v8 < v7 + 4)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        v24 = *a2;
        v25 = 1718503725;
LABEL_69:
        *(v24 + v7) = v25;
LABEL_70:
        a2[1] += 4;
        return;
      }

      v13 = *(*a1 + 8);
      v16 = a5;
      v17 = *(a1 + 16);
      llvm::APInt::APInt(&v103, v13);
      v22 = *(a1 + 20);
      v23 = v104;
      v102 = v104;
      if (v104 > 0x40)
      {
        llvm::APInt::initSlowCase(&v101, &v103);
      }

      v101 = v103;
      if ((v22 & 8) != 0)
      {
        v26 = a2[1];
        if (v26 + 1 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v26) = 45;
        ++a2[1];
      }

      if (a3)
      {
        v27 = a3;
      }

      else
      {
        v27 = (59 * v23) / 196 + 2;
      }

      if (v102 > 0x40)
      {
        v29 = llvm::APInt::countTrailingZerosSlowCase(&v101);
        llvm::APInt::lshrSlowCase(&v101, v29);
      }

      else
      {
        v28 = __clz(__rbit64(v101));
        if (v102 >= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v102;
        }

        if (v102 > v28)
        {
          v101 >>= v29;
        }

        else
        {
          v101 = 0;
        }
      }

      v32 = v17 - v13 + v29;
      v33 = v32 + 1;
      if (v32 != -1)
      {
        if (v33 < 1)
        {
          v36 = (-137 * v33 + 136) / 0x3Bu + v23;
          llvm::APInt::zext(&v101, v36, &__dst);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v37 = -v33;
          v101 = __dst;
          v102 = v113;
          LODWORD(v113) = v36;
          if (v36 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst);
          }

          v38 = ((0xFFFFFFFFFFFFFFFFLL >> -v36) & 5);
          if (!v36)
          {
            v38 = 0;
          }

          for (__dst = v38; ; llvm::APInt::operator*=(&__dst, &__dst))
          {
            if (v37)
            {
              llvm::APInt::operator*=(&v101, &__dst);
            }

            if (v37 < 2)
            {
              break;
            }

            v37 >>= 1;
          }

          if (v113 >= 0x41 && __dst)
          {
            MEMORY[0x259C63150](__dst, 0x1000C8000313F17);
          }
        }

        else
        {
          llvm::APInt::zext(&v101, v33 + v23, &__dst);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = __dst;
          v102 = v113;
          if (v113 > 0x40)
          {
            llvm::APInt::shlSlowCase(&v101, v33);
            v33 = 0;
          }

          else
          {
            v34 = __dst << v33;
            if (v113 == v33)
            {
              v34 = 0;
            }

            if (v113)
            {
              v35 = 0xFFFFFFFFFFFFFFFFLL >> -v113;
            }

            else
            {
              v35 = 0;
            }

            v101 = v35 & v34;
            v33 = 0;
          }
        }
      }

      v41 = v102;
      if (v102 > 0x40)
      {
        v42 = llvm::APInt::countLeadingZerosSlowCase(&v101);
      }

      else
      {
        v42 = v102 + __clz(v101) - 64;
      }

      v43 = (196 * v27 + 58) / 0x3B;
      if (v41 - v42 > v43)
      {
        v44 = 59 * (v41 - v42 - v43);
        if (v44 >= 0xC4)
        {
          v45 = v44 / 0xC4;
          v33 += v44 / 0xC4;
          LODWORD(v113) = v41;
          if (v41 > 0x40)
          {
            llvm::APInt::initSlowCase(&__dst);
          }

          __dst = (v41 != 0);
          LODWORD(v106) = v41;
          v46 = ((0xFFFFFFFFFFFFFFFFLL >> -v41) & 0xA);
          if (!v41)
          {
            v46 = 0;
          }

          for (i = v46; ; llvm::APInt::operator*=(&i, &i))
          {
            if (v45)
            {
              llvm::APInt::operator*=(&__dst, &i);
            }

            if (v45 < 2)
            {
              break;
            }

            v45 >>= 1;
          }

          llvm::APInt::udiv(&v101, &__dst, &v110);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = v110;
          v47 = v111;
          v102 = v111;
          if (v111 > 0x40)
          {
            v48 = llvm::APInt::countLeadingZerosSlowCase(&v101);
          }

          else
          {
            v48 = v111 + __clz(v110) - 64;
          }

          llvm::APInt::trunc(&v101, v47 - v48, &v110);
          if (v102 >= 0x41 && v101)
          {
            MEMORY[0x259C63150](v101, 0x1000C8000313F17);
          }

          v101 = v110;
          v102 = v111;
          if (v106 >= 0x41 && i)
          {
            MEMORY[0x259C63150](i, 0x1000C8000313F17);
          }

          if (v113 >= 0x41 && __dst)
          {
            MEMORY[0x259C63150](__dst, 0x1000C8000313F17);
          }

          v41 = v102;
        }
      }

      __dst = v114;
      v113 = xmmword_25736B790;
      if (v41 > 3)
      {
        v111 = v41;
        if (v41 > 0x40)
        {
          llvm::APInt::initSlowCase(&v110);
        }
      }

      else
      {
        v41 = 4;
        llvm::APInt::zext(&v101, 4u, &i);
        if (v102 >= 0x41 && v101)
        {
          MEMORY[0x259C63150](v101, 0x1000C8000313F17);
        }

        v101 = i;
        v102 = v106;
        v111 = 4;
      }

      v110 = (0xFFFFFFFFFFFFFFFFLL >> -v41) & 0xA;
      v109 = v41;
      v108 = 0;
      v49 = v102;
      if (v102 < 0x41)
      {
        goto LABEL_123;
      }

LABEL_120:
      if (v49 - llvm::APInt::countLeadingZerosSlowCase(&v101) > 0x40 || *v101)
      {
        while (1)
        {
          llvm::APInt::udivrem(&v101, &v110, &v101, &v108, v19, v20, v21);
          v50 = (v109 >= 0x41 ? v108 : &v108);
          v51 = *v50;
          if (v51)
          {
            break;
          }

          ++v33;
          v49 = v102;
          if (v102 >= 0x41)
          {
            goto LABEL_120;
          }

LABEL_123:
          if (!v101)
          {
            goto LABEL_141;
          }
        }

        if ((v113 + 1) > *(&v113 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(__dst + v113) = v51 + 48;
        *&v113 = v113 + 1;
        v52 = v102;
        if (v102 < 0x41)
        {
          goto LABEL_133;
        }

        while (v52 - llvm::APInt::countLeadingZerosSlowCase(&v101) > 0x40 || *v101)
        {
          while (1)
          {
            llvm::APInt::udivrem(&v101, &v110, &v101, &v108, v19, v20, v21);
            if (v109 >= 0x41)
            {
              v53 = v108;
            }

            else
            {
              v53 = &v108;
            }

            if ((v113 + 1) > *(&v113 + 1))
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(__dst + v113) = *v53 + 48;
            *&v113 = v113 + 1;
            v52 = v102;
            if (v102 >= 0x41)
            {
              break;
            }

LABEL_133:
            if (!v101)
            {
              goto LABEL_141;
            }
          }
        }
      }

LABEL_141:
      v54 = v113;
      v55 = v113 - v27;
      if (v113 <= v27)
      {
        v57 = a4;
        if (!a4)
        {
          goto LABEL_176;
        }
      }

      else
      {
        v56 = __dst;
        v57 = a4;
        if (*(__dst + (v55 - 1)) < 53)
        {
          if (v55 < v113)
          {
            v58 = v27;
            while (*(__dst + v55) == 48)
            {
              ++v55;
              if (!--v58)
              {
                LODWORD(v55) = v113;
                break;
              }
            }
          }

          v59 = v55;
          v60 = v113 - v55;
          if (v113 == v55)
          {
LABEL_149:
            v54 = v60;
            v33 += v55;
            *&v113 = v60;
            if (!v57)
            {
              goto LABEL_176;
            }

            goto LABEL_165;
          }

LABEL_164:
          v64 = v57;
          memmove(v56, &v56[v59], v60);
          v57 = v64;
          v54 = v56 + v60 - __dst;
          v33 += v55;
          *&v113 = &v56[v60] - __dst;
          if (!v57)
          {
            goto LABEL_176;
          }

          goto LABEL_165;
        }

        if (v27)
        {
          v61 = v27;
          while (1)
          {
            v62 = *(__dst + v55);
            if (v62 != 57)
            {
              break;
            }

            LODWORD(v55) = v55 + 1;
            if (!--v61)
            {
              goto LABEL_160;
            }
          }

          *(__dst + v55) = v62 + 1;
        }

        if (v55 != v54)
        {
          v59 = v55;
          v56 = __dst;
          v60 = v113 - v55;
          if (v113 == v55)
          {
            goto LABEL_149;
          }

          goto LABEL_164;
        }

LABEL_160:
        *&v113 = 0;
        if (!*(&v113 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *__dst = 49;
        v63 = v54;
        v54 = v113 + 1;
        v33 += v63;
        *&v113 = v113 + 1;
        if (!a4)
        {
          goto LABEL_176;
        }
      }

LABEL_165:
      if (v33 < 0)
      {
        v68 = v33 + v54;
        if (((v68 - 1) & 0x80000000) == 0 || 1 - v68 <= v57)
        {
          if (v68 < 1)
          {
            v96 = a2[1];
            if (v96 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v96) = 48;
            v97 = a2[1];
            v98 = a2[2];
            a2[1] = v97 + 1;
            if (v97 + 2 > v98)
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v97 + 1) = 46;
            v95 = a2[1] + 1;
            a2[1] = v95;
            if (v68)
            {
              do
              {
                if (v95 + 1 > a2[2])
                {
                  llvm::SmallVectorBase<unsigned long long>::grow_pod();
                }

                *(*a2 + v95) = 48;
                v95 = a2[1] + 1;
                a2[1] = v95;
                v99 = __CFADD__(v68, 1);
                LODWORD(v68) = v68 + 1;
              }

              while (!v99);
              LODWORD(v68) = 0;
            }
          }

          else
          {
            v91 = a2[1];
            v92 = v54 - 1;
            v93 = v68;
            do
            {
              if (v91 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              *(*a2 + v91) = *(__dst + v92);
              v94 = a2[1];
              v91 = v94 + 1;
              a2[1] = v94 + 1;
              --v92;
              --v93;
            }

            while (v93);
            if (v94 + 2 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v91) = 46;
            v95 = a2[1] + 1;
            a2[1] = v95;
          }

          if (v68 != v54)
          {
            v100 = ~v68 + v54;
            do
            {
              if (v95 + 1 > a2[2])
              {
                llvm::SmallVectorBase<unsigned long long>::grow_pod();
              }

              *(*a2 + v95) = *(__dst + v100);
              v95 = a2[1] + 1;
              a2[1] = v95;
              --v100;
            }

            while (v100 != -1);
          }

          goto LABEL_216;
        }
      }

      else if (v33 <= v57 && v33 + v54 <= v27)
      {
        if (v54)
        {
          v65 = v54;
          v66 = a2[1];
          v67 = v54 - 1;
          do
          {
            if (v66 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v66) = *(__dst + v67);
            v66 = a2[1] + 1;
            a2[1] = v66;
            --v67;
            --v65;
          }

          while (v65);
        }

        if (v33)
        {
          v89 = a2[1];
          do
          {
            if (v89 + 1 > a2[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod();
            }

            *(*a2 + v89) = 48;
            v89 = a2[1] + 1;
            a2[1] = v89;
            --v33;
          }

          while (v33);
        }

        goto LABEL_216;
      }

LABEL_176:
      v69 = v54 - 1;
      v70 = a2[1];
      if (v70 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v70) = *(__dst + v54 - 1);
      v71 = a2[1];
      v72 = a2[2];
      a2[1] = v71 + 1;
      if (v71 + 2 > v72)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v71 + 1) = 46;
      v73 = a2[1];
      v74 = v73 + 1;
      a2[1] = v73 + 1;
      if (v54 == 1 && (v16 & 1) != 0)
      {
        if (v73 + 2 > a2[2])
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(*a2 + v74) = 48;
        v74 = a2[1] + 1;
        a2[1] = v74;
      }

      else if (v54 != 1)
      {
        v90 = v54 - 2;
        do
        {
          if (v74 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v74) = *(__dst + v90);
          v74 = a2[1] + 1;
          a2[1] = v74;
          --v90;
        }

        while (v90 != -1);
      }

      if (v16)
      {
        v75 = 69;
      }

      else
      {
        if (v27 > v69)
        {
          v76 = v27 - v54 + 1;
          if (v74 + v76 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          if (v27 - v54 != -1)
          {
            memset((*a2 + v74), 48, v27 - v54 + 1);
            v74 = a2[1];
          }

          v74 += v76;
          a2[1] = v74;
        }

        v75 = 101;
      }

      v77 = v69 + v33;
      if (v74 + 1 > a2[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      *(*a2 + v74) = v75;
      v78 = a2[1];
      v79 = a2[2];
      v80 = v78 + 1;
      a2[1] = v78 + 1;
      if (v77 < 0)
      {
        v81 = 45;
      }

      else
      {
        v81 = 43;
      }

      if (v78 + 2 > v79)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod();
      }

      v82 = 0;
      *(*a2 + v80) = v81;
      ++a2[1];
      if (v77 >= 0)
      {
        v83 = v77;
      }

      else
      {
        v83 = -v77;
      }

      i = &v107;
      v106 = xmmword_25739D330;
      do
      {
        if (v82 + 1 > *(&v106 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(i + v82) = (v83 % 0xA) | 0x30;
        v84 = v106;
        v82 = v106 + 1;
        *&v106 = v106 + 1;
        v85 = v83 > 9;
        v83 /= 0xAu;
      }

      while (v85);
      if ((v16 & 1) == 0 && v82 <= 1)
      {
        if ((v84 + 2) > *(&v106 + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod();
        }

        *(i + v82) = 48;
        LODWORD(v82) = v106 + 1;
        *&v106 = v106 + 1;
      }

      v86 = v82;
      if (v82)
      {
        v87 = a2[1];
        v88 = v82 - 1;
        do
        {
          if (v87 + 1 > a2[2])
          {
            llvm::SmallVectorBase<unsigned long long>::grow_pod();
          }

          *(*a2 + v87) = *(i + v88);
          v87 = a2[1] + 1;
          a2[1] = v87;
          --v88;
          --v86;
        }

        while (v86);
      }

      if (i != &v107)
      {
        free(i);
      }

LABEL_216:
      if (v109 >= 0x41 && v108)
      {
        MEMORY[0x259C63150](v108, 0x1000C8000313F17);
      }

      if (v111 >= 0x41 && v110)
      {
        MEMORY[0x259C63150](v110, 0x1000C8000313F17);
      }

      if (__dst != v114)
      {
        free(__dst);
      }

      if (v102 >= 0x41 && v101)
      {
        MEMORY[0x259C63150](v101, 0x1000C8000313F17);
      }

      if (v104 >= 0x41 && v103)
      {
        MEMORY[0x259C63150](v103, 0x1000C8000313F17);
      }

      return;
    }

    v9 = a2[1];
    if (a2[2] < (v9 + 3))
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v10 = *a2 + v9;
    *(v10 + 2) = 78;
    *v10 = 24910;
    a2[1] += 3;
  }
}

uint64_t llvm::detail::IEEEFloat::getExactInverse(llvm::detail::IEEEFloat *this, llvm::APFloat *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  if ((*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3)
  {
    return 0;
  }

  v6 = *this;
  v5 = (this + 8);
  v7 = *(v6 + 8);
  if ((v7 - 64) <= 0xFFFFFF7F)
  {
    v5 = *v5;
  }

  v8 = llvm::APInt::tcLSB(v5, ((v7 + 64) >> 6));
  v9 = *this;
  v10 = *(*this + 8);
  if (v8 != v10 - 1)
  {
    return 0;
  }

  v30 = *this;
  if ((v10 + 64) >= 0x80)
  {
    operator new[]();
  }

  v33 = 2;
  if ((v10 - 64) >= 0xFFFFFF80)
  {
    v8 = &v31;
  }

  llvm::APInt::tcSet(v8, 0, (v10 + 64) >> 6);
  v32 = *(v9 + 8) - 1;
  if ((v30[2] - 64) >= 0xFFFFFF80)
  {
    v12 = &v31;
  }

  else
  {
    v12 = v31;
  }

  *v12 = 1;
  llvm::detail::IEEEFloat::normalize(&v30, 1, 0);
  v33 ^= *(this + 20) & 8;
  result = llvm::detail::IEEEFloat::divideSpecials(&v30, this);
  if ((v33 & 7) == 3)
  {
    if (v30[5] == 2)
    {
      v33 &= 0xF3u;
    }
  }

  else if ((v33 & 6) != 0)
  {
    v13 = llvm::detail::IEEEFloat::divideSignificand(&v30, this);
    result = llvm::detail::IEEEFloat::normalize(&v30, 1, v13);
    if (v13)
    {
      goto LABEL_23;
    }
  }

  if (!result)
  {
    if ((v33 & 6) == 0 || (v33 & 7) == 3 || v32 != v30[1] || ((v14 = v30[2], (v14 - 64) >= 0xFFFFFF80) ? (v15 = &v31) : (v15 = v31), result = llvm::APInt::tcExtractBit(v15, (v14 - 1)), result))
    {
      if (a2)
      {
        v16 = v30;
        v26 = v30;
        if ((v30[2] + 64) >= 0x80)
        {
          operator new[]();
        }

        v17 = v33 & 7;
        v18 = v33 & 0xF;
        v29 = v33 & 0xF;
        v19 = v32;
        v28 = v32;
        v21 = (v33 & 6) != 0 && v17 != 3;
        if (v17 == 1 || v21)
        {
          v22 = v30[2];
          if ((v22 - 64) >= 0xFFFFFF80)
          {
            result = &v27;
          }

          if ((v30[2] - 64) >= 0xFFFFFF80)
          {
            v23 = &v31;
          }

          else
          {
            v23 = v31;
          }

          llvm::APInt::tcAssign(result, v23, ((v22 + 64) >> 6));
          v16 = v26;
          result = v27;
          v19 = v28;
          v18 = v29 & 0xF;
        }

        v24 = *this;
        v34 = v16;
        v35 = result;
        v36 = v19;
        v37 = v18;
        llvm::APFloat::Storage::Storage(&v38, &v34, v24);
        if ((*(v34 + 8) - 64) <= 0xFFFFFF7F && v35)
        {
          MEMORY[0x259C63150](v35, 0x1000C8000313F17);
        }

        llvm::APFloat::Storage::operator=((a2 + 8), &v38);
        if (v38.n128_u64[0] == &llvm::semPPCDoubleDouble)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v38);
        }

        else if ((*(v38.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v38.n128_u64[1])
        {
          MEMORY[0x259C63150](v38.n128_u64[1], 0x1000C8000313F17);
        }
      }

      result = 1;
    }

    goto LABEL_57;
  }

LABEL_23:
  result = 0;
LABEL_57:
  if ((v30[2] - 64) <= 0xFFFFFF7F)
  {
    if (v31)
    {
      v25 = result;
      MEMORY[0x259C63150](v31, 0x1000C8000313F17);
      return v25;
    }
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::getExactLog2Abs(llvm::detail::IEEEFloat *this)
{
  if ((*(this + 20) & 6) == 0 || (*(this + 20) & 7) == 3)
  {
    return 0x80000000;
  }

  v3 = (this + 8);
  v4 = *this;
  v5 = *(*this + 8);
  if ((v5 - 64) <= 0xFFFFFF7F)
  {
    v3 = *v3;
    v6 = v5 + 63;
    goto LABEL_11;
  }

  v6 = v5 + 63;
  if ((v5 + 63) >= 0x40)
  {
LABEL_11:
    v7 = v6 >> 6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = vcnt_s8(v3[v8]);
      v10.i16[0] = vaddlv_u8(v10);
      v9 += v10.i32[0];
      if (v9 > 1)
      {
        return 0x80000000;
      }
    }

    while (v7 != ++v8);
  }

  result = *(this + 4);
  if (result == *(v4 + 4))
  {
    v11 = *v3;
    if (*v3)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = v3 + 1;
      do
      {
        v11 = v14[v13++];
        v12 += 64;
      }

      while (!v11);
    }

    return result - v5 + v12 + __clz(__rbit64(v11)) + 1;
  }

  return result;
}

uint64_t llvm::detail::IEEEFloat::next(int **this, int a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(this + 20);
    result = 0;
    v7 = v4 & 7;
    if (v7 <= 1)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        goto LABEL_87;
      }

      *(this + 20) = v4 & 0xF0 | 2;
      v10 = (*this)[2];
      *(this + 4) = (*this)[1];
      v11 = (this + 1);
      if ((v10 - 64) <= 0xFFFFFF7F)
      {
        v11 = *v11;
      }

      llvm::APInt::tcSet(v11, 1, (v10 + 64) >> 6);
LABEL_86:
      result = 0;
LABEL_87:
      if (!a2)
      {
        return result;
      }

      goto LABEL_88;
    }

    if ((v4 & 6) != 0 && *(this + 4) == (*this)[1])
    {
      v18 = (*this)[2];
      v19 = (this + 1);
      v20 = (this + 1);
      if ((v18 - 64) <= 0xFFFFFF7F)
      {
        v20 = *v19;
      }

      v21 = llvm::APInt::tcMSB(v20, ((v18 + 64) >> 6));
      v4 = *(this + 20);
      if (!v21 && (v4 & 8) != 0)
      {
        v47 = (*this)[2];
        if ((v47 - 64) <= 0xFFFFFF7F)
        {
          v19 = *v19;
        }

        llvm::APInt::tcSet(v19, 0, (v47 + 64) >> 6);
        v48 = *(this + 20) & 0xF8 | 3;
        *(this + 20) = v48;
        *(this + 4) = 0;
        if ((*this)[5] == 2)
        {
          result = 0;
          *(this + 20) = v48 & 0xF3;
          if (!a2)
          {
            return result;
          }

          goto LABEL_88;
        }

        goto LABEL_86;
      }
    }

    if (llvm::detail::IEEEFloat::isLargest(this))
    {
      if ((v4 & 8) == 0)
      {
        v23 = (*this)[4];
        if (v23 == 2)
        {
          goto LABEL_86;
        }

        if (v23 == 1)
        {
          llvm::detail::IEEEFloat::makeNaN(this, 0, 0, 0);
          goto LABEL_86;
        }

        v52 = (*this)[2];
        v53 = (this + 1);
        if ((v52 - 64) <= 0xFFFFFF7F)
        {
          v53 = *v53;
        }

        llvm::APInt::tcSet(v53, 0, (v52 + 64) >> 6);
        result = 0;
        *(this + 20) &= 0xF8u;
        v54 = **this;
LABEL_100:
        *(this + 4) = v54 + 1;
        if (!a2)
        {
          return result;
        }

        goto LABEL_88;
      }

LABEL_60:
      v37 = (*this)[2];
      v38 = v37 - 64;
      if (*(this + 4) != (*this)[1])
      {
        v41 = this + 1;
        if (v38 <= 0xFFFFFF7F)
        {
          v41 = *v41;
        }

        v42 = v37 + 63;
        v43 = ((v37 + 63) >> 6) - 1;
        if ((v37 + 63) >> 6 == 1)
        {
          v43 = 0;
LABEL_79:
          v39 = v41[v43] << ((v42 & 0xC0) - v37 + 1) == 0;
          v40 = (this + 1);
          if (v38 > 0xFFFFFF7F)
          {
LABEL_63:
            llvm::APInt::tcSubtractPart(v40, 1uLL, (v37 + 64) >> 6);
            if (v39)
            {
              llvm::APInt::tcSetBit(v40, ((*this)[2] - 1));
              result = 0;
              --*(this + 4);
              if (!a2)
              {
                return result;
              }

              goto LABEL_88;
            }

            goto LABEL_86;
          }

LABEL_62:
          v40 = *v40;
          goto LABEL_63;
        }

        v44 = v41;
        v45 = (v42 >> 6) - 1;
        while (!*v44++)
        {
          if (!--v45)
          {
            goto LABEL_79;
          }
        }
      }

      v39 = 0;
      v40 = (this + 1);
      if (v38 > 0xFFFFFF7F)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if ((v4 & 8) != 0)
    {
      goto LABEL_60;
    }

    v24 = *this;
    if ((v4 & 6) == 0 || (v4 & 7) == 3 || *(this + 4) != v24[1])
    {
      goto LABEL_53;
    }

    v25 = v24[2];
    v26 = (this + 1);
    if ((v25 - 64) <= 0xFFFFFF7F)
    {
      v26 = *v26;
    }

    Bit = llvm::APInt::tcExtractBit(v26, (v25 - 1));
    v24 = *this;
    if (!Bit)
    {
      v28 = v24[2];
      v49 = (this + 1);
      if ((v28 - 64) > 0xFFFFFF7F)
      {
        goto LABEL_85;
      }
    }

    else
    {
LABEL_53:
      v28 = v24[2];
      v29 = v28 - 64;
      v30 = (this + 1);
      v31 = (this + 1);
      if ((v28 - 64) <= 0xFFFFFF7F)
      {
        v31 = *v30;
      }

      v32 = v28 + 63;
      v33 = ((v28 + 63) >> 6) - 1;
      if ((v28 + 63) >> 6 == 1)
      {
        v33 = 0;
LABEL_82:
        if ((*(v31 + v33) | (-1 << v32)) == 0xFFFFFFFFFFFFFFFFLL)
        {
          if (v29 <= 0xFFFFFF7F)
          {
            v30 = *v30;
          }

          llvm::APInt::tcSet(v30, 0, (v28 + 64) >> 6);
          llvm::APInt::tcSetBit(v30, ((*this)[2] - 1));
          result = 0;
          v54 = *(this + 4);
          goto LABEL_100;
        }
      }

      else
      {
        v34 = v31;
        v35 = (v32 >> 6) - 1;
        while (1)
        {
          v36 = *v34++;
          if (v36 != -1)
          {
            break;
          }

          if (!--v35)
          {
            goto LABEL_82;
          }
        }
      }

      v49 = (this + 1);
      if (v29 > 0xFFFFFF7F)
      {
LABEL_85:
        llvm::APInt::tcAddPart(v49, 1, (v28 + 64) >> 6);
        goto LABEL_86;
      }
    }

    v49 = *v49;
    goto LABEL_85;
  }

  v4 = *(this + 20);
  if ((*this)[5] != 2 || (v4 & 5 | 2) != 3)
  {
    v4 ^= 8u;
    *(this + 20) = v4;
  }

  result = 0;
  v7 = v4 & 7;
  if (v7 > 1)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (!v7)
  {
    if ((v4 & 8) != 0)
    {
      *(this + 20) = v4 & 0xF0 | 0xA;
      v12 = *this;
      *(this + 4) = **this;
      v13 = v12[2];
      v14 = this + 1;
      if ((v13 - 64) <= 0xFFFFFF7F)
      {
        v14 = *v14;
      }

      v15 = v13 + 64;
      memset(v14, 255, 8 * (((v13 + 64) >> 6) - 1));
      v16 = *this;
      v17 = (v15 & 0xFFFFFFC0) - (*this)[2] >= 0x40 ? 0 : 0xFFFFFFFFFFFFFFFFLL >> ((v15 & 0xC0) - *(*this + 8));
      v14[(v15 >> 6) - 1] = v17;
      if (v16[4] == 1 && v16[5] == 1)
      {
        result = 0;
        *v14 &= ~1uLL;
        if (!a2)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

    goto LABEL_86;
  }

  if (v7 != 1)
  {
    goto LABEL_87;
  }

  if (((*this)[4] - 1) < 2)
  {
    goto LABEL_86;
  }

  v8 = (*this)[2];
  v9 = (this + 1);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v9 = *v9;
  }

  if (llvm::APInt::tcExtractBit(v9, (v8 - 2)))
  {
    goto LABEL_86;
  }

  llvm::detail::IEEEFloat::makeNaN(this, 0, (*(this + 20) >> 3) & 1, 0);
  result = 1;
  if (!a2)
  {
    return result;
  }

LABEL_88:
  v50 = *(this + 20);
  if ((*this)[5] != 2 || (v50 & 5 | 2) != 3)
  {
    *(this + 20) = v50 ^ 8;
  }

  return result;
}

llvm::detail::IEEEFloat *llvm::detail::frexp@<X0>(uint64_t a1@<X0>, const llvm::detail::IEEEFloat *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = llvm::detail::ilogb(a1, a2);
  *a2 = v8;
  if (v8 == 0x7FFFFFFF)
  {

    return llvm::detail::IEEEFloat::IEEEFloat(a4, a1);
  }

  else
  {
    if (v8 == -2147483647)
    {
      v15 = 0;
    }

    else
    {
      if (v8 == 0x80000000)
      {
        result = llvm::detail::IEEEFloat::IEEEFloat(a4, a1);
        if (*(*a4 + 16) != 1)
        {
          v10 = *(*a4 + 8);
          v13 = *(a4 + 8);
          v12 = a4 + 8;
          v11 = v13;
          if ((v10 - 64) >= 0xFFFFFF80)
          {
            v14 = v12;
          }

          else
          {
            v14 = v11;
          }

          return llvm::APInt::tcSetBit(v14, (v10 - 2));
        }

        return result;
      }

      v15 = v8 + 1;
    }

    *a2 = v15;
    v16 = *a1;
    v39 = v16;
    if ((v16[2] + 64) >= 0x80)
    {
      operator new[]();
    }

    v17 = *(a1 + 20);
    v18 = v17 & 7;
    v42 = v17 & 0xF;
    v19 = *(a1 + 16);
    v41 = v19;
    v21 = (v17 & 6) != 0 && v18 != 3;
    if (v18 == 1 || v21)
    {
      v23 = v16[2];
      if ((v23 - 64) >= 0xFFFFFF80)
      {
        v8 = &v40;
      }

      v24 = *(*a1 + 8) - 64;
      v27 = *(a1 + 8);
      v26 = (a1 + 8);
      v25 = v27;
      if (v24 >= 0xFFFFFF80)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      llvm::APInt::tcAssign(v8, v28, ((v23 + 64) >> 6));
      v16 = v39;
      v19 = v41;
    }

    v29 = -*a2;
    v30 = *v16 + v16[2] + ~v16[1];
    v31 = -2 - v30;
    if (v30 + 1 < v29)
    {
      v32 = v30 + 1;
    }

    else
    {
      v32 = -*a2;
    }

    if (v31 <= v29)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    v41 = v33 + v19;
    result = llvm::detail::IEEEFloat::normalize(&v39, a3, 0);
    v34 = v42;
    v35 = v39;
    if ((v42 & 7) == 1 && v39[4] != 1)
    {
      v36 = v39[2];
      if ((v36 - 64) >= 0xFFFFFF80)
      {
        v37 = &v40;
      }

      else
      {
        v37 = v40;
      }

      result = llvm::APInt::tcSetBit(v37, (v36 - 2));
      v35 = v39;
      v34 = v42;
    }

    v38 = v40;
    *a4 = v35;
    *(a4 + 8) = v38;
    *(a4 + 16) = v41;
    *(a4 + 20) = *(a4 + 20) & 0xF0 | v34 & 0xF;
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

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

{
  *a1 = a2;
  operator new[]();
}

void *llvm::detail::DoubleAPFloat::DoubleAPFloat(void *this, const llvm::detail::DoubleAPFloat *a2)
{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  this[1] = 0;
  return this;
}

{
  v2 = *(a2 + 1);
  *this = *a2;
  if (v2)
  {
    operator new[]();
  }

  this[1] = 0;
  return this;
}

__n128 llvm::detail::DoubleAPFloat::DoubleAPFloat(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &llvm::semBogus;
  return result;
}

{
  result = *a2;
  a2->n128_u64[1] = 0;
  *a1 = result;
  a2->n128_u64[0] = &llvm::semBogus;
  return result;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::operator=(llvm::detail::DoubleAPFloat *a1, llvm::detail::IEEEFloat *a2)
{
  v2 = a2;
  if (*a1 != *a2 || (v7 = *(a2 + 1)) == 0)
  {
    v4 = 0;
    v5 = a1;
    if (a1 != a2)
    {
LABEL_3:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
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
  v9 = (v8 + 8);
  v10 = *(v8 + 8);
  v11 = (v7 + 8);
  v12 = *(v7 + 8);
  if (v10 != &llvm::semPPCDoubleDouble)
  {
    if (v12 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v9, v11);
      goto LABEL_22;
    }

    if (v8 == v7)
    {
      goto LABEL_22;
    }

    if ((*(v10 + 8) - 64) <= 0xFFFFFF7F)
    {
      v15 = *(v8 + 16);
      if (v15)
      {
        v16 = v9;
        v17 = (v7 + 8);
        MEMORY[0x259C63150](v15, 0x1000C8000313F17);
        v11 = v17;
        v9 = v16;
      }
    }

LABEL_20:
    llvm::APFloat::Storage::Storage(v9, v11);
    goto LABEL_22;
  }

  if (v12 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::operator=(v9, v11);
    goto LABEL_22;
  }

  if (v8 != v7)
  {
    v14 = (v7 + 8);
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v9);
    v11 = v14;
    goto LABEL_20;
  }

LABEL_22:
  v18 = *(v2 + 1);
  v19 = *(a1 + 1);
  v20 = (v19 + 40);
  v21 = *(v19 + 40);
  v2 = (v18 + 40);
  v22 = *(v18 + 40);
  v23 = v22 == &llvm::semPPCDoubleDouble;
  v4 = v21 == &llvm::semPPCDoubleDouble;
  if (v21 != &llvm::semPPCDoubleDouble)
  {
    v5 = a1;
    if (v22 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_53;
    }

LABEL_24:
    if (v19 == v18)
    {
      goto LABEL_10;
    }

    if ((v21[2] - 64) <= 0xFFFFFF7F)
    {
      v24 = *(v19 + 48);
      if (v24)
      {
        v25 = v20;
        MEMORY[0x259C63150](v24, 0x1000C8000313F17);
        v20 = v25;
      }
    }

LABEL_32:
    llvm::APFloat::Storage::Storage(v20, v2);
    goto LABEL_10;
  }

  if (v22 != &llvm::semPPCDoubleDouble)
  {
    v5 = a1;
LABEL_30:
    if (v19 == v18)
    {
      v4 = v23;
      goto LABEL_10;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v20);
    v4 = v23;
    goto LABEL_32;
  }

  while (1)
  {
    v5 = v20;
    v26 = *(v2 + 1);
    if (!v26)
    {
      v4 = 1;
      if (v20 != v2)
      {
        goto LABEL_3;
      }

      goto LABEL_10;
    }

    v27 = *(v20 + 1);
    v28 = (v27 + 8);
    v29 = *(v27 + 8);
    v30 = (v26 + 8);
    v31 = *(v26 + 8);
    if (v29 == &llvm::semPPCDoubleDouble)
    {
      if (v31 != &llvm::semPPCDoubleDouble)
      {
        if (v27 == v26)
        {
          goto LABEL_46;
        }

        v32 = (v26 + 8);
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v28);
        v30 = v32;
        goto LABEL_44;
      }

      llvm::detail::DoubleAPFloat::operator=(v28, v30);
    }

    else
    {
      if (v31 != &llvm::semPPCDoubleDouble)
      {
        llvm::detail::IEEEFloat::operator=(v28, v30);
        goto LABEL_46;
      }

      if (v27 != v26)
      {
        if ((*(v29 + 8) - 64) <= 0xFFFFFF7F)
        {
          v33 = *(v27 + 16);
          if (v33)
          {
            v34 = v28;
            v35 = (v26 + 8);
            MEMORY[0x259C63150](v33, 0x1000C8000313F17);
            v30 = v35;
            v28 = v34;
          }
        }

LABEL_44:
        llvm::APFloat::Storage::Storage(v28, v30);
      }
    }

LABEL_46:
    v18 = *(v2 + 1);
    v19 = *(v5 + 1);
    v20 = (v19 + 40);
    v21 = *(v19 + 40);
    v2 = (v18 + 40);
    v36 = *(v18 + 40);
    if (v21 != &llvm::semPPCDoubleDouble)
    {
      break;
    }

    if (v36 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_30;
    }
  }

  if (v36 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_24;
  }

LABEL_53:
  llvm::detail::IEEEFloat::operator=(v20, v2);
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

uint64_t llvm::APFloat::operator=(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (v5 != &llvm::semPPCDoubleDouble)
  {
    if (v8 != &llvm::semPPCDoubleDouble)
    {
      llvm::detail::IEEEFloat::operator=(v4, v7);
      return a1;
    }

    if (a1 == a2)
    {
      return a1;
    }

    if ((*(v5 + 8) - 64) <= 0xFFFFFF7F && *(a1 + 16))
    {
      v12 = v4;
      v13 = v7;
      MEMORY[0x259C63150](*(a1 + 16), 0x1000C8000313F17);
      llvm::APFloat::Storage::Storage(v12, v13);
      return a1;
    }

LABEL_8:
    llvm::APFloat::Storage::Storage(v4, v7);
    return a1;
  }

  if (v8 != &llvm::semPPCDoubleDouble)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v11 = v7;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v4);
    v7 = v11;
    goto LABEL_8;
  }

  llvm::detail::DoubleAPFloat::operator=(v4, v7);
  return a1;
}

uint64_t llvm::detail::DoubleAPFloat::addImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v195 = *MEMORY[0x277D85DE8];
  v10 = llvm::APFloat::Storage::Storage(&v193, (a2 + 8));
  if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    v11 = llvm::detail::DoubleAPFloat::addWithSpecial(v10, &v193, a4 + 8, &v193);
    goto LABEL_11;
  }

  v11 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a4 + 8), 0);
  if (v11 == 2)
  {
    v12 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a4 + 8), 0);
    v11 = llvm::detail::IEEEFloat::normalize(&v193, a6, v12);
  }

  v13 = v194;
  if ((v194 & 7) != 3)
  {
LABEL_11:
    if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v14 = *(a4 + 28);
  if ((v14 & 7) == 3 && ((v14 ^ v194) & 8) == 0)
  {
    v15 = v193.n128_u64[0];
    if (*(v193.n128_u64[0] + 20) == 2)
    {
      goto LABEL_8;
    }

LABEL_17:
    if (v15 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v13 = v194 & 0xF3 | (8 * (a6 == 3));
  v194 = v13;
  v15 = v193.n128_u64[0];
  if (*(v193.n128_u64[0] + 20) != 2)
  {
    goto LABEL_17;
  }

LABEL_8:
  v194 = v13 & 0xF7;
  if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_12:
    v16 = *(v193.n128_u64[1] + 28);
    if ((v16 & 6) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v182 = v11;
    llvm::APFloat::Storage::Storage(&v189, (a2 + 8));
    if (v189 == &llvm::semPPCDoubleDouble)
    {
      v21 = a5;
      v22 = llvm::detail::DoubleAPFloat::changeSign(&v189);
      v181 = llvm::detail::DoubleAPFloat::addWithSpecial(v22, &v189, &v193, &v189);
      llvm::detail::DoubleAPFloat::changeSign(&v189);
    }

    else
    {
      v18 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v189, &v193, 1);
      if (v18 == 2)
      {
        v19 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v189, &v193, 1u);
        v18 = llvm::detail::IEEEFloat::normalize(&v189, a6, v19);
      }

      v20 = v191;
      v181 = v18;
      if ((v191 & 7) == 3)
      {
        if ((v194 & 7) != 3 || ((v194 ^ v191) & 8) == 0)
        {
          v20 = v191 & 0xF3 | (8 * (a6 == 3));
          v191 = v20;
        }

        v21 = a5;
        if (*(v189 + 5) == 2)
        {
          v191 = v20 & 0xF7;
        }
      }

      else
      {
        v21 = a5;
      }
    }

    v23 = llvm::APFloat::Storage::Storage(&v186, &v189);
    if (v186 == &llvm::semPPCDoubleDouble)
    {
      v24 = llvm::detail::DoubleAPFloat::addWithSpecial(v23, &v186, a4 + 8, &v186);
      v25 = v24;
      if (v189 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v24 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v186, (a4 + 8), 0);
      v25 = v24;
      if (v24 == 2)
      {
        v26 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v186, (a4 + 8), 0);
        v24 = llvm::detail::IEEEFloat::normalize(&v186, a6, v26);
        v25 = v24;
      }

      v27 = v188;
      if ((v188 & 7) == 3)
      {
        v28 = *(a4 + 28);
        if ((v28 & 7) != 3 || ((v28 ^ v188) & 8) != 0)
        {
          v27 = v188 & 0xF3 | (8 * (a6 == 3));
          v188 = v27;
        }

        if (*(v186 + 5) == 2)
        {
          v188 = v27 & 0xF7;
        }
      }

      if (v189 != &llvm::semPPCDoubleDouble)
      {
LABEL_40:
        v29 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v189, &v193, 0);
        if (v29 == 2)
        {
          v30 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v189, &v193, 0);
          v29 = llvm::detail::IEEEFloat::normalize(&v189, a6, v30);
        }

        v31 = v191;
        if ((v191 & 7) == 3)
        {
          if ((v194 & 7) != 3 || ((v194 ^ v191) & 8) != 0)
          {
            v31 = v191 & 0xF3 | (8 * (a6 == 3));
            v191 = v31;
            v32 = v189;
            if (*(v189 + 5) == 2)
            {
LABEL_46:
              v191 = v31 & 0xF7;
              if (v189 == &llvm::semPPCDoubleDouble)
              {
                goto LABEL_51;
              }

LABEL_54:
              v35 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v189, (a2 + 8), 1);
              v34 = v35;
              if (v35 == 2)
              {
                v36 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v189, (a2 + 8), 1u);
                v35 = llvm::detail::IEEEFloat::normalize(&v189, a6, v36);
                v34 = v35;
              }

              v37 = v191;
              if ((v191 & 7) != 3)
              {
LABEL_73:
                v39 = v189;
                if (v189 == &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_74;
                }

                goto LABEL_61;
              }

              v38 = *(a2 + 28);
              if ((v38 & 7) == 3 && ((v38 ^ v191) & 8) != 0)
              {
                v39 = v189;
                if (*(v189 + 5) != 2)
                {
LABEL_60:
                  if (v39 == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_74;
                  }

                  goto LABEL_61;
                }
              }

              else
              {
                v37 = v191 & 0xF3 | (8 * (a6 == 3));
                v191 = v37;
                v39 = v189;
                if (*(v189 + 5) != 2)
                {
                  goto LABEL_60;
                }
              }

              v191 = v37 & 0xF7;
              v39 = v189;
              if (v189 == &llvm::semPPCDoubleDouble)
              {
LABEL_74:
                v35 = llvm::detail::DoubleAPFloat::changeSign(&v189);
                if (v186 == &llvm::semPPCDoubleDouble)
                {
LABEL_75:
                  v40 = llvm::detail::DoubleAPFloat::addWithSpecial(v35, &v186, &v189, &v186);
                  v41 = v40;
                  goto LABEL_76;
                }

LABEL_65:
                v40 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v186, &v189, 0);
                v41 = v40;
                if (v40 == 2)
                {
                  v42 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v186, &v189, 0);
                  v40 = llvm::detail::IEEEFloat::normalize(&v186, a6, v42);
                  v41 = v40;
                }

                v43 = v188;
                if ((v188 & 7) != 3)
                {
LABEL_76:
                  if (v186 == &llvm::semPPCDoubleDouble)
                  {
LABEL_77:
                    v45 = a6;
                    v46 = llvm::detail::DoubleAPFloat::addWithSpecial(v40, &v186, a3 + 8, &v186);
                    v47 = v46;
                    goto LABEL_91;
                  }

LABEL_83:
                  v45 = a6;
                  v46 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v186, (a3 + 8), 0);
                  v47 = v46;
                  if (v46 == 2)
                  {
                    v48 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v186, (a3 + 8), 0);
                    v46 = llvm::detail::IEEEFloat::normalize(&v186, v45, v48);
                    v47 = v46;
                  }

                  v49 = v188;
                  if ((v188 & 7) != 3)
                  {
LABEL_91:
                    if (v186 == &llvm::semPPCDoubleDouble)
                    {
LABEL_92:
                      v52 = llvm::detail::DoubleAPFloat::addWithSpecial(v46, &v186, v21 + 8, &v186);
                      goto LABEL_103;
                    }

LABEL_95:
                    v52 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v186, (v21 + 8), 0);
                    if (v52 == 2)
                    {
                      v53 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v186, (v21 + 8), 0);
                      v52 = llvm::detail::IEEEFloat::normalize(&v186, v45, v53);
                    }

                    v54 = v188;
                    if ((v188 & 7) == 3)
                    {
                      v55 = v21[28];
                      if ((v55 & 7) != 3 || ((v55 ^ v188) & 8) != 0)
                      {
                        v54 = v188 & 0xF3 | (8 * (v45 == 3));
                        v188 = v54;
                      }

                      v56 = v186;
                      if (*(v186 + 5) != 2)
                      {
LABEL_104:
                        v57 = v181 | v25 | v29 | v34 | v41 | v47 | v52 | v182;
                        if (v56 == &llvm::semPPCDoubleDouble)
                        {
                          v58 = *(v187 + 28);
                          v59 = a1;
                          if ((v58 & 7) != 3)
                          {
                            goto LABEL_112;
                          }
                        }

                        else
                        {
                          v58 = v188;
                          v59 = a1;
                          if ((v188 & 7) != 3)
                          {
                            goto LABEL_112;
                          }
                        }

                        if ((v58 & 8) == 0)
                        {
                          llvm::APFloat::Storage::operator=((*(v59 + 8) + 8), &v193);
                          llvm::APFloat::makeZero((*(v59 + 8) + 32), 0);
                          v60 = 0;
                          v11 = 0;
                          v61 = v186;
                          if (v186 == &llvm::semPPCDoubleDouble)
                          {
                            goto LABEL_110;
                          }

                          goto LABEL_170;
                        }

LABEL_112:
                        v63 = *(v59 + 8);
                        v64 = (v63 + 8);
                        v65 = *(v63 + 8);
                        if (v65 == &llvm::semPPCDoubleDouble)
                        {
                          if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                          {
                            LODWORD(v64) = llvm::detail::DoubleAPFloat::operator=(v64, &v193);
                            v66 = *(v59 + 8);
                            v67 = (v66 + 8);
                            if (*(v66 + 8) != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_149;
                            }

LABEL_115:
                            v57 = llvm::detail::DoubleAPFloat::addWithSpecial(v64, v67, &v186, v67) | v57;
                            v68 = *(v59 + 8);
                            if (*(v68 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_116;
                            }

                            goto LABEL_158;
                          }

                          if (v63 == &v192)
                          {
LABEL_148:
                            v66 = *(v59 + 8);
                            v67 = (v66 + 8);
                            if (*(v66 + 8) != &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_149;
                            }

                            goto LABEL_115;
                          }

                          llvm::detail::DoubleAPFloat::~DoubleAPFloat(v64);
                        }

                        else
                        {
                          if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
                          {
                            LODWORD(v64) = llvm::detail::IEEEFloat::operator=(v64, &v193);
                            v66 = *(v59 + 8);
                            v67 = (v66 + 8);
                            if (*(v66 + 8) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_115;
                            }

LABEL_149:
                            v93 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v67, &v186, 0);
                            if (v93 == 2)
                            {
                              v94 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v67, &v186, 0);
                              v93 = llvm::detail::IEEEFloat::normalize(v67, v45, v94);
                            }

                            v95 = *(v66 + 28);
                            if ((v95 & 7) == 3)
                            {
                              if ((v188 & 7) != 3 || ((v188 ^ v95) & 8) != 0)
                              {
                                LOBYTE(v95) = v95 & 0xF3 | (8 * (v45 == 3));
                                *(v66 + 28) = v95;
                              }

                              if (*(*v67 + 20) == 2)
                              {
                                *(v66 + 28) = v95 & 0xF7;
                              }
                            }

                            v57 = v93 | v57;
                            v68 = *(v59 + 8);
                            if (*(v68 + 8) == &llvm::semPPCDoubleDouble)
                            {
LABEL_116:
                              v69 = *(*(v68 + 16) + 28) & 7;
                              if (v69 == 1)
                              {
                                goto LABEL_169;
                              }

LABEL_159:
                              if (v69)
                              {
                                llvm::APFloat::Storage::operator=((v68 + 40), &v193);
                                v96 = *(v59 + 8);
                                v97 = (v96 + 40);
                                if (*(v96 + 5) == &llvm::semPPCDoubleDouble)
                                {
                                  v103 = llvm::detail::DoubleAPFloat::changeSign(v97);
                                  v11 = llvm::detail::DoubleAPFloat::addWithSpecial(v103, v97, v96 + 8, v97);
                                  LODWORD(v98) = llvm::detail::DoubleAPFloat::changeSign(v97);
                                }

                                else
                                {
                                  v98 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v97, (v96 + 8), 1);
                                  v11 = v98;
                                  if (v98 == 2)
                                  {
                                    v99 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v97, (v96 + 8), 1u);
                                    v98 = llvm::detail::IEEEFloat::normalize(v97, v45, v99);
                                    v11 = v98;
                                  }

                                  v100 = v96[60];
                                  if ((v100 & 7) == 3)
                                  {
                                    v101 = v96[28];
                                    if ((v101 & 7) != 3 || ((v101 ^ v100) & 8) == 0)
                                    {
                                      LOBYTE(v100) = v100 & 0xF3 | (8 * (v45 == 3));
                                      v96[60] = v100;
                                    }

                                    if (*(*v97 + 20) == 2)
                                    {
                                      v96[60] = v100 & 0xF7;
                                    }
                                  }
                                }

                                v104 = *(v59 + 8);
                                v105 = (v104 + 40);
                                if (*(v104 + 40) == &llvm::semPPCDoubleDouble)
                                {
                                  v57 = v11 | llvm::detail::DoubleAPFloat::addWithSpecial(v98, v105, &v186, v105) | v57;
                                  v60 = 1;
                                  v61 = v186;
                                  if (v186 == &llvm::semPPCDoubleDouble)
                                  {
                                    goto LABEL_110;
                                  }
                                }

                                else
                                {
                                  v106 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v105, &v186, 0);
                                  if (v106 == 2)
                                  {
                                    v107 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v105, &v186, 0);
                                    v106 = llvm::detail::IEEEFloat::normalize(v105, v45, v107);
                                  }

                                  v108 = *(v104 + 60);
                                  if ((v108 & 7) == 3)
                                  {
                                    if ((v188 & 7) != 3 || ((v188 ^ v108) & 8) != 0)
                                    {
                                      LOBYTE(v108) = v108 & 0xF3 | (8 * (v45 == 3));
                                      *(v104 + 60) = v108;
                                    }

                                    if (*(*v105 + 20) == 2)
                                    {
                                      *(v104 + 60) = v108 & 0xF7;
                                    }
                                  }

                                  v57 = v11 | v106 | v57;
                                  v60 = 1;
                                  v61 = v186;
                                  if (v186 == &llvm::semPPCDoubleDouble)
                                  {
LABEL_110:
                                    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v186);
                                    v62 = v189;
                                    if (v189 == &llvm::semPPCDoubleDouble)
                                    {
LABEL_111:
                                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v189);
                                      goto LABEL_177;
                                    }

LABEL_174:
                                    if ((*(v62 + 2) - 64) <= 0xFFFFFF7F && v190)
                                    {
                                      MEMORY[0x259C63150](v190, 0x1000C8000313F17);
                                    }

LABEL_177:
                                    if (!v60)
                                    {
                                      goto LABEL_179;
                                    }

                                    goto LABEL_178;
                                  }
                                }

LABEL_170:
                                if ((*(v61 + 2) - 64) <= 0xFFFFFF7F && v187)
                                {
                                  MEMORY[0x259C63150](v187, 0x1000C8000313F17);
                                }

                                v62 = v189;
                                if (v189 == &llvm::semPPCDoubleDouble)
                                {
                                  goto LABEL_111;
                                }

                                goto LABEL_174;
                              }

LABEL_169:
                              llvm::APFloat::makeZero((v68 + 32), 0);
                              v60 = 0;
                              v11 = v57;
                              v61 = v186;
                              if (v186 == &llvm::semPPCDoubleDouble)
                              {
                                goto LABEL_110;
                              }

                              goto LABEL_170;
                            }

LABEL_158:
                            v69 = *(v68 + 28) & 7;
                            if (v69 == 1)
                            {
                              goto LABEL_169;
                            }

                            goto LABEL_159;
                          }

                          if (v63 == &v192)
                          {
                            goto LABEL_148;
                          }

                          if ((*(v65 + 8) - 64) <= 0xFFFFFF7F)
                          {
                            v91 = *(v63 + 16);
                            if (v91)
                            {
                              v92 = v64;
                              MEMORY[0x259C63150](v91, 0x1000C8000313F17);
                              v64 = v92;
                            }
                          }
                        }

                        LODWORD(v64) = llvm::APFloat::Storage::Storage(v64, &v193);
                        goto LABEL_148;
                      }

                      v188 = v54 & 0xF7;
                    }

LABEL_103:
                    v56 = v186;
                    goto LABEL_104;
                  }

                  v50 = *(a3 + 28);
                  if ((v50 & 7) != 3 || ((v50 ^ v188) & 8) != 0)
                  {
                    v49 = v188 & 0xF3 | (8 * (v45 == 3));
                    v188 = v49;
                    v51 = v186;
                    if (*(v186 + 5) == 2)
                    {
LABEL_89:
                      v188 = v49 & 0xF7;
                      if (v186 == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_92;
                      }

                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    v51 = v186;
                    if (*(v186 + 5) == 2)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (v51 == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_95;
                }

                if ((v191 & 7) != 3 || ((v191 ^ v188) & 8) != 0)
                {
                  v43 = v188 & 0xF3 | (8 * (a6 == 3));
                  v188 = v43;
                  v44 = v186;
                  if (*(v186 + 5) == 2)
                  {
LABEL_71:
                    v188 = v43 & 0xF7;
                    if (v186 == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_77;
                    }

                    goto LABEL_83;
                  }
                }

                else
                {
                  v44 = v186;
                  if (*(v186 + 5) == 2)
                  {
                    goto LABEL_71;
                  }
                }

                if (v44 == &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_77;
                }

                goto LABEL_83;
              }

LABEL_61:
              if (*(v39 + 5) != 2 || (v191 & 5 | 2) != 3)
              {
                v191 ^= 8u;
              }

              if (v186 == &llvm::semPPCDoubleDouble)
              {
                goto LABEL_75;
              }

              goto LABEL_65;
            }
          }

          else
          {
            v32 = v189;
            if (*(v189 + 5) == 2)
            {
              goto LABEL_46;
            }
          }

          if (v32 != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_54;
          }

LABEL_51:
          v33 = llvm::detail::DoubleAPFloat::changeSign(&v189);
          v34 = llvm::detail::DoubleAPFloat::addWithSpecial(v33, &v189, a2 + 8, &v189);
          v35 = llvm::detail::DoubleAPFloat::changeSign(&v189);
          goto LABEL_73;
        }

LABEL_50:
        if (v189 != &llvm::semPPCDoubleDouble)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      }
    }

    v29 = llvm::detail::DoubleAPFloat::addWithSpecial(v24, &v189, &v193, &v189);
    goto LABEL_50;
  }

LABEL_18:
  v16 = v194;
  if ((v194 & 6) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v16 & 7) == 0)
  {
    v70 = *(a2 + 8);
    if (v70 == &llvm::semPPCDoubleDouble)
    {
      v73 = llvm::detail::DoubleAPFloat::compareAbsoluteValue((a2 + 8), (a4 + 8));
      v77 = v73 == 2;
      v79 = (a5 + 8);
      v78 = *(a5 + 1);
      v80 = v193.n128_u64[0];
      if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
LABEL_131:
        if (v78 != &llvm::semPPCDoubleDouble)
        {
          v73 = llvm::detail::IEEEFloat::operator=(&v193, v79);
          if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
          {
            goto LABEL_133;
          }

LABEL_210:
          v81 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a3 + 8), 0);
          v82 = v81;
          if (v81 == 2)
          {
            v109 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a3 + 8), 0);
            v81 = llvm::detail::IEEEFloat::normalize(&v193, a6, v109);
            v82 = v81;
          }

          v110 = v194;
          if ((v194 & 7) == 3)
          {
            v111 = *(a3 + 28);
            if ((v111 & 7) != 3 || ((v111 ^ v194) & 8) != 0)
            {
              v110 = v194 & 0xF3 | (8 * (a6 == 3));
              v194 = v110;
            }

            if (*(v193.n128_u64[0] + 20) == 2)
            {
              v194 = v110 & 0xF7;
            }
          }

          v83 = v193.n128_u64[0] == &llvm::semPPCDoubleDouble;
          if (!v77)
          {
LABEL_134:
            if (v83)
            {
              v84 = a6;
              v85 = llvm::detail::DoubleAPFloat::addWithSpecial(v81, &v193, a2 + 8, &v193);
              v86 = v85;
            }

            else
            {
              v84 = a6;
              v85 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a2 + 8), 0);
              v86 = v85;
              if (v85 == 2)
              {
                v87 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a2 + 8), 0);
                v85 = llvm::detail::IEEEFloat::normalize(&v193, v84, v87);
                v86 = v85;
              }

              v88 = v194;
              if ((v194 & 7) == 3)
              {
                v89 = *(a2 + 28);
                if ((v89 & 7) != 3 || ((v89 ^ v194) & 8) != 0)
                {
                  v88 = v194 & 0xF3 | (8 * (v84 == 3));
                  v194 = v88;
                  v90 = v193.n128_u64[0];
                  if (*(v193.n128_u64[0] + 20) == 2)
                  {
LABEL_141:
                    v194 = v88 & 0xF7;
                    if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_230;
                    }

LABEL_239:
                    v117 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a4 + 8), 0);
                    if (v117 == 2)
                    {
                      v118 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a4 + 8), 0);
                      v117 = llvm::detail::IEEEFloat::normalize(&v193, v84, v118);
                    }

                    v119 = v194;
                    if ((v194 & 7) == 3)
                    {
                      v120 = *(a4 + 28);
                      if ((v120 & 7) == 3)
                      {
LABEL_250:
                        if (((v120 ^ v119) & 8) == 0)
                        {
                          goto LABEL_252;
                        }
                      }

LABEL_251:
                      LOBYTE(v119) = v119 & 0xF3 | (8 * (v84 == 3));
                      v194 = v119;
LABEL_252:
                      if (*(v193.n128_u64[0] + 20) == 2)
                      {
                        v194 = v119 & 0xF7;
                      }

                      goto LABEL_254;
                    }

                    goto LABEL_254;
                  }
                }

                else
                {
                  v90 = v193.n128_u64[0];
                  if (*(v193.n128_u64[0] + 20) == 2)
                  {
                    goto LABEL_141;
                  }
                }

                if (v90 != &llvm::semPPCDoubleDouble)
                {
                  goto LABEL_239;
                }

LABEL_230:
                v116 = a4 + 8;
LABEL_234:
                v117 = llvm::detail::DoubleAPFloat::addWithSpecial(v85, &v193, v116, &v193);
                goto LABEL_254;
              }
            }

            if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
            {
              goto LABEL_239;
            }

            goto LABEL_230;
          }

LABEL_219:
          if (v83)
          {
            v84 = a6;
            v85 = llvm::detail::DoubleAPFloat::addWithSpecial(v81, &v193, a4 + 8, &v193);
            v86 = v85;
          }

          else
          {
            v84 = a6;
            v85 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a4 + 8), 0);
            v86 = v85;
            if (v85 == 2)
            {
              v112 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a4 + 8), 0);
              v85 = llvm::detail::IEEEFloat::normalize(&v193, v84, v112);
              v86 = v85;
            }

            v113 = v194;
            if ((v194 & 7) == 3)
            {
              v114 = *(a4 + 28);
              if ((v114 & 7) != 3 || ((v114 ^ v194) & 8) != 0)
              {
                v113 = v194 & 0xF3 | (8 * (v84 == 3));
                v194 = v113;
                v115 = v193.n128_u64[0];
                if (*(v193.n128_u64[0] + 20) == 2)
                {
LABEL_226:
                  v194 = v113 & 0xF7;
                  if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                  {
                    goto LABEL_233;
                  }

LABEL_246:
                  v117 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v193, (a2 + 8), 0);
                  if (v117 == 2)
                  {
                    v121 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v193, (a2 + 8), 0);
                    v117 = llvm::detail::IEEEFloat::normalize(&v193, v84, v121);
                  }

                  v119 = v194;
                  if ((v194 & 7) == 3)
                  {
                    v120 = *(a2 + 28);
                    if ((v120 & 7) == 3)
                    {
                      goto LABEL_250;
                    }

                    goto LABEL_251;
                  }

LABEL_254:
                  v183 = v117 | v86 | v82;
                  v122 = v84;
                  if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                  {
                    v123 = *(v193.n128_u64[1] + 28) & 7;
                    if (v123 == 1)
                    {
                      goto LABEL_262;
                    }
                  }

                  else
                  {
                    v123 = v194 & 7;
                    if (v123 == 1)
                    {
LABEL_262:
                      llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v193);
                      llvm::APFloat::makeZero((*(a1 + 8) + 32), 0);
                      v11 = v183;
                      v17 = v193.n128_u64[0];
                      if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                      {
                        goto LABEL_15;
                      }

                      goto LABEL_180;
                    }
                  }

                  if (!v123)
                  {
                    goto LABEL_262;
                  }

                  v124 = *(a1 + 8);
                  v125 = (v124 + 8);
                  v126 = *(v124 + 8);
                  if (v126 == &llvm::semPPCDoubleDouble)
                  {
                    if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
                    {
                      if (v124 == &v192)
                      {
                        goto LABEL_273;
                      }

                      llvm::detail::DoubleAPFloat::~DoubleAPFloat(v125);
                      goto LABEL_271;
                    }

                    llvm::detail::DoubleAPFloat::operator=(v125, &v193);
                  }

                  else
                  {
                    if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::IEEEFloat::operator=(v125, &v193);
                      goto LABEL_273;
                    }

                    if (v124 != &v192)
                    {
                      if ((*(v126 + 8) - 64) <= 0xFFFFFF7F && *(v124 + 16))
                      {
                        v127 = (v124 + 8);
                        MEMORY[0x259C63150](*(v124 + 16), 0x1000C8000313F17);
                        v125 = v127;
                      }

LABEL_271:
                      llvm::APFloat::Storage::Storage(v125, &v193);
                    }
                  }

LABEL_273:
                  v128 = llvm::APFloat::Storage::Storage(&v189, (a3 + 8));
                  if (v189 == &llvm::semPPCDoubleDouble)
                  {
                    v129 = llvm::detail::DoubleAPFloat::addWithSpecial(v128, &v189, v79, &v189);
                  }

                  else
                  {
                    v129 = llvm::detail::IEEEFloat::addOrSubtractSpecials(&v189, v79, 0);
                    if (v129 == 2)
                    {
                      v130 = llvm::detail::IEEEFloat::addOrSubtractSignificand(&v189, v79, 0);
                      v129 = llvm::detail::IEEEFloat::normalize(&v189, v122, v130);
                    }

                    v131 = v191;
                    if ((v191 & 7) == 3)
                    {
                      v132 = a5[28];
                      if ((v132 & 7) != 3 || ((v132 ^ v191) & 8) != 0)
                      {
                        v131 = v191 & 0xF3 | (8 * (v122 == 3));
                        v191 = v131;
                      }

                      if (*(v189 + 5) == 2)
                      {
                        v191 = v131 & 0xF7;
                      }
                    }
                  }

                  v133 = *(a1 + 8);
                  v134 = v133 + 32;
                  v135 = (v133 + 40);
                  v136 = *(v133 + 40);
                  if (v77)
                  {
                    v137 = *(a2 + 8);
                    if (v136 == &llvm::semPPCDoubleDouble)
                    {
                      if (v137 != &llvm::semPPCDoubleDouble)
                      {
                        if (v134 == a2)
                        {
                          goto LABEL_307;
                        }

                        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v135);
                        goto LABEL_300;
                      }

                      llvm::detail::DoubleAPFloat::operator=(v135, (a2 + 8));
                    }

                    else
                    {
                      if (v137 != &llvm::semPPCDoubleDouble)
                      {
                        llvm::detail::IEEEFloat::operator=(v135, (a2 + 8));
                        goto LABEL_307;
                      }

                      if (v134 != a2)
                      {
                        if ((*(v136 + 8) - 64) <= 0xFFFFFF7F)
                        {
                          v139 = *(v133 + 48);
                          if (v139)
                          {
                            v140 = v135;
                            MEMORY[0x259C63150](v139, 0x1000C8000313F17);
                            v135 = v140;
                          }
                        }

LABEL_300:
                        llvm::APFloat::Storage::Storage(v135, (a2 + 8));
                      }
                    }

LABEL_307:
                    v143 = *(a1 + 8);
                    v144 = (v143 + 40);
                    if (*(v143 + 40) == &llvm::semPPCDoubleDouble)
                    {
                      v149 = llvm::detail::DoubleAPFloat::changeSign(v144);
                      v146 = llvm::detail::DoubleAPFloat::addWithSpecial(v149, v144, &v193, v144);
                      v145 = llvm::detail::DoubleAPFloat::changeSign(v144);
                    }

                    else
                    {
                      v145 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v144, &v193, 1);
                      v146 = v145;
                      if (v145 == 2)
                      {
                        v147 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v144, &v193, 1u);
                        v145 = llvm::detail::IEEEFloat::normalize(v144, v122, v147);
                        v146 = v145;
                      }

                      v148 = *(v143 + 60);
                      if ((v148 & 7) == 3)
                      {
                        if ((v194 & 7) != 3 || ((v194 ^ v148) & 8) == 0)
                        {
                          LOBYTE(v148) = v148 & 0xF3 | (8 * (v122 == 3));
                          *(v143 + 60) = v148;
                        }

                        if (*(*v144 + 20) == 2)
                        {
                          *(v143 + 60) = v148 & 0xF7;
                        }
                      }
                    }

                    v150 = *(a1 + 8);
                    v151 = (v150 + 40);
                    if (*(v150 + 40) == &llvm::semPPCDoubleDouble)
                    {
                      v152 = llvm::detail::DoubleAPFloat::addWithSpecial(v145, v151, a4 + 8, v151);
                    }

                    else
                    {
                      v152 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v151, (a4 + 8), 0);
                      if (v152 == 2)
                      {
                        v153 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v151, (a4 + 8), 0);
                        v152 = llvm::detail::IEEEFloat::normalize(v151, v122, v153);
                      }

                      v154 = *(v150 + 60);
                      if ((v154 & 7) == 3)
                      {
                        v155 = *(a4 + 28);
                        if ((v155 & 7) != 3 || ((v155 ^ v154) & 8) != 0)
                        {
                          LOBYTE(v154) = v154 & 0xF3 | (8 * (v122 == 3));
                          *(v150 + 60) = v154;
                          v156 = a1;
                          if (*(*v151 + 20) == 2)
                          {
LABEL_324:
                            *(v150 + 60) = v154 & 0xF7;
                            v157 = v152 | v146;
                            v158 = *(v156 + 8);
                            v159 = (v158 + 40);
                            if (*(v158 + 40) == &llvm::semPPCDoubleDouble)
                            {
                              goto LABEL_328;
                            }

                            goto LABEL_331;
                          }
                        }

                        else
                        {
                          v156 = a1;
                          if (*(*v151 + 20) == 2)
                          {
                            goto LABEL_324;
                          }
                        }

                        v157 = v152 | v146;
                        v158 = *(v156 + 8);
                        v159 = (v158 + 40);
                        if (*(v158 + 40) != &llvm::semPPCDoubleDouble)
                        {
LABEL_331:
                          v160 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v159, &v189, 0);
                          if (v160 == 2)
                          {
                            v161 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v159, &v189, 0);
                            v160 = llvm::detail::IEEEFloat::normalize(v159, v122, v161);
                          }

                          v162 = *(v158 + 60);
                          if ((v162 & 7) != 3)
                          {
                            goto LABEL_339;
                          }

                          if ((v191 & 7) != 3 || ((v191 ^ v162) & 8) != 0)
                          {
                            LOBYTE(v162) = v162 & 0xF3 | (8 * (v122 == 3));
                            *(v158 + 60) = v162;
                          }

                          v163 = v183;
                          if (*(*v159 + 20) != 2)
                          {
                            goto LABEL_372;
                          }

                          goto LABEL_370;
                        }

LABEL_328:
                        v160 = llvm::detail::DoubleAPFloat::addWithSpecial(v152, v159, &v189, v159);
LABEL_339:
                        v163 = v183;
                        goto LABEL_372;
                      }
                    }

                    v157 = v152 | v146;
                    v158 = *(a1 + 8);
                    v159 = (v158 + 40);
                    if (*(v158 + 40) != &llvm::semPPCDoubleDouble)
                    {
                      goto LABEL_331;
                    }

                    goto LABEL_328;
                  }

                  v138 = *(a4 + 8);
                  if (v136 == &llvm::semPPCDoubleDouble)
                  {
                    if (v138 == &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::DoubleAPFloat::operator=(v135, (a4 + 8));
                      goto LABEL_341;
                    }

                    if (v134 == a4)
                    {
LABEL_341:
                      v164 = *(a1 + 8);
                      v165 = (v164 + 40);
                      if (*(v164 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v172 = llvm::detail::DoubleAPFloat::changeSign(v165);
                        v166 = v122;
                        v168 = llvm::detail::DoubleAPFloat::addWithSpecial(v172, v165, &v193, v165);
                        v167 = llvm::detail::DoubleAPFloat::changeSign(v165);
                        v171 = a1;
                        v163 = v183;
                      }

                      else
                      {
                        v166 = v122;
                        v167 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v165, &v193, 1);
                        v168 = v167;
                        if (v167 == 2)
                        {
                          v169 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v165, &v193, 1u);
                          v167 = llvm::detail::IEEEFloat::normalize(v165, v122, v169);
                          v168 = v167;
                        }

                        v170 = *(v164 + 60);
                        v163 = v183;
                        if ((v170 & 7) == 3)
                        {
                          if ((v194 & 7) != 3 || ((v194 ^ v170) & 8) == 0)
                          {
                            LOBYTE(v170) = v170 & 0xF3 | (8 * (v166 == 3));
                            *(v164 + 60) = v170;
                          }

                          if (*(*v165 + 20) == 2)
                          {
                            *(v164 + 60) = v170 & 0xF7;
                          }
                        }

                        v171 = a1;
                      }

                      v173 = *(v171 + 8);
                      v174 = (v173 + 40);
                      if (*(v173 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v175 = llvm::detail::DoubleAPFloat::addWithSpecial(v167, v174, a2 + 8, v174);
                      }

                      else
                      {
                        v175 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v174, (a2 + 8), 0);
                        if (v175 == 2)
                        {
                          v176 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v174, (a2 + 8), 0);
                          v175 = llvm::detail::IEEEFloat::normalize(v174, v166, v176);
                        }

                        v177 = *(v173 + 60);
                        if ((v177 & 7) == 3)
                        {
                          v178 = *(a2 + 28);
                          if ((v178 & 7) != 3 || ((v178 ^ v177) & 8) != 0)
                          {
                            LOBYTE(v177) = v177 & 0xF3 | (8 * (v166 == 3));
                            *(v173 + 60) = v177;
                          }

                          if (*(*v174 + 20) == 2)
                          {
                            *(v173 + 60) = v177 & 0xF7;
                          }
                        }
                      }

                      v157 = v175 | v168;
                      v158 = *(a1 + 8);
                      v179 = (v158 + 40);
                      if (*(v158 + 40) == &llvm::semPPCDoubleDouble)
                      {
                        v160 = llvm::detail::DoubleAPFloat::addWithSpecial(v175, v179, &v189, v179);
LABEL_372:
                        v57 = v129 | v163 | v157 | v160;
                        if (v189 == &llvm::semPPCDoubleDouble)
                        {
                          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v189);
                        }

                        else if ((*(v189 + 2) - 64) <= 0xFFFFFF7F && v190)
                        {
                          MEMORY[0x259C63150](v190, 0x1000C8000313F17);
                        }

LABEL_178:
                        v11 = v57;
LABEL_179:
                        v17 = v193.n128_u64[0];
                        if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
                        {
                          goto LABEL_15;
                        }

                        goto LABEL_180;
                      }

                      v160 = llvm::detail::IEEEFloat::addOrSubtractSpecials(v179, &v189, 0);
                      if (v160 == 2)
                      {
                        v180 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v179, &v189, 0);
                        v160 = llvm::detail::IEEEFloat::normalize(v179, v166, v180);
                      }

                      v162 = *(v158 + 60);
                      if ((v162 & 7) != 3)
                      {
                        goto LABEL_372;
                      }

                      if ((v191 & 7) != 3 || ((v191 ^ v162) & 8) != 0)
                      {
                        LOBYTE(v162) = v162 & 0xF3 | (8 * (v166 == 3));
                        *(v158 + 60) = v162;
                      }

                      if (*(*v179 + 20) != 2)
                      {
                        goto LABEL_372;
                      }

LABEL_370:
                      *(v158 + 60) = v162 & 0xF7;
                      goto LABEL_372;
                    }

                    llvm::detail::DoubleAPFloat::~DoubleAPFloat(v135);
                  }

                  else
                  {
                    if (v138 != &llvm::semPPCDoubleDouble)
                    {
                      llvm::detail::IEEEFloat::operator=(v135, (a4 + 8));
                      goto LABEL_341;
                    }

                    if (v134 == a4)
                    {
                      goto LABEL_341;
                    }

                    if ((*(v136 + 8) - 64) <= 0xFFFFFF7F)
                    {
                      v141 = *(v133 + 48);
                      if (v141)
                      {
                        v142 = v135;
                        MEMORY[0x259C63150](v141, 0x1000C8000313F17);
                        v135 = v142;
                      }
                    }
                  }

                  llvm::APFloat::Storage::Storage(v135, (a4 + 8));
                  goto LABEL_341;
                }
              }

              else
              {
                v115 = v193.n128_u64[0];
                if (*(v193.n128_u64[0] + 20) == 2)
                {
                  goto LABEL_226;
                }
              }

              if (v115 != &llvm::semPPCDoubleDouble)
              {
                goto LABEL_246;
              }

LABEL_233:
              v116 = a2 + 8;
              goto LABEL_234;
            }
          }

          if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
          {
            goto LABEL_246;
          }

          goto LABEL_233;
        }

        if (&v192 == a5)
        {
          goto LABEL_209;
        }

        if ((*(v80 + 8) - 64) <= 0xFFFFFF7F && v193.n128_u64[1])
        {
          MEMORY[0x259C63150](v193.n128_u64[1], 0x1000C8000313F17);
        }

        goto LABEL_208;
      }
    }

    else
    {
      v71 = *(a2 + 24);
      v72 = *(a4 + 24);
      v73 = v71 - v72;
      if (v71 == v72)
      {
        v74 = *(v70 + 8);
        if ((v74 - 64) >= 0xFFFFFF80)
        {
          v75 = (a2 + 16);
        }

        else
        {
          v75 = *(a2 + 16);
        }

        if ((*(*(a4 + 8) + 8) - 64) >= 0xFFFFFF80)
        {
          v76 = (a4 + 16);
        }

        else
        {
          v76 = *(a4 + 16);
        }

        v73 = llvm::APInt::tcCompare(v75, v76, ((v74 + 64) >> 6));
      }

      v77 = v73 > 0;
      v79 = (a5 + 8);
      v78 = *(a5 + 1);
      v80 = v193.n128_u64[0];
      if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_131;
      }
    }

    if (v78 == &llvm::semPPCDoubleDouble)
    {
      v73 = llvm::detail::DoubleAPFloat::operator=(&v193, v79);
      if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_210;
      }

LABEL_133:
      v81 = llvm::detail::DoubleAPFloat::addWithSpecial(v73, &v193, a3 + 8, &v193);
      v82 = v81;
      v83 = v193.n128_u64[0] == &llvm::semPPCDoubleDouble;
      if (!v77)
      {
        goto LABEL_134;
      }

      goto LABEL_219;
    }

    if (&v192 == a5)
    {
LABEL_209:
      if (v193.n128_u64[0] != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_210;
      }

      goto LABEL_133;
    }

    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v193);
LABEL_208:
    v73 = llvm::APFloat::Storage::Storage(&v193, v79);
    goto LABEL_209;
  }

  llvm::APFloat::Storage::operator=((*(a1 + 8) + 8), &v193);
  llvm::APFloat::makeZero((*(a1 + 8) + 32), 0);
  v17 = v193.n128_u64[0];
  if (v193.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
LABEL_15:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v193);
    return v11;
  }

LABEL_180:
  if ((*(v17 + 8) - 64) <= 0xFFFFFF7F && v193.n128_u64[1])
  {
    MEMORY[0x259C63150](v193.n128_u64[1], 0x1000C8000313F17);
  }

  return v11;
}

uint64_t llvm::APFloat::add(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v5 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {

    return llvm::detail::DoubleAPFloat::addWithSpecial(this, (this + 8), (a2 + 8), (this + 8), a3);
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 0);
    if (result == 2)
    {
      v8 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v5, (a2 + 8), 0);
      result = llvm::detail::IEEEFloat::normalize(v5, a3, v8);
    }

    v9 = *(this + 28);
    if ((v9 & 7) == 3)
    {
      v10 = *(a2 + 28);
      if ((v10 & 7) != 3 || ((v10 ^ v9) & 8) != 0)
      {
        LOBYTE(v9) = v9 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v9;
      }

      if (*(*v5 + 5) == 2)
      {
        *(this + 28) = v9 & 0xF7;
      }
    }
  }

  return result;
}

void llvm::APFloat::makeZero(llvm::APFloat *this, _BOOL4 a2)
{
  i = *(this + 1);
  if (i == &llvm::semPPCDoubleDouble)
  {
    v5 = this;
    llvm::APFloat::makeZero(*(this + 2), a2);
    v6 = *(v5 + 2);
    for (i = *(v6 + 40); i == &llvm::semPPCDoubleDouble; i = *(v6 + 40))
    {
      llvm::APFloat::makeZero(*(v6 + 48), 0);
      v6 = *(v6 + 48);
    }

    v4 = 0;
    this = (v6 + 32);
    v3 = (v6 + 60);
  }

  else
  {
    v3 = this + 28;
    if (a2)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = *v3 & 0xF0;
  *v3 = v7 | v4 | 3;
  if (*(i + 20) == 2)
  {
    *v3 = v7 | 3;
  }

  v9 = *(i + 4);
  v8 = *(i + 8);
  *(this + 6) = v9 - 1;
  v10 = (this + 16);
  if ((v8 - 64) <= 0xFFFFFF7F)
  {
    v10 = *v10;
  }

  llvm::APInt::tcSet(v10, 0, (v8 + 64) >> 6);
}

uint64_t llvm::APFloat::subtract(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v5 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v11 = llvm::detail::DoubleAPFloat::changeSign((this + 8));
    v12 = llvm::detail::DoubleAPFloat::addWithSpecial(v11, v5, (a2 + 8), v5, a3);
    llvm::detail::DoubleAPFloat::changeSign(v5);
    return v12;
  }

  else
  {
    result = llvm::detail::IEEEFloat::addOrSubtractSpecials((this + 8), (a2 + 8), 1);
    if (result == 2)
    {
      v8 = llvm::detail::IEEEFloat::addOrSubtractSignificand(v5, (a2 + 8), 1u);
      result = llvm::detail::IEEEFloat::normalize(v5, a3, v8);
    }

    v9 = *(this + 28);
    if ((v9 & 7) == 3)
    {
      v10 = *(a2 + 28);
      if ((v10 & 7) != 3 || ((v10 ^ v9) & 8) == 0)
      {
        LOBYTE(v9) = v9 & 0xF3 | (8 * (a3 == 3));
        *(this + 28) = v9;
      }

      if (*(*v5 + 20) == 2)
      {
        *(this + 28) = v9 & 0xF7;
      }
    }
  }

  return result;
}

llvm::detail::DoubleAPFloat *llvm::APFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (v1 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::DoubleAPFloat::changeSign((this + 8));
  }

  v2 = *(this + 28);
  if (*(v1 + 20) != 2 || (v2 & 5 | 2) != 3)
  {
    *(this + 28) = v2 ^ 8;
  }

  return this;
}

uint64_t llvm::detail::DoubleAPFloat::addWithSpecial(int a1, llvm::detail::IEEEFloat *a2, llvm::detail::IEEEFloat *a3, llvm::detail::DoubleAPFloat *this, int a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 1);
  v6 = (v5 + 8);
  v7 = *(v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 1)
    {
      goto LABEL_41;
    }
  }

  else if ((*(*(a2 + 1) + 28) & 7) == 1)
  {
    goto LABEL_41;
  }

  v8 = *(a3 + 1);
  v9 = *(v8 + 8);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) == 1)
    {
      goto LABEL_42;
    }
  }

  else if ((*(*(a3 + 1) + 28) & 7) == 1)
  {
    goto LABEL_42;
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v5 + 16) + 28) & 7) == 3)
    {
      goto LABEL_42;
    }
  }

  else if ((*(v5 + 28) & 7) == 3)
  {
    goto LABEL_42;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v8 + 16) + 28) & 7) != 3)
    {
      goto LABEL_17;
    }

LABEL_41:
    v21 = this;
LABEL_43:
    llvm::detail::DoubleAPFloat::operator=(v21, a2);
    return 0;
  }

  if ((*(v8 + 28) & 7) == 3)
  {
    goto LABEL_41;
  }

LABEL_17:
  v10 = *(a2 + 1);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(v5 + 16);
  }

  if ((*(v10 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  v11 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v11 = *(v8 + 16);
  }

  if ((*(v11 + 28) & 7) != 0)
  {
    goto LABEL_31;
  }

  if (v7 != &llvm::semPPCDoubleDouble)
  {
    v12 = *(v5 + 28);
    v13 = *(a3 + 1);
    if (v9 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (((v12 >> 3) & 1) != (*(*(v8 + 16) + 28) & 8) >> 3)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v12 = *(*(v5 + 16) + 28);
  v13 = *(a3 + 1);
  if (v9 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (((v12 >> 3) & 1) != (*(v13 + 28) & 8) >> 3)
  {
LABEL_26:
    v14 = *(this + 1);
    if (*(v14 + 8) == &llvm::semPPCDoubleDouble)
    {
      v14 = *(v14 + 16);
    }

    llvm::detail::DoubleAPFloat::makeNaN(this, 0, (*(v14 + 28) & 8) != 0, 0);
    return 1;
  }

LABEL_31:
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v5 = *(v5 + 16);
  }

  if ((*(v5 + 28) & 7) == 0)
  {
    goto LABEL_41;
  }

  if (v9 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v8 + 16);
  }

  if ((*(v8 + 28) & 7) == 0)
  {
LABEL_42:
    v21 = this;
    a2 = a3;
    goto LABEL_43;
  }

  v17 = a2;
  llvm::APFloat::Storage::Storage(&v32, v6);
  llvm::APFloat::Storage::Storage(&v29, (*(v17 + 1) + 40));
  llvm::APFloat::Storage::Storage(&v26, (*(a3 + 1) + 8));
  llvm::APFloat::Storage::Storage(&v23, (*(a3 + 1) + 40));
  v20 = llvm::detail::DoubleAPFloat::addImpl(this, v31, v28, v25, v22, a5);
  if (v23 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v23);
  }

  else if ((*(v23 + 8) - 64) <= 0xFFFFFF7F && v24)
  {
    MEMORY[0x259C63150](v24, 0x1000C8000313F17);
  }

  if (v26 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v26);
  }

  else if ((*(v26 + 8) - 64) <= 0xFFFFFF7F && v27)
  {
    MEMORY[0x259C63150](v27, 0x1000C8000313F17);
  }

  if (v29 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v29);
  }

  else if ((*(v29 + 8) - 64) <= 0xFFFFFF7F && v30)
  {
    MEMORY[0x259C63150](v30, 0x1000C8000313F17);
  }

  if (v32 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v32);
  }

  else if ((*(v32 + 8) - 64) <= 0xFFFFFF7F && v33)
  {
    MEMORY[0x259C63150](v33, 0x1000C8000313F17);
  }

  return v20;
}

uint64_t llvm::detail::DoubleAPFloat::getCategory(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    return *(*(v1 + 16) + 28) & 7;
  }

  else
  {
    return *(v1 + 28) & 7;
  }
}

uint64_t llvm::detail::DoubleAPFloat::isNegative(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    return (*(*(v1 + 16) + 28) >> 3) & 1;
  }

  else
  {
    return (*(v1 + 28) >> 3) & 1;
  }
}

void llvm::detail::DoubleAPFloat::makeNaN(llvm::detail::DoubleAPFloat *this, char a2, char a3, const llvm::APInt *a4)
{
  v5 = *(this + 1);
  v7 = *(v5 + 8);
  v6 = (v5 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeNaN(v6, a2, a3, a4);
  }

  else
  {
    llvm::detail::IEEEFloat::makeNaN(v6, a2, a3, a4);
  }

  v8 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v8, 0);
}

uint64_t llvm::detail::DoubleAPFloat::subtract(llvm::detail::DoubleAPFloat *a1, llvm::detail::IEEEFloat *a2, int a3)
{
  v6 = llvm::detail::DoubleAPFloat::changeSign(a1);
  v7 = llvm::detail::DoubleAPFloat::addWithSpecial(v6, a1, a2, a1, a3);
  llvm::detail::DoubleAPFloat::changeSign(a1);
  return v7;
}

llvm::detail::DoubleAPFloat *llvm::detail::DoubleAPFloat::changeSign(llvm::detail::DoubleAPFloat *this)
{
  do
  {
    v5 = *(this + 1);
    result = (v5 + 8);
    v6 = *(v5 + 8);
    if (v6 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::changeSign(result);
    }

    else
    {
      v7 = *(v6 + 20);
      v8 = *(v5 + 28);
      if (v7 != 2 || (v8 & 5 | 2) != 3)
      {
        *(v5 + 28) = v8 ^ 8;
      }
    }

    v3 = *(this + 1);
    this = (v3 + 40);
    v4 = *(v3 + 40);
  }

  while (v4 == &llvm::semPPCDoubleDouble);
  v10 = *(v4 + 20);
  v11 = *(v3 + 60);
  if (v10 != 2 || (v11 & 5 | 2) != 3)
  {
    *(v3 + 60) = v11 ^ 8;
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::multiply(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  v44[3] = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v4 = (v3 + 8);
  v5 = *(v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) == 1)
    {
      goto LABEL_35;
    }
  }

  else if ((*(a1[1] + 28) & 7) == 1)
  {
    goto LABEL_35;
  }

  v6 = a2[1];
  v7 = *(v6 + 8);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v6 + 16) + 28) & 7) == 1)
    {
LABEL_36:
      llvm::detail::DoubleAPFloat::operator=(a1, a2);
      return 0;
    }
  }

  else if ((*(a2[1] + 28) & 7) == 1)
  {
    goto LABEL_36;
  }

  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) != 3)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v3 + 28) & 7) != 3)
  {
    goto LABEL_16;
  }

  v8 = a2[1];
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v8 = *(v6 + 16);
  }

  if ((*(v8 + 28) & 7) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v3 + 16) + 28) & 7) != 0)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v3 + 28) & 7) != 0)
  {
    goto LABEL_24;
  }

  v9 = a2[1];
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v9 = *(v6 + 16);
  }

  if ((*(v9 + 28) & 7) == 3)
  {
LABEL_23:
    llvm::detail::DoubleAPFloat::makeNaN(a1, 0, 0, 0);
    return 0;
  }

LABEL_24:
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v10 = *(*(v3 + 16) + 28) & 7;
    if (v10 != 3)
    {
      goto LABEL_28;
    }

LABEL_35:
    a2 = a1;
    goto LABEL_36;
  }

  v10 = *(v3 + 28) & 7;
  if (v10 == 3)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!v10)
  {
    goto LABEL_35;
  }

  if (v7 == &llvm::semPPCDoubleDouble)
  {
    v6 = *(v6 + 16);
  }

  v11 = *(v6 + 28) & 7;
  if (v11 == 3 || !v11)
  {
    goto LABEL_36;
  }

  v13 = a2;
  llvm::APFloat::Storage::Storage(v44, v4);
  v15 = a1;
  llvm::APFloat::Storage::Storage(v42, (a1[1] + 40));
  llvm::APFloat::Storage::Storage(&v40, (v13[1] + 8));
  llvm::APFloat::Storage::Storage(&v38, (v13[1] + 40));
  llvm::APFloat::Storage::Storage(v35, v44);
  v26 = a3;
  v16 = llvm::APFloat::multiply(v34, v39, a3);
  if (v35[0] == &llvm::semPPCDoubleDouble)
  {
    v17 = *(v35[1] + 28);
  }

  else
  {
    v17 = v36;
  }

  if ((v17 & 6) != 0 && (v17 & 7) != 3)
  {
    llvm::APFloat::Storage::Storage(&v33, v44);
    llvm::APFloat::changeSign(v34);
    v19 = llvm::APFloat::fusedMultiplyAdd(v32, v39, v34, a3);
    llvm::APFloat::changeSign(v34);
    llvm::APFloat::Storage::Storage(v30, v44);
    v20 = llvm::APFloat::multiply(v29, v37, v26);
    llvm::APFloat::Storage::Storage(&v28, v42);
    v21 = llvm::APFloat::multiply(v27, v39, v26);
    v22 = llvm::APFloat::add(v29, v27, v26);
    v23 = llvm::APFloat::add(v32, v29, v26);
    llvm::APFloat::~APFloat(v27);
    llvm::APFloat::~APFloat(v29);
    llvm::APFloat::Storage::Storage(v30, v35);
    v16 = v19 | v20 | v21 | v22 | v23 | llvm::APFloat::add(v29, v32, v26) | v16;
    llvm::APFloat::operator=(a1[1], v29);
    if (v30[0] == &llvm::semPPCDoubleDouble)
    {
      v24 = *(v30[1] + 28);
    }

    else
    {
      v24 = v31;
    }

    if ((v24 & 7u) < 2)
    {
      llvm::APFloat::makeZero((a1[1] + 32), 0);
    }

    else
    {
      v25 = llvm::APFloat::subtract(v34, v29, v26);
      v16 = v25 | llvm::APFloat::add(v34, v32, v26) | v16;
      llvm::APFloat::operator=(v15[1] + 32, v34);
    }

    llvm::APFloat::~APFloat(v29);
    llvm::APFloat::~APFloat(v32);
  }

  else
  {
    llvm::APFloat::operator=(a1[1], v34);
    llvm::APFloat::makeZero((a1[1] + 32), 0);
  }

  llvm::APFloat::~APFloat(v34);
  llvm::APFloat::~APFloat(v37);
  llvm::APFloat::~APFloat(v39);
  llvm::APFloat::~APFloat(v41);
  llvm::APFloat::~APFloat(v43);
  return v16;
}

uint64_t llvm::APFloat::multiply(llvm::detail::IEEEFloat *this, uint64_t a2, int a3)
{
  v4 = (this + 8);
  if (*(this + 1) == &llvm::semPPCDoubleDouble)
  {
    v9 = a2 + 8;
    v10 = this + 8;

    return llvm::detail::DoubleAPFloat::multiply(v10, v9);
  }

  else
  {
    *(this + 28) ^= *(a2 + 28) & 8;
    result = llvm::detail::IEEEFloat::multiplySpecials((this + 8), (a2 + 8));
    v8 = *(this + 28);
    if ((v8 & 7) == 3)
    {
      if (*(*v4 + 5) == 2)
      {
        *(this + 28) = v8 & 0xF3;
      }
    }

    else if ((*(this + 28) & 6) != 0)
    {
      v11 = llvm::detail::IEEEFloat::multiplySignificand(v4, (a2 + 8));
      LODWORD(result) = llvm::detail::IEEEFloat::normalize(v4, a3, v11);
      if (v11)
      {
        return result | 0x10;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t llvm::APFloat::fusedMultiplyAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = (a2 + 8);
  v7 = (a3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v4, v6, v7, a4);
  }

  return llvm::detail::IEEEFloat::fusedMultiplyAdd(v4, v6, v7, a4);
}

void llvm::detail::DoubleAPFloat::divide(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v9);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v13, &v9);
  if (v10 >= 0x41 && v9)
  {
    MEMORY[0x259C63150](v9, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v10, &v7);
  if (v13 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::divide(&v13, &v10, a3);
  }

  else
  {
    v14 ^= v12 & 8;
    llvm::detail::IEEEFloat::divideSpecials(&v13, &v10);
    if ((v14 & 7) == 3)
    {
      if (*(v13 + 20) == 2)
      {
        v14 &= 0xF3u;
      }
    }

    else if ((v14 & 6) != 0)
    {
      v5 = llvm::detail::IEEEFloat::divideSignificand(&v13, &v10);
      llvm::detail::IEEEFloat::normalize(&v13, a3, v5);
    }
  }

  if (v10 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v10);
  }

  else if ((*(v10 + 8) - 64) <= 0xFFFFFF7F && v11)
  {
    MEMORY[0x259C63150](v11, 0x1000C8000313F17);
  }

  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
  }

  if (v13 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v13, v6);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(&v13, v6);
  }

  v6[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::bitcastToAPInt@<X0>(llvm::detail::DoubleAPFloat *this@<X0>, llvm::APInt *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  v6 = *(v4 + 8);
  v5 = (v4 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::bitcastToAPInt(&v14, v5);
  }

  else
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v5, &v14);
  }

  v7 = &v14;
  if (v15 >= 0x41)
  {
    v7 = v14;
  }

  v16 = *v7;
  v8 = *(this + 1);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (v10 != &llvm::semPPCDoubleDouble)
  {
    llvm::detail::IEEEFloat::bitcastToAPInt(v9, &v12);
    if (v13 <= 0x40)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = *v12;
    MEMORY[0x259C63150]();
    if (v15 < 0x41)
    {
      return llvm::APInt::APInt(a2, 128, 2u, &v16);
    }

    goto LABEL_12;
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(&v12, v9);
  if (v13 > 0x40)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = v12;
  if (v15 < 0x41)
  {
    return llvm::APInt::APInt(a2, 128, 2u, &v16);
  }

LABEL_12:
  if (v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  return llvm::APInt::APInt(a2, 128, 2u, &v16);
}

void llvm::detail::DoubleAPFloat::remainder(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(this, &v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v10, &v7);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v5);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v8, &v5);
  if (v10[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::remainder(v10, &v8);
    v3 = v8;
    if (v8 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::remainder(v10, &v8);
    v3 = v8;
    if (v8 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v3[2] - 64) <= 0xFFFFFF7F && v9)
      {
        MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      }

LABEL_11:
      if (v6 >= 0x41 && v5)
      {
        MEMORY[0x259C63150](v5, 0x1000C8000313F17);
      }

      if (v10[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v10, v4);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v10, v4);
      }

      v4[2] = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::mod(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(this, &v7);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v10, &v7);
  if (v8 >= 0x41 && v7)
  {
    MEMORY[0x259C63150](v7, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v5);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v8, &v5);
  if (v10[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::mod(v10, &v8);
    v3 = v8;
    if (v8 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::mod(v10, &v8);
    v3 = v8;
    if (v8 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v3[2] - 64) <= 0xFFFFFF7F && v9)
      {
        MEMORY[0x259C63150](v9, 0x1000C8000313F17);
      }

LABEL_11:
      if (v6 >= 0x41 && v5)
      {
        MEMORY[0x259C63150](v5, 0x1000C8000313F17);
      }

      if (v10[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v10, v4);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v10, v4);
      }

      v4[2] = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v8);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::fusedMultiplyAdd(llvm::detail::DoubleAPFloat *a1, llvm::detail::DoubleAPFloat *a2, llvm::detail::DoubleAPFloat *a3, uint64_t a4)
{
  v17[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v14);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v17, &v14);
  if (v15 >= 0x41 && v14)
  {
    MEMORY[0x259C63150](v14, 0x1000C8000313F17);
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(a2, &v10);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v15, &v10);
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a3, &v8);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v12, &v8);
  if (v17[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::fusedMultiplyAdd(v17, &v15, &v12, a4);
    v7 = v12;
    if (v12 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::fusedMultiplyAdd(v17, &v15, &v12, a4);
    v7 = v12;
    if (v12 != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      if ((v7[2] - 64) <= 0xFFFFFF7F && v13)
      {
        MEMORY[0x259C63150](v13, 0x1000C8000313F17);
      }

LABEL_11:
      if (v9 >= 0x41 && v8)
      {
        MEMORY[0x259C63150](v8, 0x1000C8000313F17);
      }

      if (v15 == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v15);
      }

      else if ((*(v15 + 8) - 64) <= 0xFFFFFF7F && v16)
      {
        MEMORY[0x259C63150](v16, 0x1000C8000313F17);
      }

      if (v11 >= 0x41 && v10)
      {
        MEMORY[0x259C63150](v10, 0x1000C8000313F17);
      }

      if (v17[0] == &llvm::semPPCDoubleDouble)
      {
        llvm::detail::DoubleAPFloat::bitcastToAPInt(v17, &v8);
      }

      else
      {
        llvm::detail::IEEEFloat::bitcastToAPInt(v17, &v8);
      }

      v10 = &llvm::semPPCDoubleDouble;
      operator new[]();
    }
  }

  llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v12);
  goto LABEL_11;
}

void llvm::detail::DoubleAPFloat::roundToIntegral(llvm::detail::DoubleAPFloat *a1, uint64_t a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v6, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
    }
  }

  if (v6[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::roundToIntegral(v6, a2);
    if (v6[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::roundToIntegral(v6, a2);
    if (v6[0] != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      llvm::detail::IEEEFloat::bitcastToAPInt(v6, v3);
      goto LABEL_9;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v6, v3);
LABEL_9:
  v3[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::compareAbsoluteValue(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  v4 = *(this + 1);
  v5 = *(a2 + 1);
  v6 = *(v4 + 1);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v4 + 2), (v5 + 8));
    if (result != 1)
    {
      return result;
    }
  }

  else
  {
    v7 = v4[6];
    v8 = *(v5 + 24);
    v9 = v7 - v8;
    if (v7 == v8)
    {
      v11 = *(v6 + 8);
      v12 = (v4 + 4);
      if ((v11 - 64) <= 0xFFFFFF7F)
      {
        v12 = *v12;
      }

      v15 = *(v5 + 16);
      v13 = (v5 + 16);
      v14 = v15;
      if ((*(*(v13 - 1) + 8) - 64) >= 0xFFFFFF80)
      {
        v16 = v13;
      }

      else
      {
        v16 = v14;
      }

      v9 = llvm::APInt::tcCompare(v12, v16, ((v11 + 64) >> 6));
      if (v9 > 0)
      {
        return 2;
      }
    }

    else if (v9 > 0)
    {
      return 2;
    }

    result = v9 >= 0;
    if (result != 1)
    {
      return result;
    }
  }

  v17 = *(this + 1);
  v18 = *(a2 + 1);
  v19 = *(v17 + 5);
  if (v19 == &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::DoubleAPFloat::compareAbsoluteValue((v17 + 10), (v18 + 40));
    if ((result & 0xFFFFFFFD) != 0)
    {
      return result;
    }

LABEL_29:
    v29 = *(this + 1);
    v30 = v29;
    if (*(v29 + 8) == &llvm::semPPCDoubleDouble)
    {
      v30 = *(v29 + 16);
    }

    v31 = *(v30 + 28);
    if (*(v29 + 40) == &llvm::semPPCDoubleDouble)
    {
      v32 = *(v29 + 48);
    }

    else
    {
      v32 = v29 + 32;
    }

    v33 = v31 ^ *(v32 + 28);
    v34 = *(a2 + 1);
    v35 = v34;
    if (*(v34 + 8) == &llvm::semPPCDoubleDouble)
    {
      v35 = *(v34 + 16);
    }

    v36 = (v33 >> 3) & 1;
    v37 = *(v35 + 28);
    if (*(v34 + 40) == &llvm::semPPCDoubleDouble)
    {
      v38 = ((v37 ^ *(*(v34 + 48) + 28)) >> 3) & 1;
      v39 = v36 ^ 1;
      if ((v36 ^ 1))
      {
        goto LABEL_42;
      }
    }

    else
    {
      v38 = ((v37 ^ *(v34 + 60)) >> 3) & 1;
      v39 = v36 ^ 1;
      if ((v36 ^ 1))
      {
LABEL_42:
        if (v39 & v38)
        {
          return 2;
        }

        if ((v36 | v38) & 1) != 0 && (v36 & v38)
        {
          return (2 - result);
        }

        return result;
      }
    }

    if (!v38)
    {
      return 0;
    }

    goto LABEL_42;
  }

  v20 = v17[14];
  v21 = *(v18 + 56);
  v22 = v20 - v21;
  if (v20 == v21)
  {
    v23 = *(v19 + 8);
    v24 = (v17 + 12);
    if ((v23 - 64) <= 0xFFFFFF7F)
    {
      v24 = *v24;
    }

    v27 = *(v18 + 48);
    v25 = (v18 + 48);
    v26 = v27;
    if ((*(*(v25 - 1) + 8) - 64) >= 0xFFFFFF80)
    {
      v28 = v25;
    }

    else
    {
      v28 = v26;
    }

    v22 = llvm::APInt::tcCompare(v24, v28, ((v23 + 64) >> 6));
  }

  if (v22 <= 0)
  {
    result = v22 >= 0;
  }

  else
  {
    result = 2;
  }

  if ((result & 0xFFFFFFFD) == 0)
  {
    goto LABEL_29;
  }

  return result;
}

void llvm::detail::DoubleAPFloat::makeInf(llvm::detail::DoubleAPFloat *this, int a2)
{
  v3 = *(this + 1);
  v4 = (v3 + 8);
  v5 = *(v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeInf(v4, a2);
  }

  else if (*(v5 + 16) == 1)
  {
    llvm::detail::IEEEFloat::makeNaN(v4, 0, a2, 0);
  }

  else
  {
    if (a2)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *(v3 + 28) = *(v3 + 28) & 0xF0 | v6;
    *(v3 + 24) = *v5 + 1;
    v7 = *(v5 + 8);
    v8 = (v3 + 16);
    if ((v7 - 64) <= 0xFFFFFF7F)
    {
      v8 = *v8;
    }

    llvm::APInt::tcSet(v8, 0, (v7 + 64) >> 6);
  }

  v9 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v9, 0);
}

void llvm::detail::DoubleAPFloat::makeZero(llvm::APFloat **this, _BOOL4 a2)
{
  llvm::APFloat::makeZero(this[1], a2);
  v3 = (this[1] + 32);

  llvm::APFloat::makeZero(v3, 0);
}

void llvm::detail::DoubleAPFloat::makeLargest(llvm::detail::DoubleAPFloat *this, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 64;
  v4 = 0x7FEFFFFFFFFFFFFFLL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v6, &v4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v6);
  if (v6.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v6);
  }

  else if ((*(v6.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v6.n128_u64[1])
  {
    MEMORY[0x259C63150](v6.n128_u64[1], 0x1000C8000313F17);
  }

  v5 = 64;
  v4 = 0x7C8FFFFFFFFFFFFELL;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v6, &v4);
  llvm::APFloat::Storage::operator=((*(this + 1) + 40), &v6);
  if (v6.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v6);
  }

  else if ((*(v6.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v6.n128_u64[1])
  {
    MEMORY[0x259C63150](v6.n128_u64[1], 0x1000C8000313F17);
  }

  if (a2)
  {
    llvm::detail::DoubleAPFloat::changeSign(this);
  }
}

void llvm::detail::DoubleAPFloat::makeSmallest(llvm::detail::DoubleAPFloat *this, _BOOL4 a2)
{
  v3 = *(this + 1);
  v4 = *(v3 + 8);
  if (v4 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::makeSmallest((v3 + 8), a2);
  }

  else
  {
    if (a2)
    {
      v5 = 10;
    }

    else
    {
      v5 = 2;
    }

    *(v3 + 28) = *(v3 + 28) & 0xF0 | v5;
    v7 = *(v4 + 4);
    v6 = *(v4 + 8);
    *(v3 + 24) = v7;
    v8 = (v3 + 16);
    if ((v6 - 64) <= 0xFFFFFF7F)
    {
      v8 = *v8;
    }

    llvm::APInt::tcSet(v8, 1, (v6 + 64) >> 6);
  }

  v9 = (*(this + 1) + 32);

  llvm::APFloat::makeZero(v9, 0);
}

void llvm::detail::DoubleAPFloat::makeSmallestNormalized(llvm::detail::DoubleAPFloat *this, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 64;
  v9 = 0x360000000000000;
  llvm::detail::IEEEFloat::initFromDoubleAPInt(&v11, &v9);
  llvm::APFloat::Storage::operator=((*(this + 1) + 8), &v11);
  if (v11.n128_u64[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v11);
  }

  else if ((*(v11.n128_u64[0] + 8) - 64) <= 0xFFFFFF7F && v11.n128_u64[1])
  {
    MEMORY[0x259C63150](v11.n128_u64[1], 0x1000C8000313F17);
  }

  if (a2)
  {
    v4 = *(this + 1);
    v5 = *(v4 + 8);
    if (v5 == &llvm::semPPCDoubleDouble)
    {
      llvm::detail::DoubleAPFloat::changeSign((v4 + 8));
    }

    else
    {
      v6 = *(v5 + 20);
      v7 = *(v4 + 28);
      if (v6 != 2 || (v7 & 5 | 2) != 3)
      {
        *(v4 + 28) = v7 ^ 8;
      }
    }
  }

  llvm::APFloat::makeZero((*(this + 1) + 32), 0);
}

uint64_t llvm::detail::DoubleAPFloat::compare(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  do
  {
    v4 = *(this + 1);
    v6 = *(v4 + 8);
    v5 = (v4 + 8);
    v7 = (*(a2 + 1) + 8);
    if (v6 == &llvm::semPPCDoubleDouble)
    {
      result = llvm::detail::DoubleAPFloat::compare(v5, v7);
      if (result != 1)
      {
        return result;
      }
    }

    else
    {
      result = llvm::detail::IEEEFloat::compare(v5, v7);
      if (result != 1)
      {
        return result;
      }
    }

    v9 = *(this + 1);
    v10 = *(a2 + 1);
    v11 = *(v9 + 40);
    this = (v9 + 40);
    a2 = (v10 + 40);
  }

  while (v11 == &llvm::semPPCDoubleDouble);

  return llvm::detail::IEEEFloat::compare(this, (v10 + 40));
}

uint64_t llvm::detail::DoubleAPFloat::bitwiseIsEqual(llvm::detail::DoubleAPFloat *this, const llvm::detail::DoubleAPFloat *a2)
{
  result = llvm::APFloat::bitwiseIsEqual(*(this + 1), *(a2 + 1));
  if (result)
  {
    v5 = *(this + 1) + 32;
    v6 = *(a2 + 1) + 32;

    return llvm::APFloat::bitwiseIsEqual(v5, v6);
  }

  return result;
}

uint64_t llvm::APFloat::bitwiseIsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return 0;
  }

  v5 = a2;
  v6 = a1;
  if (v2 == &llvm::semPPCDoubleDouble)
  {
    while (1)
    {
      result = llvm::APFloat::bitwiseIsEqual(*(v6 + 16), *(v5 + 16));
      if (!result)
      {
        break;
      }

      v7 = *(v6 + 16);
      v8 = *(v5 + 16);
      v2 = *(v7 + 40);
      v3 = *(v8 + 40);
      if (v2 != v3)
      {
        return 0;
      }

      v6 = v7 + 32;
      v5 = v8 + 32;
      if (v2 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v6 == v5)
    {
      return 1;
    }

    v9 = *(v6 + 28);
    v10 = *(v5 + 28);
    if ((v9 & 7) != (v10 & 7) || ((v10 ^ v9) & 8) != 0)
    {
      return 0;
    }

    result = 1;
    if ((v9 & 7) == 0 || (v9 & 7) == 3)
    {
      return result;
    }

    if ((v9 & 6) != 0 && *(v6 + 24) != *(v5 + 24))
    {
      return 0;
    }

    v11 = *(v2 + 8);
    v12 = (v6 + 16);
    if ((v11 - 64) <= 0xFFFFFF7F)
    {
      v12 = *v12;
    }

    v13 = v11 + 64;
    v16 = *(v5 + 16);
    v15 = (v5 + 16);
    v14 = v16;
    if ((*(v3 + 8) - 64) >= 0xFFFFFF80)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    return memcmp(v12, v17, (v13 >> 3) & 0x1FFFFFF8) == 0;
  }

  return result;
}

unint64_t llvm::detail::hash_value(llvm::detail *this, const llvm::detail::DoubleAPFloat *a2)
{
  v3 = *(this + 1);
  if (!v3)
  {
    v12 = HIDWORD(*this) ^ 0xFF51AFD7ED558CCDLL;
    v13 = 0x9DDFEA08EB382D69 * ((8 * *this + 8) ^ v12);
    return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  }

  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  if (v5 == &llvm::semPPCDoubleDouble)
  {
    v7 = llvm::detail::hash_value(v4, a2);
    v15 = *(this + 1);
    v16 = *(v15 + 40);
    v9 = (v15 + 40);
    if (v16 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = llvm::detail::hash_value(v9, v6);
    goto LABEL_8;
  }

  v7 = llvm::detail::hash_value(v4, a2);
  v8 = *(this + 1);
  v10 = *(v8 + 40);
  v9 = (v8 + 40);
  if (v10 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = llvm::detail::hash_value(v9, v6);
LABEL_8:
  v17 = __ROR8__(v11 + 16, 16);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v17 ^ ((0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ 0xFF51AFD7ED558CCDLL ^ v17)))) >> 47))) ^ v11;
}

unint64_t llvm::hash_value(llvm *this, const llvm::APFloat *a2)
{
  v3 = *(this + 1);
  v2 = (this + 8);
  if (v3 == &llvm::semPPCDoubleDouble)
  {
    return llvm::detail::hash_value(v2, a2);
  }

  else
  {
    return llvm::detail::hash_value(v2, a2);
  }
}

void llvm::detail::DoubleAPFloat::convertFromString()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

llvm::detail::IEEEFloat *llvm::APFloat::convertFromString@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, size_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = *(a1 + 8);
  v5 = (a1 + 8);
  if (v6 == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::convertFromString();
  }

  return llvm::detail::IEEEFloat::convertFromString(v5, a2, a3, a4, a5);
}

void llvm::detail::DoubleAPFloat::next(llvm::detail::DoubleAPFloat *this, int a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(this, &v4);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(v6, &v4);
  if (v5 >= 0x41)
  {
    if (v4)
    {
      MEMORY[0x259C63150](v4, 0x1000C8000313F17);
    }
  }

  if (v6[0] == &llvm::semPPCDoubleDouble)
  {
    llvm::detail::DoubleAPFloat::next(v6, a2);
    if (v6[0] != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_6;
    }
  }

  else
  {
    llvm::detail::IEEEFloat::next(v6, a2);
    if (v6[0] != &llvm::semPPCDoubleDouble)
    {
LABEL_6:
      llvm::detail::IEEEFloat::bitcastToAPInt(v6, v3);
      goto LABEL_9;
    }
  }

  llvm::detail::DoubleAPFloat::bitcastToAPInt(v6, v3);
LABEL_9:
  v3[2] = &llvm::semPPCDoubleDouble;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::convertToInteger(llvm::detail::DoubleAPFloat *a1, llvm::APInt *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v20 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v16);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v18, &v16);
  if (v18 == &llvm::semPPCDoubleDouble)
  {
    v13 = llvm::detail::DoubleAPFloat::convertToInteger(&v18, a2, a3, a4, a5, a6, a7);
    v14 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_3;
    }

LABEL_7:
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
    goto LABEL_8;
  }

  v13 = llvm::detail::IEEEFloat::convertToInteger(&v18, a2, a3, a4, a5, a6, a7);
  v14 = v18;
  if (v18 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v14[2] - 64) <= 0xFFFFFF7F && v19)
  {
    MEMORY[0x259C63150](v19, 0x1000C8000313F17);
  }

LABEL_8:
  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x259C63150](v16, 0x1000C8000313F17);
  }

  return v13;
}

void llvm::detail::DoubleAPFloat::convertFromAPInt()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::convertFromSignExtendedInteger()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

void llvm::detail::DoubleAPFloat::convertFromZeroExtendedInteger()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &llvm::semPPCDoubleDoubleLegacy;
  operator new[]();
}

uint64_t llvm::detail::DoubleAPFloat::convertToHexString(llvm::detail::DoubleAPFloat *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *MEMORY[0x277D85DE8];
  llvm::detail::DoubleAPFloat::bitcastToAPInt(a1, &v23);
  llvm::detail::IEEEFloat::initFromPPCDoubleDoubleAPInt(&v25, &v23);
  if (v25 == &llvm::semPPCDoubleDouble)
  {
    v13 = llvm::detail::DoubleAPFloat::convertToHexString(&v25, a2, a3, a4, a5);
    v14 = v25;
    if (v25 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  v9 = v27;
  v10 = a2;
  if ((v27 & 8) != 0)
  {
    *a2 = 45;
    v10 = a2 + 1;
  }

  v11 = v9 & 7;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v10 = llvm::detail::IEEEFloat::convertNormalToHexString(&v25, v10, a3, a4, a5);
    }

    else if (v11 == 3)
    {
      *v10 = 48;
      if (a4)
      {
        v15 = 88;
      }

      else
      {
        v15 = 120;
      }

      v10[1] = v15;
      v10[2] = 48;
      if (a3 < 2)
      {
        v18 = v10 + 3;
      }

      else
      {
        v16 = v10 + 4;
        v10[3] = 46;
        v17 = (a3 - 1);
        memset(v10 + 4, 48, v17);
        v18 = &v16[v17];
      }

      if (a4)
      {
        v22 = 80;
      }

      else
      {
        v22 = 112;
      }

      *v18 = v22;
      *(v18 + 1) = 48;
      v13 = (v18 + 2 - a2);
      v14 = v25;
      if (v25 != &llvm::semPPCDoubleDouble)
      {
        goto LABEL_25;
      }

LABEL_11:
      llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v25);
      goto LABEL_28;
    }

    *v10 = 0;
    v13 = (v10 - a2);
    v14 = v25;
    if (v25 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (v11)
  {
    v12 = "nan";
    if (a4)
    {
      v12 = "NAN";
    }

    *v10 = *v12;
    v10[2] = v12[2];
    v10[3] = 0;
    v13 = (v10 + 3 - a2);
    v14 = v25;
    if (v25 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0x7974696E69666E69;
    if (a4)
    {
      v19 = 0x5954494E49464E49;
    }

    *v10 = v19;
    v20 = v10 + 8;
    *v20 = 0;
    v13 = (v20 - a2);
    v14 = v25;
    if (v25 == &llvm::semPPCDoubleDouble)
    {
      goto LABEL_11;
    }
  }

LABEL_25:
  if ((v14[2] - 64) <= 0xFFFFFF7F && v26)
  {
    MEMORY[0x259C63150](v26, 0x1000C8000313F17);
  }

LABEL_28:
  if (v24 >= 0x41 && v23)
  {
    MEMORY[0x259C63150](v23, 0x1000C8000313F17);
  }

  return v13;
}

BOOL llvm::detail::DoubleAPFloat::isDenormal(llvm::detail::DoubleAPFloat *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = *(v2 + 8);
  if (v3 != &llvm::semPPCDoubleDouble)
  {
    if ((*(v2 + 28) & 7) == 2)
    {
      if (*(v2 + 24) == *(v3 + 4))
      {
        v4 = *(v3 + 8);
        v5 = (v2 + 16);
        if ((v4 - 64) <= 0xFFFFFF7F)
        {
          v5 = *v5;
        }

        if (!llvm::APInt::tcExtractBit(v5, (v4 - 1)))
        {
          return 1;
        }
      }

      goto LABEL_10;
    }

    return 0;
  }

  if ((*(*(v2 + 16) + 28) & 7) != 2)
  {
    return 0;
  }

  if (llvm::detail::DoubleAPFloat::isDenormal((v2 + 8)))
  {
    return 1;
  }

LABEL_10:
  v6 = *(this + 1);
  v7 = *(v6 + 40);
  if (v7 == &llvm::semPPCDoubleDouble)
  {
    if ((llvm::detail::DoubleAPFloat::isDenormal((v6 + 40)) & 1) == 0)
    {
      goto LABEL_19;
    }

    return 1;
  }

  v8 = (*(v6 + 60) & 6) == 0 || (*(v6 + 60) & 7) == 3;
  if (!v8 && *(v6 + 56) == *(v7 + 4))
  {
    v9 = *(v7 + 8);
    v10 = (v6 + 48);
    if ((v9 - 64) <= 0xFFFFFF7F)
    {
      v10 = *v10;
    }

    if (!llvm::APInt::tcExtractBit(v10, (v9 - 1)))
    {
      return 1;
    }
  }

LABEL_19:
  v11 = *(this + 1);
  llvm::APFloat::Storage::Storage(&v18, (v11 + 8));
  llvm::APFloat::add(v17, v11 + 32, 1);
  v12 = (v11 + 8);
  if (*(v11 + 8) != &llvm::semPPCDoubleDouble)
  {
    result = llvm::detail::IEEEFloat::compare(v12, &v18) != 1;
    v14 = v18;
    if (v18 != &llvm::semPPCDoubleDouble)
    {
      goto LABEL_21;
    }

LABEL_29:
    v16 = result;
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v18);
    return v16;
  }

  result = llvm::detail::DoubleAPFloat::compare(v12, &v18) != 1;
  v14 = v18;
  if (v18 == &llvm::semPPCDoubleDouble)
  {
    goto LABEL_29;
  }

LABEL_21:
  if ((v14[2] - 64) <= 0xFFFFFF7F)
  {
    if (v19)
    {
      v15 = result;
      MEMORY[0x259C63150](v19, 0x1000C8000313F17);
      return v15;
    }
  }

  return result;
}

uint64_t llvm::detail::DoubleAPFloat::isSmallest(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t llvm::detail::DoubleAPFloat::isSmallestNormalized(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}

uint64_t llvm::detail::DoubleAPFloat::isLargest(llvm::detail::DoubleAPFloat *this)
{
  v1 = *(this + 1);
  if (*(v1 + 8) == &llvm::semPPCDoubleDouble)
  {
    if ((*(*(v1 + 16) + 28) & 7) == 2)
    {
LABEL_3:
      v3 = *this;
      operator new[]();
    }
  }

  else if ((*(v1 + 28) & 7) == 2)
  {
    goto LABEL_3;
  }

  return 0;
}