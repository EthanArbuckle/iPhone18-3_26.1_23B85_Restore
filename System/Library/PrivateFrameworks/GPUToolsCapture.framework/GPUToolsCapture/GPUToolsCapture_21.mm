void ***MakeDYMTLAccelerationStructureBoundingBoxGeometryDescriptor(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  v11 = v7[3];
  *result = v7 + 4;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v8;
    a2[1] = v9;
    a2[2] = v11;
    a2[3] = v10;
  }

  return result;
}

uint64_t SaveDYMTLAccelerationStructureBoundingBoxGeometryDescriptor(void *a1, uint64_t *a2, uint64_t a3)
{
  result = GTTraceStream_deviceObjectOrNULL(a3, *a2);
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 8;
  if (v7 + 8 <= v6)
  {
    *(*a1 + v7) = result;
    v6 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v6)
  {
    *(*a1 + v8) = a2[1];
    v6 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v6)
  {
    *(*a1 + v9) = a2[3];
    v6 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v6)
  {
    *(*a1 + v10) = a2[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  return result;
}

uint64_t **MakeDYMTLAccelerationStructureCurveGeometryDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  v11 = v7[3];
  *result = v7 + 4;
  v12 = v7[4];
  *result = v7 + 5;
  v13 = v7[5];
  *result = v7 + 6;
  v14 = v7[6];
  *result = v7 + 7;
  v15 = v7[7];
  *result = v7 + 8;
  v16 = v7[8];
  *result = v7 + 9;
  v17 = v7[9];
  *result = v7 + 10;
  v18 = v7[10];
  *result = v7 + 11;
  v19 = *(v7 + 88);
  *result = v7 + 12;
  v20 = *(v7 + 96);
  *result = v7 + 13;
  v21 = *(v7 + 104);
  *result = v7 + 14;
  v22 = *(v7 + 112);
  *result = v7 + 15;
  v23 = *(v7 + 120);
  *result = v7 + 16;
  v24 = *(v7 + 128);
  *result = v7 + 17;
  if (a5)
  {
    if (a6)
    {
      v28 = v20;
      v29 = v18;
      v30 = v16;
      v31 = v17;
      v32 = v13;
      v33 = v14;
      v34 = v12;
      v35 = v11;
      v36 = v9;
      Stream_19685 = GetStream_19685(a6, v8);
      if (Stream_19685)
      {
        v8 = *Stream_19685;
      }

      else
      {
        v8 = 0;
      }

      v27 = GetStream_19685(a6, v10);
      if (v27)
      {
        v10 = *v27;
      }

      else
      {
        v10 = 0;
      }

      result = GetStream_19685(a6, v15);
      if (result)
      {
        v15 = *result;
      }

      else
      {
        v15 = 0;
      }

      v11 = v35;
      v9 = v36;
      v14 = v33;
      v12 = v34;
      v17 = v31;
      v13 = v32;
      v18 = v29;
      v16 = v30;
      v20 = v28;
    }

    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = v10;
    *(a2 + 56) = v11;
    *(a2 + 64) = v14;
    *(a2 + 72) = v18;
    *(a2 + 80) = v17;
    *(a2 + 88) = v19;
    *(a2 + 89) = v23;
    *(a2 + 90) = v22;
    *(a2 + 91) = v24;
    *(a2 + 92) = v21;
    *(a2 + 93) = v20;
    *(a2 + 94) = 0;
  }

  return result;
}

void *SaveDYMTLAccelerationStructureCurveGeometryDescriptor(void *a1, uint64_t *a2, uint64_t a3)
{
  v43 = *a2;
  v6 = &dword_8;
  entry = find_entry(a3, &v43, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = v11 + 8;
  if (v11 + 8 <= v10)
  {
    *(*a1 + v11) = *v6;
    v10 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v10)
  {
    *(*a1 + v12) = a2[1];
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v42 = a2[6];
  v14 = &dword_8;
  v15 = find_entry(a3, &v42, 8uLL, 0);
  if (*v15)
  {
    v16 = *(*v15 + 32);
    if (v16)
    {
      v17 = atomic_load((v16 + 56));
      v14 = (v16 + (~(v17 >> 2) & 8));
    }

    else
    {
      v14 = &dword_8;
    }
  }

  v19 = a1[1];
  v18 = a1[2];
  v20 = v19 + 8;
  if (v19 + 8 <= v18)
  {
    *(*a1 + v19) = *v14;
    v18 = a1[2];
    v20 = a1[1] + 8;
  }

  a1[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v18)
  {
    *(*a1 + v20) = a2[7];
    v18 = a1[2];
    v21 = a1[1] + 8;
  }

  a1[1] = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v18)
  {
    *(*a1 + v21) = a2[2];
    v18 = a1[2];
    v22 = a1[1] + 8;
  }

  a1[1] = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v18)
  {
    *(*a1 + v22) = a2[3];
    v18 = a1[2];
    v23 = a1[1] + 8;
  }

  a1[1] = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v18)
  {
    *(*a1 + v23) = a2[8];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v41 = a2[4];
  v25 = &dword_8;
  result = find_entry(a3, &v41, 8uLL, 0);
  if (*result)
  {
    v27 = *(*result + 32);
    if (v27)
    {
      v28 = atomic_load((v27 + 56));
      v25 = (v27 + (~(v28 >> 2) & 8));
    }

    else
    {
      v25 = &dword_8;
    }
  }

  v30 = a1[1];
  v29 = a1[2];
  v31 = v30 + 8;
  if (v30 + 8 <= v29)
  {
    *(*a1 + v30) = *v25;
    v29 = a1[2];
    v31 = a1[1] + 8;
  }

  a1[1] = v31;
  v32 = v31 + 8;
  if (v31 + 8 <= v29)
  {
    *(*a1 + v31) = a2[5];
    v29 = a1[2];
    v32 = a1[1] + 8;
  }

  a1[1] = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v29)
  {
    *(*a1 + v32) = a2[10];
    v29 = a1[2];
    v33 = a1[1] + 8;
  }

  a1[1] = v33;
  v34 = v33 + 8;
  if (v33 + 8 <= v29)
  {
    *(*a1 + v33) = a2[9];
    v29 = a1[2];
    v34 = a1[1] + 8;
  }

  a1[1] = v34;
  v35 = v34 + 8;
  if (v34 + 8 <= v29)
  {
    *(*a1 + v34) = *(a2 + 88);
    v29 = a1[2];
    v35 = a1[1] + 8;
  }

  a1[1] = v35;
  v36 = v35 + 8;
  if (v35 + 8 <= v29)
  {
    *(*a1 + v35) = *(a2 + 93);
    v29 = a1[2];
    v36 = a1[1] + 8;
  }

  a1[1] = v36;
  v37 = v36 + 8;
  if (v36 + 8 <= v29)
  {
    *(*a1 + v36) = *(a2 + 92);
    v29 = a1[2];
    v37 = a1[1] + 8;
  }

  a1[1] = v37;
  v38 = v37 + 8;
  if (v37 + 8 <= v29)
  {
    *(*a1 + v37) = *(a2 + 90);
    v29 = a1[2];
    v38 = a1[1] + 8;
  }

  a1[1] = v38;
  v39 = v38 + 8;
  if (v38 + 8 <= v29)
  {
    *(*a1 + v38) = *(a2 + 89);
    v29 = a1[2];
    v39 = a1[1] + 8;
  }

  a1[1] = v39;
  v40 = v39 + 8;
  if (v39 + 8 <= v29)
  {
    *(*a1 + v39) = *(a2 + 91);
    v40 = a1[1] + 8;
  }

  a1[1] = v40;
  return result;
}

void ***MakeDYMTLMotionKeyframeData(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v8;
    a2[1] = v9;
  }

  return result;
}

uint64_t SaveDYMTLMotionKeyframeData(void *a1, uint64_t *a2, uint64_t a3)
{
  result = GTTraceStream_deviceObjectOrNULL(a3, *a2);
  v7 = a1[1];
  v6 = a1[2];
  v8 = v7 + 8;
  if (v7 + 8 <= v6)
  {
    *(*a1 + v7) = result;
    v6 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v6)
  {
    *(*a1 + v8) = a2[1];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  return result;
}

uint64_t **MakeDYMTLAccelerationStructureMotionTriangleGeometryDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v10 = result;
  v11 = *result + 1;
  v12 = **result;
  *result = v11;
  if (v12)
  {
    v30 = *(a3 + 512);
    v14 = v12;
    do
    {
      v15 = *(a3 + 512);
      *(a3 + 512) = v15 + 2;
      result = MakeDYMTLMotionKeyframeData(v10, v15, a3, a4, a5, a6);
      --v14;
    }

    while (v14);
    v11 = *v10;
  }

  else
  {
    v30 = 0;
  }

  *v10 = v11 + 1;
  v16 = v11[1];
  *v10 = v11 + 2;
  v17 = v11[2];
  *v10 = v11 + 3;
  v18 = v11[3];
  *v10 = v11 + 4;
  v19 = *(v11 + 32);
  *v10 = v11 + 5;
  v20 = v11[5];
  *v10 = v11 + 6;
  if (v8 <= 0x3B)
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v21 = 30;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    v21 = *(v11 + 48);
    *v10 = v11 + 7;
    v22 = v11[7];
    *v10 = v11 + 8;
    v23 = v11[8];
    *v10 = v11 + 9;
    if (v8 < 0x4E)
    {
      v24 = 0;
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v24 = *(v11 + 72);
      *v10 = v11 + 10;
      if (!a5)
      {
        return result;
      }
    }
  }

  if (a6)
  {
    v28 = v20;
    v29 = v18;
    v25 = v19;
    v26 = v16;
    Stream_19685 = GetStream_19685(a6, v17);
    if (Stream_19685)
    {
      v17 = *Stream_19685;
    }

    else
    {
      v17 = 0;
    }

    result = GetStream_19685(a6, v22);
    if (result)
    {
      v22 = *result;
    }

    else
    {
      v22 = 0;
    }

    v16 = v26;
    v19 = v25;
    v20 = v28;
    v18 = v29;
  }

  *a2 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v20;
  *(a2 + 40) = v30;
  *(a2 + 48) = v12;
  *(a2 + 56) = v16;
  *(a2 + 64) = v19;
  *(a2 + 65) = v24;
  *(a2 + 66) = v21;
  *(a2 + 67) = 0;
  *(a2 + 71) = 0;
  return result;
}

uint64_t SaveDYMTLAccelerationStructureMotionTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  v7 = a1[1];
  v8 = v7 + 8;
  if ((v7 + 8) <= a1[2])
  {
    *(*a1 + v7) = v6;
    v8 = a1[1] + 8;
    v6 = *(a2 + 48);
  }

  a1[1] = v8;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      SaveDYMTLMotionKeyframeData(a1, (*(a2 + 40) + v9), a3);
      ++v10;
      v9 += 16;
    }

    while (*(a2 + 48) > v10);
    v8 = a1[1];
  }

  v11 = v8 + 8;
  v12 = a1[2];
  if (v8 + 8 <= v12)
  {
    *(*a1 + v8) = 0;
    v12 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v13 = v11 + 8;
  if (v11 + 8 <= v12)
  {
    *(*a1 + v11) = *(a2 + 56);
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v14 = GTTraceStream_deviceObjectOrNULL(a3, *a2);
  v16 = a1[1];
  v15 = a1[2];
  v17 = v16 + 8;
  if (v16 + 8 <= v15)
  {
    *(*a1 + v16) = v14;
    v15 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v15)
  {
    *(*a1 + v17) = *(a2 + 8);
    v15 = a1[2];
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v15)
  {
    *(*a1 + v18) = *(a2 + 64);
    v15 = a1[2];
    v19 = a1[1] + 8;
  }

  a1[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v15)
  {
    *(*a1 + v19) = *(a2 + 32);
    v15 = a1[2];
    v20 = a1[1] + 8;
  }

  a1[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v15)
  {
    *(*a1 + v20) = *(a2 + 66);
    v21 = a1[1] + 8;
  }

  a1[1] = v21;
  result = GTTraceStream_deviceObjectOrNULL(a3, *(a2 + 16));
  v24 = a1[1];
  v23 = a1[2];
  v25 = v24 + 8;
  if (v24 + 8 <= v23)
  {
    *(*a1 + v24) = result;
    v23 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v23)
  {
    *(*a1 + v25) = *(a2 + 24);
    v23 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v23)
  {
    *(*a1 + v26) = *(a2 + 65);
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  return result;
}

uint64_t **MakeDYMTLAccelerationStructureTriangleGeometryDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v8 = *result;
  v9 = *(*result)++;
  v10 = v8[1];
  *result = v8 + 2;
  v11 = v8[2];
  *result = v8 + 3;
  v12 = v8[3];
  *result = v8 + 4;
  v13 = v8[4];
  *result = v8 + 5;
  v14 = *(v8 + 40);
  *result = v8 + 6;
  v15 = v8[6];
  *result = v8 + 7;
  if (a4 < 0x3C)
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v16 = 30;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    v16 = *(v8 + 56);
    *result = v8 + 8;
    v17 = v8[8];
    *result = v8 + 9;
    v18 = v8[9];
    *result = v8 + 10;
    if (a4 < 0x4E)
    {
      v19 = 0;
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v19 = *(v8 + 80);
      *result = v8 + 11;
      if (!a5)
      {
        return result;
      }
    }
  }

  if (a6)
  {
    v22 = v14;
    v23 = v11;
    v24 = v10;
    Stream_19685 = GetStream_19685(a6, v9);
    if (Stream_19685)
    {
      v9 = *Stream_19685;
    }

    else
    {
      v9 = 0;
    }

    v21 = GetStream_19685(a6, v12);
    if (v21)
    {
      v12 = *v21;
    }

    else
    {
      v12 = 0;
    }

    result = GetStream_19685(a6, v17);
    if (result)
    {
      v17 = *result;
    }

    else
    {
      v17 = 0;
    }

    v11 = v23;
    v10 = v24;
    v14 = v22;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v14;
  *(a2 + 65) = v19;
  *(a2 + 66) = v16;
  *(a2 + 67) = 0;
  *(a2 + 71) = 0;
  return result;
}

uint64_t SaveDYMTLAccelerationStructureTriangleGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = GTTraceStream_deviceObjectOrNULL(a3, *(a2 + 40));
  v8 = a1[1];
  v7 = a1[2];
  v9 = v8 + 8;
  if (v8 + 8 <= v7)
  {
    *(*a1 + v8) = v6;
    v7 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v7)
  {
    *(*a1 + v9) = *(a2 + 48);
    v7 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v7)
  {
    *(*a1 + v10) = *(a2 + 56);
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = GTTraceStream_deviceObjectOrNULL(a3, *a2);
  v14 = a1[1];
  v13 = a1[2];
  v15 = v14 + 8;
  if (v14 + 8 <= v13)
  {
    *(*a1 + v14) = v12;
    v13 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v13)
  {
    *(*a1 + v15) = *(a2 + 8);
    v13 = a1[2];
    v16 = a1[1] + 8;
  }

  a1[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v13)
  {
    *(*a1 + v16) = *(a2 + 64);
    v13 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v13)
  {
    *(*a1 + v17) = *(a2 + 32);
    v13 = a1[2];
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v13)
  {
    *(*a1 + v18) = *(a2 + 66);
    v19 = a1[1] + 8;
  }

  a1[1] = v19;
  result = GTTraceStream_deviceObjectOrNULL(a3, *(a2 + 16));
  v22 = a1[1];
  v21 = a1[2];
  v23 = v22 + 8;
  if (v22 + 8 <= v21)
  {
    *(*a1 + v22) = result;
    v21 = a1[2];
    v23 = a1[1] + 8;
  }

  a1[1] = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v21)
  {
    *(*a1 + v23) = *(a2 + 24);
    v21 = a1[2];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v21)
  {
    *(*a1 + v24) = *(a2 + 65);
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  return result;
}

void ***MakeDYMTLBlitPassSampleBufferAttachmentDescriptor(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
  }

  return result;
}

void *SaveDYMTLBlitPassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3)
{
  v14 = a2[1];
  v5 = &dword_8;
  result = find_entry(a3, &v14, 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      v8 = atomic_load((v7 + 56));
      v5 = (v7 + (~(v8 >> 2) & 8));
    }

    else
    {
      v5 = &dword_8;
    }
  }

  v10 = a1[1];
  v9 = a1[2];
  v11 = v10 + 8;
  if (v10 + 8 <= v9)
  {
    *(*a1 + v10) = *v5;
    v9 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v9)
  {
    *(*a1 + v11) = a2[2];
    v9 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v9)
  {
    *(*a1 + v12) = *a2;
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  return result;
}

void ***MakeDYMTLComputePassSampleBufferAttachmentDescriptor(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
  }

  return result;
}

void *SaveDYMTLComputePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3)
{
  v14 = a2[1];
  v5 = &dword_8;
  result = find_entry(a3, &v14, 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      v8 = atomic_load((v7 + 56));
      v5 = (v7 + (~(v8 >> 2) & 8));
    }

    else
    {
      v5 = &dword_8;
    }
  }

  v10 = a1[1];
  v9 = a1[2];
  v11 = v10 + 8;
  if (v10 + 8 <= v9)
  {
    *(*a1 + v10) = *v5;
    v9 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v9)
  {
    *(*a1 + v11) = a2[2];
    v9 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v9)
  {
    *(*a1 + v12) = *a2;
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  return result;
}

void ***MakeDYMTLResourceStatePassSampleBufferAttachmentDescriptor(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
  }

  return result;
}

void *SaveDYMTLResourceStatePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3)
{
  v14 = a2[1];
  v5 = &dword_8;
  result = find_entry(a3, &v14, 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      v8 = atomic_load((v7 + 56));
      v5 = (v7 + (~(v8 >> 2) & 8));
    }

    else
    {
      v5 = &dword_8;
    }
  }

  v10 = a1[1];
  v9 = a1[2];
  v11 = v10 + 8;
  if (v10 + 8 <= v9)
  {
    *(*a1 + v10) = *v5;
    v9 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v9)
  {
    *(*a1 + v11) = a2[2];
    v9 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v9)
  {
    *(*a1 + v12) = *a2;
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  return result;
}

void ***MakeDYMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(void ***result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = *result;
  v8 = *(*result)++;
  v9 = v7[1];
  *result = v7 + 2;
  v10 = v7[2];
  *result = v7 + 3;
  if (a5)
  {
    if (a6)
    {
      result = GetStream_19685(a6, v8);
      if (result)
      {
        v8 = *result;
      }

      else
      {
        v8 = 0;
      }
    }

    *a2 = v10;
    a2[1] = v8;
    a2[2] = v9;
  }

  return result;
}

void *SaveDYMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(void *a1, void *a2, uint64_t a3)
{
  v14 = a2[1];
  v5 = &dword_8;
  result = find_entry(a3, &v14, 8uLL, 0);
  if (*result)
  {
    v7 = *(*result + 32);
    if (v7)
    {
      v8 = atomic_load((v7 + 56));
      v5 = (v7 + (~(v8 >> 2) & 8));
    }

    else
    {
      v5 = &dword_8;
    }
  }

  v10 = a1[1];
  v9 = a1[2];
  v11 = v10 + 8;
  if (v10 + 8 <= v9)
  {
    *(*a1 + v10) = *v5;
    v9 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v9)
  {
    *(*a1 + v11) = a2[2];
    v9 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v9)
  {
    *(*a1 + v12) = *a2;
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  return result;
}

uint64_t DecodeDYMTLIntersectionFunctionTableDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 88);
  *(a3 + 88) = v4 + 16;
  if (a4)
  {
    v5 = *result;
    *(v4 + 8) = *(result + 8);
    if (v5 >= 0x36)
    {
      *v4 = *(result + 16);
      *(v4 + 12) = *(result + 24);
    }
  }

  return result;
}

uint64_t EncodeDYMTLIntersectionFunctionTableDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 8);
      if (a3 >= 0x18)
      {
        a2[2] = *a1;
        if (a3 >= 0x20)
        {
          a2[3] = *(a1 + 12);
        }
      }
    }
  }

  return 32;
}

uint64_t *DecodeDYMTLRenderPipelineFunctionsDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result[1];
  v9 = result + 2;
  v46 = v8;
  if (v8)
  {
    v10 = *(a3 + 576);
    v45 = v10;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v11);
          if (result)
          {
            v11 = *result;
          }

          else
          {
            v11 = 0;
          }
        }

        v10 = *(a3 + 576);
        *v10 = v11;
      }

      *(a3 + 576) = ++v10;
      --v8;
    }

    while (v8);
  }

  else
  {
    v45 = 0;
  }

  v15 = *v9;
  v14 = v9 + 1;
  v13 = v15;
  v44 = v15;
  if (v15)
  {
    v16 = *(a3 + 576);
    v43 = v16;
    do
    {
      v18 = *v14++;
      v17 = v18;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v17);
          if (result)
          {
            v17 = *result;
          }

          else
          {
            v17 = 0;
          }
        }

        v16 = *(a3 + 576);
        *v16 = v17;
      }

      *(a3 + 576) = ++v16;
      --v13;
    }

    while (v13);
  }

  else
  {
    v43 = 0;
  }

  v21 = *v14;
  v19 = v14 + 1;
  v20 = v21;
  if (v21)
  {
    v22 = *(a3 + 576);
    v23 = v20;
    v42 = v22;
    do
    {
      v25 = *v19++;
      v24 = v25;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v24);
          if (result)
          {
            v24 = *result;
          }

          else
          {
            v24 = 0;
          }
        }

        v22 = *(a3 + 576);
        *v22 = v24;
      }

      *(a3 + 576) = ++v22;
      v23 = (v23 - 1);
    }

    while (v23);
  }

  else
  {
    v42 = 0;
  }

  v28 = *v19;
  v27 = v19 + 1;
  v26 = v28;
  if (v28)
  {
    v29 = *(a3 + 576);
    v30 = v26;
    v31 = v29;
    do
    {
      v33 = *v27++;
      v32 = v33;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v32);
          if (result)
          {
            v32 = *result;
          }

          else
          {
            v32 = 0;
          }
        }

        v31 = *(a3 + 576);
        *v31 = v32;
      }

      *(a3 + 576) = ++v31;
      v30 = (v30 - 1);
    }

    while (v30);
  }

  else
  {
    v29 = 0;
  }

  v34 = *v27;
  if (*v27)
  {
    v35 = *(a3 + 576);
    v36 = v27 + 1;
    v37 = v34;
    v38 = v35;
    do
    {
      v40 = *v36++;
      v39 = v40;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v39);
          if (result)
          {
            v39 = *result;
          }

          else
          {
            v39 = 0;
          }
        }

        v38 = *(a3 + 576);
        *v38 = v39;
      }

      *(a3 + 576) = ++v38;
      --v37;
    }

    while (v37);
  }

  else
  {
    v35 = 0;
  }

  v41 = *(a3 + 96);
  *(a3 + 96) = v41 + 10;
  if (a4)
  {
    *v41 = v43;
    v41[1] = v44;
    v41[2] = v29;
    v41[3] = v26;
    v41[4] = v35;
    v41[5] = v34;
    v41[6] = v42;
    v41[7] = v20;
    v41[8] = v45;
    v41[9] = v46;
  }

  return result;
}

