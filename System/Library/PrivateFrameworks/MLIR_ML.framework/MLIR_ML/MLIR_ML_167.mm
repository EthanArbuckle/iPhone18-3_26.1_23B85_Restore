void mlir::copyElementsAttrData<complex_support::complex_fp<half,(void *)0>>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v110[5] = *MEMORY[0x277D85DE8];
  v107 = a1;
  v108 = a2;
  Type = mlir::ElementsAttr::getType(&v107);
  if (!Type)
  {
    goto LABEL_14;
  }

  v6 = *Type;
  {
    v16 = Type;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    Type = v16;
    v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v7 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v10 = v8;
  v11 = v9;
  do
  {
    v12 = v11 >> 1;
    v13 = &v10[2 * (v11 >> 1)];
    v15 = *v13;
    v14 = v13 + 2;
    v11 += ~(v11 >> 1);
    if (v15 < v7)
    {
      v10 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  while (v11);
  if (v10 == &v8[2 * v9] || *v10 != v7)
  {
    goto LABEL_14;
  }

  v17 = v10[1];
LABEL_15:
  v106[0] = Type;
  v106[1] = v17;
  ElementType = mlir::ShapedType::getElementType(v106);
  isSplat = mlir::ElementsAttr::isSplat(&v107);
  RawData = v107;
  if (mlir::DenseElementsAttr::classof(v107))
  {
    v20 = RawData;
  }

  else
  {
    v20 = 0;
  }

  v109[0] = v20;
  if (v20)
  {
    RawData = mlir::DenseElementsAttr::getRawData(v109);
    v3 = v21;
    if (isSplat)
    {
      goto LABEL_20;
    }

LABEL_27:
    NumElements = mlir::ElementsAttr::getNumElements(v107, v108);
    if (mlir::Type::isUnsignedInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&ElementType, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_39;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_52;
    }

    if (mlir::Type::isInteger(&ElementType, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_62;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_72;
    }

    if (mlir::Type::isInteger(&ElementType, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_82;
    }

    if (mlir::Type::isUnsignedInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_92;
    }

    if (mlir::Type::isInteger(&ElementType, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_102;
    }

    if (mlir::Type::isF16(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF32(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_122;
    }

    if (mlir::Type::isF64(&ElementType))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_132;
    }

    if (!mlir::Type::isBF16(&ElementType))
    {
      goto LABEL_148;
    }

    if (NumElements < 1)
    {
      return;
    }

LABEL_142:
    v70 = 0;
    v71 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v72 = 0;
      }

      else
      {
        v72 = v70;
      }

      _S0 = *&RawData[2 * v72] << 16;
      __asm { FCVT            H0, S0 }

      *(v71 - 1) = _S0;
      *v71 = 0;
      v71 += 2;
      ++v70;
    }

    while (NumElements != v70);
    return;
  }

  if (*(*RawData + 136) == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v24 = RawData;
  }

  else
  {
    v24 = 0;
  }

  v109[0] = v24;
  if (v24)
  {
    RawData = mlir::mps::MPSBufferTensorAttr::getRawData(v109);
    v3 = v25;
    if ((isSplat & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if ((isSplat & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (mlir::Type::isUnsignedInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_29:
    v26 = 0;
    v27 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v28 = 0;
      }

      else
      {
        v28 = v26;
      }

      LOBYTE(v22) = RawData[v28];
      v22 = LOWORD(v22);
      *(v27 - 1) = v22;
      *v27 = 0;
      v27 += 2;
      ++v26;
    }

    while (NumElements != v26);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 8))
  {
    NumElements = 1;
LABEL_39:
    v30 = 0;
    v31 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v29.i8[0] = RawData[v32];
      v29 = vmovl_s8(v29).u64[0];
      *v29.i16 = v29.i16[0];
      *(v31 - 1) = v29.i16[0];
      *v31 = 0;
      v31 += 2;
      ++v30;
    }

    while (NumElements != v30);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_52:
    v33 = 0;
    v34 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v35 = 0;
      }

      else
      {
        v35 = v33;
      }

      *(v34 - 1) = *&RawData[2 * v35];
      *v34 = 0;
      v34 += 2;
      ++v33;
    }

    while (NumElements != v33);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 16))
  {
    NumElements = 1;
LABEL_62:
    v36 = 0;
    v37 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v38 = 0;
      }

      else
      {
        v38 = v36;
      }

      *(v37 - 1) = *&RawData[2 * v38];
      *v37 = 0;
      v37 += 2;
      ++v36;
    }

    while (NumElements != v36);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_72:
    v39 = 0;
    v40 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v41 = 0;
      }

      else
      {
        v41 = v39;
      }

      _S0 = *&RawData[4 * v41];
      __asm { FCVT            H0, S0 }

      *(v40 - 1) = LOWORD(_S0);
      *v40 = 0;
      v40 += 2;
      ++v39;
    }

    while (NumElements != v39);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 32))
  {
    NumElements = 1;
LABEL_82:
    v47 = 0;
    v48 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v49 = 0;
      }

      else
      {
        v49 = v47;
      }

      _S0 = *&RawData[4 * v49];
      __asm { FCVT            H0, S0 }

      *(v48 - 1) = LOWORD(_S0);
      *v48 = 0;
      v48 += 2;
      ++v47;
    }

    while (NumElements != v47);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_92:
    v51 = 0;
    v52 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v53 = 0;
      }

      else
      {
        v53 = v51;
      }

      _S0 = *&RawData[8 * v53];
      __asm { FCVT            H0, S0 }

      *(v52 - 1) = LOWORD(_S0);
      *v52 = 0;
      v52 += 2;
      ++v51;
    }

    while (NumElements != v51);
    return;
  }

  if (mlir::Type::isInteger(&ElementType, 64))
  {
    NumElements = 1;
LABEL_102:
    v55 = 0;
    v56 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v57 = 0;
      }

      else
      {
        v57 = v55;
      }

      _S0 = *&RawData[8 * v57];
      __asm { FCVT            H0, S0 }

      *(v56 - 1) = LOWORD(_S0);
      *v56 = 0;
      v56 += 2;
      ++v55;
    }

    while (NumElements != v55);
    return;
  }

  if (mlir::Type::isF16(&ElementType))
  {
    NumElements = 1;
LABEL_112:
    v59 = 0;
    v60 = a3 + 2;
    do
    {
      if (isSplat)
      {
        v61 = 0;
      }

      else
      {
        v61 = v59;
      }

      *(v60 - 2) = *&RawData[2 * v61];
      v60 += 4;
      ++v59;
    }

    while (NumElements != v59);
    return;
  }

  if (mlir::Type::isF32(&ElementType))
  {
    NumElements = 1;
LABEL_122:
    v62 = 0;
    v63 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v64 = 0;
      }

      else
      {
        v64 = v62;
      }

      _S0 = *&RawData[4 * v64];
      __asm { FCVT            H0, S0 }

      *(v63 - 1) = _S0;
      *v63 = 0;
      v63 += 2;
      ++v62;
    }

    while (NumElements != v62);
    return;
  }

  if (mlir::Type::isF64(&ElementType))
  {
    NumElements = 1;
LABEL_132:
    v66 = 0;
    v67 = (a3 + 2);
    do
    {
      if (isSplat)
      {
        v68 = 0;
      }

      else
      {
        v68 = v66;
      }

      _S0 = *&RawData[8 * v68];
      __asm { FCVT            H0, S0 }

      *(v67 - 1) = LOWORD(_S0);
      *v67 = 0;
      v67 += 2;
      ++v66;
    }

    while (NumElements != v66);
    return;
  }

  NumElements = 1;
  if (mlir::Type::isBF16(&ElementType))
  {
    goto LABEL_142;
  }

