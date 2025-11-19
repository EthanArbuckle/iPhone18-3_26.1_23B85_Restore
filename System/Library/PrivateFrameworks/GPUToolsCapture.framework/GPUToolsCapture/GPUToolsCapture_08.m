void GTMTL4SMCommandEncoder_processTraceFunc(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a2 + 2);
  if (v6 <= -15087)
  {
    if (v6 <= -15166)
    {
      if (v6 == -15171)
      {
        v41 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        bzero(a1, 0x790uLL);
        v42 = *(v41 + 1);
        if (v42)
        {
          *a1 = 95;
          v43 = *a2;
          *(a1 + 8) = v42;
          *(a1 + 16) = v43;
          *(a1 + 24) = -1;
          *(a1 + 40) = *v41;
          *(a1 + 56) = 0u;
          *(a1 + 72) = 0u;
          *(a1 + 88) = 0u;
          *(a1 + 104) = 0u;
          *(a1 + 120) = 0u;
          *(a1 + 136) = 0u;
          *(a1 + 152) = 0u;
          *(a1 + 168) = 0u;
          *(a1 + 184) = 0u;
          *(a1 + 200) = 0;
        }

        return;
      }

      if (v6 != -15166)
      {
        return;
      }

      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v13 = *(v12 + 1);
      if (!v13)
      {
        return;
      }

      *a1 = 98;
      v14 = *a2;
      *(a1 + 8) = v13;
      *(a1 + 16) = v14;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v12;
      v15 = v12[16];
    }

    else
    {
      if (v6 != -15165)
      {
        if (v6 != -15127)
        {
          v8 = -15104;
          goto LABEL_21;
        }

LABEL_23:
        v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        *(a1 + 48) = GTTraceFunc_argumentBytesWithMap(a2, v16[8], a3);
        return;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      bzero(a1, 0x790uLL);
      v45 = *(v44 + 1);
      if (!v45)
      {
        return;
      }

      *a1 = 98;
      v46 = *a2;
      *(a1 + 8) = v45;
      *(a1 + 16) = v46;
      *(a1 + 24) = -1;
      *(a1 + 40) = *v44;
      v15 = v44[24];
    }

    v47 = GTTraceFunc_argumentBytesWithMap(a2, v15, a3);
    bzero((a1 + 64), 0x750uLL);
    *(a1 + 56) = v47;
    *(a1 + 1540) = 1065353216;
    *(a1 + 1916) = 1;
    memset_pattern16((a1 + 1432), &unk_297640, 0x40uLL);
    *(a1 + 1929) = 1028;
    v22 = 0x706050403020100;
LABEL_64:
    *(a1 + 1496) = v22;
    return;
  }

  if (v6 > -14906)
  {
    if (v6 > -14889)
    {
      switch(v6)
      {
        case -14888:
LABEL_25:
          *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14887:
LABEL_24:
          *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
          break;
        case -14884:
          v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
          bzero(a1, 0x790uLL);
          v10 = *(v9 + 1);
          if (v10)
          {
            *a1 = 105;
            v11 = *a2;
            *(a1 + 8) = v10;
            *(a1 + 16) = v11;
            *(a1 + 24) = -1;
            *(a1 + 40) = *v9;
            *(a1 + 56) = 0;
            *(a1 + 64) = 0;
          }

          break;
      }

      return;
    }

    if (v6 != -14905)
    {
      v8 = -14892;
LABEL_21:
      if (v6 == v8)
      {
LABEL_22:
        *(a1 + 24) = *a2;
      }

      return;
    }

    goto LABEL_23;
  }

  switch(v6)
  {
    case -15086:
      goto LABEL_25;
    case -15085:
      goto LABEL_24;
    case -15084:
      v7 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 196) = *(v7 + 1);
      *(a1 + 200) = *(v7 + 2);
      return;
    case -15083:
      v36 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v36 + 2) + 72) = *(v36 + 1);
      return;
    case -15068:
      goto LABEL_23;
    case -15047:
      goto LABEL_22;
    case -15041:
      v32 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v33 = *(v32 + 2);
      if (v33)
      {
        *(a1 + 64) = *(v32 + 1);
        v33 = *(v32 + 2);
        if ((v33 & 2) == 0)
        {
LABEL_45:
          if ((v33 & 4) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_68;
        }
      }

      else if ((v33 & 2) == 0)
      {
        goto LABEL_45;
      }

      *(a1 + 72) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 4) == 0)
      {
LABEL_46:
        if ((v33 & 8) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_69;
      }

LABEL_68:
      *(a1 + 80) = *(v32 + 1);
      v33 = *(v32 + 2);
      if ((v33 & 8) == 0)
      {
LABEL_47:
        if ((v33 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_70;
      }

LABEL_69:
      *(a1 + 88) = *(v32 + 1);
      if ((*(v32 + 2) & 0x10) == 0)
      {
        return;
      }

LABEL_70:
      *(a1 + 96) = *(v32 + 1);
      break;
    case -15040:
      v29 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1516) = *(v29 + 2);
      *(a1 + 1520) = *(v29 + 3);
      *(a1 + 1524) = *(v29 + 4);
      *(a1 + 1528) = *(v29 + 5);
      return;
    case -15039:
      v28 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 8 * *(v28 + 2) + 1432) = *(v28 + 1);
      return;
    case -15038:
      *(a1 + 1924) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15037:
      v34 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1504) = *(v34 + 2);
      *(a1 + 1508) = *(v34 + 3);
      *(a1 + 1512) = *(v34 + 4);
      return;
    case -15036:
      *(a1 + 1925) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15035:
      *(a1 + 1416) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15034:
      *(a1 + 1929) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15033:
      *(a1 + 1926) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15032:
      *(a1 + 1540) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      return;
    case -15031:
      v30 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v30 + 2) + 1792) = *(v30 + 1);
      return;
    case -15030:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15029:
      v22 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      goto LABEL_64;
    case -15028:
      v37 = (a1 + 904);
      v38 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = 1;
      v39 = *(v38 + 24);
      *v37 = *(v38 + 8);
      *(a1 + 920) = v39;
      return;
    case -15027:
      v24 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 896) = *(v24 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v24[16], a3);
      v26 = 32 * *(v24 + 1);
      v27 = (a1 + 904);
      goto LABEL_56;
    case -15026:
      v31 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1532) = *(v31 + 2);
      *(a1 + 1536) = *(v31 + 3);
      return;
    case -15025:
      v23 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 2);
      *(a1 + 1536) = v23;
      *(a1 + 1532) = v23;
      return;
    case -15024:
      *(a1 + 1930) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15023:
      v21 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 4 * *(v21 + 3) + 1544) = *(v21 + 1);
      *(a1 + 4 * *(v21 + 3) + 1668) = *(v21 + 2);
      return;
    case -15022:
      *(a1 + 1927) = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3) + 1);
      return;
    case -15021:
      v35 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1916) = *(v35 + 1);
      *(a1 + 1424) = GTTraceFunc_argumentBytesWithMap(a2, v35[16], a3);
      return;
    case -15020:
      v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = 1;
      v18 = *(v17 + 24);
      v19 = *(v17 + 40);
      *(a1 + 128) = *(v17 + 8);
      *(a1 + 144) = v18;
      *(a1 + 160) = v19;
      return;
    case -15019:
      v40 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 120) = *(v40 + 1);
      v25 = GTTraceFunc_argumentBytesWithMap(a2, v40[16], a3);
      v26 = 48 * *(v40 + 1);
      v27 = (a1 + 128);
LABEL_56:

      memcpy(v27, v25, v26);
      return;
    case -15018:
      v20 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      *(a1 + 1928) = *(v20 + 1);
      *(a1 + 1920) = *(v20 + 2);
      return;
    default:
      return;
  }
}

char *GTMTL4SMCommandBuffer_processTraceFunc(char *result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 2);
  if (v6 > -15171)
  {
    if ((v6 + 15170) >= 2)
    {
      if (v6 == -14907)
      {
        v11 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
        result = GTTraceFunc_argumentBytesWithMap(a2, v11[8], a3);
        *(v5 + 7) = result;
      }
    }

    else
    {
      *(result + 3) = *a2;
    }
  }

  else if ((v6 + 15173) >= 2)
  {
    if (v6 == -15196)
    {
      result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
      v9 = *a2;
      v10 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v9;
      *(v5 + 1) = *(a2 + 2);
      *(v5 + 5) = v10;
    }
  }

  else if (!*(result + 1))
  {
    result = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), a3);
    v7 = *a2;
    v8 = *result;
    *(v5 + 1) = *(result + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a2 + 2);
    *(v5 + 5) = 1;
    *(v5 + 6) = v8;
  }

  return result;
}

double GTMTLSMIOCommandBuffer_init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double GTMTLSMCommandBuffer_init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double GTMTL4SMCommandBuffer_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 20) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 4) = 0u;
  *a1 = 91;
  *(a1 + 24) = -1;
  return result;
}

__n128 GTMTLSMRenderCommandEncoder_init(uint64_t a1, uint64_t a2)
{
  bzero((a1 + 8), 0x2B60uLL);
  *a1 = a2;
  memset_pattern16((a1 + 10116), &unk_297630, 0x40uLL);
  memset_pattern16((a1 + 10244), &unk_297630, 0x40uLL);
  memset_pattern16((a1 + 10628), &unk_297630, 0x40uLL);
  *(a1 + 10692) = 0x3F8000003F800000;
  *(a1 + 11084) = 0x100000001;
  *(a1 + 10024) = 1065353216;
  memset_pattern16((a1 + 9872), &unk_297640, 0x40uLL);
  *(a1 + 760) = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  *(a1 + 728) = result;
  *(a1 + 744) = result;
  *(a1 + 696) = result;
  *(a1 + 712) = result;
  *(a1 + 664) = result;
  *(a1 + 680) = result;
  *(a1 + 632) = result;
  *(a1 + 648) = result;
  *(a1 + 600) = result;
  *(a1 + 616) = result;
  *(a1 + 568) = result;
  *(a1 + 584) = result;
  *(a1 + 536) = result;
  *(a1 + 552) = result;
  *(a1 + 520) = result;
  *(a1 + 10000) = 0x706050403020100;
  *(a1 + 11102) = 1028;
  return result;
}

__n128 GTMTLSMComputeCommandEncoder_init(__n128 *a1)
{
  bzero(a1, 0x888uLL);
  memset_pattern16(&a1[136].n128_i8[8], &unk_297630, 0x100uLL);
  a1[48].n128_u64[0] = -1;
  result.n128_u64[0] = -1;
  result.n128_u64[1] = -1;
  a1[46] = result;
  a1[47] = result;
  a1[44] = result;
  a1[45] = result;
  a1[42] = result;
  a1[43] = result;
  a1[40] = result;
  a1[41] = result;
  a1[38] = result;
  a1[39] = result;
  a1[36] = result;
  a1[37] = result;
  a1[34] = result;
  a1[35] = result;
  a1[33] = result;
  a1[140].n128_u8[8] = -1;
  return result;
}

void GTMTLSMParallelCommandEncoder_init(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *a1 = a2;
  memset_pattern16((a1 + 8), &unk_297640, 0x40uLL);
  *(a1 + 136) = 1028;
}

double GTMTLSMCommandEncoder_renderCommandEncoder(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 8552) = 1;
  *(a1 + 8576) = a2;
  result = a3;
  *(a1 + 8584) = a3;
  *(a1 + 8600) = 0x3FF0000000000000;
  *(a1 + 9328) = 1;
  *(a1 + 9352) = a2;
  *(a1 + 9360) = a3;
  return result;
}

double GTMTL4SMCommandEncoder_renderCommandEncoder(uint64_t a1, unint64_t a2, unint64_t a3)
{
  *(a1 + 64) = 1;
  result = a2;
  *(a1 + 88) = a2;
  *(a1 + 96) = a3;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 840) = 1;
  *(a1 + 864) = a2;
  *(a1 + 872) = a3;
  return result;
}

uint64_t GTMTLSMCommandEncoder_renderPassDescriptor(uint64_t a1)
{
  if (*a1 == 70 || *a1 == 65)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTL4SMCommandEncoder_renderPassDescriptor(uint64_t a1)
{
  if (*a1 == 98)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

void GTMTL4SMRenderCommandEncoder_init(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 1873);
  bzero((a1 + 8), 0x750uLL);
  *a1 = a2;
  *(a1 + 1484) = 1065353216;
  *(a1 + 1860) = 1;
  memset_pattern16((a1 + 1376), &unk_297640, 0x40uLL);
  *v4 = 1028;
  *(a1 + 1440) = 0x706050403020100;
}

double GTMTL4SMComputeCommandEncoder_init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void *GTMTL4SMMachineLearningCommandEncoder_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t GTMTLSMRenderCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(a4, *(a3 + a2[2])), (*(a1 + 8544) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[38];
      if (v11 >= 0x40)
      {
        v12 = 64;
      }

      else
      {
        v12 = v9[38];
      }

      *(a1 + 8) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[3];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 24) = v18;
          *(v19 + 272) = v17;
          ++v13;
        }

        while (v13 < v9[38]);
      }

      v20 = v9[31];
      if (v20 >= 0x40)
      {
        v21 = 64;
      }

      else
      {
        v21 = v9[31];
      }

      *(a1 + 1920) &= -1 << v21;
      if (v20)
      {
        v22 = 0;
        v23 = a3 + a2[4];
        do
        {
          v24 = *(v23 + 8 * v22);
          v25 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
          if (v25)
          {
            v26 = v24 - *v25;
            v27 = v25[2];
          }

          else
          {
            v27 = 0;
            v26 = 0;
          }

          v28 = a1 + 8 * v22;
          *(v28 + 1928) = v27;
          *(v28 + 2176) = v26;
          ++v22;
        }

        while (v22 < v9[31]);
      }

      v29 = v9[35];
      if (v29 >= 0x40)
      {
        v30 = 64;
      }

      else
      {
        v30 = v9[35];
      }

      *(a1 + 3576) &= -1 << v30;
      if (v29)
      {
        v31 = 0;
        v32 = a3 + a2[5];
        do
        {
          v33 = *(v32 + 8 * v31);
          v34 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v33);
          if (v34)
          {
            v35 = v33 - *v34;
            v36 = v34[2];
          }

          else
          {
            v36 = 0;
            v35 = 0;
          }

          v37 = a1 + 8 * v31;
          *(v37 + 3584) = v36;
          *(v37 + 3832) = v35;
          ++v31;
        }

        while (v31 < v9[35]);
      }

      v38 = v9[34];
      if (v38 >= 0x40)
      {
        v39 = 64;
      }

      else
      {
        v39 = v9[34];
      }

      *(a1 + 5232) &= -1 << v39;
      if (v38)
      {
        v40 = (a3 + a2[6]);
        v41 = (a1 + 5488);
        v42 = 655;
        do
        {
          v44 = *v40++;
          v43 = v44;
          v45 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v44);
          if (v45)
          {
            v46 = v43 - *v45;
            v47 = v45[2];
          }

          else
          {
            v47 = 0;
            v46 = 0;
          }

          *(v41 - 31) = v47;
          *v41++ = v46;
          v48 = v42 - 654;
          ++v42;
        }

        while (v48 < v9[34]);
      }
    }

    v49 = v9[36];
    if (v9[36])
    {
      v50 = (a3 + a2[8]);
      v51 = (a1 + 10960);
      do
      {
        v52 = *v50++;
        *v51++ = v52;
        --v49;
      }

      while (v49);
    }

    if (v9[40])
    {
      v53 = v9[38];
      v54 = v53 >= 0x40 ? 64 : v9[38];
      *(a1 + 16) |= ~(-1 << v54);
      if (v53)
      {
        v55 = (a3 + a2[10]);
        v56 = (a1 + 520);
        do
        {
          v57 = *v55++;
          *v56++ = v57;
          --v53;
        }

        while (v53);
      }
    }

    if (!v9[23])
    {
      *(a1 + 9848) = GTMTLIndirectResources_depthStencilStateIdForUniqueIdentifier(a4, *(a3 + a2[12]));
    }

    if (!v9[22])
    {
      *(a1 + 11097) = *(a3 + a2[13]);
    }

    if (!v9[20])
    {
      *(a1 + 11096) = *(a3 + a2[14]);
    }

    if (!v9[25])
    {
      *(a1 + 11098) = *(a3 + a2[15]);
    }

    if (!v9[29])
    {
      *(a1 + 11099) = *(a3 + a2[16]);
    }

    if (!v9[21])
    {
      v58 = (a3 + a2[17]);
      v60 = *v58;
      v59 = v58[1];
      *(a1 + 10008) = v60;
      *(a1 + 10016) = v59;
    }

    if (!v9[28])
    {
      *(a1 + 10044) = *(a3 + a2[18]);
    }

    if (!v9[27])
    {
      v61 = *(a3 + a2[20]);
      *(a1 + 9328) = v61;
      if (v61)
      {
        v62 = (a3 + a2[21]);
        v63 = (a1 + 9336);
        v64 = v61 - 1;
        if (v64 >= 0xF)
        {
          v64 = 15;
        }

        v65 = v64 + 1;
        do
        {
          v66 = *v62;
          v67 = v62[1];
          v62 += 2;
          *v63 = v66;
          v63[1] = v67;
          v63 += 2;
          --v65;
        }

        while (v65);
      }
    }

    if (!v9[30])
    {
      v68 = *(a3 + a2[22]);
      *(a1 + 8552) = v68;
      if (v68)
      {
        v69 = (a3 + a2[23]);
        v70 = (a1 + 8560);
        v71 = v68 - 1;
        if (v71 >= 0xF)
        {
          v71 = 15;
        }

        v72 = v71 + 1;
        do
        {
          v73 = *v69;
          v74 = v69[2];
          v70[1] = v69[1];
          v70[2] = v74;
          *v70 = v73;
          v70 += 3;
          v69 += 3;
          --v72;
        }

        while (v72);
      }
    }

    if (!v9[18])
    {
      *(a1 + 10028) = *(a3 + a2[24]);
    }

    if (v4 == 8 || v4 == 4)
    {
      v75 = a3 + a2[25];
      v76 = *(*a4 + 24);
      v77 = *(*a4 + 12);
      v78 = *v75;
      v79 = GTMTLGPUAddressResource_resourceForGPUAddress(v76, v77, *v75);
      if (v79)
      {
        v80 = v78 - *v79;
        v81 = v79[2];
      }

      else
      {
        v81 = 0;
        v80 = 0;
      }

      *(a1 + 9864) = v81;
      *(a1 + 10704) = v80;
      *(a1 + 10708) = *(v75 + 8);
      *(a1 + 10692) = *(v75 + 16);
      return v4 != 8 || v81 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t GTMTLSMComputeCommandEncoder_loadIndirectCommand(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a2[1]);
  if (!v4)
  {
    return 0;
  }

  v9 = *a2;
  if (*(*a2 + 26) || (result = GTMTLIndirectResources_computePipelineIdForUniqueIdentifier(a4, *(a3 + a2[2])), (*(a1 + 8) = result) != 0))
  {
    if (!v9[19])
    {
      v11 = v9[32];
      v12 = v11 >= 0x40 ? 64 : v9[32];
      *(a1 + 16) &= -1 << v12;
      if (v11)
      {
        v13 = 0;
        v14 = a3 + a2[7];
        do
        {
          v15 = *(v14 + 8 * v13);
          v16 = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v15);
          if (v16)
          {
            v17 = v15 - *v16;
            v18 = v16[2];
          }

          else
          {
            v18 = 0;
            v17 = 0;
          }

          v19 = a1 + 8 * v13;
          *(v19 + 32) = v18;
          *(v19 + 280) = v17;
          ++v13;
        }

        while (v13 < v9[32]);
      }
    }

    if (v9[40])
    {
      v20 = v9[32];
      v21 = v20 >= 0x40 ? 64 : v9[32];
      *(a1 + 24) |= ~(-1 << v21);
      if (v20)
      {
        v22 = (a3 + a2[10]);
        v23 = (a1 + 528);
        do
        {
          v24 = *v22++;
          *v23++ = v24;
          --v20;
        }

        while (v20);
      }
    }

    v25 = v9[33];
    if (v9[33])
    {
      v26 = (a3 + a2[9]);
      v27 = (a1 + 1984);
      do
      {
        v28 = *v26++;
        *v27++ = v28;
        --v25;
      }

      while (v25);
    }

    if (v4 == 32 || v4 == 64)
    {
      v29 = (a3 + a2[25]);
      v30 = *v29;
      *(a1 + 1944) = *(v29 + 2);
      *(a1 + 1928) = v30;
      v31 = *(v29 + 24);
      *(a1 + 1968) = *(v29 + 5);
      *(a1 + 1952) = v31;
    }

    return 1;
  }

  return result;
}

