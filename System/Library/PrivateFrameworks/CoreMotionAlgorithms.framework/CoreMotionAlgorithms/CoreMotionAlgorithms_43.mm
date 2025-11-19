float sub_245F0BC3C(float a1, float a2, float a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = (a3 * 0.5) / 127.0;
  v6 = vcvtps_s32_f32(a1 / v5);
  memset(v19, 0, sizeof(v19));
  v7 = vcvtps_s32_f32(a2 / v5);
  v8 = 0.0;
  if (v6 < v7)
  {
    v9 = v6;
    v10 = v7;
    v11 = 0.0;
    v12 = v6;
    do
    {
      v13 = *(a5 + 4 * v12) * *(a5 + 4 * v12);
      *(v19 + v12) = v13;
      v11 = v11 + v13;
      ++v12;
    }

    while (v12 < v10);
    v8 = 0.0;
    if (v11 != 0.0 && v6 < v10)
    {
      v15 = v6;
      do
      {
        *(v19 + v15) = *(v19 + v15) / v11;
        ++v15;
      }

      while (v15 < v10);
      if (v6 < v10)
      {
        v8 = 0.0;
        do
        {
          v16 = *(v19 + v9);
          if (v16 != 0.0)
          {
            v8 = v8 - (v16 * logf(*(v19 + v9)));
          }

          ++v9;
        }

        while (v9 < v10);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8;
}

unsigned __int16 *sub_245F0BDA8(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

void sub_245F0BDFC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  v6 = *(a2 + 4);
  v4 = (a2 + 4);
  v5 = v6;
  v8 = *(a1 + 4);
  v7 = (a1 + 4);
  if (v5 != v8)
  {
    sub_245F2B0C4(v7, v4);
  }

  if (*(a2 + 2))
  {
    v9 = 0;
    do
    {
      v10 = sub_245F09E3C(a2, v9);
      sub_245F0BDA8(a1, v10);
      ++v9;
    }

    while (v9 < *(a2 + 2));
  }
}

double sub_245F0BE78(unsigned __int16 *a1)
{
  v1 = a1[1];
  if (!a1[1])
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    LODWORD(result) = *sub_245F09E3C(a1, 0);
  }

  else if (v1)
  {

    return sub_245F0C508(a1, v1 >> 1);
  }

  else
  {
    v4 = v1 >> 1;
    v5 = sub_245F0C508(a1, v1 >> 1);
    v6 = *&v5;
    result = sub_245F0C508(a1, v4 - 1);
    *&result = (v6 + *&result) * 0.5;
  }

  return result;
}

BOOL sub_245F0BF24(uint64_t a1)
{
  v1 = *(a1 + 20096) + 1;
  *(a1 + 20096) = v1;
  if ((v1 & 3) != 0)
  {
    return 0;
  }

  result = sub_245F0A2B0(a1);
  if (result)
  {
    *(a1 + 20096) = 0;
    return 1;
  }

  return result;
}

void sub_245F0BF74(uint64_t a1, float *a2)
{
  *a2 = *(a1 + 19824);
  v4 = sub_245F0A114(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v64 = 0.0;
  v65 = 0.0;
  v53 = a2;
  *(a2 + 1) = v4;
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  v69 = 0.0;
  v14 = 1;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v60 = v17;
    v61 = v12;
    v62 = v10;
    v63 = v15;
    v59 = *sub_245F09E3C((a1 + 6304), v5);
    v58 = *sub_245F09E3C((a1 + 7352), v5);
    v57 = *sub_245F09E3C((a1 + 8400), v5);
    v56 = *sub_245F09E3C((a1 + 16), v5);
    v55 = *sub_245F09E3C((a1 + 1064), v5);
    v54 = *sub_245F09E3C((a1 + 2112), v5);
    v22 = sub_245F0C3C0((a1 + 15720), v5);
    v23 = sub_245F24B54(v22);
    ++v8;
    v24 = __sincosf_stret(v23);
    v68 = v68 + v24.__cosval;
    v69 = v69 + v24.__sinval;
    v25 = sub_245F0C3C0((a1 + 15720), v5);
    v26 = sub_245F24B98(v25);
    ++v7;
    v27 = __sincosf_stret(v26);
    v66 = v66 + v27.__cosval;
    v67 = v67 + v27.__sinval;
    v28 = sub_245F0C3C0((a1 + 15720), v5);
    v29 = sub_245F24BDC(v28);
    ++v6;
    v30 = __sincosf_stret(v29);
    v64 = v64 + v30.__cosval;
    v65 = v65 + v30.__sinval;
    v31 = v59 - v9;
    v9 = v9 + ((v59 - v9) / v14);
    v10 = v62 + (v31 * (v59 - v9));
    v32 = v58 - v11;
    v11 = v11 + ((v58 - v11) / v14);
    v12 = v61 + (v32 * (v58 - v11));
    v33 = v57 - v13;
    v13 = v13 + ((v57 - v13) / v14);
    v21 = v21 + (v33 * (v57 - v13));
    v34 = v56 - v20;
    v20 = v20 + ((v56 - v20) / v14);
    v19 = v19 + (v34 * (v56 - v20));
    v35 = v55 - v18;
    v18 = v18 + ((v55 - v18) / v14);
    v17 = v60 + (v35 * (v55 - v18));
    v36 = v54 - v16;
    v16 = v16 + ((v54 - v16) / v14);
    v15 = v63 + (v36 * (v54 - v16));
    v5 += 5;
    ++v14;
  }

  while (v5 != 260);
  v53[4] = sqrtf((v11 * v11) + (v9 * v9));
  v53[5] = v13;
  v53[6] = sqrtf((v10 / 51.0) + (v12 / 51.0));
  v53[7] = sqrtf(v21 / 51.0);
  v53[8] = sqrtf((v20 * v20) + (v18 * v18));
  v53[9] = v16;
  v53[10] = sqrtf((v19 / 51.0) + (v17 / 51.0));
  v53[11] = sqrtf(v15 / 51.0);
  if (v7)
  {
    v53[12] = atan2f(v67, v66);
    v37 = 0.0;
    v39 = v68;
    v38 = v69;
    if (v7 != 1)
    {
      v40 = logf(fmaxf(((v66 * v66) + (v67 * v67)) / (v7 * v7), 0.00000011921));
      v41 = -v40;
      v42 = v40 < 0.0;
      v43 = 0.0;
      if (v42)
      {
        v43 = v41;
      }

      v37 = sqrtf(v43);
    }
  }

  else
  {
    v53[12] = 0.0;
    v37 = 0.0;
    v39 = v68;
    v38 = v69;
  }

  v53[14] = v37;
  if (v8)
  {
    v44 = atan2f(v38, v39);
    if (v44 <= 0.0)
    {
      v44 = -v44;
    }

    v53[13] = v44;
    v45 = 0.0;
    if (v8 != 1)
    {
      v46 = logf(fmaxf(((v39 * v39) + (v38 * v38)) / (v8 * v8), 0.00000011921));
      v47 = -v46;
      v42 = v46 < 0.0;
      v48 = 0.0;
      if (v42)
      {
        v48 = v47;
      }

      v45 = sqrtf(v48);
    }
  }

  else
  {
    v53[13] = -0.0;
    v45 = 0.0;
  }

  v53[15] = v45;
  v49 = 0.0;
  if (v6 >= 2)
  {
    v50 = logf(fmaxf(((v64 * v64) + (v65 * v65)) / (v6 * v6), 0.00000011921));
    v51 = -v50;
    v42 = v50 < 0.0;
    v52 = 0.0;
    if (v42)
    {
      v52 = v51;
    }

    v49 = sqrtf(v52);
  }

  v53[16] = v49;
}

uint64_t sub_245F0C3C0(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return &a1[8 * (v5 - v4) + 4];
}

os_log_t sub_245F0C4D8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

double sub_245F0C508(unsigned __int16 *a1, int a2)
{
  v4 = a1[1];
  if (v4 <= a2)
  {
    v8 = v2;
    v9 = v3;
    if (qword_27EE37520 != -1)
    {
      sub_245F2B1AC();
    }

    v6 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEBUG, "Get Nth, attempting to access invalid element", v7, 2u);
    }

    return 0.0;
  }

  else
  {

    *&result = sub_245F0C5B0(a1, 0, v4 - 1, a2);
  }

  return result;
}

float sub_245F0C5B0(unsigned __int16 *a1, unint64_t a2, int a3, int a4)
{
  v4 = 0.0;
  if (a2 <= a3)
  {
    v6 = a3;
    v7 = a2;
    while (1)
    {
      v9 = sub_245F0C640(a1, v7, v6);
      if (v9 == a4)
      {
        break;
      }

      if (v9 <= a4)
      {
        v7 = (v9 + 1);
      }

      else
      {
        v6 = v9 - 1;
        v7 = v7;
      }

      if (v7 > v6)
      {
        return v4;
      }
    }

    return *sub_245F09E3C(a1, a4);
  }

  return v4;
}

unint64_t sub_245F0C640(unsigned __int16 *a1, unint64_t a2, int a3)
{
  v6 = sub_245F09E3C(a1, a3);
  if (a2 < a3)
  {
    v7 = *v6;
    v8 = a2 - 1;
    a2 = a2;
    do
    {
      if (*sub_245F09E3C(a1, a2) <= v7)
      {
        sub_245F0C6E4(a1, ++v8, a2);
      }

      ++a2;
    }

    while (a3 != a2);
    a2 = (v8 + 1);
  }

  sub_245F0C6E4(a1, a2, a3);
  return a2;
}

_DWORD *sub_245F0C6E4(unsigned __int16 *a1, int a2, int a3)
{
  v5 = a2;
  v6 = *sub_245F09E3C(a1, a2);
  v7 = *sub_245F09E3C(a1, a3);
  *sub_245F09E3C(a1, v5) = v7;
  result = sub_245F09E3C(a1, a3);
  *result = v6;
  return result;
}

unsigned __int16 *sub_245F0C75C(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

uint64_t sub_245F0C7C8(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D6EF0);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return &a1[6 * (v5 - v4) + 4];
}

uint64_t sub_245F0C8E4(uint64_t result, uint64_t a2, float32x2_t a3, float32_t a4, float a5, float a6, float a7)
{
  v7 = 0;
  v8 = 0;
  v19 = *MEMORY[0x277D85DE8];
  a3.f32[1] = a4;
  v17 = vmul_f32(a3, vdup_n_s32(0x447A0000u));
  v18 = a5 * 1000.0;
  v9 = (result + 388);
  do
  {
    v10 = v17.f32[v7];
    v11 = *(result + v7 * 4 + 308) - v10;
    if (v11 <= 0.0)
    {
      v11 = -v11;
    }

    *(result + v7 * 4 + 308) = v10;
    v12 = *(v9 - 13);
    *(v9 - 14) = v11 + *(v9 - 14);
    ++*(v9 - 15);
    if (v12 > v11)
    {
      *(v9 - 13) = v11;
    }

    if (*(v9 - 12) < v11)
    {
      *(v9 - 12) = v11;
    }

    ++*(v9 - 3);
    v13 = *(v9 - 1);
    *(v9 - 2) = v10 + *(v9 - 2);
    if (v13 > v10)
    {
      *(v9 - 1) = v10;
    }

    if (*v9 < v10)
    {
      *v9 = v10;
    }

    v8 |= v11 > 0.000001;
    v9 += 4;
    ++v7;
  }

  while (v7 != 3);
  ++*(result + 424);
  *(result + 428) = *(result + 428) + a6;
  if (*(result + 432) > a6)
  {
    *(result + 432) = a6;
  }

  if (*(result + 436) < a6)
  {
    *(result + 436) = a6;
  }

  ++*(result + 440);
  *(result + 444) = *(result + 444) + a7;
  if (*(result + 448) > a7)
  {
    *(result + 448) = a7;
  }

  if (*(result + 452) < a7)
  {
    *(result + 452) = a7;
  }

  if (v8)
  {
    v14 = a2 - *(result + 320);
    *(result + 320) = a2;
    v15 = v14;
    ++*(result + 456);
    *(result + 460) = *(result + 460) + v14;
    if (*(result + 464) > v14)
    {
      *(result + 464) = v15;
    }

    if (*(result + 468) < v15)
    {
      *(result + 468) = v15;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F0CAC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  v2 = (result + 428);
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a2 + 32;
  v4 = *(result + 432);
  v5 = *(result + 436);
  v6 = *(result + 424);
  v7 = *(result + 448);
  v8 = *(result + 452);
  v9 = *(result + 440);
  v10 = *(result + 464);
  v11 = *(result + 468);
  v12 = *(result + 456);
  v13 = (result + 388);
  v14 = 3;
  do
  {
    v15 = *v13;
    *(v3 - 20) = *(v13 - 1);
    *(v3 - 12) = v15;
    v16 = *(v13 - 3);
    v17 = 0.0;
    v18 = 0.0;
    if (v16)
    {
      v18 = *(v13 - 2) / v16;
    }

    *(v3 - 16) = v18;
    v19 = *(v13 - 12);
    *(v3 - 32) = *(v13 - 13);
    *(v3 - 24) = v19;
    v20 = *(v13 - 15);
    if (v20)
    {
      v17 = *(v13 - 14) / v20;
    }

    *(v3 - 28) = v17;
    *(v3 - 8) = v4;
    v21 = 0.0;
    v22 = 0.0;
    *v3 = v5;
    if (v6)
    {
      v22 = *v2 / v6;
    }

    *(v3 - 4) = v22;
    *(v3 + 4) = v7;
    *(v3 + 12) = v8;
    if (v9)
    {
      v21 = *(result + 444) / v9;
    }

    *(v3 + 8) = v21;
    *(v3 + 16) = v10;
    *(v3 + 32) = v11;
    if (v12)
    {
      v23 = (*(result + 460) / v12);
    }

    else
    {
      v23 = 0;
    }

    *(v3 + 24) = v23;
    v13 += 4;
    v3 += 72;
    --v14;
  }

  while (v14);
  v24 = result + 164;
  v25 = (a2 + 272);
  v26 = 3;
  do
  {
    *(v25 - 14) = *(v24 - 88);
    v27 = *(v24 - 96);
    v28 = 0.0;
    v29 = 0.0;
    if (v27)
    {
      v29 = *(v24 - 92) / v27;
    }

    v30 = *(v24 - 84);
    *(v25 - 13) = v29;
    *(v25 - 12) = v30;
    *(v25 - 11) = *(v24 - 40);
    v31 = *(v24 - 48);
    if (v31)
    {
      v28 = *(v24 - 44) / v31;
    }

    v32 = *(v24 - 36);
    *(v25 - 10) = v28;
    *(v25 - 9) = v32;
    *(v25 - 8) = *(v24 + 8);
    v33 = 0.0;
    v34 = 0.0;
    if (*v24)
    {
      v34 = *(v24 + 4) / *v24;
    }

    v35 = *(v24 + 12);
    *(v25 - 7) = v34;
    *(v25 - 6) = v35;
    *(v25 - 5) = *(v24 + 56);
    v36 = *(v24 + 48);
    if (v36)
    {
      v33 = *(v24 + 52) / v36;
    }

    v37 = *(v24 + 60);
    *(v25 - 4) = v33;
    *(v25 - 3) = v37;
    *(v25 - 2) = *(v24 + 104);
    v38 = *(v24 + 96);
    if (v38)
    {
      v39 = *(v24 + 100) / v38;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = *(v24 + 108);
    *(v25 - 1) = v39;
    *v25 = v40;
    v25 += 15;
    v24 += 16;
    --v26;
  }

  while (v26);
  *(a2 + 400) = *(result + 60);
  v41 = *(result + 52);
  if (v41)
  {
    v42 = (*(result + 56) / v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = *(result + 64);
  *(a2 + 408) = v42;
  *(a2 + 416) = v43;
  *(a2 + 424) = *(result + 44);
  v44 = *(result + 36);
  if (v44)
  {
    v45 = (*(result + 40) / v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = *(result + 48);
  *(a2 + 432) = v45;
  *(a2 + 440) = v46;
  *(a2 + 448) = *(result + 28);
  v47 = *(result + 20);
  if (v47)
  {
    v48 = (*(result + 24) / v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = *(result + 32);
  *(a2 + 456) = v48;
  *(a2 + 464) = v49;
  *(a2 + 472) = *(result + 12);
  v50 = *(result + 4);
  if (v50)
  {
    v51 = (*(result + 8) / v50);
  }

  else
  {
    v51 = 0;
  }

  v52 = *(result + 16);
  *(a2 + 480) = v51;
  *(a2 + 488) = v52;
  *(result + 4) = 0;
  *(result + 8) = 0x7F7FFFFF00000000;
  *(result + 16) = 4286578687;
  *(result + 24) = 0x7F7FFFFF00000000;
  *(result + 32) = 4286578687;
  *(result + 40) = 0x7F7FFFFF00000000;
  *(result + 48) = 4286578687;
  *(result + 56) = 0x7F7FFFFF00000000;
  *(result + 64) = -8388609;
  *(result + 424) = 0;
  *v2 = 0x7F7FFFFF00000000;
  *(result + 436) = 4286578687;
  *(result + 444) = 0x7F7FFFFF00000000;
  *(result + 452) = 4286578687;
  *(result + 460) = 0x7F7FFFFF00000000;
  *(result + 468) = -8388609;
  v53 = (result + 388);
  v54 = 3;
  do
  {
    *(v53 - 3) = 0;
    *(v53 - 1) = 0x7F7FFFFF00000000;
    *v53 = -8388609;
    *(v53 - 15) = 0;
    *(v53 - 7) = 0x7F7FFFFF00000000;
    *(v53 - 12) = -8388609;
    v53 += 4;
    --v54;
  }

  while (v54);
  for (i = 0; i != 48; i += 16)
  {
    v56 = result + i;
    *(v56 + 68) = 0;
    *(v56 + 72) = 0x7F7FFFFF00000000;
    *(v56 + 80) = -8388609;
    *(v56 + 116) = 0;
    *(v56 + 120) = 0x7F7FFFFF00000000;
    *(v56 + 128) = -8388609;
    *(v56 + 164) = 0;
    *(v56 + 168) = 0x7F7FFFFF00000000;
    *(v56 + 176) = -8388609;
    *(v56 + 212) = 0;
    *(v56 + 216) = 0x7F7FFFFF00000000;
    *(v56 + 224) = -8388609;
    *(v56 + 260) = 0;
    *(v56 + 264) = 0x7F7FFFFF00000000;
    *(v56 + 272) = -8388609;
  }

  return result;
}

float sub_245F0CEAC(uint64_t a1, _OWORD *a2, uint64_t a3, float a4, float a5)
{
  v8 = 0;
  *a1 = 1;
  *(a1 + 4) = *a2;
  *(a1 + 24) = a3;
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  do
  {
    *sub_245F0DA38(&v11, v8, v8) = 1065353216;
    ++v8;
  }

  while (v8 != 3);
  for (i = 0; i != 36; i += 4)
  {
    *(&v11 + i) = (a5 * a5) * *(&v11 + i);
  }

  v14[0] = v11;
  v14[1] = v12;
  v15 = v13;
  sub_245F0CF80(a1 + 32, v14);
  result = a4 * a4;
  *(a1 + 56) = a4 * a4;
  *(a1 + 60) = a4 * a4;
  *(a1 + 64) = a4 * a4;
  return result;
}

BOOL sub_245F0CF80(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  result = sub_245F0EC34(a2);
  if (result)
  {
    v5 = 3;
    v6 = 2;
    while (1)
    {
      v7 = v6;
      v8 = sub_245F0ECD8(a2, v6, v6);
      v9 = v5;
      v10 = v5 - 2;
      if (v5 <= 2)
      {
        do
        {
          v11 = *sub_245F0ED3C(a1 + 12, v7, v9);
          v12 = *sub_245F0ED3C(a1 + 12, v7, v9);
          v8 = v8 + (-(v11 * v12) * *sub_245F0EDA8(a1, v9++));
        }

        while (v9 != 3);
      }

      *sub_245F0EDA8(a1, v7) = v8;
      if (*sub_245F0EDA8(a1, v7) <= 0.0)
      {
        break;
      }

      if (v7)
      {
        do
        {
          v13 = v10;
          v14 = sub_245F0ECD8(a2, v10, v7);
          v15 = v5;
          if (v5 <= 2)
          {
            do
            {
              v16 = *sub_245F0ED3C(a1 + 12, v13, v15);
              v17 = *sub_245F0ED3C(a1 + 12, v7, v15);
              v14 = v14 + (-(v16 * v17) * *sub_245F0EDA8(a1, v15++));
            }

            while (v15 != 3);
          }

          v18 = v14 / *sub_245F0EDA8(a1, v7);
          *sub_245F0ED3C(a1 + 12, v13, v7) = v18;
          v10 = v13 - 1;
        }

        while (v13);
      }

      v6 = v7 - 1;
      v5 = v7;
      if (!v7)
      {
        result = 1;
        goto LABEL_16;
      }
    }

    if (qword_27EE37520 != -1)
    {
      sub_245F2B1C0();
    }

    v19 = qword_27EE37528;
    result = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v21 = 134217984;
      v22 = v7;
      _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v21, 0xCu);
      result = 0;
    }
  }

LABEL_16:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_245F0D1C4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 12) = 0x3F80000000000000;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

void sub_245F0D1E8(float32x2_t *a1, float32x2_t *a2, unint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a1->i8[0] == 1)
  {
    v5 = a1[3];
    if (a3 > *&v5)
    {
      if (*&v5 + 1000000 >= a3)
      {
        v9 = (a3 - v5.i32[0]) / 1000000.0;
        v13 = v9;
        sub_245F0D3F8(a1, a2, v9);
        sub_245F0D458(a2, buf);
        sub_245F0D4C8(buf, v20, v13);
        v10 = 0;
        v19 = 0;
        memset(v18, 0, sizeof(v18));
        do
        {
          *sub_245F0DA38(v18, v10, v10) = 1065353216;
          ++v10;
        }

        while (v10 != 3);
        v11 = a1[8].f32[0] * v13;
        v16 = vmul_n_f32(a1[7], v13);
        v17 = v11;
        sub_245F0D618(&a1[4], v20, v18, &v16);
        if (sub_245F0D9D8(&a1[4]) < 0.000000060923)
        {
          sub_245F0EF8C(&a1[4], 0, 0, v14);
          v14[0] = v14[0] + 0.000000030462;
          v15 = v15 + 0.000000030462;
          sub_245F0CF80(&a1[4], v14);
        }

        a1[3] = a3;
      }

      else
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2B1D4();
        }

        v6 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          v7 = a1[3];
          *buf = 134218240;
          v22 = a3;
          v23 = 2048;
          v24 = v7;
          _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollMEKF]:[propagate] Requested propagation time: %llu us cannot be 1s ahead of the last state timestamp: %llu us. Rejecting request.", buf, 0x16u);
        }
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_245F0D3F8(uint64_t a1, float32x2_t *a2, float a3)
{
  v4 = a2[1].f32[0] * a3;
  v10 = vmul_n_f32(*a2, a3);
  v11 = v4;
  *v5.i64 = sub_245F24E08(&v9, &v10);
  *(a1 + 4) = sub_245F249DC(&v9, (a1 + 4), v5);
  *(a1 + 8) = v6;
  *(a1 + 12) = v7;
  *(a1 + 16) = v8;
}

double sub_245F0D458@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = *a1;
  v4 = -*a1;
  LODWORD(v8) = 0;
  v5 = *(a1 + 4);
  DWORD1(v8) = v5.i32[1];
  *(&v8 + 1) = vneg_f32(v5);
  LODWORD(v9) = 0;
  *(&v9 + 4) = __PAIR64__(v5.u32[0], LODWORD(v3));
  *(&v9 + 3) = v4;
  v10 = 0;
  do
  {
    *(&v8 + v2) = -*(&v8 + v2);
    v2 += 4;
  }

  while (v2 != 36);
  result = *&v8;
  v7 = v9;
  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  return result;
}

void sub_245F0D4C8(uint64_t a1@<X1>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = 0;
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  do
  {
    *sub_245F0DA38(a2, v6, v6) = 1065353216;
    ++v6;
  }

  while (v6 != 3);
  v7 = 0;
  v8 = *(a1 + 16);
  v13 = *a1;
  v14 = v8;
  v15 = *(a1 + 32);
  do
  {
    *(&v13 + v7) = *(&v13 + v7) * a3;
    v7 += 4;
  }

  while (v7 != 36);
  v9 = 0;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  do
  {
    *(a2 + 4 * v9) = sub_245F0F028(&v16, v9) + *(a2 + 4 * v9);
    ++v9;
  }

  while (v9 != 9);
  v10 = (a3 * 0.5) * a3;
  sub_245F0DA9C(a1, a1, &v13);
  for (i = 0; i != 36; i += 4)
  {
    *(&v13 + i) = v10 * *(&v13 + i);
  }

  v12 = 0;
  v16 = v13;
  v17 = v14;
  v18 = v15;
  do
  {
    *(a2 + 4 * v12) = sub_245F0F028(&v16, v12) + *(a2 + 4 * v12);
    ++v12;
  }

  while (v12 != 9);
}

void sub_245F0D618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v45 = *MEMORY[0x277D85DE8];
  do
  {
    v9 = 2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        v11 = *sub_245F0DA38(a2, v8, i);
        v12 = *sub_245F0ED3C(a1 + 12, i, v9);
        v13 = sub_245F0DA38(a2, v8, v9);
        *v13 = *v13 + (v11 * v12);
      }

      --v9;
    }

    while (v9);
    ++v8;
  }

  while (v8 != 3);
  for (j = 2; ; --j)
  {
    v15 = 0;
    v44[j] = 0.0;
    v16 = 0.0;
    do
    {
      v17 = *sub_245F0DA38(a2, j, v15);
      v18 = v17 * *sub_245F0DA38(a2, j, v15);
      v16 = v16 + (v18 * *sub_245F0EDA8(a1, v15));
      v44[j] = v16;
      ++v15;
    }

    while (v15 != 3);
    for (k = 0; k != 3; ++k)
    {
      v20 = *sub_245F0DA38(a3, j, k);
      v21 = v20 * *sub_245F0DA38(a3, j, k);
      v16 = v16 + (v21 * sub_245F0EA08(a4, k));
      v44[j] = v16;
    }

    if (v16 <= 0.0)
    {
      break;
    }

    if (!j)
    {
      for (m = 0; m != 3; ++m)
      {
        v40 = v44[m];
        *sub_245F0EDA8(a1, m) = v40;
      }

      goto LABEL_31;
    }

    for (n = 0; n != j; ++n)
    {
      v23 = 0;
      v24 = 0.0;
      do
      {
        v25 = *sub_245F0DA38(a2, n, v23);
        v26 = v25 * *sub_245F0EDA8(a1, v23);
        v24 = v24 + (v26 * *sub_245F0DA38(a2, j, v23++));
      }

      while (v23 != 3);
      for (ii = 0; ii != 3; ++ii)
      {
        v28 = *sub_245F0DA38(a3, n, ii);
        v29 = v28 * sub_245F0EA08(a4, ii);
        v24 = v24 + (v29 * *sub_245F0DA38(a3, j, ii));
      }

      v30 = 0;
      *sub_245F0ED3C(a1 + 12, n, j) = v24 / v16;
      do
      {
        v31 = *sub_245F0ED3C(a1 + 12, n, j);
        v32 = *sub_245F0DA38(a2, j, v30);
        v33 = sub_245F0DA38(a2, n, v30);
        *v33 = *v33 - (v31 * v32);
        ++v30;
      }

      while (v30 != 3);
      for (jj = 0; jj != 3; ++jj)
      {
        v35 = *sub_245F0ED3C(a1 + 12, n, j);
        v36 = *sub_245F0DA38(a3, j, jj);
        v37 = sub_245F0DA38(a3, n, jj);
        *v37 = *v37 - (v35 * v36);
      }
    }
  }

  if (qword_27EE37520 != -1)
  {
    sub_245F2B1C0();
  }

  v38 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v42 = 134217984;
    v43 = j;
    _os_log_impl(&dword_245D80000, v38, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", &v42, 0xCu);
  }

LABEL_31:
  v41 = *MEMORY[0x277D85DE8];
}

float sub_245F0D9D8(uint64_t a1)
{
  v2 = sub_245F0EE14(a1, 0, 0);
  for (i = 1; i != 3; ++i)
  {
    v2 = v2 + sub_245F0EE14(a1, i, i);
  }

  return v2;
}

uint64_t sub_245F0DA38(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B1E8();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (3 * a3 + a2);
}

float *sub_245F0DA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_245F0ECD8(a1, i, 0);
      v9 = v8 * sub_245F0ECD8(a2, 0, j);
      *sub_245F0DA38(a3, i, j) = v9;
      for (k = 1; k != 3; ++k)
      {
        v11 = sub_245F0ECD8(a1, i, k);
        v12 = sub_245F0ECD8(a2, k, j);
        result = sub_245F0DA38(a3, i, j);
        *result = *result + (v11 * v12);
      }
    }
  }

  return result;
}

