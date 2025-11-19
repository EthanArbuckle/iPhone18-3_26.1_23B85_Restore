void DYTraceEncode_MTLSharedEvent_newSharedEventHandle(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1DD00000028;
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

void DYTraceEncode_MTLSharedEvent_waitUntilSignaledValue_timeoutMS(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC3C200000024;
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

void DYTraceEncode_MTLTensor_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85C00000028;
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

void DYTraceEncode_MTLTensor_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85D00000028;
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

void DYTraceEncode_MTLTensor_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85E00000028;
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

void DYTraceEncode_MTLTensor_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85F00000028;
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

void DYTraceEncode_MTLTensor_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD86100000028;
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

void DYTraceEncode_MTLTensor_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD86000000028;
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

void DYTraceEncode_MTLTensor_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC59A00000028;
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

void DYTraceEncode_MTLTensor_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC59B00000028;
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

void DYTraceEncode_MTLTensor_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC59C00000028;
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

void DYTraceEncode_MTLTensor_makeAliasable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5A600000028;
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

void DYTraceEncode_MTLTensor_replaceSliceOrigin_sliceDimensions_withBytes_strides(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  v10 = 8 * (a4 != 0);
  if (a5 && a3 <= 0x23)
  {
    v35 = *a5;
    v36 = 500;
    v37 = "36 <= length";
    v38 = 0u;
    v39 = 0u;
    GTError_addError(a5, &v35);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC62D00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "C@17ul@17ulU<b>@17ul");
  *(a2 + 57) = 0;
  *(a2 + 59) = 0;
  *a2 = 60;
  *(a2 + 15) = *a1;
  *a2 = 68;
  *(a2 + 17) = *(a1 + 8);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  *(a2 + 33) = *(a1 + 72);
  *(a2 + 29) = v13;
  *(a2 + 25) = v12;
  *(a2 + 21) = v11;
  v14 = *(a1 + 88);
  v15 = *(a1 + 104);
  v16 = *(a1 + 120);
  *(a2 + 49) = *(a1 + 136);
  *(a2 + 45) = v16;
  *(a2 + 41) = v15;
  *(a2 + 37) = v14;
  *a2 = 204;
  *(a2 + 51) = *(a1 + 144);
  v17 = *(a1 + 160);
  v18 = *(a1 + 176);
  v19 = *(a1 + 192);
  *(a2 + 67) = *(a1 + 208);
  *(a2 + 63) = v19;
  *(a2 + 59) = v18;
  *(a2 + 55) = v17;
  v20 = *(a1 + 224);
  v21 = *(a1 + 240);
  v22 = *(a1 + 256);
  *(a2 + 83) = *(a1 + 272);
  *(a2 + 75) = v21;
  *(a2 + 79) = v22;
  *(a2 + 71) = v20;
  *a2 = 340;
  AppendString(*(a1 + 280), a2);
  v23 = *a2;
  v24 = (v23 + 3) & 0xFFFFFFFC;
  bzero(a2 + v23, v24 - v23);
  *a2 = v24;
  v25 = a2 + v24;
  *v25 = *(a1 + 288);
  v26 = *(a1 + 304);
  v27 = *(a1 + 320);
  v28 = *(a1 + 352);
  *(v25 + 3) = *(a1 + 336);
  *(v25 + 4) = v28;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  v29 = *(a1 + 368);
  v30 = *(a1 + 384);
  v31 = *(a1 + 400);
  *(v25 + 16) = *(a1 + 416);
  *(v25 + 6) = v30;
  *(v25 + 7) = v31;
  *(v25 + 5) = v29;
  v32 = *a2 + 136;
  *a2 = v32;
  if (a4)
  {
    v33 = 8 * *a4 + 8;
    memcpy(a2 + v32, a4, v33);
    v34 = *a2 + v33;
    v32 = (v34 + 3) & 0xFFFFFFFC;
    bzero(a2 + v34, v32 - v34);
    *a2 = v32;
  }

  if (a5)
  {
    if (v32 > a3)
    {
      v35 = *a5;
      v36 = 500;
      v37 = "bytes->length <= length";
      v38 = 0u;
      v39 = 0u;
      GTError_addError(a5, &v35);
    }
  }
}

void DYTraceEncode_MTLTensor_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC5AB00000028;
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

void DYTraceEncode_MTLTexture_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD81200000028;
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

void DYTraceEncode_MTLTexture_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82400000028;
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

void DYTraceEncode_MTLTexture_compressionFeedback(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82300000028;
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

void DYTraceEncode_MTLTexture_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD84C00000028;
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

void DYTraceEncode_MTLTexture_heapOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD83700000028;
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

void DYTraceEncode_MTLTexture_mipmapInfo(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
{
  if (a4)
  {
    v10 = 14;
  }

  else
  {
    v10 = 6;
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
  *a2 = 0xFFFFD80900000028;
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

void DYTraceEncode_MTLTexture_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82A00000028;
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

void DYTraceEncode_MTLTexture_resourceUsage(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD80600000028;
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

void DYTraceEncode_MTLTexture_saveSlice_level_zPlane_normalize_blitOption_toPath(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFD82700000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CulululuiulS");
  *(a2 + 49) = 0;
  *(a2 + 51) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  *(a2 + 15) = *(a1 + 8);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 19) = *(a1 + 24);
  *a2 = 84;
  a2[21] = *(a1 + 48);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 32);
  *a2 = 96;
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

void DYTraceEncode_MTLTexture_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD81C00000028;
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

void DYTraceEncode_MTLTexture_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD80D00000028;
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

void DYTraceEncode_MTLTexture_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC09000000028;
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

void DYTraceEncode_MTLTexture_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC09100000028;
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

void DYTraceEncode_MTLTexture_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC09200000028;
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

void DYTraceEncode_MTLTexture_didModifyData(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC35200000028;
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

void DYTraceEncode_MTLTexture_getBytes_bytesPerRow_fromRegion_mipmapLevel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v20 = *a5;
    v21 = 500;
    v22 = "36 <= length";
    v23 = 0u;
    v24 = 0u;
    GTError_addError(a5, &v20);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFC09500000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU<b>ul@6ulul");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  AppendString(*(a1 + 8), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 16);
  v13 = *a2 + 8;
  *a2 = v13;
  v14 = (a2 + v13);
  v15 = *(a1 + 24);
  v16 = *(a1 + 56);
  v14[1] = *(a1 + 40);
  v14[2] = v16;
  *v14 = v15;
  LODWORD(v14) = *a2 + 48;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 72);
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

void DYTraceEncode_MTLTexture_isAliasable(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC11400000028;
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

void DYTraceEncode_MTLTexture_isPurgeable(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC09900000028;
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

void DYTraceEncode_MTLTexture_makeAliasable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC10E00000028;
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

void DYTraceEncode_MTLTexture_newRemoteTextureViewForDevice(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1D700000028;
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

void DYTraceEncode_MTLTexture_newSharedTextureHandle(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC1DA00000028;
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

void DYTraceEncode_MTLTexture_newTextureViewWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC62F00000028;
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

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC09700000028;
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

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat_resourceIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC2B600000024;
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

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC0BC00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culul@2ul@2ul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 24);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 48);
  *(a2 + 108) = 116;
  *a2 = 112;
  *(a2 + 112) = *(a1 + 8);
  v11 = 120;
  *a2 = 120;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 120), __src, v12 + 8);
    v13 = (v12 + 128);
    v11 = (v12 + 131) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC2B700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culul@2ul@2uluw");
  *a2 = 52;
  *(a2 + 52) = *a1;
  *a2 = 60;
  *(a2 + 60) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 24);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 48);
  *a2 = 108;
  *(a2 + 108) = *(a1 + 64);
  *(a2 + 116) = 116;
  *a2 = 120;
  *(a2 + 120) = *(a1 + 8);
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

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC26100000024;
  *(a2 + 32) = v10;
  *(a2 + 52) = 98;
  *(a2 + 36) = *"Culul@2ul@2ul@4ub";
  *a2 = 56;
  *(a2 + 56) = *a1;
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 48);
  *a2 = 112;
  *(a2 + 112) = *(a1 + 64);
  *(a2 + 116) = 116;
  *a2 = 120;
  *(a2 + 120) = *(a1 + 8);
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

void DYTraceEncode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC2B800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culul@2ul@2ul@4ubuw");
  *a2 = 56;
  *(a2 + 56) = *a1;
  *a2 = 64;
  *(a2 + 64) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 32);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 48);
  *a2 = 112;
  *(a2 + 112) = *(a1 + 72);
  *a2 = 116;
  *(a2 + 116) = *(a1 + 64);
  *(a2 + 124) = 116;
  *a2 = 128;
  *(a2 + 128) = *(a1 + 8);
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

void DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC09600000024;
  a2[8] = v10;
  strcpy(a2 + 36, "C@6ululU<b>ul");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  v11 = *(a1 + 40);
  v12 = *(a1 + 24);
  *(a2 + 15) = *(a1 + 8);
  *(a2 + 19) = v12;
  *(a2 + 23) = v11;
  *a2 = 108;
  *(a2 + 27) = *(a1 + 56);
  *a2 = 116;
  AppendString(*(a1 + 64), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 72);
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

void DYTraceEncode_MTLTextureLayout_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC11F00000028;
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

void DYTraceEncode_MTLTextureViewPool_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC58400000028;
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

void DYTraceEncode_MTLTextureViewPool_setTextureView_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFC58600000024;
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
  *(a2 + 68) = 30581;
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

void DYTraceEncode_MTLVideoCommandEncoder_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC1EE00000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC5AE00000024;
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

void DYTraceEncode_MTLVideoCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1EF00000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F400000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_generateMotionVectorsForTexture_previousTexture_resultBuffer_bufferOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F100000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctttul");
  *(a2 + 43) = 0;
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

void DYTraceEncode_MTLVideoCommandEncoder_insertDebugSignpost(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC1F500000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F700000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_pushDebugGroup(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC1F600000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_setMotionEstimationPipeline(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F000000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F300000028;
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

void DYTraceEncode_MTLVideoCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC1F200000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_allocatedSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD84200000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_allocationID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD83F00000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_gpuAddress(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD85700000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD85000000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_setFunctions_withRange(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC31300000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CU@2ul");
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

void DYTraceEncode_MTLVisibleFunctionTable_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFD83E00000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFD82F00000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_setLabel(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFC30900000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC30A00000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC30B00000028;
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

void DYTraceEncode_MTLVisibleFunctionTable_setFunction_atIndex(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFC31200000024;
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

void DYTraceEncode_NSHMDMetalSession_initWithMetalDevice_deviceReference_hmdName(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE60200000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CtUS");
  *(a2 + 41) = 0;
  *(a2 + 43) = 0;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  *(a2 + 13) = *(a1 + 16);
  *a2 = 60;
  AppendString(*(a1 + 24), a2);
  AppendString(*(a1 + 32), a2);
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

void DYTraceEncode_NSHMDMetalSession_nextDrawable(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE60100000028;
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

void DYTraceEncode_NSHMDMetalSession_setDrawablePixelFormat(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE60000000028;
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

void DYTraceEncode_NSHMDMetalSession_setDrawableSize(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE60300000024;
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

void DYTraceEncode_UIScreen_setInterfaceOrientation(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE40D00000028;
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

void DYTraceEncode_MPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE80D00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CUUi");
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
  v13 = *a2 + 4;
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

void DYTraceEncode_MPSPlugin_newCNNConvolutionWithDescriptor_convolutionData(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[9] = 5592387;
  *a2 = 0xFFFFE80100000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
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

void DYTraceEncode_MPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  a2[9] = 5592387;
  *a2 = 0xFFFFE82100000028;
  *(a2 + 5) = *a1;
  *a2 = 48;
  AppendString(*(a1 + 16), a2);
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

void DYTraceEncode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE80B00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6666666943;
  *a2 = 44;
  *(a2 + 44) = *a1;
  *a2 = 52;
  *(a2 + 52) = *(a1 + 16);
  *a2 = 56;
  *(a2 + 56) = *(a1 + 20);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 28);
  *(a2 + 68) = 116;
  *a2 = 72;
  *(a2 + 72) = *(a1 + 8);
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

void DYTraceEncode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE80F00000024;
  a2[8] = v10;
  *(a2 + 9) = 0x6C75556943;
  *a2 = 44;
  *(a2 + 11) = *a1;
  *a2 = 52;
  a2[13] = *(a1 + 16);
  *a2 = 56;
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

void DYTraceEncode_MPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v13 = *a5;
    v14 = 500;
    v15 = "36 <= length";
    v16 = 0u;
    v17 = 0u;
    GTError_addError(a5, &v13);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE81600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ciiulululdd");
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 16);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 20);
  *a2 = 64;
  *(a2 + 64) = *(a1 + 24);
  *a2 = 72;
  *(a2 + 72) = *(a1 + 32);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 40);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 48);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 56);
  v11 = 116;
  *(a2 + 104) = 116;
  *a2 = 108;
  *(a2 + 108) = *(a1 + 8);
  *a2 = 116;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 116), __src, v12 + 8);
    v11 = (v12 + 127) & 0xFFFFFFFC;
    bzero((a2 + (v12 + 124)), v11 - (v12 + 124));
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
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

void DYTraceEncode_MPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE80A00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ciululdd");
  *(a2 + 45) = 0;
  *(a2 + 47) = 0;
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = *(a1 + 16);
  *a2 = 60;
  *(a2 + 60) = *(a1 + 24);
  *a2 = 68;
  *(a2 + 68) = *(a1 + 32);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 40);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 48);
  *(a2 + 92) = 116;
  *a2 = 96;
  *(a2 + 96) = *(a1 + 8);
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

void DYTraceEncode_MPSPlugin_newMatrixFullyConnected(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE82200000028;
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

void DYTraceEncode_MPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE80300000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Culululul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = a1[2];
  *a2 = 64;
  *(a2 + 64) = a1[3];
  *a2 = 72;
  *(a2 + 72) = a1[4];
  *a2 = 80;
  *(a2 + 80) = a1[5];
  *(a2 + 88) = 116;
  *a2 = 92;
  *(a2 + 92) = a1[1];
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

void DYTraceEncode_MPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE82300000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Culululul";
  *a2 = 48;
  *(a2 + 48) = *a1;
  *a2 = 56;
  *(a2 + 56) = a1[2];
  *a2 = 64;
  *(a2 + 64) = a1[3];
  *a2 = 72;
  *(a2 + 72) = a1[4];
  *a2 = 80;
  *(a2 + 80) = a1[5];
  *(a2 + 88) = 116;
  *a2 = 92;
  *(a2 + 92) = a1[1];
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

void DYTraceEncode_MPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE81C00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Culululululul");
  *(a2 + 50) = 0;
  *a2 = 52;
  *(a2 + 52) = *a1;
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
  *a2 = 100;
  *(a2 + 100) = a1[7];
  *(a2 + 108) = 116;
  *a2 = 112;
  *(a2 + 112) = a1[1];
  v11 = 120;
  *a2 = 120;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 120), __src, v12 + 8);
    v13 = (v12 + 128);
    v11 = (v12 + 131) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MPSPlugin_newCNNSoftMax(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE81900000028;
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

void DYTraceEncode_MPSPlugin_newNDArrayConvolution2DWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE83100000028;
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

void DYTraceEncode_MPSPlugin_newNDArrayConvolution2DGradientWithDescriptor(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE83000000028;
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

void DYTraceEncode_MPSExternalPluginBase_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE80500000028;
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

void DYTraceEncode_MPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE80900000024;
  a2[8] = v10;
  a2[11] = 85;
  *(a2 + 9) = *"CttultUtU";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 16);
  *a2 = 64;
  *(a2 + 8) = *(a1 + 24);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 32);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 40);
  *a2 = 88;
  AppendString(*(a1 + 48), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 56);
  *a2 += 8;
  AppendString(*(a1 + 64), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  strcpy(a2 + v14, "ul");
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

void DYTraceEncode_MPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81B00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtU");
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 16);
  *a2 = 64;
  *(a2 + 8) = *(a1 + 24);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 32);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 40);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 48);
  *a2 = 96;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  strcpy(a2 + v14, "ul");
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