LABEL_148:
  if (mlir::Type::isInteger(&ElementType, 1))
  {
    llvm::SmallVector<char,40u>::SmallVector(v109, NumElements);
    mlir::detail::unpackBooleanData(RawData, v3, v109[0], v109[1]);
    v75 = v109[0];
    if (NumElements >= 1)
    {
      v76 = 0;
      v77 = (a3 + 2);
      do
      {
        if (isSplat)
        {
          v78 = 0;
        }

        else
        {
          v78 = v76;
        }

        v74.i8[0] = v75[v78];
        v74 = vmovl_s8(v74).u64[0];
        *v74.i16 = v74.i16[0];
        *(v77 - 1) = v74.i16[0];
        *v77 = 0;
        v77 += 2;
        ++v76;
      }

      while (NumElements != v76);
    }

    if (v75 != v110)
    {
      free(v75);
    }
  }

  else
  {
    v79 = ElementType;
    v80 = *(*ElementType + 136);
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      v79 = 0;
    }

    v109[0] = v79;
    if (v80 != &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
    {
      mlir::Type::getIntOrFloatBitWidth(&ElementType);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&ElementType);
      mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(RawData, v3, a3, NumElements, IntOrFloatBitWidth);
      return;
    }

    v104 = mlir::ComplexType::getElementType(v109);
    if (mlir::Type::isF32(&v104))
    {
      if (NumElements >= 1)
      {
        v82 = 0;
        v83 = (a3 + 2);
        do
        {
          if (isSplat)
          {
            v84 = 0;
          }

          else
          {
            v84 = v82;
          }

          v85 = &RawData[8 * v84];
          _S0 = *v85;
          _S1 = *(v85 + 1);
          __asm
          {
            FCVT            H0, S0
            FCVT            H1, S1
          }

          *(v83 - 1) = _S0;
          *v83 = _S1;
          ++v82;
          v83 += 2;
        }

        while (NumElements != v82);
      }
    }

    else
    {
      v104 = mlir::ComplexType::getElementType(v109);
      mlir::Type::isF16(&v104);
      if (NumElements < 1)
      {
        return;
      }

      if (isSplat)
      {
        if (NumElements >= 8 && ((RawData + 4) <= a3 || a3 + 4 * NumElements <= RawData))
        {
          v88 = NumElements & 0x7FFFFFFFFFFFFFF8;
          v101 = vld1q_dup_f32(RawData);
          v102 = (a3 + 16);
          v103 = NumElements & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v102[-1] = v101;
            *v102 = v101;
            v102 += 2;
            v103 -= 8;
          }

          while (v103);
          if (NumElements == v88)
          {
            return;
          }
        }

        else
        {
          v88 = 0;
        }

        v89 = NumElements - v88;
        v90 = (a3 + 4 * v88);
        do
        {
          *v90++ = *RawData;
          --v89;
        }

        while (v89);
        return;
      }

      v91 = 0;
      if (NumElements < 8)
      {
        goto LABEL_184;
      }

      if (a3 - RawData <= 0x1F)
      {
        goto LABEL_184;
      }

      v91 = NumElements & 0x7FFFFFFFFFFFFFF8;
      v92 = (RawData + 16);
      v93 = (a3 + 16);
      v94 = NumElements & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v95 = *v92;
        *(v93 - 1) = *(v92 - 1);
        *v93 = v95;
        v92 += 2;
        v93 += 2;
        v94 -= 8;
      }

      while (v94);
      if (NumElements != v91)
      {
LABEL_184:
        v96 = 4 * v91;
        v97 = &RawData[4 * v91];
        v98 = NumElements - v91;
        v99 = (a3 + v96);
        do
        {
          v100 = *v97;
          v97 += 4;
          *v99++ = v100;
          --v98;
        }

        while (v98);
      }
    }
  }
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned char>(unsigned __int8 *result, unint64_t a2, _BYTE *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_2573686A0), vcgeq_u64(v13, xmmword_2573695C0)), vuzp1q_s32(vcgeq_u64(v13, xmmword_2573695D0), vcgeq_u64(v13, xmmword_2573695E0))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v16 & v10;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned short>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = vdupq_n_s64(v12 - 1);
      v14 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v13, xmmword_2573686A0), vcgeq_u64(v13, xmmword_2573695C0)), vuzp1q_s32(vcgeq_u64(v13, xmmword_2573695D0), vcgeq_u64(v13, xmmword_2573695E0))));
      v15 = &a3[v9 * v11];
      v16 = *result;
      v17 = (v16 >> a5) & v10;
      v18 = (v16 >> (2 * a5)) & v10;
      v19 = (v16 >> (3 * a5)) & v10;
      v20 = (v16 >> (4 * a5)) & v10;
      v21 = (v16 >> (5 * a5)) & v10;
      v22 = (v16 >> (6 * a5)) & v10;
      v23 = (v16 >> (7 * a5)) & v10;
      if (v14.i8[0])
      {
        if (v14.i8[1])
        {
          v15[1] = v17;
          if (v14.i8[2])
          {
            goto LABEL_36;
          }

LABEL_21:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v15[3] = v19;
          if (v14.i8[4])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v14.i8[5] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v15[5] = v21;
          if (v14.i8[6])
          {
            goto LABEL_40;
          }

LABEL_25:
          if (v14.i8[7])
          {
LABEL_41:
            v15[7] = v23;
          }
        }

        else
        {
          if ((v14.i8[2] & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_36:
          v15[2] = v18;
          if (v14.i8[3])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v14.i8[4] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v15[4] = v20;
          if (v14.i8[5])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v14.i8[6] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v15[6] = v22;
          if (v14.i8[7])
          {
            goto LABEL_41;
          }
        }

        *v15 = v10 & v16;
        goto LABEL_14;
      }

      if (v14.i8[1])
      {
        v15[1] = v17;
        if ((v14.i8[2] & 1) == 0)
        {
LABEL_29:
          if ((v14.i8[3] & 1) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_44;
        }
      }

      else if ((v14.i8[2] & 1) == 0)
      {
        goto LABEL_29;
      }

      v15[2] = v18;
      if ((v14.i8[3] & 1) == 0)
      {
LABEL_30:
        if ((v14.i8[4] & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_45;
      }

LABEL_44:
      v15[3] = v19;
      if ((v14.i8[4] & 1) == 0)
      {
LABEL_31:
        if ((v14.i8[5] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v15[4] = v20;
      if ((v14.i8[5] & 1) == 0)
      {
LABEL_32:
        if ((v14.i8[6] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v15[5] = v21;
      if ((v14.i8[6] & 1) == 0)
      {
LABEL_33:
        if (v14.i8[7])
        {
          goto LABEL_48;
        }

        goto LABEL_14;
      }

LABEL_47:
      v15[6] = v22;
      if (v14.i8[7])
      {
LABEL_48:
        v15[7] = v23;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<unsigned int>(unsigned __int8 *result, unint64_t a2, int *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v15 = &a3[v9 * v11];
      v16 = vmovn_s64(vcgeq_u64(v14, xmmword_2573686A0));
      if (vuzp1_s16(v16, 0).u8[0])
      {
        *v15 = v10 & v13;
        if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
        {
LABEL_20:
          v17 = vmovn_s64(vcgeq_u64(v14, xmmword_2573695C0));
          if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }
      }

      else if ((vuzp1_s16(v16, 0).i8[2] & 1) == 0)
      {
        goto LABEL_20;
      }

      v15[1] = (v13 >> a5) & v10;
      v17 = vmovn_s64(vcgeq_u64(v14, xmmword_2573695C0));
      if ((vuzp1_s16(0, v17).i32[1] & 1) == 0)
      {
LABEL_21:
        if (vuzp1_s16(0, v17).i8[6])
        {
          goto LABEL_27;
        }

        goto LABEL_22;
      }

LABEL_26:
      v15[2] = (v13 >> (2 * a5)) & v10;
      if (vuzp1_s16(0, v17).i8[6])
      {
LABEL_27:
        v15[3] = (v13 >> (3 * a5)) & v10;
        if (((v12 + 3) & 0x1C) == 4)
        {
          goto LABEL_13;
        }

        goto LABEL_28;
      }

LABEL_22:
      if (((v12 + 3) & 0x1C) == 4)
      {
        goto LABEL_13;
      }

LABEL_28:
      v18 = vmovn_s64(vcgtq_u64(v14, xmmword_2573686C0));
      if (vuzp1_s16(v18, 0).u8[0])
      {
        v15[4] = (v13 >> (4 * a5)) & v10;
        if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
        {
LABEL_30:
          v19 = vmovn_s64(vcgtq_u64(v14, xmmword_2573695F0));
          if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_35;
        }
      }

      else if ((vuzp1_s16(v18, 0).i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v15[5] = (v13 >> (5 * a5)) & v10;
      v19 = vmovn_s64(vcgtq_u64(v14, xmmword_2573695F0));
      if ((vuzp1_s16(0, v19).i32[1] & 1) == 0)
      {
LABEL_31:
        if (vuzp1_s16(0, v19).i8[6])
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }

LABEL_35:
      v15[6] = (v13 >> (6 * a5)) & v10;
      if (vuzp1_s16(0, v19).i8[6])
      {
LABEL_36:
        v15[7] = (v13 >> (7 * a5)) & v10;
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = v7 & ~(-1 << a5);
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<half>(unsigned __int8 *result, unint64_t a2, short float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = *result;
      v14 = vdupq_n_s64(v12 - 1);
      v24 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_u64(v14, xmmword_2573686A0), vcgeq_u64(v14, xmmword_2573695C0)), vuzp1q_s32(vcgeq_u64(v14, xmmword_2573695D0), vcgeq_u64(v14, xmmword_2573695E0))));
      v15 = v24.i8[0];
      v16 = &a3[v9 * v11];
      v17 = v24.i8[1];
      v18 = ((v13 >> a5) & v10);
      v19 = ((v13 >> (2 * a5)) & v10);
      v20 = ((v13 >> (3 * a5)) & v10);
      v21 = ((v13 >> (4 * a5)) & v10);
      v22 = ((v13 >> (5 * a5)) & v10);
      v23 = ((v13 >> (6 * a5)) & v10);
      *v24.i16 = ((v13 >> (7 * a5)) & v10);
      if (v15)
      {
        if (v17)
        {
          v16[1] = v18;
          if (v24.i8[2])
          {
            goto LABEL_37;
          }

LABEL_22:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_23;
          }

LABEL_38:
          v16[3] = v20;
          if (v24.i8[4])
          {
            goto LABEL_39;
          }

LABEL_24:
          if ((v24.i8[5] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_40:
          v16[5] = v22;
          if (v24.i8[6])
          {
            goto LABEL_41;
          }

LABEL_26:
          if (v24.i8[7])
          {
LABEL_42:
            v16[7] = *v24.i16;
          }
        }

        else
        {
          if ((v24.i8[2] & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_37:
          v16[2] = v19;
          if (v24.i8[3])
          {
            goto LABEL_38;
          }

LABEL_23:
          if ((v24.i8[4] & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_39:
          v16[4] = v21;
          if (v24.i8[5])
          {
            goto LABEL_40;
          }

LABEL_25:
          if ((v24.i8[6] & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_41:
          v16[6] = v23;
          if (v24.i8[7])
          {
            goto LABEL_42;
          }
        }

        *v16 = (v10 & v13);
        goto LABEL_14;
      }

      if (v17)
      {
        v16[1] = v18;
        if ((v24.i8[2] & 1) == 0)
        {
LABEL_30:
          if ((v24.i8[3] & 1) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_45;
        }
      }

      else if ((v24.i8[2] & 1) == 0)
      {
        goto LABEL_30;
      }

      v16[2] = v19;
      if ((v24.i8[3] & 1) == 0)
      {
LABEL_31:
        if ((v24.i8[4] & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_46;
      }

LABEL_45:
      v16[3] = v20;
      if ((v24.i8[4] & 1) == 0)
      {
LABEL_32:
        if ((v24.i8[5] & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_47;
      }

LABEL_46:
      v16[4] = v21;
      if ((v24.i8[5] & 1) == 0)
      {
LABEL_33:
        if ((v24.i8[6] & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_48;
      }

LABEL_47:
      v16[5] = v22;
      if ((v24.i8[6] & 1) == 0)
      {
LABEL_34:
        if (v24.i8[7])
        {
          goto LABEL_49;
        }

        goto LABEL_14;
      }

LABEL_48:
      v16[6] = v23;
      if (v24.i8[7])
      {
LABEL_49:
        v16[7] = *v24.i16;
      }

LABEL_14:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<__emulated_bf16>(unsigned __int8 *result, unint64_t a2, _WORD *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = HIWORD(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5)) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v7 & ~(-1 << a5))) & 0x7F800000) * 0.0039062)));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      v12 = a4 - v9 * v11;
      if (v12 >= v11)
      {
        v12 = 8 / a5;
      }

      if (v12)
      {
        v13 = *result;
        v14 = &a3[v9 * v11];
        v15 = (v10 & v13) + (COERCE_FLOAT(COERCE_UNSIGNED_INT((v10 & v13)) & 0x7F800000) * 0.0039062);
        *v14 = HIWORD(v15);
        if (v12 != 1)
        {
          v16 = ((v13 >> a5) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> a5) & v10)) & 0x7F800000) * 0.0039062);
          v14[1] = HIWORD(v16);
          if (v12 >= 3)
          {
            v17 = ((v13 >> (2 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (2 * a5)) & v10)) & 0x7F800000) * 0.0039062);
            v14[2] = HIWORD(v17);
            if (v12 != 3)
            {
              v18 = ((v13 >> (3 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (3 * a5)) & v10)) & 0x7F800000) * 0.0039062);
              v14[3] = HIWORD(v18);
              if (v12 >= 5)
              {
                v19 = ((v13 >> (4 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (4 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                v14[4] = HIWORD(v19);
                if (v12 != 5)
                {
                  v20 = ((v13 >> (5 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (5 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                  v14[5] = HIWORD(v20);
                  if (v12 >= 7)
                  {
                    v21 = ((v13 >> (6 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (6 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                    v14[6] = HIWORD(v21);
                    if (v12 != 7)
                    {
                      v22 = ((v13 >> (7 * a5)) & v10) + (COERCE_FLOAT(COERCE_UNSIGNED_INT(((v13 >> (7 * a5)) & v10)) & 0x7F800000) * 0.0039062);
                      v14[7] = HIWORD(v22);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<double>(unsigned __int8 *result, unint64_t a2, double *a3, uint64_t a4, unint64_t a5)
{
  if (a5 != 6 && a5 != 3)
  {
    if (!a2)
    {
      return result;
    }

    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    while (1)
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (!v12)
      {
        goto LABEL_13;
      }

      v13 = *result;
      v14 = &a3[v9 * v11];
      v15 = vdupq_n_s64(v12 - 1);
      v16 = vmovn_s64(vcgeq_u64(v15, xmmword_2573686A0));
      if (v16.i8[0])
      {
        *v14 = (v10 & v13);
        if (v16.i8[4])
        {
LABEL_23:
          v14[1] = ((v13 >> a5) & v10);
          v17 = (v12 + 1) & 0x1E;
          if (v17 == 2)
          {
            goto LABEL_13;
          }

          goto LABEL_24;
        }
      }

      else if (v16.i8[4])
      {
        goto LABEL_23;
      }

      v17 = (v12 + 1) & 0x1E;
      if (v17 == 2)
      {
        goto LABEL_13;
      }

LABEL_24:
      v18 = vmovn_s64(vcgtq_u64(v15, xmmword_2573686B0));
      if (v18.i8[0])
      {
        v14[2] = ((v13 >> (2 * a5)) & v10);
        if (v18.i8[4])
        {
LABEL_29:
          v14[3] = ((v13 >> (3 * a5)) & v10);
          if (v17 == 4)
          {
            goto LABEL_13;
          }

          goto LABEL_30;
        }
      }

      else if (v18.i8[4])
      {
        goto LABEL_29;
      }

      if (v17 == 4)
      {
        goto LABEL_13;
      }

LABEL_30:
      v19 = vmovn_s64(vcgtq_u64(v15, xmmword_2573686C0));
      if (v19.i8[0])
      {
        v14[4] = ((v13 >> (4 * a5)) & v10);
        if ((v19.i8[4] & 1) == 0)
        {
LABEL_32:
          if (v17 != 6)
          {
            goto LABEL_36;
          }

          goto LABEL_13;
        }
      }

      else if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_32;
      }

      v14[5] = ((v13 >> (5 * a5)) & v10);
      if (v17 != 6)
      {
LABEL_36:
        v20 = vmovn_s64(vcgtq_u64(v15, xmmword_2573695F0));
        if (v20.i8[0])
        {
          v14[6] = ((v13 >> (6 * a5)) & v10);
        }

        if (v20.i8[4])
        {
          v14[7] = ((v13 >> (7 * a5)) & v10);
        }
      }

LABEL_13:
      ++v9;
      ++result;
      if (!--a2)
      {
        return result;
      }
    }
  }

  if (a4)
  {
    v5 = 0;
    v6 = 2;
    if (a5 == 3)
    {
      v6 = 5;
    }

    do
    {
      v7 = result[v5 >> 3] >> (v5 & 7);
      if ((v5 & 7) > v6)
      {
        v8 = (v5 >> 3) + 1;
        if (v8 < a2)
        {
          v7 |= result[v8] << (8 - (v5 & 7));
        }
      }

      *a3++ = (v7 & ~(-1 << a5));
      v5 += a5;
      --a4;
    }

    while (a4);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<complex_support::complex_fp<float,(void *)0>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 4);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0.0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 8 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 4) = 0;
        if (v13 != 1)
        {
          *(v15 + 8) = ((v14 >> a5) & v11);
          *(v15 + 12) = 0;
          if (v13 >= 3)
          {
            *(v15 + 16) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 20) = 0;
            if (v13 != 3)
            {
              *(v15 + 24) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 28) = 0;
              if (v13 >= 5)
              {
                *(v15 + 32) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 36) = 0;
                if (v13 != 5)
                {
                  *(v15 + 40) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 44) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 48) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 52) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 56) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 60) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned __int8 *mlir::detail::unpackQuantizedData<complex_support::complex_fp<half,(void *)0>>(unsigned __int8 *result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      v7 = (a3 + 2);
      do
      {
        v8 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v9 = (v5 >> 3) + 1;
          if (v9 < a2)
          {
            v8 |= result[v9] << (8 - (v5 & 7));
          }
        }

        *(v7 - 1) = (v8 & ~(-1 << a5));
        *v7 = 0;
        v7 += 2;
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v10 = 0;
    v11 = ~(-1 << a5);
    v12 = 8 / a5;
    do
    {
      v13 = a4 - v10 * v12;
      if (v13 >= v12)
      {
        v13 = 8 / a5;
      }

      if (v13)
      {
        v14 = *result;
        v15 = a3 + 4 * v10 * v12;
        *v15 = (v11 & v14);
        *(v15 + 2) = 0;
        if (v13 != 1)
        {
          *(v15 + 4) = ((v14 >> a5) & v11);
          *(v15 + 6) = 0;
          if (v13 >= 3)
          {
            *(v15 + 8) = ((v14 >> (2 * a5)) & v11);
            *(v15 + 10) = 0;
            if (v13 != 3)
            {
              *(v15 + 12) = ((v14 >> (3 * a5)) & v11);
              *(v15 + 14) = 0;
              if (v13 >= 5)
              {
                *(v15 + 16) = ((v14 >> (4 * a5)) & v11);
                *(v15 + 18) = 0;
                if (v13 != 5)
                {
                  *(v15 + 20) = ((v14 >> (5 * a5)) & v11);
                  *(v15 + 22) = 0;
                  if (v13 >= 7)
                  {
                    *(v15 + 24) = ((v14 >> (6 * a5)) & v11);
                    *(v15 + 26) = 0;
                    if (v13 != 7)
                    {
                      *(v15 + 28) = ((v14 >> (7 * a5)) & v11);
                      *(v15 + 30) = 0;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v10;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

BOOL mlir::detail::upgradeFromVersion(mlir::ForwardIterator *a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a3;
  v4[1] = a2;
  return mlir::detail::walk<mlir::ForwardIterator>(a1, llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>, v4, 1) != 0;
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::upgradeFromVersion(mlir::Operation *,llvm::StringRef const&,mlir::DialectVersion const&)::$_0>(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    Context = *(v5 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&Context);
    v8 = *(ReferencedDialect + 8);
    v9 = *(ReferencedDialect + 16);
    v14 = *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<void,void>::id && v9 == 3;
    if (v14)
    {
      if (*v8 == 28781 && v8[2] == 115)
      {
        Context = mlir::Attribute::getContext((a2 + 24));
        v41 = 0;
        v32 = *(a2 + 16);
        NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
        v42 = v32;
        v43 = NodePtr;
        v34 = *(a2 + 48);
        if (*(v34 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
        {
          v37 = *(v34 + 8);
          mlir::StringAttr::getReferencedDialect(&v37);
        }

        mlir::mps::MPSDialect::convertUnregisteredOperation(&Context, *a1, a2, &v37);
        v11 = 0;
        v6 = v37;
        v2 = v38;
        v10 = v39 ^ 1;
        v9 = 3;
        InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
        if (!InterfaceFor)
        {
          goto LABEL_16;
        }

        goto LABEL_9;
      }

      v6 = 0;
      v10 = 1;
      v9 = 3;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = 0;
      v10 = 1;
      v11 = 1;
      InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
      if (InterfaceFor)
      {
        goto LABEL_9;
      }
    }

LABEL_16:
    v35 = 0;
    v36 = InterfaceFor;
    goto LABEL_20;
  }

  v6 = 0;
  v7 = *(v5 + 24);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = 1;
  v11 = 1;
  InterfaceFor = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!InterfaceFor)
  {
    goto LABEL_16;
  }

LABEL_9:
  v35 = a2;
  v36 = mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (a2)
  {
    v16 = a1[1];
    if (v9 == *(v16 + 8) && (!v9 || !memcmp(v8, *v16, v9)))
    {
      Context = mlir::Attribute::getContext((a2 + 24));
      v41 = 0;
      v18 = *(a2 + 16);
      v19 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
      v42 = v18;
      v43 = v19;
      mlir::UpgraderInterface::upgradeFromVersion(&v35, &Context, *a1);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      v6 = v37;
      v2 = v38;
      if (!v38)
      {
        return 1;
      }

      goto LABEL_22;
    }
  }

LABEL_20:
  if (((v11 | v10) & 1) == 0)
  {
    if (!v2)
    {
      return 1;
    }

LABEL_22:
    v17 = 0;
    while (1)
    {
      Context = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v17);
      if (mlir::Value::getDefiningOp(&Context) != a2)
      {
        break;
      }

      if (v2 == ++v17)
      {
        return 1;
      }
    }

    v20 = *(a2 + 36);
    if (v20)
    {
      v21 = a2 - 16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = 0;
      v23 = v20 - 1;
      if (v2 - 1 >= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v2 - 1;
      }

      do
      {
        NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v21, v22);
        for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, v22); ; *i = v27)
        {
          v27 = *NextResultAtOffset;
          if (!*NextResultAtOffset)
          {
            break;
          }

          v28 = v27[1];
          if (v28)
          {
            v29 = *v27;
            *v28 = *v27;
            if (v29)
            {
              *(v29 + 8) = v28;
            }
          }

          v27[3] = i;
          v27[1] = i;
          v30 = *i;
          *v27 = *i;
          if (v30)
          {
            *(v30 + 8) = v27;
          }
        }

        v14 = v22++ == v24;
      }

      while (!v14);
    }

    mlir::Operation::erase(a2);
    return 1;
  }

  return v11;
}

uint64_t mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::UpgraderInterface,mlir::detail::UpgraderInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    v4 = &mlir::mps::HermiteanToRealFFTOp::getAttributeNames(void)::attrNames;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v3 = v21;
    a1 = v22;
    v4 = &mlir::mps::HermiteanToRealFFTOp::getAttributeNames(void)::attrNames;
    v5 = mlir::detail::TypeIDResolver<mlir::UpgraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>();
    v4 = &mlir::mps::HermiteanToRealFFTOp::getAttributeNames(void)::attrNames;
    v18 = v23;
  }

  v19 = v4[330];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

uint64_t llvm::function_ref<mlir::WalkResult ()(mlir::Operation *)>::callback_fn<mlir::detail::downgradeToVersion(mlir::Operation *,llvm::DenseMap<mlir::Dialect const*,mlir::DialectVersion const*,llvm::DenseMapInfo<mlir::Dialect const*,void>,llvm::detail::DenseMapPair<mlir::Dialect const*,mlir::DialectVersion const*>> const&)::$_0>(uint64_t **a1, uint64_t a2)
{
  if (!a2)
  {
    v33 = 0;
    InterfaceFor = 0;
    return 1;
  }

  if (!mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    v33 = 0;
    InterfaceFor = 0;
    return 1;
  }

  v33 = a2;
  InterfaceFor = mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(a2);
  if (!a2)
  {
    return 1;
  }

  v4 = *a1;
  v5 = *(a2 + 48);
  if (*(v5 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v32[0] = *(v5 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(v32);
    v7 = *v4;
    v8 = *(v4 + 4);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    ReferencedDialect = *(v5 + 24);
    v7 = *v4;
    v8 = *(v4 + 4);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  v9 = (v8 - 1) & ((ReferencedDialect >> 4) ^ (ReferencedDialect >> 9));
  v10 = *(v7 + 16 * v9);
  if (v10 == ReferencedDialect)
  {
    goto LABEL_17;
  }

  v11 = 1;
  while (v10 != -4096)
  {
    v12 = v9 + v11++;
    v9 = v12 & (v8 - 1);
    v10 = *(v7 + 16 * v9);
    if (v10 == ReferencedDialect)
    {
      goto LABEL_17;
    }
  }

LABEL_16:
  v9 = v8;
LABEL_17:
  v13 = v7 + 16 * v9;
  if (v13 == **a1 + 16 * *(*a1 + 4))
  {
    return 0;
  }

  v14 = *(v13 + 8);
  v32[0] = mlir::Attribute::getContext((a2 + 24));
  v32[1] = 0;
  v15 = *(a2 + 16);
  NodePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getNodePtr(a2);
  v32[2] = v15;
  v32[3] = NodePtr;
  mlir::DowngraderInterface::downgradeToVersion(&v33, v32, v14);
  if (v31 != 1)
  {
    return 0;
  }

  if (v30)
  {
    v17 = 0;
    while (1)
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, v17);
      if (mlir::Value::getDefiningOp(&NextResultAtOffset) != a2)
      {
        break;
      }

      if (v30 == ++v17)
      {
        return 1;
      }
    }

    v19 = *(a2 + 36);
    if (v19)
    {
      v20 = a2 - 16;
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v21 = v30 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = 0;
      do
      {
        v23 = mlir::detail::OpResultImpl::getNextResultAtOffset(v20, v22);
        for (i = mlir::detail::OpResultImpl::getNextResultAtOffset(v29, v22); ; *i = v25)
        {
          v25 = *v23;
          if (!*v23)
          {
            break;
          }

          v26 = v25[1];
          if (v26)
          {
            v27 = *v25;
            *v26 = *v25;
            if (v27)
            {
              *(v27 + 8) = v26;
            }
          }

          v25[3] = i;
          v25[1] = i;
          v28 = *i;
          *v25 = *i;
          if (v28)
          {
            *(v28 + 8) = v25;
          }
        }

        ++v22;
      }

      while (v22 != v19 && v22 != v30);
    }

    mlir::Operation::erase(a2);
  }

  return 1;
}

uint64_t mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(v1 + 16);
  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(a1 + 48);
  }

  if (v2 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v25 = *(v1 + 8);
    ReferencedDialect = mlir::StringAttr::getReferencedDialect(&v25);
    if (!ReferencedDialect)
    {
      return 0;
    }

    {
      v24 = ReferencedDialect;
      mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor();
      ReferencedDialect = v24;
    }

    return (*(*ReferencedDialect + 104))(ReferencedDialect, mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id, v1);
  }

  {
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v3;
    v22 = a1;
    mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v21;
    a1 = v22;
    p_opt_class_meths = &OBJC_PROTOCOL___MLViewerNodePropertySPI.opt_class_meths;
    v5 = mlir::detail::TypeIDResolver<mlir::DowngraderInterface,void>::resolveTypeID(void)::id;
    v6 = *(v1 + 32);
    v7 = *(v1 + 40);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v8 = v6;
  v9 = v7;
  do
  {
    v10 = v9 >> 1;
    v11 = &v8[2 * (v9 >> 1)];
    v13 = *v11;
    v12 = v11 + 2;
    v9 += ~(v9 >> 1);
    if (v13 < v5)
    {
      v8 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  while (v9);
  if (v8 != &v6[2 * v7] && *v8 == v5)
  {
    v15 = v8[1];
    if (v15)
    {
      return v15;
    }
  }

LABEL_23:
  v17 = *(v3 + 24);
  v18 = *(a1 + 48);
  {
    v23 = v18;
    mlir::OpInterface<mlir::DowngraderInterface,mlir::detail::DowngraderInterfaceInterfaceTraits>::getInterfaceFor();
    p_opt_class_meths = (&OBJC_PROTOCOL___MLViewerNodePropertySPI + 48);
    v18 = v23;
  }

  v19 = p_opt_class_meths[81];
  v20 = *(*v17 + 104);

  return v20(v17, v19, v18);
}

_OWORD *mlir::mps::buildConv2DDescriptor@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11, unint64_t a12, int a13, int a14, int a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  memset(v61, 0, sizeof(v61));
  v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a2 + 8) & 0xFFFFFFFFFFFFFFF8));
  v60 = v25;
  if (v59 && mlir::ShapedType::hasRank(&v59))
  {
    Shape = mlir::ShapedType::getShape(&v59);
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v27;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Shape = v61;
    v59 = llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8));
    v60 = v28;
    if (!v59)
    {
      goto LABEL_8;
    }
  }

  if (mlir::ShapedType::hasRank(&v59))
  {
    result = mlir::ShapedType::getShape(&v59);
    goto LABEL_9;
  }

LABEL_8:
  result = v61;
LABEL_9:
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 48) = a3;
  *(a9 + 120) = a13;
  *(a9 + 124) = a14;
  *(a9 + 128) = a15;
  if (a15 != 2)
  {
    if (a15 != 3)
    {
      v30 = *(a9 + 24);
      v31 = *(a9 + 32);
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    v31 = *Shape;
    v30 = Shape[1];
    *(a9 + 24) = v30;
    *(a9 + 32) = v31;
    v32 = Shape[3];
    if (a19)
    {
      *(a9 + 40) = Shape[2] * v32;
      v33 = a18;
      if (a14 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(a9 + 40) = v32;
    v33 = a18;
    if (a14 == 1)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v31 = Shape[2];
  v30 = Shape[3];
  *(a9 + 24) = v30;
  *(a9 + 32) = v31;
  v32 = *Shape;
  if (!a19)
  {
    goto LABEL_17;
  }

  *(a9 + 40) = Shape[1] * v32;
  v33 = a18;
  if (a14 == 1)
  {
LABEL_24:
    *a9 = *(result + 8);
    *(a9 + 16) = *(result + 3);
    if (a16)
    {
      a16[1] = a5;
      a16[2] = a4;
    }

    if (a17)
    {
      v34 = 16;
      v35 = 8;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_18:
  if (!a14)
  {
    *a9 = result[1];
    *(a9 + 16) = *(result + 1);
    if (a16)
    {
      a16[2] = a5;
      a16[3] = a4;
    }

    if (a17)
    {
      v34 = 24;
      v35 = 16;
LABEL_28:
      *(a17 + v35) = a7;
      *(a17 + v34) = a6;
    }
  }

LABEL_29:
  if (a13 <= 1)
  {
    if (a13)
    {
      v38 = 0;
      v39 = 0;
      v37 = 0;
      v36 = 0;
      *(a9 + 104) = 0u;
      *(a9 + 88) = 0u;
      if (!v33)
      {
        return result;
      }
    }

    else
    {
      v36 = a11;
      v37 = a12;
      v38 = a10;
      v39 = a8;
      *(a9 + 88) = a8;
      *(a9 + 96) = a10;
      *(a9 + 104) = a11;
      *(a9 + 112) = a12;
      if (!v33)
      {
        return result;
      }
    }

    goto LABEL_50;
  }

  v40 = v31 - 1;
  v41 = (v30 - 1) * a6 + 1;
  v42 = v40 * a7 + 1;
  v43 = *a9;
  v44 = *(a9 + 8);
  v45 = v44 % a4;
  if (!(v44 % a4))
  {
    v45 = a4;
  }

  v46 = (v41 - v45) & ~((v41 - v45) >> 63);
  if (v43 < 1)
  {
    v37 = 0;
    v36 = 0;
    *(a9 + 104) = 0;
    *(a9 + 112) = 0;
    if (v44 > 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v47 = v43 % a5;
  if (!v47)
  {
    v47 = a5;
  }

  v48 = (v42 - v47) & ~((v42 - v47) >> 63);
  v49 = v48 >> 1;
  v36 = v48 - (v48 >> 1);
  *(a9 + 104) = v49;
  *(a9 + 112) = v36;
  if (a13 != 4)
  {
    v37 = v36;
    v36 = v49;
    if (v44 > 0)
    {
LABEL_47:
      v39 = v46 >> 1;
      v38 = v46 - (v46 >> 1);
      *(a9 + 96) = v38;
      v51 = (a9 + 96);
      *(v51 - 1) = v39;
      v50 = v51 - 1;
      if (a13 != 4)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

LABEL_44:
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  *(a9 + 104) = v36;
  *(a9 + 112) = v49;
  if (v44 < 1)
  {
    v37 = v49;
    v38 = 0;
    v39 = 0;
    *(a9 + 88) = 0;
    *(a9 + 96) = 0;
    if (!v33)
    {
      return result;
    }

    goto LABEL_50;
  }

  v39 = v46 >> 1;
  v50 = (a9 + 88);
  v38 = v46 - (v46 >> 1);
  v51 = (a9 + 96);
  v37 = v49;
LABEL_48:
  v52 = v38;
  *v50 = v38;
  *v51 = v39;
  v38 = v39;
  v39 = v52;
LABEL_49:
  if (!v33)
  {
    return result;
  }

LABEL_50:
  if (a14)
  {
    if (a14 != 1)
    {
      return result;
    }

    v53 = 40;
    v54 = 32;
    v55 = 24;
    v56 = 16;
  }

  else
  {
    v53 = 56;
    v54 = 48;
    v55 = 40;
    v56 = 32;
  }

  *(v33 + v56) = v36;
  *(v33 + v55) = v37;
  *(v33 + v54) = v39;
  *(v33 + v53) = v38;
  return result;
}

void mlir::mps::getBroadcastGradientArgs(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v30[0] = a1;
  v30[1] = a2;
  v29[0] = a3;
  v29[1] = a4;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  Shape = mlir::ShapedType::getShape(v29);
  v8 = v7;
  if (mlir::ShapedType::hasRank(v30))
  {
    v9 = mlir::ShapedType::getShape(v30);
    if (v10)
    {
      v11 = 8 * v10;
      while (*v9 != 0x8000000000000000)
      {
        ++v9;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v12 = mlir::ShapedType::getShape(v30);
      if (v13 == v8 && !memcmp(v12, Shape, 8 * v13))
      {
        return;
      }
    }
  }

  mlir::ShapedType::getShape(v30);
  v15 = v14;
  mlir::ShapedType::getShape(v29);
  v17 = v16;
  v18 = mlir::ShapedType::getShape(v30);
  v19 = mlir::ShapedType::getShape(v29);
  v20 = v15 - v17;
  if (v15 == v17)
  {
    v28 = 0;
    if (v15 >= 1)
    {
      for (i = 0; i < v15; v28 = i)
      {
        if (*(v18 + 8 * i) != 1)
        {
          v22 = *(v19 + 8 * i);
          if (v22 == 1 || v22 == -1)
          {
            std::vector<long long>::push_back[abi:nn200100](a5, &v28);
          }
        }

        i = v28 + 1;
      }
    }
  }

  else if (v15 >= v17)
  {
    v28 = 0;
    if (v20 >= 1)
    {
      for (j = 0; j < v20; v28 = j)
      {
        if (*(v18 + 8 * j) != 1)
        {
          std::vector<long long>::push_back[abi:nn200100](a5, &v28);
          j = v28;
        }

        ++j;
      }
    }

    v28 = v15 - v17;
    if (v17 >= 1)
    {
      v27 = v19 + 8 * v17;
      do
      {
        if (*(v18 + 8 * v20) != 1 && *(v27 + 8 * (v20 - v15)) == 1)
        {
          std::vector<long long>::push_back[abi:nn200100](a5, &v28);
          v20 = v28;
        }

        v28 = ++v20;
      }

      while (v20 < v15);
    }
  }

  else
  {
    v24 = v17 - v15;
    v28 = v17 - v15;
    if (v15 >= 1)
    {
      v25 = v18 + 8 * v15;
      do
      {
        if (*(v25 + 8 * (v24 - v17)) != 1 && *(v19 + 8 * v24) == 1)
        {
          std::vector<long long>::push_back[abi:nn200100](a5, &v28);
          v24 = v28;
        }

        v28 = ++v24;
      }

      while (v24 < v17);
    }
  }
}

unint64_t mlir::mps::mergeDynamicDims(unint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x8000000000000000;
  }

  v2 = 8 * a2;
  v3 = 0x8000000000000000;
  do
  {
    v5 = *a1++;
    v4 = v5;
    if (v3 == 0x8000000000000000)
    {
      v3 = v4;
    }

    v2 -= 8;
  }

  while (v2);
  return v3;
}

unint64_t mlir::mps::getDataSize(void *a1)
{
  ElementTypeOrSelf = mlir::getElementTypeOrSelf(a1);
  v7 = ElementTypeOrSelf;
  if (*(*ElementTypeOrSelf + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v2 = ElementTypeOrSelf;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  if (v2)
  {
    ElementType = mlir::ComplexType::getElementType(&v6);
    DataSize = mlir::mps::getDataSize(ElementType);
    return ((8 * DataSize - (8 * DataSize != 0) + 8 * (8 * DataSize != 0)) >> 2) & 0x1FFFFFFFFFFFFFFELL;
  }

  else if (mlir::Type::isIndex(&v7))
  {
    return 8;
  }

  else
  {
    return mlir::Type::getIntOrFloatBitWidth(&v7) >> 3;
  }
}

void mlir::mps::mixed_precision::defaultMixedPrecisionCheck(mlir::Operation *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v7 = a5;
  v8 = a3;
  v9 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v102 = 0;
  v103 = 0;
  v104 = 0;
  if (a5)
  {
    v97 = a1;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = mlir::TypeRange::dereference_iterator(a4, v14);
      v100[0] = mlir::getElementTypeOrSelf(v15);
      isF16 = mlir::Type::isF16(v100);
      isBF16 = mlir::Type::isBF16(v100);
      isF32 = mlir::Type::isF32(v100);
      v19 = *(*v100[0] + 17) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id;
      if (mlir::Type::isIntOrIndex(v100))
      {
        llvm::DenseMapBase<llvm::DenseMap<mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>,mlir::Block *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::Block *,void>,llvm::detail::DenseSetPair<mlir::Block *>>::try_emplace<llvm::detail::DenseSetEmpty&>(&v102, v100, &v107);
      }

      v10 |= isF16;
      v11 |= isBF16;
      v12 |= isF32;
      v13 |= v19;
      ++v14;
    }

    while (v7 != v14);
    if (v103 >= 2 && (a7 & 1) == 0)
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v97, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with operands of different integer types which is not supported";
        v106 = 82;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v20 = v109 + 24 * v110;
        v21 = v105;
        *(v20 + 2) = v106;
        *v20 = v21;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v22 = __p;
      if (__p)
      {
        v23 = v116;
        v24 = __p;
        if (v116 != __p)
        {
          do
          {
            v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
          }

          while (v23 != v22);
          v24 = __p;
        }

        v116 = v22;
        operator delete(v24);
      }

      v25 = v113;
      if (v113)
      {
        v26 = v114;
        v27 = v113;
        if (v114 != v113)
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
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    v30 = v103 == 0;
    LODWORD(v7) = v10 | v12 | v11;
    if ((v7 & 1) != 0 && (a6 & 1) == 0 && v103)
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v97, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with both float and integer operands which is not supported";
        v106 = 78;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v37 = v109 + 24 * v110;
        v38 = v105;
        *(v37 + 2) = v106;
        *v37 = v38;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v39 = __p;
      if (__p)
      {
        v40 = v116;
        v41 = __p;
        if (v116 != __p)
        {
          do
          {
            v40 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v40 - 1);
          }

          while (v40 != v39);
          v41 = __p;
        }

        v116 = v39;
        operator delete(v41);
      }

      v25 = v113;
      if (v113)
      {
        v42 = v114;
        v27 = v113;
        if (v114 != v113)
        {
          do
          {
            v44 = *--v42;
            v43 = v44;
            *v42 = 0;
            if (v44)
            {
              MEMORY[0x259C63150](v43, 0x1000C8077774924);
            }
          }

          while (v42 != v25);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    a1 = v97;
    if (v103 && ((v13 ^ 1) & 1) == 0)
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v97, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with both complex and integer type operands which is not supported";
        v106 = 85;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v45 = v109 + 24 * v110;
        v46 = v105;
        *(v45 + 2) = v106;
        *v45 = v46;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v47 = __p;
      if (__p)
      {
        v48 = v116;
        v49 = __p;
        if (v116 != __p)
        {
          do
          {
            v48 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v48 - 1);
          }

          while (v48 != v47);
          v49 = __p;
        }

        v116 = v47;
        operator delete(v49);
      }

      v25 = v113;
      if (v113)
      {
        v50 = v114;
        v27 = v113;
        if (v114 != v113)
        {
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

          while (v50 != v25);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    if (v13 & v11)
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v97, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with both complex and BF16 type operands which is not supported";
        v106 = 82;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v53 = v109 + 24 * v110;
        v54 = v105;
        *(v53 + 2) = v106;
        *v53 = v54;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v55 = __p;
      if (__p)
      {
        v56 = v116;
        v57 = __p;
        if (v116 != __p)
        {
          do
          {
            v56 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v56 - 1);
          }

          while (v56 != v55);
          v57 = __p;
        }

        v116 = v55;
        operator delete(v57);
      }

      v25 = v113;
      if (v113)
      {
        v58 = v114;
        v27 = v113;
        if (v114 != v113)
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

          while (v58 != v25);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    if (v10 & v11)
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v97, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with both F16 and BF16 operands which is not supported";
        v106 = 73;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v69 = v109 + 24 * v110;
        v70 = v105;
        *(v69 + 2) = v106;
        *v69 = v70;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v71 = __p;
      if (__p)
      {
        v72 = v116;
        v73 = __p;
        if (v116 != __p)
        {
          do
          {
            v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
          }

          while (v72 != v71);
          v73 = __p;
        }

        v116 = v71;
        operator delete(v73);
      }

      v25 = v113;
      if (v113)
      {
        v74 = v114;
        v27 = v113;
        if (v114 != v113)
        {
          do
          {
            v76 = *--v74;
            v75 = v76;
            *v74 = 0;
            if (v76)
            {
              MEMORY[0x259C63150](v75, 0x1000C8077774924);
            }
          }

          while (v74 != v25);
          goto LABEL_199;
        }

        goto LABEL_200;
      }

      goto LABEL_201;
    }

    v9 = a2;
    v8 = a3;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    LOBYTE(v11) = 0;
    v30 = 1;
    if (!a3)
    {
      goto LABEL_204;
    }
  }

  v31 = a1;
  v32 = 0;
  if ((v30 & v7 & 1) == 0)
  {
    while (1)
    {
      v33 = mlir::TypeRange::dereference_iterator(v9, v32);
      ElementTypeOrSelf = mlir::getElementTypeOrSelf(v33);
      mlir::Type::isIntOrIndex(&ElementTypeOrSelf);
      if (mlir::Type::isF16(&ElementTypeOrSelf) || mlir::Type::isF32(&ElementTypeOrSelf))
      {
        if (((v30 | v7) & 1) == 0)
        {
          goto LABEL_122;
        }
      }

      else if (!(v30 | !mlir::Type::isBF16(&ElementTypeOrSelf) | v7 & 1))
      {
        goto LABEL_122;
      }

      if ((v10 & 1) != 0 && mlir::Type::isBF16(&ElementTypeOrSelf))
      {
        break;
      }

      if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
      {
        goto LABEL_52;
      }

      if (v8 == ++v32)
      {
        goto LABEL_204;
      }
    }

LABEL_161:
    v101 = 257;
    mlir::Operation::emitOpError(&v107, v31, v100);
    if (v107)
    {
      LODWORD(v105) = 3;
      *(&v105 + 1) = "detected operation with F16 inputs and BF16 result type which is not supported";
      v106 = 78;
      if (v110 >= v111)
      {
        if (v109 > &v105 || v109 + 24 * v110 <= &v105)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v77 = v109 + 24 * v110;
      v78 = v105;
      *(v77 + 2) = v106;
      *v77 = v78;
      ++v110;
    }

    mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
    if (v107)
    {
      mlir::InFlightDiagnostic::report(&v107);
    }

    if (v118 == 1)
    {
      if (v117 != &v118)
      {
        free(v117);
      }

      v79 = __p;
      if (__p)
      {
        v80 = v116;
        v81 = __p;
        if (v116 != __p)
        {
          do
          {
            v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
          }

          while (v80 != v79);
          v81 = __p;
        }

        v116 = v79;
        operator delete(v81);
      }

      v25 = v113;
      if (!v113)
      {
        goto LABEL_201;
      }

      v82 = v114;
      v27 = v113;
      if (v114 == v113)
      {
        goto LABEL_200;
      }

      do
      {
        v84 = *--v82;
        v83 = v84;
        *v82 = 0;
        if (v84)
        {
          MEMORY[0x259C63150](v83, 0x1000C8077774924);
        }
      }

      while (v82 != v25);
LABEL_199:
      v27 = v113;
      goto LABEL_200;
    }

    goto LABEL_204;
  }

  while (1)
  {
    v34 = mlir::TypeRange::dereference_iterator(v9, v32);
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v34);
    if (mlir::Type::isIntOrIndex(&ElementTypeOrSelf))
    {
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v31, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with float inputs and integer result type which is not supported";
        v106 = 83;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v85 = v109 + 24 * v110;
        v86 = v105;
        *(v85 + 2) = v106;
        *v85 = v86;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 == 1)
      {
        if (v117 != &v118)
        {
          free(v117);
        }

        v87 = __p;
        if (__p)
        {
          v88 = v116;
          v89 = __p;
          if (v116 != __p)
          {
            do
            {
              v88 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v88 - 1);
            }

            while (v88 != v87);
            v89 = __p;
          }

          v116 = v87;
          operator delete(v89);
        }

        v25 = v113;
        if (!v113)
        {
          goto LABEL_201;
        }

        v90 = v114;
        v27 = v113;
        if (v114 == v113)
        {
          goto LABEL_200;
        }

        do
        {
          v92 = *--v90;
          v91 = v92;
          *v90 = 0;
          if (v92)
          {
            MEMORY[0x259C63150](v91, 0x1000C8077774924);
          }
        }

        while (v90 != v25);
        goto LABEL_199;
      }

LABEL_204:
      llvm::deallocate_buffer(v102, (8 * v104));
    }

    if (!mlir::Type::isF16(&ElementTypeOrSelf) && !mlir::Type::isF32(&ElementTypeOrSelf))
    {
      break;
    }

    if (((v30 | v7) & 1) == 0)
    {
LABEL_122:
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v31, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with integer inputs and float result type which is not supported";
        v106 = 83;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v61 = v109 + 24 * v110;
        v62 = v105;
        *(v61 + 2) = v106;
        *v61 = v62;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 != 1)
      {
        goto LABEL_204;
      }

      if (v117 != &v118)
      {
        free(v117);
      }

      v63 = __p;
      if (__p)
      {
        v64 = v116;
        v65 = __p;
        if (v116 != __p)
        {
          do
          {
            v64 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v64 - 1);
          }

          while (v64 != v63);
          v65 = __p;
        }

        v116 = v63;
        operator delete(v65);
      }

      v25 = v113;
      if (v113)
      {
        v66 = v114;
        v27 = v113;
        if (v114 != v113)
        {
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

          while (v66 != v25);
          goto LABEL_199;
        }

LABEL_200:
        v114 = v25;
        operator delete(v27);
      }

LABEL_201:
      if (v109 != &v112)
      {
        free(v109);
      }

      goto LABEL_204;
    }

    if (v10)
    {
      goto LABEL_49;
    }

LABEL_50:
    if ((v11 & 1) != 0 && mlir::Type::isF16(&ElementTypeOrSelf))
    {
LABEL_52:
      v101 = 257;
      mlir::Operation::emitOpError(&v107, v31, v100);
      if (v107)
      {
        LODWORD(v105) = 3;
        *(&v105 + 1) = "detected operation with BF16 inputs and F16 result type which is not supported";
        v106 = 78;
        if (v110 >= v111)
        {
          if (v109 > &v105 || v109 + 24 * v110 <= &v105)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v35 = v109 + 24 * v110;
        v36 = v105;
        *(v35 + 2) = v106;
        *v35 = v36;
        ++v110;
      }

      mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v107);
      if (v107)
      {
        mlir::InFlightDiagnostic::report(&v107);
      }

      if (v118 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v108);
      }

      goto LABEL_204;
    }

    if (v8 == ++v32)
    {
      goto LABEL_204;
    }
  }

  mlir::Type::isBF16(&ElementTypeOrSelf);
  if ((v10 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_49:
  if (mlir::Type::isBF16(&ElementTypeOrSelf))
  {
    goto LABEL_161;
  }

  goto LABEL_50;
}

unint64_t *mlir::TypeRange::TypeRange<mlir::OperandRange>(unint64_t *a1, void *a2)
{
  v4[2] = *MEMORY[0x277D85DE8];
  mlir::ValueRange::ValueRange(v4, *a2 + 32 * a2[1], a2[3] - a2[1]);
  mlir::TypeRange::TypeRange(a1, v4[0], v4[1]);
  return a1;
}

uint64_t mlir::minimalLegalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a2;
    v7 = a2 + 8 * a3;
    do
    {
      v8 = *(*v6 + 36);
      if (v8)
      {
        v9 = *v6 - 16;
      }

      else
      {
        v9 = 0;
      }

      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, i);
          *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](a4, &NextResultAtOffset) = NextResultAtOffset;
        }
      }

      v6 += 8;
    }

    while (v6 != v7);
  }

  if (!mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1) || !a1)
  {
    return 0;
  }

  InterfaceFor = mlir::OpInterface<mlir::TargetLegalizerInterface,mlir::detail::TargetLegalizerInterfaceInterfaceTraits>::getInterfaceFor(a1);
  return (*(InterfaceFor + 16))(InterfaceFor, a1);
}

void sub_256EDC140()
{

  JUMPOUT(0x259C63180);
}

uint64_t mlir::placement::RegionTypeAttr::get(mlir::MLIRContext *a1, unsigned int a2)
{
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(a1);
  v8[0] = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
  v8[1] = a1;
  v12[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v12[1] = v8;
  v11 = a2;
  v5 = a2 ^ 0xFF51AFD7ED558CCDLL;
  v6 = 0x9DDFEA08EB382D69 * (((8 * a2) | 4) ^ v5);
  v9[0] = &v11;
  v9[1] = v12;
  v10 = &v11;
  return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 32) >> 15) ^ (-348639895 * (v5 ^ (v6 >> 47) ^ v6))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v10, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v9);
}

uint64_t mlir::placement::RegionTypeAttr::parse(mlir::AsmParser *a1)
{
  v67 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(a1);
  (*(*a1 + 40))(a1);
  if ((*(*a1 + 152))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    v42 = 0;
    v43 = 0;
    if (!mlir::AsmParser::parseKeyword(a1, &v42))
    {
LABEL_42:
      v26 = (*(*a1 + 40))(a1);
      LOWORD(v58) = 259;
      (*(*a1 + 24))(v47, a1, v26, v56);
      if (v47[0])
      {
        mlir::InFlightDiagnostic::report(v47);
      }

      if (v55 == 1)
      {
        if (v54 != &v55)
        {
          free(v54);
        }

        v27 = v52;
        if (v52)
        {
          v28 = v53;
          v29 = v52;
          if (v53 != v52)
          {
            do
            {
              v28 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v28 - 1);
            }

            while (v28 != v27);
            v29 = v52;
          }

          v53 = v27;
          operator delete(v29);
        }

        v30 = v50;
        if (v50)
        {
          v31 = v51;
          v32 = v50;
          if (v51 != v50)
          {
            do
            {
              v34 = *--v31;
              v33 = v34;
              *v31 = 0;
              if (v34)
              {
                MEMORY[0x259C63150](v33, 0x1000C8077774924);
              }
            }

            while (v31 != v30);
            v32 = v50;
          }

          v51 = v30;
          operator delete(v32);
        }

        if (v48 != &v49)
        {
          free(v48);
        }
      }

      return 0;
    }

    if (v43 != 3)
    {
LABEL_16:
      v41 = 257;
      (*(*a1 + 24))(v56, a1, v2, v40);
      if (v56[0])
      {
        LODWORD(v44) = 3;
        *(&v44 + 1) = "expected ";
        v45 = 9;
        if (v58 >= v59)
        {
          if (v57 > &v44 || v57 + 24 * v58 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v6 = v57 + 24 * v58;
        v7 = v44;
        *(v6 + 2) = v45;
        *v6 = v7;
        v8 = ++v58;
        if (v56[0])
        {
          LODWORD(v44) = 3;
          *(&v44 + 1) = "::mlir::placement::RegionType";
          v45 = 29;
          if (v8 >= v59)
          {
            if (v57 > &v44 || v57 + 24 * v8 <= &v44)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v9 = v57 + 24 * v58;
          v10 = v44;
          *(v9 + 2) = v45;
          *v9 = v10;
          ++v58;
        }
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v56, " to be one of: ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v11, "GPU");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v12, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v13, "ANE");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v14, ", ");
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v15, "CPU");
      mlir::InFlightDiagnostic::operator llvm::LogicalResult(v16);
      if (v56[0])
      {
        mlir::InFlightDiagnostic::report(v56);
      }

      if (v66 == 1)
      {
        if (v65 != &v66)
        {
          free(v65);
        }

        v17 = __p;
        if (__p)
        {
          v18 = v64;
          v19 = __p;
          if (v64 != __p)
          {
            do
            {
              v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
            }

            while (v18 != v17);
            v19 = __p;
          }

          v64 = v17;
          operator delete(v19);
        }

        v20 = v61;
        if (v61)
        {
          v21 = v62;
          v22 = v61;
          if (v62 != v61)
          {
            do
            {
              v24 = *--v21;
              v23 = v24;
              *v21 = 0;
              if (v24)
              {
                MEMORY[0x259C63150](v23, 0x1000C8077774924);
              }
            }

            while (v21 != v20);
            v22 = v61;
          }

          v62 = v20;
          operator delete(v22);
        }

        if (v57 != &v60)
        {
          free(v57);
        }
      }

      goto LABEL_42;
    }

    if (*v42 == 20551 && *(v42 + 2) == 85)
    {
      v25 = 0;
    }

    else if (*v42 == 20033 && *(v42 + 2) == 69)
    {
      v25 = 1;
    }

    else
    {
      if (*v42 != 20547 || *(v42 + 2) != 85)
      {
        goto LABEL_16;
      }

      v25 = 2;
    }

    if ((*(*a1 + 168))(a1))
    {
      Context = mlir::AsmParser::getContext(a1);
      AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(Context);
      *&v44 = &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id;
      *(&v44 + 1) = Context;
      v56[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail21RegionTypeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_14RegionTypeAttrEJNS2_10RegionTypeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
      v56[1] = &v44;
      v46 = v25;
      v37 = v25 ^ 0xFF51AFD7ED558CCDLL;
      v38 = 0x9DDFEA08EB382D69 * (((8 * v25) | 4) ^ v37);
      v42 = &v46;
      v40[0] = &v46;
      v40[1] = v56;
      return mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 32) >> 15) ^ (-348639895 * (v37 ^ (v38 >> 47) ^ v38))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v42, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::RegionTypeAttrStorage * mlir::StorageUniquer::get<mlir::placement::detail::RegionTypeAttrStorage,mlir::placement::RegionType>(llvm::function_ref<void ()(mlir::placement::detail::RegionTypeAttrStorage *)>,mlir::TypeID,mlir::placement::RegionType &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v40);
    }
  }

  return 0;
}

void *mlir::placement::RegionTypeAttr::print(mlir::placement::RegionTypeAttr *this, mlir::AsmPrinter *a2)
{
  mlir::Attribute::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = *(*this + 8);
  if (!v6)
  {
    v7 = 0;
    v9 = "GPU";
    goto LABEL_14;
  }

  if (v6 == 2)
  {
    v7 = 0;
    v9 = "CPU";
LABEL_14:
    v8 = 3;
    goto LABEL_15;
  }

  v7 = v6 != 1;
  if (v6 == 1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (v6 == 1)
  {
    v9 = "ANE";
  }

  else
  {
    v9 = "";
  }

LABEL_15:
  v10 = (*(*a2 + 16))(a2);
  if (v8 <= *(v10 + 24) - *(v10 + 32))
  {
    if (!v7)
    {
      v11 = v10;
      memcpy(*(v10 + 32), v9, v8);
      *(v11 + 32) += v8;
    }
  }

  else
  {
    llvm::raw_ostream::write(v10, v9, v8);
  }

  result = (*(*a2 + 16))(a2);
  v13 = result[4];
  if (result[3] == v13)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v13 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseAttribute(uint64_t a1, mlir::AsmParser *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v30[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v33[2] = 0;
  v31 = 0;
  v32 = 0;
  v30[1] = v5;
  v33[0] = 0;
  if (((*(*a2 + 640))(a2, &v31) & 1) == 0)
  {
    v6 = 0;
    *v33 = 256;
    if (v33[2])
    {
      v27 = "region_type";
    }

    else
    {
      v33[2] = 1;
    }

    goto LABEL_15;
  }

  v27 = "region_type";
  v28 = 11;
  if (v33[2])
  {
    v6 = 0;
LABEL_15:
    v7 = 0;
    v9 = 0;
    goto LABEL_16;
  }

  v7 = v32;
  if (v32)
  {
    if (v32 == 11 && *v31 == 0x745F6E6F69676572 && *(v31 + 3) == 0x657079745F6E6F69)
    {
      v6 = mlir::placement::RegionTypeAttr::parse(a2);
      v33[0] = v6 != 0;
      *&v33[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v30[0] + 648))(v30[0], &v27, 1);
    if (v33[2])
    {
      v7 = 0;
      v9 = 0;
      v6 = 0;
      goto LABEL_16;
    }

    v7 = v32;
  }

  v6 = 0;
  v9 = v31;
  *v33 = 0;
  v33[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v30) & 0x100) == 0)
  {
    v26 = 257;
    (*(*a2 + 24))(v30, a2, v4, v25);
    if (*v10)
    {
      v29 = 261;
      v27 = v9;
      v28 = v7;
      v11 = v10;
      mlir::Diagnostic::operator<<((v10 + 1), &v27);
      v10 = v11;
    }

    if (*v12)
    {
      v13 = *(a1 + 8);
      v14 = *(a1 + 16);
      v29 = 261;
      v27 = v13;
      v28 = v14;
      v15 = v12;
      mlir::Diagnostic::operator<<((v12 + 1), &v27);
      v12 = v15;
    }

    if (v30[0])
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v40 == 1)
    {
      if (v39 != &v40)
      {
        free(v39);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v38;
        v18 = __p;
        if (v38 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v38 = v16;
        operator delete(v18);
      }

      v19 = v35;
      if (v35)
      {
        v20 = v36;
        v21 = v35;
        if (v36 != v35)
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
          v21 = v35;
        }

        v36 = v19;
        operator delete(v21);
      }

      if (v32 != &v34)
      {
        free(v32);
      }
    }

    return 0;
  }

  return v6;
}

void mlir::placement::PlacementDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 0xA)
    {
      *(v7 + 7) = 1701869940;
      *v7 = *"region_type";
      v6[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v6, "region_type", 0xBuLL);
    }

    mlir::placement::RegionTypeAttr::print(v8, a3);
  }
}

uint64_t mlir::placement::TimerHandleType::parse(mlir::placement::TimerHandleType *this, mlir::AsmParser *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  mlir::AsmParser::getContext(this);
  (*(*this + 40))(this);
  if ((*(*this + 152))(this))
  {
    v20 = 257;
    if ((*(*this + 400))(this, "handle", 6, v19) & 1) != 0 && ((*(*this + 136))(this))
    {
      v19[0] = 0;
      v3 = mlir::AsmParser::parseInteger<unsigned long long>(this, v19);
      v4 = *this;
      if (v3)
      {
        v5 = v19[0];
        if ((*(v4 + 168))(this))
        {
          Context = mlir::AsmParser::getContext(this);
          TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
          v21[0] = &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id;
          v21[1] = &Context;
          v19[0] = _ZN4llvm12function_refIFvPN4mlir9placement6detail22TimerHandleTypeStorageEEE11callback_fnIZNS1_6detail11TypeUniquer13getWithTypeIDINS2_15TimerHandleTypeEJyEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_11TypeStorageEEE5valueESF_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSH_E_EEvlS5_;
          v19[1] = v21;
          v25 = v5;
          v7 = HIDWORD(v5) ^ 0xFF51AFD7ED558CCDLL;
          v8 = 0x9DDFEA08EB382D69 * ((8 * v5 + 8) ^ v7);
          v23[0] = &v25;
          v23[1] = v19;
          v24 = &v25;
          return mlir::StorageUniquer::getParametricStorageTypeImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v7 ^ (v8 >> 47) ^ v8)) >> 32) >> 15) ^ (-348639895 * (v7 ^ (v8 >> 47) ^ v8))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v24, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::placement::detail::TimerHandleTypeStorage * mlir::StorageUniquer::get<mlir::placement::detail::TimerHandleTypeStorage,unsigned long long>(llvm::function_ref<void ()(mlir::placement::detail::TimerHandleTypeStorage *)>,mlir::TypeID,unsigned long long &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v23);
        }
      }

      else
      {
        v10 = (*(v4 + 40))(this);
        v20 = 259;
        (*(*this + 24))(v26, this, v10, v19);
        if (v26[0])
        {
          mlir::InFlightDiagnostic::report(v26);
        }

        if (v34 == 1)
        {
          if (v33 != &v34)
          {
            free(v33);
          }

          v11 = __p;
          if (__p)
          {
            v12 = v32;
            v13 = __p;
            if (v32 != __p)
            {
              do
              {
                v12 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v12 - 1);
              }

              while (v12 != v11);
              v13 = __p;
            }

            v32 = v11;
            operator delete(v13);
          }

          v14 = v29;
          if (v29)
          {
            v15 = v30;
            v16 = v29;
            if (v30 != v29)
            {
              do
              {
                v18 = *--v15;
                v17 = v18;
                *v15 = 0;
                if (v18)
                {
                  MEMORY[0x259C63150](v17, 0x1000C8077774924);
                }
              }

              while (v15 != v14);
              v16 = v29;
            }

            v30 = v14;
            operator delete(v16);
          }

          if (v27 != &v28)
          {
            free(v27);
          }
        }
      }
    }
  }

  return 0;
}

void *mlir::placement::TimerHandleType::print(mlir::placement::TimerHandleType *this, mlir::AsmPrinter *a2)
{
  mlir::Type::getContext(this);
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "<", 1uLL);
  }

  else
  {
    *v5 = 60;
    ++v4[4];
  }

  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if ((v6[3] - v7) > 5)
  {
    *(v7 + 4) = 25964;
    *v7 = 1684955496;
    v6[4] += 6;
  }

  else
  {
    llvm::raw_ostream::write(v6, "handle", 6uLL);
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

  v10 = (*(*a2 + 16))(a2);
  v11 = v10[4];
  if (v10[3] == v11)
  {
    llvm::raw_ostream::write(v10, "=", 1uLL);
  }

  else
  {
    *v11 = 61;
    ++v10[4];
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

  v14 = *(*this + 8);
  v15 = (*(*a2 + 16))(a2);
  llvm::raw_ostream::operator<<(v15, v14);
  result = (*(*a2 + 16))(a2);
  v17 = result[4];
  if (result[3] == v17)
  {

    return llvm::raw_ostream::write(result, ">", 1uLL);
  }

  else
  {
    *v17 = 62;
    ++result[4];
  }

  return result;
}

uint64_t mlir::placement::PlacementDialect::parseType(mlir::placement::PlacementDialect *this, mlir::DialectAsmParser *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 40))(a2);
  v31[0] = a2;
  v5 = (*(*a2 + 40))(a2);
  v34[2] = 0;
  v32 = 0;
  v33 = 0;
  v31[1] = v5;
  v34[0] = 0;
  if (((*(*a2 + 640))(a2, &v32) & 1) == 0)
  {
    v7 = 0;
    *v34 = 256;
    if (v34[2])
    {
      v28 = "timer";
    }

    else
    {
      v34[2] = 1;
    }

    goto LABEL_15;
  }

  v28 = "timer";
  v29 = 5;
  if (v34[2])
  {
    goto LABEL_3;
  }

  v8 = v33;
  if (v33)
  {
    if (v33 == 5 && *v32 == 1701669236 && *(v32 + 4) == 114)
    {
      v7 = mlir::placement::TimerHandleType::parse(a2, v6);
      v34[0] = v7 != 0;
      *&v34[1] = 257;
      goto LABEL_15;
    }
  }

  else
  {
    (*(*v31[0] + 648))(v31[0], &v28, 1);
    if (v34[2])
    {
LABEL_3:
      v7 = 0;
LABEL_15:
      v8 = 0;
      v10 = 0;
      goto LABEL_16;
    }

    v8 = v33;
  }

  v7 = 0;
  v10 = v32;
  *v34 = 0;
  v34[2] = 1;
LABEL_16:
  if ((mlir::AsmParser::KeywordSwitch<mlir::OptionalParseResult>::operator mlir::OptionalParseResult(v31) & 0x100) == 0)
  {
    v27 = 257;
    (*(*a2 + 24))(v31, a2, v4, v26);
    if (*v11)
    {
      v30 = 261;
      v28 = v10;
      v29 = v8;
      v12 = v11;
      mlir::Diagnostic::operator<<((v11 + 1), &v28);
      v11 = v12;
    }

    if (*v13)
    {
      v14 = *(this + 1);
      v15 = *(this + 2);
      v30 = 261;
      v28 = v14;
      v29 = v15;
      v16 = v13;
      mlir::Diagnostic::operator<<((v13 + 1), &v28);
      v13 = v16;
    }

    if (v31[0])
    {
      mlir::InFlightDiagnostic::report(v31);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v17 = __p;
      if (__p)
      {
        v18 = v39;
        v19 = __p;
        if (v39 != __p)
        {
          do
          {
            v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
          }

          while (v18 != v17);
          v19 = __p;
        }

        v39 = v17;
        operator delete(v19);
      }

      v20 = v36;
      if (v36)
      {
        v21 = v37;
        v22 = v36;
        if (v37 != v36)
        {
          do
          {
            v24 = *--v21;
            v23 = v24;
            *v21 = 0;
            if (v24)
            {
              MEMORY[0x259C63150](v23, 0x1000C8077774924);
            }
          }

          while (v21 != v20);
          v22 = v36;
        }

        v37 = v20;
        operator delete(v22);
      }

      if (v33 != &v35)
      {
        free(v33);
      }
    }

    return 0;
  }

  return v7;
}

void mlir::placement::PlacementDialect::printType(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    v8[3] = v3;
    v8[4] = v4;
    v8[0] = a2;
    v6 = (*(*a3 + 16))(a3);
    v7 = v6[4];
    if ((v6[3] - v7) > 4)
    {
      *(v7 + 4) = 114;
      *v7 = 1701669236;
      v6[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v6, "timer", 5uLL);
    }

    mlir::placement::TimerHandleType::print(v8, a3);
  }
}

BOOL mlir::placement::__mlir_ods_local_type_constraint_PlacementOps1(mlir::Operation *a1, void **a2, void **a3, void **a4, unsigned int a5)
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  v7 = *(*a2 + 17);
  if (v7 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id || v7 == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v40[0] = a2;
    v10 = v40;
LABEL_33:
    v10[1] = v9;
    mlir::ShapedType::getElementType(v10);
    return 1;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v9 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    v36[0] = a2;
    v10 = v36;
    goto LABEL_33;
  }

  if (v7 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v37 = 261;
  v36[0] = a3;
  v36[1] = a4;
  mlir::Operation::emitOpError(v40, a1, v36);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v40, " #");
  if (*v12)
  {
    v13 = *(v12 + 24);
    LODWORD(v38) = 5;
    *(&v38 + 1) = a5;
    v14 = *(v12 + 32);
    if (v14 >= *(v12 + 36))
    {
      if (v13 > &v38 || v13 + 24 * v14 <= &v38)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = v13 + 24 * *(v12 + 32);
    v16 = v38;
    *(v15 + 16) = v39;
    *v15 = v16;
    v17 = *(v12 + 32) + 1;
    *(v12 + 32) = v17;
    if (*v12)
    {
      LODWORD(v38) = 3;
      *(&v38 + 1) = " must be tensor of any type values or memref of any type values or index, but got ";
      v39 = 82;
      v18 = *(v12 + 24);
      if (v17 >= *(v12 + 36))
      {
        if (v18 > &v38 || v18 + 24 * v17 <= &v38)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v19 = v18 + 24 * *(v12 + 32);
      v20 = v38;
      *(v19 + 16) = v39;
      *v19 = v20;
      ++*(v12 + 32);
      if (*v12)
      {
        v21 = v12;
        mlir::DiagnosticArgument::DiagnosticArgument(&v38, a2);
        v22 = *(v21 + 32);
        v23 = *(v21 + 24);
        if (v22 >= *(v21 + 36))
        {
          if (v23 > &v38 || v23 + 24 * v22 <= &v38)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v12 = v21;
        v24 = v23 + 24 * *(v21 + 32);
        v25 = v38;
        *(v24 + 16) = v39;
        *v24 = v25;
        ++*(v21 + 32);
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  v27 = result;
  if (v40[0])
  {
    mlir::InFlightDiagnostic::report(v40);
    result = v27;
  }

  if (v48 == 1)
  {
    if (v47 != &v48)
    {
      free(v47);
      result = v27;
    }

    v28 = __p;
    if (__p)
    {
      v29 = v46;
      v30 = __p;
      if (v46 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v46 = v28;
      operator delete(v30);
      result = v27;
    }

    v31 = v43;
    if (v43)
    {
      v32 = v44;
      v33 = v43;
      if (v44 != v43)
      {
        do
        {
          v35 = *--v32;
          v34 = v35;
          *v32 = 0;
          if (v35)
          {
            MEMORY[0x259C63150](v34, 0x1000C8077774924);
          }
        }

        while (v32 != v31);
        v33 = v43;
      }

      v44 = v31;
      operator delete(v33);
      result = v27;
    }

    if (v41 != &v42)
    {
      free(v41);
      return v27;
    }
  }

  return result;
}

BOOL mlir::placement::ANEIOCast::verify(mlir::Operation **this)
{
  v30 = *MEMORY[0x277D85DE8];
  v19[0] = *(*(*this + 9) + 24);
  DefiningOp = mlir::Value::getDefiningOp(v19);
  if (!DefiningOp || *(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::placement::ANEIOCast,void>::id || (*(*this - 1) ^ *(*(*(DefiningOp + 72) + 24) + 8)) < 8)
  {
    return 1;
  }

  v16 = 257;
  mlir::OpState::emitOpError(this, &v15, v19);
  if (v19[0])
  {
    LODWORD(v17) = 3;
    *(&v17 + 1) = "invalid conversion";
    v18 = 18;
    if (v21 >= v22)
    {
      if (v20 > &v17 || v20 + 24 * v21 <= &v17)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v4 = v20 + 24 * v21;
    v5 = v17;
    *(v4 + 2) = v18;
    *v4 = v5;
    ++v21;
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v6 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v6;
  }

  if (v29 == 1)
  {
    if (v28 != &v29)
    {
      free(v28);
      result = v6;
    }

    v7 = __p;
    if (__p)
    {
      v8 = v27;
      v9 = __p;
      if (v27 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v27 = v7;
      operator delete(v9);
      result = v6;
    }

    v10 = v24;
    if (v24)
    {
      v11 = v25;
      v12 = v24;
      if (v25 != v24)
      {
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
        v12 = v24;
      }

      v25 = v10;
      operator delete(v12);
      result = v6;
    }

    if (v20 != &v23)
    {
      free(v20);
      return v6;
    }
  }

  return result;
}

uint64_t mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(mlir::placement::detail::MemrefToTensorGenericAdaptorBase *this)
{
  v2 = mlir::DictionaryAttr::begin(this);
  v3 = mlir::DictionaryAttr::end(this);
  v4 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v2, v3, **(*(this + 1) + 96));
  if (v4 && ((v5 = *(*v4 + 136), v6 = v5 == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id, v5 != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id) ? (v7 = 0) : (v7 = v4), v16 = v7, v6))
  {
    mlir::IntegerAttr::getValue(&v16, &v14);
    if (v15 >= 0x41)
    {
      v11 = v14;
    }

    else
    {
      v11 = &v14;
    }

    v12 = *v11;
    v8 = *v11 & 0xFFFFFF00;
    if (v15 >= 0x41 && v14)
    {
      MEMORY[0x259C63150]();
    }

    v10 = v12;
    v9 = 0x100000000;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  return v9 | v8 | v10;
}

uint64_t mlir::placement::MemrefToTensorAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v40 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v40);
  if (v4 == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
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

    while (v4 != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::ShapedType::getShape(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::DenseElementsAttr::getType(&v37), v38[1] = v12, ElementType = mlir::ShapedType::getElementType(v38), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_16:
        v35[0] = "'placement.memref_to_tensor' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

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
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::IntegerAttr::getType(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.memref_to_tensor' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
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

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::TypeAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.memref_to_tensor' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
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

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

uint64_t mlir::placement::MemrefToTensor::getResultElementType(mlir::Operation **this)
{
  result = mlir::placement::MemrefToTensor::getResultElementTypeAttr(this);
  v2 = result;
  if (result)
  {
    return mlir::TypeAttr::getValue(&v2);
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getResultElementTypeAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getInterleave(mlir::Operation **this)
{
  result = mlir::placement::MemrefToTensor::getInterleaveAttr(this);
  v7 = result;
  if (result)
  {
    mlir::IntegerAttr::getValue(&v7, &v5);
    if (v6 >= 0x41)
    {
      v2 = v5;
    }

    else
    {
      v2 = &v5;
    }

    v3 = *v2;
    if (v6 >= 0x41 && v5 != 0)
    {
      MEMORY[0x259C63150]();
    }

    return v3 | 0x100000000;
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    if (*(*result + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v61 = a11;
  v65 = a6;
  LOBYTE(v66) = 0;
  v67 = 0;
  v68 = a9;
  v69 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v65);
    if (v67 == 1)
    {
      v67 = 0;
    }

    mlir::OperationName::OperationName(&v66, "placement.memref_to_tensor", 26, Context);
    v67 = 1;
  }

  v70 = a4;
  v71 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::MemrefToTensorAdaptor::verify(&v65, v15))
    {
      v62 = v70;
      v63 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v62, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v59 = v16;
        v60 = v17;
        if (v16)
        {
          ElementType = mlir::ShapedType::getElementType(&v59);
          Shape = mlir::ShapedType::getShape(&v59);
          isSplat = v19;
          v62 = v64;
          v63 = 0x500000000;
          if (((8 * v19) >> 3) >= 6)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v26 = 0;
          v27 = 8 * v19;
          if (v19)
          {
            memcpy(v62, Shape, v27);
            v26 = v63;
          }

          LODWORD(v63) = v26 + (v27 >> 3);
          v28 = mlir::DictionaryAttr::begin(&v65);
          v29 = mlir::DictionaryAttr::end(&v65);
          v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, v29, *(*(v66 + 96) + 8));
          if (v30)
          {
            v31 = *(*v30 + 136);
            v32 = v31 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
            v33 = v31 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v30 : 0;
            v57 = v33;
            if (v32)
            {
              ElementType = mlir::TypeAttr::getValue(&v57);
            }
          }

          v34 = mlir::DictionaryAttr::begin(&v65);
          v35 = mlir::DictionaryAttr::end(&v65);
          v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v34, v35, *(*(v66 + 96) + 16));
          if (v36)
          {
            v37 = v36;
            if (mlir::DenseIntElementsAttr::classof(v36))
            {
              v57 = v37;
              v58 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                RawData = mlir::DenseElementsAttr::getRawData(&v57);
                isSplat = mlir::DenseElementsAttr::isSplat(&v57);
                mlir::DenseElementsAttr::getType(&v57);
                mlir::DenseElementsAttr::getNumElements(&v57);
              }

              else
              {
                RawData = 0;
              }

              if (!mlir::DenseElementsAttr::isValidIntOrFloat(&v57, 8, 1, 0))
              {
                goto LABEL_34;
              }

              mlir::DenseElementsAttr::getRawData(&v57);
              mlir::DenseElementsAttr::isSplat(&v57);
              mlir::DenseElementsAttr::getType(&v57);
              NumElements = mlir::DenseElementsAttr::getNumElements(&v57);
              v27 = NumElements;
              LODWORD(v63) = 0;
              if (NumElements > HIDWORD(v63))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v40 = 0;
              if (NumElements)
              {
LABEL_34:
                v41 = 0;
                v42 = v62;
                do
                {
                  if (isSplat)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v42[v41++] = *(RawData + 8 * v43);
                }

                while (v27 != v41);
                v40 = v27;
              }

              LODWORD(v63) = v40;
            }
          }

          v44 = mlir::DictionaryAttr::begin(&v65);
          v45 = mlir::DictionaryAttr::end(&v65);
          v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v44, v45, **(v66 + 96));
          if (v46)
          {
            if (*(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
            {
              v50 = mlir::DictionaryAttr::begin(&v65);
              v51 = mlir::DictionaryAttr::end(&v65);
              v52 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v50, v51, *(*(v66 + 96) + 16));
              if (!v52 || !mlir::DenseIntElementsAttr::classof(v52))
              {
                v53 = v63;
                if ((v63 & 0xFFFFFFFE) != 4)
                {
LABEL_45:
                  if (v62 != v64)
                  {
                    v49 = result;
                    free(v62);
                    return v49;
                  }

                  return result;
                }

                Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v65);
                v55 = 16;
                if (v53 == 4)
                {
                  v55 = 8;
                }

                v56 = v62;
                *(v62 + v55) /= Interleave;
                v56[v53 - 1] *= Interleave;
              }
            }
          }

          v47 = mlir::RankedTensorType::get(v62, v63, ElementType, 0);
          v48 = *(a11 + 8);
          if (v48 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v48) = v47;
          ++*(a11 + 8);
          result = 1;
          goto LABEL_45;
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
      }
    }
  }

  v22 = mlir::Float32Type::get(this, a2);
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v23;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::placement::MemrefToTensor::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v10 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::NamedAttribute::getName(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::NamedAttribute::getName(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(v10, v7, "shape", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(*this, v6, "resultElementType", 0x11) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps9(*this, v5, "interleave", 0xA) & 1) == 0 || (mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v33[0] = a2;
    v33[1] = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(v6 + 8);
    mlir::ShapedType::getElementType(v33);
    return 1;
  }

  else
  {
    v30 = 261;
    v29[0] = a3;
    v29[1] = a4;
    mlir::Operation::emitOpError(v33, a1, v29);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v33, " #");
    if (*v8)
    {
      v9 = *(v8 + 24);
      LODWORD(v31) = 5;
      *(&v31 + 1) = a5;
      v10 = *(v8 + 32);
      if (v10 >= *(v8 + 36))
      {
        if (v9 > &v31 || v9 + 24 * v10 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v11 = v9 + 24 * *(v8 + 32);
      v12 = v31;
      *(v11 + 16) = v32;
      *v11 = v12;
      ++*(v8 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v8, " must be memref of any type values, but got ");
    if (*v13)
    {
      v14 = v13;
      mlir::DiagnosticArgument::DiagnosticArgument(&v31, a2);
      v13 = v14;
      v15 = v14[3];
      v16 = *(v14 + 8);
      if (v16 >= *(v14 + 9))
      {
        if (v15 > &v31 || v15 + 24 * v16 <= &v31)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v17 = v15 + 24 * *(v14 + 8);
      v18 = v31;
      *(v17 + 16) = v32;
      *v17 = v18;
      ++*(v14 + 8);
    }

    v19 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v13);
    if (v33[0])
    {
      mlir::InFlightDiagnostic::report(v33);
    }

    if (v41 == 1)
    {
      if (v40 != &v41)
      {
        free(v40);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v39;
        v22 = __p;
        if (v39 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v39 = v20;
        operator delete(v22);
      }

      v23 = v36;
      if (v36)
      {
        v24 = v37;
        v25 = v36;
        if (v37 != v36)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v36;
        }

        v37 = v23;
        operator delete(v25);
      }

      if (v34 != &v35)
      {
        free(v34);
      }
    }
  }

  return v19;
}

uint64_t mlir::placement::MemrefToTensor::verify(mlir::Operation **this)
{
  v119 = *MEMORY[0x277D85DE8];
  v104 = *this;
  v2 = (*(*(*(v104 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  if (v3)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v2 = 0;
  }

  v103[0] = v2;
  v103[1] = v3;
  if (!mlir::anec::Linear::getKernelZeroPointAttr(&v104) || !v103[0] || !mlir::ShapedType::hasRank(v103))
  {
    goto LABEL_32;
  }

  Shape = mlir::ShapedType::getShape(v103);
  if (v5)
  {
    v6 = 8 * v5;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v7 = mlir::ShapedType::getShape(v103);
  NumElements = mlir::ShapedType::getNumElements(v7, v8);
  KernelZeroPointAttr = mlir::anec::Linear::getKernelZeroPointAttr(&v104);
  LOBYTE(v110[0]) = KernelZeroPointAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&KernelZeroPointAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v12 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawData + 8 * v17);
      v16 *= *(RawData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v12);
    v13 = v16 * v15;
    goto LABEL_30;
  }

  RawData = mlir::DenseElementsAttr::getRawData(&KernelZeroPointAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&KernelZeroPointAttr);
  mlir::DenseElementsAttr::getType(&KernelZeroPointAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&KernelZeroPointAttr);
  if (!isValidIntOrFloat)
  {
    v13 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v12 = 0;
  v13 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12;
    }

    v13 *= *(RawData + 8 * v19);
    ++v12;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v12);
LABEL_31:
  if (NumElements != v13)
  {
    v108 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v104, &v105);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "Input shape ");
    if (*v32)
    {
      v33 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v100, v103[0]);
      v34 = v33[3];
      v35 = *(v33 + 8);
      if (v35 >= *(v33 + 9))
      {
        if (v34 > &v100 || v34 + 24 * v35 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v33;
      v36 = v34 + 24 * *(v33 + 8);
      v37 = v100;
      *(v36 + 16) = v101;
      *v36 = v37;
      ++*(v33 + 8);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, " (");
    if (*v38)
    {
      v39 = *(v38 + 24);
      LODWORD(v100) = 5;
      *(&v100 + 1) = NumElements;
      v40 = *(v38 + 32);
      if (v40 >= *(v38 + 36))
      {
        if (v39 > &v100 || v39 + 24 * v40 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v39 + 24 * *(v38 + 32);
      v42 = v100;
      *(v41 + 16) = v101;
      *v41 = v42;
      ++*(v38 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " elements) is not compatible with shape attribute ");
    v44 = v43;
    v45 = mlir::anec::Linear::getKernelZeroPointAttr(&v104);
    if (*v44)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v100, v45);
      v46 = *(v44 + 24);
      v47 = *(v44 + 32);
      if (v47 >= *(v44 + 36))
      {
        if (v46 > &v100 || v46 + 24 * v47 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v48 = v46 + 24 * *(v44 + 32);
      v49 = v100;
      *(v48 + 16) = v101;
      *v48 = v49;
      ++*(v44 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " (");
    if (*v50)
    {
      v51 = *(v50 + 24);
      LODWORD(v100) = 2;
      *(&v100 + 1) = v13;
      v52 = *(v50 + 32);
      if (v52 >= *(v50 + 36))
      {
        if (v51 > &v100 || v51 + 24 * v52 <= &v100)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v53 = v51 + 24 * *(v50 + 32);
      v54 = v100;
      *(v53 + 16) = v101;
      *v53 = v54;
      ++*(v50 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " elements)");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    v57 = result;
    if (KernelZeroPointAttr)
    {
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v57;
    }

    if ((v118 & 1) == 0)
    {
      return result;
    }

    if (v117 != &v118)
    {
      free(v117);
      result = v57;
    }

    v58 = __p;
    if (__p)
    {
      v59 = v116;
      v60 = __p;
      if (v116 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v116 = v58;
      operator delete(v60);
      result = v57;
    }

    v61 = v113;
    if (v113)
    {
      v62 = v114;
      v63 = v113;
      if (v114 != v113)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x259C63150](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        goto LABEL_106;
      }

LABEL_107:
      v114 = v61;
      operator delete(v63);
      result = v57;
    }

LABEL_108:
    if (v111 != &v112)
    {
      free(v111);
      return v57;
    }

    return result;
  }

LABEL_32:
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
  Value = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
  v21 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v104 + 6) + 96));
  if (!v23)
  {
    return 1;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v103[0] == 0;
  if (v24 || !mlir::ShapedType::hasRank(v103))
  {
    return 1;
  }

  v25 = mlir::ShapedType::getShape(v103);
  if (v26)
  {
    v27 = 8 * v26;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    return 1;
  }

LABEL_42:
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
  v28 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
  v29 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v104 + 6) + 96));
  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v105 = v31;
      mlir::IntegerAttr::getValue(&v105, &KernelZeroPointAttr);
      if (v110[0] >= 0x41u)
      {
        p_KernelZeroPointAttr = KernelZeroPointAttr;
      }

      else
      {
        p_KernelZeroPointAttr = &KernelZeroPointAttr;
      }

      v31 = *p_KernelZeroPointAttr;
      if (v110[0] >= 0x41u && KernelZeroPointAttr)
      {
        v67 = *p_KernelZeroPointAttr;
        MEMORY[0x259C63150](KernelZeroPointAttr, 0x1000C8000313F17);
        v31 = v67;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  mlir::getANENextSupportedInterleaveValue(v31);
  if ((v68 & 1) == 0)
  {
    v108 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v104, &v105);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
    v57 = result;
    if (KernelZeroPointAttr)
    {
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v57;
    }

    if (v118 != 1)
    {
      return result;
    }

    if (v117 != &v118)
    {
      free(v117);
      result = v57;
    }

    v81 = __p;
    if (__p)
    {
      v82 = v116;
      v83 = __p;
      if (v116 != __p)
      {
        do
        {
          v82 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v82 - 1);
        }

        while (v82 != v81);
        v83 = __p;
      }

      v116 = v81;
      operator delete(v83);
      result = v57;
    }

    v61 = v113;
    if (v113)
    {
      v84 = v114;
      v63 = v113;
      if (v114 != v113)
      {
        do
        {
          v86 = *--v84;
          v85 = v86;
          *v84 = 0;
          if (v86)
          {
            MEMORY[0x259C63150](v85, 0x1000C8077774924);
          }
        }

        while (v84 != v61);
LABEL_106:
        v63 = v113;
        goto LABEL_107;
      }

      goto LABEL_107;
    }

    goto LABEL_108;
  }

  v105 = v107;
  v106 = 0x400000000;
  v69 = mlir::ShapedType::getShape(v103);
  v70 = mlir::ShapedType::getShape(v103);
  v71 = 0;
  v73 = (v70 + 8 * v72);
  LODWORD(v106) = 0;
  v74 = v73 - v69;
  if ((v73 - v69) >> 3 > HIDWORD(v106))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v73 != v69)
  {
    memcpy(v105, v69, v73 - v69);
    v71 = v106;
  }

  v75 = v71 + (v74 >> 3);
  LODWORD(v106) = v71 + (v74 >> 3);
  if ((v75 - 6) > 0xFFFFFFFFFFFFFFFDLL)
  {
    KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
    v87 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
    KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v104);
    v88 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
    result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v87, (v88 + 16 * v89), **(*(v104 + 6) + 96));
    if (result && *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      *&v100 = result;
      mlir::IntegerAttr::getValue(&v100, &KernelZeroPointAttr);
      result = KernelZeroPointAttr;
      if (v110[0] >= 0x41u)
      {
        v98 = KernelZeroPointAttr;
      }

      else
      {
        v98 = &KernelZeroPointAttr;
      }

      v90 = *v98;
      if (v110[0] >= 0x41u && KernelZeroPointAttr)
      {
        result = MEMORY[0x259C63150]();
      }
    }

    else
    {
      v90 = 0;
    }

    v99 = v90;
    if (v75 == 4)
    {
      v91 = 1;
    }

    else
    {
      v91 = 2;
    }

    v92 = *(v105 + v91) % v90;
    v79 = v92 == 0;
    if (v92)
    {
      v102 = 257;
      mlir::Operation::emitOpError(&KernelZeroPointAttr, v104, &v100);
      if (KernelZeroPointAttr)
      {
        mlir::Diagnostic::append<char const(&)[22]>(v110, "channel ");
      }

      mlir::InFlightDiagnostic::operator<<<long long &>(&KernelZeroPointAttr, v105 + v91);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v93, " must be a multiple of interleave ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v94, &v99);
      v96 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v95);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&KernelZeroPointAttr);
      result = v96;
    }
  }

  else
  {
    v102 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v104, &v100);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "Interleave can only be applied on 4D or 5D tensor");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v76);
    if (KernelZeroPointAttr)
    {
      v77 = result;
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v77;
    }

    if (v118 == 1)
    {
      v78 = result;
      mlir::Diagnostic::~Diagnostic(v110);
      result = v78;
    }

    v79 = 0;
  }

  if (v105 != v107)
  {
    v97 = result;
    free(v105);
    result = v97;
  }

  if (v79)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::placement::RegionCall::getCallee(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4 - 16), **(*(*this + 6) + 96));
  AttrDictionary = mlir::SymbolRefAttr::getRootReference(&v6);
  return mlir::StringAttr::getValue(&AttrDictionary);
}

uint64_t mlir::placement::RegionCall::getRegionType(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 8)) + 8);
}

unint64_t mlir::placement::RegionCall::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  mlir::OperationState::addOperands(a2, a7, a8);
  mlir::NamedAttribute::NamedAttribute(&v17, **(*(a2 + 8) + 96), a5);
  mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  mlir::NamedAttribute::NamedAttribute(&v17, *(*(*(a2 + 8) + 96) + 8), a6);
  result = mlir::NamedAttrList::push_back(a2 + 112, v17, v18);
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v15);
      *(v16 + 8 * v15++) = result;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  return result;
}

uint64_t mlir::placement::RegionCall::verifyInvariantsImpl(mlir::Operation **this)
{
  v56 = *MEMORY[0x277D85DE8];
  v47[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v47);
  if (!v3)
  {
LABEL_5:
    *&v44 = "requires attribute 'callee'";
    v46 = 259;
    mlir::OpState::emitOpError(this, &v44, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return v6;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v7 = __p;
    if (__p)
    {
      v8 = v53;
      v9 = __p;
      if (v53 != __p)
      {
        do
        {
          v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
        }

        while (v8 != v7);
        v9 = __p;
      }

      v53 = v7;
      operator delete(v9);
    }

    v10 = v50;
    if (v50)
    {
      v11 = v51;
      v12 = v50;
      if (v51 != v50)
      {
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
LABEL_41:
        v12 = v50;
      }

LABEL_42:
      v51 = v10;
      operator delete(v12);
    }

LABEL_43:
    if (v48 != v49)
    {
      free(v48);
    }

    return v6;
  }

  v4 = Value;
  v5 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  if (!v5)
  {
LABEL_25:
    *&v44 = "requires attribute 'region_type'";
    v46 = 259;
    mlir::OpState::emitOpError(this, &v44, v47);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v47);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 != 1)
    {
      return v6;
    }

    if (v54 != &v55)
    {
      free(v54);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v53;
      v18 = __p;
      if (v53 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v53 = v16;
      operator delete(v18);
    }

    v10 = v50;
    if (v50)
    {
      v19 = v51;
      v12 = v50;
      if (v51 != v50)
      {
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
        goto LABEL_41;
      }

      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v15 = *(v4 + 1);
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    v4 = (v4 + 16);
    v5 -= 16;
    if (!v5)
    {
      goto LABEL_25;
    }
  }

  v22 = *(v4 + 1);
  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v15, "callee", 6) & 1) == 0)
  {
    return 0;
  }

  v23 = *this;
  if (v22 && *(*v22 + 136) != &mlir::detail::TypeIDResolver<mlir::placement::RegionTypeAttr,void>::id)
  {
    v46 = 257;
    mlir::Operation::emitOpError(v47, v23, &v44);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v47, "attribute '");
    if (*v24)
    {
      v46 = 261;
      *&v44 = "region_type";
      *(&v44 + 1) = 11;
      v25 = v24;
      mlir::Diagnostic::operator<<((v24 + 1), &v44);
      v24 = v25;
      if (*v25)
      {
        v26 = v25[3];
        LODWORD(v44) = 3;
        *(&v44 + 1) = "' failed to satisfy constraint: Available region types";
        v45 = 54;
        v27 = *(v25 + 8);
        if (v27 >= *(v25 + 9))
        {
          if (v26 > &v44 || v26 + 24 * v27 <= &v44)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v28 = v26 + 24 * *(v25 + 8);
        v29 = v44;
        *(v28 + 16) = v45;
        *v28 = v29;
        ++*(v25 + 8);
      }
    }

    v30 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v24);
    if (v47[0])
    {
      mlir::InFlightDiagnostic::report(v47);
    }

    if (v55 == 1)
    {
      if (v54 != &v55)
      {
        free(v54);
      }

      v31 = __p;
      if (__p)
      {
        v32 = v53;
        v33 = __p;
        if (v53 != __p)
        {
          do
          {
            v32 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v32 - 1);
          }

          while (v32 != v31);
          v33 = __p;
        }

        v53 = v31;
        operator delete(v33);
      }

      v34 = v50;
      if (v50)
      {
        v35 = v51;
        v36 = v50;
        if (v51 != v50)
        {
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
          v36 = v50;
        }

        v51 = v34;
        operator delete(v36);
      }

      if (v48 != v49)
      {
        free(v48);
      }
    }

    if (!v30)
    {
      return 0;
    }

    v23 = *this;
  }

  if ((*(v23 + 46) & 0x80) != 0)
  {
    v39 = *(v23 + 17);
    if (v39)
    {
      v40 = 0;
      v41 = *(v23 + 9) + 24;
      while (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps6(*this, (*(*v41 + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, v40))
      {
        ++v40;
        v41 += 32;
        if (v39 == v40)
        {
          v42 = *this;
          goto LABEL_83;
        }
      }

      return 0;
    }
  }

  v42 = v23;
LABEL_83:
  mlir::placement::RegionCall::verifyInvariantsImpl(this, v42, v47);
  return LOBYTE(v47[0]);
}

uint64_t mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(mlir::Operation *a1, uint64_t a2, void **a3, void **a4)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return 1;
  }

  v6 = *(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? a2 : 0;
  v24[0] = v6;
  if (v6)
  {
    v7 = a1;
    mlir::SymbolRefAttr::getNestedReferences(v24);
    a1 = v7;
    if (!v8)
    {
      return 1;
    }
  }

  v23 = 257;
  mlir::Operation::emitOpError(v24, a1, v22);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v24, "attribute '");
  if (*v9)
  {
    v23 = 261;
    v22[0] = a3;
    v22[1] = a4;
    v10 = v9;
    mlir::Diagnostic::operator<<((v9 + 1), v22);
    v9 = v10;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v9, "' failed to satisfy constraint: flat symbol reference attribute");
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v11);
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

    v13 = __p;
    if (__p)
    {
      v14 = v30;
      v15 = __p;
      if (v30 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v30 = v13;
      operator delete(v15);
    }

    v16 = v27;
    if (v27)
    {
      v17 = v28;
      v18 = v27;
      if (v28 != v27)
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
        v18 = v27;
      }

      v28 = v16;
      operator delete(v18);
    }

    if (v25 != &v26)
    {
      free(v25);
    }
  }

  return v12;
}

uint64_t mlir::placement::ReplacedOps::getReplacedBy(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((Value + 16), (v3 + 16 * v4), *(*(*(*this + 6) + 96) + 16));
  AttrDictionary = mlir::SymbolRefAttr::getRootReference(&v6);
  return mlir::StringAttr::getValue(&AttrDictionary);
}

BOOL mlir::placement::ReplacedOps::verifyInvariantsImpl(mlir::Operation **this)
{
  v80 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v3)
  {
LABEL_7:
    v66[0] = "requires attribute 'function_type'";
    v67 = 259;
    mlir::OpState::emitOpError(this, v66, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v79 != 1)
    {
      return v7;
    }

    if (v78 != &v79)
    {
      free(v78);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v77;
      v10 = __p;
      if (v77 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v77 = v8;
      operator delete(v10);
    }

    v11 = v74;
    if (v74)
    {
      v12 = v75;
      v13 = v74;
      if (v75 != v74)
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
LABEL_43:
        v13 = v74;
      }

LABEL_44:
      v75 = v11;
      operator delete(v13);
    }

LABEL_45:
    if (v70 != v73)
    {
      free(v70);
    }

    return v7;
  }

  v4 = Value;
  v5 = 0;
  v6 = 16 * v3;
  while (mlir::NamedAttribute::getName(v4) != *(*(*(*this + 6) + 96) + 8))
  {
    if (mlir::NamedAttribute::getName(v4) == **(*(*this + 6) + 96))
    {
      v5 = *(v4 + 1);
    }

    v4 = (v4 + 16);
    v6 -= 16;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
LABEL_27:
    v66[0] = "requires attribute 'replaced_by'";
    v67 = 259;
    mlir::OpState::emitOpError(this, v66, &AttrDictionary);
    v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v79 != 1)
    {
      return v7;
    }

    if (v78 != &v79)
    {
      free(v78);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v77;
      v23 = __p;
      if (v77 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v77 = v21;
      operator delete(v23);
    }

    v11 = v74;
    if (v74)
    {
      v24 = v75;
      v13 = v74;
      if (v75 != v74)
      {
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

        while (v24 != v11);
        goto LABEL_43;
      }

      goto LABEL_44;
    }

    goto LABEL_45;
  }

  v16 = 0;
  v17 = *(v4 + 1);
  while (1)
  {
    v18 = (v4 + v16);
    Name = mlir::NamedAttribute::getName((v4 + v16));
    v20 = *this;
    if (Name == *(*(*(*this + 6) + 96) + 16))
    {
      break;
    }

    v16 += 16;
    if (v6 == v16)
    {
      goto LABEL_27;
    }
  }

  v27 = *(v18 + 1);
  v28 = 0;
  for (i = v6 - v16; i; i -= 16)
  {
    v41 = mlir::NamedAttribute::getName(v18);
    v20 = *this;
    if (v41 == *(*(*(*this + 6) + 96) + 24))
    {
      v28 = *(v18 + 1);
    }

    v18 = (v18 + 16);
  }

  if ((mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(v20, v27, "replaced_by", 0xB) & 1) == 0)
  {
    return 0;
  }

  if (v17)
  {
    v30 = *this;
    if (*(*v17 + 17) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id || (AttrDictionary = v17, *(*mlir::TypeAttr::getValue(&AttrDictionary) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id) || (v66[0] = v17, *(*mlir::TypeAttr::getValue(v66) + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id))
    {
      v67 = 257;
      mlir::Operation::emitOpError(&AttrDictionary, v30, v66);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "attribute '");
      if (*v31)
      {
        v67 = 261;
        v66[0] = "function_type";
        v66[1] = 13;
        v32 = v31;
        mlir::Diagnostic::operator<<((v31 + 1), v66);
        v31 = v32;
      }

      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v31, "' failed to satisfy constraint: type attribute of function type");
      v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
      if (AttrDictionary)
      {
        mlir::InFlightDiagnostic::report(&AttrDictionary);
      }

      if (v79 == 1)
      {
        if (v78 != &v79)
        {
          free(v78);
        }

        v35 = __p;
        if (__p)
        {
          v36 = v77;
          v37 = __p;
          if (v77 != __p)
          {
            do
            {
              v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
            }

            while (v36 != v35);
            v37 = __p;
          }

          v77 = v35;
          operator delete(v37);
        }

        v38 = v74;
        if (v74)
        {
          v39 = v75;
          v40 = v74;
          if (v75 != v74)
          {
            do
            {
              v43 = *--v39;
              v42 = v43;
              *v39 = 0;
              if (v43)
              {
                MEMORY[0x259C63150](v42, 0x1000C8077774924);
              }
            }

            while (v39 != v38);
            v40 = v74;
          }

          v75 = v38;
          operator delete(v40);
        }

        if (v70 != v73)
        {
          free(v70);
        }
      }

      if (!v34)
      {
        return 0;
      }
    }
  }

  if ((mlir::anec::__mlir_ods_local_attr_constraint_ANECOps3(*this, v5, "arg_attrs", 9) & 1) == 0 || (mlir::anec::__mlir_ods_local_attr_constraint_ANECOps3(*this, v28, "res_attrs", 9) & 1) == 0)
  {
    return 0;
  }

  v44 = *this;
  v45 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v46 = *(v45 + 8);
  if (v46 != v45 && *(v46 + 8) == v45)
  {
    return 1;
  }

  v66[0] = "region #";
  v67 = 259;
  mlir::Operation::emitOpError(&AttrDictionary, v44, v66);
  if (AttrDictionary)
  {
    LODWORD(v63) = 5;
    *(&v63 + 1) = 0;
    if (v71 >= v72)
    {
      if (v70 > &v63 || v70 + 24 * v71 <= &v63)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v47 = v70 + 24 * v71;
    v48 = v63;
    *(v47 + 2) = v64;
    *v47 = v48;
    ++v71;
    v49 = AttrDictionary == 0;
  }

  else
  {
    v49 = 1;
  }

  v62 = 1283;
  v61[0] = " ('";
  v61[2] = "body";
  v61[3] = 4;
  *&v63 = v61;
  v64 = "') ";
  v65 = 770;
  if (!v49)
  {
    mlir::Diagnostic::operator<<(&v69, &v63);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "failed to verify constraint: region with 1 blocks");
  v51 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v50);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v79 == 1)
  {
    if (v78 != &v79)
    {
      free(v78);
    }

    v52 = __p;
    if (__p)
    {
      v53 = v77;
      v54 = __p;
      if (v77 != __p)
      {
        do
        {
          v53 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v53 - 1);
        }

        while (v53 != v52);
        v54 = __p;
      }

      v77 = v52;
      operator delete(v54);
    }

    v55 = v74;
    if (v74)
    {
      v56 = v75;
      v57 = v74;
      if (v75 != v74)
      {
        do
        {
          v59 = *--v56;
          v58 = v59;
          *v56 = 0;
          if (v59)
          {
            MEMORY[0x259C63150](v58, 0x1000C8077774924);
          }
        }

        while (v56 != v55);
        v57 = v74;
      }

      v75 = v55;
      operator delete(v57);
    }

    if (v70 != v73)
    {
      free(v70);
    }
  }

  return v51;
}

uint64_t mlir::placement::ReplacedOpsLiveOuts::parse(mlir::placement::ReplacedOpsLiveOuts *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v11[16] = *MEMORY[0x277D85DE8];
  v10[0] = v11;
  v10[1] = 0x400000000;
  v8[0] = &v9;
  v8[1] = 0x100000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if ((*(*this + 720))(this, v10, 0, 1, 0xFFFFFFFFLL) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v8))
  {
    v6 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v10, v8, v5, a2 + 16) & 1;
  }

  else
  {
    v6 = 0;
  }

  if (v8[0] != &v9)
  {
    free(v8[0]);
  }

  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v6;
}

uint64_t mlir::placement::StartTimer::getReplacedOpsRef(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  v6 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  AttrDictionary = mlir::SymbolRefAttr::getRootReference(&v6);
  return mlir::StringAttr::getValue(&AttrDictionary);
}

BOOL mlir::placement::StartTimer::verifyInvariantsImpl(mlir::Operation **this)
{
  v29 = *MEMORY[0x277D85DE8];
  v20[0] = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(v20);
  if (v3)
  {
    v4 = Value;
    v5 = 16 * v3;
    while (mlir::NamedAttribute::getName(v4) != **(*(*this + 6) + 96))
    {
      v4 += 2;
      v5 -= 16;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (mlir::placement::__mlir_ods_local_attr_constraint_PlacementOps4(*this, v4[1], "replaced_ops_ref", 0x10))
    {
      if (*(*this + 9))
      {
        v15 = *this - 16;
      }

      else
      {
        v15 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v15, 0);
      return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
LABEL_5:
    v18 = "requires attribute 'replaced_ops_ref'";
    v19 = 259;
    mlir::OpState::emitOpError(this, &v18, v20);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v20);
    if (v20[0])
    {
      mlir::InFlightDiagnostic::report(v20);
    }

    if (v28 == 1)
    {
      if (v27 != &v28)
      {
        free(v27);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v26;
        v9 = __p;
        if (v26 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v26 = v7;
        operator delete(v9);
      }

      v10 = v23;
      if (v23)
      {
        v11 = v24;
        v12 = v23;
        if (v24 != v23)
        {
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
          v12 = v23;
        }

        v24 = v10;
        operator delete(v12);
      }

      if (v21 != &v22)
      {
        free(v21);
      }
    }
  }

  return v6;
}

uint64_t mlir::placement::__mlir_ods_local_type_constraint_PlacementOps7(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::placement::TimerHandleType,void>::id)
  {
    return 1;
  }

  v29 = 261;
  v28[0] = a3;
  v28[1] = a4;
  mlir::Operation::emitOpError(v32, a1, v28);
  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, " #");
  if (*v7)
  {
    v8 = *(v7 + 24);
    LODWORD(v30) = 5;
    *(&v30 + 1) = a5;
    v9 = *(v7 + 32);
    if (v9 >= *(v7 + 36))
    {
      if (v8 > &v30 || v8 + 24 * v9 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v8 + 24 * *(v7 + 32);
    v11 = v30;
    *(v10 + 16) = v31;
    *v10 = v11;
    ++*(v7 + 32);
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v7, " must be , but got ");
  if (*v12)
  {
    v13 = v12;
    mlir::DiagnosticArgument::DiagnosticArgument(&v30, a2);
    v12 = v13;
    v14 = v13[3];
    v15 = *(v13 + 8);
    if (v15 >= *(v13 + 9))
    {
      if (v14 > &v30 || v14 + 24 * v15 <= &v30)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v16 = v14 + 24 * *(v13 + 8);
    v17 = v30;
    *(v16 + 16) = v31;
    *v16 = v17;
    ++*(v13 + 8);
  }

  v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v12);
  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v19 = __p;
    if (__p)
    {
      v20 = v38;
      v21 = __p;
      if (v38 != __p)
      {
        do
        {
          v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
        }

        while (v20 != v19);
        v21 = __p;
      }

      v38 = v19;
      operator delete(v21);
    }

    v22 = v35;
    if (v35)
    {
      v23 = v36;
      v24 = v35;
      if (v36 != v35)
      {
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
        v24 = v35;
      }

      v36 = v22;
      operator delete(v24);
    }

    if (v33 != &v34)
    {
      free(v33);
    }
  }

  return v18;
}

uint64_t mlir::placement::TensorToMemrefAdaptor::verify(uint64_t *a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v40 = *a1;
  v4 = mlir::DictionaryAttr::begin(&v40);
  if (v4 == mlir::DictionaryAttr::end(&v40))
  {
    v5 = 0;
    v6 = 0;
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

    while (v4 != mlir::DictionaryAttr::end(&v40));
    if (v7)
    {
      if (!mlir::DenseIntElementsAttr::classof(v7))
      {
        goto LABEL_16;
      }

      v8 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*v7 + 8);
      v35[0] = v7;
      v35[1] = v8;
      Type = mlir::ElementsAttr::getType(v35);
      v10 = Type;
      if (Type)
      {
        Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
      }

      v41[0] = v10;
      v41[1] = Type;
      mlir::ShapedType::getShape(v41);
      if (v11 != 1 || (v37 = v7, v38[0] = mlir::DenseElementsAttr::getType(&v37), v38[1] = v12, ElementType = mlir::ShapedType::getElementType(v38), !mlir::Type::isUnsignedInteger(&ElementType, 64)))
      {
LABEL_16:
        v35[0] = "'placement.tensor_to_memref' op attribute 'shape' failed to satisfy constraint: ui64 elements attribute of rank 1";
        v36 = 259;
        mlir::emitError(a2, v35, v41);
        v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

          v14 = __p;
          if (__p)
          {
            v15 = v47;
            v16 = __p;
            if (v47 != __p)
            {
              do
              {
                v15 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v15 - 1);
              }

              while (v15 != v14);
              v16 = __p;
            }

            v47 = v14;
            operator delete(v16);
          }

          v17 = v44;
          if (!v44)
          {
            goto LABEL_74;
          }

          v18 = v45;
          v19 = v44;
          if (v45 == v44)
          {
LABEL_73:
            v45 = v17;
            operator delete(v19);
LABEL_74:
            if (v42 != &v43)
            {
              free(v42);
            }

            return v13;
          }

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
LABEL_72:
          v19 = v44;
          goto LABEL_73;
        }

        return v13;
      }
    }
  }

  if (!v6)
  {
LABEL_52:
    if (!v5)
    {
      return 1;
    }

    if (*(*v5 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v35[0] = v5;
      v41[0] = mlir::IntegerAttr::getType(v35);
      if (mlir::Type::isUnsignedInteger(v41, 32))
      {
        return 1;
      }
    }

    v35[0] = "'placement.tensor_to_memref' op attribute 'interleave' failed to satisfy constraint: 32-bit unsigned integer attribute";
    v36 = 259;
    mlir::emitError(a2, v35, v41);
    v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

      v28 = __p;
      if (__p)
      {
        v29 = v47;
        v30 = __p;
        if (v47 != __p)
        {
          do
          {
            v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
          }

          while (v29 != v28);
          v30 = __p;
        }

        v47 = v28;
        operator delete(v30);
      }

      v17 = v44;
      if (!v44)
      {
        goto LABEL_74;
      }

      v31 = v45;
      v19 = v44;
      if (v45 == v44)
      {
        goto LABEL_73;
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

      while (v31 != v17);
      goto LABEL_72;
    }

    return v13;
  }

  if (*(*v6 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    v41[0] = v6;
    mlir::TypeAttr::getValue(v41);
    goto LABEL_52;
  }

  v35[0] = "'placement.tensor_to_memref' op attribute 'resultElementType' failed to satisfy constraint: any type attribute";
  v36 = 259;
  mlir::emitError(a2, v35, v41);
  v13 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v41);
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

    v22 = __p;
    if (__p)
    {
      v23 = v47;
      v24 = __p;
      if (v47 != __p)
      {
        do
        {
          v23 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v23 - 1);
        }

        while (v23 != v22);
        v24 = __p;
      }

      v47 = v22;
      operator delete(v24);
    }

    v17 = v44;
    if (!v44)
    {
      goto LABEL_74;
    }

    v25 = v45;
    v19 = v44;
    if (v45 == v44)
    {
      goto LABEL_73;
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

    while (v25 != v17);
    goto LABEL_72;
  }

  return v13;
}

uint64_t mlir::placement::TensorToMemref::inferReturnTypes(mlir::UnknownLoc *this, mlir::MLIRContext *a2, int a3, void *a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v67 = *MEMORY[0x277D85DE8];
  v60 = a6;
  LOBYTE(v61) = 0;
  v62 = 0;
  v63 = a9;
  v64 = a10;
  if (a6)
  {
    Context = mlir::Attribute::getContext(&v60);
    if (v62 == 1)
    {
      v62 = 0;
    }

    mlir::OperationName::OperationName(&v61, "placement.tensor_to_memref", 26, Context);
    v62 = 1;
  }

  v65 = a4;
  v66 = a5;
  if (a5)
  {
    v15 = mlir::UnknownLoc::get(this, a2);
    if (mlir::placement::TensorToMemrefAdaptor::verify(&v60, v15))
    {
      v57 = v65;
      v58 = 0;
      v16 = (*(mlir::ValueRange::dereference_iterator(&v57, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8))
      {
        v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
        v55 = v16;
        v56 = v17;
        if (v16)
        {
          ElementType = mlir::ShapedType::getElementType(&v55);
          Shape = mlir::ShapedType::getShape(&v55);
          isSplat = v19;
          v57 = v59;
          v58 = 0x500000000;
          if (((8 * v19) >> 3) >= 6)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v26 = 0;
          v27 = 8 * v19;
          if (v19)
          {
            memcpy(v57, Shape, v27);
            v26 = v58;
          }

          LODWORD(v58) = v26 + (v27 >> 3);
          v28 = mlir::DictionaryAttr::begin(&v60);
          v29 = mlir::DictionaryAttr::end(&v60);
          v30 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, v29, *(*(v61 + 96) + 8));
          if (v30)
          {
            v31 = *(*v30 + 136);
            v32 = v31 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id;
            v33 = v31 == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id ? v30 : 0;
            v53 = v33;
            if (v32)
            {
              ElementType = mlir::TypeAttr::getValue(&v53);
            }
          }

          v34 = mlir::DictionaryAttr::begin(&v60);
          v35 = mlir::DictionaryAttr::end(&v60);
          v36 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v34, v35, *(*(v61 + 96) + 16));
          if (v36)
          {
            v37 = v36;
            if (mlir::DenseIntElementsAttr::classof(v36))
            {
              v53 = v37;
              v54 = 1;
              if (mlir::DenseElementsAttr::isValidIntOrFloat(&v53, 8, 1, 0))
              {
                RawData = mlir::DenseElementsAttr::getRawData(&v53);
                isSplat = mlir::DenseElementsAttr::isSplat(&v53);
                mlir::DenseElementsAttr::getType(&v53);
                mlir::DenseElementsAttr::getNumElements(&v53);
              }

              else
              {
                RawData = 0;
              }

              if (!mlir::DenseElementsAttr::isValidIntOrFloat(&v53, 8, 1, 0))
              {
                goto LABEL_34;
              }

              mlir::DenseElementsAttr::getRawData(&v53);
              mlir::DenseElementsAttr::isSplat(&v53);
              mlir::DenseElementsAttr::getType(&v53);
              NumElements = mlir::DenseElementsAttr::getNumElements(&v53);
              v27 = NumElements;
              LODWORD(v58) = 0;
              if (NumElements > HIDWORD(v58))
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v40 = 0;
              if (NumElements)
              {
LABEL_34:
                v41 = 0;
                v42 = v57;
                do
                {
                  if (isSplat)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = v41;
                  }

                  v42[v41++] = *(RawData + 8 * v43);
                }

                while (v27 != v41);
                v40 = v27;
              }

              LODWORD(v58) = v40;
            }
          }

          v44 = mlir::DictionaryAttr::begin(&v60);
          v45 = mlir::DictionaryAttr::end(&v60);
          v46 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v44, v45, **(v61 + 96));
          if (v46 && *(*v46 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v47 = v58;
            if ((v58 & 0xFFFFFFFE) != 4)
            {
              v51 = mlir::UnrankedTensorType::get(ElementType);
              goto LABEL_48;
            }

            Interleave = mlir::placement::detail::MemrefToTensorGenericAdaptorBase::getInterleave(&v60);
            v49 = 16;
            if (v47 == 4)
            {
              v49 = 8;
            }

            v50 = v57;
            *(v57 + v49) *= Interleave;
            v50[v47 - 1] /= Interleave;
          }

          v51 = mlir::MemRefType::get(v57, v58, ElementType, 0, 0, 0);
LABEL_48:
          v52 = *(a11 + 8);
          if (v52 >= *(a11 + 12))
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          *(*a11 + 8 * v52) = v51;
          ++*(a11 + 8);
          if (v57 != v59)
          {
            free(v57);
          }

          return 1;
        }
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }
    }
  }

  v22 = mlir::Float32Type::get(this, a2);
  v23 = mlir::UnrankedTensorType::get(v22);
  v24 = *(a11 + 8);
  if (v24 >= *(a11 + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*a11 + 8 * v24) = v23;
  ++*(a11 + 8);
  return 1;
}

uint64_t mlir::placement::TensorToMemref::verifyInvariantsImpl(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v3)
  {
    v4 = Value;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 16 * v3;
    do
    {
      Name = mlir::NamedAttribute::getName(v4);
      v10 = *this;
      if (Name == **(*(*this + 6) + 96))
      {
        v5 = *(v4 + 1);
      }

      else
      {
        v11 = mlir::NamedAttribute::getName(v4);
        v10 = *this;
        if (v11 == *(*(*(*this + 6) + 96) + 8))
        {
          v6 = *(v4 + 1);
        }

        else
        {
          v12 = mlir::NamedAttribute::getName(v4);
          v10 = *this;
          if (v12 == *(*(*(*this + 6) + 96) + 16))
          {
            v7 = *(v4 + 1);
          }
        }
      }

      v4 = (v4 + 16);
      v8 -= 16;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    v10 = *this;
  }

  if ((mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps6(v10, v7, "shape", 5) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps7(*this, v6, "resultElementType", 0x11) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_attr_constraint_MPSXOps9(*this, v5, "interleave", 0xA) & 1) == 0 || (mlir::mpsx::__mlir_ods_local_type_constraint_MPSXOps2(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 9))
  {
    v13 = *this - 16;
  }

  else
  {
    v13 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, 0);
  return mlir::placement::__mlir_ods_local_type_constraint_PlacementOps3(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::placement::TensorToMemref::verify(mlir::Operation **this)
{
  v124 = *MEMORY[0x277D85DE8];
  v109 = *this;
  v3 = (*(*(*(v109 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  if (v4)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v3 = 0;
  }

  v108[0] = v3;
  v108[1] = v4;
  if (!mlir::anec::Linear::getKernelZeroPointAttr(&v109) || !v108[0] || !mlir::ShapedType::hasRank(v108))
  {
    goto LABEL_32;
  }

  Shape = mlir::ShapedType::getShape(v108);
  if (v6)
  {
    v7 = 8 * v6;
    while (*Shape != 0x8000000000000000)
    {
      ++Shape;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_32;
  }

LABEL_11:
  v8 = mlir::ShapedType::getShape(v108);
  NumElements = mlir::ShapedType::getNumElements(v8, v9);
  KernelZeroPointAttr = mlir::anec::Linear::getKernelZeroPointAttr(&v109);
  LOBYTE(v115[0]) = KernelZeroPointAttr != 0;
  isValidIntOrFloat = mlir::DenseElementsAttr::isValidIntOrFloat(&KernelZeroPointAttr, 8, 1, 0);
  if ((isValidIntOrFloat & 1) == 0)
  {
    RawData = 0;
    if (isValidIntOrFloat <= 1)
    {
      goto LABEL_14;
    }

LABEL_16:
    v14 = 0;
    v13 = isValidIntOrFloat & 0xFFFFFFFFFFFFFFFELL;
    v15 = 1;
    v16 = 1;
    do
    {
      if (isSplat)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      if (isSplat)
      {
        v18 = 0;
      }

      else
      {
        v18 = v14 + 1;
      }

      v15 *= *(RawData + 8 * v17);
      v16 *= *(RawData + 8 * v18);
      v14 += 2;
    }

    while (v14 != v13);
    v2 = v16 * v15;
    goto LABEL_30;
  }

  RawData = mlir::DenseElementsAttr::getRawData(&KernelZeroPointAttr);
  isSplat = mlir::DenseElementsAttr::isSplat(&KernelZeroPointAttr);
  mlir::DenseElementsAttr::getType(&KernelZeroPointAttr);
  isValidIntOrFloat = mlir::DenseElementsAttr::getNumElements(&KernelZeroPointAttr);
  if (!isValidIntOrFloat)
  {
    v2 = 1;
    goto LABEL_31;
  }

  if (isValidIntOrFloat > 1)
  {
    goto LABEL_16;
  }

LABEL_14:
  v13 = 0;
  v2 = 1;
  do
  {
    if (isSplat)
    {
      v19 = 0;
    }

    else
    {
      v19 = v13;
    }

    v2 *= *(RawData + 8 * v19);
    ++v13;
LABEL_30:
    ;
  }

  while (isValidIntOrFloat != v13);
LABEL_31:
  if (NumElements != v2)
  {
    v113 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v109, &v110);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "Input shape ");
    if (*v32)
    {
      v33 = v32;
      mlir::DiagnosticArgument::DiagnosticArgument(&v105, v108[0]);
      v34 = v33[3];
      v35 = *(v33 + 8);
      if (v35 >= *(v33 + 9))
      {
        if (v34 > &v105 || v34 + 24 * v35 <= &v105)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v32 = v33;
      v36 = v34 + 24 * *(v33 + 8);
      v37 = v105;
      *(v36 + 16) = v106;
      *v36 = v37;
      ++*(v33 + 8);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v32, " (");
    if (*v38)
    {
      v39 = *(v38 + 24);
      LODWORD(v105) = 5;
      *(&v105 + 1) = NumElements;
      v40 = *(v38 + 32);
      if (v40 >= *(v38 + 36))
      {
        if (v39 > &v105 || v39 + 24 * v40 <= &v105)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v41 = v39 + 24 * *(v38 + 32);
      v42 = v105;
      *(v41 + 16) = v106;
      *v41 = v42;
      ++*(v38 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v38, " elements) is not compatible with shape attribute ");
    v44 = v43;
    v45 = mlir::anec::Linear::getKernelZeroPointAttr(&v109);
    if (*v44)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v105, v45);
      v46 = *(v44 + 24);
      v47 = *(v44 + 32);
      if (v47 >= *(v44 + 36))
      {
        if (v46 > &v105 || v46 + 24 * v47 <= &v105)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v48 = v46 + 24 * *(v44 + 32);
      v49 = v105;
      *(v48 + 16) = v106;
      *v48 = v49;
      ++*(v44 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v44, " (");
    if (*v50)
    {
      v51 = *(v50 + 24);
      LODWORD(v105) = 2;
      *(&v105 + 1) = v2;
      v52 = *(v50 + 32);
      if (v52 >= *(v50 + 36))
      {
        if (v51 > &v105 || v51 + 24 * v52 <= &v105)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v53 = v51 + 24 * *(v50 + 32);
      v54 = v105;
      *(v53 + 16) = v106;
      *v53 = v54;
      ++*(v50 + 32);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v50, " elements)");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v55);
    v57 = result;
    if (KernelZeroPointAttr)
    {
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v57;
    }

    if ((v123 & 1) == 0)
    {
      return result;
    }

    if (v122 != &v123)
    {
      free(v122);
      result = v57;
    }

    v58 = __p;
    if (__p)
    {
      v59 = v121;
      v60 = __p;
      if (v121 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v121 = v58;
      operator delete(v60);
      result = v57;
    }

    v61 = v118;
    if (v118)
    {
      v62 = v119;
      v63 = v118;
      if (v119 != v118)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            MEMORY[0x259C63150](v64, 0x1000C8077774924);
          }
        }

        while (v62 != v61);
        goto LABEL_99;
      }

LABEL_100:
      v119 = v61;
      operator delete(v63);
      result = v57;
    }

LABEL_101:
    if (v116 != &v117)
    {
      free(v116);
      return v57;
    }

    return result;
  }

LABEL_32:
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
  Value = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
  v21 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  v23 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v21 + 16 * v22), **(*(v109 + 6) + 96));
  if (!v23)
  {
    return 1;
  }

  v24 = *(*v23 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || v108[0] == 0;
  if (v24 || !mlir::ShapedType::hasRank(v108))
  {
    return 1;
  }

  v25 = mlir::ShapedType::getShape(v108);
  if (v26)
  {
    v27 = 8 * v26;
    while (*v25 != 0x8000000000000000)
    {
      ++v25;
      v27 -= 8;
      if (!v27)
      {
        goto LABEL_42;
      }
    }

    return 1;
  }

LABEL_42:
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
  v28 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
  v29 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
  v31 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v28, (v29 + 16 * v30), **(*(v109 + 6) + 96));
  if (v31)
  {
    if (*(*v31 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      v110 = v31;
      mlir::IntegerAttr::getValue(&v110, &KernelZeroPointAttr);
      if (v115[0] >= 0x41u)
      {
        p_KernelZeroPointAttr = KernelZeroPointAttr;
      }

      else
      {
        p_KernelZeroPointAttr = &KernelZeroPointAttr;
      }

      v31 = *p_KernelZeroPointAttr;
      if (v115[0] >= 0x41u && KernelZeroPointAttr)
      {
        v67 = *p_KernelZeroPointAttr;
        MEMORY[0x259C63150](KernelZeroPointAttr, 0x1000C8000313F17);
        v31 = v67;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  mlir::getANENextSupportedInterleaveValue(v31);
  if ((v68 & 1) == 0)
  {
    v113 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v109, &v110);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "interleave factor not supported");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    v57 = result;
    if (KernelZeroPointAttr)
    {
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v57;
    }

    if (v123 != 1)
    {
      return result;
    }

    if (v122 != &v123)
    {
      free(v122);
      result = v57;
    }

    v71 = __p;
    if (__p)
    {
      v72 = v121;
      v73 = __p;
      if (v121 != __p)
      {
        do
        {
          v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
        }

        while (v72 != v71);
        v73 = __p;
      }

      v121 = v71;
      operator delete(v73);
      result = v57;
    }

    v61 = v118;
    if (v118)
    {
      v74 = v119;
      v63 = v118;
      if (v119 != v118)
      {
        do
        {
          v76 = *--v74;
          v75 = v76;
          *v74 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v74 != v61);
LABEL_99:
        v63 = v118;
        goto LABEL_100;
      }

      goto LABEL_100;
    }

    goto LABEL_101;
  }

  v110 = v112;
  v111 = 0x400000000;
  if (mlir::anec::Linear::getKernelZeroPointAttr(&v109))
  {
    KernelZeroPointAttr = mlir::anec::Linear::getKernelZeroPointAttr(&v109);
    LOBYTE(v115[0]) = KernelZeroPointAttr != 0;
    if (mlir::DenseElementsAttr::isValidIntOrFloat(&KernelZeroPointAttr, 8, 1, 0))
    {
      v69 = mlir::DenseElementsAttr::getRawData(&KernelZeroPointAttr);
      isSplat = mlir::DenseElementsAttr::isSplat(&KernelZeroPointAttr);
      mlir::DenseElementsAttr::getType(&KernelZeroPointAttr);
      mlir::DenseElementsAttr::getNumElements(&KernelZeroPointAttr);
    }

    else
    {
      v69 = 0;
    }

    *&v105 = mlir::anec::Linear::getKernelZeroPointAttr(&v109);
    BYTE8(v105) = v105 != 0;
    if (!mlir::DenseElementsAttr::isValidIntOrFloat(&v105, 8, 1, 0))
    {
      goto LABEL_114;
    }

    mlir::DenseElementsAttr::getRawData(&v105);
    mlir::DenseElementsAttr::isSplat(&v105);
    mlir::DenseElementsAttr::getType(&v105);
    v83 = mlir::DenseElementsAttr::getNumElements(&v105);
    v2 = v83;
    LODWORD(v111) = 0;
    if (v83 > HIDWORD(v111))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v82 = 0;
    if (v83)
    {
LABEL_114:
      v84 = 0;
      v85 = v110;
      do
      {
        if (isSplat)
        {
          v86 = 0;
        }

        else
        {
          v86 = v84;
        }

        v85[v84++] = *(v69 + 8 * v86);
      }

      while (v2 != v84);
      v82 = v2;
    }
  }

  else
  {
    v77 = mlir::ShapedType::getShape(v108);
    v78 = mlir::ShapedType::getShape(v108);
    v79 = 0;
    v81 = (v78 + 8 * v80);
    LODWORD(v111) = 0;
    if ((v81 - v77) >> 3 > HIDWORD(v111))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v81 != v77)
    {
      memcpy(v110, v77, v81 - v77);
      v79 = v111;
    }

    v82 = v79 + ((v81 - v77) >> 3);
  }

  LODWORD(v111) = v82;
  v87 = v82;
  if (v82 - 6 > 0xFFFFFFFFFFFFFFFDLL)
  {
    KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
    v92 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
    KernelZeroPointAttr = mlir::Operation::getAttrDictionary(v109);
    v93 = mlir::DictionaryAttr::getValue(&KernelZeroPointAttr);
    result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v92, (v93 + 16 * v94), **(*(v109 + 6) + 96));
    if (result && *(*result + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
    {
      *&v105 = result;
      mlir::IntegerAttr::getValue(&v105, &KernelZeroPointAttr);
      result = KernelZeroPointAttr;
      if (v115[0] >= 0x41u)
      {
        v103 = KernelZeroPointAttr;
      }

      else
      {
        v103 = &KernelZeroPointAttr;
      }

      v95 = *v103;
      if (v115[0] >= 0x41u && KernelZeroPointAttr)
      {
        result = MEMORY[0x259C63150]();
      }
    }

    else
    {
      v95 = 0;
    }

    v104 = v95;
    v96 = v87 - 1;
    v97 = *(v110 + v87 - 1) % v95;
    v91 = v97 == 0;
    if (v97)
    {
      v107 = 257;
      mlir::Operation::emitOpError(&KernelZeroPointAttr, v109, &v105);
      if (KernelZeroPointAttr)
      {
        mlir::Diagnostic::append<char const(&)[22]>(v115, "width ");
      }

      mlir::InFlightDiagnostic::operator<<<long long &>(&KernelZeroPointAttr, v110 + v96);
      mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(v98, " must be a multiple of interleave ");
      mlir::InFlightDiagnostic::operator<<<long long &>(v99, &v104);
      v101 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v100);
      mlir::InFlightDiagnostic::~InFlightDiagnostic(&KernelZeroPointAttr);
      result = v101;
    }
  }

  else
  {
    v107 = 257;
    mlir::Operation::emitOpError(&KernelZeroPointAttr, v109, &v105);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&KernelZeroPointAttr, "Interleave can only be applied on 4D or 5D tensor");
    result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v88);
    if (KernelZeroPointAttr)
    {
      v89 = result;
      mlir::InFlightDiagnostic::report(&KernelZeroPointAttr);
      result = v89;
    }

    if (v123 == 1)
    {
      v90 = result;
      mlir::Diagnostic::~Diagnostic(v115);
      result = v90;
    }

    v91 = 0;
  }

  if (v110 != v112)
  {
    v102 = result;
    free(v110);
    result = v102;
  }

  if (v91)
  {
    return 1;
  }

  return result;
}

uint64_t mlir::placement::anonymous namespace::isCompatibleMemrefTensorOpReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a2 && a4)
  {
    v7 = 0;
    v8 = a2 - 1;
    v9 = a4 - 1;
    while (1)
    {
      v10 = mlir::TypeRange::dereference_iterator(a1, v7);
      v11 = mlir::TypeRange::dereference_iterator(a3, v7);
      v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      if (v12)
      {
        v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
      }

      else
      {
        v10 = 0;
      }

      v22[0] = v10;
      v22[1] = v12;
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      if (v13)
      {
        v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
      }

      else
      {
        v11 = 0;
      }

      v21[0] = v11;
      v21[1] = v13;
      if (!v22[0])
      {
        break;
      }

      if (!v11)
      {
        break;
      }

      Shape = mlir::ShapedType::getShape(v22);
      v16 = v15;
      v17 = mlir::ShapedType::getShape(v21);
      if (v16 != v18 || memcmp(Shape, v17, 8 * v16))
      {
        break;
      }

      ElementType = mlir::ShapedType::getElementType(v22);
      v20 = ElementType == mlir::ShapedType::getElementType(v21);
      result = v20;
      if (v20 && v8 != v7)
      {
        v20 = v9 == v7++;
        if (!v20)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return result;
}

uint64_t mlir::placement::MemrefToTensor::fold(mlir::Operation **a1)
{
  AttrDictionary = *(*(*a1 + 9) + 24);
  result = mlir::Value::getDefiningOp(&AttrDictionary);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::placement::TensorToMemref,void>::id)
    {
      v3 = result;
      v4 = *(*(*(result + 72) + 24) + 8);
      v5 = *(*a1 + 9) ? *a1 - 16 : 0;
      if ((*(mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0) + 8) ^ v4) <= 7)
      {
        InterleaveAttr = mlir::placement::MemrefToTensor::getInterleaveAttr(a1);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
        AttrDictionary = mlir::Operation::getAttrDictionary(v3);
        v8 = mlir::DictionaryAttr::getValue(&AttrDictionary);
        v10 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v8 + 16 * v9), **(*(v3 + 6) + 96));
        if (v10)
        {
          if (*(*v10 + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id)
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          if (v11 == InterleaveAttr)
          {
LABEL_14:
            if (!mlir::placement::MemrefToTensor::getResultElementTypeAttr(a1))
            {
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v12 = mlir::DictionaryAttr::getValue(&AttrDictionary);
              AttrDictionary = mlir::Operation::getAttrDictionary(v3);
              v13 = mlir::DictionaryAttr::getValue(&AttrDictionary);
              v15 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v12, (v13 + 16 * v14), *(*(*(v3 + 6) + 96) + 8));
              if (!v15 || *(*v15 + 136) != &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
              {
                return *(*(v3 + 9) + 24) | 4;
              }
            }
          }
        }

        else if (!InterleaveAttr)
        {
          goto LABEL_14;
        }
      }
    }

    return 0;
  }

  return result;
}

void mlir::placement::ReplacedOps::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v5 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v5 + 16 * v6 - 16), *(*(*(*this + 6) + 96) + 8));
  mlir::TypeAttr::getValue(&AttrDictionary);
  v7 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  AttrDictionary = *(*(*(*this + 6) + 96) + 8);
  v9 = mlir::StringAttr::getValue(&AttrDictionary);
  v10 = *(*(*this + 6) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v7, InterfaceFor, 0, v9, v11, *v10, v10[3]);
}

BOOL mlir::placement::RegionCall::verifySymbolUses(mlir::placement::RegionCall *this, mlir::SymbolTableCollection *a2)
{
  v131 = *MEMORY[0x277D85DE8];
  v4 = *this;
  if (!*(*this + 47) || (InherentAttr = mlir::Operation::getInherentAttr(*this, "callee", 6), (v6 & 1) == 0))
  {
    InherentAttr = mlir::DictionaryAttr::get(v4 + 56, "callee", 6uLL);
  }

  if (!InherentAttr || (*(*InherentAttr + 136) != &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id ? (v7 = 0) : (v7 = InherentAttr), (AttrDictionary = v7) == 0))
  {
    v115 = 0;
    goto LABEL_56;
  }

  v8 = InherentAttr;
  mlir::SymbolRefAttr::getNestedReferences(&AttrDictionary);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  v115 = v10;
  if (!v10)
  {
LABEL_56:
    *&v116 = "requires a 'callee' symbol reference attribute";
    v118 = 259;
    mlir::OpState::emitOpError(this, &v116, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v130 != 1)
    {
      return v34;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v37 = __p;
    if (__p)
    {
      v38 = v128;
      v39 = __p;
      if (v128 != __p)
      {
        do
        {
          v38 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v38 - 1);
        }

        while (v38 != v37);
        v39 = __p;
      }

      v128 = v37;
      operator delete(v39);
    }

    v40 = v125;
    if (v125)
    {
      v41 = v126;
      v42 = v125;
      if (v126 != v125)
      {
        do
        {
          v44 = *--v41;
          v43 = v44;
          *v41 = 0;
          if (v44)
          {
            MEMORY[0x259C63150](v43, 0x1000C8077774924);
          }
        }

        while (v41 != v40);
        goto LABEL_169;
      }

      goto LABEL_170;
    }

    goto LABEL_171;
  }

  v11 = mlir::SymbolTableCollection::lookupNearestSymbolFrom(a2, *this, v10);
  if (!v11)
  {
    v114 = 257;
    mlir::OpState::emitOpError(this, &v112, &AttrDictionary);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "'");
    v46 = v45;
    *&v116 = mlir::SymbolRefAttr::getRootReference(&v115);
    Value = mlir::StringAttr::getValue(&v116);
    if (*v46)
    {
      v118 = 261;
      *&v116 = Value;
      *(&v116 + 1) = v48;
      mlir::Diagnostic::operator<<(v46 + 8, &v116);
      if (*v46)
      {
        v49 = *(v46 + 24);
        LODWORD(v116) = 3;
        *(&v116 + 1) = "' does not reference a valid function";
        v117 = 37;
        v50 = *(v46 + 32);
        if (v50 >= *(v46 + 36))
        {
          if (v49 > &v116 || v49 + 24 * v50 <= &v116)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v51 = v49 + 24 * *(v46 + 32);
        v52 = v116;
        *(v51 + 16) = v117;
        *v51 = v52;
        ++*(v46 + 32);
      }
    }

    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v46);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v130 != 1)
    {
      return v34;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v128;
      v55 = __p;
      if (v128 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v128 = v53;
      operator delete(v55);
    }

    v40 = v125;
    if (v125)
    {
      v56 = v126;
      v42 = v125;
      if (v126 != v125)
      {
        do
        {
          v58 = *--v56;
          v57 = v58;
          *v56 = 0;
          if (v58)
          {
            MEMORY[0x259C63150](v57, 0x1000C8077774924);
          }
        }

        while (v56 != v40);
        goto LABEL_169;
      }

      goto LABEL_170;
    }

    goto LABEL_171;
  }

  v12 = v11;
  v13 = *(*(v11 + 48) + 16);
  if (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id)
  {
    v14 = 0;
  }

  else
  {
    v14 = 2 * (v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id);
  }

  if (v13 == &mlir::detail::TypeIDResolver<mlir::anec::A12,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A13,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A14,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A15,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A16,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A17,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A18,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::anec::A11Legacy,void>::id || v13 == &mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id)
  {
    v23 = 1;
  }

  else
  {
    v23 = v14;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v24 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v25 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (*(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v24 + 16), (v25 + 16 * v26), *(*(*(*this + 48) + 96) + 8)) + 8) != v23)
  {
    v114 = 257;
    mlir::OpState::emitOpError(this, &v112, &AttrDictionary);
    if (AttrDictionary)
    {
      LODWORD(v116) = 3;
      *(&v116 + 1) = "failed: callee of type '";
      v117 = 24;
      if (v122 >= v123)
      {
        if (v121 > &v116 || v121 + 24 * v122 <= &v116)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v59 = v121 + 24 * v122;
      v60 = v116;
      *(v59 + 2) = v117;
      *v59 = v60;
      ++v122;
    }

    if (AttrDictionary)
    {
      v61 = (&off_27983AE98)[v23];
      v118 = 261;
      *&v116 = v61;
      *(&v116 + 1) = 3;
      mlir::Diagnostic::operator<<(v120, &v116);
      if (AttrDictionary)
      {
        LODWORD(v116) = 3;
        *(&v116 + 1) = "' does not match the call region type ('";
        v117 = 40;
        if (v122 >= v123)
        {
          if (v121 > &v116 || v121 + 24 * v122 <= &v116)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v62 = v121 + 24 * v122;
        v63 = v116;
        *(v62 + 2) = v117;
        *v62 = v63;
        ++v122;
      }
    }

    *&v116 = mlir::Operation::getAttrDictionary(*this);
    v64 = mlir::DictionaryAttr::getValue(&v116);
    *&v116 = mlir::Operation::getAttrDictionary(*this);
    v65 = mlir::DictionaryAttr::getValue(&v116);
    v67 = *(mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>((v64 + 16), (v65 + 16 * v66), *(*(*(*this + 48) + 96) + 8)) + 8);
    if (v67 > 2)
    {
      v69 = 0;
      v68 = "";
    }

    else
    {
      v68 = (&off_27983AE98)[v67];
      v69 = 3;
    }

    if (AttrDictionary)
    {
      v118 = 261;
      *&v116 = v68;
      *(&v116 + 1) = v69;
      mlir::Diagnostic::operator<<(v120, &v116);
    }

    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, "')");
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v70);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v130 != 1)
    {
      return v34;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v71 = __p;
    if (__p)
    {
      v72 = v128;
      v73 = __p;
      if (v128 != __p)
      {
        do
        {
          v72 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v72 - 1);
        }

        while (v72 != v71);
        v73 = __p;
      }

      v128 = v71;
      operator delete(v73);
    }

    v40 = v125;
    if (v125)
    {
      v74 = v126;
      v42 = v125;
      if (v126 != v125)
      {
        do
        {
          v76 = *--v74;
          v75 = v76;
          *v74 = 0;
          if (v76)
          {
            MEMORY[0x259C63150](v75, 0x1000C8077774924);
          }
        }

        while (v74 != v40);
        goto LABEL_169;
      }

LABEL_170:
      v126 = v40;
      operator delete(v42);
    }

LABEL_171:
    if (v121 != &v124)
    {
      free(v121);
    }

    return v34;
  }

  v111[0] = v12;
  v111[1] = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(v12);
  FunctionType = mlir::FunctionOpInterface::getFunctionType(v111);
  NumInputs = mlir::FunctionType::getNumInputs(&FunctionType);
  if ((*(*this + 46) & 0x80) != 0)
  {
    if (NumInputs == *(*this + 68))
    {
      goto LABEL_47;
    }

LABEL_153:
    *&v116 = "incorrect number of operands for callee";
    v118 = 259;
    mlir::OpState::emitOpError(this, &v116, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    if (AttrDictionary)
    {
      mlir::InFlightDiagnostic::report(&AttrDictionary);
    }

    if (v130 != 1)
    {
      return v34;
    }

    if (v129 != &v130)
    {
      free(v129);
    }

    v103 = __p;
    if (__p)
    {
      v104 = v128;
      v105 = __p;
      if (v128 != __p)
      {
        do
        {
          v104 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v104 - 1);
        }

        while (v104 != v103);
        v105 = __p;
      }

      v128 = v103;
      operator delete(v105);
    }

    v40 = v125;
    if (v125)
    {
      v106 = v126;
      v42 = v125;
      if (v126 != v125)
      {
        do
        {
          v108 = *--v106;
          v107 = v108;
          *v106 = 0;
          if (v108)
          {
            MEMORY[0x259C63150](v107, 0x1000C8077774924);
          }
        }

        while (v106 != v40);
LABEL_169:
        v42 = v125;
        goto LABEL_170;
      }

      goto LABEL_170;
    }

    goto LABEL_171;
  }

  if (NumInputs)
  {
    goto LABEL_153;
  }

LABEL_47:
  v28 = mlir::FunctionType::getNumInputs(&FunctionType);
  if (!v28)
  {
LABEL_51:
    if (mlir::FunctionType::getNumResults(&FunctionType) == *(*this + 36))
    {
      NumResults = mlir::FunctionType::getNumResults(&FunctionType);
      if (!NumResults)
      {
        return 1;
      }

      v34 = NumResults;
      v35 = *(*this - 8) & 0xFFFFFFFFFFFFFFF8;
      if (*mlir::FunctionType::getResults(&FunctionType) == v35)
      {
        if (v34)
        {
          return v34;
        }

        v95 = *(*this - 24) & 0xFFFFFFFFFFFFFFF8;
        if (*(mlir::FunctionType::getResults(&FunctionType) + 8) == v95)
        {
          if (v34 == 2)
          {
            return 1;
          }

          v96 = *(*this - 40) & 0xFFFFFFFFFFFFFFF8;
          if (*(mlir::FunctionType::getResults(&FunctionType) + 16) == v96)
          {
            if (v34 == 3)
            {
              return 1;
            }

            v97 = *(*this - 56) & 0xFFFFFFFFFFFFFFF8;
            if (*(mlir::FunctionType::getResults(&FunctionType) + 24) == v97)
            {
              if (v34 == 4)
              {
                return 1;
              }

              v98 = *(*this - 72) & 0xFFFFFFFFFFFFFFF8;
              if (*(mlir::FunctionType::getResults(&FunctionType) + 32) == v98)
              {
                if (v34 == 5)
                {
                  return 1;
                }

                v99 = *(*this - 88) & 0xFFFFFFFFFFFFFFF8;
                if (*(mlir::FunctionType::getResults(&FunctionType) + 40) == v99)
                {
                  v100 = v34 - 6;
                  if (v34 == 6)
                  {
                    return 1;
                  }

                  v101 = 0;
                  while (1)
                  {
                    v102 = *(*this - 24 * (v101 + 1) - 88) & 0xFFFFFFFFFFFFFFF8;
                    if (*(mlir::FunctionType::getResults(&FunctionType) + 8 * v101 + 48) != v102)
                    {
                      break;
                    }

                    ++v101;
                    v34 = 1;
                    if (v100 == v101)
                    {
                      return v34;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v36 = "result type mismatch";
    }

    else
    {
      v36 = "incorrect number of results for callee";
    }

    *&v116 = v36;
    v118 = 259;
    mlir::OpState::emitOpError(this, &v116, &AttrDictionary);
    v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&AttrDictionary);
    return v34;
  }

  v29 = 0;
  v30 = v28;
  v31 = 24;
  while (1)
  {
    v32 = *(*(*(*this + 72) + v31) + 8) & 0xFFFFFFFFFFFFFFF8;
    if (*(mlir::FunctionType::getInputs(&FunctionType) + 8 * v29) != v32)
    {
      break;
    }

    ++v29;
    v31 += 32;
    if (v30 == v29)
    {
      goto LABEL_51;
    }
  }

  *&v116 = "operand type mismatch: expected operand type ";
  v118 = 259;
  mlir::OpState::emitOpError(this, &v116, &AttrDictionary);
  Inputs = mlir::FunctionType::getInputs(&FunctionType);
  if (AttrDictionary)
  {
    mlir::DiagnosticArgument::DiagnosticArgument(&v112, *(Inputs + 8 * v29));
    if (v122 >= v123)
    {
      if (v121 > &v112 || v121 + 24 * v122 <= &v112)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v78 = v121 + 24 * v122;
    v79 = v112;
    *(v78 + 2) = v113;
    *v78 = v79;
    ++v122;
  }

  mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&AttrDictionary, ", but provided ");
  if (*v80)
  {
    v81 = *(*(*(*this + 72) + v31) + 8);
    v82 = v80;
    mlir::DiagnosticArgument::DiagnosticArgument(&v112, v81 & 0xFFFFFFFFFFFFFFF8);
    v83 = v82[3];
    v84 = *(v82 + 8);
    if (v84 >= *(v82 + 9))
    {
      if (v83 > &v112 || v83 + 24 * v84 <= &v112)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v80 = v82;
    v85 = v83 + 24 * *(v82 + 8);
    v86 = v112;
    *(v85 + 16) = v113;
    *v85 = v86;
    v87 = *(v82 + 8) + 1;
    *(v82 + 8) = v87;
    if (*v82)
    {
      LODWORD(v112) = 3;
      *(&v112 + 1) = " for operand number ";
      v113 = 20;
      v88 = v82[3];
      if (v87 >= *(v82 + 9))
      {
        if (v88 > &v112 || v88 + 24 * v87 <= &v112)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v89 = v88 + 24 * *(v82 + 8);
      v90 = v112;
      *(v89 + 16) = v113;
      *v89 = v90;
      v91 = *(v82 + 8) + 1;
      *(v82 + 8) = v91;
      if (*v82)
      {
        LODWORD(v112) = 5;
        *(&v112 + 1) = v29;
        v92 = v82[3];
        if (v91 >= *(v82 + 9))
        {
          if (v92 > &v112 || v92 + 24 * v91 <= &v112)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v93 = v92 + 24 * *(v82 + 8);
        v94 = v112;
        *(v93 + 16) = v113;
        *v93 = v94;
        ++*(v82 + 8);
      }
    }
  }

  v34 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v80);
  if (AttrDictionary)
  {
    mlir::InFlightDiagnostic::report(&AttrDictionary);
  }

  if (v130 == 1)
  {
    mlir::Diagnostic::~Diagnostic(v120);
  }

  return v34;
}