void sub_245F0DB8C(uint64_t a1, float *a2, uint64_t a3, unint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) == a4)
  {
    if ((atomic_load_explicit(&qword_27EE376A0, memory_order_acquire) & 1) == 0)
    {
      sub_245F2B340();
    }

    v8 = sub_245F24D2C((a1 + 4), *&qword_27EE376A8, *(&qword_27EE376A8 + 1), *&dword_27EE376B0);
    v10 = v9;
    v12 = v11;
    v13 = 0;
    v51.i32[0] = 0;
    v51.f32[1] = v11;
    v51.f32[2] = -v9;
    v51.f32[3] = -v11;
    v52.i32[0] = 0;
    *(v52.i64 + 4) = __PAIR64__(LODWORD(v9), LODWORD(v8));
    v52.f32[3] = -v8;
    v53 = 0;
    do
    {
      v51.f32[v13] = v51.f32[v13] + v51.f32[v13];
      ++v13;
    }

    while (v13 != 9);
    *buf = v51;
    *&buf[16] = v52;
    v55 = v53;
    *&v49 = sub_245F1710C(a2) - v8;
    *(&v49 + 1) = v14 - v10;
    v50 = v15 - v12;
    sub_245F1720C(a2, v48);
    v41 = sub_245F0E0C4(a3);
    v42 = v16;
    v43 = v17;
    v44 = v18;
    sub_245F0DFDC(v48, &v41, v47);
    sub_245F0E144(v48, v45);
    sub_245F0DEFC(v47, v45, &v51);
    sub_245F24D1C((a1 + 4), v47);
    sub_245F0DA9C(v47, &v51, &v41);
    sub_245F0E1D8(v47, v40);
    sub_245F0DA9C(&v41, v40, v45);
    v19 = 0;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    do
    {
      *sub_245F0DA38(&v35, v19, v19) = 1065353216;
      ++v19;
    }

    while (v19 != 3);
    for (i = 0; i != 36; i += 4)
    {
      *(&v35 + i) = *(&v35 + i) * 0.01;
    }

    v21 = 0;
    v38[0] = v35;
    v38[1] = v36;
    v39 = v37;
    do
    {
      v45[0].f32[v21] = sub_245F0F028(v38, v21) + v45[0].f32[v21];
      ++v21;
    }

    while (v21 != 9);
    v51 = v45[0];
    v52 = v45[1];
    v53 = v46;
    v41 = sub_245F0E254(&v51);
    v42 = v22;
    v43 = v23;
    if (sub_245F0E2C0(a1, buf, &v49, &v51, a4))
    {
      sub_245F0E508((a1 + 32), buf, &v41, &v49);
      v27 = ((v12 * v24) + (v10 * v25)) + (v8 * v26);
      v40[0] = v26 - (v8 * v27);
      v40[1] = v25 - (v10 * v27);
      v40[2] = v24 - (v12 * v27);
      *v28.i64 = sub_245F24E08(v45, v40);
      *(a1 + 4) = sub_245F249DC(v45, (a1 + 4), v28);
      *(a1 + 8) = v29;
      *(a1 + 12) = v30;
      *(a1 + 16) = v31;
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2B1D4();
    }

    v32 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 24);
      *buf = 134218240;
      *&buf[4] = a4;
      *&buf[12] = 2048;
      *&buf[14] = v33;
      _os_log_impl(&dword_245D80000, v32, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollMEKF]:[ringMeasurementUpdate] Measurement timestamp: %llu us must match the state timestamp: %llu us", buf, 0x16u);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

float *sub_245F0DEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v8 = sub_245F0F100(a1, i, 0);
      v9 = v8 * sub_245F0F288(a2, 0, j);
      *sub_245F0DA38(a3, i, j) = v9;
      v10 = sub_245F0F100(a1, i, 1uLL);
      v11 = sub_245F0F288(a2, 1uLL, j);
      result = sub_245F0DA38(a3, i, j);
      *result = *result + (v10 * v11);
    }
  }

  return result;
}

float *sub_245F0DFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_245F0F100(a1, i, 0);
      v11 = v10 * sub_245F0F164(a2, 0, v7);
      *sub_245F0F1C4(a3, i, v7) = v11;
      v12 = sub_245F0F100(a1, i, 1uLL);
      v13 = sub_245F0F164(a2, 1uLL, v7);
      result = sub_245F0F1C4(a3, i, v7);
      v8 = 0;
      *result = *result + (v12 * v13);
      v7 = 1;
    }

    while ((v9 & 1) != 0);
  }

  return result;
}

float sub_245F0E0C4(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  v2 = sub_245F0F064(a1, 0);
  *sub_245F0F0A0(v5, 0, 0) = v2;
  v3 = sub_245F0F064(a1, 1uLL);
  *sub_245F0F0A0(v5, 1uLL, 1uLL) = v3;
  return *v5;
}

float *sub_245F0E144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_245F0F100(a1, i, 0);
    *sub_245F0F228(a2, 0, i) = v5;
    v6 = sub_245F0F100(a1, i, 1uLL);
    result = sub_245F0F228(a2, 1uLL, i);
    *result = v6;
  }

  return result;
}

float *sub_245F0E1D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v6 = sub_245F0ECD8(a1, i, j);
      result = sub_245F0DA38(a2, j, i);
      *result = v6;
    }
  }

  return result;
}

float sub_245F0E254(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = sub_245F0ECD8(a1, i, i);
    *sub_245F0F2E8(&v5, i) = v3;
  }

  return v5;
}

BOOL sub_245F0E2C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v36 = *MEMORY[0x277D85DE8];
  sub_245F0EF8C(a1 + 32, 0, 0, &v25);
  sub_245F0DA9C(a2, &v25, v27);
  sub_245F0E1D8(a2, v24);
  sub_245F0DA9C(v27, v24, buf);
  for (i = 0; i != 9; ++i)
  {
    *&buf[i] = sub_245F0F028(a4, i) + *&buf[i];
  }

  v28[0] = *buf;
  v28[1] = *&buf[4];
  v29 = *v31;
  v23 = 0;
  sub_245F0E838(v28, &v23, v27);
  v10 = 0;
  if (v23 == 1)
  {
    v11 = *(a3 + 2);
    v25 = *a3;
    v26 = v11;
    v24[0] = sub_245F0EB94(&v25);
    v24[1] = v12;
    v24[2] = v13;
    buf[0] = sub_245F0EAC0(v24, v27);
    buf[1] = v14;
    buf[2] = v15;
    v16 = sub_245F0EA44(buf, &v25);
    v10 = v16 < 16.266;
    if (v16 >= 16.266)
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2B3A0();
      }

      v17 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
      {
        v18 = *a3;
        v19 = *(a3 + 1);
        v20 = *(a3 + 2);
        buf[0] = 134219264;
        *&buf[1] = (a5 * 0.000001);
        LOWORD(buf[3]) = 2048;
        *(&buf[3] + 2) = v16;
        HIWORD(buf[5]) = 2048;
        *&buf[6] = 0x40304425A0000000;
        *v31 = 2048;
        *&v31[2] = v18;
        v32 = 2048;
        v33 = v19;
        v34 = 2048;
        v35 = v20;
        _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMABarrelRollMEKF]:[checkNIS] Measurement rejected by NIS check.t: %.6f s, NIS score: %.6f,  NIS Threshold: %.6f, r: %.6f %.6f %.6f", buf, 0x3Eu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_245F0E508(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0;
  v34 = 0;
  while (2)
  {
    v9 = 0;
    v10 = -1;
    do
    {
      v11 = sub_245F0ECD8(a2, v8, v9);
      v12 = v10;
      if (v9)
      {
        do
        {
          v13 = sub_245F0ECD8(a2, v8, v12);
          v11 = v11 + (v13 * *sub_245F0ED3C((a1 + 3), v12--, v9));
        }

        while (v12 != -1);
      }

      v38[v9] = v11;
      v37[v9] = v11 * *sub_245F0EDA8(a1, v9);
      ++v9;
      ++v10;
    }

    while (v9 != 3);
    v14 = sub_245F0EA08(a3, v8);
    v15 = v14 + (v38[0] * v37[0]);
    if (v15 <= 0.0)
    {
      if (qword_27EE37520 != -1)
      {
        sub_245F2B3C8();
      }

      v31 = qword_27EE37528;
      if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v36 = v8;
LABEL_20:
        _os_log_impl(&dword_245D80000, v31, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }
    }

    else
    {
      v16 = 1.0 / v15;
      *a1 = *a1 * ((1.0 / v15) * sub_245F0EA08(a3, v8));
      for (i = 1; i != 3; ++i)
      {
        v18 = v38[i];
        v19 = v15 + (v18 * v37[i]);
        if (v19 <= 0.0)
        {
          if (qword_27EE37520 != -1)
          {
            sub_245F2B3C8();
          }

          v31 = qword_27EE37528;
          if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v36 = v8;
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        v20 = -(v18 * v16);
        v16 = 1.0 / v19;
        v21 = sub_245F0EDA8(a1, i);
        v22 = 0;
        *v21 = (v15 * (1.0 / v19)) * *v21;
        do
        {
          v23 = *sub_245F0ED3C((a1 + 3), v22, i);
          v24 = v37[v22];
          v25 = sub_245F0ED3C((a1 + 3), v22, i);
          v26 = v37[i];
          *v25 = v23 + (v24 * v20);
          v37[v22++] = v24 + (v26 * v23);
        }

        while (i != v22);
        v15 = v19;
      }

      v27 = 0;
      v28 = v16 * sub_245F0EA08(a4, v8);
      do
      {
        v29 = v37[v27];
        v30 = sub_245F0F2E8(&v33, v27);
        *v30 = *v30 + (v28 * v29);
        ++v27;
      }

      while (v27 != 3);
      if (++v8 != 3)
      {
        continue;
      }
    }

    break;
  }

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
}

float *sub_245F0E838@<X0>(float *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_245F0F324(a1);
  if (fabsf(v6) >= 0.000000001)
  {
    v23 = a3;
    v9 = 0;
    *a2 = 1;
    do
    {
      v10 = 0;
      v11 = v9;
      if (v9)
      {
        v12 = v9 - 1;
      }

      else
      {
        v12 = 2;
      }

      if (++v9 == 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = v9;
      }

      do
      {
        if (v10)
        {
          v14 = v10 - 1;
        }

        else
        {
          v14 = 2;
        }

        v15 = v10 + 1;
        if (v10 == 2)
        {
          v16 = 0;
        }

        else
        {
          v16 = v10 + 1;
        }

        v17 = sub_245F0ECD8(a1, v12, v14);
        v18 = sub_245F0ECD8(a1, v13, v16);
        v19 = sub_245F0ECD8(a1, v13, v14);
        v20 = (v17 * v18) - (v19 * sub_245F0ECD8(a1, v12, v16));
        result = sub_245F0DA38(v27, v10, v11);
        *result = v20;
        ++v10;
      }

      while (v15 != 3);
    }

    while (v9 != 3);
    v21 = 0;
    v24 = v27[0];
    v25 = v27[1];
    v26 = v28;
    do
    {
      *(&v24 + v21) = *(&v24 + v21) / v6;
      v21 += 4;
    }

    while (v21 != 36);
    v22 = v25;
    *v23 = v24;
    *(v23 + 16) = v22;
    *(v23 + 32) = v26;
  }

  else
  {
    v7 = 0;
    *a2 = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    do
    {
      result = sub_245F0DA38(a3, v7, v7);
      *result = 1.0;
      ++v7;
    }

    while (v7 != 3);
  }

  return result;
}

float sub_245F0EA08(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B3F0();
  }

  return *(a1 + 4 * a2);
}

float sub_245F0EA44(float *a1, float *a2)
{
  v4 = *a1 * *a2;
  for (i = 1; i != 3; ++i)
  {
    v6 = sub_245F0F428(a1, 0, i);
    v4 = v4 + (v6 * sub_245F0F36C(a2, i, 0));
  }

  return v4;
}

float sub_245F0EAC0(float *a1, uint64_t a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = *a1;
    v6 = v5 * sub_245F0ECD8(a2, 0, i);
    *sub_245F0F3CC(&v12, 0, i) = v6;
    for (j = 1; j != 3; ++j)
    {
      v8 = sub_245F0F428(a1, 0, j);
      v9 = sub_245F0ECD8(a2, j, i);
      v10 = sub_245F0F3CC(&v12, 0, i);
      *v10 = *v10 + (v8 * v9);
    }
  }

  return v12;
}

float sub_245F0EB94(uint64_t a1)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = sub_245F0F36C(a1, i, 0);
    *sub_245F0F3CC(&v5, 0, i) = v3;
  }

  return v5;
}

os_log_t sub_245F0EC04()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

BOOL sub_245F0EC34(uint64_t a1)
{
  v2 = 0;
  v3 = 1;
LABEL_2:
  v4 = v3;
  v5 = v2 + 1;
  while (1)
  {
    v6 = sub_245F0ECD8(a1, v2, v5);
    v7 = v6 - sub_245F0ECD8(a1, v5, v2);
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 > 1.0e-16)
    {
      return v7 <= 1.0e-16;
    }

    if (++v5 == 3)
    {
      v3 = 0;
      v2 = 1;
      if (v4)
      {
        goto LABEL_2;
      }

      return v7 <= 1.0e-16;
    }
  }
}

float sub_245F0ECD8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_245F0ED3C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    sub_245F2B5F4();
  }

  if (a3 <= a2)
  {
    sub_245F2B6A0();
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_245F0EDA8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B760();
  }

  return a1 + 4 * a2;
}

os_log_t sub_245F0EDE4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

float sub_245F0EE14(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 <= 2)
  {
    do
    {
      v8 = 1.0;
      v9 = 1.0;
      if (a3 != v3)
      {
        v9 = 0.0;
        if (v3 > a3)
        {
          v9 = sub_245F0EEE4(a1 + 12, a3, v3);
        }
      }

      if (a2 != v3)
      {
        v8 = 0.0;
        if (v3 > a2)
        {
          v8 = sub_245F0EEE4(a1 + 12, a2, v3);
        }
      }

      v4 = v4 + ((v8 * sub_245F0EF50(a1, v3++)) * v9);
    }

    while (v3 != 3);
  }

  return v4;
}

float sub_245F0EEE4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    sub_245F2B80C();
  }

  if (a3 <= a2)
  {
    sub_245F2B8B8();
  }

  return *(a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1)));
}

float sub_245F0EF50(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2B978();
  }

  return *(a1 + 4 * a2);
}

float *sub_245F0EF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 | a2)
  {
    sub_245F2BA24();
  }

  for (i = 0; i != 3; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v10 = sub_245F0EE14(a1, i + a2, a3 + j);
      result = sub_245F0DA38(a4, i, j);
      *result = v10;
    }
  }

  return result;
}

float sub_245F0F028(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
    sub_245F2BAB0();
  }

  return *(a1 + 4 * a2);
}

float sub_245F0F064(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_245F2BB64();
  }

  return *(a1 + 4 * a2);
}

uint64_t sub_245F0F0A0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BC14();
  }

  if (a3 >= 2)
  {
    sub_245F2BCC4();
  }

  return a1 + 4 * (a2 + 2 * a3);
}

float sub_245F0F100(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
  }

  if (a3 >= 2)
  {
    sub_245F2BD74();
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

float sub_245F0F164(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BE24();
  }

  if (a3 >= 2)
  {
    sub_245F2BD74();
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F0F1C4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B1E8();
  }

  if (a3 >= 2)
  {
    sub_245F2BCC4();
  }

  return a1 + 4 * (3 * a3 + a2);
}

uint64_t sub_245F0F228(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BC14();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (a2 + 2 * a3);
}

float sub_245F0F288(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2BE24();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F0F2E8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_245F2BED4();
  }

  return a1 + 4 * a2;
}

float sub_245F0F36C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    sub_245F2B49C();
    if (!a3)
    {
      return *(a1 + 4 * (3 * a3 + a2));
    }

LABEL_5:
    sub_245F2BF80();
    return *(a1 + 4 * (3 * a3 + a2));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (3 * a3 + a2));
}

uint64_t sub_245F0F3CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C034();
  }

  if (a3 >= 3)
  {
    sub_245F2B294();
  }

  return a1 + 4 * (a3 + a2);
}

float sub_245F0F428(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C0E8();
  }

  if (a3 >= 3)
  {
    sub_245F2B548();
  }

  return *(a1 + 4 * (a3 + a2));
}

void sub_245F0F4B4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

BOOL sub_245F0F4E0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void sub_245F0F510(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

float sub_245F0F554(float *a1)
{
  v1 = 1.57079633 - sub_245F0F5DC(a1);
  fmod(v2 + 1.57079633 + 3.14159265, 6.28318531);
  return v1;
}

float sub_245F0F5DC(float *a1)
{
  sub_245F24D1C(a1, v3);
  v1 = asinf(v3[7]);
  atan2f(v3[6], v3[8]);
  atan2f(v3[1], v3[4]);
  return v1;
}

uint64_t sub_245F0F63C(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

float32_t sub_245F0F648(int *a1)
{
  v1 = *a1;
  v3 = 0;
  v4 = v1;
  sub_245F24E08(&v5, &v3);
  return v5.f32[0];
}

void sub_245F0F684(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v13 = v2;
    v14 = v3;
    v6 = *(a1 + 8);
    if (a2 >= v6)
    {
      v7 = (a1 + 4);
      if (*(a1 + 4) < 0.27416)
      {
        v11 = 1065353216;
        v12 = 1065353216;
        if (v6)
        {
          v8 = (a2 - v6) * 0.000001;
          v9 = v8 * 0.0000030462;
        }

        else
        {
          v9 = 0.0;
        }

        v10 = v9;
        sub_245F0F734(v7, &v12, &v11, &v10);
      }

      *(a1 + 8) = a2;
    }
  }
}

void sub_245F0F734(float *a1, uint64_t a2, uint64_t a3, float *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = *sub_245F101E8(a2, 0, 0);
  v9 = ((v8 * *sub_245F101E8(a2, 0, 0)) * *a1) + 0.0;
  v10 = *sub_245F101E8(a3, 0, 0);
  v11 = v9 + ((v10 * *sub_245F101E8(a3, 0, 0)) * *a4);
  if (v11 <= 0.0)
  {
    if (qword_27EE37520 != -1)
    {
      sub_245F2C19C();
    }

    v12 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134217984;
      v15 = 0;
      _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", &v14, 0xCu);
    }
  }

  else
  {
    *a1 = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_245F0F884(uint64_t a1, float *a2, float *a3, float32x2_t *a4, float32x2_t *a5, unint64_t a6)
{
  v8 = *(a1 + 8);
  if (a6 >= v8)
  {
    v14 = v6;
    v15 = v7;
    if (v8)
    {
      v10 = (a6 - v8) > 0xF4240;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      sub_245F17158(v13, a2, a3, a4, a5);
      if (*(a1 + 16))
      {
        sub_245F0F684(a1, a6);
        sub_245F0F98C(a1, v13, a3);
      }

      else
      {
        sub_245F0F924(a1, v13, a6);
      }
    }
  }
}

uint64_t sub_245F0F924(uint64_t result, float *a2, uint64_t a3)
{
  if ((*(result + 16) & 1) == 0)
  {
    v4 = result;
    sub_245F171AC(a2);
    *v4 = v5;
    v6 = 1022986982;
    result = sub_245F0FB34(v4 + 4, &v6);
    *(v4 + 8) = a3;
    *(v4 + 16) = 1;
  }

  return result;
}

void sub_245F0F98C(float *a1, float *a2, _DWORD *a3)
{
  v6 = sub_245F1715C(a2, *a1);
  v8 = v7;
  *v40 = v6;
  *&v40[1] = v7;
  v9 = __sincosf_stret(*a1);
  v39[0] = -v9.__sinval;
  v39[1] = -v9.__cosval;
  v39[2] = v9.__cosval;
  v39[3] = -v9.__sinval;
  v38[0] = sub_245F0FC38(v39, a2);
  v38[1] = v10;
  v11 = a3[1];
  v37[0] = *a3;
  v37[1] = 0;
  v37[2] = 0;
  v37[3] = v11;
  v33.f32[0] = a1[1] + 0.0;
  v34.i32[0] = sub_245F0FE7C(v38, &v33);
  v34.i32[1] = v12;
  v35 = sub_245F0FF08(v38);
  v36 = v13;
  v14 = sub_245F0FD54(&v34, &v35);
  v18 = sub_245F0FCE8(v37, v14, v15, v16, v17);
  *v22.i32 = (v18 * v21.f32[0]) - (v20 * v19);
  if (fabsf(*v22.i32) >= 0.000001)
  {
    v21.f32[1] = -v19;
    v21.f32[2] = -v20;
    v21.f32[3] = v18;
    v34 = vdivq_f32(v21, vdupq_lane_s32(v22, 0));
    v35 = v6;
    v36 = v8;
    v33.i32[0] = sub_245F0FF08(&v35);
    v33.i32[1] = v23;
    v24 = sub_245F0FF88(&v33, &v34);
    if (((v35 * v24) + (v25 * v36)) < 16.266)
    {
      v33 = *a3;
      v26 = sub_245F10040(a1 + 1, v38, &v33, v40);
      if (fabsf(v26) > 0.17453)
      {
        __asm { FMOV            V1.2S, #16.0 }

        v32 = vmul_f32(v33, _D1);
        v26 = sub_245F10040(a1 + 1, v38, &v32, v40);
      }

      *a1 = v26 + *a1;
    }
  }
}

BOOL sub_245F0FB34(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_245F10278(a2, 0, 0);
  *sub_245F10240(a1, 0) = v3;
  v4 = *sub_245F10240(a1, 0);
  if (v4 <= 0.0)
  {
    if (qword_27EE37520 != -1)
    {
      sub_245F2C19C();
    }

    v5 = qword_27EE37528;
    if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
    {
      v8 = 134217984;
      v9 = 0;
      _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v8, 0xCu);
    }
  }

  result = v4 > 0.0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

float sub_245F0FC38(uint64_t a1, float *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_245F0F164(a1, v4, 0) * *a2;
    *sub_245F102D0(&v12, v4) = v7;
    v8 = sub_245F0F164(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_245F102D0(&v12, v4);
    v5 = 0;
    *v10 = *v10 + (v8 * v9);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

float sub_245F0FCE8(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = sub_245F1047C(a1, v6) + *&v8[v6];
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

float sub_245F0FD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F1030C(a1, 0, 0);
  v5 = v4 * sub_245F10420(a2, 0, 0);
  *sub_245F0F0A0(&v13, 0, 0) = v5;
  v6 = sub_245F1030C(a1, 0, 0);
  v7 = v6 * sub_245F10420(a2, 0, 1uLL);
  *sub_245F0F0A0(&v13, 0, 1uLL) = v7;
  v8 = sub_245F1030C(a1, 1uLL, 0);
  v9 = v8 * sub_245F10420(a2, 0, 0);
  *sub_245F0F0A0(&v13, 1uLL, 0) = v9;
  v10 = sub_245F1030C(a1, 1uLL, 0);
  v11 = v10 * sub_245F10420(a2, 0, 1uLL);
  *sub_245F0F0A0(&v13, 1uLL, 1uLL) = v11;
  return v13;
}

float sub_245F0FE7C(uint64_t a1, float *a2)
{
  v4 = sub_245F1030C(a1, 0, 0) * *a2;
  *sub_245F10368(&v7, 0, 0) = v4;
  v5 = sub_245F1030C(a1, 1uLL, 0) * *a2;
  *sub_245F10368(&v7, 1uLL, 0) = v5;
  return v7;
}

float sub_245F0FF08(uint64_t a1)
{
  v2 = sub_245F1030C(a1, 0, 0);
  *sub_245F103C4(&v5, 0, 0) = v2;
  v3 = sub_245F1030C(a1, 1uLL, 0);
  *sub_245F103C4(&v5, 0, 1uLL) = v3;
  return v5;
}

float sub_245F0FF88(float *a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = *a1;
    v8 = v7 * sub_245F0F164(a2, 0, v4);
    *sub_245F103C4(&v13, 0, v4) = v8;
    v9 = a1[1];
    v10 = sub_245F0F164(a2, 1uLL, v4);
    v11 = sub_245F103C4(&v13, 0, v4);
    v5 = 0;
    *v11 = *v11 + (v9 * v10);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v13;
}

float sub_245F10040(float *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = sub_245F1030C(a2, v8, 0);
    v13 = v12 * *a1;
    v14 = sub_245F0F064(a3, v8) + (v12 * v13);
    if (v14 <= 0.0)
    {
      break;
    }

    v15 = 1.0 / v14;
    *a1 = *a1 * ((1.0 / v14) * sub_245F0F064(a3, v8));
    v16 = sub_245F0F064(a4, v8);
    v10 = 0;
    v9 = v9 + ((v15 * v16) * v13);
    v8 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (qword_27EE37520 != -1)
  {
    sub_245F2C19C();
  }

  v17 = qword_27EE37528;
  v9 = 0.0;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v20 = 134217984;
    v21 = v8;
    _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", &v20, 0xCu);
  }

LABEL_9:
  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

os_log_t sub_245F101B8()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

uint64_t sub_245F101E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_245F2C1B0();
    if (!a3)
    {
      return a1 + 4 * (a3 + a2);
    }

LABEL_5:
    sub_245F2C25C();
    return a1 + 4 * (a3 + a2);
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return a1 + 4 * (a3 + a2);
}

uint64_t sub_245F10240(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_245F2C308();
  }

  return a1 + 4 * a2;
}

float sub_245F10278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_245F2C3B4();
    if (!a3)
    {
      return *(a1 + 4 * (a3 + a2));
    }

LABEL_5:
    sub_245F2C460();
    return *(a1 + 4 * (a3 + a2));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (a3 + a2));
}

uint64_t sub_245F102D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_245F2C50C();
  }

  return a1 + 4 * a2;
}

