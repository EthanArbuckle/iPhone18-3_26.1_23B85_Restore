void DYTraceDecode_MTLSharedEvent_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FB30;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLSharedEvent_setSignaledValue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB40;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLSharedEvent_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLSharedEvent_newSharedEventHandle(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB60;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB60;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLSharedEvent_waitUntilSignaledValue_timeoutMS(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FB70;
      v12 = "memcmp((const char*)bytes + offset, (Cuwuw), sizeof(Cuwuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 60);
    if (*(a2 + 68) ^ 0x6975 | *(a2 + 70))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FB70;
      v12 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 24) = *(a2 + 72);
    if (a3 <= 0x27)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FB70;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    *(a1 + 16) = *(a2 + 60);
    *(a1 + 24) = *(a2 + 72);
  }
}

void DYTraceDecode_MTLTensor_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB80;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB90;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FB90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBA0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBB0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBC0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBD0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FBE0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLTensor_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBF0;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FBF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTensor_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC00;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTensor_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC10;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTensor_replaceSliceOrigin_sliceDimensions_withBytes_strides(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    v9 = *v8 == 0x31406C7537314043 && *(a2 + 44) == 0x403E623C556C7537;
    if (!v9 || *(a2 + 49) != 0x6C753731403E62)
    {
      v30 = *a4;
      v31 = 501;
      v32 = xmmword_24DA8FC20;
      v33 = "memcmp((const char*)bytes + offset, (C@17ul@17ulU<b>@17ul), sizeof(C@17ul@17ulU<b>@17ul)) == 0";
      v34 = 0;
      GTError_addError(a4, &v30);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 8) = *(a2 + 68);
  v11 = *(a2 + 84);
  v12 = *(a2 + 100);
  v13 = *(a2 + 116);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 56) = v13;
  *(a1 + 40) = v12;
  *(a1 + 24) = v11;
  v14 = *(a2 + 148);
  v15 = *(a2 + 164);
  v16 = *(a2 + 180);
  *(a1 + 136) = *(a2 + 196);
  *(a1 + 120) = v16;
  *(a1 + 104) = v15;
  *(a1 + 88) = v14;
  *(a1 + 144) = *(a2 + 204);
  v17 = *(a2 + 220);
  v18 = *(a2 + 236);
  v19 = *(a2 + 268);
  *(a1 + 192) = *(a2 + 252);
  *(a1 + 208) = v19;
  *(a1 + 160) = v17;
  *(a1 + 176) = v18;
  v20 = *(a2 + 284);
  v21 = *(a2 + 300);
  v22 = *(a2 + 316);
  *(a1 + 272) = *(a2 + 332);
  *(a1 + 240) = v21;
  *(a1 + 256) = v22;
  *(a1 + 224) = v20;
  v35 = 304;
  *(a1 + 280) = AppendString_13794((a1 + 280), v8, &v35);
  v23 = (v35 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 288) = *(v8 + v23);
  v25 = *(v8 + v23 + 96);
  v24 = *(v8 + v23 + 112);
  v26 = *(v8 + v23 + 80);
  *(a1 + 416) = *(v8 + v23 + 128);
  *(a1 + 384) = v25;
  *(a1 + 400) = v24;
  *(a1 + 368) = v26;
  v27 = *(v8 + v23 + 16);
  v28 = *(v8 + v23 + 32);
  v29 = *(v8 + v23 + 64);
  *(a1 + 336) = *(v8 + v23 + 48);
  *(a1 + 352) = v29;
  *(a1 + 304) = v27;
  *(a1 + 320) = v28;
  if (a4)
  {
    if (v23 + 136 > a3)
    {
      v30 = *a4;
      v31 = 501;
      v32 = xmmword_24DA8FC20;
      v33 = "offset <= length";
      v34 = 0;
      GTError_addError(a4, &v30);
    }
  }
}