uint64_t EncodeDYMTLRenderPipelineFunctionsDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 > 7)
  {
    *a2 = 115;
    v8 = a1 + 9;
    v9 = a1[9];
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v9;
  }

  else
  {
    v8 = a1 + 9;
  }

  v9 = *v8;
LABEL_6:
  if (v9)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v54 = *(a1[8] + v10);
      entry = find_entry(a4, &v54, 8uLL, 0);
      v13 = &dword_8;
      if (*entry)
      {
        v14 = *(*entry + 32);
        if (v14)
        {
          v15 = atomic_load((v14 + 56));
          v13 = (v14 + (~(v15 >> 2) & 8));
        }

        else
        {
          v13 = &dword_8;
        }
      }

      if (v10 + 24 <= a3)
      {
        a2[v10 / 8 + 2] = *v13;
      }

      v10 += 8;
      v16 = v11++ - 1;
    }

    while (*v8 > v16);
    v17 = v10 + 16;
  }

  else
  {
    v17 = 16;
  }

  v18 = a1[1];
  v19 = v17 + 8;
  if (v17 + 8 <= a3)
  {
    *(a2 + v17) = v18;
    v18 = a1[1];
  }

  if (v18)
  {
    v20 = 0;
    do
    {
      v53 = *(*a1 + 8 * v20);
      v21 = find_entry(a4, &v53, 8uLL, 0);
      v22 = &dword_8;
      if (*v21)
      {
        v23 = *(*v21 + 32);
        if (v23)
        {
          v24 = atomic_load((v23 + 56));
          v22 = (v23 + (~(v24 >> 2) & 8));
        }

        else
        {
          v22 = &dword_8;
        }
      }

      v25 = v19 + 8;
      if (v19 + 8 <= a3)
      {
        *(a2 + v19) = *v22;
      }

      ++v20;
      v19 += 8;
    }

    while (a1[1] > v20);
  }

  else
  {
    v25 = v17 + 8;
  }

  v26 = a1[7];
  v27 = v25 + 8;
  if (v25 + 8 <= a3)
  {
    *(a2 + v25) = v26;
    v26 = a1[7];
  }

  if (v26)
  {
    v28 = 0;
    do
    {
      v52 = *(a1[6] + 8 * v28);
      v29 = find_entry(a4, &v52, 8uLL, 0);
      v30 = &dword_8;
      if (*v29)
      {
        v31 = *(*v29 + 32);
        if (v31)
        {
          v32 = atomic_load((v31 + 56));
          v30 = (v31 + (~(v32 >> 2) & 8));
        }

        else
        {
          v30 = &dword_8;
        }
      }

      v33 = v27 + 8;
      if (v27 + 8 <= a3)
      {
        *(a2 + v27) = *v30;
      }

      ++v28;
      v27 += 8;
    }

    while (a1[7] > v28);
  }

  else
  {
    v33 = v25 + 8;
  }

  v34 = a1[3];
  v35 = v33 + 8;
  if (v33 + 8 <= a3)
  {
    *(a2 + v33) = v34;
    v34 = a1[3];
  }

  if (v34)
  {
    v36 = 0;
    do
    {
      v51 = *(a1[2] + 8 * v36);
      v37 = find_entry(a4, &v51, 8uLL, 0);
      v38 = &dword_8;
      if (*v37)
      {
        v39 = *(*v37 + 32);
        if (v39)
        {
          v40 = atomic_load((v39 + 56));
          v38 = (v39 + (~(v40 >> 2) & 8));
        }

        else
        {
          v38 = &dword_8;
        }
      }

      v41 = v35 + 8;
      if (v35 + 8 <= a3)
      {
        *(a2 + v35) = *v38;
      }

      ++v36;
      v35 += 8;
    }

    while (a1[3] > v36);
  }

  else
  {
    v41 = v33 + 8;
  }

  v42 = a1[5];
  v43 = v41 + 8;
  if (v41 + 8 <= a3)
  {
    *(a2 + v41) = v42;
    v42 = a1[5];
  }

  if (!v42)
  {
    return v41 + 8;
  }

  v44 = 0;
  do
  {
    v50 = *(a1[4] + 8 * v44);
    v45 = find_entry(a4, &v50, 8uLL, 0);
    v46 = &dword_8;
    if (*v45)
    {
      v47 = *(*v45 + 32);
      if (v47)
      {
        v48 = atomic_load((v47 + 56));
        v46 = (v47 + (~(v48 >> 2) & 8));
      }

      else
      {
        v46 = &dword_8;
      }
    }

    result = v43 + 8;
    if (v43 + 8 <= a3)
    {
      *(a2 + v43) = *v46;
    }

    ++v44;
    v43 += 8;
  }

  while (a1[5] > v44);
  return result;
}

void *DecodeDYMTLAccelerationStructureAllocationDescriptor(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 104);
  *(a3 + 104) = v4 + 16;
  if (a4)
  {
    *(v4 + 9) = result[1];
    *(v4 + 8) = result[2];
    *v4 = result[3];
  }

  return result;
}

uint64_t EncodeDYMTLAccelerationStructureAllocationDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 9);
      if (a3 >= 0x18)
      {
        a2[2] = *(a1 + 8);
        if (a3 >= 0x20)
        {
          a2[3] = *a1;
        }
      }
    }
  }

  return 32;
}

size_t DecodeDYMTLResidencySetDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 24);
  result = a1 + 24;
  v7 = v8;
  v9 = *(result - 16);
  v10 = *(result - 8);
  if (v8)
  {
    v11 = result;
  }

  else
  {
    v11 = 0;
  }

  if (v7)
  {
    result = strlen(v11);
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
    v14 = result + 1;
    if (result != -1)
    {
      v15 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = (a3 + 592);
    v13 = *(a3 + 592);
  }

  v14 = 0;
  v15 = 0;
LABEL_9:
  *v12 = v13 + v14;
  if (a4)
  {
    result = memcpy(v15, v11, v14);
    v16 = *(a3 + 112);
    *(a3 + 112) = v16 + 24;
    *v16 = v10;
    *(v16 + 8) = v15;
    *(v16 + 16) = v9;
    *(v16 + 17) = 0;
    *(v16 + 20) = 0;
  }

  else
  {
    *(a3 + 112) += 24;
  }

  return result;
}

uint64_t EncodeDYMTLResidencySetDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 16);
      if (a3 >= 0x18)
      {
        a2[2] = *a1;
      }
    }
  }

  v5 = 24;
  WriteDynamicBufferString(&v4, *(a1 + 8));
  return v5;
}

size_t DecodeDYMTL4ArgumentTableDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 16);
  v9 = *(a1 + 8);
  result = strlen((a1 + 16));
  v11 = result & 0xFFFFFFFFFFFFFFF8;
  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = strlen(v13);
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
    v16 = result + 1;
    if (result != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  v18 = &v8[v11];
  *v14 = v15 + v16;
  if (a4)
  {
    result = memcpy(v17, v13, v16);
  }

  if (v7 < 0x69)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[32];
  }

  v20 = *(v18 + 8);
  v21 = *(v18 + 3);
  v22 = *(a3 + 120);
  *(a3 + 120) = v22 + 40;
  if (a4)
  {
    *v22 = v17;
    *(v22 + 8) = v20;
    *(v22 + 24) = v21;
    *(v22 + 32) = v9;
    *(v22 + 33) = v19;
    *(v22 + 34) = 0;
    *(v22 + 38) = 0;
  }

  return result;
}

uint64_t EncodeDYMTL4ArgumentTableDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v10 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 32);
    }
  }

  v9 = 16;
  WriteDynamicBufferString(&v8, *a1);
  v4 = v9;
  v5 = v10;
  v6 = v9 + 8;
  if (v9 + 8 <= v10)
  {
    v8[v9 / 8] = *(a1 + 8);
  }

  if (v4 + 16 <= v5)
  {
    *(v8 + v6) = *(a1 + 16);
  }

  if (v4 + 24 <= v5)
  {
    *(v8 + v4 + 16) = *(a1 + 24);
  }

  result = v4 + 32;
  if (v4 + 32 <= v5)
  {
    *(v8 + v4 + 24) = *(a1 + 33);
  }

  return result;
}

size_t DecodeDYMTL4LibraryDescriptor(const char *a1, size_t *a2, void *a3, int a4, uint64_t a5)
{
  v25[1] = a2;
  v9 = *a1;
  v10 = a1 + 8;
  result = strlen(a1 + 8);
  v25[0] = &v10[(result & 0xFFFFFFFFFFFFFFF8) + 8];
  if (a1[8])
  {
    result = strlen(v10);
    v14 = a3 + 74;
    v15 = a3[74];
    v12 = result + 1;
    if (result != -1)
    {
      v13 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    v14 = a3 + 74;
    v15 = a3[74];
  }

  v12 = 0;
  v13 = 0;
LABEL_6:
  *v14 = v15 + v12;
  if (a4)
  {
    result = memcpy(v13, v10, v12);
  }

  v16 = v25[0] + 1;
  if (*v25[0]++)
  {
    if (a4)
    {
      v18 = a3[57];
    }

    else
    {
      v18 = 0;
    }

    a3[57] += 64;
    result = MakeDYMTLCompileOptions(v25, v18, a3, v9, a4, a5);
    v16 = v25[0];
  }

  else
  {
    v18 = 0;
  }

  if (*v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if (*v16)
  {
    result = strlen(v19);
    v20 = a3 + 74;
    v21 = a3[74];
    v22 = result + 1;
    if (result != -1)
    {
      v23 = a3[74];
      goto LABEL_22;
    }
  }

  else
  {
    v20 = a3 + 74;
    v21 = a3[74];
  }

  v22 = 0;
  v23 = 0;
LABEL_22:
  *v20 = v21 + v22;
  if (a4)
  {
    result = memcpy(v23, v19, v22);
    v24 = a3[16];
    a3[16] = v24 + 4;
    *v24 = v13;
    v24[1] = v18;
    v24[2] = 0;
    v24[3] = v23;
  }

  else
  {
    a3[16] += 32;
  }

  return result;
}

uint64_t EncodeDYMTL4LibraryDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v10 = 8;
  WriteDynamicBufferString(&v9, *a1);
  v6 = *(a1 + 8);
  v7 = v10 + 8;
  if (v6)
  {
    if (v10 + 8 <= v11)
    {
      *(v9 + v10) = 1;
      v6 = *(a1 + 8);
    }

    v10 = v7;
    SaveDYMTLCompileOptions(&v9, v6, a4);
  }

  else
  {
    if (v10 + 8 <= v11)
    {
      *(v9 + v10) = 0;
    }

    v10 = v7;
  }

  WriteDynamicBufferString(&v9, *(a1 + 24));
  return v10;
}

uint64_t DecodeDYMTL4PipelineDataSetSerializerDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 136);
  *(a3 + 136) = v4 + 1;
  if (a4)
  {
    *v4 = *(result + 8);
  }

  return result;
}

uint64_t EncodeDYMTL4PipelineDataSetSerializerDescriptor(unsigned __int8 *a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *a1;
    }
  }

  return 16;
}

size_t MakeDYMTL4LibraryFunctionDescriptor(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = *a1;
  v12 = **a1;
  v13 = (*a1 + 1);
  *a1 = v13;
  result = strlen(v13);
  *a1 = &v13[(result & 0xFFFFFFFFFFFFFFF8) + 8];
  if (*(v11 + 8))
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (*(v11 + 8))
  {
    result = strlen(v15);
    v16 = (a3 + 592);
    v17 = *(a3 + 592);
    v18 = result + 1;
    if (result != -1)
    {
      v19 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v16 = (a3 + 592);
    v17 = *(a3 + 592);
  }

  v18 = 0;
  v19 = 0;
LABEL_9:
  *v16 = v17 + v18;
  if (a5)
  {
    result = memcpy(v19, v15, v18);
    if (a6)
    {
      result = GetStream_19685(a6, v12);
      if (result)
      {
        v12 = *result;
      }

      else
      {
        v12 = 0;
      }
    }

    *a2 = v12;
    a2[1] = v19;
  }

  return result;
}

void SaveDYMTL4LibraryFunctionDescriptor(void *a1, uint64_t *a2, uint64_t a3)
{
  v11 = *a2;
  v5 = &dword_8;
  entry = find_entry(a3, &v11, 8uLL, 0);
  if (*entry)
  {
    v7 = *(*entry + 32);
    if (v7)
    {
      v8 = atomic_load((v7 + 56));
      v5 = (v7 + (~(v8 >> 2) & 8));
    }

    else
    {
      v5 = &dword_8;
    }
  }

  v9 = a1[1];
  v10 = v9 + 8;
  if ((v9 + 8) <= a1[2])
  {
    *(*a1 + v9) = *v5;
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  WriteDynamicBufferString(a1, a2[1]);
}

uint64_t *DecodeDYMTL4CompilerTaskOptions(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = result[1];
  if (v7)
  {
    v9 = result + 2;
    v10 = *(a3 + 576);
    v11 = result[1];
    v12 = v10;
    do
    {
      v14 = *v9++;
      v13 = v14;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v13);
          if (result)
          {
            v13 = *result;
          }

          else
          {
            v13 = 0;
          }
        }

        v12 = *(a3 + 576);
        *v12 = v13;
      }

      *(a3 + 576) = ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v15 = *(a3 + 144);
  *(a3 + 144) = v15 + 2;
  if (a4)
  {
    *v15 = v10;
    v15[1] = v7;
  }

  return result;
}

uint64_t EncodeDYMTL4CompilerTaskOptions(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 > 7)
  {
    *a2 = 115;
    v7 = a1 + 1;
    v8 = a1[1];
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v8;
  }

  else
  {
    v7 = a1 + 1;
  }

  v8 = *v7;
LABEL_6:
  if (!v8)
  {
    return 16;
  }

  v9 = 0;
  v10 = a2 + 2;
  v11 = 2;
  do
  {
    v18 = *(*a1 + v9);
    entry = find_entry(a4, &v18, 8uLL, 0);
    v13 = &dword_8;
    if (*entry)
    {
      v14 = *(*entry + 32);
      if (v14)
      {
        v15 = atomic_load((v14 + 56));
        v13 = (v14 + (~(v15 >> 2) & 8));
      }

      else
      {
        v13 = &dword_8;
      }
    }

    if (v9 + 24 <= a3)
    {
      v10[v9 / 8] = *v13;
    }

    v9 += 8;
    v16 = v11++ - 1;
  }

  while (*v7 > v16);
  return v9 + 16;
}

int8x8_t MakeDYMTL4PipelineOptions(__int16 **a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v9 = *a1;
  v10 = *a1 + 4;
  v11 = *a1 + 8;
  v12 = *a1 + 12;
  result.i16[0] = **a1;
  *a1 = v10;
  result.i16[1] = *v10;
  *a1 = v11;
  result.i16[2] = *v11;
  *a1 = v12;
  result.i16[3] = *v12;
  *a1 = v9 + 16;
  v14 = *(v9 + 32);
  *a1 = v9 + 20;
  v15 = *(v9 + 40);
  *a1 = v9 + 24;
  v16 = *(v9 + 6);
  *a1 = v9 + 28;
  v17 = *(v9 + 7);
  v18 = v9 + 32;
  *a1 = (v18 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  if (v17)
  {
    v19 = *(a3 + 592);
  }

  else
  {
    v19 = 0;
  }

  *(a3 + 592) += v17;
  if (a5)
  {
    if (v17)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v25 = result;
    memcpy(v19, v20, v17);
    result = v25;
  }

  v21 = *a1;
  v22 = **a1;
  *a1 += 4;
  v23 = *(v21 + 8);
  *a1 = v21 + 8;
  if (a4 < 0x69)
  {
    v24 = 0;
    if (!a5)
    {
      return result;
    }

    goto LABEL_13;
  }

  v24 = *(v21 + 2);
  *a1 = v21 + 12;
  if (a5)
  {
LABEL_13:
    *a2 = v19;
    *(a2 + 8) = v17;
    *(a2 + 16) = v16;
    *(a2 + 24) = v24;
    result = vuzp1_s8(result, result);
    *(a2 + 32) = result.i32[0];
    *(a2 + 36) = v14;
    *(a2 + 37) = v15;
    *(a2 + 38) = v22;
    *(a2 + 39) = v23;
  }

  return result;
}

void SaveDYMTL4PipelineOptions(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = v5 + 8;
  if (v5 + 8 <= v4)
  {
    *(*a1 + v5) = *(a2 + 32);
    v4 = a1[2];
    v6 = a1[1] + 8;
  }

  a1[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v4)
  {
    *(*a1 + v6) = *(a2 + 33);
    v4 = a1[2];
    v7 = a1[1] + 8;
  }

  a1[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v4)
  {
    *(*a1 + v7) = *(a2 + 34);
    v4 = a1[2];
    v8 = a1[1] + 8;
  }

  a1[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v4)
  {
    *(*a1 + v8) = *(a2 + 35);
    v4 = a1[2];
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v4)
  {
    *(*a1 + v9) = *(a2 + 36);
    v4 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v4)
  {
    *(*a1 + v10) = *(a2 + 37);
    v4 = a1[2];
    v11 = a1[1] + 8;
  }

  a1[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v4)
  {
    *(*a1 + v11) = *(a2 + 16);
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  WriteGTData(a1, *a2, *(a2 + 8));
  v14 = a1[1];
  v13 = a1[2];
  v15 = v14 + 8;
  if (v14 + 8 <= v13)
  {
    *(*a1 + v14) = *(a2 + 38);
    v13 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v13)
  {
    *(*a1 + v15) = *(a2 + 39);
    v13 = a1[2];
    v16 = a1[1] + 8;
  }

  a1[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v13)
  {
    *(*a1 + v16) = *(a2 + 24);
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
}

size_t DecodeDYMTL4CompilerDescriptor(size_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = a4;
  v8 = *(result + 8);
  v9 = *(result + 16);
  if (*result < 0x6Eu)
  {
    v17 = *(a3 + 152);
    *(a3 + 152) = v17 + 24;
    if (!a4)
    {
      return result;
    }

    v16 = 0;
    if (!a5)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v11 = *(result + 24);
  result += 24;
  v10 = v11;
  if (v11)
  {
    v12 = result;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_13;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_13:
  *v13 = v14 + v15;
  if ((v6 & 1) == 0)
  {
    *(a3 + 152) += 24;
    return result;
  }

  result = memcpy(v16, v12, v15);
  v17 = *(a3 + 152);
  *(a3 + 152) = v17 + 24;
  if (a5)
  {
LABEL_15:
    result = GetStream_19685(a5, v8);
    if (result)
    {
      v8 = *result;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_19:
  *v17 = v16;
  *(v17 + 8) = v8;
  *(v17 + 16) = v9;
  *(v17 + 17) = 0;
  *(v17 + 20) = 0;
  return result;
}

uint64_t EncodeDYMTL4CompilerDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  v15 = a2;
  v17 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v16 = 8;
  v14 = *(a1 + 8);
  entry = find_entry(a4, &v14, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
      v10 = v16;
      v4 = v17;
    }

    else
    {
      v10 = 8;
      v6 = &dword_8;
    }
  }

  else
  {
    v10 = 8;
  }

  v11 = v10 + 8;
  if (v10 + 8 <= v4)
  {
    *(v15 + v10) = *v6;
  }

  v12 = v10 + 16;
  if (v12 <= v4)
  {
    *(v15 + v11) = *(a1 + 16);
  }

  v16 = v12;
  WriteDynamicBufferString(&v15, *a1);
  return v16;
}

__n64 MakeDYMTL4RenderPipelineColorAttachmentDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  if (a5)
  {
    result.n64_u8[0] = v6;
    result.n64_u8[1] = v7;
    result.n64_u8[2] = v8;
    result.n64_u8[3] = v9;
    result.n64_u8[4] = v11;
    result.n64_u8[5] = v12;
    result.n64_u8[6] = v13;
    result.n64_u8[7] = v14;
    *a2 = v10;
    *(a2 + 2) = result;
    *(a2 + 10) = 0;
    *(a2 + 14) = 0;
  }

  return result;
}

void *SaveDYMTL4RenderPipelineColorAttachmentDescriptor(void *result, unsigned __int8 *a2)
{
  v3 = result[1];
  v2 = result[2];
  v4 = v3 + 8;
  if (v3 + 8 <= v2)
  {
    *(*result + v3) = a2[2];
    v2 = result[2];
    v4 = result[1] + 8;
  }

  result[1] = v4;
  v5 = v4 + 8;
  if (v4 + 8 <= v2)
  {
    *(*result + v4) = a2[3];
    v2 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v2)
  {
    *(*result + v5) = a2[4];
    v2 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v2)
  {
    *(*result + v6) = a2[5];
    v2 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v2)
  {
    *(*result + v7) = *a2;
    v2 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v2)
  {
    *(*result + v8) = a2[6];
    v2 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v2)
  {
    *(*result + v9) = a2[7];
    v2 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v2)
  {
    *(*result + v10) = a2[8];
    v2 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v2)
  {
    *(*result + v11) = a2[9];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  return result;
}

double DecodeDYMTLTensorDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 160);
  *(a3 + 160) = v4 + 288;
  if (a4)
  {
    v5 = *a1;
    *(v4 + 283) = *(a1 + 8);
    memset(&v27[8], 0, 128);
    v6 = *(a1 + 16);
    v7 = (a1 + 24);
    *v27 = v6;
    if (v6)
    {
      v8 = &v27[8];
      v9 = v6 - 1;
      if (v9 >= 0xF)
      {
        v9 = 15;
      }

      v10 = v9 + 1;
      do
      {
        v11 = *v7++;
        *v8++ = v11;
        --v10;
      }

      while (v10);
    }

    v12 = *&v27[112];
    *(v4 + 96) = *&v27[96];
    *(v4 + 112) = v12;
    *(v4 + 128) = *&v27[128];
    v13 = *&v27[48];
    *(v4 + 32) = *&v27[32];
    *(v4 + 48) = v13;
    v14 = *&v27[80];
    *(v4 + 64) = *&v27[64];
    *(v4 + 80) = v14;
    v15 = *&v27[16];
    *v4 = *v27;
    *(v4 + 16) = v15;
    *(v4 + 287) = *v7;
    if (v5 >= 0x68)
    {
      *(v4 + 284) = v7[1];
      *(v4 + 272) = v7[2];
      if (v5 != 104)
      {
        *(v4 + 282) = v7[3];
        *(v4 + 285) = v7[4];
        *(v4 + 280) = v7[5];
        *(v4 + 286) = v7[6];
        memset(&v27[8], 0, 128);
        v16 = v7[7];
        *v27 = v16;
        if (v16)
        {
          v17 = &v27[8];
          v18 = v7 + 8;
          v19 = v16 - 1;
          if (v19 >= 0xF)
          {
            v19 = 15;
          }

          v20 = v19 + 1;
          do
          {
            v21 = *v18++;
            *v17++ = v21;
            --v20;
          }

          while (v20);
        }

        v22 = *&v27[64];
        *(v4 + 216) = *&v27[80];
        v23 = *&v27[112];
        *(v4 + 232) = *&v27[96];
        *(v4 + 248) = v23;
        v24 = *v27;
        *(v4 + 152) = *&v27[16];
        *&v15 = *&v27[32];
        v25 = *&v27[48];
        *(v4 + 168) = *&v27[32];
        *(v4 + 184) = v25;
        *(v4 + 200) = v22;
        *(v4 + 264) = *&v27[128];
        *(v4 + 136) = v24;
      }
    }
  }

  return *&v15;
}

uint64_t EncodeDYMTLTensorDescriptor(__int128 *a1, void *a2, unint64_t a3)
{
  v27 = a2;
  v29 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 283);
    }
  }

  v28 = 16;
  v4 = a1[7];
  v24 = a1[6];
  v25 = v4;
  v26 = *(a1 + 16);
  v5 = a1[3];
  v20 = a1[2];
  v21 = v5;
  v6 = a1[5];
  v22 = a1[4];
  v23 = v6;
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  SaveGTMTLTensorExtents(&v27, &v18);
  v8 = v28;
  v9 = v29;
  v10 = v28 + 8;
  if (v28 + 8 <= v29)
  {
    *(v27 + v28) = *(a1 + 287);
  }

  v28 = v10;
  if (v8 + 16 <= v9)
  {
    *(v27 + v10) = *(a1 + 284);
  }

  if (v8 + 24 <= v9)
  {
    *(v27 + v8 + 16) = *(a1 + 34);
  }

  if (v8 + 32 <= v9)
  {
    *(v27 + v8 + 24) = *(a1 + 282);
  }

  if (v8 + 40 <= v9)
  {
    *(v27 + v8 + 32) = *(a1 + 285);
  }

  v11 = v8 + 48;
  if (v8 + 48 <= v9)
  {
    *(v27 + v8 + 40) = *(a1 + 140);
  }

  v12 = v8 + 56;
  if (v12 <= v9)
  {
    *(v27 + v11) = *(a1 + 286);
  }

  v28 = v12;
  v13 = *(a1 + 216);
  v14 = *(a1 + 248);
  v24 = *(a1 + 232);
  v25 = v14;
  v26 = *(a1 + 33);
  v15 = *(a1 + 152);
  v16 = *(a1 + 184);
  v20 = *(a1 + 168);
  v21 = v16;
  v22 = *(a1 + 200);
  v23 = v13;
  v18 = *(a1 + 136);
  v19 = v15;
  SaveGTMTLTensorExtents(&v27, &v18);
  return v28;
}