float sub_245F1030C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2C5B8();
    if (!a3)
    {
      return *(a1 + 4 * (a2 + 2 * a3));
    }

LABEL_5:
    sub_245F2C460();
    return *(a1 + 4 * (a2 + 2 * a3));
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_245F10368(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    sub_245F2C664();
    if (!a3)
    {
      return a1 + 4 * (a2 + 2 * a3);
    }

LABEL_5:
    sub_245F2C25C();
    return a1 + 4 * (a2 + 2 * a3);
  }

  if (a3)
  {
    goto LABEL_5;
  }

  return a1 + 4 * (a2 + 2 * a3);
}

uint64_t sub_245F103C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C1B0();
  }

  if (a3 >= 2)
  {
    sub_245F2C710();
  }

  return a1 + 4 * (a3 + a2);
}

float sub_245F10420(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    sub_245F2C3B4();
  }

  if (a3 >= 2)
  {
    sub_245F2C7BC();
  }

  return *(a1 + 4 * (a3 + a2));
}

float sub_245F1047C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    sub_245F2C868();
  }

  return *(a1 + 4 * a2);
}

uint64_t sub_245F104F0(uint64_t a1)
{
  *a1 = 0;
  sub_245F12578(a1 + 8);
  *(a1 + 9920) = 0;
  *(a1 + 9904) = 0u;
  *(a1 + 9888) = 0u;
  *(a1 + 9928) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9968) = 0;
  *(a1 + 9976) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9984) = 0;
  *(a1 + 10000) = 0;
  *(a1 + 9992) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 10008) = 0u;
  *(a1 + 10024) = 0;
  sub_245F12964(a1 + 10032);
  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService] Created CMABarrelRollService.", v4, 2u);
  }

  return a1;
}

void sub_245F105F4(uint64_t a1)
{
  sub_245F18A54((a1 + 8));
  *(a1 + 9920) = 0;
  *(a1 + 9888) = 0;
  *(a1 + 9904) = 0;
  *(a1 + 9896) = 0;
  *(a1 + 9928) = 0u;
  *(a1 + 9944) = 0u;
  *(a1 + 9960) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9968) = 0;
  *(a1 + 9976) = 0xFF7FFFFF7F7FFFFFLL;
  *(a1 + 9984) = 0;
  *(a1 + 9992) = 0xFF7FFFFF7F7FFFFFLL;
  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[reset] Reset CMABarrelRollService.", v3, 2u);
  }
}

void sub_245F106BC(uint64_t a1, unint64_t a2, int a3, int a4, float a5, float a6)
{
  v61 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (*(a1 + 9920) != 1)
    {
LABEL_9:
      v15 = sub_245F18F94((a1 + 8), a2, a3, a4, a5, a6);
      if (!*(a1 + 9936))
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C93C();
        }

        v16 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_245F12BC8(v46, (a1 + 5568));
          v17 = sub_245F10E5C(v46);
          v18 = *&v17;
          sub_245F12BC8(v45, (a1 + 4256));
          v19 = sub_245F10E5C(v45);
          v20 = *(a1 + 4354);
          v21 = *(a1 + 3042);
          *buf = 134351104;
          *v48 = a2;
          *&v48[8] = 1026;
          *&v48[10] = a3;
          *&v48[14] = 2050;
          *&v48[16] = (a5 * 57.296);
          v49 = 2050;
          v50 = (a6 * 57.296);
          v51 = 2050;
          v52 = (v18 * 57.296);
          v53 = 2050;
          v54 = (*&v19 * 57.296);
          v55 = 2050;
          v56 = v20;
          v57 = 2050;
          v58 = v21;
          v59 = 1026;
          v60 = v15;
          _os_log_impl(&dword_245D80000, v16, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Received first ring sensor input, timestamp: %{public}llu us, touching: %{public}d, altitude: %{public}.3f deg, azimuth: %{public}.3f deg, wAuxNorm: %{public}.3f dps, wSrcNorm: %{public}.3f dps, numAuxDM6:%{public}zu, numSrcDM6:%{public}zu, feedRing: %{public}d", buf, 0x54u);
          sub_245F12B1C(v45);
          sub_245F12B1C(v46);
        }

        *(a1 + 9936) = a2;
      }

      if (*(a1 + 9944) == 0 && v15)
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C93C();
        }

        v22 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_245F12BC8(v44, (a1 + 5568));
          v23 = sub_245F10E5C(v44);
          v24 = *&v23;
          sub_245F12BC8(v43, (a1 + 4256));
          v25 = sub_245F10E5C(v43);
          v26 = *(a1 + 4354);
          v27 = *(a1 + 3042);
          *buf = 134351104;
          *v48 = a2;
          *&v48[8] = 1026;
          *&v48[10] = a3;
          *&v48[14] = 2050;
          *&v48[16] = (a5 * 57.296);
          v49 = 2050;
          v50 = (a6 * 57.296);
          v51 = 2050;
          v52 = (v24 * 57.296);
          v53 = 2050;
          v54 = (*&v25 * 57.296);
          v55 = 2050;
          v56 = v26;
          v57 = 2050;
          v58 = v27;
          v59 = 1026;
          v60 = 1;
          _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Consumed first ring sensor input, timestamp: %{public}llu us, touching: %{public}d, altitude: %{public}.3f deg, azimuth: %{public}.3f deg, wAuxNorm: %{public}.3f dps, wSrcNorm: %{public}.3f dps, numAuxDM6:%{public}zu, numSrcDM6:%{public}zu, feedRing: %{public}d", buf, 0x54u);
          sub_245F12B1C(v43);
          sub_245F12B1C(v44);
        }

        *(a1 + 9944) = a2;
      }

      v28 = *(a1 + 9888);
      if (v28)
      {
        v29 = a2 - v28;
        v30 = v29 * 0.000001;
        ++*(a1 + 9952);
        *(a1 + 9956) = *(a1 + 9956) + v30;
        if (*(a1 + 9960) > v30)
        {
          *(a1 + 9960) = v30;
        }

        if (*(a1 + 9964) < v30)
        {
          *(a1 + 9964) = v30;
        }

        v31 = v29;
        ++*(a1 + 10036);
        *(a1 + 10040) = *(a1 + 10040) + v29;
        if (*(a1 + 10044) > v29)
        {
          *(a1 + 10044) = v31;
        }

        if (*(a1 + 10048) < v31)
        {
          *(a1 + 10048) = v31;
        }

        v32 = a3 ^ 1u;
        *(a1 + 10032) = v32;
        v33 = a1 + 16 * v32;
        v34 = a6 * 57.296;
        ++*(v33 + 10100);
        *(v33 + 10104) = (a6 * 57.296) + *(v33 + 10104);
        if (*(v33 + 10108) > (a6 * 57.296))
        {
          *(v33 + 10108) = v34;
        }

        if (*(v33 + 10112) < v34)
        {
          *(v33 + 10112) = v34;
        }

        v35 = a1 + 16 * v32;
        v36 = a5 * 57.296;
        ++*(v35 + 10148);
        *(v35 + 10152) = (a5 * 57.296) + *(v35 + 10152);
        if (*(v35 + 10156) > (a5 * 57.296))
        {
          *(v35 + 10156) = v36;
        }

        if (*(v35 + 10160) < v36)
        {
          *(v35 + 10160) = v36;
        }
      }

      *(a1 + 9888) = a2;
      v37 = a2 - *(a1 + 9896);
      if (v37 <= 0.0)
      {
        v37 = 1.0;
      }

      ++*(a1 + 10084);
      *(a1 + 10088) = *(a1 + 10088) + v37;
      if (*(a1 + 10092) > v37)
      {
        *(a1 + 10092) = v37;
      }

      if (*(a1 + 10096) < v37)
      {
        *(a1 + 10096) = v37;
      }

      sub_245F10EE0(a1, a2);
      goto LABEL_50;
    }

    v12 = *(a1 + 9888);
    if (a2 > v12)
    {
      v13 = a2 - v12;
      if ((a2 - v12) >= 0x11E1A301)
      {
        sub_245F105F4(a1);
        sub_245F10D68(a1, 2, a2);
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C928();
        }

        v14 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          *v48 = v13;
          *&v48[4] = 2050;
          *&v48[6] = a2;
          _os_log_impl(&dword_245D80000, v14, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Reset due to large ring sensor timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", buf, 0x12u);
        }
      }

      goto LABEL_9;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v41 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v42 = *(a1 + 9888);
      *buf = 134349312;
      *v48 = a2;
      *&v48[8] = 2050;
      *&v48[10] = v42;
      _os_log_impl(&dword_245D80000, v41, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Ring sensor timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v38 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v39 = *(a1 + 9888);
      *buf = 134349312;
      *v48 = 0;
      *&v48[8] = 2050;
      *&v48[10] = v39;
      _os_log_impl(&dword_245D80000, v38, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateRingSensor] Reset due to unexpected zero ring sensor timestamp. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }

    sub_245F105F4(a1);
    sub_245F10D68(a1, 5, 0);
  }

LABEL_50:
  v40 = *MEMORY[0x277D85DE8];
}

void sub_245F10D68(int *a1, int a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*a1 != a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a1;
      v9[0] = 67240704;
      v9[1] = v7;
      v10 = 1026;
      v11 = a2;
      v12 = 2050;
      v13 = a3;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[setTrackingStatus] Status changed from: %{public}d to %{public}d, timestamp: %{public}llu us .", v9, 0x18u);
    }

    *a1 = a2;
  }

  v8 = *MEMORY[0x277D85DE8];
}

double sub_245F10E5C(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return 0.0;
  }

  v2 = a1[1];
  result = 0.0;
  if (a1[2] != v2)
  {
    v4 = a1[4];
    v5 = (v2 + 8 * (v4 >> 10));
    v6 = *v5;
    v7 = &(*v5)[v4 & 0x3FF];
    v8 = *(v2 + (((v4 + v1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v4 + v1) & 0x3FF);
    while (v7 != v8)
    {
      v9 = *v7++;
      v10 = v9;
      if (v7 - v6 == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
        v7 = v11;
      }

      *&result = *&result + v10;
    }
  }

  *&result = *&result / v1;
  return result;
}

void sub_245F10EE0(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 6184);
  if ((*(a1 + 9920) & 1) == 0 && *v2 == 1)
  {
    *(a1 + 9920) = 1;
    *(a1 + 9928) = a2;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v4 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 9928);
      v6 = v2[744];
      v7 = *(a1 + 10);
      v8 = *(a1 + 4354);
      v9 = *(a1 + 3042);
      sub_245F12BC8(v19, (a1 + 5568));
      v10 = sub_245F10E5C(v19);
      v11 = *&v10;
      sub_245F12BC8(v18, (a1 + 4256));
      v12 = sub_245F10E5C(v18);
      *buf = 134350592;
      v21 = v5;
      v22 = 1026;
      v23 = v6;
      v24 = 2050;
      v25 = v7;
      v26 = 2050;
      v27 = v8;
      v28 = 2050;
      v29 = v9;
      v30 = 2050;
      v31 = (v11 * 57.296);
      v32 = 2050;
      v33 = (*&v12 * 57.296);
      _os_log_impl(&dword_245D80000, v4, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] BarrelRoll session start timestamp: %{public}llu microseconds, initialized during no-trust: %{public}d, numRingSensor: %{public}zu, numAuxDM6: %{public}zu, numSrcDM6: %{public}zu, wAuxNorm: %{public}f dps, wSrcNorm: %{public}f dps", buf, 0x44u);
      sub_245F12B1C(v18);
      sub_245F12B1C(v19);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }
    }

    v13 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 9928) - *(a1 + 9944);
      *buf = 134349056;
      v21 = v14;
      _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] Time elapsed between first consumed ring sensor and session start: %{public}llu microseconds.", buf, 0xCu);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }
    }

    v15 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 9944) - *(a1 + 9936);
      *buf = 134349056;
      v21 = v16;
      _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[checkSessionStarted] Time elapsed between first consumed ring sensor and first ring sensor: %{public}llu microseconds.", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_245F11160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_245F12B1C(va);
  _Unwind_Resume(a1);
}

void sub_245F1117C(uint64_t a1, unint64_t a2, float *a3, float32x4_t a4, float a5, float a6)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v9 = a4.f32[0];
    if (*(a1 + 9920) != 1)
    {
LABEL_9:
      v34 = sub_245F11610(a3, a4);
      v35 = v15;
      v36 = v16;
      v37 = v17;
      *buf = sub_245F24AA4(&v34);
      *v39 = v18;
      *&v39[4] = v19;
      *&v39[8] = v20;
      sub_245F1A54C(a1 + 8, a2, buf, v9, a5);
      v21 = *(a1 + 9896);
      if (v21)
      {
        goto LABEL_15;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v22 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134350336;
        *v39 = a2;
        *&v39[8] = 2050;
        *&v39[10] = (v9 * 57.296);
        v40 = 2050;
        v41 = v34;
        v42 = 2050;
        v43 = v35;
        v44 = 2050;
        v45 = v36;
        v46 = 2050;
        v47 = v37;
        _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Received first aux DM6 input, timestamp: %{public}llu us, wNorm: %{public}.3f dps, q_p_ip: %{public}.3f %{public}.3f %{public}.3f %{public}.3f", buf, 0x3Eu);
      }

      v21 = *(a1 + 9896);
      if (v21)
      {
LABEL_15:
        v23 = a2 - v21;
        v24 = v23 * 0.000001;
        ++*(a1 + 9984);
        *(a1 + 9988) = *(a1 + 9988) + v24;
        if (*(a1 + 9992) > v24)
        {
          *(a1 + 9992) = v24;
        }

        if (*(a1 + 9996) < v24)
        {
          *(a1 + 9996) = v24;
        }

        v25 = v23;
        ++*(a1 + 10068);
        *(a1 + 10072) = *(a1 + 10072) + v23;
        if (*(a1 + 10076) > v23)
        {
          *(a1 + 10076) = v25;
        }

        if (*(a1 + 10080) < v25)
        {
          *(a1 + 10080) = v25;
        }

        v26 = a6 * 57.296;
        if ((a6 * 57.296) > 0.1)
        {
          v27 = a1 + 16 * *(a1 + 10032);
          ++*(v27 + 10244);
          *(v27 + 10248) = v26 + *(v27 + 10248);
          if (*(v27 + 10252) > v26)
          {
            *(v27 + 10252) = v26;
          }

          if (*(v27 + 10256) < v26)
          {
            *(v27 + 10256) = v26;
          }
        }

        if (a5 > 0.001)
        {
          v28 = a1 + 16 * *(a1 + 10032);
          ++*(v28 + 10292);
          *(v28 + 10296) = *(v28 + 10296) + a5;
          if (*(v28 + 10300) > a5)
          {
            *(v28 + 10300) = a5;
          }

          if (*(v28 + 10304) < a5)
          {
            *(v28 + 10304) = a5;
          }
        }
      }

      *(a1 + 9896) = a2;
      goto LABEL_39;
    }

    v12 = *(a1 + 9896);
    if (a2 > v12)
    {
      v13 = a2 - v12;
      if ((a2 - v12) >= 0x186A1)
      {
        sub_245F105F4(a1);
        sub_245F10D68(a1, 3, a2);
        if (qword_27EE374F0 != -1)
        {
          sub_245F2C928();
        }

        v14 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240448;
          *v39 = v13;
          *&v39[4] = 2050;
          *&v39[6] = a2;
          _os_log_impl(&dword_245D80000, v14, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Reset due to large aux DM6 timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", buf, 0x12u);
        }
      }

      goto LABEL_9;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v32 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 9896);
      *buf = 134349312;
      *v39 = a2;
      *&v39[8] = 2050;
      *&v39[10] = v33;
      _os_log_impl(&dword_245D80000, v32, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Aux DM6 timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v29 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 9896);
      *buf = 134349312;
      *v39 = 0;
      *&v39[8] = 2050;
      *&v39[10] = v30;
      _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateAuxDM] Reset due to unexpected zero Aux DM6 timestamp. Input: %{public}llu us, previous: %{public}llu us.", buf, 0x16u);
    }

    sub_245F105F4(a1);
    sub_245F10D68(a1, 6, 0);
  }

LABEL_39:
  v31 = *MEMORY[0x277D85DE8];
}

float32_t sub_245F11610(float *a1, float32x4_t a2)
{
  if ((atomic_load_explicit(&qword_27EE376D0, memory_order_acquire) & 1) == 0)
  {
    sub_245F2C964();
  }

  if ((atomic_load_explicit(&qword_27EE376D8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2C9C4();
  }

  if ((atomic_load_explicit(&qword_27EE376C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE376C8))
  {
    sub_245F24E08(&v9, &dword_27EE376EC);
    *v4.i64 = sub_245F24E08(&v8, &qword_27EE376E0);
    dword_27EE376B8 = sub_245F249DC(&v9, v8.f32, v4);
    *algn_27EE376BC = v5;
    dword_27EE376C0 = v6;
    unk_27EE376C4 = v7;
    __cxa_guard_release(&qword_27EE376C8);
  }

  return sub_245F249DC(&dword_27EE376B8, a1, a2);
}

void sub_245F11700(uint64_t a1, unint64_t a2, uint64_t a3, float a4, float a5)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v29 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a1 + 9904);
      v43 = 134349312;
      *v44 = 0;
      *&v44[8] = 2050;
      *&v44[10] = v30;
      _os_log_impl(&dword_245D80000, v29, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to unexpected zero Src DM6 timestamp. Input: %{public}llu us, previous: %{public}llu us.", &v43, 0x16u);
    }

    sub_245F105F4(a1);
    v31 = a1;
    v32 = 7;
    v33 = 0;
    goto LABEL_49;
  }

  v7 = *(a1 + 9904);
  if (a2 > v7)
  {
    v11 = (a1 + 6184);
    if (v7)
    {
      v12 = a2 - v7;
    }

    else
    {
      v12 = 0;
    }

    if (v12 >= 0x186A1)
    {
      sub_245F105F4(a1);
      sub_245F10D68(a1, 4, a2);
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C928();
      }

      v13 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
      {
        v43 = 67240448;
        *v44 = v12;
        *&v44[4] = 2050;
        *&v44[6] = a2;
        _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollSession]:[updateSrcDM] Reset due to large Src DM6 timestamp gap. Time gap:%{public}u us, timestamp: %{public}llu us.", &v43, 0x12u);
      }
    }

    if (*(a1 + 9920) != 1)
    {
      goto LABEL_16;
    }

    v14 = *(a1 + 9896);
    if (a2 > v14 && (v15 = a2 - v14, (a2 - v14) >= 0x30D41))
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v37 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 9896);
        v39 = *(a1 + 9888);
        v43 = 134350080;
        *v44 = a2;
        *&v44[8] = 2050;
        *&v44[10] = v38;
        v45 = 2050;
        v46 = v39;
        v47 = 1026;
        *v48 = v15;
        *&v48[4] = 1026;
        *&v48[6] = 200000;
        _os_log_impl(&dword_245D80000, v37, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to large gap between the latest source and aux sample. Aux is too far in the past, likely due to a gap.Latest src timestamp: %{public}llu us, latest aux timestamp: %{public}llu us, latest ring sensor timestamp: %{public}llu us, src-to-aux-delta:%{public}u us, threshold:%{public}u us.", &v43, 0x2Cu);
      }

      sub_245F105F4(a1);
      v31 = a1;
      v32 = 3;
    }

    else
    {
      v16 = *(a1 + 9888);
      if (a2 <= v16 || (v17 = a2 - v16, (a2 - v16) < 0x11E1A301))
      {
LABEL_16:
        sub_245F1B12C((a1 + 8), a2, a3, a4, a5);
        if (!*(a1 + 9904))
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2C93C();
          }

          v18 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *a3;
            v20 = *(a3 + 4);
            v21 = *(a3 + 8);
            v22 = *(a3 + 12);
            v43 = 134350336;
            *v44 = a2;
            *&v44[8] = 2050;
            *&v44[10] = (a4 * 57.296);
            v45 = 2050;
            v46 = v19;
            v47 = 2050;
            *v48 = v20;
            *&v48[8] = 2050;
            v49 = v21;
            v50 = 2050;
            v51 = v22;
            _os_log_impl(&dword_245D80000, v18, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Received first src DM6 input, timestamp: %{public}llu us, wNorm: %{public}.3f dps, q_s_is: %{public}.3f %{public}.3f %{public}.3f %{public}.3f", &v43, 0x3Eu);
          }
        }

        if (*(a1 + 9888) + 16666 < a2)
        {
          *(a1 + 10032) = 2;
        }

        v23 = *(a1 + 9904);
        if (v23)
        {
          v24 = a2 - v23;
          v25 = v24 * 0.000001;
          ++*(a1 + 9968);
          *(a1 + 9972) = *(a1 + 9972) + v25;
          if (*(a1 + 9976) > v25)
          {
            *(a1 + 9976) = v25;
          }

          if (*(a1 + 9980) < v25)
          {
            *(a1 + 9980) = v25;
          }

          v26 = v24;
          ++*(a1 + 10052);
          *(a1 + 10056) = *(a1 + 10056) + v24;
          if (*(a1 + 10060) > v24)
          {
            *(a1 + 10060) = v26;
          }

          if (*(a1 + 10064) < v26)
          {
            *(a1 + 10064) = v26;
          }

          v27 = a4 * 57.296;
          if ((a4 * 57.296) > 0.1)
          {
            v28 = a1 + 16 * *(a1 + 10032);
            ++*(v28 + 10196);
            *(v28 + 10200) = v27 + *(v28 + 10200);
            if (*(v28 + 10204) > v27)
            {
              *(v28 + 10204) = v27;
            }

            if (*(v28 + 10208) < v27)
            {
              *(v28 + 10208) = v27;
            }
          }
        }

        *(a1 + 9904) = a2;
        sub_245F10EE0(a1, a2);
        if (*a1 != 1 && *v11 == 1)
        {
          sub_245F10D68(a1, 1, a2);
        }

        if (*(a1 + 10000) == 1 && !*(a1 + 10008))
        {
          *(a1 + 10008) = a2;
        }

        sub_245F11D30(a1, a2);
        goto LABEL_54;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v40 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(a1 + 9888);
        v42 = *(a1 + 9896);
        v43 = 134350080;
        *v44 = a2;
        *&v44[8] = 2050;
        *&v44[10] = v41;
        v45 = 2050;
        v46 = v42;
        v47 = 1026;
        *v48 = v17;
        *&v48[4] = 1026;
        *&v48[6] = 300000000;
        _os_log_impl(&dword_245D80000, v40, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Reset due to large gap between the latest source and ring sample. Ring is too far in the past, likely due to pencil being away from screen.Latest src timestamp: %{public}llu us, latest ring sensor timestamp: %{public}llu us, latest aux timestamp: %{public}llu us, src-to-ring-delta:%{public}u us, threshold:%{public}u us.", &v43, 0x2Cu);
      }

      sub_245F105F4(a1);
      v31 = a1;
      v32 = 2;
    }

    v33 = a2;
