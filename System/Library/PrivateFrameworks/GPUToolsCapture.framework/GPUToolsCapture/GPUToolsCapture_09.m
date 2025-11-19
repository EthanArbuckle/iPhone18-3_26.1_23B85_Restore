char *GTMTLSMResourceGroup_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 == -15769)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15900)
  {
    v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
    *(v4 + 6) = result;
    *(v4 + 14) = *(v7 + 2);
  }

  return result;
}

char *GTMTLSMDrawable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = *(a3 + 2);
  if (v5 > -7162)
  {
    if (v5 == -7161)
    {
      *(result + 3) = *a3;
    }

    else if (v5 == -6655)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 2);
    }
  }

  else if (v5 == -7167)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v4 + 6) = *(result + 1);
  }

  else if (v5 == -7166)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v6 = *a3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(a3 + 2);
    *(v4 + 5) = v7;
  }

  return result;
}

uint64_t GTMTLSMLayer_processTraceFuncWithMap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -7163)
  {
    if (v6 <= -7166)
    {
      if (v6 == -8183)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        for (i = 0; i != 128; i += 8)
        {
          *(v5 + 48 + i) = *(result + 8 + i);
        }

        *(v5 + 248) = *(result + 136);
      }

      else if (v6 == -8181)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 192) = *(result + 8);
        *(v5 + 200) = *(result + 16);
      }
    }

    else if (v6 == -7165)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 272) = *(result + 8);
    }

    else if (v6 == -7164)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 176) = *(result + 8);
      *(v5 + 184) = *(result + 16);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *(result + 8);
      *(v5 + 8) = *result;
      *(v5 + 16) = v7;
      *(v5 + 40) = v8;
    }

    return result;
  }

  if (v6 > -7160)
  {
    if (v6 != -7159)
    {
      if (v6 == -7154)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 275) = *(result + 8);
      }

      else if (v6 == -7153)
      {
        v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2)[8];
        if (g_loadURLAsMemHeader == 1)
        {
          result = GTTraceFunc_argumentBlobWithMap(a3, v9, a2);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, v9, a2);
        }

        *(v5 + 264) = result;
      }

      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    for (j = 0; j != 32; j += 8)
    {
      *(v5 + 216 + j) = *(result + 8 + j);
    }

LABEL_27:
    *(v5 + 208) = *(result + 40);
    return result;
  }

  if (v6 == -7162)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    for (k = 0; k != 32; k += 8)
    {
      *(v5 + 216 + k) = *(result + 8 + k);
    }

    goto LABEL_27;
  }

  if (v6 == -7160)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 274) = *(result + 8);
  }

  return result;
}

char *GTMTLSMAccelerationStructure_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15354)
  {
    if (v6 <= -10182)
    {
      if (v6 > -10198)
      {
        if (v6 > -10196)
        {
          if (v6 == -10195)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 25) = *(result + 2);
          }

          else if (v6 == -10182)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 168) = *(result + 8);
            v28 = *(result + 4);
            *(v5 + 23) = *(result + 3);
            *(v5 + 52) = v28;
            *(v5 + 200) = *(result + 40);
          }
        }

        else if (v6 == -10197)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
        }

        return result;
      }

      if (v6 == -15353)
      {
        v68 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v69 = *a3;
        *(v5 + 1) = *(v68 + 1);
        *(v5 + 2) = v69;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          v70 = *(result + 6);
          *(v5 + 20) = *(result + 5);
          *(v5 + 26) = v70;
          *(v5 + 52) = *(result + 32);
          *(v5 + 168) = *(result + 72);
          v71 = *(result + 12);
          *(v5 + 23) = *(result + 11);
          *(v5 + 25) = v71;
          *(v5 + 18) = *(result + 7);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        *(v5 + 6) = *v68;
        *(v5 + 7) = v72;
        *(v5 + 24) = v73;
        return result;
      }

      if (v6 != -15352)
      {
        if (v6 != -15351)
        {
          return result;
        }

        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v19 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v19;
        *(v5 + 1) = *(a3 + 2);
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          *(v5 + 26) = *(result + 6);
          v20 = *(result + 9);
          *(v5 + 52) = *(result + 32);
          *(v5 + 21) = v20;
          v21 = *(result + 5);
          *(v5 + 11) = v21;
          *(v5 + 7) = v20 - v21;
          *(v5 + 25) = *(result + 12);
          *(v5 + 18) = *(result + 7);
        }

        *(v5 + 6) = *v7;
        goto LABEL_46;
      }

      v62 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v63 = *a3;
      *(v5 + 1) = *(v62 + 1);
      *(v5 + 2) = v63;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v64 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v64;
        *(v5 + 18) = *(result + 7);
      }

      v66 = *(v62 + 2);
      v65 = *(v62 + 3);
      *(v5 + 6) = *v62;
      *(v5 + 7) = v65;
      *(v5 + 24) = v66;
      v54 = *(v62 + 4);
    }

    else
    {
      if (v6 > -10168)
      {
        if (v6 > -10159)
        {
          if (v6 != -10158)
          {
            if (v6 == -10154)
            {
              result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
              if (*(v5 + 1) == *(result + 1))
              {
                result = GTTraceFunc_argumentBytesWithMap(a3, result[16], a2);
                *(v5 + 15) = result;
              }
            }

            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(v5 + 1) != *(result + 1))
          {
            return result;
          }

          v18 = *(result + 1);
        }

        else
        {
          if (v6 == -10167)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 18) = *(result + 1);
            return result;
          }

          if (v6 != -10159)
          {
            return result;
          }

          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v18 = *(result + 8);
        }

        v61 = vmovn_s32(v18);
        *(v5 + 28) = vuzp1_s8(v61, v61).u32[0];
        return result;
      }

      if (v6 <= -10171)
      {
        if (v6 == -10181)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 1);
        }

        else if (v6 == -10173)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
        }

        return result;
      }

      if (v6 != -10170)
      {
        if (v6 == -10169)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 7) = *(result + 1);
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v54 = *(result + 1);
    }

    *(v5 + 20) = v54;
    return result;
  }

  if (v6 <= -15553)
  {
    if (v6 <= -15652)
    {
      switch(v6)
      {
        case -15661:
          v67 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v67[8], a2);
          *(v5 + 11) = result;
          break;
        case -15660:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
        case -15659:
          *(result + 3) = *a3;
          break;
      }

      return result;
    }

    if (v6 <= -15616)
    {
      if (v6 == -15651)
      {
        result[108] = 1;
      }

      else if (v6 == -15650)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v11 = *(result + 2);
        if (v11 != 1)
        {
          *(v5 + 53) = v11;
        }
      }

      return result;
    }

    if (v6 == -15615)
    {
LABEL_72:
      v40 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v41 = *a3;
      *(v5 + 1) = *(v40 + 1);
      *(v5 + 2) = v41;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v42 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v42;
        v43 = *(result + 5);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        v44 = *(result + 9);
        *(v5 + 20) = v43;
        *(v5 + 21) = v44;
        v45 = *(result + 5);
        *(v5 + 11) = v45;
        *(v5 + 7) = v44 - v45;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v40;
      return result;
    }

    if (v6 != -15614)
    {
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v24 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v24;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v25 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v26 = *(result + 9);
      *(v5 + 20) = v25;
      *(v5 + 21) = v26;
      v27 = *(result + 5);
      *(v5 + 11) = v27;
      *(v5 + 7) = v26 - v27;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 5) = *v23;
LABEL_67:
    *(v5 + 24) = *(v23 + 2);
    return result;
  }

  if (v6 > -15359)
  {
    if (v6 <= -15356)
    {
      if (v6 != -15358)
      {
        if (v6 == -15356)
        {
          v12 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 2);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          *(v5 + 16) = result;
          if (result)
          {
            *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
            *(v5 + 24) = *(result + 4);
            v14 = *(result + 4);
            *(v5 + 17) = *(result + 3);
            *(v5 + 24) = v14;
            v15 = *(result + 5);
            *(v5 + 26) = *(result + 6);
            *(v5 + 52) = *(result + 32);
            v16 = *(result + 9);
            *(v5 + 20) = v15;
            *(v5 + 21) = v16;
            v17 = *(result + 5);
            *(v5 + 11) = v17;
            *(v5 + 7) = v16 - v17;
            *(v5 + 25) = *(result + 12);
            *(v5 + 18) = *(result + 7);
          }

          *(v5 + 6) = *v12;
        }

        return result;
      }

      goto LABEL_72;
    }

    if (v6 == -15355)
    {
      v55 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v56 = *a3;
      *(v5 + 1) = *(v55 + 1);
      *(v5 + 2) = v56;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v57 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v58 = *(result + 6);
        *(v5 + 20) = *(result + 5);
        *(v5 + 24) = v57;
        *(v5 + 26) = v58;
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v59 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v59;
        *(v5 + 18) = *(result + 7);
      }

      v60 = *(v55 + 2);
      *(v5 + 6) = *v55;
      *(v5 + 7) = v60;
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v36 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v36;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v37 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v38 = *(result + 9);
      *(v5 + 20) = v37;
      *(v5 + 21) = v38;
      v39 = *(result + 5);
      *(v5 + 11) = v39;
      *(v5 + 7) = v38 - v39;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 6) = *v23;
    goto LABEL_67;
  }

  if (v6 > -15465)
  {
    if (v6 == -15464)
    {
      v47 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v48 = *a3;
      *(v5 + 1) = *(v47 + 1);
      *(v5 + 2) = v48;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v49 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v50 = *(result + 5);
        *(v5 + 24) = v49;
        *(v5 + 52) = *(result + 32);
        v51 = *(result + 9);
        *(v5 + 20) = v50;
        *(v5 + 21) = v51;
        v52 = *(result + 5);
        *(v5 + 11) = v52;
        *(v5 + 7) = v51 - v52;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v47;
      v53 = *(v47 + 3);
      *(v5 + 19) = *(v47 + 2);
      *(v5 + 26) = v53;
    }

    else if (v6 == -15359)
    {
      v29 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *a3;
      *(v5 + 1) = *(v29 + 1);
      *(v5 + 2) = v30;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v31 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v31;
        v32 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v32;
        v33 = *(result + 5);
        *(v5 + 11) = v33;
        *(v5 + 7) = v32 - v33;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v29;
      v34 = *(v29 + 2);
      *(v5 + 26) = *(v29 + 3);
      v35 = *(v29 + 4);
      *(v5 + 19) = v34;
      *(v5 + 20) = v35;
    }
  }

  else
  {
    if (v6 != -15552)
    {
      if (v6 != -15506)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        v9 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v9;
        v10 = *(result + 5);
        *(v5 + 11) = v10;
        *(v5 + 7) = v9 - v10;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v7;
LABEL_46:
      v22 = *(v7 + 3);
      *(v5 + 24) = *(v7 + 2);
      *(v5 + 20) = v22;
      return result;
    }

    v46 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v46[8], a2);
    *(v5 + 15) = result;
    if (result)
    {
      v5[112] = (result[96] & 0xFE) == 2;
      v5[113] = 1;
      v5[115] = (result[97] & 4) != 0;
    }
  }

  return result;
}

