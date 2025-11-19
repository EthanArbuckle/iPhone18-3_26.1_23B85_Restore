void DYTraceEncode_CALayer_setAnchorPoint(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE00B00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "p@2d");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CALayer_setTransform(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFE00900000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x64646436314070;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  *(a2 + 100) = *(a1 + 56);
  *(a2 + 84) = v13;
  *(a2 + 68) = v12;
  *(a2 + 52) = v11;
  v14 = *(a1 + 72);
  v15 = *(a1 + 88);
  v16 = *(a1 + 104);
  *(a2 + 164) = *(a1 + 120);
  *(a2 + 148) = v16;
  *(a2 + 132) = v15;
  *(a2 + 116) = v14;
  *a2 = 180;
  *(a2 + 180) = *(a1 + 136);
  *a2 = 188;
  *(a2 + 188) = *(a1 + 144);
  v17 = 196;
  *a2 = 196;
  if (__src)
  {
    v18 = 8 * *__src;
    memcpy((a2 + 196), __src, v18 + 8);
    v19 = (v18 + 204);
    v17 = (v18 + 207) & 0xFFFFFFFC;
    bzero((a2 + v19), v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE40900000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@4dd@4dull");
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  v11 = *(a1 + 24);
  *(a2 + 56) = *(a1 + 8);
  *(a2 + 72) = v11;
  *a2 = 88;
  *(a2 + 88) = *(a1 + 40);
  *a2 = 96;
  v12 = *(a1 + 64);
  *(a2 + 96) = *(a1 + 48);
  *(a2 + 112) = v12;
  *a2 = 128;
  *(a2 + 128) = *(a1 + 80);
  *(a2 + 136) = *(a1 + 96);
  v13 = 144;
  *a2 = 144;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 144), __src, v14 + 8);
    v15 = (v14 + 152);
    v13 = (v14 + 155) & 0xFFFFFFF8;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_EnterStateGroup(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, int *a5)
{
  if (a5 && a3 <= 0x23)
  {
    v13 = *a5;
    v14 = 500;
    v15 = "36 <= length";
    v16 = 0u;
    v17 = 0u;
    GTError_addError(a5, &v13);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0xFFFFD00700000024;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0x7775534300000046;
  *(a2 + 39) = 7828855;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 8), a2);
  v9 = *a2;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  bzero(a2 + v9, v10 - v9);
  *a2 = v10;
  *(a2 + v10) = *(a1 + 16);
  v11 = *a2 + 8;
  *a2 = v11;
  *(a2 + v11) = *(a1 + 24);
  v12 = *a2 + 8;
  *a2 = v12;
  if (a5)
  {
    if (v12 > a3)
    {
      v13 = *a5;
      v14 = 500;
      v15 = "bytes->length <= length";
      v16 = 0u;
      v17 = 0u;
      GTError_addError(a5, &v13);
    }
  }
}

const char *AppendString(const char *result, int *a2)
{
  if (result)
  {
    v3 = result;
    v4 = strlen(result);
    v5 = v4 + 1;
    result = memcpy(a2 + *a2, v3, v4 + 1);
    v6 = *a2 + v5;
  }

  else
  {
    *(a2 + *a2) = 0xFFFFFFFFLL;
    v6 = *a2 + 8;
  }

  *a2 = v6;
  return result;
}

BOOL DYTraceEncode_ExitStateGroup(_BOOL8 result, void *a2, unint64_t a3, uint64_t a4, int *a5)
{
  v8 = result;
  if (a5 && a3 <= 0x23)
  {
    v9 = *a5;
    v10 = 500;
    v11 = "36 <= length";
    v12 = 0u;
    v13 = 0u;
    result = GTError_addError(a5, &v9);
  }

  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0x4300000046;
  *a2 = 0xFFFFD00800000028;
  a2[1] = 0;
  a2[5] = *v8;
  *a2 = 48;
  if (a5)
  {
    if (a3 <= 0x2F)
    {
      v9 = *a5;
      v10 = 500;
      v11 = "bytes->length <= length";
      v12 = 0u;
      v13 = 0u;
      return GTError_addError(a5, &v9);
    }
  }

  return result;
}