void *GTMTLSMContext_getObject(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_firstObject(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  entry = find_entry(*a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

uint64_t GTMTLSMContext_lastObject(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

void *GTMTLSMContext_getBuffer(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getCommandQueue(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getIOCommandQueue(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getComputePipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_lastComputePipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

uint64_t GTMTLSMContext_lastRenderPipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

void *GTMTLSMContext_getDevice(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getDepthStencilState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getEvent(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getSharedEvent(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getFence(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_lastFunction(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

void *GTMTLSMContext_getResidencySet(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getHeap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getIndirectCommandBuffer(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getIndirectRenderCommand(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getIndirectComputeCommand(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_lastLibrary(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

void *GTMTLSMContext_getRenderPipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getFunction(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getSamplerState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getTensor(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_firstTensor(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  entry = find_entry(*a1, &v4, 8uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void *GTMTLSMContext_getTexture(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_getDrawableTexture(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v9 = *(a2 + 48);
  entry = find_entry(*a1, &v9, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (!v6)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (*(a2 + 16) > a3 || (v8 = v6, *(v6 + 24) <= a3))
    {
      if (result)
      {
        return result;
      }

      v8 = 0;
    }

    v6 = *(v6 + 32);
    result = v8;
  }

  while (v6);
  return result;
}

uint64_t GTMTLSMContext_lastTexture(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  for (result = *(*entry + 32); result; result = *(result + 32))
  {
    if (*(result + 16) <= a3)
    {
      break;
    }
  }

  return result;
}

void *GTMTLSMContext_getRasterizationRateMap(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getCounterSampleBuffer(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getFilter(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getResourceGroup(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getDrawable(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getLayer(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getMotionPipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getVisibleFunctionTable(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getIntersectionFunctionTable(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getFunctionHandle(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getAccelerationStructure(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getSpatialScaler(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getTemporalScaler(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getFrameInterpolator(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getTemporalDenoisedScaler(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTL4SMContext_getArgumentTable(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTLSMContext_getTextureViewPool(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

void *GTMTL4SMContext_getMachineLearningPipelineState(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v8 = a2;
  entry = find_entry(*a1, &v8, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v5 = *(*entry + 32);
  if (!v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (v5[2] > a3 || (v7 = v5, v5[3] <= a3))
    {
      if (result)
      {
        return result;
      }

      v7 = 0;
    }

    v5 = v5[4];
    result = v7;
  }

  while (v5);
  return result;
}

uint64_t GTMTLSMContext_getObjectTypeArray(uint64_t a1, int a2)
{
  if ((a2 - 2) > 0x6C)
  {
    return 0;
  }

  v2 = byte_29BC8C[a2 - 2];
  if (v2 < 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8 * v2 + 8);
  }
}

_DWORD *GTMTLSMContext_getObjects(_DWORD *result, unint64_t a2, apr_array_header_t *arr)
{
  v3 = result[3];
  if (v3 >= 1)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(*(v6 + 3) + 8 * i);
      if (v8[2] > a2)
      {
        break;
      }

      if (v8[3] > a2)
      {
        v9 = 0;
        do
        {
          if (v8[2] > a2 || (v10 = v8, v8[3] <= a2))
          {
            if (v9)
            {
              break;
            }

            v10 = 0;
          }

          v8 = v8[4];
          v9 = v10;
        }

        while (v8);
        result = apr_array_push(arr);
        *result = v9;
        v3 = *(v6 + 3);
      }
    }
  }

  return result;
}

void *GTMTLSMContext_lastLibraries(void *result, unint64_t a2, apr_array_header_t *arr)
{
  v3 = result[14];
  if (*(v3 + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v3 + 24) + 8 * v6);
      if (*(v7 + 16) > a2)
      {
        break;
      }

      result = apr_array_push(arr);
      *result = v7;
      ++v6;
    }

    while (v6 < *(v3 + 12));
  }

  return result;
}

void *GTMTLSMContext_getParentAllocation(uint64_t *a1, void *a2, unint64_t a3)
{
  v4 = *a2;
  if (*a2 <= 79)
  {
    if (v4 != 16)
    {
      if (v4 != 22 || !a2[6])
      {
        return a2;
      }

      v28 = a2[6];
      entry = find_entry(*a1, &v28, 8uLL, 0);
      if (*entry)
      {
        v6 = *(*entry + 32);
        if (v6)
        {
          a2 = 0;
          do
          {
            if (v6[2] > a3 || (v7 = v6, v6[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v7 = 0;
            }

            v6 = v6[4];
            a2 = v7;
          }

          while (v6);
          return a2;
        }
      }

      return 0;
    }

    if (a2[19])
    {
      v28 = a2[19];
      v11 = find_entry(*a1, &v28, 8uLL, 0);
      if (*v11)
      {
        v12 = *(*v11 + 32);
        if (v12)
        {
          a2 = 0;
          do
          {
            if (v12[2] > a3 || (v13 = v12, v12[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v13 = 0;
            }

            v12 = v12[4];
            a2 = v13;
          }

          while (v12);
          return a2;
        }
      }

      return 0;
    }

    if (a2[6])
    {
      v28 = a2[6];
      v20 = find_entry(*a1, &v28, 8uLL, 0);
      if (*v20)
      {
        v21 = *(*v20 + 32);
        if (v21)
        {
          a2 = 0;
          do
          {
            if (v21[2] > a3 || (v22 = v21, v21[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v22 = 0;
            }

            v21 = v21[4];
            a2 = v22;
          }

          while (v21);
          return a2;
        }
      }

      return 0;
    }

    return a2;
  }

  if (v4 != 80)
  {
    if (v4 != 101)
    {
      return a2;
    }

    if (a2[36])
    {
      v28 = a2[36];
      v8 = find_entry(*a1, &v28, 8uLL, 0);
      if (*v8)
      {
        v9 = *(*v8 + 32);
        if (v9)
        {
          a2 = 0;
          do
          {
            if (v9[2] > a3 || (v10 = v9, v9[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v10 = 0;
            }

            v9 = v9[4];
            a2 = v10;
          }

          while (v9);
          return a2;
        }
      }
    }

    else
    {
      if (!a2[16])
      {
        return a2;
      }

      v28 = a2[16];
      v17 = find_entry(*a1, &v28, 8uLL, 0);
      if (*v17)
      {
        v18 = *(*v17 + 32);
        if (v18)
        {
          a2 = 0;
          do
          {
            if (v18[2] > a3 || (v19 = v18, v18[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v19 = 0;
            }

            v18 = v18[4];
            a2 = v19;
          }

          while (v18);
          return a2;
        }
      }
    }

    return 0;
  }

  if (a2[18])
  {
    v28 = a2[18];
    v14 = find_entry(*a1, &v28, 8uLL, 0);
    if (*v14)
    {
      v15 = *(*v14 + 32);
      if (v15)
      {
        a2 = 0;
        do
        {
          if (v15[2] > a3 || (v16 = v15, v15[3] <= a3))
          {
            if (a2)
            {
              return a2;
            }

            v16 = 0;
          }

          v15 = v15[4];
          a2 = v16;
        }

        while (v15);
        return a2;
      }
    }

    return 0;
  }

  if (a2[19])
  {
    v28 = a2[19];
    v23 = find_entry(*a1, &v28, 8uLL, 0);
    if (*v23)
    {
      v24 = *(*v23 + 32);
      if (v24)
      {
        a2 = 0;
        do
        {
          if (v24[2] > a3 || (v25 = v24, v24[3] <= a3))
          {
            if (a2)
            {
              return a2;
            }

            v25 = 0;
          }

          v24 = v24[4];
          a2 = v25;
        }

        while (v24);
        return a2;
      }
    }

    return 0;
  }

  if (!a2[6])
  {
    return a2;
  }

  v27 = a2[6];

  return GTMTLSMContext_getObject(a1, v27, a3);
}

void *GTMTLSMContext_getRootAllocation(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  while (1)
  {
    ParentAllocation = GTMTLSMContext_getParentAllocation(a1, a2, a3);
    if (ParentAllocation == v4)
    {
      break;
    }

    v4 = ParentAllocation;
    a1 = v5;
    a2 = v4;
    a3 = v3;
  }

  return v4;
}

void *GTMTLSMContext_getParentResource(uint64_t *a1, void *a2, unint64_t a3)
{
  v4 = *a2;
  if (*a2 == 16)
  {
    if (!a2[19])
    {
      return a2;
    }

    v21 = a2[19];
    entry = find_entry(*a1, &v21, 8uLL, 0);
    if (!*entry)
    {
      return 0;
    }

    v12 = *(*entry + 32);
    if (!v12)
    {
      return 0;
    }

    a2 = 0;
    do
    {
      if (v12[2] > a3 || (v13 = v12, v12[3] <= a3))
      {
        if (a2)
        {
          return a2;
        }

        v13 = 0;
      }

      v12 = v12[4];
      a2 = v13;
    }

    while (v12);
  }

  else if (v4 == 101)
  {
    if (a2[36])
    {
      v21 = a2[36];
      v8 = find_entry(*a1, &v21, 8uLL, 0);
      if (!*v8)
      {
        return 0;
      }

      v9 = *(*v8 + 32);
      if (!v9)
      {
        return 0;
      }

      a2 = 0;
      do
      {
        if (v9[2] > a3 || (v10 = v9, v9[3] <= a3))
        {
          if (a2)
          {
            return a2;
          }

          v10 = 0;
        }

        v9 = v9[4];
        a2 = v10;
      }

      while (v9);
    }

    else
    {
      if (!a2[16])
      {
        return a2;
      }

      v21 = a2[16];
      v14 = find_entry(*a1, &v21, 8uLL, 0);
      if (!*v14)
      {
        return 0;
      }

      v15 = *(*v14 + 32);
      if (!v15)
      {
        return 0;
      }

      a2 = 0;
      do
      {
        if (v15[2] > a3 || (v16 = v15, v15[3] <= a3))
        {
          if (a2)
          {
            return a2;
          }

          v16 = 0;
        }

        v15 = v15[4];
        a2 = v16;
      }

      while (v15);
    }
  }

  else
  {
    if (v4 != 80)
    {
      return a2;
    }

    if (a2[18])
    {
      v21 = a2[18];
      v5 = find_entry(*a1, &v21, 8uLL, 0);
      if (*v5)
      {
        v6 = *(*v5 + 32);
        if (v6)
        {
          a2 = 0;
          do
          {
            if (v6[2] > a3 || (v7 = v6, v6[3] <= a3))
            {
              if (a2)
              {
                return a2;
              }

              v7 = 0;
            }

            v6 = v6[4];
            a2 = v7;
          }

          while (v6);
          return a2;
        }
      }

      return 0;
    }

    if (!a2[19])
    {
      return a2;
    }

    v21 = a2[19];
    v17 = find_entry(*a1, &v21, 8uLL, 0);
    if (!*v17)
    {
      return 0;
    }

    v18 = *(*v17 + 32);
    if (!v18)
    {
      return 0;
    }

    a2 = 0;
    do
    {
      if (v18[2] > a3 || (v19 = v18, v18[3] <= a3))
      {
        if (a2)
        {
          return a2;
        }

        v19 = 0;
      }

      v18 = v18[4];
      a2 = v19;
    }

    while (v18);
  }

  return a2;
}

void *GTMTLSMContext_getRootResource(uint64_t *a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  while (1)
  {
    ParentResource = GTMTLSMContext_getParentResource(a1, a2, a3);
    if (ParentResource == v4)
    {
      break;
    }

    v4 = ParentResource;
    a1 = v5;
    a2 = v4;
    a3 = v3;
  }

  return v4;
}

uint64_t GTMTLSMContext_resolveResourceHazardTrackingMode(uint64_t *a1, void *a2, unint64_t a3)
{
  RootAllocation = GTMTLSMContext_getRootAllocation(a1, a2, a3);
  LOBYTE(v4) = 0;
  v5 = *RootAllocation;
  if (v5 > 79)
  {
    if (v5 == 80)
    {
      v8 = RootAllocation[14];
      if (v8)
      {
        v6 = *(v8 + 37);
LABEL_5:
        v4 = v6 & 3;
        if (!v4)
        {
          LOBYTE(v4) = 2;
        }

        return v4;
      }
    }

    else if (v5 != 83 && v5 != 101)
    {
      return v4;
    }

LABEL_4:
    v6 = *(RootAllocation + 105);
    goto LABEL_5;
  }

  if (v5 > 0x3C)
  {
    return v4;
  }

  if (((1 << v5) & 0x1200000000410000) != 0)
  {
    goto LABEL_4;
  }

  if (v5 == 50)
  {
    if ((*(RootAllocation[6] + 17) & 2) != 0)
    {
      LOBYTE(v4) = *(RootAllocation[6] + 17) & 3;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

uint64_t GTMTLSMContext_resolveRootResourceAllocatedSize(uint64_t *a1, void *a2, unint64_t a3)
{
  RootResource = GTMTLSMContext_getRootResource(a1, a2, a3);
  v4 = 0;
  v5 = *RootResource;
  if (*RootResource <= 56)
  {
    if (v5 != 16)
    {
      if (v5 == 22)
      {
        v6 = RootResource[19];
        goto LABEL_8;
      }

      return v4;
    }

LABEL_11:
    v7 = RootResource + 8;
    return *v7;
  }

  if (v5 == 57)
  {
    goto LABEL_11;
  }

  if (v5 == 80)
  {
    v6 = RootResource[16];
LABEL_8:
    if (v6)
    {
      v7 = (v6 + 8);
    }

    else
    {
      v7 = RootResource + 8;
    }

    return *v7;
  }

  return v4;
}

apr_hash_index_t *GTMTLSMContext_removeDuplicatesFromChildrenMap(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  result = apr_hash_next((a1 + 16));
  if (result)
  {
    v2 = result;
    do
    {
      v3 = *(*(v2 + 1) + 32);
      v4 = *(v3 + 12);
      if (v4 >= 2)
      {
        qsort(*(v3 + 24), v4, *(v3 + 8), GTMTLSMObjectPtr_compare);
        v5 = *(v3 + 12);
        if (v5 < 2)
        {
          v10 = 1;
        }

        else
        {
          v6 = *(v3 + 24);
          v7 = v6 + 1;
          v8 = *v6;
          v9 = v5 - 1;
          v10 = 1;
          do
          {
            v11 = v8;
            v8 = *v7;
            if (*v7 != v11)
            {
              v12 = v6[v10];
              v6[v10++] = v8;
              *v7 = v12;
            }

            ++v7;
            --v9;
          }

          while (v9);
        }

        *(v3 + 12) = v10;
      }

      result = apr_hash_next(v2);
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t GTMTLSMObjectPtr_compare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void GTMTLSMContext_buildResourceChildrenMap2(uint64_t *a1, uint64_t a2, unint64_t a3, apr_hash_t *a4)
{
  v7 = *a4;
  v8 = apr_array_make(*a2, 4, 8);
  if (*(a2 + 12) >= 1)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = *(*(a2 + 24) + 8 * v10);
      v12 = *find_entry(a4, (v11 + 8), 8uLL, 0);
      if (!v12 || !*(v12 + 32))
      {
        v9->nelts = 0;
        AddObjectAncestors(a1, v11, a3, v9);
        if (v9->nelts >= 2)
        {
          v13 = 1;
          while (1)
          {
            v14 = *&v9->elts[8 * v13];
            v15 = *find_entry(a4, (v14 + 8), 8uLL, 0);
            if (v15)
            {
              v16 = *(v15 + 32);
              if (v16)
              {
                break;
              }
            }

            v17 = apr_array_make(v7, 1, 8);
            *apr_array_push(v17) = v11;
            apr_hash_set(a4, (v14 + 8), 8, v17);
            ++v13;
            v11 = v14;
            if (v13 >= v9->nelts)
            {
              goto LABEL_12;
            }
          }

          *apr_array_push(v16) = v11;
        }
      }

LABEL_12:
      ++v10;
    }

    while (v10 < *(a2 + 12));
  }
}

void *AddObjectAncestors(uint64_t *a1, void *Object, unint64_t a3, apr_array_header_t *a4)
{
  while (1)
  {
    result = apr_array_push(a4);
    *result = Object;
    v9 = *Object;
    if (*Object != 80)
    {
      break;
    }

    if (Object[18])
    {
      v31 = Object[18];
      v22 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v22)
      {
        v23 = *(v22 + 32);
        if (v23)
        {
          v13 = 0;
          do
          {
            if (v23[2] > a3 || (v24 = v23, v23[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v24 = 0;
            }

            v23 = v23[4];
            v13 = v24;
          }

          while (v23);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (Object[19])
    {
      v31 = Object[19];
      v25 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v25)
      {
        v26 = *(v25 + 32);
        if (v26)
        {
          v13 = 0;
          do
          {
            if (v26[2] > a3 || (v27 = v26, v26[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v27 = 0;
            }

            v26 = v26[4];
            v13 = v27;
          }

          while (v26);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

LABEL_69:
      v13 = 0;
      return AddObjectAncestors(a1, v13, a3, a4);
    }

    v10 = Object[6];
    if (!v10)
    {
      return result;
    }

    Object = GTMTLSMContext_getObject(a1, v10, a3);
  }

  if (v9 == 16)
  {
    if (Object[19])
    {
      v31 = Object[19];
      v15 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v15 && (v16 = *(v15 + 32)) != 0)
      {
        v17 = 0;
        do
        {
          if (v16[2] > a3 || (v18 = v16, v16[3] <= a3))
          {
            if (v17)
            {
              break;
            }

            v18 = 0;
          }

          v16 = v16[4];
          v17 = v18;
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      result = AddObjectAncestors(a1, v17, a3, a4);
    }

    if (Object[6])
    {
      v31 = Object[6];
      v28 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v28)
      {
        v29 = *(v28 + 32);
        if (v29)
        {
          v13 = 0;
          do
          {
            if (v29[2] > a3 || (v30 = v29, v29[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v30 = 0;
            }

            v29 = v29[4];
            v13 = v30;
          }

          while (v29);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  else
  {
    if (v9 == 101)
    {
      if (!Object[16])
      {
        return result;
      }

      v31 = Object[16];
      v19 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v19)
      {
        v20 = *(v19 + 32);
        if (v20)
        {
          v13 = 0;
          do
          {
            if (v20[2] > a3 || (v21 = v20, v20[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v21 = 0;
            }

            v20 = v20[4];
            v13 = v21;
          }

          while (v20);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }

    if (v9 == 22 && Object[6])
    {
      v31 = Object[6];
      v11 = *find_entry(*a1, &v31, 8uLL, 0);
      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          v13 = 0;
          do
          {
            if (v12[2] > a3 || (v14 = v12, v12[3] <= a3))
            {
              if (v13)
              {
                return AddObjectAncestors(a1, v13, a3, a4);
              }

              v14 = 0;
            }

            v12 = v12[4];
            v13 = v14;
          }

          while (v12);
          return AddObjectAncestors(a1, v13, a3, a4);
        }
      }

      goto LABEL_69;
    }
  }

  return result;
}

apr_hash_index_t *GTMTLSMContext_buildResourceChildrenMap(uint64_t *a1, unint64_t a2, apr_pool_t **a3)
{
  newpool = 0;
  apr_pool_create_ex(&newpool, *a3, 0, 0);
  v6 = 0;
  v7 = 0;
  v8 = a1 + 1;
  do
  {
    if (v7 <= *(v8[byte_29766C[v6]] + 12))
    {
      v7 = *(v8[byte_29766C[v6]] + 12);
    }

    ++v6;
  }

  while (v6 != 4);
  v9 = newpool;
  v10 = apr_array_make(newpool, v7, 8);
  for (i = 0; i != 4; ++i)
  {
    v10->nelts = 0;
    GTMTLSMContext_getObjects(v8[byte_29766C[i]], a2, v10);
    GTMTLSMContext_buildResourceChildrenMap2(a1, v10, a2, a3);
  }

  apr_pool_destroy(v9);

  return GTMTLSMContext_removeDuplicatesFromChildrenMap(a3);
}

void *GTMTLSMContext_buildLibraryFunctionsMap(uint64_t a1, unint64_t a2, apr_pool_t **a3)
{
  newpool = 0;
  v6 = *a3;
  apr_pool_create_ex(&newpool, *a3, 0, 0);
  v7 = apr_array_make(newpool, *(*(a1 + 240) + 12), 8);
  result = GTMTLSMContext_getObjects(*(a1 + 240), a2, v7);
  if (v7->nelts >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *&v7->elts[8 * v9];
      v11 = *find_entry(a3, (v10 + 40), 8uLL, 0);
      if (!v11 || (v12 = *(v11 + 32)) == 0)
      {
        v12 = apr_array_make(v6, 1, 8);
        apr_hash_set(a3, (v10 + 40), 8, v12);
      }

      result = apr_array_push(v12);
      *result = v10;
      ++v9;
    }

    while (v9 < v7->nelts);
  }

  return result;
}

uint64_t GTMTLSMContext_maxCommandBufferCount(uint64_t a1)
{
  v1 = *(a1 + 200);
  v2 = *(v1 + 12);
  if (v2 < 1)
  {
    return 64;
  }

  v3 = *(v1 + 24);
  result = 64;
  do
  {
    v5 = *v3++;
    result += *(v5 + 64);
    --v2;
  }

  while (v2);
  return result;
}

uint64_t GTMTLSMContext_getTextureDescriptor(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int *a5)
{
  *(a4 + 48) = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  v42 = a2;
  result = find_entry(*a1, &v42, 8uLL, 0);
  if (*result && (v10 = *(*result + 32)) != 0)
  {
    v11 = 0;
    do
    {
      if (v10[2] > a3 || (v12 = v10, v10[3] <= a3))
      {
        if (v11)
        {
          v12 = v11;
          goto LABEL_18;
        }

        v12 = 0;
      }

      v10 = v10[4];
      v11 = v12;
    }

    while (v10);
    if (!a5)
    {
      goto LABEL_15;
    }

LABEL_12:
    if (!v12)
    {
      LODWORD(v42) = *a5;
      HIDWORD(v42) = 500;
      v13 = "texture != ((void*)0)";
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      goto LABEL_12;
    }
  }

LABEL_15:
  if (!v12)
  {
    return result;
  }

LABEL_18:
  v14 = v12[19];
  if (v14)
  {
    result = GTMTLSMContext_getTextureDescriptor(a1, v14, a3, a4, a5);
    v15 = *(v12 + 1);
    if (v15 <= -15691)
    {
      if (v15 == -16233)
      {
        goto LABEL_36;
      }

      if (v15 == -16196)
      {
        *(a4 + 49) = *(v12 + 166);
        *(a4 + 45) = *(v12 + 168);
        *(a4 + 28) = *(v12 + 82);
        goto LABEL_36;
      }

      v16 = -15775;
    }

    else
    {
      if (v15 <= -14970)
      {
        if (v15 != -15690)
        {
          v16 = -15688;
          goto LABEL_30;
        }

LABEL_36:
        if (*(v12 + 167))
        {
          v23 = *(a4 + 24);
          if (v23)
          {
            v24 = v23 >> *(v12 + 167);
            if (v24 <= 1)
            {
              v24 = 1;
            }

            *(a4 + 24) = v24;
          }

          if (*(a4 + 32))
          {
            v25 = *(a4 + 32) >> *(v12 + 167);
            if (!v25)
            {
              LOWORD(v25) = 1;
            }

            *(a4 + 32) = v25;
          }

          if (*(a4 + 30))
          {
            v26 = *(a4 + 30) >> *(v12 + 167);
            if (!v26)
            {
              LOWORD(v26) = 1;
            }

            *(a4 + 30) = v26;
          }
        }

        *(a4 + 34) = *(v12 + 80);
        *(a4 + 8) = v12[23];
        v27 = *(v12 + 1);
        if (v27 == -16196 || v27 == -15688 || v27 == -15775)
        {
          v28 = *(a4 + 49);
          if (v28 == 6)
          {
            v29 = *(v12 + 82);
            HIDWORD(v30) = -1431655765 * v29;
            LODWORD(v30) = -1431655765 * v29;
            v31 = (v30 >> 1) < 0x2AAAAAAB;
            if (v29 < 6)
            {
              v31 = 0;
            }

            if (a5 && !v31)
            {
              LODWORD(v42) = *a5;
              HIDWORD(v42) = 500;
              v43 = "texture->arraySliceCount >= 6 && texture->arraySliceCount % 6 == 0";
              v44 = 0u;
              v45 = 0u;
              result = GTError_addError(a5, &v42);
              v29 = *(v12 + 82);
            }

            *(a4 + 28) = (715827883 * v29) >> 32;
          }

          else if (v28 == 5)
          {
            if (a5)
            {
              if (*(v12 + 82) != 6)
              {
                LODWORD(v42) = *a5;
                HIDWORD(v42) = 500;
                v43 = "texture->arraySliceCount == 6";
                v44 = 0u;
                v45 = 0u;
                result = GTError_addError(a5, &v42);
              }
            }

            *(a4 + 28) = 1;
          }
        }

        return result;
      }

      if (v15 == -14969)
      {
LABEL_31:
        *(a4 + 49) = *(v12 + 166);
        v21 = *(v12 + 168);
        if (*(a4 + 45) - *(v12 + 167) <= v21)
        {
          LOBYTE(v21) = *(a4 + 45) - *(v12 + 167);
        }

        *(a4 + 45) = v21;
        v22 = *(v12 + 82);
        if (*(a4 + 28) - *(v12 + 81) <= v22)
        {
          LOWORD(v22) = *(a4 + 28) - *(v12 + 81);
        }

        *(a4 + 28) = v22;
        *(a4 + 16) = *(v12 + 56);
        goto LABEL_36;
      }

      v16 = -14801;
    }

LABEL_30:
    if (v15 != v16)
    {
      if (a5)
      {
        LODWORD(v42) = *a5;
        HIDWORD(v42) = 500;
        v43 = "0";
        v44 = 0u;
        v45 = 0u;
        result = GTError_addError(a5, &v42);
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v17 = v12[14];
  if (v17)
  {
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    *(a4 + 48) = *(v17 + 6);
    *(a4 + 16) = v19;
    *(a4 + 32) = v20;
    *a4 = v18;
    return result;
  }

  v32 = v12[25];
  if (!v32)
  {
    if (!a5)
    {
      return result;
    }

    LODWORD(v42) = *a5;
    HIDWORD(v42) = 500;
    v13 = "0";
    goto LABEL_14;
  }

  *(a4 + 49) = 2;
  *(a4 + 47) = 1;
  *(a4 + 28) = 65537;
  *(a4 + 44) = 257;
  *(a4 + 16) = 84148994;
  v33 = v12[2];
  v42 = v32;
  result = find_entry(*a1, &v42, 8uLL, 0);
  if (*result)
  {
    v34 = *(*result + 32);
    if (v34)
    {
      v35 = 0;
      while (1)
      {
        if (v34[2] > v33 || (v36 = v34, v34[3] <= v33))
        {
          if (v35)
          {
            v36 = v35;
            goto LABEL_87;
          }

          v36 = 0;
        }

        v34 = v34[4];
        v35 = v36;
        if (!v34)
        {
          goto LABEL_79;
        }
      }
    }
  }

  v36 = 0;
LABEL_79:
  if (a5 && !v36)
  {
    LODWORD(v42) = *a5;
    HIDWORD(v42) = 500;
    v13 = "drawable != ((void*)0)";
    goto LABEL_14;
  }

  if (!v36)
  {
    return result;
  }

LABEL_87:
  v37 = v36[2];
  v42 = v36[5];
  result = find_entry(*a1, &v42, 8uLL, 0);
  v38 = *result;
  if (!*result)
  {
LABEL_97:
    if (!a5 || v38)
    {
      if (v38)
      {
        goto LABEL_103;
      }

      return result;
    }

    LODWORD(v42) = *a5;
    HIDWORD(v42) = 500;
    v13 = "layer != ((void*)0)";
LABEL_14:
    v43 = v13;
    v44 = 0u;
    v45 = 0u;
    return GTError_addError(a5, &v42);
  }

  v39 = v38[4];
  if (!v39)
  {
    v38 = 0;
    goto LABEL_97;
  }

  v40 = 0;
  while (1)
  {
    if (v39[2] <= v37)
    {
      v38 = v39;
      if (v39[3] > v37)
      {
        goto LABEL_94;
      }
    }

    if (v40)
    {
      break;
    }

    v38 = 0;
LABEL_94:
    v39 = v39[4];
    v40 = v38;
    if (!v39)
    {
      goto LABEL_97;
    }
  }

  v38 = v40;
LABEL_103:
  *(a4 + 34) = *(v38 + 136);
  *(a4 + 24) = *(v38 + 22);
  *(a4 + 32) = *(v38 + 23);
  v41 = *(v38 + 274);
  *(a4 + 43) = v41;
  *(a4 + 20) = 4 * (v41 != 0);
  return result;
}

void *GTMTLSMContext_getBufferDescriptor(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int *a5)
{
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v12[0] = a2;
  result = find_entry(*a1, v12, 8uLL, 0);
  v9 = *result;
  if (!*result)
  {
LABEL_9:
    if (a5)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v10 = v9[4];
  if (!v10)
  {
    v9 = 0;
    if (a5)
    {
LABEL_12:
      if (!v9)
      {
        LODWORD(v12[0]) = *a5;
        HIDWORD(v12[0]) = 500;
        v12[1] = "buffer != ((void*)0)";
        v13 = 0u;
        v14 = 0u;
        return GTError_addError(a5, v12);
      }
    }

LABEL_14:
    if (v9)
    {
      goto LABEL_17;
    }

    return result;
  }

  v11 = 0;
  while (1)
  {
    if (v10[2] <= a3)
    {
      v9 = v10;
      if (v10[3] > a3)
      {
        goto LABEL_8;
      }
    }

    if (v11)
    {
      break;
    }

    v9 = 0;
LABEL_8:
    v10 = v10[4];
    v11 = v9;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  v9 = v11;
LABEL_17:
  *a4 = v9[14];
  *(a4 + 24) = v9[15];
  *(a4 + 8) = *(v9 + 17);
  *(a4 + 32) = *(v9 + 52);
  *(a4 + 34) = *(v9 + 1) == -16312;
  return result;
}

uint64_t GTMTLSMContext_createDescriptorFromBuffer(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  *result = *(a2 + 112);
  *(result + 24) = v2;
  *(result + 8) = *(a2 + 136);
  *(result + 32) = *(a2 + 104);
  *(result + 34) = *(a2 + 4) == -16312;
  return result;
}

uint64_t GTMTLSMContext_getTextureInfo(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v11 = a2;
  entry = find_entry(*a1, &v11, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (!v6)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    if (v6[2] > a3 || (v8 = v6, v6[3] <= a3))
    {
      if (v7)
      {
        v8 = v7;
        goto LABEL_12;
      }

      v8 = 0;
    }

    v6 = v6[4];
    v7 = v8;
  }

  while (v6);
  if (!v8)
  {
    return 0;
  }

LABEL_12:
  result = v8[17];
  if (!result)
  {
    v10 = v8[19];
    if (v10)
    {
      return GTMTLSMContext_getTextureInfo(a1, v10, a3);
    }

    return 0;
  }

  return result;
}

void *GTMTLSMContext_resourcesAllocated(void *result, unint64_t a2, uint64_t a3, apr_array_header_t *arr)
{
  v6 = 0;
  v7 = result + 1;
  v8 = a2 + a3;
  do
  {
    v9 = v7[v6];
    v10 = *(v9 + 12);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(*(v9 + 24) + 8 * i);
        v13 = *(v12 + 16);
        if (a2 <= v13 && v8 > v13)
        {
          result = apr_array_push(arr);
          *result = v12;
          v10 = *(v9 + 12);
        }
      }
    }

    ++v6;
  }

  while (v6 != 50);
  return result;
}

void *GTMTLSMContext_resourcesDeallocated(void *result, unint64_t a2, uint64_t a3, apr_array_header_t *arr)
{
  v6 = 0;
  v7 = result + 1;
  v8 = a2 + a3;
  do
  {
    v9 = v7[v6];
    v10 = *(v9 + 12);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(*(v9 + 24) + 8 * i);
        v13 = *(v12 + 16);
        if (a2 > v13 || v8 <= v13)
        {
          v15 = *(v12 + 24);
          if (a2 <= v15 && v8 > v15)
          {
            result = apr_array_push(arr);
            *result = v12;
            v10 = *(v9 + 12);
          }
        }
      }
    }

    ++v6;
  }

  while (v6 != 50);
  return result;
}

uint64_t *GTMTLSMComputePipelineState_computePipelineDescriptor(uint64_t *result, uint64_t a2, void *a3, apr_pool_t *a4)
{
  v6 = *(a2 + 56);
  if (!v6)
  {
    if (*(a2 + 48))
    {
      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
      a3[106] = *(a2 + 48);
    }

    else if (*(a2 + 40) && *(a2 + 208))
    {
      v8 = result;
      v9 = *(a2 + 16);
      v22 = *(a2 + 40);
      v10 = *find_entry(*result, &v22, 8uLL, 0);
      if (v10 && (v11 = *(v10 + 32)) != 0)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v9 || (v13 = v11, v11[3] <= v9))
          {
            if (v12)
            {
              break;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
      }

      else
      {
        v12 = 0;
      }

      result = GTMTLSMComputePipelineState_computePipelineDescriptor(v8, v12, a3, a4);
      v14 = **(a2 + 208);
      if (v14)
      {
        v15 = a3[95] + v14;
        result = apr_palloc(a4, 8 * v15);
        if (a3[95])
        {
          v16 = 0;
          v17 = a3[94];
          do
          {
            result[v16] = *(v17 + 8 * v16);
            ++v16;
          }

          while (a3[95] > v16);
        }

        v18 = *(a2 + 208);
        if (*v18)
        {
          v19 = 1;
          v20 = result;
          do
          {
            v20[a3[95]] = v18[v19];
            ++v20;
          }

          while (*v18 > v19++);
        }

        a3[94] = result;
        a3[95] = v15;
      }
    }

    else
    {
      if (*(a2 + 4) != -16101)
      {
        return result;
      }

      result = memcpy(a3, &GTMTLComputePipelineDescriptorDefaults, 0x3C0uLL);
    }

    a3[113] = *(a2 + 128);
    return result;
  }

  return memcpy(a3, v6, 0x3C0uLL);
}

void *GTMTLSMComputePipelineState_computePipelineDescriptor4(int a1, uint64_t a2, void *__dst)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    return memcpy(__dst, v3, 0x400uLL);
  }

  return result;
}

uint64_t GTMTLSMRenderPipelineState_renderPipelineDescriptorType(uint64_t *a1, void *a2)
{
  v2 = a2;
  if (a1)
  {
    v4 = a2[2];
    v15 = a2[5];
    entry = find_entry(*a1, &v15, 8uLL, 0);
    if (*entry)
    {
      v6 = *(*entry + 32);
      if (v6)
      {
        v7 = 0;
        do
        {
          if (v6[2] > v4 || (v8 = v6, v6[3] <= v4))
          {
            if (v7)
            {
LABEL_21:
              v8 = v7;
              goto LABEL_22;
            }

            v8 = 0;
          }

          v6 = v6[4];
          v7 = v8;
        }

        while (v6);
        while (v8)
        {
LABEL_22:
          if (*v8 != 71)
          {
            break;
          }

          v2 = v8;
          v12 = v8[2];
          v15 = v8[5];
          v13 = find_entry(*a1, &v15, 8uLL, 0);
          if (!*v13)
          {
            break;
          }

          v14 = *(*v13 + 32);
          if (!v14)
          {
            break;
          }

          v7 = 0;
          do
          {
            if (v14[2] > v12 || (v8 = v14, v14[3] <= v12))
            {
              if (v7)
              {
                goto LABEL_21;
              }

              v8 = 0;
            }

            v14 = v14[4];
            v7 = v8;
          }

          while (v14);
        }
      }
    }
  }

  if (v2[6])
  {
    return 1;
  }

  if (v2[8])
  {
    return 2;
  }

  if (v2[9])
  {
    return 3;
  }

  v10 = v2[11];
  if (v10 && (v11 = *(v10 + 1016) - 2, v11 <= 3u))
  {
    return dword_297650[v11];
  }

  else
  {
    return 0;
  }
}

__n128 GTMTLSMRenderPipelineState_anyRenderPipelineDescriptor(uint64_t *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v8 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(a1, a2);
  *a3 = v8;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      v10 = a2[11];
      if (!v10)
      {
        return result;
      }

      v11 = (a3 + 8);
      v12 = 968;
LABEL_17:

      memcpy(v11, v10, v12);
      return result;
    }

    if (v8 != 5)
    {
      if (v8 != 6)
      {
        return result;
      }

      v10 = a2[11];
      if (!v10)
      {
        return result;
      }

      v11 = (a3 + 8);
      v12 = 344;
      goto LABEL_17;
    }

    v13 = a2[11];
    if (v13)
    {
      v14 = *v13;
      *(a3 + 24) = v13[1];
      *(a3 + 8) = v14;
      result = v13[2];
      v15 = v13[3];
      v16 = v13[4];
      *(a3 + 88) = v13[5];
      *(a3 + 72) = v16;
      *(a3 + 56) = v15;
      *(a3 + 40) = result;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:

        GTMTLSMRenderPipelineState_renderPipelineDescriptor(a1, a2, a3 + 8, a4);
        break;
      case 2:

        GTMTLSMRenderPipelineState_tilePipelineDescriptor(a1, a2, (a3 + 8), a4);
        break;
      case 3:
        v10 = a2[9];
        if (!v10)
        {
          return result;
        }

        v11 = (a3 + 8);
        v12 = 512;
        goto LABEL_17;
      default:
        return result;
    }
  }

  return result;
}

void *GTMTLSMRenderPipelineState_renderPipelineDescriptor(uint64_t *a1, void *a2, uint64_t a3, apr_pool_t *a4)
{
  v6 = a2[6];
  if (v6)
  {

    return memcpy(a3, v6, 0x5E8uLL);
  }

  else
  {
    v10 = a2[2];
    v29 = a2[5];
    result = find_entry(*a1, &v29, 8uLL, 0);
    if (*result)
    {
      v11 = *(*result + 32);
      if (v11)
      {
        v12 = 0;
        do
        {
          if (v11[2] > v10 || (v13 = v11, v11[3] <= v10))
          {
            if (v12)
            {
              v13 = v12;
              goto LABEL_16;
            }

            v13 = 0;
          }

          v11 = v11[4];
          v12 = v13;
        }

        while (v11);
        if (!v13)
        {
          return result;
        }

LABEL_16:
        if (*v13 == 71)
        {
          result = GTMTLSMRenderPipelineState_renderPipelineDescriptor(a1);
          v14 = a2[10];
          v15 = v14[9];
          if (v15)
          {
            v16 = (*(a3 + 1072) + v15);
            v17 = (*(a3 + 1072) + v15);
            result = apr_palloc(a4, 8 * v17);
            if (*(a3 + 1072))
            {
              v18 = 0;
              v19 = *(a3 + 1064);
              do
              {
                result[v18] = *(v19 + 8 * v18);
                ++v18;
              }

              while (*(a3 + 1072) > v18);
            }

            v14 = a2[10];
            if (v14[9])
            {
              v20 = 0;
              v21 = v14[8];
              do
              {
                result[*(a3 + 1072) + v20] = *(v21 + 8 * v20);
                ++v20;
              }

              while (v14[9] > v20);
            }

            *(a3 + 1064) = result;
            *(a3 + 1072) = v17;
          }

          v22 = v14[1];
          if (v22)
          {
            v23 = (*(a3 + 880) + v22);
            result = apr_palloc(a4, 8 * v23);
            if (*(a3 + 880))
            {
              v24 = 0;
              v25 = *(a3 + 872);
              do
              {
                result[v24] = *(v25 + 8 * v24);
                ++v24;
              }

              while (*(a3 + 880) > v24);
            }

            v26 = a2[10];
            if (v26[1])
            {
              v27 = 0;
              v28 = *v26;
              do
              {
                result[*(a3 + 880) + v27] = *(v28 + 8 * v27);
                ++v27;
              }

              while (v26[1] > v27);
            }

            *(a3 + 872) = result;
            *(a3 + 880) = v23;
          }

          *(a3 + 1280) = a2[16];
        }
      }
    }
  }

  return result;
}

uint64_t *GTMTLSMRenderPipelineState_tilePipelineDescriptor(uint64_t *result, void *a2, uint64_t **a3, apr_pool_t *a4)
{
  v5 = a2[8];
  if (v5)
  {
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[3];
    *(a3 + 2) = v5[2];
    *(a3 + 3) = v8;
    *a3 = v6;
    *(a3 + 1) = v7;
    v9 = v5[4];
    v10 = v5[5];
    v11 = v5[7];
    *(a3 + 6) = v5[6];
    *(a3 + 7) = v11;
    *(a3 + 4) = v9;
    *(a3 + 5) = v10;
    v12 = v5[8];
    v13 = v5[9];
    v14 = v5[11];
    *(a3 + 10) = v5[10];
    *(a3 + 11) = v14;
    *(a3 + 8) = v12;
    *(a3 + 9) = v13;
  }

  else
  {
    v17 = result;
    v18 = a2[2];
    v30 = a2[5];
    result = find_entry(*result, &v30, 8uLL, 0);
    if (*result)
    {
      v19 = *(*result + 32);
      if (v19)
      {
        v20 = 0;
        do
        {
          if (v19[2] > v18 || (v21 = v19, v19[3] <= v18))
          {
            if (v20)
            {
              v21 = v20;
              goto LABEL_15;
            }

            v21 = 0;
          }

          v19 = v19[4];
          v20 = v21;
        }

        while (v19);
        if (!v21)
        {
          return result;
        }

LABEL_15:
        if (*v21 == 71)
        {
          GTMTLSMRenderPipelineState_tilePipelineDescriptor(v17);
          v22 = *(a2[10] + 56);
          v23 = (v22 + *(a3 + 2));
          v24 = (v22 + *(a3 + 4));
          result = apr_palloc(a4, 8 * v24);
          if (a3[1])
          {
            v25 = 0;
            v26 = *a3;
            do
            {
              result[v25] = v26[v25];
              ++v25;
            }

            while (a3[1] > v25);
          }

          v27 = a2[10];
          if (*(v27 + 56))
          {
            v28 = 0;
            v29 = *(v27 + 48);
            do
            {
              result[a3[1] + v28] = *(v29 + 8 * v28);
              ++v28;
            }

            while (*(v27 + 56) > v28);
          }

          *a3 = result;
          a3[1] = v24;
        }
      }
    }
  }

  return result;
}

void *GTMTLSMRenderPipelineState_meshPipelineDescriptor(int a1, uint64_t a2, void *__dst)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    return memcpy(__dst, v3, 0x200uLL);
  }

  return result;
}

void *GTMTLSMRenderPipelineState_MTL4RenderPipelineDescriptor(int a1, uint64_t a2, void *__dst)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    return memcpy(__dst, v3, 0x3C8uLL);
  }

  return result;
}

void *GTMTLSMRenderPipelineState_MTL4MeshPipelineDescriptor(int a1, uint64_t a2, void *__dst)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    return memcpy(__dst, v3, 0x158uLL);
  }

  return result;
}

__n128 GTMTLSMRenderPipelineState_MTL4TilePipelineDescriptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = *(v3 + 16);
    *a3 = *v3;
    *(a3 + 16) = v4;
    result = *(v3 + 32);
    v6 = *(v3 + 48);
    v7 = *(v3 + 80);
    *(a3 + 64) = *(v3 + 64);
    *(a3 + 80) = v7;
    *(a3 + 32) = result;
    *(a3 + 48) = v6;
  }

  return result;
}

uint64_t GTMTLSMRenderPipelineState_rasterSampleCount(void *a1)
{
  v1 = a1[6];
  if (v1)
  {
    return *(v1 + 1272);
  }

  v3 = a1[8];
  if (v3)
  {
    return *(v3 + 150);
  }

  v4 = a1[9];
  if (v4)
  {
    return *(v4 + 509);
  }

  v5 = a1[11];
  if (!v5)
  {
    return 1;
  }

  v6 = *(v5 + 1016);
  if (v6 == 5)
  {
    return *(v5 + 80);
  }

  if (v6 != 4)
  {
    if (v6 == 2)
    {
      return *(v5 + 952);
    }

    return 1;
  }

  return *(v5 + 320);
}

uint64_t GTMTLSMRenderPipelineState_fragmentFunction(uint64_t *a1, void *a2)
{
  if (a2[14])
  {
    return 0;
  }

  v5 = a2[6];
  if (v5)
  {
    return *(v5 + 1176);
  }

  v6 = a2[9];
  if (v6)
  {
    return *(v6 + 344);
  }

  v13[3] = v2;
  v13[4] = v3;
  v8 = a2[2];
  v13[0] = a2[5];
  v9 = *find_entry(*a1, v13, 8uLL, 0);
  if (v9 && (v10 = *(v9 + 32)) != 0)
  {
    v11 = 0;
    do
    {
      if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
      {
        if (v11)
        {
          return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
        }

        v12 = 0;
      }

      v10 = v10[4];
      v11 = v12;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return GTMTLSMRenderPipelineState_fragmentFunction(a1, v11);
}

uint64_t GTMTLSMComputePipelineState_computeFunction(uint64_t *a1, void *a2)
{
  result = a2[6];
  if (!result)
  {
    v4 = a2[7];
    if (v4)
    {
      return *(v4 + 848);
    }

    else
    {
      v5 = a2[2];
      v10 = a2[5];
      v6 = *find_entry(*a1, &v10, 8uLL, 0);
      if (v6 && (v7 = *(v6 + 32)) != 0)
      {
        v8 = 0;
        do
        {
          if (v7[2] > v5 || (v9 = v7, v7[3] <= v5))
          {
            if (v8)
            {
              return GTMTLSMComputePipelineState_computeFunction(a1, v8);
            }

            v9 = 0;
          }

          v7 = v7[4];
          v8 = v9;
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      return GTMTLSMComputePipelineState_computeFunction(a1, v8);
    }
  }

  return result;
}

uint64_t GTMTLSMPipelineState_isVisibleFunctionTableCompatible(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (*(a3 + 136) == v5)
  {
    return 1;
  }

  v18[5] = v3;
  v18[6] = v4;
  if (*(a3 + 128) == v5)
  {
    return 1;
  }

  if (*a2 == 29)
  {
    v13 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    entry = find_entry(*a1, v18, 8uLL, 0);
    if (*entry)
    {
      v15 = *(*entry + 32);
      if (v15)
      {
        v16 = 0;
        do
        {
          if (v15[2] > v13 || (v17 = v15, v15[3] <= v13))
          {
            if (v16)
            {
              v17 = v16;
              goto LABEL_31;
            }

            v17 = 0;
          }

          v15 = v15[4];
          v16 = v17;
        }

        while (v15);
        if (!v17)
        {
          return 0;
        }

LABEL_31:
        if (*v17 == 29)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1);
        }
      }
    }
  }

  else if (*a2 == 71)
  {
    v8 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    v9 = find_entry(*a1, v18, 8uLL, 0);
    if (*v9)
    {
      v10 = *(*v9 + 32);
      if (v10)
      {
        v11 = 0;
        do
        {
          if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
          {
            if (v11)
            {
              v12 = v11;
              goto LABEL_28;
            }

            v12 = 0;
          }

          v10 = v10[4];
          v11 = v12;
        }

        while (v10);
        if (!v12)
        {
          return 0;
        }

LABEL_28:
        if (*v12 == 71)
        {
          return GTMTLSMPipelineState_isVisibleFunctionTableCompatible(a1);
        }
      }
    }
  }

  return 0;
}

uint64_t GTMTLSMPipelineState_isIntersectionFunctionTableCompatible(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  if (*(a3 + 136) == v5)
  {
    return 1;
  }

  v18[5] = v3;
  v18[6] = v4;
  if (*(a3 + 128) == v5)
  {
    return 1;
  }

  if (*a2 == 29)
  {
    v13 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    entry = find_entry(*a1, v18, 8uLL, 0);
    if (*entry)
    {
      v15 = *(*entry + 32);
      if (v15)
      {
        v16 = 0;
        do
        {
          if (v15[2] > v13 || (v17 = v15, v15[3] <= v13))
          {
            if (v16)
            {
              v17 = v16;
              goto LABEL_31;
            }

            v17 = 0;
          }

          v15 = v15[4];
          v16 = v17;
        }

        while (v15);
        if (!v17)
        {
          return 0;
        }

LABEL_31:
        if (*v17 == 29)
        {
          return GTMTLSMPipelineState_isIntersectionFunctionTableCompatible(a1);
        }
      }
    }
  }

  else if (*a2 == 71)
  {
    v8 = *(a2 + 16);
    v18[0] = *(a2 + 40);
    v9 = find_entry(*a1, v18, 8uLL, 0);
    if (*v9)
    {
      v10 = *(*v9 + 32);
      if (v10)
      {
        v11 = 0;
        do
        {
          if (v10[2] > v8 || (v12 = v10, v10[3] <= v8))
          {
            if (v11)
            {
              v12 = v11;
              goto LABEL_28;
            }

            v12 = 0;
          }

          v10 = v10[4];
          v11 = v12;
        }

        while (v10);
        if (!v12)
        {
          return 0;
        }

LABEL_28:
        if (*v12 == 71)
        {
          return GTMTLSMPipelineState_isIntersectionFunctionTableCompatible(a1);
        }
      }
    }
  }

  return 0;
}

BOOL GTMTLSMPipelineState_supportsIndirectCommandBuffers(uint64_t a1)
{
  if (*a1 == 29)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v2 = *(v3 + 956);
      return v2 != 0;
    }
  }

  else if (*a1 == 71)
  {
    v1 = *(a1 + 48);
    if (v1)
    {
      v2 = *(v1 + 1500);
      return v2 != 0;
    }

    v4 = *(a1 + 72);
    if (v4)
    {
      v2 = *(v4 + 511);
      return v2 != 0;
    }
  }

  return 0;
}

uint64_t GTMTLSMObject_sortUsedResources(uint64_t *a1, int a2, uint64_t a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  v7 = a1;
  do
  {
    v8 = *v7;
    if (*v7)
    {
      v8 = *(v8 + 8);
    }

    v12 = v8;
    entry = find_entry(a3, &v12, 8uLL, 0);
    if (*entry && *(*entry + 32))
    {
      v10 = *v7;
      *v7 = a1[v5];
      a1[v5] = v10;
      v5 = (v5 + 1);
    }

    ++v7;
    --v6;
  }

  while (v6);
  return v5;
}

uint64_t GTMTLSMSamplerState_sortIndirectResources(uint64_t *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a2;
  v4 = a1;
  do
  {
    v5 = *v4;
    if (*(*(*v4 + 48) + 66))
    {
      *v4 = a1[v2];
      a1[v2] = v5;
      v2 = (v2 + 1);
    }

    ++v4;
    --v3;
  }

  while (v3);
  return v2;
}

uint64_t GTMTLSMPipelineState_sortIndirectResources(uint64_t *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2;
  v5 = a1;
  do
  {
    v6 = *v5;
    if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(*v5))
    {
      *v5 = a1[v3];
      a1[v3] = v6;
      v3 = (v3 + 1);
    }

    ++v5;
    --v4;
  }

  while (v4);
  return v3;
}

apr_array_header_t *GTMTLSMBuffer_gpuAddressArray(int8x16_t **a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      *v7 = vextq_s8(v6[7], v6[7], 8uLL);
      v7[1].i8[8] = 0;
      v7[1].i64[0] = v6->i64[1];
      --v3;
    }

    while (v3);
  }

  qsort(v5->elts, v5->nelts, v5->elt_size, GTMTLGPUAddressResource_compare);
  return v5;
}

apr_array_header_t *GTMTLSMTexture_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      *v7 = v6[22];
      v7[1] = v8;
      v7[2] = v6[26];
      --v3;
    }

    while (v3);
  }

  return v5;
}

apr_array_header_t *GTMTLSMDepthStencilState_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      v9 = v6[9];
      *v7 = v6[8];
      v7[1] = v8;
      v7[2] = v9;
      --v3;
    }

    while (v3);
  }

  return v5;
}

apr_array_header_t *GTMTLSMSamplerState_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      v9 = v6[9];
      *v7 = v6[8];
      v7[1] = v8;
      v7[2] = v9;
      --v3;
    }

    while (v3);
  }

  return v5;
}

apr_array_header_t *GTMTLSMRenderPipelineState_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      *v7 = v6[15];
      v7[1] = v8;
      v7[2] = v6[17];
      --v3;
    }

    while (v3);
  }

  return v5;
}

apr_array_header_t *GTMTLSMComputePipelineState_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      *v7 = v6[15];
      v7[1] = v8;
      v7[2] = v6[17];
      --v3;
    }

    while (v3);
  }

  return v5;
}

apr_array_header_t *GTMTLSMIndirectCommandBuffer_uniqueIdentifierArray(void *a1, int a2, apr_pool_t *p)
{
  LODWORD(v3) = a2;
  v5 = apr_array_make(p, a2, 32);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a1++;
      v7 = apr_array_push(v5);
      v8 = v6[1];
      v9 = v6[17];
      *v7 = v6[16];
      v7[1] = v8;
      v7[2] = v9;
      --v3;
    }

    while (v3);
  }

  return v5;
}

void GTMTLSMContext_indirectCommandBufferResources(apr_pool_t *p@<X2>, _DWORD **a2@<X0>, unint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v8 = apr_array_make(p, 128, 8);
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  v9 = GTMTLSMBuffer_gpuAddressArray(v8->elts, v8->nelts, p);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = v9;
  v10 = apr_hash_make(p);
  *(a4 + 24) = v10;
  *(a4 + 32) = 0;
  v11 = apr_hash_make(p);
  *(a4 + 40) = v11;
  v12 = apr_hash_make(p);
  *(a4 + 48) = v12;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[5], a3, v8);
  elts = v8->elts;
  v14 = GTMTLSMPipelineState_sortIndirectResources(elts, v8->nelts);
  v8->nelts = v14;
  v15 = GTMTLSMRenderPipelineState_uniqueIdentifierArray(elts, v14, p);
  nelts = v15->nelts;
  if (nelts >= 1)
  {
    v17 = v15->elts;
    do
    {
      apr_hash_set(v11, v17, 8, v17);
      v17 += 32;
      --nelts;
    }

    while (nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[6], a3, v8);
  v18 = v8->elts;
  v19 = GTMTLSMPipelineState_sortIndirectResources(v18, v8->nelts);
  v8->nelts = v19;
  v20 = GTMTLSMComputePipelineState_uniqueIdentifierArray(v18, v19, p);
  v21 = v20->nelts;
  if (v21 >= 1)
  {
    v22 = v20->elts;
    do
    {
      apr_hash_set(v12, v22, 8, v22);
      v22 += 32;
      --v21;
    }

    while (v21);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[11], a3, v8);
  v23 = GTMTLSMDepthStencilState_uniqueIdentifierArray(v8->elts, v8->nelts, p);
  v24 = v23->nelts;
  if (v24 >= 1)
  {
    v25 = v23->elts;
    do
    {
      apr_hash_set(v10, v25, 8, v25);
      v25 += 32;
      --v24;
    }

    while (v24);
  }
}

apr_array_header_t *GTMTLSMContext_intersectionFunctionTableBufferResources(int8x16_t **a1, int a2, uint64_t *a3, int a4, apr_pool_t *p)
{
  LODWORD(v5) = a4;
  LODWORD(v7) = a2;
  v9 = apr_array_make(p, a4 + a2, 32);
  if (v7 >= 1)
  {
    v7 = v7;
    do
    {
      v10 = *a1++;
      v11 = apr_array_push(v9);
      *v11 = vextq_s8(v10[7], v10[7], 8uLL);
      v11[1].i64[0] = v10->i64[1];
      v11[1].i8[8] = 0;
      --v7;
    }

    while (v7);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v13 = apr_array_push(v9);
      *v13 = *(v12 + 168);
      v13[1] = 8;
      v13[2] = *(v12 + 8);
      *(v13 + 24) = 7;
      --v5;
    }

    while (v5);
  }

  return v9;
}

void GTMTLSMContext_getHeapResourcesWithType(uint64_t a1, uint64_t a2, unint64_t a3, int a4, apr_array_header_t *a5, apr_pool_t *parent)
{
  if (a4 == 16 || a4 == 80 || a4 == 22)
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, parent, 0, 0);
    if ((a4 - 2) > 0x6C || (v11 = byte_29BC8C[a4 - 2], v11 < 0))
    {
      v12 = 0;
    }

    else
    {
      v12 = *(a1 + 8 * v11 + 8);
    }

    v13 = newpool;
    v14 = apr_array_make(newpool, 128, 8);
    GTMTLSMContext_getObjects(v12, a3, v14);
    nelts = v14->nelts;
    if (nelts)
    {
      for (i = 0; i < nelts; ++i)
      {
        v17 = *&v14->elts[8 * i];
        if (*(v17 + 48) == a2)
        {
          *apr_array_push(a5) = v17;
          nelts = v14->nelts;
        }
      }
    }

    apr_pool_destroy(v13);
  }
}

BOOL GTMTLSMContext_hasArgumentBuffers(void *a1, uint64_t a2)
{
  if (*(a1[10] + 12) > 0)
  {
    return 1;
  }

  v4 = a1[5];
  v5 = *(v4 + 12);
  if (v5 >= 1)
  {
    v6 = *(v4 + 24);
    do
    {
      v7 = *v6;
      if (*(*v6 + 192) || v7[31] || v7[38] || v7[45] || v7[52])
      {
        return 1;
      }

      v6 += 8;
    }

    while (--v5);
  }

  v8 = a1[6];
  v9 = *(v8 + 12);
  if (v9 >= 1)
  {
    v10 = *(v8 + 24);
    while (!*(*v10 + 192))
    {
      v10 += 8;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }

    return 1;
  }

LABEL_15:
  v11 = *(a2 + 12);
  if (v11 >= 1)
  {
    v12 = (*(a2 + 24) + 8);
    do
    {
      v14 = *v12;
      v12 += 16;
      v13 = v14;
      if (GTFenum_isUseResourceCall(v14) & 1) != 0 || (GTFenum_isMTL4CommandEncoderCall(v13))
      {
        return 1;
      }
    }

    while (--v11);
  }

  v15 = a1[3];
  v16 = *(v15 + 12);
  if (v16 < 1)
  {
    return 0;
  }

  v17 = *(v15 + 24);
  v18 = v16 - 1;
  do
  {
    v19 = *v17++;
    v20 = *(v19 + 4) + 15690;
    result = v20 < 3;
  }

  while (v20 >= 3 && v18-- != 0);
  return result;
}

uint64_t GTMTLSMContext_getObjectFunctionIndexRange(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  entry = find_entry(*a1, &v6, 8uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v3 = *(*entry + 32);
  if (!v3)
  {
    return 0;
  }

  result = *(v3 + 16);
  v5 = *(v3 + 24) - result;
  return result;
}

char *GTMTLSMBuffer_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15915)
  {
    if (v6 > -16314)
    {
      if (v6 > -16164)
      {
        switch(v6)
        {
          case -16163:
            v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v22 = *a3;
            *(v5 + 1) = *(v16 + 1);
            *(v5 + 2) = v22;
            *(v5 + 1) = *(a3 + 2);
            v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = v23;
            if (v23)
            {
              *(v5 + 4) = vextq_s8(*v23, *v23, 8uLL);
              *(v5 + 24) = *(v23 + 4);
              *(v5 + 15) = *(v23 + 3);
              *(v5 + 136) = *(v23 + 2);
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
            *(v5 + 19) = result;
            if (result)
            {
              v24 = *(result + 1);
            }

            else
            {
              v24 = 0;
            }

            *(v5 + 14) = v24;
            goto LABEL_61;
          case -16122:
            result[108] = 1;
            break;
          case -16117:
            v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v9 = *a3;
            v10 = *(v8 + 2);
            *(v5 + 1) = *(v8 + 1);
            *(v5 + 2) = v9;
            *(v5 + 1) = *(a3 + 2);
            *(v5 + 52) = *(v8 + 3);
            *(v5 + 14) = v10;
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 20) = result;
            if (result)
            {
              *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
              *(v5 + 24) = *(result + 4);
              *(v5 + 15) = *(result + 3);
              *(v5 + 136) = *(result + 2);
            }

            *(v5 + 6) = *v8;
            break;
        }

        return result;
      }

      if (v6 == -16313)
      {
LABEL_40:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        v18 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 52) = *(v16 + 3);
        *(v5 + 14) = v18;
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 20) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 15) = *(result + 3);
          *(v5 + 136) = *(result + 2);
        }

LABEL_61:
        *(v5 + 5) = *v16;
        return result;
      }

      v7 = -16312;
    }

    else
    {
      if (v6 <= -16371)
      {
        if (v6 == -16372)
        {
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v30[8], a2);
          *(v5 + 11) = result;
        }

        else if (v6 == -16371)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
        }

        return result;
      }

      if (v6 == -16370)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 == -16367)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v29 = *(result + 2);
        if (v29 != 1)
        {
          *(v5 + 53) = v29;
        }

        return result;
      }

      v7 = -16314;
    }

    if (v6 != v7)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (v6 > -10229)
  {
    if (v6 <= -10204)
    {
      switch(v6)
      {
        case -10228:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -10223:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
          break;
        case -10210:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
      }

      return result;
    }

    if (v6 == -10203)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      return result;
    }

    if (v6 == -10187)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
      return result;
    }

    if (v6 != -10186)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v11 = *(result + 8);
LABEL_44:
    *(v5 + 136) = v11;
    return result;
  }

  if (v6 > -15510)
  {
    if (v6 == -15509)
    {
      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 2);
      v21 = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
      *(v5 + 52) = *(v21 + 16);
      *(v5 + 14) = *v21;
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 20) = result;
      if (!result)
      {
        return result;
      }

      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      v11 = *(result + 2);
      goto LABEL_44;
    }

    if (v6 != -10237)
    {
      if (v6 == -10235)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 2);
      }

      return result;
    }

    goto LABEL_40;
  }

  if (v6 == -15914)
  {
    v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v26 = *a3;
    v27 = *v25;
    *(v5 + 1) = *(v25 + 1);
    *(v5 + 2) = v26;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = *(v25 + 2);
    *(v5 + 16) = v27;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v28 = *(result + 3);
    *(v5 + 14) = *(result + 2);
    *(v5 + 52) = v28;
  }

  else if (v6 == -15778)
  {
    v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v13 = *a3;
    v14 = *(v12 + 2);
    *(v5 + 1) = *(v12 + 1);
    *(v5 + 2) = v13;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 52) = *(v12 + 3);
    *(v5 + 14) = v14;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 20) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 15) = *(result + 3);
      *(v5 + 136) = *(result + 2);
    }

    v15 = *(v12 + 4);
    *(v5 + 6) = *v12;
    *(v5 + 7) = v15;
  }

  return result;
}

char *GTMTLSMTensor_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -14841)
  {
    if (v6 > -14949)
    {
      switch(v6)
      {
        case -14948:
          *(result + 3) = *a3;
          break;
        case -14938:
          result[108] = 1;
          break;
        case -14933:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v7 = *(result + 2);
          if (v7 != 1)
          {
            *(v5 + 53) = v7;
          }

          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -14959:
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 15) = v14;
          if (v14)
          {
            *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
            *(v5 + 24) = *(v14 + 4);
            *(v5 + 39) = *(v14 + 5);
            *(v5 + 296) = *(v14 + 24);
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, v12[24], a2);
          *(v5 + 14) = result;
          break;
        case -14950:
          v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
          *(v5 + 11) = result;
          break;
        case -14949:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
      }
    }
  }

  else if (v6 <= -10147)
  {
    switch(v6)
    {
      case -14840:
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        *(v5 + 1) = *(v8 + 1);
        *(v5 + 2) = v9;
        *(v5 + 1) = *(a3 + 2);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v10;
        if (v10)
        {
          *(v5 + 4) = vextq_s8(*v10, *v10, 8uLL);
          *(v5 + 24) = *(v10 + 4);
          *(v5 + 39) = *(v10 + 5);
          *(v5 + 296) = *(v10 + 24);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v8[32], a2);
        *(v5 + 14) = result;
        v11 = *(v8 + 2);
        *(v5 + 16) = *v8;
        *(v5 + 17) = v11;
        break;
      case -10148:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 2);
        break;
      case -10147:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  else if (v6 > -10145)
  {
    if (v6 == -10144)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 39) = *(result + 1);
    }

    else if (v6 == -10143)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -10146)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 37) = *(result + 1);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 38) = *(result + 1);
  }

  return result;
}

int8x16_t *GTMTLSMTexture_processTraceFuncWithMap(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15778)
  {
    if (v6 > -16117)
    {
      if (v6 <= -16097)
      {
        if (v6 <= -16105)
        {
          if (v6 == -16116)
          {
            v83 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v84 = *a3;
            v5->i64[1] = *(v83 + 1);
            v5[1].i64[0] = v84;
            v5->i32[1] = *(a3 + 8);
            v85 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v85;
            if (v85)
            {
              v5[4] = vextq_s8(*v85, *v85, 8uLL);
              v5[6].i32[0] = v85[1].i32[0];
              v86 = v85[3].i64[0];
              v87 = v85[3].i64[1];
              v88 = v85[4].i64[0];
              v5[11].i64[0] = v85[2].i64[1];
              v5[11].i64[1] = v87;
              v5[14].i16[2] = v85[5].i16[0];
              v5[7].i64[1] = &v85[1].i64[1];
              v5[13].i64[0] = v86;
              v5[13].i64[1] = v88;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v83[16], a2);
            v5[7].i64[0] = result;
            v5[3].i64[0] = *v83;
          }

          else if (v6 == -16114)
          {
            result[6].i8[12] = 1;
          }

          return result;
        }

        if (v6 != -16104)
        {
          if (v6 == -16098)
          {
            v42 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v43 = *a3;
            v5->i64[1] = *(v42 + 1);
            v5[1].i64[0] = v43;
            v5->i32[1] = *(a3 + 8);
            v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v44;
            if (v44)
            {
              v5[4] = vextq_s8(*v44, *v44, 8uLL);
              v5[6].i32[0] = v44[1].i32[0];
              v45 = v44[3].i64[0];
              v46 = v44[3].i64[1];
              v47 = v44[4].i64[0];
              v5[11].i64[0] = v44[2].i64[1];
              v5[11].i64[1] = v46;
              v5[14].i16[2] = v44[5].i16[0];
              v5[7].i64[1] = &v44[1].i64[1];
              v5[13].i64[0] = v45;
              v5[13].i64[1] = v47;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v42[40], a2);
            v5[7].i64[0] = result;
            v5[9].i64[0] = *v42;
            v5[10].i32[0] = *(v42 + 2);
            v5[10].i32[1] = *(v42 + 3);
            v5[10].i32[2] = *(v42 + 4);
          }

          return result;
        }

        goto LABEL_86;
      }

      if (v6 <= -16031)
      {
        if (v6 == -16096)
        {
          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v123 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v123;
          v5->i32[1] = *(a3 + 8);
          v124 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v124;
          if (v124)
          {
            v5[4] = vextq_s8(*v124, *v124, 8uLL);
            v5[6].i32[0] = v124[1].i32[0];
            v125 = v124[3].i64[0];
            v126 = v124[3].i64[1];
            v127 = v124[4].i64[0];
            v5[11].i64[0] = v124[2].i64[1];
            v5[11].i64[1] = v126;
            v5[14].i16[2] = v124[5].i16[0];
            v5[7].i64[1] = &v124[1].i64[1];
            v5[13].i64[0] = v125;
            v5[13].i64[1] = v127;
          }

          v35 = v29[33];
LABEL_137:
          result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
          v5[7].i64[0] = result;
          goto LABEL_138;
        }

        if (v6 != -16031)
        {
          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v55 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v55;
        v5->i32[1] = *(a3 + 8);
        v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v56;
        if (v56)
        {
          v5[4] = vextq_s8(*v56, *v56, 8uLL);
          v5[6].i32[0] = v56[1].i32[0];
          v57 = v56[3].i64[0];
          v58 = v56[3].i64[1];
          v59 = v56[4].i64[0];
          v5[11].i64[0] = v56[2].i64[1];
          v5[11].i64[1] = v58;
          v5[14].i16[2] = v56[5].i16[0];
          v5[7].i64[1] = &v56[1].i64[1];
          v5[13].i64[0] = v57;
          v5[13].i64[1] = v59;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[41], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 3);
        v60 = *(v29 + 4);
      }

      else
      {
        if (v6 != -16030)
        {
          if (v6 == -15980)
          {
            v103 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v104 = *a3;
            v5->i64[1] = *(v103 + 1);
            v5[1].i64[0] = v104;
            v5->i32[1] = *(a3 + 8);
            v105 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v105;
            if (v105)
            {
              v5[4] = vextq_s8(*v105, *v105, 8uLL);
              v5[6].i32[0] = v105[1].i32[0];
              v106 = v105[3].i64[0];
              v107 = v105[3].i64[1];
              v108 = v105[4].i64[0];
              v5[11].i64[0] = v105[2].i64[1];
              v5[11].i64[1] = v107;
              v5[14].i16[2] = v105[5].i16[0];
              v5[7].i64[1] = &v105[1].i64[1];
              v5[13].i64[0] = v106;
              v5[13].i64[1] = v108;
            }

            result = GTTraceFunc_argumentBytesWithMap(a3, v103[24], a2);
            v5[7].i64[0] = result;
            v5[2].i64[1] = *v103;
            v5[14].i8[6] = 1;
          }

          else if (v6 == -15913)
          {
            v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v13 = *a3;
            v5->i64[1] = *(v12 + 1);
            v5[1].i64[0] = v13;
            v5->i32[1] = *(a3 + 8);
            v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = v14;
            if (v14)
            {
              v5[4] = vextq_s8(*v14, *v14, 8uLL);
              v5[6].i32[0] = v14[1].i32[0];
              v15 = v14[3].i64[0];
              v16 = v14[3].i64[1];
              v17 = v14[4].i64[0];
              v5[11].i64[0] = v14[2].i64[1];
              v5[11].i64[1] = v16;
              v5[14].i16[2] = v14[5].i16[0];
              v5[7].i64[1] = &v14[1].i64[1];
              v5[13].i64[0] = v15;
              v5[13].i64[1] = v17;
            }

            v5[2].i64[1] = *(v12 + 2);
            v5[12].i64[0] = *v12;
            v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            result = GTTraceFunc_argumentBytesWithMap(a3, v18[24], a2);
            v5[7].i64[0] = result;
          }

          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v113 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v113;
        v5->i32[1] = *(a3 + 8);
        v114 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v114;
        if (v114)
        {
          v5[4] = vextq_s8(*v114, *v114, 8uLL);
          v5[6].i32[0] = v114[1].i32[0];
          v115 = v114[3].i64[0];
          v116 = v114[3].i64[1];
          v117 = v114[4].i64[0];
          v5[11].i64[0] = v114[2].i64[1];
          v5[11].i64[1] = v116;
          v5[14].i16[2] = v114[5].i16[0];
          v5[7].i64[1] = &v114[1].i64[1];
          v5[13].i64[0] = v115;
          v5[13].i64[1] = v117;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v29[49], a2);
        v5[7].i64[0] = result;
        v5[10].i32[0] = *(v29 + 4);
        v60 = *(v29 + 5);
      }

      v5[10].i32[1] = v60;
    }

    else
    {
      if (v6 > -16240)
      {
        if (v6 <= -16234)
        {
          if (v6 == -16239)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[6].i32[0] = result->i32[2];
          }

          else if (v6 == -16238)
          {
            result[1].i64[1] = *a3;
          }
        }

        else
        {
          if (v6 == -16233)
          {
            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v109 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v109;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v110 = result[3].i64[0];
              v111 = result[3].i64[1];
              v112 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v111;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v110;
              v5[13].i64[1] = v112;
            }

            v5[10].i16[0] = *(v7 + 2);
            goto LABEL_121;
          }

          if (v6 != -16232)
          {
            if (v6 != -16196)
            {
              return result;
            }

            v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v8 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v8;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            v5[8].i64[1] = result;
            if (result)
            {
              v5[4] = vextq_s8(*result, *result, 8uLL);
              v5[6].i32[0] = result[1].i32[0];
              v9 = result[3].i64[0];
              v10 = result[3].i64[1];
              v11 = result[4].i64[0];
              v5[11].i64[0] = result[2].i64[1];
              v5[11].i64[1] = v10;
              v5[14].i16[2] = result[5].i16[0];
              v5[7].i64[1] = &result[1].i64[1];
              v5[13].i64[0] = v9;
              v5[13].i64[1] = v11;
            }

            v5[10].i16[0] = *(v7 + 2);
            v5[10].i8[6] = *(v7 + 3);
            v5[10].i8[7] = *(v7 + 4);
            v5[10].i8[8] = *(v7 + 5);
            v5[10].i16[1] = *(v7 + 6);
            v5[10].i16[2] = *(v7 + 7);
            goto LABEL_121;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v102 = result[1].i64[0];
          if (v102 != 1)
          {
            v5[6].i16[5] = v102;
          }
        }

        return result;
      }

      if (v6 <= -16295)
      {
        if (v6 != -16368)
        {
          if (v6 != -16310)
          {
            return result;
          }

          v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v30 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v30;
          v5->i32[1] = *(a3 + 8);
          v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = v31;
          if (v31)
          {
            v5[4] = vextq_s8(*v31, *v31, 8uLL);
            v5[6].i32[0] = v31[1].i32[0];
            v32 = v31[3].i64[0];
            v33 = v31[3].i64[1];
            v34 = v31[4].i64[0];
            v5[11].i64[0] = v31[2].i64[1];
            v5[11].i64[1] = v33;
            v5[14].i16[2] = v31[5].i16[0];
            v5[7].i64[1] = &v31[1].i64[1];
            v5[13].i64[0] = v32;
            v5[13].i64[1] = v34;
          }

          v35 = v29[24];
          goto LABEL_137;
        }

LABEL_86:
        v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v62 = *a3;
        v5->i64[1] = *(v61 + 1);
        v5[1].i64[0] = v62;
        v5->i32[1] = *(a3 + 8);
        v63 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v63;
        if (v63)
        {
          v5[4] = vextq_s8(*v63, *v63, 8uLL);
          v5[6].i32[0] = v63[1].i32[0];
          v64 = v63[3].i64[0];
          v65 = v63[3].i64[1];
          v66 = v63[4].i64[0];
          v5[11].i64[0] = v63[2].i64[1];
          v5[11].i64[1] = v65;
          v5[14].i16[2] = v63[5].i16[0];
          v5[7].i64[1] = &v63[1].i64[1];
          v5[13].i64[0] = v64;
          v5[13].i64[1] = v66;
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v61[32], a2);
        v5[7].i64[0] = result;
        v5[9].i64[0] = *v61;
        v5[10].i32[0] = *(v61 + 2);
        v5[10].i32[1] = *(v61 + 3);
        return result;
      }

      if (v6 != -16294)
      {
        if (v6 == -16240)
        {
          v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v41[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v89 = *a3;
      v5->i64[1] = *(v29 + 1);
      v5[1].i64[0] = v89;
      v5->i32[1] = *(a3 + 8);
      v90 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = v90;
      if (v90)
      {
        v5[4] = vextq_s8(*v90, *v90, 8uLL);
        v5[6].i32[0] = v90[1].i32[0];
        v91 = v90[3].i64[0];
        v92 = v90[3].i64[1];
        v93 = v90[4].i64[0];
        v5[11].i64[0] = v90[2].i64[1];
        v5[11].i64[1] = v92;
        v5[14].i16[2] = v90[5].i16[0];
        v5[7].i64[1] = &v90[1].i64[1];
        v5[13].i64[0] = v91;
        v5[13].i64[1] = v93;
      }

      v5[7].i64[0] = GTTraceFunc_argumentBytesWithMap(a3, v29[24], a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v29[25], a2);
      v5[8].i64[0] = result;
      v5[10].i64[0] = *(v29 + 2);
    }

LABEL_138:
    v5[2].i64[1] = *v29;
    return result;
  }

  if (v6 > -10232)
  {
    if (v6 <= -10205)
    {
      if (v6 <= -10223)
      {
        if (v6 == -10231)
        {
          v122 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v122[8], a2);
          v5[7].i64[1] = result;
        }

        else if (v6 == -10227)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[11].i64[0] = result->i64[1];
        }
      }

      else
      {
        switch(v6)
        {
          case -10222:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[4].i64[0] = result->u32[2];
            break;
          case -10212:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = result->i64[1];
            break;
          case -10205:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[14].i16[2] = result->i32[2];
            break;
        }
      }

      return result;
    }

    if (v6 > -10186)
    {
      if (v6 == -10185)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[3].i64[1] = result->i64[1];
        return result;
      }

      if (v6 != -10164)
      {
        if (v6 == -7167)
        {
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v20 = *a3;
          v5->i64[1] = *(v19 + 1);
          v5[1].i64[0] = v20;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[8].i64[1] = result;
          if (result)
          {
            v5[4] = vextq_s8(*result, *result, 8uLL);
            v5[6].i32[0] = result[1].i32[0];
            v21 = result[3].i64[0];
            v22 = result[3].i64[1];
            v23 = result[4].i64[0];
            v5[11].i64[0] = result[2].i64[1];
            v5[11].i64[1] = v22;
            v5[14].i16[2] = result[5].i16[0];
            v5[7].i64[1] = &result[1].i64[1];
            v5[13].i64[0] = v21;
            v5[13].i64[1] = v23;
          }

          v5[12].i64[1] = *v19;
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v94 = result->i64[1];
LABEL_110:
      v5[13].i64[0] = v94;
      return result;
    }

    if (v6 == -10204)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = result->i64[1];
      return result;
    }

    if (v6 != -10198)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v54 = result->i64[1];
LABEL_130:
    v5[11].i64[1] = v54;
    return result;
  }

  if (v6 > -15689)
  {
    if (v6 > -14803)
    {
      if (v6 == -14802)
      {
        v95 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v96 = *a3;
        v5->i64[1] = *(v95 + 2);
        v5[1].i64[0] = v96;
        v5->i32[1] = *(a3 + 8);
        v97 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = v97;
        if (v97)
        {
          v5[4] = vextq_s8(*v97, *v97, 8uLL);
          v5[6].i32[0] = v97[1].i32[0];
          v98 = v97[3].i64[0];
          v99 = v97[3].i64[1];
          v100 = v97[4].i64[0];
          v5[11].i64[0] = v97[2].i64[1];
          v5[11].i64[1] = v99;
          v5[14].i16[2] = v97[5].i16[0];
          v5[7].i64[1] = &v97[1].i64[1];
          v5[13].i64[0] = v98;
          v5[13].i64[1] = v100;
        }

        v5->i64[1] = *(v95 + 1);
        result = GTTraceFunc_argumentBytesWithMap(a3, v95[56], a2);
        v5[7].i64[0] = result;
        v101 = *(v95 + 4);
        v5[9].i64[0] = *(v95 + 3);
        v5[10].i32[0] = v101;
        v5[10].i32[1] = *(v95 + 5);
        v94 = *(v95 + 2);
        goto LABEL_110;
      }

      if (v6 != -14801)
      {
        if (v6 == -10234)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[6].i32[1] = result->i32[2];
        }

        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v78 = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
      v79 = *a3;
      v5->i64[1] = *(v7 + 1);
      v5[1].i64[0] = v79;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v80 = result[3].i64[0];
        v81 = result[3].i64[1];
        v82 = result[4].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[11].i64[1] = v81;
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v5[13].i64[0] = v80;
        v5[13].i64[1] = v82;
      }

      v5[10].i16[0] = *(v78 + 18);
      v5[10].i8[6] = v78[38];
      v5[10].i8[7] = *v78;
      v5[10].i8[8] = *(v78 + 1);
      v5[10].i16[1] = *(v78 + 2);
      v5[10].i16[2] = *(v78 + 3);
      v28 = *(v78 + 8);
      goto LABEL_98;
    }

    if (v6 != -15688)
    {
      if (v6 == -14969)
      {
        v48 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v49 = GTTraceFunc_argumentBytesWithMap(a3, v48[40], a2);
        v50 = *a3;
        v5->i64[1] = *(v48 + 2);
        v5[1].i64[0] = v50;
        v5->i32[1] = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[8].i64[1] = result;
        if (result)
        {
          v5[4] = vextq_s8(*result, *result, 8uLL);
          v5[6].i32[0] = result[1].i32[0];
          v51 = result[3].i64[1];
          v52 = result[4].i64[0];
          v5[11].i64[0] = result[2].i64[1];
          v5[11].i64[1] = v51;
          v5[14].i16[2] = result[5].i16[0];
          v5[7].i64[1] = &result[1].i64[1];
          v5[13].i64[1] = v52;
        }

        v5->i64[1] = *(v48 + 1);
        v5[10].i16[0] = *(v49 + 18);
        v5[10].i8[6] = v49[38];
        v5[10].i8[7] = *v49;
        v5[10].i8[8] = *(v49 + 1);
        v5[10].i16[1] = *(v49 + 2);
        v5[10].i16[2] = *(v49 + 3);
        v5[14].i32[0] = *(v49 + 8);
        v53 = *(v48 + 2);
        v5[9].i64[1] = *(v48 + 3);
        v5[13].i64[0] = v53;
      }

      return result;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v118 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v118;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v119 = result[3].i64[0];
      v120 = result[3].i64[1];
      v121 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v120;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v119;
      v5[13].i64[1] = v121;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    v5[14].i32[0] = *(v36 + 18);
LABEL_129:
    v5[9].i64[1] = *v36;
    v54 = *(v36 + 8);
    goto LABEL_130;
  }

  if (v6 > -15691)
  {
    if (v6 == -15690)
    {
      v74 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v75 = *a3;
      v5->i64[1] = *(v74 + 1);
      v5[1].i64[0] = v75;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[8].i64[1] = result;
      if (result)
      {
        v5[4] = vextq_s8(*result, *result, 8uLL);
        v5[6].i32[0] = result[1].i32[0];
        v76 = result[3].i64[0];
        v5[11].i64[0] = result[2].i64[1];
        v5[14].i16[2] = result[5].i16[0];
        v5[7].i64[1] = &result[1].i64[1];
        v77 = result[4].i64[0];
        v5[13].i64[0] = v76;
        v5[13].i64[1] = v77;
      }

      v5[10].i16[0] = *(v74 + 2);
      v5[9].i64[1] = *v74;
      v54 = *(v74 + 3);
      goto LABEL_130;
    }

    v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v37 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v37;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v38 = result[3].i64[0];
      v39 = result[3].i64[1];
      v40 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v39;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v38;
      v5[13].i64[1] = v40;
    }

    v5[10].i16[0] = *(v36 + 2);
    v5[10].i8[6] = *(v36 + 3);
    v5[10].i8[7] = *(v36 + 4);
    v5[10].i8[8] = *(v36 + 5);
    v5[10].i16[1] = *(v36 + 6);
    v5[10].i16[2] = *(v36 + 7);
    goto LABEL_129;
  }

  if (v6 != -15777)
  {
    if (v6 != -15775)
    {
      return result;
    }

    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    v5->i64[1] = *(v7 + 1);
    v5[1].i64[0] = v24;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[8].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v25 = result[3].i64[0];
      v26 = result[3].i64[1];
      v27 = result[4].i64[0];
      v5[11].i64[0] = result[2].i64[1];
      v5[11].i64[1] = v26;
      v5[14].i16[2] = result[5].i16[0];
      v5[7].i64[1] = &result[1].i64[1];
      v5[13].i64[0] = v25;
      v5[13].i64[1] = v27;
    }

    v5[10].i16[0] = *(v7 + 2);
    v5[10].i8[6] = *(v7 + 3);
    v5[10].i8[7] = *(v7 + 4);
    v5[10].i8[8] = *(v7 + 5);
    v5[10].i16[1] = *(v7 + 6);
    v5[10].i16[2] = *(v7 + 7);
    v28 = *(v7 + 16);
LABEL_98:
    v5[14].i32[0] = v28;
LABEL_121:
    v5[9].i64[1] = *v7;
    return result;
  }

  v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v68 = *a3;
  v5->i64[1] = *(v67 + 1);
  v5[1].i64[0] = v68;
  v5->i32[1] = *(a3 + 8);
  v69 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
  v5[8].i64[1] = v69;
  if (v69)
  {
    v5[4] = vextq_s8(*v69, *v69, 8uLL);
    v5[6].i32[0] = v69[1].i32[0];
    v70 = v69[3].i64[0];
    v71 = v69[3].i64[1];
    v72 = v69[4].i64[0];
    v5[11].i64[0] = v69[2].i64[1];
    v5[11].i64[1] = v71;
    v5[14].i16[2] = v69[5].i16[0];
    v5[7].i64[1] = &v69[1].i64[1];
    v5[13].i64[0] = v70;
    v5[13].i64[1] = v72;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, v67[24], a2);
  v5[7].i64[0] = result;
  v73 = *(v67 + 2);
  v5[3].i64[0] = *v67;
  v5[3].i64[1] = v73;
  return result;
}

int8x16_t *GTMTLSMIndirectCommandBuffer_processTraceFuncWithMap(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15920)
  {
    if (v6 > -10210)
    {
      switch(v6)
      {
        case -10209:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[5].i64[0] = result->i64[1];
          break;
        case -10202:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[4].i64[1] = result->i64[1];
          break;
        case -10166:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[8].i64[1] = result->i64[1];
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -15919:
          result[6].i8[12] = 1;
          break;
        case -10218:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[8].i64[0] = result->i64[1];
          break;
        case -10215:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[4].i64[0] = result->i64[1];
          break;
      }
    }
  }

  else if (v6 > -15925)
  {
    switch(v6)
    {
      case -15924:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[6].i32[0] = result->i32[2];
        break;
      case -15923:
        result[1].i64[1] = *a3;
        break;
      case -15920:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = result[1].i64[0];
        if (v8 != 1)
        {
          v5[6].i16[5] = v8;
        }

        break;
    }
  }

  else if (v6 == -15972 || v6 == -15969)
  {
    v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v10 = *a3;
    v11 = *v9;
    v5->i64[1] = *(v9 + 1);
    v5[1].i64[0] = v10;
    v5->i32[1] = *(a3 + 8);
    v5[2].i64[1] = v11;
    v5[7].i64[0] = GTTraceFunc_argumentBytesWithMap(a3, v9[32], a2);
    v12 = *(v9 + 3);
    v5[9].i32[0] = *(v9 + 2);
    v5[6].i16[4] = v12;
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[7].i64[1] = result;
    if (result)
    {
      v5[4] = vextq_s8(*result, *result, 8uLL);
      v5[6].i32[0] = result[1].i32[0];
      v13 = result[3].i64[0];
      v5[8].i64[0] = result[1].i64[1];
      v5[8].i64[1] = v13;
    }
  }

  else if (v6 == -15925)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
    v5[5].i64[1] = result;
  }

  return result;
}

