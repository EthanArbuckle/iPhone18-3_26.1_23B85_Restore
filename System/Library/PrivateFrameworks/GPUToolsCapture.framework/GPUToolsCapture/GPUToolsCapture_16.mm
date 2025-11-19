void DYTraceEncode_MTLHeap_newAccelerationStructureWithDescriptor_offset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC40500000024;
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

void DYTraceEncode_MTLHeap_newAccelerationStructureWithSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC40600000028;
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

void DYTraceEncode_MTLHeap_newAccelerationStructureWithSize_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC40700000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C7543;
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

void DYTraceEncode_MTLHeap_newAccelerationStructureWithSize_offset_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC40800000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x77756C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[2];
  *a2 = 60;
  *(a2 + 60) = a1[3];
  *a2 = 68;
  *(a2 + 68) = a1[4];
  *(a2 + 76) = 116;
  *a2 = 80;
  *(a2 + 80) = a1[1];
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

void DYTraceEncode_MTLHeap_newAccelerationStructureWithSize_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC40900000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x77756C7543;
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

void DYTraceEncode_MTLHeap_newBufferWithLength_options(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC10B00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C7543;
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

void DYTraceEncode_MTLHeap_newBufferWithLength_options_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC25E00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C756C7543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[2];
  *a2 = 60;
  *(a2 + 60) = a1[3];
  *a2 = 68;
  *(a2 + 68) = a1[4];
  *(a2 + 76) = 116;
  *a2 = 80;
  *(a2 + 80) = a1[1];
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

void DYTraceEncode_MTLHeap_newTextureWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC10C00000028;
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

void DYTraceEncode_MTLHeap_newTextureWithDescriptor_offset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC25F00000024;
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

void DYTraceEncode_MTLIOCommandBuffer_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC42F00000028;
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

void DYTraceEncode_MTLIOCommandBuffer_addBarrier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC44100000028;
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

void DYTraceEncode_MTLIOCommandBuffer_addCompletedHandler(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC40F00000028;
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

void DYTraceEncode_MTLIOCommandBuffer_barrier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC41000000028;
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

void DYTraceEncode_MTLIOCommandBuffer_commit(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41100000028;
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

void DYTraceEncode_MTLIOCommandBuffer_copyStatusToBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41200000024;
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

void DYTraceEncode_MTLIOCommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41300000028;
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

void DYTraceEncode_MTLIOCommandBuffer_encodeSignalEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC41400000024;
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

void DYTraceEncode_MTLIOCommandBuffer_encodeWaitForEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC41500000024;
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

void DYTraceEncode_MTLIOCommandBuffer_enqueue(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC43000000028;
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

void DYTraceEncode_MTLIOCommandBuffer_loadBuffer_offset_size_sourceHandle_sourceHandleOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC43100000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Ctulultul";
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

void DYTraceEncode_MTLIOCommandBuffer_loadBytes_size_sourceHandle_sourceHandleOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC44200000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>ultul");
  *(a2 + 47) = 0;
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

void DYTraceEncode_MTLIOCommandBuffer_loadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
  }

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
  *a2 = 0xFFFFC43200000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@3ululul@3ultul");
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
  *(a2 + 116) = *(a1 + 56);
  *a2 = 124;
  *(a2 + 124) = *(a1 + 64);
  *a2 = 132;
  v12 = *(a1 + 88);
  *(a2 + 132) = *(a1 + 72);
  *(a2 + 148) = v12;
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

void DYTraceEncode_MTLIOCommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC44300000028;
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

void DYTraceEncode_MTLIOCommandBuffer_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  a2[9] = 21315;
  *a2 = 0xFFFFC44400000028;
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

void DYTraceEncode_MTLIOCommandBuffer_signalEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC43300000024;
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

void DYTraceEncode_MTLIOCommandBuffer_tryCancel(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41800000028;
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

void DYTraceEncode_MTLIOCommandBuffer_waitForEvent_value(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC43400000024;
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

void DYTraceEncode_MTLIOCommandBuffer_waitUntilCompleted(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC41900000028;
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

void DYTraceEncode_MTLIOCommandQueue_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC43500000028;
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

void DYTraceEncode_MTLIOCommandQueue_barrier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC41A00000028;
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

void DYTraceEncode_MTLIOCommandQueue_commandBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32777;
  }

  else
  {
    v10 = 32769;
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
  *a2 = 0xFFFFC41B00000028;
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

void DYTraceEncode_MTLIOCommandQueue_commandBufferWithUnretainedReferences(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC43600000028;
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

void DYTraceEncode_MTLIOCommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41C00000028;
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

void DYTraceEncode_MTLIOCommandQueue_enqueueBarrier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  *a2 = 0xFFFFC44500000028;
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

void DYTraceEncode_MTLIOFileHandle_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  a2[9] = 21315;
  *a2 = 0xFFFFC44600000028;
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

void DYTraceEncode_MTLIOFileHandle_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC44700000028;
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

void DYTraceEncode_MTLIOHandle_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 32776;
  }

  else
  {
    v10 = 0x8000;
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
  a2[9] = 21315;
  *a2 = 0xFFFFC43700000028;
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

void DYTraceEncode_MTLIOScratchBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41D00000028;
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

void DYTraceEncode_MTLIOScratchBufferAllocator_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC41F00000028;
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

void DYTraceEncode_MTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC43D00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7828803;
  *a2 = 0xFFFFD82600000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84A00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 78;
  }

  else
  {
    v10 = 70;
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
  *a2 = 0xFFFFD81F00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD81600000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC1CB00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 36) = 26947;
  *a2 = 0xFFFFC1CC00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1CD00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_indirectComputeCommandAtIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC1CF00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_indirectRenderCommandAtIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC1CE00000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_isAliasable(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1D200000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 26997;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
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

void DYTraceEncode_MTLIndirectCommandBuffer_isPurgeable(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1D300000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 26997;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
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

void DYTraceEncode_MTLIndirectCommandBuffer_makeAliasable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1D100000028;
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

void DYTraceEncode_MTLIndirectCommandBuffer_resetWithRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1E800000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75324043;
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

void DYTraceEncode_MTLIndirectComputeCommand_concurrentDispatchThreadgroups_threadsPerThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1C500000024;
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

void DYTraceEncode_MTLIndirectComputeCommand_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1C100000028;
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

void DYTraceEncode_MTLIndirectComputeCommand_reset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1DF00000028;
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

void DYTraceEncode_MTLIndirectComputeCommand_setComputePipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1C200000028;
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

void DYTraceEncode_MTLIndirectComputeCommand_setKernelBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1C300000024;
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

void DYTraceEncode_MTLIndirectComputeCommand_setKernelBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45300000024;
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

void DYTraceEncode_MTLIndirectComputeCommand_setStageInRegion(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC1CA00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75364043;
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

void DYTraceEncode_MTLIndirectComputeCommand_setThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1C900000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1AB00000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1B200000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultultululultulul");
  *(a2 + 59) = 0;
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = a1[1];
  *a2 = 76;
  *(a2 + 76) = a1[2];
  *a2 = 84;
  *(a2 + 84) = a1[3];
  *a2 = 92;
  *(a2 + 92) = a1[4];
  *a2 = 100;
  *(a2 + 100) = a1[5];
  *a2 = 108;
  *(a2 + 108) = a1[6];
  *a2 = 116;
  *(a2 + 116) = a1[7];
  *a2 = 124;
  *(a2 + 124) = a1[8];
  *a2 = 132;
  *(a2 + 132) = a1[9];
  *a2 = 140;
  *(a2 + 140) = a1[10];
  *a2 = 148;
  *(a2 + 148) = a1[11];
  *a2 = 156;
  *(a2 + 156) = a1[12];
  v11 = 164;
  *a2 = 164;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 164), __src, v12 + 8);
    v13 = (v12 + 172);
    v11 = (v12 + 175) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLIndirectRenderCommand_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1B400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultulullul");
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

void DYTraceEncode_MTLIndirectRenderCommand_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45E00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@3ul@3ul@3ul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  v11 = *(a1 + 24);
  *(a2 + 60) = *(a1 + 8);
  *(a2 + 76) = v11;
  *a2 = 84;
  v12 = *(a1 + 48);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *a2 = 108;
  v13 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v13;
  v14 = 132;
  *a2 = 132;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 132), __src, v15 + 8);
    v16 = (v15 + 140);
    v14 = (v15 + 143) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLIndirectRenderCommand_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45F00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@3ul@3ul@3ul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  v11 = *(a1 + 24);
  *(a2 + 60) = *(a1 + 8);
  *(a2 + 76) = v11;
  *a2 = 84;
  v12 = *(a1 + 48);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *a2 = 108;
  v13 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v13;
  v14 = 132;
  *a2 = 132;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 132), __src, v15 + 8);
    v16 = (v15 + 140);
    v14 = (v15 + 143) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLIndirectRenderCommand_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1B000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultululultulul");
  *a2 = 56;
  *(a2 + 56) = *a1;
  *a2 = 64;
  *(a2 + 64) = a1[1];
  *a2 = 72;
  *(a2 + 72) = a1[2];
  *a2 = 80;
  *(a2 + 80) = a1[3];
  *a2 = 88;
  *(a2 + 88) = a1[4];
  *a2 = 96;
  *(a2 + 96) = a1[5];
  *a2 = 104;
  *(a2 + 104) = a1[6];
  *a2 = 112;
  *(a2 + 112) = a1[7];
  *a2 = 120;
  *(a2 + 120) = a1[8];
  *a2 = 128;
  *(a2 + 128) = a1[9];
  *a2 = 136;
  *(a2 + 136) = a1[10];
  v11 = 144;
  *a2 = 144;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 144), __src, v12 + 8);
    v13 = (v12 + 152);
    v11 = (v12 + 155) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLIndirectRenderCommand_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1B300000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_reset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1DE00000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B000000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setCullMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B100000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B200000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B300000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B400000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B500000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setFragmentBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1AE00000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B600000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setMeshBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC46000000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setObjectBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC46100000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC46200000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1AC00000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B700000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75344043;
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

void DYTraceEncode_MTLIndirectRenderCommand_setScissorRects_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC5B800000024;
  a2[8] = v10;
  *(a2 + 9) = 0x6C753E623C5543;
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

void DYTraceEncode_MTLIndirectRenderCommand_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5B900000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5BA00000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5BB00000028;
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

void DYTraceEncode_MTLIndirectRenderCommand_setVertexBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1AD00000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setVertexBuffer_offset_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC45400000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setViewport(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5BC00000024;
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

void DYTraceEncode_MTLIndirectRenderCommand_setViewports_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC5BD00000024;
  a2[8] = v10;
  *(a2 + 9) = 0x6C753E623C5543;
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

void DYTraceEncode_MTLIntersectionFunctionTable_allocatedSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD83D00000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84000000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84F00000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setBuffers(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFD85800000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD83C00000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84100000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 30581;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC32E00000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 26947;
  *a2 = 0xFFFFC32F00000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC33000000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_makeAliasable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC33800000028;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC34700000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC34800000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setFunction_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC33900000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setFunctions_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC33A00000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC46600000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setOpaqueCurveIntersectionFunctionWithSignature_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC46700000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C7532406C7543;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC35600000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setOpaqueTriangleIntersectionFunctionWithSignature_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC35700000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C7532406C7543;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC33B00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *(a2 + 56) = 27765;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setVisibleFunctionTable_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC35A00000024;
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

void DYTraceEncode_MTLIntersectionFunctionTable_setVisibleFunctionTables_withBufferRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC35B00000024;
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

void DYTraceEncode_MTLLateEvalEvent_setEnableBarrier(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC42400000028;
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

void DYTraceEncode_MTLLateEvalEvent_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC37D00000028;
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

void DYTraceEncode_MTLLateEvalEvent_setSignaledValue(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC37E00000028;
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

void DYTraceEncode_MTLLateEvalEvent_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC37F00000028;
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

void DYTraceEncode_MTLLateEvalEvent_newSharedEventHandle(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC38000000028;
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

void DYTraceEncode_MTLLateEvalEvent_waitUntilSignaledValue_timeoutMS(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0xFFFFC3C000000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x7775777543;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  *(a2 + 68) = 26997;
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
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

void DYTraceEncode_MTLLibrary_libraryIdentifier(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[9] = 21315;
  *a2 = 0xFFFFD83400000028;
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

void DYTraceEncode_MTLLibrary_type(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 13;
  }

  else
  {
    v10 = 5;
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
  *a2 = 0xFFFFD83900000028;
  *(a2 + 8) = 0;
  *(a2 + 40) = *a1;
  *(a2 + 48) = 27765;
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

void DYTraceEncode_MTLLibrary_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC05C00000028;
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

void DYTraceEncode_MTLLibrary_setOverrideTriple(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12D00000028;
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

void DYTraceEncode_MTLLibrary_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC05D00000028;
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

void DYTraceEncode_MTLLibrary_newExternFunctionWithName(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[9] = 21315;
  *a2 = 0xFFFFC15A00000028;
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

void DYTraceEncode_MTLLibrary_newFunctionWithDescriptor_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC30700000028;
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

void DYTraceEncode_MTLLibrary_newFunctionWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC30800000028;
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

void DYTraceEncode_MTLLibrary_newFunctionWithName(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[9] = 21315;
  *a2 = 0xFFFFC05E00000028;
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

void DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC11600000024;
  a2[8] = v10;
  *(a2 + 9) = 0x743E623C555343;
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

void DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12F00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CSU<b>tt");
  *(a2 + 45) = 0;
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
  *(a2 + v13) = *(a1 + 40);
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

void DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC12E00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CSU<b>tt");
  *(a2 + 45) = 0;
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
  *(a2 + v13) = *(a1 + 40);
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

void DYTraceEncode_MTLLibrary_newIntersectionFunctionWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC34200000028;
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

void DYTraceEncode_MTLMotionEstimationPipeline_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1EB00000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06000000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC59400000024;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06100000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06300000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06400000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06600000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06500000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_renderCommandEncoder(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06200000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0DE00000024;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setColorStoreActionOptions_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16400000024;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0DF00000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setDepthStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16500000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0E000000028;
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

void DYTraceEncode_MTLParallelRenderCommandEncoder_setStencilStoreActionOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC16600000028;
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

void DYTraceEncode_MTLPipelineLibrary_setDisableRunTimeCompilation(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC28000000028;
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

void DYTraceEncode_MTLPipelineLibrary_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC28100000028;
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

void DYTraceEncode_MTLPipelineLibrary_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC28200000028;
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

void DYTraceEncode_MTLPipelineLibrary_newComputePipelineDescriptorWithName_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[8] = v10;
  a2[9] = 7623491;
  *a2 = 0xFFFFC28300000028;
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
  *(a2 + v13) = 85;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  AppendString(*(a1 + 8), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
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

void DYTraceEncode_MTLPipelineLibrary_newRenderPipelineDescriptorWithName_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[8] = v10;
  a2[9] = 7623491;
  *a2 = 0xFFFFC28500000028;
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
  *(a2 + v13) = 85;
  v14 = (*a2 + 5) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 2, v14 - (*a2 + 2));
  *a2 = v14;
  AppendString(*(a1 + 8), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
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

void DYTraceEncode_MTLRasterizationRateMap_copyParameterDataToBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC26000000024;
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

void DYTraceEncode_MTLRasterizationRateMap_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC24700000028;
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

void DYTraceEncode_MTLRasterizationRateMap_mapScreenToPhysicalCoordinates_forLayer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC26600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@2ful");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = a1[3];
  *a2 = 60;
  *(a2 + 60) = a1[1];
  *(a2 + 68) = 6697536;
  *a2 = 72;
  *(a2 + 72) = a1[2];
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

void DYTraceEncode_MTLRasterizationRateMap_physicalSizeForLayer(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v15 = *a5;
    v16 = 500;
    v17 = "36 <= length";
    v18 = 0u;
    v19 = 0u;
    GTError_addError(a5, &v15);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC24B00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = *(a1 + 32);
  strcpy((a2 + 56), "@3ul");
  *(a2 + 61) = 0;
  *(a2 + 63) = 0;
  *a2 = 64;
  v11 = *(a1 + 8);
  *(a2 + 80) = *(a1 + 24);
  *(a2 + 64) = v11;
  v12 = 88;
  *a2 = 88;
  if (__src)
  {
    v13 = 8 * *__src;
    memcpy((a2 + 88), __src, v13 + 8);
    v14 = (v13 + 96);
    v12 = (v13 + 99) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRasterizationRateMap_resetUsingDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3CD00000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_executeCommandsInBuffer_indirectBuffer_indirectBufferOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC1A700000024;
  a2[8] = v10;
  *(a2 + 9) = 0x55556C75747443;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 15) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 24);
  *a2 = 76;
  AppendString(*(a1 + 40), a2);
  AppendString(*(a1 + 48), a2);
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

void DYTraceEncode_MTLRenderCommandEncoder_executeCommandsInBuffer_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC1A600000024;
  a2[8] = v10;
  *(a2 + 9) = 0x556C7532407443;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 15) = *(a1 + 16);
  *a2 = 76;
  AppendString(*(a1 + 40), a2);
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

void DYTraceEncode_MTLRenderCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC06700000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC59600000024;
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

void DYTraceEncode_MTLRenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC06800000028;
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

void DYTraceEncode_MTLRenderCommandEncoder_dispatchThreadsPerTile(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F700000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75334043;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  v11 = *(a1 + 8);
  *(a2 + 68) = *(a1 + 24);
  *(a2 + 52) = v11;
  v12 = 76;
  *a2 = 76;
  if (__src)
  {
    v13 = 8 * *__src;
    memcpy((a2 + 76), __src, v13 + 8);
    v14 = (v13 + 84);
    v12 = (v13 + 87) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC38200000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"C@3ul@6ul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  v11 = *(a1 + 24);
  *(a2 + 56) = *(a1 + 8);
  *(a2 + 72) = v11;
  *a2 = 80;
  v13 = *(a1 + 48);
  v12 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 96) = v13;
  *(a2 + 112) = v12;
  v14 = 128;
  *a2 = 128;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 128), __src, v15 + 8);
    v16 = (v15 + 136);
    v14 = (v15 + 139) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_dispatchThreadsPerTile_inRegion_withRenderTargetArrayIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC43F00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@3ul@6ului");
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  v11 = *(a1 + 24);
  *(a2 + 56) = *(a1 + 8);
  *(a2 + 72) = v11;
  *a2 = 80;
  v13 = *(a1 + 48);
  v12 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 32);
  *(a2 + 96) = v13;
  *(a2 + 112) = v12;
  *a2 = 128;
  *(a2 + 128) = *(a1 + 80);
  v14 = 132;
  *a2 = 132;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 132), __src, v15 + 8);
    v16 = (v15 + 140);
    v14 = (v15 + 143) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0F000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cultultultul");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
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
  v11 = 116;
  *a2 = 116;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 116), __src, v12 + 8);
    v13 = (v12 + 124);
    v11 = (v12 + 127) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0EF00000024;
  *(a2 + 32) = v10;
  *(a2 + 52) = 108;
  *(a2 + 36) = *"Cululultultululul";
  *a2 = 56;
  *(a2 + 56) = *a1;
  *a2 = 64;
  *(a2 + 64) = a1[1];
  *a2 = 72;
  *(a2 + 72) = a1[2];
  *a2 = 80;
  *(a2 + 80) = a1[3];
  *a2 = 88;
  *(a2 + 88) = a1[4];
  *a2 = 96;
  *(a2 + 96) = a1[5];
  *a2 = 104;
  *(a2 + 104) = a1[6];
  *a2 = 112;
  *(a2 + 112) = a1[7];
  *a2 = 120;
  *(a2 + 120) = a1[8];
  *a2 = 128;
  *(a2 + 128) = a1[9];
  v11 = 136;
  *a2 = 136;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 136), __src, v12 + 8);
    v13 = (v12 + 144);
    v11 = (v12 + 147) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultul");
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultulul");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
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
  v11 = 108;
  *a2 = 108;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 108), __src, v12 + 8);
    v13 = (v12 + 116);
    v11 = (v12 + 119) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultulullul");
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

void DYTraceEncode_MTLRenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A900000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culultultul");
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

void DYTraceEncode_MTLRenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3C800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@3ul@3ul@3ul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  v11 = *(a1 + 24);
  *(a2 + 60) = *(a1 + 8);
  *(a2 + 76) = v11;
  *a2 = 84;
  v12 = *(a1 + 48);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *a2 = 108;
  v13 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v13;
  v14 = 132;
  *a2 = 132;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 132), __src, v15 + 8);
    v16 = (v15 + 140);
    v14 = (v15 + 143) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3C900000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctul@3ul@3ul");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  v11 = *(a1 + 40);
  *(a2 + 76) = *(a1 + 24);
  *(a2 + 92) = v11;
  *a2 = 100;
  v12 = *(a1 + 64);
  *(a2 + 100) = *(a1 + 48);
  *(a2 + 116) = v12;
  v13 = 124;
  *a2 = 124;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 124), __src, v14 + 8);
    v15 = (v14 + 132);
    v13 = (v14 + 135) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3CA00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "C@3ul@3ul@3ul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  v11 = *(a1 + 24);
  *(a2 + 60) = *(a1 + 8);
  *(a2 + 76) = v11;
  *a2 = 84;
  v12 = *(a1 + 48);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *a2 = 108;
  v13 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v13;
  v14 = 132;
  *a2 = 132;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 132), __src, v15 + 8);
    v16 = (v15 + 140);
    v14 = (v15 + 143) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0EE00000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Cultultul";
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

void DYTraceEncode_MTLRenderCommandEncoder_drawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0ED00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululultululul");
  *(a2 + 51) = 0;
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
  v11 = 116;
  *a2 = 116;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 116), __src, v12 + 8);
    v13 = (v12 + 124);
    v11 = (v12 + 127) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLRenderCommandEncoder_drawPrimitives_indirectBuffer_indirectBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0A800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cultul");
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

void DYTraceEncode_MTLRenderCommandEncoder_drawPrimitives_vertexStart_vertexCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC08600000024;
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