void DYTraceDecode_MTLTensor_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC30;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) ^ 0x6C75 | *(a2 + 58))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC30;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLTexture_allocatedSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC40;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC50;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_compressionFeedback(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC60;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC70;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_heapOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC80;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_mipmapInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FC90;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FC90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLTexture_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCA0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_resourceUsage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCB0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_saveSlice_level_zPlane_normalize_blitOption_toPath(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 41) != 0x536C7569756C75)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FCC0;
      v12 = "memcmp((const char*)bytes + offset, (CulululuiulS), sizeof(CulululuiulS)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 8) = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 88);
  v14 = 60;
  *(a1 + 40) = AppendString_13794((a1 + 40), a2 + 36, &v14);
  if (a4)
  {
    if (((v14 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FCC0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLTexture_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCD0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCE0;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FCF0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FCF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLTexture_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD00;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLTexture_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD10;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTexture_didModifyData(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD20;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTexture_getBytes_bytesPerRow_fromRegion_mipmapLevel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x406C753E623C5543 || *(a2 + 42) != 0x6C756C7536406CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8FD30;
      v16 = "memcmp((const char*)bytes + offset, (CU<b>ul@6ulul), sizeof(CU<b>ul@6ulul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 52);
  v18 = 24;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  v11 = *(v8 + v10 + 24);
  v12 = *(v8 + v10 + 40);
  *(a1 + 24) = *(v8 + v10 + 8);
  *(a1 + 56) = v12;
  *(a1 + 40) = v11;
  *(a1 + 72) = *(v8 + v10 + 56);
  if (a4)
  {
    if (v10 + 64 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8FD30;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLTexture_isAliasable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD40;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD40;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 52);
  }
}

void DYTraceDecode_MTLTexture_isPurgeable(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD50;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6975 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD50;
      v11 = "memcmp((const char*)bytes + offset, (ui), sizeof(ui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 52);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 52);
  }
}

void DYTraceDecode_MTLTexture_makeAliasable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD60;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTexture_newRemoteTextureViewForDevice(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD70;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD70;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLTexture_newSharedTextureHandle(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD80;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD80;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FD80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FD90;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FD90;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8FD90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FDA0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FDA0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FDA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_resourceIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 119)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDB0;
      v12 = "memcmp((const char*)bytes + offset, (Culuw), sizeof(Culuw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDB0;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDB0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7532406C756C7543 || *(a2 + 42) != 0x6C7532406C7532)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDC0;
      v12 = "memcmp((const char*)bytes + offset, (Culul@2ul@2ul), sizeof(Culul@2ul@2ul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 92);
  if (a4)
  {
    if (*(a2 + 108) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDC0;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 112);
    if (a3 <= 0x53)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDC0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 112);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x7532406C756C7543 || *(a2 + 44) != 0x77756C7532406CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDD0;
      v12 = "memcmp((const char*)bytes + offset, (Culul@2ul@2uluw), sizeof(Culul@2ul@2uluw)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 92);
  *(a1 + 64) = *(a2 + 108);
  if (a4)
  {
    if (*(a2 + 116) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDD0;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 120);
    if (a3 <= 0x5B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FDD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 120);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x7532406C756C7543 && *(a2 + 44) == 0x7534406C7532406CLL;
    if (!v8 || *(a2 + 52) != 98)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDE0;
      v13 = "memcmp((const char*)bytes + offset, (Culul@2ul@2ul@4ub), sizeof(Culul@2ul@2ul@4ub)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 64) = *(a2 + 112);
  if (a4)
  {
    if (*(a2 + 116) != 116)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDE0;
      v13 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *(a1 + 8) = *(a2 + 120);
    if (a3 <= 0x5B)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDE0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 120);
  }
}

void DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x7532406C756C7543 && *(a2 + 44) == 0x7534406C7532406CLL;
    if (!v8 || *(a2 + 52) != 7828834)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDF0;
      v13 = "memcmp((const char*)bytes + offset, (Culul@2ul@2ul@4ubuw), sizeof(Culul@2ul@2ul@4ubuw)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 96);
  *(a1 + 72) = *(a2 + 112);
  *(a1 + 64) = *(a2 + 116);
  if (a4)
  {
    if (*(a2 + 124) != 116)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDF0;
      v13 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *(a1 + 8) = *(a2 + 128);
    if (a3 <= 0x63)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8FDF0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 128);
  }
}

void DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_withBytes_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x556C756C75364043 || *(a2 + 42) != 0x6C753E623C556CLL)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8FE00;
      v16 = "memcmp((const char*)bytes + offset, (C@6ululU<b>ul), sizeof(C@6ululU<b>ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 52);
  v10 = *(a2 + 60);
  v11 = *(a2 + 76);
  *(a1 + 40) = *(a2 + 92);
  *(a1 + 24) = v11;
  *(a1 + 8) = v10;
  *(a1 + 56) = *(a2 + 108);
  v18 = 80;
  *(a1 + 64) = AppendString_13794((a1 + 64), v8, &v18);
  v12 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 72) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8FE00;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLTextureLayout_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE10;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTextureViewPool_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE20;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLTextureViewPool_setTextureView_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE30;
      v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    if (*(a2 + 68) ^ 0x7775 | *(a2 + 70))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE30;
      v11 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    a1[1] = *(a2 + 72);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FE40;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_barrierAfterQueueStages_beforeStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970042179 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FE50;
      v12 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FE50;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE60;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_endEncoding(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE70;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_generateMotionVectorsForTexture_previousTexture_resultBuffer_bufferOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1953788995 || *(a2 + 39) != 7107956)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FE80;
      v12 = "memcmp((const char*)bytes + offset, (Ctttul), sizeof(Ctttul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  if (a4)
  {
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FE80;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_insertDebugSignpost(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FE90;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FE90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FEB0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_setMotionEstimationPipeline(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEC0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_updateFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FED0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FED0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVideoCommandEncoder_waitForFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEE0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEF0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FEF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_allocationID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF00;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_gpuAddress(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF10;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_gpuResourceID(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF20;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_setFunctions_withRange(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 843076931 || *(a2 + 39) != 7107890)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8FF30;
      v14 = "memcmp((const char*)bytes + offset, (CU@2ul), sizeof(CU@2ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8FF30;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_timeSinceTouched(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF40;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_uniqueIdentifier(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7828803)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF50;
      v11 = "memcmp((const char*)bytes + offset, (Cuw), sizeof(Cuw)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FF60;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_setResponsibleProcess(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF70;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF80;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLVisibleFunctionTable_setFunction_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8FF90;
    v11 = "memcmp((const char*)bytes + offset, (Ctul), sizeof(Ctul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FF90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_NSHMDMetalSession_initWithMetalDevice_deviceReference_hmdName(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x53557443 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FFA0;
    v14 = "memcmp((const char*)bytes + offset, (CtUS), sizeof(CtUS)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v16 = 24;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FFA0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8FFA0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_NSHMDMetalSession_nextDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFB0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFB0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_NSHMDMetalSession_setDrawablePixelFormat(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFC0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

__n128 DYTraceDecode_NSHMDMetalSession_setDrawableSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x64324043 | *(a2 + 40))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FFD0;
      v12 = "memcmp((const char*)bytes + offset, (C@2d), sizeof(C@2d)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8FFD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_UIScreen_setInterfaceOrientation(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6943 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFE0;
      v11 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8FFE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x69555543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FFF0;
    v14 = "memcmp((const char*)bytes + offset, (CUUi), sizeof(CUUi)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 4) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8FFF0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 9) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8FFF0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_convolutionData(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 5592387)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90000;
    v14 = "memcmp((const char*)bytes + offset, (CUU), sizeof(CUU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90000;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90000;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 5592387)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90010;
    v14 = "memcmp((const char*)bytes + offset, (CUU), sizeof(CUU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90010;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90010;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1717987651 || *(a2 + 40) != 102)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90020;
      v12 = "memcmp((const char*)bytes + offset, (Cifff), sizeof(Cifff)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  *(a1 + 20) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 60);
  *(a1 + 28) = *(a2 + 64);
  if (a4)
  {
    if (*(a2 + 68) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90020;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 72);
    if (a3 <= 0x2B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90020;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 72);
  }
}

void DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1968531779 || *(a2 + 40) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90030;
      v15 = "memcmp((const char*)bytes + offset, (CiUul), sizeof(CiUul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v17 = 20;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA90030;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90030;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C75696943 || *(a2 + 44) != 6579308)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90040;
      v12 = "memcmp((const char*)bytes + offset, (Ciiulululdd), sizeof(Ciiulululdd)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 20) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 88);
  *(a1 + 56) = *(a2 + 96);
  if (a4)
  {
    if (*(a2 + 104) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90040;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *(a1 + 8) = *(a2 + 108);
    if (a3 <= 0x4F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90040;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 108);
  }
}

void DYTraceDecode_MPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x64646C756C756943 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA90050;
    v11 = "memcmp((const char*)bytes + offset, (Ciululdd), sizeof(Ciululdd)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 60);
  *(a1 + 32) = *(a2 + 68);
  *(a1 + 40) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 84);
  if (a4)
  {
    if (*(a2 + 92) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90050;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 96);
    if (a3 <= 0x43)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90050;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 96);
  }
}

void DYTraceDecode_MPSPlugin_newMatrixFullyConnected(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90060;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90060;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90060;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90070;
      v12 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[2] = *(a2 + 56);
  a1[3] = *(a2 + 64);
  a1[4] = *(a2 + 72);
  a1[5] = *(a2 + 80);
  if (a4)
  {
    if (*(a2 + 88) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90070;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 92);
    if (a3 <= 0x3F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90070;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 92);
  }
}