void DYTraceEncode_InternalData(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, int *a5)
{
  if (a5 && a3 <= 0x23)
  {
    v30 = *a5;
    v31 = 500;
    v32 = "36 <= length";
    v33 = 0u;
    v34 = 0u;
    GTError_addError(a5, &v30);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFD01000000024;
  a2[8] = 198;
  v9 = *(a1 + 8);
  switch(v9)
  {
    case 101:
      v22 = *(a1 + 40);
      if (v22)
      {
        *(a2 + 9) = 0x536C536C756943;
        v23 = 44;
      }

      else
      {
        strcpy(a2 + 36, "CiulSl");
        v23 = 43;
      }

      bzero(a2 + v23, 44 - v23);
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      *(a2 + 7) = *(a1 + 16);
      *a2 = 64;
      AppendString(*(a1 + 32), a2);
      v27 = *a2;
      v28 = (v27 + 3) & 0xFFFFFFFC;
      bzero(a2 + v27, v28 - v27);
      *a2 = v28;
      *(a2 + v28) = *(a1 + 24);
      v29 = *a2 + 8;
      *a2 = v29;
      if (v22)
      {
        AppendString(*(a1 + 40), a2);
        v29 = *a2;
      }

      a1 = (v29 + 3) & 0xFFFFFFFC;
      bzero(a2 + v29, a1 - v29);
      break;
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 112:
    case 113:
    case 114:
    case 115:
    case 121:
    case 122:
    case 123:
    case 124:
    case 130:
    case 131:
    case 133:
    case 134:
    case 136:
      goto LABEL_11;
    case 107:
    case 137:
      strcpy(a2 + 36, "Ciulul");
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      *(a2 + 7) = *(a1 + 16);
      *a2 = 64;
      *(a2 + 8) = *(a1 + 24);
      LODWORD(a1) = 72;
      break;
    case 108:
      strcpy(a2 + 36, "CitS");
      *(a2 + 41) = 0;
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      *(a2 + 7) = *(a1 + 16);
      *a2 = 64;
      goto LABEL_22;
    case 109:
    case 120:
      strcpy(a2 + 36, "CiSululb");
      *(a2 + 45) = 0;
      *(a2 + 47) = 0;
      *a2 = 48;
      *(a2 + 6) = *a1;
      *a2 = 56;
      a2[14] = *(a1 + 8);
      *a2 = 60;
      AppendString(*(a1 + 32), a2);
      v12 = *a2;
      v13 = (v12 + 3) & 0xFFFFFFFC;
      bzero(a2 + v12, v13 - v12);
      *a2 = v13;
      *(a2 + v13) = *(a1 + 16);
      v14 = *a2 + 8;
      *a2 = v14;
      *(a2 + v14) = *(a1 + 24);
      v15 = *a2 + 8;
      *a2 = v15;
      *(a2 + v15) = *(a1 + 40);
      v16 = *a2 + 1;
      a1 = (*a2 & 0xFFFFFFFC) + 4;
      v17 = a1 - v16;
      v18 = a2 + v16;
      goto LABEL_24;
    case 110:
      *(a2 + 9) = 0x696C756943;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      *(a2 + 7) = *(a1 + 16);
      *a2 = 64;
      a2[16] = *(a1 + 24);
      LODWORD(a1) = 68;
      break;
    case 111:
      v10 = 5597507;
      goto LABEL_6;
    case 116:
      *(a2 + 9) = 0x6C75556943;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      AppendString(*(a1 + 16), a2);
      v25 = *a2;
      v26 = (v25 + 3) & 0xFFFFFFFC;
      bzero(a2 + v25, v26 - v25);
      *a2 = v26;
      *(a2 + v26) = *(a1 + 24);
      LODWORD(a1) = *a2 + 8;
      break;
    case 117:
    case 127:
    case 128:
    case 129:
    case 132:
      v10 = 5466435;
LABEL_6:
      a2[9] = v10;
      *a2 = 40;
      *(a2 + 5) = *a1;
      *a2 = 48;
      a2[12] = *(a1 + 8);
      *a2 = 52;
      v11 = *(a1 + 16);
      goto LABEL_23;
    case 118:
      strcpy(a2 + 36, "Ciul");
      *(a2 + 41) = 0;
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      v21 = *(a1 + 16);
      goto LABEL_16;
    case 119:
      *(a2 + 9) = 0x53535369756943;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      a2[14] = *(a1 + 40);
      *a2 = 60;
      AppendString(*(a1 + 16), a2);
      AppendString(*(a1 + 24), a2);
      v11 = *(a1 + 32);
      goto LABEL_23;
    case 125:
      strcpy(a2 + 36, "Ciul");
      *(a2 + 41) = 0;
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      v21 = *(a1 + 24);
LABEL_16:
      *(a2 + 7) = v21;
      LODWORD(a1) = 64;
      break;
    case 126:
      strcpy(a2 + 36, "CiSS");
      *(a2 + 41) = 0;
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      AppendString(*(a1 + 16), a2);
      goto LABEL_22;
    case 135:
      strcpy(a2 + 36, "CiSS");
      *(a2 + 41) = 0;
      *(a2 + 43) = 0;
      *a2 = 44;
      *(a2 + 11) = *a1;
      *a2 = 52;
      a2[13] = *(a1 + 8);
      *a2 = 56;
      AppendString(*(a1 + 16), a2);
      v19 = *a2;
      v20 = (v19 + 3) & 0xFFFFFFFC;
      bzero(a2 + v19, v20 - v19);
      *a2 = v20;
LABEL_22:
      v11 = *(a1 + 24);
LABEL_23:
      AppendString(v11, a2);
      v24 = *a2;
      a1 = (v24 + 3) & 0xFFFFFFFC;
      v17 = a1 - v24;
      v18 = a2 + v24;
LABEL_24:
      bzero(v18, v17);
      break;
    default:
      if (v9 == 7)
      {
        strcpy(a2 + 36, "Ciui");
        *(a2 + 41) = 0;
        *(a2 + 43) = 0;
        *a2 = 44;
        *(a2 + 11) = *a1;
        *a2 = 52;
        a2[13] = *(a1 + 8);
        *a2 = 56;
        a2[14] = *(a1 + 16);
        LODWORD(a1) = 60;
      }

      else
      {
LABEL_11:
        a2[9] = 26947;
        *a2 = 40;
        *(a2 + 5) = *a1;
        *a2 = 48;
        a2[12] = *(a1 + 8);
        LODWORD(a1) = 52;
      }

      break;
  }

  *a2 = a1;
  if (a5)
  {
    if (a1 > a3)
    {
      v30 = *a5;
      v31 = 500;
      v32 = "bytes->length <= length";
      v33 = 0u;
      v34 = 0u;
      GTError_addError(a5, &v30);
    }
  }
}

void DYTraceEncode_MTLAccelerationStructure_allocatedSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 14;
  }

  else
  {
    v10 = 6;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFD82C00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLAccelerationStructure_restoreMTLAccelerationStructure_instance(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4, int *a5)
{
  if (a4)
  {
    v9 = 12;
  }

  else
  {
    v9 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFD83200000024;
  a2[8] = v9;
  strcpy(a2 + 36, "CU<b>ulU<b>ul");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  AppendString(*(a1 + 8), a2);
  v10 = *a2;
  v11 = (v10 + 3) & 0xFFFFFFFC;
  bzero(a2 + v10, v11 - v10);
  *a2 = v11;
  *(a2 + v11) = *(a1 + 16);
  *a2 += 8;
  AppendString(*(a1 + 24), a2);
  v12 = *a2;
  v13 = (v12 + 3) & 0xFFFFFFFC;
  bzero(a2 + v12, v13 - v12);
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 8;
  *a2 = v14;
  if (a5)
  {
    if (v14 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTLBuffer_allocatedSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 14;
  }

  else
  {
    v10 = 6;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFD81100000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLBuffer_newTextureWithDescriptor_offset_bytesPerRow(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC01000000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUulul");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = 116;
  v15 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v15 - (*a2 + 2));
  *a2 = v15;
  *(a2 + v15) = *(a1 + 8);
  v16 = *a2 + 8;
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy(a2 + v16, a4, v17);
    v18 = *a2 + v17;
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero(a2 + v18, v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTLBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC01100000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLCommandBuffer_indirectArgumentBufferData(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFD80B00000024;
  a2[8] = v10;
  v11 = *(a1 + 32);
  if (v11)
  {
    strcpy(a2 + 36, "CUUUU");
    v12 = 42;
  }

  else
  {
    strcpy(a2 + 36, "CUUU");
    v12 = 41;
  }

  bzero(a2 + v12, 44 - v12);
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 8), a2);
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  if (v11)
  {
    AppendString(*(a1 + 32), a2);
  }

  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  if (a4)
  {
    v15 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v15);
    v16 = *a2 + v15;
    v14 = (v16 + 3) & 0xFFFFFFFC;
    bzero(a2 + v16, v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTLCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32781;
  }

  else
  {
    v10 = 32773;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 6911043;
  *a2 = 0xFFFFCF0000000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 16);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 24);
  *(a2 + 60) = 116;
  *a2 = 64;
  *(a2 + 64) = *(a1 + 8);
  v11 = 72;
  *a2 = 72;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 72), __src, v12 + 8);
    v13 = (v12 + 80);
    v11 = (v12 + 83) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLIOCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32781;
  }

  else
  {
    v10 = 32773;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 6911043;
  *a2 = 0xFFFFCF0100000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 16);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 24);
  *(a2 + 60) = 116;
  *a2 = 64;
  *(a2 + 64) = *(a1 + 8);
  v11 = 72;
  *a2 = 72;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 72), __src, v12 + 8);
    v13 = (v12 + 80);
    v11 = (v12 + 83) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLComputePipelineState_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7828803;
  *a2 = 0xFFFFC18B00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLComputePipelineState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7828803;
  *a2 = 0xFFFFD81A00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLDevice_newArgumentEncoderWithArguments(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 11;
  }

  else
  {
    v10 = 3;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC15B00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *(a2 + 56) = 116;
  *a2 = 60;
  *(a2 + 60) = a1[1];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLDevice_newBufferWithLength_options(void *a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC04600000024;
  *(a2 + 32) = v10;
  v11 = a1[4];
  if (v11)
  {
    strcpy((a2 + 36), "Culult");
    v12 = 43;
  }

  else
  {
    strcpy((a2 + 36), "Culul");
    v12 = 42;
  }

  bzero((a2 + v12), 44 - v12);
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[2];
  *a2 = 60;
  *(a2 + 60) = a1[3];
  v13 = 68;
  *a2 = 68;
  if (v11)
  {
    *(a2 + 68) = a1[4];
    v13 = 76;
  }

  *(a2 + v13) = 116;
  v14 = (v13 + 5) & 0x58;
  bzero((a2 + (v13 | 2)), v14 - (v13 | 2));
  *a2 = v14;
  *(a2 + v14) = a1[1];
  v15 = (v14 + 8);
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy((a2 + v15), a4, v16);
    v17 = (*a2 + v16);
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero((a2 + v17), v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLDevice_newBufferWithBytes_length_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC04700000024;
  a2[8] = v10;
  v11 = *(a1 + 40);
  if (v11)
  {
    strcpy(a2 + 36, "CU<b>ulult");
    v12 = 47;
  }

  else
  {
    strcpy(a2 + 36, "CU<b>ulul");
    v12 = 46;
  }

  bzero(a2 + v12, 48 - v12);
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 32);
  v16 = *a2 + 8;
  *a2 = v16;
  if (v11)
  {
    *(a2 + v16) = *(a1 + 40);
    v16 = *a2 + 8;
    *a2 = v16;
  }

  *(a2 + v16) = 116;
  v17 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v17 - (*a2 + 2));
  *a2 = v17;
  *(a2 + v17) = *(a1 + 8);
  v18 = *a2 + 8;
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy(a2 + v18, a4, v19);
    v20 = *a2 + v19;
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero(a2 + v20, v18 - v20);
    *a2 = v18;
  }

  if (a5)
  {
    if (v18 > a3)
    {
      v21 = *a5;
      v22 = 500;
      v23 = "bytes->length <= length";
      v24 = 0u;
      v25 = 0u;
      GTError_addError(a5, &v21);
    }
  }
}