char *GTMTLSMHeap_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -16116)
  {
    switch(v6)
    {
      case -16120:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v9;
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
        *(v5 + 6) = result;
        break;
      case -16119:
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v11[8], a2);
        *(v5 + 7) = result;
        break;
      case -16118:
        *(result + 3) = *a3;
        break;
    }
  }

  else if (v6 > -10209)
  {
    if (v6 == -10208)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10207)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -16115)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v10 = *(result + 2);
    if (v10 != 1)
    {
      *(v5 + 44) = v10;
    }
  }

  else if (v6 == -10211)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 8) = *(result + 1);
  }

  return result;
}

char *GTMTLSMDepthStencilState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -10151)
  {
    if (v6 == -10150)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -10149)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }
  }

  else if (v6 == -16320)
  {
    *(result + 3) = *a3;
  }

  else if (v6 == -16311)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 2);
    v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v9;
    if (v9)
    {
      *(v5 + 4) = *v9;
    }

    *(v5 + 5) = *v7;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMSamplerState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -10227)
  {
    if (v6 == -10226)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -10163)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }
  }

  else if (v6 == -16309)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 2);
    v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v9;
    if (v9)
    {
      *(v5 + 10) = *(v9 + 2);
      *(v5 + 4) = *v9;
    }

    *(v5 + 5) = *v7;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
    *(v5 + 6) = result;
  }

  else if (v6 == -16241)
  {
    *(result + 3) = *a3;
  }

  return result;
}