LABEL_49:
    sub_245F10D68(v31, v32, v33);
    goto LABEL_54;
  }

  if (qword_27EE374F0 != -1)
  {
    sub_245F2C928();
  }

  v34 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
  {
    v35 = *(a1 + 9904);
    v43 = 134349312;
    *v44 = a2;
    *&v44[8] = 2050;
    *&v44[10] = v35;
    _os_log_impl(&dword_245D80000, v34, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRollService]:[updateSrcDM] Src DM6 timestamps must be monotonically increasing. Input: %{public}llu us, previous: %{public}llu us.", &v43, 0x16u);
  }

LABEL_54:
  v36 = *MEMORY[0x277D85DE8];
}

void sub_245F11D30(int *a1, unint64_t a2)
{
  v152 = *MEMORY[0x277D85DE8];
  v2 = a2 - *(a1 + 1239);
  if (v2 >= 0x4C4B40)
  {
    v5 = *a1;
    if (*a1 == 1 || v5 != a1[2506])
    {
      v6 = (a1 + 1732);
      *(a1 + 1239) = a2;
      a1[2506] = v5;
      *v7.i64 = sub_245F1D50C((a1 + 2));
      *buf = v7.i32[0];
      v74 = __PAIR64__(v9, v8);
      *v75 = v10;
      v69 = sub_245F24A60(buf, v7);
      v70 = v11;
      v71 = v12;
      v72 = v13;
      v14 = sub_245F0F554(&v69);
      v16 = v15;
      v18 = v17;
      v19 = -1.0;
      v20 = -1.0;
      if (*(a1 + 9920) == 1)
      {
        v21 = (a2 - *(a1 + 1241)) * 0.000001;
        v20 = v21;
      }

      v22 = *(a1 + 1251);
      if (a2 > v22 && v22)
      {
        v23 = (a2 - v22) * 0.000001;
        v19 = v23;
      }

      v24 = *(a1 + 1236);
      v25 = *(a1 + 1237);
      v26 = -1.0;
      v27 = -1.0;
      v28 = v24 > v25;
      v29 = v24 - v25;
      if (v28)
      {
        v30 = v29 * 0.001;
        v27 = v30;
      }

      v31 = *(a1 + 1238);
      v32 = v31 >= v25;
      v33 = v31 - v25;
      if (v33 != 0 && v32)
      {
        v34 = v33 * 0.001;
        v26 = v34;
      }

      if (qword_27EE374F0 != -1)
      {
        sub_245F2C93C();
      }

      v35 = qword_27EE374F8;
      if (!os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      v36 = a1[2488];
      v37 = *(a1 + 2489);
      if (v36 && (v38 = v37 / v36, v38 >= 0.000001))
      {
        v39 = (1.0 / v38);
      }

      else
      {
        v39 = 0;
        if (!v36)
        {
          v40 = 0.0;
LABEL_24:
          v41 = a1[2492];
          v42 = *(a1 + 2493);
          if (v41 && (v43 = v42 / v41, v43 >= 0.000001))
          {
            v44 = (1.0 / v43);
          }

          else
          {
            v44 = 0;
          }

          if (v41)
          {
            v45 = ((v42 / v41) * 1000.0);
          }

          else
          {
            v45 = 0.0;
          }

          v46 = *(a1 + 2491) * 1000.0;
          v47 = *(a1 + 2494) * 1000.0;
          v48 = a1[2496];
          v49 = *(a1 + 2497);
          v50 = *(a1 + 2495) * 1000.0;
          if (v48 && (v51 = v49 / v48, v51 >= 0.000001))
          {
            v52 = (1.0 / v51);
          }

          else
          {
            v52 = 0;
          }

          v53 = *a1;
          v54 = *(a1 + 9920);
          v55 = *(a1 + 10000);
          v56 = *(a1 + 1251);
          v57 = *v6;
          v58 = *(a1 + 1236);
          v59 = v37;
          v60 = (*(a1 + 2490) * 1000.0);
          v61 = v42;
          v62 = v49;
          v63 = (*(a1 + 2498) * 1000.0);
          v64 = (*(a1 + 2499) * 1000.0);
          if (v48)
          {
            v65 = ((v49 / v48) * 1000.0);
          }

          else
          {
            v65 = 0.0;
          }

          v66 = *(a1 + 1238);
          v67 = *(a1 + 1237);
          *buf = 134359040;
          v74 = a2;
          *v75 = 1026;
          *&v75[2] = v53;
          v76 = 2050;
          v77 = v2;
          v78 = 1026;
          v79 = v54;
          v80 = 1026;
          v81 = v55;
          v82 = 2050;
          v83 = v56;
          v84 = 2050;
          v85 = v20;
          v86 = 2050;
          v87 = v19;
          v88 = 1026;
          v89 = v57;
          v90 = 2050;
          v91 = v58;
          v92 = 2050;
          v93 = v69;
          v94 = 2050;
          v95 = v70;
          v96 = 2050;
          v97 = v71;
          v98 = 2050;
          v99 = v72;
          v100 = 2050;
          v101 = (v18 * 57.296);
          v102 = 2050;
          v103 = (v16 * 57.296);
          v104 = 2050;
          v105 = (v14 * 57.296);
          v106 = 1026;
          v107 = v39;
          v108 = 2050;
          v109 = v59;
          v110 = 1026;
          v111 = v36;
          v112 = 2050;
          v113 = v60;
          v114 = 2050;
          v115 = v46;
          v116 = 2050;
          v117 = v40;
          v118 = 1026;
          v119 = v44;
          v120 = 2050;
          v121 = v61;
          v122 = 1026;
          v123 = v41;
          v124 = 2050;
          v125 = v47;
          v126 = 2050;
          v127 = v50;
          v128 = 2050;
          v129 = v45;
          v130 = 1026;
          v131 = v52;
          v132 = 2050;
          v133 = v62;
          v134 = 1026;
          v135 = v48;
          v136 = 2050;
          v137 = v63;
          v138 = 2050;
          v139 = v64;
          v140 = 2050;
          v141 = v65;
          v142 = 2050;
          v143 = v58;
          v144 = 2050;
          v145 = v66;
          v146 = 2050;
          v147 = v67;
          v148 = 2050;
          v149 = v27;
          v150 = 2050;
          v151 = v26;
          _os_log_impl(&dword_245D80000, v35, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRollService]:[periodicSysDiagnoseLog] { timestamp: %{public}llu us, trackingStatus: %{public}d, sinceLastLog: %{public}llu us, fSessionStarted: %{public}d, HID started flag: %{public}d , HID start timestamp: %{public}llu us, durationSinceSessionStart: %{public}.1f s, durationSinceHIDStart: %{public}.1f s }, { initialized during no-trust: %{public}d, }, { Latest estimate: timestamp: %{public}llu us, Q_SP: %{public}.3f %{public}.3f %{public}.3f %{public}.3f, roll: %{public}.1f deg, azimuth: %{public}.1f deg, altitude: %{public}.1f deg } { Ring: avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Src : avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Aux : avgNumSamplesPerSecond: %{public}u, over: %{public}.1f s, num samples: %{public}d, sample period min/max/avg: %{public}.1f/%{public}.1f/%{public}.1f ms }, { Latest timestamp ring / src / aux: %{public}llu us / %{public}llu us/ %{public}llu us }, { Aux-to-Ring Delay: %{public}.1f ms, Aux-to-Src Delay: %{public}.1f ms  }", buf, 0x16Au);
LABEL_39:
          *(a1 + 1244) = 0;
          *(a1 + 1245) = 0xFF7FFFFF7F7FFFFFLL;
          *(a1 + 1246) = 0;
          *(a1 + 1247) = 0xFF7FFFFF7F7FFFFFLL;
          *(a1 + 1248) = 0;
          *(a1 + 1249) = 0xFF7FFFFF7F7FFFFFLL;
          goto LABEL_40;
        }
      }

      v40 = ((v37 / v36) * 1000.0);
      goto LABEL_24;
    }
  }

LABEL_40:
  v68 = *MEMORY[0x277D85DE8];
}

void sub_245F12268(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 10000) == 1)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v2 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 9904);
      v4 = *(a1 + 10008);
      v12 = 134349312;
      v13 = v3;
      v14 = 2050;
      v15 = v4;
      v5 = "[BarrelRoll]:[CMABarrelRollService]:[informStartPencilFusionUpdates] Called hidStartedPencilFusionUpdates when the start flag was already true. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu";
      v6 = v2;
      v7 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_245D80000, v6, v7, v5, &v12, 0x16u);
    }
  }

  else
  {
    *(a1 + 10000) = 1;
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v8 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9904);
      v10 = *(a1 + 10008);
      v12 = 134349312;
      v13 = v9;
      v14 = 2050;
      v15 = v10;
      v5 = "[BarrelRoll]:[CMABarrelRollService]:[informStartPencilFusionUpdates] HID started pencil fusion updates.  Latest src timestamp: %{public}llu us, fTimeStampHIDStartedPencilFusionUpdates: %{public}llu";
      v6 = v8;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_245F123C0(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 10000))
  {
    *(a1 + 10000) = 0;
    v2 = *(a1 + 9904);
    *(a1 + 10016) = v2;
    v3 = *(a1 + 10008);
    v4 = -1.0;
    v5 = v2 > v3;
    v6 = v2 - v3;
    if (v5)
    {
      v7 = v6 * 0.000001;
      v4 = v7;
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v8 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 9904);
      v10 = *(a1 + 10008);
      v11 = *(a1 + 10016);
      v21 = 134349824;
      v22 = v4;
      v23 = 2050;
      v24 = v9;
      v25 = 2050;
      v26 = v10;
      v27 = 2050;
      v28 = v11;
      v12 = "[BarrelRoll]:[CMABarrelRollService]:[informStopPencilFusionUpdates] HID stopped pencil fusion updates. Session duration: %{public}.1f s. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu, HID stop timestamp: %{public}llu .";
      v13 = v8;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 42;
LABEL_13:
      _os_log_impl(&dword_245D80000, v13, v14, v12, &v21, v15);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2C928();
    }

    v16 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 9904);
      v18 = *(a1 + 10008);
      v19 = *(a1 + 10016);
      v21 = 134349568;
      v22 = v17;
      v23 = 2050;
      v24 = v18;
      v25 = 2050;
      v26 = v19;
      v12 = "[BarrelRoll]:[CMABarrelRollService]:[informStopPencilFusionUpdates] Called hidStoppedPencilFusionUpdates when the start flag was already false. Latest src timestamp: %{public}llu us, HID start timestamp: %{public}llu, HID stop timestamp: %{public}llu .";
      v13 = v16;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 32;
      goto LABEL_13;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245F12578(uint64_t a1)
{
  *a1 = 0x7800000000;
  v2 = a1 + 6168;
  *(a1 + 968) = 0x7800000000;
  *(a1 + 1936) = 0x7800000000;
  *(a1 + 2904) = 0x7800000000;
  *(a1 + 3032) = 0x3200000000;
  *(a1 + 3440) = 0x3200000000;
  *(a1 + 4248) = 0u;
  *(a1 + 4264) = 0u;
  *(a1 + 4280) = 0u;
  *(a1 + 4296) = 0u;
  *(a1 + 4312) = 0u;
  *(a1 + 4328) = 0u;
  *(a1 + 4344) = 0x3200000000;
  *(a1 + 4752) = 0x3200000000;
  *(a1 + 5560) = 0u;
  *(a1 + 5576) = 0u;
  *(a1 + 5592) = 0u;
  *(a1 + 5608) = 0u;
  *(a1 + 5624) = 0u;
  *(a1 + 5640) = 0u;
  *(a1 + 5656) = 0x7800000000;
  *(a1 + 6144) = 0u;
  *(a1 + 6168) = 1;
  *(a1 + 6160) = 0x3F80000000000000;
  sub_245F1270C(a1 + 6176);
  *(a1 + 6696) = 0;
  *(v2 + 536) = 0;
  *(a1 + 6708) = 0;
  *(a1 + 6716) = 0x3F80000000000000;
  *(a1 + 6728) = 0;
  *(a1 + 6776) = 0;
  *(a1 + 6784) = 0x3F80000000000000;
  *(a1 + 6792) = 0;
  *(v2 + 632) = 0;
  *(a1 + 6804) = 0;
  *(a1 + 6812) = 0x3F80000000000000;
  *(a1 + 6824) = 0;
  *(a1 + 6872) = 0;
  *(a1 + 6880) = 0x3F80000000000000;
  *(a1 + 6896) = 0;
  *(a1 + 6904) = 0x3F80000000000000;
  *(v2 + 752) = 0;
  *(v2 + 756) = xmmword_245F32B40;
  sub_245F24EC0((v2 + 756), xmmword_245F32B40);
  *(a1 + 6944) = 0;
  *(v2 + 784) = 0;
  *(a1 + 6968) = 0;
  *(a1 + 6976) = 0x7800000000;
  *(a1 + 7944) = 0x7800000000;
  *(a1 + 9872) = 0;
  *(v2 + 3708) = 0;
  return a1;
}

void sub_245F126BC(_Unwind_Exception *a1)
{
  sub_245F12848(v1 + 6672);
  sub_245F128C8((v1 + v4));
  sub_245F12B1C((v1 + 5608));
  sub_245F12B1C(v3);
  sub_245F12B1C((v1 + 4296));
  sub_245F12B1C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_245F1270C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = xmmword_245F32B50;
  *(a1 + 208) = xmmword_245F32B60;
  *(a1 + 224) = 0x7F7FFFFF00000000;
  *(a1 + 232) = -8388609;
  *(a1 + 292) = 0;
  *(a1 + 236) = 0u;
  *(a1 + 282) = 0;
  *(a1 + 252) = 0u;
  *(a1 + 268) = 0u;
  *(a1 + 296) = 0;
  sub_245F14C78(a1 + 304, 120);
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0x3F80000000000000;
  return a1;
}

void sub_245F127D8(_Unwind_Exception *a1)
{
  sub_245F127FC(v2);
  sub_245F12B1C((v1 + 72));
  sub_245F12B1C((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t sub_245F127FC(uint64_t a1)
{
  sub_245F12B1C((a1 + 96));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_245F12848(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *sub_245F128C8(void *a1)
{
  v2 = a1[53];
  if (v2)
  {
    a1[54] = v2;
    operator delete(v2);
  }

  v3 = a1[50];
  if (v3)
  {
    a1[51] = v3;
    operator delete(v3);
  }

  v4 = a1[47];
  if (v4)
  {
    a1[48] = v4;
    operator delete(v4);
  }

  v5 = a1[40];
  if (v5)
  {
    a1[41] = v5;
    operator delete(v5);
  }

  sub_245F12B1C(a1 + 30);
  v6 = a1[21];
  if (v6)
  {
    a1[22] = v6;
    operator delete(v6);
  }

  v7 = a1[18];
  if (v7)
  {
    a1[19] = v7;
    operator delete(v7);
  }

  sub_245F12B1C(a1 + 9);
  sub_245F12B1C(a1 + 3);
  return a1;
}

uint64_t sub_245F12964(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *(result + 4) = 0;
  *(result + 12) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 20) = 0;
  *(result + 28) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 36) = 0;
  *(result + 44) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 52) = 0;
  *(result + 60) = 0xFF7FFFFF7F7FFFFFLL;
  do
  {
    v2 = result + v1;
    *(v2 + 68) = 0;
    *(v2 + 76) = 0xFF7FFFFF7F7FFFFFLL;
    v1 += 16;
  }

  while (v1 != 48);
  for (i = 0; i != 48; i += 16)
  {
    v4 = result + i;
    *(v4 + 116) = 0;
    *(v4 + 124) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (j = 0; j != 48; j += 16)
  {
    v6 = result + j;
    *(v6 + 164) = 0;
    *(v6 + 172) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (k = 0; k != 48; k += 16)
  {
    v8 = result + k;
    *(v8 + 212) = 0;
    *(v8 + 220) = 0xFF7FFFFF7F7FFFFFLL;
  }

  for (m = 0; m != 48; m += 16)
  {
    *(result + m + 260) = 0;
    *(result + m + 268) = 0xFF7FFFFF7F7FFFFFLL;
  }

  v10 = 0;
  *(result + 308) = 0;
  *(result + 312) = 0;
  do
  {
    v11 = result + v10;
    *(v11 + 328) = 0;
    *(v11 + 336) = 0xFF7FFFFF7F7FFFFFLL;
    v10 += 16;
  }

  while (v10 != 48);
  for (n = 0; n != 48; n += 16)
  {
    v13 = result + n;
    *(v13 + 376) = 0;
    *(v13 + 384) = 0xFF7FFFFF7F7FFFFFLL;
  }

  *(result + 424) = 0;
  *(result + 432) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 440) = 0;
  *(result + 448) = 0xFF7FFFFF7F7FFFFFLL;
  *(result + 456) = 0;
  *(result + 464) = 0xFF7FFFFF7F7FFFFFLL;
  return result;
}

os_log_t sub_245F12A80()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

void *sub_245F12AB0(void *a1)
{
  sub_245F12848((a1 + 834));
  sub_245F128C8(a1 + 772);
  sub_245F12B1C(a1 + 701);
  sub_245F12B1C(a1 + 695);
  sub_245F12B1C(a1 + 537);
  sub_245F12B1C(a1 + 531);
  return a1;
}

uint64_t sub_245F12B1C(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_245E4CADC(a1);
}

uint64_t sub_245F12BC8(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 10));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 10));
  }

  else
  {
    v8 = &(*v7)[4 * (v4 & 0x3FF)];
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 10));
    v11 = (*v10 + 4 * (v9 & 0x3FF));
  }

  sub_245F12C74(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t *sub_245F12C74(void *a1, char **a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (&a5[-*a4] >> 2) + ((a4 - a2) << 7) - ((a3 - *a2) >> 2);
  }

  return sub_245F12CA8(a1, a2, a3, v5);
}

uint64_t *sub_245F12CA8(void *a1, char **a2, char *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v9 - v8) << 7) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_245F12DE8(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 10));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 4 * (v11 & 0x3FF);
    v15 = v14;
  }

  v25[0] = v13;
  v25[1] = v15;
  result = sub_245F13100(v25, a4);
  if (v14 != v17)
  {
    v18 = a1[5];
    do
    {
      if (v13 == result)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4096;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = *a2;
        v21 = v14;
        do
        {
          v22 = *a3;
          a3 += 4;
          *v21++ = v22;
          if (a3 - v20 == 4096)
          {
            v23 = a2[1];
            ++a2;
            v20 = v23;
            a3 = v23;
          }
        }

        while (v21 != v19);
      }

      v18 += (v19 - v14) >> 2;
      if (v13 == result)
      {
        break;
      }

      v24 = v13[1];
      ++v13;
      v14 = v24;
    }

    while (v24 != v17);
    a1[5] = v18;
  }

  return result;
}

void *sub_245F12DE8(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_245F13164(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_245F1358C(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_245F13164(v2, v16);
    }
  }

  return result;
}

void sub_245F1308C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_245F13100(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 2);
    if (v4 < 1)
    {
      result -= (1023 - v4) >> 10;
      v6 = *result;
    }

    else
    {
      result += v4 >> 10;
      v5 = *result;
    }
  }

  return result;
}

void *sub_245F13164(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_245F1358C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_245F1326C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_245F1358C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_245F13378(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_245F1358C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_245F13480(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_245F1358C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_245F1358C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_245DF8694();
}

BOOL sub_245F135D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  if (v4 > 0.0 && v5 < v4 + *(a1 + 16))
  {
    return 0;
  }

  *(a1 + 16) = v5;
  v7 = *(a2 + 24);
  v8[0] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 8)), v7);
  sub_245F24EC0(v8, v7);
  v8[1] = vcvt_hight_f32_f64(vcvt_f32_f64(*(a2 + 40)), *(a2 + 56));
  v9 = vcvt_f32_f64(*(a2 + 72));
  v10 = (*a2 * 1000000.0);
  v11 = 0;
  v12 = 0;
  return sub_245F13694(a1, v8);
}

