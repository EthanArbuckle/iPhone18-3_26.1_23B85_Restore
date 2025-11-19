uint64_t simResizeVisPipeBilinear(uint64_t *a1, uint64_t *a2, float a3, float a4, float a5, float a6)
{
  v6 = *(a2 + 2);
  if (v6)
  {
    v7 = *(a1 + 3);
    if (v7)
    {
      v8 = *(a2 + 3);
      v9 = vcvtas_u32_f32(a6 * 8.0) << 13;
      v10 = *(a1 + 2);
      v11 = v10 - 1;
      if (v8)
      {
        v12 = 0;
        v13 = vcvtas_u32_f32(65536.0 / a3);
        v14 = vcvtas_u32_f32(65536.0 / a4);
        v15 = vcvtas_u32_f32(a5 * 8.0) << 13;
        v16 = *a1;
        v17 = *(a1 + 4);
        v18 = *a2;
        v19 = *(a2 + 4);
        v20 = v7 - 1;
        while (1)
        {
          v21 = HIWORD(v9);
          v22 = v11 >= HIWORD(v9) ? HIWORD(v9) : v11;
          v23 = *(a1 + 2);
          if (v23 <= v22)
          {
            break;
          }

          if (v11 >= v21 + 1)
          {
            v24 = v21 + 1;
          }

          else
          {
            v24 = v11;
          }

          if (v23 <= v24)
          {
            simResizeVisPipeBinning();
          }

          if (v12 >= *(a2 + 2))
          {
            goto LABEL_28;
          }

          v25 = v16 + v17 * v22;
          v26 = v16 + v17 * v24;
          v27 = (v18 + (v19 * v12));
          v28 = v8;
          v29 = v15;
          do
          {
            v30 = HIWORD(v29);
            if (v20 >= HIWORD(v29))
            {
              v31 = HIWORD(v29);
            }

            else
            {
              v31 = v20;
            }

            if (v20 >= v30 + 1)
            {
              v32 = v30 + 1;
            }

            else
            {
              v32 = v20;
            }

            v33 = *(v25 + 2 * v31);
            v34 = (*(v25 + 2 * v32) - v33) * v29 + (v33 << 16);
            v35 = *(v26 + 2 * v31);
            v36 = (*(v26 + 2 * v32) - v35) * v29 + (v35 << 16);
            v37 = ((v34 + (v34 >> 31) + 0x8000) & 0xFFFF0000) + (((v36 + (v36 >> 31) + 0x8000) >> 16) - ((v34 + (v34 >> 31) + 0x8000) >> 16)) * v9;
            *v27++ = ((v37 + (v37 >> 31) + 0x8000) >> 16) & ~((v37 + (v37 >> 31) + 0x8000) >> 31);
            v29 += v13;
            --v28;
          }

          while (v28);
          ++v12;
          v9 += v14;
          if (v12 == v6)
          {
            return 1;
          }
        }
      }

      else
      {
        v39 = HIWORD(v9);
        if (v11 < HIWORD(v9))
        {
          v39 = v10 - 1;
        }

        if (v10 > v39)
        {
LABEL_28:
          simResizeVisPipeBinning();
        }
      }
    }

    simResizeVisPipeBinning();
  }

  return 1;
}

uint64_t simResizeVisPipe(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, unsigned int a5, float a6, float a7, float a8, float a9)
{
  if (a6 > 4.0 || a7 > 4.0)
  {
    simResizeVisPipe();
  }

  if (a6 < 0.0625 || a7 < 0.0625)
  {
    simResizeVisPipe();
  }

  v16 = a1;
  v18 = a7 <= 1.0 && a6 <= 1.0;
  if (!v18 && !a4)
  {
    simResizeVisPipe();
  }

  v19 = *(a2 + 12);
  if (v19 >= 0x901)
  {
    simResizeVisPipe();
  }

  v20 = *(a2 + 8);
  if (v20 > 0x2000)
  {
    simResizeVisPipe();
  }

  if (!*(a1 + 12))
  {
    return 0;
  }

  v21 = *(a1 + 8);
  if (!v21)
  {
    return 0;
  }

  result = 1;
  if (!v19 || !v20)
  {
    return result;
  }

  if (!a5)
  {
    if (a4 != 2)
    {
      goto LABEL_54;
    }

LABEL_39:
    simResizeVisPipeBinning(v16, a2, v19, a6, a7, a8, a9);
    goto LABEL_58;
  }

  v23 = *(v16 + 4);
  if (v23 * v21)
  {
    operator new();
  }

  v64 = *v16;
  v65 = *(v16 + 2);
  *&v64 = 0;
  if (v23)
  {
    v34 = "input.rowBytes % sizeof(uint16_t) == 0";
    v35 = 216;
    goto LABEL_88;
  }

  if (v23 != v65)
  {
    v34 = "input.rowBytes == shiftedInput.rowBytes";
    v35 = 217;
    goto LABEL_88;
  }

  v24 = *(v16 + 3);
  if (v24 != HIDWORD(v64))
  {
    v34 = "input.width == shiftedInput.width";
    v35 = 218;
    goto LABEL_88;
  }

  v25 = *(v16 + 2);
  if (v25 != DWORD2(v64))
  {
    v34 = "input.height == shiftedInput.height";
    v35 = 219;
    goto LABEL_88;
  }

  v26 = *(v16 + 5);
  if (v26 != HIDWORD(v65))
  {
    v34 = "input.pixelFormat == shiftedInput.pixelFormat";
    v35 = 220;
    goto LABEL_88;
  }

  if (v26 != 5)
  {
    v34 = "input.pixelFormat == kBmBufferPixelFormatType_UInt16";
    v35 = 221;
LABEL_88:
    __assert_rtn("inputHandler", "simresizevispipe.cpp", v35, v34);
  }

  v27 = *v16;
  v28 = ((v25 - 1) * v23);
  v29 = 2 * v24;
  v19 = *v16 + v29 + v28;
  if (*v16 == v19)
  {
    goto LABEL_53;
  }

  v30 = v29 + v28 - 2;
  if (v30 < 6 || -v27 < 0x20)
  {
    v36 = 0;
    v37 = *v16;
    goto LABEL_52;
  }

  v31 = (v30 >> 1) + 1;
  v32 = vdupq_n_s32(a5);
  if (v30 < 0x1E)
  {
    v33 = 0;
    goto LABEL_47;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFF0;
  v38 = v27 + 2;
  v39 = 16;
  v40 = vnegq_s32(v32);
  v41 = v31 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v42 = *&vuzp1q_s16(vshlq_u32(vmovl_u16(*v38), v40), vshlq_u32(vmovl_high_u16(*v38->i8), v40)) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL);
    *(v39 - 16) = *&vuzp1q_s16(vshlq_u32(vmovl_u16(v38[-2]), v40), vshlq_u32(vmovl_high_u16(*v38[-2].i8), v40)) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL);
    *v39 = v42;
    v38 += 4;
    v39 += 32;
    v41 -= 16;
  }

  while (v41);
  if (v31 != v33)
  {
    if ((v31 & 0xC) == 0)
    {
      v37 = v27 + v33;
      v36 = (2 * v33);
      goto LABEL_52;
    }

LABEL_47:
    v36 = (2 * (v31 & 0xFFFFFFFFFFFFFFFCLL));
    v37 = (v36 + v27);
    v43 = (2 * v33);
    v44 = v33 - (v31 & 0xFFFFFFFFFFFFFFFCLL);
    v45 = vnegq_s32(v32);
    do
    {
      *v43 = *&vmovn_s32(vshlq_u32(vmovl_u16(*(v43 + v27)), v45)) & 0xFFF0FFF0FFF0FFFLL;
      ++v43;
      v44 += 4;
    }

    while (v44);
    if (v31 == (v31 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_53;
    }

    do
    {
LABEL_52:
      v46 = *v37++;
      *v36++ = (v46 >> a5) & 0xFFF;
    }

    while (v37 != v19);
  }

LABEL_53:
  v16 = &v64;
  if (a4 == 2)
  {
    goto LABEL_39;
  }

LABEL_54:
  if (a4 == 1)
  {
    simResizeVisPipeBilinear(v16, a2, a6, a7, a8, a9);
LABEL_58:
    result = 1;
    if (!a5)
    {
      return result;
    }

    goto LABEL_61;
  }

  if (!a4)
  {
    simResizeVisPipeArea(v16, a2, a3, a6, a7, a8, a9);
    goto LABEL_58;
  }

  result = 0;
  if (!a5)
  {
    return result;
  }

LABEL_61:
  v47 = *(a2 + 16);
  if (v47)
  {
    __assert_rtn("outputHandler", "simresizevispipe.cpp", 234, "output.rowBytes % sizeof(uint16_t) == 0");
  }

  v48 = *a2;
  v49 = ((*(a2 + 8) - 1) * v47);
  v50 = 2 * *(a2 + 12);
  v51 = (*a2 + v50 + v49);
  if (*a2 != v51)
  {
    v52 = v50 + v49 - 2;
    v53 = *a2;
    if (v52 < 6)
    {
      goto LABEL_75;
    }

    v54 = (v52 >> 1) + 1;
    if (v52 < 0x1E)
    {
      v55 = 0;
      goto LABEL_70;
    }

    v55 = v54 & 0xFFFFFFFFFFFFFFF0;
    v56 = vdupq_n_s32(a5);
    v57 = v48 + 16;
    v58 = v54 & 0xFFFFFFFFFFFFFFF0;
    do
    {
      v59.i32[0] = *v57 & 0xFFF0FFF;
      v59.i16[2] = HIDWORD(*v57) & 0xFFF;
      v59.i16[3] = v59.i16[2];
      v59.i32[2] = *(v57 + 8) & 0xFFF0FFF;
      v59.i16[6] = v59.i16[2];
      v59.i16[7] = v59.i16[2];
      *(v57 - 16) = vuzp1q_s16(vshlq_u32(vmovl_u16((*(v57 - 16) & 0xFFF0FFF0FFF0FFFLL)), v56), vshlq_u32(vmovl_high_u16((*(v57 - 16) & __PAIR128__(0xFFF0FFF0FFF0FFFLL, 0xFFF0FFF0FFF0FFFLL))), v56));
      *v57 = vuzp1q_s16(vshlq_u32(vmovl_u16(*v59.i8), v56), vshlq_u32(vmovl_high_u16(v59), v56));
      v57 += 32;
      v58 -= 16;
    }

    while (v58);
    if (v54 != v55)
    {
      if ((v54 & 0xC) == 0)
      {
        v53 = (v48 + 2 * v55);
        goto LABEL_75;
      }

LABEL_70:
      v53 = (v48 + 2 * (v54 & 0xFFFFFFFFFFFFFFFCLL));
      v60 = vdupq_n_s32(a5);
      v61 = (v48 + 2 * v55);
      v62 = v55 - (v54 & 0xFFFFFFFFFFFFFFFCLL);
      do
      {
        v63.i32[0] = *v61 & 0xFFF0FFF;
        v63.i16[2] = HIDWORD(*v61) & 0xFFF;
        v63.i16[3] = v63.i16[2];
        *v61++ = vmovn_s32(vshlq_u32(vmovl_u16(v63), v60));
        v62 += 4;
      }

      while (v62);
      if (v54 == (v54 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return result;
      }

      do
      {
LABEL_75:
        *v53 = (*v53 & 0xFFF) << a5;
        ++v53;
      }

      while (v53 != v51);
    }
  }

  return result;
}

void sub_24BC42A70(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

uint64_t AcDetCreate(uint64_t a1, uint64_t a2)
{
  result = 4294967292;
  if (a1)
  {
    if (a2)
    {
      operator new();
    }
  }

  return result;
}

uint64_t AcDetDestroy(AcDetNode **a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  AcDetNode::~AcDetNode(v2);
  MEMORY[0x24C253380]();
  v3 = a1[1];
  if (v3)
  {
    AcSaliencyNode::~AcSaliencyNode(v3);
    MEMORY[0x24C253380]();
  }

  MEMORY[0x24C253380](a1, 0x20C40A4A59CD2);
  return 0;
}

uint64_t AcDetStart(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t AcDetStop(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t AcDetGetParams(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  if (!a1)
  {
    return 4294967292;
  }

  v3 = *a1;
  if (!*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      result = AcDetNode::getParams(v3, a2, a3, 0);
      if (!result)
      {
        v8 = a1[1];

        return AcSaliencyNode::getParams(v8, a2 + 3, a3);
      }
    }
  }

  return result;
}

uint64_t AcDetPreProcessRef(void *a1)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  v5 = MEMORY[0x28223BE20]();
  result = 4294967292;
  if (v7)
  {
    if (v2)
    {
      if (v3)
      {
        if (*v1)
        {
          if (*v3)
          {
            v8 = v1;
            v9 = v3;
            v10 = v2;
            result = AcDetNode::getParams(v4, v2, v15, 0);
            if (!result)
            {
              result = AcSaliencyNode::getParams(*(v5 + 8), v10 + 3, v15);
              if (!result)
              {
                v11 = *(v8 + 3);
                if ((v11 & 3) == 0 && (v12 = *(v9 + 3), v12 == 4 * v15[1]) && (v13 = *(v9 + 2), v13 == v15[0]))
                {
                  v14 = *(v9 + 4);
                  result = 4294967292;
                  if (v14 >= v12 && (v14 & 0x3F) == 0)
                  {
                    if (rtcv::simResize(*v8, v11 >> 2, *(v8 + 2), *(v8 + 4), 0, 0, 0, *v9, v12 >> 2, v13, v14))
                    {
                      return 0;
                    }

                    else
                    {
                      return 4294967288;
                    }
                  }
                }

                else
                {
                  return 4294967292;
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

void AcDetPostProcessMultiNetOutputs(uint64_t *a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a1 && *a1 && a5 && a2 && a6 && *a2 && a2[1] && (*a4 == 24 || !*a4))
  {
    v12 = a4[1];
    if (v12 == 24 || !v12)
    {
      v13 = a4[2];
      if (v13 <= 1)
      {
        *(a6 + 205) = 0;
        *(a6 + 176) = 0u;
        *(a6 + 192) = 0u;
        *(a6 + 144) = 0u;
        *(a6 + 160) = 0u;
        *(a6 + 112) = 0u;
        *(a6 + 128) = 0u;
        *(a6 + 80) = 0u;
        *(a6 + 96) = 0u;
        *(a6 + 48) = 0u;
        *(a6 + 64) = 0u;
        *(a6 + 16) = 0u;
        *(a6 + 32) = 0u;
        *a6 = 0u;
        v14 = *a1;
        if (*a1)
        {
          v66 = v9;
          v67 = v10;
          v64 = v13;
          v65 = v6;
          v62 = v7;
          v63 = v8;
          v15 = MEMORY[0x28223BE20](v14, a2, a3, a4);
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          if (!AcDetNode::getParams(v15, v26, &v60, 0) && !AcSaliencyNode::getParams(v23[1], v27 + 3, &v60))
          {
            v28 = v25;
            if (*v17)
            {
              if (AcDetNode::postProcess(*v23, *v19, *v17, v27, v25))
              {
                return;
              }

              v28 = v25;
              if (v25[13].n128_u32[3])
              {
                v29 = 0;
                v30 = &v25[15].n128_f32[1];
                do
                {
                  v31 = *(v30 - 3);
                  *&v59 = *(v30 - 2);
                  *(&v59 + 1) = v31;
                  v32 = v31 + *(v30 - 1);
                  v57 = *&v59 + *v30;
                  v58 = v32;
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v61, v60, 1, &v59 + 1, &v59, v31, *&v59);
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v61, v60, 1, &v58, &v57, v58, v57);
                  v28 = v25;
                  v33 = v59;
                  *(v30 - 3) = *(&v59 + 1);
                  *(v30 - 2) = v33;
                  v34 = v57 - *&v33;
                  *(v30 - 1) = v58 - *(&v33 + 1);
                  *v30 = v34;
                  ++v29;
                  v30 += 23;
                }

                while (v29 < v25[13].n128_u32[3]);
              }

              if (v28[71].n128_u32[2])
              {
                v35 = 0;
                v36 = &v28[73];
                do
                {
                  v37 = *(v36 - 3);
                  *&v59 = *(v36 - 2);
                  *(&v59 + 1) = v37;
                  v38 = v37 + *(v36 - 1);
                  v57 = *&v59 + *v36;
                  v58 = v38;
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v61, v60, 1, &v59 + 1, &v59, v37, *&v59);
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v61, v60, 1, &v58, &v57, v58, v57);
                  v28 = v25;
                  v39 = v59;
                  *(v36 - 3) = *(&v59 + 1);
                  *(v36 - 2) = v39;
                  v40 = v57 - *&v39;
                  *(v36 - 1) = v58 - *(&v39 + 1);
                  *v36 = v40;
                  ++v35;
                  v36 += 8;
                }

                while (v35 < v25[71].n128_u32[2]);
              }
            }

            v41 = v17[2];
            if (v41)
            {
              AcSaliencyNode::postProcess(v23[1], v19[2], v41, v27 + 3, v28);
              if (v42)
              {
                return;
              }

              v59 = 0;
              bmBufferResizeCoordConvert(*v21, v21[1], v25[374].n128_u16[0], v25[374].n128_u16[1], 1, &v59 + 1, &v59, (*v21 - 1), (v21[1] - 1));
              v28 = v25;
              v25[374].n128_u16[0] = (*(&v59 + 1) + 1.0);
              v25[374].n128_u16[1] = (*&v59 + 1.0);
              if (v25[91].n128_u32[3])
              {
                v43 = 0;
                v44 = &v25[93].n128_f32[1];
                do
                {
                  v45 = *(v44 - 3);
                  v57 = *(v44 - 2);
                  v58 = v45;
                  v46 = v45 + *(v44 - 1);
                  v55 = v57 + *v44;
                  v56 = v46;
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v28[374].n128_u16[0], v28[374].n128_u16[1], 1, &v58, &v57, v45, v57);
                  bmBufferResizeCoordConvertReversed(*v21, v21[1], v25[374].n128_u16[0], v25[374].n128_u16[1], 1, &v56, &v55, v56, v55);
                  v28 = v25;
                  v48 = v57;
                  v47 = v58;
                  *(v44 - 3) = v58;
                  *(v44 - 2) = v48;
                  v49 = v55 - v48;
                  *(v44 - 1) = v56 - v47;
                  *v44 = v49;
                  ++v43;
                  v44 += 8;
                }

                while (v43 < v25[91].n128_u32[3]);
              }
            }

            if (!v28->n128_u8[0])
            {
              v50 = v28;
              v51 = AcCommitHash();
              strncpy(&v50->n128_i8[1], v51, 0x14uLL);
              v52 = v50->n128_u8[0];
              v53 = v50 + 20 * v50->n128_u8[0];
              *(v53 + 37) = 0;
              *(v53 + 21) = xmmword_24BC6CB48;
              v54 = **v23;
              *(v53 + 117) = *(*v23 + 16);
              *(v53 + 101) = v54;
              v50->n128_u8[0] = v52 + 1;
            }
          }
        }
      }
    }
  }
}

void AcDetPostProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  *&v66[1164] = *MEMORY[0x277D85DE8];
  if (*v5 && *(v5 + 36))
  {
    v9 = *(v5 + 15);
    if (v9 != 24 && v9 != 0)
    {
      return;
    }
  }

  else if (*(v5 + 6) || *(v5 + 15))
  {
    return;
  }

  if (v5[1] && *(v5 + 44))
  {
    v11 = *(v5 + 16);
    if (v11 != 24 && v11)
    {
      return;
    }
  }

  else if (*(v5 + 7) || *(v5 + 16))
  {
    return;
  }

  if (v5[2] && *(v5 + 52))
  {
    if (*(v5 + 17) > 1u)
    {
      return;
    }
  }

  else if (*(v5 + 8) || *(v5 + 17))
  {
    return;
  }

  if (!v8)
  {
    return;
  }

  if (!v6)
  {
    return;
  }

  if (!*v8)
  {
    return;
  }

  v12 = v5;
  v13 = v4;
  v14 = v7;
  v15 = v6;
  if (AcDetNode::getParams(*v8, v6, &v55, 0) || AcSaliencyNode::getParams(v8[1], (v15 + 12), &v55))
  {
    return;
  }

  v61 = 0;
  v60 = 0;
  v16 = *v12;
  if (!*v12)
  {
    v17 = 0;
    v18 = 0;
LABEL_36:
    v59 = v17;
    v62 = v18;
    v29 = v12[1];
    if (v29)
    {
      v30 = *(v12 + 16);
      v31 = v18;
      if (v30)
      {
        v32 = *(v12 + 44);
        v33 = &v57;
        v34 = *(v12 + 7);
        v35 = *(v12 + 16);
        v31 = v18;
        do
        {
          v36 = *v32++;
          v37 = &v65[24 * v31];
          *v37 = v29 + v36;
          v38 = *(v33 - 2);
          v39 = *v33;
          v40 = *(v33 - 1) * *(v33 - 3);
          *(v37 + 2) = v40;
          *(v37 + 3) = v38;
          v41 = (v38 + 63) & 0xFFFFFFC0;
          *(v37 + 4) = v41;
          *(v37 + 5) = v39;
          if (v40 * v41 + v36 > v34)
          {
            return;
          }

          v33 += 6;
          ++v31;
        }

        while (--v35);
      }

      v60 = &v65[24 * v18];
      v63 = v30;
      v18 += v30;
    }

    else
    {
      v60 = 0;
      v63 = 0;
      v31 = v18;
    }

    v42 = v12[2];
    if (v42)
    {
      v43 = *(v12 + 17);
      if (v43)
      {
        v44 = *(v12 + 52);
        v45 = *(v12 + 8);
        v46 = &v58;
        v47 = *(v12 + 17);
        do
        {
          v48 = *v44++;
          v49 = &v65[24 * v31];
          *v49 = v42 + v48;
          v50 = *(v46 - 2);
          v51 = *v46;
          v52 = *(v46 - 1) * *(v46 - 3);
          *(v49 + 2) = v52;
          *(v49 + 3) = v50;
          v53 = (v50 + 63) & 0xFFFFFFC0;
          *(v49 + 4) = v53;
          *(v49 + 5) = v51;
          if (v52 * v53 + v48 > v45)
          {
            return;
          }

          v46 += 6;
          ++v31;
        }

        while (--v47);
      }

      v54 = &v65[24 * v18];
    }

    else
    {
      v54 = 0;
      v43 = 0;
    }

    v61 = v54;
    v64 = v43;
    bzero(v14, 0x1768uLL);
    AcDetPostProcessMultiNetOutputs(v8, v13, &v59, &v62, v15, v14);
    return;
  }

  v17 = v65;
  v18 = *(v12 + 15);
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = *(v12 + 36);
  v20 = *(v12 + 6);
  v21 = v66;
  v22 = &v56;
  v23 = *(v12 + 15);
  while (1)
  {
    v24 = *v19++;
    *(v21 - 3) = v16 + v24;
    v25 = *(v22 - 2);
    v26 = *v22;
    v27 = *(v22 - 1) * *(v22 - 3);
    *(v21 - 1) = v27;
    *v21 = v25;
    v28 = (v25 + 63) & 0xFFFFFFC0;
    v21[1] = v28;
    v21[2] = v26;
    if (v27 * v28 + v24 > v20)
    {
      break;
    }

    v22 += 6;
    v21 += 6;
    if (!--v23)
    {
      goto LABEL_36;
    }
  }
}

uint64_t AcDetUseLowThresholds(AcDetNode **a1, int a2)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  AcDetNode::useLowThresholds(v2, a2 != 0);
  return 0;
}

unint64_t acNonMaxSuppression(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    acNonMaxSuppression();
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  bmHeapsort(a1, a2, 0x24uLL, acDetRectScoreCompare);
  v6 = 0;
  v7 = a1 + 36;
  v8 = 1;
  do
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    if (v6 + 1 < v3)
    {
      v11 = a1 + 36 * v6;
      v12 = v7;
      v13 = v8;
      do
      {
        if (*(v11 + 16) != *(v12 + 16) || (acDetRectOverlap(v11, v12), v14 <= a3))
        {
          if (v13 < v10)
          {
            acNonMaxSuppression();
          }

          v15 = a1 + 36 * v10++;
          v16 = *v12;
          v17 = *(v12 + 16);
          *(v15 + 32) = *(v12 + 32);
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v12 += 36;
        ++v13;
      }

      while (v3 != v13);
    }

    ++v8;
    v7 += 36;
    v6 = v9;
    v3 = v10;
  }

  while (v9 < v10);
  return v10;
}

unint64_t acCrossClassSuppression(uint64_t a1, int a2, int a3, unsigned int a4, float a5)
{
  if (!a1)
  {
    acCrossClassSuppression();
  }

  v5 = a4;
  if (!a4)
  {
    return 0;
  }

  bmHeapsort(a1, a4, 0x24uLL, acDetRectClassCompare);
  v10 = 0;
  v11 = a1 + 36;
  v12 = 1;
  do
  {
    v13 = (v10 + 1);
    v21 = v10 + 1;
    v22 = v11;
    if (v10 + 1 < v5)
    {
      v14 = a1 + 36 * v10;
      v15 = v12;
      do
      {
        if (*(v14 + 16) != a2 || *(v11 + 16) != a3 || (acDetRectOverlap(v14, v11), v16 <= a5))
        {
          if (v15 < v13)
          {
            acCrossClassSuppression();
          }

          v17 = a1 + 36 * v13++;
          v18 = *v11;
          v19 = *(v11 + 16);
          *(v17 + 32) = *(v11 + 32);
          *v17 = v18;
          *(v17 + 16) = v19;
        }

        ++v15;
        v11 += 36;
      }

      while (v5 != v15);
    }

    ++v12;
    v11 = v22 + 36;
    v10 = v21;
    v5 = v13;
  }

  while (v21 < v13);
  return v13;
}

unint64_t acNonMaxSuppressionSmallbox(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    acNonMaxSuppressionSmallbox();
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  bmHeapsort(a1, a2, 0x24uLL, acDetRectScoreCompare);
  v6 = 0;
  v7 = a1 + 36;
  v8 = 1;
  do
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    if (v6 + 1 < v3)
    {
      v11 = a1 + 36 * v6;
      v12 = v7;
      v13 = v8;
      do
      {
        if (*(v11 + 16) != *(v12 + 16) || (acDetRectOverlapSmallbox(v11, v12), v14 <= a3))
        {
          if (v13 < v10)
          {
            acNonMaxSuppressionSmallbox();
          }

          v15 = a1 + 36 * v10++;
          v16 = *v12;
          v17 = *(v12 + 16);
          *(v15 + 32) = *(v12 + 32);
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v12 += 36;
        ++v13;
      }

      while (v3 != v13);
    }

    ++v8;
    v7 += 36;
    v6 = v9;
    v3 = v10;
  }

  while (v9 < v10);
  return v10;
}

uint64_t acRemoveOverlapBoxes(__int128 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, float a5)
{
  if (a2 > a4)
  {
    acRemoveOverlapBoxes();
  }

  if (!a2)
  {
    return 0;
  }

  v5 = a3;
  v7 = a2;
  bzero(a3, a2);
  v8 = 0;
  v9 = a1 + 9;
  v10 = 1;
  do
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = a1 + 9 * v8;
      v13 = v9;
      v14 = v10;
      do
      {
        acDetRectOverlap(v12, v13);
        if (v15 > a5)
        {
          if (v12[6] <= v13[6])
          {
            v16 = v8;
          }

          else
          {
            v16 = v14;
          }

          v5[v16] = 1;
        }

        ++v14;
        v13 += 9;
      }

      while (v7 != v14);
    }

    ++v10;
    v9 += 9;
    ++v8;
  }

  while (v11 != v7);
  result = 0;
  v18 = a1;
  do
  {
    if (!*v5++)
    {
      v20 = a1 + 36 * result;
      v21 = *v18;
      v22 = v18[1];
      *(v20 + 32) = *(v18 + 8);
      *v20 = v21;
      *(v20 + 16) = v22;
      result = (result + 1);
    }

    v18 = (v18 + 36);
    --v7;
  }

  while (v7);
  return result;
}

BOOL acCheckOverlapBox(float *a1, unsigned int a2, float *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  acDetRectOverlap(a1, a3);
  if (v8 > a4)
  {
    return 1;
  }

  v10 = a1 + 9;
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2 == v11)
    {
      break;
    }

    acDetRectOverlap(v10, a3);
    v11 = v12 + 1;
    v10 += 9;
  }

  while (v13 <= a4);
  return v12 < a2;
}