char *GTMTLSMEvent_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  switch(v5)
  {
    case -15879:
      *(result + 3) = *a3;
      break;
    case -15880:
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v9[8], a2);
      *(v4 + 6) = result;
      break;
    case -15997:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v7;
      *(v4 + 1) = *(a3 + 2);
      *(v4 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTLSMSharedEvent_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15974)
  {
    switch(v6)
    {
      case -15996:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v11 = *a3;
        v12 = *result;
        *(v5 + 1) = *(result + 1);
        *(v5 + 2) = v11;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v12;
        v13 = *(result + 2);
        *(v5 + 18) = *(result + 6);
        *(v5 + 7) = v13;
        *(v5 + 8) = 0;
        return result;
      case -15975:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *(result + 1);
LABEL_17:
        *(v5 + 8) = v9;
        return result;
      case -15974:
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v10[8], a2);
        *(v5 + 6) = result;
        break;
    }
  }

  else
  {
    if (v6 <= -15910)
    {
      if (v6 == -15973)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 != -15912)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v8;
      *(v5 + 18) = *(result + 6);
      v9 = *(result + 2);
      goto LABEL_17;
    }

    if (v6 == -15909)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v14 = *a3;
      v15 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v14;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v15;
      *(v5 + 18) = *(result + 8);
      v16 = *(result + 3);
      *(v5 + 7) = *(result + 2);
      *(v5 + 8) = v16;
    }

    else if (v6 == -15907)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
    }
  }

  return result;
}

