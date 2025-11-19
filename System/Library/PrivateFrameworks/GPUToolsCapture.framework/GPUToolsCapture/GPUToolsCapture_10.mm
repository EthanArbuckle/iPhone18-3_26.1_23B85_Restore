char *GTMTLSMResidencySet_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == -15245)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v7 = *a3;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, v6[24], a2);
    *(v5 + 5) = *v6;
    *(v5 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMIOHandle_processTraceFuncWithPool(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15261)
  {
    if (v6 == -15260)
    {
LABEL_8:
      v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 8) = *(v11 + 1);
      *(v5 + 16) = v8;
      *(v5 + 4) = *(a3 + 8);
      v9 = g_loadURLAsMemHeader;
      v10 = v11[32];
      goto LABEL_9;
    }

    if (v6 != -15259)
    {
      return result;
    }
  }

  else if (v6 != -15348)
  {
    if (v6 != -15296)
    {
      return result;
    }

    goto LABEL_8;
  }

  v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
  v8 = *a3;
  *(v5 + 8) = *(v7 + 1);
  *(v5 + 16) = v8;
  *(v5 + 4) = *(a3 + 8);
  v9 = g_loadURLAsMemHeader;
  v10 = v7[24];
LABEL_9:
  if (v9 == 1)
  {
    if (v10 < 0x40)
    {
      result = 0;
    }

    else
    {
      result = GTTraceMemPool_findHeader(a2, v8, v10);
    }
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, v10, a2);
  }

  *(v5 + 48) = result;
  return result;
}

char *GTMTLSMTextureViewPool_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -14970)
  {
    if (v6 != -15189)
    {
      if (v6 != -14970)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = result + 16;
      v9 = *(result + 3);
      *(v5 + 10) = 1;
      *(v5 + 11) = v9;
      v10 = *(result + 1);
      goto LABEL_11;
    }

    v13 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v14 = *a3;
    *(v5 + 1) = *(v13 + 1);
    *(v5 + 2) = v14;
    *(v5 + 1) = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, v13[24], a2);
    *(v5 + 5) = *v13;
    *(v5 + 6) = result;
    *(v5 + 7) = *result;
  }

  else
  {
    if (v6 == -14969)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = result + 8;
      v8 = *(result + 4);
LABEL_10:
      *(v5 + 10) = 1;
      *(v5 + 11) = v8;
      v10 = *(result + 2);
LABEL_11:
      *(v5 + 12) = v10;
      ++*(v5 + 8);
      *(v5 + 9) = v7;
      return result;
    }

    if (v6 != -14855)
    {
      if (v6 != -14802)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = result + 8;
      v8 = *(result + 6);
      goto LABEL_10;
    }

    v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v11[56], a2);
    *(v5 + 10) = *(v11 + 6);
    v12 = *(v11 + 1);
    *(v5 + 11) = *(v11 + 3);
    *(v5 + 12) = v12;
    ++*(v5 + 8);
    *(v5 + 9) = result;
  }

  return result;
}

uint64_t GTMTLRenderPipelineState_descriptorType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  GTMTLRenderPipelineState_rootPipeline(v4, a1, a2, a3);
  return GTMTLSMRenderPipelineState_renderPipelineDescriptorType(0, v4);
}

char *GTMTLRenderPipelineState_rootPipeline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 432) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 71;
  *(a1 + 24) = -1;
  *(a1 + 120) = -1;
  v7 = *(a2 + 32);
  v8 = (v7 + 64);
  while (*(v7 + 72) == -15461)
  {
    v10 = GTTraceFunc_targetContext(v8, a4);
    v7 = *(*(*find_entry(a3, &v10, 8uLL, 0) + 32) + 32);
    v8 = (v7 + 64);
  }

  return GTMTLSMRenderPipelineState_processTraceFuncWithMap(a1, a4, v8);
}

uint64_t GTMTLRenderPipelineState_partialDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
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
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  GTMTLRenderPipelineState_rootPipeline(v4, a1, a2, a3);
  return v5;
}

uint64_t GTMTLRenderPipelineState_partialTileDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  GTMTLRenderPipelineState_rootPipeline(v4, a1, a2, a3);
  return v5;
}

uint64_t GTMTLRenderPipelineState_partialMeshDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  GTMTLRenderPipelineState_rootPipeline(v4, a1, a2, a3);
  return *(&v5 + 1);
}

uint64_t GTMTLComputePipelineState_computeFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0u;
  v12 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  LODWORD(v11) = 29;
  v13 = -1;
  v17 = -1;
  v4 = *(a1 + 32);
  v5 = (v4 + 64);
  if (*(v4 + 72) == -15541)
  {
    do
    {
      v10 = GTTraceFunc_targetContext(v5, a3);
      v7 = *(*(*find_entry(a2, &v10, 8uLL, 0) + 32) + 32);
      v5 = (v7 + 64);
    }

    while (*(v7 + 72) == -15541);
  }

  GTMTLSMComputePipelineState_processTraceFuncWithMap(&v11, a3, v5);
  if (*(&v15[0] + 1))
  {
    v8 = (*(&v15[0] + 1) + 848);
  }

  else
  {
    v8 = v15;
  }

  return *v8;
}

void *GTMTLSMRenderPipelineState_resourceAccess@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v15 = 0;
  v17 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v8 = 0;
  v10 = 0u;
  v7 = 0u;
  LODWORD(v7) = 71;
  v9 = -1;
  v16 = -1;
  if (a1 && (v4 = *(a1 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMRenderPipelineState_processTraceFuncWithMap(&v7, a2, v5);
  return memcpy(a3, v18, 0x118uLL);
}

double GTMTLSMComputePipelineState_resourceAccess@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = 0u;
  v9 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = 0u;
  v16 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  LODWORD(v8) = 29;
  v10 = -1;
  v17 = -1;
  if (a1 && (v4 = *(a1 + 32)) != 0 && (*(v4 + 79) & 8) != 0)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = 0;
  }

  GTMTLSMComputePipelineState_processTraceFuncWithMap(&v8, a2, v5);
  v6 = v20;
  *a3 = v19;
  *(a3 + 16) = v6;
  result = *&v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v22;
  return result;
}

uint64_t GTMTLSMObject_compare(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *GTMTLSMObject_objectAtIndex(void *a1, unint64_t a2)
{
  for (i = 0; a1; i = v3)
  {
    if (a1[2] > a2 || (v3 = a1, a1[3] <= a2))
    {
      if (i)
      {
        return i;
      }

      v3 = 0;
    }

    a1 = a1[4];
  }

  return i;
}

uint64_t GTMTLSMObject_lastObject(uint64_t result, unint64_t a2)
{
  for (; result; result = *(result + 32))
  {
    if (*(result + 16) <= a2)
    {
      break;
    }
  }

  return result;
}

double GTMTLSMBuffer_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 164) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 22;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  *(a1 + 120) = -1;
  return result;
}

double GTMTLSMTensor_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 260) = 0u;
  *a1 = 101;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  return result;
}

double GTMTLSMTexture_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 80;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  *(a1 + 224) = 0xFFFFFFFFLL;
  return result;
}

double GTMTLSMCounterSampleBuffer_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 31;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMDrawable_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 2;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMLayer_init(uint64_t a1)
{
  *(a1 + 276) = 0;
  result = 0.0;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 260) = 0u;
  *a1 = 3;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMIndirectCommandBuffer_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 57;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  return result;
}

double GTMTLSMHeap_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 50;
  *(a1 + 24) = -1;
  *(a1 + 88) = 2;
  return result;
}

double GTMTLSMDepthStencilState_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 34;
  *(a1 + 24) = -1;
  *(a1 + 64) = -1;
  return result;
}

double GTMTLSMSamplerState_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 75;
  *(a1 + 24) = -1;
  *(a1 + 64) = -1;
  return result;
}

double GTMTLSMEvent_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 38;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMSharedEvent_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 76;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMLateEvalEvent_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 61;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMFence_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 41;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMRenderPipelineState_init(uint64_t a1)
{
  *(a1 + 436) = 0;
  result = 0.0;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 404) = 0u;
  *(a1 + 420) = 0u;
  *(a1 + 372) = 0u;
  *(a1 + 388) = 0u;
  *(a1 + 340) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 260) = 0u;
  *a1 = 71;
  *(a1 + 24) = -1;
  *(a1 + 120) = -1;
  return result;
}

double GTMTLSMComputePipelineState_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 29;
  *(a1 + 24) = -1;
  *(a1 + 120) = -1;
  return result;
}

double GTMTL4SMMachineLearningPipelineState_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 106;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMMotionEstimationPipelineState_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 64;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMFunction_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 132) = 0;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 43;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMLibrary_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 180) = 0;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 62;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMDynamicLibrary_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 116) = 0;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 37;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMPipelineLibrary_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 84) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 67;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMCommandQueue_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 27;
  *(a1 + 24) = -1;
  *(a1 + 76) = 1;
  *(a1 + 72) = 769;
  return result;
}

double GTMTL4SMCommandQueue_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 92;
  *(a1 + 24) = -1;
  return result;
}

double GTMTL4SMCommandAllocator_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 90;
  *(a1 + 24) = -1;
  return result;
}

void GTMTL4SMArgumentTable_init(uint64_t a1)
{
  bzero((a1 + 4), 0x6B4uLL);
  *a1 = 88;
  *(a1 + 24) = -1;
}

BOOL GTMTL4SMArgumentTable_bufferBindingsMatch(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = 0;
  if (a2)
  {
    if (*(*(a2 + 48) + 8) > a3)
    {
      v3 = a1 + 8 * a3;
      v4 = a2 + 8 * a3;
      if (*(v3 + 64) == *(v4 + 64))
      {
        v5 = a1 + 8 * (a3 >> 6);
        v6 = 1 << a3;
        v7 = a2 + 8 * (a3 >> 6);
        if (((*(v5 + 56) & (1 << a3)) != 0) == ((*(v7 + 56) & (1 << a3)) != 0))
        {
          v8 = *(v5 + 312) & v6;
          if ((v8 != 0) == ((*(v7 + 312) & v6) != 0) && (!v8 || *(v3 + 320) == *(v4 + 320)))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

double GTMTL4SMCompiler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 93;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMIOCommandQueue_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 52;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMDevice_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 36;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMIndirectComputeCommand_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 58;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMIndirectRenderCommand_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 59;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMRasterizationRateMap_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 68;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMResourceGroup_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 73;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMAccelerationStructure_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 212) = 0;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 16;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  return result;
}

double GTMTLSMIntersectionFunctionTable_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 60;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  return result;
}

void GTMTLSMIntersectionFunctionTableStateful_init(uint64_t a1)
{
  bzero((a1 + 4), 0x3A4uLL);
  *a1 = 60;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
}

double GTMTLSMFilter_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 15;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMFunctionHandle_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 44;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMVisibleFunctionTable_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 180) = 0;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 83;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMVisibleFunctionTableStateful_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 196) = 0;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 83;
  *(a1 + 24) = -1;
  *(a1 + 106) = 2;
  *(a1 + 80) = -1;
  return result;
}

double GTMTLFXSMSpatialScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 39;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLFXSMTemporalScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 40;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLFXSMFrameInterpolator_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 148) = 0;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 103;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLFXSMTemporalDenoisedScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 320) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 260) = 0u;
  *(a1 + 276) = 0u;
  *a1 = 104;
  *(a1 + 24) = -1;
  return result;
}

double GTMTL4FXSMSpatialScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 108;
  *(a1 + 24) = -1;
  return result;
}

double GTMTL4FXSMTemporalScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 164) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 109;
  *(a1 + 24) = -1;
  return result;
}

double GTMTL4FXSMFrameInterpolator_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 164) = 0;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 107;
  *(a1 + 24) = -1;
  return result;
}

double GTMTL4FXSMTemporalDenoisedScaler_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 212) = 0u;
  *(a1 + 196) = 0u;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 308) = 0u;
  *(a1 + 324) = 0u;
  *(a1 + 276) = 0u;
  *(a1 + 292) = 0u;
  *(a1 + 260) = 0u;
  *a1 = 110;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMResidencySet_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 72;
  *(a1 + 24) = -1;
  return result;
}

apr_hash_t *GTMTLSMResidencySetAllocations_init(apr_hash_t **a1, apr_pool_t *pool)
{
  a1[1] = apr_hash_make(pool);
  result = apr_hash_make(pool);
  *a1 = result;
  return result;
}

void GTMTLSMResidencySetAllocations_reset(apr_hash_t **a1)
{
  apr_hash_clear(a1[1]);
  v2 = *a1;

  apr_hash_clear(v2);
}

double GTMTLSMTextureViewPool_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 100) = 0;
  *(a1 + 84) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 100;
  *(a1 + 24) = -1;
  return result;
}

double GTMTLSMIOFileHandle_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 53;
  *(a1 + 24) = -1;
  return result;
}

_OWORD *fbstream_open(uint64_t a1, uint64_t a2, apr_pool_t *a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = apr_palloc(a3, 0x20uLL);
  v8 = v7;
  if (v7)
  {
    *v7 = 0u;
    v7[1] = 0u;
  }

  v9 = *(a3 + 5);
  if (v9)
  {
    *(a3 + 5) = *v9;
  }

  else
  {
    v9 = apr_palloc(a3, 0x20uLL);
  }

  v9[1] = v8;
  v9[2] = fbstream_cleanup;
  v9[3] = apr_pool_cleanup_null;
  *v9 = *(a3 + 4);
  *(a3 + 4) = v9;
  v10 = [NSString stringWithUTF8String:a2];
  *v8 = a3;
  v11 = [NSMutableData dataWithCapacity:4096];
  v12 = *(v8 + 1);
  *(v8 + 1) = v11;

  objc_storeStrong(v8 + 2, v10);
  *(v8 + 3) = a1;
  v15 = 0x4005053544DLL;
  v13 = objc_autoreleasePoolPush();
  [*(v8 + 1) appendBytes:&v15 length:8];
  objc_autoreleasePoolPop(v13);

  objc_autoreleasePoolPop(v6);
  return v8;
}

uint64_t fbstream_cleanup(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  GTCaptureArchive_addFile(*(a1 + 24), [*(a1 + 16) UTF8String], objc_msgSend(*(a1 + 8), "bytes"), objc_msgSend(*(a1 + 8), "length"), 0, v4);
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;

  return 0;
}

void fbstream_write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  [*(a1 + 8) appendBytes:a2 length:a3];

  objc_autoreleasePoolPop(v6);
}

uint64_t fbstream_close(apr_pool_t **data)
{
  apr_pool_cleanup_kill(*data, data, fbstream_cleanup);

  return fbstream_cleanup(data);
}

char *CopyFilePath(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a2 + 768);
  v6 = *(a2 + 776);
  v7 = *v6;
  Data = GTCaptureArchive_readData(v5, v6, a3, *v6, 0);
  GTMTLCaptureState_storePointer(a1, a3, Data, v9);
  apr_pool_clear(v7);
  return a3;
}

void WriteTextureInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v11 = 0u;
    v12 = 0u;
    v8.i32[0] = 80;
    v10 = -1;
    WORD5(v15) = 2;
    v14 = 0xFFFFFFFFFFFFFFFFLL;
    v23 = 0xFFFFFFFFLL;
    GTMTLSMTexture_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteTextureInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void *name_array(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a3;
    v8 = a1;
    do
    {
      v9 = *a2++;
      v15 = v9;
      entry = find_entry(a4, &v15, 8uLL, 0);
      if (*entry && (v11 = *(*entry + 32)) != 0)
      {
        v12 = atomic_load((v11 + 56));
        v13 = (v11 + (~(v12 >> 2) & 8));
      }

      else
      {
        v13 = &dword_8;
      }

      *v8++ = *v13;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void FlushChainedComputePipelineStateInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = 0u;
    v16 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    LODWORD(v8) = 29;
    v10 = -1;
    v17 = -1;
    GTMTLSMComputePipelineState_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedComputePipelineStateInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void FlushChainedDynamicLibraryInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 37;
    v10 = -1;
    GTMTLSMDynamicLibrary_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedDynamicLibraryInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void FlushChainedLibraryInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 62;
    v10 = -1;
    GTMTLSMLibrary_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedLibraryInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void FlushChainedMachineLearningPipelineStateInfo_(__int128 *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v11 = 0u;
    v12 = 0u;
    LODWORD(v8) = 106;
    v10 = -1;
    GTMTL4SMMachineLearningPipelineState_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedMachineLearningPipelineStateInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void FlushChainedRenderPipelineStateInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
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
    v16 = 0;
    v18 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v9 = 0;
    v11 = 0u;
    v8 = 0u;
    LODWORD(v8) = 71;
    v10 = -1;
    v17 = -1;
    GTMTLSMRenderPipelineState_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedRenderPipelineStateInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteFunctionHandleInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v8.i32[0] = 44;
    v10 = -1;
    GTMTLSMFunctionHandle_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteFunctionHandleInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteIntersectionFunctionTableInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 60;
    v10 = -1;
    WORD5(v15) = 2;
    v14 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteIntersectionFunctionTableInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteVisibleFunctionTableInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 83;
    v10 = -1;
    GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteVisibleFunctionTableInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteAccelerationStructureInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 16;
    v10 = -1;
    WORD5(v15) = 2;
    v14 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMAccelerationStructure_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteAccelerationStructureInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteBufferInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v15 = 0u;
    v16 = 0;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v13 = 0u;
    v11 = 0u;
    v12 = 0u;
    LODWORD(v8) = 22;
    v10 = -1;
    WORD5(v15) = 2;
    v14 = 0xFFFFFFFFFFFFFFFFLL;
    v17 = -1;
    GTMTLSMBuffer_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteBufferInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteDepthStencilStateInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v12 = 0u;
    v11 = 0u;
    LODWORD(v8) = 34;
    v10 = -1;
    v13 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMDepthStencilState_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteDepthStencilStateInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void FlushChainedFunctionInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    LODWORD(v8) = 43;
    v10 = -1;
    GTMTLSMFunction_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedFunctionInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteIndirectCommandBufferInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    v8.i32[0] = 57;
    v10 = -1;
    WORD5(v15) = 2;
    v14 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMIndirectCommandBuffer_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteIndirectCommandBufferInfo(a1, &v8, *(a2 + 16), a4);
  }
}

void WriteSamplerStateInfo_(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v12 = 0u;
    v11 = 0u;
    LODWORD(v8) = 75;
    v10 = -1;
    v14 = 0;
    v13 = 0xFFFFFFFFFFFFFFFFLL;
    GTMTLSMSamplerState_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    WriteSamplerStateInfo(a1, &v8, *(a2 + 16), a4);
  }
}

char *LibraryURL(uint64_t a1, unsigned int a2)
{
  v3 = GTTraceFunc_argumentBytesWithMap(*(a1 + 16), a2, *(a1 + 32));
  v4 = GTString_endsWith(v3, ".mtlpackage");
  v5 = *(a1 + 24);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  if (!v4)
  {
    return SaveFileWithURL(v5, v3, v8, 0, 1);
  }

  v6 = v8;
  SaveDirPath(v5, v3, v8, 1);
  return v6;
}

void FlushChainedPipelineLibraryInfo_(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), *(a2 + 24)))
  {
    v8 = 0u;
    v9 = 0;
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    LODWORD(v8) = 67;
    v10 = -1;
    GTMTLSMPipelineLibrary_processTraceFuncWithMap(&v8, *(a2 + 24), a3);
    FlushChainedPipelineLibraryInfo(a1, &v8, *(a2 + 16), a4);
  }
}

uint64_t CommandQueueForCommandBuffer(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 + 16343) < 2 || v2 == -15333 || v2 == -15701)
  {
    return *GTTraceFunc_argumentBytesWithPool(a2, *(a2 + 13), a1);
  }

  else
  {
    return 0;
  }
}

void GTTraceDump_writeCaptureDescriptor(void *a1, uint64_t a2, apr_pool_t *a3)
{
  v5 = a1[2];
  v6 = a1[3];
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 16) = v5;
  *(v5 + 40) = 0;
  v7 = apr_hash_next((v5 + 16));
  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v7 + 1) + 32);
      if (v9)
      {
        v10 = *(v9 + 32);
        if (v10)
        {
          if ((*(v10 + 79) & 8) != 0 && *(v10 + 72) == -10151)
          {
            v11 = 0;
            while (1)
            {
              v12 = atomic_load((v10 + 4));
              v13 = v11 + (v12 >> 6) - 1;
              if (v13 > 1)
              {
                break;
              }

              v10 = *(v10 + 40);
              v11 = v13;
              if (!v10)
              {
                v11 = v13;
                goto LABEL_12;
              }
            }

            v13 = 1;
LABEL_12:
            v14 = v11 | (v13 << 32);
            while (v10)
            {
              v15 = v10 + 64 + ((HIDWORD(v14) - v14) << 6);
              if ((*(v15 + 15) & 8) == 0)
              {
                break;
              }

              if (*(v15 + 8) == -15736)
              {
                v8 = v10 + 64 + ((HIDWORD(v14) - v14) << 6);
              }

              v16 = atomic_load((v10 + 4));
              v17 = (HIDWORD(v14) + 1);
              v18 = v14 + (v16 >> 6) - 1;
              v14 = (v17 << 32) | v14;
              if (v17 == v18)
              {
                v14 = (v17 << 32) | v17;
                v10 = *(v10 + 40);
              }
            }
          }
        }
      }

      v7 = apr_hash_next(v7);
    }

    while (v7);
    if (v8)
    {
      v19 = GTTraceFunc_argumentBytesWithMap(v8, *(v8 + 13), v6);
      v20 = GTTraceFunc_argumentBytesWithMap(v8, v19[16], v6);
      v21 = EncodeDYMTLCaptureDescriptorInternal(v20, 0, 0, v5);
      v22 = apr_palloc(a3, v21);
      v23 = v22;
      if (v22)
      {
        bzero(v22, v21);
      }

      EncodeDYMTLCaptureDescriptorInternal(v20, v23, v21, v5);
      v24 = a1[4];

      GTMTLCaptureState_storePointer(v24, "MTLCaptureDescriptor", v23, v21);
    }
  }
}

void GTTraceDump_writeCapture(uint64_t a1, uint64_t a2, apr_pool_t *a3, char a4)
{
  v8 = *(a1 + 16);
  v15[0] = *(a1 + 56);
  entry = find_entry(v8, v15, 8uLL, 0);
  if (*entry && (v10 = *(*entry + 32)) != 0)
  {
    v11 = atomic_load((v10 + 56));
    v12 = (v10 + (~(v11 >> 2) & 8));
  }

  else
  {
    v12 = &dword_8;
  }

  v15[0] = *v12;
  v15[1] = apr_palloc(a3, 0x100000uLL);
  v15[2] = 0x100000;
  v15[3] = fbstream_open(*(a2 + 192), "capture", a3);
  v15[4] = a2;
  v15[5] = a3;
  v16 = *(a1 + 668);
  memset(v17, 0, sizeof(v17));
  v13 = GTTraceDispatch_create(a3, a1);
  v14 = a4;
  GTTraceDispatch_sort();
  GTTraceDispatch_boundaries(v13, a2);
  GTTraceDispatch_serialize(v13, v15, &v14);
  apr_pool_destroy(*v13);
}

uint64_t GTTraceDump_writeUnsortedCapture(uint64_t a1, uint64_t a2, apr_pool_t *a3)
{
  v6 = *(a1 + 720);
  v7 = *(a1 + 16);
  v17[0] = *(a1 + 56);
  entry = find_entry(v7, v17, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    v10 = atomic_load((v9 + 56));
    v11 = (v9 + (~(v10 >> 2) & 8));
  }

  else
  {
    v11 = &dword_8;
  }

  v17[0] = *v11;
  v17[1] = apr_palloc(a3, 0x100000uLL);
  v17[2] = 0x100000;
  v12 = fbstream_open(*(a2 + 192), "unsorted-capture", a3);
  data = v12;
  v19 = a2;
  v20 = 0;
  v21 = *(a1 + 668);
  memset(v22, 0, sizeof(v22));
  if (*(v6 + 12) < 1)
  {
    v15 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      GTTraceFuncToFbuf(v17, a1, *(v6 + 24) + v13, 0);
      ++v14;
      v13 += 64;
    }

    while (v14 < *(v6 + 12));
    v15 = data;
  }

  apr_pool_cleanup_kill(*v15, v15, fbstream_cleanup);
  return fbstream_cleanup(v15);
}