void DYTraceDecode_MPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90080;
      v12 = "memcmp((const char*)bytes + offset, (Culululul), sizeof(Culululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[2] = *(a2 + 56);
  a1[3] = *(a2 + 64);
  a1[4] = *(a2 + 72);
  a1[5] = *(a2 + 80);
  if (a4)
  {
    if (*(a2 + 88) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90080;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 92);
    if (a3 <= 0x3F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90080;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 92);
  }
}

void DYTraceDecode_MPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x756C756C756C7543 || *(a2 + 42) != 0x6C756C756C756CLL)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90090;
      v12 = "memcmp((const char*)bytes + offset, (Culululululul), sizeof(Culululululul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  a1[5] = *(a2 + 84);
  a1[6] = *(a2 + 92);
  a1[7] = *(a2 + 100);
  if (a4)
  {
    if (*(a2 + 108) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90090;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 112);
    if (a3 <= 0x53)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90090;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 112);
  }
}

void DYTraceDecode_MPSPlugin_newCNNSoftMax(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA900A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA900A0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA900A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MPSPlugin_newNDArrayConvolution2DWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA900B0;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA900B0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA900B0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MPSPlugin_newNDArrayConvolution2DGradientWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA900C0;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA900C0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA900C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MPSExternalPluginBase_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA900D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA900D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x7455746C75747443 || *(a2 + 44) != 85)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA900E0;
      v16 = "memcmp((const char*)bytes + offset, (CttultUtU), sizeof(CttultUtU)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 80);
  v18 = 52;
  *(a1 + 48) = AppendString_13794((a1 + 48), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 56) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 64) = AppendString_13794((a1 + 64), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v11) ^ 0x6C75 | *(v8 + v11 + 2))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA900E0;
    v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA900E0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MPSExternalCNNUnary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x746C756C75747443 || *(a2 + 44) != 5600341)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA900F0;
      v16 = "memcmp((const char*)bytes + offset, (CttulultUtU), sizeof(CttulultUtU)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 88);
  v18 = 60;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v11) ^ 0x6C75 | *(v8 + v11 + 2))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA900F0;
    v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA900F0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MPSExternalCNNUnary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_sourceTextures_sourceInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Cttulul@%llutU@%llutUtul", a1 + 56, a1 + 80);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  *(a1 + 32) = *(v9 + 28);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  *(a1 + 40) = *(v9 + 36);
  *(a1 + 48) = &v7[v10];
  v20 = v10 + 8 * *(a1 + 56);
  appended = AppendString_13794((a1 + 64), v7, &v20);
  v12 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = appended;
  *(a1 + 72) = &v7[v12];
  v20 = v12 + 8 * *(a1 + 80);
  *(a1 + 88) = AppendString_13794((a1 + 88), v7, &v20);
  v13 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *&v7[v13];
  *(a1 + 104) = *&v7[v13 + 8];
  if (a4 && *&v7[v13 + 16] ^ 0x6C75 | v7[v13 + 18])
  {
    v15 = *a4;
    v16 = 501;
    v17 = xmmword_24DA90100;
    v18 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v19 = 0;
    GTError_addError(a4, &v15);
  }

  v14 = (v13 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v14];
  if (a4)
  {
    if (v14 + 8 > a3)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA90100;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }
}

void DYTraceDecode_MPSExternalCNNUnary_maxBatchSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90110;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6C75 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90110;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90110;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MPSExternalCNNBinary_encodeToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTexture_primaryInfo_secondaryTexture_secondaryInfo_destinationTexture_destinationInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x746C756C75747443 || *(a2 + 42) != 0x5574557455746CLL)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90120;
      v17 = "memcmp((const char*)bytes + offset, (CttulultUtUtU), sizeof(CttulultUtUtU)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 40) = *(a2 + 84);
  *(a1 + 48) = *(a2 + 92);
  v19 = 64;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v19);
  v10 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v10);
  v19 = v10 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v19);
  v11 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v11);
  v19 = v11 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v19);
  v12 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v12) ^ 0x6C75 | *(v8 + v12 + 2))
  {
    v14 = *a4;
    v15 = 501;
    v16 = xmmword_24DA90120;
    v17 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v18 = 0;
    GTError_addError(a4, &v14);
  }

  v13 = (v12 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v13);
  if (a4)
  {
    if (v13 + 8 > a3)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90120;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }
}

void DYTraceDecode_MPSExternalCNNBinary_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_destinationTextures_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Cttulul@%llutU@%llutU@%llutUtul", a1 + 56, a1 + 80, a1 + 104);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  *(a1 + 32) = *(v9 + 28);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  *(a1 + 40) = *(v9 + 36);
  *(a1 + 48) = &v7[v10];
  v22 = v10 + 8 * *(a1 + 56);
  appended = AppendString_13794((a1 + 64), v7, &v22);
  v12 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = appended;
  *(a1 + 72) = &v7[v12];
  v22 = v12 + 8 * *(a1 + 80);
  v13 = AppendString_13794((a1 + 88), v7, &v22);
  v14 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 88) = v13;
  *(a1 + 96) = &v7[v14];
  v22 = v14 + 8 * *(a1 + 104);
  *(a1 + 112) = AppendString_13794((a1 + 112), v7, &v22);
  v15 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 120) = *&v7[v15];
  *(a1 + 128) = *&v7[v15 + 8];
  if (a4 && *&v7[v15 + 16] ^ 0x6C75 | v7[v15 + 18])
  {
    v17 = *a4;
    v18 = 501;
    v19 = xmmword_24DA90130;
    v20 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v21 = 0;
    GTError_addError(a4, &v17);
  }

  v16 = (v15 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v16];
  if (a4)
  {
    if (v16 + 8 > a3)
    {
      v17 = *a4;
      v18 = 501;
      v19 = xmmword_24DA90130;
      v20 = "offset <= length";
      v21 = 0;
      GTError_addError(a4, &v17);
    }
  }
}