BOOL sub_245F13694(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  sub_245F24680(0x2B7304A0u, 1, 1, 0, 0, 0);
  sub_245F0A3B0(a1 + 40, a2);
  v4 = sub_245F0BF24(a1 + 40);
  sub_245F0A8D8(a1 + 40, 0, v26, v4);
  if (v4)
  {
    sub_245F0BF74(a1 + 40, v25);
    sub_245F172A8((a1 + 20928), v25);
    sub_245F17E24(a1 + 20936, a1 + 15760, a1 + 8424);
    v6 = v5;
    v7 = sub_245F180CC((a1 + 20936), (a1 + 15760));
    *(a1 + 20968) = 0;
    v8 = v7;
    if (v7 < 0.61087)
    {
      *(a1 + 20968) = 1;
      v24 = *(a1 + 20928) + 0.04;
      v9 = __sincosf_stret(v6);
      v10 = sinf(v8);
      v11 = vmul_n_f32(v9, v24);
      v12 = vmul_n_f32(v11, v10);
      v13 = vbsl_s8(vcgtz_f32(v12), v12, vneg_f32(v12));
      if (v13.f32[0] >= 0.5 || v13.f32[1] >= 0.5)
      {
        *(a1 + 20968) = 0;
      }

      *(a1 + 24) = vrev64_s32(v11);
      *(a1 + 32) = vmla_f32(0x3E692A303E767A10, 0x3F2717593F10C49CLL, v13);
      v15 = *(a2 + 40);
      if (qword_27EE374E0 != -1)
      {
        sub_245F2CA24();
      }

      v16 = v15 * 0.000000999999997;
      v17 = off_27EE374E8;
      if (os_log_type_enabled(off_27EE374E8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(a1 + 24);
        v19 = *(a1 + 28);
        *buf = 134349824;
        *&buf[4] = v16;
        *v28 = 2050;
        *&v28[2] = v6;
        *&v28[10] = 2050;
        *&v28[12] = v18;
        v29 = 2050;
        v30 = v19;
        _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEFAULT, "CMPrecisionFindingVelocityEstimator,timestamp,%{public}f,directionOfTravel,%{public}f,velocityX,%{public}f,velocityY,%{public}f", buf, 0x2Au);
      }

      *&v28[12] = 0;
      *buf = v16;
      *&buf[8] = v6;
      *&v20 = *(a1 + 20928);
      *(&v20 + 1) = *(a1 + 24);
      *v28 = v20;
      sub_245F22A34(buf);
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  sub_245F24680(0x2B7304A0u, 2, 1, v21, 0, 0);
  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

os_log_t sub_245F1395C()
{
  result = os_log_create("com.apple.locationd.Motion", "PrecisionFinding");
  off_27EE374E8 = result;
  return result;
}

uint64_t sub_245F139A0(float32x4_t *a1, float a2, float a3, float a4, float a5)
{
  v24 = *MEMORY[0x277D85DE8];
  if (sub_245F13D8C(0, &unk_27EE37530, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0))
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v10 = qword_27EE37518;
    if (!os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "WMM initialization encountered an error";
LABEL_11:
    _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 2u);
LABEL_12:
    result = 0xFFFFFFFFLL;
    goto LABEL_13;
  }

  dword_27EE376F8 = LODWORD(a2);
  dword_27EE376FC = LODWORD(a3);
  *&dword_27EE37700 = a4 / 1000.0;
  dword_27EE37704 = LODWORD(a5);
  if (sub_245F13D8C(1, 0, &dword_27EE37708, &dword_27EE3770C, &dword_27EE37710, &flt_27EE37714, a4 / 1000.0, a2, a3, a5))
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v10 = qword_27EE37518;
    if (!os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v11 = "WMM evaluation encountered an error";
    goto LABEL_11;
  }

  dword_27EE37718 = dword_27EE37708;
  dword_27EE3771C = dword_27EE3770C;
  dword_27EE37720 = dword_27EE37710;
  *&dword_27EE37704 = *&dword_27EE37704 + 1.0;
  sub_245F13D8C(1, 0, &dword_27EE37708, &dword_27EE3770C, &dword_27EE37710, &flt_27EE37714, *&dword_27EE37700, *&dword_27EE376F8, *&dword_27EE376FC, *&dword_27EE37704);
  v22 = *&dword_27EE37720;
  v14 = *&dword_27EE37718;
  v16 = __sincosf_stret(*&dword_27EE37718 * 0.017453);
  cosval = v16.__cosval;
  LODWORD(v21) = *&v16;
  v17 = dword_27EE3771C;
  v18 = __sincosf_stret(*&dword_27EE3771C * 0.017453);
  if ((v22 * v18.__cosval) < 100.0)
  {
    v14 = log(-1.0);
    dword_27EE37718 = LODWORD(v14);
  }

  if (90.0 - fabsf(*&dword_27EE376F8) <= 0.001)
  {
    v14 = log(-1.0);
    dword_27EE37718 = LODWORD(v14);
    v20 = v14;
    v19.f32[0] = v14;
  }

  else
  {
    v19.f32[0] = v22 * (cosval * v18.__cosval);
    v20 = v22 * (v21 * v18.__cosval);
  }

  result = 0;
  v19.f32[1] = v20;
  v19.f32[2] = v22 * v18.__sinval;
  v19.f32[3] = v22;
  *a1 = vdivq_f32(v19, vdupq_n_s32(0x447A0000u));
  a1[1].f32[0] = (v22 * v18.__cosval) / 1000.0;
  a1[1].f32[1] = v14;
  a1[1].i32[2] = v17;
LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F13D8C(int a1, int *a2, float *a3, float *a4, float *a5, float *a6, float a7, float a8, float a9, float a10)
{
  v143 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v16 = a10 - *&dword_27EE38824;
    v17 = &unk_27EE38000;
    v18 = *&dword_27EE38838;
    if (*&dword_27EE38838 < 0.0 && v16 < 0.0)
    {
      if (qword_27EE37510 != -1)
      {
        sub_245F2CA4C();
      }

      v19 = qword_27EE37518;
      v20 = 1;
      if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
      {
        *buf = 134349312;
        v140 = a10;
        v141 = 2050;
        v142 = *&dword_27EE38824;
        v21 = "supplied date (%{public}f) outside valid range (epoch=%{public}f)";
        v22 = v19;
LABEL_41:
        v69 = 22;
LABEL_111:
        _os_log_impl(&dword_245D80000, v22, OS_LOG_TYPE_INFO, v21, buf, v69);
        goto LABEL_112;
      }

      goto LABEL_112;
    }

    v51 = __sincosf_stret(a9 * 0.017453);
    sinval = v51.__sinval;
    cosval = v51.__cosval;
    v54 = &unk_27EE38000;
    v55 = *&dword_27EE38840 != a8 || *&dword_27EE3883C != a7;
    dword_27EE38468 = LODWORD(v51.__sinval);
    dword_27EE3849C = LODWORD(v51.__cosval);
    v56 = &unk_27EE38000;
    v57 = &unk_27EE38000;
    if (v55)
    {
      v58 = __sincosf_stret(a8 * 0.017453);
      v17 = &unk_27EE38000;
      v54 = &unk_27EE38000;
      v59 = sqrtf(*&dword_27EE38810 - (*&dword_27EE38818 * (v58.__sinval * v58.__sinval)));
      v60 = (*&dword_27EE38810 + (v59 * a7)) / ((v59 * a7) + *&dword_27EE38814);
      *&dword_27EE38848 = v58.__sinval / sqrtf((v58.__sinval * v58.__sinval) + ((v60 * v60) * (v58.__cosval * v58.__cosval)));
      *&v61 = sqrt(1.0 - (*&dword_27EE38848 * *&dword_27EE38848));
      dword_27EE3884C = v61;
      v62 = (a7 * a7) + (v59 * a7) * 2.0 + ((*&dword_27EE3881C - (*&dword_27EE38820 * (v58.__sinval * v58.__sinval))) / (v59 * v59));
      dword_27EE38850 = sqrtf(v62);
      v63 = sqrtf(((v58.__sinval * v58.__sinval) * *&dword_27EE38814) + (*&dword_27EE38810 * (v58.__cosval * v58.__cosval)));
      *&dword_27EE38854 = (v63 + a7) / *&dword_27EE38850;
      *&dword_27EE38858 = (v58.__sinval * (v58.__cosval * *&dword_27EE38818)) / (v63 * *&dword_27EE38850);
    }

    v64 = dword_27EE37724;
    if (*&dword_27EE38844 != a9)
    {
      if (dword_27EE37724 >= 2)
      {
        v65 = dword_27EE37724 + 1;
        v71 = dword_27EE37724 - 1;
        v72 = &dword_27EE384A0;
        v73 = v51.__sinval;
        v74 = &dword_27EE3846C;
        do
        {
          v75 = *&dword_27EE3849C;
          v76 = (*&dword_27EE3849C * sinval) + (v73 * cosval);
          *v74++ = v76;
          v73 = *&dword_27EE38468;
          cosval = (v75 * cosval) - (*&dword_27EE38468 * sinval);
          *v72++ = cosval;
          sinval = v76;
          --v71;
        }

        while (v71);
      }

      else
      {
        v65 = 2;
      }

      dword_27EE3772C = v65;
    }

    v77 = *&dword_27EE3884C;
    if (v64 >= 1)
    {
      v78 = 0;
      v79 = 0;
      v80 = 3;
      v81 = &unk_27EE37CA8;
      v82 = &unk_27EE37760;
      v83 = &unk_27EE37A04;
      v84 = 1;
      v85 = *&dword_27EE3880C / *&dword_27EE38850;
      v86 = v85 * v85;
      v87 = *&dword_27EE38848;
      v88 = -*&dword_27EE3884C;
      v89 = *dword_27EE38498;
      v90 = dword_27EE38534[0];
      v91 = *dword_27EE38464;
      v92 = 0.0;
      v93 = 0.0;
      v94 = 0.0;
      v95 = 0.0;
      while (1)
      {
        v96 = 0;
        v97 = 0;
        v98 = -(v85 * v86);
        v86 = v85 * v86;
        v136 = v84 + 1;
        v99 = flt_27EE384CC[v84];
        v100 = &dword_27EE381C0[v84];
        v101 = v84 - 2;
        v102 = v100 - 1;
        v103 = v78;
        v104 = v84 - 1;
        v137 = v79;
        v138 = v103;
        v105 = v79 + 1;
        v106 = v103;
        v107 = v80;
        do
        {
          if (v55)
          {
            if (v105 == v97)
            {
              *&v100[13 * v84] = v77 * *&v102[13 * v84 - 13];
              *&dword_27EE37F1C[13 * v84 + v84] = (v87 * *&v102[13 * v84 - 13]) + (v77 * *&dword_27EE37F1C[13 * v84 - 14 + v84]);
            }

            else
            {
              if (v84 == 1 && !v97)
              {
                v115 = *&dword_27EE37F1C[v104];
                *&dword_27EE381C4 = v87 * *dword_27EE381C0;
                *&dword_27EE37F20 = (*(v100 - 1) * v88) + (v87 * v115);
                if (v18 == a10)
                {
LABEL_63:
                  v108 = v86 * *(&dword_27EE381C0[1] + v106);
LABEL_64:
                  v116 = flt_27EE37C78[v84];
                  v113 = v116 * v89;
                  v114 = v116 * v91;
                  goto LABEL_65;
                }

LABEL_56:
                *(&flt_27EE37C78[1] + v106) = *(&dword_27EE37730[1] + v106) + (v16 * *(&dword_27EE379D4[1] + v106));
                if (!v97)
                {
                  goto LABEL_63;
                }

                v81[v97] = v82[v97] + (v16 * v83[v97]);
                v108 = v86 * *(&dword_27EE381C0[1] + v106);
                goto LABEL_59;
              }

              if (v84 >= 2)
              {
                if (v97 <= v101)
                {
                  v121 = *(&dword_27EE37F1C[-1] + v106);
                  v120 = v96;
                }

                else
                {
                  v120 = 13 * v97;
                  *(&dword_27EE381C0[-1] + v106) = 0;
                  *(&dword_27EE37F1C[-1] + v106) = 0;
                  v121 = 0.0;
                }

                v122 = *&v102[v120];
                v123 = *(&unk_27EE38568 + v106 + 4);
                *&v100[v120] = (v87 * v122) - (v123 * *&v100[v120 - 2]);
                *(&dword_27EE37F1C[1] + v106) = ((v122 * v88) + (v87 * *(dword_27EE37F1C + v106))) - (v123 * v121);
              }
            }
          }

          if (v18 != a10)
          {
            goto LABEL_56;
          }

          v108 = v86 * *(&dword_27EE381C0[1] + v106);
          if (!v97)
          {
            goto LABEL_64;
          }

LABEL_59:
          v109 = *(&flt_27EE37C78[1] + v106);
          v110 = *&dword_27EE38498[v97];
          v111 = v81[v97];
          v112 = *&dword_27EE38464[v97];
          v113 = (v111 * v112) + (v109 * v110);
          v114 = (v109 * v112) - (v111 * v110);
LABEL_65:
          v117 = *(&dword_27EE37F1C[1] + v106);
          v118 = v114 * flt_27EE38500[v97];
          if (v97 == 1 && v77 == 0.0)
          {
            if (v84 == 1)
            {
              dword_27EE38538 = v90;
              v119 = *&v90;
            }

            else
            {
              v119 = (v87 * *&dword_27EE38534[v104]) - (*(&unk_27EE38568 + v84 + 13) * *&dword_27EE38534[v101]);
              *&dword_27EE38534[v84] = v119;
            }

            v95 = v95 + (v118 * (v86 * v119));
          }

          v92 = v92 + ((v113 * v98) * v117);
          v93 = v93 + (v118 * v108);
          v94 = v94 + ((v113 * v99) * v108);
          ++v97;
          --v107;
          v96 += 13;
          v106 += 52;
        }

        while (v107 > 1);
        ++v80;
        v79 = v137 + 1;
        v78 = v138 + 4;
        v81 += 13;
        v82 += 13;
        v83 += 13;
        v124 = v64 + 1;
        ++v84;
        if (v136 == v64 + 1)
        {
          dword_27EE3772C = v97;
          v17 = &unk_27EE38000;
          v54 = &unk_27EE38000;
          v56 = &unk_27EE38000;
          v57 = &unk_27EE38000;
          goto LABEL_81;
        }
      }
    }

    v124 = 1;
    v94 = 0.0;
    v92 = 0.0;
    v95 = 0.0;
    v93 = 0.0;
LABEL_81:
    dword_27EE37728 = v124;
    if (v77 == 0.0)
    {
      v125 = v95;
    }

    else
    {
      v125 = v93 / v77;
    }

    v126 = v56[533];
    v127 = v57[534];
    v128 = -(v94 * v127) - (v92 * v126);
    v129 = (v92 * v127) - (v94 * v126);
    v130 = sqrtf((v125 * v125) + (v128 * v128));
    *a5 = sqrtf((v129 * v129) + (v130 * v130));
    *a3 = atan2f(v125, v128) / 0.017453;
    *a4 = atan2f(v129, v130) / 0.017453;
    *a6 = -999.0;
    if (fabsf(a8) >= 55.0)
    {
      v131 = -999.0;
      if (a9 >= 0.0 && a8 > 0.0)
      {
        v131 = *a3 - a9;
        *a6 = v131;
      }

      if (a8 > 0.0 && a9 < 0.0)
      {
        v131 = fabsf(a9) + *a3;
        *a6 = v131;
      }

      if (a9 >= 0.0 && a8 < 0.0)
      {
        v131 = *a3 + a9;
        *a6 = v131;
      }

      if (a8 < 0.0 && a9 < 0.0)
      {
        v131 = *a3 - fabsf(a9);
        *a6 = v131;
      }

      if (v131 > 180.0)
      {
        v131 = v131 + -360.0;
LABEL_100:
        if (v131 < -180.0)
        {
          v131 = v131 + 360.0;
        }

        *a6 = v131;
        goto LABEL_103;
      }

      if (v131 < -180.0)
      {
        goto LABEL_100;
      }
    }

LABEL_103:
    v20 = 0;
    v17[526] = a10;
    v54[527] = a7;
    dword_27EE38840 = LODWORD(a8);
    dword_27EE38844 = LODWORD(a9);
    goto LABEL_112;
  }

  v24 = fopen(byte_27EE38A28, "r");
  if (v24)
  {
    v25 = v24;
    dword_27EE37724 = *a2;
    dword_27EE38464[0] = 0;
    dword_27EE38534[0] = 1065353216;
    dword_27EE381C0[0] = 1065353216;
    dword_27EE38498[0] = 1065353216;
    dword_27EE37F1C[0] = 0;
    dword_27EE3880C = 1170676122;
    dword_27EE38810 = 1276849967;
    dword_27EE38814 = 1276781883;
    dword_27EE38818 = 1216674304;
    dword_27EE3881C = 1488725079;
    dword_27EE38820 = 1436593536;
    dword_27EE37730[0] = 0;
    dword_27EE379D4[0] = 0;
    if (fgets(byte_27EE3885C, 80, v24))
    {
      sscanf(byte_27EE3885C, "%f", &dword_27EE38824);
      if (fgets(byte_27EE3885C, 80, v25))
      {
        v26 = 0;
        do
        {
          do
          {
            if (!byte_27EE3885C[v26])
            {
              break;
            }

            *(&dword_27EE388AD + v26) = byte_27EE3885C[v26];
            ++v26;
            *(&dword_27EE388AD + v26) = 0;
          }

          while (v26 != 4);
          if (!(dword_27EE388AD ^ 0x39393939 | byte_27EE388B1))
          {
            break;
          }

          sscanf(byte_27EE3885C, "%d%d%f%f%f%f", &dword_27EE37728, &dword_27EE3772C, &dword_27EE38828, &dword_27EE3882C, &dword_27EE38830, &dword_27EE38834);
          v27 = dword_27EE3772C;
          if (dword_27EE3772C > 0xC || (v28 = dword_27EE37728, dword_27EE37728 >= 0xD))
          {
            fclose(v25);
            if (qword_27EE37510 != -1)
            {
              sub_245F2CA4C();
            }

            v70 = qword_27EE37518;
            v20 = 1;
            if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              v21 = "geomagnetic data file appears to have invalid dimensions";
              goto LABEL_110;
            }

            goto LABEL_112;
          }

          if (dword_27EE3772C <= dword_27EE37728)
          {
            dword_27EE37730[13 * dword_27EE3772C + dword_27EE37728] = dword_27EE38828;
            dword_27EE379D4[13 * v27 + v28] = dword_27EE38830;
            if (v27)
            {
              v29 = v27 - 1;
              dword_27EE37730[13 * v28 + v29] = dword_27EE3882C;
              dword_27EE379D4[13 * v28 + v29] = dword_27EE38834;
            }
          }

          v30 = fgets(byte_27EE3885C, 80, v25);
          v26 = 0;
        }

        while (v30);
      }

      dword_27EE381C0[0] = 1065353216;
      if (dword_27EE37724 < 1)
      {
        LODWORD(v32) = 1;
      }

      else
      {
        v31 = 0;
        v32 = dword_27EE37724 + 1;
        v33 = &unk_27EE379D8;
        v34 = &unk_27EE37A04;
        v35 = &unk_27EE37734;
        v36 = &unk_27EE37760;
        v37 = &dword_27EE381C4;
        v38 = &unk_27EE3856C;
        v39 = 1;
        do
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = &dword_27EE381C0[v39];
          v44 = 2 * v39 - 1;
          *v43 = (*(v43 - 1) * v44) / v39;
          v45 = v39 + 1;
          v46 = (v44 * (2 * v39 - 3));
          v47 = 2;
          v48 = 3;
          do
          {
            v38[v41] = ((v31 + v42) * (v31 + v40)) / v46;
            if (v41)
            {
              v49 = v43[v41 - 13] * sqrtf((v47 * (v31 + v40 + 2)) / (v31 + v42 + 1));
              v43[v41] = v49;
              v36[v42] = v36[v42] * v49;
              v34[v42] = v49 * v34[v42];
              v47 = 1;
            }

            v50 = *&v37[v41];
            v35[v41] = v50 * v35[v41];
            v33[v41] = v50 * v33[v41];
            ++v42;
            v41 += 13;
            --v40;
            --v48;
          }

          while (v31 + v48 > 1);
          flt_27EE384CC[v39] = v45;
          flt_27EE38500[v39] = v39;
          ++v37;
          ++v31;
          ++v33;
          ++v35;
          ++v38;
          v34 += 13;
          v36 += 13;
          ++v39;
        }

        while (v45 != v32);
        dword_27EE3772C = v42;
      }

      dword_27EE37728 = v32;
      dword_27EE385A0 = 0;
      dword_27EE38844 = -998637568;
      dword_27EE38840 = -998637568;
      dword_27EE3883C = -998637568;
      dword_27EE38838 = -998637568;
      fclose(v25);
      v20 = 0;
    }

    else
    {
      fclose(v25);
      if (qword_27EE37510 != -1)
      {
        sub_245F2CA4C();
      }

      v70 = qword_27EE37518;
      v20 = 1;
      if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v21 = "geomagnetic data file appears to be empty";
LABEL_110:
        v22 = v70;
        v69 = 2;
        goto LABEL_111;
      }
    }
  }

  else
  {
    if (qword_27EE37510 != -1)
    {
      sub_245F2CA4C();
    }

    v66 = qword_27EE37518;
    v20 = 1;
    if (os_log_type_enabled(qword_27EE37518, OS_LOG_TYPE_INFO))
    {
      v67 = __error();
      v68 = strerror(*v67);
      *buf = 136315394;
      v140 = COERCE_DOUBLE(byte_27EE38A28);
      v141 = 2082;
      v142 = *&v68;
      v21 = "could not open geomagnetic data file %s (%{public}s)";
      v22 = v66;
      goto LABEL_41;
    }
  }

LABEL_112:
  v132 = *MEMORY[0x277D85DE8];
  return v20;
}

os_log_t sub_245F14B78()
{
  result = os_log_create("com.apple.locationd.Motion", "Compass");
  qword_27EE37518 = result;
  return result;
}

uint64_t sub_245F14BA8(uint64_t a1, unint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  v3 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  sub_245F15E24((a1 + 56), a2);
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a1 + 16);
  sub_245F14DE4(v3, *a1);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void sub_245F14C10(_Unwind_Exception *a1)
{
  sub_245F15D58((v1 + 56));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_245F14C3C(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a1 + 16);
  result = sub_245F14DE4((a1 + 16), *a1);
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  return result;
}

void sub_245F14C7C(void *a1, float *a2, float *a3, float32x2_t *a4, float32x2_t *a5)
{
  v8 = a1[3];
  v7 = a1[4];
  if (v8 >= v7)
  {
    v10 = a1[2];
    v11 = (v8 - v10) >> 5;
    if ((v11 + 1) >> 59)
    {
      sub_245DF85A4();
    }

    v12 = v7 - v10;
    v13 = v12 >> 4;
    if (v12 >> 4 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      sub_245F15DAC((a1 + 2), v14);
    }

    v15 = 32 * v11;
    sub_245F17158(v15, a2, a3, a4, a5);
    v9 = v15 + 32;
    v16 = a1[2];
    v17 = a1[3];
    v18 = (v15 + v16 - v17);
    if (v17 != v16)
    {
      v19 = (v15 + v16 - v17);
      do
      {
        v20 = *v16;
        v21 = *(v16 + 1);
        v16 += 32;
        *v19 = v20;
        v19[1] = v21;
        v19 += 2;
      }

      while (v16 != v17);
      v16 = a1[2];
    }

    a1[2] = v18;
    a1[3] = v9;
    a1[4] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    sub_245F17158(a1[3], a2, a3, a4, a5);
    v9 = v8 + 32;
    a1[3] = v8 + 32;
  }

  a1[3] = v9;
  ++a1[1];
}

void sub_245F14DC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F14DE4(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      v2 = result[1] - *result;
      sub_245F15DAC(result, a2);
    }

    sub_245DF85A4();
  }

  return result;
}

void sub_245F14E88(uint64_t a1)
{
  *(a1 + 40) = sub_245F14EC4(a1);
  *(a1 + 44) = sub_245F14F7C(a1);
  *(a1 + 48) = 1;
}

float sub_245F14EC4(uint64_t a1)
{
  memset(v8, 0, sizeof(v8));
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  while (v1 != v2)
  {
    sub_245F171AC(v1);
    v7 = v3;
    sub_245F154C8(v8, &v7);
    v1 += 8;
  }

  sub_245F12BC8(v6, v8);
  v4 = sub_245F15550(v6);
  sub_245F12B1C(v6);
  sub_245F12B1C(v8);
  return v4;
}

void sub_245F14F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_245F12B1C(va);
  sub_245F12B1C(va1);
  _Unwind_Resume(a1);
}

float sub_245F14F7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = *(a1 + 16) + v2;
      v13 = *(v6 + 16);
      v12[0] = sub_245F1715C(v6, *(a1 + 40));
      v12[1] = v7;
      v8 = sub_245F0FC38(&v13, v12);
      v5 = v5 + ((v9 * v9) + (v8 * v8));
      v4 += 2;
      ++v3;
      v2 += 32;
    }

    while (*(a1 + 8) > v3);
    v10 = v5 / v4;
  }

  else
  {
    v10 = NAN;
  }

  return sqrtf(v10);
}

void sub_245F15034(uint64_t a1, float a2)
{
  *(a1 + 40) = (sub_245F14EC4(a1) + a2) * 0.5;
  *(a1 + 44) = sub_245F14F7C(a1);
  *(a1 + 48) = 1;
}

float sub_245F15088(uint64_t a1, unsigned int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v12 = qword_27EE374F8;
    v6 = 0.0;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Reject iterate request before initialization.";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_245D80000, v14, v15, v13, buf, 2u);
    }

    goto LABEL_29;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v6 = 0.0;
    goto LABEL_29;
  }

  v3 = *(a1 + 40);
  if (a2 >= 0x32)
  {
    v4 = 50;
  }

  else
  {
    v4 = a2;
  }

  v19 = 0;
  v5 = 0.01;
  v6 = 0.0;
  if (sub_245F153E0(a1, &v19 + 1, &v19, 0.01))
  {
    v7 = 0;
    v8 = v4 + 1;
    while (1)
    {
      *(a1 + 40) = *(&v19 + 1) + *(a1 + 40);
      v6 = sub_245F14F7C(a1);
      v9 = *(a1 + 44);
      if ((v6 - v9) <= 0.0)
      {
        if (fabsf(v6 - v9) < (fabsf(v9) * 0.001))
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CA74();
          }

          v18 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Converged!";
LABEL_38:
            v14 = v18;
            v15 = OS_LOG_TYPE_DEBUG;
            goto LABEL_27;
          }

          break;
        }

        *(a1 + 44) = v6;
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CA74();
        }

        v5 = fmaxf(v5 * 0.5, 0.00000001);
        v11 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v21 = v5;
          _os_log_impl(&dword_245D80000, v11, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Accept (lambda = %.6f)", buf, 0xCu);
        }

        v7 = 0;
      }

      else
      {
        *(a1 + 40) = v3;
        *(a1 + 44) = sub_245F14F7C(a1);
        if (v7 >= 3)
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CA74();
          }

          v18 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v13 = "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Max rollbacks exceeded, exiting!";
            goto LABEL_38;
          }

          break;
        }

        if (qword_27EE374F0 != -1)
        {
          sub_245F2CA74();
        }

        v5 = v5 * 5.0;
        ++v7;
        v10 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v21 = v5;
          _os_log_impl(&dword_245D80000, v10, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAPencilDMYawAlignmentSolver]:[iterate] Rollback (lambda = %.6f)", buf, 0xCu);
        }
      }

      if (--v8)
      {
        v3 = *(a1 + 40);
        v19 = 0;
        if (sub_245F153E0(a1, &v19 + 1, &v19, v5))
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_245F153E0(uint64_t a1, float *a2, float *a3, float a4)
{
  sub_245F156A4((a1 + 56));
  v8 = __sincosf_stret(*(a1 + 40));
  v18[0] = -v8.__sinval;
  v18[1] = -v8.__cosval;
  v18[2] = v8.__cosval;
  v18[3] = -v8.__sinval;
  if (*(a1 + 8))
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(a1 + 16) + v9;
      v17 = *(v11 + 16);
      v16[0] = sub_245F0FC38(v18, v11);
      v16[1] = v12;
      v15[0] = sub_245F1715C((*(a1 + 16) + v9), *(a1 + 40));
      v15[1] = v13;
      sub_245F15720((a1 + 56), v15, v16, &v17);
      ++v10;
      v9 += 32;
    }

    while (*(a1 + 8) > v10);
  }

  return sub_245F1592C((a1 + 56), a2, a3, a4);
}

float sub_245F154C8(uint64_t a1, float *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = *(a1 + 40);
  v9 = v8 + *(a1 + 32);
  if (v7 == v9)
  {
    sub_245F160BC(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40);
    v9 = *(a1 + 32) + v8;
  }

  result = *a2;
  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  *(a1 + 40) = v8 + 1;
  return result;
}