void DYTraceEncode_MPSExternalCNNUnary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTextures_sourceInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v31 = *a5;
    v32 = 500;
    v33 = "36 <= length";
    v34 = 0u;
    v35 = 0u;
    GTError_addError(a5, &v31);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE81D00000024;
  a2[8] = v10;
  v11 = *(a1 + 56);
  v12 = snprintf(a2 + 36, a3 - 36, "Cttulul@%llutU@%llutUtul", v11, *(a1 + 80)) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 16);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 24);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 40);
  v18 = *a2 + 8;
  *a2 = v18;
  v19 = 8 * *(a1 + 56);
  memcpy(a2 + v18, *(a1 + 48), v19);
  *a2 += v19;
  AppendString(*(a1 + 64), a2);
  v20 = *a2;
  v21 = (v20 + 3) & 0xFFFFFFFC;
  bzero(a2 + v20, v21 - v20);
  *a2 = v21;
  v22 = 8 * *(a1 + 80);
  memcpy(a2 + v21, *(a1 + 72), v22);
  *a2 += v22;
  AppendString(*(a1 + 88), a2);
  v23 = *a2;
  v24 = (v23 + 3) & 0xFFFFFFFC;
  bzero(a2 + v23, v24 - v23);
  *a2 = v24;
  *(a2 + v24) = *(a1 + 96);
  v25 = *a2 + 8;
  *a2 = v25;
  *(a2 + v25) = *(a1 + 104);
  v26 = *a2 + 8;
  *a2 = v26;
  strcpy(a2 + v26, "ul");
  v27 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v27 - (*a2 + 3));
  *a2 = v27;
  *(a2 + v27) = *(a1 + 8);
  v28 = *a2 + 8;
  *a2 = v28;
  if (a4)
  {
    v29 = 8 * *a4 + 8;
    memcpy(a2 + v28, a4, v29);
    v30 = *a2 + v29;
    v28 = (v30 + 3) & 0xFFFFFFFC;
    bzero(a2 + v30, v28 - v30);
    *a2 = v28;
  }

  if (a5)
  {
    if (v28 > a3)
    {
      v31 = *a5;
      v32 = 500;
      v33 = "bytes->length <= length";
      v34 = 0u;
      v35 = 0u;
      GTError_addError(a5, &v31);
    }
  }
}