void ft::Detector::Detector(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 48) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 32) = &unk_285F8F2F0;
  operator new();
}

void sub_24BC446A4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v5);
  ik::EspressoNet::~EspressoNet(v4);
  std::unique_ptr<ft::DetectorInternals>::~unique_ptr[abi:ne200100]((v3 + 40));
  ik::PixelBufferTensor::~PixelBufferTensor(v2);
  std::function<void ()(__CVBuffer *,__CVBuffer *,ft::Rect<double> const&)>::~function(v1);
  _Unwind_Resume(a1);
}

void ***std::vector<std::string>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ik::PixelBufferTensor::PixelBufferTensor(ik::PixelBufferTensor *a1, uint64_t a2)
{
  if (*a2 && *(a2 + 8))
  {
    pixelBufferOut = 0;
    v4 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v18 = Mutable;
    if (*(a2 + 20) == 1)
    {
      v6 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7 = *MEMORY[0x277CC4DE8];
      v17.__r_.__value_.__r.__words[0] = v6;
      CFDictionarySetValue(Mutable, v7, v6);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    if (*(a2 + 32) == 1)
    {
      v8 = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 24));
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v8);
      CFRelease(v8);
    }

    v9 = CVPixelBufferCreate(v4, *a2, *(a2 + 8), *(a2 + 16), Mutable, &pixelBufferOut);
    if (!v9)
    {
      v10 = pixelBufferOut;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      ik::PixelBufferTensor::PixelBufferTensor(a1, v10);
    }

    v12 = v9;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v16, v12);
    v14 = std::string::insert(&v16, 0, "Failed to create CVPixelBuffer. Status = ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v17);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v11, "Invalid dimensions requested for CVPixelBuffer creation.");
  __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_24BC44CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      ik::Dict::~Dict(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  ik::Dict::~Dict(&a23);
  _Unwind_Resume(a1);
}

void ik::PixelBufferTensor::~PixelBufferTensor(ik::PixelBufferTensor *this)
{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C253380);
}

void ft::Detector::~Detector(ft::Detector *this)
{
  *(this + 12) = &unk_285F8F358;
  v2 = *(this + 14);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(this + 11);
    *(this + 11) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(this + 11);
    *(this + 11) = 0;
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (*v3)
  {
    AcDetDestroy(*v3);
  }

  MEMORY[0x24C253380](v3, 0x1020C405B838537);
LABEL_7:
  *(this + 4) = &unk_285F8F1D8;
  v4 = *(this + 10);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 3);
  if (v6 == this)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }
}