int8x16_t *GTMTLSMFunctionHandle_processTraceFuncWithMap(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15438)
  {
    if (v6 > -14836)
    {
      switch(v6)
      {
        case -10140:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[5].i64[0] = result->i64[1];
          break;
        case -10141:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[5].i64[1] = result->i64[1];
          break;
        case -14835:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v5->i64[1] = *(v7 + 1);
          v5[1].i64[0] = v8;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
          v5[2].i64[1] = result;
          if (result)
          {
            v5[5] = vextq_s8(*result, *result, 8uLL);
          }

          v9 = *v7;
          v5[3].i64[0] = *(v7 + 2);
          v5[3].i64[1] = v9;
          break;
      }

      return result;
    }

    if (v6 == -15437)
    {
      v20 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v21 = *a3;
      v5->i64[1] = *(v20 + 1);
      v5[1].i64[0] = v21;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v20;
      v5[3].i64[0] = *(v20 + 2);
      v12 = 4;
    }

    else
    {
      if (v6 != -15436)
      {
        return result;
      }

      v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v14 = *a3;
      v5->i64[1] = *(v13 + 1);
      v5[1].i64[0] = v14;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v13;
      v5[3].i64[0] = *(v13 + 2);
      v12 = 1;
    }

LABEL_33:
    v5[6].i8[0] = v12;
    return result;
  }

  if (v6 > -15464)
  {
    if (v6 != -15463)
    {
      if (v6 != -15444)
      {
        return result;
      }

      v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v11 = *a3;
      v5->i64[1] = *(v10 + 1);
      v5[1].i64[0] = v11;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v10;
      v5[3].i64[0] = *(v10 + 2);
      v12 = 2;
      goto LABEL_33;
    }

    v17 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v18 = *a3;
    v5->i64[1] = *(v17 + 1);
    v5[1].i64[0] = v18;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[2].i64[1] = result;
    if (result)
    {
      v5[5] = vextq_s8(*result, *result, 8uLL);
    }

    v5[4].i64[1] = *v17;
    v19 = *(v17 + 3);
    v5[3].i64[0] = *(v17 + 2);
    v5[6].i8[0] = v19;
  }

  else if (v6 == -15620)
  {
    v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v16 = *a3;
    v5->i64[1] = *(v15 + 1);
    v5[1].i64[0] = v16;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
    v5[2].i64[1] = result;
    if (result)
    {
      v5[5] = vextq_s8(*result, *result, 8uLL);
    }

    v5[4].i64[0] = *v15;
    v5[3].i64[0] = *(v15 + 2);
  }

  else if (v6 == -15610)
  {
    result[1].i64[1] = *a3;
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15444)
  {
    if (v6 <= -10180)
    {
      if (v6 > -15442)
      {
        if (v6 != -15441)
        {
          if (v6 == -10180)
          {
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            v5[5].i64[0] = *(result + 1);
          }

          return result;
        }

        v22 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v23 = *a3;
        v5->i64[1] = *(v22 + 1);
        v5[1].i64[0] = v23;
        v5->i32[1] = *(a3 + 8);
        v24 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v24;
        if (v24)
        {
          v5[4] = vextq_s8(*v24, *v24, 8uLL);
          v5[6].i32[0] = *(v24 + 4);
          v5[9] = vextq_s8(*(v24 + 24), *(v24 + 24), 8uLL);
          v5[10].i64[0] = *(v24 + 5);
        }

        v5[8].i64[1] = *v22;
        result = GTTraceFunc_argumentBytesWithMap(a3, v22[16], a2);
        v5[7].i64[0] = result;
        v11 = 1;
      }

      else if (v6 == -15443)
      {
        v19 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        v5->i64[1] = *(v19 + 1);
        v5[1].i64[0] = v20;
        v5->i32[1] = *(a3 + 8);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v21;
        if (v21)
        {
          v5[4] = vextq_s8(*v21, *v21, 8uLL);
          v5[6].i32[0] = *(v21 + 4);
          v5[9] = vextq_s8(*(v21 + 24), *(v21 + 24), 8uLL);
          v5[10].i64[0] = *(v21 + 5);
        }

        v5[8].i64[1] = *v19;
        result = GTTraceFunc_argumentBytesWithMap(a3, v19[16], a2);
        v5[7].i64[0] = result;
        v11 = 2;
      }

      else
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v5->i64[1] = *(v8 + 1);
        v5[1].i64[0] = v9;
        v5->i32[1] = *(a3 + 8);
        v10 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v10;
        if (v10)
        {
          v5[4] = vextq_s8(*v10, *v10, 8uLL);
          v5[6].i32[0] = *(v10 + 4);
          v5[9] = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
          v5[10].i64[0] = *(v10 + 5);
        }

        v5[8].i64[1] = *v8;
        result = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        v5[7].i64[0] = result;
        v11 = 4;
      }

      v5[10].i8[8] = v11;
      return result;
    }

    if (v6 > -10176)
    {
      if (v6 == -10175)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[9].i64[1] = *(result + 1);
      }

      else if (v6 == -10161)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[10].i64[0] = *(result + 1);
      }
    }

    else if (v6 == -10179)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[0] = *(result + 1);
    }

    else if (v6 == -10176)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[4].i64[1] = *(result + 1);
    }
  }

  else if (v6 > -15561)
  {
    if (v6 > -15541)
    {
      if (v6 == -15540)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v25 = *a3;
        v5->i64[1] = *(v16 + 1);
        v5[1].i64[0] = v25;
        v5->i32[1] = *(a3 + 8);
        v26 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v26;
        if (v26)
        {
          v5[4] = vextq_s8(*v26, *v26, 8uLL);
          v5[6].i32[0] = *(v26 + 4);
          v5[9] = vextq_s8(*(v26 + 24), *(v26 + 24), 8uLL);
          v5[10].i64[0] = *(v26 + 5);
        }

        v5[8].i64[0] = *v16;
        goto LABEL_52;
      }

      if (v6 == -15462)
      {
        v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v14 = *a3;
        v5->i64[1] = *(v13 + 1);
        v5[1].i64[0] = v14;
        v5->i32[1] = *(a3 + 8);
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v15;
        if (v15)
        {
          v5[4] = vextq_s8(*v15, *v15, 8uLL);
          v5[6].i32[0] = *(v15 + 4);
          v5[9] = vextq_s8(*(v15 + 24), *(v15 + 24), 8uLL);
          v5[10].i64[0] = *(v15 + 5);
        }

        v5[8].i64[1] = *v13;
        result = GTTraceFunc_argumentBytesWithMap(a3, v13[24], a2);
        v5[7].i64[0] = result;
        v5[10].i8[8] = *(v13 + 2);
      }
    }

    else if (v6 == -15560)
    {
      result[108] = 1;
    }

    else if (v6 == -15557)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v12 = *(result + 2);
      if (v12 != 1)
      {
        v5[6].i16[5] = v12;
      }
    }
  }

  else
  {
    if (v6 <= -15570)
    {
      if (v6 != -15577)
      {
        if (v6 == -15570)
        {
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v17 = *a3;
      v5->i64[1] = *(v16 + 1);
      v5[1].i64[0] = v17;
      v5->i32[1] = *(a3 + 8);
      v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      v5[7].i64[1] = v18;
      if (v18)
      {
        v5[4] = vextq_s8(*v18, *v18, 8uLL);
        v5[6].i32[0] = *(v18 + 4);
        v5[9] = vextq_s8(*(v18 + 24), *(v18 + 24), 8uLL);
        v5[10].i64[0] = *(v18 + 5);
      }

      v5[2].i64[1] = *v16;
LABEL_52:
      result = GTTraceFunc_argumentBytesWithMap(a3, v16[16], a2);
      v5[7].i64[0] = result;
      return result;
    }

    if (v6 == -15569)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[6].i32[0] = *(result + 2);
    }

    else if (v6 == -15568)
    {
      *(result + 3) = *a3;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 <= -15530)
  {
    if (v7 <= -15546)
    {
      if (v7 != -15559)
      {
        if (v7 == -15558)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          if (*(a1 + 176))
          {
            v25 = result;
            result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
            if (*(v25 + 2))
            {
              v26 = 0;
              v27 = 0;
              do
              {
                v28 = *(a1 + 176) + 16 * *(v25 + 1) + v26;
                v29 = *&result[8 * v27];
                *v28 = 1;
                *(v28 + 8) = v29;
                ++v27;
                v26 += 16;
              }

              while (*(v25 + 2) > v27);
            }
          }

          return result;
        }

        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v30 = *(a1 + 176);
      if (!v30)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v30 + 16 * *(result + 2);
      v16 = 1;
    }

    else
    {
      if (v7 == -15545)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v43 = *(result + 1);
        v44 = a1 + 192 + 24 * *(result + 3);
        *v44 = v43 != 0;
        *(v44 + 8) = v43;
        *(a1 + 192 + 24 * *(result + 3) + 16) = *(result + 2);
        return result;
      }

      if (v7 == -15544)
      {
        v31 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v32 = GTTraceFunc_argumentBytesWithMap(a3, v31[24], a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v31[25], a2);
        if (*(v31 + 2))
        {
          v33 = 0;
          v34 = a1 + 192;
          do
          {
            v35 = *&v32[8 * v33];
            v36 = v34 + 24 * (v33 + *(v31 + 1));
            *v36 = v35 != 0;
            *(v36 + 8) = v35;
            *(v34 + 24 * (v33 + *(v31 + 1)) + 16) = *&result[8 * v33];
            ++v33;
          }

          while (*(v31 + 2) > v33);
        }

        return result;
      }

      if (v7 != -15530)
      {
        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *(a1 + 176);
      if (!v13)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v13 + 16 * *(result + 2);
      v16 = 2;
    }

LABEL_52:
    *v15 = v16;
    *(v15 + 8) = v14;
    return result;
  }

  if (v7 > -15259)
  {
    if (v7 != -15258)
    {
      if (v7 == -15257)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (*(a1 + 176) && *(result + 3))
        {
          v39 = 0;
          v40 = 0;
          v41 = *(result + 1);
          do
          {
            v42 = *(a1 + 176) + 16 * *(result + 2) + v39;
            *v42 = 3;
            *(v42 + 8) = v41;
            ++v40;
            v39 += 16;
          }

          while (*(result + 3) > v40);
        }

        return result;
      }

      if (v7 == -10152)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        if (!a4)
        {
          return result;
        }

        v18 = GTTraceFunc_argumentBytesWithMap(a3, result[8], a2);
        v20 = *v18;
        result = v18 + 8;
        v19 = v20;
        if (!v20)
        {
          return result;
        }

        v21 = 0;
        v22 = a1 + 192;
        for (i = (a1 + 192); ; i += 6)
        {
          v24 = *&result[8 * v21];
          if (v24)
          {
            break;
          }

          *i = 0;
          if (v19 == ++v21)
          {
            return result;
          }
        }

        result = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
        if (result)
        {
          *&v50 = *(result + 2);
          *(&v50 + 1) = v24 - *result;
          if (result[24] == 7)
          {
            v52 = v22 + 24 * v21;
            *v52 = 2;
            *(v52 + 8) = v50;
            return result;
          }

          if (result[24])
          {
            return result;
          }
        }

        else
        {
          v50 = 0uLL;
        }

        v51 = v22 + 24 * v21;
        *v51 = 1;
        *(v51 + 8) = v50;
        return result;
      }

LABEL_54:

      return GTMTLSMIntersectionFunctionTable_processTraceFuncWithMap(a1, a2, a3);
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v49 = *(a1 + 176);
    if (!v49)
    {
      return result;
    }

    v14 = *(result + 1);
    v15 = v49 + 16 * *(result + 2);
    v16 = 3;
    goto LABEL_52;
  }

  if (v7 != -15529)
  {
    if (v7 == -15526)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v37 = *(result + 1);
      v38 = a1 + 24 * *(result + 2);
      *(v38 + 192) = 2 * (v37 != 0);
      *(v38 + 200) = v37;
      return result;
    }

    if (v7 == -15525)
    {
      v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithMap(a3, v8[24], a2);
      if (*(v8 + 2))
      {
        v10 = 0;
        do
        {
          v11 = *&result[8 * v10];
          v12 = a1 + 192 + 24 * (v10 + *(v8 + 1));
          *v12 = 2 * (v11 != 0);
          *(v12 + 8) = v11;
          ++v10;
        }

        while (*(v8 + 2) > v10);
      }

      return result;
    }

    goto LABEL_54;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  if (*(a1 + 176) && *(result + 3))
  {
    v45 = 0;
    v46 = 0;
    v47 = *(result + 1);
    do
    {
      v48 = *(a1 + 176) + 16 * *(result + 2) + v45;
      *v48 = 2;
      *(v48 + 8) = v47;
      ++v46;
      v45 += 16;
    }

    while (*(result + 3) > v46);
  }

  return result;
}

char *GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -15439)
  {
    if (v6 <= -15461)
    {
      if (v6 == -15607)
      {
        v15 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithMap(a3, v15[8], a2);
        *(v5 + 11) = result;
        return result;
      }

      if (v6 == -15605)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 != -15578)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 2);
      v9 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 15) = v9;
      if (v9)
      {
        *(v5 + 4) = vextq_s8(*v9, *v9, 8uLL);
        *(v5 + 24) = *(v9 + 4);
        *(v5 + 9) = *(v9 + 24);
        *(v5 + 10) = *(v9 + 40);
      }

      *(v5 + 16) = *v7;
      goto LABEL_42;
    }

    switch(v6)
    {
      case -15460:
        v16 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 2);
        v18 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v18;
        if (v18)
        {
          *(v5 + 4) = vextq_s8(*v18, *v18, 8uLL);
          *(v5 + 24) = *(v18 + 4);
          *(v5 + 9) = *(v18 + 24);
          *(v5 + 10) = *(v18 + 40);
        }

        *(v5 + 17) = *v16;
        v5[176] = *(v16 + 2);
        v19 = v16[24];
        goto LABEL_43;
      case -15440:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v20 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v20;
        *(v5 + 1) = *(a3 + 2);
        v21 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v21;
        if (v21)
        {
          *(v5 + 4) = vextq_s8(*v21, *v21, 8uLL);
          *(v5 + 24) = *(v21 + 4);
          *(v5 + 9) = *(v21 + 24);
          *(v5 + 10) = *(v21 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 2;
        break;
      case -15439:
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v10 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v10;
        *(v5 + 1) = *(a3 + 2);
        v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
        *(v5 + 15) = v11;
        if (v11)
        {
          *(v5 + 4) = vextq_s8(*v11, *v11, 8uLL);
          *(v5 + 24) = *(v11 + 4);
          *(v5 + 9) = *(v11 + 24);
          *(v5 + 10) = *(v11 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 4;
        break;
      default:
        return result;
    }

LABEL_41:
    v5[176] = v12;
LABEL_42:
    v19 = v7[16];
LABEL_43:
    result = GTTraceFunc_argumentBytesWithMap(a3, v19, a2);
    *(v5 + 14) = result;
    return result;
  }

  if (v6 > -10178)
  {
    if (v6 > -10161)
    {
      if (v6 == -10160)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 20) = *(result + 1);
      }

      else if (v6 == -10153)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
      }
    }

    else if (v6 == -10177)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10174)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    return result;
  }

  switch(v6)
  {
    case -15438:
      v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v13 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v13;
      *(v5 + 1) = *(a3 + 2);
      v14 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 14), a2);
      *(v5 + 15) = v14;
      if (v14)
      {
        *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
        *(v5 + 24) = *(v14 + 4);
        *(v5 + 9) = *(v14 + 24);
        *(v5 + 10) = *(v14 + 40);
      }

      *(v5 + 17) = *v7;
      v12 = 1;
      goto LABEL_41;
    case -10193:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 18) = *(result + 1);
      break;
    case -10178:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
      break;
  }

  return result;
}

char *GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 == -15597)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    if (*(a1 + 184))
    {
      v9 = result;
      result = GTTraceFunc_argumentBytesWithMap(a3, result[24], a2);
      if (*(v9 + 2))
      {
        v10 = 0;
        v11 = *(a1 + 184);
        do
        {
          *(v11 + 8 * *(v9 + 1) + 8 * v10) = *&result[8 * v10];
          ++v10;
        }

        while (*(v9 + 2) > v10);
      }
    }
  }

  else if (v6 == -15598)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v8 = *(a1 + 184);
    if (v8)
    {
      *(v8 + 8 * *(result + 2)) = *(result + 1);
    }
  }

  else
  {

    return GTMTLSMVisibleFunctionTable_processTraceFuncWithMap(a1, a2, a3);
  }

  return result;
}

char *GTMTLFXSMSpatialScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -20478)
  {
    if (v6 == -20480)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
      goto LABEL_17;
    }

    if (v6 == -20479)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 56;
      goto LABEL_17;
    }

    if (v6 != -20478)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v3 = result + 8;
  }

  else
  {
    if (v6 <= -20476)
    {
      if (v6 == -20477)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 72;
      }

      goto LABEL_17;
    }

    if (v6 == -20475)
    {
      v7 = 24;
      goto LABEL_17;
    }

    if (v6 != -18432)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    *(v5 + 5) = v10;
    result = GTTraceFunc_argumentBytesWithMap(v3, v8[16], a2);
    *(v5 + 6) = result;
    v3 = result + 8;
    *(v5 + 10) = *result;
  }

  v7 = 88;
LABEL_17:
  *&v5[v7] = *v3;
  return result;
}

float32_t GTMTLFXSMTemporalScaler_processTraceFuncWithMap(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -20473:
      *(a1 + 64) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20472:
      *(a1 + 148) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20471:
      *(a1 + 72) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20470:
      *(a1 + 88) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20469:
      *(a1 + 56) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20468:
      *(a1 + 120) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20467:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20466:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 128) = v7.i32[0];
      break;
    case -20465:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 132) = v7.i32[0];
      break;
    case -20464:
      *(a1 + 80) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20463:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 136) = v7.i32[0];
      break;
    case -20462:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 140) = v7.i32[0];
      break;
    case -20461:
      *(a1 + 96) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    case -20460:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      *(a1 + 144) = v7.i32[0];
      break;
    case -20459:
      *(a1 + 149) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 2);
      break;
    case -20458:
      *(a1 + 24) = *a3;
      break;
    case -20457:
      *(a1 + 149) = 0;
      break;
    case -20456:
      *(a1 + 104) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      break;
    default:
      if (v6 == -18430)
      {
        *(a1 + 150) = *(GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2) + 1);
      }

      else if (v6 == -18431)
      {
        v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v9 = *a3;
        v10 = *v8;
        *(a1 + 8) = *(v8 + 1);
        *(a1 + 16) = v9;
        *(a1 + 4) = *(a3 + 2);
        *(a1 + 40) = v10;
        v11 = GTTraceFunc_argumentBytesWithMap(a3, v8[16], a2);
        *(a1 + 48) = v11;
        *(a1 + 128) = 0;
        v12 = *(v11 + 1);
        *(a1 + 112) = v12;
        v7 = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(a1 + 136) = v7;
        *(a1 + 144) = 1065353216;
        *(a1 + 148) = 257;
      }

      break;
  }

  return v7.f32[0];
}

char *GTMTLFXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20337)
  {
    if (v6 <= -20332)
    {
      if (v6 <= -20335)
      {
        if (v6 == -20336)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 36) = *(result + 2);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 35) = *(result + 2);
        }
      }

      else if (v6 == -20334)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 31) = *(result + 2);
      }

      else if (v6 == -20333)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 34) = *(result + 2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 32) = *(result + 2);
      }
    }

    else if (v6 > -20329)
    {
      switch(v6)
      {
        case -20328:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
        case -20316:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[148] = *(result + 2);
          break;
        case -18429:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          *(v5 + 6) = result;
          v5[148] = 1;
          *(v5 + 14) = 0;
          break;
      }
    }

    else if (v6 == -20331)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 33) = *(result + 2);
    }

    else if (v6 == -20330)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 30) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[149] = *(result + 2);
    }
  }

  else if (v6 <= -20451)
  {
    if (v6 <= -20454)
    {
      if (v6 == -20455)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
      }

      else if (v6 == -20454)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
      }
    }

    else if (v6 == -20453)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
    }

    else if (v6 == -20452)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 11) = *(result + 1);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 28) = *(result + 2);
    }
  }

  else if (v6 > -20447)
  {
    switch(v6)
    {
      case -20446:
        *(result + 3) = *a3;
        break;
      case -20445:
        result[148] = 0;
        break;
      case -20350:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[150] = *(result + 2);
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case -20450:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 29) = *(result + 2);
        break;
      case -20449:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20448:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20349)
  {
    if (v6 <= -20315)
    {
      if (v6 == -20348)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -20315)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[333] = *(result + 2);
      }
    }

    else
    {
      switch(v6)
      {
        case -20314:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 20) = *(result + 1);
          break;
        case -18422:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[334] = *(result + 1);
          break;
        case -18428:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[16], a2);
          v10 = 0;
          *(v5 + 6) = result;
          *(v5 + 23) = 0;
          v11 = *(result + 24);
          *(v5 + 168) = v11;
          *(v5 + 24) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
          *(v5 + 50) = 1065353216;
          *(v5 + 166) = 257;
          do
          {
            if (v10 > 0xA || (v12 = 1.0, ((1 << v10) & 0x421) == 0))
            {
              if (v10 == 15)
              {
                v12 = 1.0;
              }

              else
              {
                v12 = 0.0;
              }
            }

            *&v5[4 * v10++ + 204] = v12;
          }

          while (v10 != 16);
          for (i = 0; i != 16; ++i)
          {
            if (i > 0xA || (v14 = 1.0, ((1 << i) & 0x421) == 0))
            {
              if (i == 15)
              {
                v14 = 1.0;
              }

              else
              {
                v14 = 0.0;
              }
            }

            *&v5[4 * i + 268] = v14;
          }

          break;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case -20444:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
        break;
      case -20443:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[332] = *(result + 2);
        break;
      case -20442:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
      case -20441:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 11) = *(result + 1);
        break;
      case -20440:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
      case -20439:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 7) = *(result + 1);
        break;
      case -20438:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 22) = *(result + 1);
        break;
      case -20437:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
        break;
      case -20436:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 46) = *(result + 2);
        break;
      case -20435:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 47) = *(result + 2);
        break;
      case -20434:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
        break;
      case -20433:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 48) = *(result + 2);
        break;
      case -20432:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 49) = *(result + 2);
        break;
      case -20431:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 13) = *(result + 1);
        break;
      case -20430:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 18) = *(result + 1);
        break;
      case -20429:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 50) = *(result + 2);
        break;
      case -20428:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 19) = *(result + 1);
        break;
      case -20426:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 14) = *(result + 1);
        break;
      case -20425:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20424:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 15) = *(result + 1);
        break;
      case -20423:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v18 = *(result + 24);
        v19 = *(result + 56);
        v20 = *(result + 8);
        *(v5 + 300) = *(result + 40);
        *(v5 + 316) = v19;
        *(v5 + 268) = v20;
        *(v5 + 284) = v18;
        break;
      case -20422:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v15 = *(result + 24);
        v16 = *(result + 40);
        v17 = *(result + 56);
        *(v5 + 204) = *(result + 8);
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        *(v5 + 220) = v15;
        break;
      case -20421:
        *(result + 3) = *a3;
        break;
      case -20420:
        result[333] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *GTMTL4FXSMSpatialScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -20402)
  {
    if (v6 <= -20327)
    {
      if (v6 == -20401)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        if (v6 != -20399)
        {
          return result;
        }

        v7 = 24;
      }

      goto LABEL_20;
    }

    if (v6 == -20326)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 104;
      goto LABEL_20;
    }

    if (v6 != -18427)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    v11 = *(v8 + 2);
    *(v5 + 5) = v10;
    *(v5 + 6) = v11;
    result = GTTraceFunc_argumentBytesWithMap(v3, v8[24], a2);
    *(v5 + 7) = result;
    v3 = result + 8;
    *(v5 + 11) = *result;
    goto LABEL_18;
  }

  if (v6 <= -20404)
  {
    if (v6 == -20405)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 72;
    }

    else
    {
      if (v6 != -20404)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
    }

    goto LABEL_20;
  }

  if (v6 == -20403)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v3 = result + 8;