BOOL IsAppleInternalLabel(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "com.apple.", 0xAuLL))
    {
      v2 = 0;
      do
      {
        v3 = strcmp((v1 + 10), (&off_2F2C00)[v2]);
        result = v3 != 0;
        if (!v3)
        {
          break;
        }
      }

      while (v2++ != 5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

apr_array_header_t *GTTraceContextDumpGetBoundDownloadRequest(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = apr_array_make(*a1, 16, 456);
  if (*(a1 + 464) >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 64);
    do
    {
      v8 = *(*(v7 + 24) + 8 * v6);
      if (*(a1 + 669) != 1 || !*(v8 + 48))
      {
        v50 = *(v8 + 8);
        entry = find_entry(a2, &v50, 8uLL, 0);
        if (!*entry || !*(*entry + 32))
        {
          v50 = *(v8 + 8);
          v10 = *(*(*find_entry(v4, &v50, 8uLL, 0) + 32) + 8);
          v11 = *(v8 + 8);
          v12 = apr_array_push(v5);
          *v12 = v10;
          *(v12 + 1) = v11;
          *(v12 + 3) = 0;
          *(v12 + 4) = 0;
          *(v12 + 2) = 0;
          *(v12 + 38) = 0;
          v12[46] = 22;
          *(v12 + 63) = 0u;
          *(v12 + 79) = 0u;
          *(v12 + 95) = 0u;
          *(v12 + 111) = 0u;
          *(v12 + 127) = 0u;
          *(v12 + 143) = 0u;
          *(v12 + 159) = 0u;
          *(v12 + 175) = 0u;
          *(v12 + 191) = 0u;
          *(v12 + 207) = 0u;
          *(v12 + 223) = 0u;
          *(v12 + 239) = 0u;
          *(v12 + 255) = 0u;
          v13 = v12 + 440;
          *(v12 + 47) = 0u;
          v12 += 47;
          *(v12 + 14) = 0u;
          *(v12 + 15) = 0u;
          *(v12 + 16) = 0u;
          *(v12 + 17) = 0u;
          *(v12 + 18) = 0u;
          *(v12 + 19) = 0u;
          *(v12 + 20) = 0u;
          *(v12 + 21) = 0u;
          *(v12 + 22) = 0u;
          *(v12 + 23) = 0u;
          *(v12 + 24) = 0u;
          *v13 = 0u;
        }
      }

      ++v6;
    }

    while (v6 < *(a1 + 464));
  }

  if (*(a1 + 468) >= 1)
  {
    v14 = 0;
    v15 = *(a1 + 72);
    do
    {
      v16 = *(*(v15 + 24) + 8 * v14);
      if (!v16[16] && !v16[36])
      {
        v50 = v16[1];
        v17 = find_entry(a2, &v50, 8uLL, 0);
        if (!*v17 || !*(*v17 + 32))
        {
          v50 = v16[1];
          v18 = *(*(*find_entry(v4, &v50, 8uLL, 0) + 32) + 8);
          v19 = v16[1];
          v20 = apr_array_push(v5);
          *v20 = v18;
          *(v20 + 1) = v19;
          *(v20 + 3) = 0;
          *(v20 + 4) = 0;
          *(v20 + 2) = 0;
          *(v20 + 38) = 0;
          v20[46] = 101;
          *(v20 + 63) = 0u;
          *(v20 + 79) = 0u;
          *(v20 + 95) = 0u;
          *(v20 + 111) = 0u;
          *(v20 + 127) = 0u;
          *(v20 + 143) = 0u;
          *(v20 + 159) = 0u;
          *(v20 + 175) = 0u;
          *(v20 + 191) = 0u;
          *(v20 + 207) = 0u;
          *(v20 + 223) = 0u;
          *(v20 + 239) = 0u;
          *(v20 + 255) = 0u;
          v21 = v20 + 440;
          *(v20 + 47) = 0u;
          v20 += 47;
          *(v20 + 14) = 0u;
          *(v20 + 15) = 0u;
          *(v20 + 16) = 0u;
          *(v20 + 17) = 0u;
          *(v20 + 18) = 0u;
          *(v20 + 19) = 0u;
          *(v20 + 20) = 0u;
          *(v20 + 21) = 0u;
          *(v20 + 22) = 0u;
          *(v20 + 23) = 0u;
          *(v20 + 24) = 0u;
          *v21 = 0u;
        }
      }

      ++v14;
    }

    while (v14 < *(a1 + 468));
  }

  if (*(a1 + 472) >= 1)
  {
    v22 = 0;
    v23 = *(a1 + 80);
    do
    {
      v24 = *(*(v23 + 24) + 8 * v22);
      if (!v24[18] && !v24[19] && !v24[25])
      {
        v25 = v24[14];
        if ((!v25 || !*(v25 + 44)) && (*(a1 + 669) != 1 || !v24[6]))
        {
          v50 = v24[1];
          v26 = find_entry(a2, &v50, 8uLL, 0);
          if (!*v26 || !*(*v26 + 32))
          {
            v27 = v24[14];
            if (!v27 || (*(v27 + 36) & 0xF0) != 0x30)
            {
              v50 = v24[1];
              v28 = *(*(*find_entry(v4, &v50, 8uLL, 0) + 32) + 8);
              v29 = v24[1];
              v30 = apr_array_push(v5);
              *v30 = v28;
              *(v30 + 1) = v29;
              *(v30 + 3) = 0;
              *(v30 + 4) = 0;
              *(v30 + 2) = 0;
              *(v30 + 38) = 0;
              v30[46] = 80;
              *(v30 + 63) = 0u;
              *(v30 + 79) = 0u;
              *(v30 + 95) = 0u;
              *(v30 + 111) = 0u;
              *(v30 + 127) = 0u;
              *(v30 + 143) = 0u;
              *(v30 + 159) = 0u;
              *(v30 + 175) = 0u;
              *(v30 + 191) = 0u;
              *(v30 + 207) = 0u;
              *(v30 + 223) = 0u;
              *(v30 + 239) = 0u;
              *(v30 + 255) = 0u;
              v31 = v30 + 440;
              *(v30 + 47) = 0u;
              v30 += 47;
              *(v30 + 14) = 0u;
              *(v30 + 15) = 0u;
              *(v30 + 16) = 0u;
              *(v30 + 17) = 0u;
              *(v30 + 18) = 0u;
              *(v30 + 19) = 0u;
              *(v30 + 20) = 0u;
              *(v30 + 21) = 0u;
              *(v30 + 22) = 0u;
              *(v30 + 23) = 0u;
              *(v30 + 24) = 0u;
              *v31 = 0u;
            }
          }
        }
      }

      ++v22;
    }

    while (v22 < *(a1 + 472));
  }

  if (*(a1 + 492) >= 1)
  {
    v32 = 0;
    v33 = *(a1 + 120);
    do
    {
      v34 = *(*(v33 + 24) + 8 * v32);
      v50 = *(v34 + 8);
      v35 = find_entry(a2, &v50, 8uLL, 0);
      if (!*v35 || !*(*v35 + 32))
      {
        v50 = *(v34 + 8);
        v36 = *(*(*find_entry(v4, &v50, 8uLL, 0) + 32) + 16);
        v37 = *(v34 + 8);
        v38 = apr_array_push(v5);
        *v38 = v36;
        *(v38 + 1) = v37;
        *(v38 + 3) = 0;
        *(v38 + 4) = 0;
        *(v38 + 2) = 0;
        *(v38 + 38) = 0;
        v38[46] = 83;
        *(v38 + 63) = 0u;
        *(v38 + 79) = 0u;
        *(v38 + 95) = 0u;
        *(v38 + 111) = 0u;
        *(v38 + 127) = 0u;
        *(v38 + 143) = 0u;
        *(v38 + 159) = 0u;
        *(v38 + 175) = 0u;
        *(v38 + 191) = 0u;
        *(v38 + 207) = 0u;
        *(v38 + 223) = 0u;
        *(v38 + 239) = 0u;
        *(v38 + 255) = 0u;
        v39 = v38 + 440;
        *(v38 + 47) = 0u;
        v38 += 47;
        *(v38 + 14) = 0u;
        *(v38 + 15) = 0u;
        *(v38 + 16) = 0u;
        *(v38 + 17) = 0u;
        *(v38 + 18) = 0u;
        *(v38 + 19) = 0u;
        *(v38 + 20) = 0u;
        *(v38 + 21) = 0u;
        *(v38 + 22) = 0u;
        *(v38 + 23) = 0u;
        *(v38 + 24) = 0u;
        *v39 = 0u;
      }

      ++v32;
    }

    while (v32 < *(a1 + 492));
  }

  if ((*(a1 + 669) & 1) != 0 && *(a1 + 512) >= 1)
  {
    v40 = 0;
    v41 = *(a1 + 160);
    do
    {
      v42 = *(*(v41 + 24) + 8 * v40);
      v43 = *(v42 + 48);
      if (!v43 || *(v43 + 20) != 2)
      {
        v50 = *(v42 + 8);
        v44 = find_entry(a2, &v50, 8uLL, 0);
        if (!*v44 || !*(*v44 + 32))
        {
          v50 = *(v42 + 8);
          v45 = *(*(*find_entry(v4, &v50, 8uLL, 0) + 32) + 16);
          v46 = *(v42 + 8);
          v47 = apr_array_push(v5);
          *v47 = v45;
          *(v47 + 1) = v46;
          *(v47 + 3) = 0;
          *(v47 + 4) = 0;
          *(v47 + 2) = 0;
          *(v47 + 38) = 0;
          v47[46] = 50;
          *(v47 + 63) = 0u;
          *(v47 + 79) = 0u;
          *(v47 + 95) = 0u;
          *(v47 + 111) = 0u;
          *(v47 + 127) = 0u;
          *(v47 + 143) = 0u;
          *(v47 + 159) = 0u;
          *(v47 + 175) = 0u;
          *(v47 + 191) = 0u;
          *(v47 + 207) = 0u;
          *(v47 + 223) = 0u;
          *(v47 + 239) = 0u;
          *(v47 + 255) = 0u;
          v48 = v47 + 440;
          *(v47 + 47) = 0u;
          v47 += 47;
          *(v47 + 14) = 0u;
          *(v47 + 15) = 0u;
          *(v47 + 16) = 0u;
          *(v47 + 17) = 0u;
          *(v47 + 18) = 0u;
          *(v47 + 19) = 0u;
          *(v47 + 20) = 0u;
          *(v47 + 21) = 0u;
          *(v47 + 22) = 0u;
          *(v47 + 23) = 0u;
          *(v47 + 24) = 0u;
          *v48 = 0u;
        }
      }

      ++v40;
    }

    while (v40 < *(a1 + 512));
  }

  return v5;
}

apr_array_header_t *GTTraceContextDumpGetUnusedDownloadRequest(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 136);
  v7 = apr_array_make(*a1, *(v5 + 12) + *(v4 + 12) + *(v3 + 12) + *(*(a1 + 120) + 12) + *(v6 + 12) - (*(a1 + 464) + *(a1 + 472) + *(a1 + 468) + *(a1 + 492) + *(a1 + 500)), 456);
  v8 = *(a1 + 464);
  v9 = *(v4 + 12);
  if (v8 < v9)
  {
    while (1)
    {
      v10 = *(*(v4 + 24) + 8 * v8);
      if (*(a1 + 669) != 1)
      {
        break;
      }

      if (!*(v10 + 48))
      {
        goto LABEL_6;
      }

LABEL_9:
      if (++v8 >= v9)
      {
        goto LABEL_10;
      }
    }

    if (v10)
    {
LABEL_6:
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    v38 = v11;
    v12 = *(*(*find_entry(v2, &v38, 8uLL, 0) + 32) + 8);
    v13 = apr_array_push(v7);
    *v13 = v12;
    *(v13 + 1) = v11;
    *(v13 + 3) = 0;
    *(v13 + 4) = 0;
    *(v13 + 2) = 0;
    *(v13 + 38) = 0;
    v13[46] = 22;
    *(v13 + 63) = 0u;
    *(v13 + 79) = 0u;
    *(v13 + 95) = 0u;
    *(v13 + 111) = 0u;
    *(v13 + 127) = 0u;
    *(v13 + 143) = 0u;
    *(v13 + 159) = 0u;
    *(v13 + 175) = 0u;
    *(v13 + 191) = 0u;
    *(v13 + 207) = 0u;
    *(v13 + 223) = 0u;
    *(v13 + 239) = 0u;
    *(v13 + 255) = 0u;
    v14 = v13 + 440;
    *(v13 + 47) = 0u;
    v13 += 47;
    *(v13 + 14) = 0u;
    *(v13 + 15) = 0u;
    *(v13 + 16) = 0u;
    *(v13 + 17) = 0u;
    *(v13 + 18) = 0u;
    *(v13 + 19) = 0u;
    *(v13 + 20) = 0u;
    *(v13 + 21) = 0u;
    *(v13 + 22) = 0u;
    *(v13 + 23) = 0u;
    *(v13 + 24) = 0u;
    *v14 = 0u;
    v9 = *(v4 + 12);
    goto LABEL_9;
  }

LABEL_10:
  v15 = *(a1 + 468);
  if (v15 >= 1)
  {
    for (i = 0; i < v15; ++i)
    {
      v17 = *(*(v3 + 24) + 8 * i);
      if (!v17[16] && !v17[36])
      {
        v38 = v17[1];
        v18 = *(*(*find_entry(v2, &v38, 8uLL, 0) + 32) + 8);
        v19 = v17[1];
        v20 = apr_array_push(v7);
        *v20 = v18;
        *(v20 + 1) = v19;
        *(v20 + 3) = 0;
        *(v20 + 4) = 0;
        *(v20 + 2) = 0;
        *(v20 + 38) = 0;
        v20[46] = 101;
        *(v20 + 63) = 0u;
        *(v20 + 79) = 0u;
        *(v20 + 95) = 0u;
        *(v20 + 111) = 0u;
        *(v20 + 127) = 0u;
        *(v20 + 143) = 0u;
        *(v20 + 159) = 0u;
        *(v20 + 175) = 0u;
        *(v20 + 191) = 0u;
        *(v20 + 207) = 0u;
        *(v20 + 223) = 0u;
        *(v20 + 239) = 0u;
        *(v20 + 255) = 0u;
        v21 = v20 + 440;
        *(v20 + 47) = 0u;
        v20 += 47;
        *(v20 + 14) = 0u;
        *(v20 + 15) = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 17) = 0u;
        *(v20 + 18) = 0u;
        *(v20 + 19) = 0u;
        *(v20 + 20) = 0u;
        *(v20 + 21) = 0u;
        *(v20 + 22) = 0u;
        *(v20 + 23) = 0u;
        *(v20 + 24) = 0u;
        *v21 = 0u;
        v15 = *(a1 + 468);
      }
    }
  }

  v22 = *(a1 + 472);
  v23 = *(v5 + 12);
  if (v22 < v23)
  {
    do
    {
      v24 = *(*(v5 + 24) + 8 * v22);
      if (!v24[18] && !v24[19] && (*(a1 + 669) != 1 || !v24[6]))
      {
        v25 = v24[1];
        v26 = v24[14];
        if (!v26 || (*(v26 + 36) & 0xF0) != 0x30 && !*(v26 + 43))
        {
          v38 = v25;
          v27 = *(*(*find_entry(v2, &v38, 8uLL, 0) + 32) + 8);
          v28 = apr_array_push(v7);
          *v28 = v27;
          *(v28 + 1) = v25;
          *(v28 + 3) = 0;
          *(v28 + 4) = 0;
          *(v28 + 2) = 0;
          *(v28 + 38) = 0;
          v28[46] = 80;
          *(v28 + 63) = 0u;
          *(v28 + 79) = 0u;
          *(v28 + 95) = 0u;
          *(v28 + 111) = 0u;
          *(v28 + 127) = 0u;
          *(v28 + 143) = 0u;
          *(v28 + 159) = 0u;
          *(v28 + 175) = 0u;
          *(v28 + 191) = 0u;
          *(v28 + 207) = 0u;
          *(v28 + 223) = 0u;
          *(v28 + 239) = 0u;
          *(v28 + 255) = 0u;
          v29 = v28 + 440;
          *(v28 + 47) = 0u;
          v28 += 47;
          *(v28 + 14) = 0u;
          *(v28 + 15) = 0u;
          *(v28 + 16) = 0u;
          *(v28 + 17) = 0u;
          *(v28 + 18) = 0u;
          *(v28 + 19) = 0u;
          *(v28 + 20) = 0u;
          *(v28 + 21) = 0u;
          *(v28 + 22) = 0u;
          *(v28 + 23) = 0u;
          *(v28 + 24) = 0u;
          *v29 = 0u;
          v23 = *(v5 + 12);
        }
      }

      ++v22;
    }

    while (v22 < v23);
  }

  v30 = *(a1 + 500);
  v31 = *(v6 + 12);
  if (v30 < v31)
  {
    while (1)
    {
      v32 = *(*(v6 + 24) + 8 * v30);
      if (*(a1 + 669) != 1)
      {
        break;
      }

      if (!*(v32 + 48))
      {
        goto LABEL_32;
      }

LABEL_35:
      if (++v30 >= v31)
      {
        return v7;
      }
    }

    if (v32)
    {
LABEL_32:
      v33 = *(v32 + 8);
    }

    else
    {
      v33 = 0;
    }

    v38 = v33;
    v34 = *(*(*find_entry(v2, &v38, 8uLL, 0) + 32) + 16);
    v35 = apr_array_push(v7);
    *v35 = v34;
    *(v35 + 1) = v33;
    *(v35 + 3) = 0;
    *(v35 + 4) = 0;
    *(v35 + 2) = 0;
    *(v35 + 38) = 0;
    v35[46] = 16;
    *(v35 + 63) = 0u;
    *(v35 + 79) = 0u;
    *(v35 + 95) = 0u;
    *(v35 + 111) = 0u;
    *(v35 + 127) = 0u;
    *(v35 + 143) = 0u;
    *(v35 + 159) = 0u;
    *(v35 + 175) = 0u;
    *(v35 + 191) = 0u;
    *(v35 + 207) = 0u;
    *(v35 + 223) = 0u;
    *(v35 + 239) = 0u;
    *(v35 + 255) = 0u;
    v36 = v35 + 440;
    *(v35 + 47) = 0u;
    v35 += 47;
    *(v35 + 14) = 0u;
    *(v35 + 15) = 0u;
    *(v35 + 16) = 0u;
    *(v35 + 17) = 0u;
    *(v35 + 18) = 0u;
    *(v35 + 19) = 0u;
    *(v35 + 20) = 0u;
    *(v35 + 21) = 0u;
    *(v35 + 22) = 0u;
    *(v35 + 23) = 0u;
    *(v35 + 24) = 0u;
    *v36 = 0u;
    v31 = *(v6 + 12);
    goto LABEL_35;
  }

  return v7;
}

apr_hash_t *DownloadsByCommandBuffer(uint64_t a1, uint64_t a2, apr_pool_t *pool)
{
  v6 = apr_hash_make(pool);
  if (*(a2 + 12) >= 1)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      v9 = (*(a2 + 24) + v8);
      if (*v9)
      {
        entry = find_entry(*(a1 + 40), v9 - 8, 8uLL, 0);
        if (*entry)
        {
          v11 = *(*entry + 32);
          if (v11)
          {
            if (*(v11 + 48) == 1)
            {
              v12 = *find_entry(v6, v9, 8uLL, 0);
              if (!v12 || (v13 = *(v12 + 32)) == 0)
              {
                v13 = apr_array_make(pool, 1, 8);
                v14 = apr_palloc(pool, 8uLL);
                *v14 = *v9;
                apr_hash_set(v6, v14, 8, v13);
              }

              *apr_array_push(v13) = v9 - 16;
            }
          }
        }
      }

      ++v7;
      v8 += 456;
    }

    while (v7 < *(a2 + 12));
  }

  return v6;
}

void DownloadsByResource(uint64_t a1, apr_hash_t *ht)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + 24);
      v7 = v5;
      v8 = (v6 + 456 * v5);
      v9 = (v2 - v5);
      if (v9 < 1)
      {
        LODWORD(v9) = 0;
      }

      else if (v9 == 1)
      {
        LODWORD(v9) = 1;
      }

      else
      {
        v10 = (v6 + 456 * v5 + 496);
        v11 = 1;
        while (*(v8 + 1) == *(v10 - 4) && v8[10] == *v10)
        {
          ++v11;
          v10 += 114;
          if (v9 == v11)
          {
            goto LABEL_13;
          }
        }

        LODWORD(v9) = v11;
      }

LABEL_13:
      if (!v8[10])
      {
        *(v8 + 22) = v9;
        apr_hash_set(ht, v8 + 2, 8, v8);
        v2 = *(a1 + 12);
      }

      v5 = v9 + v7;
    }

    while (v9 + v7 < v2);
  }
}

apr_hash_t *DownloadsByResourceDelta(uint64_t a1, uint64_t a2, apr_pool_t *pool)
{
  v5 = apr_hash_make(pool);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = a2;
  *(a2 + 40) = 0;
  v6 = apr_hash_next((a2 + 16));
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(*(v7 + 1) + 32);
      v9 = *find_entry(*(a1 + 40), v8 + 8, 8uLL, 0);
      if (v9)
      {
        v10 = *(v9 + 32);
        if (v10)
        {
          v11 = *(v10 + 32);
          if (v11 != -1)
          {
            v12 = *(v10 + 24);
            v13 = v12 != -1 && v12 <= v11;
            if (v13 && (*(v10 + 48) & 1) == 0)
            {
              apr_hash_set(v5, v8 + 8, 8, v8);
            }
          }
        }
      }

      v7 = apr_hash_next(v7);
    }

    while (v7);
  }

  return v5;
}

void GTTraceDump_endContext(uint64_t a1)
{
  v2 = GTTraceContext_cleanupTransientStreams(*(a1 + 8), *a1);
  if (v2)
  {
    ReleaseDebugObjects(v2->elts, v2->nelts);
  }

  v3 = *a1;

  apr_pool_destroy(v3);
}

double GTTraceContextDumpUnusedCount@<D0>(int32x4_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[10].i64[1];
  v5 = a1[32].i32[1];
  if (v5 >= *(v4 + 12))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      entry = find_entry(a1[43].i64[1], (*(*(v4 + 24) + 8 * v5) + 8), 8uLL, 0);
      if (*entry)
      {
        v8 = *(*entry + 32);
        if (v8)
        {
          v6 += *(v8 + 12);
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 12));
  }

  v9.i32[0] = *(a1[4].i64[0] + 12);
  v9.i32[1] = *(a1[4].i64[1] + 12);
  v9.i32[2] = *(a1[5].i64[0] + 12);
  v9.i32[3] = *(a1[5].i64[1] + 12);
  v10 = a1[8].i64[1];
  v11 = a1[6].i64[1];
  v12 = *(a1[6].i64[0] + 12) - a1[30].i32[0];
  *(a2 + 32) = *(a1[9].i64[0] + 12) - a1[31].i32[2];
  *(a2 + 40) = v12;
  v13 = *(a1[14].i64[0] + 12) - a1[34].i32[0];
  *(a2 + 48) = *(v11 + 12) - a1[30].i32[1];
  *(a2 + 56) = v13;
  v14 = *(v10 + 12) - a1[31].i32[1];
  *(a2 + 64) = *(a1[7].i64[0] + 12) - a1[30].i32[2];
  *(a2 + 72) = v14;
  v15 = a1[10].i64[1];
  v16 = a1[12].i64[0];
  v17 = *(a1[12].i64[1] + 12) - a1[33].i32[1];
  *(a2 + 80) = *(a1[10].i64[0] + 12) - a1[32].i32[0];
  *(a2 + 88) = v17;
  v18 = *(v16 + 12) - a1[33].i32[0];
  v19 = a1[16].i64[1];
  v20 = *(a1[16].i64[0] + 12) - a1[35].i32[0];
  v21 = vsubq_s32(v9, a1[29]);
  *&v22 = v21.i32[0];
  *(&v22 + 1) = v21.i32[1];
  v23 = v22;
  *&v22 = v21.i32[2];
  *(&v22 + 1) = v21.i32[3];
  *&result = v21.i32[2];
  *a2 = v23;
  *(a2 + 16) = v22;
  *(a2 + 96) = v18;
  *(a2 + 104) = v20;
  *(a2 + 112) = *(v19 + 12) - a1[35].i32[1];
  *(a2 + 120) = 0;
  v25 = *(v15 + 12) - a1[32].i32[1];
  *(a2 + 128) = v6;
  *(a2 + 136) = v25;
  v26 = *(a1[23].i64[1] + 12) - a1[38].i32[3];
  *(a2 + 144) = *(a1[23].i64[0] + 12) - a1[38].i32[2];
  *(a2 + 152) = v26;
  v27 = *(a1[24].i64[1] + 12) - a1[39].i32[1];
  *(a2 + 160) = *(a1[24].i64[0] + 12) - a1[39].i32[0];
  *(a2 + 168) = v27;
  return result;
}

uint64_t GTTraceContextDumpEmptyCapture(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = atomic_load((*(a1 + 8) + 88));
  v4 = v3 + 1;
  if (v4 < 2)
  {
    v19 = apr_palloc(*a1, 0x400uLL);
    v18 = 0;
LABEL_18:
    v11 = &dword_8;
    goto LABEL_19;
  }

  for (i = 1; i < v4; ++i)
  {
    while (1)
    {
      v20[0] = i;
      v6 = *find_entry(v2, v20, 8uLL, 0);
      if (!v6)
      {
        v7 = 0;
        break;
      }

      v7 = *(v6 + 32);
      if (!v7)
      {
        break;
      }

      v8 = *(v7 + 32);
      if (!v8 || (*(v8 + 79) & 8) == 0)
      {
        break;
      }

      ++i;
      if (*(v8 + 72) == -10239 || i >= v4)
      {
        v18 = v8 + 64;
        v19 = apr_palloc(*a1, 0x400uLL);
        goto LABEL_16;
      }
    }
  }

  v19 = apr_palloc(*a1, 0x400uLL);
  v18 = 0;
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_16:
  v10 = atomic_load((v7 + 56));
  v11 = (v7 + (~(v10 >> 2) & 8));
LABEL_19:
  v20[0] = *v11;
  v20[1] = v19;
  v20[2] = 1024;
  v12 = fbstream_open(*(*(a1 + 32) + 192), "startup-0-platform", *a1);
  v13 = *(a1 + 32);
  data = v12;
  v22 = v13;
  v23 = 0;
  v24 = *(a1 + 668);
  memset(v25, 0, sizeof(v25));
  GTTraceFuncToFbuf(v20, a1, v18, 4);
  v14 = data;
  apr_pool_cleanup_kill(*data, data, fbstream_cleanup);
  fbstream_cleanup(v14);
  v15 = fbstream_open(*(*(a1 + 32) + 192), "capture", *a1);
  data = v15;
  apr_pool_cleanup_kill(*v15, v15, fbstream_cleanup);
  fbstream_cleanup(v15);
  snprintf(v19, 0x400uLL, "delta-device-resources-0x%llx", v20[0]);
  v16 = fbstream_open(*(*(a1 + 32) + 192), v19, *a1);
  data = v16;
  apr_pool_cleanup_kill(*v16, v16, fbstream_cleanup);
  return fbstream_cleanup(v16);
}

uint64_t GTTraceDump_writeDeviceResources(uint64_t a1, uint64_t a2, apr_pool_t *p)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 56);
  v8 = apr_palloc(p, 0x100000uLL);
  v59 = *(a1 + 56);
  entry = find_entry(v6, &v59, 8uLL, 0);
  if (*entry && (v10 = *(*entry + 32)) != 0)
  {
    v11 = atomic_load((v10 + 56));
    v12 = (v10 + (~(v11 >> 2) & 8));
  }

  else
  {
    v12 = &dword_8;
  }

  v13 = *v12;
  snprintf(v8, 0x100000uLL, "device-resources-0x%llx", *v12);
  v50 = v13;
  v51 = v8;
  v14 = *(a1 + 664);
  v52 = 0x100000;
  v53 = v14;
  v15 = fbstream_open(*(a2 + 192), v8, p);
  data = v15;
  v55 = a2;
  v56 = 0;
  v57 = *(a1 + 668);
  memset(v58, 0, sizeof(v58));
  Device = GTMTLSMContext_getDevice(*(a1 + 752), v7, *(a1 + 40));
  v59 = v13;
  *v60 = 7;
  *&v60[4] = 0u;
  v61 = 0u;
  v62 = 0;
  *&v60[8] = 2;
  GTTrace_storePointer(&v50, -12272, &v59, v8 + 1048064, 512, v6);
  DYTraceEncode_InternalData(&v59, v8, 0x100000uLL, v17, 0);
  v18 = v8[8];
  v8[8] = v18 | 0x46;
  v19 = *v8;
  if ((v18 & 0x1000) != 0)
  {
    v20 = *v8;
    v21 = v8;
    do
    {
      v21 = (v21 + v20);
      v20 = *v21;
      v19 += v20;
    }

    while ((*(v21 + 33) & 0x20) == 0);
  }

  v22 = objc_autoreleasePoolPush();
  [v15[1] appendBytes:v8 length:v19];
  objc_autoreleasePoolPop(v22);
  v59 = v13;
  v23 = Device[5];
  v49[0] = 512;
  *v60 = StoreMTLDeviceDescriptorUsingEncode(a2, v23, (v8 + 262016), v49);
  DYTraceEncode_MTLDevice_deviceReference(&v59, v8, 0x100000uLL, 0, 0);
  v24 = *v8;
  if ((*(v8 + 33) & 0x10) != 0)
  {
    v26 = v8;
    v25 = *v8;
    do
    {
      v26 = (v26 + v24);
      v24 = *v26;
      v25 += v24;
    }

    while ((*(v26 + 33) & 0x20) == 0);
  }

  else
  {
    v25 = *v8;
  }

  v27 = objc_autoreleasePoolPush();
  [v15[1] appendBytes:v8 length:v25];
  objc_autoreleasePoolPop(v27);
  v29 = 0;
  v30 = 64;
  v31 = 464;
  do
  {
    v32 = &v60[v29 - 8];
    v33 = *(a1 + v30);
    v34 = v33[1];
    *v32 = *v33;
    *(v32 + 1) = v34;
    LODWORD(v33) = *(a1 + v31);
    *(v32 + 3) = v33;
    *(v32 + 4) = v33;
    *v32 = 0;
    v30 += 8;
    v31 += 4;
    v29 += 32;
  }

  while (v30 != 464);
  v49[0] = v13;
  v49[1] = "root";
  v49[2] = 0;
  v49[3] = 0;
  DYTraceEncode_EnterStateGroup(v49, v8, 0x100000uLL, v28, 0);
  v35 = *v8;
  if ((*(v8 + 33) & 0x10) != 0)
  {
    v37 = v8;
    v36 = *v8;
    do
    {
      v37 = (v37 + v35);
      v35 = *v37;
      v36 += v35;
    }

    while ((*(v37 + 33) & 0x20) == 0);
  }

  else
  {
    v36 = *v8;
  }

  v38 = objc_autoreleasePoolPush();
  [v15[1] appendBytes:v8 length:v36];
  objc_autoreleasePoolPop(v38);
  DumpDeviceResources(&v50, a1, &v59, p);
  v39 = v50;
  v40 = v51;
  *(v51 + 2) = 0;
  v40[3] = 0;
  v40[4] = 0x4300000046;
  v40[5] = v39;
  *v40 = 0xFFFFD00800000030;
  v40[1] = 0;
  v41 = data;
  v42 = v51;
  v43 = *v51;
  if ((*(v51 + 33) & 0x10) != 0)
  {
    v44 = *v51;
    v45 = v51;
    do
    {
      v45 = (v45 + v44);
      v44 = *v45;
      v43 += v44;
    }

    while ((*(v45 + 33) & 0x20) == 0);
  }

  v46 = objc_autoreleasePoolPush();
  [v41[1] appendBytes:v42 length:v43];
  objc_autoreleasePoolPop(v46);
  v47 = data;
  apr_pool_cleanup_kill(*data, data, fbstream_cleanup);
  return fbstream_cleanup(v47);
}