float sub_245F15550(void *a1)
{
  v1 = a1[5];
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    v3 = a1[4];
  }

  else
  {
    v5 = v1 >> 1;
    v6 = a1[4];
    v7 = a1[1];
    v8 = (v7 + 8 * (v6 >> 10));
    if (a1[2] == v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = &(*v8)[a1[4] & 0x3FFLL];
    }

    v18[0] = v7 + 8 * (v6 >> 10);
    v18[1] = v9;
    v11 = sub_245F13100(v18, v5);
    v12 = a1[5];
    v13 = a1[4] + v12;
    v14 = a1[1];
    v15 = (v14 + 8 * (v13 >> 10));
    if (a1[2] == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = &(*v15)[v13 & 0x3FF];
    }

    if (v10 != v16)
    {
      sub_245F16290(v8, v9, v11, v10, v15, v16);
      v12 = a1[5];
    }

    if ((v12 & 1) == 0)
    {
      v17 = a1[4] + v5;
      return (*(*(a1[1] + (((v17 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v17 - 1) & 0x3FF)) + *(*(a1[1] + ((v17 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v17 & 0x3FF))) * 0.5;
    }

    v3 = a1[4] + v5;
  }

  return *(*(a1[1] + ((v3 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v3 & 0x3FF));
}

void sub_245F156A4(void *a1)
{
  a1[1] = 0;
  v2 = a1[2];
  v3 = a1[3] - v2;
  if (v3 >= 1)
  {
    bzero(v2, v3);
  }

  v4 = a1[5];
  v5 = a1[6] - v4;
  if (v5 >= 1)
  {
    bzero(v4, v5);
  }

  v6 = a1[8];
  v7 = a1[9] - v6;
  if (v7 >= 1)
  {

    bzero(v6, v7);
  }
}

void sub_245F15720(unint64_t *a1, float *a2, float *a3, uint64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  if (v5 <= *a1)
  {
    if (v5 == *a1 - 1)
    {
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CA60();
      }

      v12 = qword_27EE374F8;
      v13 = os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEBUG);
      v5 = a1[1];
      if (v13)
      {
        v14 = *a1;
        *buf = 134218240;
        v26 = v5;
        v27 = 2048;
        v28 = v14;
        _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_DEBUG, "[BarrelRoll]:[CMAMEstimator1DConstant]:[add] Adding last sample. Number of added inputs: %lu, initial allocation: %lu.", buf, 0x16u);
        v5 = a1[1];
      }
    }

    *(a1[8] + 8 * v5) = 2 * v5;
    *buf = sub_245F0FC38(a4, a3);
    LODWORD(v26) = v15;
    v16 = sub_245F0FC38(a4, a2);
    v17 = 0;
    *v24 = v16;
    v24[1] = v18;
    v19 = 1;
    do
    {
      v20 = v19;
      *(a1[2] + 4 * *(a1[8] + 8 * a1[1]) + 4 * v17) = sub_245F0F064(buf, v17);
      v21 = sub_245F0F064(v24, v17);
      v19 = 0;
      v22 = a1[1];
      *(a1[5] + 4 * *(a1[8] + 8 * v22) + 4 * v17) = v21;
      v17 = 1;
    }

    while ((v20 & 1) != 0);
    a1[1] = v22 + 1;
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v6 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v8 = *a1;
      v7 = a1[1];
      *buf = 134218240;
      v26 = v7;
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_245D80000, v6, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[add] Number of added inputs: %lu exceeded the initial allocation: %lu . Will NOT add this sample.", buf, 0x16u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245F1592C(void *a1, float *a2, float *a3, float a4)
{
  v5 = a1[1];
  if (v5)
  {
    *v52 = 1065353216;
    sub_245F15ED0(buf, v5);
    v9 = 0;
    *a2 = 0.0;
    v10 = 0.0;
    v11 = 3.4028e38;
    while (1)
    {
      if (v9 > 0x63)
      {
LABEL_42:
        v42 = 1;
        goto LABEL_53;
      }

      if (!sub_245F168E0(a1, buf, a2, a3, a4))
      {
        break;
      }

      v12 = 2 * a1[1];
      LODWORD(v51[0]) = 0;
      sub_245F15ED0(v52, v12);
      v13 = 2 * a1[1];
      if (v13)
      {
        v14 = a1[5];
        v15 = a1[2];
        v16 = 2 * a1[1];
        v17 = *v52;
        do
        {
          v18 = *v14++;
          v19 = v18;
          v20 = *v15++;
          *v17++ = v19 - (v20 * *a2);
          --v16;
        }

        while (v16);
      }

      LODWORD(__p) = 0;
      sub_245F15ED0(v51, v13);
      v21 = a1[1];
      v22 = 2 * v21;
      if (2 * v21)
      {
        v23 = a1[5];
        v24 = a1[2];
        v25 = v51[0];
        do
        {
          v26 = *v23++;
          v27 = v26;
          v28 = *v24++;
          *v25++ = v27 - (v28 * v10);
          --v22;
        }

        while (v22);
      }

      v47 = 0.0;
      sub_245F15ED0(&__p, v21);
      v30 = a1[1];
      if (v30)
      {
        v31 = 0;
        v32 = a1[8];
        v33 = 0.0;
        do
        {
          v34 = *(v32 + 8 * v31);
          v35 = 0.0;
          if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v36 = 0;
            do
            {
              v37 = *(v51[0] + v34);
              *sub_245F102D0(&v47, v36) = v37;
              v38 = *(*v52 + 4 * v34);
              *sub_245F102D0(v46, v36++) = v38;
              v35 = v35 + (*(*v52 + 4 * v34) * *(*v52 + 4 * v34));
              ++v34;
              v32 = a1[8];
            }

            while (v34 < *(v32 + 8 * v31) + 2);
            v29 = v47;
            v30 = a1[1];
          }

          if (v29 <= 0.0)
          {
            v29 = -v29;
          }

          v39 = v48;
          if (v48 <= 0.0)
          {
            v39 = -v48;
          }

          if (v39 > v29)
          {
            v29 = v39;
          }

          if (v29 <= 1.345)
          {
            v40 = 1.0;
          }

          else
          {
            v40 = 1.345 / v29;
          }

          *(__p + v31) = v40;
          v29 = *(*buf + 4 * v31);
          v33 = v33 + (v29 * v35);
          ++v31;
        }

        while (v30 > v31);
      }

      else
      {
        v33 = 0.0;
      }

      if ((v33 - v11) <= 0.0)
      {
        sub_245DF843C(buf, __p, v50, (v50 - __p) >> 2);
        if (fabsf(v33 - v11) >= (fabsf(v11) * 0.00001))
        {
          v10 = *a2;
          ++v9;
          v41 = 1;
        }

        else
        {
          v41 = 0;
        }

        v11 = v33;
      }

      else
      {
        v41 = 0;
        *a2 = v10;
      }

      if (__p)
      {
        v50 = __p;
        operator delete(__p);
      }

      if (v51[0])
      {
        v51[1] = v51[0];
        operator delete(v51[0]);
      }

      if (*v52)
      {
        v53 = *v52;
        operator delete(*v52);
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA74();
    }

    v44 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *v52 = 0;
      _os_log_impl(&dword_245D80000, v44, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[solve] Ill conditioned. Exiting solver.", v52, 2u);
    }

    v42 = 0;
LABEL_53:
    if (*buf)
    {
      v55 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v43 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_245D80000, v43, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[solve] Called solve before adding any constraints. Aborting and returning false.", buf, 2u);
    }

    return 0;
  }

  return v42;
}

void sub_245F15CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F15D58(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[3] = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_245F15DAC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_245DF8694();
}

os_log_t sub_245F15DF4()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

unint64_t *sub_245F15E24(unint64_t *a1, unint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  v4 = 2 * a2;
  sub_245F15ED0(a1 + 2, 2 * a2);
  sub_245F15ED0(a1 + 5, v4);
  sub_245F15FE4(a1 + 8, a2);
  return a1;
}

void sub_245F15E9C(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  if (v3)
  {
    v1[6] = v3;
    operator delete(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F15ED0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_245DF8568(result, a2);
  }

  return result;
}

void sub_245F15FC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F15FE4(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_245DF87F4(result, a2);
  }

  return result;
}

void sub_245F160A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_245F160BC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_245F1358C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_245F13164(a1, &v10);
}

void sub_245F16244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float **sub_245F16290(float **result, float *a2, float **a3, float *a4, float **a5, float *a6)
{
  v78 = result;
  v79 = a2;
  if (a6 != a4)
  {
    v6 = a6;
    while (1)
    {
      if (v6 == a2)
      {
        return result;
      }

      v10 = *a5;
      v11 = v6 - *a5 + ((a5 - result) << 7) - (a2 - *result);
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 3)
      {
        v69 = v79;
        v70 = a2 + 1;
        if ((a2 + 1) - *v78 == 4096)
        {
          v70 = v78[1];
        }

        if (v6 == v10)
        {
          v6 = *(a5 - 1) + 1024;
        }

        v71 = *v70;
        v72 = *v79;
        v73 = *(v6 - 1);
        if (*v70 >= *v79)
        {
          if (v73 < v71)
          {
            *v70 = v73;
            *(v6 - 1) = v71;
            v76 = *v69;
            if (*v70 < *v69)
            {
              *v69 = *v70;
              *v70 = v76;
            }
          }
        }

        else
        {
          if (v73 >= v71)
          {
            *v79 = v71;
            *v70 = v72;
            v77 = *(v6 - 1);
            if (v77 >= v72)
            {
              return result;
            }

            *v70 = v77;
          }

          else
          {
            *v79 = v73;
          }

          *(v6 - 1) = v72;
        }

        return result;
      }

      if (v11 == 2)
      {
        if (v6 == v10)
        {
          v6 = *(a5 - 1) + 1024;
        }

        v74 = *(v6 - 1);
        if (v74 < *a2)
        {
          v75 = *v79;
          *v79 = v74;
          *(v6 - 1) = v75;
        }

        return result;
      }

      if (v11 <= 7)
      {
        return sub_245F16834(v78, v79, a5, v6);
      }

      sub_245F13100(&v78, v11 >> 1);
      v13 = v12;
      v14 = *a5;
      v15 = *a5;
      v16 = a5;
      v17 = v6;
      if (v6 == *a5)
      {
        v16 = a5 - 1;
        v15 = *(a5 - 1);
        v17 = v15 + 1024;
      }

      v18 = v79;
      v20 = *(v17 - 1);
      v19 = v17 - 1;
      v21 = v20;
      v22 = *v12;
      v23 = *v79;
      if (*v12 < *v79)
      {
        break;
      }

      if (v21 < v22)
      {
        *v12 = v21;
        *v19 = v22;
        v24 = *v18;
        if (*v12 < *v18)
        {
          *v18 = *v12;
          *v12 = v24;
        }

        goto LABEL_20;
      }

      v25 = 0;
LABEL_22:
      result = v78;
      a2 = v79;
      v26 = *v79;
      if (*v79 >= *v13)
      {
        while (1)
        {
          if (v19 == v15)
          {
            v27 = *--v16;
            v15 = v27;
            v19 = v27 + 1024;
          }

          if (v79 == --v19)
          {
            break;
          }

          if (*v19 < *v13)
          {
            *v79 = *v19;
            *v19 = v26;
            if (v25)
            {
              v25 = 2;
            }

            else
            {
              v25 = 1;
            }

            goto LABEL_30;
          }
        }

        v51 = v79 + 1;
        v52 = *v78;
        if ((v79 + 1) - *v78 == 4096)
        {
          result = v78 + 1;
          v52 = v78[1];
          v51 = v52;
        }

        v53 = a5;
        v54 = v6;
        if (v6 == v14)
        {
          v53 = a5 - 1;
          v14 = *(a5 - 1);
          v54 = v14 + 1024;
        }

        v56 = *(v54 - 1);
        v55 = v54 - 1;
        v57 = v56;
        if (v26 >= v56)
        {
          while (v51 != v55)
          {
            v65 = *v51;
            if (v26 < *v51)
            {
              *v51++ = v57;
              *v55 = v65;
              if (v51 - v52 == 4096)
              {
                v68 = result[1];
                ++result;
                v52 = v68;
                v51 = v68;
              }

              goto LABEL_79;
            }

            if (++v51 - v52 == 4096)
            {
              v66 = result[1];
              ++result;
              v52 = v66;
              v51 = v66;
            }
          }

          return result;
        }

LABEL_79:
        if (v51 == v55)
        {
          return result;
        }

        while (1)
        {
          v58 = *a2;
          while (1)
          {
            v59 = *v51;
            if (v58 < *v51)
            {
              break;
            }

            if (++v51 - v52 == 4096)
            {
              v60 = result[1];
              ++result;
              v52 = v60;
              v51 = v60;
            }
          }

          do
          {
            if (v55 == v14)
            {
              v61 = *--v53;
              v14 = v61;
              v55 = v61 + 1024;
            }

            v62 = *--v55;
            v63 = v62;
          }

          while (v58 < v62);
          if (result >= v53 && (result != v53 || v51 >= v55))
          {
            break;
          }

          *v51++ = v63;
          *v55 = v59;
          if (v51 - v52 == 4096)
          {
            v64 = result[1];
            ++result;
            v52 = v64;
            v51 = v64;
          }
        }

        if (result > a3 || v51 > a4 && result == a3)
        {
          return result;
        }

        goto LABEL_103;
      }

LABEL_30:
      v28 = a2 + 1;
      v29 = *result;
      v30 = *result;
      v31 = result;
      if ((a2 + 1) - *result == 4096)
      {
        v31 = result + 1;
        v30 = result[1];
        v28 = v30;
      }

      if (v31 < v16 || v31 == v16 && v28 < v19)
      {
        while (1)
        {
          v32 = *v13;
          while (1)
          {
            v33 = *v28;
            if (*v28 >= v32)
            {
              break;
            }

            if (++v28 - v30 == 4096)
            {
              v34 = v31[1];
              ++v31;
              v30 = v34;
              v28 = v34;
            }
          }

          do
          {
            if (v19 == v15)
            {
              v35 = *--v16;
              v15 = v35;
              v19 = v35 + 1024;
            }

            v36 = *--v19;
            v37 = v36;
          }

          while (v36 >= v32);
          if (v31 >= v16 && (v31 != v16 || v28 >= v19))
          {
            break;
          }

          v38 = v13 == v28;
          *v28++ = v37;
          *v19 = v33;
          ++v25;
          if (v38)
          {
            v13 = v19;
          }

          if (v28 - v30 == 4096)
          {
            v39 = v31[1];
            ++v31;
            v30 = v39;
            v28 = v39;
          }
        }
      }

      if (v28 != v13)
      {
        v40 = *v28;
        if (*v13 < *v28)
        {
          *v28 = *v13;
          *v13 = v40;
          ++v25;
        }
      }

      if (v28 == a4)
      {
        return result;
      }

      if (!v25)
      {
        if (v31 > a3 || (v41 = v30, v42 = v28, v43 = v31, v28 > a4) && (v41 = v30, v42 = v28, v43 = v31, v31 == a3))
        {
          v44 = a2;
          v45 = result;
          while (1)
          {
            v46 = v44 + 1;
            if ((v44 + 1) - v29 == 4096)
            {
              v47 = v45[1];
              ++v45;
              v29 = v47;
              v46 = v47;
            }

            if (v46 == v28)
            {
              break;
            }

            v48 = *v46 < *v44;
            v44 = v46;
            if (v48)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          while (1)
          {
            v49 = v42 + 1;
            if ((v42 + 1) - v41 == 4096)
            {
              v50 = v43[1];
              ++v43;
              v41 = v50;
              v49 = v50;
            }

            if (v49 == v6)
            {
              break;
            }

            v48 = *v49 < *v42;
            v42 = v49;
            if (v48)
            {
              goto LABEL_54;
            }
          }
        }

        return result;
      }

LABEL_54:
      if (v31 <= a3 && (v28 <= a4 || v31 != a3))
      {
        v51 = v28 + 1;
        if ((v28 + 1) - v30 == 4096)
        {
          v67 = v31[1];
          ++v31;
          v51 = v67;
        }

        result = v31;
LABEL_103:
        v78 = result;
        v79 = v51;
        a2 = v51;
        goto LABEL_104;
      }

      v6 = v28;
      a5 = v31;
LABEL_104:
      if (v6 == a4)
      {
        return result;
      }
    }

    if (v21 >= v22)
    {
      *v79 = v22;
      *v12 = v23;
      if (*v19 >= v23)
      {
LABEL_20:
        v25 = 1;
        goto LABEL_22;
      }

      *v12 = *v19;
    }

    else
    {
      *v79 = v21;
    }

    *v19 = v23;
    goto LABEL_20;
  }

  return result;
}

float **sub_245F16834(float **result, float *a2, float **a3, float *a4)
{
  v4 = a4;
  if (*a3 == a4)
  {
    v4 = (*(a3 - 1) + 1024);
  }

  v5 = (v4 - 4);
  while (a2 != v5)
  {
    if (a4 != a2)
    {
      v6 = *result;
      v7 = a2;
      v8 = a2;
      v9 = result;
      while (1)
      {
        if (++v8 - v6 == 4096)
        {
          v10 = v9[1];
          ++v9;
          v6 = v10;
          v8 = v10;
        }

        if (v8 == a4)
        {
          break;
        }

        if (*v8 < *v7)
        {
          v7 = v8;
        }
      }

      if (v7 != a2)
      {
        v11 = *a2;
        *a2 = *v7;
        *v7 = v11;
      }
    }

    if (++a2 - *result == 4096)
    {
      v12 = result[1];
      ++result;
      a2 = v12;
    }
  }

  return result;
}

BOOL sub_245F168E0(void *a1, void *a2, float *a3, float *a4, float a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  if (v7)
  {
    v8 = 0;
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = *(a1[8] + 8 * v8);
      if (v11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = 0;
        v13 = *(*a2 + 4 * v8);
        v14 = a1[2] + 4 * v11;
        v15 = a1[5] + 4 * v11;
        do
        {
          v16 = *(v14 + v12);
          v9 = v9 + ((v13 * v16) * v16);
          v10 = v10 + ((v13 * v16) * *(v15 + v12));
          v12 += 4;
        }

        while (v12 != 8);
      }

      ++v8;
    }

    while (v8 != v7);
  }

  else
  {
    v10 = 0.0;
    v9 = 0.0;
  }

  v17 = v9 + a5;
  if ((v9 + a5) < 0.000000001)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CA60();
    }

    v19 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218240;
      v23 = v17;
      v24 = 2048;
      v25 = 0x3E112E0BE0000000;
      _os_log_impl(&dword_245D80000, v19, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAMEstimator1DConstant]:[normal_solve] Information matrix: %f below min valid value: %f. Will not proceed with this solve step.", &v22, 0x16u);
    }

    *a4 = 0.0;
    v18 = 0.0;
  }

  else
  {
    *a4 = v17;
    v18 = v10 / v17;
  }

  result = v17 >= 0.000000001;
  *a3 = v18;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F16A74(uint64_t a1)
{
  v2 = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 1065353216;
  *(a1 + 132) = 0;
  do
  {
    v3 = a1 + v2;
    *(v3 + 136) = 0;
    *(v3 + 144) = 1065353216;
    *(v3 + 152) = 1065353216;
    *(v3 + 160) = 0;
    *(v3 + 164) = 0;
    *(v3 + 168) = 1065353216;
    *(v3 + 176) = 0;
    v2 += 48;
    *(v3 + 180) = 0;
  }

  while (v2 != 192);
  *(a1 + 428) = 0;
  *(a1 + 440) = 2;
  *(a1 + 448) = 0;
  v4 = &dword_245F32C14;
  for (i = 492; i != 472; i -= 4)
  {
    v6 = *v4++;
    *(a1 + i) = v6;
  }

  *(a1 + 480) = -*(a1 + 480);
  *(a1 + 488) = -*(a1 + 488);
  *(a1 + 496) = *(a1 + 476);
  *(a1 + 512) = xmmword_245F32C00;
  v7 = &dword_245F32C14;
  for (j = 564; j != 544; j -= 4)
  {
    v9 = *v7++;
    *(a1 + j) = v9;
  }

  *(a1 + 552) = -*(a1 + 552);
  *(a1 + 560) = -*(a1 + 560);
  *(a1 + 568) = *(a1 + 548);
  sub_245F16B90(a1);
  return a1;
}

double sub_245F16B90(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  do
  {
    *(a1 + 4 * v4 + 104) = (v4 * 3.0) / 3.0;
    v5 = a1 + v2;
    *(v5 + 328) = 1065353216;
    *(v5 + 336) = 0;
    *(v5 + 376) = 0;
    *(v5 + 384) = 1065353216;
    *(a1 + v4 + 424) = 0;
    v6 = a1 + v3;
    *(v6 + 160) = 1;
    *(v6 + 176) = 1;
    *(v6 + 180) = 1;
    *(v6 + 136) = 0;
    *(v6 + 144) = 0x33CBCD5A0;
    *(v6 + 152) = 0x3727C5AC3CBCD5A0;
    *(v6 + 168) = 0x3727C5AC3CBCD5A0;
    *(v6 + 164) = 3;
    ++v4;
    v3 += 48;
    v2 += 12;
  }

  while (v3 != 192);
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    v10 = (a1 + 440 + 72 * v7);
    v11 = 4;
    do
    {
      sub_245F16D54(v10, 0.0);
      --v11;
    }

    while (v11);
    v8 = 0;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  *(a1 + 132) = 1;
  result = 5.32990247e-43;
  *(a1 + 124) = 0x3727C5AC3CA23660;
  *(a1 + 120) = 3;
  return result;
}

uint64_t sub_245F16CC8(uint64_t result, float *a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (*(result + 12) == 1)
  {
    v4 = 1.0 / v3;
    if (!v3)
    {
      v4 = 1.0;
    }

    if (v4 <= *(result + 4))
    {
      v4 = *(result + 4);
    }

    v5 = *(result + 8) - (v4 * (*(result + 8) - *a2));
  }

  else if (v2 > 2)
  {
    v5 = *(result + 8) - (*(result + 4) * (*(result + 8) - *a2));
  }

  else
  {
    v5 = (1.0 / v3) * (*a2 + (*(result + 8) * v2));
  }

  *(result + 8) = v5;
  return result;
}

BOOL sub_245F16D54(float *a1, float a2)
{
  v2 = *a1;
  if (*a1)
  {
    *a1 = v2 - 1;
    v3 = *(a1 + 1);
    if ((v3 + 1) <= 4)
    {
      v4 = v3 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 1);
    if ((v6 + 1) <= 4)
    {
      v4 = v6 + 1;
    }

    else
    {
      v4 = 0;
    }

    a1[v4 + 4] = a2;
    a2 = 0.0;
    do
    {
      a2 = a2 + (a1[v5 + 13 - v4] * a1[v5 + 4]);
      ++v5;
    }

    while (v5 != 5);
  }

  v7 = v2 == 0;
  if ((v4 + 1) <= 4)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1) = v8;
  a1[v8 + 4] = a2;
  return v7;
}

uint64_t sub_245F16DE8(uint64_t a1, float *a2, float *a3, float32x2_t *a4, float32x2_t *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a2[1];
  v10 = __sincosf_stret(*a2);
  v12 = __sincosf_stret(v9);
  v11.f32[0] = v12.__sinval;
  *buf = sub_245F24A60(a4, v11);
  v53 = __PAIR64__(v14, v13);
  *v54 = v15;
  v16.f32[0] = sub_245F24D2C(buf, v10.__sinval * v12.__cosval, v10.__sinval * v12.__sinval, v10.__cosval);
  v18 = 0;
  *buf = v16.i32[0];
  v53 = LODWORD(v17);
  v19 = 0.0;
  do
  {
    v19 = v19 + (*&buf[v18] * *&buf[v18]);
    v18 += 4;
  }

  while (v18 != 12);
  if (sqrtf(v19) > 0.00000011921)
  {
    v20 = 0;
    v21 = 0.0;
    do
    {
      v21 = v21 + (*&buf[v20] * *&buf[v20]);
      v20 += 4;
    }

    while (v20 != 12);
    v22 = sqrtf(v21);
    v16.f32[0] = v16.f32[0] / v22;
    v17 = v17 / v22;
  }

  *a1 = v16.i32[0];
  *(a1 + 4) = v17;
  if ((atomic_load_explicit(&qword_27EE388B8, memory_order_acquire) & 1) == 0)
  {
    sub_245F2CA9C();
  }

  *buf = sub_245F24A60(a5, v16);
  v53 = __PAIR64__(v24, v23);
  *v54 = v25;
  v26 = sub_245F24D2C(buf, *&qword_27EE388C0, *(&qword_27EE388C0 + 1), *&dword_27EE388C8);
  v28 = 0;
  *buf = v26;
  v53 = LODWORD(v27);
  v29 = 0.0;
  do
  {
    v29 = v29 + (*&buf[v28] * *&buf[v28]);
    v28 += 4;
  }

  while (v28 != 12);
  if (sqrtf(v29) > 0.00000011921)
  {
    v30 = 0;
    v31 = 0.0;
    do
    {
      v31 = v31 + (*&buf[v30] * *&buf[v30]);
      v30 += 4;
    }

    while (v30 != 12);
    v32 = sqrtf(v31);
    v26 = v26 / v32;
    v27 = v27 / v32;
  }

  v33 = 0;
  *(a1 + 8) = v26;
  *(a1 + 12) = v27;
  v34 = 1;
  v35 = 1;
  do
  {
    v36 = v34;
    if (sub_245F0F064(a3, v33) >= 0.000000001)
    {
      v37 = sqrtf(1.0 / sub_245F0F064(a3, v33));
    }

    else
    {
      if (v35)
      {
        v35 = 0;
      }

      v37 = 0.000000001;
    }

    v38 = sub_245F102D0(v51, v33);
    v34 = 0;
    *v38 = v37;
    v33 = 1;
  }

  while ((v36 & 1) != 0);
  *(a1 + 16) = sub_245F0E0C4(v51);
  *(a1 + 20) = v39;
  *(a1 + 24) = v40;
  *(a1 + 28) = v41;
  if ((v35 & 1) == 0)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CAE4();
    }

    v42 = qword_27EE374F8;
    if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
    {
      *&v43 = *a1;
      v44 = *(a1 + 4);
      v45 = *(a1 + 8);
      v46 = *(a1 + 12);
      v47 = *a3;
      v48 = a3[1];
      *buf = 134219264;
      v53 = v43;
      *v54 = 2048;
      *&v54[2] = v44;
      v55 = 2048;
      v56 = v45;
      v57 = 2048;
      v58 = v46;
      v59 = 2048;
      v60 = v47;
      v61 = 2048;
      v62 = v48;
      _os_log_impl(&dword_245D80000, v42, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMAPencilDMYawAlignmentMeasurement]:[CMAPencilDMYawAlignmentMeasurement] Failed measurement covariance Cholesky decomposition. f_eY_IS_xy: %.6f %.6f, f_eY_IP_xy: %.6f %.6f, ringMeasCovRad2: %.6f %.6f", buf, 0x3Eu);
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return a1;
}

float sub_245F1710C(float *a1)
{
  v1 = a1[1];
  sinval = __sincosf_stret(*a1).__sinval;
  return sinval * __sincosf_stret(v1).__cosval;
}

