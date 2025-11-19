void DYTraceEncode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08500000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Culululul";
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
  v11 = 88;
  *a2 = 88;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 88), __src, v12 + 8);
    v13 = (v12 + 96);
    v11 = (v12 + 99) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululululul");
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

void DYTraceEncode_MTLRenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08A00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC08B00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_memoryBarrierWithResources_count_afterStages_beforeStages(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC17D00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutululul", v11) + *a2;
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
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 32);
  v18 = (*a2 + 8);
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy((a2 + v18), a4, v19);
    v20 = (*a2 + v19);
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero((a2 + v20), v18 - v20);
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

void DYTraceEncode_MTLRenderCommandEncoder_memoryBarrierWithScope_afterStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC17C00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08D00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC08C00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC27A00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctului");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 24);
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

void DYTraceEncode_MTLRenderCommandEncoder_setAlphaTestReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 26179;
  *a2 = 0xFFFFC28F00000028;
  *(a2 + 8) = 0;
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

void DYTraceEncode_MTLRenderCommandEncoder_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08100000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6666666643;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 12);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 20);
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

void DYTraceEncode_MTLRenderCommandEncoder_setColorAttachmentMap(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5FF00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6275384043;
  *a2 = 44;
  *(a2 + 44) = *a1;
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

void DYTraceEncode_MTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulululul");
  *(a2 + 47) = 0;
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

void DYTraceEncode_MTLRenderCommandEncoder_setColorResolveTexture_slice_depthPlane_level_yInvert_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulululuiul");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 24);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 48);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 40);
  v11 = 104;
  *a2 = 104;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 104), __src, v12 + 8);
    v13 = (v12 + 112);
    v11 = (v12 + 115) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E100000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setColorStoreActionOptions_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16A00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setCullMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07400000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cfff");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 12);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthCleared(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29100000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07500000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E500000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululul");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
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
  v11 = 88;
  *a2 = 88;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 88), __src, v12 + 8);
    v13 = (v12 + 96);
    v11 = (v12 + 99) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthResolveTexture_slice_depthPlane_level_yInvert(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29200000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululului");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 40);
  v11 = 92;
  *a2 = 92;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 92), __src, v12 + 8);
    v13 = (v12 + 100);
    v11 = (v12 + 103) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08200000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E200000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16B00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 6710851;
  *a2 = 0xFFFFC5BE00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 8);
  *a2 = 52;
  *(a2 + 52) = *(a1 + 12);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentAccelerationStructure_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC39D00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07900000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A200000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC07A00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 32);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@%zuul@2ul", v11, v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = (*a2 + v11);
  *a2 = v15;
  memcpy((a2 + v15), *(a1 + 16), v11);
  v16 = *a2 + v11;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentBytes_length_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC0A100000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentIntersectionFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC39E00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentIntersectionFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC39F00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07D00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07F00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctfful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC08000000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@%zuf@%zuf@2ul", v11, v11, v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  memcpy((a2 + v14), *(a1 + 8), 8 * v11);
  v15 = (*a2 + 8 * v11);
  *a2 = v15;
  memcpy((a2 + v15), *(a1 + 32), 4 * v11);
  v16 = (*a2 + 4 * v11);
  *a2 = v16;
  memcpy((a2 + v16), *(a1 + 40), 4 * v11);
  v17 = *a2 + 4 * v11;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 16);
  v18 = (*a2 + 16);
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy((a2 + v18), a4, v19);
    v20 = (*a2 + v19);
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero((a2 + v20), v18 - v20);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC07E00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07B00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0AA00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75746C757443;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC07C00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A000000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setFragmentVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3A100000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07300000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setLineWidth(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 26179;
  *a2 = 0xFFFFC08900000028;
  *(a2 + 8) = 0;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3D700000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3D800000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshBuffers_offsets_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3D900000024;
  a2[8] = v10;
  v11 = *(a1 + 32);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshBytes_length_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3DA00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3DB00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3DC00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctfful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3DD00000024;
  a2[8] = v10;
  v11 = *(a1 + 40);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>U<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3DE00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3DF00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setMeshTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3E000000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3E100000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3E200000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectBuffers_offsets_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3E300000024;
  a2[8] = v10;
  v11 = *(a1 + 32);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectBytes_length_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3E400000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3E500000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3E600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctfful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3E700000024;
  a2[8] = v10;
  v11 = *(a1 + 40);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>U<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3E800000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3E900000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3EA00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3EB00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setPointSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 26179;
  *a2 = 0xFFFFC18C00000028;
  *(a2 + 8) = 0;
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

void DYTraceEncode_MTLRenderCommandEncoder_setPrimitiveRestartEnabled(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC19E00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setPrimitiveRestartEnabled_index(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC19000000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75697543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 16);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
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

void DYTraceEncode_MTLRenderCommandEncoder_setProvokingVertexMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29300000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06900000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilCleared(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29400000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A500000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6975697543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 12);
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08300000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29500000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululul");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
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
  v11 = 88;
  *a2 = 88;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 88), __src, v12 + 8);
    v13 = (v12 + 96);
    v11 = (v12 + 99) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilResolveTexture_slice_depthPlane_level_yInvert(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululului");
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 40);
  v11 = 92;
  *a2 = 92;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 92), __src, v12 + 8);
    v13 = (v12 + 100);
    v11 = (v12 + 103) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E300000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setStencilStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16C00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTessellationFactorBuffer_offset_instanceStride(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0EC00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTessellationFactorScale(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 26179;
  *a2 = 0xFFFFC0FC00000028;
  *(a2 + 8) = 0;
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

void DYTraceEncode_MTLRenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC13600000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileAccelerationStructure_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A200000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F200000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F300000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileBuffers_offsets_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12900000024;
  a2[8] = v10;
  v11 = *(a1 + 32);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileBytes_length_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC0F100000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileIntersectionFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A300000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileIntersectionFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3A400000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F500000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctfful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC12C00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@%zuf@%zuf@2ul", v11, v11, v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  memcpy((a2 + v14), *(a1 + 8), 8 * v11);
  v15 = (*a2 + 8 * v11);
  *a2 = v15;
  memcpy((a2 + v15), *(a1 + 32), 4 * v11);
  v16 = (*a2 + 4 * v11);
  *a2 = v16;
  memcpy((a2 + v16), *(a1 + 40), 4 * v11);
  v17 = *a2 + 4 * v11;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 16);
  v18 = (*a2 + 16);
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy((a2 + v18), a4, v19);
    v20 = (*a2 + v19);
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero((a2 + v20), v18 - v20);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12B00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F400000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12A00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A500000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTileVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3A600000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07800000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setTriangleFrontFillMode_backFillMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29700000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexAccelerationStructure_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A700000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexAmplificationMode_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC23C00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06A00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45500000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctululul");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
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
  v11 = 88;
  *a2 = 88;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 88), __src, v12 + 8);
    v13 = (v12 + 96);
    v11 = (v12 + 99) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBufferOffset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A000000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBufferOffset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45600000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBuffers_offsets_attributeStrides_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC45700000024;
  a2[8] = v10;
  v11 = *(a1 + 40);
  v12 = snprintf(a2 + 36, a3 - 36, "C@%zutU<b>U<b>@2ul", v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  v11 *= 8;
  memcpy(a2 + v14, *(a1 + 8), v11);
  *a2 += v11;
  AppendString(*(a1 + 16), a2);
  AppendString(*(a1 + 24), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 16;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06B00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 32);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@%zuul@2ul", v11, v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  v11 *= 8;
  memcpy((a2 + v14), *(a1 + 8), v11);
  v15 = (*a2 + v11);
  *a2 = v15;
  memcpy((a2 + v15), *(a1 + 16), v11);
  v16 = *a2 + v11;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 24);
  v17 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBytes_length_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC09F00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexBytes_length_attributeStride_atIndex(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC45800000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>ululul");
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexIntersectionFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3A800000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexIntersectionFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3A900000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06E00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexSamplerState_lodMinClamp_lodMaxClamp_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctfful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexSamplerStates_lodMinClamps_lodMaxClamps_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC07100000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@%zuf@%zuf@2ul", v11, v11, v11) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero((a2 + (v12 + 1)), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = (*a2 + 8);
  *a2 = v14;
  memcpy((a2 + v14), *(a1 + 8), 8 * v11);
  v15 = (*a2 + 8 * v11);
  *a2 = v15;
  memcpy((a2 + v15), *(a1 + 32), 4 * v11);
  v16 = (*a2 + 4 * v11);
  *a2 = v16;
  memcpy((a2 + v16), *(a1 + 40), 4 * v11);
  v17 = *a2 + 4 * v11;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 16);
  v18 = (*a2 + 16);
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy((a2 + v18), a4, v19);
    v20 = (*a2 + v19);
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero((a2 + v20), v18 - v20);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06F00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06C00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06D00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3AA00000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVertexVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3AB00000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 24);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zut@2ul", v11) + *a2;
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
  v16 = (*a2 + 16);
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