void DYTraceDecode_MPSExternalCNNBinary_maxBatchSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90140;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) ^ 0x6C75 | *(a2 + 50))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90140;
      v11 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90140;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MPSExternalCNNConvolution_reloadWeightsAndBiases(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA90150;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90150;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C75747474747443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA90160;
    v11 = "memcmp((const char*)bytes + offset, (Ctttttul), sizeof(Ctttttul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  a1[6] = *(a2 + 96);
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90160;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_biases_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x6C75747474747443 | *(a2 + 44))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA90170;
    v11 = "memcmp((const char*)bytes + offset, (Ctttttul), sizeof(Ctttttul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  a1[6] = *(a2 + 96);
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90170;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolution_reloadWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset(void *a1, void *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x74746C7574747443 || *(a2 + 39) != 0x6C7574746C7574)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90180;
      v12 = "memcmp((const char*)bytes + offset, (Ctttulttul), sizeof(Ctttulttul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = a2[6];
  a1[1] = a2[7];
  a1[2] = a2[8];
  a1[3] = a2[9];
  a1[4] = a2[10];
  a1[5] = a2[11];
  a1[6] = a2[12];
  a1[7] = a2[13];
  if (a4)
  {
    if (a3 <= 0x4B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90180;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolution_exportWeightsAndBiasesWithCommandBuffer_encoder_weights_weightsDataType_biases_predicationBuffer_predicationOffset(void *a1, void *a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x74746C7574747443 || *(a2 + 39) != 0x6C7574746C7574)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90190;
      v12 = "memcmp((const char*)bytes + offset, (Ctttulttul), sizeof(Ctttulttul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = a2[6];
  a1[1] = a2[7];
  a1[2] = a2[8];
  a1[3] = a2[9];
  a1[4] = a2[10];
  a1[5] = a2[11];
  a1[6] = a2[12];
  a1[7] = a2[13];
  if (a4)
  {
    if (a3 <= 0x4B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA90190;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolutionGradient_reloadWeights(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA901A0;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA901A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C757474747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA901B0;
    v11 = "memcmp((const char*)bytes + offset, (Cttttul), sizeof(Cttttul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  a1[5] = *(a2 + 84);
  if (a4)
  {
    if (a3 <= 0x37)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA901B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolutionGradient_reloadWeightsWithCommandBuffer_encoder_weights_weightsDataType_predicationBuffer_predicationOffset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 0x75746C7574747443 || *(a2 + 44) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA901C0;
      v12 = "memcmp((const char*)bytes + offset, (Ctttultul), sizeof(Ctttultul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 48);
  a1[1] = *(a2 + 56);
  a1[2] = *(a2 + 64);
  a1[3] = *(a2 + 72);
  a1[4] = *(a2 + 80);
  a1[5] = *(a2 + 88);
  a1[6] = *(a2 + 96);
  if (a4)
  {
    if (a3 <= 0x43)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA901C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MPSExternalCNNConvolutionGradient_encodeBatchToCommandBuffer_computeCommandEncoder_options_pluginOptions_primaryTextures_primaryInfo_secondaryTextures_secondaryInfo_weightsGradient_biasesGradient_accumulate_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Cttulul@%llutU@%llutUttitul", a1 + 56, a1 + 80);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  *(a1 + 32) = *(v9 + 28);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  *(a1 + 40) = *(v9 + 36);
  *(a1 + 48) = &v7[v10];
  v20 = v10 + 8 * *(a1 + 56);
  appended = AppendString_13794((a1 + 64), v7, &v20);
  v12 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = appended;
  *(a1 + 72) = &v7[v12];
  v20 = v12 + 8 * *(a1 + 80);
  *(a1 + 88) = AppendString_13794((a1 + 88), v7, &v20);
  v13 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *&v7[v13];
  *(a1 + 104) = *&v7[v13 + 8];
  *(a1 + 112) = *&v7[v13 + 16];
  *(a1 + 120) = *&v7[v13 + 20];
  *(a1 + 128) = *&v7[v13 + 28];
  if (a4 && *&v7[v13 + 36] ^ 0x6C75 | v7[v13 + 38])
  {
    v15 = *a4;
    v16 = 501;
    v17 = xmmword_24DA901D0;
    v18 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v19 = 0;
    GTError_addError(a4, &v15);
  }

  v14 = (v13 + 42) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v14];
  if (a4)
  {
    if (v14 + 8 > a3)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA901D0;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }
}

void DYTraceDecode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_A_aInfo_B_bInfo_C_cInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C75747443 && *(a2 + 44) == 0x753440746C753440;
    if (!v8 || *(a2 + 51) != 0x6C753440746C75)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA901E0;
      v16 = "memcmp((const char*)bytes + offset, (Cttulult@4ult@4ult@4ul), sizeof(Cttulult@4ult@4ult@4ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 84);
  *(a1 + 40) = *(a2 + 92);
  *(a1 + 48) = *(a2 + 100);
  v10 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v10;
  *(a1 + 88) = *(a2 + 140);
  v11 = *(a2 + 164);
  *(a1 + 96) = *(a2 + 148);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(a2 + 180);
  v12 = *(a2 + 188);
  *(a1 + 152) = *(a2 + 204);
  *(a1 + 136) = v12;
  if (a4)
  {
    if (*(a2 + 220) ^ 0x6C75 | *(a2 + 222))
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA901E0;
      v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }

    *(a1 + 8) = *(a2 + 224);
    if (a3 <= 0xC3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA901E0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 224);
  }
}

void DYTraceDecode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x756C756C75747443 && *(a2 + 44) == 0x7464646C756C756CLL;
    v9 = v8 && *(a2 + 52) == 0x753440746C753440;
    if (!v9 || *(a2 + 59) != 0x6C753440746C75)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA901F0;
      v17 = "memcmp((const char*)bytes + offset, (Cttulululululddt@4ult@4ult@4ul), sizeof(Cttulululululddt@4ult@4ult@4ul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  *a1 = *(a2 + 68);
  *(a1 + 16) = *(a2 + 76);
  *(a1 + 24) = *(a2 + 84);
  *(a1 + 32) = *(a2 + 92);
  *(a1 + 40) = *(a2 + 100);
  *(a1 + 48) = *(a2 + 108);
  *(a1 + 56) = *(a2 + 116);
  *(a1 + 64) = *(a2 + 124);
  *(a1 + 72) = *(a2 + 132);
  *(a1 + 80) = *(a2 + 140);
  *(a1 + 88) = *(a2 + 148);
  v11 = *(a2 + 172);
  *(a1 + 96) = *(a2 + 156);
  *(a1 + 112) = v11;
  *(a1 + 128) = *(a2 + 188);
  v12 = *(a2 + 196);
  *(a1 + 152) = *(a2 + 212);
  *(a1 + 136) = v12;
  *(a1 + 168) = *(a2 + 228);
  v13 = *(a2 + 252);
  *(a1 + 176) = *(a2 + 236);
  *(a1 + 192) = v13;
  if (a4)
  {
    if (*(a2 + 268) ^ 0x6C75 | *(a2 + 270))
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA901F0;
      v17 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *(a1 + 8) = *(a2 + 272);
    if (a3 <= 0xF3)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA901F0;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 272);
  }
}

void DYTraceDecode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRowsAndResultColumnsAndInteriorColumns_alphaAndBeta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && strcmp((a2 + 36), "Cttulul@3ul@2dt@4ult@4ult@4ultul"))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA90200;
    v15 = "memcmp((const char*)bytes + offset, (Cttulul@3ul@2dt@4ult@4ult@4ultul), sizeof(Cttulul@3ul@2dt@4ult@4ult@4ultul)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  *a1 = *(a2 + 72);
  *(a1 + 16) = *(a2 + 80);
  *(a1 + 24) = *(a2 + 88);
  *(a1 + 32) = *(a2 + 96);
  *(a1 + 40) = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a1 + 64) = *(a2 + 128);
  *(a1 + 48) = v8;
  *(a1 + 72) = *(a2 + 136);
  *(a1 + 88) = *(a2 + 152);
  v9 = *(a2 + 176);
  *(a1 + 96) = *(a2 + 160);
  *(a1 + 112) = v9;
  *(a1 + 128) = *(a2 + 192);
  v10 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 216);
  *(a1 + 136) = v10;
  *(a1 + 168) = *(a2 + 232);
  v11 = *(a2 + 256);
  *(a1 + 176) = *(a2 + 240);
  *(a1 + 192) = v11;
  *(a1 + 208) = *(a2 + 272);
  *(a1 + 216) = *(a2 + 280);
  if (a4)
  {
    if (*(a2 + 288) ^ 0x6C75 | *(a2 + 290))
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90200;
      v15 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    *(a1 + 8) = *(a2 + 292);
    if (a3 <= 0x107)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90200;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 292);
  }
}