void WriteGTMTLSMBuffer_restore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v9 = 0;
    v10 = a3;
    GTResourceDownloaderGetResourceFilename(a2, 0, __str, 0x80uLL);
    v11 = __str;
    v12 = *(a2 + 48);
    DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(&v9, *(a1 + 8), *(a1 + 16), 0, 0);
    v5 = *(a1 + 8);
    v5[8] = 0;
    v6 = *(a1 + 24);
    v7 = *v5;
    v8 = objc_autoreleasePoolPush();
    [*(v6 + 8) appendBytes:v5 length:{v7, v9, v10}];
    objc_autoreleasePoolPop(v8);
  }
}

void WriteGTMTLSMBuffer_properties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = atomic_load((a3 + 56));
    v8 = (a3 + (~(v7 >> 2) & 8));
  }

  else
  {
    v8 = &dword_8;
  }

  v9 = *v8;
  WriteBufferInfo(a1, a2, a4, 0);
  v10 = *(a2 + 88);
  if (!v10)
  {
    v10 = "";
  }

  v48[0] = v9;
  v48[1] = v10;
  DYTraceEncode_MTLBuffer_setLabel(v48, *(a1 + 8), *(a1 + 16), 0, 0);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = *v11;
  if ((*(v11 + 33) & 0x10) != 0)
  {
    v15 = *(a1 + 8);
    v14 = *v11;
    do
    {
      v15 = (v15 + v13);
      v13 = *v15;
      v14 += v13;
    }

    while ((*(v15 + 33) & 0x20) == 0);
  }

  else
  {
    v14 = *v11;
  }

  v16 = objc_autoreleasePoolPush();
  [*(v12 + 8) appendBytes:v11 length:v14];
  objc_autoreleasePoolPop(v16);
  if (*(a2 + 48))
  {
    if (a3)
    {
LABEL_12:
      v17 = atomic_load((a3 + 56));
      v18 = v17 & 3;
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *(a2 + 106);
    v20 = *(a1 + 8);
    *(v20 + 24) = 0;
    *(v20 + 8) = 0u;
    *(v20 + 32) = 0x6C754300000000;
    *v20 = 0xFFFFC01100000028;
    *(v20 + 40) = v9;
    *(v20 + 48) = v19;
    *v20 = 56;
    v21 = *(a1 + 8);
    v22 = *(a1 + 24);
    v23 = *v21;
    if ((*(v21 + 33) & 0x10) != 0)
    {
      v25 = *(a1 + 8);
      v24 = *v21;
      do
      {
        v25 = (v25 + v23);
        v23 = *v25;
        v24 += v23;
      }

      while ((*(v25 + 33) & 0x20) == 0);
    }

    else
    {
      v24 = *v21;
    }

    v26 = objc_autoreleasePoolPush();
    [*(v22 + 8) appendBytes:v21 length:v24];
    objc_autoreleasePoolPop(v26);
    if (a3)
    {
      goto LABEL_12;
    }
  }

  v18 = 0;
LABEL_19:
  v27 = *(a1 + 8);
  *(v27 + 24) = 0;
  *(v27 + 8) = 0u;
  *(v27 + 32) = 0x69754300000006;
  *v27 = 0xFFFFD80500000028;
  *(v27 + 40) = v9;
  *(v27 + 48) = v18;
  *v27 = 52;
  v28 = *(a1 + 8);
  v29 = *(a1 + 24);
  v30 = *v28;
  if ((*(v28 + 33) & 0x10) != 0)
  {
    v32 = *(a1 + 8);
    v31 = *v28;
    do
    {
      v32 = (v32 + v30);
      v30 = *v32;
      v31 += v30;
    }

    while ((*(v32 + 33) & 0x20) == 0);
  }

  else
  {
    v31 = *v28;
  }

  v33 = objc_autoreleasePoolPush();
  [*(v29 + 8) appendBytes:v28 length:v31];
  objc_autoreleasePoolPop(v33);
  if (a3 && (v34 = atomic_load((a3 + 56)), v35 = v34 & 0xFFFFFFFFFFFFFFC0, (v34 & 0xFFFFFFFFFFFFFFC0) != 0))
  {
    v36 = *(a1 + 32);
    v37 = *(v36 + 224);
    v38 = v37 >= v35;
    v39 = v37 - v35;
    if (v39 != 0 && v38)
    {
      v40 = v39 * *(v36 + 232) / *(v36 + 236);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = -1;
  }

  v41 = *(a1 + 8);
  *(v41 + 24) = 0;
  *(v41 + 8) = 0u;
  *(v41 + 32) = 0x77754300000046;
  *v41 = 0xFFFFD81E00000028;
  *(v41 + 40) = v9;
  *(v41 + 48) = v40;
  *v41 = 56;
  v42 = *(a1 + 8);
  v43 = *(a1 + 24);
  v44 = *v42;
  if ((*(v42 + 33) & 0x10) != 0)
  {
    v46 = *(a1 + 8);
    v45 = *v42;
    do
    {
      v46 = (v46 + v44);
      v44 = *v46;
      v45 += v44;
    }

    while ((*(v46 + 33) & 0x20) == 0);
  }

  else
  {
    v45 = *v42;
  }

  v47 = objc_autoreleasePoolPush();
  [*(v43 + 8) appendBytes:v42 length:v45];

  objc_autoreleasePoolPop(v47);
}

void WriteGTMTLSMBuffer_debugMarkers(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = atomic_load(a3 + 7);
    v5 = (a3 + (~(v4 >> 2) & 8));
  }

  else
  {
    v5 = &dword_8;
  }

  v6 = a3[4];
  v23 = a3[3];
  v24 = *v5;
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = atomic_load((v6 + 4));
      v9 = v7 + (v8 >> 6) - 1;
      if (v9 > 1)
      {
        break;
      }

      v6 = *(v6 + 40);
      v7 = v9;
      if (!v6)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v9 = 1;
LABEL_11:
    v10 = v7 | (v9 << 32);
  }

  else
  {
    v10 = 0;
  }

  while (v6)
  {
    v11 = v6 + 64;
    v12 = v6 + 64 + ((HIDWORD(v10) - v10) << 6);
    if ((*(v12 + 15) & 8) == 0)
    {
      break;
    }

    if (*(v12 + 8) == -16103)
    {
      v13 = GTTraceFunc_argumentBytesWithPool((v11 + ((HIDWORD(v10) - v10) << 6)), *(v12 + 13), v23);
      v26[0] = v24;
      v26[1] = GTTraceFunc_argumentBytesWithMap((v11 + ((HIDWORD(v10) - v10) << 6)), v13[24], *(a2 + 24));
      v27 = *(v13 + 8);
      DYTraceEncode_MTLBuffer_addDebugMarker_range(v26, *(a1 + 8), *(a1 + 16), 0, 0);
      v14 = *(a1 + 8);
      v15 = *v14;
      if ((*(v14 + 33) & 0x10) != 0)
      {
        v17 = *(a1 + 8);
        v16 = *v14;
        do
        {
          v17 = (v17 + v15);
          v15 = *v17;
          v16 += v15;
        }

        while ((*(v17 + 33) & 0x20) == 0);
      }

      else
      {
        v16 = *v14;
      }

      v18 = *(a1 + 24);
      v19 = objc_autoreleasePoolPush();
      [*(v18 + 8) appendBytes:v14 length:v16];
      objc_autoreleasePoolPop(v19);
    }

    v20 = atomic_load((v6 + 4));
    v21 = v10 + (v20 >> 6);
    v22 = (HIDWORD(v10) + 1);
    v10 = (v22 << 32) | v10;
    if (v22 == v21 - 1)
    {
      v10 = (v22 << 32) | v22;
      v6 = *(v6 + 40);
    }
  }
}

void WriteGTMTLSMBuffer_resources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 696);
  if (a3)
  {
    v5 = *(a3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 16);
  v99 = v5;
  entry = find_entry(v4, &v99, 8uLL, 0);
  if (*entry)
  {
    v9 = *(*entry + 32);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 8);
  v95 = *a1;
  v96 = "textures";
  v97 = 0;
  v98 = 0;
  DYTraceEncode_EnterStateGroup(&v95, v10, *(a1 + 16), v8, 0);
  v11 = *(a1 + 24);
  v12 = *(a1 + 8);
  v13 = *v12;
  if ((*(v12 + 33) & 0x10) != 0)
  {
    v15 = *(a1 + 8);
    v14 = *v12;
    do
    {
      v15 = (v15 + v13);
      v13 = *v15;
      v14 += v13;
    }

    while ((*(v15 + 33) & 0x20) == 0);
  }

  else
  {
    v14 = *v12;
  }

  v16 = objc_autoreleasePoolPush();
  [*(v11 + 8) appendBytes:v12 length:v14];
  objc_autoreleasePoolPop(v16);
  if (v9)
  {
    v17 = *(v9 + 12);
    if (v17 >= 1)
    {
      v18 = 0;
      while (1)
      {
        v19 = *(*(v9 + 24) + 8 * v18);
        if (*v19 == 80)
        {
          break;
        }

LABEL_33:
        if (++v18 >= v17)
        {
          goto LABEL_36;
        }
      }

      v95 = *(v19 + 8);
      v20 = find_entry(v6, &v95, 8uLL, 0);
      if (*v20)
      {
        v22 = *(*v20 + 32);
        v97 = 0;
        v98 = 0;
        v95 = *a1;
        v96 = "texture";
        if (v22)
        {
          v23 = atomic_load((v22 + 56));
          v24 = (v22 + (~(v23 >> 2) & 8));
LABEL_20:
          v97 = *v24;
          v98 = 0;
          DYTraceEncode_EnterStateGroup(&v95, *(a1 + 8), *(a1 + 16), v21, 0);
          v25 = *(a1 + 24);
          v26 = *(a1 + 8);
          v27 = *v26;
          if ((*(v26 + 33) & 0x10) != 0)
          {
            v29 = *(a1 + 8);
            v28 = *v26;
            do
            {
              v29 = (v29 + v27);
              v27 = *v29;
              v28 += v27;
            }

            while ((*(v29 + 33) & 0x20) == 0);
          }

          else
          {
            v28 = *v26;
          }

          v30 = objc_autoreleasePoolPush();
          [*(v25 + 8) appendBytes:v26 length:v28];
          objc_autoreleasePoolPop(v30);
          if (v22 && (v31 = *(v22 + 32)) != 0 && (*(v31 + 79) & 8) != 0)
          {
            v32 = v31 + 64;
          }

          else
          {
            v32 = 0;
          }

          GTTraceFuncToFbuf(a1, a2, v32, 0);
          WriteGTMTLSMTexture_textureViews(a1, a2, v19);
          v33 = *a1;
          v34 = *(a1 + 8);
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          *(v34 + 32) = 70;
          *(v34 + 36) = 67;
          *(v34 + 40) = v33;
          *v34 = 0xFFFFD00800000030;
          *(v34 + 8) = 0;
          v35 = *(a1 + 24);
          v36 = *(a1 + 8);
          v37 = *v36;
          if ((*(v36 + 33) & 0x10) != 0)
          {
            v39 = *(a1 + 8);
            v38 = *v36;
            do
            {
              v39 = (v39 + v37);
              v37 = *v39;
              v38 += v37;
            }

            while ((*(v39 + 33) & 0x20) == 0);
          }

          else
          {
            v38 = *v36;
          }

          v40 = objc_autoreleasePoolPush();
          [*(v35 + 8) appendBytes:v36 length:v38];
          objc_autoreleasePoolPop(v40);
          v17 = *(v9 + 12);
          goto LABEL_33;
        }
      }

      else
      {
        v22 = 0;
        v95 = *a1;
        v96 = "texture";
      }

      v24 = &dword_8;
      goto LABEL_20;
    }
  }

LABEL_36:
  v41 = *a1;
  v42 = *(a1 + 8);
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  *(v42 + 32) = 70;
  *(v42 + 36) = 67;
  *(v42 + 40) = v41;
  *v42 = 0xFFFFD00800000030;
  *(v42 + 8) = 0;
  v43 = *(a1 + 24);
  v44 = *(a1 + 8);
  v45 = *v44;
  if ((*(v44 + 33) & 0x10) != 0)
  {
    v47 = *(a1 + 8);
    v46 = *v44;
    do
    {
      v47 = (v47 + v45);
      v45 = *v47;
      v46 += v45;
    }

    while ((*(v47 + 33) & 0x20) == 0);
  }

  else
  {
    v46 = *v44;
  }

  v48 = objc_autoreleasePoolPush();
  [*(v43 + 8) appendBytes:v44 length:v46];
  objc_autoreleasePoolPop(v48);
  if (v9)
  {
    v50 = *(a1 + 8);
    v95 = *a1;
    v96 = "acceleration-structures";
    v97 = 0;
    v98 = 0;
    DYTraceEncode_EnterStateGroup(&v95, v50, *(a1 + 16), v49, 0);
    v51 = *(a1 + 24);
    v52 = *(a1 + 8);
    v53 = *v52;
    if ((*(v52 + 33) & 0x10) != 0)
    {
      v55 = *(a1 + 8);
      v54 = *v52;
      do
      {
        v55 = (v55 + v53);
        v53 = *v55;
        v54 += v53;
      }

      while ((*(v55 + 33) & 0x20) == 0);
    }

    else
    {
      v54 = *v52;
    }

    v56 = objc_autoreleasePoolPush();
    [*(v51 + 8) appendBytes:v52 length:v54];
    objc_autoreleasePoolPop(v56);
    v57 = *(v9 + 12);
    if (v57 >= 1)
    {
      for (i = 0; i < v57; ++i)
      {
        v59 = *(*(v9 + 24) + 8 * i);
        if (*v59 == 16)
        {
          v95 = *(v59 + 8);
          v60 = find_entry(v6, &v95, 8uLL, 0);
          if (*v60)
          {
            v61 = *(*v60 + 32);
          }

          else
          {
            v61 = 0;
          }

          v95 = *(v59 + 8);
          v62 = find_entry(v6, &v95, 8uLL, 0);
          if (*v62 && (v64 = *(*v62 + 32)) != 0)
          {
            v65 = atomic_load((v64 + 56));
            v66 = (v64 + (~(v65 >> 2) & 8));
          }

          else
          {
            v66 = &dword_8;
          }

          v67 = *v66;
          v68 = *(a1 + 8);
          v95 = *a1;
          v96 = "acceleration-structure";
          v97 = v67;
          v98 = 0;
          DYTraceEncode_EnterStateGroup(&v95, v68, *(a1 + 16), v63, 0);
          v69 = *(a1 + 24);
          v70 = *(a1 + 8);
          v71 = *v70;
          if ((*(v70 + 33) & 0x10) != 0)
          {
            v73 = *(a1 + 8);
            v72 = *v70;
            do
            {
              v73 = (v73 + v71);
              v71 = *v73;
              v72 += v71;
            }

            while ((*(v73 + 33) & 0x20) == 0);
          }

          else
          {
            v72 = *v70;
          }

          v74 = objc_autoreleasePoolPush();
          [*(v69 + 8) appendBytes:v70 length:v72];
          objc_autoreleasePoolPop(v74);
          if (v61 && (v75 = *(v61 + 32)) != 0 && (*(v75 + 79) & 8) != 0)
          {
            v76 = v75 + 64;
          }

          else
          {
            v76 = 0;
          }

          GTTraceFuncToFbuf(a1, a2, v76, 0);
          WriteGTMTLSMAccelerationStructure_properties(a1, v59, v61, v6, v77);
          v78 = *a1;
          v79 = *(a1 + 8);
          *(v79 + 16) = 0;
          *(v79 + 24) = 0;
          *(v79 + 32) = 70;
          *(v79 + 36) = 67;
          *(v79 + 40) = v78;
          *v79 = 0xFFFFD00800000030;
          *(v79 + 8) = 0;
          v80 = *(a1 + 24);
          v81 = *(a1 + 8);
          v82 = *v81;
          if ((*(v81 + 33) & 0x10) != 0)
          {
            v84 = *(a1 + 8);
            v83 = *v81;
            do
            {
              v84 = (v84 + v82);
              v82 = *v84;
              v83 += v82;
            }

            while ((*(v84 + 33) & 0x20) == 0);
          }

          else
          {
            v83 = *v81;
          }

          v85 = objc_autoreleasePoolPush();
          [*(v80 + 8) appendBytes:v81 length:v83];
          objc_autoreleasePoolPop(v85);
          v57 = *(v9 + 12);
        }
      }
    }

    v86 = *a1;
    v87 = *(a1 + 8);
    *(v87 + 16) = 0;
    *(v87 + 24) = 0;
    *(v87 + 32) = 70;
    *(v87 + 36) = 67;
    *(v87 + 40) = v86;
    *v87 = 0xFFFFD00800000030;
    *(v87 + 8) = 0;
    v88 = *(a1 + 24);
    v89 = *(a1 + 8);
    v90 = *v89;
    if ((*(v89 + 33) & 0x10) != 0)
    {
      v92 = v89;
      v91 = *v89;
      do
      {
        v92 = (v92 + v90);
        v90 = *v92;
        v91 += v90;
      }

      while ((*(v92 + 33) & 0x20) == 0);
    }

    else
    {
      v91 = *v89;
    }

    v93 = objc_autoreleasePoolPush();
    [*(v88 + 8) appendBytes:v89 length:v91];
    objc_autoreleasePoolPop(v93);
  }
}

uint64_t WriteMakeAliasable(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a3 + 12);
  if (v4)
  {
    v8 = result;
    do
    {
      v9 = *(a3 + 24);
      v10 = *v9;
      if (**v9 >= a4)
      {
        break;
      }

      v11 = &v9[v4];
      v12 = *(v11 - 1);
      *(v11 - 1) = v10;
      if (v4 < 4)
      {
        v13 = 0;
      }

      else
      {
        LODWORD(v13) = 0;
        v14 = v4 - 2;
        v15 = *v12;
        v16 = 1;
        while (1)
        {
          v17 = v16 + 1;
          v18 = *(a3 + 24);
          if (v17 >= v14)
          {
            LODWORD(v17) = v16;
          }

          else if (**(v18 + 8 * v17) >= **(v18 + 8 * v16))
          {
            LODWORD(v17) = v16;
          }

          v19 = *(v18 + 8 * v17);
          v13 = v13;
          if (v15 <= *v19)
          {
            break;
          }

          *(v18 + 8 * v13) = v19;
          v16 = 2 * v17;
          LODWORD(v13) = v17;
          if (2 * v17 >= v14)
          {
            v13 = v17;
            break;
          }
        }
      }

      *(*(a3 + 24) + 8 * v13) = v12;
      v20 = *(a3 + 24);
      v21 = *(a3 + 8);
      v22 = v4 - 1;
      *(a3 + 12) = v22;
      result = GTTraceFuncToFbuf(v8, a2, *(v20 + v22 * v21), 0);
      v4 = *(a3 + 12);
    }

    while (v4);
  }

  return result;
}

void WriteGTMTLSMTexture_properties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = atomic_load((a3 + 56));
    v8 = (a3 + (~(v7 >> 2) & 8));
  }

  else
  {
    v8 = &dword_8;
  }

  v9 = *v8;
  WriteTextureInfo(a1, a2, a4, 0);
  v10 = *(a2 + 88);
  if (!v10)
  {
    v10 = "";
  }

  v48[0] = v9;
  v48[1] = v10;
  DYTraceEncode_MTLTexture_setLabel(v48, *(a1 + 8), *(a1 + 16), 0, 0);
  v11 = *(a1 + 8);
  v12 = *(a1 + 24);
  v13 = *v11;
  if ((*(v11 + 33) & 0x10) != 0)
  {
    v15 = *(a1 + 8);
    v14 = *v11;
    do
    {
      v15 = (v15 + v13);
      v13 = *v15;
      v14 += v13;
    }

    while ((*(v15 + 33) & 0x20) == 0);
  }

  else
  {
    v14 = *v11;
  }

  v16 = objc_autoreleasePoolPush();
  [*(v12 + 8) appendBytes:v11 length:v14];
  objc_autoreleasePoolPop(v16);
  if (*(a2 + 48) || *(a2 + 144) || *(a2 + 152))
  {
    if (a3)
    {
LABEL_14:
      v17 = atomic_load((a3 + 56));
      v18 = v17 & 3;
      goto LABEL_21;
    }
  }

  else
  {
    v19 = *(a2 + 106);
    v20 = *(a1 + 8);
    *(v20 + 24) = 0;
    *(v20 + 8) = 0u;
    *(v20 + 32) = 0x6C754300000000;
    *v20 = 0xFFFFC09800000028;
    *(v20 + 40) = v9;
    *(v20 + 48) = v19;
    *v20 = 56;
    v21 = *(a1 + 8);
    v22 = *(a1 + 24);
    v23 = *v21;
    if ((*(v21 + 33) & 0x10) != 0)
    {
      v25 = *(a1 + 8);
      v24 = *v21;
      do
      {
        v25 = (v25 + v23);
        v23 = *v25;
        v24 += v23;
      }

      while ((*(v25 + 33) & 0x20) == 0);
    }

    else
    {
      v24 = *v21;
    }

    v26 = objc_autoreleasePoolPush();
    [*(v22 + 8) appendBytes:v21 length:v24];
    objc_autoreleasePoolPop(v26);
    if (a3)
    {
      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_21:
  v27 = *(a1 + 8);
  *(v27 + 24) = 0;
  *(v27 + 8) = 0u;
  *(v27 + 32) = 0x69754300000006;
  *v27 = 0xFFFFD80600000028;
  *(v27 + 40) = v9;
  *(v27 + 48) = v18;
  *v27 = 52;
  v28 = *(a1 + 8);
  v29 = *(a1 + 24);
  v30 = *v28;
  if ((*(v28 + 33) & 0x10) != 0)
  {
    v32 = *(a1 + 8);
    v31 = *v28;
    do
    {
      v32 = (v32 + v30);
      v30 = *v32;
      v31 += v30;
    }

    while ((*(v32 + 33) & 0x20) == 0);
  }

  else
  {
    v31 = *v28;
  }

  v33 = objc_autoreleasePoolPush();
  [*(v29 + 8) appendBytes:v28 length:v31];
  objc_autoreleasePoolPop(v33);
  if (a3 && (v34 = atomic_load((a3 + 56)), v35 = v34 & 0xFFFFFFFFFFFFFFC0, (v34 & 0xFFFFFFFFFFFFFFC0) != 0))
  {
    v36 = *(a1 + 32);
    v37 = *(v36 + 224);
    v38 = v37 >= v35;
    v39 = v37 - v35;
    if (v39 != 0 && v38)
    {
      v40 = v39 * *(v36 + 232) / *(v36 + 236);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = -1;
  }

  v41 = *(a1 + 8);
  *(v41 + 24) = 0;
  *(v41 + 8) = 0u;
  *(v41 + 32) = 0x77754300000046;
  *v41 = 0xFFFFD81C00000028;
  *(v41 + 40) = v9;
  *(v41 + 48) = v40;
  *v41 = 56;
  v42 = *(a1 + 8);
  v43 = *(a1 + 24);
  v44 = *v42;
  if ((*(v42 + 33) & 0x10) != 0)
  {
    v46 = *(a1 + 8);
    v45 = *v42;
    do
    {
      v46 = (v46 + v44);
      v44 = *v46;
      v45 += v44;
    }

    while ((*(v46 + 33) & 0x20) == 0);
  }

  else
  {
    v45 = *v42;
  }

  v47 = objc_autoreleasePoolPush();
  [*(v43 + 8) appendBytes:v42 length:v45];

  objc_autoreleasePoolPop(v47);
}

void WriteGTMTLSMTexture_downloads(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a3)
  {
    return;
  }

  if (a4)
  {
    v8 = *(a1 + 8);
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *v8 = 0xFFFFC25900000024;
    *(v8 + 32) = 0;
    strcpy((v8 + 36), "Ctul@6ululul");
    *(v8 + 49) = 0;
    *(v8 + 51) = 0;
    *(v8 + 52) = a5;
    *(v8 + 60) = a5;
    *(v8 + 68) = 2;
    *(v8 + 76) = 0u;
    *(v8 + 92) = 0u;
    *(v8 + 108) = 0u;
    *(v8 + 132) = 0;
    *(v8 + 124) = 0;
    *v8 = 140;
    v9 = *(a1 + 8);
    v9[1] = -10213;
    v10 = v9[8];
    v9[8] = v10 | 4;
    v11 = *(a1 + 24);
    v12 = *v9;
    if ((v10 & 0x1000) != 0)
    {
      v21 = v9;
      v13 = *v9;
      do
      {
        v21 = (v21 + v12);
        v12 = *v21;
        v13 += v12;
      }

      while ((*(v21 + 33) & 0x20) == 0);
    }

    else
    {
      v13 = *v9;
    }

    v22 = objc_autoreleasePoolPush();
    [*(v11 + 8) appendBytes:v9 length:v13];
    objc_autoreleasePoolPop(v22);
    v23 = *(a3 + 44);
    if (*(a3 + 44))
    {
      v24 = 0;
      do
      {
        v25 = a3 + 456 * v24;
        if ((*(v25 + 47) & 2) == 0)
        {
          v26 = *(v25 + 52);
          v27 = *(v25 + 56);
          v28 = *(v25 + 58);
          v29 = *(v25 + 60);
          v30 = *(v25 + 64);
          v31 = *(v25 + 66);
          v32 = *(v25 + 50);
          v33 = *(v25 + 48);
          v34 = *(a1 + 8);
          *(v34 + 8) = 0;
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          *v34 = 0xFFFFC25900000024;
          *(v34 + 32) = 0;
          strcpy((v34 + 36), "Ctul@6ululul");
          *(v34 + 49) = 0;
          *(v34 + 51) = 0;
          *(v34 + 52) = a5;
          *(v34 + 60) = a5;
          *(v34 + 68) = 0;
          *(v34 + 76) = v26;
          *(v34 + 84) = v27;
          *(v34 + 92) = v28;
          *(v34 + 100) = v29;
          *(v34 + 108) = v30;
          *(v34 + 116) = v31;
          *(v34 + 124) = v32;
          *(v34 + 132) = v33;
          *v34 = 140;
          v35 = *(a1 + 8);
          v35[1] = -10213;
          LODWORD(v26) = v35[8];
          v35[8] = v26 | 4;
          v36 = *v35;
          if ((v26 & 0x1000) != 0)
          {
            v37 = *v35;
            v38 = v35;
            do
            {
              v38 = (v38 + v37);
              v37 = *v38;
              v36 += v37;
            }

            while ((*(v38 + 33) & 0x20) == 0);
          }

          v39 = *(a1 + 24);
          v40 = objc_autoreleasePoolPush();
          [*(v39 + 8) appendBytes:v35 length:v36];
          objc_autoreleasePoolPop(v40);
          v23 = *(a3 + 44);
        }

        ++v24;
      }

      while (v24 < v23);
    }

    goto LABEL_22;
  }

  if (!*(a2 + 128) || *(a3 + 46) != 86)
  {
LABEL_22:

    WriteGTMTLSMTexture_restoreTextureData(a3, a1, a5);
    return;
  }

  v41[0] = a5;
  GTResourceDownloaderGetResourceFilename(a3, *(a3 + 56), __str, 0x80uLL);
  v41[1] = __str;
  v42 = *(a3 + 48);
  DYTraceEncode_MTLTexture_restoreIOSurfaceData_length_forPlane(v41, *(a1 + 8), *(a1 + 16), 0, 0);
  v14 = *(a1 + 8);
  v15 = v14[8];
  v14[8] = v15 | 4;
  v16 = *(a1 + 24);
  v17 = *v14;
  if ((v15 & 0x1000) != 0)
  {
    v18 = *v14;
    v19 = v14;
    do
    {
      v19 = (v19 + v18);
      v18 = *v19;
      v17 += v18;
    }

    while ((*(v19 + 33) & 0x20) == 0);
  }

  v20 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v14 length:v17];
  objc_autoreleasePoolPop(v20);
}