void DYTraceEncode_MTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC0B900000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 0;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = 116;
  v16 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v16 - (*a2 + 2));
  *a2 = v16;
  *(a2 + v16) = *(a1 + 8);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTLDevice_newComputePipelineStateWithFunction_options_reflection_error(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC05600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[2];
  *a2 = 60;
  *(a2 + 60) = a1[3];
  *(a2 + 68) = 0;
  *a2 = 76;
  *(a2 + 76) = a1[5];
  *(a2 + 84) = 116;
  *a2 = 88;
  *(a2 + 88) = a1[1];
  v11 = 96;
  *a2 = 96;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 96), __src, v12 + 8);
    v13 = (v12 + 104);
    v11 = (v12 + 107) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC11B00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>U<b>t");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC19F00000024;
  a2[8] = v10;
  a2[11] = 108;
  *(a2 + 9) = *"CU<b>ulul";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = 116;
  v15 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v15 - (*a2 + 2));
  *a2 = v15;
  *(a2 + v15) = *(a1 + 8);
  v16 = *a2 + 8;
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy(a2 + v16, a4, v17);
    v18 = *a2 + v17;
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero(a2 + v18, v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v22 = *a5;
    v23 = 500;
    v24 = "36 <= length";
    v25 = 0u;
    v26 = 0u;
    GTError_addError(a5, &v22);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC21900000024;
  a2[8] = v10;
  v11 = snprintf(a2 + 36, a3 - 36, "C@%llutU<b>t", *(a1 + 24)) + *a2;
  v12 = (v11 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v11 + 1), v12 - (v11 + 1));
  *a2 = v12;
  *(a2 + v12) = *a1;
  v13 = *a2 + 8;
  *a2 = v13;
  v14 = 8 * *(a1 + 24);
  memcpy(a2 + v13, *(a1 + 16), v14);
  *a2 += v14;
  AppendString(*(a1 + 32), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 40);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = 116;
  v18 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v18 - (*a2 + 2));
  *a2 = v18;
  *(a2 + v18) = *(a1 + 8);
  v19 = *a2 + 8;
  *a2 = v19;
  if (a4)
  {
    v20 = 8 * *a4 + 8;
    memcpy(a2 + v19, a4, v20);
    v21 = *a2 + v20;
    v19 = (v21 + 3) & 0xFFFFFFFC;
    bzero(a2 + v21, v19 - v21);
    *a2 = v19;
  }

  if (a5)
  {
    if (v19 > a3)
    {
      v22 = *a5;
      v23 = 500;
      v24 = "bytes->length <= length";
      v25 = 0u;
      v26 = 0u;
      GTError_addError(a5, &v22);
    }
  }
}

void DYTraceEncode_MTLDevice_newLibraryWithFile_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC04D00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLDevice_newLibraryWithSource_options_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v22 = *a5;
    v23 = 500;
    v24 = "36 <= length";
    v25 = 0u;
    v26 = 0u;
    GTError_addError(a5, &v22);
  }

  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *(a2 + 5) = 0;
  a2[7] = 0;
  a2[8] = v10;
  v11 = *(a1 + 24);
  v12 = 0x74553E623C5543;
  if (!v11)
  {
    v12 = 0x74743E623C5543;
  }

  *(a2 + 9) = v12;
  *a2 = 0xFFFFC04F0000002CLL;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  if (v11)
  {
    AppendString(*(a1 + 24), a2);
    v13 = *a2;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    bzero(a2 + v13, v14 - v13);
  }

  else
  {
    v15 = *a2;
    v16 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v16 - v15);
    *a2 = v16;
    *(a2 + v16) = 0;
    v14 = *a2 + 8;
  }

  *a2 = v14;
  *(a2 + v14) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = 116;
  v18 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v18 - (*a2 + 2));
  *a2 = v18;
  *(a2 + v18) = *(a1 + 8);
  v19 = *a2 + 8;
  *a2 = v19;
  if (a4)
  {
    v20 = 8 * *a4 + 8;
    memcpy(a2 + v19, a4, v20);
    v21 = *a2 + v20;
    v19 = (v21 + 3) & 0xFFFFFFFC;
    bzero(a2 + v21, v19 - v21);
    *a2 = v19;
  }

  if (a5)
  {
    if (v19 > a3)
    {
      v22 = *a5;
      v23 = 500;
      v24 = "bytes->length <= length";
      v25 = 0u;
      v26 = 0u;
      GTError_addError(a5, &v22);
    }
  }
}