void DYTraceDecode_MPSExternalMatrixMultiplication_encodeToCommandBuffer_encoder_options_batchSize_resultRows_resultColumns_interiorColumns_alpha_beta_A_aInfo_B_bInfo_C_cInfo_predicationBuffer_predicationOffset_transA_transB(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && strcmp((a2 + 36), "Cttulul@3ul@2dt@4ult@4ult@4ultulii"))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA90210;
    v15 = "memcmp((const char*)bytes + offset, (Cttulul@3ul@2dt@4ult@4ult@4ultulii), sizeof(Cttulul@3ul@2dt@4ult@4ult@4ultulii)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  *a1 = *(a2 + 72);
  *(a1 + 16) = *(a2 + 80);
  *(a1 + 24) = *(a2 + 88);
  *(a1 + 32) = *(a2 + 96);
  *(a1 + 40) = *(a2 + 104);
  v8 = *(a2 + 112);
  *(a1 + 64) = *(a2 + 128);
  *(a1 + 48) = v8;
  *(a1 + 72) = *(a2 + 136);
  *(a1 + 88) = *(a2 + 152);
  v9 = *(a2 + 176);
  *(a1 + 96) = *(a2 + 160);
  *(a1 + 112) = v9;
  *(a1 + 128) = *(a2 + 192);
  v10 = *(a2 + 200);
  *(a1 + 152) = *(a2 + 216);
  *(a1 + 136) = v10;
  *(a1 + 168) = *(a2 + 232);
  v11 = *(a2 + 256);
  *(a1 + 176) = *(a2 + 240);
  *(a1 + 192) = v11;
  *(a1 + 208) = *(a2 + 272);
  *(a1 + 216) = *(a2 + 280);
  *(a1 + 224) = *(a2 + 288);
  *(a1 + 228) = *(a2 + 292);
  if (a4)
  {
    if (*(a2 + 296) ^ 0x6C75 | *(a2 + 298))
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90210;
      v15 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    *(a1 + 8) = *(a2 + 300);
    if (a3 <= 0x10F)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA90210;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 300);
  }
}

void DYTraceDecode_MPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C75747443 && *(a2 + 44) == 0x753340746C753440;
    if (!v8 || *(a2 + 51) != 0x6C753340746C75)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90220;
      v16 = "memcmp((const char*)bytes + offset, (Cttulult@4ult@3ult@3ul), sizeof(Cttulult@4ult@3ult@3ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 60);
  *(a1 + 16) = *(a2 + 68);
  *(a1 + 24) = *(a2 + 76);
  *(a1 + 32) = *(a2 + 84);
  *(a1 + 40) = *(a2 + 92);
  *(a1 + 48) = *(a2 + 100);
  v10 = *(a2 + 108);
  *(a1 + 72) = *(a2 + 124);
  *(a1 + 56) = v10;
  *(a1 + 88) = *(a2 + 140);
  v11 = *(a2 + 148);
  *(a1 + 112) = *(a2 + 164);
  *(a1 + 96) = v11;
  *(a1 + 120) = *(a2 + 172);
  v12 = *(a2 + 180);
  *(a1 + 144) = *(a2 + 196);
  *(a1 + 128) = v12;
  if (a4)
  {
    if (*(a2 + 204) ^ 0x6C75 | *(a2 + 206))
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90220;
      v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }

    *(a1 + 8) = *(a2 + 208);
    if (a3 <= 0xB3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90220;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 208);
  }
}

void DYTraceDecode_MPSExternalMatrixVectorMultiplication_encodeToCommandBuffer_encoder_options_batchSize_matrix_matrixStructure_vector_vectorStructure_result_resultStructure_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    v8 = *(a2 + 36) == 0x746C756C75747443 && *(a2 + 44) == 0x753340746C753440;
    v9 = v8 && *(a2 + 52) == 0x75746C753340746CLL;
    if (!v9 || *(a2 + 60) != 108)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90230;
      v17 = "memcmp((const char*)bytes + offset, (Cttulult@4ult@3ult@3ultul), sizeof(Cttulult@4ult@3ult@3ultul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  *a1 = *(a2 + 64);
  *(a1 + 16) = *(a2 + 72);
  *(a1 + 24) = *(a2 + 80);
  *(a1 + 32) = *(a2 + 88);
  *(a1 + 40) = *(a2 + 96);
  *(a1 + 48) = *(a2 + 104);
  v11 = *(a2 + 112);
  *(a1 + 72) = *(a2 + 128);
  *(a1 + 56) = v11;
  *(a1 + 88) = *(a2 + 144);
  v12 = *(a2 + 152);
  *(a1 + 112) = *(a2 + 168);
  *(a1 + 96) = v12;
  *(a1 + 120) = *(a2 + 176);
  v13 = *(a2 + 184);
  *(a1 + 144) = *(a2 + 200);
  *(a1 + 128) = v13;
  *(a1 + 152) = *(a2 + 208);
  *(a1 + 160) = *(a2 + 216);
  if (a4)
  {
    if (*(a2 + 224) ^ 0x6C75 | *(a2 + 226))
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90230;
      v17 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *(a1 + 8) = *(a2 + 228);
    if (a3 <= 0xC7)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90230;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 228);
  }
}