void WriteGTMTLSMTexture_textureViews(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 696);
  if (a3)
  {
    v6 = *(a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 16);
  v57 = v6;
  entry = find_entry(v5, &v57, 8uLL, 0);
  if (*entry)
  {
    v10 = *(*entry + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 8);
  v53 = *a1;
  v54 = "texture-views";
  v55 = 0;
  v56 = 0;
  DYTraceEncode_EnterStateGroup(&v53, v11, *(a1 + 16), v9, 0);
  v12 = *(a1 + 24);
  v13 = *(a1 + 8);
  v14 = *v13;
  if ((*(v13 + 33) & 0x10) != 0)
  {
    v16 = *(a1 + 8);
    v15 = *v13;
    do
    {
      v16 = (v16 + v14);
      v14 = *v16;
      v15 += v14;
    }

    while ((*(v16 + 33) & 0x20) == 0);
  }

  else
  {
    v15 = *v13;
  }

  v17 = objc_autoreleasePoolPush();
  [*(v12 + 8) appendBytes:v13 length:v15];
  objc_autoreleasePoolPop(v17);
  if (v10 && *(v10 + 12) >= 1)
  {
    v18 = 0;
    v52 = v7;
    while (1)
    {
      v19 = *(*(v10 + 24) + 8 * v18);
      v20 = v19 ? *(v19 + 8) : 0;
      v53 = v20;
      v21 = find_entry(v7, &v53, 8uLL, 0);
      if (!*v21)
      {
        break;
      }

      v23 = *(*v21 + 32);
      if (!v23)
      {
        goto LABEL_21;
      }

      v24 = atomic_load((v23 + 56));
      v25 = (v23 + (~(v24 >> 2) & 8));
LABEL_22:
      v26 = *v25;
      v27 = *(a1 + 8);
      v53 = *a1;
      v54 = "texture";
      v55 = v26;
      v56 = 0;
      DYTraceEncode_EnterStateGroup(&v53, v27, *(a1 + 16), v22, 0);
      v28 = *(a1 + 24);
      v29 = *(a1 + 8);
      v30 = *v29;
      if ((*(v29 + 33) & 0x10) != 0)
      {
        v32 = *(a1 + 8);
        v31 = *v29;
        do
        {
          v32 = (v32 + v30);
          v30 = *v32;
          v31 += v30;
        }

        while ((*(v32 + 33) & 0x20) == 0);
      }

      else
      {
        v31 = *v29;
      }

      v33 = objc_autoreleasePoolPush();
      [*(v28 + 8) appendBytes:v29 length:v31];
      objc_autoreleasePoolPop(v33);
      if (v23)
      {
        v34 = *(v23 + 32);
        v7 = v52;
        if (v34 && (*(v34 + 79) & 8) != 0)
        {
          v35 = v34 + 64;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
        v7 = v52;
      }

      GTTraceFuncToFbuf(a1, a2, v35, 0);
      WriteGTMTLSMTexture_properties(a1, v19, v23, v7);
      WriteGTMTLSMTexture_textureViews(a1, a2, v19);
      v36 = *a1;
      v37 = *(a1 + 8);
      *(v37 + 16) = 0;
      *(v37 + 24) = 0;
      *(v37 + 32) = 70;
      *(v37 + 36) = 67;
      *(v37 + 40) = v36;
      *v37 = 0xFFFFD00800000030;
      *(v37 + 8) = 0;
      v38 = *(a1 + 24);
      v39 = *(a1 + 8);
      v40 = *v39;
      if ((*(v39 + 33) & 0x10) != 0)
      {
        v42 = *(a1 + 8);
        v41 = *v39;
        do
        {
          v42 = (v42 + v40);
          v40 = *v42;
          v41 += v40;
        }

        while ((*(v42 + 33) & 0x20) == 0);
      }

      else
      {
        v41 = *v39;
      }

      v43 = objc_autoreleasePoolPush();
      [*(v38 + 8) appendBytes:v39 length:v41];
      objc_autoreleasePoolPop(v43);
      if (++v18 >= *(v10 + 12))
      {
        goto LABEL_37;
      }
    }

    v23 = 0;
LABEL_21:
    v25 = &dword_8;
    goto LABEL_22;
  }

LABEL_37:
  v44 = *a1;
  v45 = *(a1 + 8);
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 70;
  *(v45 + 36) = 67;
  *(v45 + 40) = v44;
  *v45 = 0xFFFFD00800000030;
  *(v45 + 8) = 0;
  v46 = *(a1 + 24);
  v47 = *(a1 + 8);
  v48 = *v47;
  if ((*(v47 + 33) & 0x10) != 0)
  {
    v50 = v47;
    v49 = *v47;
    do
    {
      v50 = (v50 + v48);
      v48 = *v50;
      v49 += v48;
    }

    while ((*(v50 + 33) & 0x20) == 0);
  }

  else
  {
    v49 = *v47;
  }

  v51 = objc_autoreleasePoolPush();
  [*(v46 + 8) appendBytes:v47 length:v49];
  objc_autoreleasePoolPop(v51);
}

void WriteGTMTLSMAccelerationStructure_properties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint8x8_t a5)
{
  if (a3)
  {
    v8 = atomic_load((a3 + 56));
    v9 = (a3 + (~(v8 >> 2) & 8));
  }

  else
  {
    v9 = &dword_8;
  }

  v10 = *v9;
  v11 = *(a2 + 120);
  if (v11)
  {
    v61 = *v9;
    v12 = *(a1 + 8) + *(a1 + 16) - 512;
    v63 = 512;
    v62 = StoreMTLAccelerationStructureDescriptorUsingEncode(*(a1 + 32), v11, v12, &v63, a4);
    DYTraceEncode_MTLAccelerationStructure_setDescriptor(&v61, *(a1 + 8), *(a1 + 16), 0, 0);
    v13 = *(a1 + 8);
    v14 = v13[8];
    v13[8] = v14 | 4;
    v15 = *(a1 + 24);
    v16 = *v13;
    if ((v14 & 0x1000) != 0)
    {
      v17 = *v13;
      v18 = v13;
      do
      {
        v18 = (v18 + v17);
        v17 = *v18;
        v16 += v17;
      }

      while ((*(v18 + 33) & 0x20) == 0);
    }

    v19 = objc_autoreleasePoolPush();
    [*(v15 + 8) appendBytes:v13 length:v16];
    objc_autoreleasePoolPop(v19);
  }

  a5.i32[0] = *(a2 + 112);
  v20 = *(a1 + 8);
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 8) = 0;
  *v20 = 0xFFFFD85100000024;
  *(v20 + 32) = 4;
  *(v20 + 36) = *"Cuiuiuiui";
  *(v20 + 44) = 105;
  *(v20 + 48) = v10;
  *(v20 + 56) = vmovl_u16(*&vmovl_u8(a5));
  *v20 = 72;
  v21 = *(a1 + 8);
  v22 = v21[8];
  v21[8] = v22 | 4;
  v23 = *(a1 + 24);
  v24 = *v21;
  if ((v22 & 0x1000) != 0)
  {
    v26 = v21;
    v25 = *v21;
    do
    {
      v26 = (v26 + v24);
      v24 = *v26;
      v25 += v24;
    }

    while ((*(v26 + 33) & 0x20) == 0);
  }

  else
  {
    v25 = *v21;
  }

  v27 = objc_autoreleasePoolPush();
  [*(v23 + 8) appendBytes:v21 length:v25];
  objc_autoreleasePoolPop(v27);
  v28 = *(a2 + 88);
  if (!v28)
  {
    v28 = "";
  }

  v61 = v10;
  v62 = v28;
  DYTraceEncode_MTLAccelerationStructure_setLabel(&v61, *(a1 + 8), *(a1 + 16), 0, 0);
  v29 = *(a1 + 8);
  v30 = v29[8];
  v29[8] = v30 | 4;
  v31 = *(a1 + 24);
  v32 = *v29;
  if ((v30 & 0x1000) != 0)
  {
    v33 = *v29;
    v34 = v29;
    do
    {
      v34 = (v34 + v33);
      v33 = *v34;
      v32 += v33;
    }

    while ((*(v34 + 33) & 0x20) == 0);
  }

  v35 = objc_autoreleasePoolPush();
  [*(v31 + 8) appendBytes:v29 length:v32];
  objc_autoreleasePoolPop(v35);
  if (a3)
  {
    v36 = atomic_load((a3 + 56));
    v37 = v36 & 3;
  }

  else
  {
    v37 = 0;
  }

  v38 = *(a1 + 8);
  *(v38 + 24) = 0;
  *(v38 + 8) = 0u;
  *(v38 + 32) = 0x69754300000006;
  *v38 = 0xFFFFD82D00000028;
  *(v38 + 40) = v10;
  *(v38 + 48) = v37;
  *v38 = 52;
  v39 = *(a1 + 8);
  v40 = v39[8];
  v39[8] = v40 | 4;
  v41 = *(a1 + 24);
  v42 = *v39;
  if ((v40 & 0x1000) != 0)
  {
    v43 = *v39;
    v44 = v39;
    do
    {
      v44 = (v44 + v43);
      v43 = *v44;
      v42 += v43;
    }

    while ((*(v44 + 33) & 0x20) == 0);
  }

  v45 = objc_autoreleasePoolPush();
  [*(v41 + 8) appendBytes:v39 length:v42];
  objc_autoreleasePoolPop(v45);
  if (a3 && (v46 = *(a1 + 32), v47 = atomic_load((a3 + 56)), (v48 = v47 & 0xFFFFFFFFFFFFFFC0) != 0))
  {
    v49 = *(v46 + 224);
    v50 = v49 >= v48;
    v51 = v49 - v48;
    if (v51 != 0 && v50)
    {
      v52 = v51 * *(v46 + 232) / *(v46 + 236);
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = -1;
  }

  v53 = *(a1 + 8);
  *(v53 + 24) = 0;
  *(v53 + 8) = 0u;
  *(v53 + 32) = 0x77754300000004;
  *v53 = 0xFFFFD84300000028;
  *(v53 + 40) = v10;
  *(v53 + 48) = v52;
  *v53 = 56;
  v54 = *(a1 + 8);
  v55 = v54[8];
  v54[8] = v55 | 4;
  v56 = *(a1 + 24);
  v57 = *v54;
  if ((v55 & 0x1000) != 0)
  {
    v58 = *v54;
    v59 = v54;
    do
    {
      v59 = (v59 + v58);
      v58 = *v59;
      v57 += v58;
    }

    while ((*(v59 + 33) & 0x20) == 0);
  }

  v60 = objc_autoreleasePoolPush();
  [*(v56 + 8) appendBytes:v54 length:v57];

  objc_autoreleasePoolPop(v60);
}

void WriteGLPluginDataFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, const void *a6, apr_pool_t **a7)
{
  if (a4)
  {
    if (a6)
    {
      v8 = *(a3 + 940);
      if (v8 >= 1)
      {
        for (i = *(a3 + 952); ; ++i)
        {
          v14 = *i;
          v15 = *i ? *(v14 + 8) : 0;
          if (v15 == a4)
          {
            break;
          }

          if (!--v8)
          {
            return;
          }
        }

        if (*(v14 + 132))
        {
          v84 = *(a2 + 16);
          add = atomic_fetch_add((*(a2 + 8) + 88), 1uLL);
          v17 = *(a1 + 8);
          v91[0] = *a1;
          v91[1] = "library";
          v91[2] = add;
          v91[3] = 0;
          DYTraceEncode_EnterStateGroup(v91, v17, *(a1 + 16), a4, 0);
          v18 = *(a1 + 24);
          v19 = *(a1 + 8);
          v20 = *v19;
          if ((*(v19 + 33) & 0x10) != 0)
          {
            v22 = *(a1 + 8);
            v21 = *v19;
            do
            {
              v22 = (v22 + v20);
              v20 = *v22;
              v21 += v20;
            }

            while ((*(v22 + 33) & 0x20) == 0);
          }

          else
          {
            v21 = *v19;
          }

          v23 = objc_autoreleasePoolPush();
          [*(v18 + 8) appendBytes:v19 length:v21];
          objc_autoreleasePoolPop(v23);
          SavePointer(*(a1 + 32), a5, a6, v91);
          v24 = *(a1 + 8);
          v89[0] = *a1;
          v89[1] = add;
          v89[2] = v91;
          v89[3] = 0;
          DYTraceEncode_MTLDevice_newLibraryWithData_error(v89, v24, *(a1 + 16), 0, 0);
          v25 = *(a1 + 8);
          v26 = v25[8];
          v25[8] = v26 | 0x80000;
          v27 = *(a1 + 24);
          v28 = *v25;
          if ((v26 & 0x1000) != 0)
          {
            v29 = *v25;
            v30 = v25;
            do
            {
              v30 = (v30 + v29);
              v29 = *v30;
              v28 += v29;
            }

            while ((*(v30 + 33) & 0x20) == 0);
          }

          v31 = objc_autoreleasePoolPush();
          [*(v27 + 8) appendBytes:v25 length:v28];
          objc_autoreleasePoolPop(v31);
          v32 = *(a1 + 8);
          v85 = *a1;
          v86 = "functions";
          v87 = 0;
          v88 = 0;
          DYTraceEncode_EnterStateGroup(&v85, v32, *(a1 + 16), v33, 0);
          v34 = *(a1 + 24);
          v35 = *(a1 + 8);
          v36 = *v35;
          if ((*(v35 + 33) & 0x10) != 0)
          {
            v38 = *(a1 + 8);
            v37 = *v35;
            do
            {
              v38 = (v38 + v36);
              v36 = *v38;
              v37 += v36;
            }

            while ((*(v38 + 33) & 0x20) == 0);
          }

          else
          {
            v37 = *v35;
          }

          v39 = objc_autoreleasePoolPush();
          [*(v34 + 8) appendBytes:v35 length:v37];
          objc_autoreleasePoolPop(v39);
          v40 = *(a1 + 8);
          v85 = *a1;
          v86 = "function";
          v87 = a4;
          v88 = 0;
          DYTraceEncode_EnterStateGroup(&v85, v40, *(a1 + 16), v41, 0);
          v42 = *(a1 + 24);
          v43 = *(a1 + 8);
          v44 = *v43;
          if ((*(v43 + 33) & 0x10) != 0)
          {
            v46 = *(a1 + 8);
            v45 = *v43;
            do
            {
              v46 = (v46 + v44);
              v44 = *v46;
              v45 += v44;
            }

            while ((*(v46 + 33) & 0x20) == 0);
          }

          else
          {
            v45 = *v43;
          }

          v47 = objc_autoreleasePoolPush();
          [*(v42 + 8) appendBytes:v43 length:v45];
          objc_autoreleasePoolPop(v47);
          v85 = add;
          v90 = a4;
          entry = find_entry(v84, &v90, 8uLL, 0);
          if (*entry && (v49 = *(*entry + 32)) != 0)
          {
            v50 = atomic_load((v49 + 56));
            v51 = (v49 + (~(v50 >> 2) & 8));
          }

          else
          {
            v51 = &dword_8;
          }

          v86 = *v51;
          v87 = "__main";
          DYTraceEncode_MTLLibrary_newFunctionWithName(&v85, *(a1 + 8), *(a1 + 16), 0, 0);
          v52 = *(a1 + 8);
          v53 = v52[8];
          v52[8] = v53 | 0x80000;
          v54 = *(a1 + 24);
          v55 = *v52;
          if ((v53 & 0x1000) != 0)
          {
            v56 = *v52;
            v57 = v52;
            do
            {
              v57 = (v57 + v56);
              v56 = *v57;
              v55 += v56;
            }

            while ((*(v57 + 33) & 0x20) == 0);
          }

          v58 = objc_autoreleasePoolPush();
          [*(v54 + 8) appendBytes:v52 length:v55];
          objc_autoreleasePoolPop(v58);
          v59 = *a1;
          v60 = *(a1 + 8);
          *(v60 + 16) = 0;
          *(v60 + 24) = 0;
          *(v60 + 32) = 70;
          *(v60 + 36) = 67;
          *(v60 + 40) = v59;
          *v60 = 0xFFFFD00800000030;
          *(v60 + 8) = 0;
          v61 = *(a1 + 24);
          v62 = *(a1 + 8);
          v63 = *v62;
          if ((*(v62 + 33) & 0x10) != 0)
          {
            v65 = *(a1 + 8);
            v64 = *v62;
            do
            {
              v65 = (v65 + v63);
              v63 = *v65;
              v64 += v63;
            }

            while ((*(v65 + 33) & 0x20) == 0);
          }

          else
          {
            v64 = *v62;
          }

          v66 = objc_autoreleasePoolPush();
          [*(v61 + 8) appendBytes:v62 length:v64];
          objc_autoreleasePoolPop(v66);
          v67 = *a1;
          v68 = *(a1 + 8);
          *(v68 + 16) = 0;
          *(v68 + 24) = 0;
          *(v68 + 32) = 70;
          *(v68 + 36) = 67;
          *(v68 + 40) = v67;
          *v68 = 0xFFFFD00800000030;
          *(v68 + 8) = 0;
          v69 = *(a1 + 24);
          v70 = *(a1 + 8);
          v71 = *v70;
          if ((*(v70 + 33) & 0x10) != 0)
          {
            v73 = *(a1 + 8);
            v72 = *v70;
            do
            {
              v73 = (v73 + v71);
              v71 = *v73;
              v72 += v71;
            }

            while ((*(v73 + 33) & 0x20) == 0);
          }

          else
          {
            v72 = *v70;
          }

          v74 = objc_autoreleasePoolPush();
          [*(v69 + 8) appendBytes:v70 length:v72];
          objc_autoreleasePoolPop(v74);
          v75 = *a1;
          v76 = *(a1 + 8);
          *(v76 + 16) = 0;
          *(v76 + 24) = 0;
          *(v76 + 32) = 70;
          *(v76 + 36) = 67;
          *(v76 + 40) = v75;
          *v76 = 0xFFFFD00800000030;
          *(v76 + 8) = 0;
          v77 = *(a1 + 24);
          v78 = *(a1 + 8);
          v79 = *v78;
          if ((*(v78 + 33) & 0x10) != 0)
          {
            v81 = v78;
            v80 = *v78;
            do
            {
              v81 = (v81 + v79);
              v79 = *v81;
              v80 += v79;
            }

            while ((*(v81 + 33) & 0x20) == 0);
          }

          else
          {
            v80 = *v78;
          }

          v82 = objc_autoreleasePoolPush();
          [*(v77 + 8) appendBytes:v78 length:v80];
          objc_autoreleasePoolPop(v82);
          v83 = apr_palloc(*a7, 8uLL);
          *v83 = a4;
          apr_hash_set(a7, v83, 8, &dword_0 + 1);
        }
      }
    }
  }
}