char *GTMTLSMLateEvalEvent_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15491)
  {
    if (v6 == -15490)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -15489)
    {
      *(result + 3) = *a3;
    }
  }

  else if (v6 == -15496)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *result;
    *(v5 + 1) = *(result + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v9;
    *(v5 + 8) = 0;
  }

  else if (v6 == -15491)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMFence_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -16136:
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v9[8], a2);
      *(v5 + 6) = result;
      break;
    case -16127:
      *(result + 3) = *a3;
      break;
    case -16128:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTLSMCounterSampleBuffer_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 2) == -15848)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v7 = *a3;
    v8 = *v6;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v8;
    result = GTTraceFunc_argumentBytesWithMap(a3, v6[24], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMRenderPipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15406)
  {
    if (v6 > -14837)
    {
      if (v6 > -10185)
      {
        switch(v6)
        {
          case -10184:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 109) = *(result + 1);
            break;
          case -10172:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 53) = *(result + 1);
            break;
          case -10165:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 17) = *(result + 1);
            break;
        }

        return result;
      }

      if (v6 != -14836)
      {
        if (v6 == -10220)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        else if (v6 == -10192)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 108) = *(result + 2);
        }

        return result;
      }
    }

    else
    {
      if (v6 <= -15132)
      {
        if (v6 != -15405)
        {
          if (v6 != -15404 && v6 != -15403)
          {
            return result;
          }

          v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v14 = *a3;
          v15 = *v13;
          *(v5 + 1) = *(v13 + 1);
          *(v5 + 2) = v14;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v15;
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 7) = v16;
          if (v16)
          {
            v17 = v16;
            memcpy(v5 + 144, v16 + 216, 0x118uLL);
            *(v5 + 120) = *v17;
            *(v5 + 108) = *(v17 + 48);
            *(v5 + 109) = *(v17 + 98);
            *(v5 + 17) = *(v17 + 2);
          }

          v18 = v13[32];
LABEL_49:
          result = GTTraceFunc_argumentBytesWithMap(a3, v18, a2);
          *(v5 + 9) = result;
          return result;
        }

LABEL_46:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 7) = v39;
        if (v39)
        {
          v40 = v39;
          memcpy(v5 + 144, v39 + 216, 0x118uLL);
          *(v5 + 120) = *v40;
          *(v5 + 108) = *(v40 + 48);
          *(v5 + 109) = *(v40 + 98);
          *(v5 + 17) = *(v40 + 2);
        }

        v18 = v36[24];
        goto LABEL_49;
      }

      if (v6 == -15131 || v6 == -15130)
      {
        v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v47 = *a3;
        v48 = *v46;
        *(v5 + 1) = *(v46 + 1);
        *(v5 + 2) = v47;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v48;
        v49 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 7) = v49;
        if (v49)
        {
          v50 = v49;
          memcpy(v5 + 144, v49 + 216, 0x118uLL);
          *(v5 + 120) = *v50;
          *(v5 + 108) = *(v50 + 48);
          *(v5 + 109) = *(v50 + 98);
          *(v5 + 17) = *(v50 + 2);
        }

        *(v5 + 11) = GTTraceFunc_argumentBytesWithMap(a3, v46[24], a2);
        v35 = v46[25];
        goto LABEL_61;
      }

      if (v6 != -14867)
      {
        return result;
      }
    }

    v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v31 = *a3;
    v32 = *v30;
    *(v5 + 1) = *(v30 + 1);
    *(v5 + 2) = v31;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v32;
    v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v33;
    if (v33)
    {
      v34 = v33;
      memcpy(v5 + 144, v33 + 216, 0x118uLL);
      *(v5 + 120) = *v34;
      *(v5 + 108) = *(v34 + 48);
      *(v5 + 109) = *(v34 + 98);
      *(v5 + 17) = *(v34 + 2);
    }

    *(v5 + 11) = GTTraceFunc_argumentBytesWithMap(a3, v30[24], a2);
    *(v5 + 12) = GTTraceFunc_argumentBytesWithMap(a3, v30[25], a2);
    v35 = v30[26];