void DYTraceDecode_MPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannels_neuronType_neuronParameters(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && strcmp((a2 + 36), "Ctt@2ult@4ult@4ult@3ult@4uld@3uli@3f"))
  {
    v14 = *a4;
    v15 = 501;
    v16 = xmmword_24DA90240;
    v17 = "memcmp((const char*)bytes + offset, (Ctt@2ult@4ult@4ult@3ult@4uld@3uli@3f), sizeof(Ctt@2ult@4ult@4ult@3ult@4uld@3uli@3f)) == 0";
    v18 = 0;
    GTError_addError(a4, &v14);
  }

  *a1 = *(a2 + 76);
  *(a1 + 16) = *(a2 + 84);
  *(a1 + 24) = *(a2 + 92);
  *(a1 + 32) = *(a2 + 100);
  *(a1 + 48) = *(a2 + 116);
  v8 = *(a2 + 124);
  *(a1 + 72) = *(a2 + 140);
  *(a1 + 56) = v8;
  *(a1 + 88) = *(a2 + 156);
  v9 = *(a2 + 180);
  *(a1 + 96) = *(a2 + 164);
  *(a1 + 112) = v9;
  *(a1 + 128) = *(a2 + 196);
  v10 = *(a2 + 204);
  *(a1 + 152) = *(a2 + 220);
  *(a1 + 136) = v10;
  *(a1 + 160) = *(a2 + 228);
  v11 = *(a2 + 236);
  *(a1 + 184) = *(a2 + 252);
  *(a1 + 168) = v11;
  *(a1 + 200) = *(a2 + 268);
  v12 = *(a2 + 276);
  *(a1 + 224) = *(a2 + 292);
  *(a1 + 208) = v12;
  *(a1 + 232) = *(a2 + 300);
  v13 = *(a2 + 304);
  *(a1 + 244) = *(a2 + 312);
  *(a1 + 236) = v13;
  if (a4)
  {
    if (*(a2 + 316) ^ 0x6C75 | *(a2 + 318))
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90240;
      v17 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *(a1 + 8) = *(a2 + 320);
    if (a3 <= 0x123)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90240;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *(a1 + 8) = *(a2 + 320);
  }
}

void DYTraceDecode_MPSExternalMatrixFullyConnected_encodeToCommandBuffer_encoder_optionsAndBatchSize_inputMatrix_inputMatrixInfo_weightMatrix_weightMatrixInfo_biasVector_biasVectorInfo_resultMatrix_resultMatrixInfo_alpha_numberOfFeatureVectorsAndInputFeatureChannelsAndOutputFeatureChannelsAndNeuronTypeAndPredicationOffset_neuronParameters_predicationBuffer(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 268);
  if (a4 && strcmp((a2 + 36), "Ctt@2ult@4ult@4ult@3ult@4uld@5ul@3ft"))
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA90250;
    v19 = "memcmp((const char*)bytes + offset, (Ctt@2ult@4ult@4ult@3ult@4uld@5ul@3ft), sizeof(Ctt@2ult@4ult@4ult@3ult@4uld@5ul@3ft)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  *a1 = *(a2 + 76);
  *(a1 + 16) = *(a2 + 84);
  *(a1 + 24) = *(a2 + 92);
  *(a1 + 32) = *(a2 + 100);
  *(a1 + 48) = *(a2 + 116);
  v9 = *(a2 + 124);
  *(a1 + 72) = *(a2 + 140);
  *(a1 + 56) = v9;
  *(a1 + 88) = *(a2 + 156);
  v10 = *(a2 + 180);
  *(a1 + 96) = *(a2 + 164);
  *(a1 + 112) = v10;
  *(a1 + 128) = *(a2 + 196);
  v11 = *(a2 + 204);
  *(a1 + 152) = *(a2 + 220);
  *(a1 + 136) = v11;
  *(a1 + 160) = *(a2 + 228);
  v12 = *(a2 + 236);
  *(a1 + 184) = *(a2 + 252);
  *(a1 + 168) = v12;
  *(a1 + 200) = *v8;
  v13 = *(a2 + 276);
  v14 = *(a2 + 292);
  *(a1 + 240) = *(a2 + 308);
  *(a1 + 208) = v13;
  *(a1 + 224) = v14;
  v15 = *(a2 + 316);
  *(a1 + 256) = *(a2 + 324);
  *(a1 + 248) = v15;
  *(a1 + 264) = *(a2 + 328);
  if (a4)
  {
    if (*(a2 + 336) ^ 0x6C75 | *(a2 + 338))
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA90250;
      v19 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
      v20 = 0;
      GTError_addError(a4, &v16);
    }

    *(a1 + 8) = v8[9];
    if (a3 <= 0x137)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA90250;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }

  else
  {
    *(a1 + 8) = v8[9];
  }
}

void DYTraceDecode_MPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo_zeroPadSizeX_zeroPadSizeY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x7455746C75747443 || *(a2 + 42) != 0x6C756C75557455)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90260;
      v16 = "memcmp((const char*)bytes + offset, (CttultUtUulul), sizeof(CttultUtUulul)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 52);
  *(a1 + 16) = *(a2 + 60);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 32) = *(a2 + 76);
  *(a1 + 40) = *(a2 + 84);
  v18 = 56;
  *(a1 + 48) = AppendString_13794((a1 + 48), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 56) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 64) = AppendString_13794((a1 + 64), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 72) = *(v8 + v11);
  *(a1 + 80) = *(v8 + v11 + 8);
  if (a4 && *(v8 + v11 + 16) ^ 0x6C75 | *(v8 + v11 + 18))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA90260;
    v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90260;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MPSExternalCNNPoolingAverage_encodeToCommandBuffer_computeCommandEncoder_options_sourceTexture_sourceInfo_destinationTexture_destinationInfo(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x7455746C75747443 || *(a2 + 44) != 85)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90270;
      v16 = "memcmp((const char*)bytes + offset, (CttultUtU), sizeof(CttultUtU)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 16) = *(a2 + 56);
  *(a1 + 24) = *(a2 + 64);
  *(a1 + 32) = *(a2 + 72);
  *(a1 + 40) = *(a2 + 80);
  v18 = 52;
  *(a1 + 48) = AppendString_13794((a1 + 48), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 56) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 64) = AppendString_13794((a1 + 64), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v11) ^ 0x6C75 | *(v8 + v11 + 2))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA90270;
    v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90270;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MPSExternalCNNPoolingAverage_encodeBatchToCommandBuffer_computeCommandEncoder_options_sourceTextures_sourceInfo_destinationTextures_destinationInfo_zeroPadSizeX_zeroPadSizeY_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Cttul@%llutU@%llutUulultul", a1 + 48, a1 + 72);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 36;
  *(a1 + 32) = *(v9 + 28);
  *(a1 + 40) = &v7[v10];
  v20 = v10 + 8 * *(a1 + 48);
  appended = AppendString_13794((a1 + 56), v7, &v20);
  v12 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 56) = appended;
  *(a1 + 64) = &v7[v12];
  v20 = v12 + 8 * *(a1 + 72);
  *(a1 + 80) = AppendString_13794((a1 + 80), v7, &v20);
  v13 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 88) = *&v7[v13];
  *(a1 + 96) = *&v7[v13 + 8];
  *(a1 + 104) = *&v7[v13 + 16];
  *(a1 + 112) = *&v7[v13 + 24];
  if (a4 && *&v7[v13 + 32] ^ 0x6C75 | v7[v13 + 34])
  {
    v15 = *a4;
    v16 = 501;
    v17 = xmmword_24DA90280;
    v18 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v19 = 0;
    GTError_addError(a4, &v15);
  }

  v14 = (v13 + 38) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v14];
  if (a4)
  {
    if (v14 + 8 > a3)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA90280;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }
}