void WriteGTMTLSMFunction(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a2)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  v82 = v8;
  entry = find_entry(a4, &v82, 8uLL, 0);
  if (*entry && (v11 = *(*entry + 32)) != 0)
  {
    v12 = atomic_load((v11 + 56));
    v13 = (v11 + (~(v12 >> 2) & 8));
  }

  else
  {
    v13 = &dword_8;
  }

  v14 = *v13;
  v15 = *(a1 + 8);
  v82 = *a1;
  v83 = "function";
  v84 = v14;
  v85 = 0;
  DYTraceEncode_EnterStateGroup(&v82, v15, *(a1 + 16), v10, 0);
  v16 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = *v17;
  if ((*(v17 + 33) & 0x10) != 0)
  {
    v20 = *(a1 + 8);
    v19 = *v17;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v17;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v17 length:v19];
  objc_autoreleasePoolPop(v21);
  if (*(a2 + 72))
  {
    if (*(a2 + 48))
    {
      v82 = *(a2 + 40);
      v22 = find_entry(a4, &v82, 8uLL, 0);
      if (*v22 && (v23 = *(*v22 + 32)) != 0)
      {
        v24 = atomic_load((v23 + 56));
        v25 = (v23 + (~(v24 >> 2) & 8));
      }

      else
      {
        v25 = &dword_8;
      }

      v82 = *v25;
      v83 = v14;
      v30 = *(a2 + 72);
      v31 = *(a2 + 48);
      v84 = *(a2 + 56);
      v85 = v30;
      v88 = v31;
      v32 = find_entry(a4, &v88, 8uLL, 0);
      if (*v32 && (v33 = *(*v32 + 32)) != 0)
      {
        v34 = atomic_load((v33 + 56));
        v35 = (v33 + (~(v34 >> 2) & 8));
        v30 = v85;
      }

      else
      {
        v35 = &dword_8;
      }

      v86 = *v35;
      v87 = 0;
      v36 = *(a1 + 8) + *(a1 + 16) - 512;
      v88 = 512;
      v85 = StoreMTLFunctionConstantValuesUsingEncode(*(a1 + 32), v30, v36, &v88);
      DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
    }

    else
    {
      v82 = *(a2 + 40);
      v37 = find_entry(a4, &v82, 8uLL, 0);
      if (*v37 && (v38 = *(*v37 + 32)) != 0)
      {
        v39 = atomic_load((v38 + 56));
        v40 = (v38 + (~(v39 >> 2) & 8));
      }

      else
      {
        v40 = &dword_8;
      }

      v82 = *v40;
      v83 = v14;
      v41 = *(a2 + 72);
      v84 = *(a2 + 56);
      v86 = 0;
      v42 = *(a1 + 8) + *(a1 + 16) - 512;
      v88 = 512;
      v85 = StoreMTLFunctionConstantValuesUsingEncode(*(a1 + 32), v41, v42, &v88);
      DYTraceEncode_MTLLibrary_newFunctionWithName_constantValues_error(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
    }
  }

  else if (*(a2 + 131))
  {
    v82 = *(a2 + 40);
    v26 = find_entry(a4, &v82, 8uLL, 0);
    if (*v26 && (v27 = *(*v26 + 32)) != 0)
    {
      v28 = atomic_load((v27 + 56));
      v29 = (v27 + (~(v28 >> 2) & 8));
    }

    else
    {
      v29 = &dword_8;
    }

    v82 = *v29;
    v83 = v14;
    v84 = *(a2 + 56);
    DYTraceEncode_MTLLibrary_newExternFunctionWithName(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  else if (*(a2 + 120))
  {
    v82 = *(a2 + 40);
    v43 = find_entry(a4, &v82, 8uLL, 0);
    if (*v43 && (v44 = *(*v43 + 32)) != 0)
    {
      v45 = atomic_load((v44 + 56));
      v46 = (v44 + (~(v45 >> 2) & 8));
    }

    else
    {
      v46 = &dword_8;
    }

    v82 = *v46;
    v83 = v14;
    v47 = *(a2 + 120);
    v85 = 0;
    v48 = *(a1 + 8) + *(a1 + 16) - 512;
    v88 = 512;
    v84 = StoreMTLIntersectionFunctionDescriptorUsingEncode(*(a1 + 32), v47, v48, &v88);
    DYTraceEncode_MTLLibrary_newIntersectionFunctionWithDescriptor_error(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  else if (*(a2 + 132))
  {
    v57 = *(a2 + 88);
    if (v57)
    {
      v58 = *(a2 + 4);
      if ((v58 + 15428) < 2)
      {
        v65 = *(a1 + 8);
        v82 = *a1;
        v83 = v14;
        v66 = *(a2 + 96);
        v84 = v57;
        v85 = v66;
        v86 = *(a2 + 128);
        GTTrace_storePointer(a1, -15427, &v82, (v65 + *(a1 + 16) - 512), 512, a4);
        DYTraceEncode_MTLDevice_newFunctionWithGLESIR_inputsDescription_functionType(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
      }

      else
      {
        v59 = *(a1 + 8);
        v82 = *a1;
        v83 = v14;
        if ((v58 + 15430) > 1)
        {
          v73 = *(a2 + 96);
          v84 = v57;
          v85 = v73;
          v86 = *(a2 + 128);
          GTTrace_storePointer(a1, -15730, &v82, (v59 + *(a1 + 16) - 512), 512, a4);
          DYTraceEncode_MTLDevice_newFunctionWithGLIR_inputsDescription_functionType(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
        }

        else
        {
          v60 = *(a2 + 96);
          v84 = v57;
          v85 = v60;
          v86 = *(a2 + 128);
          GTTrace_storePointer(a1, -15429, &v82, (v59 + *(a1 + 16) - 512), 512, a4);
          DYTraceEncode_MTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
        }
      }
    }

    if (*(a2 + 104))
    {
      v82 = *(a2 + 40);
      v74 = find_entry(a4, &v82, 8uLL, 0);
      if (*v74 && (v75 = *(*v74 + 32)) != 0)
      {
        v76 = atomic_load((v75 + 56));
        v77 = (v75 + (~(v76 >> 2) & 8));
      }

      else
      {
        v77 = &dword_8;
      }

      v82 = *v77;
      v83 = v14;
      v78 = *(a2 + 104);
      LOBYTE(v85) = *(a2 + 130);
      *(&v85 + 1) = 0;
      HIDWORD(v85) = 0;
      v79 = *(a1 + 8);
      v80 = *(a1 + 16);
      if (v78)
      {
        v81 = v79 + v80 - 512;
        SavePointer(*(a1 + 32), (v78 + 16), *(v78 + 12), v81);
        v79 = *(a1 + 8);
        LODWORD(v80) = *(a1 + 16);
      }

      else
      {
        v81 = 0;
      }

      v84 = v81;
      DYTraceEncode_MTLFunction_newFunctionWithPluginData_bitcodeType(&v82, v79, v80, 0, 0);
    }
  }

  else if (*(a2 + 112))
  {
    v82 = *(a2 + 40);
    v61 = find_entry(a4, &v82, 8uLL, 0);
    if (*v61 && (v62 = *(*v61 + 32)) != 0)
    {
      v63 = atomic_load((v62 + 56));
      v64 = (v62 + (~(v63 >> 2) & 8));
    }

    else
    {
      v64 = &dword_8;
    }

    v82 = *v64;
    v83 = v14;
    v67 = *(a2 + 112);
    v85 = 0;
    v68 = *(a1 + 8) + *(a1 + 16) - 512;
    v88 = 512;
    v84 = StoreMTLFunctionDescriptorUsingEncode(*(a1 + 32), v67, v68, &v88, a4);
    DYTraceEncode_MTLLibrary_newFunctionWithDescriptor_error(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  else
  {
    v82 = *(a2 + 40);
    v69 = find_entry(a4, &v82, 8uLL, 0);
    if (*v69 && (v70 = *(*v69 + 32)) != 0)
    {
      v71 = atomic_load((v70 + 56));
      v72 = (v70 + (~(v71 >> 2) & 8));
    }

    else
    {
      v72 = &dword_8;
    }

    v82 = *v72;
    v83 = v14;
    v84 = *(a2 + 56);
    DYTraceEncode_MTLLibrary_newFunctionWithName(&v82, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  FlushChainedFunctionInfo(a1, a2, a4, a3);
  v49 = *a1;
  v50 = *(a1 + 8);
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = 70;
  *(v50 + 36) = 67;
  *(v50 + 40) = v49;
  *v50 = 0xFFFFD00800000030;
  *(v50 + 8) = 0;
  v51 = *(a1 + 24);
  v52 = *(a1 + 8);
  v53 = *v52;
  if ((*(v52 + 33) & 0x10) != 0)
  {
    v55 = v52;
    v54 = *v52;
    do
    {
      v55 = (v55 + v53);
      v53 = *v55;
      v54 += v53;
    }

    while ((*(v55 + 33) & 0x20) == 0);
  }

  else
  {
    v54 = *v52;
  }

  v56 = objc_autoreleasePoolPush();
  [*(v51 + 8) appendBytes:v52 length:v54];
  objc_autoreleasePoolPop(v56);
}

void WriteGTMTLSMLibrary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v128 = *(a2 + 696);
  v6 = *(a2 + 16);
  if (IsAppleInternalLabel(*(a3 + 128)))
  {
    v7 = 0x80000;
  }

  else
  {
    v7 = 0;
  }

  v129 = *(a3 + 8);
  v9 = *find_entry(v6, &v129, 8uLL, 0);
  v127 = v7;
  if (v9)
  {
    v10 = *(v9 + 32);
    if (v10)
    {
      v11 = atomic_load((v10 + 56));
      v12 = (v10 + (~(v11 >> 2) & 8));
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = &dword_8;
LABEL_9:
  v13 = v6;
  v14 = *v12;
  v15 = *(a1 + 8);
  v129 = *a1;
  v130 = "library";
  v16 = v14;
  v131 = v14;
  v132 = 0;
  DYTraceEncode_EnterStateGroup(&v129, v15, *(a1 + 16), v8, 0);
  v17 = *(a1 + 24);
  v18 = *(a1 + 8);
  v19 = *v18;
  if ((*(v18 + 33) & 0x10) != 0)
  {
    v20 = a3;
    v22 = *(a1 + 8);
    v21 = *v18;
    do
    {
      v22 = (v22 + v19);
      v19 = *v22;
      v21 += v19;
    }

    while ((*(v22 + 33) & 0x20) == 0);
  }

  else
  {
    v20 = a3;
    v21 = *v18;
  }

  v23 = objc_autoreleasePoolPush();
  [*(v17 + 8) appendBytes:v18 length:v21];
  objc_autoreleasePoolPop(v23);
  v26 = v20;
  v27 = *(v20 + 177);
  if (v27 <= 2)
  {
    v28 = v13;
    if (!v27)
    {
      v137[0] = *a1;
      v137[1] = v16;
      v45 = *(a1 + 32);
      v46 = *(v26 + 112);
      v29 = v127;
      if (*(a2 + 768))
      {
        CopyFilePath(v45, a2, *(v26 + 112));
      }

      else
      {
        v59 = __chkstk_darwin(v45, v25);
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v46 = SaveFileWithURL(v59, v46, &v121, 0, 1);
      }

      v137[2] = v46;
      v137[3] = 0;
      v42 = *(a1 + 8);
      v43 = *(a1 + 16);
      v44 = v137;
      goto LABEL_55;
    }

    v29 = v127;
    if (v27 == 1)
    {
      v136[0] = *a1;
      v136[1] = v16;
      v52 = *(a1 + 32);
      v53 = *(v26 + 112);
      if (*(a2 + 768))
      {
        CopyFilePath(v52, a2, *(v26 + 112));
      }

      else
      {
        v61 = __chkstk_darwin(v52, v25);
        v125 = 0;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v53 = SaveFileWithURL(v61, v53, &v121, 0, 1);
      }

      v136[2] = v53;
      v136[3] = 0;
      v42 = *(a1 + 8);
      v43 = *(a1 + 16);
      v44 = v136;
      goto LABEL_55;
    }

    if (*(v26 + 56))
    {
      v129 = *(v26 + 48);
      entry = find_entry(v28, &v129, 8uLL, 0);
      if (*entry && (v37 = *(*entry + 32)) != 0)
      {
        v38 = atomic_load((v37 + 56));
        v39 = (v37 + (~(v38 >> 2) & 8));
      }

      else
      {
        v39 = &dword_8;
      }

      v129 = *v39;
      v130 = v16;
      v57 = *(v26 + 56);
      v132 = 0;
      v58 = *(a1 + 8) + *(a1 + 16) - 512;
      v138 = 512;
      v131 = StoreMTL4LibraryDescriptorUsingEncode(*(a1 + 32), v57, v58, &v138, v28);
      DYTraceEncode_MTL4Compiler_newLibraryWithDescriptor_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
    }

    else if (!EncodeDebugLibraryWithSource(a1, v26, v10, v28))
    {
      v129 = *a1;
      v130 = v16;
      v60 = *(v26 + 112);
      if (*(a2 + 668) == 1)
      {
        CopyFilePath(*(a1 + 32), a2, *(v26 + 112));
      }

      v120 = *(v26 + 120);
      v131 = v60;
      v132 = v120;
      v133 = 0;
      GTTrace_storePointer(a1, -16305, &v129, (*(a1 + 8) + *(a1 + 16) - 512), 512, v28);
      DYTraceEncode_MTLDevice_newLibraryWithSource_options_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
    }
  }

  else
  {
    v28 = v13;
    if (v27 <= 5)
    {
      v29 = v127;
      if (v27 != 3)
      {
        if (v27 == 5)
        {
          v129 = *a1;
          v130 = v16;
          v30 = *(v26 + 168);
          __chkstk_darwin(v24, 8 * v30);
          v32 = &v126[-((v31 + 15) & 0xFFFFFFFF0)];
          bzero(v32, v31);
          name_array_16152(v28, v32, *(v26 + 64), v30);
          v33 = *(v26 + 168);
          v131 = v32;
          v132 = v33;
          v34 = *(v26 + 72);
          v134 = 0;
          v35 = *(a1 + 8) + *(a1 + 16) - 512;
          v138 = 512;
          v133 = StoreMTLImageFilterFunctionInfoSPIUsingEncode(*(a1 + 32), v34, v35, &v138, v33);
          DYTraceEncode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
        }

        goto LABEL_56;
      }

      if (EncodeDebugLibraryWithData(a1, v26, v10))
      {
        goto LABEL_56;
      }

      v42 = *(a1 + 8);
      v129 = *a1;
      v130 = v16;
      v47 = *(v26 + 112);
      v132 = 0;
      v48 = *(a1 + 16);
      if (v47)
      {
        v49 = v42 + v48 - 512;
        SavePointer(*(a1 + 32), (v47 + 16), *(v47 + 12), v49);
        v42 = *(a1 + 8);
        LODWORD(v48) = *(a1 + 16);
      }

      else
      {
        v49 = 0;
      }

      v131 = v49;
      v43 = v48;
      v44 = &v129;
LABEL_55:
      DYTraceEncode_MTLDevice_newLibraryWithData_error(v44, v42, v43, 0, 0);
      goto LABEL_56;
    }

    v29 = v127;
    if (v27 != 6)
    {
      if (v27 != 7)
      {
        goto LABEL_56;
      }

      v135[0] = *a1;
      v135[1] = v16;
      v40 = __chkstk_darwin(*(a1 + 32), *(v26 + 112));
      v125 = 0;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      SaveDirPath(v40, v41, &v121, 1);
      v135[2] = &v121;
      v135[3] = 0;
      v42 = *(a1 + 8);
      v43 = *(a1 + 16);
      v44 = v135;
      goto LABEL_55;
    }

    v50 = *(v26 + 4);
    if (v50 > -15422)
    {
      if (v50 == -15421 || v50 == -15420)
      {
        v62 = *(a1 + 8);
        v129 = *a1;
        v130 = v16;
        v63 = *(v26 + 88);
        v132 = 0;
        v64 = v62 + *(a1 + 16) - 512;
        v138 = 512;
        v131 = StoreMTLStitchedLibraryDescriptorUsingEncode(*(a1 + 32), v63, v64, &v138, v28);
        DYTraceEncode_MTLDevice_newLibraryWithStitchedDescriptor_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
        goto LABEL_56;
      }

      v51 = -15419;
LABEL_41:
      if (v50 == v51)
      {
        v54 = *(a1 + 8);
        v129 = *a1;
        v130 = v16;
        v55 = *(v26 + 88);
        v132 = 0;
        v56 = v54 + *(a1 + 16) - 512;
        v138 = 512;
        v131 = StoreMTLStitchedLibraryDescriptorUsingEncode(*(a1 + 32), v55, v56, &v138, v28);
        DYTraceEncode_MTLDevice_newLibraryWithDescriptorSPI_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
      }

      goto LABEL_56;
    }

    if (v50 != -15693)
    {
      if (v50 == -15435)
      {
        v117 = *(a1 + 8);
        v129 = *a1;
        v130 = v16;
        v118 = *(v26 + 88);
        v132 = 0;
        v119 = v117 + *(a1 + 16) - 512;
        v138 = 512;
        v131 = StoreMTLStitchedLibraryDescriptorUsingEncode(*(a1 + 32), v118, v119, &v138, v28);
        DYTraceEncode_MTLDevice_newLibraryWithDescriptor_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
        goto LABEL_56;
      }

      v51 = -15434;
      goto LABEL_41;
    }

    v108 = *(v26 + 172);
    __chkstk_darwin(v24, 8 * (v108 + 1));
    v110 = &v126[-v109];
    bzero(&v126[-v109], v111);
    *v110 = v108;
    if (v108)
    {
      v112 = *(v26 + 104);
      v113 = v110 + 1;
      do
      {
        v114 = *v112++;
        *v113++ = v114;
        --v108;
      }

      while (v108);
    }

    v115 = *(a1 + 8);
    v129 = *a1;
    v130 = v16;
    v131 = *(v26 + 96);
    v133 = 0;
    v116 = v115 + *(a1 + 16) - 512;
    v138 = 512;
    v132 = UnwrapMTLArray_(*(a1 + 32), v110, v116, &v138, v28);
    DYTraceEncode_MTLDevice_newLibraryWithDAG_functions_error(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
  }

LABEL_56:
  FlushChainedLibraryInfo(a1, v26, v28, v29);
  v65 = *(v26 + 128);
  if (!v65)
  {
    v65 = "";
  }

  v129 = v16;
  v130 = v65;
  DYTraceEncode_MTLLibrary_setLabel(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
  v66 = *(a1 + 8);
  v67 = v66[8];
  v66[8] = v67 | v29;
  v68 = *(a1 + 24);
  v69 = *v66;
  if ((v67 & 0x1000) != 0)
  {
    v70 = *v66;
    v71 = v66;
    do
    {
      v71 = (v71 + v70);
      v70 = *v71;
      v69 += v70;
    }

    while ((*(v71 + 33) & 0x20) == 0);
  }

  v72 = objc_autoreleasePoolPush();
  [*(v68 + 8) appendBytes:v66 length:v69];
  objc_autoreleasePoolPop(v72);
  v73 = *(v26 + 136);
  if (v73)
  {
    v129 = v16;
    v130 = v73;
    DYTraceEncode_MTLLibrary_setOverrideTriple(&v129, *(a1 + 8), *(a1 + 16), 0, 0);
    v74 = *(a1 + 8);
    v75 = v74[8];
    v74[8] = v75 | v29;
    v76 = *(a1 + 24);
    v77 = *v74;
    if ((v75 & 0x1000) != 0)
    {
      v78 = *v74;
      v79 = v74;
      do
      {
        v79 = (v79 + v78);
        v78 = *v79;
        v77 += v78;
      }

      while ((*(v79 + 33) & 0x20) == 0);
    }

    v80 = objc_autoreleasePoolPush();
    [*(v76 + 8) appendBytes:v74 length:v77];
    objc_autoreleasePoolPop(v80);
  }

  v129 = *(v26 + 8);
  v81 = find_entry(v128, &v129, 8uLL, 0);
  if (*v81)
  {
    v83 = *(*v81 + 32);
  }

  else
  {
    v83 = 0;
  }

  v84 = *(a1 + 8);
  v129 = *a1;
  v130 = "functions";
  v131 = 0;
  v132 = 0;
  DYTraceEncode_EnterStateGroup(&v129, v84, *(a1 + 16), v82, 0);
  v85 = *(a1 + 24);
  v86 = *(a1 + 8);
  v87 = *v86;
  if ((*(v86 + 33) & 0x10) != 0)
  {
    v89 = *(a1 + 8);
    v88 = *v86;
    do
    {
      v89 = (v89 + v87);
      v87 = *v89;
      v88 += v87;
    }

    while ((*(v89 + 33) & 0x20) == 0);
  }

  else
  {
    v88 = *v86;
  }

  v90 = objc_autoreleasePoolPush();
  [*(v85 + 8) appendBytes:v86 length:v88];
  objc_autoreleasePoolPop(v90);
  if (v83 && *(v83 + 12) >= 1)
  {
    v91 = 0;
    do
    {
      WriteGTMTLSMFunction(a1, *(*(v83 + 24) + 8 * v91++), v29, v28);
    }

    while (v91 < *(v83 + 12));
  }

  v92 = *a1;
  v93 = *(a1 + 8);
  *(v93 + 16) = 0;
  *(v93 + 24) = 0;
  *(v93 + 32) = 70;
  *(v93 + 36) = 67;
  *(v93 + 40) = v92;
  *v93 = 0xFFFFD00800000030;
  *(v93 + 8) = 0;
  v94 = *(a1 + 24);
  v95 = *(a1 + 8);
  v96 = *v95;
  if ((*(v95 + 33) & 0x10) != 0)
  {
    v98 = *(a1 + 8);
    v97 = *v95;
    do
    {
      v98 = (v98 + v96);
      v96 = *v98;
      v97 += v96;
    }

    while ((*(v98 + 33) & 0x20) == 0);
  }

  else
  {
    v97 = *v95;
  }

  v99 = objc_autoreleasePoolPush();
  [*(v94 + 8) appendBytes:v95 length:v97];
  objc_autoreleasePoolPop(v99);
  v100 = *a1;
  v101 = *(a1 + 8);
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  *(v101 + 32) = 70;
  *(v101 + 36) = 67;
  *(v101 + 40) = v100;
  *v101 = 0xFFFFD00800000030;
  *(v101 + 8) = 0;
  v102 = *(a1 + 24);
  v103 = *(a1 + 8);
  v104 = *v103;
  if ((*(v103 + 33) & 0x10) != 0)
  {
    v106 = v103;
    v105 = *v103;
    do
    {
      v106 = (v106 + v104);
      v104 = *v106;
      v105 += v104;
    }

    while ((*(v106 + 33) & 0x20) == 0);
  }

  else
  {
    v105 = *v103;
  }

  v107 = objc_autoreleasePoolPush();
  [*(v102 + 8) appendBytes:v103 length:v105];
  objc_autoreleasePoolPop(v107);
}

void WriteGTMTLSMDynamicLibrary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = IsAppleInternalLabel(*(a3 + 72));
  v74 = *(a3 + 8);
  entry = find_entry(a4, &v74, 8uLL, 0);
  if (*entry && (v11 = *(*entry + 32)) != 0)
  {
    v12 = atomic_load((v11 + 56));
    v13 = (v11 + (~(v12 >> 2) & 8));
  }

  else
  {
    v13 = &dword_8;
  }

  v14 = *v13;
  v15 = *(a1 + 8);
  v74 = *a1;
  v75 = "dynamic-library";
  v76 = v14;
  v77 = 0;
  DYTraceEncode_EnterStateGroup(&v74, v15, *(a1 + 16), v10, 0);
  v16 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = *v17;
  if ((*(v17 + 33) & 0x10) != 0)
  {
    v20 = *(a1 + 8);
    v19 = *v17;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v17;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v17 length:v19];
  objc_autoreleasePoolPop(v21);
  if (*(a3 + 56))
  {
    if (*(a3 + 48))
    {
      v74 = *(a3 + 48);
      v23 = find_entry(a4, &v74, 8uLL, 0);
      if (*v23 && (v24 = *(*v23 + 32)) != 0)
      {
        v25 = atomic_load((v24 + 56));
        v26 = (v24 + (~(v25 >> 2) & 8));
      }

      else
      {
        v26 = &dword_8;
      }

      v33 = *v26;
      v74 = *(a3 + 56);
      v34 = find_entry(a4, &v74, 8uLL, 0);
      if (*v34 && (v35 = *(*v34 + 32)) != 0)
      {
        v36 = atomic_load((v35 + 56));
        v37 = (v35 + (~(v36 >> 2) & 8));
      }

      else
      {
        v37 = &dword_8;
      }

      v38 = *v37;
      v39 = *(a1 + 8);
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x74744300000001;
      v40 = 0xFFFFC4DE00000028;
    }

    else
    {
      v33 = *a1;
      v74 = *(a3 + 56);
      v41 = find_entry(a4, &v74, 8uLL, 0);
      if (*v41 && (v42 = *(*v41 + 32)) != 0)
      {
        v43 = atomic_load((v42 + 56));
        v44 = (v42 + (~(v43 >> 2) & 8));
      }

      else
      {
        v44 = &dword_8;
      }

      v38 = *v44;
      v39 = *(a1 + 8);
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x74744300000001;
      v40 = 0xFFFFC2B100000028;
    }

    *v39 = v40;
    *(v39 + 40) = v33;
    *(v39 + 48) = v38;
    *(v39 + 56) = 0;
    *(v39 + 64) = 116;
    *(v39 + 68) = v14;
    *v39 = 76;
  }

  else
  {
    v27 = *(a3 + 88);
    if (v27)
    {
      if (*(a3 + 48))
      {
        v74 = *(a3 + 48);
        v28 = find_entry(a4, &v74, 8uLL, 0);
        if (*v28 && (v30 = *(*v28 + 32)) != 0)
        {
          v31 = atomic_load((v30 + 56));
          v32 = (v30 + (~(v31 >> 2) & 8));
        }

        else
        {
          v32 = &dword_8;
        }

        v73[0] = *v32;
        v73[1] = v14;
        v62 = *(a1 + 32);
        v63 = *(a3 + 88);
        if (*(a2 + 768))
        {
          CopyFilePath(v62, a2, *(a3 + 88));
        }

        else
        {
          v65 = __chkstk_darwin(v62, v29);
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v63 = SaveFileWithURL(v65, v63, &v67, 0, 1);
        }

        v73[2] = v63;
        v73[3] = 0;
        DYTraceEncode_MTL4Compiler_newDynamicLibraryWithURL_error(v73, *(a1 + 8), *(a1 + 16), 0, 0);
      }

      else
      {
        v72[0] = *a1;
        v72[1] = v14;
        v64 = *(a1 + 32);
        if (*(a2 + 768))
        {
          CopyFilePath(v64, a2, v27);
        }

        else
        {
          v66 = __chkstk_darwin(v64, v22);
          v71 = 0;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v27 = SaveFileWithURL(v66, v27, &v67, 0, 1);
        }

        v72[2] = v27;
        v72[3] = 0;
        DYTraceEncode_MTLDevice_newDynamicLibraryWithURL_error(v72, *(a1 + 8), *(a1 + 16), 0, 0);
      }
    }
  }

  if (v8)
  {
    v45 = 0x80000;
  }

  else
  {
    v45 = 0;
  }

  FlushChainedDynamicLibraryInfo(a1, a3, a4, v45);
  v46 = *(a3 + 72);
  if (!v46)
  {
    v46 = "";
  }

  v74 = v14;
  v75 = v46;
  DYTraceEncode_MTLDynamicLibrary_setLabel(&v74, *(a1 + 8), *(a1 + 16), 0, 0);
  v47 = *(a1 + 8);
  v48 = v47[8];
  v47[8] = v48 | v45;
  v49 = *(a1 + 24);
  v50 = *v47;
  if ((v48 & 0x1000) != 0)
  {
    v51 = *v47;
    v52 = v47;
    do
    {
      v52 = (v52 + v51);
      v51 = *v52;
      v50 += v51;
    }

    while ((*(v52 + 33) & 0x20) == 0);
  }

  v53 = objc_autoreleasePoolPush();
  [*(v49 + 8) appendBytes:v47 length:v50];
  objc_autoreleasePoolPop(v53);
  v54 = *a1;
  v55 = *(a1 + 8);
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = 70;
  *(v55 + 36) = 67;
  *(v55 + 40) = v54;
  *v55 = 0xFFFFD00800000030;
  *(v55 + 8) = 0;
  v56 = *(a1 + 24);
  v57 = *(a1 + 8);
  v58 = *v57;
  if ((*(v57 + 33) & 0x10) != 0)
  {
    v60 = v57;
    v59 = *v57;
    do
    {
      v60 = (v60 + v58);
      v58 = *v60;
      v59 += v58;
    }

    while ((*(v60 + 33) & 0x20) == 0);
  }

  else
  {
    v59 = *v57;
  }

  v61 = objc_autoreleasePoolPush();
  [*(v56 + 8) appendBytes:v57 length:v59];
  objc_autoreleasePoolPop(v61);
}

void WriteGTMTLSMFence(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v37 = *a1;
  v38 = "fence";
  v39 = a3;
  v40 = 0;
  DYTraceEncode_EnterStateGroup(&v37, v7, *(a1 + 4), a4, 0);
  v8 = a1[3];
  v9 = a1[1];
  v10 = *v9;
  if ((*(v9 + 33) & 0x10) != 0)
  {
    v12 = a1[1];
    v11 = *v9;
    do
    {
      v12 = (v12 + v10);
      v10 = *v12;
      v11 += v10;
    }

    while ((*(v12 + 33) & 0x20) == 0);
  }

  else
  {
    v11 = *v9;
  }

  v13 = objc_autoreleasePoolPush();
  [*(v8 + 8) appendBytes:v9 length:v11];
  objc_autoreleasePoolPop(v13);
  v14 = *a1;
  v15 = a1[1];
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  *(v15 + 36) = 67;
  *(v15 + 40) = v14;
  *(v15 + 48) = 116;
  *(v15 + 52) = a3;
  *v15 = 0xFFFFC1000000003CLL;
  *(v15 + 8) = 0;
  v16 = a1[1];
  v17 = a1[3];
  v18 = *v16;
  if ((*(v16 + 33) & 0x10) != 0)
  {
    v20 = a1[1];
    v19 = *v16;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v16;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v17 + 8) appendBytes:v16 length:v19];
  objc_autoreleasePoolPop(v21);
  v22 = *(a2 + 48);
  if (!v22)
  {
    v22 = "";
  }

  v37 = a3;
  v38 = v22;
  DYTraceEncode_MTLFence_setLabel(&v37, a1[1], *(a1 + 4), 0, 0);
  v23 = a1[1];
  v24 = a1[3];
  v25 = *v23;
  if ((*(v23 + 33) & 0x10) != 0)
  {
    v27 = a1[1];
    v26 = *v23;
    do
    {
      v27 = (v27 + v25);
      v25 = *v27;
      v26 += v25;
    }

    while ((*(v27 + 33) & 0x20) == 0);
  }

  else
  {
    v26 = *v23;
  }

  v28 = objc_autoreleasePoolPush();
  [*(v24 + 8) appendBytes:v23 length:v26];
  objc_autoreleasePoolPop(v28);
  v29 = *a1;
  v30 = a1[1];
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 70;
  *(v30 + 36) = 67;
  *(v30 + 40) = v29;
  *v30 = 0xFFFFD00800000030;
  *(v30 + 8) = 0;
  v31 = a1[3];
  v32 = a1[1];
  v33 = *v32;
  if ((*(v32 + 33) & 0x10) != 0)
  {
    v35 = v32;
    v34 = *v32;
    do
    {
      v35 = (v35 + v33);
      v33 = *v35;
      v34 += v33;
    }

    while ((*(v35 + 33) & 0x20) == 0);
  }

  else
  {
    v34 = *v32;
  }

  v36 = objc_autoreleasePoolPush();
  [*(v31 + 8) appendBytes:v32 length:v34];

  objc_autoreleasePoolPop(v36);
}

void WriteGTMTLSMEvent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v37 = *a1;
  v38 = "event";
  v39 = a3;
  v40 = 0;
  DYTraceEncode_EnterStateGroup(&v37, v7, *(a1 + 4), a4, 0);
  v8 = a1[3];
  v9 = a1[1];
  v10 = *v9;
  if ((*(v9 + 33) & 0x10) != 0)
  {
    v12 = a1[1];
    v11 = *v9;
    do
    {
      v12 = (v12 + v10);
      v10 = *v12;
      v11 += v10;
    }

    while ((*(v12 + 33) & 0x20) == 0);
  }

  else
  {
    v11 = *v9;
  }

  v13 = objc_autoreleasePoolPush();
  [*(v8 + 8) appendBytes:v9 length:v11];
  objc_autoreleasePoolPop(v13);
  v14 = *a1;
  v15 = a1[1];
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  *(v15 + 36) = 67;
  *(v15 + 40) = v14;
  *(v15 + 48) = 116;
  *(v15 + 52) = a3;
  *v15 = 0xFFFFC1830000003CLL;
  *(v15 + 8) = 0;
  v16 = a1[1];
  v17 = a1[3];
  v18 = *v16;
  if ((*(v16 + 33) & 0x10) != 0)
  {
    v20 = a1[1];
    v19 = *v16;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v16;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v17 + 8) appendBytes:v16 length:v19];
  objc_autoreleasePoolPop(v21);
  v22 = *(a2 + 48);
  if (!v22)
  {
    v22 = "";
  }

  v37 = a3;
  v38 = v22;
  DYTraceEncode_MTLEvent_setLabel(&v37, a1[1], *(a1 + 4), 0, 0);
  v23 = a1[1];
  v24 = a1[3];
  v25 = *v23;
  if ((*(v23 + 33) & 0x10) != 0)
  {
    v27 = a1[1];
    v26 = *v23;
    do
    {
      v27 = (v27 + v25);
      v25 = *v27;
      v26 += v25;
    }

    while ((*(v27 + 33) & 0x20) == 0);
  }

  else
  {
    v26 = *v23;
  }

  v28 = objc_autoreleasePoolPush();
  [*(v24 + 8) appendBytes:v23 length:v26];
  objc_autoreleasePoolPop(v28);
  v29 = *a1;
  v30 = a1[1];
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 70;
  *(v30 + 36) = 67;
  *(v30 + 40) = v29;
  *v30 = 0xFFFFD00800000030;
  *(v30 + 8) = 0;
  v31 = a1[3];
  v32 = a1[1];
  v33 = *v32;
  if ((*(v32 + 33) & 0x10) != 0)
  {
    v35 = v32;
    v34 = *v32;
    do
    {
      v35 = (v35 + v33);
      v33 = *v35;
      v34 += v33;
    }

    while ((*(v35 + 33) & 0x20) == 0);
  }

  else
  {
    v34 = *v32;
  }

  v36 = objc_autoreleasePoolPush();
  [*(v31 + 8) appendBytes:v32 length:v34];

  objc_autoreleasePoolPop(v36);
}

void WriteGTMTLSMLateEvalEvent(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v38[0] = *a1;
  v38[1] = "late-eval-event";
  v38[2] = a3;
  v38[3] = 0;
  DYTraceEncode_EnterStateGroup(v38, v7, *(a1 + 4), a4, 0);
  v8 = a1[3];
  v9 = a1[1];
  v10 = *v9;
  if ((*(v9 + 33) & 0x10) != 0)
  {
    v12 = a1[1];
    v11 = *v9;
    do
    {
      v12 = (v12 + v10);
      v10 = *v12;
      v11 += v10;
    }

    while ((*(v12 + 33) & 0x20) == 0);
  }

  else
  {
    v11 = *v9;
  }

  v13 = objc_autoreleasePoolPush();
  [*(v8 + 8) appendBytes:v9 length:v11];
  objc_autoreleasePoolPop(v13);
  v14 = *a1;
  v15 = a1[1];
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  *(v15 + 36) = 67;
  *(v15 + 40) = v14;
  *(v15 + 48) = 116;
  *(v15 + 52) = a3;
  *v15 = 0xFFFFC3780000003CLL;
  *(v15 + 8) = 0;
  v16 = a1[1];
  v17 = a1[3];
  v18 = *v16;
  if ((*(v16 + 33) & 0x10) != 0)
  {
    v20 = a1[1];
    v19 = *v16;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v16;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v17 + 8) appendBytes:v16 length:v19];
  objc_autoreleasePoolPop(v21);
  v22 = *(a2 + 64);
  v23 = a1[1];
  *(v23 + 24) = 0;
  *(v23 + 8) = 0u;
  *(v23 + 32) = 0x77754300000000;
  *v23 = 0xFFFFC37E00000028;
  *(v23 + 40) = a3;
  *(v23 + 48) = v22;
  *v23 = 56;
  v24 = a1[1];
  v25 = a1[3];
  v26 = *v24;
  if ((*(v24 + 33) & 0x10) != 0)
  {
    v28 = a1[1];
    v27 = *v24;
    do
    {
      v28 = (v28 + v26);
      v26 = *v28;
      v27 += v26;
    }

    while ((*(v28 + 33) & 0x20) == 0);
  }

  else
  {
    v27 = *v24;
  }

  v29 = objc_autoreleasePoolPush();
  [*(v25 + 8) appendBytes:v24 length:v27];
  objc_autoreleasePoolPop(v29);
  v30 = *a1;
  v31 = a1[1];
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 70;
  *(v31 + 36) = 67;
  *(v31 + 40) = v30;
  *v31 = 0xFFFFD00800000030;
  *(v31 + 8) = 0;
  v32 = a1[3];
  v33 = a1[1];
  v34 = *v33;
  if ((*(v33 + 33) & 0x10) != 0)
  {
    v36 = v33;
    v35 = *v33;
    do
    {
      v36 = (v36 + v34);
      v34 = *v36;
      v35 += v34;
    }

    while ((*(v36 + 33) & 0x20) == 0);
  }

  else
  {
    v35 = *v33;
  }

  v37 = objc_autoreleasePoolPush();
  [*(v32 + 8) appendBytes:v33 length:v35];

  objc_autoreleasePoolPop(v37);
}

void WriteGTMTLSMSharedEvent(uint64_t a1, apr_hash_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 8);
  v62 = *a1;
  v63 = "shared-event";
  v64 = a4;
  v65 = 0;
  DYTraceEncode_EnterStateGroup(&v62, v8, *(a1 + 16), a4, 0);
  v9 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = *v10;
  if ((*(v10 + 33) & 0x10) != 0)
  {
    v13 = *(a1 + 8);
    v12 = *v10;
    do
    {
      v13 = (v13 + v11);
      v11 = *v13;
      v12 += v11;
    }

    while ((*(v13 + 33) & 0x20) == 0);
  }

  else
  {
    v12 = *v10;
  }

  v14 = objc_autoreleasePoolPush();
  [*(v9 + 8) appendBytes:v10 length:v12];
  objc_autoreleasePoolPop(v14);
  v15 = *find_entry(a2, (a3 + 72), 4uLL, 0);
  if (v15 && (v16 = *(v15 + 32)) != 0)
  {
    v17 = *(v16 + 56);
    v18 = *(a3 + 64);
    v19 = *(a3 + 72);
    v20 = *a1;
    v21 = *(a1 + 8);
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *v21 = 0xFFFFC1DB00000024;
    *(v21 + 32) = 1;
    strcpy((v21 + 36), "Ctuiuw");
    *(v21 + 43) = 0;
    *(v21 + 44) = v20;
    *(v21 + 52) = v17;
    *(v21 + 60) = v19;
    *(v21 + 64) = v18;
    *(v21 + 72) = 116;
    *(v21 + 76) = a4;
    *v21 = 84;
  }

  else
  {
    apr_hash_set(a2, (a3 + 72), 4, a3);
    v22 = *(a3 + 72);
    v23 = *a1;
    v24 = *(a1 + 8);
    *(v24 + 24) = 0;
    *(v24 + 8) = 0u;
    *(v24 + 32) = 0x69754300000001;
    *v24 = 0xFFFFC18400000028;
    *(v24 + 40) = v23;
    *(v24 + 48) = v22;
    *(v24 + 52) = 116;
    *(v24 + 56) = a4;
    *v24 = 64;
    v25 = *(a1 + 8);
    v26 = *(a1 + 24);
    v27 = *v25;
    if ((*(v25 + 33) & 0x10) != 0)
    {
      v29 = *(a1 + 8);
      v28 = *v25;
      do
      {
        v29 = (v29 + v27);
        v27 = *v29;
        v28 += v27;
      }

      while ((*(v29 + 33) & 0x20) == 0);
    }

    else
    {
      v28 = *v25;
    }

    v30 = objc_autoreleasePoolPush();
    [*(v26 + 8) appendBytes:v25 length:v28];
    objc_autoreleasePoolPop(v30);
    v31 = *(a3 + 64);
    v32 = *(a1 + 8);
    *(v32 + 24) = 0;
    *(v32 + 8) = 0u;
    *(v32 + 32) = 0x77754300000000;
    *v32 = 0xFFFFC19900000028;
    *(v32 + 40) = a4;
    *(v32 + 48) = v31;
    *v32 = 56;
    v33 = *(a1 + 8);
    v34 = *(a1 + 24);
    v35 = *v33;
    if ((*(v33 + 33) & 0x10) != 0)
    {
      v37 = *(a1 + 8);
      v36 = *v33;
      do
      {
        v37 = (v37 + v35);
        v35 = *v37;
        v36 += v35;
      }

      while ((*(v37 + 33) & 0x20) == 0);
    }

    else
    {
      v36 = *v33;
    }

    v38 = objc_autoreleasePoolPush();
    [*(v34 + 8) appendBytes:v33 length:v36];
    objc_autoreleasePoolPop(v38);
    v39 = *(a3 + 56);
    v40 = *(a1 + 8);
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = 1;
    *(v40 + 36) = 67;
    *(v40 + 40) = a4;
    *(v40 + 48) = 116;
    *(v40 + 52) = v39;
    *v40 = 0xFFFFC1DD0000003CLL;
    *(v40 + 8) = 0;
  }

  v41 = *(a1 + 8);
  v42 = *(a1 + 24);
  v43 = *v41;
  if ((*(v41 + 33) & 0x10) != 0)
  {
    v45 = *(a1 + 8);
    v44 = *v41;
    do
    {
      v45 = (v45 + v43);
      v43 = *v45;
      v44 += v43;
    }

    while ((*(v45 + 33) & 0x20) == 0);
  }

  else
  {
    v44 = *v41;
  }

  v46 = objc_autoreleasePoolPush();
  [*(v42 + 8) appendBytes:v41 length:v44];
  objc_autoreleasePoolPop(v46);
  v47 = *(a3 + 48);
  if (!v47)
  {
    v47 = "";
  }

  v62 = a4;
  v63 = v47;
  DYTraceEncode_MTLSharedEvent_setLabel(&v62, *(a1 + 8), *(a1 + 16), 0, 0);
  v48 = *(a1 + 8);
  v49 = *(a1 + 24);
  v50 = *v48;
  if ((*(v48 + 33) & 0x10) != 0)
  {
    v52 = *(a1 + 8);
    v51 = *v48;
    do
    {
      v52 = (v52 + v50);
      v50 = *v52;
      v51 += v50;
    }

    while ((*(v52 + 33) & 0x20) == 0);
  }

  else
  {
    v51 = *v48;
  }

  v53 = objc_autoreleasePoolPush();
  [*(v49 + 8) appendBytes:v48 length:v51];
  objc_autoreleasePoolPop(v53);
  v54 = *a1;
  v55 = *(a1 + 8);
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = 70;
  *(v55 + 36) = 67;
  *(v55 + 40) = v54;
  *v55 = 0xFFFFD00800000030;
  *(v55 + 8) = 0;
  v56 = *(a1 + 24);
  v57 = *(a1 + 8);
  v58 = *v57;
  if ((*(v57 + 33) & 0x10) != 0)
  {
    v60 = v57;
    v59 = *v57;
    do
    {
      v60 = (v60 + v58);
      v58 = *v60;
      v59 += v58;
    }

    while ((*(v60 + 33) & 0x20) == 0);
  }

  else
  {
    v59 = *v57;
  }

  v61 = objc_autoreleasePoolPush();
  [*(v56 + 8) appendBytes:v57 length:v59];

  objc_autoreleasePoolPop(v61);
}

void WriteGTMTLSMFunctionHandle(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v80[0] = v6;
  entry = find_entry(a3, v80, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    v10 = atomic_load((v9 + 56));
    v11 = (v9 + (~(v10 >> 2) & 8));
  }

  else
  {
    v11 = &dword_8;
  }

  v12 = *v11;
  v13 = a1[1];
  v80[0] = *a1;
  v80[1] = "function-handle";
  v80[2] = v12;
  v80[3] = 0;
  DYTraceEncode_EnterStateGroup(v80, v13, *(a1 + 4), v8, 0);
  v14 = a1[3];
  v15 = a1[1];
  v16 = *v15;
  if ((*(v15 + 33) & 0x10) != 0)
  {
    v18 = a1[1];
    v17 = *v15;
    do
    {
      v18 = (v18 + v16);
      v16 = *v18;
      v17 += v16;
    }

    while ((*(v18 + 33) & 0x20) == 0);
  }

  else
  {
    v17 = *v15;
  }

  v19 = objc_autoreleasePoolPush();
  [*(v14 + 8) appendBytes:v15 length:v17];
  objc_autoreleasePoolPop(v19);
  if (*(a2 + 64))
  {
    v80[0] = *(a2 + 64);
    v20 = find_entry(a3, v80, 8uLL, 0);
    if (*v20 && (v21 = *(*v20 + 32)) != 0)
    {
      v22 = atomic_load((v21 + 56));
      v23 = (v21 + (~(v22 >> 2) & 8));
    }

    else
    {
      v23 = &dword_8;
    }

    v24 = *v23;
    v80[0] = *(a2 + 48);
    v25 = find_entry(a3, v80, 8uLL, 0);
    if (*v25 && (v26 = *(*v25 + 32)) != 0)
    {
      v27 = atomic_load((v26 + 56));
      v28 = (v26 + (~(v27 >> 2) & 8));
    }

    else
    {
      v28 = &dword_8;
    }

    v29 = *v28;
    v30 = a1[1];
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 1;
    *(v30 + 36) = 29763;
    *(v30 + 40) = v24;
    *(v30 + 48) = v29;
    *(v30 + 56) = 116;
    *(v30 + 60) = v12;
    v31 = 0xC2FC00000044;
  }

  else
  {
    if (*(a2 + 72))
    {
      v80[0] = *(a2 + 72);
      v32 = find_entry(a3, v80, 8uLL, 0);
      if (*v32 && (v33 = *(*v32 + 32)) != 0)
      {
        v34 = atomic_load((v33 + 56));
        v35 = (v33 + (~(v34 >> 2) & 8));
      }

      else
      {
        v35 = &dword_8;
      }

      v36 = *v35;
      v80[0] = *(a2 + 48);
      v37 = find_entry(a3, v80, 8uLL, 0);
      if (*v37 && (v38 = *(*v37 + 32)) != 0)
      {
        v39 = atomic_load((v38 + 56));
        v40 = (v38 + (~(v39 >> 2) & 8));
      }

      else
      {
        v40 = &dword_8;
      }

      v41 = *v40;
      v42 = *(a2 + 96);
      v43 = a1[1];
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *v43 = 0xFFFFC39900000024;
      *(v43 + 32) = 1;
      strcpy((v43 + 36), "Ctul");
      *(v43 + 41) = 0;
      *(v43 + 43) = 0;
      *(v43 + 44) = v36;
      *(v43 + 52) = v41;
      *(v43 + 60) = v42;
      *(v43 + 68) = 116;
      *(v43 + 72) = v12;
      *v43 = 80;
      goto LABEL_33;
    }

    if (!*(a2 + 56))
    {
      goto LABEL_38;
    }

    v74 = *a1;
    v80[0] = *(a2 + 48);
    v75 = find_entry(a3, v80, 8uLL, 0);
    if (*v75 && (v76 = *(*v75 + 32)) != 0)
    {
      v77 = atomic_load((v76 + 56));
      v78 = (v76 + (~(v77 >> 2) & 8));
    }

    else
    {
      v78 = &dword_8;
    }

    v79 = *v78;
    v30 = a1[1];
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    *(v30 + 32) = 1;
    *(v30 + 36) = 29763;
    *(v30 + 40) = v74;
    *(v30 + 48) = v79;
    *(v30 + 56) = 116;
    *(v30 + 60) = v12;
    v31 = 0xC60D00000044;
  }

  *v30 = v31 & 0xFFFFFFFFFFFFLL | 0xFFFF000000000000;
  *(v30 + 8) = 0;
LABEL_33:
  v44 = a1[1];
  v45 = a1[3];
  v46 = *v44;
  if ((*(v44 + 33) & 0x10) != 0)
  {
    v48 = a1[1];
    v47 = *v44;
    do
    {
      v48 = (v48 + v46);
      v46 = *v48;
      v47 += v46;
    }

    while ((*(v48 + 33) & 0x20) == 0);
  }

  else
  {
    v47 = *v44;
  }

  v49 = objc_autoreleasePoolPush();
  [*(v45 + 8) appendBytes:v44 length:v47];
  objc_autoreleasePoolPop(v49);
LABEL_38:
  v50 = *(a2 + 80);
  if (v50)
  {
    v51 = a1[1];
    *(v51 + 24) = 0;
    *(v51 + 8) = 0u;
    *(v51 + 32) = 0x77754300000004;
    *v51 = 0xFFFFD86400000028;
    *(v51 + 40) = v12;
    *(v51 + 48) = v50;
    *v51 = 56;
    v52 = a1[1];
    v53 = a1[3];
    v54 = *v52;
    if ((*(v52 + 33) & 0x10) != 0)
    {
      v56 = a1[1];
      v55 = *v52;
      do
      {
        v56 = (v56 + v54);
        v54 = *v56;
        v55 += v54;
      }

      while ((*(v56 + 33) & 0x20) == 0);
    }

    else
    {
      v55 = *v52;
    }

    v57 = objc_autoreleasePoolPush();
    [*(v53 + 8) appendBytes:v52 length:v55];
    objc_autoreleasePoolPop(v57);
  }

  v58 = *(a2 + 88);
  if (v58)
  {
    v59 = a1[1];
    *(v59 + 24) = 0;
    *(v59 + 8) = 0u;
    *(v59 + 32) = 0x77754300000004;
    *v59 = 0xFFFFD86300000028;
    *(v59 + 40) = v12;
    *(v59 + 48) = v58;
    *v59 = 56;
    v60 = a1[1];
    v61 = a1[3];
    v62 = *v60;
    if ((*(v60 + 33) & 0x10) != 0)
    {
      v64 = a1[1];
      v63 = *v60;
      do
      {
        v64 = (v64 + v62);
        v62 = *v64;
        v63 += v62;
      }

      while ((*(v64 + 33) & 0x20) == 0);
    }

    else
    {
      v63 = *v60;
    }

    v65 = objc_autoreleasePoolPush();
    [*(v61 + 8) appendBytes:v60 length:v63];
    objc_autoreleasePoolPop(v65);
  }

  v66 = *a1;
  v67 = a1[1];
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = 70;
  *(v67 + 36) = 67;
  *(v67 + 40) = v66;
  *v67 = 0xFFFFD00800000030;
  *(v67 + 8) = 0;
  v68 = a1[3];
  v69 = a1[1];
  v70 = *v69;
  if ((*(v69 + 33) & 0x10) != 0)
  {
    v72 = v69;
    v71 = *v69;
    do
    {
      v72 = (v72 + v70);
      v70 = *v72;
      v71 += v70;
    }

    while ((*(v72 + 33) & 0x20) == 0);
  }

  else
  {
    v71 = *v69;
  }

  v73 = objc_autoreleasePoolPush();
  [*(v68 + 8) appendBytes:v69 length:v71];
  objc_autoreleasePoolPop(v73);
}

void WriteGTMTLSMVisibleFunctionTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v8 = *(a3 + 8);
  }

  else
  {
    v8 = 0;
  }

  *__str = v8;
  entry = find_entry(a2, __str, 8uLL, 0);
  if (*entry)
  {
    v11 = *(*entry + 32);
    if (v11)
    {
      v12 = atomic_load((v11 + 56));
      v13 = (v11 + (~(v12 >> 2) & 8));
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = &dword_8;
LABEL_9:
  v14 = *v13;
  v15 = *(a1 + 8);
  *__str = *a1;
  v78 = "visible-function-table";
  v79 = v14;
  v80 = 0;
  DYTraceEncode_EnterStateGroup(__str, v15, *(a1 + 16), v10, 0);
  v16 = *(a1 + 24);
  v17 = *(a1 + 8);
  v18 = *v17;
  if ((*(v17 + 33) & 0x10) != 0)
  {
    v20 = *(a1 + 8);
    v19 = *v17;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v17;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v17 length:v19];
  objc_autoreleasePoolPop(v21);
  if (*(a3 + 128))
  {
    *__str = *(a3 + 128);
    v22 = find_entry(a2, __str, 8uLL, 0);
    if (*v22 && (v23 = *(*v22 + 32)) != 0)
    {
      v24 = atomic_load((v23 + 56));
      v25 = (v23 + (~(v24 >> 2) & 8));
    }

    else
    {
      v25 = &dword_8;
    }

    *__str = *v25;
    v78 = v14;
    v26 = *(a3 + 112);
    v27 = *(a1 + 8) + *(a1 + 16) - 512;
    v76 = 512;
    v79 = StoreMTLVisibleFunctionTableDescriptorUsingEncode(*(a1 + 32), v26, v27, &v76);
    DYTraceEncode_MTLComputePipelineState_newVisibleFunctionTableWithDescriptor(__str, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  else
  {
    if (!*(a3 + 136))
    {
      goto LABEL_30;
    }

    *__str = *(a3 + 136);
    v28 = find_entry(a2, __str, 8uLL, 0);
    if (*v28 && (v29 = *(*v28 + 32)) != 0)
    {
      v30 = atomic_load((v29 + 56));
      v31 = (v29 + (~(v30 >> 2) & 8));
    }

    else
    {
      v31 = &dword_8;
    }

    *__str = *v31;
    v78 = v14;
    v32 = *(a3 + 112);
    v80 = *(a3 + 176);
    v33 = *(a1 + 8) + *(a1 + 16) - 512;
    v76 = 512;
    v79 = StoreMTLVisibleFunctionTableDescriptorUsingEncode(*(a1 + 32), v32, v33, &v76);
    DYTraceEncode_MTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage(__str, *(a1 + 8), *(a1 + 16), 0, 0);
  }

  v34 = *(a1 + 8);
  v35 = *(a1 + 24);
  v36 = *v34;
  if ((*(v34 + 33) & 0x10) != 0)
  {
    v38 = *(a1 + 8);
    v37 = *v34;
    do
    {
      v38 = (v38 + v36);
      v36 = *v38;
      v37 += v36;
    }

    while ((*(v38 + 33) & 0x20) == 0);
  }

  else
  {
    v37 = *v34;
  }

  v39 = objc_autoreleasePoolPush();
  [*(v35 + 8) appendBytes:v34 length:v37];
  objc_autoreleasePoolPop(v39);
LABEL_30:
  WriteVisibleFunctionTableInfo(a1, a3, a2, 0);
  v40 = *(a3 + 88);
  if (!v40)
  {
    v40 = "";
  }

  *__str = v14;
  v78 = v40;
  DYTraceEncode_MTLVisibleFunctionTable_setLabel(__str, *(a1 + 8), *(a1 + 16), 0, 0);
  v41 = *(a1 + 8);
  v42 = *(a1 + 24);
  v43 = *v41;
  if ((*(v41 + 33) & 0x10) != 0)
  {
    v45 = *(a1 + 8);
    v44 = *v41;
    do
    {
      v45 = (v45 + v43);
      v43 = *v45;
      v44 += v43;
    }

    while ((*(v45 + 33) & 0x20) == 0);
  }

  else
  {
    v44 = *v41;
  }

  v46 = objc_autoreleasePoolPush();
  [*(v42 + 8) appendBytes:v41 length:v44];
  objc_autoreleasePoolPop(v46);
  if (v11 && (v47 = *(a1 + 32), v48 = atomic_load((v11 + 56)), (v49 = v48 & 0xFFFFFFFFFFFFFFC0) != 0))
  {
    v50 = *(v47 + 224);
    v51 = v50 >= v49;
    v52 = v50 - v49;
    if (v52 != 0 && v51)
    {
      v53 = v52 * *(v47 + 232) / *(v47 + 236);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = -1;
  }

  v54 = *(a1 + 8);
  *(v54 + 24) = 0;
  *(v54 + 8) = 0u;
  *(v54 + 32) = 0x77754300000000;
  *v54 = 0xFFFFD83E00000028;
  *(v54 + 40) = v14;
  *(v54 + 48) = v53;
  *v54 = 56;
  v55 = *(a1 + 8);
  v56 = *(a1 + 24);
  v57 = *v55;
  if ((*(v55 + 33) & 0x10) != 0)
  {
    v59 = *(a1 + 8);
    v58 = *v55;
    do
    {
      v59 = (v59 + v57);
      v57 = *v59;
      v58 += v57;
    }

    while ((*(v59 + 33) & 0x20) == 0);
  }

  else
  {
    v58 = *v55;
  }

  v60 = objc_autoreleasePoolPush();
  [*(v56 + 8) appendBytes:v55 length:v58];
  objc_autoreleasePoolPop(v60);
  if (a4)
  {
    v75[0] = v14;
    GTResourceDownloaderGetResourceFilename(a4, 0, __str, 0x80uLL);
    v75[1] = __str;
    v75[2] = 0;
    v75[3] = *(a4 + 48);
    DYTraceEncode_MTLVisibleFunctionTable_setFunctions_withRange(v75, *(a1 + 8), *(a1 + 16), 0, 0);
    v61 = *(a1 + 24);
    v62 = *(a1 + 8);
    v63 = *v62;
    if ((*(v62 + 33) & 0x10) != 0)
    {
      v65 = *(a1 + 8);
      v64 = *v62;
      do
      {
        v65 = (v65 + v63);
        v63 = *v65;
        v64 += v63;
      }

      while ((*(v65 + 33) & 0x20) == 0);
    }

    else
    {
      v64 = *v62;
    }

    v66 = objc_autoreleasePoolPush();
    [*(v61 + 8) appendBytes:v62 length:v64];
    objc_autoreleasePoolPop(v66);
  }

  v67 = *a1;
  v68 = *(a1 + 8);
  *(v68 + 16) = 0;
  *(v68 + 24) = 0;
  *(v68 + 32) = 70;
  *(v68 + 36) = 67;
  *(v68 + 40) = v67;
  *v68 = 0xFFFFD00800000030;
  *(v68 + 8) = 0;
  v69 = *(a1 + 24);
  v70 = *(a1 + 8);
  v71 = *v70;
  if ((*(v70 + 33) & 0x10) != 0)
  {
    v73 = v70;
    v72 = *v70;
    do
    {
      v73 = (v73 + v71);
      v71 = *v73;
      v72 += v71;
    }

    while ((*(v73 + 33) & 0x20) == 0);
  }

  else
  {
    v72 = *v70;
  }

  v74 = objc_autoreleasePoolPush();
  [*(v69 + 8) appendBytes:v70 length:v72];
  objc_autoreleasePoolPop(v74);
}

void WriteGTMTLIntersectionFunctionTable(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v85 = a2[2];
  if (a3)
  {
    v7 = a3[1];
  }

  else
  {
    v7 = 0;
  }

  v8 = a2[5];
  v87 = v7;
  entry = find_entry(v85, &v87, 8uLL, 0);
  if (*entry)
  {
    v11 = *(*entry + 32);
    if (v11)
    {
      v12 = atomic_load((v11 + 56));
      v13 = (v11 + (~(v12 >> 2) & 8));
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = &dword_8;
LABEL_9:
  v14 = *v13;
  v15 = a1[1];
  v87 = *a1;
  v88 = "intersection-function-table";
  v89 = v14;
  v90 = 0;
  DYTraceEncode_EnterStateGroup(&v87, v15, *(a1 + 4), v10, 0);
  v16 = a1[3];
  v17 = a1[1];
  v18 = *v17;
  if ((*(v17 + 33) & 0x10) != 0)
  {
    v20 = a1[1];
    v19 = *v17;
    do
    {
      v20 = (v20 + v18);
      v18 = *v20;
      v19 += v18;
    }

    while ((*(v20 + 33) & 0x20) == 0);
  }

  else
  {
    v19 = *v17;
  }

  v21 = objc_autoreleasePoolPush();
  [*(v16 + 8) appendBytes:v17 length:v19];
  objc_autoreleasePoolPop(v21);
  if (v11 && (v22 = *(v11 + 32)) != 0 && (*(v22 + 79) & 8) != 0)
  {
    v23 = v22 + 64;
  }

  else
  {
    v23 = 0;
  }

  GTTraceFuncToFbuf(a1, a2, v23, 0);
  v24 = a3[11];
  if (!v24)
  {
    v24 = "";
  }

  v87 = v14;
  v88 = v24;
  DYTraceEncode_MTLIntersectionFunctionTable_setLabel(&v87, a1[1], *(a1 + 4), 0, 0);
  v25 = a1[1];
  v26 = a1[3];
  v27 = *v25;
  if ((*(v25 + 33) & 0x10) != 0)
  {
    v29 = a1[1];
    v28 = *v25;
    do
    {
      v29 = (v29 + v27);
      v27 = *v29;
      v28 += v27;
    }

    while ((*(v29 + 33) & 0x20) == 0);
  }

  else
  {
    v28 = *v25;
  }

  v30 = objc_autoreleasePoolPush();
  [*(v26 + 8) appendBytes:v25 length:v28];
  objc_autoreleasePoolPop(v30);
  if (v11 && (v31 = a1[4], v32 = atomic_load((v11 + 56)), (v33 = v32 & 0xFFFFFFFFFFFFFFC0) != 0))
  {
    v34 = *(v31 + 224);
    v35 = v34 >= v33;
    v36 = v34 - v33;
    if (v36 != 0 && v35)
    {
      v37 = v36 * *(v31 + 232) / *(v31 + 236);
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = -1;
  }

  v38 = a1[1];
  *(v38 + 24) = 0;
  *(v38 + 8) = 0u;
  *(v38 + 32) = 0x77754300000000;
  *v38 = 0xFFFFD83C00000028;
  *(v38 + 40) = v14;
  *(v38 + 48) = v37;
  *v38 = 56;
  v39 = a1[1];
  v40 = a1[3];
  v41 = *v39;
  if ((*(v39 + 33) & 0x10) != 0)
  {
    v43 = a1[1];
    v42 = *v39;
    do
    {
      v43 = (v43 + v41);
      v41 = *v43;
      v42 += v41;
    }

    while ((*(v43 + 33) & 0x20) == 0);
  }

  else
  {
    v42 = *v39;
  }

  v44 = objc_autoreleasePoolPush();
  [*(v40 + 8) appendBytes:v39 length:v42];
  objc_autoreleasePoolPop(v44);
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  bzero(&v87, 0x3A8uLL);
  LODWORD(v87) = 60;
  v92 = 2;
  v90 = -1;
  v91 = -1;
  v94 = *(a3[14] + 8);
  v93 = apr_palloc(newpool, 16 * v94);
  bzero(v93, 16 * v94);
  v45 = *(v11 + 32);
  if (v45)
  {
    v46 = 0;
    while (1)
    {
      v47 = atomic_load((v45 + 4));
      v48 = v46 + (v47 >> 6) - 1;
      if (v48 > 0)
      {
        break;
      }

      v45 = *(v45 + 40);
      v46 = v48;
      if (!v45)
      {
        v46 = v48;
        goto LABEL_41;
      }
    }

    v48 = 0;
LABEL_41:
    v49 = v46 | (v48 << 32);
  }

  else
  {
    v49 = 0;
  }

  while (v45)
  {
    v50 = v45 + 64 + ((HIDWORD(v49) - v49) << 6);
    if ((*(v50 + 15) & 8) == 0 || *v50 >= v8)
    {
      break;
    }

    GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(&v87, a2[3], v50, 0);
    v51 = atomic_load((v45 + 4));
    v52 = v49 + (v51 >> 6);
    v53 = (HIDWORD(v49) + 1);
    v49 = (v53 << 32) | v49;
    if (v53 == v52 - 1)
    {
      v49 = (v53 << 32) | v53;
      v45 = *(v45 + 40);
    }
  }

  v54 = v94;
  if (v94)
  {
    v55 = 0;
    while (1)
    {
      v56 = &v93[16 * v55];
      v57 = *v56;
      if (*v56 == 3)
      {
        break;
      }

      if (v57 == 2)
      {
        v62 = *(v56 + 1);
        v63 = a1[1];
        *(v63 + 8) = 0;
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *v63 = 0xFFFFC35600000024;
LABEL_57:
        *(v63 + 32) = 0;
        *(v63 + 36) = 0x6C756C7543;
LABEL_60:
        *(v63 + 44) = v14;
        *(v63 + 52) = v62;
        *(v63 + 60) = v55;
        *v63 = 68;
        v64 = a1[1];
        v65 = a1[3];
        v66 = *v64;
        if ((*(v64 + 33) & 0x10) != 0)
        {
          v67 = *v64;
          v68 = a1[1];
          do
          {
            v68 = (v68 + v67);
            v67 = *v68;
            v66 += v67;
          }

          while ((*(v68 + 33) & 0x20) == 0);
        }

        v69 = objc_autoreleasePoolPush();
        [*(v65 + 8) appendBytes:v64 length:v66];
        objc_autoreleasePoolPop(v69);
        v54 = v94;
        goto LABEL_64;
      }

      if (v57 == 1)
      {
        *__str = *(v56 + 1);
        v58 = find_entry(v85, __str, 8uLL, 0);
        if (*v58 && (v59 = *(*v58 + 32)) != 0)
        {
          v60 = atomic_load((v59 + 56));
          v61 = (v59 + (~(v60 >> 2) & 8));
        }

        else
        {
          v61 = &dword_8;
        }

        v62 = *v61;
        v63 = a1[1];
        *(v63 + 8) = 0;
        *(v63 + 16) = 0;
        *(v63 + 24) = 0;
        *v63 = 0xFFFFC33900000024;
        *(v63 + 32) = 0;
        strcpy((v63 + 36), "Ctul");
        *(v63 + 41) = 0;
        *(v63 + 43) = 0;
        goto LABEL_60;
      }

LABEL_64:
      if (v54 <= ++v55)
      {
        goto LABEL_65;
      }
    }

    v62 = *(v56 + 1);
    v63 = a1[1];
    *(v63 + 8) = 0;
    *(v63 + 16) = 0;
    *(v63 + 24) = 0;
    *v63 = 0xFFFFC46600000024;
    goto LABEL_57;
  }

LABEL_65:
  if (a4)
  {
    v86[0] = v14;
    GTResourceDownloaderGetResourceFilename(a4, 1, __str, 0x80uLL);
    v86[1] = __str;
    DYTraceEncode_MTLIntersectionFunctionTable_setBuffers(v86, a1[1], *(a1 + 4), 0, 0);
    v70 = a1[3];
    v71 = a1[1];
    v72 = *v71;
    if ((*(v71 + 33) & 0x10) != 0)
    {
      v74 = a1[1];
      v73 = *v71;
      do
      {
        v74 = (v74 + v72);
        v72 = *v74;
        v73 += v72;
      }

      while ((*(v74 + 33) & 0x20) == 0);
    }

    else
    {
      v73 = *v71;
    }

    v75 = objc_autoreleasePoolPush();
    [*(v70 + 8) appendBytes:v71 length:v73];
    objc_autoreleasePoolPop(v75);
  }

  apr_pool_destroy(newpool);
  v76 = *a1;
  v77 = a1[1];
  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  *(v77 + 32) = 70;
  *(v77 + 36) = 67;
  *(v77 + 40) = v76;
  *v77 = 0xFFFFD00800000030;
  *(v77 + 8) = 0;
  v78 = a1[3];
  v79 = a1[1];
  v80 = *v79;
  if ((*(v79 + 33) & 0x10) != 0)
  {
    v82 = v79;
    v81 = *v79;
    do
    {
      v82 = (v82 + v80);
      v80 = *v82;
      v81 += v80;
    }

    while ((*(v82 + 33) & 0x20) == 0);
  }

  else
  {
    v81 = *v79;
  }

  v83 = objc_autoreleasePoolPush();
  [*(v78 + 8) appendBytes:v79 length:v81];
  objc_autoreleasePoolPop(v83);
}

void WriteGTMTLSMIndirectCommandBuffer_restore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v10[0] = a3;
    GTResourceDownloaderGetResourceFilename(a2, 0, __str, 0x80uLL);
    v10[1] = __str;
    DYTraceEncode_MTLIndirectCommandBuffer_restoreData(v10, *(a1 + 8), *(a1 + 16), 0, 0);
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    v6 = *v4;
    if ((*(v4 + 33) & 0x10) != 0)
    {
      v8 = *(a1 + 8);
      v7 = *v4;
      do
      {
        v8 = (v8 + v6);
        v6 = *v8;
        v7 += v6;
      }

      while ((*(v8 + 33) & 0x20) == 0);
    }

    else
    {
      v7 = *v4;
    }

    v9 = objc_autoreleasePoolPush();
    [*(v5 + 8) appendBytes:v4 length:v7];
    objc_autoreleasePoolPop(v9);
  }
}

void WriteGTMTLSMResourceGroup(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  entry = find_entry(a3, &v40, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    v10 = atomic_load((v9 + 56));
    v11 = (v9 + (~(v10 >> 2) & 8));
  }

  else
  {
    v11 = &dword_8;
  }

  v12 = *v11;
  v13 = a1[1];
  v40 = *a1;
  v41 = "resource-group";
  v42 = v12;
  v43 = 0;
  DYTraceEncode_EnterStateGroup(&v40, v13, *(a1 + 4), v8, 0);
  v14 = a1[3];
  v15 = a1[1];
  v16 = *v15;
  if ((*(v15 + 33) & 0x10) != 0)
  {
    v18 = a1[1];
    v17 = *v15;
    do
    {
      v18 = (v18 + v16);
      v16 = *v18;
      v17 += v16;
    }

    while ((*(v18 + 33) & 0x20) == 0);
  }

  else
  {
    v17 = *v15;
  }

  v19 = objc_autoreleasePoolPush();
  [*(v14 + 8) appendBytes:v15 length:v17];
  objc_autoreleasePoolPop(v19);
  v40 = *a1;
  v41 = v12;
  v20 = *(a2 + 56);
  __chkstk_darwin(v21, 8 * v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFF0);
  bzero(v23, v22);
  name_array_16152(a3, v23, *(a2 + 48), v20);
  v24 = *(a2 + 56);
  v42 = v23;
  v43 = v24;
  DYTraceEncode_MTLDevice_newResourceGroupFromResources_count(&v40, a1[1], *(a1 + 4), 0, 0);
  v25 = a1[1];
  v26 = a1[3];
  v27 = *v25;
  if ((*(v25 + 33) & 0x10) != 0)
  {
    v29 = a1[1];
    v28 = *v25;
    do
    {
      v29 = (v29 + v27);
      v27 = *v29;
      v28 += v27;
    }

    while ((*(v29 + 33) & 0x20) == 0);
  }

  else
  {
    v28 = *v25;
  }

  v30 = objc_autoreleasePoolPush();
  [*(v26 + 8) appendBytes:v25 length:v28];
  objc_autoreleasePoolPop(v30);
  v31 = *a1;
  v32 = a1[1];
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = 70;
  *(v32 + 36) = 67;
  *(v32 + 40) = v31;
  *v32 = 0xFFFFD00800000030;
  *(v32 + 8) = 0;
  v33 = a1[3];
  v34 = a1[1];
  v35 = *v34;
  if ((*(v34 + 33) & 0x10) != 0)
  {
    v37 = v34;
    v36 = *v34;
    do
    {
      v37 = (v37 + v35);
      v35 = *v37;
      v36 += v35;
    }

    while ((*(v37 + 33) & 0x20) == 0);
  }

  else
  {
    v36 = *v34;
  }

  v38 = objc_autoreleasePoolPush();
  [*(v33 + 8) appendBytes:v34 length:v36];
  objc_autoreleasePoolPop(v38);
}

void WriteGTMTLSMAccelerationStructure_new(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = atomic_load((a4 + 56));
    v7 = (a4 + (~(v6 >> 2) & 8));
  }

  else
  {
    v7 = &dword_8;
  }

  v8 = *v7;
  v9 = *(a2 + 16);
  v10 = *(a3 + 192);
  v11 = *a1;
  v12 = a1[1];
  *(v12 + 24) = 0;
  *(v12 + 8) = 0u;
  *(v12 + 32) = 0x6C754300000001;
  *v12 = 0xFFFFC30200000028;
  *(v12 + 40) = v11;
  *(v12 + 48) = v10;
  *(v12 + 56) = 116;
  *(v12 + 60) = v8;
  *v12 = 68;
  v13 = a1[1];
  v14 = a1[3];
  v15 = *v13;
  if ((*(v13 + 33) & 0x10) != 0)
  {
    v17 = a1[1];
    v16 = *v13;
    do
    {
      v17 = (v17 + v15);
      v15 = *v17;
      v16 += v15;
    }

    while ((*(v17 + 33) & 0x20) == 0);
  }

  else
  {
    v16 = *v13;
  }

  v18 = objc_autoreleasePoolPush();
  [*(v14 + 8) appendBytes:v13 length:v16];
  objc_autoreleasePoolPop(v18);

  WriteAccelerationStructureInfo(a1, a3, v9, 4);
}

void WriteGTMTLSMResidencySet(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  if (a3)
  {
    v10 = *(a3 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 48);
  v91 = v10;
  v12 = *find_entry(v8, &v91, 8uLL, 0);
  if (v12)
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v14 = newpool;
  v96 = apr_hash_make(newpool);
  v95 = apr_hash_make(v14);
  GatherResidencySetAllocationsUpToIndex(&v95, v13, *(a2 + 24), v9, v11 + v9, 0);
  v15 = ResidencySetAllocationsContainDrawableTexture(*(a2 + 752), v9, &v95);
  if (v13)
  {
    v16 = atomic_load((v13 + 56));
    v17 = (v13 + (~(v16 >> 2) & 8));
  }

  else
  {
    v17 = &dword_8;
  }

  v18 = *v17;
  if (a4)
  {
    v19 = newpool;
    v92 = apr_hash_make(newpool);
    v91 = apr_hash_make(v19);
    GatherResidencySetAllocationsUpToIndex(&v91, v13, *(a2 + 24), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (v15)
    {
      if (*(v92 + 12) || *(v91 + 12))
      {
        v20 = *(a1 + 8);
        v20[2] = 0;
        v20[3] = 0;
        v20[4] = 0x4300000000;
        v20[5] = v18;
        *v20 = 0xFFFFC49800000030;
        v20[1] = 0;
        v21 = *(a1 + 8);
        v22 = *(a1 + 24);
        v23 = *v21;
        if ((*(v21 + 33) & 0x10) != 0)
        {
          v40 = *(a1 + 8);
          v24 = *v21;
          do
          {
            v40 = (v40 + v23);
            v23 = *v40;
            v24 += v23;
          }

          while ((*(v40 + 33) & 0x20) == 0);
        }

        else
        {
          v24 = *v21;
        }

        v41 = objc_autoreleasePoolPush();
        [*(v22 + 8) appendBytes:v21 length:v24];
        objc_autoreleasePoolPop(v41);
        v42 = *(a1 + 8);
        v42[2] = 0;
        v42[3] = 0;
        v42[4] = 0x4300000000;
        v42[5] = v18;
        *v42 = 0xFFFFC48C00000030;
        v42[1] = 0;
        v43 = *(a1 + 8);
        v44 = *(a1 + 24);
        v45 = *v43;
        if ((*(v43 + 33) & 0x10) != 0)
        {
          v47 = *(a1 + 8);
          v46 = *v43;
          do
          {
            v47 = (v47 + v45);
            v45 = *v47;
            v46 += v45;
          }

          while ((*(v47 + 33) & 0x20) == 0);
        }

        else
        {
          v46 = *v43;
        }

        v48 = objc_autoreleasePoolPush();
        [*(v44 + 8) appendBytes:v43 length:v46];
        objc_autoreleasePoolPop(v48);
      }

      return;
    }

    v32 = v96;
    if (HashesEqual(v96, v92) && (HashesEqual(v95, v91) & 1) != 0)
    {
      return;
    }

    v33 = *(a1 + 8);
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = 0x4300000000;
    v33[5] = v18;
    *v33 = 0xFFFFC49800000030;
    v33[1] = 0;
    v34 = *(a1 + 8);
    v35 = *(a1 + 24);
    v36 = *v34;
    if ((*(v34 + 33) & 0x10) != 0)
    {
      v49 = *(a1 + 8);
      v37 = *v34;
      do
      {
        v49 = (v49 + v36);
        v36 = *v49;
        v37 += v36;
      }

      while ((*(v49 + 33) & 0x20) == 0);
    }

    else
    {
      v37 = *v34;
    }

    v50 = objc_autoreleasePoolPush();
    [*(v35 + 8) appendBytes:v34 length:v37];
    objc_autoreleasePoolPop(v50);
  }

  else
  {
    v25 = *(a1 + 8);
    v91 = *a1;
    v92 = v18;
    v26 = *(a3 + 48);
    v94 = 0;
    v27 = v25 + *(a1 + 16) - 512;
    v98 = 512;
    v93 = StoreMTLResidencySetDescriptorUsingEncode(*(a1 + 32), v26, v27, &v98);
    DYTraceEncode_MTLDevice_newResidencySetWithDescriptor_error(&v91, *(a1 + 8), *(a1 + 16), 0, 0);
    v28 = *(a1 + 8);
    v29 = *(a1 + 24);
    v30 = *v28;
    if ((*(v28 + 33) & 0x10) != 0)
    {
      v38 = *(a1 + 8);
      v31 = *v28;
      do
      {
        v38 = (v38 + v30);
        v30 = *v38;
        v31 += v30;
      }

      while ((*(v38 + 33) & 0x20) == 0);
    }

    else
    {
      v31 = *v28;
    }

    v39 = objc_autoreleasePoolPush();
    [*(v29 + 8) appendBytes:v28 length:v31];
    objc_autoreleasePoolPop(v39);
    if (v15)
    {
      return;
    }

    v32 = v96;
    v19 = newpool;
  }

  v51 = apr_array_make(v19, 16, 8);
  v52 = apr_array_make(v19, 16, 8);
  v53 = apr_array_make(v19, 16, 8);
  FillArrayFromHash(v51, v32);
  v54 = v95;
  FillArrayFromHashDifference(v52, v95, v32);
  v55 = FillArrayFromHashDifference(v53, v32, v54);
  nelts = v51->nelts;
  if (nelts >= 1)
  {
    v91 = v18;
    __chkstk_darwin(v55, 8 * nelts);
    v58 = (&v90 - ((v57 + 15) & 0xFFFFFFFF0));
    bzero(v58, v57);
    name_array_16152(v8, v58, v51->elts, nelts);
    v92 = v58;
    v93 = v51->nelts;
    DYTraceEncode_MTLResidencySet_addAllocations_count(&v91, *(a1 + 8), *(a1 + 16), 0, 0);
    v59 = *(a1 + 8);
    v60 = *(a1 + 24);
    v61 = *v59;
    if ((*(v59 + 33) & 0x10) != 0)
    {
      v63 = *(a1 + 8);
      v62 = *v59;
      do
      {
        v63 = (v63 + v61);
        v61 = *v63;
        v62 += v61;
      }

      while ((*(v63 + 33) & 0x20) == 0);
    }

    else
    {
      v62 = *v59;
    }

    v64 = objc_autoreleasePoolPush();
    [*(v60 + 8) appendBytes:v59 length:v62];
    objc_autoreleasePoolPop(v64);
    v65 = *(a1 + 8);
    v65[2] = 0;
    v65[3] = 0;
    v65[4] = 0x4300000000;
    v65[5] = v18;
    *v65 = 0xFFFFC48C00000030;
    v65[1] = 0;
    v66 = *(a1 + 8);
    v67 = *(a1 + 24);
    v68 = *v66;
    if ((*(v66 + 33) & 0x10) != 0)
    {
      v70 = *(a1 + 8);
      v69 = *v66;
      do
      {
        v70 = (v70 + v68);
        v68 = *v70;
        v69 += v68;
      }

      while ((*(v70 + 33) & 0x20) == 0);
    }

    else
    {
      v69 = *v66;
    }

    v71 = objc_autoreleasePoolPush();
    [*(v67 + 8) appendBytes:v66 length:v69];
    objc_autoreleasePoolPop(v71);
  }

  v72 = v52->nelts;
  if (v72 >= 1)
  {
    v91 = v18;
    __chkstk_darwin(v55, 8 * v72);
    v74 = (&v90 - ((v73 + 15) & 0xFFFFFFFF0));
    bzero(v74, v73);
    name_array_16152(v8, v74, v52->elts, v72);
    v92 = v74;
    v93 = v52->nelts;
    DYTraceEncode_MTLResidencySet_addAllocations_count(&v91, *(a1 + 8), *(a1 + 16), 0, 0);
    v75 = *(a1 + 8);
    v76 = *(a1 + 24);
    v77 = *v75;
    if ((*(v75 + 33) & 0x10) != 0)
    {
      v79 = *(a1 + 8);
      v78 = *v75;
      do
      {
        v79 = (v79 + v77);
        v77 = *v79;
        v78 += v77;
      }

      while ((*(v79 + 33) & 0x20) == 0);
    }

    else
    {
      v78 = *v75;
    }

    v80 = objc_autoreleasePoolPush();
    [*(v76 + 8) appendBytes:v75 length:v78];
    objc_autoreleasePoolPop(v80);
  }

  v81 = v53->nelts;
  if (v81 >= 1)
  {
    v91 = v18;
    __chkstk_darwin(v55, 8 * v81);
    v83 = (&v90 - ((v82 + 15) & 0xFFFFFFFF0));
    bzero(v83, v82);
    name_array_16152(v8, v83, v53->elts, v81);
    v92 = v83;
    v93 = v53->nelts;
    DYTraceEncode_MTLResidencySet_removeAllocations_count(&v91, *(a1 + 8), *(a1 + 16), 0, 0);
    v84 = *(a1 + 8);
    v85 = *(a1 + 24);
    v86 = *v84;
    if ((*(v84 + 33) & 0x10) != 0)
    {
      v88 = *(a1 + 8);
      v87 = *v84;
      do
      {
        v88 = (v88 + v86);
        v86 = *v88;
        v87 += v86;
      }

      while ((*(v88 + 33) & 0x20) == 0);
    }

    else
    {
      v87 = *v84;
    }

    v89 = objc_autoreleasePoolPush();
    [*(v85 + 8) appendBytes:v84 length:v87];
    objc_autoreleasePoolPop(v89);
  }

  apr_pool_destroy(v19);
}

void WriteGTMTLAnySMCommandQueue_residencySets(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[2];
  if (a3)
  {
    v7 = *(a3 + 8);
  }

  else
  {
    v7 = 0;
  }

  newpool = v7;
  v8 = *find_entry(v6, &newpool, 8uLL, 0);
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v10 = newpool;
  v11 = apr_hash_make(newpool);
  GatherCommandQueueResidencySetsUpToIndex(v11, v9, a2[3], a2[5], a2[6] + a2[5], 0);
  v12 = apr_array_make(v10, 16, 8);
  FillArrayFromHash(v12, v11);
  WriteResidencySets(a1, a2, a3, v12, 1);
  apr_pool_destroy(v10);
}

void WriteGTMTLSMTextureViewPool(uint64_t *a1, void *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v70 = a2[2];
  if (a3)
  {
    v8 = *(a3 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10 = a2[5];
  v9 = a2[6];
  v71 = v8;
  entry = find_entry(v70, &v71, 8uLL, 0);
  if (!*entry)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = *(*entry + 32);
  if (!v12)
  {
LABEL_8:
    v14 = &dword_8;
    goto LABEL_9;
  }

  v13 = atomic_load((v12 + 56));
  v14 = (v12 + (~(v13 >> 2) & 8));
LABEL_9:
  v69 = *v14;
  if ((a4 & 1) == 0)
  {
    v15 = a1[1];
    v71 = *a1;
    v72 = v69;
    v16 = *(a3 + 48);
    *(&v73 + 1) = 0;
    v17 = v15 + *(a1 + 4) - 512;
    v76 = 512;
    *&v73 = StoreMTLResourceViewPoolDescriptorUsingEncode(a1[4], v16, v17, &v76);
    DYTraceEncode_MTLDevice_newTextureViewPoolWithDescriptor_error(&v71, a1[1], *(a1 + 4), 0, 0);
    v18 = a1[1];
    v19 = a1[3];
    v20 = *v18;
    if ((*(v18 + 33) & 0x10) != 0)
    {
      v22 = a1[1];
      v21 = *v18;
      do
      {
        v22 = (v22 + v20);
        v20 = *v22;
        v21 += v20;
      }

      while ((*(v22 + 33) & 0x20) == 0);
    }

    else
    {
      v21 = *v18;
    }

    v23 = objc_autoreleasePoolPush();
    [*(v19 + 8) appendBytes:v18 length:v21];
    objc_autoreleasePoolPop(v23);
  }

  v24 = *(v12 + 32);
  if (v24)
  {
    v25 = 0;
    while (1)
    {
      v26 = atomic_load((v24 + 4));
      v27 = v25 + (v26 >> 6) - 1;
      if (v27 > 0)
      {
        break;
      }

      v24 = *(v24 + 40);
      v25 = v27;
      if (!v24)
      {
        v25 = v27;
        goto LABEL_22;
      }
    }

    v27 = 0;
LABEL_22:
    v28 = v25 | (v27 << 32);
  }

  else
  {
    v28 = 0;
  }

  v68 = v6;
LABEL_24:
  v29 = v24 + 64;
  while (v24)
  {
    v30 = v29 + ((HIDWORD(v28) - v28) << 6);
    if ((*(v30 + 15) & 8) == 0)
    {
      break;
    }

    if (*v30 >= v10)
    {
      if (*v30 >= v9 + v10 || (*(v30 + 15) & 0x80000000) == 0)
      {
        return;
      }

      v31 = *(v30 + 8);
      switch(v31)
      {
        case -14802:
          v45 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v28) - v28) << 6)), *(v30 + 13), v6[3]);
          v74 = 0u;
          v75 = 0u;
          v73 = 0u;
          v46 = *(v45 + 2);
          v47 = *(v45 + 3);
          v71 = v69;
          v72 = v46;
          v76 = v47;
          v48 = find_entry(v70, &v76, 8uLL, 0);
          if (*v48 && (v49 = *(*v48 + 32)) != 0)
          {
            v50 = atomic_load((v49 + 56));
            v51 = (v49 + (~(v50 >> 2) & 8));
          }

          else
          {
            v51 = &dword_8;
          }

          *&v73 = *v51;
          v54 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v28) - v28) << 6)), v45[56], v6[3]);
          v74 = *(v45 + 2);
          *&v75 = *(v45 + 6);
          v55 = a1[1] + *(a1 + 4) - 512;
          *(&v75 + 1) = *(v45 + 1);
          v76 = 512;
          *(&v73 + 1) = StoreMTLTextureDescriptorUsingEncode(a1[4], v54, v55, &v76);
          DYTraceEncode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(&v71, a1[1], *(a1 + 4), 0, 0);
          goto LABEL_48;
        case -14969:
          v38 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v28) - v28) << 6)), *(v30 + 13), v6[3]);
          v73 = 0u;
          v74 = 0u;
          v39 = *(v38 + 2);
          v40 = *(v38 + 3);
          v71 = v69;
          v72 = v39;
          v76 = v40;
          v41 = find_entry(v70, &v76, 8uLL, 0);
          if (*v41 && (v42 = *(*v41 + 32)) != 0)
          {
            v43 = atomic_load((v42 + 56));
            v44 = (v42 + (~(v43 >> 2) & 8));
          }

          else
          {
            v44 = &dword_8;
          }

          *&v73 = *v44;
          v52 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v28) - v28) << 6)), v38[40], v6[3]);
          *&v74 = *(v38 + 4);
          *(&v74 + 1) = *(v38 + 1);
          v53 = a1[1] + *(a1 + 4) - 512;
          v76 = 512;
          *(&v73 + 1) = StoreMTLTextureViewDescriptorUsingEncode(a1[4], v52, v53, &v76);
          DYTraceEncode_MTLTextureViewPool_setTextureView_descriptor_atIndex(&v71, a1[1], *(a1 + 4), 0, 0);
          goto LABEL_48;
        case -14970:
          v32 = GTTraceFunc_argumentBytesWithMap((v29 + ((HIDWORD(v28) - v28) << 6)), *(v30 + 13), v6[3]);
          v33 = *(v32 + 1);
          v71 = *(v32 + 2);
          v34 = find_entry(v70, &v71, 8uLL, 0);
          if (*v34 && (v35 = *(*v34 + 32)) != 0)
          {
            v36 = atomic_load((v35 + 56));
            v37 = (v35 + (~(v36 >> 2) & 8));
          }

          else
          {
            v37 = &dword_8;
          }

          v56 = *v37;
          v57 = *(v32 + 3);
          v58 = a1[1];
          *(v58 + 8) = 0;
          *(v58 + 16) = 0;
          *(v58 + 24) = 0;
          *v58 = 0xFFFFC58600000024;
          *(v58 + 32) = 1;
          strcpy((v58 + 36), "Ctul");
          *(v58 + 41) = 0;
          *(v58 + 43) = 0;
          *(v58 + 44) = v69;
          *(v58 + 52) = v56;
          *(v58 + 60) = v57;
          *(v58 + 68) = 30581;
          *(v58 + 72) = v33;
          *v58 = 80;