void DYTraceEncode_MTLDevice_newLibraryWithSource_options_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v22 = *a5;
    v23 = 500;
    v24 = "36 <= length";
    v25 = 0u;
    v26 = 0u;
    GTError_addError(a5, &v22);
  }

  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  *(a2 + 5) = 0;
  a2[7] = 0;
  a2[8] = v10;
  v11 = *(a1 + 24);
  v12 = 0x74553E623C5543;
  if (!v11)
  {
    v12 = 0x74743E623C5543;
  }

  *(a2 + 9) = v12;
  *a2 = 0xFFFFC0500000002CLL;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  if (v11)
  {
    AppendString(*(a1 + 24), a2);
    v13 = *a2;
    v14 = (v13 + 3) & 0xFFFFFFFC;
    bzero(a2 + v13, v14 - v13);
  }

  else
  {
    v15 = *a2;
    v16 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v16 - v15);
    *a2 = v16;
    *(a2 + v16) = 0;
    v14 = *a2 + 8;
  }

  *a2 = v14;
  *(a2 + v14) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = 116;
  v18 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v18 - (*a2 + 2));
  *a2 = v18;
  *(a2 + v18) = *(a1 + 8);
  v19 = *a2 + 8;
  *a2 = v19;
  if (a4)
  {
    v20 = 8 * *a4 + 8;
    memcpy(a2 + v19, a4, v20);
    v21 = *a2 + v20;
    v19 = (v21 + 3) & 0xFFFFFFFC;
    bzero(a2 + v21, v19 - v21);
    *a2 = v19;
  }

  if (a5)
  {
    if (v19 > a3)
    {
      v22 = *a5;
      v23 = 500;
      v24 = "bytes->length <= length";
      v25 = 0u;
      v26 = 0u;
      GTError_addError(a5, &v22);
    }
  }
}

void DYTraceEncode_MTLDevice_newPipelineLibraryWithFilePath_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC13500000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC05200000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 0;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = 116;
  v16 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v16 - (*a2 + 2));
  *a2 = v16;
  *(a2 + v16) = *(a1 + 8);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC12600000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 0;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = 116;
  v16 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v16 - (*a2 + 2));
  *a2 = v16;
  *(a2 + v16) = *(a1 + 8);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

BOOL DYTraceEncode_MTLDevice_newSharedTextureWithHandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (a5)
  {
    v6[0] = *a5;
    v6[1] = 500;
    v7 = "0";
    v8 = 0u;
    v9 = 0u;
    return GTError_addError(a5, v6);
  }

  return result;
}

void DYTraceEncode_MTLDevice_newTextureWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC04A00000024;
  a2[8] = v10;
  v11 = *(a1 + 24);
  if (v11)
  {
    a2[9] = 7624003;
    v12 = 40;
  }

  else
  {
    strcpy(a2 + 36, "CU");
    v12 = 39;
  }

  bzero(a2 + v12, 40 - v12);
  *a2 = 40;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  if (v11)
  {
    *(a2 + v14) = *(a1 + 24);
    v14 = *a2 + 8;
    *a2 = v14;
  }

  *(a2 + v14) = 116;
  v15 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v15 - (*a2 + 2));
  *a2 = v15;
  *(a2 + v15) = *(a1 + 8);
  v16 = *a2 + 8;
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy(a2 + v16, a4, v17);
    v18 = *a2 + v17;
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero(a2 + v18, v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTLDevice_setCapturingCommandQueueAddress(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFD80A00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC14D00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cult");
  *a2 = 41;
  *(a2 + 41) = *a1;
  *a2 = 49;
  *(a2 + 49) = a1[2];
  *(a2 + 57) = 0;
  *(a2 + 65) = 116;
  *(a2 + 67) = 0;
  *a2 = 68;
  *(a2 + 68) = a1[1];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLHeap_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC10D00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLIndirectCommandBuffer_allocatedSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFD81900000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLIndirectCommandBuffer_restoreData(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21827;
  *a2 = 0xFFFFD81500000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTLIndirectCommandBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC1D000000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC23200000024;
  a2[8] = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    *(a2 + 9) = 0x3E623C556C7543;
  }

  else
  {
    strcpy(a2 + 36, "Cult");
    *(a2 + 41) = 0;
    *(a2 + 43) = 0;
  }

  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 8);
  *a2 = 60;
  if (v11)
  {
    AppendString(*(a1 + 16), a2);
    v12 = *a2;
    v13 = (v12 + 3) & 0xFFFFFFFC;
    bzero(a2 + v12, v13 - v12);
    v14 = v13;
  }

  else
  {
    *(a2 + 15) = 0;
    v13 = 68;
    v14 = 68;
  }

  v15 = v14;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC11500000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CSUt");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC34100000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUttt");
  *a2 = 42;
  *(a2 + 42) = *a1;
  *a2 = 50;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 8);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 24);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 32);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC28400000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CSultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 0;
  v14 = (*a2 + 11) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 8, v14 - (*a2 + 8));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = 116;
  v16 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v16 - (*a2 + 2));
  *a2 = v16;
  *(a2 + v16) = *(a1 + 8);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC28600000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CSultt");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 0;
  v14 = (*a2 + 11) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 8, v14 - (*a2 + 8));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = 116;
  v16 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v16 - (*a2 + 2));
  *a2 = v16;
  *(a2 + v16) = *(a1 + 8);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTLRenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC07700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@4l");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  v11 = *(a1 + 8);
  *(a2 + 68) = *(a1 + 24);
  *(a2 + 52) = v11;
  v12 = 84;
  *a2 = 84;
  if (__src)
  {
    v13 = 8 * *__src;
    memcpy((a2 + 84), __src, v13 + 8);
    v14 = (v13 + 92);
    v12 = (v13 + 95) & 0xFFFFFFFC;
    bzero((a2 + v14), v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTLRenderCommandEncoder_setScissorRects_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC13400000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  if (a4)
  {
    v14 = 8 * *a4 + 8;
    memcpy(a2 + v13, a4, v14);
    v15 = *a2 + v14;
    v13 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTLRenderCommandEncoder_setViewports_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC13300000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  if (a4)
  {
    v14 = 8 * *a4 + 8;
    memcpy(a2 + v13, a4, v14);
    v15 = *a2 + v14;
    v13 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTLRenderPipelineState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7828803;
  *a2 = 0xFFFFD81400000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
  }

  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC09300000024;
  a2[8] = v10;
  a2[13] = 108;
  *(a2 + 9) = *"CU<b>ulul@6ululul";
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 24);
  v14 = *a2 + 8;
  *a2 = v14;
  v15 = (a2 + v14);
  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v15[1] = *(a1 + 48);
  v15[2] = v17;
  *v15 = v16;
  LODWORD(v15) = *a2 + 48;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 80);
  LODWORD(v15) = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 88);
  v18 = *a2 + 8;
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy(a2 + v18, a4, v19);
    v20 = *a2 + v19;
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero(a2 + v20, v18 - v20);
    *a2 = v18;
  }

  if (a5)
  {
    if (v18 > a3)
    {
      v21 = *a5;
      v22 = 500;
      v23 = "bytes->length <= length";
      v24 = 0u;
      v25 = 0u;
      GTError_addError(a5, &v21);
    }
  }
}

void DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC09400000024;
  a2[8] = v10;
  strcpy(a2 + 36, "C@6ulululU<b>ululul");
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  v11 = *(a1 + 40);
  v12 = *(a1 + 24);
  *(a2 + 4) = *(a1 + 8);
  *(a2 + 5) = v12;
  *(a2 + 6) = v11;
  *a2 = 112;
  *(a2 + 14) = *(a1 + 56);
  *a2 = 120;
  *(a2 + 15) = *(a1 + 64);
  *a2 = 128;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 88);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  v17 = *a2 + 8;
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy(a2 + v17, a4, v18);
    v19 = *a2 + v18;
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero(a2 + v19, v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTLTexture_restoreIOSurfaceData_length_forPlane(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 12;
  }

  else
  {
    v10 = 4;
  }

  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFD80800000024;
  a2[8] = v10;
  a2[11] = 108;
  *(a2 + 9) = *"CU<b>ulul";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 24);
  v14 = *a2 + 8;
  *a2 = v14;
  if (a4)
  {
    v15 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v15);
    v16 = *a2 + v15;
    v14 = (v16 + 3) & 0xFFFFFFFC;
    bzero(a2 + v16, v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTLTexture_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC09800000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_beginCommandBufferWithAllocator(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC4BB00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *(a2 + 56) = 116;
  *a2 = 60;
  *(a2 + 60) = a1[1];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_beginCommandBufferWithAllocator_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 5600323;
  *a2 = 0xFFFFC4BC00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  *(a2 + 6) = *(a1 + 16);
  *a2 = 56;
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = 116;
  v13 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v13 - (*a2 + 2));
  *a2 = v13;
  *(a2 + v13) = *(a1 + 8);
  v14 = *a2 + 8;
  *a2 = v14;
  if (a4)
  {
    v15 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v15);
    v16 = *a2 + v15;
    v14 = (v16 + 3) & 0xFFFFFFFC;
    bzero(a2 + v16, v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTLTextureViewPool_setTextureView_descriptor_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC58700000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUult");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 16);
  *a2 = 60;
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 40);
  v14 = *a2 + 8;
  *a2 = v14;
  strcpy(a2 + v14, "uw");
  v15 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v15 - (*a2 + 3));
  *a2 = v15;
  *(a2 + v15) = *(a1 + 8);
  v16 = *a2 + 8;
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy(a2 + v16, a4, v17);
    v18 = *a2 + v17;
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero(a2 + v18, v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC62E00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUululult");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 16);
  *a2 = 64;
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 40);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 48);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 56);
  v16 = *a2 + 8;
  *a2 = v16;
  strcpy(a2 + v16, "uw");
  v17 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v17 - (*a2 + 3));
  *a2 = v17;
  *(a2 + v17) = *(a1 + 8);
  v18 = *a2 + 8;
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy(a2 + v18, a4, v19);
    v20 = *a2 + v19;
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero(a2 + v20, v18 - v20);
    *a2 = v18;
  }

  if (a5)
  {
    if (v18 > a3)
    {
      v21 = *a5;
      v22 = 500;
      v23 = "bytes->length <= length";
      v24 = 0u;
      v25 = 0u;
      GTError_addError(a5, &v21);
    }
  }
}

void DYTraceEncode_MTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v23 = *a5;
    v24 = 500;
    v25 = "36 <= length";
    v26 = 0u;
    v27 = 0u;
    GTError_addError(a5, &v23);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC5F900000024;
  *(a2 + 32) = v10;
  v11 = snprintf((a2 + 36), a3 - 36, "Ct@2ulul@%llut", *(a1 + 56)) + *a2;
  v12 = (v11 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v11 + 1)), v12 - (v11 + 1));
  *a2 = v12;
  *(a2 + v12) = *a1;
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 16);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 16;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 40);
  v16 = (*a2 + 8);
  *a2 = v16;
  v17 = 8 * *(a1 + 56);
  memcpy((a2 + v16), *(a1 + 48), v17);
  v18 = (*a2 + v17);
  *a2 = v18;
  strcpy((a2 + v18), "uw");
  v19 = (*a2 + 6) & 0xFFFFFFFC;
  bzero((a2 + (*a2 + 3)), v19 - (*a2 + 3));
  *a2 = v19;
  *(a2 + v19) = *(a1 + 8);
  v20 = (*a2 + 8);
  *a2 = v20;
  if (a4)
  {
    v21 = 8 * *a4 + 8;
    memcpy((a2 + v20), a4, v21);
    v22 = (*a2 + v21);
    v20 = (v22 + 3) & 0xFFFFFFFC;
    bzero((a2 + v22), v20 - v22);
    *a2 = v20;
  }

  if (a5)
  {
    if (v20 > a3)
    {
      v23 = *a5;
      v24 = 500;
      v25 = "bytes->length <= length";
      v26 = 0u;
      v27 = 0u;
      GTError_addError(a5, &v23);
    }
  }
}