void DYTraceEncode_MPSExternalCNNUnary_maxBatchSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE80600000028;
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

void DYTraceEncode_MPSExternalCNNBinary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTexture_primaryInfo_secondaryTexture_secondaryInfo_destinationTexture_destinationInfo(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81300000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtU");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  *(a2 + 15) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 24);
  *a2 = 76;
  *(a2 + 19) = *(a1 + 32);
  *a2 = 84;
  *(a2 + 21) = *(a1 + 40);
  *a2 = 92;
  *(a2 + 23) = *(a1 + 48);
  *a2 = 100;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  strcpy(a2 + v16, "ul");
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

void DYTraceEncode_MPSExternalCNNBinary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v34 = *a5;
    v35 = 500;
    v36 = "36 <= length";
    v37 = 0u;
    v38 = 0u;
    GTError_addError(a5, &v34);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE81A00000024;
  a2[8] = v10;
  v11 = *(a1 + 80);
  v12 = snprintf(a2 + 36, a3 - 36, "Cttulul@%llutU@%llutU@%llutUtul", *(a1 + 56), v11, *(a1 + 104)) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 16);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 24);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 40);
  v18 = *a2 + 8;
  *a2 = v18;
  v19 = 8 * *(a1 + 56);
  memcpy(a2 + v18, *(a1 + 48), v19);
  *a2 += v19;
  AppendString(*(a1 + 64), a2);
  v20 = *a2;
  v21 = (v20 + 3) & 0xFFFFFFFC;
  bzero(a2 + v20, v21 - v20);
  *a2 = v21;
  v22 = 8 * *(a1 + 80);
  memcpy(a2 + v21, *(a1 + 72), v22);
  *a2 += v22;
  AppendString(*(a1 + 88), a2);
  v23 = *a2;
  v24 = (v23 + 3) & 0xFFFFFFFC;
  bzero(a2 + v23, v24 - v23);
  *a2 = v24;
  v25 = 8 * *(a1 + 104);
  memcpy(a2 + v24, *(a1 + 96), v25);
  *a2 += v25;
  AppendString(*(a1 + 112), a2);
  v26 = *a2;
  v27 = (v26 + 3) & 0xFFFFFFFC;
  bzero(a2 + v26, v27 - v26);
  *a2 = v27;
  *(a2 + v27) = *(a1 + 120);
  v28 = *a2 + 8;
  *a2 = v28;
  *(a2 + v28) = *(a1 + 128);
  v29 = *a2 + 8;
  *a2 = v29;
  strcpy(a2 + v29, "ul");
  v30 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v30 - (*a2 + 3));
  *a2 = v30;
  *(a2 + v30) = *(a1 + 8);
  v31 = *a2 + 8;
  *a2 = v31;
  if (a4)
  {
    v32 = 8 * *a4 + 8;
    memcpy(a2 + v31, a4, v32);
    v33 = *a2 + v32;
    v31 = (v33 + 3) & 0xFFFFFFFC;
    bzero(a2 + v33, v31 - v33);
    *a2 = v31;
  }

  if (a5)
  {
    if (v31 > a3)
    {
      v34 = *a5;
      v35 = 500;
      v36 = "bytes->length <= length";
      v37 = 0u;
      v38 = 0u;
      GTError_addError(a5, &v34);
    }
  }
}