LABEL_18:
    v7 = 96;
    goto LABEL_20;
  }

  result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v3 = result + 8;
  v7 = 88;
LABEL_20:
  *&v5[v7] = *v3;
  return result;
}

char *GTMTL4FXSMTemporalScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  switch(v6)
  {
    case -20369:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      break;
    case -20368:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[164] = *(result + 2);
      break;
    case -20367:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
      break;
    case -20366:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 12) = *(result + 1);
      break;
    case -20365:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
      break;
    case -20364:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 16) = *(result + 1);
      break;
    case -20363:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 15) = *(result + 1);
      break;
    case -20362:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 36) = *(result + 2);
      break;
    case -20361:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 37) = *(result + 2);
      break;
    case -20360:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 11) = *(result + 1);
      break;
    case -20359:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 38) = *(result + 2);
      break;
    case -20358:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 39) = *(result + 2);
      break;
    case -20357:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 13) = *(result + 1);
      break;
    case -20356:
    case -20350:
    case -20349:
    case -20348:
    case -20347:
    case -20346:
    case -20345:
    case -20344:
    case -20343:
    case -20342:
    case -20341:
    case -20340:
    case -20339:
    case -20338:
    case -20337:
    case -20336:
    case -20335:
    case -20334:
    case -20333:
    case -20332:
    case -20331:
    case -20330:
    case -20329:
    case -20328:
    case -20327:
    case -20326:
    case -20325:
      return result;
    case -20355:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 40) = *(result + 2);
      break;
    case -20354:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 14) = *(result + 1);
      break;
    case -20353:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[165] = *(result + 2);
      break;
    case -20352:
      *(result + 3) = *a3;
      break;
    case -20351:
      result[165] = 0;
      break;
    case -20324:
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 17) = *(result + 1);
      break;
    default:
      if (v6 == -18423)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[166] = *(result + 1);
      }

      else if (v6 == -18426)
      {
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 2);
        v10 = *(v7 + 2);
        *(v5 + 5) = v9;
        *(v5 + 6) = v10;
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
        *(v5 + 7) = result;
        *(v5 + 18) = 0;
        v11 = *(result + 1);
        *(v5 + 120) = v11;
        *(v5 + 19) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
        *(v5 + 40) = 1065353216;
        *(v5 + 82) = 257;
      }

      break;
  }

  return result;
}

char *GTMTL4FXSMFrameInterpolator_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -20346)
  {
    if (v6 <= -20414)
    {
      if (v6 <= -20418)
      {
        if (v6 == -20419)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else if (v6 == -20418)
        {
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[166] = *(result + 2);
        }
      }

      else
      {
        switch(v6)
        {
          case -20417:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 11) = *(result + 1);
            break;
          case -20416:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 8) = *(result + 1);
            break;
          case -20414:
            result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
            *(v5 + 12) = *(result + 1);
            break;
        }
      }
    }

    else if (v6 > -20410)
    {
      switch(v6)
      {
        case -20409:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
        case -20407:
          *(result + 3) = *a3;
          break;
        case -20406:
          result[164] = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20413:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 32) = *(result + 2);
          break;
        case -20412:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 33) = *(result + 2);
          break;
        case -20411:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20340)
  {
    if (v6 > -20328)
    {
      switch(v6)
      {
        case -20327:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -20319:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[164] = *(result + 2);
          break;
        case -18425:
          v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 2);
          v10 = *(v7 + 2);
          *(v5 + 5) = v9;
          *(v5 + 6) = v10;
          result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
          *(v5 + 7) = result;
          v5[164] = 1;
          *(v5 + 16) = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20339:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 34) = *(result + 2);
          break;
        case -20338:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          v5[165] = *(result + 2);
          break;
        case -20337:
          result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
          *(v5 + 14) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20343)
  {
    if (v6 == -20342)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 38) = *(result + 2);
    }

    else if (v6 == -20341)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 36) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 37) = *(result + 2);
    }
  }

  else if (v6 == -20345)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 40) = *(result + 2);
  }

  else if (v6 == -20344)
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 39) = *(result + 2);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    *(v5 + 35) = *(result + 2);
  }

  return result;
}

char *GTMTL4FXSMTemporalDenoisedScaler_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -20326)
  {
    if (v6 > -20318)
    {
      if (v6 == -20317)
      {
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 24) = *(result + 1);
      }

      else if (v6 == -18424)
      {
        v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 2);
        v10 = *(v7 + 2);
        *(v5 + 5) = v9;
        *(v5 + 6) = v10;
        result = GTTraceFunc_argumentBytesWithMap(a3, v7[24], a2);
        v11 = 0;
        *(v5 + 7) = result;
        *(v5 + 25) = 0;
        v12 = *(result + 24);
        *(v5 + 168) = v12;
        *(v5 + 26) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(v5 + 54) = 1065353216;
        *(v5 + 174) = 257;
        do
        {
          if (v11 > 0xA || (v13 = 1.0, ((1 << v11) & 0x421) == 0))
          {
            if (v11 == 15)
            {
              v13 = 1.0;
            }

            else
            {
              v13 = 0.0;
            }
          }

          *&v5[4 * v11++ + 220] = v13;
        }

        while (v11 != 16);
        for (i = 0; i != 16; ++i)
        {
          if (i > 0xA || (v15 = 1.0, ((1 << i) & 0x421) == 0))
          {
            if (i == 15)
            {
              v15 = 1.0;
            }

            else
            {
              v15 = 0.0;
            }
          }

          *&v5[4 * i + 284] = v15;
        }
      }
    }

    else if (v6 == -20325)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      *(v5 + 23) = *(result + 1);
    }

    else if (v6 == -20318)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v5[349] = *(result + 2);
    }
  }

  else
  {
    switch(v6)
    {
      case -20397:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
      case -20396:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 20) = *(result + 1);
        break;
      case -20395:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v5[348] = *(result + 2);
        break;
      case -20394:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
        break;
      case -20393:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20392:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
      case -20391:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
        break;
      case -20390:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 22) = *(result + 1);
        break;
      case -20389:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
        break;
      case -20388:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 50) = *(result + 2);
        break;
      case -20387:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 51) = *(result + 2);
        break;
      case -20386:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 11) = *(result + 1);
        break;
      case -20385:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 52) = *(result + 2);
        break;
      case -20384:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 53) = *(result + 2);
        break;
      case -20383:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 14) = *(result + 1);
        break;
      case -20382:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 18) = *(result + 1);
        break;
      case -20380:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -20378:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 19) = *(result + 1);
        break;
      case -20376:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 15) = *(result + 1);
        break;
      case -20375:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 13) = *(result + 1);
        break;
      case -20374:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
        break;
      case -20373:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v19 = *(result + 24);
        v20 = *(result + 56);
        v21 = *(result + 8);
        *(v5 + 316) = *(result + 40);
        *(v5 + 332) = v20;
        *(v5 + 284) = v21;
        *(v5 + 300) = v19;
        break;
      case -20372:
        result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
        v16 = *(result + 24);
        v17 = *(result + 40);
        v18 = *(result + 56);
        *(v5 + 220) = *(result + 8);
        *(v5 + 268) = v18;
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        break;
      case -20371:
        *(result + 3) = *a3;
        break;
      case -20370:
        result[349] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *GTMTLSMResidencySet_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 2) == -15245)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v7 = *a3;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v6[24], a2);
    *(v5 + 5) = *v6;
    *(v5 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMIOHandle_processTraceFuncWithMap(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 > -15261)
  {
    if (v6 == -15260)
    {
LABEL_8:
      v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v12 = *a3;
      *(v5 + 8) = *(v11 + 1);
      *(v5 + 16) = v12;
      *(v5 + 4) = *(a3 + 2);
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

  v7 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
  v8 = *a3;
  *(v5 + 8) = *(v7 + 1);
  *(v5 + 16) = v8;
  *(v5 + 4) = *(a3 + 2);
  v9 = g_loadURLAsMemHeader;
  v10 = v7[24];
LABEL_9:
  if (v9 == 1)
  {
    result = GTTraceFunc_argumentBlobWithMap(a3, v10, a2);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithMap(a3, v10, a2);
  }

  *(v5 + 48) = result;
  return result;
}

char *GTMTLSMTextureViewPool_processTraceFuncWithMap(char *result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a3 + 2);
  if (v6 <= -14970)
  {
    if (v6 != -15189)
    {
      if (v6 != -14970)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = result + 16;
      v9 = *(result + 3);
      *(v5 + 10) = 1;
      *(v5 + 11) = v9;
      v10 = *(result + 1);
      goto LABEL_11;
    }

    v13 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    v14 = *a3;
    *(v5 + 1) = *(v13 + 1);
    *(v5 + 2) = v14;
    *(v5 + 1) = *(a3 + 2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v13[24], a2);
    *(v5 + 5) = *v13;
    *(v5 + 6) = result;
    *(v5 + 7) = *result;
  }

  else
  {
    if (v6 == -14969)
    {
      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
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

      result = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
      v7 = result + 8;
      v8 = *(result + 6);
      goto LABEL_10;
    }

    v11 = GTTraceFunc_argumentBytesWithMap(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithMap(a3, v11[56], a2);
    *(v5 + 10) = *(v11 + 6);
    v12 = *(v11 + 1);
    *(v5 + 11) = *(v11 + 3);
    *(v5 + 12) = v12;
    ++*(v5 + 8);
    *(v5 + 9) = result;
  }

  return result;
}

char *GTMTLSMBuffer_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15915)
  {
    if (v6 > -16314)
    {
      if (v6 > -16164)
      {
        switch(v6)
        {
          case -16163:
            v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v22 = *a3;
            *(v5 + 1) = *(v16 + 1);
            *(v5 + 2) = v22;
            *(v5 + 1) = *(a3 + 8);
            v23 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
            *(v5 + 20) = v23;
            if (v23)
            {
              *(v5 + 4) = vextq_s8(*v23, *v23, 8uLL);
              *(v5 + 24) = *(v23 + 4);
              *(v5 + 15) = *(v23 + 3);
              *(v5 + 136) = *(v23 + 2);
            }

            result = GTTraceFunc_argumentBytesWithPool(a3, v16[16], a2);
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
            v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v9 = *a3;
            v10 = *(v8 + 2);
            *(v5 + 1) = *(v8 + 1);
            *(v5 + 2) = v9;
            *(v5 + 1) = *(a3 + 8);
            *(v5 + 52) = *(v8 + 3);
            *(v5 + 14) = v10;
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v17 = *a3;
        v18 = *(v16 + 2);
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 52) = *(v16 + 3);
        *(v5 + 14) = v18;
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
          v30 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v30[8], a2);
          *(v5 + 11) = result;
        }

        else if (v6 == -16371)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -10223:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
          break;
        case -10210:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
      }

      return result;
    }

    if (v6 == -10203)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      return result;
    }

    if (v6 == -10187)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
      return result;
    }

    if (v6 != -10186)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v11 = *(result + 8);
LABEL_44:
    *(v5 + 136) = v11;
    return result;
  }

  if (v6 > -15510)
  {
    if (v6 == -15509)
    {
      v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v20 = *a3;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 8);
      v21 = GTTraceFunc_argumentBytesWithPool(a3, v19[16], a2);
      *(v5 + 52) = *(v21 + 16);
      *(v5 + 14) = *v21;
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 2);
      }

      return result;
    }

    goto LABEL_40;
  }

  if (v6 == -15914)
  {
    v25 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v26 = *a3;
    v27 = *v25;
    *(v5 + 1) = *(v25 + 1);
    *(v5 + 2) = v26;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = *(v25 + 2);
    *(v5 + 16) = v27;
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    v28 = *(result + 3);
    *(v5 + 14) = *(result + 2);
    *(v5 + 52) = v28;
  }

  else if (v6 == -15778)
  {
    v12 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v13 = *a3;
    v14 = *(v12 + 2);
    *(v5 + 1) = *(v12 + 1);
    *(v5 + 2) = v13;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 52) = *(v12 + 3);
    *(v5 + 14) = v14;
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

char *GTMTLSMTensor_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
          v12 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 8);
          v14 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
          *(v5 + 15) = v14;
          if (v14)
          {
            *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
            *(v5 + 24) = *(v14 + 4);
            *(v5 + 39) = *(v14 + 5);
            *(v5 + 296) = *(v14 + 24);
          }

          result = GTTraceFunc_argumentBytesWithPool(a3, v12[24], a2);
          *(v5 + 14) = result;
          break;
        case -14950:
          v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v15[8], a2);
          *(v5 + 11) = result;
          break;
        case -14949:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v9 = *a3;
        *(v5 + 1) = *(v8 + 1);
        *(v5 + 2) = v9;
        *(v5 + 1) = *(a3 + 8);
        v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 15) = v10;
        if (v10)
        {
          *(v5 + 4) = vextq_s8(*v10, *v10, 8uLL);
          *(v5 + 24) = *(v10 + 4);
          *(v5 + 39) = *(v10 + 5);
          *(v5 + 296) = *(v10 + 24);
        }

        result = GTTraceFunc_argumentBytesWithPool(a3, v8[32], a2);
        *(v5 + 14) = result;
        v11 = *(v8 + 2);
        *(v5 + 16) = *v8;
        *(v5 + 17) = v11;
        break;
      case -10148:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 2);
        break;
      case -10147:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  else if (v6 > -10145)
  {
    if (v6 == -10144)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 39) = *(result + 1);
    }

    else if (v6 == -10143)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -10146)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 37) = *(result + 1);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 38) = *(result + 1);
  }

  return result;
}

int8x16_t *GTMTLSMTexture_processTraceFuncWithPool(int8x16_t *result, uint64_t a2, uint64_t a3)
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
            v83 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v84 = *a3;
            v5->i64[1] = *(v83 + 1);
            v5[1].i64[0] = v84;
            v5->i32[1] = *(a3 + 8);
            v85 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

            result = GTTraceFunc_argumentBytesWithPool(a3, v83[16], a2);
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
            v42 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v43 = *a3;
            v5->i64[1] = *(v42 + 1);
            v5[1].i64[0] = v43;
            v5->i32[1] = *(a3 + 8);
            v44 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

            result = GTTraceFunc_argumentBytesWithPool(a3, v42[40], a2);
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
          v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v123 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v123;
          v5->i32[1] = *(a3 + 8);
          v124 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, v35, a2);
          v5[7].i64[0] = result;
          goto LABEL_138;
        }

        if (v6 != -16031)
        {
          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v55 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v55;
        v5->i32[1] = *(a3 + 8);
        v56 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

        result = GTTraceFunc_argumentBytesWithPool(a3, v29[41], a2);
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
            v103 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v104 = *a3;
            v5->i64[1] = *(v103 + 1);
            v5[1].i64[0] = v104;
            v5->i32[1] = *(a3 + 8);
            v105 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

            result = GTTraceFunc_argumentBytesWithPool(a3, v103[24], a2);
            v5[7].i64[0] = result;
            v5[2].i64[1] = *v103;
            v5[14].i8[6] = 1;
          }

          else if (v6 == -15913)
          {
            v12 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v13 = *a3;
            v5->i64[1] = *(v12 + 1);
            v5[1].i64[0] = v13;
            v5->i32[1] = *(a3 + 8);
            v14 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
            v18 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
            result = GTTraceFunc_argumentBytesWithPool(a3, v18[24], a2);
            v5[7].i64[0] = result;
          }

          return result;
        }

        v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v113 = *a3;
        v5->i64[1] = *(v29 + 1);
        v5[1].i64[0] = v113;
        v5->i32[1] = *(a3 + 8);
        v114 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

        result = GTTraceFunc_argumentBytesWithPool(a3, v29[49], a2);
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
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
            v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v109 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v109;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

            v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v8 = *a3;
            v5->i64[1] = *(v7 + 1);
            v5[1].i64[0] = v8;
            v5->i32[1] = *(a3 + 8);
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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

          v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v30 = *a3;
          v5->i64[1] = *(v29 + 1);
          v5[1].i64[0] = v30;
          v5->i32[1] = *(a3 + 8);
          v31 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v61 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v62 = *a3;
        v5->i64[1] = *(v61 + 1);
        v5[1].i64[0] = v62;
        v5->i32[1] = *(a3 + 8);
        v63 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

        result = GTTraceFunc_argumentBytesWithPool(a3, v61[32], a2);
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
          v41 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v41[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v89 = *a3;
      v5->i64[1] = *(v29 + 1);
      v5[1].i64[0] = v89;
      v5->i32[1] = *(a3 + 8);
      v90 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      v5[7].i64[0] = GTTraceFunc_argumentBytesWithPool(a3, v29[24], a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v29[25], a2);
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
          v122 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v122[8], a2);
          v5[7].i64[1] = result;
        }

        else if (v6 == -10227)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[11].i64[0] = result->i64[1];
        }
      }

      else
      {
        switch(v6)
        {
          case -10222:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v5[4].i64[0] = result->u32[2];
            break;
          case -10212:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v5[5].i64[0] = result->i64[1];
            break;
          case -10205:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[3].i64[1] = result->i64[1];
        return result;
      }

      if (v6 != -10164)
      {
        if (v6 == -7167)
        {
          v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v20 = *a3;
          v5->i64[1] = *(v19 + 1);
          v5[1].i64[0] = v20;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v94 = result->i64[1];
LABEL_110:
      v5[13].i64[0] = v94;
      return result;
    }

    if (v6 == -10204)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[4].i64[1] = result->i64[1];
      return result;
    }

    if (v6 != -10198)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        v95 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v96 = *a3;
        v5->i64[1] = *(v95 + 2);
        v5[1].i64[0] = v96;
        v5->i32[1] = *(a3 + 8);
        v97 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, v95[56], a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[6].i32[1] = result->i32[2];
        }

        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v78 = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
      v79 = *a3;
      v5->i64[1] = *(v7 + 1);
      v5[1].i64[0] = v79;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v48 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v49 = GTTraceFunc_argumentBytesWithPool(a3, v48[40], a2);
        v50 = *a3;
        v5->i64[1] = *(v48 + 2);
        v5[1].i64[0] = v50;
        v5->i32[1] = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

    v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v118 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v118;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
      v74 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v75 = *a3;
      v5->i64[1] = *(v74 + 1);
      v5[1].i64[0] = v75;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

    v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v37 = *a3;
    v5->i64[1] = *(v36 + 1);
    v5[1].i64[0] = v37;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v24 = *a3;
    v5->i64[1] = *(v7 + 1);
    v5[1].i64[0] = v24;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

  v67 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
  v68 = *a3;
  v5->i64[1] = *(v67 + 1);
  v5[1].i64[0] = v68;
  v5->i32[1] = *(a3 + 8);
  v69 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

  result = GTTraceFunc_argumentBytesWithPool(a3, v67[24], a2);
  v5[7].i64[0] = result;
  v73 = *(v67 + 2);
  v5[3].i64[0] = *v67;
  v5[3].i64[1] = v73;
  return result;
}