void DYTraceDecode_MPSExternalNDArrayBinary_encodeToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_destinationBuffer_destinationInfo_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x746C756C75747443 | *(a2 + 44) ^ 0x6C75745574557455 | *(a2 + 52))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA90290;
    v16 = "memcmp((const char*)bytes + offset, (CttulultUtUtUtul), sizeof(CttulultUtUtUtul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 96);
  v18 = 68;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v18);
  v9 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v9);
  v18 = v9 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v10);
  v18 = v10 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *(v8 + v11);
  *(a1 + 104) = *(v8 + v11 + 8);
  if (a4 && *(v8 + v11 + 16) ^ 0x6C75 | *(v8 + v11 + 18))
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA90290;
    v16 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA90290;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MPSExternalNDArrayBinaryGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    v9 = *v8 == 0x746C756C75747443 && *(a2 + 44) == 0x6955745574557455;
    if (!v9 || *(a2 + 52) != 7107956)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902A0;
      v19 = "memcmp((const char*)bytes + offset, (CttulultUtUtUtUitul), sizeof(CttulultUtUtUtUitul)) == 0";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 96);
  v21 = 68;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v21);
  v11 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v11);
  v21 = v11 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v21);
  v12 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v12);
  v21 = v12 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *(v8 + v13);
  v21 = v13 + 8;
  *(a1 + 104) = AppendString_13794((a1 + 104), v8, &v21);
  v14 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 112) = *(v8 + v14);
  *(a1 + 120) = *(v8 + v14 + 4);
  *(a1 + 128) = *(v8 + v14 + 12);
  if (a4 && *(v8 + v14 + 20) ^ 0x6C75 | *(v8 + v14 + 22))
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA902A0;
    v19 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 26) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902A0;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MPSExternalNDArrayBinaryGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primaryBuffer_primaryInfo_secondaryBuffer_secondaryInfo_gradientBuffer_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    v9 = *v8 == 0x746C756C75747443 && *(a2 + 44) == 0x6955745574557455;
    if (!v9 || *(a2 + 52) != 7107956)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902B0;
      v19 = "memcmp((const char*)bytes + offset, (CttulultUtUtUtUitul), sizeof(CttulultUtUtUtUitul)) == 0";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 96);
  v21 = 68;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v21);
  v11 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v11);
  v21 = v11 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v21);
  v12 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v12);
  v21 = v12 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *(v8 + v13);
  v21 = v13 + 8;
  *(a1 + 104) = AppendString_13794((a1 + 104), v8, &v21);
  v14 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 112) = *(v8 + v14);
  *(a1 + 120) = *(v8 + v14 + 4);
  *(a1 + 128) = *(v8 + v14 + 12);
  if (a4 && *(v8 + v14 + 20) ^ 0x6C75 | *(v8 + v14 + 22))
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA902B0;
    v19 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 26) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902B0;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MPSExternalNDArrayConvolution2DGradient_encodePrimaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    v9 = *v8 == 0x746C756C75747443 && *(a2 + 44) == 0x6955745574557455;
    if (!v9 || *(a2 + 52) != 7107956)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902C0;
      v19 = "memcmp((const char*)bytes + offset, (CttulultUtUtUtUitul), sizeof(CttulultUtUtUtUitul)) == 0";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 96);
  v21 = 68;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v21);
  v11 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v11);
  v21 = v11 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v21);
  v12 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v12);
  v21 = v12 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *(v8 + v13);
  v21 = v13 + 8;
  *(a1 + 104) = AppendString_13794((a1 + 104), v8, &v21);
  v14 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 112) = *(v8 + v14);
  *(a1 + 120) = *(v8 + v14 + 4);
  *(a1 + 128) = *(v8 + v14 + 12);
  if (a4 && *(v8 + v14 + 20) ^ 0x6C75 | *(v8 + v14 + 22))
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA902C0;
    v19 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 26) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902C0;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MPSExternalNDArrayConvolution2DGradient_encodeSecondaryGradientToCommandBuffer_encoder_options_pluginOptions_primary_primaryInfo_secondary_secondaryInfo_gradient_gradientInfo_destination_destinationInfo_accumulate_predicationBuffer_predicationOffset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    v9 = *v8 == 0x746C756C75747443 && *(a2 + 44) == 0x6955745574557455;
    if (!v9 || *(a2 + 52) != 7107956)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902D0;
      v19 = "memcmp((const char*)bytes + offset, (CttulultUtUtUtUitul), sizeof(CttulultUtUtUtUitul)) == 0";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }

  *a1 = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  *(a1 + 24) = *(a2 + 72);
  *(a1 + 32) = *(a2 + 80);
  *(a1 + 40) = *(a2 + 88);
  *(a1 + 48) = *(a2 + 96);
  v21 = 68;
  *(a1 + 56) = AppendString_13794((a1 + 56), v8, &v21);
  v11 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 64) = *(v8 + v11);
  v21 = v11 + 8;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v21);
  v12 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v12);
  v21 = v12 + 8;
  *(a1 + 88) = AppendString_13794((a1 + 88), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 96) = *(v8 + v13);
  v21 = v13 + 8;
  *(a1 + 104) = AppendString_13794((a1 + 104), v8, &v21);
  v14 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 112) = *(v8 + v14);
  *(a1 + 120) = *(v8 + v14 + 4);
  *(a1 + 128) = *(v8 + v14 + 12);
  if (a4 && *(v8 + v14 + 20) ^ 0x6C75 | *(v8 + v14 + 22))
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA902D0;
    v19 = "memcmp((const char*)bytes + offset, (ul), sizeof(ul)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 26) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA902D0;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setAspectRatio(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA902E0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA902E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA902F0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA902F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90300;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90300;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setDeltaTime(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90310;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90310;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90320;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90320;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90330;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90330;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setFarPlane(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90340;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90340;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90350;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90350;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setFieldOfView(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90360;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90360;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90370;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90370;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90380;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90380;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90390;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90390;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903A0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903B0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setNearPlane(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903C0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setPrevColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setShouldResetHistory(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903F0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA903F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90400;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90400;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90410;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90410;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setIsUITextureComposited(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90420;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90420;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXFrameInterpolator_setUITexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90430;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90430;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90440;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90440;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90450;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90450;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90460;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90460;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90470;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90470;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90480;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90480;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90490;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90490;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4FXSpatialScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904B0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904C0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904D0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904F0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA904F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90500;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90500;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setDiffuseAlbedoTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90510;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90510;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setExposureTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90520;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90520;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90530;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90530;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90540;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90540;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90550;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90550;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90560;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90560;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90570;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90570;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90580;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90580;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90590;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90590;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905A0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setNormalTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905B0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905C0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setPreExposure(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905D0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setReactiveMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setRoughnessTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905F0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA905F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setShouldResetHistory(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90600;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90600;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setSpecularAlbedoTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90610;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90610;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setSpecularHitDistanceTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90620;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90620;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_setTransparencyOverlayTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90630;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90630;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