void ft::Detector::Detect(ft::Detector *this, CVPixelBufferRef pixelBuffer)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(this + 11);
  *(v4 + 4368) = 0;
  *(v4 + 5292) = 0;
  *(v4 + 5616) = 0;
  *(v4 + 4148) = 0;
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v7 = *(this + 11);
  *(v7 + 32) = Width;
  *(v7 + 36) = Height;
  v8 = CVPixelBufferGetWidth(*(*(this + 9) + 8));
  v9 = CVPixelBufferGetHeight(*(*(this + 9) + 8));
  v10.i64[0] = Width;
  v10.i64[1] = Height;
  v11 = vcvtq_f64_u64(v10);
  v12 = vmuld_lane_f64(v8, v11, 1);
  v13 = v9 * v11.f64[0] > v12;
  v14 = round(v12 / v11.f64[0]);
  v15 = round(v9 * v11.f64[0] / v11.f64[1]);
  if (v13)
  {
    v9 = v14;
    v15 = v8;
  }

  v16 = *(*(this + 9) + 8);
  v40[0] = 0;
  v40[1] = 0;
  v41 = v15;
  v42 = v9;
  *&v36[0] = pixelBuffer;
  *&v46 = v16;
  v17 = *(this + 3);
  if (!v17)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v17 + 48))(v17, v36, &v46, v40);
  memset(v36, 0, sizeof(v36));
  v37 = 1065353216;
  std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const(&)[6],ik::PixelBufferTensor &,0>(v40, "image", this + 32);
  *v33 = 0u;
  *__p = 0u;
  v35 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::Tensor> const&>(v33, v40);
  v18 = *(this + 13);
  v20 = *(v18 + 56);
  v21 = *(v18 + 64);
  v19 = (v18 + 56);
  if (v20 == v21)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Model has no pre-declared outputs.");
    exception->__vftable = &unk_285F8F310;
  }

  ik::EspressoNet::Predict(this + 96, v33, v19, &v46);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__move_assign(v36, &v46);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&v46);
  v22 = __p[0];
  if (!__p[0])
  {
LABEL_16:
    v26 = v33[0];
    v33[0] = 0;
    if (v26)
    {
      operator delete(v26);
    }

    v42 = COERCE_DOUBLE(&unk_285F8F1D8);
    v27 = v45;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40[0]);
    }

    v28 = 0;
    v29 = *(this + 13);
    while (1)
    {
      v30 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(v36, *(v29 + 56) + v28 * 8);
      if (!v30)
      {
        break;
      }

      ft::BmBufferFromTensor<float>((v30 + 5), &v46);
      v31 = &v40[v28];
      *v31 = v46;
      v31[2] = v47;
      v28 += 3;
      if (v28 == 72)
      {
        *&v46 = v40;
        v47 = 0;
        *(&v46 + 1) = 0;
        v39 = 0;
        v38 = 24;
        operator new();
      }
    }

    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  while (1)
  {
    v23 = *v22;
    v22[5] = &unk_285F8F1D8;
    v24 = v22[11];
    if (v24)
    {
      if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    v25 = v22[7];
    if (v25)
    {
      goto LABEL_11;
    }

LABEL_12:
    if (*(v22 + 39) < 0)
    {
      operator delete(v22[2]);
    }

    operator delete(v22);
    v22 = v23;
    if (!v23)
    {
      goto LABEL_16;
    }
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  v25 = v22[7];
  if (!v25)
  {
    goto LABEL_12;
  }

LABEL_11:
  v22[8] = v25;
  operator delete(v25);
  goto LABEL_12;
}

void sub_24BC45524(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v27);
  std::unordered_map<std::string,ik::Tensor>::~unordered_map[abi:ne200100](&a13);
  std::pair<std::string const,ik::Tensor>::~pair(&a27);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&a19);
  _Unwind_Resume(a1);
}

void sub_24BC45578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(&a22);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x24BC455A4);
}

void sub_24BC4559C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ft::BmBufferFromTensor<float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) != 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Incorrect data type requested.");
    goto LABEL_6;
  }

  result = (*(**(a1 + 40) + 24))(*(a1 + 40));
  v5 = *(a1 + 16);
  if (*(a1 + 24) - v5 != 32)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Expected a rank 4 NCHW tensor.");
LABEL_6:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v6 = v5[2];
  v7 = v5[4];
  v8 = v5[6];
  *a2 = result;
  *(a2 + 8) = v7 * v6;
  *(a2 + 12) = v8;
  *(a2 + 16) = 4 * v8;
  *(a2 + 20) = 6;
  return result;
}

void ft::EnsureOK(uint64_t a1, int *a2)
{
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v11, " / internal code = ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v10, *a2);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v12, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

{
  if (*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v11, " / internal code = ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v10, *a2);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v10;
    }

    else
    {
      v6 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v12, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v13);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_24BC457C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if (a20 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v26);
    goto LABEL_12;
  }

LABEL_10:
  if (!v27)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void ik::Tensor::~Tensor(ik::Tensor *this)
{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C253380);
}

void ik::EspressoNet::~EspressoNet(ik::EspressoNet *this)
{
  *this = &unk_285F8F358;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x24C253380);
}

{
  *this = &unk_285F8F358;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void std::__shared_ptr_emplace<ik::core::EspressoNetState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F0C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void ik::core::EspressoNetState::EspressoNetState(uint64_t a1, __int128 *a2, ik::EspressoConfig *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = (a1 + 16);
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v7;
  }

  ik::EspressoConfig::EspressoConfig((a1 + 56), a3);
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  if ((*(a3 + 28) & 1) == 0 && qword_280F7C008 != -1)
  {
    ik::core::EspressoNetState::EspressoNetState();
  }

  context = espresso_create_context();
  *v6 = context;
  if (context)
  {
    plan = espresso_create_plan();
    *(a1 + 24) = plan;
    if (plan)
    {
      if (*(a3 + 48) == 1 && (LODWORD(v20.__r_.__value_.__l.__data_) = espresso_plan_set_priority(), *(&__p.__r_.__value_.__s + 23) = 20, strcpy(&__p, "Setting plan priorty"), ik::VerifyEspressoStatus(&v20, &__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
          goto LABEL_12;
        }
      }

      else if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_12:
        __p = *a2;
        goto LABEL_15;
      }

      std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 1));
LABEL_15:
      v10 = *(a3 + 135);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(a3 + 15);
      }

      if (v10)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size + 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (size + 1 >= 0x17)
        {
          operator new();
        }

        memset(&v20, 0, sizeof(v20));
        *(&v20.__r_.__value_.__s + 23) = size + 1;
        if (size)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          memmove(&v20, p_p, size);
        }

        *(&v20.__r_.__value_.__l.__data_ + size) = 58;
        v13 = *(a3 + 135);
        if (v13 >= 0)
        {
          v14 = a3 + 112;
        }

        else
        {
          v14 = *(a3 + 14);
        }

        if (v13 >= 0)
        {
          v15 = *(a3 + 135);
        }

        else
        {
          v15 = *(a3 + 15);
        }

        v16 = std::string::append(&v20, v14, v15);
        v17 = v16->__r_.__value_.__r.__words[0];
        *&v22 = v16->__r_.__value_.__l.__size_;
        *(&v22 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
        v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p.__r_.__value_.__r.__words[0] = v17;
        __p.__r_.__value_.__l.__size_ = v22;
        *(&__p.__r_.__value_.__r.__words[1] + 7) = *(&v22 + 7);
        *(&__p.__r_.__value_.__s + 23) = v18;
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v20.__r_.__value_.__l.__data_);
        }
      }

      LODWORD(v22) = espresso_plan_add_network();
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso plan.");
  }

  else
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to create espresso context.");
  }

  exception->__vftable = &unk_285F8F310;
}

void sub_24BC46234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v27);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(v26);
  ik::EspressoConfig::~EspressoConfig((v25 + 56));
  if (*(v25 + 55) < 0)
  {
    operator delete(*(v25 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t ik::VerifyEspressoStatus(int *a1, uint64_t *a2)
{
  result = *a1;
  if (result)
  {
    v4 = a1;
    ik::LogEspressoError(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v6 = std::string::append(&v15, " [espresso error: ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v14, *v4);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v14;
    }

    else
    {
      v8 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v16, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v17, "]");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    exception->__vftable = &unk_285F8F310;
  }

  return result;
}

void sub_24BC4647C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

ik::EspressoConfig *ik::EspressoConfig::EspressoConfig(ik::EspressoConfig *this, const ik::EspressoConfig *a2)
{
  v4 = std::vector<std::string>::vector[abi:ne200100](this, a2);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  v7 = *(a2 + 49);
  *(v4 + 9) = 0u;
  v8 = v4 + 9;
  *(v4 + 49) = v7;
  *(v4 + 3) = v5;
  *(v4 + 5) = v6;
  *(v4 + 11) = 0u;
  *(v4 + 26) = *(a2 + 26);
  prime = *(a2 + 10);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__do_rehash<true>(v8, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 10));
    v10 = *(this + 80);
    v11 = prime >= *&v10;
    if (prime > *&v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v11)
  {
    v12 = vcvtps_u32_f32(*(this + 12) / *(this + 26));
    if (*&v10 < 3uLL || (v13 = vcnt_s8(v10), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v12 = std::__next_prime(v12);
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }
    }

    if (prime <= v12)
    {
      prime = v12;
    }

    if (prime < *&v10)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 11); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,espresso_simple_image_preprocessing_params_t> const&>(v8, (i + 2));
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((this + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v16 = *(a2 + 7);
    *(this + 16) = *(a2 + 16);
    *(this + 7) = v16;
  }

  return this;
}

void sub_24BC466E8(_Unwind_Exception *a1)
{
  std::unordered_map<std::string,espresso_buffer_t>::~unordered_map[abi:ne200100](v2);
  std::vector<std::string>::~vector[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void sub_24BC46704(_Unwind_Exception *a1)
{
  std::unordered_map<std::string,espresso_buffer_t>::~unordered_map[abi:ne200100](v2);
  std::vector<std::string>::~vector[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24BC4684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_simple_image_preprocessing_params_t>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,espresso_simple_image_preprocessing_params_t> const&>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_24BC46D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24BC46D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,espresso_buffer_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2ikL28IsAppleNeuralEngineAvailableEv_block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_1 = result;
  return result;
}

void ik::InferenceError::~InferenceError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x24C253380);
}

void ik::LogEspressoError(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ik::LogEspressoError(a2);
  }
}

{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ik::LogEspressoError(a2);
  }
}

void ik::core::EspressoNetState::~EspressoNetState(ik::core::EspressoNetState *this)
{
  if (*(this + 3))
  {
    espresso_plan_destroy();
  }

  if (*(this + 2))
  {
    espresso_context_destroy();
  }

  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(this + 232);
  std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(this + 192);
  ik::EspressoConfig::~EspressoConfig(this + 7);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }
}

void ik::EspressoConfig::~EspressoConfig(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[11];
  if (v2)
  {
    do
    {
      v7 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7);
  }

  v3 = this[9];
  this[9] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    v5 = this[1];
    v6 = *this;
    if (v5 != v4)
    {
      do
      {
        v8 = *(v5 - 1);
        v5 -= 3;
        if (v8 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = *this;
    }

    this[1] = v4;
    operator delete(v6);
  }
}

void ik::Dict::~Dict(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_24BC4732C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a15);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_24BC4738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    JUMPOUT(0x24BC47398);
  }

  JUMPOUT(0x24BC47344);
}

uint64_t ik::core::DataTypeFromPixelBuffer(ik::core *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v3 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v3 = 1278226488;
LABEL_10:
    if (PixelFormatType == v3)
    {
      return 0;
    }

LABEL_15:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
    goto LABEL_10;
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v3 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v3 = 1278226488;
LABEL_10:
    if (PixelFormatType == v3)
    {
      return 0;
    }

LABEL_15:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
    goto LABEL_10;
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v3 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v3 = 1278226488;
LABEL_10:
    if (PixelFormatType == v3)
    {
      return 0;
    }

LABEL_15:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
    goto LABEL_10;
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType != 32)
      {
        v3 = 1094862674;
        goto LABEL_10;
      }

      return 0;
    }

    if (PixelFormatType == 1111970369)
    {
      return 0;
    }

    v3 = 1278226488;
LABEL_10:
    if (PixelFormatType == v3)
    {
      return 0;
    }

LABEL_15:
    v5 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v9, v5);
    v7 = std::string::insert(&v9, 0, "Unsupported CVPixelBuffer type: ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v10.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v10.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v10);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType != 1717856627 && PixelFormatType != 1717855600)
    {
      goto LABEL_15;
    }
  }

  else if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
    goto LABEL_10;
  }

  return 1;
}