int8x16_t *GTMTLSMIndirectCommandBuffer_processTraceFuncWithPool(int8x16_t *result, uint64_t a2, uint64_t a3)
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[5].i64[0] = result->i64[1];
          break;
        case -10202:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[4].i64[1] = result->i64[1];
          break;
        case -10166:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[8].i64[0] = result->i64[1];
          break;
        case -10215:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[6].i32[0] = result->i32[2];
        break;
      case -15923:
        result[1].i64[1] = *a3;
        break;
      case -15920:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
    v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v10 = *a3;
    v11 = *v9;
    v5->i64[1] = *(v9 + 1);
    v5[1].i64[0] = v10;
    v5->i32[1] = *(a3 + 8);
    v5[2].i64[1] = v11;
    v5[7].i64[0] = GTTraceFunc_argumentBytesWithPool(a3, v9[32], a2);
    v12 = *(v9 + 3);
    v5[9].i32[0] = *(v9 + 2);
    v5[6].i16[4] = v12;
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[8], a2);
    v5[5].i64[1] = result;
  }

  return result;
}

char *GTMTLSMHeap_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -16116)
  {
    switch(v6)
    {
      case -16120:
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v9;
        result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
        *(v5 + 6) = result;
        break;
      case -16119:
        v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v11[8], a2);
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
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10207)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
    }
  }

  else if (v6 == -16115)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v10 = *(result + 2);
    if (v10 != 1)
    {
      *(v5 + 44) = v10;
    }
  }

  else if (v6 == -10211)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 8) = *(result + 1);
  }

  return result;
}

char *GTMTLSMDepthStencilState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -10151)
  {
    if (v6 == -10150)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -10149)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }
  }

  else if (v6 == -16320)
  {
    *(result + 3) = *a3;
  }

  else if (v6 == -16311)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 8);
    v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    *(v5 + 7) = v9;
    if (v9)
    {
      *(v5 + 4) = *v9;
    }

    *(v5 + 5) = *v7;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMSamplerState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -10227)
  {
    if (v6 == -10226)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -10163)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }
  }

  else if (v6 == -16309)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 8);
    v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    *(v5 + 7) = v9;
    if (v9)
    {
      *(v5 + 10) = *(v9 + 2);
      *(v5 + 4) = *v9;
    }

    *(v5 + 5) = *v7;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
    *(v5 + 6) = result;
  }

  else if (v6 == -16241)
  {
    *(result + 3) = *a3;
  }

  return result;
}

char *GTMTLSMEvent_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  switch(v5)
  {
    case -15879:
      *(result + 3) = *a3;
      break;
    case -15880:
      v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v9[8], a2);
      *(v4 + 6) = result;
      break;
    case -15997:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v7;
      *(v4 + 1) = *(a3 + 8);
      *(v4 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTLSMSharedEvent_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15974)
  {
    switch(v6)
    {
      case -15996:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v11 = *a3;
        v12 = *result;
        *(v5 + 1) = *(result + 1);
        *(v5 + 2) = v11;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v12;
        v13 = *(result + 2);
        *(v5 + 18) = *(result + 6);
        *(v5 + 7) = v13;
        *(v5 + 8) = 0;
        return result;
      case -15975:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v9 = *(result + 1);
LABEL_17:
        *(v5 + 8) = v9;
        return result;
      case -15974:
        v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v10[8], a2);
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

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v8;
      *(v5 + 18) = *(result + 6);
      v9 = *(result + 2);
      goto LABEL_17;
    }

    if (v6 == -15909)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v14 = *a3;
      v15 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v14;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v15;
      *(v5 + 18) = *(result + 8);
      v16 = *(result + 3);
      *(v5 + 7) = *(result + 2);
      *(v5 + 8) = v16;
    }

    else if (v6 == -15907)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
    }
  }

  return result;
}

char *GTMTLSMLateEvalEvent_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15491)
  {
    if (v6 == -15490)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    else if (v6 == -15489)
    {
      *(result + 3) = *a3;
    }
  }

  else if (v6 == -15496)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *result;
    *(v5 + 1) = *(result + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v9;
    *(v5 + 8) = 0;
  }

  else if (v6 == -15491)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[8], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMFence_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  switch(v6)
  {
    case -16136:
      v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v9[8], a2);
      *(v5 + 6) = result;
      break;
    case -16127:
      *(result + 3) = *a3;
      break;
    case -16128:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTLSMCounterSampleBuffer_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == -15848)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v7 = *a3;
    v8 = *v6;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v8;
    result = GTTraceFunc_argumentBytesWithPool(a3, v6[24], a2);
    *(v5 + 6) = result;
  }

  return result;
}

char *GTMTLSMRenderPipelineState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15406)
  {
    if (v6 > -14837)
    {
      if (v6 > -10185)
      {
        switch(v6)
        {
          case -10184:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 109) = *(result + 1);
            break;
          case -10172:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 53) = *(result + 1);
            break;
          case -10165:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 17) = *(result + 1);
            break;
        }

        return result;
      }

      if (v6 != -14836)
      {
        if (v6 == -10220)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        else if (v6 == -10192)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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

          v13 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v14 = *a3;
          v15 = *v13;
          *(v5 + 1) = *(v13 + 1);
          *(v5 + 2) = v14;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v15;
          v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, v18, a2);
          *(v5 + 9) = result;
          return result;
        }

LABEL_46:
        v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v46 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v47 = *a3;
        v48 = *v46;
        *(v5 + 1) = *(v46 + 1);
        *(v5 + 2) = v47;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v48;
        v49 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

        *(v5 + 11) = GTTraceFunc_argumentBytesWithPool(a3, v46[24], a2);
        v35 = v46[25];
        goto LABEL_61;
      }

      if (v6 != -14867)
      {
        return result;
      }
    }

    v30 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v31 = *a3;
    v32 = *v30;
    *(v5 + 1) = *(v30 + 1);
    *(v5 + 2) = v31;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v32;
    v33 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

    *(v5 + 11) = GTTraceFunc_argumentBytesWithPool(a3, v30[24], a2);
    *(v5 + 12) = GTTraceFunc_argumentBytesWithPool(a3, v30[25], a2);
    v35 = v30[26];
LABEL_61:
    result = GTTraceFunc_argumentBytesWithPool(a3, v35, a2);
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
          v25 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v26 = *a3;
          v27 = *v25;
          *(v5 + 1) = *(v25 + 1);
          *(v5 + 2) = v26;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v27;
          v28 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, v24, a2);
          *(v5 + 8) = result;
          return result;
        }

        if (v6 != -16088)
        {
          return result;
        }
      }

      v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 1) = *(v19 + 1);
      *(v5 + 2) = v20;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v21;
      v22 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
      v56 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v57 = *a3;
      v58 = *v56;
      *(v5 + 1) = *(v56 + 1);
      *(v5 + 2) = v57;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v58;
      v59 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      result = GTTraceFunc_argumentBytesWithPool(a3, v56[32], a2);
      *(v5 + 14) = result;
      return result;
    }

    if (v6 == -15461)
    {
      v51 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v52 = *a3;
      v53 = *v51;
      *(v5 + 1) = *(v51 + 1);
      *(v5 + 2) = v52;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v53;
      v54 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      result = GTTraceFunc_argumentBytesWithPool(a3, v51[24], a2);
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
      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v9;
      v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
      result = GTTraceFunc_argumentBytesWithPool(a3, v12, a2);
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
    v41 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v42 = *a3;
    v43 = *v41;
    *(v5 + 1) = *(v41 + 1);
    *(v5 + 2) = v42;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v43;
    v44 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

char *GTMTLSMComputePipelineState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
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
          v30 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v31 = *a3;
          v32 = *v30;
          *(v5 + 1) = *(v30 + 1);
          *(v5 + 2) = v31;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v32;
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v37 = *a3;
        v38 = *v36;
        *(v5 + 1) = *(v36 + 1);
        *(v5 + 2) = v37;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v38;
        v39 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, v43, a2);
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
          v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v17 = *a3;
          v18 = *v16;
          *(v5 + 1) = *(v16 + 1);
          *(v5 + 2) = v17;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v18;
          v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

          *(v5 + 12) = GTTraceFunc_argumentBytesWithPool(a3, v16[24], a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v16[25], a2);
          *(v5 + 13) = result;
        }

        return result;
      }

      goto LABEL_43;
    }

    v51 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v52 = *a3;
    v53 = *v51;
    *(v5 + 1) = *(v51 + 1);
    *(v5 + 2) = v52;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v53;
    v54 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -15740)
      {
        v23 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 1) = *(v23 + 1);
        *(v5 + 2) = v24;
        *(v5 + 1) = *(a3 + 8);
        *(v5 + 5) = v25;
        v26 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

        result = GTTraceFunc_argumentBytesWithPool(a3, v23[32], a2);
        *(v5 + 14) = result;
      }
    }

    else if (v6 == -15541)
    {
      v58 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v59 = *a3;
      v60 = *v58;
      *(v5 + 1) = *(v58 + 1);
      *(v5 + 2) = v59;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v60;
      v61 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      result = GTTraceFunc_argumentBytesWithPool(a3, v58[24], a2);
      *(v5 + 26) = result;
    }

    else if (v6 == -15141 || v6 == -15140)
    {
      v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v9 = *a3;
      v10 = *v8;
      *(v5 + 1) = *(v8 + 1);
      *(v5 + 2) = v9;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v10;
      v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      *(v5 + 9) = GTTraceFunc_argumentBytesWithPool(a3, v8[24], a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
        }

        return result;
      }

      v44 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v45 = *a3;
      v46 = *v44;
      *(v5 + 1) = *(v44 + 1);
      *(v5 + 2) = v45;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v46;
      v47 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

      *(v5 + 9) = GTTraceFunc_argumentBytesWithPool(a3, v44[24], a2);
      *(v5 + 10) = GTTraceFunc_argumentBytesWithPool(a3, v44[25], a2);
      v15 = v44[26];
LABEL_49:
      result = GTTraceFunc_argumentBytesWithPool(a3, v15, a2);
      *(v5 + 11) = result;
      return result;
    }

    switch(v6)
    {
      case -10191:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -10171:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 25) = *(result + 1);
        break;
      case -10162:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTL4SMMachineLearningPipelineState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 == -14869)
  {
LABEL_4:
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v9;
    *(v5 + 7) = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
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

char *GTMTLSMMotionEstimationPipelineState_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -15893)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15891)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 8);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
    *(v4 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMFunction_processTraceFuncWithPool(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
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
            v45 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v46 = *a3;
            v47 = *v45;
            *(v5 + 8) = *(v45 + 1);
            *(v5 + 16) = v46;
            *(v5 + 4) = *(a3 + 8);
            *(v5 + 40) = v47;
            v48 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
            *(v5 + 80) = v48;
            if (v48)
            {
              v49 = *v48;
            }

            else
            {
              v49 = 0;
            }

            *(v5 + 64) = v49;
            v62 = v45[32];
          }

          else
          {
            if (v6 != -15550)
            {
              return result;
            }

            v12 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v13 = *a3;
            v14 = *v12;
            *(v5 + 8) = *(v12 + 1);
            *(v5 + 16) = v13;
            *(v5 + 4) = *(a3 + 8);
            *(v5 + 40) = v14;
            v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

          result = GTTraceFunc_argumentBytesWithPool(a3, v62, a2);
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
        v23 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v24 = *a3;
        v25 = *v23;
        *(v5 + 8) = *(v23 + 1);
        *(v5 + 16) = v24;
        *(v5 + 4) = *(a3 + 8);
        *(v5 + 40) = v25;
        v26 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
LABEL_75:
        result = GTTraceFunc_argumentBytesWithPool(a3, v17, a2);
        *(v5 + 112) = result;
        return result;
      }

LABEL_39:
      v33 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v34 = *a3;
      v35 = *v33;
      *(v5 + 8) = *(v33 + 1);
      *(v5 + 16) = v34;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v35;
      v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        if (v43 < 0x40)
        {
          Header = 0;
        }

        else
        {
          Header = GTTraceMemPool_findHeader(a2, *a3, v43);
        }
      }

      else
      {
        Header = GTTraceFunc_argumentBytesWithPool(a3, v33[24], a2);
      }

      *(v5 + 88) = Header;
      v61 = v33[25];
      if (g_loadURLAsMemHeader == 1)
      {
        if (v61 < 0x40)
        {
          result = 0;
        }

        else
        {
          result = GTTraceMemPool_findHeader(a2, *a3, v61);
        }
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, v33[25], a2);
      }

      *(v5 + 96) = result;
      goto LABEL_72;
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

        v17 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2)[16];
        goto LABEL_75;
      }

      goto LABEL_39;
    }

LABEL_41:
    v33 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v38 = *a3;
    v39 = *v33;
    *(v5 + 8) = *(v33 + 1);
    *(v5 + 16) = v38;
    *(v5 + 4) = *(a3 + 8);
    *(v5 + 40) = v39;
    v40 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
      if (v42 < 0x40)
      {
        result = 0;
      }

      else
      {
        result = GTTraceMemPool_findHeader(a2, *a3, v42);
      }
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, v33[24], a2);
    }

    *(v5 + 88) = result;
LABEL_72:
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
        v18 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v19 = *a3;
        v20 = *v18;
        *(v5 + 8) = *(v18 + 1);
        *(v5 + 16) = v19;
        *(v5 + 4) = *(a3 + 8);
        *(v5 + 40) = v20;
        v21 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, v18[16], a2);
        *(v5 + 56) = result;
      }
    }

    else if (v6 == -16123)
    {
      v55 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v55[8], a2);
      *(v5 + 64) = result;
    }

    else if (v6 == -16107 || v6 == -16106)
    {
      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v5 + 8) = *(v7 + 1);
      *(v5 + 16) = v8;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v9;
      v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
      *(v5 + 56) = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v7[25], a2);
      *(v5 + 72) = result;
    }

    return result;
  }

  if (v6 > -16039)
  {
    if (v6 == -16038)
    {
      v56 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v57 = *a3;
      v58 = *v56;
      *(v5 + 8) = *(v56 + 1);
      *(v5 + 16) = v57;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v58;
      v59 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v59;
      if (v59)
      {
        v60 = *v59;
      }

      else
      {
        v60 = 0;
      }

      *(v5 + 64) = v60;
      result = GTTraceFunc_argumentBytesWithPool(a3, v56[16], a2);
      *(v5 + 56) = result;
      *(v5 + 131) = 1;
      return result;
    }

    if (v6 == -15830)
    {
      v50 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v51 = *a3;
      v52 = *v50;
      *(v5 + 8) = *(v50 + 1);
      *(v5 + 16) = v51;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v52;
      v53 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v53;
      if (v53)
      {
        v54 = *v53;
      }

      else
      {
        v54 = 0;
      }

      *(v5 + 64) = v54;
      *(v5 + 56) = GTTraceFunc_argumentBytesWithPool(a3, v50[18], a2);
      *(v5 + 132) = 1;
      v63 = v50[16];
      if (g_loadURLAsMemHeader == 1)
      {
        if (v63 < 0x40)
        {
          result = 0;
        }

        else
        {
          result = GTTraceMemPool_findHeader(a2, *a3, v63);
        }
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, v50[16], a2);
      }

      *(v5 + 104) = result;
      *(v5 + 130) = v50[17];
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
    v28 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v29 = *a3;
    v30 = *v28;
    *(v5 + 8) = *(v28 + 1);
    *(v5 + 16) = v29;
    *(v5 + 4) = *(a3 + 8);
    *(v5 + 40) = v30;
    v31 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
    *(v5 + 56) = GTTraceFunc_argumentBytesWithPool(a3, v28[32], a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v28[33], a2);
    *(v5 + 72) = result;
    *(v5 + 48) = *(v28 + 2);
  }

  return result;
}