LABEL_61:
    result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
    *(v5 + 13) = result;
    return result;
  }

  if (v6 > -16091)
  {
    if (v6 <= -15739)
    {
      if (v6 != -16090)
      {
        if (v6 == -16089)
        {
LABEL_33:
          v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v26 = *a3;
          v27 = *v25;
          *(v5 + 1) = *(v25 + 1);
          *(v5 + 2) = v26;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v27;
          v28 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 7) = v28;
          if (v28)
          {
            v29 = v28;
            memcpy(v5 + 144, v28 + 216, 0x118uLL);
            *(v5 + 120) = *v29;
            *(v5 + 108) = *(v29 + 48);
            *(v5 + 109) = *(v29 + 98);
            *(v5 + 17) = *(v29 + 2);
          }

          v24 = v25[24];
LABEL_36:
          result = GTTraceFunc_argumentBytesWithMap(a3, v24, a2);
          *(v5 + 8) = result;
          return result;
        }

        if (v6 != -16088)
        {
          return result;
        }
      }

      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v21;
      v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v22;
      if (v22)
      {
        v23 = v22;
        memcpy(v5 + 144, v22 + 216, 0x118uLL);
        *(v5 + 120) = *v23;
        *(v5 + 108) = *(v23 + 48);
        *(v5 + 109) = *(v23 + 98);
        *(v5 + 17) = *(v23 + 2);
      }

      v24 = v19[32];
      goto LABEL_36;
    }

    if (v6 == -15738)
    {
      v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v57 = *a3;
      v58 = *v56;
      *(v5 + 1) = *(v56 + 1);
      *(v5 + 2) = v57;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v58;
      v59 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v59;
      if (v59)
      {
        v60 = v59;
        memcpy(v5 + 144, v59 + 216, 0x118uLL);
        *(v5 + 120) = *v60;
        *(v5 + 108) = *(v60 + 48);
        *(v5 + 109) = *(v60 + 98);
        *(v5 + 17) = *(v60 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v56[32], a2);
      *(v5 + 14) = result;
      return result;
    }

    if (v6 == -15461)
    {
      v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v52 = *a3;
      v53 = *v51;
      *(v5 + 1) = *(v51 + 1);
      *(v5 + 2) = v52;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v53;
      v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v54;
      if (v54)
      {
        v55 = v54;
        memcpy(v5 + 144, v54 + 216, 0x118uLL);
        *(v5 + 120) = *v55;
        *(v5 + 108) = *(v55 + 48);
        *(v5 + 109) = *(v55 + 98);
        *(v5 + 17) = *(v55 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v51[24], a2);
      *(v5 + 10) = result;
      return result;
    }

    if (v6 != -15406)
    {
      return result;
    }

    goto LABEL_46;
  }

  if (v6 <= -16301)
  {
    if (v6 == -16303)
    {
LABEL_7:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v9;
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 7) = v10;
      if (v10)
      {
        v11 = v10;
        memcpy(v5 + 144, v10 + 216, 0x118uLL);
        *(v5 + 120) = *v11;
        *(v5 + 108) = *(v11 + 48);
        *(v5 + 109) = *(v11 + 98);
        *(v5 + 17) = *(v11 + 2);
      }

      v12 = v7[24];
LABEL_57:
      result = GTTraceFunc_argumentBytesWithMap(a3, v12, a2);
      *(v5 + 6) = result;
      return result;
    }

    if (v6 != -16302)
    {
      if (v6 == -16301)
      {
        goto LABEL_7;
      }

      return result;
    }

LABEL_54:
    v41 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v42 = *a3;
    v43 = *v41;
    *(v5 + 1) = *(v41 + 1);
    *(v5 + 2) = v42;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v43;
    v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 7) = v44;
    if (v44)
    {
      v45 = v44;
      memcpy(v5 + 144, v44 + 216, 0x118uLL);
      *(v5 + 120) = *v45;
      *(v5 + 108) = *(v45 + 48);
      *(v5 + 109) = *(v45 + 98);
      *(v5 + 17) = *(v45 + 2);
    }

    v12 = v41[32];
    goto LABEL_57;
  }

  switch(v6)
  {
    case -16300:
      goto LABEL_54;
    case -16242:
      *(result + 3) = *a3;
      return result;
    case -16091:
      goto LABEL_33;
  }

  return result;
}