void DYTraceEncode_MPSExternalCNNBinary_maxBatchSize(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
  *a2 = 0xFFFFE81500000028;
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

void DYTraceEncode_MPSExternalCNNConvolution_reloadWeightsAndBiases(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81800000028;
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

void DYTraceEncode_MPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE80800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctttttul");
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

void DYTraceEncode_MPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE82000000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctttttul");
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

void DYTraceEncode_MPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE82400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctttulttul");
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
  *a2 = 96;
  *(a2 + 96) = a1[6];
  *a2 = 104;
  *(a2 + 104) = a1[7];
  v11 = 112;
  *a2 = 112;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 112), __src, v12 + 8);
    v13 = (v12 + 120);
    v11 = (v12 + 123) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE82600000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctttulttul");
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
  *a2 = 96;
  *(a2 + 96) = a1[6];
  *a2 = 104;
  *(a2 + 104) = a1[7];
  v11 = 112;
  *a2 = 112;
  if (__src)
  {
    v12 = 8 * *__src;
    memcpy((a2 + 112), __src, v12 + 8);
    v13 = (v12 + 120);
    v11 = (v12 + 123) & 0xFFFFFFF8;
    bzero((a2 + v13), v11 - v13);
    *a2 = v11;
  }

  if (a5)
  {
    if (v11 > a3)
    {
      v14 = *a5;
      v15 = 500;
      v16 = "bytes->length <= length";
      v17 = 0u;
      v18 = 0u;
      GTError_addError(a5, &v14);
    }
  }
}

void DYTraceEncode_MPSExternalCNNConvolutionGradient_reloadWeights(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81100000028;
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

void DYTraceEncode_MPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE81F00000024;
  *(a2 + 32) = v10;
  *(a2 + 36) = 0x6C757474747443;
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

void DYTraceEncode_MPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_weightsDataType_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFE82500000024;
  *(a2 + 32) = v10;
  *(a2 + 44) = 108;
  *(a2 + 36) = *"Ctttultul";
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

void DYTraceEncode_MPSExternalCNNConvolutionGradient_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_weightsGradient_biasesGradient_accumulate_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v34 = *a5;
    v35 = 500;
    v36 = "36 <= length";
    v37 = 0u;
    v38 = 0u;
    GTError_addError(a5, &v34);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE81E00000024;
  a2[8] = v10;
  v11 = *(a1 + 56);
  v12 = snprintf(a2 + 36, a3 - 36, "Cttulul@%llutU@%llutUttitul", v11, *(a1 + 80)) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 16);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 24);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 40);
  v18 = *a2 + 8;
  *a2 = v18;
  v19 = 8 * *(a1 + 56);
  memcpy(a2 + v18, *(a1 + 48), v19);
  *a2 += v19;
  AppendString(*(a1 + 64), a2);
  v20 = *a2;
  v21 = (v20 + 3) & 0xFFFFFFFC;
  bzero(a2 + v20, v21 - v20);
  *a2 = v21;
  v22 = 8 * *(a1 + 80);
  memcpy(a2 + v21, *(a1 + 72), v22);
  *a2 += v22;
  AppendString(*(a1 + 88), a2);
  v23 = *a2;
  v24 = (v23 + 3) & 0xFFFFFFFC;
  bzero(a2 + v23, v24 - v23);
  *a2 = v24;
  *(a2 + v24) = *(a1 + 96);
  v25 = *a2 + 8;
  *a2 = v25;
  *(a2 + v25) = *(a1 + 104);
  v26 = *a2 + 8;
  *a2 = v26;
  *(a2 + v26) = *(a1 + 112);
  v27 = *a2 + 4;
  *a2 = v27;
  *(a2 + v27) = *(a1 + 120);
  v28 = *a2 + 8;
  *a2 = v28;
  *(a2 + v28) = *(a1 + 128);
  v29 = *a2 + 8;
  *a2 = v29;
  strcpy(a2 + v29, "ul");
  v30 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v30 - (*a2 + 3));
  *a2 = v30;
  *(a2 + v30) = *(a1 + 8);
  v31 = *a2 + 8;
  *a2 = v31;
  if (a4)
  {
    v32 = 8 * *a4 + 8;
    memcpy(a2 + v31, a4, v32);
    v33 = *a2 + v32;
    v31 = (v33 + 3) & 0xFFFFFFFC;
    bzero(a2 + v33, v31 - v33);
    *a2 = v31;
  }

  if (a5)
  {
    if (v31 > a3)
    {
      v34 = *a5;
      v35 = 500;
      v36 = "bytes->length <= length";
      v37 = 0u;
      v38 = 0u;
      GTError_addError(a5, &v34);
    }
  }
}

void DYTraceEncode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_A_aInfo_B_bInfo_C_cInfo(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE80E00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulult@4ult@4ult@4ul");
  *(a2 + 59) = 0;
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 24);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 40);
  *a2 = 100;
  *(a2 + 100) = *(a1 + 48);
  *a2 = 108;
  v11 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v11;
  *a2 = 140;
  *(a2 + 140) = *(a1 + 88);
  *a2 = 148;
  v12 = *(a1 + 112);
  *(a2 + 148) = *(a1 + 96);
  *(a2 + 164) = v12;
  *a2 = 180;
  *(a2 + 180) = *(a1 + 128);
  *a2 = 188;
  v13 = *(a1 + 152);
  *(a2 + 188) = *(a1 + 136);
  *(a2 + 204) = v13;
  *(a2 + 220) = 27765;
  *a2 = 224;
  *(a2 + 224) = *(a1 + 8);
  v14 = 232;
  *a2 = 232;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 232), __src, v15 + 8);
    v16 = (v15 + 240);
    v14 = (v15 + 243) & 0xFFFFFFF8;
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

void DYTraceEncode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE80C00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulululululddt@4ult@4ult@4ul");
  *(a2 + 67) = 0;
  *a2 = 68;
  *(a2 + 68) = *a1;
  *a2 = 76;
  *(a2 + 76) = *(a1 + 16);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 24);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 32);
  *a2 = 100;
  *(a2 + 100) = *(a1 + 40);
  *a2 = 108;
  *(a2 + 108) = *(a1 + 48);
  *a2 = 116;
  *(a2 + 116) = *(a1 + 56);
  *a2 = 124;
  *(a2 + 124) = *(a1 + 64);
  *a2 = 132;
  *(a2 + 132) = *(a1 + 72);
  *a2 = 140;
  *(a2 + 140) = *(a1 + 80);
  *a2 = 148;
  *(a2 + 148) = *(a1 + 88);
  *a2 = 156;
  v11 = *(a1 + 112);
  *(a2 + 156) = *(a1 + 96);
  *(a2 + 172) = v11;
  *a2 = 188;
  *(a2 + 188) = *(a1 + 128);
  *a2 = 196;
  v12 = *(a1 + 152);
  *(a2 + 196) = *(a1 + 136);
  *(a2 + 212) = v12;
  *a2 = 228;
  *(a2 + 228) = *(a1 + 168);
  *a2 = 236;
  v13 = *(a1 + 192);
  *(a2 + 236) = *(a1 + 176);
  *(a2 + 252) = v13;
  *(a2 + 268) = 27765;
  *a2 = 272;
  *(a2 + 272) = *(a1 + 8);
  v14 = 280;
  *a2 = 280;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 280), __src, v15 + 8);
    v16 = (v15 + 288);
    v14 = (v15 + 291) & 0xFFFFFFF8;
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