char *GTMTLSMIndirectComputeCommand_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
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

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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

char *GTMTLSMIndirectRenderCommand_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
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

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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

char *GTMTL4SMCompiler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == -15194)
  {
    v5 = result;
    v6 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v7 = *a3;
    v8 = *v6;
    *(v5 + 1) = *(v6 + 1);
    *(v5 + 2) = v7;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v8;
    result = GTTraceFunc_argumentBytesWithPool(a3, v6[24], a2);
    *(v5 + 6) = result;
  }

  return result;
}

uint64_t GTMTLSMLibrary_processTraceFuncWithPool(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -16019)
  {
    if (v6 <= -16293)
    {
      if (v6 > -16307)
      {
        if (v6 == -16306)
        {
          v45 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v46 = *a3;
          v47 = *v45;
          *(v5 + 8) = *(v45 + 1);
          *(v5 + 16) = v46;
          *(v5 + 4) = *(a3 + 8);
          *(v5 + 40) = v47;
          v48 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
            if (v49 < 0x40)
            {
              result = 0;
            }

            else
            {
              result = GTTraceMemPool_findHeader(a2, *a3, v49);
            }
          }

          else
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, v45[24], a2);
          }

          *(v5 + 112) = result;
        }

        else if (v6 == -16305 || v6 == -16304)
        {
          v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v20 = *a3;
          v21 = *v19;
          *(v5 + 8) = *(v19 + 1);
          *(v5 + 16) = v20;
          *(v5 + 4) = *(a3 + 8);
          *(v5 + 40) = v21;
          v22 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
            if (v23 < 0x40)
            {
              Header = 0;
            }

            else
            {
              Header = GTTraceMemPool_findHeader(a2, *a3, v23);
            }
          }

          else
          {
            Header = GTTraceFunc_argumentBytesWithPool(a3, v19[24], a2);
          }

          *(v5 + 112) = Header;
          result = GTTraceFunc_argumentBytesWithPool(a3, v19[25], a2);
          *(v5 + 120) = result;
        }

        return result;
      }

      if (v6 == -16308)
      {
        v55 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v56 = *a3;
        v57 = *v55;
        *(v5 + 8) = *(v55 + 1);
        *(v5 + 16) = v56;
        *(v5 + 4) = *(a3 + 8);
        *(v5 + 40) = v57;
        v58 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 80) = v58;
        if (v58)
        {
          *(v5 + 144) = *(v58 + 1);
          *(v5 + 176) = v58[16];
        }

        *(v5 + 177) = 0;
        v18 = v55[16];
LABEL_73:
        result = GTTraceFunc_argumentBytesWithPool(a3, v18, a2);
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

      v36 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v37 = *a3;
      v38 = *v36;
      *(v5 + 8) = *(v36 + 1);
      *(v5 + 16) = v37;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v38;
      v39 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v39;
      if (v39)
      {
        *(v5 + 144) = *(v39 + 1);
        *(v5 + 176) = v39[16];
      }

      *(v5 + 177) = 1;
      result = GTTraceFunc_argumentBytesWithPool(a3, v36[24], a2);
      *(v5 + 112) = result;
    }

    else
    {
      if (v6 <= -16084)
      {
        if (v6 == -16292)
        {
          v67 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v67[8], a2);
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

        v14 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v15 = *a3;
        v16 = *v14;
        *(v5 + 8) = *(v14 + 1);
        *(v5 + 16) = v15;
        *(v5 + 4) = *(a3 + 8);
        *(v5 + 40) = v16;
        v17 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 80) = v17;
        if (v17)
        {
          *(v5 + 144) = *(v17 + 1);
          *(v5 + 176) = v17[16];
        }

        *(v5 + 177) = 0;
        v18 = v14[24];
        goto LABEL_73;
      }

      if (v6 == -16083)
      {
        v68 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v68[8], a2);
        *(v5 + 136) = result;
        return result;
      }

      if (v6 != -16039)
      {
        if (v6 != -16029)
        {
          return result;
        }

        goto LABEL_46;
      }

      v60 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v61 = *a3;
      v62 = *v60;
      *(v5 + 8) = *(v60 + 1);
      *(v5 + 16) = v61;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v62;
      v63 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v63;
      if (v63)
      {
        *(v5 + 144) = *(v63 + 1);
        *(v5 + 176) = v63[16];
      }

      v64 = GTTraceFunc_argumentBytesWithPool(a3, v60[24], a2);
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

          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 8) = *(v7 + 1);
          *(v5 + 16) = v8;
          *(v5 + 4) = *(a3 + 8);
          *(v5 + 40) = v9;
          v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
          *(v5 + 80) = v10;
          if (v10)
          {
            *(v5 + 144) = *(v10 + 1);
            *(v5 + 176) = v10[16];
          }

          *(v5 + 96) = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
          v11 = GTTraceFunc_argumentBytesWithPool(a3, v7[25], a2);
          v13 = *v11;
          result = (v11 + 8);
          LODWORD(v12) = v13;
          *(v5 + 104) = result;
          goto LABEL_38;
        }

        v50 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v51 = *a3;
        v52 = *v50;
        *(v5 + 8) = *(v50 + 1);
        *(v5 + 16) = v51;
        *(v5 + 4) = *(a3 + 8);
        *(v5 + 40) = v52;
        v53 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 80) = v53;
        if (v53)
        {
          *(v5 + 144) = *(v53 + 1);
          *(v5 + 176) = v53[16];
        }

        *(v5 + 177) = 5;
        *(v5 + 64) = GTTraceFunc_argumentBytesWithPool(a3, v50[32], a2);
        *(v5 + 168) = *(v50 + 2);
        v35 = v50[33];
        goto LABEL_67;
      }

LABEL_46:
      v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v30 = *a3;
      v31 = *v29;
      *(v5 + 8) = *(v29 + 1);
      *(v5 + 16) = v30;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v31;
      v32 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v32;
      if (v32)
      {
        *(v5 + 144) = *(v32 + 1);
        *(v5 + 176) = v32[16];
      }

      *(v5 + 177) = 4;
      v33 = GTTraceFunc_argumentBytesWithPool(a3, v29[24], a2);
      if (v33)
      {
        v34 = *v33;
        *(v5 + 64) = v33 + 8;
        *(v5 + 168) = v34;
      }

      v35 = v29[25];
LABEL_67:
      result = GTTraceFunc_argumentBytesWithPool(a3, v35, a2);
      *(v5 + 72) = result;
      return result;
    }

    if (v6 == -15435 || v6 == -15434 || v6 == -15421)
    {
LABEL_35:
      v25 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v26 = *a3;
      v27 = *v25;
      *(v5 + 8) = *(v25 + 1);
      *(v5 + 16) = v26;
      *(v5 + 4) = *(a3 + 8);
      *(v5 + 40) = v27;
      v28 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 80) = v28;
      if (v28)
      {
        *(v5 + 144) = *(v28 + 1);
        *(v5 + 176) = v28[16];
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, v25[24], a2);
      *(v5 + 88) = result;
      *(v5 + 104) = *(result + 16);
      v12 = *(result + 40);
LABEL_38:
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
        v54 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v54[8], a2);
        *(v5 + 144) = result;
      }

      else if (v6 == -10183)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 176) = *(result + 8);
      }

      return result;
    }

LABEL_56:
    v40 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v41 = *a3;
    v42 = *v40;
    *(v5 + 8) = *(v40 + 1);
    *(v5 + 16) = v41;
    *(v5 + 4) = *(a3 + 8);
    *(v5 + 40) = v42;
    v43 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    *(v5 + 80) = v43;
    if (v43)
    {
      *(v5 + 144) = *(v43 + 1);
      *(v5 + 176) = v43[16];
    }

    *(v5 + 177) = 2;
    *(v5 + 48) = *v40;
    result = GTTraceFunc_argumentBytesWithPool(a3, v40[24], a2);
    *(v5 + 56) = result;
    v44 = *(result + 8);
    *(v5 + 112) = *(result + 24);
    *(v5 + 120) = v44;
    return result;
  }

  if (v6 == -15420 || v6 == -15419)
  {
    goto LABEL_35;
  }

  if (v6 == -15135)
  {
    goto LABEL_56;
  }

  return result;
}

char *GTMTLSMDynamicLibrary_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15140)
  {
    if (v6 <= -15676)
    {
      if (v6 == -15695)
      {
        v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v7[8], a2);
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

    v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v12 = *a3;
    *(v5 + 1) = *(v11 + 1);
    *(v5 + 2) = v12;
    *(v5 + 1) = *(a3 + 8);
    v13 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    if (v13)
    {
      *(v5 + 10) = *v13;
      *(v5 + 6) = *(v13 + 8);
      *(v5 + 56) = *(v13 + 12);
    }

    *(v5 + 5) = *v11;
LABEL_20:
    result = GTTraceFunc_argumentBytesWithPool(a3, v11[24], a2);
    *(v5 + 11) = result;
    return result;
  }

  if (v6 > -15138)
  {
    if (v6 != -15137 && v6 != -15136)
    {
      return result;
    }

    v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v14 = *a3;
    *(v5 + 1) = *(v11 + 1);
    *(v5 + 2) = v14;
    *(v5 + 1) = *(a3 + 8);
    v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    if (v15)
    {
      *(v5 + 10) = *v15;
      *(v5 + 6) = *(v15 + 8);
      *(v5 + 56) = *(v15 + 12);
    }

    *(v5 + 6) = *v11;
    goto LABEL_20;
  }

  v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
  v9 = *a3;
  *(v5 + 1) = *(v8 + 1);
  *(v5 + 2) = v9;
  *(v5 + 1) = *(a3 + 8);
  result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
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

char *GTMTLSMPipelineLibrary_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15745)
  {
    if (v6 == -15744)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[82] = *(result + 2);
    }

    else if (v6 == -15743)
    {
      v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v10[8], a2);
      *(v5 + 7) = result;
    }
  }

  else if (v6 == -16291)
  {
    *(result + 3) = *a3;
  }

  else if (v6 == -16075)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v5 + 1) = *(v7 + 1);
    *(v5 + 2) = v8;
    *(v5 + 1) = *(a3 + 8);
    *(v5 + 5) = v9;
    *(v5 + 6) = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    if (result)
    {
      *(v5 + 40) = *(result + 12);
      *(v5 + 4) = *(result + 8);
    }
  }

  return result;
}

char *GTMTLSMIOCommandQueue_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -15332)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15350)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 8);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
    *(v4 + 7) = result;
  }

  return result;
}

char *GTMTLSMCommandQueue_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -16317)
  {
    if (v6 > -16347)
    {
      switch(v6)
      {
        case -16346:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[76] = *(result + 2);
          break;
        case -16345:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
          v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v15[8], a2);
          *(v5 + 6) = result;
          break;
        case -16348:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 2);
          break;
        case -16347:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v11 = *a3;
          v12 = *result;
          *(v5 + 1) = *(result + 1);
          *(v5 + 2) = v11;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v12;
          v10 = 64;
          break;
        case -16315:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v13 = *a3;
          v14 = *result;
          *(v5 + 1) = *(result + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v14;
          *(v5 + 16) = *(result + 2);
          return result;
        case -16165:
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[72] = *(result + 1);
      }
    }

    else if (v6 == -15809 || v6 == -15808)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[73] = *(result + 1);
    }
  }

  return result;
}

char *GTMTL4SMCommandQueue_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  switch(v6)
  {
    case -14834:
      v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v10 = *a3;
      v11 = *v9;
      *(v5 + 1) = *(v9 + 1);
      *(v5 + 2) = v10;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v11;
      result = GTTraceFunc_argumentBytesWithPool(a3, v9[24], a2);
      *(v5 + 6) = result;
      break;
    case -15155:
      *(result + 3) = *a3;
      break;
    case -15190:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v5 + 1) = *(result + 1);
      *(v5 + 2) = v7;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTL4SMCommandAllocator_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  switch(v5)
  {
    case -15175:
      *(result + 3) = *a3;
      break;
    case -15197:
      v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v10 = *a3;
      v11 = *v9;
      *(v4 + 1) = *(v9 + 1);
      *(v4 + 2) = v10;
      *(v4 + 1) = *(a3 + 8);
      *(v4 + 5) = v11;
      result = GTTraceFunc_argumentBytesWithPool(a3, v9[24], a2);
      *(v4 + 6) = result;
      break;
    case -15198:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *result;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v7;
      *(v4 + 1) = *(a3 + 8);
      *(v4 + 5) = v8;
      break;
  }

  return result;
}

char *GTMTL4SMArgumentTable_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15181)
  {
    if (v6 == -15200)
    {
      v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v12 = *a3;
      v13 = *v11;
      *(v5 + 1) = *(v11 + 1);
      *(v5 + 2) = v12;
      *(v5 + 1) = *(a3 + 8);
      *(v5 + 5) = v13;
      result = GTTraceFunc_argumentBytesWithPool(a3, v11[24], a2);
      *(v5 + 6) = result;
      return result;
    }

    if (v6 != -15182)
    {
      if (v6 != -15181)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *&v5[8 * *(result + 2) + 1592] = *(result + 1);
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
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
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 2) + 568] = *(result + 1);
    }

    else if (v6 == -14848)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *&v5[8 * *(result + 3) + 64] = *(result + 1);
      *&v5[8 * (*(result + 3) >> 6) + 56] |= 1 << *(result + 3);
      *&v5[8 * *(result + 3) + 320] = *(result + 2);
      *&v5[8 * (*(result + 3) >> 6) + 312] |= 1 << *(result + 3);
    }
  }

  return result;
}

char *GTMTLSMRasterizationRateMap_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  switch(v5)
  {
    case -15801:
      *(result + 3) = *a3;
      break;
    case -15411:
      v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v10[8], a2);
      *(v4 + 6) = result;
      break;
    case -15793:
      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      v9 = *v7;
      *(v4 + 1) = *(v7 + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 8);
      *(v4 + 5) = v9;
      result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
      *(v4 + 6) = result;
      *(v4 + 14) = *(result + 6);
      v4[60] = result[34];
      break;
  }

  return result;
}

char *GTMTLSMDevice_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -10239)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v4 + 1) = *v7;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[8], a2);
    *(v4 + 5) = result;
  }

  else if (v5 == -16317)
  {
    *(result + 3) = *a3;
  }

  return result;
}

uint64_t GTMTLSMFilter_processTraceFuncWithPool(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -6123)
  {
    if (v6 > -6135)
    {
      if (v6 > -6132)
      {
        if (v6 == -6131)
        {
          v33 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v34 = *a3;
          v35 = *v33;
          *(v5 + 8) = *(v33 + 1);
          *(v5 + 16) = v34;
          v36 = *(a3 + 8);
          *(v5 + 4) = v36;
          *(v5 + 40) = v36;
          *(v5 + 48) = v35;
          *(v5 + 56) = GTTraceFunc_argumentBytesWithPool(a3, v33[16], a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v33[24], a2);
          *(v5 + 64) = result;
          *(v5 + 72) = *(v33 + 8);
        }

        else if (v6 == -6129)
        {
          v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v11 = *a3;
          v12 = *v10;
          *(v5 + 8) = *(v10 + 1);
          *(v5 + 16) = v11;
          v13 = *(a3 + 8);
          *(v5 + 4) = v13;
          *(v5 + 40) = v13;
          *(v5 + 48) = v12;
          *(v5 + 56) = *(v10 + 4);
          v14 = v10[24];
          if (g_loadURLAsMemHeader == 1)
          {
            if (v14 < 0x40)
            {
              result = 0;
            }

            else
            {
              result = GTTraceMemPool_findHeader(a2, *a3, v14);
            }
          }

          else
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, v14, a2);
          }

          *(v5 + 72) = result;
          *(v5 + 64) = *(v10 + 4);
        }
      }

      else
      {
        if (v6 == -6134)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v29 = *a3;
          v30 = *result;
          *(v5 + 8) = *(result + 8);
          *(v5 + 16) = v29;
          v31 = *(a3 + 8);
          *(v5 + 4) = v31;
          *(v5 + 40) = v31;
          *(v5 + 48) = v30;
          *(v5 + 96) = *(result + 16);
          *(v5 + 56) = *(result + 24);
          *(v5 + 64) = *(result + 32);
          *(v5 + 80) = *(result + 40);
          v32 = *(result + 48);
          goto LABEL_36;
        }

        if (v6 == -6133)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v7 = *a3;
          v8 = *result;
          *(v5 + 8) = *(result + 8);
          *(v5 + 16) = v7;
          v9 = *(a3 + 8);
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
      goto LABEL_27;
    }

    if (v6 != -6141)
    {
      if (v6 == -6139)
      {
        *(result + 24) = *a3;
      }

      return result;
    }