void *SaveGTMTLTensorExtents(void *result, unint64_t *a2)
{
  v2 = *a2;
  v3 = result[1];
  v4 = v3 + 8;
  if ((v3 + 8) <= result[2])
  {
    *(*result + v3) = v2;
    v4 = result[1] + 8;
    v2 = *a2;
  }

  v5 = 0;
  result[1] = v4;
  do
  {
    if (v2 <= v5)
    {
      break;
    }

    v6 = v4 + 8;
    if ((v4 + 8) <= result[2])
    {
      *(*result + v4) = a2[v5 + 1];
      v6 = result[1] + 8;
      v2 = *a2;
    }

    result[1] = v6;
    ++v5;
    v4 = v6;
  }

  while (v5 != 16);
  return result;
}

size_t DecodeDYMTLResourceViewPoolDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result & 0xFFFFFFFFFFFFFFF8;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  v17 = &v8[v10];
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x6A)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 2);
    v19 = v17[24];
  }

  v20 = *(v17 + 1);
  v21 = *(a3 + 168);
  *(a3 + 168) = v21 + 32;
  if (a4)
  {
    *v21 = v18;
    *(v21 + 8) = v16;
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    *(v21 + 25) = 0;
    *(v21 + 28) = 0;
  }

  return result;
}

uint64_t EncodeDYMTLResourceViewPoolDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v8 = a2;
  v10 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v9 = 8;
  WriteDynamicBufferString(&v8, *(a1 + 8));
  v4 = v9;
  v5 = v10;
  v6 = v9 + 8;
  if (v9 + 8 <= v10)
  {
    v8[v9 / 8] = *(a1 + 16);
  }

  if (v4 + 16 <= v5)
  {
    *(v8 + v6) = *a1;
  }

  result = v4 + 24;
  if (v4 + 24 <= v5)
  {
    *(v8 + v4 + 16) = *(a1 + 24);
  }

  return result;
}

__n128 DecodeDYMTLTextureViewDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 176);
  *(a3 + 176) = v4 + 40;
  if (a4)
  {
    *v4 = *(a1 + 8);
    *(v4 + 36) = *(a1 + 24);
    result = *(a1 + 32);
    *(v4 + 16) = result;
    *(v4 + 38) = *(a1 + 48);
    *(v4 + 32) = *(a1 + 56);
  }

  return result;
}

uint64_t EncodeDYMTLTextureViewDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      v3 = *(a1 + 8);
      a2[1] = *a1;
      if (a3 >= 0x18)
      {
        a2[2] = v3;
        if (a3 >= 0x20)
        {
          a2[3] = *(a1 + 36);
          if (a3 >= 0x28)
          {
            v4 = *(a1 + 24);
            a2[4] = *(a1 + 16);
            if (a3 >= 0x30)
            {
              a2[5] = v4;
              if (a3 >= 0x38)
              {
                a2[6] = *(a1 + 38);
                if (a3 >= 0x40)
                {
                  a2[7] = *(a1 + 32);
                }
              }
            }
          }
        }
      }
    }
  }

  return 64;
}

size_t DecodeDYMTL4CommandQueueDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v10 = result;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
    v15 = result + 1;
    if (result != -1)
    {
      v16 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = (a3 + 592);
    v14 = *(a3 + 592);
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  if (v7 < 0x72)
  {
    v17 = 0;
  }

  else
  {
    v17 = v8[(v10 & 0xFFFFFFFFFFFFFFF8) + 8];
  }

  v18 = *(a3 + 184);
  *(a3 + 184) = v18 + 16;
  if (a4)
  {
    *v18 = v16;
    *(v18 + 8) = v17;
    *(v18 + 9) = 0;
    *(v18 + 12) = 0;
  }

  return result;
}

uint64_t EncodeDYMTL4CommandQueueDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v7 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = 8;
  WriteDynamicBufferString(&v5, *a1);
  result = v6 + 8;
  if (v6 + 8 <= v7)
  {
    v5[v6 / 8] = *(a1 + 8);
  }

  return result;
}

__n128 MakeDYMTL4IndirectInstanceAccelerationStructureDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a1 + 16;
  v7 = *a1 + 24;
  v8 = **a1;
  *a1 += 8;
  v9 = v5[1];
  *a1 = v6;
  v10 = v5[2];
  *a1 = v7;
  v11 = v5[3];
  *a1 = (v5 + 4);
  v12 = v5[4];
  *a1 = (v5 + 5);
  v13 = v5[5];
  *a1 = (v5 + 6);
  v14 = v5[6];
  *a1 = (v5 + 7);
  v15 = v5[7];
  *a1 = (v5 + 8);
  v16 = v5[8];
  *a1 = (v5 + 9);
  v17 = v5[9];
  *a1 = (v5 + 10);
  v18 = v5[10];
  *a1 = (v5 + 11);
  v19 = v5[11];
  *a1 = (v5 + 12);
  v20 = v5[12];
  *a1 = (v5 + 13);
  v21 = v5[13];
  *a1 = (v5 + 14);
  v22 = v5[14];
  *a1 = (v5 + 15);
  if (a5)
  {
    *&v23 = v8;
    *(&v23 + 1) = v9;
    *&v24 = v10;
    *(&v24 + 1) = v11;
    *a2 = v23;
    *(a2 + 16) = v24;
    result.n128_u64[0] = v17;
    result.n128_u64[1] = v18;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    *(a2 + 32) = result;
    *(a2 + 48) = v24;
    *(a2 + 64) = v21;
    *(a2 + 72) = v12;
    *(a2 + 76) = v15;
    *(a2 + 80) = v16;
    *(a2 + 84) = v13;
    *(a2 + 85) = v14;
    *(a2 + 86) = v22;
    *(a2 + 87) = 0;
  }

  return result;
}

void *SaveDYMTL4IndirectInstanceAccelerationStructureDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = *(a2 + 24);
  v8 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = *(a2 + 16);
    v3 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v3)
  {
    *(*result + v8) = v7;
    v3 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v3)
  {
    *(*result + v9) = *(a2 + 72);
    v3 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v3)
  {
    *(*result + v10) = *(a2 + 84);
    v3 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v3)
  {
    *(*result + v11) = *(a2 + 85);
    v3 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v3)
  {
    *(*result + v12) = *(a2 + 76);
    v3 = result[2];
    v13 = result[1] + 8;
  }

  result[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v3)
  {
    *(*result + v13) = *(a2 + 80);
    v3 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = *(a2 + 40);
  v16 = v14 + 8;
  if (v14 + 8 <= v3)
  {
    *(*result + v14) = *(a2 + 32);
    v3 = result[2];
    v16 = result[1] + 8;
  }

  result[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v3)
  {
    *(*result + v16) = v15;
    v3 = result[2];
    v17 = result[1] + 8;
  }

  result[1] = v17;
  v18 = *(a2 + 56);
  v19 = v17 + 8;
  if (v17 + 8 <= v3)
  {
    *(*result + v17) = *(a2 + 48);
    v3 = result[2];
    v19 = result[1] + 8;
  }

  result[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v3)
  {
    *(*result + v19) = v18;
    v3 = result[2];
    v20 = result[1] + 8;
  }

  result[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v3)
  {
    *(*result + v20) = *(a2 + 64);
    v3 = result[2];
    v21 = result[1] + 8;
  }

  result[1] = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v3)
  {
    *(*result + v21) = *(a2 + 86);
    v22 = result[1] + 8;
  }

  result[1] = v22;
  return result;
}

__n128 MakeDYMTL4InstanceAccelerationStructureDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  v15 = v5[9];
  *a1 = v5 + 10;
  v16 = v5[10];
  *a1 = v5 + 11;
  if (a5)
  {
    result.n128_u64[0] = v7;
    result.n128_u64[1] = v8;
    *&v18 = v12;
    *(&v18 + 1) = v13;
    *a2 = result;
    *(a2 + 16) = v18;
    *(a2 + 32) = v6;
    *(a2 + 40) = v9;
    *(a2 + 48) = v14;
    *(a2 + 56) = v15;
    *(a2 + 64) = v10;
    *(a2 + 65) = v11;
    *(a2 + 66) = v16;
    *(a2 + 67) = 0;
    *(a2 + 71) = 0;
  }

  return result;
}

void *SaveDYMTL4InstanceAccelerationStructureDescriptor(void *result, uint64_t a2)
{
  v3 = result[1];
  v2 = result[2];
  v4 = v3 + 8;
  if (v3 + 8 <= v2)
  {
    *(*result + v3) = *(a2 + 32);
    v2 = result[2];
    v4 = result[1] + 8;
  }

  result[1] = v4;
  v5 = *(a2 + 8);
  v6 = v4 + 8;
  if (v4 + 8 <= v2)
  {
    *(*result + v4) = *a2;
    v2 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v2)
  {
    *(*result + v6) = v5;
    v2 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v2)
  {
    *(*result + v7) = *(a2 + 40);
    v2 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v2)
  {
    *(*result + v8) = *(a2 + 64);
    v2 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v2)
  {
    *(*result + v9) = *(a2 + 65);
    v2 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = *(a2 + 24);
  v12 = v10 + 8;
  if (v10 + 8 <= v2)
  {
    *(*result + v10) = *(a2 + 16);
    v2 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v2)
  {
    *(*result + v12) = v11;
    v2 = result[2];
    v13 = result[1] + 8;
  }

  result[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v2)
  {
    *(*result + v13) = *(a2 + 48);
    v2 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v2)
  {
    *(*result + v14) = *(a2 + 56);
    v2 = result[2];
    v15 = result[1] + 8;
  }

  result[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v2)
  {
    *(*result + v15) = *(a2 + 66);
    v16 = result[1] + 8;
  }

  result[1] = v16;
  return result;
}

uint64_t **MakeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t **result, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = result;
  v11 = *result + 1;
  v12 = **result;
  *result = v11;
  if (v12)
  {
    v13 = *(a3 + 576);
    v14 = v12;
    do
    {
      v15 = *(*v10)++;
      if (a5)
      {
        if (a6)
        {
          result = GetStream_19685(a6, v15);
          if (result)
          {
            v15 = *result;
          }

          else
          {
            v15 = 0;
          }
        }

        v16 = *(a3 + 576);
        *v16 = v15;
      }

      else
      {
        v16 = *(a3 + 576);
      }

      *(a3 + 576) = v16 + 1;
      --v14;
    }

    while (v14);
    v11 = *v10;
  }

  else
  {
    v13 = 0;
  }

  v17 = *v11;
  *v10 = v11 + 1;
  v18 = v11[1];
  *v10 = v11 + 2;
  if (!v18)
  {
    v20 = 0;
    if ((a5 & 1) == 0)
    {
      return result;
    }

    goto LABEL_24;
  }

  v24 = v17;
  v19 = v13;
  v20 = *(a3 + 576);
  v21 = v18;
  do
  {
    v22 = *(*v10)++;
    if (a5)
    {
      if (a6)
      {
        result = GetStream_19685(a6, v22);
        if (result)
        {
          v22 = *result;
        }

        else
        {
          v22 = 0;
        }
      }

      v23 = *(a3 + 576);
      *v23 = v22;
    }

    else
    {
      v23 = *(a3 + 576);
    }

    *(a3 + 576) = v23 + 1;
    --v21;
  }

  while (v21);
  v13 = v19;
  v17 = v24;
  if (a5)
  {
LABEL_24:
    *a2 = v13;
    a2[1] = v12;
    a2[2] = v17;
    a2[3] = v20;
    a2[4] = v18;
  }

  return result;
}

void *SaveDYMTL4PipelineStageDynamicLinkingDescriptor(void *result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = a2[1];
  v7 = result[1];
  v8 = v7 + 8;
  if ((v7 + 8) <= result[2])
  {
    *(*result + v7) = v6;
    v8 = result[1] + 8;
    v6 = a2[1];
  }

  result[1] = v8;
  if (v6)
  {
    v9 = 0;
    do
    {
      v25 = *(*a2 + 8 * v9);
      result = find_entry(a3, &v25, 8uLL, 0);
      v10 = &dword_8;
      if (*result)
      {
        v11 = *(*result + 32);
        if (v11)
        {
          v12 = atomic_load((v11 + 56));
          v10 = (v11 + (~(v12 >> 2) & 8));
        }

        else
        {
          v10 = &dword_8;
        }
      }

      v13 = v5[1];
      v8 = v13 + 8;
      if ((v13 + 8) <= v5[2])
      {
        *(*v5 + v13) = *v10;
        v8 = v5[1] + 8;
      }

      v5[1] = v8;
      ++v9;
    }

    while (a2[1] > v9);
  }

  v14 = v8 + 8;
  v15 = v5[2];
  if (v8 + 8 <= v15)
  {
    *(*v5 + v8) = a2[2];
    v15 = v5[2];
    v14 = v5[1] + 8;
  }

  v5[1] = v14;
  v16 = a2[4];
  v17 = v14 + 8;
  if (v14 + 8 <= v15)
  {
    *(*v5 + v14) = v16;
    v17 = v5[1] + 8;
    v16 = a2[4];
  }

  v5[1] = v17;
  if (v16)
  {
    v18 = 0;
    do
    {
      v24 = *(a2[3] + 8 * v18);
      result = find_entry(a3, &v24, 8uLL, 0);
      v19 = &dword_8;
      if (*result)
      {
        v20 = *(*result + 32);
        if (v20)
        {
          v21 = atomic_load((v20 + 56));
          v19 = (v20 + (~(v21 >> 2) & 8));
        }

        else
        {
          v19 = &dword_8;
        }
      }

      v22 = v5[1];
      v23 = v22 + 8;
      if ((v22 + 8) <= v5[2])
      {
        *(*v5 + v22) = *v19;
        v23 = v5[1] + 8;
      }

      v5[1] = v23;
      ++v18;
    }

    while (a2[4] > v18);
  }

  return result;
}

uint64_t *DecodeDYMTL4PipelineStageDynamicLinkingDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result[1];
  v9 = result + 2;
  if (v8)
  {
    v10 = *(a3 + 576);
    v11 = result[1];
    v12 = v10;
    do
    {
      v14 = *v9++;
      v13 = v14;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v13);
          if (result)
          {
            v13 = *result;
          }

          else
          {
            v13 = 0;
          }
        }

        v12 = *(a3 + 576);
        *v12 = v13;
      }

      *(a3 + 576) = ++v12;
      --v11;
    }

    while (v11);
  }

  else
  {
    v10 = 0;
  }

  v16 = *v9;
  v15 = v9[1];
  if (v15)
  {
    v17 = v9 + 2;
    v18 = *(a3 + 576);
    v19 = v15;
    v20 = v18;
    do
    {
      v22 = *v17++;
      v21 = v22;
      if (a4)
      {
        if (a5)
        {
          result = GetStream_19685(a5, v21);
          if (result)
          {
            v21 = *result;
          }

          else
          {
            v21 = 0;
          }
        }

        v20 = *(a3 + 576);
        *v20 = v21;
      }

      *(a3 + 576) = ++v20;
      --v19;
    }

    while (v19);
  }

  else
  {
    v18 = 0;
  }

  v23 = *(a3 + 192);
  *(a3 + 192) = v23 + 5;
  if (a4)
  {
    *v23 = v10;
    v23[1] = v8;
    v23[2] = v16;
    v23[3] = v18;
    v23[4] = v15;
  }

  return result;
}

uint64_t EncodeDYMTL4PipelineStageDynamicLinkingDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 > 7)
  {
    *a2 = 115;
    v8 = a1 + 1;
    v9 = a1[1];
    if (a3 < 0x10)
    {
      goto LABEL_6;
    }

    a2[1] = v9;
  }

  else
  {
    v8 = a1 + 1;
  }

  v9 = *v8;
LABEL_6:
  if (v9)
  {
    v10 = 0;
    v11 = 2;
    do
    {
      v27 = *(*a1 + v10);
      entry = find_entry(a4, &v27, 8uLL, 0);
      v13 = &dword_8;
      if (*entry)
      {
        v14 = *(*entry + 32);
        if (v14)
        {
          v15 = atomic_load((v14 + 56));
          v13 = (v14 + (~(v15 >> 2) & 8));
        }

        else
        {
          v13 = &dword_8;
        }
      }

      if (v10 + 24 <= a3)
      {
        a2[v10 / 8 + 2] = *v13;
      }

      v10 += 8;
      v16 = v11++ - 1;
    }

    while (*v8 > v16);
    v17 = v10 + 16;
  }

  else
  {
    v17 = 16;
  }

  if (v17 + 8 <= a3)
  {
    *(a2 + v17) = a1[2];
  }

  v18 = a1[4];
  v19 = v17 + 16;
  if (v17 + 16 <= a3)
  {
    *(a2 + v17 + 8) = v18;
    v18 = a1[4];
  }

  if (!v18)
  {
    return v17 + 16;
  }

  v20 = 0;
  do
  {
    v26 = *(a1[3] + 8 * v20);
    v21 = find_entry(a4, &v26, 8uLL, 0);
    v22 = &dword_8;
    if (*v21)
    {
      v23 = *(*v21 + 32);
      if (v23)
      {
        v24 = atomic_load((v23 + 56));
        v22 = (v23 + (~(v24 >> 2) & 8));
      }

      else
      {
        v22 = &dword_8;
      }
    }

    result = v19 + 8;
    if (v19 + 8 <= a3)
    {
      *(a2 + v19) = *v22;
    }

    ++v20;
    v19 += 8;
  }

  while (a1[4] > v20);
  return result;
}