void DYTraceEncode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRowsAndResultColumnsAndInteriorColumns_alphaAndBeta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE82700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulul@3ul@2dt@4ult@4ult@4ultul");
  *(a2 + 69) = 0;
  *(a2 + 71) = 0;
  *a2 = 72;
  *(a2 + 72) = *a1;
  *a2 = 80;
  *(a2 + 80) = *(a1 + 16);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 24);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 32);
  *a2 = 104;
  *(a2 + 104) = *(a1 + 40);
  *a2 = 112;
  v11 = *(a1 + 64);
  *(a2 + 112) = *(a1 + 48);
  *(a2 + 128) = v11;
  *a2 = 136;
  *(a2 + 136) = *(a1 + 72);
  *a2 = 152;
  *(a2 + 152) = *(a1 + 88);
  *a2 = 160;
  v12 = *(a1 + 112);
  *(a2 + 160) = *(a1 + 96);
  *(a2 + 176) = v12;
  *a2 = 192;
  *(a2 + 192) = *(a1 + 128);
  *a2 = 200;
  v13 = *(a1 + 152);
  *(a2 + 200) = *(a1 + 136);
  *(a2 + 216) = v13;
  *a2 = 232;
  *(a2 + 232) = *(a1 + 168);
  *a2 = 240;
  v14 = *(a1 + 192);
  *(a2 + 240) = *(a1 + 176);
  *(a2 + 256) = v14;
  *a2 = 272;
  *(a2 + 272) = *(a1 + 208);
  *a2 = 280;
  *(a2 + 280) = *(a1 + 216);
  *(a2 + 288) = 27765;
  *a2 = 292;
  *(a2 + 292) = *(a1 + 8);
  v15 = 300;
  *a2 = 300;
  if (__src)
  {
    v16 = 8 * *__src;
    memcpy((a2 + 300), __src, v16 + 8);
    v17 = (v16 + 308);
    v15 = (v16 + 311) & 0xFFFFFFFC;
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

void DYTraceEncode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset_transA_transB(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v18 = *a5;
    v19 = 500;
    v20 = "36 <= length";
    v21 = 0u;
    v22 = 0u;
    GTError_addError(a5, &v18);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE82B00000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulul@3ul@2dt@4ult@4ult@4ultulii");
  *(a2 + 71) = 0;
  *a2 = 72;
  *(a2 + 72) = *a1;
  *a2 = 80;
  *(a2 + 80) = *(a1 + 16);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 24);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 32);
  *a2 = 104;
  *(a2 + 104) = *(a1 + 40);
  *a2 = 112;
  v11 = *(a1 + 64);
  *(a2 + 112) = *(a1 + 48);
  *(a2 + 128) = v11;
  *a2 = 136;
  *(a2 + 136) = *(a1 + 72);
  *a2 = 152;
  *(a2 + 152) = *(a1 + 88);
  *a2 = 160;
  v12 = *(a1 + 112);
  *(a2 + 160) = *(a1 + 96);
  *(a2 + 176) = v12;
  *a2 = 192;
  *(a2 + 192) = *(a1 + 128);
  *a2 = 200;
  v13 = *(a1 + 152);
  *(a2 + 200) = *(a1 + 136);
  *(a2 + 216) = v13;
  *a2 = 232;
  *(a2 + 232) = *(a1 + 168);
  *a2 = 240;
  v14 = *(a1 + 192);
  *(a2 + 240) = *(a1 + 176);
  *(a2 + 256) = v14;
  *a2 = 272;
  *(a2 + 272) = *(a1 + 208);
  *a2 = 280;
  *(a2 + 280) = *(a1 + 216);
  *a2 = 288;
  *(a2 + 288) = *(a1 + 224);
  *a2 = 292;
  *(a2 + 292) = *(a1 + 228);
  *(a2 + 296) = 27765;
  *a2 = 300;
  *(a2 + 300) = *(a1 + 8);
  v15 = 308;
  *a2 = 308;
  if (__src)
  {
    v16 = 8 * *__src;
    memcpy((a2 + 308), __src, v16 + 8);
    v17 = (v16 + 316);
    v15 = (v16 + 319) & 0xFFFFFFFC;
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

void DYTraceEncode_MPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE80700000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulult@4ult@3ult@3ul");
  *(a2 + 59) = 0;
  *a2 = 60;
  *(a2 + 60) = *a1;
  *a2 = 68;
  *(a2 + 68) = *(a1 + 16);
  *a2 = 76;
  *(a2 + 76) = *(a1 + 24);
  *a2 = 84;
  *(a2 + 84) = *(a1 + 32);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 40);
  *a2 = 100;
  *(a2 + 100) = *(a1 + 48);
  *a2 = 108;
  v11 = *(a1 + 72);
  *(a2 + 108) = *(a1 + 56);
  *(a2 + 124) = v11;
  *a2 = 140;
  *(a2 + 140) = *(a1 + 88);
  *a2 = 148;
  v12 = *(a1 + 112);
  *(a2 + 148) = *(a1 + 96);
  *(a2 + 164) = v12;
  *a2 = 172;
  *(a2 + 172) = *(a1 + 120);
  *a2 = 180;
  v13 = *(a1 + 144);
  *(a2 + 180) = *(a1 + 128);
  *(a2 + 196) = v13;
  *(a2 + 204) = 27765;
  *a2 = 208;
  *(a2 + 208) = *(a1 + 8);
  v14 = 216;
  *a2 = 216;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 216), __src, v15 + 8);
    v16 = (v15 + 224);
    v14 = (v15 + 227) & 0xFFFFFFF8;
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