LABEL_31:
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v23 = *a3;
    v24 = *result;
    *(v5 + 8) = *(result + 8);
    *(v5 + 16) = v23;
    v25 = *(a3 + 8);
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

LABEL_32:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v26 = *a3;
        v27 = *result;
        *(v5 + 8) = *(result + 8);
        *(v5 + 16) = v26;
        v28 = *(a3 + 8);
        *(v5 + 4) = v28;
        *(v5 + 40) = v28;
        *(v5 + 48) = v27;
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v37 = *a3;
      v38 = *result;
      *(v5 + 8) = *(result + 8);
      *(v5 + 16) = v37;
      v39 = *(a3 + 8);
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
LABEL_36:
      *(v5 + 88) = v32;
      return result;
    }

    if (v6 == -6116)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v40 = *a3;
      v41 = *result;
      *(v5 + 8) = *(result + 8);
      *(v5 + 16) = v40;
      v42 = *(a3 + 8);
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

LABEL_27:
    v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v16 = *a3;
    v17 = *v15;
    *(v5 + 8) = *(v15 + 1);
    *(v5 + 16) = v16;
    v18 = *(a3 + 8);
    *(v5 + 4) = v18;
    *(v5 + 40) = v18;
    *(v5 + 48) = v17;
    *(v5 + 56) = GTTraceFunc_argumentBytesWithPool(a3, v15[16], a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v15[24], a2);
    *(v5 + 64) = result;
    return result;
  }

  if (v6 > -6097)
  {
    if (v6 == -6096 || v6 == -6095)
    {
      v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v20 = *a3;
      v21 = *v19;
      *(v5 + 8) = *(v19 + 1);
      *(v5 + 16) = v20;
      v22 = *(a3 + 8);
      *(v5 + 4) = v22;
      *(v5 + 40) = v22;
      *(v5 + 48) = v21;
      result = GTTraceFunc_argumentBytesWithPool(a3, v19[16], a2);
      *(v5 + 56) = result;
    }

    return result;
  }

  if (v6 == -6110)
  {
    goto LABEL_32;
  }

  if (v6 == -6109)
  {
    goto LABEL_31;
  }

  return result;
}

char *GTMTLSMResourceGroup_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 == -15769)
  {
    *(result + 3) = *a3;
  }

  else if (v5 == -15900)
  {
    v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *a3;
    v9 = *v7;
    *(v4 + 1) = *(v7 + 1);
    *(v4 + 2) = v8;
    *(v4 + 1) = *(a3 + 8);
    *(v4 + 5) = v9;
    result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
    *(v4 + 6) = result;
    *(v4 + 14) = *(v7 + 2);
  }

  return result;
}

char *GTMTLSMDrawable_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 8);
  if (v5 > -7162)
  {
    if (v5 == -7161)
    {
      *(result + 3) = *a3;
    }

    else if (v5 == -6655)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v4 + 1) = *(result + 1);
      *(v4 + 2) = v8;
      *(v4 + 1) = *(a3 + 8);
    }
  }

  else if (v5 == -7167)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v4 + 6) = *(result + 1);
  }

  else if (v5 == -7166)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v6 = *a3;
    v7 = *result;
    *(v4 + 1) = *(result + 1);
    *(v4 + 2) = v6;
    *(v4 + 1) = *(a3 + 8);
    *(v4 + 5) = v7;
  }

  return result;
}

uint64_t GTMTLSMLayer_processTraceFuncWithPool(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -7163)
  {
    if (v6 <= -7166)
    {
      if (v6 == -8183)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        for (i = 0; i != 128; i += 8)
        {
          *(v5 + 48 + i) = *(result + 8 + i);
        }

        *(v5 + 248) = *(result + 136);
      }

      else if (v6 == -8181)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 192) = *(result + 8);
        *(v5 + 200) = *(result + 16);
      }
    }

    else if (v6 == -7165)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 272) = *(result + 8);
    }

    else if (v6 == -7164)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 176) = *(result + 8);
      *(v5 + 184) = *(result + 16);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v7 = *a3;
      v8 = *(result + 8);
      *(v5 + 8) = *result;
      *(v5 + 16) = v7;
      *(v5 + 40) = v8;
    }

    return result;
  }

  if (v6 > -7160)
  {
    if (v6 != -7159)
    {
      if (v6 == -7154)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 275) = *(result + 8);
      }

      else if (v6 == -7153)
      {
        v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2)[8];
        if (g_loadURLAsMemHeader == 1)
        {
          if (v9 < 0x40)
          {
            result = 0;
          }

          else
          {
            result = GTTraceMemPool_findHeader(a2, *a3, v9);
          }
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, v9, a2);
        }

        *(v5 + 264) = result;
      }

      return result;
    }

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    for (j = 0; j != 32; j += 8)
    {
      *(v5 + 216 + j) = *(result + 8 + j);
    }

LABEL_28:
    *(v5 + 208) = *(result + 40);
    return result;
  }

  if (v6 == -7162)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    for (k = 0; k != 32; k += 8)
    {
      *(v5 + 216 + k) = *(result + 8 + k);
    }

    goto LABEL_28;
  }

  if (v6 == -7160)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 274) = *(result + 8);
  }

  return result;
}

char *GTMTLSMAccelerationStructure_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15354)
  {
    if (v6 <= -10182)
    {
      if (v6 > -10198)
      {
        if (v6 > -10196)
        {
          if (v6 == -10195)
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 25) = *(result + 2);
          }

          else if (v6 == -10182)
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 168) = *(result + 8);
            v28 = *(result + 4);
            *(v5 + 23) = *(result + 3);
            *(v5 + 52) = v28;
            *(v5 + 200) = *(result + 40);
          }
        }

        else if (v6 == -10197)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 8) = *(result + 1);
        }

        return result;
      }

      if (v6 == -15353)
      {
        v68 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v69 = *a3;
        *(v5 + 1) = *(v68 + 1);
        *(v5 + 2) = v69;
        *(v5 + 1) = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          v70 = *(result + 6);
          *(v5 + 20) = *(result + 5);
          *(v5 + 26) = v70;
          *(v5 + 52) = *(result + 32);
          *(v5 + 168) = *(result + 72);
          v71 = *(result + 12);
          *(v5 + 23) = *(result + 11);
          *(v5 + 25) = v71;
          *(v5 + 18) = *(result + 7);
        }

        v73 = *(v68 + 2);
        v72 = *(v68 + 3);
        *(v5 + 6) = *v68;
        *(v5 + 7) = v72;
        *(v5 + 24) = v73;
        return result;
      }

      if (v6 != -15352)
      {
        if (v6 != -15351)
        {
          return result;
        }

        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v19 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v19;
        *(v5 + 1) = *(a3 + 8);
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 16) = result;
        if (result)
        {
          *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
          *(v5 + 24) = *(result + 4);
          *(v5 + 17) = *(result + 3);
          *(v5 + 26) = *(result + 6);
          v20 = *(result + 9);
          *(v5 + 52) = *(result + 32);
          *(v5 + 21) = v20;
          v21 = *(result + 5);
          *(v5 + 11) = v21;
          *(v5 + 7) = v20 - v21;
          *(v5 + 25) = *(result + 12);
          *(v5 + 18) = *(result + 7);
        }

        *(v5 + 6) = *v7;
        goto LABEL_46;
      }

      v62 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v63 = *a3;
      *(v5 + 1) = *(v62 + 1);
      *(v5 + 2) = v63;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v64 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v64;
        *(v5 + 18) = *(result + 7);
      }

      v66 = *(v62 + 2);
      v65 = *(v62 + 3);
      *(v5 + 6) = *v62;
      *(v5 + 7) = v65;
      *(v5 + 24) = v66;
      v54 = *(v62 + 4);
    }

    else
    {
      if (v6 > -10168)
      {
        if (v6 > -10159)
        {
          if (v6 != -10158)
          {
            if (v6 == -10154)
            {
              result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
              if (*(v5 + 1) == *(result + 1))
              {
                result = GTTraceFunc_argumentBytesWithPool(a3, result[16], a2);
                *(v5 + 15) = result;
              }
            }

            return result;
          }

          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          if (*(v5 + 1) != *(result + 1))
          {
            return result;
          }

          v18 = *(result + 1);
        }

        else
        {
          if (v6 == -10167)
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 18) = *(result + 1);
            return result;
          }

          if (v6 != -10159)
          {
            return result;
          }

          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v18 = *(result + 8);
        }

        v61 = vmovn_s32(v18);
        *(v5 + 28) = vuzp1_s8(v61, v61).u32[0];
        return result;
      }

      if (v6 <= -10171)
      {
        if (v6 == -10181)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 17) = *(result + 1);
        }

        else if (v6 == -10173)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
        }

        return result;
      }

      if (v6 != -10170)
      {
        if (v6 == -10169)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 7) = *(result + 1);
        }

        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v54 = *(result + 1);
    }

    *(v5 + 20) = v54;
    return result;
  }

  if (v6 <= -15553)
  {
    if (v6 <= -15652)
    {
      switch(v6)
      {
        case -15661:
          v67 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v67[8], a2);
          *(v5 + 11) = result;
          break;
        case -15660:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 24) = *(result + 2);
          break;
        case -15659:
          *(result + 3) = *a3;
          break;
      }

      return result;
    }

    if (v6 <= -15616)
    {
      if (v6 == -15651)
      {
        result[108] = 1;
      }

      else if (v6 == -15650)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v11 = *(result + 2);
        if (v11 != 1)
        {
          *(v5 + 53) = v11;
        }
      }

      return result;
    }

    if (v6 == -15615)
    {
LABEL_72:
      v40 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v41 = *a3;
      *(v5 + 1) = *(v40 + 1);
      *(v5 + 2) = v41;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v42 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v42;
        v43 = *(result + 5);
        *(v5 + 26) = *(result + 6);
        *(v5 + 52) = *(result + 32);
        v44 = *(result + 9);
        *(v5 + 20) = v43;
        *(v5 + 21) = v44;
        v45 = *(result + 5);
        *(v5 + 11) = v45;
        *(v5 + 7) = v44 - v45;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v40;
      return result;
    }

    if (v6 != -15614)
    {
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v24 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v24;
    *(v5 + 1) = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v25 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v26 = *(result + 9);
      *(v5 + 20) = v25;
      *(v5 + 21) = v26;
      v27 = *(result + 5);
      *(v5 + 11) = v27;
      *(v5 + 7) = v26 - v27;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 5) = *v23;
LABEL_67:
    *(v5 + 24) = *(v23 + 2);
    return result;
  }

  if (v6 > -15359)
  {
    if (v6 <= -15356)
    {
      if (v6 != -15358)
      {
        if (v6 == -15356)
        {
          v12 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v13 = *a3;
          *(v5 + 1) = *(v12 + 1);
          *(v5 + 2) = v13;
          *(v5 + 1) = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
          *(v5 + 16) = result;
          if (result)
          {
            *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
            *(v5 + 24) = *(result + 4);
            v14 = *(result + 4);
            *(v5 + 17) = *(result + 3);
            *(v5 + 24) = v14;
            v15 = *(result + 5);
            *(v5 + 26) = *(result + 6);
            *(v5 + 52) = *(result + 32);
            v16 = *(result + 9);
            *(v5 + 20) = v15;
            *(v5 + 21) = v16;
            v17 = *(result + 5);
            *(v5 + 11) = v17;
            *(v5 + 7) = v16 - v17;
            *(v5 + 25) = *(result + 12);
            *(v5 + 18) = *(result + 7);
          }

          *(v5 + 6) = *v12;
        }

        return result;
      }

      goto LABEL_72;
    }

    if (v6 == -15355)
    {
      v55 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v56 = *a3;
      *(v5 + 1) = *(v55 + 1);
      *(v5 + 2) = v56;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v57 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v58 = *(result + 6);
        *(v5 + 20) = *(result + 5);
        *(v5 + 24) = v57;
        *(v5 + 26) = v58;
        *(v5 + 52) = *(result + 32);
        *(v5 + 168) = *(result + 72);
        v59 = *(result + 12);
        *(v5 + 23) = *(result + 11);
        *(v5 + 25) = v59;
        *(v5 + 18) = *(result + 7);
      }

      v60 = *(v55 + 2);
      *(v5 + 6) = *v55;
      *(v5 + 7) = v60;
      return result;
    }

    v23 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v36 = *a3;
    *(v5 + 1) = *(v23 + 1);
    *(v5 + 2) = v36;
    *(v5 + 1) = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    *(v5 + 16) = result;
    if (result)
    {
      *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
      *(v5 + 24) = *(result + 4);
      *(v5 + 17) = *(result + 3);
      v37 = *(result + 5);
      *(v5 + 26) = *(result + 6);
      *(v5 + 52) = *(result + 32);
      v38 = *(result + 9);
      *(v5 + 20) = v37;
      *(v5 + 21) = v38;
      v39 = *(result + 5);
      *(v5 + 11) = v39;
      *(v5 + 7) = v38 - v39;
      *(v5 + 25) = *(result + 12);
      *(v5 + 18) = *(result + 7);
    }

    *(v5 + 6) = *v23;
    goto LABEL_67;
  }

  if (v6 > -15465)
  {
    if (v6 == -15464)
    {
      v47 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v48 = *a3;
      *(v5 + 1) = *(v47 + 1);
      *(v5 + 2) = v48;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v49 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        v50 = *(result + 5);
        *(v5 + 24) = v49;
        *(v5 + 52) = *(result + 32);
        v51 = *(result + 9);
        *(v5 + 20) = v50;
        *(v5 + 21) = v51;
        v52 = *(result + 5);
        *(v5 + 11) = v52;
        *(v5 + 7) = v51 - v52;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v47;
      v53 = *(v47 + 3);
      *(v5 + 19) = *(v47 + 2);
      *(v5 + 26) = v53;
    }

    else if (v6 == -15359)
    {
      v29 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v30 = *a3;
      *(v5 + 1) = *(v29 + 1);
      *(v5 + 2) = v30;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        v31 = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 24) = v31;
        v32 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v32;
        v33 = *(result + 5);
        *(v5 + 11) = v33;
        *(v5 + 7) = v32 - v33;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v29;
      v34 = *(v29 + 2);
      *(v5 + 26) = *(v29 + 3);
      v35 = *(v29 + 4);
      *(v5 + 19) = v34;
      *(v5 + 20) = v35;
    }
  }

  else
  {
    if (v6 != -15552)
    {
      if (v6 != -15506)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 16) = result;
      if (result)
      {
        *(v5 + 4) = vextq_s8(*result, *result, 8uLL);
        *(v5 + 24) = *(result + 4);
        *(v5 + 17) = *(result + 3);
        *(v5 + 26) = *(result + 6);
        v9 = *(result + 9);
        *(v5 + 52) = *(result + 32);
        *(v5 + 21) = v9;
        v10 = *(result + 5);
        *(v5 + 11) = v10;
        *(v5 + 7) = v9 - v10;
        *(v5 + 25) = *(result + 12);
        *(v5 + 18) = *(result + 7);
      }

      *(v5 + 5) = *v7;
LABEL_46:
      v22 = *(v7 + 3);
      *(v5 + 24) = *(v7 + 2);
      *(v5 + 20) = v22;
      return result;
    }

    v46 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    result = GTTraceFunc_argumentBytesWithPool(a3, v46[8], a2);
    *(v5 + 15) = result;
    if (result)
    {
      v5[112] = (result[96] & 0xFE) == 2;
      v5[113] = 1;
      v5[115] = (result[97] & 4) != 0;
    }
  }

  return result;
}