size_t MakeDYMTL4SpecializedFunctionDescriptor(const char **a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v15 = *v12;
  v13 = (v12 + 8);
  v14 = v15;
  *a1 = (v13 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  if (v15)
  {
    v16 = a3[59];
    DecodeDYMTLFunctionConstantValues(v13, v14, a3, a5);
  }

  else
  {
    v16 = 0;
  }

  v17 = a3[58];
  a3[58] = v17 + 32;
  MakeDYMTL4FunctionDescriptor(a1, v17, a3, a4, a5, a6);
  v18 = *a1;
  result = strlen(*a1);
  *a1 += (result & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (*v18)
  {
    result = strlen(v20);
    v21 = a3 + 74;
    v22 = a3[74];
    v23 = result + 1;
    if (result != -1)
    {
      v24 = a3[74];
      goto LABEL_12;
    }
  }

  else
  {
    v21 = a3 + 74;
    v22 = a3[74];
  }

  v23 = 0;
  v24 = 0;
LABEL_12:
  *v21 = v22 + v23;
  if (a5)
  {
    result = memcpy(v24, v20, v23);
    *a2 = v16;
    a2[1] = v17;
    a2[2] = v24;
  }

  return result;
}

const char **MakeDYMTL4FunctionDescriptor(const char **result, _OWORD *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v10 = 0u;
  v11 = 0u;
  v8 = **result;
  *result += 8;
  BYTE8(v11) = v8;
  if (v8 == 1)
  {
    result = MakeDYMTL4SpecializedFunctionDescriptor(result, &v10, a3, a4, a5, a6);
    if (!v6)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v8 == 2)
  {
    result = MakeDYMTL4LibraryFunctionDescriptor(result, &v10, a3, a4, a5, a6);
  }

  if (v6)
  {
LABEL_5:
    v9 = v11;
    *a2 = v10;
    a2[1] = v9;
  }

  return result;
}

void SaveDYMTL4SpecializedFunctionDescriptor(void *a1, void **a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = EncodeDYMTLFunctionConstantValues(*a2, 0, 0);
    v7 = v6;
    v8 = a1[1];
    v9 = v8 + 8;
    if ((v8 + 8) <= a1[2])
    {
      *(*a1 + v8) = v6;
      v9 = a1[1] + 8;
    }

    a1[1] = v9;
    if (v6)
    {
      v10 = a1[2];
      if (v9 + v6 <= v10)
      {
        EncodeDYMTLFunctionConstantValues(*a2, (*a1 + v9), v10 - v9);
        v9 = a1[1];
      }
    }
  }

  else
  {
    v11 = a1[1];
    v9 = v11 + 8;
    v7 = 0;
    if ((v11 + 8) <= a1[2])
    {
      *(*a1 + v11) = 0;
      v9 = a1[1] + 8;
    }
  }

  a1[1] = v9 + v7;
  SaveDYMTL4FunctionDescriptor(a1, a2[1], a3);
  v12 = a2[2];

  WriteDynamicBufferString(a1, v12);
}

void SaveDYMTL4FunctionDescriptor(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = a1[1];
  v5 = v4 + 8;
  if ((v4 + 8) <= a1[2])
  {
    *(*a1 + v4) = v3;
    v5 = a1[1] + 8;
    LODWORD(v3) = *(a2 + 24);
  }

  a1[1] = v5;
  if (v3 == 1)
  {
    SaveDYMTL4SpecializedFunctionDescriptor(a1, a2, a3);
  }

  else if (v3 == 2)
  {
    SaveDYMTL4LibraryFunctionDescriptor(a1, a2, a3);
  }
}

size_t DecodeDYMTL4CommandAllocatorDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 8);
  result = a1 + 8;
  v7 = v8;
  if (v8)
  {
    v9 = result;
  }

  else
  {
    v9 = 0;
  }

  if (v7)
  {
    result = strlen(v9);
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
    v12 = result + 1;
    if (result != -1)
    {
      v13 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v10 = (a3 + 592);
    v11 = *(a3 + 592);
  }

  v12 = 0;
  v13 = 0;
LABEL_9:
  *v10 = v11 + v12;
  if (a4)
  {
    result = memcpy(v13, v9, v12);
    v14 = *(a3 + 200);
    *(a3 + 200) = v14 + 1;
    *v14 = v13;
  }

  else
  {
    *(a3 + 200) += 8;
  }

  return result;
}

uint64_t EncodeDYMTL4CommandAllocatorDescriptor(const char **a1, void *a2, unint64_t a3)
{
  v4 = a2;
  v6 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v5 = 8;
  WriteDynamicBufferString(&v4, *a1);
  return v5;
}

__n128 MakeDYMTL4AccelerationStructureBoundingBoxGeometryDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a1 + 16;
  v7 = *a1 + 24;
  v8 = **a1;
  *a1 += 8;
  v9 = v5[1];
  *a1 = v6;
  v10 = v5[2];
  *a1 = v7;
  v11 = v5[3];
  *a1 = (v5 + 4);
  if (a5)
  {
    result.n128_u64[0] = v8;
    result.n128_u64[1] = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    *a2 = result;
    *(a2 + 16) = v13;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureBoundingBoxGeometryDescriptor(void *result, void *a2)
{
  v2 = a2[1];
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = a2[2];
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = a2[3];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  return result;
}

__n128 MakeDYMTL4AccelerationStructureCurveGeometryDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  v15 = v5[9];
  *a1 = v5 + 10;
  v16 = v5[10];
  *a1 = v5 + 11;
  v17 = v5[11];
  *a1 = v5 + 12;
  v18 = v5[12];
  *a1 = v5 + 13;
  v19 = v5[13];
  *a1 = v5 + 14;
  v20 = v5[14];
  *a1 = v5 + 15;
  v21 = v5[15];
  *a1 = v5 + 16;
  v22 = v5[16];
  *a1 = v5 + 17;
  if (a5)
  {
    result.n128_u64[0] = v6;
    result.n128_u64[1] = v7;
    *&v24 = v14;
    *(&v24 + 1) = v15;
    *a2 = result;
    *(a2 + 16) = v24;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 48) = v8;
    *(a2 + 56) = v10;
    *(a2 + 64) = v20;
    *(a2 + 72) = v21;
    *(a2 + 80) = v22;
    *(a2 + 88) = v9;
    *(a2 + 89) = v11;
    *(a2 + 90) = v12;
    *(a2 + 91) = v13;
    *(a2 + 92) = v16;
    *(a2 + 93) = v19;
    *(a2 + 94) = 0;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureCurveGeometryDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = *(a2 + 48);
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = *(a2 + 88);
    v3 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v3)
  {
    *(*result + v8) = *(a2 + 56);
    v3 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v3)
  {
    *(*result + v9) = *(a2 + 89);
    v3 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v3)
  {
    *(*result + v10) = *(a2 + 90);
    v3 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v3)
  {
    *(*result + v11) = *(a2 + 91);
    v3 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = *(a2 + 24);
  v14 = v12 + 8;
  if (v12 + 8 <= v3)
  {
    *(*result + v12) = *(a2 + 16);
    v3 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v3)
  {
    *(*result + v14) = v13;
    v3 = result[2];
    v15 = result[1] + 8;
  }

  result[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v3)
  {
    *(*result + v15) = *(a2 + 92);
    v3 = result[2];
    v16 = result[1] + 8;
  }

  result[1] = v16;
  v17 = *(a2 + 40);
  v18 = v16 + 8;
  if (v16 + 8 <= v3)
  {
    *(*result + v16) = *(a2 + 32);
    v3 = result[2];
    v18 = result[1] + 8;
  }

  result[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v3)
  {
    *(*result + v18) = v17;
    v3 = result[2];
    v19 = result[1] + 8;
  }

  result[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v3)
  {
    *(*result + v19) = *(a2 + 93);
    v3 = result[2];
    v20 = result[1] + 8;
  }

  result[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v3)
  {
    *(*result + v20) = *(a2 + 64);
    v3 = result[2];
    v21 = result[1] + 8;
  }

  result[1] = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v3)
  {
    *(*result + v21) = *(a2 + 72);
    v3 = result[2];
    v22 = result[1] + 8;
  }

  result[1] = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v3)
  {
    *(*result + v22) = *(a2 + 80);
    v23 = result[1] + 8;
  }

  result[1] = v23;
  return result;
}

__n128 MakeDYMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *a1 + 16;
  v7 = *a1 + 24;
  v8 = **a1;
  *a1 += 8;
  v9 = v5[1];
  *a1 = v6;
  v10 = v5[2];
  *a1 = v7;
  v11 = v5[3];
  *a1 = (v5 + 4);
  if (a5)
  {
    result.n128_u64[0] = v8;
    result.n128_u64[1] = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    *a2 = result;
    *(a2 + 16) = v13;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(void *result, void *a2)
{
  v2 = a2[1];
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = a2[2];
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = a2[3];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  return result;
}

__n128 MakeDYMTL4AccelerationStructureMotionCurveGeometryDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  v15 = v5[9];
  *a1 = v5 + 10;
  v16 = v5[10];
  *a1 = v5 + 11;
  v17 = v5[11];
  *a1 = v5 + 12;
  v18 = v5[12];
  *a1 = v5 + 13;
  v19 = v5[13];
  *a1 = v5 + 14;
  v20 = v5[14];
  *a1 = v5 + 15;
  v21 = v5[15];
  *a1 = v5 + 16;
  v22 = v5[16];
  *a1 = v5 + 17;
  if (a5)
  {
    result.n128_u64[0] = v6;
    result.n128_u64[1] = v7;
    *&v24 = v14;
    *(&v24 + 1) = v15;
    *a2 = result;
    *(a2 + 16) = v24;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
    *(a2 + 48) = v8;
    *(a2 + 56) = v10;
    *(a2 + 64) = v20;
    *(a2 + 72) = v21;
    *(a2 + 80) = v22;
    *(a2 + 88) = v9;
    *(a2 + 89) = v11;
    *(a2 + 90) = v12;
    *(a2 + 91) = v13;
    *(a2 + 92) = v16;
    *(a2 + 93) = v19;
    *(a2 + 94) = 0;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureMotionCurveGeometryDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = *(a2 + 48);
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = *(a2 + 88);
    v3 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v3)
  {
    *(*result + v8) = *(a2 + 56);
    v3 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v3)
  {
    *(*result + v9) = *(a2 + 89);
    v3 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v3)
  {
    *(*result + v10) = *(a2 + 90);
    v3 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v3)
  {
    *(*result + v11) = *(a2 + 91);
    v3 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = *(a2 + 24);
  v14 = v12 + 8;
  if (v12 + 8 <= v3)
  {
    *(*result + v12) = *(a2 + 16);
    v3 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v3)
  {
    *(*result + v14) = v13;
    v3 = result[2];
    v15 = result[1] + 8;
  }

  result[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v3)
  {
    *(*result + v15) = *(a2 + 92);
    v3 = result[2];
    v16 = result[1] + 8;
  }

  result[1] = v16;
  v17 = *(a2 + 40);
  v18 = v16 + 8;
  if (v16 + 8 <= v3)
  {
    *(*result + v16) = *(a2 + 32);
    v3 = result[2];
    v18 = result[1] + 8;
  }

  result[1] = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v3)
  {
    *(*result + v18) = v17;
    v3 = result[2];
    v19 = result[1] + 8;
  }

  result[1] = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v3)
  {
    *(*result + v19) = *(a2 + 93);
    v3 = result[2];
    v20 = result[1] + 8;
  }

  result[1] = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v3)
  {
    *(*result + v20) = *(a2 + 64);
    v3 = result[2];
    v21 = result[1] + 8;
  }

  result[1] = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v3)
  {
    *(*result + v21) = *(a2 + 72);
    v3 = result[2];
    v22 = result[1] + 8;
  }

  result[1] = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v3)
  {
    *(*result + v22) = *(a2 + 80);
    v23 = result[1] + 8;
  }

  result[1] = v23;
  return result;
}

__n128 MakeDYMTL4AccelerationStructureMotionTriangleGeometryDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  v15 = v5[9];
  *a1 = v5 + 10;
  v16 = v5[10];
  *a1 = v5 + 11;
  if (a5)
  {
    result.n128_u64[0] = v6;
    result.n128_u64[1] = v7;
    *&v18 = v9;
    *(&v18 + 1) = v10;
    *a2 = result;
    *(a2 + 16) = v18;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v12;
    *(a2 + 56) = v16;
    *(a2 + 64) = v8;
    *(a2 + 65) = v11;
    *(a2 + 66) = v15;
    *(a2 + 67) = 0;
    *(a2 + 71) = 0;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureMotionTriangleGeometryDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = *(a2 + 64);
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = *(a2 + 24);
  v9 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = *(a2 + 16);
    v3 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v3)
  {
    *(*result + v9) = v8;
    v3 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v3)
  {
    *(*result + v10) = *(a2 + 65);
    v3 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v3)
  {
    *(*result + v11) = *(a2 + 48);
    v3 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = *(a2 + 40);
  v14 = v12 + 8;
  if (v12 + 8 <= v3)
  {
    *(*result + v12) = *(a2 + 32);
    v3 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v3)
  {
    *(*result + v14) = v13;
    v3 = result[2];
    v15 = result[1] + 8;
  }

  result[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v3)
  {
    *(*result + v15) = *(a2 + 66);
    v3 = result[2];
    v16 = result[1] + 8;
  }

  result[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v3)
  {
    *(*result + v16) = *(a2 + 56);
    v17 = result[1] + 8;
  }

  result[1] = v17;
  return result;
}

__n128 MakeDYMTL4AccelerationStructureTriangleGeometryDescriptor(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *a1;
  v6 = *(*a1)++;
  v7 = v5[1];
  *a1 = v5 + 2;
  v8 = v5[2];
  *a1 = v5 + 3;
  v9 = v5[3];
  *a1 = v5 + 4;
  v10 = v5[4];
  *a1 = v5 + 5;
  v11 = v5[5];
  *a1 = v5 + 6;
  v12 = v5[6];
  *a1 = v5 + 7;
  v13 = v5[7];
  *a1 = v5 + 8;
  v14 = v5[8];
  *a1 = v5 + 9;
  v15 = v5[9];
  *a1 = v5 + 10;
  v16 = v5[10];
  *a1 = v5 + 11;
  if (a5)
  {
    result.n128_u64[0] = v6;
    result.n128_u64[1] = v7;
    *&v18 = v9;
    *(&v18 + 1) = v10;
    *a2 = result;
    *(a2 + 16) = v18;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
    *(a2 + 48) = v12;
    *(a2 + 56) = v16;
    *(a2 + 64) = v8;
    *(a2 + 65) = v11;
    *(a2 + 66) = v15;
    *(a2 + 67) = 0;
    *(a2 + 71) = 0;
  }

  return result;
}

void *SaveDYMTL4AccelerationStructureTriangleGeometryDescriptor(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v4 = result[1];
  v3 = result[2];
  v5 = v4 + 8;
  if (v4 + 8 <= v3)
  {
    *(*result + v4) = *a2;
    v3 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v3)
  {
    *(*result + v5) = v2;
    v3 = result[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v3)
  {
    *(*result + v6) = *(a2 + 64);
    v3 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = *(a2 + 24);
  v9 = v7 + 8;
  if (v7 + 8 <= v3)
  {
    *(*result + v7) = *(a2 + 16);
    v3 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v3)
  {
    *(*result + v9) = v8;
    v3 = result[2];
    v10 = result[1] + 8;
  }

  result[1] = v10;
  v11 = v10 + 8;
  if (v10 + 8 <= v3)
  {
    *(*result + v10) = *(a2 + 65);
    v3 = result[2];
    v11 = result[1] + 8;
  }

  result[1] = v11;
  v12 = v11 + 8;
  if (v11 + 8 <= v3)
  {
    *(*result + v11) = *(a2 + 48);
    v3 = result[2];
    v12 = result[1] + 8;
  }

  result[1] = v12;
  v13 = *(a2 + 40);
  v14 = v12 + 8;
  if (v12 + 8 <= v3)
  {
    *(*result + v12) = *(a2 + 32);
    v3 = result[2];
    v14 = result[1] + 8;
  }

  result[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v3)
  {
    *(*result + v14) = v13;
    v3 = result[2];
    v15 = result[1] + 8;
  }

  result[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v3)
  {
    *(*result + v15) = *(a2 + 66);
    v3 = result[2];
    v16 = result[1] + 8;
  }

  result[1] = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v3)
  {
    *(*result + v16) = *(a2 + 56);
    v17 = result[1] + 8;
  }

  result[1] = v17;
  return result;
}

uint64_t *DecodeDYMTL4CommandBufferOptions(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a3 + 208);
  *(a3 + 208) = v5 + 1;
  if (a4)
  {
    v6 = result[1];
    *v5 = v6;
    if (a5)
    {
      result = GetStream_19685(a5, v6);
      if (result)
      {
        v6 = *result;
      }

      else
      {
        v6 = 0;
      }
    }

    *v5 = v6;
  }

  return result;
}

uint64_t EncodeDYMTL4CommandBufferOptions(uint64_t *a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v11 = *a1;
  v6 = &dword_8;
  entry = find_entry(a4, &v11, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  if (a3 >= 0x10)
  {
    a2[1] = *v6;
  }

  return 16;
}

uint64_t **MakeDYMTLRenderPassColorAttachmentDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v8 = *result;
  v9 = *(*result)++;
  v10 = *(v8 + 8);
  *result = v8 + 2;
  v11 = *(v8 + 16);
  *result = v8 + 3;
  v12 = *(v8 + 24);
  *result = v8 + 4;
  v13 = v8[4];
  *result = v8 + 5;
  v14 = *(v8 + 40);
  *result = v8 + 6;
  v15 = *(v8 + 48);
  *result = v8 + 7;
  v16 = *(v8 + 28);
  *result = v8 + 8;
  v17 = *(v8 + 64);
  *result = v8 + 9;
  v18 = *(v8 + 72);
  *result = v8 + 10;
  v19 = v8 + 11;
  if (a4 <= 0x12)
  {
    v20 = 0;
    v23 = 0;
    *&v21 = v8[10];
    *result = v19;
    *(&v21 + 1) = *v19;
    *result = v8 + 12;
    *&v22 = v8[12];
    *result = v8 + 13;
    *(&v22 + 1) = v8[13];
    *result = v8 + 14;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    v20 = *(v8 + 80);
    *result = v19;
    *&v21 = v8[11];
    *result = v8 + 12;
    *(&v21 + 1) = v8[12];
    *result = v8 + 13;
    *&v22 = v8[13];
    *result = v8 + 14;
    *(&v22 + 1) = v8[14];
    *result = v8 + 15;
    if (a4 < 0x27)
    {
      v23 = 0;
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v23 = *(v8 + 120);
      *result = v8 + 16;
      if (!a5)
      {
        return result;
      }
    }
  }

  if (a6)
  {
    v25 = v22;
    v26 = v21;
    v27 = v20;
    v28 = v18;
    v29 = v16;
    v30 = v17;
    Stream_19685 = GetStream_19685(a6, v9);
    if (Stream_19685)
    {
      v9 = *Stream_19685;
    }

    else
    {
      v9 = 0;
    }

    result = GetStream_19685(a6, v13);
    if (result)
    {
      v13 = *result;
    }

    else
    {
      v13 = 0;
    }

    v16 = v29;
    v17 = v30;
    v20 = v27;
    v18 = v28;
    v22 = v25;
    v21 = v26;
  }

  *a2 = v13;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 18) = v16;
  *(a2 + 20) = v15;
  *(a2 + 22) = v11;
  *(a2 + 24) = v10;
  *(a2 + 25) = v17;
  *(a2 + 26) = v14;
  *(a2 + 27) = v18;
  *(a2 + 28) = v20;
  *(a2 + 29) = v23;
  *(a2 + 30) = 0;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  return result;
}

void *SaveDYMTLRenderPassColorAttachmentDescriptor(void *a1, double *a2, uint64_t a3)
{
  v33 = *(a2 + 1);
  v6 = &dword_8;
  entry = find_entry(a3, &v33, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = v11 + 8;
  if (v11 + 8 <= v10)
  {
    *(*a1 + v11) = *v6;
    v10 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v10)
  {
    *(*a1 + v12) = *(a2 + 24);
    v10 = a1[2];
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v10)
  {
    *(*a1 + v13) = *(a2 + 11);
    v10 = a1[2];
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v10)
  {
    *(*a1 + v14) = *(a2 + 8);
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v32 = *a2;
  v16 = &dword_8;
  v17 = find_entry(a3, &v32, 8uLL, 0);
  if (*v17)
  {
    v18 = *(*v17 + 32);
    if (v18)
    {
      v19 = atomic_load((v18 + 56));
      v16 = (v18 + (~(v19 >> 2) & 8));
    }

    else
    {
      v16 = &dword_8;
    }
  }

  v21 = a1[1];
  v20 = a1[2];
  v22 = v21 + 8;
  if (v21 + 8 <= v20)
  {
    *(*a1 + v21) = *v16;
    v20 = a1[2];
    v22 = a1[1] + 8;
  }

  a1[1] = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v20)
  {
    *(*a1 + v22) = *(a2 + 26);
    v20 = a1[2];
    v23 = a1[1] + 8;
  }

  a1[1] = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v20)
  {
    *(*a1 + v23) = *(a2 + 10);
    v20 = a1[2];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v20)
  {
    *(*a1 + v24) = *(a2 + 9);
    v20 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v20)
  {
    *(*a1 + v25) = *(a2 + 25);
    v20 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v20)
  {
    *(*a1 + v26) = *(a2 + 27);
    v20 = a1[2];
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v20)
  {
    *(*a1 + v27) = *(a2 + 28);
    v28 = a1[1] + 8;
  }

  a1[1] = v28;
  result = SaveGTMTLClearColor(a1, a2[4], a2[5], a2[6], a2[7]);
  v30 = a1[1];
  v31 = v30 + 8;
  if ((v30 + 8) <= a1[2])
  {
    *(*a1 + v30) = *(a2 + 29);
    v31 = a1[1] + 8;
  }

  a1[1] = v31;
  return result;
}

void *SaveGTMTLClearColor(void *result, double a2, double a3, double a4, double a5)
{
  v6 = result[1];
  v5 = result[2];
  v7 = v6 + 8;
  if (v6 + 8 <= v5)
  {
    *(*result + v6) = a2;
    v5 = result[2];
    v7 = result[1] + 8;
  }

  result[1] = v7;
  v8 = v7 + 8;
  if (v7 + 8 <= v5)
  {
    *(*result + v7) = a3;
    v5 = result[2];
    v8 = result[1] + 8;
  }

  result[1] = v8;
  v9 = v8 + 8;
  if (v8 + 8 <= v5)
  {
    *(*result + v8) = a4;
    v5 = result[2];
    v9 = result[1] + 8;
  }

  result[1] = v9;
  v10 = v9 + 8;
  if (v9 + 8 <= v5)
  {
    *(*result + v9) = a5;
    v10 = result[1] + 8;
  }

  result[1] = v10;
  return result;
}

uint64_t **MakeDYMTLRenderPassDepthAttachmentDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v8 = *result;
  v9 = *(*result)++;
  v10 = *(v8 + 8);
  *result = v8 + 2;
  v11 = *(v8 + 16);
  *result = v8 + 3;
  v12 = *(v8 + 24);
  *result = v8 + 4;
  v13 = v8[4];
  *result = v8 + 5;
  v14 = *(v8 + 40);
  *result = v8 + 6;
  v15 = *(v8 + 24);
  *result = v8 + 7;
  v16 = *(v8 + 28);
  *result = v8 + 8;
  v17 = *(v8 + 64);
  *result = v8 + 9;
  v18 = *(v8 + 72);
  *result = v8 + 10;
  if (a4 >= 0x13)
  {
    v19 = *(v8 + 80);
    *result = v8 + 11;
    v20 = v8[11];
    v21 = v8 + 15;
    *result = v8 + 15;
    if (a4 < 0x27)
    {
      v22 = 0;
    }

    else
    {
      v21 = v8 + 16;
      v22 = *(v8 + 120);
      *result = v8 + 16;
    }

    goto LABEL_8;
  }

  v22 = 0;
  v19 = 0;
  v23 = 0;
  v20 = v8[10];
  v21 = v8 + 14;
  *result = v8 + 14;
  if (a4 >= 5)
  {
LABEL_8:
    v24 = *v21;
    *result = v21 + 1;
    v25 = v24;
    if (v24 == 255)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25;
    }

    if (!a5)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!a5)
  {
    return result;
  }