void DYTraceEncode_MTLRenderCommandEncoder_setViewport(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC07200000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@6d");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  *(a2 + 84) = *(a1 + 40);
  *(a2 + 68) = v12;
  *(a2 + 52) = v11;
  v13 = 100;
  *a2 = 100;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 100), __src, v14 + 8);
    v15 = (v14 + 108);
    v13 = (v14 + 111) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_setViewportTransformEnabled(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC29800000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_setVisibilityResultMode_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08400000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_textureBarrier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0B700000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_updateFence_afterStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC10200000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_useHeap(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC15700000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_useHeap_stages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC23300000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_useHeaps_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC15800000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_useHeaps_count_stages(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC23400000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutulul", v11) + *a2;
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

void DYTraceEncode_MTLRenderCommandEncoder_useResource_usage(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC15500000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_useResource_usage_stages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC23500000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_useResources_count_usage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC15600000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutulul", v11) + *a2;
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

void DYTraceEncode_MTLRenderCommandEncoder_useResources_count_usage_stages(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v21 = *a5;
    v22 = 500;
    v23 = "36 <= length";
    v24 = 0u;
    v25 = 0u;
    GTError_addError(a5, &v21);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC23600000024;
  *(a2 + 32) = v10;
  v11 = *(a1 + 16);
  v12 = snprintf((a2 + 36), a3 - 36, "C@%zutululul", v11) + *a2;
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
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 32);
  v18 = (*a2 + 8);
  *a2 = v18;
  if (a4)
  {
    v19 = 8 * *a4 + 8;
    memcpy((a2 + v18), a4, v19);
    v20 = (*a2 + v19);
    v18 = (v20 + 3) & 0xFFFFFFFC;
    bzero((a2 + v20), v18 - v20);
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

void DYTraceEncode_MTLRenderCommandEncoder_waitForFence_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC10300000024;
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

void DYTraceEncode_MTLRenderPipelineState_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 6911299;
  *a2 = 0xFFFFD83000000028;
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

void DYTraceEncode_MTLRenderPipelineState_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84B00000028;
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

void DYTraceEncode_MTLRenderPipelineState_imageblockSampleLength(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD83800000028;
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

void DYTraceEncode_MTLRenderPipelineState_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84400000028;
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

void DYTraceEncode_MTLRenderPipelineState_setEmulationPayloadMemoryLength(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC44800000028;
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

void DYTraceEncode_MTLRenderPipelineState_setEmulationPrimitiveTopology(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC42900000028;
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

void DYTraceEncode_MTLRenderPipelineState_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08E00000028;
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

void DYTraceEncode_MTLRenderPipelineState_fragmentFunctionHandleWithFunction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3AC00000028;
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

void DYTraceEncode_MTLRenderPipelineState_functionHandleWithFunction_stage(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC39900000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctul");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[2];
  *a2 = 60;
  *(a2 + 60) = a1[3];
  *(a2 + 68) = 116;
  *a2 = 72;
  *(a2 + 72) = a1[1];
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

void DYTraceEncode_MTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3AD00000028;
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

void DYTraceEncode_MTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC39A00000024;
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

void DYTraceEncode_MTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC39B00000028;
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

void DYTraceEncode_MTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3AE00000028;
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

void DYTraceEncode_MTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3AF00000028;
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

void DYTraceEncode_MTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3B000000028;
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

void DYTraceEncode_MTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3B100000028;
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

void DYTraceEncode_MTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3B200000028;
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

void DYTraceEncode_MTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC39C00000024;
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

void DYTraceEncode_MTLRenderPipelineState_tileFunctionHandleWithFunction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3B300000028;
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

void DYTraceEncode_MTLRenderPipelineState_vertexFunctionHandleWithFunction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3B400000028;
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

void DYTraceEncode_MTLResidencySet_addAllocation(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC49400000028;
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

void DYTraceEncode_MTLResidencySet_addAllocations_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC49500000024;
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

void DYTraceEncode_MTLResidencySet_commit(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC48C00000028;
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

void DYTraceEncode_MTLResidencySet_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC48100000028;
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

void DYTraceEncode_MTLResidencySet_endResidency(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC48200000028;
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

void DYTraceEncode_MTLResidencySet_removeAllAllocations(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC49800000028;
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

void DYTraceEncode_MTLResidencySet_removeAllocation(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC49900000028;
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

void DYTraceEncode_MTLResidencySet_removeAllocations_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC49A00000024;
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

void DYTraceEncode_MTLResidencySet_requestResidency(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC48900000028;
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

void DYTraceEncode_MTLResourceGroup_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC26700000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC24E00000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC59800000024;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_copyMappingStateFromTexture_mipLevel_slice_toBuffer_offset_numTiles(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulultulul");
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
  *a2 = 96;
  *(a2 + 96) = a1[6];
  v11 = 104;
  *a2 = 104;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 104), __src, v12 + 8);
    v13 = (v12 + 112);
    v11 = (v12 + 115) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25200000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25300000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC25400000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25500000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC25600000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25700000028;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_updateTextureMapping_mode_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25800000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75746C757443;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_updateTextureMapping_mode_region_mipLevel_slice(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25900000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctul@6ululul");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  v11 = *(a1 + 56);
  v12 = *(a1 + 40);
  *(a2 + 76) = *(a1 + 24);
  *(a2 + 92) = v12;
  *(a2 + 108) = v11;
  *a2 = 124;
  *(a2 + 124) = *(a1 + 72);
  *a2 = 132;
  *(a2 + 132) = *(a1 + 80);
  v13 = 140;
  *a2 = 140;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 140), __src, v14 + 8);
    v15 = (v14 + 148);
    v13 = (v14 + 151) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLResourceStateCommandEncoder_updateTextureMappings_mode_regions_mipLevels_slices_numRegions(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC25A00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtulU<b>U<b>U<b>ul");
  *(a2 + 55) = 0;
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 8);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 16);
  *a2 = 80;
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
  AppendString(*(a1 + 40), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 48);
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

void DYTraceEncode_MTLResourceStateCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC25B00000028;
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

void DYTraceEncode_MTLSamplerState_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84D00000028;
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

void DYTraceEncode_MTLSamplerState_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD80E00000028;
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

void DYTraceEncode_MTLSamplerState_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08F00000028;
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

void DYTraceEncode_MTLSharedEvent_setEnableBarrier(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC42700000028;
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

void DYTraceEncode_MTLSharedEvent_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC19A00000028;
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

void DYTraceEncode_MTLSharedEvent_setSignaledValue(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC19900000028;
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

void DYTraceEncode_MTLSharedEvent_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC19B00000028;
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