void DYTraceEncode_MPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v17 = *a5;
    v18 = 500;
    v19 = "36 <= length";
    v20 = 0u;
    v21 = 0u;
    GTError_addError(a5, &v17);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE80400000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Cttulult@4ult@3ult@3ultul");
  *(a2 + 62) = 0;
  *a2 = 64;
  *(a2 + 64) = *a1;
  *a2 = 72;
  *(a2 + 72) = *(a1 + 16);
  *a2 = 80;
  *(a2 + 80) = *(a1 + 24);
  *a2 = 88;
  *(a2 + 88) = *(a1 + 32);
  *a2 = 96;
  *(a2 + 96) = *(a1 + 40);
  *a2 = 104;
  *(a2 + 104) = *(a1 + 48);
  *a2 = 112;
  v11 = *(a1 + 72);
  *(a2 + 112) = *(a1 + 56);
  *(a2 + 128) = v11;
  *a2 = 144;
  *(a2 + 144) = *(a1 + 88);
  *a2 = 152;
  v12 = *(a1 + 112);
  *(a2 + 152) = *(a1 + 96);
  *(a2 + 168) = v12;
  *a2 = 176;
  *(a2 + 176) = *(a1 + 120);
  *a2 = 184;
  v13 = *(a1 + 144);
  *(a2 + 184) = *(a1 + 128);
  *(a2 + 200) = v13;
  *a2 = 208;
  *(a2 + 208) = *(a1 + 152);
  *a2 = 216;
  *(a2 + 216) = *(a1 + 160);
  *(a2 + 224) = 27765;
  *a2 = 228;
  *(a2 + 228) = *(a1 + 8);
  v14 = 236;
  *a2 = 236;
  if (__src)
  {
    v15 = 8 * *__src;
    memcpy((a2 + 236), __src, v15 + 8);
    v16 = (v15 + 244);
    v14 = (v15 + 247) & 0xFFFFFFFC;
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

void DYTraceEncode_MPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannels_neuronType_neuronParameters(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
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
    v19 = *a5;
    v20 = 500;
    v21 = "36 <= length";
    v22 = 0u;
    v23 = 0u;
    GTError_addError(a5, &v19);
  }

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE82800000024;
  *(a2 + 32) = v10;
  strcpy((a2 + 36), "Ctt@2ult@4ult@4ult@3ult@4uld@3uli@3f");
  *(a2 + 73) = 0;
  *(a2 + 75) = 0;
  *a2 = 76;
  *(a2 + 76) = *a1;
  *a2 = 84;
  *(a2 + 84) = *(a1 + 16);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 24);
  *a2 = 100;
  *(a2 + 100) = *(a1 + 32);
  *a2 = 116;
  *(a2 + 116) = *(a1 + 48);
  *a2 = 124;
  v11 = *(a1 + 72);
  *(a2 + 124) = *(a1 + 56);
  *(a2 + 140) = v11;
  *a2 = 156;
  *(a2 + 156) = *(a1 + 88);
  *a2 = 164;
  v12 = *(a1 + 112);
  *(a2 + 164) = *(a1 + 96);
  *(a2 + 180) = v12;
  *a2 = 196;
  *(a2 + 196) = *(a1 + 128);
  *a2 = 204;
  v13 = *(a1 + 152);
  *(a2 + 204) = *(a1 + 136);
  *(a2 + 220) = v13;
  *a2 = 228;
  *(a2 + 228) = *(a1 + 160);
  *a2 = 236;
  v14 = *(a1 + 184);
  *(a2 + 236) = *(a1 + 168);
  *(a2 + 252) = v14;
  *a2 = 268;
  *(a2 + 268) = *(a1 + 200);
  *a2 = 276;
  v15 = *(a1 + 224);
  *(a2 + 276) = *(a1 + 208);
  *(a2 + 292) = v15;
  *a2 = 300;
  *(a2 + 300) = *(a1 + 232);
  *a2 = 304;
  LODWORD(v13) = *(a1 + 244);
  *(a2 + 304) = *(a1 + 236);
  *(a2 + 312) = v13;
  *(a2 + 316) = 27765;
  *a2 = 320;
  *(a2 + 320) = *(a1 + 8);
  v16 = 328;
  *a2 = 328;
  if (__src)
  {
    v17 = 8 * *__src;
    memcpy((a2 + 328), __src, v17 + 8);
    v18 = (v17 + 336);
    v16 = (v17 + 339) & 0xFFFFFFF8;
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

void DYTraceEncode_MPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannelsAndNeuronTypeAndPredicationOffset_neuronParameters_predicationBuffer(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = (a2 + 268);
  if (__src)
  {
    v11 = 9;
  }

  else
  {
    v11 = 1;
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

  *(a2 + 24) = 0;
  *(a2 + 8) = 0u;
  *a2 = 0xFFFFE82900000024;
  *(a2 + 32) = v11;
  strcpy((a2 + 36), "Ctt@2ult@4ult@4ult@3ult@4uld@5ul@3ft");
  *(a2 + 73) = 0;
  *(a2 + 75) = 0;
  *a2 = 76;
  *(a2 + 76) = *a1;
  *a2 = 84;
  *(a2 + 84) = *(a1 + 16);
  *a2 = 92;
  *(a2 + 92) = *(a1 + 24);
  *a2 = 100;
  *(a2 + 100) = *(a1 + 32);
  *a2 = 116;
  *(a2 + 116) = *(a1 + 48);
  *a2 = 124;
  v12 = *(a1 + 72);
  *(a2 + 124) = *(a1 + 56);
  *(a2 + 140) = v12;
  *a2 = 156;
  *(a2 + 156) = *(a1 + 88);
  *a2 = 164;
  v13 = *(a1 + 112);
  *(a2 + 164) = *(a1 + 96);
  *(a2 + 180) = v13;
  *a2 = 196;
  *(a2 + 196) = *(a1 + 128);
  *a2 = 204;
  v14 = *(a1 + 152);
  *(a2 + 204) = *(a1 + 136);
  *(a2 + 220) = v14;
  *a2 = 228;
  *(a2 + 228) = *(a1 + 160);
  *a2 = 236;
  v15 = *(a1 + 184);
  *(a2 + 236) = *(a1 + 168);
  *(a2 + 252) = v15;
  *a2 = 268;
  *v10 = *(a1 + 200);
  *a2 = 276;
  v16 = *(a1 + 240);
  v17 = *(a1 + 224);
  *(a2 + 276) = *(a1 + 208);
  *(a2 + 292) = v17;
  *(a2 + 308) = v16;
  *a2 = 316;
  v18 = *(a1 + 248);
  *(a2 + 324) = *(a1 + 256);
  *(a2 + 316) = v18;
  *a2 = 328;
  *(a2 + 328) = *(a1 + 264);
  *(a2 + 336) = 27765;
  *a2 = 340;
  v10[9] = *(a1 + 8);
  v19 = 348;
  *a2 = 348;
  if (__src)
  {
    v20 = 8 * *__src;
    memcpy((a2 + 348), __src, v20 + 8);
    v21 = (v20 + 356);
    v19 = (v20 + 359) & 0xFFFFFFFC;
    bzero((a2 + v21), v19 - v21);
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

void DYTraceEncode_MPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo_zeroPadSizeX_zeroPadSizeY(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81700000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttultUtUulul");
  *(a2 + 25) = 0;
  *a2 = 52;
  *(a2 + 13) = *a1;
  *a2 = 60;
  *(a2 + 15) = *(a1 + 16);
  *a2 = 68;
  *(a2 + 17) = *(a1 + 24);
  *a2 = 76;
  *(a2 + 19) = *(a1 + 32);
  *a2 = 84;
  *(a2 + 21) = *(a1 + 40);
  *a2 = 92;
  AppendString(*(a1 + 48), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 56);
  *a2 += 8;
  AppendString(*(a1 + 64), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 72);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 80);
  v16 = *a2 + 8;
  *a2 = v16;
  strcpy(a2 + v16, "ul");
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

void DYTraceEncode_MPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
  *a2 = 0xFFFFE81200000024;
  a2[8] = v10;
  a2[11] = 85;
  *(a2 + 9) = *"CttultUtU";
  *a2 = 48;
  *(a2 + 6) = *a1;
  *a2 = 56;
  *(a2 + 7) = *(a1 + 16);
  *a2 = 64;
  *(a2 + 8) = *(a1 + 24);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 32);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 40);
  *a2 = 88;
  AppendString(*(a1 + 48), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 56);
  *a2 += 8;
  AppendString(*(a1 + 64), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  strcpy(a2 + v14, "ul");
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

void DYTraceEncode_MPSExternalCNNPoolingAverage_encodeBatchToCommandBuffer_computeCommandEncoder_options_sourceTextures_sourceInfo_destinationTextures_destinationInfo_zeroPadSizeX_zeroPadSizeY_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v32 = *a5;
    v33 = 500;
    v34 = "36 <= length";
    v35 = 0u;
    v36 = 0u;
    GTError_addError(a5, &v32);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE80200000024;
  a2[8] = v10;
  v11 = *(a1 + 48);
  v12 = snprintf(a2 + 36, a3 - 36, "Cttul@%llutU@%llutUulultul", v11, *(a1 + 72)) + *a2;
  v13 = (v12 + 4) & 0xFFFFFFFC;
  bzero(a2 + (v12 + 1), v13 - (v12 + 1));
  *a2 = v13;
  *(a2 + v13) = *a1;
  v14 = *a2 + 8;
  *a2 = v14;
  *(a2 + v14) = *(a1 + 16);
  v15 = *a2 + 8;
  *a2 = v15;
  *(a2 + v15) = *(a1 + 24);
  v16 = *a2 + 8;
  *a2 = v16;
  *(a2 + v16) = *(a1 + 32);
  v17 = *a2 + 8;
  *a2 = v17;
  v18 = 8 * *(a1 + 48);
  memcpy(a2 + v17, *(a1 + 40), v18);
  *a2 += v18;
  AppendString(*(a1 + 56), a2);
  v19 = *a2;
  v20 = (v19 + 3) & 0xFFFFFFFC;
  bzero(a2 + v19, v20 - v19);
  *a2 = v20;
  v21 = 8 * *(a1 + 72);
  memcpy(a2 + v20, *(a1 + 64), v21);
  *a2 += v21;
  AppendString(*(a1 + 80), a2);
  v22 = *a2;
  v23 = (v22 + 3) & 0xFFFFFFFC;
  bzero(a2 + v22, v23 - v22);
  *a2 = v23;
  *(a2 + v23) = *(a1 + 88);
  v24 = *a2 + 8;
  *a2 = v24;
  *(a2 + v24) = *(a1 + 96);
  v25 = *a2 + 8;
  *a2 = v25;
  *(a2 + v25) = *(a1 + 104);
  v26 = *a2 + 8;
  *a2 = v26;
  *(a2 + v26) = *(a1 + 112);
  v27 = *a2 + 8;
  *a2 = v27;
  strcpy(a2 + v27, "ul");
  v28 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v28 - (*a2 + 3));
  *a2 = v28;
  *(a2 + v28) = *(a1 + 8);
  v29 = *a2 + 8;
  *a2 = v29;
  if (a4)
  {
    v30 = 8 * *a4 + 8;
    memcpy(a2 + v29, a4, v30);
    v31 = *a2 + v30;
    v29 = (v31 + 3) & 0xFFFFFFFC;
    bzero(a2 + v31, v29 - v31);
    *a2 = v29;
  }

  if (a5)
  {
    if (v29 > a3)
    {
      v32 = *a5;
      v33 = 500;
      v34 = "bytes->length <= length";
      v35 = 0u;
      v36 = 0u;
      GTError_addError(a5, &v32);
    }
  }
}

void DYTraceEncode_MPSExternalNDArrayBinary_encodeToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_destinationBuffer_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE82F00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtUtul");
  *(a2 + 53) = 0;
  *(a2 + 55) = 0;
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 40);
  *a2 = 96;
  *(a2 + 12) = *(a1 + 48);
  *a2 = 104;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  v17 = *a2 + 8;
  *a2 = v17;
  *(a2 + v17) = *(a1 + 104);
  v18 = *a2 + 8;
  *a2 = v18;
  strcpy(a2 + v18, "ul");
  v19 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v19 - (*a2 + 3));
  *a2 = v19;
  *(a2 + v19) = *(a1 + 8);
  v20 = *a2 + 8;
  *a2 = v20;
  if (a4)
  {
    v21 = 8 * *a4 + 8;
    memcpy(a2 + v20, a4, v21);
    v22 = *a2 + v21;
    v20 = (v22 + 3) & 0xFFFFFFFC;
    bzero(a2 + v22, v20 - v22);
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

void DYTraceEncode_MPSExternalNDArrayBinaryGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v26 = *a5;
    v27 = 500;
    v28 = "36 <= length";
    v29 = 0u;
    v30 = 0u;
    GTError_addError(a5, &v26);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE82D00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtUtUitul");
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 40);
  *a2 = 96;
  *(a2 + 12) = *(a1 + 48);
  *a2 = 104;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  *a2 += 8;
  AppendString(*(a1 + 104), a2);
  v17 = *a2;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  bzero(a2 + v17, v18 - v17);
  *a2 = v18;
  *(a2 + v18) = *(a1 + 112);
  v19 = *a2 + 4;
  *a2 = v19;
  *(a2 + v19) = *(a1 + 120);
  v20 = *a2 + 8;
  *a2 = v20;
  *(a2 + v20) = *(a1 + 128);
  v21 = *a2 + 8;
  *a2 = v21;
  strcpy(a2 + v21, "ul");
  v22 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v22 - (*a2 + 3));
  *a2 = v22;
  *(a2 + v22) = *(a1 + 8);
  v23 = *a2 + 8;
  *a2 = v23;
  if (a4)
  {
    v24 = 8 * *a4 + 8;
    memcpy(a2 + v23, a4, v24);
    v25 = *a2 + v24;
    v23 = (v25 + 3) & 0xFFFFFFFC;
    bzero(a2 + v25, v23 - v25);
    *a2 = v23;
  }

  if (a5)
  {
    if (v23 > a3)
    {
      v26 = *a5;
      v27 = 500;
      v28 = "bytes->length <= length";
      v29 = 0u;
      v30 = 0u;
      GTError_addError(a5, &v26);
    }
  }
}