float sub_245F1715C(float *a1, float a2)
{
  v3 = __sincosf_stret(a2);
  v7[0] = LODWORD(v3.__cosval);
  *&v7[1] = -v3.__sinval;
  v8 = v3;
  result = a1[2] - sub_245F0FC38(v7, a1);
  v6 = a1[3] - v5;
  return result;
}

void sub_245F171AC(float *a1)
{
  v1 = ((a1[1] * a1[3]) + 0.0) + (*a1 * a1[2]);
  if (v1 > 1.0)
  {
    v1 = 1.0;
  }

  if (v1 < -1.0)
  {
    v1 = -1.0;
  }

  acosf(v1);
}

float sub_245F1720C@<S0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v4 = __sincosf_stret(*a1);
  v5 = __sincosf_stret(v3);
  result = -(v5.__sinval * v4.__sinval);
  *a2 = v4.__cosval * v5.__cosval;
  *(a2 + 4) = v4.__cosval * v5.__sinval;
  *(a2 + 8) = -v4.__sinval;
  *(a2 + 12) = result;
  *(a2 + 16) = v4.__sinval * v5.__cosval;
  *(a2 + 20) = 0;
  return result;
}

os_log_t sub_245F17278()
{
  result = os_log_create("com.apple.locationd.Motion", "PencilFusion");
  qword_27EE374F8 = result;
  return result;
}

float sub_245F172A8(float *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v9[0] = *(a2 + 16);
  v9[1] = v3;
  v4 = *(a2 + 64);
  v9[2] = *(a2 + 48);
  v9[3] = v4;
  v9[4] = *(a2 + 80);
  v10 = *(a2 + 96);
  sub_245F21830(v9, word_245F32C6C, word_245F32C96, 21, 0);
  sub_245F219BC(v9, v13, &unk_245F32CC0, 1, 21, 0xAuLL);
  sub_245F219BC(v13, v12, &unk_245F32E78, 1, 10, 0xAuLL);
  sub_245F219BC(v12, v11, &unk_245F32F54, 1, 10, 0xAuLL);
  sub_245F219BC(v11, &v8, &unk_245F33030, 0, 10, 1uLL);
  v5 = v8;
  if (v8 <= 0.15)
  {
    v5 = 0.0;
  }

  *a1 = fminf(v5, 3.5);
  sub_245F219BC(v9, v13, &unk_245F32C40, 0, 21, 1uLL);
  result = fminf(fmaxf(v13[0] + (v8 * -0.19324), 0.0225), 12.25);
  a1[1] = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245F17430(uint64_t a1)
{
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  sub_245F21AC0(a1 + 176);
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  sub_245F21B18(v2);
  return a1;
}

double sub_245F174F0(uint64_t a1)
{
  *a1 = 0x1000000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0xBF80000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 152) = 0x3F80000000000000;
  *(a1 + 160) = 0;
  return sub_245F21B18(a1 + 176);
}

void sub_245F17554(uint64_t a1, uint64_t a2, float a3, double a4)
{
  v7 = (a4 * 1000000.0);
  v8 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v8;
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  v11 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 48);
  *(a1 + 80) = v10;
  *(a1 + 48) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = v7;
  v12 = *(a2 + 44);
  v13 = *(a2 + 48);
  v14 = *(a2 + 52);
  v37 = __PAIR64__(LODWORD(v13), v12);
  v38 = v14;
  LODWORD(v9) = *(a2 + 64);
  v35 = *(a2 + 56);
  v36 = v9;
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(*a2), *(a2 + 16));
  v34 = vextq_s8(v15, v15, 4uLL);
  sub_245F24EC0(&v34, v34);
  v16.i32[1] = v34.i32[1];
  *(a1 + 144) = v34;
  v17 = *(a1 + 84);
  *a1 = v17 > 0;
  if (v17 >= 1)
  {
    v18 = *(a2 + 72);
    *(a1 + 1) = v18;
    if (*(a1 + 2))
    {
      v19 = (v7 - *(a1 + 136)) < 60000000.0;
      if (*(a1 + 3) == 1)
      {
        *(a1 + 3) = 0;
      }

      if (!v18)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (*(a1 + 3))
      {
        *(a1 + 160) = v34;
LABEL_17:
        sub_245F21B4C(a1 + 176, &v37, (a1 + 160), v7);
        v31 = v37;
        *(a1 + 112) = v7;
        *(a1 + 120) = v31;
        *(a1 + 128) = v38;
        v32 = *(a1 + 168);
        *(a1 + 16) = *(a1 + 172);
        *(a1 + 24) = vcvtq_f64_f32(*(a1 + 160));
        *(a1 + 40) = v32;
        sub_245F25054((a1 + 160));
        *(a1 + 92) = v33;
        *(a1 + 88) = *(a1 + 1);
        *(a1 + 96) = *(a1 + 2);
        *(a1 + 97) = *(a1 + 4);
        *(a1 + 4) = 0;
        *(a1 + 12) = a3;
        return;
      }

      v19 = 0;
      if (!v18)
      {
        goto LABEL_12;
      }
    }

    if (!v19)
    {
      sub_245F1779C(a1, &v35);
      goto LABEL_13;
    }

LABEL_12:
    v16.i32[0] = v12;
    sub_245F17864(a1, v16, v13, v14);
    sub_245F25054((a1 + 160));
    v21 = v20;
    sub_245F25054((a1 + 144));
    sub_245F17908(a1, v21 - v22);
    *(a1 + 1) = 0;
LABEL_13:
    if ((*(a1 + 2) & 1) == 0)
    {
      sub_245F25054((a1 + 160));
      v24 = v23;
      sub_245F25054((a1 + 144));
      v26 = v25;
      sub_245F25054((a1 + 160));
      v28 = v27;
      sub_245F25054((a1 + 144));
      v30 = v28 - v29;
      if (v24 < v26)
      {
        v30 = -v30;
      }

      *(a1 + 3) = v30 < 0.1;
    }

    goto LABEL_17;
  }
}

void sub_245F1779C(uint64_t a1, float32x2_t *a2)
{
  v4.f32[0] = sub_245F24C20((a1 + 160));
  v5 = 0;
  v12 = *a2;
  v13 = a2[1].f32[0];
  v8 = ((v6 * a2[1].f32[0]) + (a2->f32[1] * v7)) + (a2->f32[0] * v4.f32[0]);
  v4.f32[1] = v7;
  v9 = vsub_f32(v12, vmul_n_f32(v4, v8));
  v12 = v9;
  v10 = v13 - (v6 * v8);
  v13 = v10;
  v11 = 0;
  do
  {
    *v11.i32 = *v11.i32 + (v12.f32[v5] * v12.f32[v5]);
    ++v5;
  }

  while (v5 != 3);
  *v11.i32 = sqrtf(*v11.i32);
  v12 = vdiv_f32(v9, vdup_lane_s32(v11, 0));
  v13 = v10 / *v11.i32;
  sub_245F17984(a1, &v12);
  *(a1 + 2) = 0;
}

void sub_245F17864(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  v6 = (*&a1[13] - *&a1[14]) * 0.000001;
  if (v6 <= 0.1)
  {
    v17 = v4;
    v18 = v5;
    v8 = v6 * 0.5;
    v9 = v8 * (a4 + a1[16].f32[0]);
    a2.f32[1] = a3;
    v15 = vmul_n_f32(vadd_f32(a2, a1[15]), v8);
    v16 = v9;
    *v10.i64 = sub_245F24E08(&v14, &v15);
    a1[20].f32[0] = sub_245F249DC(&v14, &a1[20], v10);
    a1[20].i32[1] = v11;
    a1[21].i32[0] = v12;
    a1[21].i32[1] = v13;
  }
}

void sub_245F17908(uint64_t a1, float a2)
{
  v11[0] = (a2 * 0.017453) * sub_245F24C20((a1 + 144));
  v11[1] = (a2 * 0.017453) * v4;
  v11[2] = (a2 * 0.017453) * v5;
  *v6.i64 = sub_245F24E08(&v10, v11);
  *(a1 + 160) = sub_245F249DC(&v10, (a1 + 144), v6);
  *(a1 + 164) = v7;
  *(a1 + 168) = v8;
  *(a1 + 172) = v9;
}

void sub_245F17984(uint64_t a1, float *a2)
{
  sub_245F24DB8((a1 + 160), v7);
  v4 = sub_245F17C3C(v7, a2);
  v6 = atan2f(v5, v4);
  sub_245F17D04(a1, v6);
}

uint64_t sub_245F179E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = sub_245F21BDC(a1 + 176, a2, a3, a4, *(a1 + 8));
  if (result)
  {
    result = sub_245F17A30(a1, v6, (a1 + 8200));
    *(a1 + 2) |= result;
  }

  *(a1 + 4) = result;
  return result;
}

uint64_t sub_245F17A30(uint64_t a1, uint64_t a2, float *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (qword_27EE37520 != -1)
  {
    sub_245F2CB0C();
  }

  v5 = qword_27EE37528;
  if (os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    *v19 = 134218752;
    *&v19[4] = v6;
    *&v19[12] = 2048;
    *&v19[14] = v7;
    v20 = 2048;
    v21 = v8;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_245D80000, v5, OS_LOG_TYPE_DEBUG, "visual localization,measurement,%f,%f,%f,%f", v19, 0x2Au);
  }

  *v19 = *(a1 + 160);
  sub_245F25054(a3);
  v11 = v10;
  sub_245F25054(v19);
  v13 = v11 - v12;
  if (v13 < 0.0)
  {
    v13 = -v13;
  }

  if (v13 > 30.0 && *(a1 + 84) == 5)
  {
    result = 0;
  }

  else
  {
    *(a1 + 136) = *(a1 + 104);
    sub_245F25054(a3);
    v16 = v15;
    sub_245F25054(v19);
    sub_245F17BA8(a1, v16 - v17);
    result = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245F17BA8(uint64_t a1, float a2)
{
  v3 = -a2;
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  if (v3 >= 0.00000011921)
  {
    v12[0] = (a2 * 0.017453) * sub_245F24C20((a1 + 144));
    v12[1] = (a2 * 0.017453) * v5;
    v12[2] = (a2 * 0.017453) * v6;
    *v7.i64 = sub_245F24E08(&v11, v12);
    *(a1 + 160) = sub_245F249DC(&v11, (a1 + 160), v7);
    *(a1 + 164) = v8;
    *(a1 + 168) = v9;
    *(a1 + 172) = v10;
  }
}

float sub_245F17C3C(uint64_t a1, float *a2)
{
  for (i = 0; i != 3; ++i)
  {
    v5 = sub_245F0ECD8(a1, i, 0) * *a2;
    *sub_245F0F2E8(&v11, i) = v5;
    for (j = 1; j != 3; ++j)
    {
      v7 = sub_245F0ECD8(a1, i, j);
      v8 = sub_245F0EA08(a2, j);
      v9 = sub_245F0F2E8(&v11, i);
      *v9 = *v9 + (v7 * v8);
    }
  }

  return v11;
}

void sub_245F17D04(uint64_t a1, float a2)
{
  v4 = sub_245F24C20((a1 + 144));
  v5 = 0;
  v6 = v4 * a2;
  v8 = v7 * a2;
  v10 = v9 * a2;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(&v17 + v5) * *(&v17 + v5));
    v5 += 4;
  }

  while (v5 != 12);
  if (sqrtf(v11) > 0.00000011921)
  {
    v17 = v6 * 0.01;
    v18 = v8 * 0.01;
    v19 = v10 * 0.01;
  }

  *v12.i64 = sub_245F24E08(&v16, &v17);
  *(a1 + 160) = sub_245F249DC(&v16, (a1 + 160), v12);
  *(a1 + 164) = v13;
  *(a1 + 168) = v14;
  *(a1 + 172) = v15;
}

os_log_t sub_245F17DF4()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

void sub_245F17E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) == 1)
  {
    v5 = sub_245F17EE4(a1, a3);
    if (!v5 && *(a2 + 4) == *(a2 + 2))
    {
      if (sub_245F17F8C(v5, a2))
      {
        v6 = sub_245F0C3C0(a2, 0xFFuLL);
        v7 = sub_245F24DC8(v6, *a1, *(a1 + 4), *(a1 + 8));
        v8 = dword_245F33078[*(a1 + 24) == 2];
        atan2f(v9, v7);
      }
    }
  }
}

BOOL sub_245F17EE4(uint64_t a1, uint64_t a2)
{
  v3 = 0.0;
  v4 = 255;
  v5 = 1;
  v6 = 0.0;
  do
  {
    v7 = *sub_245F09E3C((a2 + 16), v4) * -9.8067;
    v8 = v7 - v6;
    v6 = v6 + ((v7 - v6) / v5);
    v3 = v3 + (v8 * (v7 - v6));
    --v4;
    ++v5;
  }

  while (v4 != 155);
  return (v3 / 99.0) < 0.18;
}

uint64_t sub_245F17F8C(uint64_t a1, unsigned __int16 *a2)
{
  if (!a2[1])
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = sub_245F0C3C0(a2, v3);
    v5 = sub_245F24C20(v4);
    v7 = v6;
    v8 = v5 * v5;
    v10 = v9 * v9;
    v11 = atan2f(sqrtf((v9 * v9) + (v6 * v6)), v5);
    v13 = atan2f(sqrtf(v8 + v10), v7) >= 1.5708 && v11 >= 1.309;
    result = v13 & (v11 <= 1.9199);
    if (!v13 || v11 > 1.9199)
    {
      break;
    }

    ++v3;
  }

  while (v3 < a2[1]);
  return result;
}

double sub_245F18070(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 12) != 1 || *(a1 + 24) != *(a2 + 2) || (v2 = *(a1 + 28), v2 != *(a2 + 3)))
  {
    v3 = *a2;
    *(a1 + 16) = *a2;
    *(a1 + 12) = 1;
    v2 = *(a1 + 28);
  }

  if (v2 == 1)
  {
    *&v3 = 0xBF80000000000000;
    *a1 = 0xBF80000000000000;
    *(a1 + 8) = 0;
  }

  return *&v3;
}

float sub_245F180CC(float *a1, unsigned __int16 *a2)
{
  if (a2[1])
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      v7 = sub_245F0C3C0(a2, v4);
      v8 = sub_245F24DC8(v7, *a1, a1[1], a1[2]);
      v10 = atan2f(v9, v8);
      v11 = __sincosf_stret(v10);
      v5 = v5 + v11.__cosval;
      v6 = v6 + v11.__sinval;
      ++v4;
      v12 = a2[1];
    }

    while (v4 < v12);
    v13 = v12;
  }

  else
  {
    v6 = 0.0;
    v5 = 0.0;
    v13 = 0.0;
  }

  return (((sqrtf(1.0 - (sqrtf((v6 * v6) + (v5 * v5)) / v13)) * 57.296) * 0.5228) + 14.06) * 0.017453;
}

double sub_245F181B8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 20) = 0x800000000;
  *(a1 + 16) = 1031798784;
  *(a1 + 64) = 1;
  *(a1 + 96) = 0x800000000;
  *(a1 + 88) = 0x3FB0000000000000;
  *(a1 + 168) = 1;
  *(a1 + 172) = 0x800000000;
  *(a1 + 171) = 1;
  *(a1 + 192) = 0;
  *&result = 1036182680;
  *(a1 + 196) = 1036182680;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  return result;
}

double sub_245F18214@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  v3 = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  result = -0.00781250572;
  *(a2 + 16) = 0xBF800000C47A0000;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_245F18240(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a1 + 22);
  v10 = *(a1 + 24);
  v11 = *(a1 + 20);
  if (v11 + v9 >= v10)
  {
    v12 = *(a1 + 24);
  }

  else
  {
    v12 = 0;
  }

  v8 = *(a2 + 8);
  *(a1 + 4 * (v11 + v9 - v12) + 28) = v8;
  if (v10 <= v9)
  {
    if (v11 + 1 < v10)
    {
      LOWORD(v10) = 0;
    }

    *(a1 + 20) = v11 + 1 - v10;
  }

  else
  {
    *(a1 + 22) = v9 + 1;
  }

  *(a1 + 4) = 1;
  sub_245F187A0((a1 + 96), a2);
  *(a1 + 64) = 1;
  v13 = *(a2 + 8);
  v30 = v13;
  result = sub_245F16CC8(a1 + 192, &v30);
  LOWORD(v15) = *(a1 + 22);
  v16 = v15;
  v17 = *(a1 + 98);
  v18 = 0.0;
  if (*(a1 + 98))
  {
    result = sub_245F187F4((a1 + 96), v17 - 1);
    v19 = *result;
    LODWORD(v17) = *(a1 + 98);
    if (*(a1 + 98))
    {
      result = sub_245F187F4((a1 + 96), 0);
      v18 = *result;
      LODWORD(v17) = *(a1 + 98);
    }
  }

  else
  {
    v19 = 0.0;
  }

  v20 = v16 / fmax(v19 - v18, 0.100000001);
  *(a3 + 20) = v20;
  if (*(a1 + 100) == v17 && v20 >= 4.0)
  {
    sub_245F18488(a1, a3);
    v21 = *(a1 + 174);
    v22 = *(a1 + 176);
    v23 = *(a1 + 172);
    if (v23 + v21 >= v22)
    {
      v24 = *(a1 + 176);
    }

    else
    {
      v24 = 0;
    }

    *(a1 + v23 + v21 - v24 + 180) = *(a3 + 24) ^ 1;
    if (v22 <= v21)
    {
      if (v23 + 1 < v22)
      {
        LOWORD(v22) = 0;
      }

      *(a1 + 172) = v23 + 1 - v22;
    }

    else
    {
      *(a1 + 174) = v21 + 1;
    }

    result = 1;
    *(a1 + 168) = 1;
    if ((*a1 & 1) == 0)
    {
      result = sub_245F185C0(a1);
    }

    v29 = 0;
    *a1 = result;
    if ((*(a3 + 24) & 1) == 0)
    {
      if (result)
      {
        v29 = *a2 + 0.5 >= a4;
      }
    }

    *(a3 + 25) = v29;
  }

  else
  {
    v25 = *(a1 + 174);
    v26 = *(a1 + 176);
    v27 = *(a1 + 172);
    if (v27 + v25 >= v26)
    {
      v28 = *(a1 + 176);
    }

    else
    {
      v28 = 0;
    }

    *(a1 + v27 + v25 - v28 + 180) = 0;
    if (v26 <= v25)
    {
      if (v27 + 1 < v26)
      {
        LOWORD(v26) = 0;
      }

      *(a1 + 172) = v27 + 1 - v26;
    }

    else
    {
      *(a1 + 174) = v25 + 1;
    }

    *(a1 + 168) = 1;
  }

  return result;
}

double *sub_245F18488(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  for (i = 1; i != 8; ++i)
  {
    v13[i] = 1;
    v7 = *sub_245F09E3C((a1 + 20), i);
    v8 = *sub_245F09E3C((a1 + 20), v4);
    v9 = *sub_245F187F4((a1 + 96), i);
    result = sub_245F187F4((a1 + 96), v4);
    v11 = v9 - *result;
    if (v11 > 0.0 && (v7 - v8) < 0.4 && ((v7 - v8) / v11) < 4.0)
    {
      v13[i] = 0;
      v4 = i;
      ++v5;
    }
  }

  *(a2 + 12) = v5;
  *(a2 + 24) = v13[7];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_245F185C0(unsigned __int16 *a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 7;
  for (i = 1; i != 9; ++i)
  {
    v2 += *sub_245F1893C(a1 + 86, v4);
    if (v2 >= 5u)
    {
      v6 = a1[49] ? *sub_245F187F4(a1 + 48, a1[49] - 1) : 0.0;
      if (v6 - *sub_245F187F4(a1 + 48, v4) < 1.0)
      {
        break;
      }
    }

    v3 = i < 8;
    --v4;
  }

  return v3;
}

uint64_t sub_245F18688(uint64_t a1, char a2, float a3)
{
  if (a3 > 0.01)
  {
    if (a3 >= 25.0)
    {
      *(a1 + 212) = 0;
    }

    else
    {
      v3 = *(a1 + 212) + 1;
      *(a1 + 212) = v3;
      if (v3 > 2)
      {
        v4 = 1;
LABEL_8:
        *(a1 + 208) = v4 & 1;
        v5 = (a3 < 25.0) | v4 ^ 1 | a2;
        return v5 & 1;
      }
    }

    v4 = *(a1 + 208);
    goto LABEL_8;
  }

  v5 = 0;
  return v5 & 1;
}

float sub_245F186F4(uint64_t a1, double a2)
{
  v2 = a2 - *(a1 + 200);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = a2 - *(a1 + 200);
  }

  v4 = 0.0;
  if (v3 > 0.2)
  {
    v4 = (((v3 + -0.2) * v2) / v3);
  }

  return v4 / a2;
}

uint64_t sub_245F18748(double a1, float a2, uint64_t a3, int a4)
{
  v4 = a1 > 2.0;
  if (a2 <= 0.0)
  {
    a2 = -a2;
  }

  if (a2 > 2.0)
  {
    v4 = 1;
  }

  v5 = v4 & (a4 ^ 1);
  if (a1 > 15.0)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_245F18784(uint64_t result)
{
  *(result + 20) = 0;
  *(result + 96) = 0;
  *(result + 172) = 0;
  *result = 0;
  *(result + 208) = 0;
  *(result + 212) = 0;
  return result;
}

unsigned __int16 *sub_245F187A0(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

uint64_t sub_245F187F4(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70B8);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return &a1[4 * (v5 - v4) + 4];
}

os_log_t sub_245F1890C()
{
  result = os_log_create("com.apple.locationd.Legacy", "Generic_deprecated");
  qword_27EE37528 = result;
  return result;
}

uint64_t sub_245F1893C(unsigned __int16 *a1, unint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 1);
  if (v4 <= a2)
  {
    if (qword_27EE37520 != -1)
    {
      dispatch_once(&qword_27EE37520, &unk_2858D70B8);
    }

    v8 = qword_27EE37528;
    v9 = os_log_type_enabled(qword_27EE37528, OS_LOG_TYPE_FAULT);
    LODWORD(v4) = *(a1 + 1);
    if (v9)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v4;
      _os_log_impl(&dword_245D80000, v8, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreMotionAlgorithmsFramework/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v10, 0x12u);
      LODWORD(v4) = *(a1 + 1);
    }
  }

  v5 = *a1 + a2;
  if (v5 >= v4)
  {
    v4 = v4;
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1 + v5 - v4 + 8;
}

double sub_245F18A54(unsigned __int16 *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1517];
    if (a1[1517])
    {
      v4 = v3 + a1[1516] - 1;
      v5 = *(a1 + 759);
      if (v4 < v5)
      {
        v5 = 0;
      }

      v6 = *&a1[4 * (v4 - v5) + 1520];
    }

    else
    {
      v6 = 0;
    }

    v7 = a1[2173];
    if (a1[2173])
    {
      v8 = v7 + a1[2172] - 1;
      v9 = *(a1 + 1087);
      if (v8 < v9)
      {
        v9 = 0;
      }

      v10 = *&a1[4 * (v8 - v9) + 2176];
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 6920);
    v12 = *(a1 + 6176);
    v13 = a1[1];
    if (a1[1])
    {
      v14 = v13 + *a1 - 1;
      v15 = *(a1 + 1);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = *&a1[4 * (v14 - v15) + 4];
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a1 + 861);
    v36[0] = 67111168;
    v36[1] = v11;
    v37 = 1024;
    v38 = v12;
    v39 = 2048;
    v40 = v6;
    v41 = 2048;
    v42 = v3;
    v43 = 2048;
    v44 = v10;
    v45 = 2048;
    v46 = v7;
    v47 = 2048;
    v48 = v16;
    v49 = 2048;
    v50 = v13;
    v51 = 2048;
    v52 = v17;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[reset] Reset CMABarrelRoll. Stats before reset: fBoolInitDuringNoTrust: %d, initializedDMYawAlignment:%d, last src timestamp %llu us, num src samples: %zu, last aux timestamp %llu us, num aux samples: %zu, last ring timestamp %llu us, num ring samples: %zu, fCurrentEstimateTimeMicroSeconds: %llu", v36, 0x54u);
  }

  sub_245F18DF0(a1);
  *(a1 + 859) = 0;
  *(a1 + 860) = 0x3F80000000000000;
  *(a1 + 6920) = 0;
  *(a1 + 758) = 0;
  *(a1 + 860) = 0;
  v18 = *(a1 + 532);
  v19 = *(a1 + 533);
  *(a1 + 536) = 0;
  v20 = (v19 - v18) >> 3;
  if (v20 >= 3)
  {
    do
    {
      operator delete(*v18);
      v18 = (*(a1 + 532) + 8);
      *(a1 + 532) = v18;
      v20 = (*(a1 + 533) - v18) >> 3;
    }

    while (v20 > 2);
  }

  if (v20 == 1)
  {
    v21 = 512;
  }

  else
  {
    if (v20 != 2)
    {
      goto LABEL_27;
    }

    v21 = 1024;
  }

  *(a1 + 535) = v21;
LABEL_27:
  v22 = *(a1 + 538);
  v23 = *(a1 + 539);
  *(a1 + 542) = 0;
  v24 = (v23 - v22) >> 3;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v22);
      v22 = (*(a1 + 538) + 8);
      *(a1 + 538) = v22;
      v24 = (*(a1 + 539) - v22) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v25 = 512;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_34;
    }

    v25 = 1024;
  }

  *(a1 + 541) = v25;
LABEL_34:
  *(a1 + 1086) = 0;
  *(a1 + 1188) = 0;
  v26 = *(a1 + 696);
  v27 = *(a1 + 697);
  *(a1 + 700) = 0;
  v28 = (v27 - v26) >> 3;
  if (v28 >= 3)
  {
    do
    {
      operator delete(*v26);
      v26 = (*(a1 + 696) + 8);
      *(a1 + 696) = v26;
      v28 = (*(a1 + 697) - v26) >> 3;
    }

    while (v28 > 2);
  }

  if (v28 == 1)
  {
    v29 = 512;
  }

  else
  {
    if (v28 != 2)
    {
      goto LABEL_41;
    }

    v29 = 1024;
  }

  *(a1 + 699) = v29;