__n128 DYTraceDecode_MTL4FXTemporalDenoisedScaler_setViewToClipMatrix(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 909197379 || *(a2 + 40) != 102)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90640;
      v17 = "memcmp((const char*)bytes + offset, (C@16f), sizeof(C@16f)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    v11 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v11;
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
    if (a3 <= 0x4F)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90640;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v12 = *(a2 + 68);
    v13 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v13;
    *(a1 + 24) = v12;
    *(a1 + 8) = result;
  }

  return result;
}

__n128 DYTraceDecode_MTL4FXTemporalDenoisedScaler_setWorldToViewMatrix(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 909197379 || *(a2 + 40) != 102)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90650;
      v17 = "memcmp((const char*)bytes + offset, (C@16f), sizeof(C@16f)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    v11 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v11;
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
    if (a3 <= 0x4F)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90650;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v12 = *(a2 + 68);
    v13 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v13;
    *(a1 + 24) = v12;
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90660;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90660;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4FXTemporalDenoisedScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90670;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90670;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_executionMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90680;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90680;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90690;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90690;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setColorTextureBarrierStages(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906A0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906B0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906C0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setExposureTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906F0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA906F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90700;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90700;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90710;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90710;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90720;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90720;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90730;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90730;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90740;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90740;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90750;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90750;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90760;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90760;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setPreExposure(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90770;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90770;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setReactiveMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90780;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90780;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_setReset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90790;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90790;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA907A0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA907A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4FXTemporalScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA907B0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA907B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLDevice_newFrameInterpolatorWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907C0;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907C0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA907C0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newMTL4FrameInterpolatorWithDescriptor_compiler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907D0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907D0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA907D0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newMTL4SpatialScalerWithDescriptor_compiler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907E0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907E0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA907E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newMTL4TemporalDenoisedScalerWithDescriptor_compiler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907F0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA907F0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA907F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newMTL4TemporalScalerWithDescriptor_compiler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90800;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90800;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90800;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newSpatialScalerWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90810;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90810;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90810;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTemporalDenoisedScalerWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90820;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90820;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90820;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newTemporalScalerWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90830;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA90830;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA90830;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setAspectRatio(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90840;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90840;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90850;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90850;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setDeltaTime(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90860;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90860;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90870;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90870;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90880;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90880;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setFarPlane(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90890;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90890;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setFieldOfView(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908B0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908C0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908D0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908E0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908F0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA908F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90900;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90900;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setNearPlane(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90910;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90910;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90920;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90920;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setPrevColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90930;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90930;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setShouldResetHistory(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90940;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90940;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90950;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90950;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90960;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90960;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setIsUITextureComposited(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90970;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90970;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXFrameInterpolator_setUITexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90980;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90980;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90990;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90990;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909B0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909C0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909D0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFXSpatialScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909F0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA909F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_executionMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A10;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setDenoiseStrengthMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A20;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A30;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A40;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setDiffuseAlbedoTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A50;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setExposureTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A60;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A70;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A80;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A90;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90A90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AA0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AB0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AC0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AD0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AE0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setNormalTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AF0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90AF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B00;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setPreExposure(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B10;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setReactiveMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B20;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setRoughnessTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B30;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setShouldResetHistory(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B40;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setSpecularAlbedoTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B50;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setSpecularHitDistanceTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B60;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_setTransparencyOverlayTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B70;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90B70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

__n128 DYTraceDecode_MTLFXTemporalDenoisedScaler_setViewToClipMatrix(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 909197379 || *(a2 + 40) != 102)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90B80;
      v17 = "memcmp((const char*)bytes + offset, (C@16f), sizeof(C@16f)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    v11 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v11;
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
    if (a3 <= 0x4F)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90B80;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v12 = *(a2 + 68);
    v13 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v13;
    *(a1 + 24) = v12;
    *(a1 + 8) = result;
  }

  return result;
}

__n128 DYTraceDecode_MTLFXTemporalDenoisedScaler_setWorldToViewMatrix(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 909197379 || *(a2 + 40) != 102)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90B90;
      v17 = "memcmp((const char*)bytes + offset, (C@16f), sizeof(C@16f)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v10 = *(a2 + 68);
    v11 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v11;
    *(a1 + 24) = v10;
    *(a1 + 8) = result;
    if (a3 <= 0x4F)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA90B90;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    v12 = *(a2 + 68);
    v13 = *(a2 + 84);
    *(a1 + 56) = *(a2 + 100);
    *(a1 + 40) = v13;
    *(a1 + 24) = v12;
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BB0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalDenoisedScaler_encodeToCommandQueue(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BC0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_executionMode(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BD0;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setColorTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BE0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setDepthReversed(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BF0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90BF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setDepthTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C00;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setExposureTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C10;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setFence(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C20;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setInputContentHeight(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C30;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setInputContentWidth(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C40;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setJitterOffsetX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C50;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setJitterOffsetY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C60;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setMotionTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C70;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setMotionVectorScaleX(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C80;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C80;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setMotionVectorScaleY(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C90;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90C90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setOutputTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CA0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setPreExposure(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6643 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CB0;
      v11 = "memcmp((const char*)bytes + offset, (Cf), sizeof(Cf)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setReactiveMaskTexture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CC0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_setReset(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CD0;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTLFXTemporalScaler_encodeToCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CF0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA90CF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}