LABEL_48:
          v59 = a1[1];
          v60 = a1[3];
          v61 = *v59;
          if ((*(v59 + 33) & 0x10) != 0)
          {
            v63 = a1[1];
            v62 = *v59;
            do
            {
              v63 = (v63 + v61);
              v61 = *v63;
              v62 += v61;
            }

            while ((*(v63 + 33) & 0x20) == 0);
          }

          else
          {
            v62 = *v59;
          }

          v64 = objc_autoreleasePoolPush();
          [*(v60 + 8) appendBytes:v59 length:v62];
          objc_autoreleasePoolPop(v64);
          v6 = v68;
          break;
      }
    }

    v65 = atomic_load((v24 + 4));
    v66 = v28 + (v65 >> 6);
    v67 = (HIDWORD(v28) + 1);
    v28 = (v67 << 32) | v28;
    if (v67 == v66 - 1)
    {
      v28 = (v67 << 32) | v67;
      v24 = *(v24 + 40);
      goto LABEL_24;
    }
  }
}

void WriteResidencySets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (*(a4 + 12))
  {
    v9 = *(a2 + 16);
    if (a3)
    {
      v10 = *(a3 + 8);
    }

    else
    {
      v10 = 0;
    }

    v25 = v10;
    entry = find_entry(v9, &v25, 8uLL, 0);
    if (*entry && (v12 = *(*entry + 32)) != 0)
    {
      v13 = atomic_load((v12 + 56));
      v14 = (v12 + (~(v13 >> 2) & 8));
    }

    else
    {
      v14 = &dword_8;
    }

    v15 = *v14;
    v16 = *(a4 + 12);
    __chkstk_darwin(entry, 8 * v16);
    v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v18, v17);
    name_array_16152(v9, v18, *(a4 + 24), v16);
    if (*a3 == 92)
    {
      v25 = v15;
      v26 = v18;
      v27 = *(a4 + 12);
      if (a5)
      {
        DYTraceEncode_MTL4CommandQueue_addResidencySets_count(&v25, *(a1 + 8), *(a1 + 16), 0, 0);
      }

      else
      {
        DYTraceEncode_MTL4CommandQueue_removeResidencySets_count(&v25, *(a1 + 8), *(a1 + 16), 0, 0);
      }
    }

    else
    {
      if (*a3 != 27)
      {
        return;
      }

      v25 = v15;
      v26 = v18;
      v27 = *(a4 + 12);
      if (a5)
      {
        DYTraceEncode_MTLCommandQueue_addResidencySets_count(&v25, *(a1 + 8), *(a1 + 16), 0, 0);
      }

      else
      {
        DYTraceEncode_MTLCommandQueue_removeResidencySets_count(&v25, *(a1 + 8), *(a1 + 16), 0, 0);
      }
    }

    v19 = *(a1 + 8);
    v20 = *(a1 + 24);
    v21 = *v19;
    if ((*(v19 + 33) & 0x10) != 0)
    {
      v23 = *(a1 + 8);
      v22 = *v19;
      do
      {
        v23 = (v23 + v21);
        v21 = *v23;
        v22 += v21;
      }

      while ((*(v23 + 33) & 0x20) == 0);
    }

    else
    {
      v22 = *v19;
    }

    v24 = objc_autoreleasePoolPush();
    [*(v20 + 8) appendBytes:v19 length:v22];
    objc_autoreleasePoolPop(v24);
  }
}