LABEL_12:
  if (a6)
  {
    v27 = v19;
    v28 = v18;
    v29 = v16;
    v30 = v17;
    v31 = v14;
    Stream_19685 = GetStream_19685(a6, v9);
    if (Stream_19685)
    {
      v9 = *Stream_19685;
    }

    else
    {
      v9 = 0;
    }

    result = GetStream_19685(a6, v13);
    if (result)
    {
      v13 = *result;
    }

    else
    {
      v13 = 0;
    }

    v17 = v30;
    v14 = v31;
    v18 = v28;
    v16 = v29;
    v19 = v27;
  }

  *a2 = v13;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 18) = v16;
  *(a2 + 20) = v15;
  *(a2 + 22) = v11;
  *(a2 + 24) = v10;
  *(a2 + 25) = v17;
  *(a2 + 26) = v14;
  *(a2 + 27) = v18;
  *(a2 + 28) = v19;
  *(a2 + 29) = v22;
  *(a2 + 30) = 0;
  *(a2 + 32) = v20;
  *(a2 + 40) = v23;
  *(a2 + 41) = 0;
  *(a2 + 44) = 0;
  return result;
}

void *SaveDYMTLRenderPassDepthAttachmentDescriptor(void *a1, double *a2, uint64_t a3)
{
  v35 = *(a2 + 1);
  v6 = &dword_8;
  entry = find_entry(a3, &v35, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = v11 + 8;
  if (v11 + 8 <= v10)
  {
    *(*a1 + v11) = *v6;
    v10 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v10)
  {
    *(*a1 + v12) = *(a2 + 24);
    v10 = a1[2];
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v10)
  {
    *(*a1 + v13) = *(a2 + 11);
    v10 = a1[2];
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v10)
  {
    *(*a1 + v14) = *(a2 + 8);
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v34 = *a2;
  v16 = &dword_8;
  v17 = find_entry(a3, &v34, 8uLL, 0);
  if (*v17)
  {
    v18 = *(*v17 + 32);
    if (v18)
    {
      v19 = atomic_load((v18 + 56));
      v16 = (v18 + (~(v19 >> 2) & 8));
    }

    else
    {
      v16 = &dword_8;
    }
  }

  v21 = a1[1];
  v20 = a1[2];
  v22 = v21 + 8;
  if (v21 + 8 <= v20)
  {
    *(*a1 + v21) = *v16;
    v20 = a1[2];
    v22 = a1[1] + 8;
  }

  a1[1] = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v20)
  {
    *(*a1 + v22) = *(a2 + 26);
    v20 = a1[2];
    v23 = a1[1] + 8;
  }

  a1[1] = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v20)
  {
    *(*a1 + v23) = *(a2 + 10);
    v20 = a1[2];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v20)
  {
    *(*a1 + v24) = *(a2 + 9);
    v20 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v20)
  {
    *(*a1 + v25) = *(a2 + 25);
    v20 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v20)
  {
    *(*a1 + v26) = *(a2 + 27);
    v20 = a1[2];
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v20)
  {
    *(*a1 + v27) = *(a2 + 28);
    v28 = a1[1] + 8;
  }

  a1[1] = v28;
  result = SaveGTMTLClearColor(a1, a2[4], 0.0, 0.0, 0.0);
  v31 = a1[1];
  v30 = a1[2];
  v32 = v31 + 8;
  if (v31 + 8 <= v30)
  {
    *(*a1 + v31) = *(a2 + 29);
    v30 = a1[2];
    v32 = a1[1] + 8;
  }

  a1[1] = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v30)
  {
    *(*a1 + v32) = *(a2 + 40);
    v33 = a1[1] + 8;
  }

  a1[1] = v33;
  return result;
}

uint64_t **MakeDYMTLRenderPassStencilAttachmentDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6)
{
  v8 = *result;
  v9 = *(*result)++;
  v10 = *(v8 + 8);
  *result = v8 + 2;
  v11 = *(v8 + 16);
  *result = v8 + 3;
  v12 = *(v8 + 24);
  *result = v8 + 4;
  v13 = v8[4];
  *result = v8 + 5;
  v14 = *(v8 + 40);
  *result = v8 + 6;
  v15 = *(v8 + 48);
  *result = v8 + 7;
  v16 = *(v8 + 56);
  *result = v8 + 8;
  v17 = *(v8 + 64);
  *result = v8 + 9;
  v18 = *(v8 + 72);
  *result = v8 + 10;
  if (a4 <= 0x12)
  {
    v19 = 0;
    v21 = 0;
    v20 = *(v8 + 10);
    *result = v8 + 14;
    if (!a5)
    {
      return result;
    }
  }

  else
  {
    v19 = *(v8 + 80);
    *result = v8 + 11;
    v20 = *(v8 + 11);
    *result = v8 + 15;
    if (a4 < 0x27)
    {
      v21 = 0;
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v21 = *(v8 + 120);
      *result = v8 + 16;
      if (!a5)
      {
        return result;
      }
    }
  }

  v22 = v20;
  if (a6)
  {
    v24 = v15;
    v25 = v14;
    v26 = v12;
    v27 = v11;
    v28 = v10;
    Stream_19685 = GetStream_19685(a6, v9);
    if (Stream_19685)
    {
      v9 = *Stream_19685;
    }

    else
    {
      v9 = 0;
    }

    result = GetStream_19685(a6, v13);
    if (result)
    {
      v13 = *result;
    }

    else
    {
      v13 = 0;
    }

    v11 = v27;
    v10 = v28;
    v14 = v25;
    v12 = v26;
    v15 = v24;
  }

  *a2 = v13;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 18) = v16;
  *(a2 + 20) = v15;
  *(a2 + 22) = v11;
  *(a2 + 24) = v10;
  *(a2 + 25) = v17;
  *(a2 + 26) = v14;
  *(a2 + 27) = v18;
  *(a2 + 28) = v19;
  *(a2 + 29) = v21;
  *(a2 + 30) = 0;
  *(a2 + 32) = v22;
  *(a2 + 36) = 0;
  return result;
}

void *SaveDYMTLRenderPassStencilAttachmentDescriptor(void *a1, uint64_t *a2, uint64_t a3)
{
  v34 = a2[1];
  v6 = &dword_8;
  entry = find_entry(a3, &v34, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v11 = a1[1];
  v10 = a1[2];
  v12 = v11 + 8;
  if (v11 + 8 <= v10)
  {
    *(*a1 + v11) = *v6;
    v10 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v10)
  {
    *(*a1 + v12) = *(a2 + 24);
    v10 = a1[2];
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v10)
  {
    *(*a1 + v13) = *(a2 + 11);
    v10 = a1[2];
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v10)
  {
    *(*a1 + v14) = *(a2 + 8);
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v33 = *a2;
  v16 = &dword_8;
  v17 = find_entry(a3, &v33, 8uLL, 0);
  if (*v17)
  {
    v19 = *(*v17 + 32);
    if (v19)
    {
      v20 = atomic_load((v19 + 56));
      v16 = (v19 + (~(v20 >> 2) & 8));
    }

    else
    {
      v16 = &dword_8;
    }
  }

  v22 = a1[1];
  v21 = a1[2];
  v23 = v22 + 8;
  if (v22 + 8 <= v21)
  {
    *(*a1 + v22) = *v16;
    v21 = a1[2];
    v23 = a1[1] + 8;
  }

  a1[1] = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v21)
  {
    *(*a1 + v23) = *(a2 + 26);
    v21 = a1[2];
    v24 = a1[1] + 8;
  }

  a1[1] = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v21)
  {
    *(*a1 + v24) = *(a2 + 10);
    v21 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v21)
  {
    *(*a1 + v25) = *(a2 + 9);
    v21 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v21)
  {
    *(*a1 + v26) = *(a2 + 25);
    v21 = a1[2];
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v21)
  {
    *(*a1 + v27) = *(a2 + 27);
    v21 = a1[2];
    v28 = a1[1] + 8;
  }

  a1[1] = v28;
  v29 = v28 + 8;
  if (v28 + 8 <= v21)
  {
    *(*a1 + v28) = *(a2 + 28);
    v29 = a1[1] + 8;
  }

  a1[1] = v29;
  LODWORD(v18) = *(a2 + 8);
  result = SaveGTMTLClearColor(a1, v18, 0.0, 0.0, 0.0);
  v31 = a1[1];
  v32 = v31 + 8;
  if ((v31 + 8) <= a1[2])
  {
    *(*a1 + v31) = *(a2 + 29);
    v32 = a1[1] + 8;
  }

  a1[1] = v32;
  return result;
}

void MakeDYMTLVertexDescriptor(uint64_t **a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  bzero(__src, 0x2E8uLL);
  v9 = *a1;
  if (a4 < 0x1A)
  {
    v10 = 31;
  }

  else
  {
    v11 = *v9++;
    LODWORD(v10) = v11;
    *a1 = v9;
    if (v11 < 1)
    {
      goto LABEL_12;
    }

    v10 = v10;
  }

  v12 = &__src[11];
  do
  {
    v13 = *v9;
    *a1 = v9 + 1;
    v14 = v9[1];
    *a1 = v9 + 2;
    v15 = v9[2];
    v9 += 3;
    *a1 = v9;
    if (a5)
    {
      if (v13 == 0xFFFFFFFFLL)
      {
        v13 = -1;
      }

      *(v12 - 11) = v13;
      *(v12 - 3) = v14;
      *(v12 - 1) = v15;
      *v12 = 0;
      v12[4] = 0;
    }

    v12 += 16;
    --v10;
  }

  while (v10);
  if (a4 <= 0x19)
  {
    v16 = 31;
    goto LABEL_15;
  }

LABEL_12:
  v17 = *v9++;
  LODWORD(v16) = v17;
  *a1 = v9;
  if (v17 < 1)
  {
    goto LABEL_19;
  }

  v16 = v16;
LABEL_15:
  v18 = &__src[502];
  do
  {
    v19 = *v9;
    *a1 = v9 + 1;
    v20 = v9[1];
    *a1 = v9 + 2;
    v21 = v9[2];
    v9 += 3;
    *a1 = v9;
    if (a5)
    {
      *(v18 - 3) = v20;
      *(v18 - 2) = v21;
      *(v18 - 1) = v19;
      *v18 = 0;
    }

    v18 += 4;
    --v16;
  }

  while (v16);
LABEL_19:
  if (a5)
  {
    memcpy(a2, __src, 0x2E8uLL);
  }
}

void *SaveDYMTLVertexDescriptor(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = v4 + 8;
  if ((v4 + 8) <= a1[2])
  {
    *(*a1 + v4) = 31;
    v5 = a1[1] + 8;
  }

  a1[1] = v5;
  v6 = 31;
  v7 = a2;
  do
  {
    SaveDYMTLVertexBufferLayoutDescriptor(a1, v7);
    v7 += 16;
    --v6;
  }

  while (v6);
  v8 = a1[1];
  v9 = v8 + 8;
  if ((v8 + 8) <= a1[2])
  {
    *(*a1 + v8) = 31;
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = (a2 + 496);
  v11 = 31;
  do
  {
    result = SaveDYMTLVertexAttributeDescriptor(a1, v10);
    v10 += 2;
    --v11;
  }

  while (v11);
  return result;
}

size_t DecodeDYMTLMeshRenderPipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v50[1] = a2;
  memcpy(v49, &GTMTLMeshRenderPipelineDescriptorDefaults, sizeof(v49));
  v9 = *a1;
  result = strlen((a1 + 8));
  v50[0] = a1 + 8 + (result & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v12 = (a1 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    result = strlen(v12);
    v13 = a3 + 74;
    v14 = a3[74];
    v15 = result + 1;
    if (result != -1)
    {
      v16 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v15 = 0;
  v16 = 0;
LABEL_9:
  *v13 = v14 + v15;
  if (a4)
  {
    result = memcpy(v16, v12, v15);
  }

  *&v49[22] = v16;
  *(&v49[22] + 8) = vextq_s8(*v50[0], *v50[0], 8uLL);
  *(&v49[21] + 1) = *(v50[0] + 16);
  WORD3(v49[25]) = *(v50[0] + 24);
  WORD2(v49[25]) = *(v50[0] + 32);
  BYTE12(v49[31]) = *(v50[0] + 40);
  v17 = *(v50[0] + 48);
  v50[0] += 48;
  BYTE11(v49[31]) = v17;
  *(&v49[23] + 1) = *(v50[0] + 8);
  v18 = *(v50[0] + 32);
  v49[20] = *(v50[0] + 16);
  *&v49[21] = v18;
  v19 = *(v50[0] + 40);
  v20 = (v50[0] + 48);
  if (v19)
  {
    v21 = &v49[29] + 8;
    do
    {
      if (a4)
      {
        *v21 = *v20;
      }

      ++v20;
      ++v21;
      --v19;
    }

    while (v19);
  }

  v24 = *v20;
  v22 = v20 + 1;
  v23 = v24;
  v50[0] = v22;
  if (v24)
  {
    v25 = &v49[27] + 9;
    do
    {
      if (a4)
      {
        *v25 = *v22;
      }

      ++v22;
      ++v25;
      --v23;
    }

    while (v23);
  }

  v28 = *v22;
  v26 = v22 + 1;
  v27 = v28;
  v50[0] = v26;
  if (v28)
  {
    v29 = &v49[25] + 10;
    do
    {
      if (a4)
      {
        *v29 = *v26;
      }

      ++v26;
      ++v29;
      --v27;
    }

    while (v27);
  }

  BYTE13(v49[31]) = *v26;
  BYTE7(v49[31]) = v26[1];
  BYTE8(v49[31]) = v26[2];
  BYTE14(v49[31]) = v26[3];
  BYTE10(v49[31]) = v26[4];
  HIDWORD(v49[24]) = v26[5];
  v30 = v26[6];
  v31 = v26 + 7;
  v50[0] = v26 + 7;
  if (v30)
  {
    v32 = v49 + 5;
    v33 = v26 + 8;
    do
    {
      if (a4)
      {
        v34 = v33[6];
        v36 = v33[4];
        v35 = v33[5];
        v38 = v33[2];
        v37 = v33[3];
        result = *v33;
        v39 = v33[1];
        v40 = *(v33 - 1);
        *(v32 - 5) = v33[7];
        *(v32 - 3) = v35;
        *(v32 - 2) = v40;
        *(v32 - 1) = v36;
        *v32 = v39;
        v32[1] = v38;
        v32[2] = v37;
        v32[3] = result;
        v32[4] = v34;
        *(v32 + 5) = 0;
        *(v32 + 9) = 0;
      }

      v32 += 16;
      v33 += 9;
      --v30;
    }

    while (v30);
    v31 = v33 - 1;
  }

  LOWORD(v49[25]) = *v31;
  WORD4(v49[25]) = v31[1];
  HIBYTE(v49[31]) = v31[2];
  if (v9 > 0x43)
  {
    v41 = v31[3];
    v50[0] = v31 + 4;
    DWORD2(v49[24]) = v41;
    if (v9 >= 0x46)
    {
      MakeDYMTLLinkedFunctions(v50, &v49[16], a3, v9, a4, a5);
      MakeDYMTLLinkedFunctions(v50, &v49[12], a3, v9, a4, a5);
      result = MakeDYMTLLinkedFunctions(v50, &v49[8], a3, v9, a4, a5);
      if (v9 >= 0x4B)
      {
        WORD1(v49[25]) = *v50[0];
        *&v49[24] = *(v50[0] + 8);
        if (v9 >= 0x6F)
        {
          BYTE9(v49[31]) = *(v50[0] + 16);
        }
      }
    }
  }

  v42 = a3[27];
  a3[27] = v42 + 512;
  if (a4)
  {
    if (a5)
    {
      Stream_19685 = GetStream_19685(a5, *&v49[23]);
      if (Stream_19685)
      {
        v44 = *Stream_19685;
      }

      else
      {
        v44 = 0;
      }

      *&v49[23] = v44;
      v46 = GetStream_19685(a5, *(&v49[22] + 1));
      if (v46)
      {
        v47 = *v46;
      }

      else
      {
        v47 = 0;
      }

      *(&v49[22] + 1) = v47;
      v45 = GetStream_19685(a5, *(&v49[21] + 1));
      if (!v45)
      {
        v48 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v45 = &v49[21] + 1;
    }

    v48 = *v45;
LABEL_49:
    *(&v49[21] + 1) = v48;
    return memcpy(v42, v49, 0x200uLL);
  }

  return result;
}

uint64_t EncodeDYMTLMeshRenderPipelineDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v60 = a2;
  v62 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v61 = 8;
  WriteDynamicBufferString(&v60, *(a1 + 352));
  v59 = *(a1 + 368);
  entry = find_entry(a4, &v59, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v10 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = *v6;
    v10 = v61 + 8;
  }

  v61 = v10;
  v58 = *(a1 + 360);
  v11 = &dword_8;
  v12 = find_entry(a4, &v58, 8uLL, 0);
  if (*v12)
  {
    v13 = *(*v12 + 32);
    if (v13)
    {
      v14 = atomic_load((v13 + 56));
      v11 = (v13 + (~(v14 >> 2) & 8));
    }

    else
    {
      v11 = &dword_8;
    }
  }

  v15 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = *v11;
    v15 = v61 + 8;
  }

  v61 = v15;
  v57 = *(a1 + 344);
  v16 = &dword_8;
  v17 = find_entry(a4, &v57, 8uLL, 0);
  if (*v17)
  {
    v18 = *(*v17 + 32);
    if (v18)
    {
      v19 = atomic_load((v18 + 56));
      v16 = (v18 + (~(v19 >> 2) & 8));
    }

    else
    {
      v16 = &dword_8;
    }
  }

  v20 = v62;
  v21 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = *v16;
    v20 = v62;
    v21 = v61 + 8;
  }

  v61 = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v20)
  {
    *(v60 + v21) = *(a1 + 406);
    v20 = v62;
    v22 = v61 + 8;
  }

  v61 = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v20)
  {
    *(v60 + v22) = *(a1 + 404);
    v20 = v62;
    v23 = v61 + 8;
  }

  v61 = v23;
  v24 = v23 + 8;
  if (v23 + 8 <= v20)
  {
    *(v60 + v23) = *(a1 + 508);
    v20 = v62;
    v24 = v61 + 8;
  }

  v61 = v24;
  v25 = v24 + 8;
  if (v24 + 8 <= v20)
  {
    *(v60 + v24) = *(a1 + 507);
    v20 = v62;
    v25 = v61 + 8;
  }

  v61 = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v20)
  {
    *(v60 + v25) = *(a1 + 376);
    v26 = v61 + 8;
  }

  v61 = v26;
  v55 = *(a1 + 320);
  v56 = *(a1 + 336);
  SaveGTMTLSize(&v60, &v55);
  v27 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = 31;
    v27 = v61 + 8;
  }

  v28 = 0;
  v61 = v27;
  do
  {
    v29 = v27 + 8;
    if (v27 + 8 <= v62)
    {
      *(v60 + v27) = *(a1 + 472 + v28);
      v29 = v61 + 8;
    }

    v61 = v29;
    ++v28;
    v27 = v29;
  }

  while (v28 != 31);
  v30 = v29 + 8;
  if (v29 + 8 <= v62)
  {
    *(v60 + v29) = 31;
    v30 = v61 + 8;
  }

  v31 = 0;
  v61 = v30;
  do
  {
    v32 = v30 + 8;
    if (v30 + 8 <= v62)
    {
      *(v60 + v30) = *(a1 + 441 + v31);
      v32 = v61 + 8;
    }

    v61 = v32;
    ++v31;
    v30 = v32;
  }

  while (v31 != 31);
  v33 = v32 + 8;
  if (v32 + 8 <= v62)
  {
    *(v60 + v32) = 31;
    v33 = v61 + 8;
  }

  v34 = 0;
  v61 = v33;
  do
  {
    v35 = v33 + 8;
    if (v33 + 8 <= v62)
    {
      *(v60 + v33) = *(a1 + 410 + v34);
      v35 = v61 + 8;
    }

    v61 = v35;
    ++v34;
    v33 = v35;
  }

  while (v34 != 31);
  v36 = v35 + 8;
  v37 = v62;
  if (v35 + 8 <= v62)
  {
    *(v60 + v35) = *(a1 + 509);
    v37 = v62;
    v36 = v61 + 8;
  }

  v61 = v36;
  v38 = v36 + 8;
  if (v36 + 8 <= v37)
  {
    *(v60 + v36) = *(a1 + 503);
    v37 = v62;
    v38 = v61 + 8;
  }

  v61 = v38;
  v39 = v38 + 8;
  if (v38 + 8 <= v37)
  {
    *(v60 + v38) = *(a1 + 504);
    v37 = v62;
    v39 = v61 + 8;
  }

  v61 = v39;
  v40 = v39 + 8;
  if (v39 + 8 <= v37)
  {
    *(v60 + v39) = *(a1 + 510);
    v37 = v62;
    v40 = v61 + 8;
  }

  v61 = v40;
  v41 = v40 + 8;
  if (v40 + 8 <= v37)
  {
    *(v60 + v40) = *(a1 + 506);
    v37 = v62;
    v41 = v61 + 8;
  }

  v61 = v41;
  v42 = v41 + 8;
  if (v41 + 8 <= v37)
  {
    *(v60 + v41) = *(a1 + 396);
    v37 = v62;
    v42 = v61 + 8;
  }

  v61 = v42;
  v43 = v42 + 8;
  if (v42 + 8 <= v37)
  {
    *(v60 + v42) = 8;
    v43 = v61 + 8;
  }

  v61 = v43;
  v44 = 8;
  v45 = a1;
  do
  {
    SaveDYMTLRenderPipelineColorAttachmentDescriptor(&v60, v45);
    v45 += 16;
    --v44;
  }

  while (v44);
  v46 = v62;
  v47 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = *(a1 + 400);
    v46 = v62;
    v47 = v61 + 8;
  }

  v61 = v47;
  v48 = v47 + 8;
  if (v47 + 8 <= v46)
  {
    *(v60 + v47) = *(a1 + 408);
    v46 = v62;
    v48 = v61 + 8;
  }

  v61 = v48;
  v49 = v48 + 8;
  if (v48 + 8 <= v46)
  {
    *(v60 + v48) = *(a1 + 511);
    v46 = v62;
    v49 = v61 + 8;
  }

  v61 = v49;
  v50 = v49 + 8;
  if (v49 + 8 <= v46)
  {
    *(v60 + v49) = *(a1 + 392);
    v50 = v61 + 8;
  }

  v61 = v50;
  SaveDYMTLLinkedFunctions(&v60, a1 + 256, a4);
  SaveDYMTLLinkedFunctions(&v60, a1 + 192, a4);
  SaveDYMTLLinkedFunctions(&v60, a1 + 128, a4);
  v51 = v62;
  v52 = v61 + 8;
  if (v61 + 8 <= v62)
  {
    *(v60 + v61) = *(a1 + 402);
    v51 = v62;
    v52 = v61 + 8;
  }

  v61 = v52;
  v53 = v52 + 8;
  if (v52 + 8 <= v51)
  {
    *(v60 + v52) = *(a1 + 384);
    v51 = v62;
    v53 = v61 + 8;
  }

  v61 = v53;
  result = v53 + 8;
  if (v53 + 8 <= v51)
  {
    *(v60 + v53) = *(a1 + 505);
    return v61 + 8;
  }

  return result;
}