int8x16_t *GTMTLSMFunctionHandle_processTraceFuncWithPool(int8x16_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15438)
  {
    if (v6 > -14836)
    {
      switch(v6)
      {
        case -10140:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[5].i64[0] = result->i64[1];
          break;
        case -10141:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[5].i64[1] = result->i64[1];
          break;
        case -14835:
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v5->i64[1] = *(v7 + 1);
          v5[1].i64[0] = v8;
          v5->i32[1] = *(a3 + 8);
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
          v5[2].i64[1] = result;
          if (result)
          {
            v5[5] = vextq_s8(*result, *result, 8uLL);
          }

          v9 = *v7;
          v5[3].i64[0] = *(v7 + 2);
          v5[3].i64[1] = v9;
          break;
      }

      return result;
    }

    if (v6 == -15437)
    {
      v20 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v21 = *a3;
      v5->i64[1] = *(v20 + 1);
      v5[1].i64[0] = v21;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v20;
      v5[3].i64[0] = *(v20 + 2);
      v12 = 4;
    }

    else
    {
      if (v6 != -15436)
      {
        return result;
      }

      v13 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v14 = *a3;
      v5->i64[1] = *(v13 + 1);
      v5[1].i64[0] = v14;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v13;
      v5[3].i64[0] = *(v13 + 2);
      v12 = 1;
    }

LABEL_33:
    v5[6].i8[0] = v12;
    return result;
  }

  if (v6 > -15464)
  {
    if (v6 != -15463)
    {
      if (v6 != -15444)
      {
        return result;
      }

      v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v11 = *a3;
      v5->i64[1] = *(v10 + 1);
      v5[1].i64[0] = v11;
      v5->i32[1] = *(a3 + 8);
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      v5[2].i64[1] = result;
      if (result)
      {
        v5[5] = vextq_s8(*result, *result, 8uLL);
      }

      v5[4].i64[1] = *v10;
      v5[3].i64[0] = *(v10 + 2);
      v12 = 2;
      goto LABEL_33;
    }

    v17 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v18 = *a3;
    v5->i64[1] = *(v17 + 1);
    v5[1].i64[0] = v18;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    v5[2].i64[1] = result;
    if (result)
    {
      v5[5] = vextq_s8(*result, *result, 8uLL);
    }

    v5[4].i64[1] = *v17;
    v19 = *(v17 + 3);
    v5[3].i64[0] = *(v17 + 2);
    v5[6].i8[0] = v19;
  }

  else if (v6 == -15620)
  {
    v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v16 = *a3;
    v5->i64[1] = *(v15 + 1);
    v5[1].i64[0] = v16;
    v5->i32[1] = *(a3 + 8);
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
    v5[2].i64[1] = result;
    if (result)
    {
      v5[5] = vextq_s8(*result, *result, 8uLL);
    }

    v5[4].i64[0] = *v15;
    v5[3].i64[0] = *(v15 + 2);
  }

  else if (v6 == -15610)
  {
    result[1].i64[1] = *a3;
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTable_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -15444)
  {
    if (v6 <= -10180)
    {
      if (v6 > -15442)
      {
        if (v6 != -15441)
        {
          if (v6 == -10180)
          {
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            v5[5].i64[0] = *(result + 1);
          }

          return result;
        }

        v22 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v23 = *a3;
        v5->i64[1] = *(v22 + 1);
        v5[1].i64[0] = v23;
        v5->i32[1] = *(a3 + 8);
        v24 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v24;
        if (v24)
        {
          v5[4] = vextq_s8(*v24, *v24, 8uLL);
          v5[6].i32[0] = *(v24 + 4);
          v5[9] = vextq_s8(*(v24 + 24), *(v24 + 24), 8uLL);
          v5[10].i64[0] = *(v24 + 5);
        }

        v5[8].i64[1] = *v22;
        result = GTTraceFunc_argumentBytesWithPool(a3, v22[16], a2);
        v5[7].i64[0] = result;
        v11 = 1;
      }

      else if (v6 == -15443)
      {
        v19 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v20 = *a3;
        v5->i64[1] = *(v19 + 1);
        v5[1].i64[0] = v20;
        v5->i32[1] = *(a3 + 8);
        v21 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v21;
        if (v21)
        {
          v5[4] = vextq_s8(*v21, *v21, 8uLL);
          v5[6].i32[0] = *(v21 + 4);
          v5[9] = vextq_s8(*(v21 + 24), *(v21 + 24), 8uLL);
          v5[10].i64[0] = *(v21 + 5);
        }

        v5[8].i64[1] = *v19;
        result = GTTraceFunc_argumentBytesWithPool(a3, v19[16], a2);
        v5[7].i64[0] = result;
        v11 = 2;
      }

      else
      {
        v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v9 = *a3;
        v5->i64[1] = *(v8 + 1);
        v5[1].i64[0] = v9;
        v5->i32[1] = *(a3 + 8);
        v10 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v10;
        if (v10)
        {
          v5[4] = vextq_s8(*v10, *v10, 8uLL);
          v5[6].i32[0] = *(v10 + 4);
          v5[9] = vextq_s8(*(v10 + 24), *(v10 + 24), 8uLL);
          v5[10].i64[0] = *(v10 + 5);
        }

        v5[8].i64[1] = *v8;
        result = GTTraceFunc_argumentBytesWithPool(a3, v8[16], a2);
        v5[7].i64[0] = result;
        v11 = 4;
      }

      v5[10].i8[8] = v11;
      return result;
    }

    if (v6 > -10176)
    {
      if (v6 == -10175)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[9].i64[1] = *(result + 1);
      }

      else if (v6 == -10161)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[10].i64[0] = *(result + 1);
      }
    }

    else if (v6 == -10179)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[4].i64[0] = *(result + 1);
    }

    else if (v6 == -10176)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[4].i64[1] = *(result + 1);
    }
  }

  else if (v6 > -15561)
  {
    if (v6 > -15541)
    {
      if (v6 == -15540)
      {
        v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v25 = *a3;
        v5->i64[1] = *(v16 + 1);
        v5[1].i64[0] = v25;
        v5->i32[1] = *(a3 + 8);
        v26 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v26;
        if (v26)
        {
          v5[4] = vextq_s8(*v26, *v26, 8uLL);
          v5[6].i32[0] = *(v26 + 4);
          v5[9] = vextq_s8(*(v26 + 24), *(v26 + 24), 8uLL);
          v5[10].i64[0] = *(v26 + 5);
        }

        v5[8].i64[0] = *v16;
        goto LABEL_52;
      }

      if (v6 == -15462)
      {
        v13 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v14 = *a3;
        v5->i64[1] = *(v13 + 1);
        v5[1].i64[0] = v14;
        v5->i32[1] = *(a3 + 8);
        v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        v5[7].i64[1] = v15;
        if (v15)
        {
          v5[4] = vextq_s8(*v15, *v15, 8uLL);
          v5[6].i32[0] = *(v15 + 4);
          v5[9] = vextq_s8(*(v15 + 24), *(v15 + 24), 8uLL);
          v5[10].i64[0] = *(v15 + 5);
        }

        v5[8].i64[1] = *v13;
        result = GTTraceFunc_argumentBytesWithPool(a3, v13[24], a2);
        v5[7].i64[0] = result;
        v5[10].i8[8] = *(v13 + 2);
      }
    }

    else if (v6 == -15560)
    {
      result[108] = 1;
    }

    else if (v6 == -15557)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v12 = *(result + 2);
      if (v12 != 1)
      {
        v5[6].i16[5] = v12;
      }
    }
  }

  else
  {
    if (v6 <= -15570)
    {
      if (v6 != -15577)
      {
        if (v6 == -15570)
        {
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          result = GTTraceFunc_argumentBytesWithPool(a3, v7[8], a2);
          v5[5].i64[1] = result;
        }

        return result;
      }

      v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v17 = *a3;
      v5->i64[1] = *(v16 + 1);
      v5[1].i64[0] = v17;
      v5->i32[1] = *(a3 + 8);
      v18 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      v5[7].i64[1] = v18;
      if (v18)
      {
        v5[4] = vextq_s8(*v18, *v18, 8uLL);
        v5[6].i32[0] = *(v18 + 4);
        v5[9] = vextq_s8(*(v18 + 24), *(v18 + 24), 8uLL);
        v5[10].i64[0] = *(v18 + 5);
      }

      v5[2].i64[1] = *v16;
LABEL_52:
      result = GTTraceFunc_argumentBytesWithPool(a3, v16[16], a2);
      v5[7].i64[0] = result;
      return result;
    }

    if (v6 == -15569)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[6].i32[0] = *(result + 2);
    }

    else if (v6 == -15568)
    {
      *(result + 3) = *a3;
    }
  }

  return result;
}

char *GTMTLSMIntersectionFunctionTableStateful_processTraceFuncWithPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 8);
  if (v7 <= -15530)
  {
    if (v7 <= -15546)
    {
      if (v7 != -15559)
      {
        if (v7 == -15558)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          if (*(a1 + 176))
          {
            v25 = result;
            result = GTTraceFunc_argumentBytesWithPool(a3, result[24], a2);
            if (*(v25 + 2))
            {
              v26 = 0;
              v27 = 0;
              do
              {
                v28 = *(a1 + 176) + 16 * *(v25 + 1) + v26;
                v29 = *&result[8 * v27];
                *v28 = 1;
                *(v28 + 8) = v29;
                ++v27;
                v26 += 16;
              }

              while (*(v25 + 2) > v27);
            }
          }

          return result;
        }

        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v30 = *(a1 + 176);
      if (!v30)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v30 + 16 * *(result + 2);
      v16 = 1;
    }

    else
    {
      if (v7 == -15545)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v43 = *(result + 1);
        v44 = a1 + 192 + 24 * *(result + 3);
        *v44 = v43 != 0;
        *(v44 + 8) = v43;
        *(a1 + 192 + 24 * *(result + 3) + 16) = *(result + 2);
        return result;
      }

      if (v7 == -15544)
      {
        v31 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v32 = GTTraceFunc_argumentBytesWithPool(a3, v31[24], a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v31[25], a2);
        if (*(v31 + 2))
        {
          v33 = 0;
          v34 = a1 + 192;
          do
          {
            v35 = *&v32[8 * v33];
            v36 = v34 + 24 * (v33 + *(v31 + 1));
            *v36 = v35 != 0;
            *(v36 + 8) = v35;
            *(v34 + 24 * (v33 + *(v31 + 1)) + 16) = *&result[8 * v33];
            ++v33;
          }

          while (*(v31 + 2) > v33);
        }

        return result;
      }

      if (v7 != -15530)
      {
        goto LABEL_54;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v13 = *(a1 + 176);
      if (!v13)
      {
        return result;
      }

      v14 = *(result + 1);
      v15 = v13 + 16 * *(result + 2);
      v16 = 2;
    }

LABEL_52:
    *v15 = v16;
    *(v15 + 8) = v14;
    return result;
  }

  if (v7 > -15259)
  {
    if (v7 != -15258)
    {
      if (v7 == -15257)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        if (*(a1 + 176) && *(result + 3))
        {
          v39 = 0;
          v40 = 0;
          v41 = *(result + 1);
          do
          {
            v42 = *(a1 + 176) + 16 * *(result + 2) + v39;
            *v42 = 3;
            *(v42 + 8) = v41;
            ++v40;
            v39 += 16;
          }

          while (*(result + 3) > v40);
        }

        return result;
      }

      if (v7 == -10152)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        if (!a4)
        {
          return result;
        }

        v18 = GTTraceFunc_argumentBytesWithPool(a3, result[8], a2);
        v20 = *v18;
        result = v18 + 8;
        v19 = v20;
        if (!v20)
        {
          return result;
        }

        v21 = 0;
        v22 = a1 + 192;
        for (i = (a1 + 192); ; i += 6)
        {
          v24 = *&result[8 * v21];
          if (v24)
          {
            break;
          }

          *i = 0;
          if (v19 == ++v21)
          {
            return result;
          }
        }

        result = GTMTLGPUAddressResource_resourceForGPUAddress(*(*a4 + 24), *(*a4 + 12), v24);
        if (result)
        {
          *&v50 = *(result + 2);
          *(&v50 + 1) = v24 - *result;
          if (result[24] == 7)
          {
            v52 = v22 + 24 * v21;
            *v52 = 2;
            *(v52 + 8) = v50;
            return result;
          }

          if (result[24])
          {
            return result;
          }
        }

        else
        {
          v50 = 0uLL;
        }

        v51 = v22 + 24 * v21;
        *v51 = 1;
        *(v51 + 8) = v50;
        return result;
      }

LABEL_54:

      return GTMTLSMIntersectionFunctionTable_processTraceFuncWithPool(a1, a2, a3);
    }

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v49 = *(a1 + 176);
    if (!v49)
    {
      return result;
    }

    v14 = *(result + 1);
    v15 = v49 + 16 * *(result + 2);
    v16 = 3;
    goto LABEL_52;
  }

  if (v7 != -15529)
  {
    if (v7 == -15526)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v37 = *(result + 1);
      v38 = a1 + 24 * *(result + 2);
      *(v38 + 192) = 2 * (v37 != 0);
      *(v38 + 200) = v37;
      return result;
    }

    if (v7 == -15525)
    {
      v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      result = GTTraceFunc_argumentBytesWithPool(a3, v8[24], a2);
      if (*(v8 + 2))
      {
        v10 = 0;
        do
        {
          v11 = *&result[8 * v10];
          v12 = a1 + 192 + 24 * (v10 + *(v8 + 1));
          *v12 = 2 * (v11 != 0);
          *(v12 + 8) = v11;
          ++v10;
        }

        while (*(v8 + 2) > v10);
      }

      return result;
    }

    goto LABEL_54;
  }

  result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
  if (*(a1 + 176) && *(result + 3))
  {
    v45 = 0;
    v46 = 0;
    v47 = *(result + 1);
    do
    {
      v48 = *(a1 + 176) + 16 * *(result + 2) + v45;
      *v48 = 2;
      *(v48 + 8) = v47;
      ++v46;
      v45 += 16;
    }

    while (*(result + 3) > v46);
  }

  return result;
}

char *GTMTLSMVisibleFunctionTable_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -15439)
  {
    if (v6 <= -15461)
    {
      if (v6 == -15607)
      {
        v15 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        result = GTTraceFunc_argumentBytesWithPool(a3, v15[8], a2);
        *(v5 + 11) = result;
        return result;
      }

      if (v6 == -15605)
      {
        *(result + 3) = *a3;
        return result;
      }

      if (v6 != -15578)
      {
        return result;
      }

      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v8 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v8;
      *(v5 + 1) = *(a3 + 8);
      v9 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 15) = v9;
      if (v9)
      {
        *(v5 + 4) = vextq_s8(*v9, *v9, 8uLL);
        *(v5 + 24) = *(v9 + 4);
        *(v5 + 9) = *(v9 + 24);
        *(v5 + 10) = *(v9 + 40);
      }

      *(v5 + 16) = *v7;
      goto LABEL_42;
    }

    switch(v6)
    {
      case -15460:
        v16 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v17 = *a3;
        *(v5 + 1) = *(v16 + 1);
        *(v5 + 2) = v17;
        *(v5 + 1) = *(a3 + 8);
        v18 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 15) = v18;
        if (v18)
        {
          *(v5 + 4) = vextq_s8(*v18, *v18, 8uLL);
          *(v5 + 24) = *(v18 + 4);
          *(v5 + 9) = *(v18 + 24);
          *(v5 + 10) = *(v18 + 40);
        }

        *(v5 + 17) = *v16;
        v5[176] = *(v16 + 2);
        v19 = v16[24];
        goto LABEL_43;
      case -15440:
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v20 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v20;
        *(v5 + 1) = *(a3 + 8);
        v21 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 15) = v21;
        if (v21)
        {
          *(v5 + 4) = vextq_s8(*v21, *v21, 8uLL);
          *(v5 + 24) = *(v21 + 4);
          *(v5 + 9) = *(v21 + 24);
          *(v5 + 10) = *(v21 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 2;
        break;
      case -15439:
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v10 = *a3;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v10;
        *(v5 + 1) = *(a3 + 8);
        v11 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
        *(v5 + 15) = v11;
        if (v11)
        {
          *(v5 + 4) = vextq_s8(*v11, *v11, 8uLL);
          *(v5 + 24) = *(v11 + 4);
          *(v5 + 9) = *(v11 + 24);
          *(v5 + 10) = *(v11 + 40);
        }

        *(v5 + 17) = *v7;
        v12 = 4;
        break;
      default:
        return result;
    }

LABEL_41:
    v5[176] = v12;
LABEL_42:
    v19 = v7[16];
LABEL_43:
    result = GTTraceFunc_argumentBytesWithPool(a3, v19, a2);
    *(v5 + 14) = result;
    return result;
  }

  if (v6 > -10178)
  {
    if (v6 > -10161)
    {
      if (v6 == -10160)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 20) = *(result + 1);
      }

      else if (v6 == -10153)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
      }
    }

    else if (v6 == -10177)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
    }

    else if (v6 == -10174)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
    }

    return result;
  }

  switch(v6)
  {
    case -15438:
      v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v13 = *a3;
      *(v5 + 1) = *(v7 + 1);
      *(v5 + 2) = v13;
      *(v5 + 1) = *(a3 + 8);
      v14 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 14), a2);
      *(v5 + 15) = v14;
      if (v14)
      {
        *(v5 + 4) = vextq_s8(*v14, *v14, 8uLL);
        *(v5 + 24) = *(v14 + 4);
        *(v5 + 9) = *(v14 + 24);
        *(v5 + 10) = *(v14 + 40);
      }

      *(v5 + 17) = *v7;
      v12 = 1;
      goto LABEL_41;
    case -10193:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 18) = *(result + 1);
      break;
    case -10178:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
      break;
  }

  return result;
}

char *GTMTLSMVisibleFunctionTableStateful_processTraceFuncWithPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 == -15597)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    if (*(a1 + 184))
    {
      v9 = result;
      result = GTTraceFunc_argumentBytesWithPool(a3, result[24], a2);
      if (*(v9 + 2))
      {
        v10 = 0;
        v11 = *(a1 + 184);
        do
        {
          *(v11 + 8 * *(v9 + 1) + 8 * v10) = *&result[8 * v10];
          ++v10;
        }

        while (*(v9 + 2) > v10);
      }
    }
  }

  else if (v6 == -15598)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v8 = *(a1 + 184);
    if (v8)
    {
      *(v8 + 8 * *(result + 2)) = *(result + 1);
    }
  }

  else
  {

    return GTMTLSMVisibleFunctionTable_processTraceFuncWithPool(a1, a2, a3);
  }

  return result;
}

