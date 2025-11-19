void DYTraceEncode_MTL4ComputeCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC61600000024;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC5C700000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62500000024;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62600000024;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62700000024;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D200000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_dispatchNetworkWithIntermediatesHeap(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D300000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D400000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC5D500000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D600000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC5D700000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_setArgumentTable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D800000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_setPipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5D900000028;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5DA00000024;
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

void DYTraceEncode_MTL4MachineLearningCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5DB00000024;
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

void DYTraceEncode_MTL4MachineLearningPipelineState_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC61700000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC52400000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_barrierAfterEncoderStages_beforeEncoderStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62800000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_barrierAfterQueueStages_beforeStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62900000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_barrierAfterStages_beforeQueueStages_visibilityOptions(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62A00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC52C00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_dispatchThreadsPerTile(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC52D00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC52E00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culululuwul");
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC52F00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culululuwulul");
  *(a2 + 50) = 0;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferLength_instanceCount_baseVertex_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culululuwulullul");
  *(a2 + 53) = 0;
  *(a2 + 55) = 0;
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
  v11 = 128;
  *a2 = 128;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 128), __src, v12 + 8);
    v13 = (v12 + 136);
    v11 = (v12 + 139) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTL4RenderCommandEncoder_drawIndexedPrimitives_indexType_indexBuffer_indexBufferLength_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53100000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cululuwuluw");
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC53200000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawMeshThreadgroupsWithIndirectBuffer_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC53300000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cuw@3ul@3ul");
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  v11 = *(a1 + 32);
  *(a2 + 64) = *(a1 + 16);
  *(a2 + 80) = v11;
  *a2 = 88;
  v12 = *(a1 + 56);
  *(a2 + 88) = *(a1 + 40);
  *(a2 + 104) = v12;
  v13 = 112;
  *a2 = 112;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 112), __src, v14 + 8);
    v15 = (v14 + 120);
    v13 = (v14 + 123) & 0xFFFFFFF8;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC53400000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawPrimitives_indirectBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53500000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x77756C7543;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53600000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53700000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53800000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53900000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC53C00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53D00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC53E00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setArgumentTable_atStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC53F00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setBlendColorRed_green_blue_alpha(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54000000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setColorAttachmentMap(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54B00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setColorStoreAction_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54100000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setCullMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54200000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setDepthBias_slopeScale_clamp(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54300000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setDepthClipMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54400000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setDepthStencilState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54500000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setDepthStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54600000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setDepthTestMinBound_maxBound(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC62B00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setFrontFacingWinding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54700000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setLineWidth(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54800000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setObjectThreadgroupMemoryLength_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54900000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setRenderPipelineState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54A00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC54C00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setScissorRects_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC54D00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setStencilFrontReferenceValue_backReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54E00000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setStencilReferenceValue(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC54F00000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setStencilStoreAction(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55000000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setThreadgroupMemoryLength_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55100000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setTriangleFillMode(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55200000028;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setVertexAmplificationCount_viewMappings(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC55300000024;
  a2[8] = v10;
  *(a2 + 9) = 0x3E623C556C7543;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setViewport(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC55400000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setViewports_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC55500000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_setVisibilityResultMode_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55600000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_updateFence_afterEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55700000024;
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

void DYTraceEncode_MTL4RenderCommandEncoder_waitForFence_beforeEncoderStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC55800000024;
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

void DYTraceEncode_MTLAccelerationStructure_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82B00000028;
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

void DYTraceEncode_MTLAccelerationStructure_allocationInfo(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD83A00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cuwuwuwululul");
  *(a2 + 50) = 0;
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

void DYTraceEncode_MTLAccelerationStructure_children(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFD85400000028;
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

void DYTraceEncode_MTLAccelerationStructure_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84900000028;
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

void DYTraceEncode_MTLAccelerationStructure_heapOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD84700000028;
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

void DYTraceEncode_MTLAccelerationStructure_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD84600000028;
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

void DYTraceEncode_MTLAccelerationStructure_resourceUsage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82D00000028;
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

void DYTraceEncode_MTLAccelerationStructure_restoreMTLAccelerationStructure(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFD82E00000024;
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

void DYTraceEncode_MTLAccelerationStructure_state(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85100000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 105;
  *(a2 + 36) = *"Cuiuiuiui";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 12);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 20);
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

void DYTraceEncode_MTLAccelerationStructure_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84300000028;
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

void DYTraceEncode_MTLAccelerationStructure_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD83B00000028;
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

void DYTraceEncode_MTLAccelerationStructure_setDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC34000000028;
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

void DYTraceEncode_MTLAccelerationStructure_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2D300000028;
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

void DYTraceEncode_MTLAccelerationStructure_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC2D400000028;
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

void DYTraceEncode_MTLAccelerationStructure_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2D500000028;
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

void DYTraceEncode_MTLAccelerationStructure_makeAliasable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2DD00000028;
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

void DYTraceEncode_MTLAccelerationStructure_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC2DE00000028;
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

void DYTraceEncode_MTLAccelerationStructure_waitUntilComplete(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2DF00000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_setAccelerationStructureDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFD85600000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_setAccelerationStructureState(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85200000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2E000000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC58800000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_buildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2E100000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUtul");
  *(a2 + 43) = 0;
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
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_copyAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2E200000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_copyAndCompactAccelerationStructure_toAccelerationStructure(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2E300000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2E400000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC35C00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUtul");
  *(a2 + 43) = 0;
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
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_deserializeInstanceAccelerationStructure_primitiveAccelerationStructures_fromBuffer_serializedBufferOffset_withDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC39600000024;
  a2[8] = v10;
  *(a2 + 9) = 0x556C7574557443;
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
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  *a2 += 8;
  AppendString(*(a1 + 40), a2);
  v14 = *a2;
  v15 = (v14 + 3) & 0xFFFFFFFC;
  bzero(a2 + v14, v15 - v14);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC35D00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_deserializePrimitiveAccelerationStructure_fromBuffer_serializedBufferOffset_withDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC39700000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulU");
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 8);
  *a2 = 60;
  *(a2 + 15) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 24);
  *a2 = 76;
  AppendString(*(a1 + 32), a2);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2E600000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2E700000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2E800000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2E900000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = 0xFFFFC2EA00000024;
  a2[8] = v10;
  *(a2 + 9) = 0x6C757474557443;
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
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_refitAccelerationStructure_descriptor_destination_scratchBuffer_scratchBufferOffset_options(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC3FA00000024;
  a2[8] = v10;
  a2[11] = 108;
  *(a2 + 9) = *"CtUttulul";
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
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 40);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 48);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_sampleCountersInBuffer_atSampleIndex_withBarrier(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2EB00000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_serializeInstanceAccelerationStructure_primitiveAccelerationStructures_toBuffer_serializedBufferOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC35E00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUtul");
  *(a2 + 43) = 0;
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
  v13 = *a2 + 8;
  *a2 = v13;
  *(a2 + v13) = *(a1 + 32);
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_serializePrimitiveAccelerationStructure_toBuffer_serializedBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC35F00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2ED00000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_useHeap(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2EE00000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_useHeaps_count(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2EF00000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_useResource_usage(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2F000000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_useResources_count_usage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2F100000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2F200000028;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeAccelerationStructureSerializationData_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC3FB00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeAccelerationStructureTraversalDepth_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC44900000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2F300000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeCompactedAccelerationStructureSize_toBuffer_offset_sizeDataType(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC37200000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C756C75747443;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeDeserializedAccelerationStructureSize_serializedOffset_toBuffer_sizeBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC31800000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeDeserializedPrimitiveAccelerationStructureSizes_serializedOffset_toBuffer_sizesBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC31900000024;
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

void DYTraceEncode_MTLAccelerationStructureCommandEncoder_writeSerializedAccelerationStructureSize_toBuffer_sizeBufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC31C00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C75747443;
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

void DYTraceEncode_MTLArgumentEncoder_constantDataAtIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC14A00000028;
  *(a2 + 40) = *a1;
  *a2 = 48;
  *(a2 + 48) = a1[2];
  *(a2 + 56) = 30581;
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

void DYTraceEncode_MTLArgumentEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC14100000028;
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

void DYTraceEncode_MTLArgumentEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC14200000028;
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

void DYTraceEncode_MTLArgumentEncoder_newArgumentEncoderForBufferAtIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *(a2 + 32) = v10;
  *(a2 + 36) = 7107907;
  *a2 = 0xFFFFC14B00000028;
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

void DYTraceEncode_MTLArgumentEncoder_setAccelerationStructure_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2F500000024;
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

void DYTraceEncode_MTLArgumentEncoder_setArgumentBuffer_offset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC14300000024;
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

void DYTraceEncode_MTLArgumentEncoder_setArgumentBuffer_startOffset_arrayElement(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC15F00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setBuffer_offset_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC14400000024;
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

void DYTraceEncode_MTLArgumentEncoder_setBuffers_offsets_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC14500000024;
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

void DYTraceEncode_MTLArgumentEncoder_setDepthStencilState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC49B00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setDepthStencilStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC49C00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setIndirectCommandBuffer_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1D400000024;
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

void DYTraceEncode_MTLArgumentEncoder_setIndirectCommandBuffers_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC1D500000024;
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

void DYTraceEncode_MTLArgumentEncoder_setIntersectionFunctionTable_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC34D00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setIntersectionFunctionTables_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC34E00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setRenderPipelineState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC17E00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setRenderPipelineStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC17F00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC14800000024;
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

void DYTraceEncode_MTLArgumentEncoder_setSamplerStates_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC14900000024;
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

void DYTraceEncode_MTLArgumentEncoder_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  if (__src)
  {
    v10 = 10;
  }

  else
  {
    v10 = 2;
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
  *a2 = 0xFFFFC14600000024;
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

void DYTraceEncode_MTLArgumentEncoder_setTextures_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFC14700000024;
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

void DYTraceEncode_MTLArgumentEncoder_setVisibleFunctionTable_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC34F00000024;
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

void DYTraceEncode_MTLArgumentEncoder_setVisibleFunctionTables_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC35000000024;
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

void DYTraceEncode_MTLBinaryArchive_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2CC00000028;
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

void DYTraceEncode_MTLBinaryArchive_addComputePipelineFunctionsWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2CE00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  strcpy(a2 + v13, "ui");
  v14 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v14 - (*a2 + 3));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 4;
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

void DYTraceEncode_MTLBinaryArchive_addLibraryWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC3BE00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  strcpy(a2 + v13, "ui");
  v14 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v14 - (*a2 + 3));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 4;
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

void DYTraceEncode_MTLBinaryArchive_addRenderPipelineFunctionsWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2CF00000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  strcpy(a2 + v13, "ui");
  v14 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v14 - (*a2 + 3));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 4;
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

void DYTraceEncode_MTLBinaryArchive_addTileRenderPipelineFunctionsWithDescriptor_error(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC2D000000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  strcpy(a2 + v13, "ui");
  v14 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v14 - (*a2 + 3));
  *a2 = v14;
  *(a2 + v14) = *(a1 + 24);
  v15 = *a2 + 4;
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

void DYTraceEncode_MTLBinaryArchive_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC2BB00000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_resolveCounters_inRange_destinationBuffer_destinationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC27400000024;
  a2[8] = v10;
  strcpy(a2 + 36, "Ct@2ultulU<b>");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  *(a2 + 15) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 21) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 23) = *(a1 + 40);
  *a2 = 100;
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

void DYTraceEncode_MTLBlitCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC00000000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC58A00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC00300000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0AE00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00700000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTensor_sourceOrigin_sourceDimensions_toTensor_destinationOrigin_destinationDimensions(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC62C00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC00400000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0AF00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC00200000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0AD00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@3ul@3ultulul@3ulul");
  *(a2 + 62) = 0;
  *a2 = 64;
  *(a2 + 64) = *a1;
  *a2 = 72;
  *(a2 + 72) = *(a1 + 8);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 16);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 24);
  *a2 = 96;
  v11 = *(a1 + 48);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 112) = v11;
  *a2 = 120;
  v12 = *(a1 + 72);
  *(a2 + 120) = *(a1 + 56);
  *(a2 + 136) = v12;
  *a2 = 144;
  *(a2 + 144) = *(a1 + 80);
  *a2 = 152;
  *(a2 + 152) = *(a1 + 88);
  *a2 = 160;
  *(a2 + 160) = *(a1 + 96);
  *a2 = 168;
  v13 = *(a1 + 120);
  *(a2 + 168) = *(a1 + 104);
  *(a2 + 184) = v13;
  *a2 = 192;
  *(a2 + 192) = *(a1 + 128);
  v14 = 200;
  *a2 = 200;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 200), __src, v15 + 8);
    v16 = (v15 + 208);
    v14 = (v15 + 211) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1FA00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyFromTexture_toTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1FB00000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_copyIndirectCommandBuffer_sourceRange_destination_destinationIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1A900000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Ct@2ultul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 8);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 40);
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

void DYTraceEncode_MTLBlitCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00100000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00800000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_fillBuffer_range_pattern4(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC38E00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ct@2ului");
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

void DYTraceEncode_MTLBlitCommandEncoder_fillBuffer_range_value(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00600000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_fillTexture_level_slice_region_bytes_length(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC38F00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "Ctulul@6ulU<b>ul");
  *(a2 + 53) = 0;
  *(a2 + 55) = 0;
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 8);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 16);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 24);
  *a2 = 88;
  v12 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(a2 + 22) = *(a1 + 32);
  *(a2 + 26) = v12;
  *(a2 + 30) = v11;
  *a2 = 136;
  AppendString(*(a1 + 80), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 88);
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

void DYTraceEncode_MTLBlitCommandEncoder_fillTexture_level_slice_region_color(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC39000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@6ul@4d");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 24);
  *a2 = 84;
  v12 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *(a2 + 116) = v11;
  *a2 = 132;
  v13 = *(a1 + 80);
  *(a2 + 148) = *(a1 + 96);
  *(a2 + 132) = v13;
  v14 = 164;
  *a2 = 164;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 164), __src, v15 + 8);
    v16 = (v15 + 172);
    v14 = (v15 + 175) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLBlitCommandEncoder_fillTexture_level_slice_region_color_pixelFormat(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC39100000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctulul@6ul@4dul");
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 24);
  *a2 = 84;
  v12 = *(a1 + 48);
  v11 = *(a1 + 64);
  *(a2 + 84) = *(a1 + 32);
  *(a2 + 100) = v12;
  *(a2 + 116) = v11;
  *a2 = 132;
  v13 = *(a1 + 80);
  *(a2 + 148) = *(a1 + 96);
  *(a2 + 132) = v13;
  *a2 = 164;
  *(a2 + 164) = *(a1 + 112);
  v14 = 172;
  *a2 = 172;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 172), __src, v15 + 8);
    v16 = (v15 + 180);
    v14 = (v15 + 183) & 0xFFFFFFFC;
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

void DYTraceEncode_MTLBlitCommandEncoder_generateMipmapsForTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00500000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_getTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC19700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ct@6ulululuitul");
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 8);
  *a2 = 68;
  v12 = *(a1 + 32);
  v11 = *(a1 + 48);
  *(a2 + 68) = *(a1 + 16);
  *(a2 + 84) = v12;
  *(a2 + 100) = v11;
  *a2 = 116;
  *(a2 + 116) = *(a1 + 64);
  *a2 = 124;
  *(a2 + 124) = *(a1 + 72);
  *a2 = 132;
  *(a2 + 132) = *(a1 + 96);
  *a2 = 136;
  *(a2 + 136) = *(a1 + 80);
  *a2 = 144;
  *(a2 + 144) = *(a1 + 88);
  v13 = 152;
  *a2 = 152;
  if (__src)
  {
    v14 = 8 * *__src;
    memcpy((a2 + 152), __src, v14 + 8);
    v15 = (v14 + 160);
    v13 = (v14 + 163) & 0xFFFFFFF8;
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

void DYTraceEncode_MTLBlitCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC00900000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_invalidateCompressedTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC39200000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_invalidateCompressedTexture_slice_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC39300000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_optimizeContentsForCPUAccess(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC18700000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_optimizeContentsForCPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC18800000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_optimizeContentsForGPUAccess(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC18500000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_optimizeContentsForGPUAccess_slice_level(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC18600000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_optimizeIndirectCommandBuffer_withRange(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1AA00000024;
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

void DYTraceEncode_MTLBlitCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC00B00000028;
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

void DYTraceEncode_MTLBlitCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC00A00000028;
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