void *SaveGTMTLSize(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  v4 = v3 + 8;
  if (v3 + 8 <= v2)
  {
    *(*result + v3) = *a2;
    v2 = result[2];
    v4 = result[1] + 8;
  }

  result[1] = v4;
  v5 = v4 + 8;
  if (v4 + 8 <= v2)
  {
    *(*result + v4) = a2[1];
    v2 = result[2];
    v5 = result[1] + 8;
  }

  result[1] = v5;
  v6 = v5 + 8;
  if (v5 + 8 <= v2)
  {
    *(*result + v5) = a2[2];
    v6 = result[1] + 8;
  }

  result[1] = v6;
  return result;
}

size_t DecodeDYMTLDepthStencilDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(a1 + 8);
  v8 = (a1 + 24);
  v9 = *(a1 + 16);
  result = strlen((a1 + 24));
  v11 = result;
  v12 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = strlen(v13);
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
    v16 = result + 1;
    if (result != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_9;
    }
  }

  else
  {
    v14 = (a3 + 592);
    v15 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_9:
  *v14 = v15 + v16;
  if (a4)
  {
    v18 = &v8[v11 & 0xFFFFFFFFFFFFFFF8];
    result = memcpy(v17, v13, v16);
    v20 = *(v18 + 4);
    v19 = *(v18 + 5);
    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    v23 = vmovn_s64(*(v18 + 3));
    v25 = *(v18 + 11);
    v24 = *(v18 + 12);
    v27 = *(v18 + 9);
    v26 = *(v18 + 10);
    v28 = *(a3 + 224);
    v29 = vmovn_s64(*(v18 + 104));
    *(a3 + 224) = v28 + 48;
    *v28 = v29;
    *(v28 + 8) = v25;
    *(v28 + 9) = v24;
    *(v28 + 10) = v27;
    *(v28 + 11) = v26;
    *(v28 + 12) = 0;
    *(v28 + 16) = v23;
    *(v28 + 24) = v20;
    *(v28 + 25) = v19;
    *(v28 + 26) = v22;
    *(v28 + 27) = v21;
    *(v28 + 28) = 0;
    *(v28 + 32) = v17;
    *(v28 + 40) = v7;
    *(v28 + 41) = v9;
    *(v28 + 46) = 0;
    *(v28 + 42) = 0;
  }

  else
  {
    *(a3 + 224) += 48;
  }

  return result;
}

uint64_t EncodeDYMTLDepthStencilDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v7 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 40);
      if (a3 >= 0x18)
      {
        a2[2] = *(a1 + 41);
      }
    }
  }

  v6 = 24;
  WriteDynamicBufferString(&v5, *(a1 + 32));
  SaveDYMTLStencilDescriptor(&v5, (a1 + 16));
  SaveDYMTLStencilDescriptor(&v5, a1);
  return v6;
}

void *SaveDYMTLStageInputOutputDescriptor(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = v4 + 8;
  if ((v4 + 8) <= a1[2])
  {
    *(*a1 + v4) = 31;
    v5 = a1[1] + 8;
  }

  a1[1] = v5;
  v6 = 31;
  v7 = a2;
  do
  {
    SaveDYMTLBufferLayoutDescriptor(a1, v7);
    v7 += 16;
    --v6;
  }

  while (v6);
  v8 = a1[1];
  v9 = v8 + 8;
  if ((v8 + 8) <= a1[2])
  {
    *(*a1 + v8) = 31;
    v9 = a1[1] + 8;
  }

  a1[1] = v9;
  v10 = (a2 + 496);
  v11 = 31;
  do
  {
    result = SaveDYMTLAttributeDescriptor(a1, v10);
    v10 += 2;
    --v11;
  }

  while (v11);
  v14 = a1[1];
  v13 = a1[2];
  v15 = v14 + 8;
  if (v14 + 8 <= v13)
  {
    *(*a1 + v14) = *(a2 + 745);
    v13 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = v15 + 8;
  if (v15 + 8 <= v13)
  {
    *(*a1 + v15) = *(a2 + 744);
    v16 = a1[1] + 8;
  }

  a1[1] = v16;
  return result;
}

__n128 DecodeDYMTLTileRenderPipelineDescriptor(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v65[1] = a2;
  v61 = xmmword_29CDD0;
  v62 = unk_29CDE0;
  v63 = xmmword_29CDF0;
  v64 = unk_29CE00;
  v57 = xmmword_29CD90;
  v58 = unk_29CDA0;
  v59 = xmmword_29CDB0;
  v60 = unk_29CDC0;
  v53 = GTMTLTileRenderPipelineDescriptorDefaults;
  v54 = unk_29CD60;
  v55 = xmmword_29CD70;
  v56 = unk_29CD80;
  v9 = (a1 + 8);
  v10 = *a1;
  v65[0] = a1 + 8 + (strlen((a1 + 8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v12 = *(a1 + 8);
  if (*(a1 + 8))
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = strlen(v13);
    v15 = a3 + 74;
    v16 = a3[74];
    v17 = v14 + 1;
    if (v14 != -1)
    {
      v18 = a3[74];
      goto LABEL_9;
    }
  }

  else
  {
    v15 = a3 + 74;
    v16 = a3[74];
  }

  v17 = 0;
  v18 = 0;
LABEL_9:
  *v15 = v16 + v17;
  if (a4)
  {
    memcpy(v18, v13, v17);
  }

  v19 = *v65[0];
  v20 = *(v65[0] + 8);
  *&v60 = v18;
  *(&v61 + 1) = v19;
  v62.n128_u16[3] = v20;
  v21 = *(v65[0] + 16);
  v22 = (v65[0] + 24);
  if (v21)
  {
    v23 = &v57;
    do
    {
      if (a4)
      {
        *v23 = *v22;
      }

      ++v22;
      v23 = (v23 + 2);
      --v21;
    }

    while (v21);
  }

  BYTE9(v64) = *v22;
  v24 = v22[1];
  v25 = v22 + 2;
  v65[0] = v25;
  if (v24)
  {
    v26 = &v62.n128_u8[8];
    do
    {
      if (a4)
      {
        *v26 = *v25;
      }

      ++v25;
      ++v26;
      --v24;
    }

    while (v24);
  }

  if (v10 > 0x2D)
  {
    v29 = *v25;
    v27 = v25 + 1;
    v28 = v29;
    v30 = (v27 + ((v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v65[0] = v30;
    if (v29)
    {
      v31 = a3[74];
    }

    else
    {
      v31 = 0;
    }

    a3[74] += v28;
    if (a4)
    {
      if (v28)
      {
        v32 = v27;
      }

      else
      {
        v32 = 0;
      }

      memcpy(v31, v32, v28);
    }

    *&v59 = v31;
    *(&v59 + 1) = v28;
    if (v10 >= 0x33)
    {
      v35 = *v30;
      v34 = v30 + 1;
      v33 = v35;
      v65[0] = v34;
      *&v61 = v35;
      if (v35)
      {
        v36 = a3[72];
        *(&v60 + 1) = v36;
        do
        {
          v38 = *v34++;
          v37 = v38;
          if (a4)
          {
            if (a5)
            {
              Stream_19685 = GetStream_19685(a5, v37);
              if (Stream_19685)
              {
                v37 = *Stream_19685;
              }

              else
              {
                v37 = 0;
              }
            }

            v36 = a3[72];
            *v36 = v37;
          }

          a3[72] = ++v36;
          --v33;
        }

        while (v33);
        v65[0] = v34;
      }

      else
      {
        *(&v60 + 1) = 0;
      }

      if (v10 >= 0x37)
      {
        MakeDYMTLLinkedFunctions(v65, &v53, a3, v10, a4, a5);
        if (v10 >= 0x42)
        {
          v40 = v65[0];
          BYTE8(v64) = *v65[0];
          if (v10 >= 0x45)
          {
            v62.n128_u16[1] = *(v65[0] + 8);
            if (v10 >= 0x4B)
            {
              v62.n128_u16[0] = *(v65[0] + 16);
              if (v10 >= 0x66)
              {
                v41 = *(v65[0] + 24);
                if (v41)
                {
                  v42 = a3[74];
                }

                else
                {
                  v42 = 0;
                }

                a3[74] += v41;
                if (a4)
                {
                  v43 = (v40 + 32);
                  if (v41)
                  {
                    v44 = v43;
                  }

                  else
                  {
                    v44 = 0;
                  }

                  memcpy(v42, v44, v41);
                }

                *&v58 = v42;
                *(&v58 + 1) = v41;
              }
            }
          }
        }
      }
    }
  }

  v45 = a3[29];
  a3[29] = v45 + 192;
  if (a4)
  {
    v46 = *(&v61 + 1);
    if (a5)
    {
      v47 = GetStream_19685(a5, *(&v61 + 1));
      if (v47)
      {
        v46 = *v47;
      }

      else
      {
        v46 = 0;
      }
    }

    *(&v61 + 1) = v46;
    v48 = v64;
    *(v45 + 160) = v63;
    *(v45 + 176) = v48;
    v49 = v58;
    *(v45 + 64) = v57;
    *(v45 + 80) = v49;
    v50 = v60;
    *(v45 + 96) = v59;
    *(v45 + 112) = v50;
    v51 = v54;
    *v45 = v53;
    *(v45 + 16) = v51;
    v52 = v56;
    *(v45 + 32) = v55;
    *(v45 + 48) = v52;
    result = v62;
    *(v45 + 128) = v61;
    *(v45 + 144) = result;
  }

  return result;
}

uint64_t EncodeDYMTLTileRenderPipelineDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v35 = a2;
  v37 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v36 = 8;
  WriteDynamicBufferString(&v35, *(a1 + 112));
  v34 = *(a1 + 136);
  entry = find_entry(a4, &v34, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v11 = v36;
  v10 = v37;
  v12 = v36 + 8;
  if (v36 + 8 <= v37)
  {
    *(v35 + v36) = *v6;
  }

  if (v11 + 16 <= v10)
  {
    *(v35 + v12) = *(a1 + 150);
  }

  v36 = v11 + 16;
  if (v11 + 24 <= v10)
  {
    *(v35 + v11 + 16) = 8;
  }

  v13 = 0;
  v14 = 64;
  do
  {
    if (v11 + v13 + 32 <= v10)
    {
      *(v35 + v11 + v13 + 24) = *(a1 + v14);
    }

    v13 += 8;
    v14 += 2;
  }

  while (v13 != 64);
  v15 = v11 + 64;
  v16 = v11 + 80;
  v17 = v16 + 16;
  if (v16 + 16 <= v10)
  {
    *(v35 + v15 + 24) = *(a1 + 185);
  }

  v18 = v16 + 24;
  if (v18 <= v10)
  {
    *(v35 + v17) = 31;
  }

  for (i = 152; i != 183; ++i)
  {
    if (v18 + 8 <= v10)
    {
      *(v35 + v18) = *(a1 + i);
    }

    v36 = v18 + 8;
    v18 += 8;
  }

  WriteGTData(&v35, *(a1 + 96), *(a1 + 104));
  v20 = *(a1 + 128);
  v21 = v37;
  v22 = v36 + 8;
  if (v36 + 8 <= v37)
  {
    *(v35 + v36) = v20;
    v20 = *(a1 + 128);
  }

  v36 = v22;
  if (v20)
  {
    v23 = 0;
    do
    {
      v33 = *(*(a1 + 120) + 8 * v23);
      v24 = find_entry(a4, &v33, 8uLL, 0);
      if (*v24 && (v25 = *(*v24 + 32)) != 0)
      {
        v26 = atomic_load((v25 + 56));
        v27 = (v25 + (~(v26 >> 2) & 8));
        v22 = v36;
        v21 = v37;
      }

      else
      {
        v27 = &dword_8;
      }

      if (v22 + 8 <= v21)
      {
        *(v35 + v22) = *v27;
      }

      v36 = v22 + 8;
      ++v23;
      v22 += 8;
    }

    while (*(a1 + 128) > v23);
  }

  SaveDYMTLLinkedFunctions(&v35, a1, a4);
  v28 = v37;
  v29 = v36 + 8;
  if (v36 + 8 <= v37)
  {
    *(v35 + v36) = *(a1 + 184);
    v28 = v37;
    v29 = v36 + 8;
  }

  v36 = v29;
  v30 = v29 + 8;
  if (v29 + 8 <= v28)
  {
    *(v35 + v29) = *(a1 + 146);
    v28 = v37;
    v30 = v36 + 8;
  }

  v36 = v30;
  v31 = v30 + 8;
  if (v30 + 8 <= v28)
  {
    *(v35 + v30) = *(a1 + 144);
    v31 = v36 + 8;
  }

  v36 = v31;
  WriteGTData(&v35, *(a1 + 80), *(a1 + 88));
  return v36;
}

size_t DecodeDYMTLRasterizationRateMapDescriptor(uint64_t a1, int *a2, void *a3, int a4)
{
  v26[1] = a2;
  v7 = *a1;
  v8 = (a1 + 8);
  result = strlen((a1 + 8));
  v26[0] = &v8[(result & 0xFFFFFFFFFFFFFFF8) + 8];
  if (*(a1 + 8))
  {
    result = strlen(v8);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = result + 1;
    if (result != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    result = memcpy(v12, v8, v11);
  }

  v15 = *v26[0];
  v16 = *(v26[0] + 4);
  v17 = *(v26[0] + 8);
  v18 = *(v26[0] + 3);
  v26[0] += 8;
  if (v18)
  {
    v19 = a3[52];
    v20 = v18;
    do
    {
      v21 = a3[52];
      a3[52] = v21 + 24;
      result = MakeDYMTLRasterizationRateLayerDescriptor(v26, v21, a3, v10, a4);
      --v20;
    }

    while (v20);
  }

  else
  {
    v19 = 0;
  }

  if (v7 <= 0x39)
  {
    v24 = 0;
    v23 = 2;
    v22 = 0;
  }

  else
  {
    v22 = *v26[0];
    v23 = *(v26[0] + 8);
    if (v7 < 0x44)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(v26[0] + 16);
    }
  }

  v25 = a3[30];
  a3[30] = v25 + 40;
  if (a4)
  {
    *v25 = v12;
    *(v25 + 8) = v19;
    *(v25 + 16) = v18;
    *(v25 + 24) = v22;
    *(v25 + 28) = v17;
    *(v25 + 30) = v16;
    *(v25 + 32) = v15;
    *(v25 + 34) = v23;
    *(v25 + 35) = v24;
    *(v25 + 36) = 0;
  }

  return result;
}

uint64_t EncodeDYMTLRasterizationRateMapDescriptor(uint64_t a1, void *a2, unint64_t a3)
{
  v14 = a2;
  v16 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v15 = 8;
  WriteDynamicBufferString(&v14, *a1);
  v4 = v15;
  v5 = v16;
  v6 = v15 + 8;
  if (v15 + 8 <= v16)
  {
    *(v14 + v15) = *(a1 + 32);
  }

  if (v4 + 16 <= v5)
  {
    *(v14 + v6) = *(a1 + 30);
  }

  if (v4 + 24 <= v5)
  {
    *(v14 + v4 + 16) = *(a1 + 28);
  }

  v7 = *(a1 + 16);
  v8 = v4 + 32;
  if (v4 + 32 <= v5)
  {
    *(v14 + v4 + 24) = v7;
    v7 = *(a1 + 16);
  }

  v15 = v4 + 32;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      SaveDYMTLRasterizationRateLayerDescriptor(&v14, *(a1 + 8) + v9);
      ++v10;
      v9 += 24;
    }

    while (*(a1 + 16) > v10);
    v8 = v15;
    v5 = v16;
  }

  v11 = v8 + 4;
  if (v5 >= v8 + 4)
  {
    *(v14 + v8) = *(a1 + 24);
  }

  if (v5 > v11)
  {
    if (v5 - v11 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v5 - v11;
    }

    bzero(v14 + v11, v12);
  }

  if (v8 + 16 <= v5)
  {
    *(v14 + v8 + 8) = *(a1 + 34);
  }

  result = v8 + 24;
  if (v8 + 24 <= v5)
  {
    *(v14 + v8 + 16) = *(a1 + 35);
  }

  return result;
}

uint64_t **MakeDYMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(uint64_t **result, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = result;
  v9 = *result + 1;
  v10 = **result;
  *result = v9;
  if (v10)
  {
    v13 = *(a3 + 512);
    v14 = v10;
    do
    {
      v15 = *(a3 + 512);
      *(a3 + 512) = v15 + 2;
      result = MakeDYMTLMotionKeyframeData(v8, v15, a3, a4, a5, a6);
      --v14;
    }

    while (v14);
    v9 = *v8;
  }

  else
  {
    v13 = 0;
  }

  *v8 = v9 + 1;
  v16 = v9[1];
  *v8 = v9 + 2;
  v17 = v9[2];
  *v8 = v9 + 3;
  if (a5)
  {
    *a2 = v13;
    a2[1] = v10;
    a2[2] = v17;
    a2[3] = v16;
  }

  return result;
}

void *SaveDYMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(void *result, void *a2, uint64_t a3)
{
  v5 = result;
  v6 = a2[1];
  v7 = result[1];
  v8 = v7 + 8;
  if ((v7 + 8) <= result[2])
  {
    *(*result + v7) = v6;
    v8 = result[1] + 8;
    v6 = a2[1];
  }

  result[1] = v8;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      result = SaveDYMTLMotionKeyframeData(v5, (*a2 + v9), a3);
      ++v10;
      v9 += 16;
    }

    while (a2[1] > v10);
    v8 = v5[1];
  }

  v11 = v8 + 8;
  v12 = v5[2];
  if (v8 + 8 <= v12)
  {
    *(*v5 + v8) = 0;
    v12 = v5[2];
    v11 = v5[1] + 8;
  }

  v5[1] = v11;
  v13 = v11 + 8;
  if (v11 + 8 <= v12)
  {
    *(*v5 + v11) = a2[3];
    v12 = v5[2];
    v13 = v5[1] + 8;
  }

  v5[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v12)
  {
    *(*v5 + v13) = a2[2];
    v14 = v5[1] + 8;
  }

  v5[1] = v14;
  return result;
}

uint64_t **MakeDYMTLAccelerationStructureMotionCurveGeometryDescriptor(uint64_t **result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = result;
  v11 = *result + 1;
  v12 = **result;
  *result = v11;
  v41 = v12;
  if (v12)
  {
    v40 = *(a3 + 512);
    do
    {
      v13 = *(a3 + 512);
      *(a3 + 512) = v13 + 2;
      result = MakeDYMTLMotionKeyframeData(v10, v13, a3, a4, a5, a6);
      --v12;
    }

    while (v12);
    v11 = *v10;
  }

  else
  {
    v40 = 0;
  }

  v16 = *v11;
  v14 = v11 + 1;
  v15 = v16;
  *v10 = v14;
  if (v16)
  {
    v39 = *(a3 + 512);
    v17 = v15;
    do
    {
      v18 = *(a3 + 512);
      *(a3 + 512) = v18 + 2;
      result = MakeDYMTLMotionKeyframeData(v10, v18, a3, a4, a5, a6);
      --v17;
    }

    while (v17);
    v14 = *v10;
  }

  else
  {
    v39 = 0;
  }

  v19 = *v14;
  *v10 = v14 + 1;
  v20 = v14[1];
  *v10 = v14 + 2;
  v21 = v14[2];
  *v10 = v14 + 3;
  v22 = v14[3];
  *v10 = v14 + 4;
  v23 = v14[4];
  *v10 = v14 + 5;
  v24 = v14[5];
  *v10 = v14 + 6;
  v25 = *(v14 + 48);
  *v10 = v14 + 7;
  v26 = *(v14 + 56);
  *v10 = v14 + 8;
  v27 = *(v14 + 64);
  *v10 = v14 + 9;
  v28 = v14[9];
  *v10 = v14 + 10;
  v29 = *(v14 + 80);
  *v10 = v14 + 11;
  v30 = *(v14 + 88);
  *v10 = v14 + 12;
  v31 = *(v14 + 96);
  *v10 = v14 + 13;
  if (a5)
  {
    if (a6)
    {
      v34 = v25;
      v35 = v23;
      v36 = v26;
      v37 = v24;
      v38 = v20;
      v32 = v21;
      v33 = v19;
      result = GetStream_19685(a6, v22);
      if (result)
      {
        v22 = *result;
      }

      else
      {
        v22 = 0;
      }

      v19 = v33;
      v21 = v32;
      v24 = v37;
      v20 = v38;
      v26 = v36;
      v23 = v35;
      v25 = v34;
    }

    *a2 = v40;
    *(a2 + 8) = v41;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v22;
    *(a2 + 40) = v23;
    *(a2 + 48) = v39;
    *(a2 + 56) = v15;
    *(a2 + 64) = v21;
    *(a2 + 72) = v28;
    *(a2 + 80) = v24;
    *(a2 + 88) = v25;
    *(a2 + 89) = v30;
    *(a2 + 90) = v29;
    *(a2 + 91) = v31;
    *(a2 + 92) = v27;
    *(a2 + 93) = v26;
    *(a2 + 94) = 0;
  }

  return result;
}

void *SaveDYMTLAccelerationStructureMotionCurveGeometryDescriptor(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = a1[1];
  v8 = v7 + 8;
  if ((v7 + 8) <= a1[2])
  {
    *(*a1 + v7) = v6;
    v8 = a1[1] + 8;
    v6 = *(a2 + 8);
  }

  a1[1] = v8;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      SaveDYMTLMotionKeyframeData(a1, (*a2 + v9), a3);
      ++v10;
      v9 += 16;
    }

    while (*(a2 + 8) > v10);
    v8 = a1[1];
  }

  v11 = *(a2 + 56);
  v12 = v8 + 8;
  if ((v8 + 8) <= a1[2])
  {
    *(*a1 + v8) = v11;
    v12 = a1[1] + 8;
    v11 = *(a2 + 56);
  }

  a1[1] = v12;
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      SaveDYMTLMotionKeyframeData(a1, (*(a2 + 48) + v13), a3);
      ++v14;
      v13 += 16;
    }

    while (*(a2 + 56) > v14);
    v12 = a1[1];
  }

  v15 = v12 + 8;
  v16 = a1[2];
  if (v12 + 8 <= v16)
  {
    *(*a1 + v12) = *(a2 + 16);
    v16 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v17 = v15 + 8;
  if (v15 + 8 <= v16)
  {
    *(*a1 + v15) = *(a2 + 24);
    v16 = a1[2];
    v17 = a1[1] + 8;
  }

  a1[1] = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v16)
  {
    *(*a1 + v17) = *(a2 + 64);
    v18 = a1[1] + 8;
  }

  a1[1] = v18;
  v35 = *(a2 + 32);
  v19 = &dword_8;
  result = find_entry(a3, &v35, 8uLL, 0);
  if (*result)
  {
    v21 = *(*result + 32);
    if (v21)
    {
      v22 = atomic_load((v21 + 56));
      v19 = (v21 + (~(v22 >> 2) & 8));
    }

    else
    {
      v19 = &dword_8;
    }
  }

  v24 = a1[1];
  v23 = a1[2];
  v25 = v24 + 8;
  if (v24 + 8 <= v23)
  {
    *(*a1 + v24) = *v19;
    v23 = a1[2];
    v25 = a1[1] + 8;
  }

  a1[1] = v25;
  v26 = v25 + 8;
  if (v25 + 8 <= v23)
  {
    *(*a1 + v25) = *(a2 + 40);
    v23 = a1[2];
    v26 = a1[1] + 8;
  }

  a1[1] = v26;
  v27 = v26 + 8;
  if (v26 + 8 <= v23)
  {
    *(*a1 + v26) = *(a2 + 80);
    v23 = a1[2];
    v27 = a1[1] + 8;
  }

  a1[1] = v27;
  v28 = v27 + 8;
  if (v27 + 8 <= v23)
  {
    *(*a1 + v27) = *(a2 + 88);
    v23 = a1[2];
    v28 = a1[1] + 8;
  }

  a1[1] = v28;
  v29 = v28 + 8;
  if (v28 + 8 <= v23)
  {
    *(*a1 + v28) = *(a2 + 93);
    v23 = a1[2];
    v29 = a1[1] + 8;
  }

  a1[1] = v29;
  v30 = v29 + 8;
  if (v29 + 8 <= v23)
  {
    *(*a1 + v29) = *(a2 + 92);
    v23 = a1[2];
    v30 = a1[1] + 8;
  }

  a1[1] = v30;
  v31 = v30 + 8;
  if (v30 + 8 <= v23)
  {
    *(*a1 + v30) = *(a2 + 72);
    v23 = a1[2];
    v31 = a1[1] + 8;
  }

  a1[1] = v31;
  v32 = v31 + 8;
  if (v31 + 8 <= v23)
  {
    *(*a1 + v31) = *(a2 + 90);
    v23 = a1[2];
    v32 = a1[1] + 8;
  }

  a1[1] = v32;
  v33 = v32 + 8;
  if (v32 + 8 <= v23)
  {
    *(*a1 + v32) = *(a2 + 89);
    v23 = a1[2];
    v33 = a1[1] + 8;
  }

  a1[1] = v33;
  v34 = v33 + 8;
  if (v33 + 8 <= v23)
  {
    *(*a1 + v33) = *(a2 + 91);
    v34 = a1[1] + 8;
  }

  a1[1] = v34;
  return result;
}

uint64_t *DecodeDYMTLBlitPassDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a3 + 248);
  *(a3 + 248) = v5 + 6;
  if (a4)
  {
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    for (i = result + 1; ; i += 4)
    {
      v8 = *i;
      if (*i == -1)
      {
        break;
      }

      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      if (a5)
      {
        result = GetStream_19685(a5, v9);
        if (result)
        {
          v9 = *result;
        }

        else
        {
          v9 = 0;
        }
      }

      v12 = v5 + 3 * v8;
      *v12 = v11;
      v12[1] = v9;
      v12[2] = v10;
    }
  }

  return result;
}

uint64_t EncodeDYMTLBlitPassDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = 0;
  v10 = 8;
  do
  {
    if (a1[1])
    {
      v7 = v10 + 8;
      if (v10 + 8 <= v11)
      {
        *(v9 + v10) = v6;
      }

      v10 = v7;
      SaveDYMTLBlitPassSampleBufferAttachmentDescriptor(&v9, a1, a4);
    }

    ++v6;
    a1 += 3;
  }

  while (v6 != 4);
  result = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(v9 + v10) = -1;
  }

  return result;
}

uint64_t *DecodeDYMTLComputePassDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a3 + 256);
  *(a3 + 256) = v5 + 104;
  if (a4)
  {
    *(v5 + 96) = 0;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    *v5 = 0u;
    *(v5 + 16) = 0u;
    v7 = result + 2;
    *(v5 + 96) = result[1];
    while (1)
    {
      v8 = *v7;
      if (*v7 == -1)
      {
        break;
      }

      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      if (a5)
      {
        result = GetStream_19685(a5, v9);
        if (result)
        {
          v9 = *result;
        }

        else
        {
          v9 = 0;
        }
      }

      v12 = (v5 + 24 * v8);
      *v12 = v11;
      v12[1] = v9;
      v12[2] = v10;
      v7 += 4;
    }
  }

  return result;
}

uint64_t EncodeDYMTLComputePassDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = a1;
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 96);
    }
  }

  v6 = 0;
  v10 = 16;
  do
  {
    if (v5[1])
    {
      v7 = v10 + 8;
      if (v10 + 8 <= v11)
      {
        *(v9 + v10) = v6;
      }

      v10 = v7;
      SaveDYMTLComputePassSampleBufferAttachmentDescriptor(&v9, v5, a4);
    }

    ++v6;
    v5 += 3;
  }

  while (v6 != 4);
  result = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(v9 + v10) = -1;
  }

  return result;
}

uint64_t *DecodeDYMTLResourceStatePassDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a3 + 264);
  *(a3 + 264) = v5 + 6;
  if (a4)
  {
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    for (i = result + 1; ; i += 4)
    {
      v8 = *i;
      if (*i == -1)
      {
        break;
      }

      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      if (a5)
      {
        result = GetStream_19685(a5, v9);
        if (result)
        {
          v9 = *result;
        }

        else
        {
          v9 = 0;
        }
      }

      v12 = v5 + 3 * v8;
      *v12 = v11;
      v12[1] = v9;
      v12[2] = v10;
    }
  }

  return result;
}

uint64_t EncodeDYMTLResourceStatePassDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = 0;
  v10 = 8;
  do
  {
    if (a1[1])
    {
      v7 = v10 + 8;
      if (v10 + 8 <= v11)
      {
        *(v9 + v10) = v6;
      }

      v10 = v7;
      SaveDYMTLResourceStatePassSampleBufferAttachmentDescriptor(&v9, a1, a4);
    }

    ++v6;
    a1 += 3;
  }

  while (v6 != 4);
  result = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(v9 + v10) = -1;
  }

  return result;
}

uint64_t *DecodeDYMTLAccelerationStructurePassDescriptor(uint64_t *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a3 + 272);
  *(a3 + 272) = v5 + 6;
  if (a4)
  {
    v5[4] = 0u;
    v5[5] = 0u;
    v5[2] = 0u;
    v5[3] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    for (i = result + 1; ; i += 4)
    {
      v8 = *i;
      if (*i == -1)
      {
        break;
      }

      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      if (a5)
      {
        result = GetStream_19685(a5, v9);
        if (result)
        {
          v9 = *result;
        }

        else
        {
          v9 = 0;
        }
      }

      v12 = v5 + 3 * v8;
      *v12 = v11;
      v12[1] = v9;
      v12[2] = v10;
    }
  }

  return result;
}

uint64_t EncodeDYMTLAccelerationStructurePassDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v9 = a2;
  v11 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = 0;
  v10 = 8;
  do
  {
    if (a1[1])
    {
      v7 = v10 + 8;
      if (v10 + 8 <= v11)
      {
        *(v9 + v10) = v6;
      }

      v10 = v7;
      SaveDYMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(&v9, a1, a4);
    }

    ++v6;
    a1 += 3;
  }

  while (v6 != 4);
  result = v10 + 8;
  if (v10 + 8 <= v11)
  {
    *(v9 + v10) = -1;
  }

  return result;
}

size_t DecodeDYMTLIntersectionFunctionDescriptor(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = (a1 + 16);
  v8 = *(a1 + 8);
  v9 = (a1 + 16 + (strlen((a1 + 16)) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*(a1 + 16))
  {
    v10 = strlen(v7);
    v13 = a3 + 74;
    v14 = a3[74];
    v11 = v10 + 1;
    if (v10 != -1)
    {
      v12 = a3[74];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v13 = a3 + 74;
    v14 = a3[74];
  }

  v11 = 0;
  v12 = 0;
LABEL_6:
  *v13 = v14 + v11;
  if (a4)
  {
    memcpy(v12, v7, v11);
  }

  result = strlen(v9);
  v16 = &v9[result & 0xFFFFFFFFFFFFFFF8];
  v17 = *v9;
  if (!*v9)
  {
    v9 = 0;
  }

  if (v17)
  {
    result = strlen(v9);
    v18 = a3 + 74;
    v19 = a3[74];
    v20 = result + 1;
    if (result != -1)
    {
      v21 = a3[74];
      goto LABEL_15;
    }
  }

  else
  {
    v18 = a3 + 74;
    v19 = a3[74];
  }

  v20 = 0;
  v21 = 0;
LABEL_15:
  *v18 = v19 + v20;
  if (a4)
  {
    result = memcpy(v21, v9, v20);
  }

  v22 = *(v16 + 1);
  if (v22)
  {
    v23 = a3[59];
    result = DecodeDYMTLFunctionConstantValues((v16 + 16), v22, a3, a4);
  }

  else
  {
    v23 = 0;
  }

  v24 = a3[35];
  a3[35] = v24 + 48;
  if (a4)
  {
    *v24 = v23;
    *(v24 + 8) = v12;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v21;
    *(v24 + 40) = v8;
    *(v24 + 41) = 0;
    *(v24 + 44) = 0;
  }

  return result;
}

uint64_t EncodeDYMTLIntersectionFunctionDescriptor(void **a1, void *a2, unint64_t a3)
{
  v10 = a2;
  v12 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
    if (a3 >= 0x10)
    {
      a2[1] = *(a1 + 40);
    }
  }

  v11 = 16;
  WriteDynamicBufferString(&v10, a1[1]);
  WriteDynamicBufferString(&v10, a1[4]);
  if (*a1)
  {
    v4 = EncodeDYMTLFunctionConstantValues(*a1, 0, 0);
    v5 = v4;
    v6 = v12;
    v7 = v11 + 8;
    v8 = v12 - (v11 + 8);
    if (v12 >= v11 + 8)
    {
      v10[v11 / 8] = v4;
    }

    if (v4 && v7 + v4 <= v6)
    {
      EncodeDYMTLFunctionConstantValues(*a1, (v10 + v7), v8);
    }
  }

  else
  {
    v7 = v11 + 8;
    v5 = 0;
    if (v11 + 8 <= v12)
    {
      v10[v11 / 8] = 0;
    }
  }

  return v7 + v5;
}

__n128 DecodeDYMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v32[0] = (a1 + 8);
  v32[1] = a2;
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v32, &v19, a3, a4, a4, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v32, &v21 + 1, a3, v8, v6, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v32, &v24, a3, v9, v6, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v32, &v26 + 1, a3, v10, v6, a5);
  MakeDYMTL4PipelineStageDynamicLinkingDescriptor(v32, &v29, a3, v11, v6, a5);
  v13 = *(a3 + 288);
  *(a3 + 288) = v13 + 200;
  if (v6)
  {
    v14 = v30;
    *(v13 + 160) = v29;
    *(v13 + 176) = v14;
    *(v13 + 192) = v31;
    v15 = v26;
    *(v13 + 96) = v25;
    *(v13 + 112) = v15;
    v16 = v28;
    *(v13 + 128) = v27;
    *(v13 + 144) = v16;
    v17 = v22;
    *(v13 + 32) = v21;
    *(v13 + 48) = v17;
    v18 = v24;
    *(v13 + 64) = v23;
    *(v13 + 80) = v18;
    result = v20;
    *v13 = v19;
    *(v13 + 16) = result;
  }

  return result;
}

uint64_t EncodeDYMTL4RenderPipelineDynamicLinkingDescriptor(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v8 = 8;
  SaveDYMTL4PipelineStageDynamicLinkingDescriptor(&v7, a1, a4);
  SaveDYMTL4PipelineStageDynamicLinkingDescriptor(&v7, a1 + 5, a4);
  SaveDYMTL4PipelineStageDynamicLinkingDescriptor(&v7, a1 + 10, a4);
  SaveDYMTL4PipelineStageDynamicLinkingDescriptor(&v7, a1 + 15, a4);
  SaveDYMTL4PipelineStageDynamicLinkingDescriptor(&v7, a1 + 20, a4);
  return v8;
}