char *GTMTLSMComputePipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15990)
  {
    if (v6 <= -16201)
    {
      if (v6 <= -16299)
      {
        if (v6 == -16321)
        {
          *(result + 3) = *a3;
          return result;
        }

        v7 = -16299;
      }

      else
      {
        if (v6 == -16298 || v6 == -16297)
        {
LABEL_39:
          v30 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v31 = *a3;
          v32 = *v30;
          *(v5 + 1) = *(v30 + 1);
          *(v5 + 2) = v31;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v32;
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = result;
          if (result)
          {
            v33 = *(result + 104);
            v34 = *(result + 120);
            v35 = *(result + 136);
            *(v5 + 24) = *(result + 19);
            *(v5 + 10) = v34;
            *(v5 + 11) = v35;
            *(v5 + 9) = v33;
            *(v5 + 120) = *result;
            *(v5 + 54) = *(result + 22);
            *(v5 + 17) = *(result + 2);
          }

          *(v5 + 6) = *(v30 + 2);
          return result;
        }

        v7 = -16296;
      }

      if (v6 != v7)
      {
        return result;
      }

      goto LABEL_39;
    }

    if (v6 <= -16199)
    {
      if (v6 != -16200)
      {
LABEL_43:
        v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v39;
        if (v39)
        {
          v40 = *(v39 + 104);
          v41 = *(v39 + 120);
          v42 = *(v39 + 136);
          *(v5 + 24) = *(v39 + 19);
          *(v5 + 10) = v41;
          *(v5 + 11) = v42;
          *(v5 + 9) = v40;
          *(v5 + 120) = *v39;
          *(v5 + 54) = *(v39 + 22);
          *(v5 + 17) = *(v39 + 2);
        }

        v43 = v36[32];
LABEL_53:
        result = GTTraceFunc_argumentBytesWithMap(a3, v43, a2);
        *(v5 + 6) = *(result + 106);
        *(v5 + 7) = result;
        return result;
      }
    }

    else if (v6 != -16198)
    {
      if (v6 != -16197)
      {
        if (v6 == -16101)
        {
          v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v17 = *a3;
          v18 = *v16;
          *(v5 + 1) = *(v16 + 1);
          *(v5 + 2) = v17;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v18;
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 8) = v19;
          if (v19)
          {
            v20 = *(v19 + 104);
            v21 = *(v19 + 120);
            v22 = *(v19 + 136);
            *(v5 + 24) = *(v19 + 19);
            *(v5 + 10) = v21;
            *(v5 + 11) = v22;
            *(v5 + 9) = v20;
            *(v5 + 120) = *v19;
            *(v5 + 54) = *(v19 + 22);
            *(v5 + 17) = *(v19 + 2);
          }

          *(v5 + 12) = GTTraceFunc_argumentBytesWithMap(a3, v16[24], a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v16[25], a2);
          *(v5 + 13) = result;
        }

        return result;
      }

      goto LABEL_43;
    }

    v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v52 = *a3;
    v53 = *v51;
    *(v5 + 1) = *(v51 + 1);
    *(v5 + 2) = v52;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v53;
    v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 8) = v54;
    if (v54)
    {
      v55 = *(v54 + 104);
      v56 = *(v54 + 120);
      v57 = *(v54 + 136);
      *(v5 + 24) = *(v54 + 19);
      *(v5 + 10) = v56;
      *(v5 + 11) = v57;
      *(v5 + 9) = v55;
      *(v5 + 120) = *v54;
      *(v5 + 54) = *(v54 + 22);
      *(v5 + 17) = *(v54 + 2);
    }

    v43 = v51[24];
    goto LABEL_53;
  }

  if (v6 <= -14872)
  {
    if (v6 <= -15542)
    {
      if (v6 == -15989)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -15740)
      {
        v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 1) = *(v23 + 1);
        *(v5 + 2) = v24;
        *(v5 + 1) = *(a3 + 2);
        *(v5 + 5) = v25;
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 8) = v26;
        if (v26)
        {
          v27 = *(v26 + 104);
          v28 = *(v26 + 120);
          v29 = *(v26 + 136);
          *(v5 + 24) = *(v26 + 19);
          *(v5 + 10) = v28;
          *(v5 + 11) = v29;
          *(v5 + 9) = v27;
          *(v5 + 120) = *v26;
          *(v5 + 54) = *(v26 + 22);
          *(v5 + 17) = *(v26 + 2);
        }

        result = GTTraceFunc_argumentBytesWithMap(a3, v23[32], a2);
        *(v5 + 14) = result;
      }
    }

    else if (v6 == -15541)
    {
      v58 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v59 = *a3;
      v60 = *v58;
      *(v5 + 1) = *(v58 + 1);
      *(v5 + 2) = v59;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v60;
      v61 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v61;
      if (v61)
      {
        v62 = *(v61 + 104);
        v63 = *(v61 + 120);
        v64 = *(v61 + 136);
        *(v5 + 24) = *(v61 + 19);
        *(v5 + 10) = v63;
        *(v5 + 11) = v64;
        *(v5 + 9) = v62;
        *(v5 + 120) = *v61;
        *(v5 + 54) = *(v61 + 22);
        *(v5 + 17) = *(v61 + 2);
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v58[24], a2);
      *(v5 + 26) = result;
    }

    else if (v6 == -15141 || v6 == -15140)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v9 = *a3;
      v10 = *v8;
      *(v5 + 1) = *(v8 + 1);
      *(v5 + 2) = v9;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v10;
      v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v11;
      if (v11)
      {
        v12 = *(v11 + 104);
        v13 = *(v11 + 120);
        v14 = *(v11 + 136);
        *(v5 + 24) = *(v11 + 19);
        *(v5 + 10) = v13;
        *(v5 + 11) = v14;
        *(v5 + 9) = v12;
        *(v5 + 120) = *v11;
        *(v5 + 54) = *(v11 + 22);
        *(v5 + 17) = *(v11 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      v15 = v8[25];
      goto LABEL_49;
    }
  }

  else
  {
    if (v6 <= -10192)
    {
      if (v6 != -14871 && v6 != -14870)
      {
        if (v6 == -10214)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        return result;
      }

      v44 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v45 = *a3;
      v46 = *v44;
      *(v5 + 1) = *(v44 + 1);
      *(v5 + 2) = v45;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v46;
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 8) = v47;
      if (v47)
      {
        v48 = *(v47 + 104);
        v49 = *(v47 + 120);
        v50 = *(v47 + 136);
        *(v5 + 24) = *(v47 + 19);
        *(v5 + 10) = v49;
        *(v5 + 11) = v50;
        *(v5 + 9) = v48;
        *(v5 + 120) = *v47;
        *(v5 + 54) = *(v47 + 22);
        *(v5 + 17) = *(v47 + 2);
      }

      *(v5 + 9) = GTTraceFunc_argumentBytesWithMap(a3, v44[24], a2);
      *(v5 + 10) = GTTraceFunc_argumentBytesWithMap(a3, v44[25], a2);
      v15 = v44[26];
LABEL_49:
      result = GTTraceFunc_argumentBytesWithMap(a3, v15, a2);
      *(v5 + 11) = result;
      return result;
    }

    switch(v6)
    {
      case -10191:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -10171:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 1);
        break;
      case -10162:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTL4SMMachineLearningPipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 == -14869)
  {
LABEL_4:
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v9;
    *(v5 + 7) = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
    *(v5 + 6) = result;
    return result;
  }

  if (v6 != -14825)
  {
    if (v6 != -14868)
    {
      return result;
    }

    goto LABEL_4;
  }

  *(result + 3) = *a3;
  return result;
}

char *GTMTLSMMotionEstimationPipelineState_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 == -15893)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15891)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
    *(v4 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMFunction_processTraceFuncWithMap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15731)
  {
    if (v6 <= -15431)
    {
      if (v6 > -15609)
      {
        if (v6 != -15608)
        {
          if (v6 == -15551)
          {
            v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v47 = *a3;
            v48 = *v46;
            *(v5 + 8) = *(v46 + 1);
            *(v5 + 16) = v47;
            *(v5 + 4) = *(a3 + 2);
            *(v5 + 40) = v48;
            v49 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 80) = v49;
            if (v49)
            {
              v50 = *v49;
            }

            else
            {
              v50 = 0;
            }

            *(v5 + 64) = v50;
            v62 = v46[32];
          }

          else
          {
            if (v6 != -15550)
            {
              return result;
            }

            v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v13 = *a3;
            v14 = *v12;
            *(v5 + 8) = *(v12 + 1);
            *(v5 + 16) = v13;
            *(v5 + 4) = *(a3 + 2);
            *(v5 + 40) = v14;
            v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
            *(v5 + 80) = v15;
            if (v15)
            {
              v16 = *v15;
            }

            else
            {
              v16 = 0;
            }

            *(v5 + 64) = v16;
            v62 = v12[24];
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, v62, a2);
          *(v5 + 120) = result;
          return result;
        }

        goto LABEL_32;
      }

      if (v6 != -15730)
      {
        if (v6 != -15609)
        {
          return result;
        }

LABEL_32:
        v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 8) = *(v23 + 1);
        *(v5 + 16) = v24;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v25;
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 80) = v26;
        if (v26)
        {
          v27 = *v26;
        }

        else
        {
          v27 = 0;
        }

        *(v5 + 64) = v27;
        v17 = v23[24];
LABEL_69:
        result = GTTraceFunc_argumentBytesWithMap(a3, v17, a2);
        *(v5 + 112) = result;
        return result;
      }

LABEL_39:
      v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v34 = *a3;
      v35 = *v33;
      *(v5 + 8) = *(v33 + 1);
      *(v5 + 16) = v34;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v35;
      v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v36;
      if (v36)
      {
        v37 = *v36;
      }

      else
      {
        v37 = 0;
      }

      *(v5 + 64) = v37;
      *(v5 + 132) = 1;
      v43 = v33[24];
      if (g_loadURLAsMemHeader == 1)
      {
        v44 = GTTraceFunc_argumentBlobWithMap(a3, v43, a2);
      }

      else
      {
        v44 = GTTraceFunc_argumentBytesWithMap(a3, v43, a2);
      }

      *(v5 + 88) = v44;
      v45 = v33[25];
      if (g_loadURLAsMemHeader == 1)
      {
        result = GTTraceFunc_argumentBlobWithMap(a3, v45, a2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, v45, a2);
      }

      *(v5 + 96) = result;
      goto LABEL_56;
    }

    if (v6 <= -15429)
    {
      if (v6 != -15430)
      {
        goto LABEL_39;
      }
    }

    else if (v6 != -15428)
    {
      if (v6 != -15427)
      {
        if (v6 != -10157)
        {
          return result;
        }

        v17 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2)[16];
        goto LABEL_69;
      }

      goto LABEL_39;
    }

LABEL_41:
    v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v38 = *a3;
    v39 = *v33;
    *(v5 + 8) = *(v33 + 1);
    *(v5 + 16) = v38;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 40) = v39;
    v40 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 80) = v40;
    if (v40)
    {
      v41 = *v40;
    }

    else
    {
      v41 = 0;
    }

    *(v5 + 64) = v41;
    *(v5 + 132) = 1;
    v42 = v33[24];
    if (g_loadURLAsMemHeader == 1)
    {
      result = GTTraceFunc_argumentBlobWithMap(a3, v42, a2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, v42, a2);
    }

    *(v5 + 88) = result;
LABEL_56:
    *(v5 + 128) = *(v33 + 2);
    return result;
  }

  if (v6 <= -16083)
  {
    if (v6 <= -16124)
    {
      if (v6 == -16293)
      {
        *(result + 24) = *a3;
      }

      else if (v6 == -16290)
      {
        v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v19 = *a3;
        v20 = *v18;
        *(v5 + 8) = *(v18 + 1);
        *(v5 + 16) = v19;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v20;
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 80) = v21;
        if (v21)
        {
          v22 = *v21;
        }

        else
        {
          v22 = 0;
        }

        *(v5 + 64) = v22;
        result = GTTraceFunc_argumentBytesWithMap(a3, v18[16], a2);
        *(v5 + 56) = result;
      }
    }

    else if (v6 == -16123)
    {
      v56 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v56[8], a2);
      *(v5 + 64) = result;
    }

    else if (v6 == -16107 || v6 == -16106)
    {
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 8) = *(v7 + 1);
      *(v5 + 16) = v8;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v9;
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v10;
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0;
      }

      *(v5 + 64) = v11;
      *(v5 + 56) = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v7[25], a2);
      *(v5 + 72) = result;
    }

    return result;
  }

  if (v6 > -16039)
  {
    if (v6 == -16038)
    {
      v57 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v58 = *a3;
      v59 = *v57;
      *(v5 + 8) = *(v57 + 1);
      *(v5 + 16) = v58;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v59;
      v60 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v60;
      if (v60)
      {
        v61 = *v60;
      }

      else
      {
        v61 = 0;
      }

      *(v5 + 64) = v61;
      result = GTTraceFunc_argumentBytesWithMap(a3, v57[16], a2);
      *(v5 + 56) = result;
      *(v5 + 131) = 1;
      return result;
    }

    if (v6 == -15830)
    {
      v51 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v52 = *a3;
      v53 = *v51;
      *(v5 + 8) = *(v51 + 1);
      *(v5 + 16) = v52;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v53;
      v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v54;
      if (v54)
      {
        v55 = *v54;
      }

      else
      {
        v55 = 0;
      }

      *(v5 + 64) = v55;
      *(v5 + 56) = GTTraceFunc_argumentBytesWithMap(a3, v51[18], a2);
      *(v5 + 132) = 1;
      v63 = v51[16];
      if (g_loadURLAsMemHeader == 1)
      {
        result = GTTraceFunc_argumentBlobWithMap(a3, v63, a2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, v63, a2);
      }

      *(v5 + 104) = result;
      *(v5 + 130) = v51[17];
      return result;
    }

    if (v6 != -15731)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (v6 == -16082 || v6 == -16081)
  {
    v28 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v29 = *a3;
    v30 = *v28;
    *(v5 + 8) = *(v28 + 1);
    *(v5 + 16) = v29;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 40) = v30;
    v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 80) = v31;
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    *(v5 + 64) = v32;
    *(v5 + 56) = GTTraceFunc_argumentBytesWithMap(a3, v28[32], a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v28[33], a2);
    *(v5 + 72) = result;
    *(v5 + 48) = *(v28 + 2);
  }

  return result;
}

char *GTMTLSMIndirectComputeCommand_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -15935)
  {
    v8 = 24;
  }

  else
  {
    if (v5 != -15921)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v6 = *v3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(v3 + 2);
    *(v4 + 5) = v7;
    v3 = result + 16;
    v8 = 48;
  }

  *&v4[v8] = *v3;
  return result;
}

char *GTMTLSMIndirectRenderCommand_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -15957)
  {
    v8 = 24;
  }

  else
  {
    if (v5 != -15922)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v6 = *v3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(v3 + 2);
    *(v4 + 5) = v7;
    v3 = result + 16;
    v8 = 48;
  }

  *&v4[v8] = *v3;
  return result;
}

char *GTMTL4SMCompiler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 2) == -15194)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v7 = *a3;
    v8 = *v6;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v8;
    result = GTTraceFunc_argumentBytesWithMap(a3, v6[24], a2);
    *(v5 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMLibrary_processTraceFuncWithMap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -16019)
  {
    if (v6 <= -16293)
    {
      if (v6 > -16307)
      {
        if (v6 == -16306)
        {
          v45 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v46 = *a3;
          v47 = *v45;
          *(v5 + 8) = *(v45 + 1);
          *(v5 + 16) = v46;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v47;
          v48 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 80) = v48;
          if (v48)
          {
            *(v5 + 144) = *(v48 + 1);
            *(v5 + 176) = v48[16];
          }

          *(v5 + 177) = 3;
          v49 = v45[24];
          if (g_loadURLAsMemHeader == 1)
          {
            result = GTTraceFunc_argumentBlobWithMap(a3, v49, a2);
          }

          else
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, v49, a2);
          }

          *(v5 + 112) = result;
        }

        else if (v6 == -16305 || v6 == -16304)
        {
          v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v20 = *a3;
          v21 = *v19;
          *(v5 + 8) = *(v19 + 1);
          *(v5 + 16) = v20;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v21;
          v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 80) = v22;
          if (v22)
          {
            *(v5 + 144) = *(v22 + 1);
            *(v5 + 176) = v22[16];
          }

          *(v5 + 177) = 2;
          v23 = v19[24];
          if (g_loadURLAsMemHeader == 1)
          {
            v24 = GTTraceFunc_argumentBlobWithMap(a3, v23, a2);
          }

          else
          {
            v24 = GTTraceFunc_argumentBytesWithMap(a3, v23, a2);
          }

          *(v5 + 112) = v24;
          result = GTTraceFunc_argumentBytesWithMap(a3, v19[25], a2);
          *(v5 + 120) = result;
        }

        return result;
      }

      if (v6 == -16308)
      {
        v55 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v56 = *a3;
        v57 = *v55;
        *(v5 + 8) = *(v55 + 1);
        *(v5 + 16) = v56;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v57;
        v58 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 80) = v58;
        if (v58)
        {
          *(v5 + 144) = *(v58 + 1);
          *(v5 + 176) = v58[16];
        }

        *(v5 + 177) = 0;
        v18 = v55[16];