LABEL_41:
  v30 = *(a1 + 702);
  v31 = *(a1 + 703);
  *(a1 + 706) = 0;
  v32 = (v31 - v30) >> 3;
  if (v32 >= 3)
  {
    do
    {
      operator delete(*v30);
      v30 = (*(a1 + 702) + 8);
      *(a1 + 702) = v30;
      v32 = (*(a1 + 703) - v30) >> 3;
    }

    while (v32 > 2);
  }

  if (v32 == 1)
  {
    v33 = 512;
    goto LABEL_47;
  }

  if (v32 == 2)
  {
    v33 = 1024;
LABEL_47:
    *(a1 + 705) = v33;
  }

  *(a1 + 1414) = 0;
  result = 0.0;
  *(a1 + 384) = 0u;
  *(a1 + 770) = 0x3F80000000000000;
  *(a1 + 6168) = 1;
  *(a1 + 6921) = 0;
  *(a1 + 3462) = 0;
  *(a1 + 3466) = 0x3F80000000000000;
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_245F18DF0(uint64_t a1)
{
  *a1 = 0;
  v2 = a1 + 6952;
  *(a1 + 968) = 0;
  *(a1 + 1936) = 0;
  *(a1 + 2904) = 0;
  sub_245F20EE0((a1 + 6176));
  *(a1 + 6792) = 0;
  sub_245F0D1C4(a1 + 6704);
  *(a1 + 6776) = 0;
  *(a1 + 6784) = 0x3F80000000000000;
  sub_245F0D1C4(a1 + 6800);
  *(a1 + 6944) = 0;
  *v2 = 0;
  *(a1 + 6960) = 0;
  result = 0.0;
  *(a1 + 6888) = 0u;
  *(a1 + 6904) = 0x3F80000000000000;
  *(a1 + 6912) = 0;
  *(a1 + 6976) = 0;
  *(a1 + 7944) = 0;
  *(a1 + 9872) = 0;
  *(v2 + 2924) = 0;
  *(a1 + 6968) = 0;
  return result;
}

void sub_245F18E98(uint64_t a1, uint64_t a2)
{
  sub_245F18F20((a1 + 6672), a2);
  if (qword_27EE374F0 != -1)
  {
    sub_245F2CB20();
  }

  v2 = qword_27EE374F8;
  if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_245D80000, v2, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[registerCorrectedUpdateCallbackFn] Registered corrected update callback.", v3, 2u);
  }
}

void *sub_245F18F20(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_245F1D8BC(v5, a2);
  sub_245F1D954(v5, a1);
  sub_245F12848(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

BOOL sub_245F18F94(unsigned __int16 *a1, unint64_t a2, int a3, int a4, float a5, float a6)
{
  v61 = *MEMORY[0x277D85DE8];
  if (!a1[1])
  {
    goto LABEL_64;
  }

  v12 = a1 + 4;
  v13 = a1[1] + *a1 - 1;
  v14 = *(a1 + 1);
  if (v13 < v14)
  {
    v14 = 0;
  }

  if (*&v12[4 * (v13 - v14)] >= a2)
  {
    if (qword_27EE374F0 != -1)
    {
      sub_245F2CB20();
    }

    v26 = qword_27EE374F8;
    result = os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v28 = *a1 + a1[1] - 1;
      v29 = *(a1 + 1);
      if (v28 < v29)
      {
        v29 = 0;
      }

      v30 = *&v12[4 * (v28 - v29)];
      *buf = 3.8521e-34;
      *v52 = a2;
      *&v52[8] = 2048;
      *&v52[10] = v30;
      _os_log_impl(&dword_245D80000, v26, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Ring sensor timestamp must be greater than the last value. Input: %llu us, last: %llu us", buf, 0x16u);
      result = 0;
    }
  }

  else
  {
LABEL_64:
    if ((a1[3088] & 1) == 0 && !*(a1 + 868))
    {
      *(a1 + 868) = a2;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB20();
      }

      v15 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 868);
        *buf = 3.852e-34;
        *v52 = v16;
        _os_log_impl(&dword_245D80000, v15, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Received initial ring sensor timestamp : %llu", buf, 0xCu);
      }
    }

    sub_245F12BC8(v50, a1 + 695);
    v17 = sub_245F10E5C(v50);
    v18 = *&v17;
    sub_245F12B1C(v50);
    sub_245F12BC8(v49, a1 + 701);
    v19 = sub_245F10E5C(v49);
    v20 = *&v19;
    sub_245F12B1C(v49);
    sub_245F12BC8(v48, a1 + 531);
    v21 = sub_245F10E5C(v48);
    v22 = *&v21;
    sub_245F12B1C(v48);
    sub_245F12BC8(v47, a1 + 537);
    v23 = sub_245F10E5C(v47);
    v24 = *&v23;
    sub_245F12B1C(v47);
    if ((a1[3088] & 1) != 0 || a3)
    {
      *(a1 + 6952) = 0;
    }

    else
    {
      v25 = 0;
      if (v18 < 6.2832 && v20 < 0.5 && v22 < 0.5236 && v24 < 0.25)
      {
        v25 = *(a1 + 700) >= 2uLL && *(a1 + 536) > 1uLL;
      }

      v31 = a2 - *(a1 + 1736);
      v32 = v31 < 0x7A121 && !v25;
      if (*(a1 + 6952) != v32)
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB34();
        }

        v33 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 6952);
          *buf = 1.5285e-36;
          *v52 = v34;
          *&v52[4] = 2050;
          *&v52[6] = a2;
          *&v52[14] = 2050;
          *&v52[16] = (v18 * 57.296);
          v53 = 2050;
          v54 = v20;
          v55 = 2050;
          v56 = (v22 * 57.296);
          v57 = 2050;
          v58 = v24;
          v59 = 1026;
          v60 = v31;
          _os_log_impl(&dword_245D80000, v33, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Setting fBlockInitializationDueToHighDynamicMotion to %{public}d, timestamp: %{public}llu us, avgOmegaAuxNorm: %{public}.3f dps, avgUserAccelAuxNorm: %{public}.3f g, avgOmegaSrcNorm: %{public}.3f dps, avgUserAccelSrcNorm: %{public}.3f g, timeElapsedMicroSeconds: %{public}u", buf, 0x40u);
        }

        *(a1 + 6952) = v32;
      }
    }

    if (*(a1 + 6920) == 1 && *(a1 + 6472) == 1)
    {
      sub_245F18DF0(a1);
      *(a1 + 6920) = 0;
      if (qword_27EE374F0 != -1)
      {
        sub_245F2CB34();
      }

      v35 = qword_27EE374F8;
      if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 3.852e-34;
        *v52 = a2;
        _os_log_impl(&dword_245D80000, v35, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Received ring sensor trust state=True after initializing during no-trust, reinitializing. Ring sensor timestamp: %llu", buf, 0xCu);
      }
    }

    if ((a3 & a4) != 0)
    {
      v36 = 4.0;
    }

    else
    {
      v36 = 32.0;
    }

    v37 = a1[1];
    v38 = *(a1 + 1);
    v39 = *a1;
    if (v39 + v37 >= v38)
    {
      v40 = *(a1 + 1);
    }

    else
    {
      v40 = 0;
    }

    *&a1[4 * (v39 + v37 - v40) + 4] = a2;
    if (v38 <= v37)
    {
      if (v39 + 1 < v38)
      {
        LOWORD(v38) = 0;
      }

      *a1 = v39 + 1 - v38;
    }

    else
    {
      a1[1] = v37 + 1;
    }

    *buf = a5;
    *v52 = a6;
    sub_245F19554(a1 + 484, buf);
    *buf = v36 * sub_245F195B4(a1);
    *v52 = v36 * v41;
    sub_245F19554(a1 + 968, buf);
    v42 = a1[1453];
    v43 = *(a1 + 727);
    v44 = a1[1452];
    if (v44 + v42 >= v43)
    {
      v45 = *(a1 + 727);
    }

    else
    {
      v45 = 0;
    }

    *(a1 + v44 + v42 - v45 + 2912) = a4;
    if (v43 <= v42)
    {
      if (v44 + 1 < v43)
      {
        LOWORD(v43) = 0;
      }

      a1[1452] = v44 + 1 - v43;
    }

    else
    {
      a1[1453] = v42 + 1;
    }

    if ((a1[3088] & 1) == 0)
    {
      sub_245F196C0(a1);
    }

    sub_245F19A58(a1);
    *(a1 + 6968) = a3;
    result = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned __int16 *sub_245F19500(unsigned __int16 *result, void *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[4 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

unsigned __int16 *sub_245F19554(unsigned __int16 *result, void *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[4 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

float sub_245F195B4(uint64_t a1)
{
  if (*(a1 + 5600) == 16)
  {
    sub_245F12BC8(v2, (a1 + 5560));
    sub_245F10E5C(v2);
    sub_245F12B1C(v2);
  }

  return 0.0027416;
}

void sub_245F196C0(unsigned __int16 *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 2048);
  if ((a1[3088] & 1) != 0 || (a1[3476] & 1) == 0)
  {
    if (a1[1])
    {
      if (*(a1 + 700))
      {
        sub_245F12BC8(v26, a1 + 695);
        v3 = sub_245F10E5C(v26);
        v4 = *&v3 > 2.0944;
        sub_245F12B1C(v26);
      }

      else
      {
        v4 = 0;
      }

      if (*(a1 + 536))
      {
        sub_245F12BC8(v25, a1 + 531);
        v5 = sub_245F10E5C(v25);
        v6 = *&v5 > 0.5236;
        sub_245F12B1C(v25);
      }

      else
      {
        v6 = 0;
      }

      if (v2[2080] != 1 || !v4 && !v6)
      {
        sub_245F1B9E4(a1, v22);
        v7 = v2[2080];
        sub_245F20138(v2 + 2080, a1, a1 + 484, a1 + 968, a1 + 1720, a1 + 2376, a1 + 1452, (a1 + 2828), v22, v23, __p);
        v8 = v2[2080];
        if (v8 != v7)
        {
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CB34();
          }

          v9 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *a1 + a1[1] - 1;
            v11 = *(a1 + 1);
            if (v10 < v11)
            {
              v11 = 0;
            }

            v12 = *&a1[4 * (v10 - v11) + 4];
            *buf = 67109632;
            *v28 = v7;
            *&v28[4] = 1024;
            *&v28[6] = v8;
            v29 = 2048;
            v30 = v12;
            _os_log_impl(&dword_245D80000, v9, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateDMInertialYaw] DM yaw alignment state changed from: %d to %d, latest ring sensor timestamp: %llu", buf, 0x18u);
          }

          if (v8)
          {
            if (qword_27EE374F0 != -1)
            {
              sub_245F2CB34();
            }

            v13 = qword_27EE374F8;
            if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
            {
              v14 = *a1 + a1[1] - 1;
              v15 = *(a1 + 1);
              if (v14 < v15)
              {
                v15 = 0;
              }

              v16 = *&a1[4 * (v14 - v15) + 4];
              *buf = 134217984;
              *v28 = v16;
              _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateDMInertialYaw] Initialized DM yaw alignment state, latest ring sensor timestamp: %llu", buf, 0xCu);
            }

            if ((v2[2824] & 1) == 0 && (v2[2376] & 1) == 0)
            {
              v2[2824] = 1;
              if (qword_27EE374F0 != -1)
              {
                sub_245F2CB34();
              }

              v17 = qword_27EE374F8;
              if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
              {
                v18 = *a1 + a1[1] - 1;
                v19 = *(a1 + 1);
                if (v18 < v19)
                {
                  v19 = 0;
                }

                v20 = *&a1[4 * (v18 - v19) + 4];
                *buf = 134217984;
                *v28 = v20;
                _os_log_impl(&dword_245D80000, v17, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[feedRingSensor] Setting fBoolInitDuringNoTrust=True, latest ring sensor timestamp: %llu", buf, 0xCu);
              }
            }
          }
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v23[0])
        {
          v23[1] = v23[0];
          operator delete(v23[0]);
        }

        if (v22[0])
        {
          v22[1] = v22[0];
          operator delete(v22[0]);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_245F19A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_245F1D754(va);
  _Unwind_Resume(a1);
}

void sub_245F19A58(unsigned __int16 *a1)
{
  v166 = *MEMORY[0x277D85DE8];
  v1 = a1 + 2048;
  if (*(a1 + 6176) == 1 && a1[1517] >= 3u)
  {
    v163 = 0;
    if (sub_245F1D028(a1, v164, &v163, &v161))
    {
      v3 = a1 + 2176;
      v4 = a1[1517] - 1;
      do
      {
        v5 = v4;
        if (!v4)
        {
          break;
        }

        v6 = *sub_245F1BE4C(a1 + 1516, v4);
        v7 = a1[2172] + a1[2173] - 1;
        v8 = *(a1 + 1087);
        if (v7 < v8)
        {
          v8 = 0;
        }

        v9 = *&v3[4 * (v7 - v8)];
        v4 = v5 - 1;
      }

      while (v6 > v9);
      v10 = *sub_245F1BE4C(a1 + 1516, v5);
      v11 = a1[2172] + a1[2173] - 1;
      v12 = *(a1 + 1087);
      if (v11 < v12)
      {
        v12 = 0;
      }

      if (v10 != *&v3[4 * (v11 - v12)])
      {
        if (qword_27EE374F0 != -1)
        {
          sub_245F2CB20();
        }

        v13 = qword_27EE374F8;
        if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_ERROR))
        {
          v14 = a1[2172] + a1[2173] - 1;
          v15 = *(a1 + 1087);
          if (v14 < v15)
          {
            v15 = 0;
          }

          v16 = *&v3[4 * (v14 - v15)];
          v17 = *sub_245F1BE4C(a1 + 1516, v5);
          *buf = 134218240;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          _os_log_impl(&dword_245D80000, v13, OS_LOG_TYPE_ERROR, "[BarrelRoll]:[CMABarrelRoll]:[updateCurrentEstimate] Timestamp mismatch error. Latest aux timestamp: %llu us, corresponding src timestamp: %llu us", buf, 0x16u);
        }
      }

      v18 = sub_245F0C3C0(a1 + 1720, v5);
      v157 = sub_245F24A60(v18, v19);
      v158 = v20;
      v159 = v21;
      v160 = v22;
      v23 = a1[2376] + a1[2377] - 1;
      v24 = *(a1 + 1189);
      if (v23 < v24)
      {
        v24 = 0;
      }

      v156 = *&a1[8 * (v23 - v24) + 2380];
      sub_245F21210((v1 + 1040));
      v155[0] = v25.f32[0];
      v155[1] = v26;
      v155[2] = v27;
      v155[3] = v28;
      v29.f32[0] = sub_245F249DC(&v156, v155, v25);
      *&v153 = __PAIR64__(v30, v29.u32[0]);
      *(&v153 + 1) = __PAIR64__(v32, v31);
      v33.f32[0] = sub_245F249DC(&v153, &v157, v29);
      *buf = v33.i32[0];
      *&buf[4] = v34;
      *&buf[8] = v35;
      *&buf[12] = v36;
      LODWORD(v154) = sub_245F24A60(buf, v33);
      *(&v154 + 4) = __PAIR64__(v38, v37);
      HIDWORD(v154) = v39;
      v40 = *sub_245F1BE4C(a1 + 1516, v5);
      sub_245F0D1C4((a1 + 3400));
      sub_245F1C1D8(a1);
      sub_245F0CEAC((a1 + 3400), a1 + 3354, v40, 0.017453, 0.05236);
      *&v153 = 0;
      *(&v153 + 1) = 0x3F80000000000000;
      *&v152 = 0;
      *(&v152 + 1) = 0x3F80000000000000;
      if (a1[1517] && a1[2173])
      {
        v41 = a1[1517] + a1[1516] - 1;
        v42 = *(a1 + 759);
        if (v41 < v42)
        {
          v42 = 0;
        }

        v43 = *&a1[4 * (v41 - v42) + 1520];
        v44 = *(a1 + 1736);
        if (*(a1 + 700) < 5uLL)
        {
          v46 = 1;
        }

        else
        {
          sub_245F12BC8(v149, a1 + 695);
          v45 = sub_245F10E5C(v149);
          v46 = *&v45 >= 0.087266;
          sub_245F12B1C(v149);
        }

        if (*(a1 + 536) < 5uLL)
        {
          v48 = 1;
        }

        else
        {
          sub_245F12BC8(v148, a1 + 531);
          v47 = sub_245F10E5C(v148);
          v48 = *&v47 >= 0.087266;
          sub_245F12B1C(v148);
        }

        v49 = v5 + 1;
        v50 = *(a1 + 700);
        if (v50)
        {
          v51 = *(*(*(a1 + 696) + (((v50 + *(a1 + 699) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v50 + *(a1 + 699) - 1) & 0x3FF));
        }

        else
        {
          v51 = 0.0;
        }

        v141 = v51;
        if (v49 >= a1[1517])
        {
          v64 = 0;
        }

        else
        {
          v52 = 0;
          v142 = (v43 - v44) > 0x4C4B3F || v46 || v48;
          __asm { FMOV            V13.2S, #0.75 }

          do
          {
            v58 = sub_245F0C3C0(a1 + 1720, v49);
            v157 = sub_245F24A60(v58, v59);
            v158 = v60;
            v159 = v61;
            v160 = v62;
            v63 = 0;
            v64 = *sub_245F1BE4C(a1 + 1516, v49);
            v146 = vmul_f32(v161, _D13);
            v147 = v162 * 0.75;
            do
            {
              v65 = *sub_245F0F2E8(&v146, v63);
              v66 = sub_245F0F2E8(&v146, v63);
              if (v65 <= 2.0944)
              {
                if (*v66 < -2.0944)
                {
                  *sub_245F0F2E8(&v146, v63) = -1073345902;
                }
              }

              else
              {
                *v66 = 2.0944;
              }

              ++v63;
            }

            while (v63 != 3);
            v67 = a1[2172] + a1[2173] - 1;
            v68 = *(a1 + 1087);
            if (v67 < v68)
            {
              v68 = 0;
            }

            v69 = (v64 - *&v3[4 * (v67 - v68)]) * 0.000001;
            v143 = vmul_n_f32(v146, v69);
            v144 = v147 * v69;
            *v70.i64 = sub_245F24E08(buf, &v143);
            v71 = a1[2376] + a1[2377] - 1;
            v72 = *(a1 + 1189);
            if (v71 < v72)
            {
              v72 = 0;
            }

            v73.f32[0] = sub_245F249DC(buf, &a1[8 * (v71 - v72) + 2380], v70);
            *&v156 = __PAIR64__(v74, v73.u32[0]);
            *(&v156 + 1) = __PAIR64__(v76, v75);
            v77.f32[0] = sub_245F249DC(&v156, v155, v73);
            v143 = __PAIR64__(v78, v77.u32[0]);
            v144 = v79;
            v145 = v80;
            v81.f32[0] = sub_245F249DC(&v143, &v157, v77);
            *buf = v81.i32[0];
            *&buf[4] = v82;
            *&buf[8] = v83;
            *&buf[12] = v84;
            v85.f32[0] = sub_245F24A60(buf, v81);
            *&v153 = __PAIR64__(v86, v85.u32[0]);
            *(&v153 + 1) = __PAIR64__(v88, v87);
            v89.f32[0] = sub_245F24A60(&v154, v85);
            *buf = v89.i32[0];
            *&buf[4] = v90;
            *&buf[8] = v91;
            *&buf[12] = v92;
            LODWORD(v152) = sub_245F249DC(&v153, buf, v89);
            *(&v152 + 4) = __PAIR64__(v94, v93);
            HIDWORD(v152) = v95;
            v96 = (v64 - v40) * 0.000001;
            if (v96 >= 0.0000001)
            {
              v150.f32[0] = sub_245F24F24(&v152) / v96;
              v150.f32[1] = v97 / v96;
              v151 = v98 / v96;
              if (!v142)
              {
                v151 = 0.0;
                v150 = 0;
              }

              sub_245F0D1E8(a1 + 850, &v150, v64);
              v154 = v153;
              v99 = a1[1];
              while (v52 < v99)
              {
                v100 = sub_245F1BE4C(a1, v52);
                v99 = a1[1];
                if (v64 == *v100)
                {
                  break;
                }

                ++v52;
              }

              if (v52 != v99 && *sub_245F1BE4C(a1, v52) == v64)
              {
                v101 = sub_245F1BE4C(a1 + 484, v52);
                if (*v101 > 0.17453)
                {
                  v103 = v101;
                  v102.f32[0] = *v101;
                  *buf = sub_245F24A60((a1 + 3354), v102);
                  *&buf[4] = v104;
                  *&buf[8] = v105;
                  *&buf[12] = v106;
                  sub_245F0F554(buf);
                  v108 = fmodf((v107 - v103[1]) + 3.1416, 6.2832);
                  if (v108 < 0.0)
                  {
                    v108 = v108 + 6.2832;
                  }

                  v109 = fabsf(v108 + -3.1416);
                  if ((v1[1188] & 1) != 0 || v109 > 0.7854)
                  {
                    v110 = v109 <= 0.7854 ? 1.0 : 0.1;
                    v111 = sub_245F1BE4C(a1 + 968, v52);
                    v112 = 0;
                    v113 = 0.0;
                    do
                    {
                      v113 = v113 + (v150.f32[v112] * v150.f32[v112]);
                      ++v112;
                    }

                    while (v112 != 3);
                    if (sqrtf(v113) < 0.87266 && v141 < 0.87266)
                    {
                      v114 = 0;
                      v115 = v110 * v111[1];
                      v116 = 0.0;
                      do
                      {
                        v116 = v116 + (v150.f32[v114] * v150.f32[v114]);
                        ++v114;
                      }

                      while (v114 != 3);
                      v117 = fmaxf(sqrtf(v116), v141) <= 0.5236;
                      v118 = 1.0;
                      if (!v117)
                      {
                        v118 = 9.0;
                      }

                      *buf = (v110 * *v111) * v118;
                      *&buf[4] = v115 * v118;
                      sub_245F0DB8C((a1 + 3400), v103, buf, v64);
                    }
                  }
                }
              }

              ++v49;
              v40 = v64;
            }
          }

          while (v49 < a1[1517]);
        }

        v119 = *a1 + a1[1] - 1;
        v120 = *(a1 + 1);
        if (v119 < v120)
        {
          v120 = 0;
        }

        v121 = *&a1[4 * (v119 - v120) + 4];
        if (v121 > v64 && (v121 - v64) >> 5 <= 0xC34)
        {
          sub_245F0D1E8(a1 + 850, &v150, v121);
          if (*(v1 + 2376) == 1)
          {
            v122 = a1[484] + a1[485] - 1;
            v123 = *(a1 + 243);
            if (v122 < v123)
            {
              v123 = 0;
            }

            v124 = &a1[4 * (v122 - v123)];
            if (*(v124 + 244) > 0.17453)
            {
              v125 = 0;
              v126 = a1[968] + a1[969] - 1;
              v127 = *(a1 + 485);
              if (v126 < v127)
              {
                v127 = 0;
              }

              v128 = 0.0;
              do
              {
                v128 = v128 + (v150.f32[v125] * v150.f32[v125]);
                ++v125;
              }

              while (v125 != 3);
              if (sqrtf(v128) < 0.87266 && v141 < 0.87266)
              {
                v129 = 0;
                v130 = 0.0;
                do
                {
                  v130 = v130 + (v150.f32[v129] * v150.f32[v129]);
                  ++v129;
                }

                while (v129 != 3);
                v117 = fmaxf(sqrtf(v130), v141) <= 0.5236;
                v131 = 1.0;
                if (!v117)
                {
                  v131 = 9.0;
                }

                *buf = vmul_n_f32(*&a1[4 * (v126 - v127) + 972], v131);
                sub_245F0DB8C((a1 + 3400), v124 + 244, buf, v121);
              }
            }
          }

          v64 = v121;
        }

        *(a1 + 861) = v64;
        *(a1 + 3436) = *(a1 + 3402);
        sub_245F19500(a1 + 3488, a1 + 861);
        sub_245F0A878(a1 + 3972, a1 + 3436);
        if ((*(v1 + 2825) & 1) == 0)
        {
          *buf = sub_245F24A60(a1 + 859, v132);
          *&buf[4] = v133;
          *&buf[8] = v134;
          *&buf[12] = v135;
          sub_245F0F554(buf);
          v137 = v136;
          LODWORD(v143) = 0;
          *(&v143 + 1) = -v136;
          v144 = 0.0;
          sub_245F24E08(buf, &v143);
          *(a1 + 3462) = *buf;
          *(v1 + 2825) = 1;
          if (qword_27EE374F0 != -1)
          {
            sub_245F2CB34();
          }

          v138 = qword_27EE374F8;
          if (os_log_type_enabled(qword_27EE374F8, OS_LOG_TYPE_DEFAULT))
          {
            v139 = *(a1 + 861);
            *buf = 134218240;
            *&buf[4] = (v137 * 57.296);
            *&buf[12] = 2048;
            *&buf[14] = v139;
            _os_log_impl(&dword_245D80000, v138, OS_LOG_TYPE_DEFAULT, "[BarrelRoll]:[CMABarrelRoll]:[updateCurrentEstimate] Initial roll angle recorded: %.1f deg, timestamp: %llu us", buf, 0x16u);
          }
        }
      }
    }
  }

  v140 = *MEMORY[0x277D85DE8];
}