double MakeDYMTL4AccelerationStructureGeometryDescriptor(const char **a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  v9 = *a1;
  v10 = **a1;
  *a1 += 8;
  LOBYTE(v42) = v10;
  v11 = *(v9 + 1);
  v12 = v9 + 16;
  *a1 = v9 + 16;
  *&v40 = v11;
  *a1 = &v9[(strlen(v9 + 16) & 0xFFFFFFFFFFFFFFF8) + 24];
  if (v9[16])
  {
    v15 = strlen(v12);
    v18 = (a3 + 592);
    v19 = *(a3 + 592);
    v16 = v15 + 1;
    if (v15 != -1)
    {
      v17 = *(a3 + 592);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v18 = (a3 + 592);
    v19 = *(a3 + 592);
  }

  v16 = 0;
  v17 = 0;
LABEL_6:
  *v18 = v19 + v16;
  if (a5)
  {
    memcpy(v17, v12, v16);
  }

  v20 = *a1;
  v21 = **a1;
  *a1 += 8;
  BYTE1(v42) = v21;
  v22 = *(v20 + 1);
  *a1 = v20 + 16;
  v23 = *(v20 + 2);
  *a1 = v20 + 24;
  *&v39 = v22;
  *(&v39 + 1) = v23;
  v24 = *(v20 + 3);
  *a1 = v20 + 32;
  *(&v40 + 1) = v17;
  *&v41 = v24;
  v25 = *(v20 + 4);
  *a1 = v20 + 40;
  *(&v41 + 1) = v25;
  v26 = *(v20 + 40);
  *a1 = v20 + 48;
  BYTE2(v42) = v26;
  if (v26 > 9)
  {
    if (v26 != 10)
    {
      if (v26 == 11)
      {
        *&v14 = MakeDYMTL4AccelerationStructureCurveGeometryDescriptor(a1, &v33, v16, v13, a5).n128_u64[0];
      }

      else if (v26 == 12)
      {
        *&v14 = MakeDYMTL4AccelerationStructureMotionCurveGeometryDescriptor(a1, &v33, v16, v13, a5).n128_u64[0];
      }

LABEL_21:
      if (a5)
      {
        goto LABEL_22;
      }

      return *&v14;
    }
  }

  else
  {
    if (v26 == 7)
    {
      *&v14 = MakeDYMTL4AccelerationStructureTriangleGeometryDescriptor(a1, &v33, v16, v13, a5).n128_u64[0];
      goto LABEL_21;
    }

    if (v26 != 8)
    {
      if (v26 == 9)
      {
        *&v14 = MakeDYMTL4AccelerationStructureMotionTriangleGeometryDescriptor(a1, &v33, v16, v13, a5).n128_u64[0];
      }

      goto LABEL_21;
    }
  }

  *&v14 = *(v20 + 6);
  *a1 = v20 + 56;
  *(&v14 + 1) = *(v20 + 7);
  *a1 = v20 + 64;
  *&v27 = *(v20 + 8);
  *a1 = v20 + 72;
  *(&v27 + 1) = *(v20 + 9);
  *a1 = v20 + 80;
  if (a5)
  {
    v33 = v14;
    v34 = v27;
LABEL_22:
    v28 = v40;
    *(a2 + 96) = v39;
    *(a2 + 112) = v28;
    *(a2 + 128) = v41;
    *(a2 + 144) = v42;
    v29 = v36;
    *(a2 + 32) = v35;
    *(a2 + 48) = v29;
    v30 = v38;
    *(a2 + 64) = v37;
    *(a2 + 80) = v30;
    *&v14 = v33;
    v31 = v34;
    *a2 = v33;
    *(a2 + 16) = v31;
  }

  return *&v14;
}

void SaveDYMTL4AccelerationStructureGeometryDescriptor(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = v5 + 8;
  if (v5 + 8 <= v4)
  {
    *(*a1 + v5) = *(a2 + 144);
    v4 = a1[2];
    v6 = a1[1] + 8;
  }

  a1[1] = v6;
  v7 = v6 + 8;
  if (v6 + 8 <= v4)
  {
    *(*a1 + v6) = *(a2 + 112);
    v7 = a1[1] + 8;
  }

  a1[1] = v7;
  WriteDynamicBufferString(a1, *(a2 + 120));
  v9 = a1[1];
  v8 = a1[2];
  v10 = v9 + 8;
  if (v9 + 8 <= v8)
  {
    *(*a1 + v9) = *(a2 + 145);
    v8 = a1[2];
    v10 = a1[1] + 8;
  }

  a1[1] = v10;
  v11 = *(a2 + 104);
  v12 = v10 + 8;
  if (v10 + 8 <= v8)
  {
    *(*a1 + v10) = *(a2 + 96);
    v8 = a1[2];
    v12 = a1[1] + 8;
  }

  a1[1] = v12;
  v13 = v12 + 8;
  if (v12 + 8 <= v8)
  {
    *(*a1 + v12) = v11;
    v8 = a1[2];
    v13 = a1[1] + 8;
  }

  a1[1] = v13;
  v14 = v13 + 8;
  if (v13 + 8 <= v8)
  {
    *(*a1 + v13) = *(a2 + 128);
    v8 = a1[2];
    v14 = a1[1] + 8;
  }

  a1[1] = v14;
  v15 = v14 + 8;
  if (v14 + 8 <= v8)
  {
    *(*a1 + v14) = *(a2 + 136);
    v8 = a1[2];
    v15 = a1[1] + 8;
  }

  a1[1] = v15;
  v16 = *(a2 + 146);
  v17 = v15 + 8;
  if (v15 + 8 <= v8)
  {
    *(*a1 + v15) = v16;
    v17 = a1[1] + 8;
    LODWORD(v16) = *(a2 + 146);
  }

  a1[1] = v17;
  if (v16 > 9)
  {
    switch(v16)
    {
      case 0xA:

        SaveDYMTL4AccelerationStructureMotionBoundingBoxGeometryDescriptor(a1, a2);
        break;
      case 0xB:

        SaveDYMTL4AccelerationStructureCurveGeometryDescriptor(a1, a2);
        break;
      case 0xC:

        SaveDYMTL4AccelerationStructureMotionCurveGeometryDescriptor(a1, a2);
        break;
    }
  }

  else
  {
    switch(v16)
    {
      case 7:

        SaveDYMTL4AccelerationStructureTriangleGeometryDescriptor(a1, a2);
        break;
      case 8:

        SaveDYMTL4AccelerationStructureBoundingBoxGeometryDescriptor(a1, a2);
        break;
      case 9:

        SaveDYMTL4AccelerationStructureMotionTriangleGeometryDescriptor(a1, a2);
        break;
    }
  }
}

void *DecodeDYMTLRenderPassDescriptor(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5)
{
  v40[1] = a2;
  memcpy(__dst, &GTMTLRenderPassDescriptorDefaults, sizeof(__dst));
  v10 = *a1;
  v11 = (a1 + 16);
  __dst[99] = *(a1 + 8);
  while (1)
  {
    v12 = *v11;
    v40[0] = v11 + 1;
    if (v12 == -1)
    {
      break;
    }

    MakeDYMTLRenderPassColorAttachmentDescriptor(v40, &__dst[8 * v12], v9, v10, a4, a5);
    v11 = v40[0];
  }

  MakeDYMTLRenderPassDepthAttachmentDescriptor(v40, &__dst[84], v9, v10, a4, a5);
  result = MakeDYMTLRenderPassStencilAttachmentDescriptor(v40, &__dst[90], v13, v10, a4, a5);
  if (v10 >= 7)
  {
    v17 = v40[0];
    HIWORD(__dst[100]) = *v40[0];
    if (v10 >= 0xD)
    {
      v18 = v40[0][7];
      v19 = v40[0][2];
      WORD2(__dst[100]) = v40[0][1];
      LODWORD(__dst[100]) = v19;
      v20 = v40[0][4];
      HIWORD(__dst[101]) = v40[0][3];
      WORD2(__dst[101]) = v20;
      v21 = v40[0][6];
      WORD1(__dst[101]) = v40[0][5];
      v40[0] += 7;
      LOWORD(__dst[101]) = v21;
      LOBYTE(__dst[102]) = v18;
      if (v10 != 13)
      {
        v22 = v17[8];
        v23 = v17 + 9;
        v24 = *(a3 + 584);
        __dst[95] = v24;
        __dst[96] = v22;
        if (v22 << 32)
        {
          v25 = 2 * v22;
          if (v25 <= 1)
          {
            v25 = 1;
          }

          v26 = v24;
          do
          {
            if (a4)
            {
              *v26 = *v23;
            }

            ++v23;
            ++v26;
            --v25;
          }

          while (v25);
        }

        *(a3 + 584) = &v24[2 * v22];
        if (v10 >= 0x14)
        {
          BYTE4(__dst[94]) = *v23;
          if (v10 >= 0x18)
          {
            v27 = v23[1];
            v40[0] = v23 + 2;
            BYTE2(__dst[102]) = v27;
            if (v10 >= 0x21)
            {
              __dst[98] = v23[2];
              if (v10 >= 0x27)
              {
                BYTE1(__dst[102]) = v23[3];
                if (v10 >= 0x2A)
                {
                  __dst[97] = v23[4];
                  BYTE3(__dst[102]) = v23[5];
                  if (v10 >= 0x32)
                  {
                    for (i = v23 + 6; ; i = v40[0])
                    {
                      v29 = *i;
                      v40[0] = i + 1;
                      if (v29 == -1)
                      {
                        break;
                      }

                      result = MakeDYMTLRenderPassSampleBufferAttachmentDescriptor(v40, &__dst[5 * v29 + 64], v15, v16, a4, a5);
                    }

                    if (v10 >= 0x43)
                    {
                      BYTE4(__dst[102]) = i[1];
                      if (v10 >= 0x66)
                      {
                        BYTE6(__dst[102]) = i[2];
                        if (v10 != 102)
                        {
                          BYTE5(__dst[102]) = i[3];
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v30 = HIWORD(__dst[100]);
  if (HIWORD(__dst[100]) == 0xFFFF)
  {
    v30 = 0;
  }

  HIWORD(__dst[100]) = v30;
  v31 = WORD2(__dst[100]);
  if (WORD2(__dst[100]) == 0xFFFF)
  {
    v31 = 0;
  }

  WORD2(__dst[100]) = v31;
  v32 = __dst[100];
  if (LODWORD(__dst[100]) == -1)
  {
    v32 = 0;
  }

  LODWORD(__dst[100]) = v32;
  __dst[101] = vbic_s8(__dst[101], vceq_s16(__dst[101], -1));
  v33 = __dst[102];
  if (LOBYTE(__dst[102]) == 255)
  {
    v33 = 0;
  }

  LOBYTE(__dst[102]) = v33;
  v34 = *(a3 + 296);
  *(a3 + 296) = v34 + 824;
  if (a4)
  {
    if (a5)
    {
      Stream_19685 = GetStream_19685(a5, __dst[99]);
      if (Stream_19685)
      {
        v36 = *Stream_19685;
      }

      else
      {
        v36 = 0;
      }

      __dst[99] = v36;
      v37 = GetStream_19685(a5, __dst[98]);
      if (!v37)
      {
        v38 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v37 = &__dst[98];
    }

    v38 = *v37;
LABEL_44:
    __dst[98] = v38;
    return memcpy(v34, __dst, 0x338uLL);
  }

  return result;
}

uint64_t EncodeDYMTLRenderPassDescriptor(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v52 = a2;
  v54 = a3;
  if (a3 >= 8)
  {
    *a2 = 115;
  }

  v6 = &dword_8;
  v53 = 8;
  v51 = *(a1 + 792);
  entry = find_entry(a4, &v51, 8uLL, 0);
  if (*entry)
  {
    v8 = *(*entry + 32);
    if (v8)
    {
      v9 = atomic_load((v8 + 56));
      v6 = (v8 + (~(v9 >> 2) & 8));
    }

    else
    {
      v6 = &dword_8;
    }
  }

  v10 = v53 + 8;
  if (v53 + 8 <= v54)
  {
    *(v52 + v53) = *v6;
    v10 = v53 + 8;
  }

  v11 = 0;
  v53 = v10;
  v12 = a1;
  do
  {
    if (*(v12 + 8))
    {
      v13 = v53 + 8;
      if (v53 + 8 <= v54)
      {
        *(v52 + v53) = v11;
        v13 = v53 + 8;
      }

      v53 = v13;
      SaveDYMTLRenderPassColorAttachmentDescriptor(&v52, v12, a4);
    }

    ++v11;
    v12 += 64;
  }

  while (v11 != 8);
  v14 = v53 + 8;
  if (v53 + 8 <= v54)
  {
    *(v52 + v53) = -1;
    v14 = v53 + 8;
  }

  v53 = v14;
  SaveDYMTLRenderPassDepthAttachmentDescriptor(&v52, (a1 + 672), a4);
  SaveDYMTLRenderPassStencilAttachmentDescriptor(&v52, (a1 + 720), a4);
  v15 = v54;
  v16 = v53 + 8;
  if (v53 + 8 <= v54)
  {
    *(v52 + v53) = *(a1 + 806);
    v15 = v54;
    v16 = v53 + 8;
  }

  v53 = v16;
  v17 = v16 + 8;
  if (v16 + 8 <= v15)
  {
    *(v52 + v16) = *(a1 + 804);
    v15 = v54;
    v17 = v53 + 8;
  }

  v53 = v17;
  v18 = v17 + 8;
  if (v17 + 8 <= v15)
  {
    *(v52 + v17) = *(a1 + 800);
    v15 = v54;
    v18 = v53 + 8;
  }

  v53 = v18;
  v19 = v18 + 8;
  if (v18 + 8 <= v15)
  {
    *(v52 + v18) = *(a1 + 814);
    v15 = v54;
    v19 = v53 + 8;
  }

  v53 = v19;
  v20 = v19 + 8;
  if (v19 + 8 <= v15)
  {
    *(v52 + v19) = *(a1 + 812);
    v15 = v54;
    v20 = v53 + 8;
  }

  v53 = v20;
  v21 = v20 + 8;
  if (v20 + 8 <= v15)
  {
    *(v52 + v20) = *(a1 + 810);
    v15 = v54;
    v21 = v53 + 8;
  }

  v53 = v21;
  v22 = v21 + 8;
  if (v21 + 8 <= v15)
  {
    *(v52 + v21) = *(a1 + 808);
    v15 = v54;
    v22 = v53 + 8;
  }

  v53 = v22;
  v23 = v22 + 8;
  if (v22 + 8 <= v15)
  {
    *(v52 + v22) = *(a1 + 816);
    v15 = v54;
    v23 = v53 + 8;
  }

  v53 = v23;
  v24 = *(a1 + 768);
  v25 = v23 + 8;
  if (v23 + 8 <= v15)
  {
    *(v52 + v23) = v24;
    v25 = v53 + 8;
    v24 = *(a1 + 768);
  }

  v53 = v25;
  if ((v24 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v26 = 0;
    do
    {
      v27 = v25 + 4;
      v28 = v54;
      if (v25 + 4 <= v54)
      {
        *(v52 + v25) = *(*(a1 + 760) + 4 * v26);
        v28 = v54;
        v27 = v53 + 4;
      }

      v53 = v27;
      if (v28 > v27)
      {
        if (v28 - v27 >= 4)
        {
          v29 = 4;
        }

        else
        {
          v29 = v28 - v27;
        }

        bzero(v52 + v27, v29);
        v27 = v53;
      }

      v25 = v27 + 4;
      v53 = v27 + 4;
      ++v26;
    }

    while (v26 < 2 * *(a1 + 768));
  }

  v30 = v25 + 8;
  v31 = v54;
  if (v25 + 8 <= v54)
  {
    *(v52 + v25) = *(a1 + 756);
    v31 = v54;
    v30 = v53 + 8;
  }

  v53 = v30;
  v32 = v30 + 8;
  if (v30 + 8 <= v31)
  {
    *(v52 + v30) = *(a1 + 818);
    v32 = v53 + 8;
  }

  v53 = v32;
  v50 = *(a1 + 784);
  v33 = &dword_8;
  v34 = find_entry(a4, &v50, 8uLL, 0);
  if (*v34)
  {
    v35 = *(*v34 + 32);
    if (v35)
    {
      v36 = atomic_load((v35 + 56));
      v33 = (v35 + (~(v36 >> 2) & 8));
    }

    else
    {
      v33 = &dword_8;
    }
  }

  v37 = v54;
  v38 = v53 + 8;
  if (v53 + 8 <= v54)
  {
    *(v52 + v53) = *v33;
    v37 = v54;
    v38 = v53 + 8;
  }

  v53 = v38;
  v39 = v38 + 8;
  if (v38 + 8 <= v37)
  {
    *(v52 + v38) = *(a1 + 817);
    v37 = v54;
    v39 = v53 + 8;
  }

  v53 = v39;
  v40 = v39 + 8;
  if (v39 + 8 <= v37)
  {
    *(v52 + v39) = *(a1 + 776);
    v37 = v54;
    v40 = v53 + 8;
  }

  v53 = v40;
  v41 = v40 + 8;
  if (v40 + 8 <= v37)
  {
    *(v52 + v40) = *(a1 + 819);
    v41 = v53 + 8;
  }

  v42 = 0;
  v53 = v41;
  v43 = (a1 + 512);
  do
  {
    if (v43[2])
    {
      v44 = v53 + 8;
      if (v53 + 8 <= v54)
      {
        *(v52 + v53) = v42;
        v44 = v53 + 8;
      }

      v53 = v44;
      SaveDYMTLRenderPassSampleBufferAttachmentDescriptor(&v52, v43, a4);
    }

    ++v42;
    v43 += 5;
  }

  while (v42 != 4);
  v45 = v54;
  v46 = v53 + 8;
  if (v53 + 8 <= v54)
  {
    *(v52 + v53) = -1;
    v45 = v54;
    v46 = v53 + 8;
  }

  v53 = v46;
  v47 = v46 + 8;
  if (v46 + 8 <= v45)
  {
    *(v52 + v46) = *(a1 + 820);
    v45 = v54;
    v47 = v53 + 8;
  }

  v53 = v47;
  v48 = v47 + 8;
  if (v47 + 8 <= v45)
  {
    *(v52 + v47) = *(a1 + 822);
    v45 = v54;
    v48 = v53 + 8;
  }

  v53 = v48;
  result = v48 + 8;
  if (v48 + 8 <= v45)
  {
    *(v52 + v48) = *(a1 + 821);
    return v53 + 8;
  }

  return result;
}

size_t DecodeDYMTLRenderPipelineDescriptor(uint64_t a1, uint64_t *a2, void *a3, int a4, uint64_t a5)
{
  v100[1] = a2;
  memcpy(__dst, &GTMTLRenderPipelineDescriptorDefaults, sizeof(__dst));
  v9 = *a1;
  __dst[162] = *(a1 + 8);
  v10 = *(a1 + 16);
  v100[0] = (a1 + 24);
  __dst[147] = v10;
  MakeDYMTLVertexDescriptor(v100, __dst, v11, v9, a4);
  __dst[159] = *v100[0];
  __dst[161] = v100[0][1];
  HIDWORD(__dst[166]) = *(v100[0] + 4);
  LOBYTE(__dst[185]) = v100[0][3];
  BYTE1(__dst[185]) = v100[0][4];
  BYTE6(__dst[186]) = v100[0][5];
  WORD2(__dst[167]) = v100[0][6];
  LOWORD(__dst[169]) = v100[0][7];
  v12 = v100[0][8];
  v13 = v100[0] + 9;
  if (v12)
  {
    v14 = &__dst[94] + 2;
    do
    {
      if (a4)
      {
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[2];
        v18 = v13[3];
        v19 = v13[4];
        v20 = v13[5];
        v21 = v13[6];
        v22 = v13[7];
        *(v14 - 5) = v13[8];
        *(v14 - 8) = v21;
        *(v14 - 7) = v15;
        *(v14 - 6) = v20;
        *(v14 - 5) = v17;
        *(v14 - 4) = v18;
        *(v14 - 3) = v19;
        *(v14 - 2) = v16;
        *(v14 - 1) = v22;
        *v14 = 0;
        *(v14 + 2) = 0;
      }

      v13 += 9;
      v14 += 16;
      --v12;
    }

    while (v12);
    v100[0] = v13;
  }

  result = strlen(v13);
  v100[0] = (v13 + (result & 0xFFFFFFFFFFFFFFF8) + 8);
  v24 = *v13;
  if (!*v13)
  {
    v13 = 0;
  }

  if (v24)
  {
    result = strlen(v13);
    v25 = a3 + 74;
    v26 = a3[74];
    v27 = result + 1;
    if (result != -1)
    {
      v28 = a3[74];
      goto LABEL_14;
    }
  }

  else
  {
    v25 = a3 + 74;
    v26 = a3[74];
  }

  v27 = 0;
  v28 = 0;
LABEL_14:
  *v25 = v26 + v27;
  if (a4)
  {
    result = memcpy(v28, v13, v27);
  }

  __dst[150] = v28;
  if (v9 > 6)
  {
    v29 = v100[0];
    BYTE6(__dst[185]) = *v100[0];
    if (v9 >= 9)
    {
      BYTE2(__dst[188]) = v100[0][1];
      __dst[151] = v100[0][2];
      HIBYTE(__dst[187]) = v100[0][3];
      BYTE6(__dst[187]) = v100[0][4];
      BYTE5(__dst[187]) = v100[0][5];
      v30 = v100[0][6];
      v100[0] += 6;
      LOBYTE(__dst[188]) = v30;
      BYTE1(__dst[188]) = v29[7];
      if (v9 >= 0x12)
      {
        v31 = v29[8];
        v32 = v29 + 9;
        if (v31)
        {
          v33 = &__dst[180] + 7;
          do
          {
            if (a4)
            {
              *v33 = *v32;
            }

            ++v32;
            ++v33;
            --v31;
          }

          while (v31);
        }

        v36 = *v32;
        v34 = v32 + 1;
        v35 = v36;
        v100[0] = v34;
        if (v36)
        {
          v37 = &__dst[169] + 2;
          do
          {
            v39 = *v34++;
            v38 = v39;
            v100[0] = v34;
            if (a4)
            {
              *v37 = v38;
            }

            ++v37;
            --v35;
          }

          while (v35);
        }

        if (v9 >= 0x17)
        {
          BYTE4(__dst[187]) = *v34;
          if (v9 >= 0x20)
          {
            BYTE4(__dst[188]) = v34[1];
            v40 = v34[2];
            v100[0] = v34 + 2;
            LODWORD(__dst[166]) = v40;
            if (v9 >= 0x26)
            {
              __dst[158] = v34[3];
              if (v9 != 38)
              {
                HIBYTE(__dst[185]) = v34[4];
                HIBYTE(__dst[184]) = v34[5];
                LODWORD(__dst[167]) = v34[6];
                HIDWORD(__dst[165]) = v34[7];
                LOBYTE(__dst[186]) = v34[8];
                BYTE2(__dst[186]) = v34[9];
                BYTE3(__dst[186]) = v34[10];
                BYTE4(__dst[186]) = v34[11];
                BYTE3(__dst[188]) = v34[12];
                BYTE6(__dst[184]) = v34[13];
                BYTE5(__dst[186]) = v34[14];
                BYTE2(__dst[185]) = v34[15];
                if (v9 >= 0x29)
                {
                  __dst[160] = v34[16];
                  if (v9 != 41)
                  {
                    __dst[145] = v34[17];
                    __dst[146] = v34[18];
                    HIBYTE(__dst[186]) = v34[19];
                    BYTE1(__dst[186]) = v34[20];
                    BYTE4(__dst[185]) = v34[21];
                    BYTE5(__dst[185]) = v34[22];
                    v41 = v34[23];
                    v42 = v34 + 24;
                    v43 = (v34 + ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 192);
                    v100[0] = v43;
                    if (v41)
                    {
                      v44 = a3[74];
                    }

                    else
                    {
                      v44 = 0;
                    }

                    v45 = (a3[74] + v41);
                    a3[74] = v45;
                    if (a4)
                    {
                      if (v41)
                      {
                        v46 = v42;
                      }

                      else
                      {
                        v46 = 0;
                      }

                      result = memcpy(v44, v46, v41);
                      v45 = a3[74];
                    }

                    __dst[143] = v44;
                    __dst[144] = v41;
                    v49 = *v43;
                    v48 = v43 + 1;
                    v47 = v49;
                    v50 = (v48 + ((v49 + 7) & 0xFFFFFFFFFFFFFFF8));
                    v100[0] = v50;
                    if (v49)
                    {
                      v51 = v45;
                    }

                    else
                    {
                      v51 = 0;
                    }

                    a3[74] = &v45[v47];
                    if (a4)
                    {
                      if (v47)
                      {
                        v52 = v48;
                      }

                      else
                      {
                        v52 = 0;
                      }

                      result = memcpy(v51, v52, v47);
                    }

                    __dst[141] = v51;
                    __dst[142] = v47;
                    if (v9 >= 0x33)
                    {
                      v55 = *v50;
                      v54 = v50 + 1;
                      v53 = v55;
                      v100[0] = v54;
                      __dst[164] = v55;
                      if (v55)
                      {
                        v56 = 0;
                        v57 = a3[72];
                        __dst[163] = v57;
                        do
                        {
                          v59 = *v54++;
                          v58 = v59;
                          v100[0] = v54;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetStream_19685(a5, v58);
                              if (result)
                              {
                                v58 = *result;
                              }

                              else
                              {
                                v58 = 0;
                              }
                            }

                            v57 = a3[72];
                            *v57 = v58;
                            v53 = __dst[164];
                          }

                          a3[72] = ++v57;
                          ++v56;
                        }

                        while (v53 > v56);
                      }

                      else
                      {
                        __dst[163] = 0;
                      }

                      v60 = *v54;
                      v100[0] = v54 + 1;
                      __dst[149] = v60;
                      if (v60)
                      {
                        v61 = 0;
                        v62 = a3[72];
                        __dst[148] = v62;
                        v63 = v54 + 2;
                        do
                        {
                          v64 = *(v63 - 1);
                          v100[0] = v63;
                          if (a4)
                          {
                            if (a5)
                            {
                              result = GetStream_19685(a5, v64);
                              if (result)
                              {
                                v64 = *result;
                              }

                              else
                              {
                                v64 = 0;
                              }
                            }

                            v62 = a3[72];
                            *v62 = v64;
                            v60 = __dst[149];
                          }

                          ++v63;
                          a3[72] = ++v62;
                          ++v61;
                        }

                        while (v60 > v61);
                      }

                      else
                      {
                        __dst[148] = 0;
                      }

                      if (v9 >= 0x37)
                      {
                        MakeDYMTLLinkedFunctions(v100, &__dst[133], a3, v9, a4, a5);
                        result = MakeDYMTLLinkedFunctions(v100, &__dst[109], a3, v9, a4, a5);
                        if (v9 >= 0x3C)
                        {
                          __dst[155] = *v100[0];
                          __dst[152] = v100[0][1];
                          v65 = v100[0][2];
                          v66 = v100[0] + 3;
                          if (v65)
                          {
                            v67 = &__dst[177];
                            do
                            {
                              if (a4)
                              {
                                *v67 = *v66;
                              }

                              ++v66;
                              ++v67;
                              --v65;
                            }

                            while (v65);
                          }

                          v70 = *v66;
                          v69 = v66 + 1;
                          v68 = v70;
                          v100[0] = v69;
                          if (v70)
                          {
                            v71 = &__dst[173] + 1;
                            do
                            {
                              v73 = *v69++;
                              v72 = v73;
                              v100[0] = v69;
                              if (a4)
                              {
                                *v71 = v72;
                              }

                              ++v71;
                              --v68;
                            }

                            while (v68);
                          }

                          v76 = *v69;
                          v75 = v69 + 1;
                          v74 = v76;
                          v100[0] = v75;
                          __dst[157] = v76;
                          if (v76)
                          {
                            v77 = 0;
                            v78 = a3[72];
                            __dst[156] = v78;
                            do
                            {
                              v80 = *v75++;
                              v79 = v80;
                              v100[0] = v75;
                              if (a4)
                              {
                                if (a5)
                                {
                                  Stream_19685 = GetStream_19685(a5, v79);
                                  if (Stream_19685)
                                  {
                                    v79 = *Stream_19685;
                                  }

                                  else
                                  {
                                    v79 = 0;
                                  }
                                }

                                v78 = a3[72];
                                *v78 = v79;
                                v74 = __dst[157];
                              }

                              a3[72] = ++v78;
                              ++v77;
                            }

                            while (v74 > v77);
                          }

                          else
                          {
                            __dst[156] = 0;
                          }

                          v82 = *v75;
                          v100[0] = v75 + 1;
                          __dst[154] = v82;
                          if (v82)
                          {
                            v83 = 0;
                            v84 = a3[72];
                            __dst[153] = v84;
                            v85 = v75 + 2;
                            do
                            {
                              v86 = *(v85 - 1);
                              v100[0] = v85;
                              if (a4)
                              {
                                if (a5)
                                {
                                  v87 = GetStream_19685(a5, v86);
                                  if (v87)
                                  {
                                    v86 = *v87;
                                  }

                                  else
                                  {
                                    v86 = 0;
                                  }
                                }

                                v84 = a3[72];
                                *v84 = v86;
                                v82 = __dst[154];
                              }

                              ++v85;
                              a3[72] = ++v84;
                              ++v83;
                            }

                            while (v82 > v83);
                          }

                          else
                          {
                            __dst[153] = 0;
                          }

                          MakeDYMTLLinkedFunctions(v100, &__dst[125], a3, v9, a4, a5);
                          result = MakeDYMTLLinkedFunctions(v100, &__dst[117], a3, v9, a4, a5);
                          if (v9 >= 0x42)
                          {
                            BYTE3(__dst[187]) = *v100[0];
                            LOBYTE(__dst[187]) = v100[0][1];
                            BYTE2(__dst[187]) = v100[0][2];
                            BYTE1(__dst[187]) = v100[0][3];
                            if (v9 >= 0x44)
                            {
                              LODWORD(__dst[165]) = v100[0][4];
                              if (v9 != 68)
                              {
                                HIWORD(__dst[168]) = v100[0][5];
                                LOWORD(__dst[168]) = v100[0][6];
                                WORD2(__dst[168]) = v100[0][7];
                                WORD1(__dst[168]) = v100[0][8];
                                if (v9 >= 0x4B)
                                {
                                  HIWORD(__dst[167]) = v100[0][9];
                                  if (v9 >= 0x6F)
                                  {
                                    BYTE3(__dst[185]) = v100[0][10];
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (BYTE6(__dst[185]) == 255)
  {
    BYTE6(__dst[185]) = 0;
  }

  if (LODWORD(__dst[166]) == -1)
  {
    BYTE4(__dst[188]) = 0;
    LODWORD(__dst[166]) = 1;
  }

  v88 = a3[38];
  a3[38] = v88 + 1512;
  if (a4)
  {
    if (a5)
    {
      v89 = GetStream_19685(a5, __dst[162]);
      if (v89)
      {
        v90 = *v89;
      }

      else
      {
        v90 = 0;
      }

      __dst[162] = v90;
      v92 = GetStream_19685(a5, __dst[147]);
      if (v92)
      {
        v93 = *v92;
      }

      else
      {
        v93 = 0;
      }

      __dst[147] = v93;
      v94 = GetStream_19685(a5, __dst[158]);
      if (v94)
      {
        v95 = *v94;
      }

      else
      {
        v95 = 0;
      }

      __dst[158] = v95;
      v96 = GetStream_19685(a5, __dst[155]);
      if (v96)
      {
        v97 = *v96;
      }

      else
      {
        v97 = 0;
      }

      __dst[155] = v97;
      v91 = GetStream_19685(a5, __dst[152]);
      if (!v91)
      {
        v98 = 0;
        goto LABEL_136;
      }
    }

    else
    {
      v91 = &__dst[152];
    }

    v98 = *v91;
LABEL_136:
    __dst[152] = v98;
    return memcpy(v88, __dst, 0x5E8uLL);
  }

  return result;
}