void *name_array_16152(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = a4;
    v8 = a2;
    do
    {
      v9 = *a3++;
      v15 = v9;
      entry = find_entry(a1, &v15, 8uLL, 0);
      if (*entry && (v11 = *(*entry + 32)) != 0)
      {
        v12 = atomic_load((v11 + 56));
        v13 = (v11 + (~(v12 >> 2) & 8));
      }

      else
      {
        v13 = &dword_8;
      }

      *v8++ = *v13;
      --v5;
    }

    while (v5);
  }

  return a2;
}

uint64_t HashesEqual(apr_pool_t **ht, uint64_t a2)
{
  if (*(ht + 12) == *(a2 + 48))
  {
    v3 = apr_hash_first(*ht, ht);
    if (!v3)
    {
      return 1;
    }

    v4 = v3;
    while (1)
    {
      entry = find_entry(a2, *(*(v4 + 1) + 16), 8uLL, 0);
      if (!*entry || !*(*entry + 32))
      {
        break;
      }

      v4 = apr_hash_next(v4);
      if (!v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

void WriteGTMTLSMTexture_restoreTextureData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 44))
  {
    v6 = 0;
    do
    {
      v7 = a1 + 456 * v6;
      v8 = *(v7 + 52);
      v21[0] = a3;
      v21[1] = v8;
      v9 = *(v7 + 58);
      v21[2] = *(v7 + 56);
      v21[3] = v9;
      v10 = *(v7 + 64);
      v21[4] = *(v7 + 60);
      v21[5] = v10;
      v11 = *(v7 + 50);
      v21[6] = *(v7 + 66);
      v21[7] = v11;
      v21[8] = *(v7 + 48);
      GTResourceDownloaderGetResourceFilename(a1, v6, __str, 0x80uLL);
      v21[9] = __str;
      v12 = *(v7 + 68);
      *&v13 = v12;
      *(&v13 + 1) = HIDWORD(v12);
      v22 = v13;
      v23 = *(v7 + 76);
      DYTraceEncode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(v21, *(a2 + 8), *(a2 + 16), 0, 0);
      v14 = *(a2 + 8);
      v14[1] = -10236;
      v15 = v14[8];
      v14[8] = v15 | 4;
      v16 = *v14;
      if ((v15 & 0x1000) != 0)
      {
        v17 = *v14;
        v18 = v14;
        do
        {
          v18 = (v18 + v17);
          v17 = *v18;
          v16 += v17;
        }

        while ((*(v18 + 33) & 0x20) == 0);
      }

      v19 = *(a2 + 24);
      v20 = objc_autoreleasePoolPush();
      [*(v19 + 8) appendBytes:v14 length:v16];
      objc_autoreleasePoolPop(v20);
      ++v6;
    }

    while (v6 < *(a1 + 44));
  }
}

uint64_t GTTraceDump_writeUnusedDeviceResources(uint64_t a1, uint64_t a2, apr_pool_t *p)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 56);
  v8 = apr_palloc(p, 0x100000uLL);
  v34[0] = v7;
  entry = find_entry(v6, v34, 8uLL, 0);
  if (*entry && (v10 = *(*entry + 32)) != 0)
  {
    v11 = atomic_load((v10 + 56));
    v12 = (v10 + (~(v11 >> 2) & 8));
  }

  else
  {
    v12 = &dword_8;
  }

  v13 = *v12;
  snprintf(v8, 0x100000uLL, "unused-device-resources-0x%llx", *v12);
  v26[0] = v13;
  v26[1] = v8;
  v14 = *(a1 + 664);
  v27 = 0x100000;
  v28 = v14;
  v15 = fbstream_open(*(a2 + 192), v8, p);
  v16 = 0;
  data = v15;
  v30 = a2;
  v31 = 0;
  v32 = *(a1 + 668);
  memset(v33, 0, sizeof(v33));
  v17 = 64;
  v18 = 464;
  do
  {
    v19 = &v34[v16];
    v20 = *(a1 + v17);
    v21 = v20[1];
    *v19 = *v20;
    *(v19 + 1) = v21;
    LODWORD(v20) = *(a1 + v18);
    v22 = v34[v16 + 1];
    v23 = HIDWORD(v34[v16 + 1]) - v20;
    *(v19 + 3) = v23;
    *(v19 + 4) = v23;
    v19[3] = v34[v16 + 3] + v22 * v20;
    *v19 = 0;
    v17 += 8;
    v18 += 4;
    v16 += 4;
  }

  while (v17 != 464);
  DumpDeviceResources(v26, a1, v34, p);
  v24 = data;
  apr_pool_cleanup_kill(*data, data, fbstream_cleanup);
  return fbstream_cleanup(v24);
}