LABEL_72:
        result = GTTraceFunc_argumentBytesWithMap(a3, v18, a2);
        *(v5 + 112) = result;
        v59 = *(v5 + 80);
        if (v59)
        {
          v59 = *v59;
        }

        *(v5 + 160) = v59;
        return result;
      }

      if (v6 != -16307)
      {
        return result;
      }

      v36 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v37 = *a3;
      v38 = *v36;
      *(v5 + 8) = *(v36 + 1);
      *(v5 + 16) = v37;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v38;
      v39 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v39;
      if (v39)
      {
        *(v5 + 144) = *(v39 + 1);
        *(v5 + 176) = v39[16];
      }

      *(v5 + 177) = 1;
      result = GTTraceFunc_argumentBytesWithMap(a3, v36[24], a2);
      *(v5 + 112) = result;
    }

    else
    {
      if (v6 <= -16084)
      {
        if (v6 == -16292)
        {
          v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v67[8], a2);
          *(v5 + 128) = result;
          return result;
        }

        if (v6 == -16291)
        {
          *(result + 24) = *a3;
          return result;
        }

        if (v6 != -16095)
        {
          return result;
        }

        v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v15 = *a3;
        v16 = *v14;
        *(v5 + 8) = *(v14 + 1);
        *(v5 + 16) = v15;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v16;
        v17 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 80) = v17;
        if (v17)
        {
          *(v5 + 144) = *(v17 + 1);
          *(v5 + 176) = v17[16];
        }

        *(v5 + 177) = 0;
        v18 = v14[24];
        goto LABEL_72;
      }

      if (v6 == -16083)
      {
        v68 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v68[8], a2);
        *(v5 + 136) = result;
        return result;
      }

      if (v6 != -16039)
      {
        if (v6 != -16029)
        {
          return result;
        }

        goto LABEL_45;
      }

      v60 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v61 = *a3;
      v62 = *v60;
      *(v5 + 8) = *(v60 + 1);
      *(v5 + 16) = v61;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v62;
      v63 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v63;
      if (v63)
      {
        *(v5 + 144) = *(v63 + 1);
        *(v5 + 176) = v63[16];
      }

      v64 = GTTraceFunc_argumentBytesWithMap(a3, v60[24], a2);
      *(v5 + 112) = v64;
      result = GTString_endsWith(v64, ".mtlpackage");
      if (result)
      {
        v65 = 7;
      }

      else
      {
        v65 = 1;
      }

      *(v5 + 177) = v65;
    }

    v66 = *(v5 + 80);
    if (v66)
    {
      v66 = *v66;
    }

    *(v5 + 152) = v66;
    return result;
  }

  if (v6 <= -15421)
  {
    if (v6 <= -15436)
    {
      if (v6 != -16018)
      {
        if (v6 != -15847)
        {
          if (v6 != -15693)
          {
            return result;
          }

          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 8) = *(v7 + 1);
          *(v5 + 16) = v8;
          *(v5 + 4) = *(a3 + 2);
          *(v5 + 40) = v9;
          v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 80) = v10;
          if (v10)
          {
            *(v5 + 144) = *(v10 + 1);
            *(v5 + 176) = v10[16];
          }

          *(v5 + 96) = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
          v11 = GTTraceFunc_argumentBytesWithMap(a3, v7[25], a2);
          v13 = *v11;
          result = (v11 + 8);
          LODWORD(v12) = v13;
          *(v5 + 104) = result;
          goto LABEL_37;
        }

        v50 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v51 = *a3;
        v52 = *v50;
        *(v5 + 8) = *(v50 + 1);
        *(v5 + 16) = v51;
        *(v5 + 4) = *(a3 + 2);
        *(v5 + 40) = v52;
        v53 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 80) = v53;
        if (v53)
        {
          *(v5 + 144) = *(v53 + 1);
          *(v5 + 176) = v53[16];
        }

        *(v5 + 177) = 5;
        *(v5 + 64) = GTTraceFunc_argumentBytesWithMap(a3, v50[32], a2);
        *(v5 + 168) = *(v50 + 2);
        v35 = v50[33];
        goto LABEL_65;
      }

LABEL_45:
      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *a3;
      v31 = *v29;
      *(v5 + 8) = *(v29 + 1);
      *(v5 + 16) = v30;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v31;
      v32 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v32;
      if (v32)
      {
        *(v5 + 144) = *(v32 + 1);
        *(v5 + 176) = v32[16];
      }

      *(v5 + 177) = 4;
      v33 = GTTraceFunc_argumentBytesWithMap(a3, v29[24], a2);
      if (v33)
      {
        v34 = *v33;
        *(v5 + 64) = v33 + 8;
        *(v5 + 168) = v34;
      }

      v35 = v29[25];
LABEL_65:
      result = GTTraceFunc_argumentBytesWithMap(a3, v35, a2);
      *(v5 + 72) = result;
      return result;
    }

    if (v6 == -15435 || v6 == -15434 || v6 == -15421)
    {
LABEL_34:
      v25 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v26 = *a3;
      v27 = *v25;
      *(v5 + 8) = *(v25 + 1);
      *(v5 + 16) = v26;
      *(v5 + 4) = *(a3 + 2);
      *(v5 + 40) = v27;
      v28 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 80) = v28;
      if (v28)
      {
        *(v5 + 144) = *(v28 + 1);
        *(v5 + 176) = v28[16];
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, v25[24], a2);
      *(v5 + 88) = result;
      *(v5 + 104) = *(result + 16);
      v12 = *(result + 40);
LABEL_37:
      *(v5 + 172) = v12;
      *(v5 + 177) = 6;
      return result;
    }

    return result;
  }

  if (v6 > -15135)
  {
    if (v6 != -15134)
    {
      if (v6 == -10188)
      {
        v54 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v54[8], a2);
        *(v5 + 144) = result;
      }

      else if (v6 == -10183)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 176) = *(result + 8);
      }

      return result;
    }

LABEL_55:
    v40 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v41 = *a3;
    v42 = *v40;
    *(v5 + 8) = *(v40 + 1);
    *(v5 + 16) = v41;
    *(v5 + 4) = *(a3 + 2);
    *(v5 + 40) = v42;
    v43 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 80) = v43;
    if (v43)
    {
      *(v5 + 144) = *(v43 + 1);
      *(v5 + 176) = v43[16];
    }

    *(v5 + 177) = 2;
    *(v5 + 48) = *v40;
    result = GTTraceFunc_argumentBytesWithMap(a3, v40[24], a2);
    *(v5 + 56) = result;
    v44 = *(result + 8);
    *(v5 + 112) = *(result + 24);
    *(v5 + 120) = v44;
    return result;
  }

  if (v6 == -15420 || v6 == -15419)
  {
    goto LABEL_34;
  }

  if (v6 == -15135)
  {
    goto LABEL_55;
  }

  return result;
}

char *GTMTLSMDynamicLibrary_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15140)
  {
    if (v6 <= -15676)
    {
      if (v6 == -15695)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        if (result)
        {
          *(v5 + 10) = *result;
          *(v5 + 6) = *(result + 8);
          *(v5 + 56) = *(result + 12);
        }

        *(v5 + 5) = *v16;
        *(v5 + 7) = *(v16 + 2);
      }

      else if (v6 == -15676)
      {
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
        *(v5 + 9) = result;
      }

      return result;
    }

    if (v6 == -15675)
    {
      *(result + 3) = *a3;
      return result;
    }

    if (v6 != -15613)
    {
      return result;
    }

    v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v12 = *a3;
    *(v5 + 1) = *(v11 + 1);
    *(v5 + 2) = v12;
    *(v5 + 1) = *(a3 + 2);
    v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    if (v13)
    {
      *(v5 + 10) = *v13;
      *(v5 + 6) = *(v13 + 8);
      *(v5 + 56) = *(v13 + 12);
    }

    *(v5 + 5) = *v11;
LABEL_20:
    result = GTTraceFunc_argumentBytesWithMap(a3, v11[24], a2);
    *(v5 + 11) = result;
    return result;
  }

  if (v6 > -15138)
  {
    if (v6 != -15137 && v6 != -15136)
    {
      return result;
    }

    v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v14 = *a3;
    *(v5 + 1) = *(v11 + 1);
    *(v5 + 2) = v14;
    *(v5 + 1) = *(a3 + 2);
    v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    if (v15)
    {
      *(v5 + 10) = *v15;
      *(v5 + 6) = *(v15 + 8);
      *(v5 + 56) = *(v15 + 12);
    }

    *(v5 + 6) = *v11;
    goto LABEL_20;
  }

  v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v9 = *a3;
  *(v5 + 1) = *(v8 + 1);
  *(v5 + 2) = v9;
  *(v5 + 1) = *(a3 + 2);
  result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
  if (result)
  {
    *(v5 + 10) = *result;
    *(v5 + 6) = *(result + 8);
    *(v5 + 56) = *(result + 12);
  }

  v10 = *(v8 + 2);
  *(v5 + 6) = *v8;
  *(v5 + 7) = v10;
  return result;
}

char *GTMTLSMPipelineLibrary_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15745)
  {
    if (v6 == -15744)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[82] = *(result + 2);
    }

    else if (v6 == -15743)
    {
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v10[8], a2);
      *(v5 + 7) = result;
    }
  }

  else if (v6 == -16291)
  {
    *(result + 3) = *a3;
  }

  else if (v6 == -16075)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 2);
    *(v5 + 5) = v9;
    *(v5 + 6) = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    if (result)
    {
      *(v5 + 40) = *(result + 12);
      *(v5 + 4) = *(result + 8);
    }
  }

  return result;
}

char *GTMTLSMIOCommandQueue_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 == -15332)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15350)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
    *(v4 + 7) = result;
  }

  return result;
}

char *GTMTLSMCommandQueue_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -16317)
  {
    if (v6 > -16347)
    {
      switch(v6)
      {
        case -16346:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[76] = *(result + 2);
          break;
        case -16345:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[74] = *(result + 2);
          break;
        case -16344:
          *(result + 3) = *a3;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -16349:
          v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
          *(v5 + 6) = result;
          break;
        case -16348:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 2);
          break;
        case -16347:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[75] = *(result + 2);
          break;
      }
    }
  }

  else
  {
    if (v6 <= -15810)
    {
      switch(v6)
      {
        case -16316:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v11 = *a3;
          v12 = *result;
          *(v5 + 1) = *(result + 1);
          *(v5 + 2) = v11;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v12;
          v10 = 64;
          break;
        case -16315:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          v14 = *result;
          *(v5 + 1) = *(result + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v14;
          *(v5 + 16) = *(result + 2);
          return result;
        case -16165:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          *(v5 + 7) = result;
          v10 = *result;
          break;
        default:
          return result;
      }

      *(v5 + 16) = v10;
      return result;
    }

    if (v6 > -15807)
    {
      if (v6 == -15806 || v6 == -15805)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[72] = *(result + 1);
      }
    }

    else if (v6 == -15809 || v6 == -15808)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[73] = *(result + 1);
    }
  }

  return result;
}

char *GTMTL4SMCommandQueue_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -14834:
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v10 = *a3;
      v11 = *v9;
      *(v5 + 1) = *(v9 + 1);
      *(v5 + 2) = v10;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v11;
      result = GTTraceFunc_argumentBytesWithMap(a3, v9[24], a2);
      *(v5 + 6) = result;
      break;
    case -15155:
      *(result + 3) = *a3;
      break;
    case -15190:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTL4SMCommandAllocator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  switch(v5)
  {
    case -15175:
      *(result + 3) = *a3;
      break;
    case -15197:
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v10 = *a3;
      v11 = *v9;
      *(v4 + 1) = *(v9 + 1);
      *(v4 + 2) = v10;
      *(v4 + 1) = *(a3 + 2);
      *(v4 + 5) = v11;
      result = GTTraceFunc_argumentBytesWithMap(a3, v9[24], a2);
      *(v4 + 6) = result;
      break;
    case -15198:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v7;
      *(v4 + 1) = *(a3 + 2);
      *(v4 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTL4SMArgumentTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15181)
  {
    if (v6 == -15200)
    {
      v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v12 = *a3;
      v13 = *v11;
      *(v5 + 1) = *(v11 + 1);
      *(v5 + 2) = v12;
      *(v5 + 1) = *(a3 + 2);
      *(v5 + 5) = v13;
      result = GTTraceFunc_argumentBytesWithMap(a3, v11[24], a2);
      *(v5 + 6) = result;
      return result;
    }

    if (v6 != -15182)
    {
      if (v6 != -15181)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 2) + 64] = *(result + 1);
      v7 = *(result + 2);
      v8 = 1 << v7;
      v9 = &v5[8 * (v7 >> 6)];
      v10 = *(v9 + 7) | v8;
      goto LABEL_14;
    }

    *(result + 3) = *a3;
  }

  else
  {
    if (v6 <= -15179)
    {
      if (v6 != -15180)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *&v5[8 * *(result + 2) + 1592] = *(result + 1);
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 2) + 64] = *(result + 1);
      v14 = *(result + 2);
      v15 = 1 << v14;
      v9 = &v5[8 * (v14 >> 6)];
      v10 = *(v9 + 7) & ~v15;
LABEL_14:
      *(v9 + 7) = v10;
      return result;
    }

    if (v6 == -15178)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 2) + 568] = *(result + 1);
    }

    else if (v6 == -14848)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 3) + 64] = *(result + 1);
      *&v5[8 * (*(result + 3) >> 6) + 56] |= 1 << *(result + 3);
      *&v5[8 * *(result + 3) + 320] = *(result + 2);
      *&v5[8 * (*(result + 3) >> 6) + 312] |= 1 << *(result + 3);
    }
  }

  return result;
}

char *GTMTLSMRasterizationRateMap_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  switch(v5)
  {
    case -15801:
      *(result + 3) = *a3;
      break;
    case -15411:
      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v10[8], a2);
      *(v4 + 6) = result;
      break;
    case -15793:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v4 + 1) = *(v7 + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 2);
      *(v4 + 5) = v9;
      result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
      *(v4 + 6) = result;
      *(v4 + 14) = *(result + 6);
      v4[60] = result[34];
      break;
  }

  return result;
}

char *GTMTLSMDevice_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -10239)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v4 + 1) = *v7;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
    *(v4 + 5) = result;
  }

  else if (v5 == -16317)
  {
    *(result + 3) = *a3;
  }

  return result;
}

uint64_t GTMTLSMFilter_processTraceFuncWithMap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -6123)
  {
    if (v6 > -6135)
    {
      if (v6 > -6132)
      {
        if (v6 == -6131)
        {
          v33 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v34 = *a3;
          v35 = *v33;
          *(v5 + 8) = *(v33 + 1);
          *(v5 + 16) = v34;
          v36 = *(a3 + 2);
          *(v5 + 4) = v36;
          *(v5 + 40) = v36;
          *(v5 + 48) = v35;
          *(v5 + 56) = GTTraceFunc_argumentBytesWithMap(a3, v33[16], a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v33[24], a2);
          *(v5 + 64) = result;
          *(v5 + 72) = *(v33 + 8);
        }

        else if (v6 == -6129)
        {
          v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v11 = *a3;
          v12 = *v10;
          *(v5 + 8) = *(v10 + 1);
          *(v5 + 16) = v11;
          v13 = *(a3 + 2);
          *(v5 + 4) = v13;
          *(v5 + 40) = v13;
          *(v5 + 48) = v12;
          *(v5 + 56) = *(v10 + 4);
          v14 = v10[24];
          if (g_loadURLAsMemHeader == 1)
          {
            result = GTTraceFunc_argumentBlobWithMap(a3, v14, a2);
          }

          else
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, v14, a2);
          }

          *(v5 + 72) = result;
          *(v5 + 64) = *(v10 + 4);
        }
      }

      else
      {
        if (v6 == -6134)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v29 = *a3;
          v30 = *result;
          *(v5 + 8) = *(result + 8);
          *(v5 + 16) = v29;
          v31 = *(a3 + 2);
          *(v5 + 4) = v31;
          *(v5 + 40) = v31;
          *(v5 + 48) = v30;
          *(v5 + 96) = *(result + 16);
          *(v5 + 56) = *(result + 24);
          *(v5 + 64) = *(result + 32);
          *(v5 + 80) = *(result + 40);
          v32 = *(result + 48);
          goto LABEL_35;
        }

        if (v6 == -6133)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v7 = *a3;
          v8 = *result;
          *(v5 + 8) = *(result + 8);
          *(v5 + 16) = v7;
          v9 = *(a3 + 2);
          *(v5 + 4) = v9;
          *(v5 + 40) = v9;
          *(v5 + 48) = v8;
          *(v5 + 56) = *(result + 16);
          *(v5 + 64) = *(result + 20);
          *(v5 + 68) = *(result + 24);
          *(v5 + 72) = *(result + 28);
        }
      }

      return result;
    }

    if (v6 == -6143)
    {
      goto LABEL_26;
    }

    if (v6 != -6141)
    {
      if (v6 == -6139)
      {
        *(result + 24) = *a3;
      }

      return result;
    }

LABEL_30:
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v23 = *a3;
    v24 = *result;
    *(v5 + 8) = *(result + 8);
    *(v5 + 16) = v23;
    v25 = *(a3 + 2);
    *(v5 + 4) = v25;
    *(v5 + 40) = v25;
    *(v5 + 48) = v24;
    *(v5 + 56) = *(result + 16);
    *(v5 + 64) = *(result + 24);
    *(v5 + 72) = *(result + 32);
    *(v5 + 80) = *(result + 40);
    return result;
  }

  if (v6 <= -6111)
  {
    if (v6 <= -6117)
    {
      if (v6 != -6122)
      {
        if (v6 != -6119)
        {
          return result;
        }

LABEL_31:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v26 = *a3;
        v27 = *result;
        *(v5 + 8) = *(result + 8);
        *(v5 + 16) = v26;
        v28 = *(a3 + 2);
        *(v5 + 4) = v28;
        *(v5 + 40) = v28;
        *(v5 + 48) = v27;
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v37 = *a3;
      v38 = *result;
      *(v5 + 8) = *(result + 8);
      *(v5 + 16) = v37;
      v39 = *(a3 + 2);
      *(v5 + 4) = v39;
      *(v5 + 40) = v39;
      *(v5 + 48) = v38;
      *(v5 + 96) = *(result + 16);
      *(v5 + 97) = *(result + 20);
      *(v5 + 56) = *(result + 24);
      *(v5 + 64) = *(result + 32);
      *(v5 + 72) = *(result + 40);
      *(v5 + 80) = *(result + 48);
      v32 = *(result + 56);
LABEL_35:
      *(v5 + 88) = v32;
      return result;
    }

    if (v6 == -6116)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v40 = *a3;
      v41 = *result;
      *(v5 + 8) = *(result + 8);
      *(v5 + 16) = v40;
      v42 = *(a3 + 2);
      *(v5 + 4) = v42;
      *(v5 + 40) = v42;
      *(v5 + 48) = v41;
      *(v5 + 56) = *(result + 16);
      *(v5 + 64) = *(result + 24);
      *(v5 + 72) = *(result + 32);
      *(v5 + 80) = *(result + 40);
      *(v5 + 88) = *(result + 48);
      *(v5 + 96) = *(result + 56);
      return result;
    }

    if (v6 != -6111)
    {
      return result;
    }

LABEL_26:
    v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v16 = *a3;
    v17 = *v15;
    *(v5 + 8) = *(v15 + 1);
    *(v5 + 16) = v16;
    v18 = *(a3 + 2);
    *(v5 + 4) = v18;
    *(v5 + 40) = v18;
    *(v5 + 48) = v17;
    *(v5 + 56) = GTTraceFunc_argumentBytesWithMap(a3, v15[16], a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v15[24], a2);
    *(v5 + 64) = result;
    return result;
  }

  if (v6 > -6097)
  {
    if (v6 == -6096 || v6 == -6095)
    {
      v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 8) = *(v19 + 1);
      *(v5 + 16) = v20;
      v22 = *(a3 + 2);
      *(v5 + 4) = v22;
      *(v5 + 40) = v22;
      *(v5 + 48) = v21;
      result = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
      *(v5 + 56) = result;
    }

    return result;
  }

  if (v6 == -6110)
  {
    goto LABEL_31;
  }

  if (v6 == -6109)
  {
    goto LABEL_30;
  }

  return result;
}