void DYTraceEncode_Boundary_Frame(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 14;
  }

  else
  {
    v10 = 6;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFD84800000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x74747474747443;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  *a2 = 76;
  *(a2 + 76) = a1[4];
  *a2 = 84;
  *(a2 + 84) = a1[5];
  *a2 = 92;
  *(a2 + 92) = a1[6];
  v11 = 100;
  *a2 = 100;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 100), __src, v12 + 8);
    v13 = (v12 + 108);
    v11 = (v12 + 111) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalDrawable_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFE40700000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalDrawable_present(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFE40A00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalDrawable_presentAfterMinimumDuration(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 25667;
  *a2 = 0xFFFFE40C00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalDrawable_presentAtTime(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 25667;
  *a2 = 0xFFFFE40B00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalDrawable_texture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFE40100000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 116;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  v11 = 60;
  *a2 = 60;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 60), __src, v12 + 8);
    v13 = (v12 + 68);
    v11 = (v12 + 71) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalLayer_nextDrawable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFE40200000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 116;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  v11 = 60;
  *a2 = 60;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 60), __src, v12 + 8);
    v13 = (v12 + 68);
    v11 = (v12 + 71) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setBounds_contentsScale(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFE40600000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6464344043;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  v11 = *(a1 + 8);
  *(a2 + 68) = *(a1 + 24);
  *(a2 + 52) = v11;
  *a2 = 84;
  *(a2 + 84) = *(a1 + 40);
  v12 = 92;
  *a2 = 92;
  if (__src)
  {
    v13 = 8 * *__src;
    memcpy((a2 + 92), __src, v13 + 8);
    v14 = (v13 + 100);
    v12 = (v13 + 103) & 0xFFFFFFFC;
    bzero((a2 + v14), v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setColorspace(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21827;
  *a2 = 0xFFFFE40F00000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setDevice(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 5600323;
  *a2 = 0xFFFFE40500000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  *(a2 + 6) = *(a1 + 8);
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setDrawableSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE40400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@2d");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setFramebufferOnly(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 6911299;
  *a2 = 0xFFFFE40800000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 8);
  v11 = 52;
  *a2 = 52;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 52), __src, v12 + 8);
    v13 = (v12 + 60);
    v11 = (v12 + 63) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setPixelFormat(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFE40300000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_CAMetalLayer_setWantsExtendedDynamicRangeContent(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 6911299;
  *a2 = 0xFFFFE40E00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 8);
  v11 = 52;
  *a2 = 52;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 52), __src, v12 + 8);
    v13 = (v12 + 60);
    v11 = (v12 + 63) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4B200000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_setAddress_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC4B300000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_setAddress_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC60000000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C75777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_setResource_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC4B400000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC4B500000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ArgumentTable_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC4B600000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandAllocator_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4B900000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandAllocator_reset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4BA00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21315;
  *a2 = 0xFFFFC5C500000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_computeCommandEncoder(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4BD00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 116;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  v11 = 60;
  *a2 = 60;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 60), __src, v12 + 8);
    v13 = (v12 + 68);
    v11 = (v12 + 71) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4BE00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_endCommandBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4BF00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_machineLearningCommandEncoder(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC5DC00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 116;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  v11 = 60;
  *a2 = 60;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 60), __src, v12 + 8);
    v13 = (v12 + 68);
    v11 = (v12 + 71) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4C000000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21315;
  *a2 = 0xFFFFC4C100000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21827;
  *a2 = 0xFFFFC4C200000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = 116;
  v13 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v13 - (*a2 + 2));
  *a2 = v13;
  *(a2 + v13) = *(a1 + 8);
  v14 = *a2 + 8;
  *a2 = v14;
  if (a4)
  {
    v15 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v15);
    v16 = *a2 + v15;
    v14 = (v16 + 3) & 0xFFFFFFFC;
    bzero(a2 + v16, v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC4C300000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_useResidencySet(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC4C500000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandBuffer_useResidencySets_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4C600000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = *a2 + v11;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 16);
  v16 = (*a2 + 8);
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy((a2 + v16), a4, v17);
    v18 = (*a2 + v17);
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero((a2 + v18), v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_addResidencySet(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC4C700000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_addResidencySets_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4C800000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = *a2 + v11;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 16);
  v16 = (*a2 + 8);
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy((a2 + v16), a4, v17);
    v18 = (*a2 + v17);
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero((a2 + v18), v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_commit_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC60100000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = *a2 + v11;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 16);
  v16 = (*a2 + 8);
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy((a2 + v16), a4, v17);
    v18 = (*a2 + v17);
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero((a2 + v18), v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_commit_count_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC60200000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutult", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = *a2 + v11;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 16);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = (*a2 + 8);
  *a2 = v17;
  if (a4)
  {
    v18 = 8 * *a4 + 8;
    memcpy((a2 + v17), a4, v18);
    v19 = (*a2 + v18);
    v17 = (v19 + 3) & 0xFFFFFFFC;
    bzero((a2 + v19), v17 - v19);
    *a2 = v17;
  }

  if (a5)
  {
    if (v17 > a3)
    {
      v20 = *a5;
      v21 = 500;
      v22 = "bytes->length <= length";
      v23 = 0u;
      v24 = 0u;
      GTError_addError(a5, &v20);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_copyBufferMappingsFromBuffer_toBuffer_operations_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC61900000024;
  a2[8] = v10;
  a2[11] = 108;
  *(a2 + 9) = *"CttU<b>ul";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  if (a4)
  {
    v14 = 8 * *a4 + 8;
    memcpy(a2 + v13, a4, v14);
    v15 = *a2 + v14;
    v13 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_copyTextureMappingsFromTexture_toTexture_operations_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC61A00000024;
  a2[8] = v10;
  a2[11] = 108;
  *(a2 + 9) = *"CttU<b>ul";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  if (a4)
  {
    v14 = 8 * *a4 + 8;
    memcpy(a2 + v13, a4, v14);
    v15 = *a2 + v14;
    v13 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4CD00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_removeResidencySet(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC4D100000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_removeResidencySets_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4D200000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = *a2 + v11;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 16);
  v16 = (*a2 + 8);
  *a2 = v16;
  if (a4)
  {
    v17 = 8 * *a4 + 8;
    memcpy((a2 + v16), a4, v17);
    v18 = (*a2 + v17);
    v16 = (v18 + 3) & 0xFFFFFFFC;
    bzero((a2 + v18), v16 - v18);
    *a2 = v16;
  }

  if (a5)
  {
    if (v16 > a3)
    {
      v19 = *a5;
      v20 = 500;
      v21 = "bytes->length <= length";
      v22 = 0u;
      v23 = 0u;
      GTError_addError(a5, &v19);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_signalDrawable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC60300000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_signalEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC60400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctuw");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_waitForDrawable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC60500000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4CommandQueue_waitForEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC60600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctuw");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC4DB00000024;
  a2[8] = v10;
  *(a2 + 9) = 0x743E623C555543;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC4DC00000024;
  a2[8] = v10;
  *(a2 + 9) = 0x743E623C555543;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC5E900000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUUU<b>t");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 40);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC5EA00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUUU<b>t");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 40);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newDynamicLibrary_completionHandler(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7631939;
  *a2 = 0xFFFFC4DD00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *a2 = 56;
  *(a2 + 56) = a1[3];
  *(a2 + 64) = 116;
  *a2 = 68;
  *(a2 + 68) = a1[1];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newDynamicLibrary_error(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7631939;
  *a2 = 0xFFFFC4DE00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *a2 = 56;
  *(a2 + 56) = a1[3];
  *(a2 + 64) = 116;
  *a2 = 68;
  *(a2 + 68) = a1[1];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newDynamicLibraryWithURL_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC4DF00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>t");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newDynamicLibraryWithURL_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC4E000000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>t");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newLibraryWithDescriptor_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC4E100000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newLibraryWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC4E200000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC5EB00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 7624003;
  *a2 = 0xFFFFC5EC00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC4E500000024;
  a2[8] = v10;
  *(a2 + 9) = 0x743E623C555543;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC4E600000024;
  a2[8] = v10;
  *(a2 + 9) = 0x743E623C555543;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 32);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC60C00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUUU<b>t");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 40);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC5ED00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUUU<b>t");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 40);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = 116;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 8);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setAccelerationStructureDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  a2[8] = v10;
  a2[9] = 5600323;
  *a2 = 0xFFFFD86500000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  *(a2 + 6) = *(a1 + 8);
  *a2 = 56;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setAccelerationStructureState(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFD86600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctuiuiuiui");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 20);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 28);
  v11 = 80;
  *a2 = 80;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 80), __src, v12 + 8);
    v13 = (v12 + 88);
    v11 = (v12 + 91) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21315;
  *a2 = 0xFFFFC4E900000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC62100000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC62200000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC62300000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC61000000024;
  a2[8] = v10;
  *(a2 + 9) = 0x6C753240557443;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 8);
  *a2 = 60;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 16;
  *a2 = v13;
  if (a4)
  {
    v14 = 8 * *a4 + 8;
    memcpy(a2 + v13, a4, v14);
    v15 = *a2 + v14;
    v13 = (v15 + 3) & 0xFFFFFFFC;
    bzero(a2 + v15, v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7631939;
  *a2 = 0xFFFFC61100000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  *a2 = 56;
  *(a2 + 56) = a1[2];
  v11 = 64;
  *a2 = 64;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 64), __src, v12 + 8);
    v13 = (v12 + 72);
    v11 = (v12 + 75) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7631939;
  *a2 = 0xFFFFC61200000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  *a2 = 56;
  *(a2 + 56) = a1[2];
  v11 = 64;
  *a2 = 64;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 64), __src, v12 + 8);
    v13 = (v12 + 72);
    v11 = (v12 + 75) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F100000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululul@3ultulul@3ul");
  *(a2 + 58) = 0;
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 32);
  *a2 = 100;
  v11 = *(a1 + 56);
  *(a2 + 100) = *(a1 + 40);
  *(a2 + 116) = v11;
  *a2 = 124;
  *(a2 + 124) = *(a1 + 64);
  *a2 = 132;
  *(a2 + 132) = *(a1 + 72);
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  v12 = *(a1 + 104);
  *(a2 + 148) = *(a1 + 88);
  *(a2 + 164) = v12;
  v13 = 172;
  *a2 = 172;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 172), __src, v14 + 8);
    v15 = (v14 + 180);
    v13 = (v14 + 183) & 0xFFFFFFFC;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F200000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululul@3ultulul@3ulul");
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 32);
  *a2 = 100;
  v11 = *(a1 + 56);
  *(a2 + 100) = *(a1 + 40);
  *(a2 + 116) = v11;
  *a2 = 124;
  *(a2 + 124) = *(a1 + 64);
  *a2 = 132;
  *(a2 + 132) = *(a1 + 72);
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  v12 = *(a1 + 104);
  *(a2 + 148) = *(a1 + 88);
  *(a2 + 164) = v12;
  *a2 = 172;
  *(a2 + 172) = *(a1 + 112);
  v13 = 180;
  *a2 = 180;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 180), __src, v14 + 8);
    v15 = (v14 + 188);
    v13 = (v14 + 191) & 0xFFFFFFFC;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F300000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Ctultulul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = a1[1];
  *a2 = 64;
  *(a2 + 64) = a1[2];
  *a2 = 72;
  *(a2 + 72) = a1[3];
  *a2 = 80;
  *(a2 + 80) = a1[4];
  *a2 = 88;
  *(a2 + 88) = a1[5];
  v11 = 96;
  *a2 = 96;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 96), __src, v12 + 8);
    v13 = (v12 + 104);
    v11 = (v12 + 107) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v38 = *a5;
    v39 = 500;
    v40 = "36 <= length";
    v41 = 0u;
    v42 = 0u;
    GTError_addError(a5, &v38);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC62400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ct@17ul@17ult@17ul@17ul");
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  *(a2 + 140) = *(a1 + 80);
  *(a2 + 124) = v13;
  *(a2 + 108) = v12;
  *(a2 + 92) = v11;
  v14 = *(a1 + 96);
  v15 = *(a1 + 112);
  v16 = *(a1 + 128);
  *(a2 + 204) = *(a1 + 144);
  *(a2 + 188) = v16;
  *(a2 + 172) = v15;
  *(a2 + 156) = v14;
  *a2 = 212;
  *(a2 + 212) = *(a1 + 152);
  v17 = *(a1 + 168);
  v18 = *(a1 + 184);
  v19 = *(a1 + 216);
  *(a2 + 260) = *(a1 + 200);
  *(a2 + 276) = v19;
  *(a2 + 244) = v18;
  *(a2 + 228) = v17;
  v20 = *(a1 + 232);
  v21 = *(a1 + 248);
  v22 = *(a1 + 264);
  *(a2 + 340) = *(a1 + 280);
  *(a2 + 308) = v21;
  *(a2 + 324) = v22;
  *(a2 + 292) = v20;
  *a2 = 348;
  *(a2 + 348) = *(a1 + 288);
  *a2 = 356;
  *(a2 + 356) = *(a1 + 296);
  v23 = *(a1 + 312);
  v24 = *(a1 + 328);
  v25 = *(a1 + 360);
  *(a2 + 404) = *(a1 + 344);
  *(a2 + 420) = v25;
  *(a2 + 372) = v23;
  *(a2 + 388) = v24;
  v26 = *(a1 + 376);
  v27 = *(a1 + 392);
  v28 = *(a1 + 408);
  *(a2 + 484) = *(a1 + 424);
  *(a2 + 452) = v27;
  *(a2 + 468) = v28;
  *(a2 + 436) = v26;
  *a2 = 492;
  *(a2 + 492) = *(a1 + 432);
  v29 = *(a1 + 448);
  v30 = *(a1 + 464);
  v31 = *(a1 + 496);
  *(a2 + 540) = *(a1 + 480);
  *(a2 + 556) = v31;
  *(a2 + 508) = v29;
  *(a2 + 524) = v30;
  v32 = *(a1 + 512);
  v33 = *(a1 + 528);
  v34 = *(a1 + 544);
  *(a2 + 620) = *(a1 + 560);
  *(a2 + 588) = v33;
  *(a2 + 604) = v34;
  *(a2 + 572) = v32;
  v35 = 628;
  *a2 = 628;
  if (__src)
  {
    v36 = 8 * *__src;
    memcpy((a2 + 628), __src, v36 + 8);
    v37 = (v36 + 636);
    v35 = (v36 + 639) & 0xFFFFFFFC;
    bzero((a2 + v37), v35 - v37);
    *a2 = v35;
  }

  if (a5)
  {
    if (v35 > a3)
    {
      v38 = *a5;
      v39 = 500;
      v40 = "bytes->length <= length";
      v41 = 0u;
      v42 = 0u;
      GTError_addError(a5, &v38);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F500000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@3ul@3ultululul");
  *(a2 + 58) = 0;
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  v11 = *(a1 + 48);
  *(a2 + 92) = *(a1 + 32);
  *(a2 + 108) = v11;
  *a2 = 116;
  v12 = *(a1 + 72);
  *(a2 + 116) = *(a1 + 56);
  *(a2 + 132) = v12;
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  *(a2 + 148) = *(a1 + 88);
  *a2 = 156;
  *(a2 + 156) = *(a1 + 96);
  *a2 = 164;
  *(a2 + 164) = *(a1 + 104);
  v13 = 172;
  *a2 = 172;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 172), __src, v14 + 8);
    v15 = (v14 + 180);
    v13 = (v14 + 183) & 0xFFFFFFFC;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@3ul@3ultulululul");
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  v11 = *(a1 + 48);
  *(a2 + 92) = *(a1 + 32);
  *(a2 + 108) = v11;
  *a2 = 116;
  v12 = *(a1 + 72);
  *(a2 + 116) = *(a1 + 56);
  *(a2 + 132) = v12;
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  *(a2 + 148) = *(a1 + 88);
  *a2 = 156;
  *(a2 + 156) = *(a1 + 96);
  *a2 = 164;
  *(a2 + 164) = *(a1 + 104);
  *a2 = 172;
  *(a2 + 172) = *(a1 + 112);
  v13 = 180;
  *a2 = 180;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 180), __src, v14 + 8);
    v15 = (v14 + 188);
    v13 = (v14 + 191) & 0xFFFFFFFC;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@3ul@3ultulul@3ul");
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 8);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  v11 = *(a1 + 48);
  *(a2 + 92) = *(a1 + 32);
  *(a2 + 108) = v11;
  *a2 = 116;
  v12 = *(a1 + 72);
  *(a2 + 116) = *(a1 + 56);
  *(a2 + 132) = v12;
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  *(a2 + 148) = *(a1 + 88);
  *a2 = 156;
  *(a2 + 156) = *(a1 + 96);
  *a2 = 164;
  v13 = *(a1 + 120);
  *(a2 + 164) = *(a1 + 104);
  *(a2 + 180) = v13;
  v14 = 188;
  *a2 = 188;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 188), __src, v15 + 8);
    v16 = (v15 + 196);
    v14 = (v15 + 199) & 0xFFFFFFFC;
    bzero((a2 + v16), v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4F800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulultulululul");
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = a1[1];
  *a2 = 68;
  *(a2 + 68) = a1[2];
  *a2 = 76;
  *(a2 + 76) = a1[3];
  *a2 = 84;
  *(a2 + 84) = a1[4];
  *a2 = 92;
  *(a2 + 92) = a1[5];
  *a2 = 100;
  *(a2 + 100) = a1[6];
  *a2 = 108;
  *(a2 + 108) = a1[7];
  *a2 = 116;
  *(a2 + 116) = a1[8];
  v11 = 124;
  *a2 = 124;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 124), __src, v12 + 8);
    v13 = (v12 + 132);
    v11 = (v12 + 135) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_copyFromTexture_toTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7631939;
  *a2 = 0xFFFFC4F900000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  *a2 = 56;
  *(a2 + 56) = a1[2];
  v11 = 64;
  *a2 = 64;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 64), __src, v12 + 8);
    v13 = (v12 + 72);
    v11 = (v12 + 75) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC4FB00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_dispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4FC00000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"C@3ul@3ul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  v11 = *(a1 + 24);
  *(a2 + 56) = *(a1 + 8);
  *(a2 + 72) = v11;
  *a2 = 80;
  v12 = *(a1 + 48);
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 96) = v12;
  v13 = 104;
  *a2 = 104;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 104), __src, v14 + 8);
    v15 = (v14 + 112);
    v13 = (v14 + 115) & 0xFFFFFFF8;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_dispatchThreadgroupsWithIndirectBuffer_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC4FD00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C753340777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  v11 = *(a1 + 16);
  *(a2 + 76) = *(a1 + 32);
  *(a2 + 60) = v11;
  v12 = 84;
  *a2 = 84;
  if (__src)
  {
    v13 = 8 * *__src;
    memcpy((a2 + 84), __src, v13 + 8);
    v14 = (v13 + 92);
    v12 = (v13 + 95) & 0xFFFFFFFC;
    bzero((a2 + v14), v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_dispatchThreads_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v16 = *a5;
    v17 = 500;
    v18 = "36 <= length";
    v19 = 0u;
    v20 = 0u;
    GTError_addError(a5, &v16);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC4FE00000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"C@3ul@3ul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  v11 = *(a1 + 24);
  *(a2 + 56) = *(a1 + 8);
  *(a2 + 72) = v11;
  *a2 = 80;
  v12 = *(a1 + 48);
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 96) = v12;
  v13 = 104;
  *a2 = 104;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 104), __src, v14 + 8);
    v15 = (v14 + 112);
    v13 = (v14 + 115) & 0xFFFFFFF8;
    bzero((a2 + v15), v13 - v15);
    *a2 = v13;
  }

  if (a5)
  {
    if (v13 > a3)
    {
      v16 = *a5;
      v17 = 500;
      v18 = "bytes->length <= length";
      v19 = 0u;
      v20 = 0u;
      GTError_addError(a5, &v16);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_dispatchThreadsWithIndirectBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7828803;
  *a2 = 0xFFFFC4FF00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC50000000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_fillBuffer_range_value(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC50400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ct@2ulub");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 83) = 0;
  *(a2 + 81) = 0;
  v11 = 84;
  *a2 = 84;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 84), __src, v12 + 8);
    v13 = (v12 + 92);
    v11 = (v12 + 95) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_generateMipmapsForTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC50800000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21315;
  *a2 = 0xFFFFC50900000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC50A00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_optimizeContentsForCPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC50B00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC50C00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_optimizeContentsForGPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC50D00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  *a2 = 68;
  *(a2 + 68) = a1[3];
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 67;
  *a2 = 0xFFFFC50F00000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  v11 = 48;
  *a2 = 48;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 48), __src, v12 + 8);
    v13 = (v12 + 56);
    v11 = (v12 + 59) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  a2[8] = v10;
  a2[9] = 21315;
  *a2 = 0xFFFFC51000000028;
  *(a2 + 1) = 0;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  if (a4)
  {
    v13 = 8 * *a4 + 8;
    memcpy(a2 + v12, a4, v13);
    v14 = *a2 + v13;
    v12 = (v14 + 3) & 0xFFFFFFFC;
    bzero(a2 + v14, v12 - v14);
    *a2 = v12;
  }

  if (a5)
  {
    if (v12 > a3)
    {
      v15 = *a5;
      v16 = 500;
      v17 = "bytes->length <= length";
      v18 = 0u;
      v19 = 0u;
      GTError_addError(a5, &v15);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC61300000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUt@2ul");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 8);
  *a2 = 64;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 16;
  *a2 = v14;
  if (a4)
  {
    v15 = 8 * *a4 + 8;
    memcpy(a2 + v14, a4, v15);
    v16 = *a2 + v15;
    v14 = (v16 + 3) & 0xFFFFFFFC;
    bzero(a2 + v16, v14 - v16);
    *a2 = v14;
  }

  if (a5)
  {
    if (v14 > a3)
    {
      v17 = *a5;
      v18 = 500;
      v19 = "bytes->length <= length";
      v20 = 0u;
      v21 = 0u;
      GTError_addError(a5, &v17);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC61400000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUt@2ulul");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 8);
  *a2 = 64;
  AppendString(*(a1 + 16), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 24);
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 16;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 48);
  v15 = *a2 + 8;
  *a2 = v15;
  if (a4)
  {
    v16 = 8 * *a4 + 8;
    memcpy(a2 + v15, a4, v16);
    v17 = *a2 + v16;
    v15 = (v17 + 3) & 0xFFFFFFFC;
    bzero(a2 + v17, v15 - v17);
    *a2 = v15;
  }

  if (a5)
  {
    if (v15 > a3)
    {
      v18 = *a5;
      v19 = 500;
      v20 = "bytes->length <= length";
      v21 = 0u;
      v22 = 0u;
      GTError_addError(a5, &v18);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC51200000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 29763;
  *a2 = 0xFFFFC51300000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[1];
  v11 = 56;
  *a2 = 56;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 56), __src, v12 + 8);
    v13 = (v12 + 64);
    v11 = (v12 + 67) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setImageblockWidth_height(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC51400000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC51500000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC51600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC51700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[1];
  *a2 = 60;
  *(a2 + 60) = a1[2];
  v11 = 68;
  *a2 = 68;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 68), __src, v12 + 8);
    v13 = (v12 + 76);
    v11 = (v12 + 79) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4ComputeCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
  if (a5 && a3 <= 0x23)
  {
    v14 = *a5;
    v15 = 500;
    v16 = "36 <= length";
    v17 = 0u;
    v18 = 0u;
    GTError_addError(a5, &v14);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC61500000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ct@2ul");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  v11 = 76;
  *a2 = 76;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 76), __src, v12 + 8);
    v13 = (v12 + 84);
    v11 = (v12 + 87) & 0xFFFFFFFC;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}