void DYTraceEncode_MPSExternalNDArrayBinaryGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v26 = *a5;
    v27 = 500;
    v28 = "36 <= length";
    v29 = 0u;
    v30 = 0u;
    GTError_addError(a5, &v26);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE82E00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtUtUitul");
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 40);
  *a2 = 96;
  *(a2 + 12) = *(a1 + 48);
  *a2 = 104;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  *a2 += 8;
  AppendString(*(a1 + 104), a2);
  v17 = *a2;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  bzero(a2 + v17, v18 - v17);
  *a2 = v18;
  *(a2 + v18) = *(a1 + 112);
  v19 = *a2 + 4;
  *a2 = v19;
  *(a2 + v19) = *(a1 + 120);
  v20 = *a2 + 8;
  *a2 = v20;
  *(a2 + v20) = *(a1 + 128);
  v21 = *a2 + 8;
  *a2 = v21;
  strcpy(a2 + v21, "ul");
  v22 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v22 - (*a2 + 3));
  *a2 = v22;
  *(a2 + v22) = *(a1 + 8);
  v23 = *a2 + 8;
  *a2 = v23;
  if (a4)
  {
    v24 = 8 * *a4 + 8;
    memcpy(a2 + v23, a4, v24);
    v25 = *a2 + v24;
    v23 = (v25 + 3) & 0xFFFFFFFC;
    bzero(a2 + v25, v23 - v25);
    *a2 = v23;
  }

  if (a5)
  {
    if (v23 > a3)
    {
      v26 = *a5;
      v27 = 500;
      v28 = "bytes->length <= length";
      v29 = 0u;
      v30 = 0u;
      GTError_addError(a5, &v26);
    }
  }
}