char *GTMTLFXSMSpatialScaler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -20478)
  {
    if (v6 == -20480)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
      goto LABEL_17;
    }

    if (v6 == -20479)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 56;
      goto LABEL_17;
    }

    if (v6 != -20478)
    {
      return result;
    }

    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v3 = result + 8;
  }

  else
  {
    if (v6 <= -20476)
    {
      if (v6 == -20477)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 72;
      }

      goto LABEL_17;
    }

    if (v6 == -20475)
    {
      v7 = 24;
      goto LABEL_17;
    }

    if (v6 != -18432)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    *(v5 + 5) = v10;
    result = GTTraceFunc_argumentBytesWithPool(v3, v8[16], a2);
    *(v5 + 6) = result;
    v3 = result + 8;
    *(v5 + 10) = *result;
  }

  v7 = 88;
LABEL_17:
  *&v5[v7] = *v3;
  return result;
}

float32_t GTMTLFXSMTemporalScaler_processTraceFuncWithPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  switch(v6)
  {
    case -20473:
      *(a1 + 64) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20472:
      *(a1 + 148) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      break;
    case -20471:
      *(a1 + 72) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20470:
      *(a1 + 88) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20469:
      *(a1 + 56) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20468:
      *(a1 + 120) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20467:
      *(a1 + 112) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20466:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      *(a1 + 128) = v7.i32[0];
      break;
    case -20465:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      *(a1 + 132) = v7.i32[0];
      break;
    case -20464:
      *(a1 + 80) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20463:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      *(a1 + 136) = v7.i32[0];
      break;
    case -20462:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      *(a1 + 140) = v7.i32[0];
      break;
    case -20461:
      *(a1 + 96) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    case -20460:
      v7.i32[0] = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      *(a1 + 144) = v7.i32[0];
      break;
    case -20459:
      *(a1 + 149) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 2);
      break;
    case -20458:
      *(a1 + 24) = *a3;
      break;
    case -20457:
      *(a1 + 149) = 0;
      break;
    case -20456:
      *(a1 + 104) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      break;
    default:
      if (v6 == -18430)
      {
        *(a1 + 150) = *(GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2) + 1);
      }

      else if (v6 == -18431)
      {
        v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v9 = *a3;
        v10 = *v8;
        *(a1 + 8) = *(v8 + 1);
        *(a1 + 16) = v9;
        *(a1 + 4) = *(a3 + 8);
        *(a1 + 40) = v10;
        v11 = GTTraceFunc_argumentBytesWithPool(a3, v8[16], a2);
        *(a1 + 48) = v11;
        *(a1 + 128) = 0;
        v12 = *(v11 + 1);
        *(a1 + 112) = v12;
        v7 = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(a1 + 136) = v7;
        *(a1 + 144) = 1065353216;
        *(a1 + 148) = 257;
      }

      break;
  }

  return v7.f32[0];
}

char *GTMTLFXSMFrameInterpolator_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -20337)
  {
    if (v6 <= -20332)
    {
      if (v6 <= -20335)
      {
        if (v6 == -20336)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 36) = *(result + 2);
        }

        else
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 35) = *(result + 2);
        }
      }

      else if (v6 == -20334)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 31) = *(result + 2);
      }

      else if (v6 == -20333)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 34) = *(result + 2);
      }

      else
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 32) = *(result + 2);
      }
    }

    else if (v6 > -20329)
    {
      switch(v6)
      {
        case -20328:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
        case -20316:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[148] = *(result + 2);
          break;
        case -18429:
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
          *(v5 + 6) = result;
          v5[148] = 1;
          *(v5 + 14) = 0;
          break;
      }
    }

    else if (v6 == -20331)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 33) = *(result + 2);
    }

    else if (v6 == -20330)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 30) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[149] = *(result + 2);
    }
  }

  else if (v6 <= -20451)
  {
    if (v6 <= -20454)
    {
      if (v6 == -20455)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
      }

      else if (v6 == -20454)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
      }
    }

    else if (v6 == -20453)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 7) = *(result + 1);
    }

    else if (v6 == -20452)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 11) = *(result + 1);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 28) = *(result + 2);
    }
  }

  else if (v6 > -20447)
  {
    switch(v6)
    {
      case -20446:
        *(result + 3) = *a3;
        break;
      case -20445:
        result[148] = 0;
        break;
      case -20350:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[150] = *(result + 2);
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case -20450:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 29) = *(result + 2);
        break;
      case -20449:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20448:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
    }
  }

  return result;
}

char *GTMTLFXSMTemporalDenoisedScaler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -20349)
  {
    if (v6 <= -20315)
    {
      if (v6 == -20348)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
      }

      else if (v6 == -20315)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[333] = *(result + 2);
      }
    }

    else
    {
      switch(v6)
      {
        case -20314:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 20) = *(result + 1);
          break;
        case -18422:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[334] = *(result + 1);
          break;
        case -18428:
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 8);
          *(v5 + 5) = v9;
          result = GTTraceFunc_argumentBytesWithPool(a3, v7[16], a2);
          v10 = 0;
          *(v5 + 6) = result;
          *(v5 + 23) = 0;
          v11 = *(result + 24);
          *(v5 + 168) = v11;
          *(v5 + 24) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
          *(v5 + 50) = 1065353216;
          *(v5 + 166) = 257;
          do
          {
            if (v10 > 0xA || (v12 = 1.0, ((1 << v10) & 0x421) == 0))
            {
              if (v10 == 15)
              {
                v12 = 1.0;
              }

              else
              {
                v12 = 0.0;
              }
            }

            *&v5[4 * v10++ + 204] = v12;
          }

          while (v10 != 16);
          for (i = 0; i != 16; ++i)
          {
            if (i > 0xA || (v14 = 1.0, ((1 << i) & 0x421) == 0))
            {
              if (i == 15)
              {
                v14 = 1.0;
              }

              else
              {
                v14 = 0.0;
              }
            }

            *&v5[4 * i + 268] = v14;
          }

          break;
      }
    }
  }

  else
  {
    switch(v6)
    {
      case -20444:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
        break;
      case -20443:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[332] = *(result + 2);
        break;
      case -20442:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
      case -20441:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 11) = *(result + 1);
        break;
      case -20440:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
      case -20439:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 7) = *(result + 1);
        break;
      case -20438:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 22) = *(result + 1);
        break;
      case -20437:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
        break;
      case -20436:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 46) = *(result + 2);
        break;
      case -20435:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 47) = *(result + 2);
        break;
      case -20434:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
        break;
      case -20433:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 48) = *(result + 2);
        break;
      case -20432:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 49) = *(result + 2);
        break;
      case -20431:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 13) = *(result + 1);
        break;
      case -20430:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 18) = *(result + 1);
        break;
      case -20429:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 50) = *(result + 2);
        break;
      case -20428:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 19) = *(result + 1);
        break;
      case -20426:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 14) = *(result + 1);
        break;
      case -20425:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20424:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 15) = *(result + 1);
        break;
      case -20423:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v18 = *(result + 24);
        v19 = *(result + 56);
        v20 = *(result + 8);
        *(v5 + 300) = *(result + 40);
        *(v5 + 316) = v19;
        *(v5 + 268) = v20;
        *(v5 + 284) = v18;
        break;
      case -20422:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v15 = *(result + 24);
        v16 = *(result + 40);
        v17 = *(result + 56);
        *(v5 + 204) = *(result + 8);
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        *(v5 + 220) = v15;
        break;
      case -20421:
        *(result + 3) = *a3;
        break;
      case -20420:
        result[333] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

char *GTMTL4FXSMSpatialScaler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -20402)
  {
    if (v6 <= -20327)
    {
      if (v6 == -20401)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v3 = result + 8;
        v7 = 80;
      }

      else
      {
        if (v6 != -20399)
        {
          return result;
        }

        v7 = 24;
      }

      goto LABEL_20;
    }

    if (v6 == -20326)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 104;
      goto LABEL_20;
    }

    if (v6 != -18427)
    {
      return result;
    }

    v8 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v9 = *v3;
    v10 = *v8;
    *(v5 + 1) = *(v8 + 1);
    *(v5 + 2) = v9;
    *(v5 + 1) = *(v3 + 2);
    v11 = *(v8 + 2);
    *(v5 + 5) = v10;
    *(v5 + 6) = v11;
    result = GTTraceFunc_argumentBytesWithPool(v3, v8[24], a2);
    *(v5 + 7) = result;
    v3 = result + 8;
    *(v5 + 11) = *result;
    goto LABEL_18;
  }

  if (v6 <= -20404)
  {
    if (v6 == -20405)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 72;
    }

    else
    {
      if (v6 != -20404)
      {
        return result;
      }

      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v3 = result + 8;
      v7 = 64;
    }

    goto LABEL_20;
  }

  if (v6 == -20403)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    v3 = result + 8;
LABEL_18:
    v7 = 96;
    goto LABEL_20;
  }

  result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
  v3 = result + 8;
  v7 = 88;
LABEL_20:
  *&v5[v7] = *v3;
  return result;
}

char *GTMTL4FXSMTemporalScaler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  switch(v6)
  {
    case -20369:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 9) = *(result + 1);
      break;
    case -20368:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[164] = *(result + 2);
      break;
    case -20367:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 10) = *(result + 1);
      break;
    case -20366:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 12) = *(result + 1);
      break;
    case -20365:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 8) = *(result + 1);
      break;
    case -20364:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 16) = *(result + 1);
      break;
    case -20363:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 15) = *(result + 1);
      break;
    case -20362:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 36) = *(result + 2);
      break;
    case -20361:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 37) = *(result + 2);
      break;
    case -20360:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 11) = *(result + 1);
      break;
    case -20359:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 38) = *(result + 2);
      break;
    case -20358:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 39) = *(result + 2);
      break;
    case -20357:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 13) = *(result + 1);
      break;
    case -20356:
    case -20350:
    case -20349:
    case -20348:
    case -20347:
    case -20346:
    case -20345:
    case -20344:
    case -20343:
    case -20342:
    case -20341:
    case -20340:
    case -20339:
    case -20338:
    case -20337:
    case -20336:
    case -20335:
    case -20334:
    case -20333:
    case -20332:
    case -20331:
    case -20330:
    case -20329:
    case -20328:
    case -20327:
    case -20326:
    case -20325:
      return result;
    case -20355:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 40) = *(result + 2);
      break;
    case -20354:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 14) = *(result + 1);
      break;
    case -20353:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[165] = *(result + 2);
      break;
    case -20352:
      *(result + 3) = *a3;
      break;
    case -20351:
      result[165] = 0;
      break;
    case -20324:
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 17) = *(result + 1);
      break;
    default:
      if (v6 == -18423)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[166] = *(result + 1);
      }

      else if (v6 == -18426)
      {
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 8);
        v10 = *(v7 + 2);
        *(v5 + 5) = v9;
        *(v5 + 6) = v10;
        result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
        *(v5 + 7) = result;
        *(v5 + 18) = 0;
        v11 = *(result + 1);
        *(v5 + 120) = v11;
        *(v5 + 19) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v11)));
        *(v5 + 40) = 1065353216;
        *(v5 + 82) = 257;
      }

      break;
  }

  return result;
}

char *GTMTL4FXSMFrameInterpolator_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 <= -20346)
  {
    if (v6 <= -20414)
    {
      if (v6 <= -20418)
      {
        if (v6 == -20419)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 9) = *(result + 1);
        }

        else if (v6 == -20418)
        {
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[166] = *(result + 2);
        }
      }

      else
      {
        switch(v6)
        {
          case -20417:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 11) = *(result + 1);
            break;
          case -20416:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 8) = *(result + 1);
            break;
          case -20414:
            result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
            *(v5 + 12) = *(result + 1);
            break;
        }
      }
    }

    else if (v6 > -20410)
    {
      switch(v6)
      {
        case -20409:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 10) = *(result + 1);
          break;
        case -20407:
          *(result + 3) = *a3;
          break;
        case -20406:
          result[164] = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20413:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 32) = *(result + 2);
          break;
        case -20412:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 33) = *(result + 2);
          break;
        case -20411:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 13) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20340)
  {
    if (v6 > -20328)
    {
      switch(v6)
      {
        case -20327:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 15) = *(result + 1);
          break;
        case -20319:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[164] = *(result + 2);
          break;
        case -18425:
          v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v8 = *a3;
          v9 = *v7;
          *(v5 + 1) = *(v7 + 1);
          *(v5 + 2) = v8;
          *(v5 + 1) = *(a3 + 8);
          v10 = *(v7 + 2);
          *(v5 + 5) = v9;
          *(v5 + 6) = v10;
          result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
          *(v5 + 7) = result;
          v5[164] = 1;
          *(v5 + 16) = 0;
          break;
      }
    }

    else
    {
      switch(v6)
      {
        case -20339:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 34) = *(result + 2);
          break;
        case -20338:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          v5[165] = *(result + 2);
          break;
        case -20337:
          result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
          *(v5 + 14) = *(result + 1);
          break;
      }
    }
  }

  else if (v6 > -20343)
  {
    if (v6 == -20342)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 38) = *(result + 2);
    }

    else if (v6 == -20341)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 36) = *(result + 2);
    }

    else
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 37) = *(result + 2);
    }
  }

  else if (v6 == -20345)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 40) = *(result + 2);
  }

  else if (v6 == -20344)
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 39) = *(result + 2);
  }

  else
  {
    result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
    *(v5 + 35) = *(result + 2);
  }

  return result;
}

char *GTMTL4FXSMTemporalDenoisedScaler_processTraceFuncWithPool(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a3 + 8);
  if (v6 > -20326)
  {
    if (v6 > -20318)
    {
      if (v6 == -20317)
      {
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 24) = *(result + 1);
      }

      else if (v6 == -18424)
      {
        v7 = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v8 = *a3;
        v9 = *v7;
        *(v5 + 1) = *(v7 + 1);
        *(v5 + 2) = v8;
        *(v5 + 1) = *(a3 + 8);
        v10 = *(v7 + 2);
        *(v5 + 5) = v9;
        *(v5 + 6) = v10;
        result = GTTraceFunc_argumentBytesWithPool(a3, v7[24], a2);
        v11 = 0;
        *(v5 + 7) = result;
        *(v5 + 25) = 0;
        v12 = *(result + 24);
        *(v5 + 168) = v12;
        *(v5 + 26) = vneg_f32(vcvt_f32_f64(vcvtq_f64_u64(v12)));
        *(v5 + 54) = 1065353216;
        *(v5 + 174) = 257;
        do
        {
          if (v11 > 0xA || (v13 = 1.0, ((1 << v11) & 0x421) == 0))
          {
            if (v11 == 15)
            {
              v13 = 1.0;
            }

            else
            {
              v13 = 0.0;
            }
          }

          *&v5[4 * v11++ + 220] = v13;
        }

        while (v11 != 16);
        for (i = 0; i != 16; ++i)
        {
          if (i > 0xA || (v15 = 1.0, ((1 << i) & 0x421) == 0))
          {
            if (i == 15)
            {
              v15 = 1.0;
            }

            else
            {
              v15 = 0.0;
            }
          }

          *&v5[4 * i + 284] = v15;
        }
      }
    }

    else if (v6 == -20325)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      *(v5 + 23) = *(result + 1);
    }

    else if (v6 == -20318)
    {
      result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
      v5[349] = *(result + 2);
    }
  }

  else
  {
    switch(v6)
    {
      case -20397:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 9) = *(result + 1);
        break;
      case -20396:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 20) = *(result + 1);
        break;
      case -20395:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v5[348] = *(result + 2);
        break;
      case -20394:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 10) = *(result + 1);
        break;
      case -20393:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 12) = *(result + 1);
        break;
      case -20392:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 17) = *(result + 1);
        break;
      case -20391:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 8) = *(result + 1);
        break;
      case -20390:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 22) = *(result + 1);
        break;
      case -20389:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 21) = *(result + 1);
        break;
      case -20388:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 50) = *(result + 2);
        break;
      case -20387:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 51) = *(result + 2);
        break;
      case -20386:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 11) = *(result + 1);
        break;
      case -20385:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 52) = *(result + 2);
        break;
      case -20384:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 53) = *(result + 2);
        break;
      case -20383:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 14) = *(result + 1);
        break;
      case -20382:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 18) = *(result + 1);
        break;
      case -20380:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 54) = *(result + 2);
        break;
      case -20378:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 19) = *(result + 1);
        break;
      case -20376:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 15) = *(result + 1);
        break;
      case -20375:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 13) = *(result + 1);
        break;
      case -20374:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        *(v5 + 16) = *(result + 1);
        break;
      case -20373:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v19 = *(result + 24);
        v20 = *(result + 56);
        v21 = *(result + 8);
        *(v5 + 316) = *(result + 40);
        *(v5 + 332) = v20;
        *(v5 + 284) = v21;
        *(v5 + 300) = v19;
        break;
      case -20372:
        result = GTTraceFunc_argumentBytesWithPool(a3, *(a3 + 13), a2);
        v16 = *(result + 24);
        v17 = *(result + 40);
        v18 = *(result + 56);
        *(v5 + 220) = *(result + 8);
        *(v5 + 268) = v18;
        *(v5 + 252) = v17;
        *(v5 + 236) = v16;
        break;
      case -20371:
        *(result + 3) = *a3;
        break;
      case -20370:
        result[349] = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}