void sub_24BC4752C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_24BC47660(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_24BC47680(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ik::core::PixelBufferStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F088;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void ik::core::PixelBufferStorage::~PixelBufferStorage(CVPixelBufferRef *this)
{
  CVPixelBufferRelease(this[1]);
}

{
  CVPixelBufferRelease(this[1]);

  JUMPOUT(0x24C253380);
}

void *ik::core::PixelBufferStorage::Data(CVPixelBufferRef *this)
{
  BaseAddress = CVPixelBufferGetBaseAddress(this[1]);
  if (!BaseAddress)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to get CVPixelBuffer's data. Ensure the buffer was locked.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v3 = BaseAddress;
  CVPixelBufferGetDataSize(this[1]);
  return v3;
}

void ik::core::PixelBufferStorage::Strides(ik::core **this@<X0>, __CVBuffer *a2@<X1>, void *a3@<X8>)
{
  ik::core::DataTypeFromPixelBuffer(this[1], a2);
  CVPixelBufferGetBytesPerRow(this[1]);
  ik::core::ChannelCountFromPixelBuffer(this[1], v5);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  operator new();
}

void ik::core::PixelBufferStorage::CopyData(CVPixelBufferRef *this)
{
  if (!CVPixelBufferLockBaseAddress(this[1], 1uLL))
  {
    (*(*this + 3))(this);
    (*(*this + 4))(&__p, this);
    ik::StridedArray::StridedArray();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to lock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_24BC47A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  ik::core::CorePixelBufferScopeLock::~CorePixelBufferScopeLock(&a9);
  _Unwind_Resume(a1);
}

void ik::TensorStorage::CopyData(ik::TensorStorage *this)
{
  (*(*this + 24))(this);
  (*(*this + 32))(&__p, this);
  ik::StridedArray::StridedArray();
}

void sub_24BC47B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC47CB0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

uint64_t std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x24C253360);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<unsigned char *,std::shared_ptr<unsigned char []>::__shared_ptr_default_delete<unsigned char [],unsigned char>,std::allocator<unsigned char>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000024BC6CD4DLL)
  {
    if (((v2 & 0x800000024BC6CD4DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024BC6CD4DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024BC6CD4DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ik::core::ChannelCountFromPixelBuffer(ik::core *this, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v3 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v5 = 1278226488;
LABEL_14:
    if (PixelFormatType != v5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v5 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
LABEL_8:
    if (PixelFormatType == v3)
    {
      return 4;
    }

LABEL_16:
    v6 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, v6);
    v8 = std::string::insert(&v10, 0, "Unsupported CVPixelBuffer type: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v3 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v5 = 1278226488;
LABEL_14:
    if (PixelFormatType != v5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v5 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
LABEL_8:
    if (PixelFormatType == v3)
    {
      return 4;
    }

LABEL_16:
    v6 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, v6);
    v8 = std::string::insert(&v10, 0, "Unsupported CVPixelBuffer type: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v3 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v5 = 1278226488;
LABEL_14:
    if (PixelFormatType != v5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v5 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
LABEL_8:
    if (PixelFormatType == v3)
    {
      return 4;
    }

LABEL_16:
    v6 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, v6);
    v8 = std::string::insert(&v10, 0, "Unsupported CVPixelBuffer type: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 1;
}

{
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if (PixelFormatType <= 1278226533)
  {
    if (PixelFormatType <= 1111970368)
    {
      if (PixelFormatType == 32)
      {
        return 4;
      }

      v3 = 1094862674;
      goto LABEL_8;
    }

    if (PixelFormatType == 1111970369)
    {
      return 4;
    }

    v5 = 1278226488;
LABEL_14:
    if (PixelFormatType != v5)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (PixelFormatType > 1717855599)
  {
    if (PixelFormatType == 1717856627)
    {
      return 1;
    }

    v5 = 1717855600;
    goto LABEL_14;
  }

  if (PixelFormatType != 1278226534)
  {
    v3 = 1380401729;
LABEL_8:
    if (PixelFormatType == v3)
    {
      return 4;
    }

LABEL_16:
    v6 = PixelFormatType;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, v6);
    v8 = std::string::insert(&v10, 0, "Unsupported CVPixelBuffer type: ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return 1;
}

void sub_24BC47F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void ik::core::CorePixelBufferScopeLock::~CorePixelBufferScopeLock(ik::core::CorePixelBufferScopeLock *this)
{
  *this = &unk_285F8F1F8;
  if (!CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {

    JUMPOUT(0x24C253380);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  *this = &unk_285F8F1F8;
  if (CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_24BC4802C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x24C253380](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

char *std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void ik::PixelBufferScopeLock::~PixelBufferScopeLock(ik::PixelBufferScopeLock *this)
{
  *this = &unk_285F8F1F8;
  if (!CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {

    JUMPOUT(0x24C253380);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  *this = &unk_285F8F1F8;
  if (CVPixelBufferUnlockBaseAddress(*(this + 1), *(this + 2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Failed to unlock pixel buffer.");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_24BC48424(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  MEMORY[0x24C253380](v1, 0x10A1C40AFD1EA57);
  _Unwind_Resume(a1);
}

void ik::EspressoNet::Predict(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  for (i = *(a2 + 16); i; i = *i)
  {
    *v20 = &unk_285F8F298;
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v20[8], i[2], i[3]);
    }

    else
    {
      v8 = *(i + 1);
      v21 = i[4];
      *&v20[8] = v8;
    }

    v22 = *v6;
    (*(*i[10] + 16))(i[10], v20);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(*&v20[8]);
    }
  }

  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (!std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(v6 + 24, v9))
      {
        v19 = espresso_network_bind_buffer();
        HIBYTE(v18[2]) = 21;
        strcpy(v18, "Binding output buffer");
        ik::VerifyEspressoStatus(&v19, v18);
        if (SHIBYTE(v18[2]) < 0)
        {
          operator delete(v18[0]);
        }

        LOWORD(v18[0]) = 0;
        ik::EspressoTensor::EspressoTensor();
      }

      v11 = std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(v6 + 24, v9);
      if (!v11)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v13 = v11[7];
      v12 = v11[8];
      if (v12 != v13)
      {
        if (((v12 - v13) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v14 = v11[11];
      v17 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(v14 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v14 + 16))(v14);
          std::__shared_weak_count::__release_weak(v17);
        }
      }

      v9 += 24;
    }

    while (v9 != v10);
  }

  LODWORD(v18[0]) = espresso_plan_execute_sync();
  v20[23] = 14;
  strcpy(v20, "Executing plan");
  ik::VerifyEspressoStatus(v18, v20);
  if ((v20[23] & 0x80000000) != 0)
  {
    operator delete(*v20);
  }

  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = *(v6 + 56);
  prime = *(v6 + 25);
  if (prime == 1)
  {
    prime = 2;
LABEL_32:
    std::__hash_table<std::__hash_value_type<std::string,espresso_buffer_t>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,espresso_buffer_t>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,espresso_buffer_t>>>::__do_rehash<true>(a4, prime);
    goto LABEL_33;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(v6 + 25));
  }

  if (prime)
  {
    goto LABEL_32;
  }

LABEL_33:
  for (j = *(v6 + 26); j; j = *j)
  {
    std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::EspressoTensor> const&>(a4, (j + 2));
  }
}

void sub_24BC489F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ik::core::EspressoBinder::~EspressoBinder(void **this)
{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x24C253380);
}

void ik::core::EspressoBinder::Bind(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 > 1)
  {
    if (v3 == 2)
    {
      *&__p[2] = *(a2 + 16);
      v6 = espresso_network_bind_input_vimagebuffer_argb8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      ik::VerifyEspressoStatus(&v6, __p);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_12;
      }

      *&__p[2] = *(a2 + 16);
      v6 = espresso_network_bind_input_vimagebuffer_planar8();
      HIBYTE(__p[2]) = 21;
      strcpy(__p, "Binding vImage_Buffer");
      ik::VerifyEspressoStatus(&v6, __p);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        *&__p[2] = *(a2 + 16);
        v6 = espresso_network_bind_input_vimagebuffer_rgba8();
        HIBYTE(__p[2]) = 21;
        strcpy(__p, "Binding vImage_Buffer");
        ik::VerifyEspressoStatus(&v6, __p);
        goto LABEL_10;
      }

LABEL_12:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unsupported image buffer type");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *&__p[2] = *(a2 + 16);
    v6 = espresso_network_bind_input_vimagebuffer_bgra8();
    HIBYTE(__p[2]) = 21;
    strcpy(__p, "Binding vImage_Buffer");
    ik::VerifyEspressoStatus(&v6, __p);
  }

LABEL_10:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BC48DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ik::core::EspressoBinder::Bind(ik::core::EspressoBinder *this, __CVBuffer *a2)
{
  v4 = espresso_network_bind_cvpixelbuffer();
  v3 = 21;
  strcpy(__p, "Binding CVPixelBuffer");
  ik::VerifyEspressoStatus(&v4, __p);
  if (v3 < 0)
  {
    operator delete(*__p);
  }
}

void sub_24BC48E6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC48F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::find<std::string>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v20 == v8)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v16 == v8)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void ik::EspressoTensor::~EspressoTensor(ik::EspressoTensor *this)
{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  JUMPOUT(0x24C253380);
}

{
  *this = &unk_285F8F1D8;
  v2 = *(this + 6);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void sub_24BC49594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ik::core::EspressoBufferStorage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void std::__shared_ptr_emplace<ik::core::EspressoBufferStorage>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 201) == 1)
  {
    free(*(a1 + 32));
  }
}

void ik::core::EspressoBufferStorage::~EspressoBufferStorage(void **this)
{
  if (*(this + 177) == 1)
  {
    free(this[1]);
  }
}

{
  if (*(this + 177) == 1)
  {
    free(this[1]);
  }

  JUMPOUT(0x24C253380);
}

int8x16_t ik::core::EspressoBufferStorage::Strides@<Q0>(ik::core::EspressoBufferStorage *this@<X0>, void *a2@<X8>)
{
  rank = espresso_buffer_get_rank();
  if (rank >= 6)
  {
    v8 = rank;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v15, v8);
    v10 = std::string::insert(&v15, 0, "Unsupported tensor rank: ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v13.i64[0] = v10->__r_.__value_.__r.__words[2];
    v12 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = vshlq_n_s64(*(this + 152), 2uLL);
  result = vextq_s8(v5, v5, 8uLL);
  v7 = vshlq_n_s64(*(this + 136), 2uLL);
  v12 = result;
  v13 = vextq_s8(v7, v7, 8uLL);
  v14 = 4 * *(this + 16);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (rank)
  {
    if (((8 * rank) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24BC498F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_24BC49D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24BC49D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 40) = &unk_285F8F1D8;
      v3 = *(v2 + 88);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 56);
      if (v4)
      {
        *(v2 + 64) = v4;
        operator delete(v4);
      }

      if (*(v2 + 39) < 0)
      {
        operator delete(*(v2 + 16));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::EspressoTensor> const&>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__construct_node_hash<std::pair<std::string const,ik::EspressoTensor> const&>();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_24BC4A2D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24BC4A44C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::EspressoTensor>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *v2;
      v2[5] = &unk_285F8F1D8;
      v4 = v2[11];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          break;
        }
      }

      v5 = v2[7];
      if (v5)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = v2[7];
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2[8] = v5;
    operator delete(v5);
    goto LABEL_8;
  }

LABEL_12:
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const(&)[6],ik::PixelBufferTensor &,0>(uint64_t a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = *(a3 + 8);
  *(a1 + 40) = 0;
  *(a1 + 24) = &unk_285F8F1D8;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a3 + 48);
  *(a1 + 64) = *(a3 + 40);
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_24BC4A6E8(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  std::pair<std::string const,ik::Tensor>::pair[abi:ne200100]<char const(&)[6],ik::PixelBufferTensor &,0>(v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,ik::Tensor>::~pair(uint64_t a1)
{
  *(a1 + 24) = &unk_285F8F1D8;
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::vector<std::string>::vector[abi:ne200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_24BC4AA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

ft::DetectorInternals *ft::DetectorInternals::DetectorInternals(ft::DetectorInternals *this)
{
  bzero(this, 0x1109uLL);
  bzero(this + 4364, 0x1690uLL);
  v6 = 0;
  v5 = 15;
  strcpy(__p, "Create detector");
  Params = AcDetCreate(this, &v6);
  ft::EnsureOK(__p, &Params);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 14;
  strcpy(__p, "Start detector");
  Params = AcDetStart(*this);
  ft::EnsureOK(__p, &Params);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 19;
  strcpy(__p, "Get detector params");
  Params = AcDetGetParams(*this, this + 2, this + 44);
  ft::EnsureOK(__p, &Params);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  return this;
}

void sub_24BC4AC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AcDetNode ****std::unique_ptr<ft::DetectorInternals>::~unique_ptr[abi:ne200100](AcDetNode ****result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      AcDetDestroy(*v1);
    }

    MEMORY[0x24C253380](v1, 0x1020C405B838537);
    return v2;
  }

  return result;
}

uint64_t std::function<void ()(__CVBuffer *,__CVBuffer *,ft::Rect<double> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ik::Tensor> const&>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::__construct_node_hash<std::pair<std::string const,ik::Tensor> const&>();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_24BC4B118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_24BC4B270(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
    if ((*(v2 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>>::~unique_ptr[abi:ne200100](v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v2 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v2 + 16));
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,ik::Tensor>,void,0>(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,ik::Tensor>,void,0>(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = &unk_285F8F1D8;
  v3 = *(a2 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a2 + 40);
  if (v4)
  {
    *(a2 + 48) = v4;
    operator delete(v4);
  }

  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void **std::__hash_table<std::__hash_value_type<std::string,ik::Tensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::Tensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::Tensor>>>::~__hash_table(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,ik::Tensor>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void **std::unordered_map<std::string,ik::Tensor>::~unordered_map[abi:ne200100](void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::allocator_traits<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ik::Tensor>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,ik::Tensor>,void,0>(a1, (v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,ik::EspressoTensor>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ik::EspressoTensor>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ik::EspressoTensor>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      while (1)
      {
        v5 = *v4;
        v4[5] = &unk_285F8F1D8;
        v6 = v4[11];
        if (v6)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            break;
          }
        }

        v7 = v4[7];
        if (v7)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v5;
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v7 = v4[7];
      if (!v7)
      {
        goto LABEL_9;
      }

LABEL_8:
      v4[8] = v7;
      operator delete(v7);
      goto LABEL_9;
    }

LABEL_13:
    *(a1 + 16) = 0;
    v8 = *(a1 + 8);
    if (v8)
    {
      bzero(*a1, 8 * v8);
    }

    *(a1 + 24) = 0;
  }

  v9 = *a2;
  *a2 = 0;
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v13 = a2[2];
  v12 = a2 + 2;
  v11 = v13;
  v14 = *(v12 - 1);
  *(a1 + 16) = v13;
  *(a1 + 8) = v14;
  *(v12 - 1) = 0;
  v15 = v12[1];
  *(a1 + 24) = v15;
  *(a1 + 32) = *(v12 + 4);
  if (v15)
  {
    v16 = *(v11 + 8);
    v17 = *(a1 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v16 >= v17)
      {
        v16 %= v17;
      }
    }

    else
    {
      v16 &= v17 - 1;
    }

    *(*a1 + 8 * v16) = a1 + 16;
    *v12 = 0;
    v12[1] = 0;
  }
}

uint64_t bmBufferResizeCHW(uint64_t result, int a2, unsigned int a3, uint64_t a4)
{
  if (a2)
  {
    bmBufferResizeCHW();
  }

  v4 = *(a4 + 20);
  if (v4 != *(result + 20))
  {
    bmBufferResizeCHW();
  }

  if (v4)
  {
    bmBufferResizeCHW();
  }

  v5 = *(result + 8);
  v6 = v5 / a3;
  if (v5 / a3 * a3 != v5)
  {
    bmBufferResizeCHW();
  }

  v7 = *(a4 + 8);
  v8 = v7 / a3;
  if (v8 * a3 != v7)
  {
    bmBufferResizeCHW();
  }

  v9 = *(result + 12);
  v10 = *(a4 + 12);
  v11 = 2 * v9;
  v12 = 2 * v9 - 2;
  v14 = v7 < a3 || v10 == 0;
  v57 = v14;
  if (v5 < a3)
  {
    if (!v5 || !v9)
    {
      goto LABEL_85;
    }

    if (v7 && v10)
    {
      bmBufferResizeCHW();
    }

LABEL_86:
    bmBufferResizeCHW();
  }

  if (v10 != v11)
  {
    if (!v5 || !v9)
    {
      goto LABEL_85;
    }

    if (v7 && v10)
    {
      bmBufferResizeCHW();
    }

    goto LABEL_86;
  }

  if (v8 != 2 * v6)
  {
    if (v5 && v9)
    {
      if (v7 && v10)
      {
        bmBufferResizeCHW();
      }

      goto LABEL_86;
    }

LABEL_85:
    bmBufferResizeCHW();
  }

  v53 = *(a4 + 12);
  v15 = 0;
  v16 = *(result + 16);
  v17 = *(a4 + 16);
  v18 = (v11 - 1);
  v55 = result;
  if (a3 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = a3;
  }

  v54 = v19;
  v56 = a4;
  do
  {
    v20 = v15 * v6;
    if (*(result + 12))
    {
      v21 = *(result + 8) > v20;
    }

    else
    {
      v21 = 0;
    }

    if (!v21)
    {
      goto LABEL_85;
    }

    if (!*(a4 + 12) || *(a4 + 8) <= (v15 * v8))
    {
      goto LABEL_86;
    }

    v22 = *result + *(result + 16) * v20;
    v23 = *a4 + (*(a4 + 16) * v15 * v8);
    if (v8 > 1)
    {
      if (!v53)
      {
        bmBufferResizeCHW();
      }

      if (v9)
      {
        v24 = 0;
        v25 = 1;
        while (1)
        {
          v26 = v24 >> 1;
          if (v6 <= v24 >> 1)
          {
            break;
          }

          v27 = 0;
          v28 = v23 + v17 * v24;
          if (v26 + 1 >= v6)
          {
            v29 = v24 >> 1;
          }

          else
          {
            v29 = v26 + 1;
          }

          v30 = v22 + v26 * v16;
          v31 = v22 + v29 * v16;
          if (v24)
          {
            v32 = 1;
          }

          else
          {
            v32 = 2;
          }

          do
          {
            v33 = v27 ^ 1;
            v34 = v27 >> 1;
            if (v34 + 1 >= v9)
            {
              v35 = v27 >> 1;
            }

            else
            {
              v35 = v34 + 1;
            }

            v36 = v33 & 1;
            if (v27)
            {
              v37 = v32;
            }

            else
            {
              v37 = 0;
            }

            v38 = (2 - v32) << (v33 & 1);
            if (v27)
            {
              v39 = 2 - v32;
            }

            else
            {
              v39 = 0;
            }

            v40 = (*(v30 + v34) << ((v25 & 1) + v36)) + v37 * *(v30 + v35) + v38 * *(v31 + v34) + v39 * *(v31 + v35);
            v41 = v40 + 2;
            v42 = v40 + 5;
            if (v41 >= 0)
            {
              v42 = v41;
            }

            *(v28 + v27++) = v42 >> 2;
          }

          while (v18 != v27);
          *(v28 + v18) = *(v28 + v12);
          ++v25;
          ++v24;
          if (v25 >= v8)
          {
            goto LABEL_50;
          }
        }
      }

      bmBufferResizeCHW();
    }

LABEL_50:
    if (!v9)
    {
      bmBufferResizeCHW();
    }

    if (v57)
    {
      bmBufferResizeCHW();
    }

    v43 = 0;
    v44 = v22 + v16 * (v6 - 1);
    v45 = v23 + (v17 * (v8 - 1));
    do
    {
      v46 = v43 >> 1;
      if (v46 + 1 >= v9)
      {
        v47 = v43 >> 1;
      }

      else
      {
        v47 = v46 + 1;
      }

      v48 = *(v44 + v46);
      v49 = 2 * *(v44 + v47);
      if ((v43 & 1) == 0)
      {
        v49 = 0;
      }

      v50 = ((2 * v48) << ((v43 & 1) == 0)) + v49;
      v51 = v50 + 2;
      v52 = v50 + 5;
      if (v51 >= 0)
      {
        v52 = v51;
      }

      *(v45 + v43++) = v52 >> 2;
    }

    while (v18 != v43);
    *(v45 + v18) = *(v45 + v12);
    ++v15;
    result = v55;
    a4 = v56;
  }

  while (v15 != v54);
  return result;
}

void bmBufferPartialResizeCHW(_DWORD *a1, int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  if (a2 != 1)
  {
    bmBufferPartialResizeCHW();
  }

  v8 = a1;
  v9 = a1[2];
  v10 = v9 / a3;
  if (v9 / a3 * a3 != v9)
  {
    bmBufferPartialResizeCHW();
  }

  v11 = a8;
  v12 = a8[2];
  v13 = v12 / a3;
  if (v13 * a3 != v12)
  {
    bmBufferPartialResizeCHW();
  }

  v14 = a1[3];
  v15 = a8[3];
  if (v14)
  {
    v16 = v9 >= a3;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    if (v9 && v14)
    {
      if (v12)
      {
        if (v15)
        {
          bmBufferPartialResizeCHW();
        }
      }

      goto LABEL_85;
    }

LABEL_84:
    AcAttrNode::postProcess();
  }

  if (v15 < v14)
  {
    if (!v9 || !v14)
    {
      goto LABEL_84;
    }

    if (v12 && v15)
    {
      bmBufferPartialResizeCHW();
    }

LABEL_85:
    AcAttrNode::postProcess();
  }

  if (v13 < v10)
  {
    if (!v9 || !v14)
    {
      goto LABEL_84;
    }

    if (v12 && v15)
    {
      bmBufferPartialResizeCHW();
    }

    goto LABEL_85;
  }

  if (a1[5] != 6)
  {
    if (!v9 || !v14)
    {
      goto LABEL_84;
    }

    if (v12 && v15)
    {
      bmBufferPartialResizeCHW();
    }

    goto LABEL_85;
  }

  if (a8[5] != 6)
  {
    if (!v9 || !v14)
    {
      goto LABEL_84;
    }

    if (v12 && v15)
    {
      bmBufferPartialResizeCHW();
    }

    goto LABEL_85;
  }

  v74 = a8[4];
  v17 = (v74 * v13);
  if (a4 < a5)
  {
    v19 = 0;
    v73 = a1[4];
    v85 = v10 - 1;
    v83 = (v10 - 1);
    v84 = (v13 - 1);
    v20 = (v15 - 1);
    v71 = a4;
    v78 = a5;
    if (a3 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = a3;
    }

    v67 = v21;
    v68 = (v74 * v13);
    v82 = v10;
    v81 = v12 / a3;
    v79 = (v14 - 1);
    v80 = v20;
    v77 = v14 - 1;
    while (1)
    {
      v22 = v19 * v10;
      if (!v8[3] || v8[2] <= v22)
      {
        goto LABEL_84;
      }

      if (!v11[3] || v11[2] <= (v19 * v13))
      {
        goto LABEL_85;
      }

      v72 = v19;
      v76 = *v8 + v8[4] * v22;
      v75 = (*v11 + (v11[4] * v19 * v13));
      bzero(v75, v17);
      v24 = v71;
      do
      {
        v25 = (v24 / v84) * v83;
        v26 = vcvtms_s32_f32(v25);
        v27 = bmClamp(v25 - floorf(v25), 0.0, 1.0);
        v28 = bmClamp(v26 - 1, 0, v85);
        if (v10 <= v28)
        {
          AcAttrNode::postProcess();
        }

        v29 = v28;
        v30 = bmClamp(v26, 0, v85);
        if (v10 <= v30)
        {
          AcAttrNode::postProcess();
        }

        v31 = v30;
        v32 = bmClamp(v26 + 1, 0, v85);
        if (v10 <= v32)
        {
          AcAttrNode::postProcess();
        }

        v33 = v32;
        v34 = bmClamp(v26 + 2, 0, v85);
        if (v10 <= v34)
        {
          AcAttrNode::postProcess();
        }

        if (v24 >= v13)
        {
          AcAttrNode::postProcess();
        }

        v87 = v24;
        if (a6 < a7)
        {
          v88 = v76 + v29 * v73;
          v35 = v76 + v31 * v73;
          v36 = v76 + v33 * v73;
          v37 = v76 + v34 * v73;
          v38 = vabds_f32(-1.0, v27);
          v39 = (((v38 * (v38 * 3.75)) + ((v38 * (v38 * -0.75)) * v38)) + (v38 * -6.0)) + 3.0;
          v40 = fabsf(v27);
          v41 = ((v40 * (v40 * -2.25)) + ((v40 * (v40 * 1.25)) * v40)) + 1.0;
          v42 = vabds_f32(1.0, v27);
          v43 = ((v42 * (v42 * -2.25)) + ((v42 * (v42 * 1.25)) * v42)) + 1.0;
          v44 = vabds_f32(2.0, v27);
          v45 = (((v44 * (v44 * 3.75)) + ((v44 * (v44 * -0.75)) * v44)) + (v44 * -6.0)) + 3.0;
          v46 = a6;
          do
          {
            v47 = (v46 / v80) * v79;
            v48 = vcvtms_s32_f32(v47);
            v49 = bmClamp(v47 - floorf(v47), 0.0, 1.0);
            v50 = bmClamp(v48 - 1, 0, v77);
            v51 = bmClamp(v48, 0, v77);
            v52 = bmClamp(v48 + 1, 0, v77);
            v53 = bmClamp(v48 + 2, 0, v77);
            v54 = vabds_f32(-1.0, v49);
            v55 = fabsf(v49);
            v56 = ((v55 * (v55 * -2.25)) + ((v55 * (v55 * 1.25)) * v55)) + 1.0;
            v57 = vabds_f32(1.0, v49);
            v58 = ((v57 * (v57 * -2.25)) + ((v57 * (v57 * 1.25)) * v57)) + 1.0;
            v59 = vabds_f32(2.0, v49);
            v60 = (((v54 * (v54 * 3.75)) + ((v54 * (v54 * -0.75)) * v54)) + (v54 * -6.0)) + 3.0;
            v61 = (((v59 * (v59 * 3.75)) + ((v59 * (v59 * -0.75)) * v59)) + (v59 * -6.0)) + 3.0;
            *&v75[4 * v46++ + (v74 * v87)] = (((v41 * ((((v56 * *(v35 + 4 * v51)) + (v60 * *(v35 + 4 * v50))) + (v58 * *(v35 + 4 * v52))) + (v61 * *(v35 + 4 * v53)))) + (v39 * ((((v56 * *(v88 + 4 * v51)) + (v60 * *(v88 + 4 * v50))) + (v58 * *(v88 + 4 * v52))) + (v61 * *(v88 + 4 * v53))))) + (v43 * ((((v56 * *(v36 + 4 * v51)) + (v60 * *(v36 + 4 * v50))) + (v58 * *(v36 + 4 * v52))) + (v61 * *(v36 + 4 * v53))))) + (v45 * ((((v56 * *(v37 + 4 * v51)) + (v60 * *(v37 + 4 * v50))) + (v58 * *(v37 + 4 * v52))) + (v61 * *(v37 + 4 * v53))));
          }

          while (a7 != v46);
        }

        v24 = v87 + 1;
        v10 = v82;
        v13 = v81;
      }

      while (v87 + 1 != v78);
      v19 = v72 + 1;
      v8 = a1;
      v11 = a8;
      v17 = v68;
      if (v72 + 1 == v67)
      {
        return;
      }
    }
  }

  v62 = 0;
  if (a3 <= 1)
  {
    v63 = 1;
  }

  else
  {
    v63 = a3;
  }

  do
  {
    if (v8[3])
    {
      v64 = v8[2] > v62 * v10;
    }

    else
    {
      v64 = 0;
    }

    if (!v64)
    {
      goto LABEL_84;
    }

    v65 = v62 * v13;
    if (v11[3])
    {
      v66 = v11[2] > v65;
    }

    else
    {
      v66 = 0;
    }

    if (!v66)
    {
      goto LABEL_85;
    }

    bzero((*v11 + v11[4] * v65), v17);
    ++v62;
    --v63;
  }

  while (v63);
}

void bmBufferResizeCoordConvert(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, float *a6, float *a7, float a8, float a9)
{
  if (a5 >= 3)
  {
    bmBufferResizeCoordConvert();
  }

  if (!a1 || !a2 || !a3 || !a4)
  {
    bmBufferResizeCoordConvert();
  }

  if (a5)
  {
    v14 = a3;
    v15 = a1;
    v16 = a4;
    v17 = a2;
    v18 = bmMinimum(a3 / a1, a4 / a2);
    *a6 = v18 * a8;
    *a7 = v18 * a9;
    if (a5 != 2)
    {
      return;
    }

    *a6 = ((v14 - (v18 * v15)) * 0.5) + *a6;
    v19 = ((v16 - (v18 * v17)) * 0.5) + *a7;
  }

  else
  {
    *a6 = (a8 / a1) * a3;
    v19 = (a9 / a2) * a4;
  }

  *a7 = v19;
}

float bmBufferResizeCoordConvertReversed(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, float *a6, float *a7, float a8, float a9)
{
  if (a5 >= 3)
  {
    bmBufferResizeCoordConvertReversed();
  }

  if (!a1 || !a2 || !a3 || !a4)
  {
    bmBufferResizeCoordConvertReversed();
  }

  v14 = a3;
  if (a5)
  {
    v15 = a1;
    v16 = a4;
    v17 = a2;
    v18 = bmMinimum(v14 / a1, a4 / a2);
    v19 = 0.0;
    v20 = (v16 - (v18 * v17)) * 0.5;
    if (a5 == 2)
    {
      v19 = (v14 - (v18 * v15)) * 0.5;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = 1.0 / v18;
    *a6 = v21 * (a8 - v19);
    v22 = a9 - v20;
  }

  else
  {
    *a6 = (a8 / v14) * a1;
    v21 = a9 / a4;
    v22 = a2;
  }

  result = v21 * v22;
  *a7 = result;
  return result;
}

uint64_t TtTrkRpnCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 4294967292;
  if (a1 && a2)
  {
    if (a3)
    {
      operator new();
    }
  }

  return result;
}

uint64_t TtTrkRpnDestroy(TtTrkRpnNode **a1)
{
  if (!a1)
  {
    return 4294967292;
  }

  v2 = *a1;
  if (!v2)
  {
    return 4294967292;
  }

  TtTrkRpnNode::~TtTrkRpnNode(v2);
  MEMORY[0x24C253380]();
  MEMORY[0x24C253380](a1, 0x10A0C40FC37F48CLL);
  return 0;
}

uint64_t TtTrkRpnStart(uint64_t *a1, uint64_t a2)
{
  if (a1 && a2 && (v2 = *a1) != 0)
  {
    return TtTrkRpnNode::restart(v2, a2);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t TtTrkRpnStop(void *a1)
{
  result = 4294967292;
  if (a1)
  {
    if (*a1)
    {
      return 0;
    }

    else
    {
      return 4294967292;
    }
  }

  return result;
}

uint64_t TtTrkRpnGetParams(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      result = 0;
      v5 = *(a1 + 24);
      *a3 = *(a1 + 8);
      *(a3 + 16) = v5;
      v6 = *(a1 + 40);
      v7 = *(a1 + 56);
      v8 = *(a1 + 88);
      *(a3 + 64) = *(a1 + 72);
      *(a3 + 80) = v8;
      *(a3 + 32) = v6;
      *(a3 + 48) = v7;
      v9 = *(a1 + 104);
      v10 = *(a1 + 120);
      v11 = *(a1 + 152);
      *(a3 + 128) = *(a1 + 136);
      *(a3 + 144) = v11;
      *(a3 + 96) = v9;
      *(a3 + 112) = v10;
      v12 = *(a1 + 168);
      v13 = *(a1 + 184);
      v14 = *(a1 + 200);
      *(a3 + 208) = *(a1 + 216);
      *(a3 + 176) = v13;
      *(a3 + 192) = v14;
      *(a3 + 160) = v12;
    }
  }

  return result;
}

uint64_t TtTrkRpnGetExtState(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        v5 = *(a3 + 12);
        if (v5)
        {
          v6 = *(a3 + 20);
          if (v6)
          {
            if (*(a3 + 24) && *(a3 + 32) && *(a3 + 40))
            {
              if (*(a3 + 44))
              {
                *a4 = 4;
                *(a4 + 4) = a2;
                *(a4 + 12) = 1864;
                *(a4 + 16) = v5;
                *(a4 + 24) = v6;
                *(a4 + 28) = *(a3 + 24);
                *(a4 + 36) = *(a3 + 40);
                *(a4 + 28) = *(a3 + 32);
                *(a4 + 36) = *(a3 + 44);
                v8 = ttMemBlockCoalesceNoSort(a4 + 4, 4);
                result = 0;
                *a4 = v8;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t TtTrkRpnExemplarPreProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              result = TtTrkRpnNode::setUpNetBuffers(a5, (a1 + 8), a7);
              if (!result)
              {
                v13 = a2;
                if (!*(a2 + 8) || (result = TtTrkRpnNode::restart(*a1, a4), v13 = a2, !result))
                {
                  v14 = *a1;

                  return TtTrkRpnNode::exemplarPreProcess(v14, v13, (a3 + 184), (a3 + 180), a4, a6);
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

uint64_t TtTrkRpnInstancePreProcess(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1 || !*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              result = TtTrkRpnNode::setUpNetBuffers(a5, (a1 + 8), a7);
              if (!result)
              {
                if (*(a2 + 8))
                {
                  return 4294967294;
                }

                else
                {
                  v13 = *a1;

                  return TtTrkRpnNode::instancePreProcess(v13, a2, a3 + 184, a3 + 180, a4, a6);
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

uint64_t TtTrkRpnPreProcessCropResizeRef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (!a2)
  {
    return result;
  }

  if (!*a1)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!a6)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if ((*(a3 + 12) & 3) != 0)
  {
    return result;
  }

  v10 = a1;
  result = TtTrkRpnNode::setUpNetBuffers(a7, (a1 + 8), a1 + 220);
  if (result)
  {
    return result;
  }

  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = a6;
  v18 = v10;
  if (*(a4 + 80))
  {
    *(a4 + 80) = 0;
    v19 = *(v10 + 220);
    if (!v19)
    {
      return 4294967292;
    }

    v20 = *(v10 + 232);
    if (v20 != *(v10 + 28) * *(v10 + 20))
    {
      return 4294967292;
    }

    v21 = *(v10 + 228);
    if (v21 != *(v10 + 24))
    {
      return 4294967292;
    }

    v22 = *(v10 + 236);
    result = 4294967292;
    if (v22 < v20 || (v22 & 0x3F) != 0)
    {
      return result;
    }

    v23 = rtcv::simCropResizeExtendMean(*a3, *(a3 + 12) >> 2, *(a3 + 8), *(a3 + 16), 0, 0, 0, v19, a6[28], a6[29], v21 / fmaxf(a6[31], 1.0), v20 >> 2, v21, v22, a6 + 1858);
    v14 = a4;
    v15 = a5;
    v16 = a3;
    v17 = a6;
    v18 = v10;
    if (!v23)
    {
      return 4294967288;
    }
  }

  if (!*(v14 + 81))
  {
    return 0;
  }

  *(v14 + 81) = 0;
  if (!*(v18 + 244))
  {
    return 4294967292;
  }

  v24 = *(v18 + 256);
  if (v24 != *(v18 + 44) * *(v18 + 36) || *(v18 + 252) != *(v18 + 40))
  {
    return 4294967292;
  }

  v25 = *(v18 + 260);
  result = 4294967292;
  if (v25 >= v24 && (v25 & 0x3F) == 0)
  {
    v26 = v17 + 1858;
    v27 = v18;
    v28 = v16;
    v29 = v17;
    rtcv::simImageChMean(*v16, *(v16 + 12) >> 2, *(v16 + 8), 0, *v15, *(v15 + 8), v17 + 1858);
    if (rtcv::simCropResizeExtendMean(*v28, *(v28 + 12) >> 2, *(v28 + 8), *(v28 + 16), 0, 0, 0, *(v27 + 244), v29[24], v29[25], *(v27 + 252) / fmaxf(v29[27], 1.0), *(v27 + 256) >> 2, *(v27 + 252), *(v27 + 260), v26))
    {
      return 0;
    }

    return 4294967288;
  }

  return result;
}

__n128 TtTrkRpnGetExemplarCrop(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    if (a1[116].n128_u8[0])
    {
      result = a1[6];
      *a2 = result;
    }
  }

  return result;
}

__n128 TtTrkRpnGetInstanceCrop(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    if (a1[116].n128_u8[1])
    {
      result = a1[7];
      *a2 = result;
    }
  }

  return result;
}

__n128 TtTrkRpnExemplarPostProcess(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  if (a1 && *a1 && a2 && a3 && a5 && a6 && !TtTrkRpnNode::setUpNetBuffers(a3, (a1 + 8), a1 + 220) && !TtTrkRpnNode::exemplarPostProcess(*a1, a1 + 268, 2u, a2, a5) && *a6 <= 2uLL)
  {
    v11 = &a6[20 * *a6];
    *(v11 + 21) = xmmword_24BC6CE81;
    *(v11 + 37) = 0;
    v12 = TtTrkRpnNode::config(*a1);
    result = *v12;
    *(v11 + 97) = v12[1].n128_u32[0];
    *(v11 + 81) = result;
    ++*a6;
  }

  return result;
}

uint64_t TtTrkRpnInstancePostProcess(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (!a1)
  {
    return 4294967292;
  }

  if (!*a1)
  {
    return 4294967292;
  }

  result = 4294967292;
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {
        if (a6)
        {
          result = TtTrkRpnNode::setUpNetBuffers(a3, (a1 + 8), a1 + 220);
          if (!result)
          {
            result = TtTrkRpnNode::instancePostProcess(*a1, a1 + 316, 2, a2, a5, (a6 + 184), a6 + 45);
            if (!result)
            {
              v11 = *a6;
              if (v11 <= 2)
              {
                result = 0;
                *a6 = v11 + 1;
                return result;
              }

              return 4294967292;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t bmQsort(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 >= 2 && a3)
  {
    v8[4] = v4;
    v8[5] = v5;
    if ((a3 & 3) != 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = a3 >> 2;
    }

    v7 = swap8;
    v8[0] = a3;
    v8[1] = v6;
    if ((a3 & 3) == 0)
    {
      v7 = swap32;
    }

    v8[2] = a4;
    v8[3] = v7;
    return qsort_internal(result, a2, v8);
  }

  return result;
}

uint64_t swap32(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4)
  {
    v5 = result + *a4 * a3;
    v6 = result + *a4 * a2;
    if (v4 < 8uLL || ((v7 = ((4 * v4 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4, v5 + v7 > v6) ? (v8 = v6 + v7 > v5) : (v8 = 0), v8))
    {
      v11 = (result + *a4 * a3);
      v12 = (result + *a4 * a2);
    }

    else
    {
      v9 = a4[1] & 7;
      v10 = v4 - v9;
      LODWORD(v4) = v4 & 7;
      v11 = (v5 + 4 * v10);
      v12 = (v6 + 4 * v10);
      v13 = (v6 + 16);
      v14 = (v5 + 16);
      do
      {
        v15 = *(v13 - 1);
        v16 = *v13;
        v17 = *v14;
        *(v13 - 1) = *(v14 - 1);
        *v13 = v17;
        *(v14 - 1) = v15;
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v10 -= 8;
      }

      while (v10);
      if (!v9)
      {
        return result;
      }
    }

    do
    {
      v18 = *v12;
      *v12++ = *v11;
      *v11++ = v18;
      LODWORD(v4) = v4 - 1;
    }

    while (v4);
  }

  return result;
}

double swap8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4)
  {
    v5 = a1 + *a4 * a3;
    v6 = a1 + *a4 * a2;
    v7 = v4;
    if (v4 < 8uLL || ((v8 = (v4 - 1) + 1, v5 + v8 > v6) ? (v9 = v6 + v8 > v5) : (v9 = 0), v9))
    {
      v11 = (a1 + *a4 * a3);
      v12 = (a1 + *a4 * a2);
      goto LABEL_10;
    }

    if (v4 < 0x20uLL)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v10 = a4[1] - (a4[1] & 0x1FLL);
    v14 = (v6 + 16);
    v15 = (v5 + 16);
    v16 = v10;
    do
    {
      v17 = *(v14 - 1);
      v18 = *v14;
      v19 = *v15;
      *(v14 - 1) = *(v15 - 1);
      *v14 = v19;
      *(v15 - 1) = v17;
      *v15 = v18;
      v14 += 2;
      v15 += 2;
      v16 -= 32;
    }

    while (v16);
    if ((v4 & 0x1F) != 0)
    {
      if ((v4 & 0x1Fu) < 8uLL)
      {
        v12 = (v6 + v10);
        v11 = (v5 + v10);
        LODWORD(v4) = v4 & 0x1F;
        goto LABEL_10;
      }

LABEL_17:
      v20 = v4 & 7;
      v21 = v4 - v20;
      LODWORD(v4) = v4 & 7;
      v11 = (v5 + v21);
      v12 = (v6 + v21);
      v22 = (v6 + v10);
      v23 = (v5 + v10);
      v24 = v10 + v20 - v7;
      do
      {
        *&v17 = *v22;
        *v22++ = *v23;
        *v23++ = v17;
        v24 += 8;
      }

      while (v24);
      if (!v20)
      {
        return *&v17;
      }

      do
      {
LABEL_10:
        v13 = *v12;
        *v12++ = *v11;
        *v11++ = v13;
        LODWORD(v4) = v4 - 1;
      }

      while (v4);
    }
  }

  return *&v17;
}

uint64_t qsort_internal(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = result;
  if (a2 >= 7)
  {
    do
    {
      v7 = 0;
      v8 = 0;
      v9 = v4 - 1;
      do
      {
        if ((*(a3 + 16))(v5 + *a3 * v9, v5 + *a3 * v8) >= 1)
        {
          (*(a3 + 24))(v5, v7++, v8, a3);
        }

        ++v8;
      }

      while (v9 != v8);
      (*(a3 + 24))(v5, v4 - 1, v7, a3);
      result = qsort_internal(v5, v7, a3);
      v5 += *a3 + *a3 * v7;
      v4 += ~v7;
    }

    while (v4 > 6);
  }

  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      v10 = i;
      do
      {
        v11 = v10 - 1;
        result = (*(a3 + 16))(v5 + *a3 * (v10 - 1), v5 + *a3 * v10);
        if (result < 1)
        {
          break;
        }

        result = (*(a3 + 24))(v5, v10 - 1, v10, a3);
        --v10;
      }

      while (v11);
    }
  }

  return result;
}

uint64_t bmHeapsort(uint64_t a1, unint64_t a2, unint64_t a3, int (*a4)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 3) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = a3 >> 2;
  }

  v6 = swap8;
  v25[0] = a3;
  v25[1] = v5;
  if ((a3 & 3) == 0)
  {
    v6 = swap32;
  }

  v26 = a4;
  v27 = v6;
  if (a2 < 7)
  {
    if (a2 >= 2)
    {
      if (v26(a1, v25[0] + a1) >= 1)
      {
        v27(a1, 0, 1, v25);
      }

      if (a2 != 2)
      {
        v17 = 2 - a2;
        v18 = -3;
        do
        {
          if (v26(a1 + v25[0] * (v18 + 4), a1 + v25[0] * (v18 + 5)) >= 1)
          {
            v27(a1, v18 + 4, v18 + 5, v25);
            if (v26(a1 + v25[0] * (v18 + 3), a1 + v25[0] * (v18 + 4)) >= 1)
            {
              v27(a1, v18 + 3, v18 + 4, v25);
              if (v18 != -3 && v26(a1 + v25[0] * (v18 + 2), a1 + v25[0] * (v18 + 3)) >= 1)
              {
                v27(a1, v18 + 2, v18 + 3, v25);
                if (v18 != -2 && v26(a1 + v25[0] * (v18 + 1), a1 + v25[0] * (v18 + 2)) >= 1)
                {
                  v27(a1, v18 + 1, v18 + 2, v25);
                  if (v18 != -1 && v26(a1 + v25[0] * v18, a1 + v25[0] * (v18 + 1)) >= 1)
                  {
                    v27(a1, v18, v18 + 1, v25);
                  }
                }
              }
            }
          }

          ++v18;
        }

        while (v17 + v18 != -3);
      }
    }
  }

  else if (a2 >= 1)
  {
    v7 = ((a2 - 2) / 2);
    v8 = a2;
    v9 = a2 - 1;
    do
    {
      v11 = 2 * v7;
      if (2 * v7 < v9)
      {
        v12 = v7;
        do
        {
          if (v26(a1 + v25[0] * (v11 | 1), a1 + v25[0] * v12) > 0)
          {
            v13 = v11 + 1;
          }

          else
          {
            v13 = v12;
          }

          v14 = v11 + 2;
          if (v14 <= v9 && v26(a1 + v25[0] * v14, a1 + v25[0] * v13) > 0)
          {
            v13 = v14;
          }

          if (v13 == v12)
          {
            break;
          }

          v27(a1, v12, v13, v25);
          v11 = 2 * v13;
          v12 = v13;
        }

        while (2 * v13 < v9);
      }

      v10 = v7-- <= 0;
    }

    while (!v10);
    if (v8 != 1)
    {
      v19 = v8 & 0x7FFFFFFF;
      do
      {
        v27(a1, 0, v19 - 1, v25);
        v20 = v19 - 2;
        if (v19 == 2)
        {
          break;
        }

        v21 = 0;
        v22 = 0;
        do
        {
          if (v26(a1 + v25[0] * (v21 | 1), a1 + v25[0] * v22) > 0)
          {
            v23 = v21 + 1;
          }

          else
          {
            v23 = v22;
          }

          v24 = v21 + 2;
          if (v24 <= v20 && v26(a1 + v25[0] * v24, a1 + v25[0] * v23) > 0)
          {
            v23 = v24;
          }

          if (v23 == v22)
          {
            break;
          }

          v27(a1, v22, v23, v25);
          v21 = 2 * v23;
          v22 = v23;
        }

        while (2 * v23 < v20);
        v10 = v19-- <= 2;
      }

      while (!v10);
    }
  }

  return 0;
}

uint64_t isort_internal(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v5 = result;
    for (i = 1; i != a2; ++i)
    {
      v7 = i;
      do
      {
        v8 = v7 - 1;
        result = (*(a3 + 16))(v5 + *a3 * (v7 - 1), v5 + *a3 * v7);
        if (result < 1)
        {
          break;
        }

        result = (*(a3 + 24))(v5, v7 - 1, v7, a3);
        --v7;
      }

      while (v8);
    }
  }

  return result;
}

void sub_24BC4D4F4(_Unwind_Exception *a1)
{
  MEMORY[0x24C253380](v1, 0x1090C40C7AF87F3);

  _Unwind_Resume(a1);
}

void sub_24BC4D62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = __cxa_begin_catch(exception_object);
    v12 = ft::GetOsLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [FTBipartiteMatcher computeMatchingForCostMatrix:v11 withRowCount:? columnCount:?];
    }

    __cxa_end_catch();
    JUMPOUT(0x24BC4D600);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC4D804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    v16 = __cxa_begin_catch(a1);
    v17 = ft::GetOsLog(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FTBipartiteMatcher computeMatchingForCostMatrix:v16 withRowCount:? columnCount:?];
    }

    __cxa_end_catch();
    JUMPOUT(0x24BC4D7B0);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

float bmMinimum(float result, float a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

uint64_t bmMinimum(uint64_t result, unsigned int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmMinimum(uint64_t result, int a2)
{
  if (result >= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

float bmMaximum(float result, float a2)
{
  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t bmMaximum(uint64_t result, unsigned int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmMaximum(uint64_t result, int a2)
{
  if (result <= a2)
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t bmClamp(signed int a1, unsigned int a2, signed int a3)
{
  if (a3 >= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a3;
  }

  if (a1 >= a2)
  {
    return v3;
  }

  else
  {
    return a2;
  }
}

float bmClamp(float a1, float a2, float a3)
{
  if (a3 >= a1)
  {
    a3 = a1;
  }

  if (a1 >= a2)
  {
    return a3;
  }

  else
  {
    return a2;
  }
}

float bmSoftmax2(float a1, float a2)
{
  if (a1 >= a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  v4 = expf(a1 - v3);
  v5 = expf(a2 - v3);
  return v5 / (v4 + v5);
}

void bmSoftmax(float32x4_t *a1, float *a2, unsigned int a3, __n128 a4)
{
  v5 = a2;
  a4.n128_u32[0] = a1->i32[0];
  if (a3 >= 2)
  {
    v6 = &a1->f32[1];
    do
    {
      v7 = *v6++;
      v8 = v7;
      if (a4.n128_f32[0] < v7)
      {
        a4.n128_f32[0] = v8;
      }
    }

    while (v6 < &a1->f32[a3]);
  }

  if (!a3)
  {
    return;
  }

  v9 = 0;
  if (a3 < 8)
  {
    goto LABEL_12;
  }

  if ((a2 - a1) <= 0x1F)
  {
    goto LABEL_12;
  }

  v9 = a3 & 0xFFFFFFF8;
  v11 = vdupq_lane_s32(a4.n128_u64[0], 0);
  v12 = a1 + 1;
  v13 = a2 + 4;
  v14 = v9;
  do
  {
    v15 = vsubq_f32(*v12, v11);
    *(v13 - 1) = vsubq_f32(v12[-1], v11);
    *v13 = v15;
    v12 += 2;
    v13 += 8;
    v14 -= 8;
  }

  while (v14);
  if (v9 != a3)
  {
LABEL_12:
    v16 = &a1->f32[v9];
    v17 = &a2[v9];
    v18 = a3 - v9;
    do
    {
      v19 = *v16++;
      *v17++ = v19 - a4.n128_f32[0];
      --v18;
    }

    while (v18);
  }

  if (a3 == 1)
  {
    LODWORD(v20) = 0;
    a4.n128_u64[0] = 0;
    v21 = a2;
  }

  else
  {
    v20 = a3 & 0xFFFFFFFE;
    v21 = &a2[v20];
    v22 = a2 + 1;
    a4.n128_u32[0] = 0;
    v23 = v20;
    do
    {
      v44 = a4.n128_f32[0];
      v24 = *v22;
      v25 = expf(*(v22 - 1));
      a4.n128_f32[0] = (v44 + v25) + expf(v24);
      v22 += 2;
      v23 -= 2;
    }

    while (v23);
    if (v20 == a3)
    {
      goto LABEL_21;
    }
  }

  v26 = a3 - v20;
  do
  {
    v45 = a4;
    v27 = *v21++;
    v28 = expf(v27);
    v29 = v45;
    v29.n128_f32[0] = v45.n128_f32[0] + v28;
    a4 = v29;
    --v26;
  }

  while (v26);
LABEL_21:
  v46 = a4.n128_f32[0];
  if (a3 <= 3)
  {
    LODWORD(v30) = 0;
    v31 = v5;
LABEL_26:
    v38 = a3 - v30;
    do
    {
      *v31 = expf(*v31) / v46;
      ++v31;
      --v38;
    }

    while (v38);
    return;
  }

  v30 = a3 & 0xFFFFFFFC;
  v31 = &v5[v30];
  v39 = vdupq_lane_s32(a4.n128_u64[0], 0);
  v32 = v30;
  do
  {
    v43 = *v5;
    v40 = expf(COERCE_FLOAT(HIDWORD(*v5)));
    v33.f32[0] = expf(v43.f32[0]);
    v33.f32[1] = v40;
    v41 = v33;
    v34 = expf(v43.f32[2]);
    v35 = v41;
    v35.f32[2] = v34;
    v42 = v35;
    v36 = expf(v43.f32[3]);
    v37 = v42;
    v37.f32[3] = v36;
    *v5 = vdivq_f32(v37, v39);
    v5 += 4;
    v32 -= 4;
  }

  while (v32);
  if (v30 != a3)
  {
    goto LABEL_26;
  }
}

void bmSoftmax(float32x4_t *a1, float *a2, unsigned int a3, unsigned int a4, double a5)
{
  v5 = a3;
  v6 = a2;
  LODWORD(a5) = a1->i32[0];
  v7 = 4 * a4;
  if (a4 * a3 > a4)
  {
    v8 = &a1->f32[v7 / 4];
    do
    {
      if (*&a5 < *v8)
      {
        *&a5 = *v8;
      }

      v8 = (v8 + v7);
    }

    while (v8 < &a1->f32[a4 * a3]);
  }

  if (a3)
  {
    v9 = 0;
    if (a3 < 8)
    {
      goto LABEL_13;
    }

    if (a4 != 1)
    {
      goto LABEL_13;
    }

    if ((a2 - a1) < 0x20)
    {
      goto LABEL_13;
    }

    v9 = a3 & 0xFFFFFFF8;
    v10 = vdupq_lane_s32(*&a5, 0);
    v11 = a1 + 1;
    v12 = a2 + 4;
    v13 = v9;
    do
    {
      v14 = vsubq_f32(*v11, v10);
      *(v12 - 1) = vsubq_f32(v11[-1], v10);
      *v12 = v14;
      v11 += 2;
      v12 += 8;
      v13 -= 8;
    }

    while (v13);
    if (v9 != a3)
    {
LABEL_13:
      v15 = a4 * v9;
      v16 = a3 - v9;
      do
      {
        a2[v15] = a1->f32[v15] - *&a5;
        v15 += a4;
        --v16;
      }

      while (v16);
    }

    v17 = 0.0;
    v18 = a2;
    v19 = a3;
    do
    {
      v17 = v17 + expf(*v18);
      v18 = (v18 + v7);
      --v19;
    }

    while (v19);
    do
    {
      *v6 = expf(*v6) / v17;
      v6 = (v6 + v7);
      --v5;
    }

    while (v5);
  }
}

uint64_t bmArgMax(signed __int8 *a1, int a2, int a3)
{
  if (a2 == 1)
  {
    return 0;
  }

  if (!a2)
  {
    bmArgMax();
  }

  LODWORD(v3) = 0;
  v4 = *a1;
  v5 = 1;
  v6 = a3;
  do
  {
    v7 = a1[v6];
    if (v7 <= v4)
    {
      v3 = v3;
    }

    else
    {
      v3 = v5;
    }

    if (v7 > v4)
    {
      v4 = a1[v6];
    }

    ++v5;
    v6 += a3;
  }

  while (a2 != v5);
  return v3;
}

__n128 ft::TrackPool::TrackPool(__n128 *a1, __n128 *a2)
{
  result = *a2;
  v3 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  return result;
}

{
  result = *a2;
  v3 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = 0;
  a1[2].n128_u64[0] = 0;
  a1[2].n128_u64[1] = 0;
  return result;
}

void ft::TrackPool::~TrackPool(ft::TrackPool *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {
    v3 = *(this + 4);
    v4 = *(this + 3);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(this + 3);
    }

    *(this + 4) = v2;
    operator delete(v4);
  }
}

uint64_t ft::TrackPool::GetTrackById@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(this + 24);
  v4 = *(this + 32);
  if (v3 == v4)
  {
LABEL_4:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 16) == a2)
      {
        break;
      }

      v3 += 2;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v6 = v3[1];
    *a3 = v5;
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t ft::TrackPool::MaybeCreateNewTrack@<X0>(uint64_t result@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  if (*(result + 8) != 1 || *result > ((*(result + 32) - *(result + 24)) >> 4))
  {
    v6 = v3;
    v7 = v4;
    v5[0] = 0;
    v5[8] = 0;
    ft::TrackPool::CreateNewTrack(a2, v5, a3);
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

void ft::TrackPool::CreateNewTrack(int **a1@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (*(a2 + 8) == 1)
  {
    v17 = *a2;
    v3 = *a1;
    v4 = a1[1];
    if (v4 != 5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = atomic_fetch_add(&ft::ReserveNewTrackId(void)::track_id_ctr, 1uLL) | 0x100000000;
    v3 = *a1;
    v4 = a1[1];
    if (v4 != 5)
    {
LABEL_3:
      if (v4 == 6)
      {
        v5 = *v3;
        v6 = *(v3 + 2);
        if (v5 == 1835819371 && v6 == 28257)
        {
          *v16 = xmmword_24BC6CF40;
          *&v16[16] = xmmword_24BC6CF50;
          operator new();
        }
      }

      goto LABEL_17;
    }
  }

  v8 = *v3;
  v9 = *(v3 + 4);
  if (v8 == 2020569712 && v9 == 121)
  {
    operator new();
  }

LABEL_17:
  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string<std::string_view,0>(&__dst, a1);
  v13 = std::string::insert(&__dst, 0, "Unknown track type encountered: ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&v16[16] = *(&v13->__r_.__value_.__l + 2);
  *v16 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, v16);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_24BC4E354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      std::shared_ptr<ft::Track>::~shared_ptr[abi:ne200100](v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  goto LABEL_8;
}

void ft::TrackPool::CreateNewDetectionlessTrack(void *a1@<X8>)
{
  v2[0] = 0;
  v2[8] = 0;
  ft::TrackPool::CreateNewTrack(&ft::ProxyTrack::KIND, v2, a1);
}

uint64_t ft::TrackPool::RetireLostTracks(ft::TrackPool *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  v1 = (this + 24);
  if (v2 != v3)
  {
    while ((*(*v2 + 240) & 1) == 0)
    {
      v2 += 2;
      if (v2 == v3)
      {
        v2 = *(this + 4);
        goto LABEL_15;
      }
    }

    if (v2 != v3)
    {
      v5 = v2 + 2;
      if (v2 + 2 != v3)
      {
        do
        {
          v6 = *v5;
          if ((*(*v5 + 240) & 1) == 0)
          {
            v7 = v5[1];
            *v5 = 0;
            v5[1] = 0;
            v8 = v2[1];
            *v2 = v6;
            v2[1] = v7;
            if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            v2 += 2;
          }

          v5 += 2;
        }

        while (v5 != v3);
        v3 = *(this + 4);
      }
    }
  }

LABEL_15:

  return std::vector<std::shared_ptr<ft::Track>>::erase(v1, v2, v3);
}

uint64_t std::vector<std::shared_ptr<ft::Track>>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v13 = a2;
      if (v5 == a2)
      {
LABEL_16:
        a1[1] = v13;
        return a2;
      }
    }

    else
    {
      v6 = *a1;
      v7 = -*a1;
      v8 = *a1 + a2;
      v9 = *a1 + a3;
      do
      {
        v10 = (v9 + v7);
        v11 = *(v9 + v7);
        *v10 = 0;
        v10[1] = 0;
        v12 = *(v8 + v7 + 8);
        *(v8 + v7) = v11;
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v8 += 16;
        v9 += 16;
      }

      while (v9 + v7 != v5);
      v5 = a1[1];
      v13 = v8 - v6;
      if (v5 == v13)
      {
        goto LABEL_16;
      }
    }

    do
    {
      v14 = *(v5 - 8);
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v5 -= 16;
    }

    while (v5 != v13);
    goto LABEL_16;
  }

  return a2;
}

BOOL ft::TrackPool::RemoveTrack(uint64_t a1, uint64_t a2)
{
  if (!*a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v2 = (a1 + 24);
  if (v3 != v4)
  {
    v5 = *(*a2 + 16);
    while (*(*v3 + 16) != v5)
    {
      v3 += 2;
      if (v3 == v4)
      {
        v3 = *(a1 + 32);
        goto LABEL_18;
      }
    }

    if (v3 != v4)
    {
      v7 = v3 + 2;
      if (v3 + 2 != v4)
      {
        do
        {
          v8 = *v7;
          if (*(*v7 + 16) != v5)
          {
            v9 = v7[1];
            *v7 = 0;
            v7[1] = 0;
            v10 = v3[1];
            *v3 = v8;
            v3[1] = v9;
            if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v11 = a1;
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
              a1 = v11;
            }

            v3 += 2;
          }

          v7 += 2;
        }

        while (v7 != v4);
        v4 = *(a1 + 32);
      }
    }
  }

LABEL_18:
  v6 = v3 != v4;
  std::vector<std::shared_ptr<ft::Track>>::erase(v2, v3, v4);
  return v6;
}

BOOL ft::TrackPool::RemoveTrackById(ft::TrackPool *this, uint64_t a2)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  v2 = (this + 24);
  if (v3 != v4)
  {
    while (*(*v3 + 16) != a2)
    {
      v3 += 2;
      if (v3 == v4)
      {
        v3 = *(this + 4);
        goto LABEL_15;
      }
    }

    if (v3 != v4)
    {
      v7 = v3 + 2;
      if (v3 + 2 != v4)
      {
        do
        {
          v8 = *v7;
          if (*(*v7 + 16) != a2)
          {
            v9 = v7[1];
            *v7 = 0;
            v7[1] = 0;
            v10 = v3[1];
            *v3 = v8;
            v3[1] = v9;
            if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }

            v3 += 2;
          }

          v7 += 2;
        }

        while (v7 != v4);
        v4 = *(this + 4);
      }
    }
  }

LABEL_15:
  std::vector<std::shared_ptr<ft::Track>>::erase(v2, v3, v4);
  return v3 != v4;
}

void ft::TrackPool::Reset(ft::TrackPool *this)
{
  v2 = *(this + 3);
  for (i = *(this + 4); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  *(this + 4) = v2;
}

void ft::TrackPool::ReincarnateTrack(uint64_t a1@<X0>, uint64_t a2@<X1>, int **a3@<X2>, void *a4@<X8>)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v8 = (a1 + 24);
  if (v9 != v10)
  {
    v11 = *(*a2 + 16);
    while (*(*v9 + 16) != v11)
    {
      v9 += 2;
      if (v9 == v10)
      {
        v9 = *(a1 + 32);
        goto LABEL_16;
      }
    }

    if (v9 != v10)
    {
      v12 = v9 + 2;
      if (v9 + 2 != v10)
      {
        do
        {
          v13 = *v12;
          if (*(*v12 + 16) != v11)
          {
            v14 = v12[1];
            *v12 = 0;
            v12[1] = 0;
            v15 = v9[1];
            *v9 = v13;
            v9[1] = v14;
            if (v15)
            {
              if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v15->__on_zero_shared)(v15);
                std::__shared_weak_count::__release_weak(v15);
              }
            }

            v9 += 2;
          }

          v12 += 2;
        }

        while (v12 != v10);
        v10 = *(a1 + 32);
      }
    }
  }

LABEL_16:
  std::vector<std::shared_ptr<ft::Track>>::erase(v8, v9, v10);
  v16 = *(*a2 + 16);
  v17 = 1;
  ft::TrackPool::CreateNewTrack(a3, &v16, a4);
}

void ft::TrackPool::UpdateForeignTracks(uint64_t this@<X0>, const Frame *a2@<X1>, void *a3@<X8>)
{
  v3 = this;
  v61 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *v44 = 0u;
  *__p = 0u;
  v46 = 1065353216;
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  if (v5 != v6)
  {
    __asm { FMOV            V8.2S, #-1.0 }

    do
    {
      if (*(v5 + 104) != 1)
      {
        std::vector<ft::Observation>::push_back[abi:ne200100](a3, v5);
        goto LABEL_4;
      }

      v13 = *(v5 + 96);
      v43 = v13;
      if ((v13 & 0x100000000) != 0)
      {
        OsLog = ft::GetOsLog(this);
        this = os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR);
        if (this)
        {
          ft::TrackPool::UpdateForeignTracks(&v41, v42, OsLog);
        }
      }

      else
      {
        if (v44[1])
        {
          v14 = vcnt_s8(v44[1]);
          v14.i16[0] = vaddlv_u8(v14);
          if (v14.u32[0] > 1uLL)
          {
            v15 = v13;
            if (v13 >= v44[1])
            {
              v15 = v13 % v44[1];
            }
          }

          else
          {
            v15 = (v44[1] - 1) & v13;
          }

          v17 = *(v44[0] + v15);
          if (v17)
          {
            v18 = *v17;
            if (v18)
            {
              if (v14.u32[0] < 2uLL)
              {
                while (1)
                {
                  v20 = v18[1];
                  if (v13 == v20)
                  {
                    if (v18[2] == v13)
                    {
                      goto LABEL_38;
                    }
                  }

                  else if ((v20 & (v44[1] - 1)) != v15)
                  {
                    goto LABEL_29;
                  }

                  v18 = *v18;
                  if (!v18)
                  {
                    goto LABEL_29;
                  }
                }
              }

              do
              {
                v19 = v18[1];
                if (v13 == v19)
                {
                  if (v18[2] == v13)
                  {
LABEL_38:
                    v33 = ft::GetOsLog(this);
                    this = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
                    if (this)
                    {
                      *buf = 134217984;
                      *&buf[4] = v43;
                      _os_log_error_impl(&dword_24BC30000, v33, OS_LOG_TYPE_ERROR, "Duplicate track ID provided in observation: %lld", buf, 0xCu);
                    }

                    goto LABEL_4;
                  }
                }

                else
                {
                  if (v19 >= v44[1])
                  {
                    v19 %= v44[1];
                  }

                  if (v19 != v15)
                  {
                    break;
                  }
                }

                v18 = *v18;
              }

              while (v18);
            }
          }
        }

LABEL_29:
        std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(v44, &v43);
        v21 = *(v3 + 24);
        v22 = *(v3 + 32);
        if (v21 == v22)
        {
LABEL_32:
          v47 = 0uLL;
          v39 = v43;
          v40 = 1;
          ft::TrackPool::CreateNewTrack(&ft::ProxyTrack::KIND, &v39, buf);
        }

        while (1)
        {
          v23 = *v21;
          if (*(*v21 + 16) == v43)
          {
            break;
          }

          v21 += 2;
          if (v21 == v22)
          {
            goto LABEL_32;
          }
        }

        v24 = v21[1];
        *&v47 = *v21;
        *(&v47 + 1) = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        v25 = *(v5 + 16);
        *buf = *v5;
        v49 = v25;
        v26 = *(v5 + 32);
        v27 = *(v5 + 48);
        v28 = *(v5 + 80);
        v52 = *(v5 + 64);
        v53 = v28;
        v50 = v26;
        v51 = v27;
        v29 = *(v5 + 96);
        v30 = *(v5 + 112);
        v31 = *(v5 + 128);
        v57 = *(v5 + 144);
        v55 = v30;
        v56 = v31;
        v54 = v29;
        v58 = 0;
        v59 = 0;
        v60 = _D8;
        this = ft::Track::Update(v23, a2, buf);
        v32 = *(&v47 + 1);
        if (*(&v47 + 1) && !atomic_fetch_add((*(&v47 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }
      }

LABEL_4:
      v5 += 152;
    }

    while (v5 != v6);
  }

  memset(buf, 0, sizeof(buf));
  *&v49 = 0;
  v34 = *(v3 + 24);
  v35 = *(v3 + 32);
  *&v47 = buf;
  BYTE8(v47) = 0;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v36 = __p[0];
  if (__p[0])
  {
    do
    {
      v37 = *v36;
      operator delete(v36);
      v36 = v37;
    }

    while (v37);
  }

  v38 = v44[0];
  v44[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }
}

void sub_24BC4F080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::unordered_map<long long,CMTime>::~unordered_map[abi:ne200100](va);
  v11 = *v9;
  if (!*v9)
  {
    _Unwind_Resume(a1);
  }

  *(v9 + 8) = v11;
  operator delete(v11);
  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<ft::Track>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void std::__shared_ptr_emplace<ft::KalmanTrack>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

void std::__shared_ptr_emplace<ft::ProxyTrack>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F8F1A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

_BYTE *std::string::basic_string<std::string_view,0>(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void ***std::__exception_guard_exceptions<std::vector<std::shared_ptr<ft::Track>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

__CFString *FTGetChipIdentifier()
{
  v0 = MGGetSInt64Answer();
  if (v0 <= 32783)
  {
    if (v0 >= 28672)
    {
      if ((v0 - 28672) < 2)
      {
        return @"H7";
      }

      if ((v0 - 0x8000) < 2 || v0 == 32771)
      {
        return @"H8";
      }

      goto LABEL_45;
    }

    v1 = v0 - 48;
    if ((v0 - 24624) > 0x22)
    {
LABEL_7:
      if ((v0 - 24608) >= 3)
      {
        goto LABEL_45;
      }

      return @"H14";
    }

    if (((1 << v1) & 0xF) == 0)
    {
      if (((1 << v1) & 0x70000) == 0)
      {
        if (((1 << v1) & 0x700000000) == 0)
        {
          goto LABEL_7;
        }

        return @"H17";
      }

      return @"H16";
    }

    return @"H15";
  }

  if (v0 > 33041)
  {
    if (v0 <= 33071)
    {
      if (v0 == 33042)
      {
        return @"H14";
      }

      if (v0 == 33056 || v0 == 33058)
      {
        return @"H15";
      }
    }

    else
    {
      v3 = v0 - 48;
      if ((v0 - 33072) <= 0x22)
      {
        if (((1 << v3) & 5) == 0)
        {
          if (((1 << v3) & 0x50000) == 0)
          {
            if (((1 << v3) & 0x500000000) != 0)
            {
              return @"H18";
            }

            goto LABEL_45;
          }

          return @"H17";
        }

        return @"H16";
      }
    }
  }

  else
  {
    if (v0 <= 32815)
    {
      if (v0 > 32799)
      {
        if (v0 == 32800 || v0 == 32807)
        {
          return @"H11";
        }
      }

      else
      {
        if ((v0 - 32784) < 2)
        {
          return @"H9";
        }

        if (v0 == 32789)
        {
          return @"H10";
        }
      }

      goto LABEL_45;
    }

    if (v0 <= 33026)
    {
      if (v0 == 32816)
      {
        return @"H12";
      }

      if (v0 != 33025)
      {
        goto LABEL_45;
      }

      return @"H13";
    }

    if (v0 == 33027)
    {
      return @"H13";
    }

    if (v0 == 33040)
    {
      return @"H14";
    }
  }

LABEL_45:
  v4 = v0;
  v5 = ft::GetOsLog(v0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    FTGetChipIdentifier_cold_1(v4, v5);
  }

  return 0;
}

id FTResolveEspressoNetPath(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 contentsOfDirectoryAtPath:@"/System/Library/ImagingNetworks" error:0];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([v9 hasSuffix:{@".espresso.net", v18}])
          {
            v10 = [@"/System/Library/ImagingNetworks" stringByAppendingPathComponent:v9];
            [v4 addObject:v10];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v11 = SearchForEspressoNetInPaths(v4, v1);
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v11;
    v13 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Celestial"];
    if (!v14)
    {
      v14 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/Celestial.framework"];
    }

    v15 = SearchForEspressoNetInBundle(v14, &cfstr_Classifiers.isa, v1);
    v12 = v15;
    if (v15)
    {
      v13 = v15;
    }

    else
    {
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = SearchForEspressoNetInBundle(v16, &stru_285F8FD18.isa, v1);
    }
  }

  return v13;
}

id SearchForEspressoNetInBundle(NSBundle *a1, NSString *a2, NSString *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    v8 = [(NSBundle *)v5 pathsForResourcesOfType:@".net" inDirectory:v6];
    v9 = SearchForEspressoNetInPaths(v8, v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id SearchForEspressoNetInPaths(void *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = [v5 stringByAppendingString:@"."];
  v7 = MEMORY[0x277CCAC30];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = ___ZL27SearchForEspressoNetInPathsP7NSArrayIP8NSStringES1__block_invoke;
  v28[3] = &unk_27916B450;
  v8 = v6;
  v29 = v8;
  v9 = [v7 predicateWithBlock:v28];
  v10 = [v4 filteredArrayUsingPredicate:v9];

  if ([v10 count])
  {
    if ([v10 count] == 1)
    {
      v2 = [v10 firstObject];
    }

    else
    {
      v11 = v10;
      v27 = FTGetChipIdentifier();
      if (!v27)
      {
        goto LABEL_9;
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@".%@.", v27];
      v13 = MEMORY[0x277CCAC30];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = ___ZL32SelectBestEspressoNetForPlatformP7NSArrayIP8NSStringE_block_invoke;
      v30[3] = &unk_27916B450;
      v14 = v12;
      v31 = v14;
      v15 = [v13 predicateWithBlock:v30];
      v16 = [v11 filteredArrayUsingPredicate:v15];

      v17 = [v16 count];
      if (v17 == 1)
      {
        v2 = [v16 firstObject];
      }

      if (v17 != 1)
      {
LABEL_9:
        v18 = v11;
        v19 = [v18 sortedArrayUsingComparator:&__block_literal_global_1];
        memset(v50, 0, 64);
        v20 = v19;
        if ([v20 countByEnumeratingWithState:v50 objects:v51 count:16])
        {
          v21 = *v50[1];
          v22 = *v50[1];
          v23 = [v21 UTF8String];
          v24 = strlen(v23);
          if (v24 < 0x7FFFFFFFFFFFFFF8)
          {
            v25 = v24;
            if (v24 < 0x17)
            {
              v48 = v24;
              if (v24)
              {
                memmove(&__dst, v23, v24);
              }

              *(&__dst + v25) = 0;
              v35 = 0;
              v32 = 0;
              v34 = 0;
              v33 = 0u;
              v36 = -4294901744;
              v37 = 0;
              v38 = 0;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = 0u;
              v43 = 0u;
              v44 = 1065353216;
              v46 = 0;
              LOBYTE(__p) = 0;
              v49 = &unk_285F8F358;
              operator new();
            }

            operator new();
          }

          std::string::__throw_length_error[abi:ne200100]();
        }

        v2 = 0;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t ___ZL27SearchForEspressoNetInPathsP7NSArrayIP8NSStringES1__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 hasPrefix:*(a1 + 32)];

  return v4;
}

int *ik::VerifyEspressoStatus(int *result, uint64_t *a2)
{
  if (*result)
  {
    v2 = result;
    ik::LogEspressoError(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v13, " [espresso error: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, *v2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v14, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v15, "]");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_285F8F310;
  }

  return result;
}

{
  if (*result)
  {
    v2 = result;
    ik::LogEspressoError(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v13, " [espresso error: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, *v2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v14, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v15, "]");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_285F8F310;
  }

  return result;
}

{
  if (*result)
  {
    v2 = result;
    ik::LogEspressoError(result, a2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v4 = std::string::append(&v13, " [espresso error: ");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v12, *v2);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v12;
    }

    else
    {
      v6 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v14, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v15, "]");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v16.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v16);
    exception->__vftable = &unk_285F8F310;
  }

  return result;
}

void sub_24BC50B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a14 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a9);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if (a20 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a21);
  if (a20 < 0)
  {
LABEL_6:
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
LABEL_14:
      _Unwind_Resume(a1);
    }

LABEL_13:
    __cxa_free_exception(v33);
    goto LABEL_14;
  }

LABEL_12:
  if (!v34)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

uint64_t ___ZN2ikL28IsAppleNeuralEngineAvailableEv_block_invoke_0()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_2 = result;
  return result;
}

double ft::Track::Track(ft::Track *this, const uint64_t *a2)
{
  *this = &unk_285F8F378;
  *(this + 1) = 0;
  *(this + 2) = *a2;
  *(this + 232) = 0;
  *(this + 240) = 0;
  *(this + 56) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 31) = 0;
  *(this + 32) = 0;
  return result;
}

uint64_t ft::Track::Predict(uint64_t this, const Frame *a2)
{
  if ((*(this + 232) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Predict called before initialization");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(this + 240) & 1) == 0)
  {
    ++*(this + 256);
    v2 = *(*this + 24);

    return v2();
  }

  return this;
}

uint64_t ft::Track::Update(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(a1 + 248) = 0x3FF0000000000000;
  *(a1 + 256) = 0;
  result = (*(*a1 + 32))(a1);
  v6 = *(a1 + 232);
  v8 = a3[1];
  v7 = a3[2];
  *(a1 + 56) = *a3;
  *(a1 + 72) = v8;
  *(a1 + 88) = v7;
  v9 = a3[5];
  v10 = a3[6];
  v11 = a3[4];
  *(a1 + 104) = a3[3];
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v11;
  v12 = a3[9];
  v13 = a3[10];
  v14 = a3[8];
  *(a1 + 168) = a3[7];
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 184) = v14;
  if ((v6 & 1) == 0)
  {
    *(a1 + 232) = 1;
  }

  return result;
}

void ft::CreateIOSurfaceBackedPixelBuffer(ft *this@<X0>, size_t a2@<X1>, OSType a3@<W2>, void *a4@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = *MEMORY[0x277CC4DE8];
  v12[0] = MEMORY[0x277CBEC10];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  if (!CVPixelBufferCreate(*MEMORY[0x277CBECE8], this, a2, a3, v8, &v10))
  {
    *a4 = v10;
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Failed to create IOSurface-backed CVPixelBuffer.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_24BC51308(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    CVPixelBufferRelease(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_24BC51334(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

CVPixelBufferPoolRef *ft::PixelBufferPool::PixelBufferPool(CVPixelBufferPoolRef *poolOut, const __CFDictionary *a2, const __CFDictionary *a3)
{
  *poolOut = 0;
  v4 = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], a2, a3, poolOut);
  if (v4)
  {
    v6 = v4;
    exception = __cxa_allocate_exception(0x10uLL);
    std::to_string(&v10, v6);
    v8 = std::string::insert(&v10, 0, "Failed to create pixel buffer pool. Status = ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v11.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v11.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return poolOut;
}

void sub_24BC51420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

CVPixelBufferPoolRef *ft::PixelBufferPool::PixelBufferPool(CVPixelBufferPoolRef *a1, uint64_t a2, const __CFDictionary *a3)
{
  v5 = ft::AsPoolAttribsDict(a2);

  return ft::PixelBufferPool::PixelBufferPool(a1, v5, a3);
}

{
  v5 = ft::AsPoolAttribsDict(a2);

  return ft::PixelBufferPool::PixelBufferPool(a1, v5, a3);
}

void *ft::AsPoolAttribsDict(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*a1];
  [v2 setValue:v3 forKey:*MEMORY[0x277CC4E50]];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(a1 + 8)];
  [v2 setValue:v4 forKey:*MEMORY[0x277CC4E48]];

  v5 = (a1 + 16);
  if (*(a1 + 39) < 0)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_3;
    }

    v5 = *v5;
  }

  else if (!*(a1 + 39))
  {
LABEL_3:

    return v2;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  [v2 setValue:v7 forKey:*MEMORY[0x277CC4E58]];

  return v2;
}

void ft::PixelBufferPool::NewPixelBuffer(CVPixelBufferPoolRef *this@<X0>, CVPixelBufferRef *a2@<X8>)
{
  pixelBufferOut = 0;
  v3 = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *this, &pixelBufferOut);
  if (!v3)
  {
    *a2 = pixelBufferOut;
    operator new();
  }

  v4 = v3;
  exception = __cxa_allocate_exception(0x10uLL);
  std::to_string(&v8, v4);
  v6 = std::string::insert(&v8, 0, "Failed to create pixel buffer. Status = ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v9);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void ft::PixelBufferPool::~PixelBufferPool(__CVPixelBufferPool **this)
{
  v1 = *this;
  if (v1)
  {
    CVPixelBufferPoolRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CVPixelBufferPoolRelease(v1);
  }
}

void std::__shared_ptr_pointer<__CVBuffer *,void (*)(__CVBuffer *),std::allocator<__CVBuffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C253380);
}

uint64_t std::__shared_ptr_pointer<__CVBuffer *,void (*)(__CVBuffer *),std::allocator<__CVBuffer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000024BC6D3A8)
  {
    return a1 + 32;
  }

  if (((v2 & 0x800000024BC6D3A8 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000024BC6D3A8))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000024BC6D3A8 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

unint64_t ttNonMaxSuppression(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    ttNonMaxSuppression();
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  bmHeapsort(a1, a2, 0x24uLL, ttDetRectScoreCompare);
  v6 = 0;
  v7 = a1 + 36;
  v8 = 1;
  do
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    if (v6 + 1 < v3)
    {
      v11 = (a1 + 36 * v6);
      v12 = v7;
      v13 = v8;
      do
      {
        ttDetRectOverlap(v11, v12);
        if (v14 <= a3)
        {
          if (v13 < v10)
          {
            ttNonMaxSuppression();
          }

          v15 = a1 + 36 * v10++;
          v16 = *v12;
          v17 = *(v12 + 16);
          *(v15 + 32) = *(v12 + 32);
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        ++v13;
        v12 += 36;
      }

      while (v3 != v13);
    }

    ++v8;
    v7 += 36;
    v6 = v9;
    v3 = v10;
  }

  while (v9 < v10);
  return v10;
}

unint64_t ttNonMaxSuppression2(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    ttNonMaxSuppression2();
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  bmHeapsort(a1, a2, 0x24uLL, ttDetRectScoreCompare);
  v6 = 0;
  v7 = a1 + 36;
  v8 = 1;
  do
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    if (v6 + 1 < v3)
    {
      v11 = (a1 + 36 * v6);
      v12 = v7;
      v13 = v8;
      do
      {
        ttDetRectOverlap2(v11, v12);
        if (v14 <= a3)
        {
          if (v13 < v10)
          {
            ttNonMaxSuppression2();
          }

          v15 = a1 + 36 * v10++;
          v16 = *v12;
          v17 = *(v12 + 16);
          *(v15 + 32) = *(v12 + 32);
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        ++v13;
        v12 += 36;
      }

      while (v3 != v13);
    }

    ++v8;
    v7 += 36;
    v6 = v9;
    v3 = v10;
  }

  while (v9 < v10);
  return v10;
}

unint64_t ttNonMaxSuppressionSmallbox(uint64_t a1, unsigned int a2, float a3)
{
  if (!a1)
  {
    ttNonMaxSuppressionSmallbox();
  }

  v3 = a2;
  if (!a2)
  {
    return 0;
  }

  bmHeapsort(a1, a2, 0x24uLL, ttDetRectScoreCompare);
  v6 = 0;
  v7 = a1 + 36;
  v8 = 1;
  do
  {
    v9 = v6 + 1;
    v10 = (v6 + 1);
    if (v6 + 1 < v3)
    {
      v11 = a1 + 36 * v6;
      v12 = v7;
      v13 = v8;
      do
      {
        if (*(v11 + 16) != *(v12 + 16) || (ttDetRectOverlapSmallbox(v11, v12), v14 <= a3))
        {
          if (v13 < v10)
          {
            ttNonMaxSuppressionSmallbox();
          }

          v15 = a1 + 36 * v10++;
          v16 = *v12;
          v17 = *(v12 + 16);
          *(v15 + 32) = *(v12 + 32);
          *v15 = v16;
          *(v15 + 16) = v17;
        }

        v12 += 36;
        ++v13;
      }

      while (v3 != v13);
    }

    ++v8;
    v7 += 36;
    v6 = v9;
    v3 = v10;
  }

  while (v9 < v10);
  return v10;
}

uint64_t ttRemoveOverlapBoxes(__int128 *a1, unsigned int a2, unsigned __int8 *a3, unsigned int a4, float a5)
{
  if (a2 > a4)
  {
    ttRemoveOverlapBoxes();
  }

  if (!a2)
  {
    return 0;
  }

  v5 = a3;
  v7 = a2;
  bzero(a3, a2);
  v8 = 0;
  v9 = a1 + 9;
  v10 = 1;
  do
  {
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = a1 + 9 * v8;
      v13 = v9;
      v14 = v10;
      do
      {
        ttDetRectOverlap(v12, v13);
        if (v15 > a5)
        {
          if (v12[6] <= v13[6])
          {
            v16 = v8;
          }

          else
          {
            v16 = v14;
          }

          v5[v16] = 1;
        }

        ++v14;
        v13 += 9;
      }

      while (v7 != v14);
    }

    ++v10;
    v9 += 9;
    ++v8;
  }

  while (v11 != v7);
  result = 0;
  v18 = a1;
  do
  {
    if (!*v5++)
    {
      v20 = a1 + 36 * result;
      v21 = *v18;
      v22 = v18[1];
      *(v20 + 32) = *(v18 + 8);
      *v20 = v21;
      *(v20 + 16) = v22;
      result = (result + 1);
    }

    v18 = (v18 + 36);
    --v7;
  }

  while (v7);
  return result;
}

BOOL ttCheckOverlapBox(float *a1, unsigned int a2, float *a3, float a4)
{
  if (!a2)
  {
    return 0;
  }

  ttDetRectOverlap(a1, a3);
  if (v8 > a4)
  {
    return 1;
  }

  v10 = a1 + 9;
  v11 = 1;
  do
  {
    v12 = v11;
    if (a2 == v11)
    {
      break;
    }

    ttDetRectOverlap(v10, a3);
    v11 = v12 + 1;
    v10 += 9;
  }

  while (v13 <= a4);
  return v12 < a2;
}

uint64_t rtcv::simResize(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, int a6, uint64_t a7, int a8, float a9, float a10, float a11, float a12, int a13, int a14)
{
  if (a5 != 1)
  {
    return 0;
  }

  *&v22 = a1;
  *(&v22 + 1) = __PAIR64__(a2, a3);
  v23 = a4 | 0x500000000;
  v20 = v22;
  v21 = v23;
  if (a4 * a3)
  {
    operator new();
  }

  *&v20 = 0;
  v15 = a7;
  v16 = a13;
  v17 = a8;
  v18 = a14;
  v19 = 5;
  if ((a6 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return simResizeVisPipe(&v22, &v15, &v20, dword_24BC6D3BC[a6 - 1], 2u, a9, a10, a11, a12);
  }
}