uint64_t GTTraceDump_writeDelta(uint64_t a1, uint64_t a2, apr_pool_t *a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 680);
  v110 = *(a1 + 56);
  entry = find_entry(v6, &v110, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    v10 = atomic_load((v9 + 56));
    v11 = (v9 + (~(v10 >> 2) & 8));
  }

  else
  {
    v11 = &dword_8;
  }

  v12 = *v11;
  v13 = apr_palloc(a3, 0x100000uLL);
  snprintf(v13, 0x100000uLL, "delta-device-resources-0x%llx", v12);
  v110 = v12;
  v111 = v13;
  v112 = 0x100000;
  pool = a3;
  v14 = fbstream_open(*(a2 + 192), v13, a3);
  v114 = 0;
  v115 = 0;
  data = v14;
  v116 = *(a1 + 668);
  memset(v117, 0, sizeof(v117));
  if (*(a1 + 560) >= 1)
  {
    v15 = 0;
    do
    {
      v16 = *(*(*(a1 + 256) + 24) + 8 * v15);
      if (v16)
      {
        v16 = *(v16 + 8);
      }

      v108 = v16;
      v17 = find_entry(v6, &v108, 8uLL, 0);
      if (*v17 && (v18 = *(*v17 + 32)) != 0)
      {
        v19 = atomic_load((v18 + 56));
        v20 = (v18 + (~(v19 >> 2) & 8));
        v13 = v111;
      }

      else
      {
        v20 = &dword_8;
      }

      v21 = *v20;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 4) = 0x4300000000;
      *(v13 + 5) = v21;
      *v13 = 0xFFFFC02C00000030;
      *(v13 + 1) = 0;
      v13 = v111;
      v22 = data;
      v23 = *v111;
      if ((v111[33] & 0x10) != 0)
      {
        v25 = v111;
        v24 = *v111;
        do
        {
          v25 = (v25 + v23);
          v23 = *v25;
          v24 += v23;
        }

        while ((*(v25 + 33) & 0x20) == 0);
      }

      else
      {
        v24 = *v111;
      }

      v26 = objc_autoreleasePoolPush();
      [v22[1] appendBytes:v13 length:v24];
      objc_autoreleasePoolPop(v26);
      ++v15;
    }

    while (v15 < *(a1 + 560));
  }

  if (*(a1 + 472) >= 1)
  {
    v27 = 0;
    do
    {
      v28 = *(*(*(a1 + 80) + 24) + 8 * v27);
      v108 = v28[1];
      v29 = find_entry(v7, &v108, 8uLL, 0);
      if (*v29)
      {
        v30 = *(*v29 + 32);
      }

      else
      {
        v30 = 0;
      }

      if (!v28[25])
      {
        v31 = v28[14];
        if (v31)
        {
          LOBYTE(v31) = *(v31 + 44) != 0;
        }

        if ((v31 & 1) == 0 && v30)
        {
          v32 = *(v30 + 47);
          v108 = v28[1];
          v33 = find_entry(v6, &v108, 8uLL, 0);
          if (*v33 && (v34 = *(*v33 + 32)) != 0)
          {
            v35 = atomic_load((v34 + 56));
            v36 = (v34 + (~(v35 >> 2) & 8));
          }

          else
          {
            v36 = &dword_8;
          }

          WriteGTMTLSMTexture_downloads(&v110, v28, v30, v32 & 1, *v36);
        }
      }

      ++v27;
    }

    while (v27 < *(a1 + 472));
  }

  if (*(a1 + 488) >= 1)
  {
    v37 = 0;
    do
    {
      v38 = *(*(*(a1 + 112) + 24) + 8 * v37);
      v108 = *(v38 + 8);
      v39 = find_entry(v7, &v108, 8uLL, 0);
      if (*v39)
      {
        v40 = *(*v39 + 32);
        if (v40)
        {
          v108 = *(v38 + 8);
          v41 = find_entry(v6, &v108, 8uLL, 0);
          if (*v41 && (v42 = *(*v41 + 32)) != 0)
          {
            v43 = atomic_load((v42 + 56));
            v44 = (v42 + (~(v43 >> 2) & 8));
          }

          else
          {
            v44 = &dword_8;
          }

          WriteGTMTLSMIndirectCommandBuffer_restore(&v110, v40, *v44);
        }
      }

      ++v37;
    }

    while (v37 < *(a1 + 488));
  }

  if (*(a1 + 528) >= 1)
  {
    v45 = 0;
    do
    {
      v46 = *(*(*(a1 + 192) + 24) + 8 * v45);
      if (v46)
      {
        v47 = *(v46 + 8);
      }

      else
      {
        v47 = 0;
      }

      v108 = v47;
      v48 = find_entry(v6, &v108, 8uLL, 0);
      if (*v48 && (v50 = *(*v48 + 32)) != 0)
      {
        v51 = atomic_load((v50 + 56));
        v52 = (v50 + (~(v51 >> 2) & 8));
      }

      else
      {
        v52 = &dword_8;
      }

      WriteGTMTLSMFence(&v110, v46, *v52, v49);
      ++v45;
    }

    while (v45 < *(a1 + 528));
  }

  if (*(a1 + 532) >= 1)
  {
    v53 = 0;
    do
    {
      v54 = *(*(*(a1 + 200) + 24) + 8 * v53);
      if (v54)
      {
        v55 = *(v54 + 8);
      }

      else
      {
        v55 = 0;
      }

      v108 = v55;
      v56 = find_entry(v6, &v108, 8uLL, 0);
      if (*v56 && (v58 = *(*v56 + 32)) != 0)
      {
        v59 = atomic_load((v58 + 56));
        v60 = (v58 + (~(v59 >> 2) & 8));
      }

      else
      {
        v60 = &dword_8;
      }

      WriteGTMTLSMEvent(&v110, v54, *v60, v57);
      ++v53;
    }

    while (v53 < *(a1 + 532));
  }

  if (*(a1 + 540) >= 1)
  {
    v61 = 0;
    do
    {
      v62 = *(*(*(a1 + 216) + 24) + 8 * v61);
      if (v62)
      {
        v63 = *(v62 + 8);
      }

      else
      {
        v63 = 0;
      }

      v108 = v63;
      v64 = find_entry(v6, &v108, 8uLL, 0);
      if (*v64 && (v66 = *(*v64 + 32)) != 0)
      {
        v67 = atomic_load((v66 + 56));
        v68 = (v66 + (~(v67 >> 2) & 8));
      }

      else
      {
        v68 = &dword_8;
      }

      WriteGTMTLSMLateEvalEvent(&v110, v62, *v68, v65);
      ++v61;
    }

    while (v61 < *(a1 + 540));
  }

  v69 = apr_hash_make(pool);
  if (*(a1 + 536) >= 1)
  {
    v70 = v69;
    v71 = 0;
    do
    {
      v72 = *(*(*(a1 + 208) + 24) + 8 * v71);
      if (v72)
      {
        v73 = *(v72 + 8);
      }

      else
      {
        v73 = 0;
      }

      v108 = v73;
      v74 = find_entry(v6, &v108, 8uLL, 0);
      if (*v74 && (v75 = *(*v74 + 32)) != 0)
      {
        v76 = atomic_load((v75 + 56));
        v77 = (v75 + (~(v76 >> 2) & 8));
      }

      else
      {
        v77 = &dword_8;
      }

      WriteGTMTLSMSharedEvent(&v110, v70, v72, *v77);
      ++v71;
    }

    while (v71 < *(a1 + 536));
  }

  v78 = *(a1 + 568);
  if (v78 >= 1)
  {
    for (i = 0; i < v78; ++i)
    {
      v80 = *(*(*(a1 + 272) + 24) + 8 * i);
      if (*(v80 + 60) == 1)
      {
        v108 = 0;
        v109 = 0;
        v118 = *(v80 + 8);
        v81 = find_entry(v6, &v118, 8uLL, 0);
        if (*v81 && (v82 = *(*v81 + 32)) != 0)
        {
          v83 = atomic_load((v82 + 56));
          v84 = (v82 + (~(v83 >> 2) & 8));
        }

        else
        {
          v84 = &dword_8;
        }

        v108 = *v84;
        v85 = *(v80 + 48);
        v86 = v111;
        v87 = v112;
        v118 = 512;
        v109 = StoreMTLRasterizationRateMapDescriptorUsingEncode(v114, v85, &v111[v112 - 512], &v118);
        DYTraceEncode_MTLRasterizationRateMap_resetUsingDescriptor(&v108, v86, v87, 0, 0);
        v88 = data;
        v89 = *v86;
        if ((*(v86 + 33) & 0x10) != 0)
        {
          v91 = v86;
          v90 = *v86;
          do
          {
            v91 = (v91 + v89);
            v89 = *v91;
            v90 += v89;
          }

          while ((*(v91 + 33) & 0x20) == 0);
        }

        else
        {
          v90 = *v86;
        }

        v92 = objc_autoreleasePoolPush();
        [v88[1] appendBytes:v86 length:v90];
        objc_autoreleasePoolPop(v92);
        v78 = *(a1 + 568);
      }
    }
  }

  if (*(a1 + 464) >= 1)
  {
    v93 = 0;
    do
    {
      v94 = *(*(*(a1 + 64) + 24) + 8 * v93);
      v108 = *(v94 + 8);
      v95 = find_entry(v7, &v108, 8uLL, 0);
      if (*v95)
      {
        v96 = *(*v95 + 32);
      }

      else
      {
        v96 = 0;
      }

      v108 = *(v94 + 8);
      v97 = find_entry(v6, &v108, 8uLL, 0);
      if (*v97 && (v98 = *(*v97 + 32)) != 0)
      {
        v99 = atomic_load((v98 + 56));
        v100 = (v98 + (~(v99 >> 2) & 8));
      }

      else
      {
        v100 = &dword_8;
      }

      WriteGTMTLSMBuffer_restore(&v110, v96, *v100);
      ++v93;
    }

    while (v93 < *(a1 + 464));
  }

  if (*(a1 + 608) >= 1)
  {
    v101 = 0;
    do
    {
      WriteGTMTLSMResidencySet(&v110, a1, *(*(*(a1 + 352) + 24) + 8 * v101++), 1);
    }

    while (v101 < *(a1 + 608));
  }

  if (*(a1 + 560) >= 1)
  {
    v102 = 0;
    do
    {
      WriteGTMTLAnySMCommandQueue_residencySetsDelta(&v110, a1, *(*(*(a1 + 256) + 24) + 8 * v102++));
    }

    while (v102 < *(a1 + 560));
  }

  if (*(a1 + 616) >= 1)
  {
    v103 = 0;
    do
    {
      WriteGTMTLAnySMCommandQueue_residencySetsDelta(&v110, a1, *(*(*(a1 + 368) + 24) + 8 * v103++));
    }

    while (v103 < *(a1 + 616));
  }

  if (*(a1 + 508) >= 1)
  {
    v104 = 0;
    do
    {
      WriteGTMTLSMTextureViewPool(&v110, a1, *(*(*(a1 + 152) + 24) + 8 * v104++), 1);
    }

    while (v104 < *(a1 + 508));
  }

  v105 = data;
  apr_pool_cleanup_kill(*data, data, fbstream_cleanup);
  return fbstream_cleanup(v105);
}

void WriteGTMTLAnySMCommandQueue_residencySetsDelta(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[2];
  if (a3)
  {
    v7 = *(a3 + 8);
  }

  else
  {
    v7 = 0;
  }

  newpool = v7;
  v8 = *find_entry(v6, &newpool, 8uLL, 0);
  if (v8)
  {
    v9 = *(v8 + 32);
  }

  else
  {
    v9 = 0;
  }

  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v10 = newpool;
  v11 = apr_hash_make(newpool);
  GatherCommandQueueResidencySetsUpToIndex(v11, v9, a2[3], a2[5], a2[6] + a2[5], 0);
  v12 = apr_hash_make(v10);
  v13 = a2[6] + a2[5];
  GatherCommandQueueResidencySetsUpToIndex(v12, v9, a2[3], v13, v13, 0);
  v14 = apr_array_make(v10, 16, 8);
  v15 = apr_array_make(v10, 16, 8);
  FillArrayFromHashDifference(v14, v11, v12);
  FillArrayFromHashDifference(v15, v12, v11);
  WriteResidencySets(a1, a2, a3, v14, 1);
  WriteResidencySets(a1, a2, a3, v15, 0);
  apr_pool_destroy(v10);
}

uint64_t GTTraceDump_writeStartup0(uint64_t a1, uint64_t a2, apr_pool_t *a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 56);
  v123[0] = v7;
  entry = find_entry(v6, v123, 8uLL, 0);
  if (*entry && (v9 = *(*entry + 32)) != 0)
  {
    v10 = atomic_load((v9 + 56));
    v11 = (v9 + (~(v10 >> 2) & 8));
  }

  else
  {
    v11 = &dword_8;
  }

  v12 = *v11;
  v13 = apr_palloc(a3, 0x100000uLL);
  v14 = fbstream_open(*(a2 + 192), "startup-0-platform", a3);
  v114 = v12;
  v15 = GTMTLSMContext_getDevice(*(a1 + 752), v7, *(a1 + 40))[5];
  v122 = 512;
  v123[0] = v12;
  v123[1] = StoreMTLDeviceDescriptorUsingEncode(a2, v15, (v13 + 262016), &v122);
  DYTraceEncode_MTLDevice_deviceReference(v123, v13, 0x100000uLL, 0, 0);
  v16 = v13[8];
  v13[8] = v16 | 4;
  v17 = *v13;
  if ((v16 & 0x1000) != 0)
  {
    v18 = *v13;
    v19 = v13;
    do
    {
      v19 = (v19 + v18);
      v18 = *v19;
      v17 += v18;
    }

    while ((*(v19 + 33) & 0x20) == 0);
  }

  v20 = objc_autoreleasePoolPush();
  [v14[1] appendBytes:v13 length:v17];
  objc_autoreleasePoolPop(v20);
  v21 = apr_array_make(a3, 128, 8);
  v21->nelts = 0;
  v22 = *(a1 + 752);
  v23 = *(v22 + 24);
  v24 = *(v23 + 12);
  if (v24 >= 1)
  {
    v25 = 0;
    while (1)
    {
      v26 = *(*(v23 + 24) + 8 * v25);
      v27 = *(v26 + 112);
      if (!v27)
      {
        break;
      }

      v28 = *(v27 + 8);
      if (v28)
      {
        goto LABEL_12;
      }

LABEL_13:
      if (++v25 >= v24)
      {
        v22 = *(a1 + 752);
        goto LABEL_17;
      }
    }

    v28 = *(v26 + 184);
    if (!v28)
    {
      goto LABEL_13;
    }

LABEL_12:
    *apr_array_push(v21) = v28;
    v24 = *(v23 + 12);
    goto LABEL_13;
  }

LABEL_17:
  v29 = *(v22 + 96);
  v30 = *(v29 + 12);
  if (v30 >= 1)
  {
    for (i = 0; i < v30; ++i)
    {
      v32 = *(*(*(v29 + 24) + 8 * i) + 48);
      if (v32 && *v32 && v32[2])
      {
        v33 = 0;
        do
        {
          v34 = *v32 + i;
          *apr_array_push(v21) = v34;
          ++v33;
        }

        while (v32[2] > v33);
        v30 = *(v29 + 12);
      }
    }
  }

  nelts = v21->nelts;
  if (nelts > 0)
  {
    qsort(v21->elts, nelts, v21->elt_size, ResourceIndicesCompare);
    v121[0] = v114;
    v121[1] = 0;
    SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
    v36 = v21->nelts;
    v121[2] = v123;
    v121[3] = v36;
    DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v121, v13, 0x100000uLL, 0, 0);
    v37 = *v13;
    if ((*(v13 + 33) & 0x10) != 0)
    {
      v39 = v13;
      v38 = *v13;
      do
      {
        v39 = (v39 + v37);
        v37 = *v39;
        v38 += v37;
      }

      while ((*(v39 + 33) & 0x20) == 0);
    }

    else
    {
      v38 = *v13;
    }

    v40 = objc_autoreleasePoolPush();
    [v14[1] appendBytes:v13 length:v38];
    objc_autoreleasePoolPop(v40);
  }

  v21->nelts = 0;
  v41 = *(*(a1 + 752) + 32);
  v42 = *(v41 + 12);
  if (v42 >= 1)
  {
    for (j = 0; j < v42; ++j)
    {
      v44 = *(*(*(v41 + 24) + 8 * j) + 48);
      if (v44)
      {
        v45 = *(v44 + 16);
        if (v45)
        {
          *apr_array_push(v21) = v45;
          v42 = *(v41 + 12);
        }
      }
    }

    v46 = v21->nelts;
    if (v46 > 0)
    {
      qsort(v21->elts, v46, v21->elt_size, ResourceIndicesCompare);
      v120[0] = v114;
      v120[1] = 1;
      SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
      v47 = v21->nelts;
      v120[2] = v123;
      v120[3] = v47;
      DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v120, v13, 0x100000uLL, 0, 0);
      v48 = *v13;
      if ((*(v13 + 33) & 0x10) != 0)
      {
        v50 = v13;
        v49 = *v13;
        do
        {
          v50 = (v50 + v48);
          v48 = *v50;
          v49 += v48;
        }

        while ((*(v50 + 33) & 0x20) == 0);
      }

      else
      {
        v49 = *v13;
      }

      v51 = objc_autoreleasePoolPush();
      [v14[1] appendBytes:v13 length:v49];
      objc_autoreleasePoolPop(v51);
    }
  }

  v21->nelts = 0;
  v52 = *(a1 + 752);
  v53 = *(v52 + 40);
  v54 = *(v53 + 12);
  if (v54 >= 1)
  {
    v55 = 0;
    while (1)
    {
      v56 = *(*(v53 + 24) + 8 * v55);
      v57 = *(v56 + 48);
      if (v57)
      {
        v58 = *(v57 + 1280);
        if (!v58)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v59 = *(v56 + 72);
        if (!v59)
        {
          goto LABEL_52;
        }

        v58 = *(v59 + 384);
        if (!v58)
        {
          goto LABEL_52;
        }
      }

      *apr_array_push(v21) = v58;
      v54 = *(v53 + 12);
LABEL_52:
      if (++v55 >= v54)
      {
        v52 = *(a1 + 752);
        break;
      }
    }
  }

  v60 = *(v52 + 48);
  v61 = *(v60 + 12);
  if (v61 >= 1)
  {
    for (k = 0; k < v61; ++k)
    {
      v63 = *(*(*(v60 + 24) + 8 * k) + 128);
      if (v63)
      {
        *apr_array_push(v21) = v63;
        v61 = *(v60 + 12);
      }
    }
  }

  v64 = v21->nelts;
  if (v64 > 0)
  {
    qsort(v21->elts, v64, v21->elt_size, ResourceIndicesCompare);
    v119[0] = v114;
    v119[1] = 4;
    SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
    v65 = v21->nelts;
    v119[2] = v123;
    v119[3] = v65;
    DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v119, v13, 0x100000uLL, 0, 0);
    v66 = *v13;
    if ((*(v13 + 33) & 0x10) != 0)
    {
      v68 = v13;
      v67 = *v13;
      do
      {
        v68 = (v68 + v66);
        v66 = *v68;
        v67 += v66;
      }

      while ((*(v68 + 33) & 0x20) == 0);
    }

    else
    {
      v67 = *v13;
    }

    v69 = objc_autoreleasePoolPush();
    [v14[1] appendBytes:v13 length:v67];
    objc_autoreleasePoolPop(v69);
  }

  v21->nelts = 0;
  v70 = *(*(a1 + 752) + 56);
  v71 = *(v70 + 12);
  if (v71 >= 1)
  {
    for (m = 0; m < v71; ++m)
    {
      v73 = *(*(*(v70 + 24) + 8 * m) + 112);
      if (v73)
      {
        v74 = *(v73 + 8);
        if (v74)
        {
          *apr_array_push(v21) = v74;
          v71 = *(v70 + 12);
        }
      }
    }

    v75 = v21->nelts;
    if (v75 > 0)
    {
      qsort(v21->elts, v75, v21->elt_size, ResourceIndicesCompare);
      v118[0] = v114;
      v118[1] = 5;
      SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
      v76 = v21->nelts;
      v118[2] = v123;
      v118[3] = v76;
      DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v118, v13, 0x100000uLL, 0, 0);
      v77 = *v13;
      if ((*(v13 + 33) & 0x10) != 0)
      {
        v79 = v13;
        v78 = *v13;
        do
        {
          v79 = (v79 + v77);
          v77 = *v79;
          v78 += v77;
        }

        while ((*(v79 + 33) & 0x20) == 0);
      }

      else
      {
        v78 = *v13;
      }

      v80 = objc_autoreleasePoolPush();
      [v14[1] appendBytes:v13 length:v78];
      objc_autoreleasePoolPop(v80);
    }
  }

  v21->nelts = 0;
  v81 = *(*(a1 + 752) + 64);
  v82 = *(v81 + 12);
  if (v82 >= 1)
  {
    for (n = 0; n < v82; ++n)
    {
      v84 = *(*(*(v81 + 24) + 8 * n) + 112);
      if (v84)
      {
        v85 = *(v84 + 8);
        if (v85)
        {
          *apr_array_push(v21) = v85;
          v82 = *(v81 + 12);
        }
      }
    }

    v86 = v21->nelts;
    if (v86 > 0)
    {
      qsort(v21->elts, v86, v21->elt_size, ResourceIndicesCompare);
      v117[0] = v114;
      v117[1] = 6;
      SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
      v87 = v21->nelts;
      v117[2] = v123;
      v117[3] = v87;
      DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v117, v13, 0x100000uLL, 0, 0);
      v88 = *v13;
      if ((*(v13 + 33) & 0x10) != 0)
      {
        v90 = v13;
        v89 = *v13;
        do
        {
          v90 = (v90 + v88);
          v88 = *v90;
          v89 += v88;
        }

        while ((*(v90 + 33) & 0x20) == 0);
      }

      else
      {
        v89 = *v13;
      }

      v91 = objc_autoreleasePoolPush();
      [v14[1] appendBytes:v13 length:v89];
      objc_autoreleasePoolPop(v91);
    }
  }

  v21->nelts = 0;
  v92 = *(*(a1 + 752) + 72);
  v93 = *(v92 + 12);
  if (v93 >= 1)
  {
    for (ii = 0; ii < v93; ++ii)
    {
      v95 = *(*(*(v92 + 24) + 8 * ii) + 112);
      if (v95 && *v95)
      {
        v96 = *v95;
        *apr_array_push(v21) = v96;
        v93 = *(v92 + 12);
      }
    }

    v97 = v21->nelts;
    if (v97 > 0)
    {
      qsort(v21->elts, v97, v21->elt_size, ResourceIndicesCompare);
      v116[0] = v114;
      v116[1] = 7;
      SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
      v98 = v21->nelts;
      v116[2] = v123;
      v116[3] = v98;
      DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v116, v13, 0x100000uLL, 0, 0);
      v99 = *v13;
      if ((*(v13 + 33) & 0x10) != 0)
      {
        v101 = v13;
        v100 = *v13;
        do
        {
          v101 = (v101 + v99);
          v99 = *v101;
          v100 += v99;
        }

        while ((*(v101 + 33) & 0x20) == 0);
      }

      else
      {
        v100 = *v13;
      }

      v102 = objc_autoreleasePoolPush();
      [v14[1] appendBytes:v13 length:v100];
      objc_autoreleasePoolPop(v102);
    }
  }

  v21->nelts = 0;
  v103 = *(*(a1 + 752) + 80);
  v104 = *(v103 + 12);
  if (v104 >= 1)
  {
    for (jj = 0; jj < v104; ++jj)
    {
      v106 = *(*(*(v103 + 24) + 8 * jj) + 160);
      if (v106)
      {
        *apr_array_push(v21) = v106;
        v104 = *(v103 + 12);
      }
    }

    v107 = v21->nelts;
    if (v107 > 0)
    {
      qsort(v21->elts, v107, v21->elt_size, ResourceIndicesCompare);
      v115[0] = v114;
      v115[1] = 8;
      SavePointer(a2, v21->elts, (v21->elt_size * v21->nelts), v123);
      v108 = v21->nelts;
      v115[2] = v123;
      v115[3] = v108;
      DYTraceEncode_MTLDevice_reserveResourceIndicesForResourceType_indices_indexCount(v115, v13, 0x100000uLL, 0, 0);
      v109 = *v13;
      if ((*(v13 + 33) & 0x10) != 0)
      {
        v111 = v13;
        v110 = *v13;
        do
        {
          v111 = (v111 + v109);
          v109 = *v111;
          v110 += v109;
        }

        while ((*(v111 + 33) & 0x20) == 0);
      }

      else
      {
        v110 = *v13;
      }

      v112 = objc_autoreleasePoolPush();
      [v14[1] appendBytes:v13 length:v110];
      objc_autoreleasePoolPop(v112);
    }
  }

  apr_pool_cleanup_kill(*v14, v14, fbstream_cleanup);
  return fbstream_cleanup(v14);
}