void DYTraceEncode_MPSExternalNDArrayConvolution2DGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v26 = *a5;
    v27 = 500;
    v28 = "36 <= length";
    v29 = 0u;
    v30 = 0u;
    GTError_addError(a5, &v26);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE82A00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtUtUitul");
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 40);
  *a2 = 96;
  *(a2 + 12) = *(a1 + 48);
  *a2 = 104;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  *a2 += 8;
  AppendString(*(a1 + 104), a2);
  v17 = *a2;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  bzero(a2 + v17, v18 - v17);
  *a2 = v18;
  *(a2 + v18) = *(a1 + 112);
  v19 = *a2 + 4;
  *a2 = v19;
  *(a2 + v19) = *(a1 + 120);
  v20 = *a2 + 8;
  *a2 = v20;
  *(a2 + v20) = *(a1 + 128);
  v21 = *a2 + 8;
  *a2 = v21;
  strcpy(a2 + v21, "ul");
  v22 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v22 - (*a2 + 3));
  *a2 = v22;
  *(a2 + v22) = *(a1 + 8);
  v23 = *a2 + 8;
  *a2 = v23;
  if (a4)
  {
    v24 = 8 * *a4 + 8;
    memcpy(a2 + v23, a4, v24);
    v25 = *a2 + v24;
    v23 = (v25 + 3) & 0xFFFFFFFC;
    bzero(a2 + v25, v23 - v25);
    *a2 = v23;
  }

  if (a5)
  {
    if (v23 > a3)
    {
      v26 = *a5;
      v27 = 500;
      v28 = "bytes->length <= length";
      v29 = 0u;
      v30 = 0u;
      GTError_addError(a5, &v26);
    }
  }
}

void DYTraceEncode_MPSExternalNDArrayConvolution2DGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, unsigned int *a2, unint64_t a3, _DWORD *a4, int *a5)
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
    v26 = *a5;
    v27 = 500;
    v28 = "36 <= length";
    v29 = 0u;
    v30 = 0u;
    GTError_addError(a5, &v26);
  }

  *(a2 + 3) = 0;
  *(a2 + 2) = 0u;
  *a2 = 0xFFFFE82C00000024;
  a2[8] = v10;
  strcpy(a2 + 36, "CttulultUtUtUtUitul");
  *a2 = 56;
  *(a2 + 7) = *a1;
  *a2 = 64;
  *(a2 + 8) = *(a1 + 16);
  *a2 = 72;
  *(a2 + 9) = *(a1 + 24);
  *a2 = 80;
  *(a2 + 10) = *(a1 + 32);
  *a2 = 88;
  *(a2 + 11) = *(a1 + 40);
  *a2 = 96;
  *(a2 + 12) = *(a1 + 48);
  *a2 = 104;
  AppendString(*(a1 + 56), a2);
  v11 = *a2;
  v12 = (v11 + 3) & 0xFFFFFFFC;
  bzero(a2 + v11, v12 - v11);
  *a2 = v12;
  *(a2 + v12) = *(a1 + 64);
  *a2 += 8;
  AppendString(*(a1 + 72), a2);
  v13 = *a2;
  v14 = (v13 + 3) & 0xFFFFFFFC;
  bzero(a2 + v13, v14 - v13);
  *a2 = v14;
  *(a2 + v14) = *(a1 + 80);
  *a2 += 8;
  AppendString(*(a1 + 88), a2);
  v15 = *a2;
  v16 = (v15 + 3) & 0xFFFFFFFC;
  bzero(a2 + v15, v16 - v15);
  *a2 = v16;
  *(a2 + v16) = *(a1 + 96);
  *a2 += 8;
  AppendString(*(a1 + 104), a2);
  v17 = *a2;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  bzero(a2 + v17, v18 - v17);
  *a2 = v18;
  *(a2 + v18) = *(a1 + 112);
  v19 = *a2 + 4;
  *a2 = v19;
  *(a2 + v19) = *(a1 + 120);
  v20 = *a2 + 8;
  *a2 = v20;
  *(a2 + v20) = *(a1 + 128);
  v21 = *a2 + 8;
  *a2 = v21;
  strcpy(a2 + v21, "ul");
  v22 = (*a2 + 6) & 0xFFFFFFFC;
  bzero(a2 + *a2 + 3, v22 - (*a2 + 3));
  *a2 = v22;
  *(a2 + v22) = *(a1 + 8);
  v23 = *a2 + 8;
  *a2 = v23;
  if (a4)
  {
    v24 = 8 * *a4 + 8;
    memcpy(a2 + v23, a4, v24);
    v25 = *a2 + v24;
    v23 = (v25 + 3) & 0xFFFFFFFC;
    bzero(a2 + v25, v23 - v25);
    *a2 = v23;
  }

  if (a5)
  {
    if (v23 > a3)
    {
      v26 = *a5;
      v27 = 500;
      v28 = "bytes->length <= length";
      v29 = 0u;
      v30 = 0u;
      GTError_addError(a5, &v26);
    }
  }
}

void DYTraceEncode_MTL4FXFrameInterpolator_setAspectRatio(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08700000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setColorTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB03D00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB09900000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setDeltaTime(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08800000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB03E00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB03F00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setFarPlane(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08900000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04000000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setFieldOfView(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08A00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08B00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08C00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04200000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04300000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04400000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setNearPlane(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08D00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04500000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setPrevColorTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04700000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setShouldResetHistory(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB0A100000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04900000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04A00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setIsUITextureComposited(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08E00000028;
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

void DYTraceEncode_MTL4FXFrameInterpolator_setUITexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB08F00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04B00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB09A00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04C00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04D00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04E00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB04F00000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05100000028;
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

void DYTraceEncode_MTL4FXSpatialScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05200000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05300000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB09B00000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05400000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05500000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05600000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setDiffuseAlbedoTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05700000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setExposureTexture(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05800000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setFence(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05900000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05A00000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05B00000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05C00000028;
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

void DYTraceEncode_MTL4FXTemporalDenoisedScaler_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *__src, int *a5)
{
  v10 = 8 * (__src != 0);
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
  *a2 = 0xFFFFB05D00000028;
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